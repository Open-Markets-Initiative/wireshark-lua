-----------------------------------------------------------------------
-- Lua Script Wireshark Dissector
--
-- Please see end of file for rules and regulations
-----------------------------------------------------------------------

-- Cboe EdgxOptions BinaryOrderEntry Boe3 1.0.10 Protocol
local omi_cboe_edgxoptions_binaryorderentry_boe3_v1_0_10 = Proto("Omi.Cboe.EdgxOptions.BinaryOrderEntry.Boe3.v1.0.10", "Cboe EdgxOptions BinaryOrderEntry Boe3 1.0.10")

-- Protocol table
local cboe_edgxoptions_binaryorderentry_boe3_v1_0_10 = {}

-----------------------------------------------------------------------
-- Declare Protocol Fields
-----------------------------------------------------------------------

-- Cboe EdgxOptions BinaryOrderEntry Boe3 1.0.10 Fields
omi_cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.fields.account = ProtoField.new("Account", "cboe.edgxoptions.binaryorderentry.boe3.v1.0.10.account", ftypes.STRING)
omi_cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.fields.acknowledgement_allocation = ProtoField.new("Acknowledgement Allocation", "cboe.edgxoptions.binaryorderentry.boe3.v1.0.10.acknowledgementallocation", ftypes.STRING)
omi_cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.fields.acknowledgement_style = ProtoField.new("Acknowledgement Style", "cboe.edgxoptions.binaryorderentry.boe3.v1.0.10.acknowledgementstyle", ftypes.STRING)
omi_cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.fields.alloc_cnt = ProtoField.new("Alloc Cnt", "cboe.edgxoptions.binaryorderentry.boe3.v1.0.10.alloccnt", ftypes.UINT8)
omi_cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.fields.alloc_leg_cnt = ProtoField.new("Alloc Leg Cnt", "cboe.edgxoptions.binaryorderentry.boe3.v1.0.10.alloclegcnt", ftypes.UINT8)
omi_cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.fields.alloc_qty = ProtoField.new("Alloc Qty", "cboe.edgxoptions.binaryorderentry.boe3.v1.0.10.allocqty", ftypes.UINT32)
omi_cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.fields.allocation = ProtoField.new("Allocation", "cboe.edgxoptions.binaryorderentry.boe3.v1.0.10.allocation", ftypes.STRING)
omi_cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.fields.allocation_cancelled = ProtoField.new("Allocation Cancelled", "cboe.edgxoptions.binaryorderentry.boe3.v1.0.10.allocationcancelled", ftypes.STRING)
omi_cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.fields.attributed_quote = ProtoField.new("Attributed Quote", "cboe.edgxoptions.binaryorderentry.boe3.v1.0.10.attributedquote", ftypes.STRING)
omi_cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.fields.auction_id = ProtoField.new("Auction Id", "cboe.edgxoptions.binaryorderentry.boe3.v1.0.10.auctionid", ftypes.UINT64)
omi_cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.fields.auto_match = ProtoField.new("Auto Match", "cboe.edgxoptions.binaryorderentry.boe3.v1.0.10.automatch", ftypes.STRING)
omi_cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.fields.auto_match_price = ProtoField.new("Auto Match Price", "cboe.edgxoptions.binaryorderentry.boe3.v1.0.10.automatchprice", ftypes.DOUBLE)
omi_cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.fields.base_liquidity_indicator = ProtoField.new("Base Liquidity Indicator", "cboe.edgxoptions.binaryorderentry.boe3.v1.0.10.baseliquidityindicator", ftypes.STRING)
omi_cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.fields.cancel_order_message = ProtoField.new("Cancel Order Message", "cboe.edgxoptions.binaryorderentry.boe3.v1.0.10.cancelordermessage", ftypes.STRING)
omi_cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.fields.cancel_orig_on_reject = ProtoField.new("Cancel Orig On Reject", "cboe.edgxoptions.binaryorderentry.boe3.v1.0.10.cancelorigonreject", ftypes.STRING)
omi_cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.fields.cancel_reason = ProtoField.new("Cancel Reason", "cboe.edgxoptions.binaryorderentry.boe3.v1.0.10.cancelreason", ftypes.STRING)
omi_cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.fields.cancel_reject_reason = ProtoField.new("Cancel Reject Reason", "cboe.edgxoptions.binaryorderentry.boe3.v1.0.10.cancelrejectreason", ftypes.STRING)
omi_cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.fields.cancel_rejected_message = ProtoField.new("Cancel Rejected Message", "cboe.edgxoptions.binaryorderentry.boe3.v1.0.10.cancelrejectedmessage", ftypes.STRING)
omi_cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.fields.cancel_sub_reason = ProtoField.new("Cancel Sub Reason", "cboe.edgxoptions.binaryorderentry.boe3.v1.0.10.cancelsubreason", ftypes.STRING)
omi_cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.fields.cancelled_order_count = ProtoField.new("Cancelled Order Count", "cboe.edgxoptions.binaryorderentry.boe3.v1.0.10.cancelledordercount", ftypes.UINT32)
omi_cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.fields.capacity = ProtoField.new("Capacity", "cboe.edgxoptions.binaryorderentry.boe3.v1.0.10.capacity", ftypes.STRING)
omi_cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.fields.carried_restatement_message = ProtoField.new("Carried Restatement Message", "cboe.edgxoptions.binaryorderentry.boe3.v1.0.10.carriedrestatementmessage", ftypes.STRING)
omi_cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.fields.cfi_code = ProtoField.new("Cfi Code", "cboe.edgxoptions.binaryorderentry.boe3.v1.0.10.cficode", ftypes.STRING)
omi_cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.fields.cl_ord_id = ProtoField.new("Cl Ord Id", "cboe.edgxoptions.binaryorderentry.boe3.v1.0.10.clordid", ftypes.STRING)
omi_cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.fields.clearing_account = ProtoField.new("Clearing Account", "cboe.edgxoptions.binaryorderentry.boe3.v1.0.10.clearingaccount", ftypes.STRING)
omi_cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.fields.clearing_firm = ProtoField.new("Clearing Firm", "cboe.edgxoptions.binaryorderentry.boe3.v1.0.10.clearingfirm", ftypes.STRING)
omi_cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.fields.clearing_firm_filter = ProtoField.new("Clearing Firm Filter", "cboe.edgxoptions.binaryorderentry.boe3.v1.0.10.clearingfirmfilter", ftypes.STRING)
omi_cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.fields.clearing_optional_data = ProtoField.new("Clearing Optional Data", "cboe.edgxoptions.binaryorderentry.boe3.v1.0.10.clearingoptionaldata", ftypes.STRING)
omi_cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.fields.client_id_attr = ProtoField.new("Client Id Attr", "cboe.edgxoptions.binaryorderentry.boe3.v1.0.10.clientidattr", ftypes.STRING)
omi_cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.fields.client_sequence = ProtoField.new("Client Sequence", "cboe.edgxoptions.binaryorderentry.boe3.v1.0.10.clientsequence", ftypes.UINT32)
omi_cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.fields.cmta_number = ProtoField.new("Cmta Number", "cboe.edgxoptions.binaryorderentry.boe3.v1.0.10.cmtanumber", ftypes.UINT32)
omi_cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.fields.combo_order = ProtoField.new("Combo Order", "cboe.edgxoptions.binaryorderentry.boe3.v1.0.10.comboorder", ftypes.STRING)
omi_cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.fields.complex_leg = ProtoField.new("Complex Leg", "cboe.edgxoptions.binaryorderentry.boe3.v1.0.10.complexleg", ftypes.STRING)
omi_cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.fields.compression = ProtoField.new("Compression", "cboe.edgxoptions.binaryorderentry.boe3.v1.0.10.compression", ftypes.STRING)
omi_cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.fields.contra_broker = ProtoField.new("Contra Broker", "cboe.edgxoptions.binaryorderentry.boe3.v1.0.10.contrabroker", ftypes.STRING)
omi_cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.fields.contra_capacity = ProtoField.new("Contra Capacity", "cboe.edgxoptions.binaryorderentry.boe3.v1.0.10.contracapacity", ftypes.STRING)
omi_cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.fields.contra_trader = ProtoField.new("Contra Trader", "cboe.edgxoptions.binaryorderentry.boe3.v1.0.10.contratrader", ftypes.STRING)
omi_cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.fields.corrected_price = ProtoField.new("Corrected Price", "cboe.edgxoptions.binaryorderentry.boe3.v1.0.10.correctedprice", ftypes.UINT64)
omi_cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.fields.corrected_size = ProtoField.new("Corrected Size", "cboe.edgxoptions.binaryorderentry.boe3.v1.0.10.correctedsize", ftypes.UINT32)
omi_cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.fields.cross_exclusion_indicator = ProtoField.new("Cross Exclusion Indicator", "cboe.edgxoptions.binaryorderentry.boe3.v1.0.10.crossexclusionindicator", ftypes.STRING)
omi_cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.fields.cross_id = ProtoField.new("Cross Id", "cboe.edgxoptions.binaryorderentry.boe3.v1.0.10.crossid", ftypes.STRING)
omi_cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.fields.cross_initiator = ProtoField.new("Cross Initiator", "cboe.edgxoptions.binaryorderentry.boe3.v1.0.10.crossinitiator", ftypes.STRING)
omi_cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.fields.cross_order_acknowledgment_message = ProtoField.new("Cross Order Acknowledgment Message", "cboe.edgxoptions.binaryorderentry.boe3.v1.0.10.crossorderacknowledgmentmessage", ftypes.STRING)
omi_cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.fields.cross_order_cancelled_message = ProtoField.new("Cross Order Cancelled Message", "cboe.edgxoptions.binaryorderentry.boe3.v1.0.10.crossordercancelledmessage", ftypes.STRING)
omi_cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.fields.cross_order_rejected_message = ProtoField.new("Cross Order Rejected Message", "cboe.edgxoptions.binaryorderentry.boe3.v1.0.10.crossorderrejectedmessage", ftypes.STRING)
omi_cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.fields.cross_prioritization = ProtoField.new("Cross Prioritization", "cboe.edgxoptions.binaryorderentry.boe3.v1.0.10.crossprioritization", ftypes.STRING)
omi_cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.fields.cross_type = ProtoField.new("Cross Type", "cboe.edgxoptions.binaryorderentry.boe3.v1.0.10.crosstype", ftypes.STRING)
omi_cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.fields.cum_qty = ProtoField.new("Cum Qty", "cboe.edgxoptions.binaryorderentry.boe3.v1.0.10.cumqty", ftypes.UINT32)
omi_cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.fields.custom_group_id = ProtoField.new("Custom Group Id", "cboe.edgxoptions.binaryorderentry.boe3.v1.0.10.customgroupid", ftypes.UINT16)
omi_cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.fields.custom_group_id_cnt = ProtoField.new("Custom Group Id Cnt", "cboe.edgxoptions.binaryorderentry.boe3.v1.0.10.customgroupidcnt", ftypes.UINT8)
omi_cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.fields.display_indicator = ProtoField.new("Display Indicator", "cboe.edgxoptions.binaryorderentry.boe3.v1.0.10.displayindicator", ftypes.STRING)
omi_cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.fields.display_price = ProtoField.new("Display Price", "cboe.edgxoptions.binaryorderentry.boe3.v1.0.10.displayprice", ftypes.DOUBLE)
omi_cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.fields.display_range = ProtoField.new("Display Range", "cboe.edgxoptions.binaryorderentry.boe3.v1.0.10.displayrange", ftypes.UINT32)
omi_cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.fields.done_for_day_message = ProtoField.new("Done For Day Message", "cboe.edgxoptions.binaryorderentry.boe3.v1.0.10.donefordaymessage", ftypes.STRING)
omi_cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.fields.drill_thru_protection = ProtoField.new("Drill Thru Protection", "cboe.edgxoptions.binaryorderentry.boe3.v1.0.10.drillthruprotection", ftypes.DOUBLE)
omi_cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.fields.equity_buy_clearing_firm = ProtoField.new("Equity Buy Clearing Firm", "cboe.edgxoptions.binaryorderentry.boe3.v1.0.10.equitybuyclearingfirm", ftypes.STRING)
omi_cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.fields.equity_ex_destination = ProtoField.new("Equity Ex Destination", "cboe.edgxoptions.binaryorderentry.boe3.v1.0.10.equityexdestination", ftypes.STRING)
omi_cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.fields.equity_leg_short_sell = ProtoField.new("Equity Leg Short Sell", "cboe.edgxoptions.binaryorderentry.boe3.v1.0.10.equitylegshortsell", ftypes.STRING)
omi_cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.fields.equity_party_id = ProtoField.new("Equity Party Id", "cboe.edgxoptions.binaryorderentry.boe3.v1.0.10.equitypartyid", ftypes.STRING)
omi_cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.fields.equity_sell_clearing_firm = ProtoField.new("Equity Sell Clearing Firm", "cboe.edgxoptions.binaryorderentry.boe3.v1.0.10.equitysellclearingfirm", ftypes.STRING)
omi_cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.fields.equity_trade_price = ProtoField.new("Equity Trade Price", "cboe.edgxoptions.binaryorderentry.boe3.v1.0.10.equitytradeprice", ftypes.DOUBLE)
omi_cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.fields.equity_trade_size = ProtoField.new("Equity Trade Size", "cboe.edgxoptions.binaryorderentry.boe3.v1.0.10.equitytradesize", ftypes.UINT32)
omi_cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.fields.equity_trade_venue = ProtoField.new("Equity Trade Venue", "cboe.edgxoptions.binaryorderentry.boe3.v1.0.10.equitytradevenue", ftypes.STRING)
omi_cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.fields.equity_transact_time = ProtoField.new("Equity Transact Time", "cboe.edgxoptions.binaryorderentry.boe3.v1.0.10.equitytransacttime", ftypes.UINT64)
omi_cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.fields.ex_destination = ProtoField.new("Ex Destination", "cboe.edgxoptions.binaryorderentry.boe3.v1.0.10.exdestination", ftypes.STRING)
omi_cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.fields.exchange_message_type = ProtoField.new("Message Type", "cboe.edgxoptions.binaryorderentry.boe3.v1.0.10.exchangemessagetype", ftypes.UINT16)
omi_cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.fields.exec_id = ProtoField.new("Exec Id", "cboe.edgxoptions.binaryorderentry.boe3.v1.0.10.execid", ftypes.UINT64)
omi_cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.fields.exec_inst = ProtoField.new("Exec Inst", "cboe.edgxoptions.binaryorderentry.boe3.v1.0.10.execinst", ftypes.STRING)
omi_cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.fields.exec_ref_id = ProtoField.new("Exec Ref Id", "cboe.edgxoptions.binaryorderentry.boe3.v1.0.10.execrefid", ftypes.UINT64)
omi_cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.fields.expire_time = ProtoField.new("Expire Time", "cboe.edgxoptions.binaryorderentry.boe3.v1.0.10.expiretime", ftypes.UINT64)
omi_cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.fields.fee_code = ProtoField.new("Fee Code", "cboe.edgxoptions.binaryorderentry.boe3.v1.0.10.feecode", ftypes.STRING)
omi_cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.fields.firm_message_type = ProtoField.new("Message Type", "cboe.edgxoptions.binaryorderentry.boe3.v1.0.10.firmmessagetype", ftypes.UINT16)
omi_cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.fields.floor_destination = ProtoField.new("Floor Destination", "cboe.edgxoptions.binaryorderentry.boe3.v1.0.10.floordestination", ftypes.STRING)
omi_cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.fields.floor_routing_inst = ProtoField.new("Floor Routing Inst", "cboe.edgxoptions.binaryorderentry.boe3.v1.0.10.floorroutinginst", ftypes.STRING)
omi_cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.fields.floor_trade_time = ProtoField.new("Floor Trade Time", "cboe.edgxoptions.binaryorderentry.boe3.v1.0.10.floortradetime", ftypes.UINT64)
omi_cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.fields.floor_trader_acronym = ProtoField.new("Floor Trader Acronym", "cboe.edgxoptions.binaryorderentry.boe3.v1.0.10.floortraderacronym", ftypes.STRING)
omi_cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.fields.frequent_trader_id = ProtoField.new("Frequent Trader Id", "cboe.edgxoptions.binaryorderentry.boe3.v1.0.10.frequenttraderid", ftypes.STRING)
omi_cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.fields.give_up_firm_id = ProtoField.new("Give Up Firm Id", "cboe.edgxoptions.binaryorderentry.boe3.v1.0.10.giveupfirmid", ftypes.STRING)
omi_cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.fields.gtc_order_filter = ProtoField.new("Gtc Order Filter", "cboe.edgxoptions.binaryorderentry.boe3.v1.0.10.gtcorderfilter", ftypes.STRING)
omi_cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.fields.held = ProtoField.new("Held", "cboe.edgxoptions.binaryorderentry.boe3.v1.0.10.held", ftypes.STRING)
omi_cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.fields.in_flight = ProtoField.new("In Flight", "cboe.edgxoptions.binaryorderentry.boe3.v1.0.10.inflight", ftypes.UINT16)
omi_cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.fields.instruction_details = ProtoField.new("Instruction Details", "cboe.edgxoptions.binaryorderentry.boe3.v1.0.10.instructiondetails", ftypes.STRING)
omi_cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.fields.instrument_type_filter = ProtoField.new("Instrument Type Filter", "cboe.edgxoptions.binaryorderentry.boe3.v1.0.10.instrumenttypefilter", ftypes.STRING)
omi_cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.fields.last_priority = ProtoField.new("Last Priority", "cboe.edgxoptions.binaryorderentry.boe3.v1.0.10.lastpriority", ftypes.STRING)
omi_cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.fields.last_px = ProtoField.new("Last Px", "cboe.edgxoptions.binaryorderentry.boe3.v1.0.10.lastpx", ftypes.DOUBLE)
omi_cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.fields.last_shares = ProtoField.new("Last Shares", "cboe.edgxoptions.binaryorderentry.boe3.v1.0.10.lastshares", ftypes.UINT32)
omi_cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.fields.leaves_qty = ProtoField.new("Leaves Qty", "cboe.edgxoptions.binaryorderentry.boe3.v1.0.10.leavesqty", ftypes.UINT32)
omi_cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.fields.leg_cnt = ProtoField.new("Leg Cnt", "cboe.edgxoptions.binaryorderentry.boe3.v1.0.10.legcnt", ftypes.UINT8)
omi_cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.fields.leg_position_effect = ProtoField.new("Leg Position Effect", "cboe.edgxoptions.binaryorderentry.boe3.v1.0.10.legpositioneffect", ftypes.STRING)
omi_cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.fields.lockout_instruction = ProtoField.new("Lockout Instruction", "cboe.edgxoptions.binaryorderentry.boe3.v1.0.10.lockoutinstruction", ftypes.STRING)
omi_cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.fields.login_request_message = ProtoField.new("Login Request Message", "cboe.edgxoptions.binaryorderentry.boe3.v1.0.10.loginrequestmessage", ftypes.STRING)
omi_cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.fields.login_response_message = ProtoField.new("Login Response Message", "cboe.edgxoptions.binaryorderentry.boe3.v1.0.10.loginresponsemessage", ftypes.STRING)
omi_cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.fields.login_response_status = ProtoField.new("Login Response Status", "cboe.edgxoptions.binaryorderentry.boe3.v1.0.10.loginresponsestatus", ftypes.STRING)
omi_cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.fields.login_response_text = ProtoField.new("Login Response Text", "cboe.edgxoptions.binaryorderentry.boe3.v1.0.10.loginresponsetext", ftypes.STRING)
omi_cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.fields.logout_reason = ProtoField.new("Logout Reason", "cboe.edgxoptions.binaryorderentry.boe3.v1.0.10.logoutreason", ftypes.STRING)
omi_cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.fields.logout_reason_text = ProtoField.new("Logout Reason Text", "cboe.edgxoptions.binaryorderentry.boe3.v1.0.10.logoutreasontext", ftypes.STRING)
omi_cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.fields.logout_response_message = ProtoField.new("Logout Response Message", "cboe.edgxoptions.binaryorderentry.boe3.v1.0.10.logoutresponsemessage", ftypes.STRING)
omi_cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.fields.marketing_fee_code = ProtoField.new("Marketing Fee Code", "cboe.edgxoptions.binaryorderentry.boe3.v1.0.10.marketingfeecode", ftypes.STRING)
omi_cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.fields.mass_cancel_acknowledgment_message = ProtoField.new("Mass Cancel Acknowledgment Message", "cboe.edgxoptions.binaryorderentry.boe3.v1.0.10.masscancelacknowledgmentmessage", ftypes.STRING)
omi_cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.fields.mass_cancel_id = ProtoField.new("Mass Cancel Id", "cboe.edgxoptions.binaryorderentry.boe3.v1.0.10.masscancelid", ftypes.STRING)
omi_cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.fields.mass_cancel_inst = ProtoField.new("Mass Cancel Inst", "cboe.edgxoptions.binaryorderentry.boe3.v1.0.10.masscancelinst", ftypes.STRING)
omi_cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.fields.mass_cancel_lockout = ProtoField.new("Mass Cancel Lockout", "cboe.edgxoptions.binaryorderentry.boe3.v1.0.10.masscancellockout", ftypes.STRING)
omi_cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.fields.mass_cancel_order_message = ProtoField.new("Mass Cancel Order Message", "cboe.edgxoptions.binaryorderentry.boe3.v1.0.10.masscancelordermessage", ftypes.STRING)
omi_cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.fields.mass_cancel_reject_reason = ProtoField.new("Mass Cancel Reject Reason", "cboe.edgxoptions.binaryorderentry.boe3.v1.0.10.masscancelrejectreason", ftypes.STRING)
omi_cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.fields.mass_cancel_rejected_message = ProtoField.new("Mass Cancel Rejected Message", "cboe.edgxoptions.binaryorderentry.boe3.v1.0.10.masscancelrejectedmessage", ftypes.STRING)
omi_cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.fields.matching_unit = ProtoField.new("Matching Unit", "cboe.edgxoptions.binaryorderentry.boe3.v1.0.10.matchingunit", ftypes.UINT8)
omi_cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.fields.maturity_date = ProtoField.new("Maturity Date", "cboe.edgxoptions.binaryorderentry.boe3.v1.0.10.maturitydate", ftypes.UINT32)
omi_cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.fields.max_floor = ProtoField.new("Max Floor", "cboe.edgxoptions.binaryorderentry.boe3.v1.0.10.maxfloor", ftypes.UINT32)
omi_cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.fields.message_length = ProtoField.new("Message Length", "cboe.edgxoptions.binaryorderentry.boe3.v1.0.10.messagelength", ftypes.UINT16)
omi_cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.fields.min_qty = ProtoField.new("Min Qty", "cboe.edgxoptions.binaryorderentry.boe3.v1.0.10.minqty", ftypes.UINT32)
omi_cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.fields.modify_order_message = ProtoField.new("Modify Order Message", "cboe.edgxoptions.binaryorderentry.boe3.v1.0.10.modifyordermessage", ftypes.STRING)
omi_cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.fields.modify_reject_reason = ProtoField.new("Modify Reject Reason", "cboe.edgxoptions.binaryorderentry.boe3.v1.0.10.modifyrejectreason", ftypes.STRING)
omi_cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.fields.modify_rejected_message = ProtoField.new("Modify Rejected Message", "cboe.edgxoptions.binaryorderentry.boe3.v1.0.10.modifyrejectedmessage", ftypes.STRING)
omi_cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.fields.mtp_modifier = ProtoField.new("Mtp Modifier", "cboe.edgxoptions.binaryorderentry.boe3.v1.0.10.mtpmodifier", ftypes.STRING)
omi_cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.fields.multileg_reporting_type = ProtoField.new("Multileg Reporting Type", "cboe.edgxoptions.binaryorderentry.boe3.v1.0.10.multilegreportingtype", ftypes.STRING)
omi_cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.fields.new_complex_instrument_accepted_message = ProtoField.new("New Complex Instrument Accepted Message", "cboe.edgxoptions.binaryorderentry.boe3.v1.0.10.newcomplexinstrumentacceptedmessage", ftypes.STRING)
omi_cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.fields.new_complex_instrument_message = ProtoField.new("New Complex Instrument Message", "cboe.edgxoptions.binaryorderentry.boe3.v1.0.10.newcomplexinstrumentmessage", ftypes.STRING)
omi_cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.fields.new_complex_instrument_rejected_message = ProtoField.new("New Complex Instrument Rejected Message", "cboe.edgxoptions.binaryorderentry.boe3.v1.0.10.newcomplexinstrumentrejectedmessage", ftypes.STRING)
omi_cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.fields.new_complex_order_message = ProtoField.new("New Complex Order Message", "cboe.edgxoptions.binaryorderentry.boe3.v1.0.10.newcomplexordermessage", ftypes.STRING)
omi_cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.fields.new_complex_order_short_message = ProtoField.new("New Complex Order Short Message", "cboe.edgxoptions.binaryorderentry.boe3.v1.0.10.newcomplexordershortmessage", ftypes.STRING)
omi_cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.fields.new_order_cross_message = ProtoField.new("New Order Cross Message", "cboe.edgxoptions.binaryorderentry.boe3.v1.0.10.newordercrossmessage", ftypes.STRING)
omi_cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.fields.new_order_cross_multileg_message = ProtoField.new("New Order Cross Multileg Message", "cboe.edgxoptions.binaryorderentry.boe3.v1.0.10.newordercrossmultilegmessage", ftypes.STRING)
omi_cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.fields.new_order_message = ProtoField.new("New Order Message", "cboe.edgxoptions.binaryorderentry.boe3.v1.0.10.newordermessage", ftypes.STRING)
omi_cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.fields.new_order_short_message = ProtoField.new("New Order Short Message", "cboe.edgxoptions.binaryorderentry.boe3.v1.0.10.newordershortmessage", ftypes.STRING)
omi_cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.fields.no_of_securities = ProtoField.new("No Of Securities", "cboe.edgxoptions.binaryorderentry.boe3.v1.0.10.noofsecurities", ftypes.UINT32)
omi_cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.fields.number_of_units = ProtoField.new("Number Of Units", "cboe.edgxoptions.binaryorderentry.boe3.v1.0.10.numberofunits", ftypes.UINT8)
omi_cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.fields.open_close = ProtoField.new("Open Close", "cboe.edgxoptions.binaryorderentry.boe3.v1.0.10.openclose", ftypes.STRING)
omi_cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.fields.ord_type = ProtoField.new("Ord Type", "cboe.edgxoptions.binaryorderentry.boe3.v1.0.10.ordtype", ftypes.STRING)
omi_cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.fields.order_acknowledgement_message = ProtoField.new("Order Acknowledgement Message", "cboe.edgxoptions.binaryorderentry.boe3.v1.0.10.orderacknowledgementmessage", ftypes.STRING)
omi_cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.fields.order_cancelled_message = ProtoField.new("Order Cancelled Message", "cboe.edgxoptions.binaryorderentry.boe3.v1.0.10.ordercancelledmessage", ftypes.STRING)
omi_cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.fields.order_execution_message = ProtoField.new("Order Execution Message", "cboe.edgxoptions.binaryorderentry.boe3.v1.0.10.orderexecutionmessage", ftypes.STRING)
omi_cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.fields.order_id = ProtoField.new("Order Id", "cboe.edgxoptions.binaryorderentry.boe3.v1.0.10.orderid", ftypes.UINT64)
omi_cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.fields.order_modified_message = ProtoField.new("Order Modified Message", "cboe.edgxoptions.binaryorderentry.boe3.v1.0.10.ordermodifiedmessage", ftypes.STRING)
omi_cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.fields.order_origin = ProtoField.new("Order Origin", "cboe.edgxoptions.binaryorderentry.boe3.v1.0.10.orderorigin", ftypes.STRING)
omi_cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.fields.order_qty = ProtoField.new("Order Qty", "cboe.edgxoptions.binaryorderentry.boe3.v1.0.10.orderqty", ftypes.UINT32)
omi_cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.fields.order_qty_short = ProtoField.new("Order Qty Short", "cboe.edgxoptions.binaryorderentry.boe3.v1.0.10.orderqtyshort", ftypes.UINT16)
omi_cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.fields.order_reject_reason = ProtoField.new("Order Reject Reason", "cboe.edgxoptions.binaryorderentry.boe3.v1.0.10.orderrejectreason", ftypes.STRING)
omi_cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.fields.order_rejected_message = ProtoField.new("Order Rejected Message", "cboe.edgxoptions.binaryorderentry.boe3.v1.0.10.orderrejectedmessage", ftypes.STRING)
omi_cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.fields.order_restated_message = ProtoField.new("Order Restated Message", "cboe.edgxoptions.binaryorderentry.boe3.v1.0.10.orderrestatedmessage", ftypes.STRING)
omi_cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.fields.order_restatement_reason = ProtoField.new("Order Restatement Reason", "cboe.edgxoptions.binaryorderentry.boe3.v1.0.10.orderrestatementreason", ftypes.STRING)
omi_cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.fields.order_router_subsidy = ProtoField.new("Order Router Subsidy", "cboe.edgxoptions.binaryorderentry.boe3.v1.0.10.orderroutersubsidy", ftypes.STRING)
omi_cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.fields.orig_cl_ord_id = ProtoField.new("Orig Cl Ord Id", "cboe.edgxoptions.binaryorderentry.boe3.v1.0.10.origclordid", ftypes.STRING)
omi_cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.fields.orig_time = ProtoField.new("Orig Time", "cboe.edgxoptions.binaryorderentry.boe3.v1.0.10.origtime", ftypes.UINT64)
omi_cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.fields.password = ProtoField.new("Password", "cboe.edgxoptions.binaryorderentry.boe3.v1.0.10.password", ftypes.STRING)
omi_cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.fields.posting_instruction = ProtoField.new("Posting Instruction", "cboe.edgxoptions.binaryorderentry.boe3.v1.0.10.postinginstruction", ftypes.STRING)
omi_cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.fields.prevent_match = ProtoField.new("Prevent Match", "cboe.edgxoptions.binaryorderentry.boe3.v1.0.10.preventmatch", ftypes.STRING)
omi_cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.fields.price = ProtoField.new("Price", "cboe.edgxoptions.binaryorderentry.boe3.v1.0.10.price", ftypes.DOUBLE)
omi_cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.fields.price_short = ProtoField.new("Price Short", "cboe.edgxoptions.binaryorderentry.boe3.v1.0.10.priceshort", ftypes.DOUBLE)
omi_cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.fields.price_type = ProtoField.new("Price Type", "cboe.edgxoptions.binaryorderentry.boe3.v1.0.10.pricetype", ftypes.STRING)
omi_cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.fields.purge_acknowledgement_message = ProtoField.new("Purge Acknowledgement Message", "cboe.edgxoptions.binaryorderentry.boe3.v1.0.10.purgeacknowledgementmessage", ftypes.STRING)
omi_cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.fields.purge_notification_message = ProtoField.new("Purge Notification Message", "cboe.edgxoptions.binaryorderentry.boe3.v1.0.10.purgenotificationmessage", ftypes.STRING)
omi_cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.fields.purge_orders_message = ProtoField.new("Purge Orders Message", "cboe.edgxoptions.binaryorderentry.boe3.v1.0.10.purgeordersmessage", ftypes.STRING)
omi_cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.fields.purge_reject_reason = ProtoField.new("Purge Reject Reason", "cboe.edgxoptions.binaryorderentry.boe3.v1.0.10.purgerejectreason", ftypes.STRING)
omi_cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.fields.purge_rejected_message = ProtoField.new("Purge Rejected Message", "cboe.edgxoptions.binaryorderentry.boe3.v1.0.10.purgerejectedmessage", ftypes.STRING)
omi_cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.fields.put_or_call = ProtoField.new("Put Or Call", "cboe.edgxoptions.binaryorderentry.boe3.v1.0.10.putorcall", ftypes.STRING)
omi_cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.fields.quote = ProtoField.new("Quote", "cboe.edgxoptions.binaryorderentry.boe3.v1.0.10.quote", ftypes.STRING)
omi_cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.fields.quote_acknowledgement = ProtoField.new("Quote Acknowledgement", "cboe.edgxoptions.binaryorderentry.boe3.v1.0.10.quoteacknowledgement", ftypes.STRING)
omi_cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.fields.quote_cancelled_message = ProtoField.new("Quote Cancelled Message", "cboe.edgxoptions.binaryorderentry.boe3.v1.0.10.quotecancelledmessage", ftypes.STRING)
omi_cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.fields.quote_cnt = ProtoField.new("Quote Cnt", "cboe.edgxoptions.binaryorderentry.boe3.v1.0.10.quotecnt", ftypes.UINT8)
omi_cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.fields.quote_execution_message = ProtoField.new("Quote Execution Message", "cboe.edgxoptions.binaryorderentry.boe3.v1.0.10.quoteexecutionmessage", ftypes.STRING)
omi_cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.fields.quote_reject_reason = ProtoField.new("Quote Reject Reason", "cboe.edgxoptions.binaryorderentry.boe3.v1.0.10.quoterejectreason", ftypes.STRING)
omi_cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.fields.quote_reject_sub_reason = ProtoField.new("Quote Reject Sub Reason", "cboe.edgxoptions.binaryorderentry.boe3.v1.0.10.quoterejectsubreason", ftypes.STRING)
omi_cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.fields.quote_restated_message = ProtoField.new("Quote Restated Message", "cboe.edgxoptions.binaryorderentry.boe3.v1.0.10.quoterestatedmessage", ftypes.STRING)
omi_cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.fields.quote_result = ProtoField.new("Quote Result", "cboe.edgxoptions.binaryorderentry.boe3.v1.0.10.quoteresult", ftypes.STRING)
omi_cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.fields.quote_short = ProtoField.new("Quote Short", "cboe.edgxoptions.binaryorderentry.boe3.v1.0.10.quoteshort", ftypes.STRING)
omi_cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.fields.quote_symbol = ProtoField.new("Quote Symbol", "cboe.edgxoptions.binaryorderentry.boe3.v1.0.10.quotesymbol", ftypes.STRING)
omi_cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.fields.quote_update_acknowledgement_message = ProtoField.new("Quote Update Acknowledgement Message", "cboe.edgxoptions.binaryorderentry.boe3.v1.0.10.quoteupdateacknowledgementmessage", ftypes.STRING)
omi_cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.fields.quote_update_id = ProtoField.new("Quote Update Id", "cboe.edgxoptions.binaryorderentry.boe3.v1.0.10.quoteupdateid", ftypes.STRING)
omi_cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.fields.quote_update_message = ProtoField.new("Quote Update Message", "cboe.edgxoptions.binaryorderentry.boe3.v1.0.10.quoteupdatemessage", ftypes.STRING)
omi_cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.fields.quote_update_rejected_message = ProtoField.new("Quote Update Rejected Message", "cboe.edgxoptions.binaryorderentry.boe3.v1.0.10.quoteupdaterejectedmessage", ftypes.STRING)
omi_cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.fields.quote_update_short_message = ProtoField.new("Quote Update Short Message", "cboe.edgxoptions.binaryorderentry.boe3.v1.0.10.quoteupdateshortmessage", ftypes.STRING)
omi_cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.fields.ratio_qty = ProtoField.new("Ratio Qty", "cboe.edgxoptions.binaryorderentry.boe3.v1.0.10.ratioqty", ftypes.UINT32)
omi_cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.fields.replay_unspecified_unit = ProtoField.new("Replay Unspecified Unit", "cboe.edgxoptions.binaryorderentry.boe3.v1.0.10.replayunspecifiedunit", ftypes.STRING)
omi_cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.fields.request_received_time = ProtoField.new("Request Received Time", "cboe.edgxoptions.binaryorderentry.boe3.v1.0.10.requestreceivedtime", ftypes.UINT64)
omi_cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.fields.reserved = ProtoField.new("Reserved", "cboe.edgxoptions.binaryorderentry.boe3.v1.0.10.reserved", ftypes.BYTES)
omi_cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.fields.reserved_field = ProtoField.new("Reserved Field", "cboe.edgxoptions.binaryorderentry.boe3.v1.0.10.reservedfield", ftypes.UINT8)
omi_cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.fields.reset_risk_acknowledgement_message = ProtoField.new("Reset Risk Acknowledgement Message", "cboe.edgxoptions.binaryorderentry.boe3.v1.0.10.resetriskacknowledgementmessage", ftypes.STRING)
omi_cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.fields.reset_risk_message = ProtoField.new("Reset Risk Message", "cboe.edgxoptions.binaryorderentry.boe3.v1.0.10.resetriskmessage", ftypes.STRING)
omi_cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.fields.restatement_reason = ProtoField.new("Restatement Reason", "cboe.edgxoptions.binaryorderentry.boe3.v1.0.10.restatementreason", ftypes.STRING)
omi_cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.fields.risk_reset = ProtoField.new("Risk Reset", "cboe.edgxoptions.binaryorderentry.boe3.v1.0.10.riskreset", ftypes.STRING)
omi_cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.fields.risk_reset_result = ProtoField.new("Risk Reset Result", "cboe.edgxoptions.binaryorderentry.boe3.v1.0.10.riskresetresult", ftypes.STRING)
omi_cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.fields.risk_root = ProtoField.new("Risk Root", "cboe.edgxoptions.binaryorderentry.boe3.v1.0.10.riskroot", ftypes.STRING)
omi_cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.fields.risk_status_id = ProtoField.new("Risk Status Id", "cboe.edgxoptions.binaryorderentry.boe3.v1.0.10.riskstatusid", ftypes.STRING)
omi_cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.fields.rout_strategy = ProtoField.new("Rout Strategy", "cboe.edgxoptions.binaryorderentry.boe3.v1.0.10.routstrategy", ftypes.STRING)
omi_cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.fields.route_delivery_method = ProtoField.new("Route Delivery Method", "cboe.edgxoptions.binaryorderentry.boe3.v1.0.10.routedeliverymethod", ftypes.STRING)
omi_cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.fields.routing_firm_id = ProtoField.new("Routing Firm Id", "cboe.edgxoptions.binaryorderentry.boe3.v1.0.10.routingfirmid", ftypes.STRING)
omi_cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.fields.routing_inst = ProtoField.new("Routing Inst", "cboe.edgxoptions.binaryorderentry.boe3.v1.0.10.routinginst", ftypes.STRING)
omi_cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.fields.scratch_pad = ProtoField.new("Scratch Pad", "cboe.edgxoptions.binaryorderentry.boe3.v1.0.10.scratchpad", ftypes.UINT16)
omi_cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.fields.secondary_exec_id = ProtoField.new("Secondary Exec Id", "cboe.edgxoptions.binaryorderentry.boe3.v1.0.10.secondaryexecid", ftypes.UINT64)
omi_cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.fields.secondary_order_id = ProtoField.new("Secondary Order Id", "cboe.edgxoptions.binaryorderentry.boe3.v1.0.10.secondaryorderid", ftypes.UINT64)
omi_cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.fields.send_time = ProtoField.new("Send Time", "cboe.edgxoptions.binaryorderentry.boe3.v1.0.10.sendtime", ftypes.UINT64)
omi_cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.fields.sender_location_id = ProtoField.new("Sender Location Id", "cboe.edgxoptions.binaryorderentry.boe3.v1.0.10.senderlocationid", ftypes.STRING)
omi_cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.fields.sequence_number = ProtoField.new("Sequence Number", "cboe.edgxoptions.binaryorderentry.boe3.v1.0.10.sequencenumber", ftypes.UINT32)
omi_cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.fields.session_eligibility = ProtoField.new("Session Eligibility", "cboe.edgxoptions.binaryorderentry.boe3.v1.0.10.sessioneligibility", ftypes.STRING)
omi_cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.fields.session_id = ProtoField.new("Session Id", "cboe.edgxoptions.binaryorderentry.boe3.v1.0.10.sessionid", ftypes.STRING)
omi_cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.fields.session_sub_id = ProtoField.new("Session Sub Id", "cboe.edgxoptions.binaryorderentry.boe3.v1.0.10.sessionsubid", ftypes.STRING)
omi_cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.fields.side = ProtoField.new("Side", "cboe.edgxoptions.binaryorderentry.boe3.v1.0.10.side", ftypes.STRING)
omi_cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.fields.size_modifier = ProtoField.new("Size Modifier", "cboe.edgxoptions.binaryorderentry.boe3.v1.0.10.sizemodifier", ftypes.STRING)
omi_cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.fields.source_matching_unit = ProtoField.new("Source Matching Unit", "cboe.edgxoptions.binaryorderentry.boe3.v1.0.10.sourcematchingunit", ftypes.UINT8)
omi_cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.fields.start_of_message = ProtoField.new("Start Of Message", "cboe.edgxoptions.binaryorderentry.boe3.v1.0.10.startofmessage", ftypes.UINT16)
omi_cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.fields.stop_px = ProtoField.new("Stop Px", "cboe.edgxoptions.binaryorderentry.boe3.v1.0.10.stoppx", ftypes.DOUBLE)
omi_cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.fields.strategy_id = ProtoField.new("Strategy Id", "cboe.edgxoptions.binaryorderentry.boe3.v1.0.10.strategyid", ftypes.STRING)
omi_cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.fields.strike_price = ProtoField.new("Strike Price", "cboe.edgxoptions.binaryorderentry.boe3.v1.0.10.strikeprice", ftypes.DOUBLE)
omi_cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.fields.sub_liquidity_indicator = ProtoField.new("Sub Liquidity Indicator", "cboe.edgxoptions.binaryorderentry.boe3.v1.0.10.subliquidityindicator", ftypes.STRING)
omi_cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.fields.symbol = ProtoField.new("Symbol", "cboe.edgxoptions.binaryorderentry.boe3.v1.0.10.symbol", ftypes.STRING)
omi_cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.fields.target_matching_unit = ProtoField.new("Target Matching Unit", "cboe.edgxoptions.binaryorderentry.boe3.v1.0.10.targetmatchingunit", ftypes.UINT8)
omi_cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.fields.target_party_id = ProtoField.new("Target Party Id", "cboe.edgxoptions.binaryorderentry.boe3.v1.0.10.targetpartyid", ftypes.STRING)
omi_cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.fields.text = ProtoField.new("Text", "cboe.edgxoptions.binaryorderentry.boe3.v1.0.10.text", ftypes.STRING)
omi_cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.fields.tied_hedge = ProtoField.new("Tied Hedge", "cboe.edgxoptions.binaryorderentry.boe3.v1.0.10.tiedhedge", ftypes.STRING)
omi_cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.fields.time_in_force = ProtoField.new("Time In Force", "cboe.edgxoptions.binaryorderentry.boe3.v1.0.10.timeinforce", ftypes.STRING)
omi_cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.fields.trade_cancel_correct_message = ProtoField.new("Trade Cancel Correct Message", "cboe.edgxoptions.binaryorderentry.boe3.v1.0.10.tradecancelcorrectmessage", ftypes.STRING)
omi_cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.fields.trade_date = ProtoField.new("Trade Date", "cboe.edgxoptions.binaryorderentry.boe3.v1.0.10.tradedate", ftypes.UINT32)
omi_cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.fields.trade_through_alert_type = ProtoField.new("Trade Through Alert Type", "cboe.edgxoptions.binaryorderentry.boe3.v1.0.10.tradethroughalerttype", ftypes.STRING)
omi_cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.fields.trading_group_id = ProtoField.new("Trading Group Id", "cboe.edgxoptions.binaryorderentry.boe3.v1.0.10.tradinggroupid", ftypes.STRING)
omi_cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.fields.transaction_time = ProtoField.new("Transaction Time", "cboe.edgxoptions.binaryorderentry.boe3.v1.0.10.transactiontime", ftypes.UINT64)
omi_cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.fields.unique_id_level = ProtoField.new("Unique Id Level", "cboe.edgxoptions.binaryorderentry.boe3.v1.0.10.uniqueidlevel", ftypes.STRING)
omi_cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.fields.unit_number = ProtoField.new("Unit Number", "cboe.edgxoptions.binaryorderentry.boe3.v1.0.10.unitnumber", ftypes.UINT8)
omi_cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.fields.unit_sequence = ProtoField.new("Unit Sequence", "cboe.edgxoptions.binaryorderentry.boe3.v1.0.10.unitsequence", ftypes.STRING)
omi_cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.fields.working_price = ProtoField.new("Working Price", "cboe.edgxoptions.binaryorderentry.boe3.v1.0.10.workingprice", ftypes.DOUBLE)

-- Cboe EdgxOptions BinaryOrderEntry Boe3 1.0.10 Headers
omi_cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.fields.exchange_message_header = ProtoField.new("Message Header", "cboe.edgxoptions.binaryorderentry.boe3.v1.0.10.exchangemessageheader", ftypes.STRING)
omi_cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.fields.exchange_packet = ProtoField.new("Packet", "cboe.edgxoptions.binaryorderentry.boe3.v1.0.10.exchangepacket", ftypes.STRING)
omi_cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.fields.firm_message_header = ProtoField.new("Message Header", "cboe.edgxoptions.binaryorderentry.boe3.v1.0.10.firmmessageheader", ftypes.STRING)
omi_cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.fields.firm_packet = ProtoField.new("Packet", "cboe.edgxoptions.binaryorderentry.boe3.v1.0.10.firmpacket", ftypes.STRING)

-- Cboe EdgxOptions BinaryOrderEntry Boe3 1.0.10 generated fields
omi_cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.fields.acknowledgement_allocation_index = ProtoField.new("Acknowledgement Allocation Index", "cboe.edgxoptions.binaryorderentry.boe3.v1.0.10.acknowledgementallocationindex", ftypes.UINT16)
omi_cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.fields.allocation_index = ProtoField.new("Allocation Index", "cboe.edgxoptions.binaryorderentry.boe3.v1.0.10.allocationindex", ftypes.UINT16)
omi_cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.fields.allocation_cancelled_index = ProtoField.new("Allocation Cancelled Index", "cboe.edgxoptions.binaryorderentry.boe3.v1.0.10.allocationcancelledindex", ftypes.UINT16)
omi_cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.fields.complex_leg_index = ProtoField.new("Complex Leg Index", "cboe.edgxoptions.binaryorderentry.boe3.v1.0.10.complexlegindex", ftypes.UINT16)
omi_cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.fields.custom_group_id_index = ProtoField.new("Custom Group Id Index", "cboe.edgxoptions.binaryorderentry.boe3.v1.0.10.customgroupidindex", ftypes.UINT16)
omi_cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.fields.leg_position_effect_index = ProtoField.new("Leg Position Effect Index", "cboe.edgxoptions.binaryorderentry.boe3.v1.0.10.legpositioneffectindex", ftypes.UINT16)
omi_cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.fields.quote_index = ProtoField.new("Quote Index", "cboe.edgxoptions.binaryorderentry.boe3.v1.0.10.quoteindex", ftypes.UINT16)
omi_cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.fields.quote_acknowledgement_index = ProtoField.new("Quote Acknowledgement Index", "cboe.edgxoptions.binaryorderentry.boe3.v1.0.10.quoteacknowledgementindex", ftypes.UINT16)
omi_cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.fields.quote_short_index = ProtoField.new("Quote Short Index", "cboe.edgxoptions.binaryorderentry.boe3.v1.0.10.quoteshortindex", ftypes.UINT16)
omi_cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.fields.unit_sequence_index = ProtoField.new("Unit Sequence Index", "cboe.edgxoptions.binaryorderentry.boe3.v1.0.10.unitsequenceindex", ftypes.UINT16)

-----------------------------------------------------------------------
-- Declare Dissection Options
-----------------------------------------------------------------------

local show = {}

-- Cboe EdgxOptions BinaryOrderEntry Boe3 1.0.10 Element Dissection Options
show.structs = true
show.indexes = true

-- Register Cboe EdgxOptions BinaryOrderEntry Boe3 1.0.10 Show Options
local role_enum = {
  { 1, "Resolve from the conversation", 0 },
  { 2, "Initiator", 1 },
  { 3, "Acceptor", 2 }
}
omi_cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.prefs.acceptor_port = Pref.uint("Acceptor Port", 0, "Port the acceptor listens on; 0 resolves each frame's role from its conversation")
omi_cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.prefs.assume_role = Pref.enum("Assume Role", 0, "Connection role assumed for every frame, for captures that start mid conversation", role_enum, false)
omi_cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.prefs.swap_sides = Pref.bool("Swap Sides", false, "The first frame seen of each conversation was the acceptor's, not the initiator's; for captures that start mid conversation")
omi_cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.prefs.show_structs = Pref.bool("Show Structs", show.structs, "Parse and add Structs to protocol tree")
omi_cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.prefs.show_indexes = Pref.bool("Show Indexes", show.indexes, "Show generated repeating group index counts in the protocol tree")

-- Handle changed preferences
function omi_cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.prefs_changed()

  -- Check if preferences have changed
  if show.structs ~= omi_cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.prefs.show_structs then
    show.structs = omi_cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.prefs.show_structs
  end
  if show.indexes ~= omi_cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.prefs.show_indexes then
    show.indexes = omi_cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.prefs.show_indexes
  end
end


-----------------------------------------------------------------------
-- Cboe EdgxOptions BinaryOrderEntry Boe3 1.0.10 Fields
-----------------------------------------------------------------------

-- Account
cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.account = {}

-- Size: Account
cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.account.size = 16

-- Display: Account
cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.account.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Account: No Value"
  end

  return "Account: "..value
end

-- Dissect: Account
cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.account.dissect = function(buffer, offset, packet, parent)
  local length = cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.account.size
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

  local display = cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.account.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.fields.account, range, value, display)

  return offset + length, value
end

-- Acknowledgement Style
cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.acknowledgement_style = {}

-- Size: Acknowledgement Style
cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.acknowledgement_style.size = 1

-- Display: Acknowledgement Style
cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.acknowledgement_style.display = function(value)
  return "Acknowledgement Style: "..value
end

-- Dissect: Acknowledgement Style
cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.acknowledgement_style.dissect = function(buffer, offset, packet, parent)
  local length = cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.acknowledgement_style.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.acknowledgement_style.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.fields.acknowledgement_style, range, value, display)

  return offset + length, value
end

-- Alloc Cnt
cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.alloc_cnt = {}

-- Size: Alloc Cnt
cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.alloc_cnt.size = 1

-- Display: Alloc Cnt
cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.alloc_cnt.display = function(value)
  return "Alloc Cnt: "..value
end

-- Dissect: Alloc Cnt
cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.alloc_cnt.dissect = function(buffer, offset, packet, parent)
  local length = cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.alloc_cnt.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.alloc_cnt.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.fields.alloc_cnt, range, value, display)

  return offset + length, value
end

-- Alloc Leg Cnt
cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.alloc_leg_cnt = {}

-- Size: Alloc Leg Cnt
cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.alloc_leg_cnt.size = 1

-- Display: Alloc Leg Cnt
cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.alloc_leg_cnt.display = function(value)
  return "Alloc Leg Cnt: "..value
end

-- Dissect: Alloc Leg Cnt
cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.alloc_leg_cnt.dissect = function(buffer, offset, packet, parent)
  local length = cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.alloc_leg_cnt.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.alloc_leg_cnt.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.fields.alloc_leg_cnt, range, value, display)

  return offset + length, value
end

-- Alloc Qty
cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.alloc_qty = {}

-- Size: Alloc Qty
cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.alloc_qty.size = 4

-- Display: Alloc Qty
cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.alloc_qty.display = function(value)
  return "Alloc Qty: "..value
end

-- Dissect: Alloc Qty
cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.alloc_qty.dissect = function(buffer, offset, packet, parent)
  local length = cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.alloc_qty.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.alloc_qty.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.fields.alloc_qty, range, value, display)

  return offset + length, value
end

-- Attributed Quote
cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.attributed_quote = {}

-- Size: Attributed Quote
cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.attributed_quote.size = 1

-- Display: Attributed Quote
cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.attributed_quote.display = function(value)
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
cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.attributed_quote.dissect = function(buffer, offset, packet, parent)
  local length = cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.attributed_quote.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.attributed_quote.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.fields.attributed_quote, range, value, display)

  return offset + length, value
end

-- Auction Id
cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.auction_id = {}

-- Size: Auction Id
cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.auction_id.size = 8

-- Display: Auction Id
cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.auction_id.display = function(value)
  return "Auction Id: "..value
end

-- Dissect: Auction Id
cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.auction_id.dissect = function(buffer, offset, packet, parent)
  local length = cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.auction_id.size
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.auction_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.fields.auction_id, range, value, display)

  return offset + length, value
end

-- Auto Match
cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.auto_match = {}

-- Size: Auto Match
cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.auto_match.size = 1

-- Display: Auto Match
cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.auto_match.display = function(value)
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
cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.auto_match.dissect = function(buffer, offset, packet, parent)
  local length = cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.auto_match.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.auto_match.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.fields.auto_match, range, value, display)

  return offset + length, value
end

-- Auto Match Price
cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.auto_match_price = {}

-- Size: Auto Match Price
cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.auto_match_price.size = 8

-- Display: Auto Match Price
cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.auto_match_price.display = function(value)
  return "Auto Match Price: "..value
end

-- Translate: Auto Match Price
cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.auto_match_price.translate = function(raw)
  return raw:tonumber()/10000
end

-- Dissect: Auto Match Price
cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.auto_match_price.dissect = function(buffer, offset, packet, parent)
  local length = cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.auto_match_price.size
  local range = buffer(offset, length)
  local raw = range:le_int64()
  local value = cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.auto_match_price.translate(raw)
  local display = cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.auto_match_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.fields.auto_match_price, range, value, display)

  return offset + length, value
end

-- Base Liquidity Indicator
cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.base_liquidity_indicator = {}

-- Size: Base Liquidity Indicator
cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.base_liquidity_indicator.size = 1

-- Display: Base Liquidity Indicator
cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.base_liquidity_indicator.display = function(value)
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
cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.base_liquidity_indicator.dissect = function(buffer, offset, packet, parent)
  local length = cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.base_liquidity_indicator.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.base_liquidity_indicator.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.fields.base_liquidity_indicator, range, value, display)

  return offset + length, value
end

-- Cancel Orig On Reject
cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.cancel_orig_on_reject = {}

-- Size: Cancel Orig On Reject
cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.cancel_orig_on_reject.size = 1

-- Display: Cancel Orig On Reject
cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.cancel_orig_on_reject.display = function(value)
  if value == "N" then
    return "Cancel Orig On Reject: Leave Original Order Alone (N)"
  end
  if value == "Y" then
    return "Cancel Orig On Reject: Cancel Original Order If Modification Fails (Y)"
  end

  return "Cancel Orig On Reject: Unknown("..value..")"
end

-- Dissect: Cancel Orig On Reject
cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.cancel_orig_on_reject.dissect = function(buffer, offset, packet, parent)
  local length = cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.cancel_orig_on_reject.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.cancel_orig_on_reject.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.fields.cancel_orig_on_reject, range, value, display)

  return offset + length, value
end

-- Cancel Reason
cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.cancel_reason = {}

-- Size: Cancel Reason
cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.cancel_reason.size = 1

-- Display: Cancel Reason
cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.cancel_reason.display = function(value)
  return "Cancel Reason: "..value
end

-- Dissect: Cancel Reason
cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.cancel_reason.dissect = function(buffer, offset, packet, parent)
  local length = cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.cancel_reason.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.cancel_reason.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.fields.cancel_reason, range, value, display)

  return offset + length, value
end

-- Cancel Reject Reason
cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.cancel_reject_reason = {}

-- Size: Cancel Reject Reason
cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.cancel_reject_reason.size = 1

-- Display: Cancel Reject Reason
cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.cancel_reject_reason.display = function(value)
  return "Cancel Reject Reason: "..value
end

-- Dissect: Cancel Reject Reason
cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.cancel_reject_reason.dissect = function(buffer, offset, packet, parent)
  local length = cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.cancel_reject_reason.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.cancel_reject_reason.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.fields.cancel_reject_reason, range, value, display)

  return offset + length, value
end

-- Cancel Sub Reason
cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.cancel_sub_reason = {}

-- Size: Cancel Sub Reason
cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.cancel_sub_reason.size = 1

-- Display: Cancel Sub Reason
cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.cancel_sub_reason.display = function(value)
  return "Cancel Sub Reason: "..value
end

-- Dissect: Cancel Sub Reason
cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.cancel_sub_reason.dissect = function(buffer, offset, packet, parent)
  local length = cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.cancel_sub_reason.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.cancel_sub_reason.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.fields.cancel_sub_reason, range, value, display)

  return offset + length, value
end

-- Cancelled Order Count
cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.cancelled_order_count = {}

-- Size: Cancelled Order Count
cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.cancelled_order_count.size = 4

-- Display: Cancelled Order Count
cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.cancelled_order_count.display = function(value)
  return "Cancelled Order Count: "..value
end

-- Dissect: Cancelled Order Count
cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.cancelled_order_count.dissect = function(buffer, offset, packet, parent)
  local length = cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.cancelled_order_count.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.cancelled_order_count.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.fields.cancelled_order_count, range, value, display)

  return offset + length, value
end

-- Capacity
cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.capacity = {}

-- Size: Capacity
cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.capacity.size = 1

-- Display: Capacity
cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.capacity.display = function(value)
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

  return "Capacity: Unknown("..value..")"
end

-- Dissect: Capacity
cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.capacity.dissect = function(buffer, offset, packet, parent)
  local length = cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.capacity.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.capacity.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.fields.capacity, range, value, display)

  return offset + length, value
end

-- Cfi Code
cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.cfi_code = {}

-- Size: Cfi Code
cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.cfi_code.size = 2

-- Display: Cfi Code
cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.cfi_code.display = function(value)
  if value == "O" then
    return "Cfi Code: Options (O)"
  end
  if value == "E" then
    return "Cfi Code: Equity C 1 And Edgx Only (E)"
  end

  return "Cfi Code: Unknown("..value..")"
end

-- Dissect: Cfi Code
cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.cfi_code.dissect = function(buffer, offset, packet, parent)
  local length = cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.cfi_code.size
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

  local display = cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.cfi_code.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.fields.cfi_code, range, value, display)

  return offset + length, value
end

-- Cl Ord Id
cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.cl_ord_id = {}

-- Size: Cl Ord Id
cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.cl_ord_id.size = 20

-- Display: Cl Ord Id
cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.cl_ord_id.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Cl Ord Id: No Value"
  end

  return "Cl Ord Id: "..value
end

-- Dissect: Cl Ord Id
cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.cl_ord_id.dissect = function(buffer, offset, packet, parent)
  local length = cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.cl_ord_id.size
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

  local display = cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.cl_ord_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.fields.cl_ord_id, range, value, display)

  return offset + length, value
end

-- Clearing Account
cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.clearing_account = {}

-- Size: Clearing Account
cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.clearing_account.size = 4

-- Display: Clearing Account
cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.clearing_account.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Clearing Account: No Value"
  end

  return "Clearing Account: "..value
end

-- Dissect: Clearing Account
cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.clearing_account.dissect = function(buffer, offset, packet, parent)
  local length = cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.clearing_account.size
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

  local display = cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.clearing_account.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.fields.clearing_account, range, value, display)

  return offset + length, value
end

-- Clearing Firm
cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.clearing_firm = {}

-- Size: Clearing Firm
cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.clearing_firm.size = 4

-- Display: Clearing Firm
cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.clearing_firm.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Clearing Firm: No Value"
  end

  return "Clearing Firm: "..value
end

-- Dissect: Clearing Firm
cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.clearing_firm.dissect = function(buffer, offset, packet, parent)
  local length = cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.clearing_firm.size
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

  local display = cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.clearing_firm.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.fields.clearing_firm, range, value, display)

  return offset + length, value
end

-- Clearing Firm Filter
cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.clearing_firm_filter = {}

-- Size: Clearing Firm Filter
cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.clearing_firm_filter.size = 1

-- Display: Clearing Firm Filter
cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.clearing_firm_filter.display = function(value)
  return "Clearing Firm Filter: "..value
end

-- Dissect: Clearing Firm Filter
cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.clearing_firm_filter.dissect = function(buffer, offset, packet, parent)
  local length = cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.clearing_firm_filter.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.clearing_firm_filter.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.fields.clearing_firm_filter, range, value, display)

  return offset + length, value
end

-- Clearing Optional Data
cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.clearing_optional_data = {}

-- Size: Clearing Optional Data
cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.clearing_optional_data.size = 16

-- Display: Clearing Optional Data
cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.clearing_optional_data.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Clearing Optional Data: No Value"
  end

  return "Clearing Optional Data: "..value
end

-- Dissect: Clearing Optional Data
cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.clearing_optional_data.dissect = function(buffer, offset, packet, parent)
  local length = cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.clearing_optional_data.size
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

  local display = cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.clearing_optional_data.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.fields.clearing_optional_data, range, value, display)

  return offset + length, value
end

-- Client Id Attr
cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.client_id_attr = {}

-- Size: Client Id Attr
cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.client_id_attr.size = 4

-- Display: Client Id Attr
cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.client_id_attr.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Client Id Attr: No Value"
  end

  return "Client Id Attr: "..value
end

-- Dissect: Client Id Attr
cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.client_id_attr.dissect = function(buffer, offset, packet, parent)
  local length = cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.client_id_attr.size
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

  local display = cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.client_id_attr.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.fields.client_id_attr, range, value, display)

  return offset + length, value
end

-- Client Sequence
cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.client_sequence = {}

-- Size: Client Sequence
cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.client_sequence.size = 4

-- Display: Client Sequence
cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.client_sequence.display = function(value)
  return "Client Sequence: "..value
end

-- Dissect: Client Sequence
cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.client_sequence.dissect = function(buffer, offset, packet, parent)
  local length = cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.client_sequence.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.client_sequence.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.fields.client_sequence, range, value, display)

  return offset + length, value
end

-- Cmta Number
cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.cmta_number = {}

-- Size: Cmta Number
cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.cmta_number.size = 4

-- Display: Cmta Number
cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.cmta_number.display = function(value)
  return "Cmta Number: "..value
end

-- Dissect: Cmta Number
cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.cmta_number.dissect = function(buffer, offset, packet, parent)
  local length = cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.cmta_number.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.cmta_number.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.fields.cmta_number, range, value, display)

  return offset + length, value
end

-- Combo Order
cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.combo_order = {}

-- Size: Combo Order
cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.combo_order.size = 1

-- Display: Combo Order
cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.combo_order.display = function(value)
  if value == "N" then
    return "Combo Order: No (N)"
  end
  if value == "Y" then
    return "Combo Order: Yes (Y)"
  end

  return "Combo Order: Unknown("..value..")"
end

-- Dissect: Combo Order
cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.combo_order.dissect = function(buffer, offset, packet, parent)
  local length = cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.combo_order.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.combo_order.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.fields.combo_order, range, value, display)

  return offset + length, value
end

-- Compression
cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.compression = {}

-- Size: Compression
cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.compression.size = 1

-- Display: Compression
cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.compression.display = function(value)
  if value == "N" then
    return "Compression: No (N)"
  end
  if value == "Y" then
    return "Compression: Yes (Y)"
  end

  return "Compression: Unknown("..value..")"
end

-- Dissect: Compression
cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.compression.dissect = function(buffer, offset, packet, parent)
  local length = cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.compression.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.compression.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.fields.compression, range, value, display)

  return offset + length, value
end

-- Contra Broker
cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.contra_broker = {}

-- Size: Contra Broker
cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.contra_broker.size = 4

-- Display: Contra Broker
cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.contra_broker.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Contra Broker: No Value"
  end

  return "Contra Broker: "..value
end

-- Dissect: Contra Broker
cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.contra_broker.dissect = function(buffer, offset, packet, parent)
  local length = cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.contra_broker.size
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

  local display = cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.contra_broker.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.fields.contra_broker, range, value, display)

  return offset + length, value
end

-- Contra Capacity
cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.contra_capacity = {}

-- Size: Contra Capacity
cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.contra_capacity.size = 1

-- Display: Contra Capacity
cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.contra_capacity.display = function(value)
  return "Contra Capacity: "..value
end

-- Dissect: Contra Capacity
cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.contra_capacity.dissect = function(buffer, offset, packet, parent)
  local length = cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.contra_capacity.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.contra_capacity.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.fields.contra_capacity, range, value, display)

  return offset + length, value
end

-- Contra Trader
cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.contra_trader = {}

-- Size: Contra Trader
cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.contra_trader.size = 4

-- Display: Contra Trader
cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.contra_trader.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Contra Trader: No Value"
  end

  return "Contra Trader: "..value
end

-- Dissect: Contra Trader
cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.contra_trader.dissect = function(buffer, offset, packet, parent)
  local length = cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.contra_trader.size
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

  local display = cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.contra_trader.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.fields.contra_trader, range, value, display)

  return offset + length, value
end

-- Corrected Price
cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.corrected_price = {}

-- Size: Corrected Price
cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.corrected_price.size = 8

-- Display: Corrected Price
cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.corrected_price.display = function(value)
  return "Corrected Price: "..value
end

-- Dissect: Corrected Price
cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.corrected_price.dissect = function(buffer, offset, packet, parent)
  local length = cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.corrected_price.size
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.corrected_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.fields.corrected_price, range, value, display)

  return offset + length, value
end

-- Corrected Size
cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.corrected_size = {}

-- Size: Corrected Size
cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.corrected_size.size = 4

-- Display: Corrected Size
cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.corrected_size.display = function(value)
  return "Corrected Size: "..value
end

-- Dissect: Corrected Size
cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.corrected_size.dissect = function(buffer, offset, packet, parent)
  local length = cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.corrected_size.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.corrected_size.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.fields.corrected_size, range, value, display)

  return offset + length, value
end

-- Cross Exclusion Indicator
cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.cross_exclusion_indicator = {}

-- Size: Cross Exclusion Indicator
cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.cross_exclusion_indicator.size = 1

-- Display: Cross Exclusion Indicator
cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.cross_exclusion_indicator.display = function(value)
  if value == "N" then
    return "Cross Exclusion Indicator: Contracts Were Executed In Auction Against Contra Party (N)"
  end
  if value == "Y" then
    return "Cross Exclusion Indicator: Contracts Were Executed In Auction Against Another Party (Y)"
  end

  return "Cross Exclusion Indicator: Unknown("..value..")"
end

-- Dissect: Cross Exclusion Indicator
cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.cross_exclusion_indicator.dissect = function(buffer, offset, packet, parent)
  local length = cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.cross_exclusion_indicator.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.cross_exclusion_indicator.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.fields.cross_exclusion_indicator, range, value, display)

  return offset + length, value
end

-- Cross Id
cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.cross_id = {}

-- Size: Cross Id
cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.cross_id.size = 20

-- Display: Cross Id
cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.cross_id.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Cross Id: No Value"
  end

  return "Cross Id: "..value
end

-- Dissect: Cross Id
cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.cross_id.dissect = function(buffer, offset, packet, parent)
  local length = cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.cross_id.size
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

  local display = cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.cross_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.fields.cross_id, range, value, display)

  return offset + length, value
end

-- Cross Initiator
cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.cross_initiator = {}

-- Size: Cross Initiator
cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.cross_initiator.size = 4

-- Display: Cross Initiator
cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.cross_initiator.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Cross Initiator: No Value"
  end

  return "Cross Initiator: "..value
end

-- Dissect: Cross Initiator
cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.cross_initiator.dissect = function(buffer, offset, packet, parent)
  local length = cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.cross_initiator.size
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

  local display = cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.cross_initiator.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.fields.cross_initiator, range, value, display)

  return offset + length, value
end

-- Cross Prioritization
cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.cross_prioritization = {}

-- Size: Cross Prioritization
cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.cross_prioritization.size = 1

-- Display: Cross Prioritization
cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.cross_prioritization.display = function(value)
  if value == "1" then
    return "Cross Prioritization: Buy (1)"
  end
  if value == "2" then
    return "Cross Prioritization: Sell (2)"
  end

  return "Cross Prioritization: Unknown("..value..")"
end

-- Dissect: Cross Prioritization
cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.cross_prioritization.dissect = function(buffer, offset, packet, parent)
  local length = cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.cross_prioritization.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.cross_prioritization.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.fields.cross_prioritization, range, value, display)

  return offset + length, value
end

-- Cross Type
cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.cross_type = {}

-- Size: Cross Type
cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.cross_type.size = 1

-- Display: Cross Type
cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.cross_type.display = function(value)
  if value == "1" then
    return "Cross Type: Aim (1)"
  end
  if value == "2" then
    return "Cross Type: Qcc (2)"
  end
  if value == "3" then
    return "Cross Type: Sam (3)"
  end

  return "Cross Type: Unknown("..value..")"
end

-- Dissect: Cross Type
cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.cross_type.dissect = function(buffer, offset, packet, parent)
  local length = cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.cross_type.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.cross_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.fields.cross_type, range, value, display)

  return offset + length, value
end

-- Cum Qty
cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.cum_qty = {}

-- Size: Cum Qty
cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.cum_qty.size = 4

-- Display: Cum Qty
cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.cum_qty.display = function(value)
  return "Cum Qty: "..value
end

-- Dissect: Cum Qty
cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.cum_qty.dissect = function(buffer, offset, packet, parent)
  local length = cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.cum_qty.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.cum_qty.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.fields.cum_qty, range, value, display)

  return offset + length, value
end

-- Custom Group Id
cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.custom_group_id = {}

-- Size: Custom Group Id
cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.custom_group_id.size = 2

-- Display: Custom Group Id
cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.custom_group_id.display = function(value)
  return "Custom Group Id: "..value
end

-- Dissect: Custom Group Id
cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.custom_group_id.dissect = function(buffer, offset, packet, parent)
  local length = cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.custom_group_id.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.custom_group_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.fields.custom_group_id, range, value, display)

  return offset + length, value
end

-- Custom Group Id Cnt
cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.custom_group_id_cnt = {}

-- Size: Custom Group Id Cnt
cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.custom_group_id_cnt.size = 1

-- Display: Custom Group Id Cnt
cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.custom_group_id_cnt.display = function(value)
  return "Custom Group Id Cnt: "..value
end

-- Dissect: Custom Group Id Cnt
cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.custom_group_id_cnt.dissect = function(buffer, offset, packet, parent)
  local length = cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.custom_group_id_cnt.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.custom_group_id_cnt.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.fields.custom_group_id_cnt, range, value, display)

  return offset + length, value
end

-- Display Indicator
cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.display_indicator = {}

-- Size: Display Indicator
cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.display_indicator.size = 1

-- Display: Display Indicator
cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.display_indicator.display = function(value)
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
cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.display_indicator.dissect = function(buffer, offset, packet, parent)
  local length = cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.display_indicator.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.display_indicator.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.fields.display_indicator, range, value, display)

  return offset + length, value
end

-- Display Price
cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.display_price = {}

-- Size: Display Price
cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.display_price.size = 8

-- Display: Display Price
cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.display_price.display = function(value)
  return "Display Price: "..value
end

-- Translate: Display Price
cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.display_price.translate = function(raw)
  return raw:tonumber()/10000
end

-- Dissect: Display Price
cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.display_price.dissect = function(buffer, offset, packet, parent)
  local length = cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.display_price.size
  local range = buffer(offset, length)
  local raw = range:le_int64()
  local value = cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.display_price.translate(raw)
  local display = cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.display_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.fields.display_price, range, value, display)

  return offset + length, value
end

-- Display Range
cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.display_range = {}

-- Size: Display Range
cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.display_range.size = 4

-- Display: Display Range
cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.display_range.display = function(value)
  return "Display Range: "..value
end

-- Dissect: Display Range
cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.display_range.dissect = function(buffer, offset, packet, parent)
  local length = cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.display_range.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.display_range.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.fields.display_range, range, value, display)

  return offset + length, value
end

-- Drill Thru Protection
cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.drill_thru_protection = {}

-- Size: Drill Thru Protection
cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.drill_thru_protection.size = 8

-- Display: Drill Thru Protection
cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.drill_thru_protection.display = function(value)
  return "Drill Thru Protection: "..value
end

-- Translate: Drill Thru Protection
cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.drill_thru_protection.translate = function(raw)
  return raw:tonumber()/10000
end

-- Dissect: Drill Thru Protection
cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.drill_thru_protection.dissect = function(buffer, offset, packet, parent)
  local length = cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.drill_thru_protection.size
  local range = buffer(offset, length)
  local raw = range:le_int64()
  local value = cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.drill_thru_protection.translate(raw)
  local display = cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.drill_thru_protection.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.fields.drill_thru_protection, range, value, display)

  return offset + length, value
end

-- Equity Buy Clearing Firm
cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.equity_buy_clearing_firm = {}

-- Size: Equity Buy Clearing Firm
cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.equity_buy_clearing_firm.size = 4

-- Display: Equity Buy Clearing Firm
cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.equity_buy_clearing_firm.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Equity Buy Clearing Firm: No Value"
  end

  return "Equity Buy Clearing Firm: "..value
end

-- Dissect: Equity Buy Clearing Firm
cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.equity_buy_clearing_firm.dissect = function(buffer, offset, packet, parent)
  local length = cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.equity_buy_clearing_firm.size
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

  local display = cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.equity_buy_clearing_firm.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.fields.equity_buy_clearing_firm, range, value, display)

  return offset + length, value
end

-- Equity Ex Destination
cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.equity_ex_destination = {}

-- Size: Equity Ex Destination
cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.equity_ex_destination.size = 1

-- Display: Equity Ex Destination
cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.equity_ex_destination.display = function(value)
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
cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.equity_ex_destination.dissect = function(buffer, offset, packet, parent)
  local length = cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.equity_ex_destination.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.equity_ex_destination.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.fields.equity_ex_destination, range, value, display)

  return offset + length, value
end

-- Equity Leg Short Sell
cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.equity_leg_short_sell = {}

-- Size: Equity Leg Short Sell
cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.equity_leg_short_sell.size = 1

-- Display: Equity Leg Short Sell
cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.equity_leg_short_sell.display = function(value)
  if value == "5" then
    return "Equity Leg Short Sell: Sell Short (5)"
  end
  if value == "6" then
    return "Equity Leg Short Sell: Sell Short Exempt (6)"
  end

  return "Equity Leg Short Sell: Unknown("..value..")"
end

-- Dissect: Equity Leg Short Sell
cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.equity_leg_short_sell.dissect = function(buffer, offset, packet, parent)
  local length = cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.equity_leg_short_sell.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.equity_leg_short_sell.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.fields.equity_leg_short_sell, range, value, display)

  return offset + length, value
end

-- Equity Party Id
cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.equity_party_id = {}

-- Size: Equity Party Id
cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.equity_party_id.size = 4

-- Display: Equity Party Id
cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.equity_party_id.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Equity Party Id: No Value"
  end

  return "Equity Party Id: "..value
end

-- Dissect: Equity Party Id
cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.equity_party_id.dissect = function(buffer, offset, packet, parent)
  local length = cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.equity_party_id.size
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

  local display = cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.equity_party_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.fields.equity_party_id, range, value, display)

  return offset + length, value
end

-- Equity Sell Clearing Firm
cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.equity_sell_clearing_firm = {}

-- Size: Equity Sell Clearing Firm
cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.equity_sell_clearing_firm.size = 4

-- Display: Equity Sell Clearing Firm
cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.equity_sell_clearing_firm.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Equity Sell Clearing Firm: No Value"
  end

  return "Equity Sell Clearing Firm: "..value
end

-- Dissect: Equity Sell Clearing Firm
cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.equity_sell_clearing_firm.dissect = function(buffer, offset, packet, parent)
  local length = cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.equity_sell_clearing_firm.size
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

  local display = cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.equity_sell_clearing_firm.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.fields.equity_sell_clearing_firm, range, value, display)

  return offset + length, value
end

-- Equity Trade Price
cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.equity_trade_price = {}

-- Size: Equity Trade Price
cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.equity_trade_price.size = 8

-- Display: Equity Trade Price
cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.equity_trade_price.display = function(value)
  return "Equity Trade Price: "..value
end

-- Translate: Equity Trade Price
cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.equity_trade_price.translate = function(raw)
  return raw:tonumber()/10000
end

-- Dissect: Equity Trade Price
cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.equity_trade_price.dissect = function(buffer, offset, packet, parent)
  local length = cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.equity_trade_price.size
  local range = buffer(offset, length)
  local raw = range:le_int64()
  local value = cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.equity_trade_price.translate(raw)
  local display = cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.equity_trade_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.fields.equity_trade_price, range, value, display)

  return offset + length, value
end

-- Equity Trade Size
cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.equity_trade_size = {}

-- Size: Equity Trade Size
cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.equity_trade_size.size = 4

-- Display: Equity Trade Size
cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.equity_trade_size.display = function(value)
  return "Equity Trade Size: "..value
end

-- Dissect: Equity Trade Size
cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.equity_trade_size.dissect = function(buffer, offset, packet, parent)
  local length = cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.equity_trade_size.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.equity_trade_size.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.fields.equity_trade_size, range, value, display)

  return offset + length, value
end

-- Equity Trade Venue
cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.equity_trade_venue = {}

-- Size: Equity Trade Venue
cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.equity_trade_venue.size = 1

-- Display: Equity Trade Venue
cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.equity_trade_venue.display = function(value)
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
cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.equity_trade_venue.dissect = function(buffer, offset, packet, parent)
  local length = cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.equity_trade_venue.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.equity_trade_venue.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.fields.equity_trade_venue, range, value, display)

  return offset + length, value
end

-- Equity Transact Time
cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.equity_transact_time = {}

-- Size: Equity Transact Time
cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.equity_transact_time.size = 8

-- Display: Equity Transact Time
cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.equity_transact_time.display = function(value)
  -- Parse unix nanosecond timestamp
  local seconds = (value / UInt64(1000000000)):tonumber()
  local nanoseconds = (value % UInt64(1000000000)):tonumber()

  return "Equity Transact Time: "..os.date("%Y-%m-%d %H:%M:%S.", seconds)..string.format("%09d", nanoseconds)
end

-- Dissect: Equity Transact Time
cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.equity_transact_time.dissect = function(buffer, offset, packet, parent)
  local length = cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.equity_transact_time.size
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.equity_transact_time.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.fields.equity_transact_time, range, value, display)

  return offset + length, value
end

-- Ex Destination
cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.ex_destination = {}

-- Size: Ex Destination
cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.ex_destination.size = 1

-- Display: Ex Destination
cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.ex_destination.display = function(value)
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
cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.ex_destination.dissect = function(buffer, offset, packet, parent)
  local length = cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.ex_destination.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.ex_destination.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.fields.ex_destination, range, value, display)

  return offset + length, value
end

-- Exchange Message Type
cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.exchange_message_type = {}

-- Size: Exchange Message Type
cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.exchange_message_type.size = 2

-- Display: Exchange Message Type
cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.exchange_message_type.display = function(value)
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
    return "Message Type: Server Heartbeat Message (504)"
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

-- Dissect: Exchange Message Type
cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.exchange_message_type.dissect = function(buffer, offset, packet, parent)
  local length = cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.exchange_message_type.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.exchange_message_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.fields.exchange_message_type, range, value, display)

  return offset + length, value
end

-- Exec Id
cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.exec_id = {}

-- Size: Exec Id
cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.exec_id.size = 8

-- Display: Exec Id
cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.exec_id.display = function(value)
  return "Exec Id: "..value
end

-- Dissect: Exec Id
cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.exec_id.dissect = function(buffer, offset, packet, parent)
  local length = cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.exec_id.size
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.exec_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.fields.exec_id, range, value, display)

  return offset + length, value
end

-- Exec Inst
cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.exec_inst = {}

-- Size: Exec Inst
cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.exec_inst.size = 1

-- Display: Exec Inst
cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.exec_inst.display = function(value)
  if value == "f" then
    return "Exec Inst: Intermarket Sweep (f)"
  end
  if value == "G" then
    return "Exec Inst: All Or None (G)"
  end

  return "Exec Inst: Unknown("..value..")"
end

-- Dissect: Exec Inst
cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.exec_inst.dissect = function(buffer, offset, packet, parent)
  local length = cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.exec_inst.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.exec_inst.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.fields.exec_inst, range, value, display)

  return offset + length, value
end

-- Exec Ref Id
cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.exec_ref_id = {}

-- Size: Exec Ref Id
cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.exec_ref_id.size = 8

-- Display: Exec Ref Id
cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.exec_ref_id.display = function(value)
  return "Exec Ref Id: "..value
end

-- Dissect: Exec Ref Id
cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.exec_ref_id.dissect = function(buffer, offset, packet, parent)
  local length = cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.exec_ref_id.size
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.exec_ref_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.fields.exec_ref_id, range, value, display)

  return offset + length, value
end

-- Expire Time
cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.expire_time = {}

-- Size: Expire Time
cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.expire_time.size = 8

-- Display: Expire Time
cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.expire_time.display = function(value)
  -- Parse unix nanosecond timestamp
  local seconds = (value / UInt64(1000000000)):tonumber()
  local nanoseconds = (value % UInt64(1000000000)):tonumber()

  return "Expire Time: "..os.date("%Y-%m-%d %H:%M:%S.", seconds)..string.format("%09d", nanoseconds)
end

-- Dissect: Expire Time
cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.expire_time.dissect = function(buffer, offset, packet, parent)
  local length = cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.expire_time.size
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.expire_time.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.fields.expire_time, range, value, display)

  return offset + length, value
end

-- Fee Code
cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.fee_code = {}

-- Size: Fee Code
cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.fee_code.size = 2

-- Display: Fee Code
cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.fee_code.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Fee Code: No Value"
  end

  return "Fee Code: "..value
end

-- Dissect: Fee Code
cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.fee_code.dissect = function(buffer, offset, packet, parent)
  local length = cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.fee_code.size
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

  local display = cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.fee_code.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.fields.fee_code, range, value, display)

  return offset + length, value
end

-- Firm Message Type
cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.firm_message_type = {}

-- Size: Firm Message Type
cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.firm_message_type.size = 2

-- Display: Firm Message Type
cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.firm_message_type.display = function(value)
  if value == 1 then
    return "Message Type: Login Request Message (1)"
  end
  if value == 2 then
    return "Message Type: Logout Request Message (2)"
  end
  if value == 3 then
    return "Message Type: Client Heartbeat Message (3)"
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

  return "Message Type: Unknown("..value..")"
end

-- Dissect: Firm Message Type
cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.firm_message_type.dissect = function(buffer, offset, packet, parent)
  local length = cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.firm_message_type.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.firm_message_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.fields.firm_message_type, range, value, display)

  return offset + length, value
end

-- Floor Destination
cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.floor_destination = {}

-- Size: Floor Destination
cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.floor_destination.size = 4

-- Display: Floor Destination
cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.floor_destination.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Floor Destination: No Value"
  end

  return "Floor Destination: "..value
end

-- Dissect: Floor Destination
cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.floor_destination.dissect = function(buffer, offset, packet, parent)
  local length = cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.floor_destination.size
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

  local display = cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.floor_destination.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.fields.floor_destination, range, value, display)

  return offset + length, value
end

-- Floor Routing Inst
cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.floor_routing_inst = {}

-- Size: Floor Routing Inst
cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.floor_routing_inst.size = 1

-- Display: Floor Routing Inst
cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.floor_routing_inst.display = function(value)
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
cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.floor_routing_inst.dissect = function(buffer, offset, packet, parent)
  local length = cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.floor_routing_inst.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.floor_routing_inst.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.fields.floor_routing_inst, range, value, display)

  return offset + length, value
end

-- Floor Trade Time
cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.floor_trade_time = {}

-- Size: Floor Trade Time
cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.floor_trade_time.size = 8

-- Display: Floor Trade Time
cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.floor_trade_time.display = function(value)
  -- Parse unix nanosecond timestamp
  local seconds = (value / UInt64(1000000000)):tonumber()
  local nanoseconds = (value % UInt64(1000000000)):tonumber()

  return "Floor Trade Time: "..os.date("%Y-%m-%d %H:%M:%S.", seconds)..string.format("%09d", nanoseconds)
end

-- Dissect: Floor Trade Time
cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.floor_trade_time.dissect = function(buffer, offset, packet, parent)
  local length = cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.floor_trade_time.size
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.floor_trade_time.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.fields.floor_trade_time, range, value, display)

  return offset + length, value
end

-- Floor Trader Acronym
cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.floor_trader_acronym = {}

-- Size: Floor Trader Acronym
cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.floor_trader_acronym.size = 3

-- Display: Floor Trader Acronym
cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.floor_trader_acronym.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Floor Trader Acronym: No Value"
  end

  return "Floor Trader Acronym: "..value
end

-- Dissect: Floor Trader Acronym
cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.floor_trader_acronym.dissect = function(buffer, offset, packet, parent)
  local length = cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.floor_trader_acronym.size
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

  local display = cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.floor_trader_acronym.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.fields.floor_trader_acronym, range, value, display)

  return offset + length, value
end

-- Frequent Trader Id
cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.frequent_trader_id = {}

-- Size: Frequent Trader Id
cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.frequent_trader_id.size = 6

-- Display: Frequent Trader Id
cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.frequent_trader_id.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Frequent Trader Id: No Value"
  end

  return "Frequent Trader Id: "..value
end

-- Dissect: Frequent Trader Id
cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.frequent_trader_id.dissect = function(buffer, offset, packet, parent)
  local length = cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.frequent_trader_id.size
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

  local display = cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.frequent_trader_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.fields.frequent_trader_id, range, value, display)

  return offset + length, value
end

-- Give Up Firm Id
cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.give_up_firm_id = {}

-- Size: Give Up Firm Id
cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.give_up_firm_id.size = 4

-- Display: Give Up Firm Id
cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.give_up_firm_id.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Give Up Firm Id: No Value"
  end

  return "Give Up Firm Id: "..value
end

-- Dissect: Give Up Firm Id
cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.give_up_firm_id.dissect = function(buffer, offset, packet, parent)
  local length = cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.give_up_firm_id.size
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

  local display = cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.give_up_firm_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.fields.give_up_firm_id, range, value, display)

  return offset + length, value
end

-- Gtc Order Filter
cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.gtc_order_filter = {}

-- Size: Gtc Order Filter
cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.gtc_order_filter.size = 1

-- Display: Gtc Order Filter
cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.gtc_order_filter.display = function(value)
  return "Gtc Order Filter: "..value
end

-- Dissect: Gtc Order Filter
cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.gtc_order_filter.dissect = function(buffer, offset, packet, parent)
  local length = cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.gtc_order_filter.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.gtc_order_filter.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.fields.gtc_order_filter, range, value, display)

  return offset + length, value
end

-- Held
cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.held = {}

-- Size: Held
cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.held.size = 1

-- Display: Held
cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.held.display = function(value)
  if value == "N" then
    return "Held: Mark Order As Not Held (N)"
  end
  if value == "Y" then
    return "Held: Mark Order As Held (Y)"
  end

  return "Held: Unknown("..value..")"
end

-- Dissect: Held
cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.held.dissect = function(buffer, offset, packet, parent)
  local length = cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.held.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.held.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.fields.held, range, value, display)

  return offset + length, value
end

-- In Flight
cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.in_flight = {}

-- Size: In Flight
cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.in_flight.size = 2

-- Display: In Flight
cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.in_flight.display = function(value)
  return "In Flight: "..value
end

-- Dissect: In Flight
cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.in_flight.dissect = function(buffer, offset, packet, parent)
  local length = cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.in_flight.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.in_flight.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.fields.in_flight, range, value, display)

  return offset + length, value
end

-- Instruction Details
cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.instruction_details = {}

-- Size: Instruction Details
cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.instruction_details.size = 3

-- Display: Instruction Details
cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.instruction_details.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Instruction Details: No Value"
  end

  return "Instruction Details: "..value
end

-- Dissect: Instruction Details
cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.instruction_details.dissect = function(buffer, offset, packet, parent)
  local length = cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.instruction_details.size
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

  local display = cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.instruction_details.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.fields.instruction_details, range, value, display)

  return offset + length, value
end

-- Instrument Type Filter
cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.instrument_type_filter = {}

-- Size: Instrument Type Filter
cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.instrument_type_filter.size = 1

-- Display: Instrument Type Filter
cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.instrument_type_filter.display = function(value)
  return "Instrument Type Filter: "..value
end

-- Dissect: Instrument Type Filter
cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.instrument_type_filter.dissect = function(buffer, offset, packet, parent)
  local length = cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.instrument_type_filter.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.instrument_type_filter.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.fields.instrument_type_filter, range, value, display)

  return offset + length, value
end

-- Last Priority
cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.last_priority = {}

-- Size: Last Priority
cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.last_priority.size = 1

-- Display: Last Priority
cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.last_priority.display = function(value)
  if value == "0" then
    return "Last Priority: Disabled (0)"
  end
  if value == "1" then
    return "Last Priority: Enabled (1)"
  end

  return "Last Priority: Unknown("..value..")"
end

-- Dissect: Last Priority
cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.last_priority.dissect = function(buffer, offset, packet, parent)
  local length = cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.last_priority.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.last_priority.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.fields.last_priority, range, value, display)

  return offset + length, value
end

-- Last Px
cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.last_px = {}

-- Size: Last Px
cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.last_px.size = 8

-- Display: Last Px
cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.last_px.display = function(value)
  return "Last Px: "..value
end

-- Translate: Last Px
cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.last_px.translate = function(raw)
  return raw:tonumber()/10000
end

-- Dissect: Last Px
cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.last_px.dissect = function(buffer, offset, packet, parent)
  local length = cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.last_px.size
  local range = buffer(offset, length)
  local raw = range:le_int64()
  local value = cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.last_px.translate(raw)
  local display = cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.last_px.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.fields.last_px, range, value, display)

  return offset + length, value
end

-- Last Shares
cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.last_shares = {}

-- Size: Last Shares
cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.last_shares.size = 4

-- Display: Last Shares
cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.last_shares.display = function(value)
  return "Last Shares: "..value
end

-- Dissect: Last Shares
cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.last_shares.dissect = function(buffer, offset, packet, parent)
  local length = cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.last_shares.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.last_shares.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.fields.last_shares, range, value, display)

  return offset + length, value
end

-- Leaves Qty
cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.leaves_qty = {}

-- Size: Leaves Qty
cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.leaves_qty.size = 4

-- Display: Leaves Qty
cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.leaves_qty.display = function(value)
  return "Leaves Qty: "..value
end

-- Dissect: Leaves Qty
cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.leaves_qty.dissect = function(buffer, offset, packet, parent)
  local length = cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.leaves_qty.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.leaves_qty.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.fields.leaves_qty, range, value, display)

  return offset + length, value
end

-- Leg Cnt
cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.leg_cnt = {}

-- Size: Leg Cnt
cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.leg_cnt.size = 1

-- Display: Leg Cnt
cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.leg_cnt.display = function(value)
  return "Leg Cnt: "..value
end

-- Dissect: Leg Cnt
cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.leg_cnt.dissect = function(buffer, offset, packet, parent)
  local length = cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.leg_cnt.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.leg_cnt.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.fields.leg_cnt, range, value, display)

  return offset + length, value
end

-- Leg Position Effect
cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.leg_position_effect = {}

-- Size: Leg Position Effect
cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.leg_position_effect.size = 1

-- Display: Leg Position Effect
cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.leg_position_effect.display = function(value)
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
cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.leg_position_effect.dissect = function(buffer, offset, packet, parent)
  local length = cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.leg_position_effect.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.leg_position_effect.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.fields.leg_position_effect, range, value, display)

  return offset + length, value
end

-- Lockout Instruction
cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.lockout_instruction = {}

-- Size: Lockout Instruction
cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.lockout_instruction.size = 1

-- Display: Lockout Instruction
cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.lockout_instruction.display = function(value)
  return "Lockout Instruction: "..value
end

-- Dissect: Lockout Instruction
cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.lockout_instruction.dissect = function(buffer, offset, packet, parent)
  local length = cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.lockout_instruction.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.lockout_instruction.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.fields.lockout_instruction, range, value, display)

  return offset + length, value
end

-- Login Response Status
cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.login_response_status = {}

-- Size: Login Response Status
cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.login_response_status.size = 1

-- Display: Login Response Status
cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.login_response_status.display = function(value)
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
cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.login_response_status.dissect = function(buffer, offset, packet, parent)
  local length = cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.login_response_status.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.login_response_status.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.fields.login_response_status, range, value, display)

  return offset + length, value
end

-- Login Response Text
cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.login_response_text = {}

-- Size: Login Response Text
cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.login_response_text.size = 60

-- Display: Login Response Text
cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.login_response_text.display = function(value)
  return "Login Response Text: "..value
end

-- Dissect: Login Response Text
cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.login_response_text.dissect = function(buffer, offset, packet, parent)
  local length = cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.login_response_text.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.login_response_text.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.fields.login_response_text, range, value, display)

  return offset + length, value
end

-- Logout Reason
cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.logout_reason = {}

-- Size: Logout Reason
cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.logout_reason.size = 1

-- Display: Logout Reason
cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.logout_reason.display = function(value)
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
cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.logout_reason.dissect = function(buffer, offset, packet, parent)
  local length = cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.logout_reason.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.logout_reason.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.fields.logout_reason, range, value, display)

  return offset + length, value
end

-- Logout Reason Text
cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.logout_reason_text = {}

-- Size: Logout Reason Text
cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.logout_reason_text.size = 60

-- Display: Logout Reason Text
cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.logout_reason_text.display = function(value)
  return "Logout Reason Text: "..value
end

-- Dissect: Logout Reason Text
cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.logout_reason_text.dissect = function(buffer, offset, packet, parent)
  local length = cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.logout_reason_text.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.logout_reason_text.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.fields.logout_reason_text, range, value, display)

  return offset + length, value
end

-- Marketing Fee Code
cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.marketing_fee_code = {}

-- Size: Marketing Fee Code
cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.marketing_fee_code.size = 2

-- Display: Marketing Fee Code
cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.marketing_fee_code.display = function(value)
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
cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.marketing_fee_code.dissect = function(buffer, offset, packet, parent)
  local length = cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.marketing_fee_code.size
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

  local display = cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.marketing_fee_code.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.fields.marketing_fee_code, range, value, display)

  return offset + length, value
end

-- Mass Cancel Id
cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.mass_cancel_id = {}

-- Size: Mass Cancel Id
cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.mass_cancel_id.size = 20

-- Display: Mass Cancel Id
cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.mass_cancel_id.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Mass Cancel Id: No Value"
  end

  return "Mass Cancel Id: "..value
end

-- Dissect: Mass Cancel Id
cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.mass_cancel_id.dissect = function(buffer, offset, packet, parent)
  local length = cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.mass_cancel_id.size
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

  local display = cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.mass_cancel_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.fields.mass_cancel_id, range, value, display)

  return offset + length, value
end

-- Mass Cancel Lockout
cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.mass_cancel_lockout = {}

-- Size: Mass Cancel Lockout
cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.mass_cancel_lockout.size = 1

-- Display: Mass Cancel Lockout
cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.mass_cancel_lockout.display = function(value)
  if value == "Y" then
    return "Mass Cancel Lockout: Lockout (Y)"
  end
  if value == "N" then
    return "Mass Cancel Lockout: No Lockout (N)"
  end

  return "Mass Cancel Lockout: Unknown("..value..")"
end

-- Dissect: Mass Cancel Lockout
cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.mass_cancel_lockout.dissect = function(buffer, offset, packet, parent)
  local length = cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.mass_cancel_lockout.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.mass_cancel_lockout.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.fields.mass_cancel_lockout, range, value, display)

  return offset + length, value
end

-- Mass Cancel Reject Reason
cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.mass_cancel_reject_reason = {}

-- Size: Mass Cancel Reject Reason
cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.mass_cancel_reject_reason.size = 1

-- Display: Mass Cancel Reject Reason
cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.mass_cancel_reject_reason.display = function(value)
  return "Mass Cancel Reject Reason: "..value
end

-- Dissect: Mass Cancel Reject Reason
cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.mass_cancel_reject_reason.dissect = function(buffer, offset, packet, parent)
  local length = cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.mass_cancel_reject_reason.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.mass_cancel_reject_reason.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.fields.mass_cancel_reject_reason, range, value, display)

  return offset + length, value
end

-- Matching Unit
cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.matching_unit = {}

-- Size: Matching Unit
cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.matching_unit.size = 1

-- Display: Matching Unit
cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.matching_unit.display = function(value)
  return "Matching Unit: "..value
end

-- Dissect: Matching Unit
cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.matching_unit.dissect = function(buffer, offset, packet, parent)
  local length = cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.matching_unit.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.matching_unit.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.fields.matching_unit, range, value, display)

  return offset + length, value
end

-- Maturity Date
cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.maturity_date = {}

-- Size: Maturity Date
cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.maturity_date.size = 4

-- Display: Maturity Date
cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.maturity_date.display = function(value)
  return "Maturity Date: "..value
end

-- Dissect: Maturity Date
cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.maturity_date.dissect = function(buffer, offset, packet, parent)
  local length = cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.maturity_date.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.maturity_date.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.fields.maturity_date, range, value, display)

  return offset + length, value
end

-- Max Floor
cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.max_floor = {}

-- Size: Max Floor
cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.max_floor.size = 4

-- Display: Max Floor
cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.max_floor.display = function(value)
  return "Max Floor: "..value
end

-- Dissect: Max Floor
cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.max_floor.dissect = function(buffer, offset, packet, parent)
  local length = cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.max_floor.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.max_floor.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.fields.max_floor, range, value, display)

  return offset + length, value
end

-- Message Length
cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.message_length = {}

-- Size: Message Length
cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.message_length.size = 2

-- Display: Message Length
cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.message_length.display = function(value)
  return "Message Length: "..value
end

-- Dissect: Message Length
cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.message_length.dissect = function(buffer, offset, packet, parent)
  local length = cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.message_length.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.message_length.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.fields.message_length, range, value, display)

  return offset + length, value
end

-- Min Qty
cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.min_qty = {}

-- Size: Min Qty
cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.min_qty.size = 4

-- Display: Min Qty
cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.min_qty.display = function(value)
  return "Min Qty: "..value
end

-- Dissect: Min Qty
cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.min_qty.dissect = function(buffer, offset, packet, parent)
  local length = cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.min_qty.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.min_qty.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.fields.min_qty, range, value, display)

  return offset + length, value
end

-- Modify Reject Reason
cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.modify_reject_reason = {}

-- Size: Modify Reject Reason
cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.modify_reject_reason.size = 1

-- Display: Modify Reject Reason
cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.modify_reject_reason.display = function(value)
  return "Modify Reject Reason: "..value
end

-- Dissect: Modify Reject Reason
cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.modify_reject_reason.dissect = function(buffer, offset, packet, parent)
  local length = cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.modify_reject_reason.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.modify_reject_reason.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.fields.modify_reject_reason, range, value, display)

  return offset + length, value
end

-- Mtp Modifier
cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.mtp_modifier = {}

-- Size: Mtp Modifier
cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.mtp_modifier.size = 1

-- Display: Mtp Modifier
cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.mtp_modifier.display = function(value)
  return "Mtp Modifier: "..value
end

-- Dissect: Mtp Modifier
cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.mtp_modifier.dissect = function(buffer, offset, packet, parent)
  local length = cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.mtp_modifier.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.mtp_modifier.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.fields.mtp_modifier, range, value, display)

  return offset + length, value
end

-- Multileg Reporting Type
cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.multileg_reporting_type = {}

-- Size: Multileg Reporting Type
cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.multileg_reporting_type.size = 1

-- Display: Multileg Reporting Type
cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.multileg_reporting_type.display = function(value)
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
cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.multileg_reporting_type.dissect = function(buffer, offset, packet, parent)
  local length = cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.multileg_reporting_type.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.multileg_reporting_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.fields.multileg_reporting_type, range, value, display)

  return offset + length, value
end

-- No Of Securities
cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.no_of_securities = {}

-- Size: No Of Securities
cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.no_of_securities.size = 4

-- Display: No Of Securities
cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.no_of_securities.display = function(value)
  return "No Of Securities: "..value
end

-- Dissect: No Of Securities
cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.no_of_securities.dissect = function(buffer, offset, packet, parent)
  local length = cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.no_of_securities.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.no_of_securities.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.fields.no_of_securities, range, value, display)

  return offset + length, value
end

-- Number Of Units
cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.number_of_units = {}

-- Size: Number Of Units
cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.number_of_units.size = 1

-- Display: Number Of Units
cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.number_of_units.display = function(value)
  return "Number Of Units: "..value
end

-- Dissect: Number Of Units
cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.number_of_units.dissect = function(buffer, offset, packet, parent)
  local length = cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.number_of_units.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.number_of_units.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.fields.number_of_units, range, value, display)

  return offset + length, value
end

-- Open Close
cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.open_close = {}

-- Size: Open Close
cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.open_close.size = 1

-- Display: Open Close
cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.open_close.display = function(value)
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
cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.open_close.dissect = function(buffer, offset, packet, parent)
  local length = cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.open_close.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.open_close.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.fields.open_close, range, value, display)

  return offset + length, value
end

-- Ord Type
cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.ord_type = {}

-- Size: Ord Type
cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.ord_type.size = 1

-- Display: Ord Type
cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.ord_type.display = function(value)
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
cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.ord_type.dissect = function(buffer, offset, packet, parent)
  local length = cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.ord_type.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.ord_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.fields.ord_type, range, value, display)

  return offset + length, value
end

-- Order Id
cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.order_id = {}

-- Size: Order Id
cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.order_id.size = 8

-- Display: Order Id
cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.order_id.display = function(value)
  return "Order Id: "..value
end

-- Dissect: Order Id
cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.order_id.dissect = function(buffer, offset, packet, parent)
  local length = cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.order_id.size
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.order_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.fields.order_id, range, value, display)

  return offset + length, value
end

-- Order Origin
cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.order_origin = {}

-- Size: Order Origin
cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.order_origin.size = 3

-- Display: Order Origin
cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.order_origin.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Order Origin: No Value"
  end

  return "Order Origin: "..value
end

-- Dissect: Order Origin
cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.order_origin.dissect = function(buffer, offset, packet, parent)
  local length = cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.order_origin.size
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

  local display = cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.order_origin.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.fields.order_origin, range, value, display)

  return offset + length, value
end

-- Order Qty
cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.order_qty = {}

-- Size: Order Qty
cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.order_qty.size = 4

-- Display: Order Qty
cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.order_qty.display = function(value)
  return "Order Qty: "..value
end

-- Dissect: Order Qty
cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.order_qty.dissect = function(buffer, offset, packet, parent)
  local length = cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.order_qty.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.order_qty.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.fields.order_qty, range, value, display)

  return offset + length, value
end

-- Order Qty Short
cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.order_qty_short = {}

-- Size: Order Qty Short
cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.order_qty_short.size = 2

-- Display: Order Qty Short
cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.order_qty_short.display = function(value)
  return "Order Qty Short: "..value
end

-- Dissect: Order Qty Short
cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.order_qty_short.dissect = function(buffer, offset, packet, parent)
  local length = cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.order_qty_short.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.order_qty_short.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.fields.order_qty_short, range, value, display)

  return offset + length, value
end

-- Order Reject Reason
cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.order_reject_reason = {}

-- Size: Order Reject Reason
cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.order_reject_reason.size = 1

-- Display: Order Reject Reason
cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.order_reject_reason.display = function(value)
  return "Order Reject Reason: "..value
end

-- Dissect: Order Reject Reason
cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.order_reject_reason.dissect = function(buffer, offset, packet, parent)
  local length = cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.order_reject_reason.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.order_reject_reason.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.fields.order_reject_reason, range, value, display)

  return offset + length, value
end

-- Order Restatement Reason
cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.order_restatement_reason = {}

-- Size: Order Restatement Reason
cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.order_restatement_reason.size = 1

-- Display: Order Restatement Reason
cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.order_restatement_reason.display = function(value)
  if value == "E" then
    return "Order Restatement Reason: Reduction Of Ord Qty Due To Equity Leg Reject (E)"
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

  return "Order Restatement Reason: Unknown("..value..")"
end

-- Dissect: Order Restatement Reason
cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.order_restatement_reason.dissect = function(buffer, offset, packet, parent)
  local length = cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.order_restatement_reason.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.order_restatement_reason.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.fields.order_restatement_reason, range, value, display)

  return offset + length, value
end

-- Order Router Subsidy
cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.order_router_subsidy = {}

-- Size: Order Router Subsidy
cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.order_router_subsidy.size = 1

-- Display: Order Router Subsidy
cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.order_router_subsidy.display = function(value)
  if value == "N" then
    return "Order Router Subsidy: No (N)"
  end
  if value == "Y" then
    return "Order Router Subsidy: Yes (Y)"
  end

  return "Order Router Subsidy: Unknown("..value..")"
end

-- Dissect: Order Router Subsidy
cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.order_router_subsidy.dissect = function(buffer, offset, packet, parent)
  local length = cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.order_router_subsidy.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.order_router_subsidy.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.fields.order_router_subsidy, range, value, display)

  return offset + length, value
end

-- Orig Cl Ord Id
cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.orig_cl_ord_id = {}

-- Size: Orig Cl Ord Id
cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.orig_cl_ord_id.size = 20

-- Display: Orig Cl Ord Id
cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.orig_cl_ord_id.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Orig Cl Ord Id: No Value"
  end

  return "Orig Cl Ord Id: "..value
end

-- Dissect: Orig Cl Ord Id
cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.orig_cl_ord_id.dissect = function(buffer, offset, packet, parent)
  local length = cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.orig_cl_ord_id.size
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

  local display = cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.orig_cl_ord_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.fields.orig_cl_ord_id, range, value, display)

  return offset + length, value
end

-- Orig Time
cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.orig_time = {}

-- Size: Orig Time
cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.orig_time.size = 8

-- Display: Orig Time
cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.orig_time.display = function(value)
  -- Parse unix nanosecond timestamp
  local seconds = (value / UInt64(1000000000)):tonumber()
  local nanoseconds = (value % UInt64(1000000000)):tonumber()

  return "Orig Time: "..os.date("%Y-%m-%d %H:%M:%S.", seconds)..string.format("%09d", nanoseconds)
end

-- Dissect: Orig Time
cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.orig_time.dissect = function(buffer, offset, packet, parent)
  local length = cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.orig_time.size
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.orig_time.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.fields.orig_time, range, value, display)

  return offset + length, value
end

-- Password
cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.password = {}

-- Size: Password
cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.password.size = 10

-- Display: Password
cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.password.display = function(value)
  return "Password: "..value
end

-- Dissect: Password
cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.password.dissect = function(buffer, offset, packet, parent)
  local length = cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.password.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.password.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.fields.password, range, value, display)

  return offset + length, value
end

-- Posting Instruction
cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.posting_instruction = {}

-- Size: Posting Instruction
cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.posting_instruction.size = 1

-- Display: Posting Instruction
cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.posting_instruction.display = function(value)
  if value == "P" then
    return "Posting Instruction: Post Only (P)"
  end
  if value == "B" then
    return "Posting Instruction: Book Only (B)"
  end
  if value == "N" then
    return "Posting Instruction: Book Only No Slide (N)"
  end
  if value == "R" then
    return "Posting Instruction: Post Only No Slide (R)"
  end
  if value == "I" then
    return "Posting Instruction: Book Only Ioc (I)"
  end

  return "Posting Instruction: Unknown("..value..")"
end

-- Dissect: Posting Instruction
cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.posting_instruction.dissect = function(buffer, offset, packet, parent)
  local length = cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.posting_instruction.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.posting_instruction.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.fields.posting_instruction, range, value, display)

  return offset + length, value
end

-- Price
cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.price = {}

-- Size: Price
cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.price.size = 8

-- Display: Price
cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.price.display = function(value)
  return "Price: "..value
end

-- Translate: Price
cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.price.translate = function(raw)
  return raw:tonumber()/10000
end

-- Dissect: Price
cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.price.dissect = function(buffer, offset, packet, parent)
  local length = cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.price.size
  local range = buffer(offset, length)
  local raw = range:le_int64()
  local value = cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.price.translate(raw)
  local display = cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.price.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.fields.price, range, value, display)

  return offset + length, value
end

-- Price Short
cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.price_short = {}

-- Size: Price Short
cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.price_short.size = 4

-- Display: Price Short
cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.price_short.display = function(value)
  return "Price Short: "..value
end

-- Translate: Price Short
cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.price_short.translate = function(raw)
  return raw/10000
end

-- Dissect: Price Short
cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.price_short.dissect = function(buffer, offset, packet, parent)
  local length = cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.price_short.size
  local range = buffer(offset, length)
  local raw = range:le_int()
  local value = cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.price_short.translate(raw)
  local display = cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.price_short.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.fields.price_short, range, value, display)

  return offset + length, value
end

-- Price Type
cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.price_type = {}

-- Size: Price Type
cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.price_type.size = 1

-- Display: Price Type
cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.price_type.display = function(value)
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
cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.price_type.dissect = function(buffer, offset, packet, parent)
  local length = cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.price_type.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.price_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.fields.price_type, range, value, display)

  return offset + length, value
end

-- Purge Reject Reason
cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.purge_reject_reason = {}

-- Size: Purge Reject Reason
cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.purge_reject_reason.size = 1

-- Display: Purge Reject Reason
cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.purge_reject_reason.display = function(value)
  return "Purge Reject Reason: "..value
end

-- Dissect: Purge Reject Reason
cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.purge_reject_reason.dissect = function(buffer, offset, packet, parent)
  local length = cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.purge_reject_reason.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.purge_reject_reason.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.fields.purge_reject_reason, range, value, display)

  return offset + length, value
end

-- Put Or Call
cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.put_or_call = {}

-- Size: Put Or Call
cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.put_or_call.size = 1

-- Display: Put Or Call
cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.put_or_call.display = function(value)
  if value == "0" then
    return "Put Or Call: Put (0)"
  end
  if value == "1" then
    return "Put Or Call: Call (1)"
  end

  return "Put Or Call: Unknown("..value..")"
end

-- Dissect: Put Or Call
cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.put_or_call.dissect = function(buffer, offset, packet, parent)
  local length = cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.put_or_call.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.put_or_call.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.fields.put_or_call, range, value, display)

  return offset + length, value
end

-- Quote Cnt
cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.quote_cnt = {}

-- Size: Quote Cnt
cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.quote_cnt.size = 1

-- Display: Quote Cnt
cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.quote_cnt.display = function(value)
  return "Quote Cnt: "..value
end

-- Dissect: Quote Cnt
cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.quote_cnt.dissect = function(buffer, offset, packet, parent)
  local length = cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.quote_cnt.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.quote_cnt.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.fields.quote_cnt, range, value, display)

  return offset + length, value
end

-- Quote Reject Reason
cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.quote_reject_reason = {}

-- Size: Quote Reject Reason
cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.quote_reject_reason.size = 1

-- Display: Quote Reject Reason
cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.quote_reject_reason.display = function(value)
  return "Quote Reject Reason: "..value
end

-- Dissect: Quote Reject Reason
cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.quote_reject_reason.dissect = function(buffer, offset, packet, parent)
  local length = cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.quote_reject_reason.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.quote_reject_reason.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.fields.quote_reject_reason, range, value, display)

  return offset + length, value
end

-- Quote Reject Sub Reason
cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.quote_reject_sub_reason = {}

-- Size: Quote Reject Sub Reason
cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.quote_reject_sub_reason.size = 1

-- Display: Quote Reject Sub Reason
cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.quote_reject_sub_reason.display = function(value)
  return "Quote Reject Sub Reason: "..value
end

-- Dissect: Quote Reject Sub Reason
cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.quote_reject_sub_reason.dissect = function(buffer, offset, packet, parent)
  local length = cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.quote_reject_sub_reason.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.quote_reject_sub_reason.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.fields.quote_reject_sub_reason, range, value, display)

  return offset + length, value
end

-- Quote Result
cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.quote_result = {}

-- Size: Quote Result
cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.quote_result.size = 1

-- Display: Quote Result
cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.quote_result.display = function(value)
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
cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.quote_result.dissect = function(buffer, offset, packet, parent)
  local length = cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.quote_result.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.quote_result.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.fields.quote_result, range, value, display)

  return offset + length, value
end

-- Quote Symbol
cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.quote_symbol = {}

-- Size: Quote Symbol
cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.quote_symbol.size = 1

-- Display: Quote Symbol
cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.quote_symbol.display = function(value)
  return "Quote Symbol: "..value
end

-- Dissect: Quote Symbol
cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.quote_symbol.dissect = function(buffer, offset, packet, parent)
  local length = cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.quote_symbol.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.quote_symbol.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.fields.quote_symbol, range, value, display)

  return offset + length, value
end

-- Quote Update Id
cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.quote_update_id = {}

-- Size: Quote Update Id
cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.quote_update_id.size = 16

-- Display: Quote Update Id
cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.quote_update_id.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Quote Update Id: No Value"
  end

  return "Quote Update Id: "..value
end

-- Dissect: Quote Update Id
cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.quote_update_id.dissect = function(buffer, offset, packet, parent)
  local length = cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.quote_update_id.size
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

  local display = cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.quote_update_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.fields.quote_update_id, range, value, display)

  return offset + length, value
end

-- Ratio Qty
cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.ratio_qty = {}

-- Size: Ratio Qty
cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.ratio_qty.size = 4

-- Display: Ratio Qty
cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.ratio_qty.display = function(value)
  return "Ratio Qty: "..value
end

-- Dissect: Ratio Qty
cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.ratio_qty.dissect = function(buffer, offset, packet, parent)
  local length = cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.ratio_qty.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.ratio_qty.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.fields.ratio_qty, range, value, display)

  return offset + length, value
end

-- Replay Unspecified Unit
cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.replay_unspecified_unit = {}

-- Size: Replay Unspecified Unit
cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.replay_unspecified_unit.size = 1

-- Display: Replay Unspecified Unit
cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.replay_unspecified_unit.display = function(value)
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
cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.replay_unspecified_unit.dissect = function(buffer, offset, packet, parent)
  local length = cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.replay_unspecified_unit.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.replay_unspecified_unit.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.fields.replay_unspecified_unit, range, value, display)

  return offset + length, value
end

-- Request Received Time
cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.request_received_time = {}

-- Size: Request Received Time
cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.request_received_time.size = 8

-- Display: Request Received Time
cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.request_received_time.display = function(value)
  -- Parse unix nanosecond timestamp
  local seconds = (value / UInt64(1000000000)):tonumber()
  local nanoseconds = (value % UInt64(1000000000)):tonumber()

  return "Request Received Time: "..os.date("%Y-%m-%d %H:%M:%S.", seconds)..string.format("%09d", nanoseconds)
end

-- Dissect: Request Received Time
cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.request_received_time.dissect = function(buffer, offset, packet, parent)
  local length = cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.request_received_time.size
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.request_received_time.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.fields.request_received_time, range, value, display)

  return offset + length, value
end

-- Reserved
cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.reserved = {}

-- Size: Reserved
cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.reserved.size = 41

-- Display: Reserved
cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.reserved.display = function(value)
  return "Reserved: "..value
end

-- Dissect: Reserved
cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.reserved.dissect = function(buffer, offset, packet, parent)
  local length = cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.reserved.size
  local range = buffer(offset, length)
  local value = range:bytes():tohex(false, " ")
  local display = cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.reserved.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.fields.reserved, range, value, display)

  return offset + length, value
end

-- Reserved Field
cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.reserved_field = {}

-- Size: Reserved Field
cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.reserved_field.size = 1

-- Display: Reserved Field
cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.reserved_field.display = function(value)
  return "Reserved Field: "..value
end

-- Dissect: Reserved Field
cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.reserved_field.dissect = function(buffer, offset, packet, parent)
  local length = cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.reserved_field.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.reserved_field.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.fields.reserved_field, range, value, display)

  return offset + length, value
end

-- Restatement Reason
cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.restatement_reason = {}

-- Size: Restatement Reason
cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.restatement_reason.size = 1

-- Display: Restatement Reason
cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.restatement_reason.display = function(value)
  if value == "Q" then
    return "Restatement Reason: Liquidity (Q)"
  end
  if value == "W" then
    return "Restatement Reason: Wash (W)"
  end

  return "Restatement Reason: Unknown("..value..")"
end

-- Dissect: Restatement Reason
cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.restatement_reason.dissect = function(buffer, offset, packet, parent)
  local length = cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.restatement_reason.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.restatement_reason.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.fields.restatement_reason, range, value, display)

  return offset + length, value
end

-- Risk Reset
cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.risk_reset = {}

-- Size: Risk Reset
cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.risk_reset.size = 8

-- Display: Risk Reset
cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.risk_reset.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Risk Reset: No Value"
  end

  return "Risk Reset: "..value
end

-- Dissect: Risk Reset
cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.risk_reset.dissect = function(buffer, offset, packet, parent)
  local length = cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.risk_reset.size
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

  local display = cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.risk_reset.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.fields.risk_reset, range, value, display)

  return offset + length, value
end

-- Risk Reset Result
cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.risk_reset_result = {}

-- Size: Risk Reset Result
cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.risk_reset_result.size = 1

-- Display: Risk Reset Result
cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.risk_reset_result.display = function(value)
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
cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.risk_reset_result.dissect = function(buffer, offset, packet, parent)
  local length = cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.risk_reset_result.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.risk_reset_result.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.fields.risk_reset_result, range, value, display)

  return offset + length, value
end

-- Risk Root
cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.risk_root = {}

-- Size: Risk Root
cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.risk_root.size = 6

-- Display: Risk Root
cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.risk_root.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Risk Root: No Value"
  end

  return "Risk Root: "..value
end

-- Dissect: Risk Root
cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.risk_root.dissect = function(buffer, offset, packet, parent)
  local length = cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.risk_root.size
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

  local display = cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.risk_root.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.fields.risk_root, range, value, display)

  return offset + length, value
end

-- Risk Status Id
cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.risk_status_id = {}

-- Size: Risk Status Id
cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.risk_status_id.size = 16

-- Display: Risk Status Id
cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.risk_status_id.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Risk Status Id: No Value"
  end

  return "Risk Status Id: "..value
end

-- Dissect: Risk Status Id
cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.risk_status_id.dissect = function(buffer, offset, packet, parent)
  local length = cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.risk_status_id.size
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

  local display = cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.risk_status_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.fields.risk_status_id, range, value, display)

  return offset + length, value
end

-- Rout Strategy
cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.rout_strategy = {}

-- Size: Rout Strategy
cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.rout_strategy.size = 6

-- Display: Rout Strategy
cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.rout_strategy.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Rout Strategy: No Value"
  end

  return "Rout Strategy: "..value
end

-- Dissect: Rout Strategy
cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.rout_strategy.dissect = function(buffer, offset, packet, parent)
  local length = cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.rout_strategy.size
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

  local display = cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.rout_strategy.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.fields.rout_strategy, range, value, display)

  return offset + length, value
end

-- Route Delivery Method
cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.route_delivery_method = {}

-- Size: Route Delivery Method
cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.route_delivery_method.size = 3

-- Display: Route Delivery Method
cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.route_delivery_method.display = function(value)
  if value == "RTI" then
    return "Route Delivery Method: Route To Improve (RTI)"
  end
  if value == "RTF" then
    return "Route Delivery Method: Route To Fill (RTF)"
  end

  return "Route Delivery Method: Unknown("..value..")"
end

-- Dissect: Route Delivery Method
cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.route_delivery_method.dissect = function(buffer, offset, packet, parent)
  local length = cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.route_delivery_method.size
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

  local display = cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.route_delivery_method.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.fields.route_delivery_method, range, value, display)

  return offset + length, value
end

-- Routing Firm Id
cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.routing_firm_id = {}

-- Size: Routing Firm Id
cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.routing_firm_id.size = 4

-- Display: Routing Firm Id
cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.routing_firm_id.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Routing Firm Id: No Value"
  end

  return "Routing Firm Id: "..value
end

-- Dissect: Routing Firm Id
cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.routing_firm_id.dissect = function(buffer, offset, packet, parent)
  local length = cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.routing_firm_id.size
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

  local display = cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.routing_firm_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.fields.routing_firm_id, range, value, display)

  return offset + length, value
end

-- Routing Inst
cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.routing_inst = {}

-- Size: Routing Inst
cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.routing_inst.size = 4

-- Display: Routing Inst
cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.routing_inst.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Routing Inst: No Value"
  end

  return "Routing Inst: "..value
end

-- Dissect: Routing Inst
cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.routing_inst.dissect = function(buffer, offset, packet, parent)
  local length = cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.routing_inst.size
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

  local display = cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.routing_inst.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.fields.routing_inst, range, value, display)

  return offset + length, value
end

-- Scratch Pad
cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.scratch_pad = {}

-- Size: Scratch Pad
cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.scratch_pad.size = 2

-- Display: Scratch Pad
cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.scratch_pad.display = function(value)
  return "Scratch Pad: "..value
end

-- Dissect: Scratch Pad
cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.scratch_pad.dissect = function(buffer, offset, packet, parent)
  local length = cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.scratch_pad.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.scratch_pad.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.fields.scratch_pad, range, value, display)

  return offset + length, value
end

-- Secondary Exec Id
cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.secondary_exec_id = {}

-- Size: Secondary Exec Id
cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.secondary_exec_id.size = 8

-- Display: Secondary Exec Id
cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.secondary_exec_id.display = function(value)
  return "Secondary Exec Id: "..value
end

-- Dissect: Secondary Exec Id
cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.secondary_exec_id.dissect = function(buffer, offset, packet, parent)
  local length = cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.secondary_exec_id.size
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.secondary_exec_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.fields.secondary_exec_id, range, value, display)

  return offset + length, value
end

-- Secondary Order Id
cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.secondary_order_id = {}

-- Size: Secondary Order Id
cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.secondary_order_id.size = 8

-- Display: Secondary Order Id
cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.secondary_order_id.display = function(value)
  return "Secondary Order Id: "..value
end

-- Dissect: Secondary Order Id
cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.secondary_order_id.dissect = function(buffer, offset, packet, parent)
  local length = cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.secondary_order_id.size
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.secondary_order_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.fields.secondary_order_id, range, value, display)

  return offset + length, value
end

-- Send Time
cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.send_time = {}

-- Size: Send Time
cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.send_time.size = 8

-- Display: Send Time
cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.send_time.display = function(value)
  -- Parse unix nanosecond timestamp
  local seconds = (value / UInt64(1000000000)):tonumber()
  local nanoseconds = (value % UInt64(1000000000)):tonumber()

  return "Send Time: "..os.date("%Y-%m-%d %H:%M:%S.", seconds)..string.format("%09d", nanoseconds)
end

-- Dissect: Send Time
cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.send_time.dissect = function(buffer, offset, packet, parent)
  local length = cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.send_time.size
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.send_time.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.fields.send_time, range, value, display)

  return offset + length, value
end

-- Sender Location Id
cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.sender_location_id = {}

-- Size: Sender Location Id
cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.sender_location_id.size = 1

-- Display: Sender Location Id
cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.sender_location_id.display = function(value)
  if value == "F" then
    return "Sender Location Id: Floor (F)"
  end
  if value == " " then
    return "Sender Location Id: Electronic Execution (<whitespace>)"
  end

  return "Sender Location Id: Unknown("..value..")"
end

-- Dissect: Sender Location Id
cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.sender_location_id.dissect = function(buffer, offset, packet, parent)
  local length = cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.sender_location_id.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.sender_location_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.fields.sender_location_id, range, value, display)

  return offset + length, value
end

-- Sequence Number
cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.sequence_number = {}

-- Size: Sequence Number
cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.sequence_number.size = 4

-- Display: Sequence Number
cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.sequence_number.display = function(value)
  return "Sequence Number: "..value
end

-- Dissect: Sequence Number
cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.sequence_number.dissect = function(buffer, offset, packet, parent)
  local length = cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.sequence_number.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.sequence_number.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.fields.sequence_number, range, value, display)

  return offset + length, value
end

-- Session Eligibility
cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.session_eligibility = {}

-- Size: Session Eligibility
cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.session_eligibility.size = 1

-- Display: Session Eligibility
cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.session_eligibility.display = function(value)
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
cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.session_eligibility.dissect = function(buffer, offset, packet, parent)
  local length = cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.session_eligibility.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.session_eligibility.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.fields.session_eligibility, range, value, display)

  return offset + length, value
end

-- Session Id
cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.session_id = {}

-- Size: Session Id
cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.session_id.size = 4

-- Display: Session Id
cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.session_id.display = function(value)
  return "Session Id: "..value
end

-- Dissect: Session Id
cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.session_id.dissect = function(buffer, offset, packet, parent)
  local length = cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.session_id.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.session_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.fields.session_id, range, value, display)

  return offset + length, value
end

-- Session Sub Id
cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.session_sub_id = {}

-- Size: Session Sub Id
cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.session_sub_id.size = 4

-- Display: Session Sub Id
cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.session_sub_id.display = function(value)
  return "Session Sub Id: "..value
end

-- Dissect: Session Sub Id
cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.session_sub_id.dissect = function(buffer, offset, packet, parent)
  local length = cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.session_sub_id.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.session_sub_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.fields.session_sub_id, range, value, display)

  return offset + length, value
end

-- Side
cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.side = {}

-- Size: Side
cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.side.size = 1

-- Display: Side
cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.side.display = function(value)
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
cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.side.dissect = function(buffer, offset, packet, parent)
  local length = cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.side.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.side.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.fields.side, range, value, display)

  return offset + length, value
end

-- Size Modifier
cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.size_modifier = {}

-- Size: Size Modifier
cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.size_modifier.size = 1

-- Display: Size Modifier
cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.size_modifier.display = function(value)
  if value == "R" then
    return "Size Modifier: Reduce Outstanding Size Of Quote By The Order Qty Provided (R)"
  end
  if value == 0 then
    return "Size Modifier: New Quote Size"
  end

  return "Size Modifier: Unknown("..value..")"
end

-- Dissect: Size Modifier
cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.size_modifier.dissect = function(buffer, offset, packet, parent)
  local length = cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.size_modifier.size
  local range = buffer(offset, length)

  -- parse as byte
  local value = range:uint()

  -- check if value is non zero
  if value ~= 0 then
    value = range:string()
  end

  local display = cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.size_modifier.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.fields.size_modifier, range, value, display)

  return offset + length, value
end

-- Source Matching Unit
cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.source_matching_unit = {}

-- Size: Source Matching Unit
cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.source_matching_unit.size = 1

-- Display: Source Matching Unit
cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.source_matching_unit.display = function(value)
  return "Source Matching Unit: "..value
end

-- Dissect: Source Matching Unit
cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.source_matching_unit.dissect = function(buffer, offset, packet, parent)
  local length = cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.source_matching_unit.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.source_matching_unit.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.fields.source_matching_unit, range, value, display)

  return offset + length, value
end

-- Start Of Message
cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.start_of_message = {}

-- Size: Start Of Message
cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.start_of_message.size = 2

-- Display: Start Of Message
cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.start_of_message.display = function(value)
  return "Start Of Message: "..value
end

-- Dissect: Start Of Message
cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.start_of_message.dissect = function(buffer, offset, packet, parent)
  local length = cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.start_of_message.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.start_of_message.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.fields.start_of_message, range, value, display)

  return offset + length, value
end

-- Stop Px
cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.stop_px = {}

-- Size: Stop Px
cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.stop_px.size = 8

-- Display: Stop Px
cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.stop_px.display = function(value)
  return "Stop Px: "..value
end

-- Translate: Stop Px
cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.stop_px.translate = function(raw)
  return raw:tonumber()/10000
end

-- Dissect: Stop Px
cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.stop_px.dissect = function(buffer, offset, packet, parent)
  local length = cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.stop_px.size
  local range = buffer(offset, length)
  local raw = range:le_int64()
  local value = cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.stop_px.translate(raw)
  local display = cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.stop_px.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.fields.stop_px, range, value, display)

  return offset + length, value
end

-- Strategy Id
cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.strategy_id = {}

-- Size: Strategy Id
cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.strategy_id.size = 1

-- Display: Strategy Id
cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.strategy_id.display = function(value)
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
cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.strategy_id.dissect = function(buffer, offset, packet, parent)
  local length = cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.strategy_id.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.strategy_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.fields.strategy_id, range, value, display)

  return offset + length, value
end

-- Strike Price
cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.strike_price = {}

-- Size: Strike Price
cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.strike_price.size = 8

-- Display: Strike Price
cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.strike_price.display = function(value)
  return "Strike Price: "..value
end

-- Translate: Strike Price
cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.strike_price.translate = function(raw)
  return raw:tonumber()/10000
end

-- Dissect: Strike Price
cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.strike_price.dissect = function(buffer, offset, packet, parent)
  local length = cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.strike_price.size
  local range = buffer(offset, length)
  local raw = range:le_int64()
  local value = cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.strike_price.translate(raw)
  local display = cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.strike_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.fields.strike_price, range, value, display)

  return offset + length, value
end

-- Sub Liquidity Indicator
cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.sub_liquidity_indicator = {}

-- Size: Sub Liquidity Indicator
cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.sub_liquidity_indicator.size = 1

-- Display: Sub Liquidity Indicator
cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.sub_liquidity_indicator.display = function(value)
  if value == "S" then
    return "Sub Liquidity Indicator: Execution From Order That Set The Nbbo (S)"
  end
  if value == "B" then
    return "Sub Liquidity Indicator: Step Up Mechanism (B)"
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
  if value == 0 then
    return "Sub Liquidity Indicator: No Additional Information"
  end

  return "Sub Liquidity Indicator: Unknown("..value..")"
end

-- Dissect: Sub Liquidity Indicator
cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.sub_liquidity_indicator.dissect = function(buffer, offset, packet, parent)
  local length = cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.sub_liquidity_indicator.size
  local range = buffer(offset, length)

  -- parse as byte
  local value = range:uint()

  -- check if value is non zero
  if value ~= 0 then
    value = range:string()
  end

  local display = cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.sub_liquidity_indicator.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.fields.sub_liquidity_indicator, range, value, display)

  return offset + length, value
end

-- Symbol
cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.symbol = {}

-- Size: Symbol
cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.symbol.size = 8

-- Display: Symbol
cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.symbol.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Symbol: No Value"
  end

  return "Symbol: "..value
end

-- Dissect: Symbol
cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.symbol.dissect = function(buffer, offset, packet, parent)
  local length = cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.symbol.size
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

  local display = cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.symbol.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.fields.symbol, range, value, display)

  return offset + length, value
end

-- Target Matching Unit
cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.target_matching_unit = {}

-- Size: Target Matching Unit
cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.target_matching_unit.size = 1

-- Display: Target Matching Unit
cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.target_matching_unit.display = function(value)
  return "Target Matching Unit: "..value
end

-- Dissect: Target Matching Unit
cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.target_matching_unit.dissect = function(buffer, offset, packet, parent)
  local length = cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.target_matching_unit.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.target_matching_unit.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.fields.target_matching_unit, range, value, display)

  return offset + length, value
end

-- Target Party Id
cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.target_party_id = {}

-- Size: Target Party Id
cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.target_party_id.size = 4

-- Display: Target Party Id
cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.target_party_id.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Target Party Id: No Value"
  end

  return "Target Party Id: "..value
end

-- Dissect: Target Party Id
cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.target_party_id.dissect = function(buffer, offset, packet, parent)
  local length = cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.target_party_id.size
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

  local display = cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.target_party_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.fields.target_party_id, range, value, display)

  return offset + length, value
end

-- Text
cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.text = {}

-- Size: Text
cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.text.size = 60

-- Display: Text
cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.text.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Text: No Value"
  end

  return "Text: "..value
end

-- Dissect: Text
cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.text.dissect = function(buffer, offset, packet, parent)
  local length = cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.text.size
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

  local display = cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.text.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.fields.text, range, value, display)

  return offset + length, value
end

-- Tied Hedge
cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.tied_hedge = {}

-- Size: Tied Hedge
cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.tied_hedge.size = 1

-- Display: Tied Hedge
cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.tied_hedge.display = function(value)
  if value == "N" then
    return "Tied Hedge: No (N)"
  end
  if value == "Y" then
    return "Tied Hedge: Yes (Y)"
  end

  return "Tied Hedge: Unknown("..value..")"
end

-- Dissect: Tied Hedge
cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.tied_hedge.dissect = function(buffer, offset, packet, parent)
  local length = cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.tied_hedge.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.tied_hedge.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.fields.tied_hedge, range, value, display)

  return offset + length, value
end

-- Time In Force
cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.time_in_force = {}

-- Size: Time In Force
cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.time_in_force.size = 1

-- Display: Time In Force
cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.time_in_force.display = function(value)
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
cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.time_in_force.dissect = function(buffer, offset, packet, parent)
  local length = cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.time_in_force.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.time_in_force.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.fields.time_in_force, range, value, display)

  return offset + length, value
end

-- Trade Date
cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.trade_date = {}

-- Size: Trade Date
cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.trade_date.size = 4

-- Display: Trade Date
cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.trade_date.display = function(value)
  return "Trade Date: "..value
end

-- Dissect: Trade Date
cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.trade_date.dissect = function(buffer, offset, packet, parent)
  local length = cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.trade_date.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.trade_date.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.fields.trade_date, range, value, display)

  return offset + length, value
end

-- Trade Through Alert Type
cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.trade_through_alert_type = {}

-- Size: Trade Through Alert Type
cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.trade_through_alert_type.size = 1

-- Display: Trade Through Alert Type
cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.trade_through_alert_type.display = function(value)
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
cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.trade_through_alert_type.dissect = function(buffer, offset, packet, parent)
  local length = cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.trade_through_alert_type.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.trade_through_alert_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.fields.trade_through_alert_type, range, value, display)

  return offset + length, value
end

-- Trading Group Id
cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.trading_group_id = {}

-- Size: Trading Group Id
cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.trading_group_id.size = 1

-- Display: Trading Group Id
cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.trading_group_id.display = function(value)
  return "Trading Group Id: "..value
end

-- Dissect: Trading Group Id
cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.trading_group_id.dissect = function(buffer, offset, packet, parent)
  local length = cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.trading_group_id.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.trading_group_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.fields.trading_group_id, range, value, display)

  return offset + length, value
end

-- Transaction Time
cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.transaction_time = {}

-- Size: Transaction Time
cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.transaction_time.size = 8

-- Display: Transaction Time
cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.transaction_time.display = function(value)
  -- Parse unix nanosecond timestamp
  local seconds = (value / UInt64(1000000000)):tonumber()
  local nanoseconds = (value % UInt64(1000000000)):tonumber()

  return "Transaction Time: "..os.date("%Y-%m-%d %H:%M:%S.", seconds)..string.format("%09d", nanoseconds)
end

-- Dissect: Transaction Time
cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.transaction_time.dissect = function(buffer, offset, packet, parent)
  local length = cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.transaction_time.size
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.transaction_time.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.fields.transaction_time, range, value, display)

  return offset + length, value
end

-- Unique Id Level
cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.unique_id_level = {}

-- Size: Unique Id Level
cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.unique_id_level.size = 1

-- Display: Unique Id Level
cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.unique_id_level.display = function(value)
  return "Unique Id Level: "..value
end

-- Dissect: Unique Id Level
cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.unique_id_level.dissect = function(buffer, offset, packet, parent)
  local length = cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.unique_id_level.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.unique_id_level.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.fields.unique_id_level, range, value, display)

  return offset + length, value
end

-- Unit Number
cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.unit_number = {}

-- Size: Unit Number
cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.unit_number.size = 1

-- Display: Unit Number
cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.unit_number.display = function(value)
  return "Unit Number: "..value
end

-- Dissect: Unit Number
cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.unit_number.dissect = function(buffer, offset, packet, parent)
  local length = cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.unit_number.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.unit_number.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.fields.unit_number, range, value, display)

  return offset + length, value
end

-- Working Price
cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.working_price = {}

-- Size: Working Price
cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.working_price.size = 8

-- Display: Working Price
cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.working_price.display = function(value)
  return "Working Price: "..value
end

-- Translate: Working Price
cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.working_price.translate = function(raw)
  return raw:tonumber()/10000
end

-- Dissect: Working Price
cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.working_price.dissect = function(buffer, offset, packet, parent)
  local length = cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.working_price.size
  local range = buffer(offset, length)
  local raw = range:le_int64()
  local value = cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.working_price.translate(raw)
  local display = cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.working_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.fields.working_price, range, value, display)

  return offset + length, value
end


-----------------------------------------------------------------------
-- Dissect Cboe EdgxOptions BinaryOrderEntry Boe3 1.0.10
-----------------------------------------------------------------------

-- Done For Day Message
cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.done_for_day_message = {}

-- Size: Done For Day Message
cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.done_for_day_message.size =
  cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.in_flight.size + 
  cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.transaction_time.size + 
  cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.cl_ord_id.size + 
  cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.clearing_firm.size + 
  cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.routing_firm_id.size + 
  cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.symbol.size

-- Display: Done For Day Message
cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.done_for_day_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Done For Day Message
cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.done_for_day_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- In Flight: Binary
  index, in_flight = cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.in_flight.dissect(buffer, index, packet, parent)

  -- Transaction Time: DateTime
  index, transaction_time = cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.transaction_time.dissect(buffer, index, packet, parent)

  -- Cl Ord Id: Text
  index, cl_ord_id = cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.cl_ord_id.dissect(buffer, index, packet, parent)

  -- Clearing Firm: Alpha
  index, clearing_firm = cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.clearing_firm.dissect(buffer, index, packet, parent)

  -- Routing Firm Id: Alpha
  index, routing_firm_id = cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.routing_firm_id.dissect(buffer, index, packet, parent)

  -- Symbol: Alphanumeric
  index, symbol = cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.symbol.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Done For Day Message
cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.done_for_day_message.dissect = function(buffer, offset, packet, parent)
  if show.structs then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.fields.done_for_day_message, buffer(offset, 0))
    local index = cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.done_for_day_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.done_for_day_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.done_for_day_message.fields(buffer, offset, packet, parent)
  end
end

-- Prevent Match
cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.prevent_match = {}

-- Size: Prevent Match
cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.prevent_match.size =
  cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.mtp_modifier.size + 
  cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.unique_id_level.size + 
  cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.trading_group_id.size

-- Display: Prevent Match
cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.prevent_match.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Prevent Match
cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.prevent_match.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Mtp Modifier: Text
  index, mtp_modifier = cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.mtp_modifier.dissect(buffer, index, packet, parent)

  -- Unique Id Level: Text
  index, unique_id_level = cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.unique_id_level.dissect(buffer, index, packet, parent)

  -- Trading Group Id: Alphanumeric
  index, trading_group_id = cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.trading_group_id.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Prevent Match
cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.prevent_match.dissect = function(buffer, offset, packet, parent)
  if show.structs then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.fields.prevent_match, buffer(offset, 0))
    local index = cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.prevent_match.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.prevent_match.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.prevent_match.fields(buffer, offset, packet, parent)
  end
end

-- Carried Restatement Message
cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.carried_restatement_message = {}

-- Size: Carried Restatement Message
cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.carried_restatement_message.size =
  cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.in_flight.size + 
  cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.transaction_time.size + 
  cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.cl_ord_id.size + 
  cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.order_id.size + 
  cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.side.size + 
  cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.price.size + 
  cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.exec_inst.size + 
  cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.ord_type.size + 
  cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.time_in_force.size + 
  cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.min_qty.size + 
  cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.symbol.size + 
  cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.capacity.size + 
  cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.account.size + 
  cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.clearing_firm.size + 
  cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.clearing_account.size + 
  cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.display_indicator.size + 
  cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.max_floor.size + 
  cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.order_qty.size + 
  cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.prevent_match.size + 
  cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.maturity_date.size + 
  cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.strike_price.size + 
  cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.put_or_call.size + 
  cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.open_close.size + 
  cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.leaves_qty.size + 
  cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.display_price.size + 
  cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.working_price.size + 
  cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.expire_time.size + 
  cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.attributed_quote.size + 
  cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.stop_px.size + 
  cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.routing_inst.size + 
  cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.rout_strategy.size + 
  cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.route_delivery_method.size + 
  cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.ex_destination.size + 
  cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.target_party_id.size + 
  cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.auction_id.size + 
  cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.cmta_number.size + 
  cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.routing_firm_id.size + 
  cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.clearing_optional_data.size + 
  cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.cum_qty.size + 
  cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.drill_thru_protection.size + 
  cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.equity_party_id.size + 
  cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.client_id_attr.size + 
  cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.frequent_trader_id.size + 
  cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.session_eligibility.size + 
  cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.combo_order.size + 
  cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.compression.size + 
  cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.floor_destination.size + 
  cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.floor_routing_inst.size + 
  cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.order_origin.size + 
  cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.price_type.size + 
  cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.strategy_id.size + 
  cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.held.size

-- Display: Carried Restatement Message
cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.carried_restatement_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Carried Restatement Message
cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.carried_restatement_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- In Flight: Binary
  index, in_flight = cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.in_flight.dissect(buffer, index, packet, parent)

  -- Transaction Time: DateTime
  index, transaction_time = cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.transaction_time.dissect(buffer, index, packet, parent)

  -- Cl Ord Id: Text
  index, cl_ord_id = cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.cl_ord_id.dissect(buffer, index, packet, parent)

  -- Order Id: Binary
  index, order_id = cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.order_id.dissect(buffer, index, packet, parent)

  -- Side: Alphanumeric
  index, side = cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.side.dissect(buffer, index, packet, parent)

  -- Price: BinaryPrice
  index, price = cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.price.dissect(buffer, index, packet, parent)

  -- Exec Inst: Text
  index, exec_inst = cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.exec_inst.dissect(buffer, index, packet, parent)

  -- Ord Type: Alphanumeric
  index, ord_type = cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.ord_type.dissect(buffer, index, packet, parent)

  -- Time In Force: Alphanumeric
  index, time_in_force = cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.time_in_force.dissect(buffer, index, packet, parent)

  -- Min Qty: Binary
  index, min_qty = cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.min_qty.dissect(buffer, index, packet, parent)

  -- Symbol: Alphanumeric
  index, symbol = cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.symbol.dissect(buffer, index, packet, parent)

  -- Capacity: Alpha
  index, capacity = cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.capacity.dissect(buffer, index, packet, parent)

  -- Account: Text
  index, account = cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.account.dissect(buffer, index, packet, parent)

  -- Clearing Firm: Alpha
  index, clearing_firm = cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.clearing_firm.dissect(buffer, index, packet, parent)

  -- Clearing Account: Text
  index, clearing_account = cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.clearing_account.dissect(buffer, index, packet, parent)

  -- Display Indicator: Alphanumeric
  index, display_indicator = cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.display_indicator.dissect(buffer, index, packet, parent)

  -- Max Floor: Binary
  index, max_floor = cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.max_floor.dissect(buffer, index, packet, parent)

  -- Order Qty: Binary
  index, order_qty = cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.order_qty.dissect(buffer, index, packet, parent)

  -- Prevent Match: Struct of 3 fields
  index, prevent_match = cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.prevent_match.dissect(buffer, index, packet, parent)

  -- Maturity Date: Date
  index, maturity_date = cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.maturity_date.dissect(buffer, index, packet, parent)

  -- Strike Price: BinaryPrice
  index, strike_price = cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.strike_price.dissect(buffer, index, packet, parent)

  -- Put Or Call: Alphanumeric
  index, put_or_call = cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.put_or_call.dissect(buffer, index, packet, parent)

  -- Open Close: Alphanumeric
  index, open_close = cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.open_close.dissect(buffer, index, packet, parent)

  -- Leaves Qty: Binary
  index, leaves_qty = cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.leaves_qty.dissect(buffer, index, packet, parent)

  -- Display Price: BinaryPrice
  index, display_price = cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.display_price.dissect(buffer, index, packet, parent)

  -- Working Price: BinaryPrice
  index, working_price = cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.working_price.dissect(buffer, index, packet, parent)

  -- Expire Time: DateTime
  index, expire_time = cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.expire_time.dissect(buffer, index, packet, parent)

  -- Attributed Quote: Alphanumeric
  index, attributed_quote = cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.attributed_quote.dissect(buffer, index, packet, parent)

  -- Stop Px: BinaryPrice
  index, stop_px = cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.stop_px.dissect(buffer, index, packet, parent)

  -- Routing Inst: Text
  index, routing_inst = cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.routing_inst.dissect(buffer, index, packet, parent)

  -- Rout Strategy: Text
  index, rout_strategy = cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.rout_strategy.dissect(buffer, index, packet, parent)

  -- Route Delivery Method: Text
  index, route_delivery_method = cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.route_delivery_method.dissect(buffer, index, packet, parent)

  -- Ex Destination: Text
  index, ex_destination = cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.ex_destination.dissect(buffer, index, packet, parent)

  -- Target Party Id: Alpha
  index, target_party_id = cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.target_party_id.dissect(buffer, index, packet, parent)

  -- Auction Id: Binary
  index, auction_id = cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.auction_id.dissect(buffer, index, packet, parent)

  -- Cmta Number: Binary
  index, cmta_number = cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.cmta_number.dissect(buffer, index, packet, parent)

  -- Routing Firm Id: Alpha
  index, routing_firm_id = cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.routing_firm_id.dissect(buffer, index, packet, parent)

  -- Clearing Optional Data: Text
  index, clearing_optional_data = cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.clearing_optional_data.dissect(buffer, index, packet, parent)

  -- Cum Qty: Binary
  index, cum_qty = cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.cum_qty.dissect(buffer, index, packet, parent)

  -- Drill Thru Protection: BinaryPrice
  index, drill_thru_protection = cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.drill_thru_protection.dissect(buffer, index, packet, parent)

  -- Equity Party Id: Alpha
  index, equity_party_id = cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.equity_party_id.dissect(buffer, index, packet, parent)

  -- Client Id Attr: Text
  index, client_id_attr = cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.client_id_attr.dissect(buffer, index, packet, parent)

  -- Frequent Trader Id: Text
  index, frequent_trader_id = cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.frequent_trader_id.dissect(buffer, index, packet, parent)

  -- Session Eligibility: Alpha
  index, session_eligibility = cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.session_eligibility.dissect(buffer, index, packet, parent)

  -- Combo Order: Alpha
  index, combo_order = cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.combo_order.dissect(buffer, index, packet, parent)

  -- Compression: Alpha
  index, compression = cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.compression.dissect(buffer, index, packet, parent)

  -- Floor Destination: Text
  index, floor_destination = cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.floor_destination.dissect(buffer, index, packet, parent)

  -- Floor Routing Inst: Alphanumeric
  index, floor_routing_inst = cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.floor_routing_inst.dissect(buffer, index, packet, parent)

  -- Order Origin: Alphanumeric
  index, order_origin = cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.order_origin.dissect(buffer, index, packet, parent)

  -- Price Type: Alphanumeric
  index, price_type = cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.price_type.dissect(buffer, index, packet, parent)

  -- Strategy Id: Alphanumeric
  index, strategy_id = cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.strategy_id.dissect(buffer, index, packet, parent)

  -- Held: Alpha
  index, held = cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.held.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Carried Restatement Message
cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.carried_restatement_message.dissect = function(buffer, offset, packet, parent)
  if show.structs then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.fields.carried_restatement_message, buffer(offset, 0))
    local index = cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.carried_restatement_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.carried_restatement_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.carried_restatement_message.fields(buffer, offset, packet, parent)
  end
end

-- New Complex Instrument Rejected Message
cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.new_complex_instrument_rejected_message = {}

-- Size: New Complex Instrument Rejected Message
cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.new_complex_instrument_rejected_message.size =
  cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.in_flight.size + 
  cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.transaction_time.size + 
  cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.cl_ord_id.size + 
  cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.no_of_securities.size + 
  cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.order_reject_reason.size + 
  cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.text.size

-- Display: New Complex Instrument Rejected Message
cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.new_complex_instrument_rejected_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: New Complex Instrument Rejected Message
cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.new_complex_instrument_rejected_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- In Flight: Binary
  index, in_flight = cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.in_flight.dissect(buffer, index, packet, parent)

  -- Transaction Time: DateTime
  index, transaction_time = cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.transaction_time.dissect(buffer, index, packet, parent)

  -- Cl Ord Id: Text
  index, cl_ord_id = cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.cl_ord_id.dissect(buffer, index, packet, parent)

  -- No Of Securities: Binary
  index, no_of_securities = cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.no_of_securities.dissect(buffer, index, packet, parent)

  -- Order Reject Reason: Text
  index, order_reject_reason = cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.order_reject_reason.dissect(buffer, index, packet, parent)

  -- Text: Text
  index, text = cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.text.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: New Complex Instrument Rejected Message
cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.new_complex_instrument_rejected_message.dissect = function(buffer, offset, packet, parent)
  if show.structs then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.fields.new_complex_instrument_rejected_message, buffer(offset, 0))
    local index = cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.new_complex_instrument_rejected_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.new_complex_instrument_rejected_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.new_complex_instrument_rejected_message.fields(buffer, offset, packet, parent)
  end
end

-- Complex Leg
cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.complex_leg = {}

-- Size: Complex Leg
cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.complex_leg.size =
  cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.symbol.size + 
  cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.maturity_date.size + 
  cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.strike_price.size + 
  cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.cfi_code.size + 
  cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.ratio_qty.size + 
  cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.side.size

-- Display: Complex Leg
cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.complex_leg.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Complex Leg
cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.complex_leg.fields = function(buffer, offset, packet, parent, complex_leg_index)
  local index = offset

  -- Implicit Complex Leg Index
  if complex_leg_index ~= nil and show.indexes then
    local iteration = parent:add(omi_cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.fields.complex_leg_index, complex_leg_index)
    iteration:set_generated()
  end

  -- Symbol: Alphanumeric
  index, symbol = cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.symbol.dissect(buffer, index, packet, parent)

  -- Maturity Date: Date
  index, maturity_date = cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.maturity_date.dissect(buffer, index, packet, parent)

  -- Strike Price: BinaryPrice
  index, strike_price = cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.strike_price.dissect(buffer, index, packet, parent)

  -- Cfi Code: Alphanumeric
  index, cfi_code = cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.cfi_code.dissect(buffer, index, packet, parent)

  -- Ratio Qty: Binary
  index, ratio_qty = cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.ratio_qty.dissect(buffer, index, packet, parent)

  -- Side: Alphanumeric
  index, side = cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.side.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Complex Leg
cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.complex_leg.dissect = function(buffer, offset, packet, parent, complex_leg_index)
  if show.structs then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.fields.complex_leg, buffer(offset, 0))
    local index = cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.complex_leg.fields(buffer, offset, packet, parent, complex_leg_index)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.complex_leg.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.complex_leg.fields(buffer, offset, packet, parent, complex_leg_index)
  end
end

-- New Complex Instrument Accepted Message
cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.new_complex_instrument_accepted_message = {}

-- Calculate size of: New Complex Instrument Accepted Message
cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.new_complex_instrument_accepted_message.size = function(buffer, offset)
  local index = 0

  index = index + cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.in_flight.size

  index = index + cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.transaction_time.size

  index = index + cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.cl_ord_id.size

  index = index + cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.symbol.size

  index = index + cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.no_of_securities.size

  index = index + cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.leg_cnt.size

  -- Calculate field size from count
  local complex_leg_count = buffer(offset + index - 1, 1):le_uint()
  index = index + complex_leg_count * 27

  return index
end

-- Display: New Complex Instrument Accepted Message
cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.new_complex_instrument_accepted_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: New Complex Instrument Accepted Message
cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.new_complex_instrument_accepted_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- In Flight: Binary
  index, in_flight = cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.in_flight.dissect(buffer, index, packet, parent)

  -- Transaction Time: DateTime
  index, transaction_time = cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.transaction_time.dissect(buffer, index, packet, parent)

  -- Cl Ord Id: Text
  index, cl_ord_id = cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.cl_ord_id.dissect(buffer, index, packet, parent)

  -- Symbol: Alphanumeric
  index, symbol = cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.symbol.dissect(buffer, index, packet, parent)

  -- No Of Securities: Binary
  index, no_of_securities = cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.no_of_securities.dissect(buffer, index, packet, parent)

  -- Leg Cnt: Binary
  index, leg_cnt = cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.leg_cnt.dissect(buffer, index, packet, parent)

  -- Repeating: Complex Leg
  for complex_leg_index = 1, leg_cnt do
    index, complex_leg = cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.complex_leg.dissect(buffer, index, packet, parent, complex_leg_index)
  end

  return index
end

-- Dissect: New Complex Instrument Accepted Message
cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.new_complex_instrument_accepted_message.dissect = function(buffer, offset, packet, parent)
  if show.structs then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.fields.new_complex_instrument_accepted_message, buffer(offset, 0))
    local index = cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.new_complex_instrument_accepted_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.new_complex_instrument_accepted_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.new_complex_instrument_accepted_message.fields(buffer, offset, packet, parent)
  end
end

-- Purge Notification Message
cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.purge_notification_message = {}

-- Size: Purge Notification Message
cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.purge_notification_message.size =
  cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.in_flight.size + 
  cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.transaction_time.size + 
  cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.mass_cancel_id.size + 
  cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.cancelled_order_count.size + 
  cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.source_matching_unit.size + 
  cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.clearing_firm.size + 
  cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.risk_root.size + 
  cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.mass_cancel_lockout.size

-- Display: Purge Notification Message
cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.purge_notification_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Purge Notification Message
cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.purge_notification_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- In Flight: Binary
  index, in_flight = cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.in_flight.dissect(buffer, index, packet, parent)

  -- Transaction Time: DateTime
  index, transaction_time = cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.transaction_time.dissect(buffer, index, packet, parent)

  -- Mass Cancel Id: Text
  index, mass_cancel_id = cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.mass_cancel_id.dissect(buffer, index, packet, parent)

  -- Cancelled Order Count: Binary
  index, cancelled_order_count = cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.cancelled_order_count.dissect(buffer, index, packet, parent)

  -- Source Matching Unit: Binary
  index, source_matching_unit = cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.source_matching_unit.dissect(buffer, index, packet, parent)

  -- Clearing Firm: Alpha
  index, clearing_firm = cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.clearing_firm.dissect(buffer, index, packet, parent)

  -- Risk Root: Text
  index, risk_root = cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.risk_root.dissect(buffer, index, packet, parent)

  -- Mass Cancel Lockout: Text
  index, mass_cancel_lockout = cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.mass_cancel_lockout.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Purge Notification Message
cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.purge_notification_message.dissect = function(buffer, offset, packet, parent)
  if show.structs then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.fields.purge_notification_message, buffer(offset, 0))
    local index = cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.purge_notification_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.purge_notification_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.purge_notification_message.fields(buffer, offset, packet, parent)
  end
end

-- Purge Acknowledgement Message
cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.purge_acknowledgement_message = {}

-- Size: Purge Acknowledgement Message
cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.purge_acknowledgement_message.size =
  cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.in_flight.size + 
  cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.transaction_time.size + 
  cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.mass_cancel_id.size + 
  cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.cancelled_order_count.size + 
  cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.source_matching_unit.size + 
  cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.request_received_time.size

-- Display: Purge Acknowledgement Message
cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.purge_acknowledgement_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Purge Acknowledgement Message
cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.purge_acknowledgement_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- In Flight: Binary
  index, in_flight = cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.in_flight.dissect(buffer, index, packet, parent)

  -- Transaction Time: DateTime
  index, transaction_time = cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.transaction_time.dissect(buffer, index, packet, parent)

  -- Mass Cancel Id: Text
  index, mass_cancel_id = cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.mass_cancel_id.dissect(buffer, index, packet, parent)

  -- Cancelled Order Count: Binary
  index, cancelled_order_count = cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.cancelled_order_count.dissect(buffer, index, packet, parent)

  -- Source Matching Unit: Binary
  index, source_matching_unit = cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.source_matching_unit.dissect(buffer, index, packet, parent)

  -- Request Received Time: DateTime
  index, request_received_time = cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.request_received_time.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Purge Acknowledgement Message
cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.purge_acknowledgement_message.dissect = function(buffer, offset, packet, parent)
  if show.structs then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.fields.purge_acknowledgement_message, buffer(offset, 0))
    local index = cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.purge_acknowledgement_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.purge_acknowledgement_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.purge_acknowledgement_message.fields(buffer, offset, packet, parent)
  end
end

-- Mass Cancel Rejected Message
cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.mass_cancel_rejected_message = {}

-- Size: Mass Cancel Rejected Message
cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.mass_cancel_rejected_message.size =
  cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.in_flight.size + 
  cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.transaction_time.size + 
  cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.mass_cancel_id.size + 
  cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.mass_cancel_reject_reason.size + 
  cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.text.size

-- Display: Mass Cancel Rejected Message
cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.mass_cancel_rejected_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Mass Cancel Rejected Message
cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.mass_cancel_rejected_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- In Flight: Binary
  index, in_flight = cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.in_flight.dissect(buffer, index, packet, parent)

  -- Transaction Time: DateTime
  index, transaction_time = cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.transaction_time.dissect(buffer, index, packet, parent)

  -- Mass Cancel Id: Text
  index, mass_cancel_id = cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.mass_cancel_id.dissect(buffer, index, packet, parent)

  -- Mass Cancel Reject Reason: Text
  index, mass_cancel_reject_reason = cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.mass_cancel_reject_reason.dissect(buffer, index, packet, parent)

  -- Text: Text
  index, text = cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.text.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Mass Cancel Rejected Message
cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.mass_cancel_rejected_message.dissect = function(buffer, offset, packet, parent)
  if show.structs then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.fields.mass_cancel_rejected_message, buffer(offset, 0))
    local index = cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.mass_cancel_rejected_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.mass_cancel_rejected_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.mass_cancel_rejected_message.fields(buffer, offset, packet, parent)
  end
end

-- Mass Cancel Acknowledgment Message
cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.mass_cancel_acknowledgment_message = {}

-- Size: Mass Cancel Acknowledgment Message
cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.mass_cancel_acknowledgment_message.size =
  cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.in_flight.size + 
  cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.transaction_time.size + 
  cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.mass_cancel_id.size + 
  cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.cancelled_order_count.size + 
  cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.request_received_time.size

-- Display: Mass Cancel Acknowledgment Message
cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.mass_cancel_acknowledgment_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Mass Cancel Acknowledgment Message
cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.mass_cancel_acknowledgment_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- In Flight: Binary
  index, in_flight = cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.in_flight.dissect(buffer, index, packet, parent)

  -- Transaction Time: DateTime
  index, transaction_time = cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.transaction_time.dissect(buffer, index, packet, parent)

  -- Mass Cancel Id: Text
  index, mass_cancel_id = cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.mass_cancel_id.dissect(buffer, index, packet, parent)

  -- Cancelled Order Count: Binary
  index, cancelled_order_count = cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.cancelled_order_count.dissect(buffer, index, packet, parent)

  -- Request Received Time: DateTime
  index, request_received_time = cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.request_received_time.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Mass Cancel Acknowledgment Message
cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.mass_cancel_acknowledgment_message.dissect = function(buffer, offset, packet, parent)
  if show.structs then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.fields.mass_cancel_acknowledgment_message, buffer(offset, 0))
    local index = cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.mass_cancel_acknowledgment_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.mass_cancel_acknowledgment_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.mass_cancel_acknowledgment_message.fields(buffer, offset, packet, parent)
  end
end

-- Reset Risk Acknowledgement Message
cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.reset_risk_acknowledgement_message = {}

-- Size: Reset Risk Acknowledgement Message
cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.reset_risk_acknowledgement_message.size =
  cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.in_flight.size + 
  cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.risk_status_id.size + 
  cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.risk_reset_result.size + 
  cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.request_received_time.size

-- Display: Reset Risk Acknowledgement Message
cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.reset_risk_acknowledgement_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Reset Risk Acknowledgement Message
cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.reset_risk_acknowledgement_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- In Flight: Binary
  index, in_flight = cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.in_flight.dissect(buffer, index, packet, parent)

  -- Risk Status Id: Text
  index, risk_status_id = cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.risk_status_id.dissect(buffer, index, packet, parent)

  -- Risk Reset Result: Text
  index, risk_reset_result = cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.risk_reset_result.dissect(buffer, index, packet, parent)

  -- Request Received Time: DateTime
  index, request_received_time = cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.request_received_time.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Reset Risk Acknowledgement Message
cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.reset_risk_acknowledgement_message.dissect = function(buffer, offset, packet, parent)
  if show.structs then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.fields.reset_risk_acknowledgement_message, buffer(offset, 0))
    local index = cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.reset_risk_acknowledgement_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.reset_risk_acknowledgement_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.reset_risk_acknowledgement_message.fields(buffer, offset, packet, parent)
  end
end

-- Purge Rejected Message
cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.purge_rejected_message = {}

-- Size: Purge Rejected Message
cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.purge_rejected_message.size =
  cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.in_flight.size + 
  cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.transaction_time.size + 
  cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.mass_cancel_id.size + 
  cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.purge_reject_reason.size + 
  cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.text.size

-- Display: Purge Rejected Message
cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.purge_rejected_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Purge Rejected Message
cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.purge_rejected_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- In Flight: Binary
  index, in_flight = cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.in_flight.dissect(buffer, index, packet, parent)

  -- Transaction Time: DateTime
  index, transaction_time = cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.transaction_time.dissect(buffer, index, packet, parent)

  -- Mass Cancel Id: Text
  index, mass_cancel_id = cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.mass_cancel_id.dissect(buffer, index, packet, parent)

  -- Purge Reject Reason: Text
  index, purge_reject_reason = cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.purge_reject_reason.dissect(buffer, index, packet, parent)

  -- Text: Text
  index, text = cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.text.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Purge Rejected Message
cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.purge_rejected_message.dissect = function(buffer, offset, packet, parent)
  if show.structs then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.fields.purge_rejected_message, buffer(offset, 0))
    local index = cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.purge_rejected_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.purge_rejected_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.purge_rejected_message.fields(buffer, offset, packet, parent)
  end
end

-- Trade Cancel Correct Message
cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.trade_cancel_correct_message = {}

-- Size: Trade Cancel Correct Message
cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.trade_cancel_correct_message.size =
  cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.in_flight.size + 
  cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.transaction_time.size + 
  cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.cl_ord_id.size + 
  cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.order_id.size + 
  cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.exec_ref_id.size + 
  cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.side.size + 
  cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.base_liquidity_indicator.size + 
  cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.sub_liquidity_indicator.size + 
  cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.clearing_firm.size + 
  cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.clearing_account.size + 
  cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.last_shares.size + 
  cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.last_px.size + 
  cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.corrected_price.size + 
  cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.corrected_size.size + 
  cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.orig_time.size + 
  cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.symbol.size + 
  cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.maturity_date.size + 
  cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.strike_price.size + 
  cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.put_or_call.size + 
  cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.capacity.size + 
  cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.open_close.size + 
  cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.marketing_fee_code.size + 
  cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.target_party_id.size + 
  cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.cmta_number.size

-- Display: Trade Cancel Correct Message
cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.trade_cancel_correct_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Trade Cancel Correct Message
cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.trade_cancel_correct_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- In Flight: Binary
  index, in_flight = cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.in_flight.dissect(buffer, index, packet, parent)

  -- Transaction Time: DateTime
  index, transaction_time = cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.transaction_time.dissect(buffer, index, packet, parent)

  -- Cl Ord Id: Text
  index, cl_ord_id = cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.cl_ord_id.dissect(buffer, index, packet, parent)

  -- Order Id: Binary
  index, order_id = cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.order_id.dissect(buffer, index, packet, parent)

  -- Exec Ref Id: Binary
  index, exec_ref_id = cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.exec_ref_id.dissect(buffer, index, packet, parent)

  -- Side: Alphanumeric
  index, side = cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.side.dissect(buffer, index, packet, parent)

  -- Base Liquidity Indicator: Alphanumeric
  index, base_liquidity_indicator = cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.base_liquidity_indicator.dissect(buffer, index, packet, parent)

  -- Sub Liquidity Indicator: Alphanumeric
  index, sub_liquidity_indicator = cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.sub_liquidity_indicator.dissect(buffer, index, packet, parent)

  -- Clearing Firm: Alpha
  index, clearing_firm = cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.clearing_firm.dissect(buffer, index, packet, parent)

  -- Clearing Account: Text
  index, clearing_account = cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.clearing_account.dissect(buffer, index, packet, parent)

  -- Last Shares: Binary
  index, last_shares = cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.last_shares.dissect(buffer, index, packet, parent)

  -- Last Px: BinaryPrice
  index, last_px = cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.last_px.dissect(buffer, index, packet, parent)

  -- Corrected Price: Binary
  index, corrected_price = cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.corrected_price.dissect(buffer, index, packet, parent)

  -- Corrected Size: Binary
  index, corrected_size = cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.corrected_size.dissect(buffer, index, packet, parent)

  -- Orig Time: DateTime
  index, orig_time = cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.orig_time.dissect(buffer, index, packet, parent)

  -- Symbol: Alphanumeric
  index, symbol = cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.symbol.dissect(buffer, index, packet, parent)

  -- Maturity Date: Date
  index, maturity_date = cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.maturity_date.dissect(buffer, index, packet, parent)

  -- Strike Price: BinaryPrice
  index, strike_price = cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.strike_price.dissect(buffer, index, packet, parent)

  -- Put Or Call: Alphanumeric
  index, put_or_call = cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.put_or_call.dissect(buffer, index, packet, parent)

  -- Capacity: Alpha
  index, capacity = cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.capacity.dissect(buffer, index, packet, parent)

  -- Open Close: Alphanumeric
  index, open_close = cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.open_close.dissect(buffer, index, packet, parent)

  -- Marketing Fee Code: Alphanumeric
  index, marketing_fee_code = cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.marketing_fee_code.dissect(buffer, index, packet, parent)

  -- Target Party Id: Alpha
  index, target_party_id = cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.target_party_id.dissect(buffer, index, packet, parent)

  -- Cmta Number: Binary
  index, cmta_number = cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.cmta_number.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Trade Cancel Correct Message
cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.trade_cancel_correct_message.dissect = function(buffer, offset, packet, parent)
  if show.structs then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.fields.trade_cancel_correct_message, buffer(offset, 0))
    local index = cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.trade_cancel_correct_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.trade_cancel_correct_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.trade_cancel_correct_message.fields(buffer, offset, packet, parent)
  end
end

-- Quote Execution Message
cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.quote_execution_message = {}

-- Size: Quote Execution Message
cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.quote_execution_message.size =
  cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.in_flight.size + 
  cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.transaction_time.size + 
  cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.quote_update_id.size + 
  cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.order_id.size + 
  cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.exec_id.size + 
  cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.quote_symbol.size + 
  cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.clearing_firm.size + 
  cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.last_shares.size + 
  cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.last_px.size + 
  cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.leaves_qty.size + 
  cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.contra_trader.size + 
  cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.contra_capacity.size + 
  cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.side.size + 
  cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.base_liquidity_indicator.size + 
  cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.sub_liquidity_indicator.size + 
  cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.fee_code.size + 
  cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.marketing_fee_code.size + 
  cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.trade_date.size

-- Display: Quote Execution Message
cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.quote_execution_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Quote Execution Message
cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.quote_execution_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- In Flight: Binary
  index, in_flight = cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.in_flight.dissect(buffer, index, packet, parent)

  -- Transaction Time: DateTime
  index, transaction_time = cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.transaction_time.dissect(buffer, index, packet, parent)

  -- Quote Update Id: Text
  index, quote_update_id = cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.quote_update_id.dissect(buffer, index, packet, parent)

  -- Order Id: Binary
  index, order_id = cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.order_id.dissect(buffer, index, packet, parent)

  -- Exec Id: Binary
  index, exec_id = cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.exec_id.dissect(buffer, index, packet, parent)

  -- Quote Symbol: Alphanumeric
  index, quote_symbol = cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.quote_symbol.dissect(buffer, index, packet, parent)

  -- Clearing Firm: Alpha
  index, clearing_firm = cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.clearing_firm.dissect(buffer, index, packet, parent)

  -- Last Shares: Binary
  index, last_shares = cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.last_shares.dissect(buffer, index, packet, parent)

  -- Last Px: BinaryPrice
  index, last_px = cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.last_px.dissect(buffer, index, packet, parent)

  -- Leaves Qty: Binary
  index, leaves_qty = cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.leaves_qty.dissect(buffer, index, packet, parent)

  -- Contra Trader: Alphanumeric
  index, contra_trader = cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.contra_trader.dissect(buffer, index, packet, parent)

  -- Contra Capacity: Alphanumeric
  index, contra_capacity = cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.contra_capacity.dissect(buffer, index, packet, parent)

  -- Side: Alphanumeric
  index, side = cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.side.dissect(buffer, index, packet, parent)

  -- Base Liquidity Indicator: Alphanumeric
  index, base_liquidity_indicator = cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.base_liquidity_indicator.dissect(buffer, index, packet, parent)

  -- Sub Liquidity Indicator: Alphanumeric
  index, sub_liquidity_indicator = cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.sub_liquidity_indicator.dissect(buffer, index, packet, parent)

  -- Fee Code: Alphanumeric
  index, fee_code = cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.fee_code.dissect(buffer, index, packet, parent)

  -- Marketing Fee Code: Alphanumeric
  index, marketing_fee_code = cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.marketing_fee_code.dissect(buffer, index, packet, parent)

  -- Trade Date: Date
  index, trade_date = cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.trade_date.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Quote Execution Message
cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.quote_execution_message.dissect = function(buffer, offset, packet, parent)
  if show.structs then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.fields.quote_execution_message, buffer(offset, 0))
    local index = cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.quote_execution_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.quote_execution_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.quote_execution_message.fields(buffer, offset, packet, parent)
  end
end

-- Order Execution Message
cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.order_execution_message = {}

-- Size: Order Execution Message
cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.order_execution_message.size =
  cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.in_flight.size + 
  cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.transaction_time.size + 
  cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.cl_ord_id.size + 
  cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.exec_id.size + 
  cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.last_shares.size + 
  cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.last_px.size + 
  cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.leaves_qty.size + 
  cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.base_liquidity_indicator.size + 
  cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.sub_liquidity_indicator.size + 
  cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.contra_broker.size + 
  cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.side.size + 
  cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.symbol.size + 
  cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.contra_trader.size + 
  cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.clearing_firm.size + 
  cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.contra_capacity.size + 
  cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.fee_code.size + 
  cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.marketing_fee_code.size + 
  cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.routing_firm_id.size + 
  cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.cross_exclusion_indicator.size + 
  cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.trade_date.size + 
  cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.multileg_reporting_type.size + 
  cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.secondary_exec_id.size + 
  cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.price_type.size + 
  cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.trade_through_alert_type.size + 
  cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.sender_location_id.size + 
  cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.floor_trader_acronym.size + 
  cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.floor_trade_time.size + 
  cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.ex_destination.size + 
  cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.equity_ex_destination.size

-- Display: Order Execution Message
cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.order_execution_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Order Execution Message
cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.order_execution_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- In Flight: Binary
  index, in_flight = cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.in_flight.dissect(buffer, index, packet, parent)

  -- Transaction Time: DateTime
  index, transaction_time = cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.transaction_time.dissect(buffer, index, packet, parent)

  -- Cl Ord Id: Text
  index, cl_ord_id = cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.cl_ord_id.dissect(buffer, index, packet, parent)

  -- Exec Id: Binary
  index, exec_id = cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.exec_id.dissect(buffer, index, packet, parent)

  -- Last Shares: Binary
  index, last_shares = cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.last_shares.dissect(buffer, index, packet, parent)

  -- Last Px: BinaryPrice
  index, last_px = cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.last_px.dissect(buffer, index, packet, parent)

  -- Leaves Qty: Binary
  index, leaves_qty = cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.leaves_qty.dissect(buffer, index, packet, parent)

  -- Base Liquidity Indicator: Alphanumeric
  index, base_liquidity_indicator = cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.base_liquidity_indicator.dissect(buffer, index, packet, parent)

  -- Sub Liquidity Indicator: Alphanumeric
  index, sub_liquidity_indicator = cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.sub_liquidity_indicator.dissect(buffer, index, packet, parent)

  -- Contra Broker: Alphanumeric
  index, contra_broker = cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.contra_broker.dissect(buffer, index, packet, parent)

  -- Side: Alphanumeric
  index, side = cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.side.dissect(buffer, index, packet, parent)

  -- Symbol: Alphanumeric
  index, symbol = cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.symbol.dissect(buffer, index, packet, parent)

  -- Contra Trader: Alphanumeric
  index, contra_trader = cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.contra_trader.dissect(buffer, index, packet, parent)

  -- Clearing Firm: Alpha
  index, clearing_firm = cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.clearing_firm.dissect(buffer, index, packet, parent)

  -- Contra Capacity: Alphanumeric
  index, contra_capacity = cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.contra_capacity.dissect(buffer, index, packet, parent)

  -- Fee Code: Alphanumeric
  index, fee_code = cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.fee_code.dissect(buffer, index, packet, parent)

  -- Marketing Fee Code: Alphanumeric
  index, marketing_fee_code = cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.marketing_fee_code.dissect(buffer, index, packet, parent)

  -- Routing Firm Id: Alpha
  index, routing_firm_id = cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.routing_firm_id.dissect(buffer, index, packet, parent)

  -- Cross Exclusion Indicator: Alpha
  index, cross_exclusion_indicator = cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.cross_exclusion_indicator.dissect(buffer, index, packet, parent)

  -- Trade Date: Date
  index, trade_date = cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.trade_date.dissect(buffer, index, packet, parent)

  -- Multileg Reporting Type: Alphanumeric
  index, multileg_reporting_type = cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.multileg_reporting_type.dissect(buffer, index, packet, parent)

  -- Secondary Exec Id: Binary
  index, secondary_exec_id = cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.secondary_exec_id.dissect(buffer, index, packet, parent)

  -- Price Type: Alphanumeric
  index, price_type = cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.price_type.dissect(buffer, index, packet, parent)

  -- Trade Through Alert Type: Alphanumeric
  index, trade_through_alert_type = cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.trade_through_alert_type.dissect(buffer, index, packet, parent)

  -- Sender Location Id: Alphanumeric
  index, sender_location_id = cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.sender_location_id.dissect(buffer, index, packet, parent)

  -- Floor Trader Acronym: Alpha
  index, floor_trader_acronym = cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.floor_trader_acronym.dissect(buffer, index, packet, parent)

  -- Floor Trade Time: DateTime
  index, floor_trade_time = cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.floor_trade_time.dissect(buffer, index, packet, parent)

  -- Ex Destination: Text
  index, ex_destination = cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.ex_destination.dissect(buffer, index, packet, parent)

  -- Equity Ex Destination: Alphanumeric
  index, equity_ex_destination = cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.equity_ex_destination.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Order Execution Message
cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.order_execution_message.dissect = function(buffer, offset, packet, parent)
  if show.structs then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.fields.order_execution_message, buffer(offset, 0))
    local index = cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.order_execution_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.order_execution_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.order_execution_message.fields(buffer, offset, packet, parent)
  end
end

-- Cancel Rejected Message
cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.cancel_rejected_message = {}

-- Size: Cancel Rejected Message
cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.cancel_rejected_message.size =
  cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.in_flight.size + 
  cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.transaction_time.size + 
  cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.cl_ord_id.size + 
  cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.clearing_firm.size + 
  cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.routing_firm_id.size + 
  cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.cancel_reject_reason.size + 
  cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.text.size

-- Display: Cancel Rejected Message
cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.cancel_rejected_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Cancel Rejected Message
cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.cancel_rejected_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- In Flight: Binary
  index, in_flight = cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.in_flight.dissect(buffer, index, packet, parent)

  -- Transaction Time: DateTime
  index, transaction_time = cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.transaction_time.dissect(buffer, index, packet, parent)

  -- Cl Ord Id: Text
  index, cl_ord_id = cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.cl_ord_id.dissect(buffer, index, packet, parent)

  -- Clearing Firm: Alpha
  index, clearing_firm = cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.clearing_firm.dissect(buffer, index, packet, parent)

  -- Routing Firm Id: Alpha
  index, routing_firm_id = cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.routing_firm_id.dissect(buffer, index, packet, parent)

  -- Cancel Reject Reason: Text
  index, cancel_reject_reason = cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.cancel_reject_reason.dissect(buffer, index, packet, parent)

  -- Text: Text
  index, text = cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.text.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Cancel Rejected Message
cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.cancel_rejected_message.dissect = function(buffer, offset, packet, parent)
  if show.structs then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.fields.cancel_rejected_message, buffer(offset, 0))
    local index = cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.cancel_rejected_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.cancel_rejected_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.cancel_rejected_message.fields(buffer, offset, packet, parent)
  end
end

-- Allocation Cancelled
cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.allocation_cancelled = {}

-- Size: Allocation Cancelled
cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.allocation_cancelled.size =
  cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.cl_ord_id.size + 
  cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.give_up_firm_id.size

-- Display: Allocation Cancelled
cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.allocation_cancelled.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Allocation Cancelled
cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.allocation_cancelled.fields = function(buffer, offset, packet, parent, allocation_cancelled_index)
  local index = offset

  -- Implicit Allocation Cancelled Index
  if allocation_cancelled_index ~= nil and show.indexes then
    local iteration = parent:add(omi_cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.fields.allocation_cancelled_index, allocation_cancelled_index)
    iteration:set_generated()
  end

  -- Cl Ord Id: Text
  index, cl_ord_id = cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.cl_ord_id.dissect(buffer, index, packet, parent)

  -- Give Up Firm Id: Alpha
  index, give_up_firm_id = cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.give_up_firm_id.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Allocation Cancelled
cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.allocation_cancelled.dissect = function(buffer, offset, packet, parent, allocation_cancelled_index)
  if show.structs then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.fields.allocation_cancelled, buffer(offset, 0))
    local index = cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.allocation_cancelled.fields(buffer, offset, packet, parent, allocation_cancelled_index)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.allocation_cancelled.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.allocation_cancelled.fields(buffer, offset, packet, parent, allocation_cancelled_index)
  end
end

-- Cross Order Cancelled Message
cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.cross_order_cancelled_message = {}

-- Calculate size of: Cross Order Cancelled Message
cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.cross_order_cancelled_message.size = function(buffer, offset)
  local index = 0

  index = index + cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.in_flight.size

  index = index + cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.transaction_time.size

  index = index + cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.cross_id.size

  index = index + cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.routing_firm_id.size

  index = index + cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.cancel_reason.size

  index = index + cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.alloc_cnt.size

  -- Calculate field size from count
  local allocation_cancelled_count = buffer(offset + index - 1, 1):le_uint()
  index = index + allocation_cancelled_count * 24

  return index
end

-- Display: Cross Order Cancelled Message
cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.cross_order_cancelled_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Cross Order Cancelled Message
cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.cross_order_cancelled_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- In Flight: Binary
  index, in_flight = cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.in_flight.dissect(buffer, index, packet, parent)

  -- Transaction Time: DateTime
  index, transaction_time = cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.transaction_time.dissect(buffer, index, packet, parent)

  -- Cross Id: Text
  index, cross_id = cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.cross_id.dissect(buffer, index, packet, parent)

  -- Routing Firm Id: Alpha
  index, routing_firm_id = cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.routing_firm_id.dissect(buffer, index, packet, parent)

  -- Cancel Reason: Text
  index, cancel_reason = cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.cancel_reason.dissect(buffer, index, packet, parent)

  -- Alloc Cnt: Binary
  index, alloc_cnt = cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.alloc_cnt.dissect(buffer, index, packet, parent)

  -- Repeating: Allocation Cancelled
  for allocation_cancelled_index = 1, alloc_cnt do
    index, allocation_cancelled = cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.allocation_cancelled.dissect(buffer, index, packet, parent, allocation_cancelled_index)
  end

  return index
end

-- Dissect: Cross Order Cancelled Message
cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.cross_order_cancelled_message.dissect = function(buffer, offset, packet, parent)
  if show.structs then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.fields.cross_order_cancelled_message, buffer(offset, 0))
    local index = cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.cross_order_cancelled_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.cross_order_cancelled_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.cross_order_cancelled_message.fields(buffer, offset, packet, parent)
  end
end

-- Quote Cancelled Message
cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.quote_cancelled_message = {}

-- Size: Quote Cancelled Message
cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.quote_cancelled_message.size =
  cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.in_flight.size + 
  cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.transaction_time.size + 
  cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.quote_update_id.size + 
  cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.order_id.size + 
  cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.quote_symbol.size + 
  cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.side.size + 
  cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.cancel_reason.size + 
  cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.cancel_sub_reason.size

-- Display: Quote Cancelled Message
cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.quote_cancelled_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Quote Cancelled Message
cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.quote_cancelled_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- In Flight: Binary
  index, in_flight = cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.in_flight.dissect(buffer, index, packet, parent)

  -- Transaction Time: DateTime
  index, transaction_time = cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.transaction_time.dissect(buffer, index, packet, parent)

  -- Quote Update Id: Text
  index, quote_update_id = cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.quote_update_id.dissect(buffer, index, packet, parent)

  -- Order Id: Binary
  index, order_id = cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.order_id.dissect(buffer, index, packet, parent)

  -- Quote Symbol: Alphanumeric
  index, quote_symbol = cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.quote_symbol.dissect(buffer, index, packet, parent)

  -- Side: Alphanumeric
  index, side = cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.side.dissect(buffer, index, packet, parent)

  -- Cancel Reason: Text
  index, cancel_reason = cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.cancel_reason.dissect(buffer, index, packet, parent)

  -- Cancel Sub Reason: Text
  index, cancel_sub_reason = cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.cancel_sub_reason.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Quote Cancelled Message
cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.quote_cancelled_message.dissect = function(buffer, offset, packet, parent)
  if show.structs then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.fields.quote_cancelled_message, buffer(offset, 0))
    local index = cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.quote_cancelled_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.quote_cancelled_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.quote_cancelled_message.fields(buffer, offset, packet, parent)
  end
end

-- Order Cancelled Message
cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.order_cancelled_message = {}

-- Size: Order Cancelled Message
cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.order_cancelled_message.size =
  cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.in_flight.size + 
  cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.transaction_time.size + 
  cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.cl_ord_id.size + 
  cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.cancel_reason.size + 
  cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.cancel_sub_reason.size + 
  cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.clearing_firm.size + 
  cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.routing_firm_id.size + 
  cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.symbol.size + 
  cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.request_received_time.size

-- Display: Order Cancelled Message
cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.order_cancelled_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Order Cancelled Message
cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.order_cancelled_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- In Flight: Binary
  index, in_flight = cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.in_flight.dissect(buffer, index, packet, parent)

  -- Transaction Time: DateTime
  index, transaction_time = cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.transaction_time.dissect(buffer, index, packet, parent)

  -- Cl Ord Id: Text
  index, cl_ord_id = cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.cl_ord_id.dissect(buffer, index, packet, parent)

  -- Cancel Reason: Text
  index, cancel_reason = cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.cancel_reason.dissect(buffer, index, packet, parent)

  -- Cancel Sub Reason: Text
  index, cancel_sub_reason = cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.cancel_sub_reason.dissect(buffer, index, packet, parent)

  -- Clearing Firm: Alpha
  index, clearing_firm = cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.clearing_firm.dissect(buffer, index, packet, parent)

  -- Routing Firm Id: Alpha
  index, routing_firm_id = cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.routing_firm_id.dissect(buffer, index, packet, parent)

  -- Symbol: Alphanumeric
  index, symbol = cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.symbol.dissect(buffer, index, packet, parent)

  -- Request Received Time: DateTime
  index, request_received_time = cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.request_received_time.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Order Cancelled Message
cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.order_cancelled_message.dissect = function(buffer, offset, packet, parent)
  if show.structs then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.fields.order_cancelled_message, buffer(offset, 0))
    local index = cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.order_cancelled_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.order_cancelled_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.order_cancelled_message.fields(buffer, offset, packet, parent)
  end
end

-- Modify Rejected Message
cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.modify_rejected_message = {}

-- Size: Modify Rejected Message
cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.modify_rejected_message.size =
  cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.in_flight.size + 
  cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.transaction_time.size + 
  cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.cl_ord_id.size + 
  cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.clearing_firm.size + 
  cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.routing_firm_id.size + 
  cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.orig_cl_ord_id.size + 
  cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.modify_reject_reason.size + 
  cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.text.size

-- Display: Modify Rejected Message
cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.modify_rejected_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Modify Rejected Message
cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.modify_rejected_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- In Flight: Binary
  index, in_flight = cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.in_flight.dissect(buffer, index, packet, parent)

  -- Transaction Time: DateTime
  index, transaction_time = cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.transaction_time.dissect(buffer, index, packet, parent)

  -- Cl Ord Id: Text
  index, cl_ord_id = cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.cl_ord_id.dissect(buffer, index, packet, parent)

  -- Clearing Firm: Alpha
  index, clearing_firm = cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.clearing_firm.dissect(buffer, index, packet, parent)

  -- Routing Firm Id: Alpha
  index, routing_firm_id = cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.routing_firm_id.dissect(buffer, index, packet, parent)

  -- Orig Cl Ord Id: Text
  index, orig_cl_ord_id = cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.orig_cl_ord_id.dissect(buffer, index, packet, parent)

  -- Modify Reject Reason: Text
  index, modify_reject_reason = cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.modify_reject_reason.dissect(buffer, index, packet, parent)

  -- Text: Text
  index, text = cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.text.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Modify Rejected Message
cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.modify_rejected_message.dissect = function(buffer, offset, packet, parent)
  if show.structs then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.fields.modify_rejected_message, buffer(offset, 0))
    local index = cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.modify_rejected_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.modify_rejected_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.modify_rejected_message.fields(buffer, offset, packet, parent)
  end
end

-- Quote Restated Message
cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.quote_restated_message = {}

-- Size: Quote Restated Message
cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.quote_restated_message.size =
  cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.in_flight.size + 
  cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.transaction_time.size + 
  cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.quote_update_id.size + 
  cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.order_id.size + 
  cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.leaves_qty.size + 
  cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.working_price.size + 
  cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.quote_symbol.size + 
  cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.side.size + 
  cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.restatement_reason.size

-- Display: Quote Restated Message
cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.quote_restated_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Quote Restated Message
cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.quote_restated_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- In Flight: Binary
  index, in_flight = cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.in_flight.dissect(buffer, index, packet, parent)

  -- Transaction Time: DateTime
  index, transaction_time = cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.transaction_time.dissect(buffer, index, packet, parent)

  -- Quote Update Id: Text
  index, quote_update_id = cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.quote_update_id.dissect(buffer, index, packet, parent)

  -- Order Id: Binary
  index, order_id = cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.order_id.dissect(buffer, index, packet, parent)

  -- Leaves Qty: Binary
  index, leaves_qty = cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.leaves_qty.dissect(buffer, index, packet, parent)

  -- Working Price: BinaryPrice
  index, working_price = cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.working_price.dissect(buffer, index, packet, parent)

  -- Quote Symbol: Alphanumeric
  index, quote_symbol = cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.quote_symbol.dissect(buffer, index, packet, parent)

  -- Side: Alphanumeric
  index, side = cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.side.dissect(buffer, index, packet, parent)

  -- Restatement Reason: Text
  index, restatement_reason = cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.restatement_reason.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Quote Restated Message
cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.quote_restated_message.dissect = function(buffer, offset, packet, parent)
  if show.structs then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.fields.quote_restated_message, buffer(offset, 0))
    local index = cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.quote_restated_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.quote_restated_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.quote_restated_message.fields(buffer, offset, packet, parent)
  end
end

-- Order Restated Message
cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.order_restated_message = {}

-- Size: Order Restated Message
cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.order_restated_message.size =
  cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.in_flight.size + 
  cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.transaction_time.size + 
  cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.cl_ord_id.size + 
  cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.order_id.size + 
  cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.clearing_firm.size + 
  cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.routing_firm_id.size + 
  cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.symbol.size + 
  cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.order_restatement_reason.size + 
  cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.order_qty.size + 
  cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.price.size + 
  cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.leaves_qty.size + 
  cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.display_price.size + 
  cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.working_price.size + 
  cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.base_liquidity_indicator.size + 
  cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.secondary_order_id.size + 
  cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.last_shares.size + 
  cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.last_px.size

-- Display: Order Restated Message
cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.order_restated_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Order Restated Message
cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.order_restated_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- In Flight: Binary
  index, in_flight = cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.in_flight.dissect(buffer, index, packet, parent)

  -- Transaction Time: DateTime
  index, transaction_time = cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.transaction_time.dissect(buffer, index, packet, parent)

  -- Cl Ord Id: Text
  index, cl_ord_id = cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.cl_ord_id.dissect(buffer, index, packet, parent)

  -- Order Id: Binary
  index, order_id = cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.order_id.dissect(buffer, index, packet, parent)

  -- Clearing Firm: Alpha
  index, clearing_firm = cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.clearing_firm.dissect(buffer, index, packet, parent)

  -- Routing Firm Id: Alpha
  index, routing_firm_id = cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.routing_firm_id.dissect(buffer, index, packet, parent)

  -- Symbol: Alphanumeric
  index, symbol = cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.symbol.dissect(buffer, index, packet, parent)

  -- Order Restatement Reason: Text
  index, order_restatement_reason = cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.order_restatement_reason.dissect(buffer, index, packet, parent)

  -- Order Qty: Binary
  index, order_qty = cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.order_qty.dissect(buffer, index, packet, parent)

  -- Price: BinaryPrice
  index, price = cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.price.dissect(buffer, index, packet, parent)

  -- Leaves Qty: Binary
  index, leaves_qty = cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.leaves_qty.dissect(buffer, index, packet, parent)

  -- Display Price: BinaryPrice
  index, display_price = cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.display_price.dissect(buffer, index, packet, parent)

  -- Working Price: BinaryPrice
  index, working_price = cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.working_price.dissect(buffer, index, packet, parent)

  -- Base Liquidity Indicator: Alphanumeric
  index, base_liquidity_indicator = cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.base_liquidity_indicator.dissect(buffer, index, packet, parent)

  -- Secondary Order Id: Binary
  index, secondary_order_id = cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.secondary_order_id.dissect(buffer, index, packet, parent)

  -- Last Shares: Binary
  index, last_shares = cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.last_shares.dissect(buffer, index, packet, parent)

  -- Last Px: BinaryPrice
  index, last_px = cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.last_px.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Order Restated Message
cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.order_restated_message.dissect = function(buffer, offset, packet, parent)
  if show.structs then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.fields.order_restated_message, buffer(offset, 0))
    local index = cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.order_restated_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.order_restated_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.order_restated_message.fields(buffer, offset, packet, parent)
  end
end

-- Order Modified Message
cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.order_modified_message = {}

-- Size: Order Modified Message
cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.order_modified_message.size =
  cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.in_flight.size + 
  cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.transaction_time.size + 
  cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.cl_ord_id.size + 
  cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.orig_cl_ord_id.size + 
  cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.order_id.size + 
  cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.clearing_firm.size + 
  cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.routing_firm_id.size + 
  cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.symbol.size + 
  cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.order_qty.size + 
  cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.price.size + 
  cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.ord_type.size + 
  cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.max_floor.size + 
  cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.stop_px.size + 
  cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.leaves_qty.size + 
  cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.display_price.size + 
  cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.working_price.size + 
  cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.base_liquidity_indicator.size + 
  cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.secondary_order_id.size + 
  cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.request_received_time.size

-- Display: Order Modified Message
cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.order_modified_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Order Modified Message
cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.order_modified_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- In Flight: Binary
  index, in_flight = cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.in_flight.dissect(buffer, index, packet, parent)

  -- Transaction Time: DateTime
  index, transaction_time = cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.transaction_time.dissect(buffer, index, packet, parent)

  -- Cl Ord Id: Text
  index, cl_ord_id = cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.cl_ord_id.dissect(buffer, index, packet, parent)

  -- Orig Cl Ord Id: Text
  index, orig_cl_ord_id = cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.orig_cl_ord_id.dissect(buffer, index, packet, parent)

  -- Order Id: Binary
  index, order_id = cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.order_id.dissect(buffer, index, packet, parent)

  -- Clearing Firm: Alpha
  index, clearing_firm = cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.clearing_firm.dissect(buffer, index, packet, parent)

  -- Routing Firm Id: Alpha
  index, routing_firm_id = cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.routing_firm_id.dissect(buffer, index, packet, parent)

  -- Symbol: Alphanumeric
  index, symbol = cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.symbol.dissect(buffer, index, packet, parent)

  -- Order Qty: Binary
  index, order_qty = cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.order_qty.dissect(buffer, index, packet, parent)

  -- Price: BinaryPrice
  index, price = cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.price.dissect(buffer, index, packet, parent)

  -- Ord Type: Alphanumeric
  index, ord_type = cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.ord_type.dissect(buffer, index, packet, parent)

  -- Max Floor: Binary
  index, max_floor = cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.max_floor.dissect(buffer, index, packet, parent)

  -- Stop Px: BinaryPrice
  index, stop_px = cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.stop_px.dissect(buffer, index, packet, parent)

  -- Leaves Qty: Binary
  index, leaves_qty = cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.leaves_qty.dissect(buffer, index, packet, parent)

  -- Display Price: BinaryPrice
  index, display_price = cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.display_price.dissect(buffer, index, packet, parent)

  -- Working Price: BinaryPrice
  index, working_price = cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.working_price.dissect(buffer, index, packet, parent)

  -- Base Liquidity Indicator: Alphanumeric
  index, base_liquidity_indicator = cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.base_liquidity_indicator.dissect(buffer, index, packet, parent)

  -- Secondary Order Id: Binary
  index, secondary_order_id = cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.secondary_order_id.dissect(buffer, index, packet, parent)

  -- Request Received Time: DateTime
  index, request_received_time = cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.request_received_time.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Order Modified Message
cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.order_modified_message.dissect = function(buffer, offset, packet, parent)
  if show.structs then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.fields.order_modified_message, buffer(offset, 0))
    local index = cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.order_modified_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.order_modified_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.order_modified_message.fields(buffer, offset, packet, parent)
  end
end

-- Quote Update Rejected Message
cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.quote_update_rejected_message = {}

-- Size: Quote Update Rejected Message
cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.quote_update_rejected_message.size =
  cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.in_flight.size + 
  cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.transaction_time.size + 
  cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.quote_update_id.size + 
  cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.quote_reject_reason.size

-- Display: Quote Update Rejected Message
cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.quote_update_rejected_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Quote Update Rejected Message
cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.quote_update_rejected_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- In Flight: Binary
  index, in_flight = cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.in_flight.dissect(buffer, index, packet, parent)

  -- Transaction Time: DateTime
  index, transaction_time = cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.transaction_time.dissect(buffer, index, packet, parent)

  -- Quote Update Id: Text
  index, quote_update_id = cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.quote_update_id.dissect(buffer, index, packet, parent)

  -- Quote Reject Reason: Text
  index, quote_reject_reason = cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.quote_reject_reason.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Quote Update Rejected Message
cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.quote_update_rejected_message.dissect = function(buffer, offset, packet, parent)
  if show.structs then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.fields.quote_update_rejected_message, buffer(offset, 0))
    local index = cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.quote_update_rejected_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.quote_update_rejected_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.quote_update_rejected_message.fields(buffer, offset, packet, parent)
  end
end

-- Cross Order Rejected Message
cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.cross_order_rejected_message = {}

-- Size: Cross Order Rejected Message
cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.cross_order_rejected_message.size =
  cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.in_flight.size + 
  cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.transaction_time.size + 
  cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.cross_id.size + 
  cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.routing_firm_id.size + 
  cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.order_reject_reason.size + 
  cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.text.size

-- Display: Cross Order Rejected Message
cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.cross_order_rejected_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Cross Order Rejected Message
cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.cross_order_rejected_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- In Flight: Binary
  index, in_flight = cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.in_flight.dissect(buffer, index, packet, parent)

  -- Transaction Time: DateTime
  index, transaction_time = cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.transaction_time.dissect(buffer, index, packet, parent)

  -- Cross Id: Text
  index, cross_id = cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.cross_id.dissect(buffer, index, packet, parent)

  -- Routing Firm Id: Alpha
  index, routing_firm_id = cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.routing_firm_id.dissect(buffer, index, packet, parent)

  -- Order Reject Reason: Text
  index, order_reject_reason = cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.order_reject_reason.dissect(buffer, index, packet, parent)

  -- Text: Text
  index, text = cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.text.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Cross Order Rejected Message
cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.cross_order_rejected_message.dissect = function(buffer, offset, packet, parent)
  if show.structs then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.fields.cross_order_rejected_message, buffer(offset, 0))
    local index = cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.cross_order_rejected_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.cross_order_rejected_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.cross_order_rejected_message.fields(buffer, offset, packet, parent)
  end
end

-- Order Rejected Message
cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.order_rejected_message = {}

-- Size: Order Rejected Message
cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.order_rejected_message.size =
  cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.in_flight.size + 
  cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.transaction_time.size + 
  cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.cl_ord_id.size + 
  cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.clearing_firm.size + 
  cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.routing_firm_id.size + 
  cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.order_reject_reason.size + 
  cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.text.size

-- Display: Order Rejected Message
cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.order_rejected_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Order Rejected Message
cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.order_rejected_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- In Flight: Binary
  index, in_flight = cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.in_flight.dissect(buffer, index, packet, parent)

  -- Transaction Time: DateTime
  index, transaction_time = cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.transaction_time.dissect(buffer, index, packet, parent)

  -- Cl Ord Id: Text
  index, cl_ord_id = cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.cl_ord_id.dissect(buffer, index, packet, parent)

  -- Clearing Firm: Alpha
  index, clearing_firm = cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.clearing_firm.dissect(buffer, index, packet, parent)

  -- Routing Firm Id: Alpha
  index, routing_firm_id = cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.routing_firm_id.dissect(buffer, index, packet, parent)

  -- Order Reject Reason: Text
  index, order_reject_reason = cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.order_reject_reason.dissect(buffer, index, packet, parent)

  -- Text: Text
  index, text = cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.text.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Order Rejected Message
cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.order_rejected_message.dissect = function(buffer, offset, packet, parent)
  if show.structs then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.fields.order_rejected_message, buffer(offset, 0))
    local index = cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.order_rejected_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.order_rejected_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.order_rejected_message.fields(buffer, offset, packet, parent)
  end
end

-- Quote Acknowledgement
cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.quote_acknowledgement = {}

-- Size: Quote Acknowledgement
cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.quote_acknowledgement.size =
  cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.order_id.size + 
  cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.quote_result.size + 
  cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.sub_liquidity_indicator.size + 
  cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.quote_reject_sub_reason.size

-- Display: Quote Acknowledgement
cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.quote_acknowledgement.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Quote Acknowledgement
cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.quote_acknowledgement.fields = function(buffer, offset, packet, parent, quote_acknowledgement_index)
  local index = offset

  -- Implicit Quote Acknowledgement Index
  if quote_acknowledgement_index ~= nil and show.indexes then
    local iteration = parent:add(omi_cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.fields.quote_acknowledgement_index, quote_acknowledgement_index)
    iteration:set_generated()
  end

  -- Order Id: Binary
  index, order_id = cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.order_id.dissect(buffer, index, packet, parent)

  -- Quote Result: Text
  index, quote_result = cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.quote_result.dissect(buffer, index, packet, parent)

  -- Sub Liquidity Indicator: Alphanumeric
  index, sub_liquidity_indicator = cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.sub_liquidity_indicator.dissect(buffer, index, packet, parent)

  -- Quote Reject Sub Reason: Text
  index, quote_reject_sub_reason = cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.quote_reject_sub_reason.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Quote Acknowledgement
cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.quote_acknowledgement.dissect = function(buffer, offset, packet, parent, quote_acknowledgement_index)
  if show.structs then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.fields.quote_acknowledgement, buffer(offset, 0))
    local index = cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.quote_acknowledgement.fields(buffer, offset, packet, parent, quote_acknowledgement_index)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.quote_acknowledgement.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.quote_acknowledgement.fields(buffer, offset, packet, parent, quote_acknowledgement_index)
  end
end

-- Quote Update Acknowledgement Message
cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.quote_update_acknowledgement_message = {}

-- Calculate size of: Quote Update Acknowledgement Message
cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.quote_update_acknowledgement_message.size = function(buffer, offset)
  local index = 0

  index = index + cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.in_flight.size

  index = index + cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.transaction_time.size

  index = index + cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.quote_update_id.size

  index = index + cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.request_received_time.size

  index = index + cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.quote_cnt.size

  -- Calculate field size from count
  local quote_acknowledgement_count = buffer(offset + index - 1, 1):le_uint()
  index = index + quote_acknowledgement_count * 11

  return index
end

-- Display: Quote Update Acknowledgement Message
cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.quote_update_acknowledgement_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Quote Update Acknowledgement Message
cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.quote_update_acknowledgement_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- In Flight: Binary
  index, in_flight = cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.in_flight.dissect(buffer, index, packet, parent)

  -- Transaction Time: DateTime
  index, transaction_time = cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.transaction_time.dissect(buffer, index, packet, parent)

  -- Quote Update Id: Text
  index, quote_update_id = cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.quote_update_id.dissect(buffer, index, packet, parent)

  -- Request Received Time: DateTime
  index, request_received_time = cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.request_received_time.dissect(buffer, index, packet, parent)

  -- Quote Cnt: Binary
  index, quote_cnt = cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.quote_cnt.dissect(buffer, index, packet, parent)

  -- Repeating: Quote Acknowledgement
  for quote_acknowledgement_index = 1, quote_cnt do
    index, quote_acknowledgement = cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.quote_acknowledgement.dissect(buffer, index, packet, parent, quote_acknowledgement_index)
  end

  return index
end

-- Dissect: Quote Update Acknowledgement Message
cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.quote_update_acknowledgement_message.dissect = function(buffer, offset, packet, parent)
  if show.structs then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.fields.quote_update_acknowledgement_message, buffer(offset, 0))
    local index = cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.quote_update_acknowledgement_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.quote_update_acknowledgement_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.quote_update_acknowledgement_message.fields(buffer, offset, packet, parent)
  end
end

-- Acknowledgement Allocation
cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.acknowledgement_allocation = {}

-- Size: Acknowledgement Allocation
cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.acknowledgement_allocation.size =
  cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.side.size + 
  cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.alloc_qty.size + 
  cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.give_up_firm_id.size

-- Display: Acknowledgement Allocation
cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.acknowledgement_allocation.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Acknowledgement Allocation
cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.acknowledgement_allocation.fields = function(buffer, offset, packet, parent, acknowledgement_allocation_index)
  local index = offset

  -- Implicit Acknowledgement Allocation Index
  if acknowledgement_allocation_index ~= nil and show.indexes then
    local iteration = parent:add(omi_cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.fields.acknowledgement_allocation_index, acknowledgement_allocation_index)
    iteration:set_generated()
  end

  -- Side: Alphanumeric
  index, side = cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.side.dissect(buffer, index, packet, parent)

  -- Alloc Qty: Binary
  index, alloc_qty = cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.alloc_qty.dissect(buffer, index, packet, parent)

  -- Give Up Firm Id: Alpha
  index, give_up_firm_id = cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.give_up_firm_id.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Acknowledgement Allocation
cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.acknowledgement_allocation.dissect = function(buffer, offset, packet, parent, acknowledgement_allocation_index)
  if show.structs then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.fields.acknowledgement_allocation, buffer(offset, 0))
    local index = cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.acknowledgement_allocation.fields(buffer, offset, packet, parent, acknowledgement_allocation_index)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.acknowledgement_allocation.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.acknowledgement_allocation.fields(buffer, offset, packet, parent, acknowledgement_allocation_index)
  end
end

-- Cross Order Acknowledgment Message
cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.cross_order_acknowledgment_message = {}

-- Calculate size of: Cross Order Acknowledgment Message
cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.cross_order_acknowledgment_message.size = function(buffer, offset)
  local index = 0

  index = index + cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.in_flight.size

  index = index + cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.transaction_time.size

  index = index + cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.cross_id.size

  index = index + cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.auction_id.size

  index = index + cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.price.size

  index = index + cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.symbol.size

  index = index + cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.order_qty.size

  index = index + cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.routing_firm_id.size

  index = index + cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.request_received_time.size

  index = index + cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.alloc_cnt.size

  -- Calculate field size from count
  local acknowledgement_allocation_count = buffer(offset + index - 1, 1):le_uint()
  index = index + acknowledgement_allocation_count * 9

  return index
end

-- Display: Cross Order Acknowledgment Message
cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.cross_order_acknowledgment_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Cross Order Acknowledgment Message
cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.cross_order_acknowledgment_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- In Flight: Binary
  index, in_flight = cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.in_flight.dissect(buffer, index, packet, parent)

  -- Transaction Time: DateTime
  index, transaction_time = cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.transaction_time.dissect(buffer, index, packet, parent)

  -- Cross Id: Text
  index, cross_id = cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.cross_id.dissect(buffer, index, packet, parent)

  -- Auction Id: Binary
  index, auction_id = cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.auction_id.dissect(buffer, index, packet, parent)

  -- Price: BinaryPrice
  index, price = cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.price.dissect(buffer, index, packet, parent)

  -- Symbol: Alphanumeric
  index, symbol = cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.symbol.dissect(buffer, index, packet, parent)

  -- Order Qty: Binary
  index, order_qty = cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.order_qty.dissect(buffer, index, packet, parent)

  -- Routing Firm Id: Alpha
  index, routing_firm_id = cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.routing_firm_id.dissect(buffer, index, packet, parent)

  -- Request Received Time: DateTime
  index, request_received_time = cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.request_received_time.dissect(buffer, index, packet, parent)

  -- Alloc Cnt: Binary
  index, alloc_cnt = cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.alloc_cnt.dissect(buffer, index, packet, parent)

  -- Repeating: Acknowledgement Allocation
  for acknowledgement_allocation_index = 1, alloc_cnt do
    index, acknowledgement_allocation = cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.acknowledgement_allocation.dissect(buffer, index, packet, parent, acknowledgement_allocation_index)
  end

  return index
end

-- Dissect: Cross Order Acknowledgment Message
cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.cross_order_acknowledgment_message.dissect = function(buffer, offset, packet, parent)
  if show.structs then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.fields.cross_order_acknowledgment_message, buffer(offset, 0))
    local index = cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.cross_order_acknowledgment_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.cross_order_acknowledgment_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.cross_order_acknowledgment_message.fields(buffer, offset, packet, parent)
  end
end

-- Order Acknowledgement Message
cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.order_acknowledgement_message = {}

-- Size: Order Acknowledgement Message
cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.order_acknowledgement_message.size =
  cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.in_flight.size + 
  cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.transaction_time.size + 
  cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.cl_ord_id.size + 
  cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.order_id.size + 
  cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.side.size + 
  cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.price.size + 
  cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.symbol.size + 
  cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.clearing_firm.size + 
  cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.leaves_qty.size + 
  cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.display_price.size + 
  cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.working_price.size + 
  cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.base_liquidity_indicator.size + 
  cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.sub_liquidity_indicator.size + 
  cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.routing_firm_id.size + 
  cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.request_received_time.size

-- Display: Order Acknowledgement Message
cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.order_acknowledgement_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Order Acknowledgement Message
cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.order_acknowledgement_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- In Flight: Binary
  index, in_flight = cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.in_flight.dissect(buffer, index, packet, parent)

  -- Transaction Time: DateTime
  index, transaction_time = cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.transaction_time.dissect(buffer, index, packet, parent)

  -- Cl Ord Id: Text
  index, cl_ord_id = cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.cl_ord_id.dissect(buffer, index, packet, parent)

  -- Order Id: Binary
  index, order_id = cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.order_id.dissect(buffer, index, packet, parent)

  -- Side: Alphanumeric
  index, side = cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.side.dissect(buffer, index, packet, parent)

  -- Price: BinaryPrice
  index, price = cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.price.dissect(buffer, index, packet, parent)

  -- Symbol: Alphanumeric
  index, symbol = cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.symbol.dissect(buffer, index, packet, parent)

  -- Clearing Firm: Alpha
  index, clearing_firm = cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.clearing_firm.dissect(buffer, index, packet, parent)

  -- Leaves Qty: Binary
  index, leaves_qty = cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.leaves_qty.dissect(buffer, index, packet, parent)

  -- Display Price: BinaryPrice
  index, display_price = cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.display_price.dissect(buffer, index, packet, parent)

  -- Working Price: BinaryPrice
  index, working_price = cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.working_price.dissect(buffer, index, packet, parent)

  -- Base Liquidity Indicator: Alphanumeric
  index, base_liquidity_indicator = cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.base_liquidity_indicator.dissect(buffer, index, packet, parent)

  -- Sub Liquidity Indicator: Alphanumeric
  index, sub_liquidity_indicator = cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.sub_liquidity_indicator.dissect(buffer, index, packet, parent)

  -- Routing Firm Id: Alpha
  index, routing_firm_id = cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.routing_firm_id.dissect(buffer, index, packet, parent)

  -- Request Received Time: DateTime
  index, request_received_time = cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.request_received_time.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Order Acknowledgement Message
cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.order_acknowledgement_message.dissect = function(buffer, offset, packet, parent)
  if show.structs then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.fields.order_acknowledgement_message, buffer(offset, 0))
    local index = cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.order_acknowledgement_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.order_acknowledgement_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.order_acknowledgement_message.fields(buffer, offset, packet, parent)
  end
end

-- Server Heartbeat
cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.server_heartbeat = {}

-- Display: Server Heartbeat
cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.server_heartbeat.display = function(packet, parent, length)
  return "Server Heartbeat"
end


-- Dissect: Server Heartbeat
cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.server_heartbeat.dissect = function(buffer, offset, packet, parent)
  local display = cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.server_heartbeat.display(packet, parent, 0)
  packet.cols.info = display

  return offset
end

-- Logout Response Message
cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.logout_response_message = {}

-- Size: Logout Response Message
cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.logout_response_message.size =
  cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.logout_reason.size + 
  cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.logout_reason_text.size

-- Display: Logout Response Message
cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.logout_response_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Logout Response Message
cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.logout_response_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Logout Reason: 1 Byte Ascii String Enum with 3 values
  index, logout_reason = cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.logout_reason.dissect(buffer, index, packet, parent)

  -- Logout Reason Text: 60 Byte Ascii String
  index, logout_reason_text = cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.logout_reason_text.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Logout Response Message
cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.logout_response_message.dissect = function(buffer, offset, packet, parent)
  if show.structs then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.fields.logout_response_message, buffer(offset, 0))
    local index = cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.logout_response_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.logout_response_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.logout_response_message.fields(buffer, offset, packet, parent)
  end
end

-- Replay Complete
cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.replay_complete = {}

-- Display: Replay Complete
cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.replay_complete.display = function(packet, parent, length)
  return "Replay Complete"
end


-- Dissect: Replay Complete
cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.replay_complete.dissect = function(buffer, offset, packet, parent)
  local display = cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.replay_complete.display(packet, parent, 0)
  packet.cols.info = display

  return offset
end

-- Unit Sequence
cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.unit_sequence = {}

-- Size: Unit Sequence
cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.unit_sequence.size =
  cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.unit_number.size + 
  cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.sequence_number.size

-- Display: Unit Sequence
cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.unit_sequence.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Unit Sequence
cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.unit_sequence.fields = function(buffer, offset, packet, parent, unit_sequence_index)
  local index = offset

  -- Implicit Unit Sequence Index
  if unit_sequence_index ~= nil and show.indexes then
    local iteration = parent:add(omi_cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.fields.unit_sequence_index, unit_sequence_index)
    iteration:set_generated()
  end

  -- Unit Number: 1 Byte Unsigned Fixed Width Integer
  index, unit_number = cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.unit_number.dissect(buffer, index, packet, parent)

  -- Sequence Number: 4 Byte Unsigned Fixed Width Integer
  index, sequence_number = cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.sequence_number.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Unit Sequence
cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.unit_sequence.dissect = function(buffer, offset, packet, parent, unit_sequence_index)
  if show.structs then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.fields.unit_sequence, buffer(offset, 0))
    local index = cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.unit_sequence.fields(buffer, offset, packet, parent, unit_sequence_index)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.unit_sequence.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.unit_sequence.fields(buffer, offset, packet, parent, unit_sequence_index)
  end
end

-- Login Response Message
cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.login_response_message = {}

-- Calculate size of: Login Response Message
cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.login_response_message.size = function(buffer, offset)
  local index = 0

  index = index + cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.login_response_status.size

  index = index + cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.login_response_text.size

  index = index + cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.client_sequence.size

  index = index + cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.number_of_units.size

  -- Calculate field size from count
  local unit_sequence_count = buffer(offset + index - 1, 1):le_uint()
  index = index + unit_sequence_count * 5

  return index
end

-- Display: Login Response Message
cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.login_response_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Login Response Message
cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.login_response_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Login Response Status: 1 Byte Ascii String Enum with 8 values
  index, login_response_status = cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.login_response_status.dissect(buffer, index, packet, parent)

  -- Login Response Text: 60 Byte Ascii String
  index, login_response_text = cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.login_response_text.dissect(buffer, index, packet, parent)

  -- Client Sequence: 4 Byte Unsigned Fixed Width Integer
  index, client_sequence = cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.client_sequence.dissect(buffer, index, packet, parent)

  -- Number Of Units: 1 Byte Unsigned Fixed Width Integer
  index, number_of_units = cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.number_of_units.dissect(buffer, index, packet, parent)

  -- Repeating: Unit Sequence
  for unit_sequence_index = 1, number_of_units do
    index, unit_sequence = cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.unit_sequence.dissect(buffer, index, packet, parent, unit_sequence_index)
  end

  return index
end

-- Dissect: Login Response Message
cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.login_response_message.dissect = function(buffer, offset, packet, parent)
  if show.structs then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.fields.login_response_message, buffer(offset, 0))
    local index = cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.login_response_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.login_response_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.login_response_message.fields(buffer, offset, packet, parent)
  end
end

-- Exchange Message
cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.exchange_message = {}

-- Dissect: Exchange Message
cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.exchange_message.dissect = function(buffer, offset, packet, parent, exchange_message_type)
  -- Dissect Login Response Message
  if exchange_message_type == 501 then
    return cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.login_response_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Replay Complete
  if exchange_message_type == 502 then
    return cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.replay_complete.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Logout Response Message
  if exchange_message_type == 503 then
    return cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.logout_response_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Server Heartbeat
  if exchange_message_type == 504 then
    return cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.server_heartbeat.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Order Acknowledgement Message
  if exchange_message_type == 0x09C5 then
    return cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.order_acknowledgement_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Cross Order Acknowledgment Message
  if exchange_message_type == 0x09C6 then
    return cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.cross_order_acknowledgment_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Quote Update Acknowledgement Message
  if exchange_message_type == 0x09D5 then
    return cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.quote_update_acknowledgement_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Order Rejected Message
  if exchange_message_type == 0x09C7 then
    return cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.order_rejected_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Cross Order Rejected Message
  if exchange_message_type == 0x09C8 then
    return cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.cross_order_rejected_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Quote Update Rejected Message
  if exchange_message_type == 0x09D6 then
    return cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.quote_update_rejected_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Order Modified Message
  if exchange_message_type == 0x09CB then
    return cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.order_modified_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Order Restated Message
  if exchange_message_type == 0x09CD then
    return cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.order_restated_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Quote Restated Message
  if exchange_message_type == 0x09D9 then
    return cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.quote_restated_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Modify Rejected Message
  if exchange_message_type == 0x09CC then
    return cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.modify_rejected_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Order Cancelled Message
  if exchange_message_type == 0x09D0 then
    return cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.order_cancelled_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Quote Cancelled Message
  if exchange_message_type == 0x09D7 then
    return cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.quote_cancelled_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Cross Order Cancelled Message
  if exchange_message_type == 0x09D1 then
    return cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.cross_order_cancelled_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Cancel Rejected Message
  if exchange_message_type == 0x09D2 then
    return cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.cancel_rejected_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Order Execution Message
  if exchange_message_type == 0x09D3 then
    return cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.order_execution_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Quote Execution Message
  if exchange_message_type == 0x09D8 then
    return cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.quote_execution_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Trade Cancel Correct Message
  if exchange_message_type == 0x09D4 then
    return cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.trade_cancel_correct_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Purge Rejected Message
  if exchange_message_type == 0x09DE then
    return cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.purge_rejected_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Reset Risk Acknowledgement Message
  if exchange_message_type == 0x09DA then
    return cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.reset_risk_acknowledgement_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Mass Cancel Acknowledgment Message
  if exchange_message_type == 0x09DB then
    return cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.mass_cancel_acknowledgment_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Mass Cancel Rejected Message
  if exchange_message_type == 0x09DC then
    return cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.mass_cancel_rejected_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Purge Acknowledgement Message
  if exchange_message_type == 0x09DD then
    return cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.purge_acknowledgement_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Purge Notification Message
  if exchange_message_type == 0x09DF then
    return cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.purge_notification_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect New Complex Instrument Accepted Message
  if exchange_message_type == 0x09C9 then
    return cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.new_complex_instrument_accepted_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect New Complex Instrument Rejected Message
  if exchange_message_type == 0x09CA then
    return cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.new_complex_instrument_rejected_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Carried Restatement Message
  if exchange_message_type == 0x09CE then
    return cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.carried_restatement_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Done For Day Message
  if exchange_message_type == 0x09CF then
    return cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.done_for_day_message.dissect(buffer, offset, packet, parent)
  end

  return offset
end

-- Exchange Message Header
cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.exchange_message_header = {}

-- Size: Exchange Message Header
cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.exchange_message_header.size =
  cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.start_of_message.size + 
  cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.message_length.size + 
  cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.exchange_message_type.size + 
  cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.matching_unit.size + 
  cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.reserved_field.size + 
  cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.sequence_number.size

-- Display: Exchange Message Header
cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.exchange_message_header.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Exchange Message Header
cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.exchange_message_header.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Start Of Message: 2 Byte Unsigned Fixed Width Integer
  index, start_of_message = cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.start_of_message.dissect(buffer, index, packet, parent)

  -- Message Length: 2 Byte Unsigned Fixed Width Integer
  index, message_length = cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.message_length.dissect(buffer, index, packet, parent)

  -- Exchange Message Type: 2 Byte Unsigned Fixed Width Integer Enum with 31 values
  index, exchange_message_type = cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.exchange_message_type.dissect(buffer, index, packet, parent)

  -- Matching Unit: 1 Byte Unsigned Fixed Width Integer
  index, matching_unit = cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.matching_unit.dissect(buffer, index, packet, parent)

  -- Reserved Field: 1 Byte Unsigned Fixed Width Integer
  index, reserved_field = cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.reserved_field.dissect(buffer, index, packet, parent)

  -- Sequence Number: 4 Byte Unsigned Fixed Width Integer
  index, sequence_number = cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.sequence_number.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Exchange Message Header
cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.exchange_message_header.dissect = function(buffer, offset, packet, parent)
  if show.structs then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.fields.exchange_message_header, buffer(offset, 0))
    local index = cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.exchange_message_header.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.exchange_message_header.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.exchange_message_header.fields(buffer, offset, packet, parent)
  end
end

-- Exchange Packet
cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.exchange_packet = {}

-- Verify required size of Tcp packet
cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.exchange_packet.requiredsize = function(buffer)
  return buffer:len() >= cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.exchange_message_header.size
end

-- Dissect Exchange Packet
cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.exchange_packet.dissect = function(buffer, packet, parent)
  local index = 0

  -- Exchange Message Header: Struct of 6 fields
  index, exchange_message_header = cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.exchange_message_header.dissect(buffer, index, packet, parent)

  -- Dependency element: Exchange Message Type
  local exchange_message_type = buffer(index - 8, 2):le_uint()

  -- Exchange Message: Runtime Type with 31 branches
  index = cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.exchange_message.dissect(buffer, index, packet, parent, exchange_message_type)

  return index
end

-- Reset Risk Message
cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.reset_risk_message = {}

-- Size: Reset Risk Message
cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.reset_risk_message.size =
  cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.risk_status_id.size + 
  cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.risk_reset.size + 
  cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.clearing_firm.size + 
  cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.risk_root.size + 
  cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.target_matching_unit.size + 
  cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.custom_group_id.size + 
  cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.scratch_pad.size

-- Display: Reset Risk Message
cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.reset_risk_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Reset Risk Message
cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.reset_risk_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Risk Status Id: Text
  index, risk_status_id = cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.risk_status_id.dissect(buffer, index, packet, parent)

  -- Risk Reset: Text
  index, risk_reset = cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.risk_reset.dissect(buffer, index, packet, parent)

  -- Clearing Firm: Alpha
  index, clearing_firm = cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.clearing_firm.dissect(buffer, index, packet, parent)

  -- Risk Root: Text
  index, risk_root = cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.risk_root.dissect(buffer, index, packet, parent)

  -- Target Matching Unit: Binary
  index, target_matching_unit = cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.target_matching_unit.dissect(buffer, index, packet, parent)

  -- Custom Group Id: Binary
  index, custom_group_id = cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.custom_group_id.dissect(buffer, index, packet, parent)

  -- Scratch Pad: Binary
  index, scratch_pad = cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.scratch_pad.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Reset Risk Message
cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.reset_risk_message.dissect = function(buffer, offset, packet, parent)
  if show.structs then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.fields.reset_risk_message, buffer(offset, 0))
    local index = cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.reset_risk_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.reset_risk_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.reset_risk_message.fields(buffer, offset, packet, parent)
  end
end

-- Mass Cancel Inst
cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.mass_cancel_inst = {}

-- Size: Mass Cancel Inst
cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.mass_cancel_inst.size =
  cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.clearing_firm_filter.size + 
  cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.acknowledgement_style.size + 
  cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.lockout_instruction.size + 
  cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.instrument_type_filter.size + 
  cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.gtc_order_filter.size + 
  cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.instruction_details.size

-- Display: Mass Cancel Inst
cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.mass_cancel_inst.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Mass Cancel Inst
cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.mass_cancel_inst.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Clearing Firm Filter: Alphanumeric
  index, clearing_firm_filter = cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.clearing_firm_filter.dissect(buffer, index, packet, parent)

  -- Acknowledgement Style: Alphanumeric
  index, acknowledgement_style = cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.acknowledgement_style.dissect(buffer, index, packet, parent)

  -- Lockout Instruction: Alphanumeric
  index, lockout_instruction = cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.lockout_instruction.dissect(buffer, index, packet, parent)

  -- Instrument Type Filter: Alphanumeric
  index, instrument_type_filter = cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.instrument_type_filter.dissect(buffer, index, packet, parent)

  -- Gtc Order Filter: Alphanumeric
  index, gtc_order_filter = cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.gtc_order_filter.dissect(buffer, index, packet, parent)

  -- Instruction Details: Alphanumeric
  index, instruction_details = cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.instruction_details.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Mass Cancel Inst
cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.mass_cancel_inst.dissect = function(buffer, offset, packet, parent)
  if show.structs then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.fields.mass_cancel_inst, buffer(offset, 0))
    local index = cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.mass_cancel_inst.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.mass_cancel_inst.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.mass_cancel_inst.fields(buffer, offset, packet, parent)
  end
end

-- Purge Orders Message
cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.purge_orders_message = {}

-- Calculate size of: Purge Orders Message
cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.purge_orders_message.size = function(buffer, offset)
  local index = 0

  index = index + cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.mass_cancel_id.size

  index = index + cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.clearing_firm.size

  index = index + cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.routing_firm_id.size

  index = index + cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.risk_root.size

  index = index + cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.mass_cancel_inst.size

  index = index + cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.send_time.size

  index = index + cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.scratch_pad.size

  index = index + cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.custom_group_id_cnt.size

  -- Calculate field size from count
  local custom_group_id_count = buffer(offset + index - 1, 1):le_uint()
  index = index + custom_group_id_count * 2

  return index
end

-- Display: Purge Orders Message
cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.purge_orders_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Purge Orders Message
cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.purge_orders_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Mass Cancel Id: Text
  index, mass_cancel_id = cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.mass_cancel_id.dissect(buffer, index, packet, parent)

  -- Clearing Firm: Alpha
  index, clearing_firm = cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.clearing_firm.dissect(buffer, index, packet, parent)

  -- Routing Firm Id: Alpha
  index, routing_firm_id = cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.routing_firm_id.dissect(buffer, index, packet, parent)

  -- Risk Root: Text
  index, risk_root = cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.risk_root.dissect(buffer, index, packet, parent)

  -- Mass Cancel Inst: Struct of 6 fields
  index, mass_cancel_inst = cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.mass_cancel_inst.dissect(buffer, index, packet, parent)

  -- Send Time: DateTime
  index, send_time = cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.send_time.dissect(buffer, index, packet, parent)

  -- Scratch Pad: Binary
  index, scratch_pad = cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.scratch_pad.dissect(buffer, index, packet, parent)

  -- Custom Group Id Cnt: Binary
  index, custom_group_id_cnt = cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.custom_group_id_cnt.dissect(buffer, index, packet, parent)

  -- Repeating: Custom Group Id
  for custom_group_id_index = 1, custom_group_id_cnt do
    index, custom_group_id = cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.custom_group_id.dissect(buffer, index, packet, parent, custom_group_id_index)
  end

  return index
end

-- Dissect: Purge Orders Message
cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.purge_orders_message.dissect = function(buffer, offset, packet, parent)
  if show.structs then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.fields.purge_orders_message, buffer(offset, 0))
    local index = cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.purge_orders_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.purge_orders_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.purge_orders_message.fields(buffer, offset, packet, parent)
  end
end

-- Quote Short
cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.quote_short = {}

-- Size: Quote Short
cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.quote_short.size =
  cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.quote_symbol.size + 
  cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.side.size + 
  cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.open_close.size + 
  cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.price_short.size + 
  cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.order_qty_short.size + 
  cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.scratch_pad.size

-- Display: Quote Short
cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.quote_short.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Quote Short
cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.quote_short.fields = function(buffer, offset, packet, parent, quote_short_index)
  local index = offset

  -- Implicit Quote Short Index
  if quote_short_index ~= nil and show.indexes then
    local iteration = parent:add(omi_cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.fields.quote_short_index, quote_short_index)
    iteration:set_generated()
  end

  -- Quote Symbol: Alphanumeric
  index, quote_symbol = cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.quote_symbol.dissect(buffer, index, packet, parent)

  -- Side: Alphanumeric
  index, side = cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.side.dissect(buffer, index, packet, parent)

  -- Open Close: Alphanumeric
  index, open_close = cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.open_close.dissect(buffer, index, packet, parent)

  -- Price Short: ShortBinaryPrice
  index, price_short = cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.price_short.dissect(buffer, index, packet, parent)

  -- Order Qty Short: Binary
  index, order_qty_short = cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.order_qty_short.dissect(buffer, index, packet, parent)

  -- Scratch Pad: Binary
  index, scratch_pad = cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.scratch_pad.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Quote Short
cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.quote_short.dissect = function(buffer, offset, packet, parent, quote_short_index)
  if show.structs then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.fields.quote_short, buffer(offset, 0))
    local index = cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.quote_short.fields(buffer, offset, packet, parent, quote_short_index)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.quote_short.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.quote_short.fields(buffer, offset, packet, parent, quote_short_index)
  end
end

-- Quote Update Short Message
cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.quote_update_short_message = {}

-- Calculate size of: Quote Update Short Message
cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.quote_update_short_message.size = function(buffer, offset)
  local index = 0

  index = index + cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.quote_update_id.size

  index = index + cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.clearing_firm.size

  index = index + cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.clearing_account.size

  index = index + cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.custom_group_id.size

  index = index + cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.send_time.size

  index = index + cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.posting_instruction.size

  index = index + cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.session_eligibility.size

  index = index + cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.size_modifier.size

  index = index + cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.scratch_pad.size

  index = index + cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.quote_cnt.size

  -- Calculate field size from count
  local quote_short_count = buffer(offset + index - 1, 1):le_uint()
  index = index + quote_short_count * 11

  return index
end

-- Display: Quote Update Short Message
cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.quote_update_short_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Quote Update Short Message
cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.quote_update_short_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Quote Update Id: Text
  index, quote_update_id = cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.quote_update_id.dissect(buffer, index, packet, parent)

  -- Clearing Firm: Alpha
  index, clearing_firm = cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.clearing_firm.dissect(buffer, index, packet, parent)

  -- Clearing Account: Text
  index, clearing_account = cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.clearing_account.dissect(buffer, index, packet, parent)

  -- Custom Group Id: Binary
  index, custom_group_id = cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.custom_group_id.dissect(buffer, index, packet, parent)

  -- Send Time: DateTime
  index, send_time = cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.send_time.dissect(buffer, index, packet, parent)

  -- Posting Instruction: Alpha
  index, posting_instruction = cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.posting_instruction.dissect(buffer, index, packet, parent)

  -- Session Eligibility: Alpha
  index, session_eligibility = cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.session_eligibility.dissect(buffer, index, packet, parent)

  -- Size Modifier: Text
  index, size_modifier = cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.size_modifier.dissect(buffer, index, packet, parent)

  -- Scratch Pad: Binary
  index, scratch_pad = cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.scratch_pad.dissect(buffer, index, packet, parent)

  -- Quote Cnt: Binary
  index, quote_cnt = cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.quote_cnt.dissect(buffer, index, packet, parent)

  -- Repeating: Quote Short
  for quote_short_index = 1, quote_cnt do
    index, quote_short = cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.quote_short.dissect(buffer, index, packet, parent, quote_short_index)
  end

  return index
end

-- Dissect: Quote Update Short Message
cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.quote_update_short_message.dissect = function(buffer, offset, packet, parent)
  if show.structs then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.fields.quote_update_short_message, buffer(offset, 0))
    local index = cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.quote_update_short_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.quote_update_short_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.quote_update_short_message.fields(buffer, offset, packet, parent)
  end
end

-- Quote
cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.quote = {}

-- Size: Quote
cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.quote.size =
  cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.quote_symbol.size + 
  cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.side.size + 
  cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.open_close.size + 
  cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.price.size + 
  cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.order_qty.size + 
  cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.scratch_pad.size

-- Display: Quote
cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.quote.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Quote
cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.quote.fields = function(buffer, offset, packet, parent, quote_index)
  local index = offset

  -- Implicit Quote Index
  if quote_index ~= nil and show.indexes then
    local iteration = parent:add(omi_cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.fields.quote_index, quote_index)
    iteration:set_generated()
  end

  -- Quote Symbol: Alphanumeric
  index, quote_symbol = cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.quote_symbol.dissect(buffer, index, packet, parent)

  -- Side: Alphanumeric
  index, side = cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.side.dissect(buffer, index, packet, parent)

  -- Open Close: Alphanumeric
  index, open_close = cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.open_close.dissect(buffer, index, packet, parent)

  -- Price: BinaryPrice
  index, price = cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.price.dissect(buffer, index, packet, parent)

  -- Order Qty: Binary
  index, order_qty = cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.order_qty.dissect(buffer, index, packet, parent)

  -- Scratch Pad: Binary
  index, scratch_pad = cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.scratch_pad.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Quote
cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.quote.dissect = function(buffer, offset, packet, parent, quote_index)
  if show.structs then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.fields.quote, buffer(offset, 0))
    local index = cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.quote.fields(buffer, offset, packet, parent, quote_index)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.quote.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.quote.fields(buffer, offset, packet, parent, quote_index)
  end
end

-- Quote Update Message
cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.quote_update_message = {}

-- Calculate size of: Quote Update Message
cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.quote_update_message.size = function(buffer, offset)
  local index = 0

  index = index + cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.quote_update_id.size

  index = index + cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.clearing_firm.size

  index = index + cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.clearing_account.size

  index = index + cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.cmta_number.size

  index = index + cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.account.size

  index = index + cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.custom_group_id.size

  index = index + cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.send_time.size

  index = index + cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.posting_instruction.size

  index = index + cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.session_eligibility.size

  index = index + cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.size_modifier.size

  index = index + cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.scratch_pad.size

  index = index + cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.quote_cnt.size

  -- Calculate field size from count
  local quote_count = buffer(offset + index - 1, 1):le_uint()
  index = index + quote_count * 17

  return index
end

-- Display: Quote Update Message
cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.quote_update_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Quote Update Message
cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.quote_update_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Quote Update Id: Text
  index, quote_update_id = cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.quote_update_id.dissect(buffer, index, packet, parent)

  -- Clearing Firm: Alpha
  index, clearing_firm = cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.clearing_firm.dissect(buffer, index, packet, parent)

  -- Clearing Account: Text
  index, clearing_account = cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.clearing_account.dissect(buffer, index, packet, parent)

  -- Cmta Number: Binary
  index, cmta_number = cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.cmta_number.dissect(buffer, index, packet, parent)

  -- Account: Text
  index, account = cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.account.dissect(buffer, index, packet, parent)

  -- Custom Group Id: Binary
  index, custom_group_id = cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.custom_group_id.dissect(buffer, index, packet, parent)

  -- Send Time: DateTime
  index, send_time = cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.send_time.dissect(buffer, index, packet, parent)

  -- Posting Instruction: Alpha
  index, posting_instruction = cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.posting_instruction.dissect(buffer, index, packet, parent)

  -- Session Eligibility: Alpha
  index, session_eligibility = cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.session_eligibility.dissect(buffer, index, packet, parent)

  -- Size Modifier: Text
  index, size_modifier = cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.size_modifier.dissect(buffer, index, packet, parent)

  -- Scratch Pad: Binary
  index, scratch_pad = cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.scratch_pad.dissect(buffer, index, packet, parent)

  -- Quote Cnt: Binary
  index, quote_cnt = cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.quote_cnt.dissect(buffer, index, packet, parent)

  -- Repeating: Quote
  for quote_index = 1, quote_cnt do
    index, quote = cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.quote.dissect(buffer, index, packet, parent, quote_index)
  end

  return index
end

-- Dissect: Quote Update Message
cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.quote_update_message.dissect = function(buffer, offset, packet, parent)
  if show.structs then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.fields.quote_update_message, buffer(offset, 0))
    local index = cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.quote_update_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.quote_update_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.quote_update_message.fields(buffer, offset, packet, parent)
  end
end

-- Modify Order Message
cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.modify_order_message = {}

-- Size: Modify Order Message
cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.modify_order_message.size =
  cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.cl_ord_id.size + 
  cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.orig_cl_ord_id.size + 
  cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.clearing_firm.size + 
  cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.routing_firm_id.size + 
  cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.order_qty.size + 
  cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.price.size + 
  cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.ord_type.size + 
  cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.max_floor.size + 
  cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.stop_px.size + 
  cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.cancel_orig_on_reject.size + 
  cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.reserved.size + 
  cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.scratch_pad.size

-- Display: Modify Order Message
cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.modify_order_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Modify Order Message
cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.modify_order_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Cl Ord Id: Text
  index, cl_ord_id = cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.cl_ord_id.dissect(buffer, index, packet, parent)

  -- Orig Cl Ord Id: Text
  index, orig_cl_ord_id = cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.orig_cl_ord_id.dissect(buffer, index, packet, parent)

  -- Clearing Firm: Alpha
  index, clearing_firm = cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.clearing_firm.dissect(buffer, index, packet, parent)

  -- Routing Firm Id: Alpha
  index, routing_firm_id = cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.routing_firm_id.dissect(buffer, index, packet, parent)

  -- Order Qty: Binary
  index, order_qty = cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.order_qty.dissect(buffer, index, packet, parent)

  -- Price: BinaryPrice
  index, price = cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.price.dissect(buffer, index, packet, parent)

  -- Ord Type: Alphanumeric
  index, ord_type = cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.ord_type.dissect(buffer, index, packet, parent)

  -- Max Floor: Binary
  index, max_floor = cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.max_floor.dissect(buffer, index, packet, parent)

  -- Stop Px: BinaryPrice
  index, stop_px = cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.stop_px.dissect(buffer, index, packet, parent)

  -- Cancel Orig On Reject: Alpha
  index, cancel_orig_on_reject = cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.cancel_orig_on_reject.dissect(buffer, index, packet, parent)

  -- Reserved: Binary
  index, reserved = cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.reserved.dissect(buffer, index, packet, parent)

  -- Scratch Pad: Binary
  index, scratch_pad = cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.scratch_pad.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Modify Order Message
cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.modify_order_message.dissect = function(buffer, offset, packet, parent)
  if show.structs then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.fields.modify_order_message, buffer(offset, 0))
    local index = cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.modify_order_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.modify_order_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.modify_order_message.fields(buffer, offset, packet, parent)
  end
end

-- Mass Cancel Order Message
cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.mass_cancel_order_message = {}

-- Size: Mass Cancel Order Message
cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.mass_cancel_order_message.size =
  cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.mass_cancel_id.size + 
  cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.clearing_firm.size + 
  cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.routing_firm_id.size + 
  cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.risk_root.size + 
  cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.mass_cancel_inst.size + 
  cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.send_time.size + 
  cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.scratch_pad.size

-- Display: Mass Cancel Order Message
cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.mass_cancel_order_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Mass Cancel Order Message
cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.mass_cancel_order_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Mass Cancel Id: Text
  index, mass_cancel_id = cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.mass_cancel_id.dissect(buffer, index, packet, parent)

  -- Clearing Firm: Alpha
  index, clearing_firm = cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.clearing_firm.dissect(buffer, index, packet, parent)

  -- Routing Firm Id: Alpha
  index, routing_firm_id = cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.routing_firm_id.dissect(buffer, index, packet, parent)

  -- Risk Root: Text
  index, risk_root = cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.risk_root.dissect(buffer, index, packet, parent)

  -- Mass Cancel Inst: Struct of 6 fields
  index, mass_cancel_inst = cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.mass_cancel_inst.dissect(buffer, index, packet, parent)

  -- Send Time: DateTime
  index, send_time = cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.send_time.dissect(buffer, index, packet, parent)

  -- Scratch Pad: Binary
  index, scratch_pad = cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.scratch_pad.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Mass Cancel Order Message
cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.mass_cancel_order_message.dissect = function(buffer, offset, packet, parent)
  if show.structs then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.fields.mass_cancel_order_message, buffer(offset, 0))
    local index = cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.mass_cancel_order_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.mass_cancel_order_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.mass_cancel_order_message.fields(buffer, offset, packet, parent)
  end
end

-- Cancel Order Message
cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.cancel_order_message = {}

-- Size: Cancel Order Message
cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.cancel_order_message.size =
  cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.orig_cl_ord_id.size + 
  cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.clearing_firm.size + 
  cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.routing_firm_id.size + 
  cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.scratch_pad.size

-- Display: Cancel Order Message
cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.cancel_order_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Cancel Order Message
cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.cancel_order_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Orig Cl Ord Id: Text
  index, orig_cl_ord_id = cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.orig_cl_ord_id.dissect(buffer, index, packet, parent)

  -- Clearing Firm: Alpha
  index, clearing_firm = cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.clearing_firm.dissect(buffer, index, packet, parent)

  -- Routing Firm Id: Alpha
  index, routing_firm_id = cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.routing_firm_id.dissect(buffer, index, packet, parent)

  -- Scratch Pad: Binary
  index, scratch_pad = cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.scratch_pad.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Cancel Order Message
cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.cancel_order_message.dissect = function(buffer, offset, packet, parent)
  if show.structs then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.fields.cancel_order_message, buffer(offset, 0))
    local index = cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.cancel_order_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.cancel_order_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.cancel_order_message.fields(buffer, offset, packet, parent)
  end
end

-- Allocation
cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.allocation = {}

-- Size: Allocation
cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.allocation.size =
  cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.side.size + 
  cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.alloc_qty.size + 
  cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.cl_ord_id.size + 
  cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.capacity.size + 
  cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.open_close.size + 
  cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.give_up_firm_id.size + 
  cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.account.size + 
  cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.cmta_number.size + 
  cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.clearing_account.size + 
  cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.clearing_optional_data.size + 
  cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.frequent_trader_id.size

-- Display: Allocation
cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.allocation.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Allocation
cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.allocation.fields = function(buffer, offset, packet, parent, allocation_index)
  local index = offset

  -- Implicit Allocation Index
  if allocation_index ~= nil and show.indexes then
    local iteration = parent:add(omi_cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.fields.allocation_index, allocation_index)
    iteration:set_generated()
  end

  -- Side: Alphanumeric
  index, side = cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.side.dissect(buffer, index, packet, parent)

  -- Alloc Qty: Binary
  index, alloc_qty = cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.alloc_qty.dissect(buffer, index, packet, parent)

  -- Cl Ord Id: Text
  index, cl_ord_id = cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.cl_ord_id.dissect(buffer, index, packet, parent)

  -- Capacity: Alpha
  index, capacity = cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.capacity.dissect(buffer, index, packet, parent)

  -- Open Close: Alphanumeric
  index, open_close = cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.open_close.dissect(buffer, index, packet, parent)

  -- Give Up Firm Id: Alpha
  index, give_up_firm_id = cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.give_up_firm_id.dissect(buffer, index, packet, parent)

  -- Account: Text
  index, account = cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.account.dissect(buffer, index, packet, parent)

  -- Cmta Number: Binary
  index, cmta_number = cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.cmta_number.dissect(buffer, index, packet, parent)

  -- Clearing Account: Text
  index, clearing_account = cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.clearing_account.dissect(buffer, index, packet, parent)

  -- Clearing Optional Data: Text
  index, clearing_optional_data = cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.clearing_optional_data.dissect(buffer, index, packet, parent)

  -- Frequent Trader Id: Text
  index, frequent_trader_id = cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.frequent_trader_id.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Allocation
cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.allocation.dissect = function(buffer, offset, packet, parent, allocation_index)
  if show.structs then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.fields.allocation, buffer(offset, 0))
    local index = cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.allocation.fields(buffer, offset, packet, parent, allocation_index)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.allocation.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.allocation.fields(buffer, offset, packet, parent, allocation_index)
  end
end

-- New Order Cross Multileg Message
cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.new_order_cross_multileg_message = {}

-- Calculate size of: New Order Cross Multileg Message
cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.new_order_cross_multileg_message.size = function(buffer, offset)
  local index = 0

  index = index + cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.cross_id.size

  index = index + cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.cross_type.size

  index = index + cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.cross_prioritization.size

  index = index + cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.price.size

  index = index + cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.order_qty.size

  index = index + cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.symbol.size

  index = index + cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.exec_inst.size

  index = index + cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.attributed_quote.size

  index = index + cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.target_party_id.size

  index = index + cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.prevent_match.size

  index = index + cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.auto_match.size

  index = index + cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.auto_match_price.size

  index = index + cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.last_priority.size

  index = index + cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.routing_firm_id.size

  index = index + cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.client_id_attr.size

  index = index + cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.equity_trade_price.size

  index = index + cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.equity_trade_size.size

  index = index + cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.equity_trade_venue.size

  index = index + cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.equity_transact_time.size

  index = index + cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.equity_buy_clearing_firm.size

  index = index + cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.equity_sell_clearing_firm.size

  index = index + cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.drill_thru_protection.size

  index = index + cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.equity_ex_destination.size

  index = index + cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.compression.size

  index = index + cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.order_router_subsidy.size

  index = index + cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.cross_initiator.size

  index = index + cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.scratch_pad.size

  index = index + cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.alloc_cnt.size

  index = index + cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.alloc_leg_cnt.size

  -- Calculate field size from count
  local allocation_count = buffer(offset + index - 2, 1):le_uint()
  index = index + allocation_count * 77

  -- Calculate field size from count
  local leg_position_effect_count = buffer(offset + index - 78, 1):le_uint()
  index = index + leg_position_effect_count * 1

  return index
end

-- Display: New Order Cross Multileg Message
cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.new_order_cross_multileg_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: New Order Cross Multileg Message
cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.new_order_cross_multileg_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Cross Id: Text
  index, cross_id = cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.cross_id.dissect(buffer, index, packet, parent)

  -- Cross Type: Alphanumeric
  index, cross_type = cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.cross_type.dissect(buffer, index, packet, parent)

  -- Cross Prioritization: Alphanumeric
  index, cross_prioritization = cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.cross_prioritization.dissect(buffer, index, packet, parent)

  -- Price: BinaryPrice
  index, price = cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.price.dissect(buffer, index, packet, parent)

  -- Order Qty: Binary
  index, order_qty = cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.order_qty.dissect(buffer, index, packet, parent)

  -- Symbol: Alphanumeric
  index, symbol = cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.symbol.dissect(buffer, index, packet, parent)

  -- Exec Inst: Text
  index, exec_inst = cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.exec_inst.dissect(buffer, index, packet, parent)

  -- Attributed Quote: Alphanumeric
  index, attributed_quote = cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.attributed_quote.dissect(buffer, index, packet, parent)

  -- Target Party Id: Alpha
  index, target_party_id = cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.target_party_id.dissect(buffer, index, packet, parent)

  -- Prevent Match: Struct of 3 fields
  index, prevent_match = cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.prevent_match.dissect(buffer, index, packet, parent)

  -- Auto Match: Alphanumeric
  index, auto_match = cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.auto_match.dissect(buffer, index, packet, parent)

  -- Auto Match Price: BinaryPrice
  index, auto_match_price = cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.auto_match_price.dissect(buffer, index, packet, parent)

  -- Last Priority: Alphanumeric
  index, last_priority = cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.last_priority.dissect(buffer, index, packet, parent)

  -- Routing Firm Id: Alpha
  index, routing_firm_id = cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.routing_firm_id.dissect(buffer, index, packet, parent)

  -- Client Id Attr: Text
  index, client_id_attr = cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.client_id_attr.dissect(buffer, index, packet, parent)

  -- Equity Trade Price: BinaryPrice
  index, equity_trade_price = cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.equity_trade_price.dissect(buffer, index, packet, parent)

  -- Equity Trade Size: Binary
  index, equity_trade_size = cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.equity_trade_size.dissect(buffer, index, packet, parent)

  -- Equity Trade Venue: Text
  index, equity_trade_venue = cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.equity_trade_venue.dissect(buffer, index, packet, parent)

  -- Equity Transact Time: DateTime
  index, equity_transact_time = cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.equity_transact_time.dissect(buffer, index, packet, parent)

  -- Equity Buy Clearing Firm: Text
  index, equity_buy_clearing_firm = cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.equity_buy_clearing_firm.dissect(buffer, index, packet, parent)

  -- Equity Sell Clearing Firm: Text
  index, equity_sell_clearing_firm = cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.equity_sell_clearing_firm.dissect(buffer, index, packet, parent)

  -- Drill Thru Protection: BinaryPrice
  index, drill_thru_protection = cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.drill_thru_protection.dissect(buffer, index, packet, parent)

  -- Equity Ex Destination: Alphanumeric
  index, equity_ex_destination = cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.equity_ex_destination.dissect(buffer, index, packet, parent)

  -- Compression: Alpha
  index, compression = cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.compression.dissect(buffer, index, packet, parent)

  -- Order Router Subsidy: Alpha
  index, order_router_subsidy = cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.order_router_subsidy.dissect(buffer, index, packet, parent)

  -- Cross Initiator: Alpha
  index, cross_initiator = cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.cross_initiator.dissect(buffer, index, packet, parent)

  -- Scratch Pad: Binary
  index, scratch_pad = cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.scratch_pad.dissect(buffer, index, packet, parent)

  -- Alloc Cnt: Binary
  index, alloc_cnt = cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.alloc_cnt.dissect(buffer, index, packet, parent)

  -- Alloc Leg Cnt: Binary
  index, alloc_leg_cnt = cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.alloc_leg_cnt.dissect(buffer, index, packet, parent)

  -- Repeating: Allocation
  for allocation_index = 1, alloc_cnt do
    index, allocation = cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.allocation.dissect(buffer, index, packet, parent, allocation_index)
  end

  -- Repeating: Leg Position Effect
  for leg_position_effect_index = 1, alloc_leg_cnt do
    index, leg_position_effect = cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.leg_position_effect.dissect(buffer, index, packet, parent, leg_position_effect_index)
  end

  return index
end

-- Dissect: New Order Cross Multileg Message
cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.new_order_cross_multileg_message.dissect = function(buffer, offset, packet, parent)
  if show.structs then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.fields.new_order_cross_multileg_message, buffer(offset, 0))
    local index = cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.new_order_cross_multileg_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.new_order_cross_multileg_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.new_order_cross_multileg_message.fields(buffer, offset, packet, parent)
  end
end

-- New Complex Order Short Message
cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.new_complex_order_short_message = {}

-- Calculate size of: New Complex Order Short Message
cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.new_complex_order_short_message.size = function(buffer, offset)
  local index = 0

  index = index + cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.cl_ord_id.size

  index = index + cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.side.size

  index = index + cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.order_qty.size

  index = index + cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.clearing_firm.size

  index = index + cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.clearing_account.size

  index = index + cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.price.size

  index = index + cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.exec_inst.size

  index = index + cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.ord_type.size

  index = index + cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.time_in_force.size

  index = index + cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.symbol.size

  index = index + cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.capacity.size

  index = index + cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.routing_inst.size

  index = index + cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.account.size

  index = index + cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.prevent_match.size

  index = index + cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.cmta_number.size

  index = index + cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.target_party_id.size

  index = index + cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.auction_id.size

  index = index + cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.routing_firm_id.size

  index = index + cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.custom_group_id.size

  index = index + cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.equity_party_id.size

  index = index + cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.frequent_trader_id.size

  index = index + cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.session_eligibility.size

  index = index + cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.max_floor.size

  index = index + cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.floor_destination.size

  index = index + cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.floor_routing_inst.size

  index = index + cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.scratch_pad.size

  index = index + cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.leg_cnt.size

  -- Calculate field size from count
  local leg_position_effect_count = buffer(offset + index - 1, 1):le_uint()
  index = index + leg_position_effect_count * 1

  return index
end

-- Display: New Complex Order Short Message
cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.new_complex_order_short_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: New Complex Order Short Message
cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.new_complex_order_short_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Cl Ord Id: Text
  index, cl_ord_id = cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.cl_ord_id.dissect(buffer, index, packet, parent)

  -- Side: Alphanumeric
  index, side = cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.side.dissect(buffer, index, packet, parent)

  -- Order Qty: Binary
  index, order_qty = cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.order_qty.dissect(buffer, index, packet, parent)

  -- Clearing Firm: Alpha
  index, clearing_firm = cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.clearing_firm.dissect(buffer, index, packet, parent)

  -- Clearing Account: Text
  index, clearing_account = cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.clearing_account.dissect(buffer, index, packet, parent)

  -- Price: BinaryPrice
  index, price = cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.price.dissect(buffer, index, packet, parent)

  -- Exec Inst: Text
  index, exec_inst = cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.exec_inst.dissect(buffer, index, packet, parent)

  -- Ord Type: Alphanumeric
  index, ord_type = cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.ord_type.dissect(buffer, index, packet, parent)

  -- Time In Force: Alphanumeric
  index, time_in_force = cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.time_in_force.dissect(buffer, index, packet, parent)

  -- Symbol: Alphanumeric
  index, symbol = cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.symbol.dissect(buffer, index, packet, parent)

  -- Capacity: Alpha
  index, capacity = cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.capacity.dissect(buffer, index, packet, parent)

  -- Routing Inst: Text
  index, routing_inst = cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.routing_inst.dissect(buffer, index, packet, parent)

  -- Account: Text
  index, account = cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.account.dissect(buffer, index, packet, parent)

  -- Prevent Match: Struct of 3 fields
  index, prevent_match = cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.prevent_match.dissect(buffer, index, packet, parent)

  -- Cmta Number: Binary
  index, cmta_number = cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.cmta_number.dissect(buffer, index, packet, parent)

  -- Target Party Id: Alpha
  index, target_party_id = cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.target_party_id.dissect(buffer, index, packet, parent)

  -- Auction Id: Binary
  index, auction_id = cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.auction_id.dissect(buffer, index, packet, parent)

  -- Routing Firm Id: Alpha
  index, routing_firm_id = cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.routing_firm_id.dissect(buffer, index, packet, parent)

  -- Custom Group Id: Binary
  index, custom_group_id = cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.custom_group_id.dissect(buffer, index, packet, parent)

  -- Equity Party Id: Alpha
  index, equity_party_id = cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.equity_party_id.dissect(buffer, index, packet, parent)

  -- Frequent Trader Id: Text
  index, frequent_trader_id = cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.frequent_trader_id.dissect(buffer, index, packet, parent)

  -- Session Eligibility: Alpha
  index, session_eligibility = cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.session_eligibility.dissect(buffer, index, packet, parent)

  -- Max Floor: Binary
  index, max_floor = cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.max_floor.dissect(buffer, index, packet, parent)

  -- Floor Destination: Text
  index, floor_destination = cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.floor_destination.dissect(buffer, index, packet, parent)

  -- Floor Routing Inst: Alphanumeric
  index, floor_routing_inst = cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.floor_routing_inst.dissect(buffer, index, packet, parent)

  -- Scratch Pad: Binary
  index, scratch_pad = cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.scratch_pad.dissect(buffer, index, packet, parent)

  -- Leg Cnt: Binary
  index, leg_cnt = cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.leg_cnt.dissect(buffer, index, packet, parent)

  -- Repeating: Leg Position Effect
  for leg_position_effect_index = 1, leg_cnt do
    index, leg_position_effect = cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.leg_position_effect.dissect(buffer, index, packet, parent, leg_position_effect_index)
  end

  return index
end

-- Dissect: New Complex Order Short Message
cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.new_complex_order_short_message.dissect = function(buffer, offset, packet, parent)
  if show.structs then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.fields.new_complex_order_short_message, buffer(offset, 0))
    local index = cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.new_complex_order_short_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.new_complex_order_short_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.new_complex_order_short_message.fields(buffer, offset, packet, parent)
  end
end

-- New Complex Order Message
cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.new_complex_order_message = {}

-- Calculate size of: New Complex Order Message
cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.new_complex_order_message.size = function(buffer, offset)
  local index = 0

  index = index + cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.cl_ord_id.size

  index = index + cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.side.size

  index = index + cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.order_qty.size

  index = index + cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.clearing_firm.size

  index = index + cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.clearing_account.size

  index = index + cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.price.size

  index = index + cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.exec_inst.size

  index = index + cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.ord_type.size

  index = index + cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.time_in_force.size

  index = index + cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.symbol.size

  index = index + cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.capacity.size

  index = index + cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.routing_inst.size

  index = index + cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.account.size

  index = index + cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.prevent_match.size

  index = index + cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.expire_time.size

  index = index + cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.cmta_number.size

  index = index + cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.target_party_id.size

  index = index + cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.attributed_quote.size

  index = index + cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.auction_id.size

  index = index + cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.routing_firm_id.size

  index = index + cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.drill_thru_protection.size

  index = index + cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.custom_group_id.size

  index = index + cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.equity_party_id.size

  index = index + cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.clearing_optional_data.size

  index = index + cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.client_id_attr.size

  index = index + cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.frequent_trader_id.size

  index = index + cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.session_eligibility.size

  index = index + cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.max_floor.size

  index = index + cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.display_range.size

  index = index + cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.combo_order.size

  index = index + cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.compression.size

  index = index + cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.equity_ex_destination.size

  index = index + cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.equity_leg_short_sell.size

  index = index + cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.floor_destination.size

  index = index + cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.floor_routing_inst.size

  index = index + cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.order_origin.size

  index = index + cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.order_router_subsidy.size

  index = index + cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.price_type.size

  index = index + cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.strategy_id.size

  index = index + cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.tied_hedge.size

  index = index + cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.held.size

  index = index + cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.scratch_pad.size

  index = index + cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.leg_cnt.size

  -- Calculate field size from count
  local leg_position_effect_count = buffer(offset + index - 1, 1):le_uint()
  index = index + leg_position_effect_count * 1

  return index
end

-- Display: New Complex Order Message
cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.new_complex_order_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: New Complex Order Message
cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.new_complex_order_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Cl Ord Id: Text
  index, cl_ord_id = cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.cl_ord_id.dissect(buffer, index, packet, parent)

  -- Side: Alphanumeric
  index, side = cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.side.dissect(buffer, index, packet, parent)

  -- Order Qty: Binary
  index, order_qty = cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.order_qty.dissect(buffer, index, packet, parent)

  -- Clearing Firm: Alpha
  index, clearing_firm = cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.clearing_firm.dissect(buffer, index, packet, parent)

  -- Clearing Account: Text
  index, clearing_account = cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.clearing_account.dissect(buffer, index, packet, parent)

  -- Price: BinaryPrice
  index, price = cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.price.dissect(buffer, index, packet, parent)

  -- Exec Inst: Text
  index, exec_inst = cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.exec_inst.dissect(buffer, index, packet, parent)

  -- Ord Type: Alphanumeric
  index, ord_type = cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.ord_type.dissect(buffer, index, packet, parent)

  -- Time In Force: Alphanumeric
  index, time_in_force = cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.time_in_force.dissect(buffer, index, packet, parent)

  -- Symbol: Alphanumeric
  index, symbol = cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.symbol.dissect(buffer, index, packet, parent)

  -- Capacity: Alpha
  index, capacity = cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.capacity.dissect(buffer, index, packet, parent)

  -- Routing Inst: Text
  index, routing_inst = cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.routing_inst.dissect(buffer, index, packet, parent)

  -- Account: Text
  index, account = cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.account.dissect(buffer, index, packet, parent)

  -- Prevent Match: Struct of 3 fields
  index, prevent_match = cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.prevent_match.dissect(buffer, index, packet, parent)

  -- Expire Time: DateTime
  index, expire_time = cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.expire_time.dissect(buffer, index, packet, parent)

  -- Cmta Number: Binary
  index, cmta_number = cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.cmta_number.dissect(buffer, index, packet, parent)

  -- Target Party Id: Alpha
  index, target_party_id = cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.target_party_id.dissect(buffer, index, packet, parent)

  -- Attributed Quote: Alphanumeric
  index, attributed_quote = cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.attributed_quote.dissect(buffer, index, packet, parent)

  -- Auction Id: Binary
  index, auction_id = cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.auction_id.dissect(buffer, index, packet, parent)

  -- Routing Firm Id: Alpha
  index, routing_firm_id = cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.routing_firm_id.dissect(buffer, index, packet, parent)

  -- Drill Thru Protection: BinaryPrice
  index, drill_thru_protection = cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.drill_thru_protection.dissect(buffer, index, packet, parent)

  -- Custom Group Id: Binary
  index, custom_group_id = cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.custom_group_id.dissect(buffer, index, packet, parent)

  -- Equity Party Id: Alpha
  index, equity_party_id = cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.equity_party_id.dissect(buffer, index, packet, parent)

  -- Clearing Optional Data: Text
  index, clearing_optional_data = cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.clearing_optional_data.dissect(buffer, index, packet, parent)

  -- Client Id Attr: Text
  index, client_id_attr = cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.client_id_attr.dissect(buffer, index, packet, parent)

  -- Frequent Trader Id: Text
  index, frequent_trader_id = cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.frequent_trader_id.dissect(buffer, index, packet, parent)

  -- Session Eligibility: Alpha
  index, session_eligibility = cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.session_eligibility.dissect(buffer, index, packet, parent)

  -- Max Floor: Binary
  index, max_floor = cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.max_floor.dissect(buffer, index, packet, parent)

  -- Display Range: Binary
  index, display_range = cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.display_range.dissect(buffer, index, packet, parent)

  -- Combo Order: Alpha
  index, combo_order = cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.combo_order.dissect(buffer, index, packet, parent)

  -- Compression: Alpha
  index, compression = cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.compression.dissect(buffer, index, packet, parent)

  -- Equity Ex Destination: Alphanumeric
  index, equity_ex_destination = cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.equity_ex_destination.dissect(buffer, index, packet, parent)

  -- Equity Leg Short Sell: Alphanumeric
  index, equity_leg_short_sell = cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.equity_leg_short_sell.dissect(buffer, index, packet, parent)

  -- Floor Destination: Text
  index, floor_destination = cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.floor_destination.dissect(buffer, index, packet, parent)

  -- Floor Routing Inst: Alphanumeric
  index, floor_routing_inst = cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.floor_routing_inst.dissect(buffer, index, packet, parent)

  -- Order Origin: Alphanumeric
  index, order_origin = cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.order_origin.dissect(buffer, index, packet, parent)

  -- Order Router Subsidy: Alpha
  index, order_router_subsidy = cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.order_router_subsidy.dissect(buffer, index, packet, parent)

  -- Price Type: Alphanumeric
  index, price_type = cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.price_type.dissect(buffer, index, packet, parent)

  -- Strategy Id: Alphanumeric
  index, strategy_id = cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.strategy_id.dissect(buffer, index, packet, parent)

  -- Tied Hedge: Alpha
  index, tied_hedge = cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.tied_hedge.dissect(buffer, index, packet, parent)

  -- Held: Alpha
  index, held = cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.held.dissect(buffer, index, packet, parent)

  -- Scratch Pad: Binary
  index, scratch_pad = cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.scratch_pad.dissect(buffer, index, packet, parent)

  -- Leg Cnt: Binary
  index, leg_cnt = cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.leg_cnt.dissect(buffer, index, packet, parent)

  -- Repeating: Leg Position Effect
  for leg_position_effect_index = 1, leg_cnt do
    index, leg_position_effect = cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.leg_position_effect.dissect(buffer, index, packet, parent, leg_position_effect_index)
  end

  return index
end

-- Dissect: New Complex Order Message
cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.new_complex_order_message.dissect = function(buffer, offset, packet, parent)
  if show.structs then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.fields.new_complex_order_message, buffer(offset, 0))
    local index = cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.new_complex_order_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.new_complex_order_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.new_complex_order_message.fields(buffer, offset, packet, parent)
  end
end

-- New Complex Instrument Message
cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.new_complex_instrument_message = {}

-- Calculate size of: New Complex Instrument Message
cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.new_complex_instrument_message.size = function(buffer, offset)
  local index = 0

  index = index + cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.cl_ord_id.size

  index = index + cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.clearing_firm.size

  index = index + cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.scratch_pad.size

  index = index + cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.leg_cnt.size

  -- Calculate field size from count
  local complex_leg_count = buffer(offset + index - 1, 1):le_uint()
  index = index + complex_leg_count * 27

  return index
end

-- Display: New Complex Instrument Message
cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.new_complex_instrument_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: New Complex Instrument Message
cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.new_complex_instrument_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Cl Ord Id: Text
  index, cl_ord_id = cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.cl_ord_id.dissect(buffer, index, packet, parent)

  -- Clearing Firm: Alpha
  index, clearing_firm = cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.clearing_firm.dissect(buffer, index, packet, parent)

  -- Scratch Pad: Binary
  index, scratch_pad = cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.scratch_pad.dissect(buffer, index, packet, parent)

  -- Leg Cnt: Binary
  index, leg_cnt = cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.leg_cnt.dissect(buffer, index, packet, parent)

  -- Repeating: Complex Leg
  for complex_leg_index = 1, leg_cnt do
    index, complex_leg = cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.complex_leg.dissect(buffer, index, packet, parent, complex_leg_index)
  end

  return index
end

-- Dissect: New Complex Instrument Message
cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.new_complex_instrument_message.dissect = function(buffer, offset, packet, parent)
  if show.structs then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.fields.new_complex_instrument_message, buffer(offset, 0))
    local index = cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.new_complex_instrument_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.new_complex_instrument_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.new_complex_instrument_message.fields(buffer, offset, packet, parent)
  end
end

-- New Order Cross Message
cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.new_order_cross_message = {}

-- Calculate size of: New Order Cross Message
cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.new_order_cross_message.size = function(buffer, offset)
  local index = 0

  index = index + cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.cross_id.size

  index = index + cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.cross_type.size

  index = index + cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.cross_prioritization.size

  index = index + cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.price.size

  index = index + cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.order_qty.size

  index = index + cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.symbol.size

  index = index + cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.maturity_date.size

  index = index + cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.strike_price.size

  index = index + cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.put_or_call.size

  index = index + cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.exec_inst.size

  index = index + cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.attributed_quote.size

  index = index + cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.target_party_id.size

  index = index + cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.prevent_match.size

  index = index + cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.auto_match.size

  index = index + cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.auto_match_price.size

  index = index + cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.last_priority.size

  index = index + cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.routing_firm_id.size

  index = index + cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.client_id_attr.size

  index = index + cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.equity_trade_price.size

  index = index + cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.equity_trade_size.size

  index = index + cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.equity_trade_venue.size

  index = index + cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.equity_transact_time.size

  index = index + cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.equity_buy_clearing_firm.size

  index = index + cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.equity_sell_clearing_firm.size

  index = index + cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.compression.size

  index = index + cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.order_router_subsidy.size

  index = index + cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.scratch_pad.size

  index = index + cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.alloc_cnt.size

  -- Calculate field size from count
  local allocation_count = buffer(offset + index - 1, 1):le_uint()
  index = index + allocation_count * 77

  return index
end

-- Display: New Order Cross Message
cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.new_order_cross_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: New Order Cross Message
cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.new_order_cross_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Cross Id: Text
  index, cross_id = cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.cross_id.dissect(buffer, index, packet, parent)

  -- Cross Type: Alphanumeric
  index, cross_type = cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.cross_type.dissect(buffer, index, packet, parent)

  -- Cross Prioritization: Alphanumeric
  index, cross_prioritization = cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.cross_prioritization.dissect(buffer, index, packet, parent)

  -- Price: BinaryPrice
  index, price = cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.price.dissect(buffer, index, packet, parent)

  -- Order Qty: Binary
  index, order_qty = cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.order_qty.dissect(buffer, index, packet, parent)

  -- Symbol: Alphanumeric
  index, symbol = cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.symbol.dissect(buffer, index, packet, parent)

  -- Maturity Date: Date
  index, maturity_date = cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.maturity_date.dissect(buffer, index, packet, parent)

  -- Strike Price: BinaryPrice
  index, strike_price = cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.strike_price.dissect(buffer, index, packet, parent)

  -- Put Or Call: Alphanumeric
  index, put_or_call = cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.put_or_call.dissect(buffer, index, packet, parent)

  -- Exec Inst: Text
  index, exec_inst = cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.exec_inst.dissect(buffer, index, packet, parent)

  -- Attributed Quote: Alphanumeric
  index, attributed_quote = cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.attributed_quote.dissect(buffer, index, packet, parent)

  -- Target Party Id: Alpha
  index, target_party_id = cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.target_party_id.dissect(buffer, index, packet, parent)

  -- Prevent Match: Struct of 3 fields
  index, prevent_match = cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.prevent_match.dissect(buffer, index, packet, parent)

  -- Auto Match: Alphanumeric
  index, auto_match = cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.auto_match.dissect(buffer, index, packet, parent)

  -- Auto Match Price: BinaryPrice
  index, auto_match_price = cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.auto_match_price.dissect(buffer, index, packet, parent)

  -- Last Priority: Alphanumeric
  index, last_priority = cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.last_priority.dissect(buffer, index, packet, parent)

  -- Routing Firm Id: Alpha
  index, routing_firm_id = cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.routing_firm_id.dissect(buffer, index, packet, parent)

  -- Client Id Attr: Text
  index, client_id_attr = cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.client_id_attr.dissect(buffer, index, packet, parent)

  -- Equity Trade Price: BinaryPrice
  index, equity_trade_price = cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.equity_trade_price.dissect(buffer, index, packet, parent)

  -- Equity Trade Size: Binary
  index, equity_trade_size = cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.equity_trade_size.dissect(buffer, index, packet, parent)

  -- Equity Trade Venue: Text
  index, equity_trade_venue = cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.equity_trade_venue.dissect(buffer, index, packet, parent)

  -- Equity Transact Time: DateTime
  index, equity_transact_time = cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.equity_transact_time.dissect(buffer, index, packet, parent)

  -- Equity Buy Clearing Firm: Text
  index, equity_buy_clearing_firm = cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.equity_buy_clearing_firm.dissect(buffer, index, packet, parent)

  -- Equity Sell Clearing Firm: Text
  index, equity_sell_clearing_firm = cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.equity_sell_clearing_firm.dissect(buffer, index, packet, parent)

  -- Compression: Alpha
  index, compression = cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.compression.dissect(buffer, index, packet, parent)

  -- Order Router Subsidy: Alpha
  index, order_router_subsidy = cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.order_router_subsidy.dissect(buffer, index, packet, parent)

  -- Scratch Pad: Binary
  index, scratch_pad = cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.scratch_pad.dissect(buffer, index, packet, parent)

  -- Alloc Cnt: Binary
  index, alloc_cnt = cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.alloc_cnt.dissect(buffer, index, packet, parent)

  -- Repeating: Allocation
  for allocation_index = 1, alloc_cnt do
    index, allocation = cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.allocation.dissect(buffer, index, packet, parent, allocation_index)
  end

  return index
end

-- Dissect: New Order Cross Message
cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.new_order_cross_message.dissect = function(buffer, offset, packet, parent)
  if show.structs then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.fields.new_order_cross_message, buffer(offset, 0))
    local index = cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.new_order_cross_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.new_order_cross_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.new_order_cross_message.fields(buffer, offset, packet, parent)
  end
end

-- New Order Short Message
cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.new_order_short_message = {}

-- Size: New Order Short Message
cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.new_order_short_message.size =
  cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.cl_ord_id.size + 
  cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.side.size + 
  cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.order_qty.size + 
  cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.clearing_firm.size + 
  cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.clearing_account.size + 
  cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.price.size + 
  cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.exec_inst.size + 
  cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.ord_type.size + 
  cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.time_in_force.size + 
  cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.min_qty.size + 
  cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.max_floor.size + 
  cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.symbol.size + 
  cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.capacity.size + 
  cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.routing_inst.size + 
  cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.account.size + 
  cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.display_indicator.size + 
  cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.prevent_match.size + 
  cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.open_close.size + 
  cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.cmta_number.size + 
  cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.session_eligibility.size + 
  cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.attributed_quote.size + 
  cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.rout_strategy.size + 
  cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.ex_destination.size + 
  cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.auction_id.size + 
  cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.custom_group_id.size + 
  cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.frequent_trader_id.size + 
  cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.scratch_pad.size

-- Display: New Order Short Message
cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.new_order_short_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: New Order Short Message
cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.new_order_short_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Cl Ord Id: Text
  index, cl_ord_id = cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.cl_ord_id.dissect(buffer, index, packet, parent)

  -- Side: Alphanumeric
  index, side = cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.side.dissect(buffer, index, packet, parent)

  -- Order Qty: Binary
  index, order_qty = cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.order_qty.dissect(buffer, index, packet, parent)

  -- Clearing Firm: Alpha
  index, clearing_firm = cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.clearing_firm.dissect(buffer, index, packet, parent)

  -- Clearing Account: Text
  index, clearing_account = cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.clearing_account.dissect(buffer, index, packet, parent)

  -- Price: BinaryPrice
  index, price = cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.price.dissect(buffer, index, packet, parent)

  -- Exec Inst: Text
  index, exec_inst = cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.exec_inst.dissect(buffer, index, packet, parent)

  -- Ord Type: Alphanumeric
  index, ord_type = cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.ord_type.dissect(buffer, index, packet, parent)

  -- Time In Force: Alphanumeric
  index, time_in_force = cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.time_in_force.dissect(buffer, index, packet, parent)

  -- Min Qty: Binary
  index, min_qty = cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.min_qty.dissect(buffer, index, packet, parent)

  -- Max Floor: Binary
  index, max_floor = cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.max_floor.dissect(buffer, index, packet, parent)

  -- Symbol: Alphanumeric
  index, symbol = cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.symbol.dissect(buffer, index, packet, parent)

  -- Capacity: Alpha
  index, capacity = cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.capacity.dissect(buffer, index, packet, parent)

  -- Routing Inst: Text
  index, routing_inst = cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.routing_inst.dissect(buffer, index, packet, parent)

  -- Account: Text
  index, account = cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.account.dissect(buffer, index, packet, parent)

  -- Display Indicator: Alphanumeric
  index, display_indicator = cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.display_indicator.dissect(buffer, index, packet, parent)

  -- Prevent Match: Struct of 3 fields
  index, prevent_match = cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.prevent_match.dissect(buffer, index, packet, parent)

  -- Open Close: Alphanumeric
  index, open_close = cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.open_close.dissect(buffer, index, packet, parent)

  -- Cmta Number: Binary
  index, cmta_number = cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.cmta_number.dissect(buffer, index, packet, parent)

  -- Session Eligibility: Alpha
  index, session_eligibility = cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.session_eligibility.dissect(buffer, index, packet, parent)

  -- Attributed Quote: Alphanumeric
  index, attributed_quote = cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.attributed_quote.dissect(buffer, index, packet, parent)

  -- Rout Strategy: Text
  index, rout_strategy = cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.rout_strategy.dissect(buffer, index, packet, parent)

  -- Ex Destination: Text
  index, ex_destination = cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.ex_destination.dissect(buffer, index, packet, parent)

  -- Auction Id: Binary
  index, auction_id = cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.auction_id.dissect(buffer, index, packet, parent)

  -- Custom Group Id: Binary
  index, custom_group_id = cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.custom_group_id.dissect(buffer, index, packet, parent)

  -- Frequent Trader Id: Text
  index, frequent_trader_id = cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.frequent_trader_id.dissect(buffer, index, packet, parent)

  -- Scratch Pad: Binary
  index, scratch_pad = cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.scratch_pad.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: New Order Short Message
cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.new_order_short_message.dissect = function(buffer, offset, packet, parent)
  if show.structs then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.fields.new_order_short_message, buffer(offset, 0))
    local index = cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.new_order_short_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.new_order_short_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.new_order_short_message.fields(buffer, offset, packet, parent)
  end
end

-- New Order Message
cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.new_order_message = {}

-- Size: New Order Message
cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.new_order_message.size =
  cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.cl_ord_id.size + 
  cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.side.size + 
  cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.order_qty.size + 
  cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.clearing_firm.size + 
  cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.clearing_account.size + 
  cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.price.size + 
  cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.exec_inst.size + 
  cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.ord_type.size + 
  cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.time_in_force.size + 
  cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.min_qty.size + 
  cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.max_floor.size + 
  cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.symbol.size + 
  cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.capacity.size + 
  cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.routing_inst.size + 
  cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.account.size + 
  cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.display_indicator.size + 
  cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.prevent_match.size + 
  cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.expire_time.size + 
  cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.maturity_date.size + 
  cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.strike_price.size + 
  cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.put_or_call.size + 
  cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.open_close.size + 
  cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.cmta_number.size + 
  cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.target_party_id.size + 
  cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.session_eligibility.size + 
  cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.attributed_quote.size + 
  cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.display_range.size + 
  cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.stop_px.size + 
  cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.rout_strategy.size + 
  cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.route_delivery_method.size + 
  cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.ex_destination.size + 
  cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.auction_id.size + 
  cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.routing_firm_id.size + 
  cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.custom_group_id.size + 
  cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.clearing_optional_data.size + 
  cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.client_id_attr.size + 
  cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.frequent_trader_id.size + 
  cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.compression.size + 
  cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.floor_destination.size + 
  cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.floor_routing_inst.size + 
  cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.order_origin.size + 
  cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.order_router_subsidy.size + 
  cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.price_type.size + 
  cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.held.size + 
  cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.scratch_pad.size

-- Display: New Order Message
cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.new_order_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: New Order Message
cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.new_order_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Cl Ord Id: Text
  index, cl_ord_id = cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.cl_ord_id.dissect(buffer, index, packet, parent)

  -- Side: Alphanumeric
  index, side = cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.side.dissect(buffer, index, packet, parent)

  -- Order Qty: Binary
  index, order_qty = cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.order_qty.dissect(buffer, index, packet, parent)

  -- Clearing Firm: Alpha
  index, clearing_firm = cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.clearing_firm.dissect(buffer, index, packet, parent)

  -- Clearing Account: Text
  index, clearing_account = cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.clearing_account.dissect(buffer, index, packet, parent)

  -- Price: BinaryPrice
  index, price = cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.price.dissect(buffer, index, packet, parent)

  -- Exec Inst: Text
  index, exec_inst = cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.exec_inst.dissect(buffer, index, packet, parent)

  -- Ord Type: Alphanumeric
  index, ord_type = cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.ord_type.dissect(buffer, index, packet, parent)

  -- Time In Force: Alphanumeric
  index, time_in_force = cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.time_in_force.dissect(buffer, index, packet, parent)

  -- Min Qty: Binary
  index, min_qty = cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.min_qty.dissect(buffer, index, packet, parent)

  -- Max Floor: Binary
  index, max_floor = cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.max_floor.dissect(buffer, index, packet, parent)

  -- Symbol: Alphanumeric
  index, symbol = cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.symbol.dissect(buffer, index, packet, parent)

  -- Capacity: Alpha
  index, capacity = cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.capacity.dissect(buffer, index, packet, parent)

  -- Routing Inst: Text
  index, routing_inst = cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.routing_inst.dissect(buffer, index, packet, parent)

  -- Account: Text
  index, account = cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.account.dissect(buffer, index, packet, parent)

  -- Display Indicator: Alphanumeric
  index, display_indicator = cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.display_indicator.dissect(buffer, index, packet, parent)

  -- Prevent Match: Struct of 3 fields
  index, prevent_match = cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.prevent_match.dissect(buffer, index, packet, parent)

  -- Expire Time: DateTime
  index, expire_time = cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.expire_time.dissect(buffer, index, packet, parent)

  -- Maturity Date: Date
  index, maturity_date = cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.maturity_date.dissect(buffer, index, packet, parent)

  -- Strike Price: BinaryPrice
  index, strike_price = cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.strike_price.dissect(buffer, index, packet, parent)

  -- Put Or Call: Alphanumeric
  index, put_or_call = cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.put_or_call.dissect(buffer, index, packet, parent)

  -- Open Close: Alphanumeric
  index, open_close = cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.open_close.dissect(buffer, index, packet, parent)

  -- Cmta Number: Binary
  index, cmta_number = cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.cmta_number.dissect(buffer, index, packet, parent)

  -- Target Party Id: Alpha
  index, target_party_id = cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.target_party_id.dissect(buffer, index, packet, parent)

  -- Session Eligibility: Alpha
  index, session_eligibility = cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.session_eligibility.dissect(buffer, index, packet, parent)

  -- Attributed Quote: Alphanumeric
  index, attributed_quote = cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.attributed_quote.dissect(buffer, index, packet, parent)

  -- Display Range: Binary
  index, display_range = cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.display_range.dissect(buffer, index, packet, parent)

  -- Stop Px: BinaryPrice
  index, stop_px = cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.stop_px.dissect(buffer, index, packet, parent)

  -- Rout Strategy: Text
  index, rout_strategy = cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.rout_strategy.dissect(buffer, index, packet, parent)

  -- Route Delivery Method: Text
  index, route_delivery_method = cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.route_delivery_method.dissect(buffer, index, packet, parent)

  -- Ex Destination: Text
  index, ex_destination = cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.ex_destination.dissect(buffer, index, packet, parent)

  -- Auction Id: Binary
  index, auction_id = cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.auction_id.dissect(buffer, index, packet, parent)

  -- Routing Firm Id: Alpha
  index, routing_firm_id = cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.routing_firm_id.dissect(buffer, index, packet, parent)

  -- Custom Group Id: Binary
  index, custom_group_id = cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.custom_group_id.dissect(buffer, index, packet, parent)

  -- Clearing Optional Data: Text
  index, clearing_optional_data = cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.clearing_optional_data.dissect(buffer, index, packet, parent)

  -- Client Id Attr: Text
  index, client_id_attr = cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.client_id_attr.dissect(buffer, index, packet, parent)

  -- Frequent Trader Id: Text
  index, frequent_trader_id = cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.frequent_trader_id.dissect(buffer, index, packet, parent)

  -- Compression: Alpha
  index, compression = cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.compression.dissect(buffer, index, packet, parent)

  -- Floor Destination: Text
  index, floor_destination = cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.floor_destination.dissect(buffer, index, packet, parent)

  -- Floor Routing Inst: Alphanumeric
  index, floor_routing_inst = cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.floor_routing_inst.dissect(buffer, index, packet, parent)

  -- Order Origin: Alphanumeric
  index, order_origin = cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.order_origin.dissect(buffer, index, packet, parent)

  -- Order Router Subsidy: Alpha
  index, order_router_subsidy = cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.order_router_subsidy.dissect(buffer, index, packet, parent)

  -- Price Type: Alphanumeric
  index, price_type = cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.price_type.dissect(buffer, index, packet, parent)

  -- Held: Alpha
  index, held = cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.held.dissect(buffer, index, packet, parent)

  -- Scratch Pad: Binary
  index, scratch_pad = cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.scratch_pad.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: New Order Message
cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.new_order_message.dissect = function(buffer, offset, packet, parent)
  if show.structs then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.fields.new_order_message, buffer(offset, 0))
    local index = cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.new_order_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.new_order_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.new_order_message.fields(buffer, offset, packet, parent)
  end
end

-- Client Heartbeat
cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.client_heartbeat = {}

-- Display: Client Heartbeat
cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.client_heartbeat.display = function(packet, parent, length)
  return "Client Heartbeat"
end


-- Dissect: Client Heartbeat
cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.client_heartbeat.dissect = function(buffer, offset, packet, parent)
  local display = cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.client_heartbeat.display(packet, parent, 0)
  packet.cols.info = display

  return offset
end

-- Logout Request
cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.logout_request = {}

-- Display: Logout Request
cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.logout_request.display = function(packet, parent, length)
  return "Logout Request"
end


-- Dissect: Logout Request
cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.logout_request.dissect = function(buffer, offset, packet, parent)
  local display = cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.logout_request.display(packet, parent, 0)
  packet.cols.info = display

  return offset
end

-- Login Request Message
cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.login_request_message = {}

-- Calculate size of: Login Request Message
cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.login_request_message.size = function(buffer, offset)
  local index = 0

  index = index + cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.session_id.size

  index = index + cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.session_sub_id.size

  index = index + cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.password.size

  index = index + cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.replay_unspecified_unit.size

  index = index + cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.number_of_units.size

  -- Calculate field size from count
  local unit_sequence_count = buffer(offset + index - 1, 1):le_uint()
  index = index + unit_sequence_count * 5

  return index
end

-- Display: Login Request Message
cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.login_request_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Login Request Message
cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.login_request_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Session Id: 4 Byte Ascii String
  index, session_id = cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.session_id.dissect(buffer, index, packet, parent)

  -- Session Sub Id: 4 Byte Ascii String
  index, session_sub_id = cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.session_sub_id.dissect(buffer, index, packet, parent)

  -- Password: 10 Byte Ascii String
  index, password = cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.password.dissect(buffer, index, packet, parent)

  -- Replay Unspecified Unit: 1 Byte Ascii String Enum with 3 values
  index, replay_unspecified_unit = cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.replay_unspecified_unit.dissect(buffer, index, packet, parent)

  -- Number Of Units: 1 Byte Unsigned Fixed Width Integer
  index, number_of_units = cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.number_of_units.dissect(buffer, index, packet, parent)

  -- Repeating: Unit Sequence
  for unit_sequence_index = 1, number_of_units do
    index, unit_sequence = cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.unit_sequence.dissect(buffer, index, packet, parent, unit_sequence_index)
  end

  return index
end

-- Dissect: Login Request Message
cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.login_request_message.dissect = function(buffer, offset, packet, parent)
  if show.structs then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.fields.login_request_message, buffer(offset, 0))
    local index = cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.login_request_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.login_request_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.login_request_message.fields(buffer, offset, packet, parent)
  end
end

-- Firm Message
cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.firm_message = {}

-- Dissect: Firm Message
cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.firm_message.dissect = function(buffer, offset, packet, parent, firm_message_type)
  -- Dissect Login Request Message
  if firm_message_type == 1 then
    return cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.login_request_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Logout Request
  if firm_message_type == 2 then
    return cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.logout_request.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Client Heartbeat
  if firm_message_type == 3 then
    return cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.client_heartbeat.dissect(buffer, offset, packet, parent)
  end
  -- Dissect New Order Message
  if firm_message_type == 0x07D1 then
    return cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.new_order_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect New Order Short Message
  if firm_message_type == 0x07D2 then
    return cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.new_order_short_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect New Order Cross Message
  if firm_message_type == 0x07D3 then
    return cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.new_order_cross_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect New Complex Instrument Message
  if firm_message_type == 0x07D5 then
    return cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.new_complex_instrument_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect New Complex Order Message
  if firm_message_type == 0x07D6 then
    return cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.new_complex_order_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect New Complex Order Short Message
  if firm_message_type == 0x07D7 then
    return cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.new_complex_order_short_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect New Order Cross Multileg Message
  if firm_message_type == 0x07D8 then
    return cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.new_order_cross_multileg_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Cancel Order Message
  if firm_message_type == 0x07DA then
    return cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.cancel_order_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Mass Cancel Order Message
  if firm_message_type == 0x07DF then
    return cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.mass_cancel_order_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Modify Order Message
  if firm_message_type == 0x07DB then
    return cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.modify_order_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Quote Update Message
  if firm_message_type == 0x07DC then
    return cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.quote_update_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Quote Update Short Message
  if firm_message_type == 0x07DD then
    return cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.quote_update_short_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Purge Orders Message
  if firm_message_type == 0x07E0 then
    return cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.purge_orders_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Reset Risk Message
  if firm_message_type == 0x07DE then
    return cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.reset_risk_message.dissect(buffer, offset, packet, parent)
  end

  return offset
end

-- Firm Message Header
cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.firm_message_header = {}

-- Size: Firm Message Header
cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.firm_message_header.size =
  cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.start_of_message.size + 
  cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.message_length.size + 
  cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.firm_message_type.size + 
  cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.matching_unit.size + 
  cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.reserved_field.size + 
  cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.sequence_number.size

-- Display: Firm Message Header
cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.firm_message_header.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Firm Message Header
cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.firm_message_header.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Start Of Message: 2 Byte Unsigned Fixed Width Integer
  index, start_of_message = cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.start_of_message.dissect(buffer, index, packet, parent)

  -- Message Length: 2 Byte Unsigned Fixed Width Integer
  index, message_length = cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.message_length.dissect(buffer, index, packet, parent)

  -- Firm Message Type: 2 Byte Unsigned Fixed Width Integer Enum with 17 values
  index, firm_message_type = cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.firm_message_type.dissect(buffer, index, packet, parent)

  -- Matching Unit: 1 Byte Unsigned Fixed Width Integer
  index, matching_unit = cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.matching_unit.dissect(buffer, index, packet, parent)

  -- Reserved Field: 1 Byte Unsigned Fixed Width Integer
  index, reserved_field = cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.reserved_field.dissect(buffer, index, packet, parent)

  -- Sequence Number: 4 Byte Unsigned Fixed Width Integer
  index, sequence_number = cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.sequence_number.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Firm Message Header
cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.firm_message_header.dissect = function(buffer, offset, packet, parent)
  if show.structs then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.fields.firm_message_header, buffer(offset, 0))
    local index = cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.firm_message_header.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.firm_message_header.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.firm_message_header.fields(buffer, offset, packet, parent)
  end
end

-- Firm Packet
cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.firm_packet = {}

-- Verify required size of Tcp packet
cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.firm_packet.requiredsize = function(buffer)
  return buffer:len() >= cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.firm_message_header.size
end

-- Dissect Firm Packet
cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.firm_packet.dissect = function(buffer, packet, parent)
  local index = 0

  -- Firm Message Header: Struct of 6 fields
  index, firm_message_header = cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.firm_message_header.dissect(buffer, index, packet, parent)

  -- Dependency element: Firm Message Type
  local firm_message_type = buffer(index - 8, 2):le_uint()

  -- Firm Message: Runtime Type with 17 branches
  index = cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.firm_message.dissect(buffer, index, packet, parent, firm_message_type)

  return index
end


-----------------------------------------------------------------------
-- Protocol Dissector and Components
-----------------------------------------------------------------------

-- Initialize Dissector
function omi_cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.init()
end

-- Connection roles for Cboe EdgxOptions BinaryOrderEntry Boe3 1.0.10: Firm is the initiator, Exchange is the acceptor
-- Initiator endpoint of each conversation, recorded from its first frame
local initiators = {}

-- Conversations whose first frame proved to be the acceptor's: the heuristic swaps the sides
local swapped = {}

-- Endpoint key of an address and port
local function endpoint(address, port)
  return tostring(address)..":"..tostring(port)
end


-- Conversation key, the same in both directions
local function conversation(packet)
  local a = endpoint(packet.src, packet.src_port)
  local b = endpoint(packet.dst, packet.dst_port)
  if a < b then
    return a.." "..b
  end
  return b.." "..a
end


-- Connection role of the frame's sender
cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.role = function(packet)
  if omi_cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.prefs.assume_role == 1 then
    return "initiator"
  end
  if omi_cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.prefs.assume_role == 2 then
    return "acceptor"
  end
  local port = omi_cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.prefs.acceptor_port
  if port ~= 0 and packet.dst_port == port then
    return "initiator"
  end
  if port ~= 0 and packet.src_port == port then
    return "acceptor"
  end
  local key = conversation(packet)
  local sender = endpoint(packet.src, packet.src_port)
  if initiators[key] == nil then
    initiators[key] = sender
  end
  local first = initiators[key] == sender
  if omi_cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.prefs.swap_sides then
    first = not first
  end
  if swapped[key] then
    first = not first
  end
  if first then
    return "initiator"
  end
  return "acceptor"
end


-- Swap the resolved sides of the frame's conversation
cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.swap = function(packet)
  local key = conversation(packet)
  swapped[key] = not swapped[key]
end


-- Dissector for Cboe EdgxOptions BinaryOrderEntry Boe3 1.0.10
function omi_cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.dissector(buffer, packet, parent)

  -- Set protocol name
  packet.cols.protocol = omi_cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.name

  -- Dissect protocol
  local protocol = parent:add(omi_cboe_edgxoptions_binaryorderentry_boe3_v1_0_10, buffer(), omi_cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.description, "("..buffer:len().." Bytes)")
  local role = cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.role(packet)
  if role == "initiator" then
    return cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.firm_packet.dissect(buffer, packet, protocol)
  end
  return cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.exchange_packet.dissect(buffer, packet, protocol)
end


-----------------------------------------------------------------------
-- Protocol Fingerprints
-----------------------------------------------------------------------

-- Fingerprint of Firm Packet: would its message dispatch accept this frame?
cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.firm_packet.fingerprint = function(buffer)
  if buffer:len() < 6 then
    return false
  end
  local firm_message_type = buffer(4, 2):le_uint()

  -- Login Request Message
  if firm_message_type == 1 then
    return true
  end

  -- Logout Request
  if firm_message_type == 2 then
    return true
  end

  -- Client Heartbeat
  if firm_message_type == 3 then
    return true
  end

  -- New Order Message
  if firm_message_type == 0x07D1 then
    return true
  end

  -- New Order Short Message
  if firm_message_type == 0x07D2 then
    return true
  end

  -- New Order Cross Message
  if firm_message_type == 0x07D3 then
    return true
  end

  -- New Complex Instrument Message
  if firm_message_type == 0x07D5 then
    return true
  end

  -- New Complex Order Message
  if firm_message_type == 0x07D6 then
    return true
  end

  -- New Complex Order Short Message
  if firm_message_type == 0x07D7 then
    return true
  end

  -- New Order Cross Multileg Message
  if firm_message_type == 0x07D8 then
    return true
  end

  -- Cancel Order Message
  if firm_message_type == 0x07DA then
    return true
  end

  -- Mass Cancel Order Message
  if firm_message_type == 0x07DF then
    return true
  end

  -- Modify Order Message
  if firm_message_type == 0x07DB then
    return true
  end

  -- Quote Update Message
  if firm_message_type == 0x07DC then
    return true
  end

  -- Quote Update Short Message
  if firm_message_type == 0x07DD then
    return true
  end

  -- Purge Orders Message
  if firm_message_type == 0x07E0 then
    return true
  end

  -- Reset Risk Message
  if firm_message_type == 0x07DE then
    return true
  end

  return false
end


-- Fingerprint of Exchange Packet: would its message dispatch accept this frame?
cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.exchange_packet.fingerprint = function(buffer)
  if buffer:len() < 6 then
    return false
  end
  local exchange_message_type = buffer(4, 2):le_uint()

  -- Login Response Message
  if exchange_message_type == 501 then
    return true
  end

  -- Replay Complete
  if exchange_message_type == 502 then
    return true
  end

  -- Logout Response Message
  if exchange_message_type == 503 then
    return true
  end

  -- Server Heartbeat
  if exchange_message_type == 504 then
    return true
  end

  -- Order Acknowledgement Message
  if exchange_message_type == 0x09C5 then
    return true
  end

  -- Cross Order Acknowledgment Message
  if exchange_message_type == 0x09C6 then
    return true
  end

  -- Quote Update Acknowledgement Message
  if exchange_message_type == 0x09D5 then
    return true
  end

  -- Order Rejected Message
  if exchange_message_type == 0x09C7 then
    return true
  end

  -- Cross Order Rejected Message
  if exchange_message_type == 0x09C8 then
    return true
  end

  -- Quote Update Rejected Message
  if exchange_message_type == 0x09D6 then
    return true
  end

  -- Order Modified Message
  if exchange_message_type == 0x09CB then
    return true
  end

  -- Order Restated Message
  if exchange_message_type == 0x09CD then
    return true
  end

  -- Quote Restated Message
  if exchange_message_type == 0x09D9 then
    return true
  end

  -- Modify Rejected Message
  if exchange_message_type == 0x09CC then
    return true
  end

  -- Order Cancelled Message
  if exchange_message_type == 0x09D0 then
    return true
  end

  -- Quote Cancelled Message
  if exchange_message_type == 0x09D7 then
    return true
  end

  -- Cross Order Cancelled Message
  if exchange_message_type == 0x09D1 then
    return true
  end

  -- Cancel Rejected Message
  if exchange_message_type == 0x09D2 then
    return true
  end

  -- Order Execution Message
  if exchange_message_type == 0x09D3 then
    return true
  end

  -- Quote Execution Message
  if exchange_message_type == 0x09D8 then
    return true
  end

  -- Trade Cancel Correct Message
  if exchange_message_type == 0x09D4 then
    return true
  end

  -- Purge Rejected Message
  if exchange_message_type == 0x09DE then
    return true
  end

  -- Reset Risk Acknowledgement Message
  if exchange_message_type == 0x09DA then
    return true
  end

  -- Mass Cancel Acknowledgment Message
  if exchange_message_type == 0x09DB then
    return true
  end

  -- Mass Cancel Rejected Message
  if exchange_message_type == 0x09DC then
    return true
  end

  -- Purge Acknowledgement Message
  if exchange_message_type == 0x09DD then
    return true
  end

  -- Purge Notification Message
  if exchange_message_type == 0x09DF then
    return true
  end

  -- New Complex Instrument Accepted Message
  if exchange_message_type == 0x09C9 then
    return true
  end

  -- New Complex Instrument Rejected Message
  if exchange_message_type == 0x09CA then
    return true
  end

  -- Carried Restatement Message
  if exchange_message_type == 0x09CE then
    return true
  end

  -- Done For Day Message
  if exchange_message_type == 0x09CF then
    return true
  end

  return false
end



-----------------------------------------------------------------------
-- Protocol Heuristics
-----------------------------------------------------------------------

-- Dissector Heuristic for Cboe EdgxOptions BinaryOrderEntry Boe3 1.0.10 (Tcp)
local function omi_cboe_edgxoptions_binaryorderentry_boe3_v1_0_10_tcp_initiator_heuristic(buffer, packet, parent)
  -- Verify packet length
  if not cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.firm_packet.requiredsize(buffer) then return false end

  -- Verify the frame matches this side's fingerprint
  if not cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.firm_packet.fingerprint(buffer) then return false end

  -- Protocol is valid, set conversation and dissect this packet
  packet.conversation = omi_cboe_edgxoptions_binaryorderentry_boe3_v1_0_10
  omi_cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.dissector(buffer, packet, parent)

  return true
end

-- Dissector Heuristic for Cboe EdgxOptions BinaryOrderEntry Boe3 1.0.10 (Tcp)
local function omi_cboe_edgxoptions_binaryorderentry_boe3_v1_0_10_tcp_acceptor_heuristic(buffer, packet, parent)
  -- Verify packet length
  if not cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.exchange_packet.requiredsize(buffer) then return false end

  -- Verify the frame matches this side's fingerprint
  if not cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.exchange_packet.fingerprint(buffer) then return false end

  -- Protocol is valid, set conversation and dissect this packet
  packet.conversation = omi_cboe_edgxoptions_binaryorderentry_boe3_v1_0_10
  omi_cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.dissector(buffer, packet, parent)

  return true
end

-- Dissector Heuristic for Cboe EdgxOptions BinaryOrderEntry Boe3 1.0.10 (Tcp): apply the heuristic of the sender's connection role
local function omi_cboe_edgxoptions_binaryorderentry_boe3_v1_0_10_tcp_heuristic(buffer, packet, parent)
  local role = cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.role(packet)
  local first, second = omi_cboe_edgxoptions_binaryorderentry_boe3_v1_0_10_tcp_initiator_heuristic, omi_cboe_edgxoptions_binaryorderentry_boe3_v1_0_10_tcp_acceptor_heuristic
  if role == "acceptor" then
    first, second = second, first
  end
  if first(buffer, packet, parent) then
    return true
  end

  -- The other side may have sent this conversation's first frame: swap, and swap back if it cannot claim either
  cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.swap(packet)
  if second(buffer, packet, parent) then
    return true
  end
  cboe_edgxoptions_binaryorderentry_boe3_v1_0_10.swap(packet)

  return false
end

-- Register Heuristics for Cboe EdgxOptions BinaryOrderEntry Boe3 1.0.10
omi_cboe_edgxoptions_binaryorderentry_boe3_v1_0_10:register_heuristic("tcp", omi_cboe_edgxoptions_binaryorderentry_boe3_v1_0_10_tcp_heuristic)
-- Register Cboe EdgxOptions BinaryOrderEntry Boe3 1.0.10 for Decode As
local tcp_table = DissectorTable.get("tcp.port")
tcp_table:add_for_decode_as(omi_cboe_edgxoptions_binaryorderentry_boe3_v1_0_10)

-----------------------------------------------------------------------
-- Lua dissectors are an easily edited and modified cross-platform dissection solution.
-- Feel free to modify. Enjoy.
-----------------------------------------------------------------------
--
-- Protocol:
--   Organization: Chicago Board Options Exchange
--   Version: 1.0.10
--   Date: Thursday, January 23, 2025
--   Specification: US_Options_BOE3_Specification.pdf
--
-- Script:
--   Generator: 1.5.0.0
--   Compiler: 2.0
--   License: Public/GPLv3
--   Authors: Omi Developers
--
-- Copyright (c) 2026 Scaled Sources LLC.
--   https://www.scaledsources.com
--
-- This dissector code is contributed to The Open Markets Initiative under
-- the license noted above.
--   https://openmarketsinitiative.com
--
-- Protocol Compiler technologies used to produce this file are
-- the subject of patents owned by Scaled Sources LLC.  Those patent
-- rights are retained and are not transferred by this contribution:
--   https://patents.google.com/patent/US20240129382A1/en
--   https://patents.google.com/patent/US20240419416A1/en
--
-----------------------------------------------------------------------
