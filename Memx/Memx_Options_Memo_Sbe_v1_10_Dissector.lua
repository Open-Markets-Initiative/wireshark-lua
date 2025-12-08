-----------------------------------------------------------------------
-- Lua Script Wireshark Dissector
-- 
-- Please see end of file for rules and regulations
-----------------------------------------------------------------------

-- Memx Options Memo Sbe 1.10 Protocol
local omi_memx_options_memo_sbe_v1_10 = Proto("Memx.Options.Memo.Sbe.v1.10.Lua", "Memx Options Memo Sbe 1.10")

-- Protocol table
local memx_options_memo_sbe_v1_10 = {}

-----------------------------------------------------------------------
-- Declare Protocol Fields
-----------------------------------------------------------------------

-- Memx Options Memo Sbe 1.10 Fields
omi_memx_options_memo_sbe_v1_10.fields.alloc_canc_replace_reason = ProtoField.new("Alloc Canc Replace Reason", "memx.options.memo.sbe.v1.10.alloccancreplacereason", ftypes.UINT16)
omi_memx_options_memo_sbe_v1_10.fields.alloc_id = ProtoField.new("Alloc Id", "memx.options.memo.sbe.v1.10.allocid", ftypes.STRING)
omi_memx_options_memo_sbe_v1_10.fields.alloc_position_effect = ProtoField.new("Alloc Position Effect", "memx.options.memo.sbe.v1.10.allocpositioneffect", ftypes.STRING)
omi_memx_options_memo_sbe_v1_10.fields.alloc_qty = ProtoField.new("Alloc Qty", "memx.options.memo.sbe.v1.10.allocqty", ftypes.UINT32)
omi_memx_options_memo_sbe_v1_10.fields.alloc_rej_code = ProtoField.new("Alloc Rej Code", "memx.options.memo.sbe.v1.10.allocrejcode", ftypes.UINT16)
omi_memx_options_memo_sbe_v1_10.fields.alloc_status = ProtoField.new("Alloc Status", "memx.options.memo.sbe.v1.10.allocstatus", ftypes.UINT8)
omi_memx_options_memo_sbe_v1_10.fields.alloc_trans_type = ProtoField.new("Alloc Trans Type", "memx.options.memo.sbe.v1.10.alloctranstype", ftypes.UINT8)
omi_memx_options_memo_sbe_v1_10.fields.alloc_type = ProtoField.new("Alloc Type", "memx.options.memo.sbe.v1.10.alloctype", ftypes.UINT8)
omi_memx_options_memo_sbe_v1_10.fields.bid_px = ProtoField.new("Bid Px", "memx.options.memo.sbe.v1.10.bidpx", ftypes.DOUBLE)
omi_memx_options_memo_sbe_v1_10.fields.bid_size = ProtoField.new("Bid Size", "memx.options.memo.sbe.v1.10.bidsize", ftypes.UINT16)
omi_memx_options_memo_sbe_v1_10.fields.block_length = ProtoField.new("Block Length", "memx.options.memo.sbe.v1.10.blocklength", ftypes.UINT16)
omi_memx_options_memo_sbe_v1_10.fields.block_length_short = ProtoField.new("Block Length Short", "memx.options.memo.sbe.v1.10.blocklengthshort", ftypes.UINT8)
omi_memx_options_memo_sbe_v1_10.fields.cancel_group_id = ProtoField.new("Cancel Group Id", "memx.options.memo.sbe.v1.10.cancelgroupid", ftypes.UINT16)
omi_memx_options_memo_sbe_v1_10.fields.cancel_orders_from_this_port_only = ProtoField.new("Cancel Orders From This Port Only", "memx.options.memo.sbe.v1.10.cancelordersfromthisportonly", ftypes.UINT8, {[1]="Yes",[0]="No"}, base.DEC, 0x04)
omi_memx_options_memo_sbe_v1_10.fields.cancel_reason = ProtoField.new("Cancel Reason", "memx.options.memo.sbe.v1.10.cancelreason", ftypes.UINT8)
omi_memx_options_memo_sbe_v1_10.fields.clordid = ProtoField.new("ClOrdId", "memx.options.memo.sbe.v1.10.clordid", ftypes.STRING)
omi_memx_options_memo_sbe_v1_10.fields.common_header = ProtoField.new("Common Header", "memx.options.memo.sbe.v1.10.commonheader", ftypes.STRING)
omi_memx_options_memo_sbe_v1_10.fields.contra_trading_capacity = ProtoField.new("Contra Trading Capacity", "memx.options.memo.sbe.v1.10.contratradingcapacity", ftypes.UINT8)
omi_memx_options_memo_sbe_v1_10.fields.count = ProtoField.new("Count", "memx.options.memo.sbe.v1.10.count", ftypes.UINT32)
omi_memx_options_memo_sbe_v1_10.fields.cum_qty = ProtoField.new("Cum Qty", "memx.options.memo.sbe.v1.10.cumqty", ftypes.UINT32)
omi_memx_options_memo_sbe_v1_10.fields.cxl_rej_reason = ProtoField.new("Cxl Rej Reason", "memx.options.memo.sbe.v1.10.cxlrejreason", ftypes.UINT16)
omi_memx_options_memo_sbe_v1_10.fields.cxl_rej_response_to = ProtoField.new("Cxl Rej Response To", "memx.options.memo.sbe.v1.10.cxlrejresponseto", ftypes.STRING)
omi_memx_options_memo_sbe_v1_10.fields.data = ProtoField.new("Data", "memx.options.memo.sbe.v1.10.data", ftypes.STRING)
omi_memx_options_memo_sbe_v1_10.fields.efid_optional = ProtoField.new("Efid Optional", "memx.options.memo.sbe.v1.10.efidoptional", ftypes.STRING)
omi_memx_options_memo_sbe_v1_10.fields.exec_id = ProtoField.new("Exec Id", "memx.options.memo.sbe.v1.10.execid", ftypes.UINT64)
omi_memx_options_memo_sbe_v1_10.fields.exec_inst = ProtoField.new("Exec Inst", "memx.options.memo.sbe.v1.10.execinst", ftypes.STRING)
omi_memx_options_memo_sbe_v1_10.fields.exec_ref_id = ProtoField.new("Exec Ref Id", "memx.options.memo.sbe.v1.10.execrefid", ftypes.UINT64)
omi_memx_options_memo_sbe_v1_10.fields.exec_restatement_reason = ProtoField.new("Exec Restatement Reason", "memx.options.memo.sbe.v1.10.execrestatementreason", ftypes.UINT8)
omi_memx_options_memo_sbe_v1_10.fields.execution_allocations_group = ProtoField.new("Execution Allocations Group", "memx.options.memo.sbe.v1.10.executionallocationsgroup", ftypes.STRING)
omi_memx_options_memo_sbe_v1_10.fields.execution_allocations_groups = ProtoField.new("Execution Allocations Groups", "memx.options.memo.sbe.v1.10.executionallocationsgroups", ftypes.STRING)
omi_memx_options_memo_sbe_v1_10.fields.extended_restatement_reason = ProtoField.new("Extended Restatement Reason", "memx.options.memo.sbe.v1.10.extendedrestatementreason", ftypes.UINT8)
omi_memx_options_memo_sbe_v1_10.fields.external_routing_not_allowed = ProtoField.new("External Routing Not Allowed", "memx.options.memo.sbe.v1.10.externalroutingnotallowed", ftypes.UINT16, {[1]="Yes",[0]="No"}, base.DEC, 0x0004)
omi_memx_options_memo_sbe_v1_10.fields.intermarket_sweep = ProtoField.new("Intermarket Sweep", "memx.options.memo.sbe.v1.10.intermarketsweep", ftypes.UINT16, {[1]="Yes",[0]="No"}, base.DEC, 0x0002)
omi_memx_options_memo_sbe_v1_10.fields.last_liquidity_ind = ProtoField.new("Last Liquidity Ind", "memx.options.memo.sbe.v1.10.lastliquidityind", ftypes.UINT8)
omi_memx_options_memo_sbe_v1_10.fields.last_mkt = ProtoField.new("Last Mkt", "memx.options.memo.sbe.v1.10.lastmkt", ftypes.STRING)
omi_memx_options_memo_sbe_v1_10.fields.last_px = ProtoField.new("Last Px", "memx.options.memo.sbe.v1.10.lastpx", ftypes.DOUBLE)
omi_memx_options_memo_sbe_v1_10.fields.last_qty = ProtoField.new("Last Qty", "memx.options.memo.sbe.v1.10.lastqty", ftypes.UINT32)
omi_memx_options_memo_sbe_v1_10.fields.last_qty_optional = ProtoField.new("Last Qty Optional", "memx.options.memo.sbe.v1.10.lastqtyoptional", ftypes.UINT32)
omi_memx_options_memo_sbe_v1_10.fields.leaves_qty = ProtoField.new("Leaves Qty", "memx.options.memo.sbe.v1.10.leavesqty", ftypes.UINT32)
omi_memx_options_memo_sbe_v1_10.fields.list_seq_no = ProtoField.new("List Seq No", "memx.options.memo.sbe.v1.10.listseqno", ftypes.UINT8)
omi_memx_options_memo_sbe_v1_10.fields.lockout = ProtoField.new("Lockout", "memx.options.memo.sbe.v1.10.lockout", ftypes.UINT8, {[1]="Yes",[0]="No"}, base.DEC, 0x01)
omi_memx_options_memo_sbe_v1_10.fields.lockout_id = ProtoField.new("Lockout Id", "memx.options.memo.sbe.v1.10.lockoutid", ftypes.UINT64)
omi_memx_options_memo_sbe_v1_10.fields.lockout_id_optional = ProtoField.new("Lockout Id Optional", "memx.options.memo.sbe.v1.10.lockoutidoptional", ftypes.UINT64)
omi_memx_options_memo_sbe_v1_10.fields.login_accepted_message = ProtoField.new("Login Accepted Message", "memx.options.memo.sbe.v1.10.loginacceptedmessage", ftypes.STRING)
omi_memx_options_memo_sbe_v1_10.fields.login_reject_code = ProtoField.new("Login Reject Code", "memx.options.memo.sbe.v1.10.loginrejectcode", ftypes.STRING)
omi_memx_options_memo_sbe_v1_10.fields.login_rejected_message = ProtoField.new("Login Rejected Message", "memx.options.memo.sbe.v1.10.loginrejectedmessage", ftypes.STRING)
omi_memx_options_memo_sbe_v1_10.fields.login_request_message = ProtoField.new("Login Request Message", "memx.options.memo.sbe.v1.10.loginrequestmessage", ftypes.STRING)
omi_memx_options_memo_sbe_v1_10.fields.mass_cancel_inst = ProtoField.new("Mass Cancel Inst", "memx.options.memo.sbe.v1.10.masscancelinst", ftypes.STRING)
omi_memx_options_memo_sbe_v1_10.fields.mass_cancel_reject_reason = ProtoField.new("Mass Cancel Reject Reason", "memx.options.memo.sbe.v1.10.masscancelrejectreason", ftypes.UINT16)
omi_memx_options_memo_sbe_v1_10.fields.match_trade_prevention = ProtoField.new("Match Trade Prevention", "memx.options.memo.sbe.v1.10.matchtradeprevention", ftypes.UINT8)
omi_memx_options_memo_sbe_v1_10.fields.max_sequence_number = ProtoField.new("Max Sequence Number", "memx.options.memo.sbe.v1.10.maxsequencenumber", ftypes.UINT64)
omi_memx_options_memo_sbe_v1_10.fields.message_count = ProtoField.new("Message Count", "memx.options.memo.sbe.v1.10.messagecount", ftypes.UINT64)
omi_memx_options_memo_sbe_v1_10.fields.message_length = ProtoField.new("Message Length", "memx.options.memo.sbe.v1.10.messagelength", ftypes.UINT16)
omi_memx_options_memo_sbe_v1_10.fields.message_type = ProtoField.new("Message Type", "memx.options.memo.sbe.v1.10.messagetype", ftypes.UINT8)
omi_memx_options_memo_sbe_v1_10.fields.mtp_group_id = ProtoField.new("Mtp Group Id", "memx.options.memo.sbe.v1.10.mtpgroupid", ftypes.UINT16)
omi_memx_options_memo_sbe_v1_10.fields.nested_parties_group = ProtoField.new("Nested Parties Group", "memx.options.memo.sbe.v1.10.nestedpartiesgroup", ftypes.STRING)
omi_memx_options_memo_sbe_v1_10.fields.nested_parties_groups = ProtoField.new("Nested Parties Groups", "memx.options.memo.sbe.v1.10.nestedpartiesgroups", ftypes.STRING)
omi_memx_options_memo_sbe_v1_10.fields.nested_party_id = ProtoField.new("Nested Party Id", "memx.options.memo.sbe.v1.10.nestedpartyid", ftypes.STRING)
omi_memx_options_memo_sbe_v1_10.fields.nested_party_id_source = ProtoField.new("Nested Party Id Source", "memx.options.memo.sbe.v1.10.nestedpartyidsource", ftypes.STRING)
omi_memx_options_memo_sbe_v1_10.fields.nested_party_role = ProtoField.new("Nested Party Role", "memx.options.memo.sbe.v1.10.nestedpartyrole", ftypes.UINT8)
omi_memx_options_memo_sbe_v1_10.fields.next_sequence_number = ProtoField.new("Next Sequence Number", "memx.options.memo.sbe.v1.10.nextsequencenumber", ftypes.UINT64)
omi_memx_options_memo_sbe_v1_10.fields.num_in_group = ProtoField.new("Num In Group", "memx.options.memo.sbe.v1.10.numingroup", ftypes.UINT8)
omi_memx_options_memo_sbe_v1_10.fields.number_of_orders = ProtoField.new("Number Of Orders", "memx.options.memo.sbe.v1.10.numberoforders", ftypes.UINT8)
omi_memx_options_memo_sbe_v1_10.fields.offer_px = ProtoField.new("Offer Px", "memx.options.memo.sbe.v1.10.offerpx", ftypes.DOUBLE)
omi_memx_options_memo_sbe_v1_10.fields.offer_size = ProtoField.new("Offer Size", "memx.options.memo.sbe.v1.10.offersize", ftypes.UINT16)
omi_memx_options_memo_sbe_v1_10.fields.one_sided_quotes_group = ProtoField.new("One Sided Quotes Group", "memx.options.memo.sbe.v1.10.onesidedquotesgroup", ftypes.STRING)
omi_memx_options_memo_sbe_v1_10.fields.one_sided_quotes_groups = ProtoField.new("One Sided Quotes Groups", "memx.options.memo.sbe.v1.10.onesidedquotesgroups", ftypes.STRING)
omi_memx_options_memo_sbe_v1_10.fields.options_security_id_optional = ProtoField.new("Options Security Id Optional", "memx.options.memo.sbe.v1.10.optionssecurityidoptional", ftypes.STRING)
omi_memx_options_memo_sbe_v1_10.fields.ord_status = ProtoField.new("Ord Status", "memx.options.memo.sbe.v1.10.ordstatus", ftypes.STRING)
omi_memx_options_memo_sbe_v1_10.fields.ord_type = ProtoField.new("Ord Type", "memx.options.memo.sbe.v1.10.ordtype", ftypes.STRING)
omi_memx_options_memo_sbe_v1_10.fields.order_id = ProtoField.new("Order Id", "memx.options.memo.sbe.v1.10.orderid", ftypes.UINT64)
omi_memx_options_memo_sbe_v1_10.fields.order_id_optional = ProtoField.new("Order Id Optional", "memx.options.memo.sbe.v1.10.orderidoptional", ftypes.UINT64)
omi_memx_options_memo_sbe_v1_10.fields.order_qty = ProtoField.new("Order Qty", "memx.options.memo.sbe.v1.10.orderqty", ftypes.UINT32)
omi_memx_options_memo_sbe_v1_10.fields.order_reject_reason = ProtoField.new("Order Reject Reason", "memx.options.memo.sbe.v1.10.orderrejectreason", ftypes.UINT16)
omi_memx_options_memo_sbe_v1_10.fields.orig_list_seq_no = ProtoField.new("Orig List Seq No", "memx.options.memo.sbe.v1.10.origlistseqno", ftypes.UINT8)
omi_memx_options_memo_sbe_v1_10.fields.origclordid = ProtoField.new("OrigClOrdId", "memx.options.memo.sbe.v1.10.origclordid", ftypes.STRING)
omi_memx_options_memo_sbe_v1_10.fields.origclordid_optional = ProtoField.new("OrigClOrdId Optional", "memx.options.memo.sbe.v1.10.origclordidoptional", ftypes.STRING)
omi_memx_options_memo_sbe_v1_10.fields.packet = ProtoField.new("Packet", "memx.options.memo.sbe.v1.10.packet", ftypes.STRING)
omi_memx_options_memo_sbe_v1_10.fields.participate_do_not_initiate = ProtoField.new("Participate Do Not Initiate", "memx.options.memo.sbe.v1.10.participatedonotinitiate", ftypes.UINT16, {[1]="Yes",[0]="No"}, base.DEC, 0x0001)
omi_memx_options_memo_sbe_v1_10.fields.parties_group = ProtoField.new("Parties Group", "memx.options.memo.sbe.v1.10.partiesgroup", ftypes.STRING)
omi_memx_options_memo_sbe_v1_10.fields.parties_groups = ProtoField.new("Parties Groups", "memx.options.memo.sbe.v1.10.partiesgroups", ftypes.STRING)
omi_memx_options_memo_sbe_v1_10.fields.party_id = ProtoField.new("Party Id", "memx.options.memo.sbe.v1.10.partyid", ftypes.STRING)
omi_memx_options_memo_sbe_v1_10.fields.party_id_source = ProtoField.new("Party Id Source", "memx.options.memo.sbe.v1.10.partyidsource", ftypes.STRING)
omi_memx_options_memo_sbe_v1_10.fields.party_role = ProtoField.new("Party Role", "memx.options.memo.sbe.v1.10.partyrole", ftypes.UINT8)
omi_memx_options_memo_sbe_v1_10.fields.payload = ProtoField.new("Payload", "memx.options.memo.sbe.v1.10.payload", ftypes.STRING)
omi_memx_options_memo_sbe_v1_10.fields.pending_message_count = ProtoField.new("Pending Message Count", "memx.options.memo.sbe.v1.10.pendingmessagecount", ftypes.UINT32)
omi_memx_options_memo_sbe_v1_10.fields.position_effect = ProtoField.new("Position Effect", "memx.options.memo.sbe.v1.10.positioneffect", ftypes.STRING)
omi_memx_options_memo_sbe_v1_10.fields.position_effect_optional = ProtoField.new("Position Effect Optional", "memx.options.memo.sbe.v1.10.positioneffectoptional", ftypes.STRING)
omi_memx_options_memo_sbe_v1_10.fields.price_optional = ProtoField.new("Price Optional", "memx.options.memo.sbe.v1.10.priceoptional", ftypes.DOUBLE)
omi_memx_options_memo_sbe_v1_10.fields.price_short = ProtoField.new("Price Short", "memx.options.memo.sbe.v1.10.priceshort", ftypes.DOUBLE)
omi_memx_options_memo_sbe_v1_10.fields.quantity = ProtoField.new("Quantity", "memx.options.memo.sbe.v1.10.quantity", ftypes.UINT16)
omi_memx_options_memo_sbe_v1_10.fields.ref_alloc_id_optional = ProtoField.new("Ref Alloc Id Optional", "memx.options.memo.sbe.v1.10.refallocidoptional", ftypes.STRING)
omi_memx_options_memo_sbe_v1_10.fields.rej_reason = ProtoField.new("Rej Reason", "memx.options.memo.sbe.v1.10.rejreason", ftypes.UINT16)
omi_memx_options_memo_sbe_v1_10.fields.repeating_group_dimensions = ProtoField.new("Repeating Group Dimensions", "memx.options.memo.sbe.v1.10.repeatinggroupdimensions", ftypes.STRING)
omi_memx_options_memo_sbe_v1_10.fields.replay_all_request_message = ProtoField.new("Replay All Request Message", "memx.options.memo.sbe.v1.10.replayallrequestmessage", ftypes.STRING)
omi_memx_options_memo_sbe_v1_10.fields.replay_begin_message = ProtoField.new("Replay Begin Message", "memx.options.memo.sbe.v1.10.replaybeginmessage", ftypes.STRING)
omi_memx_options_memo_sbe_v1_10.fields.replay_complete_message = ProtoField.new("Replay Complete Message", "memx.options.memo.sbe.v1.10.replaycompletemessage", ftypes.STRING)
omi_memx_options_memo_sbe_v1_10.fields.replay_reject_code = ProtoField.new("Replay Reject Code", "memx.options.memo.sbe.v1.10.replayrejectcode", ftypes.STRING)
omi_memx_options_memo_sbe_v1_10.fields.replay_rejected_message = ProtoField.new("Replay Rejected Message", "memx.options.memo.sbe.v1.10.replayrejectedmessage", ftypes.STRING)
omi_memx_options_memo_sbe_v1_10.fields.replay_request_message = ProtoField.new("Replay Request Message", "memx.options.memo.sbe.v1.10.replayrequestmessage", ftypes.STRING)
omi_memx_options_memo_sbe_v1_10.fields.reported_allocations_group = ProtoField.new("Reported Allocations Group", "memx.options.memo.sbe.v1.10.reportedallocationsgroup", ftypes.STRING)
omi_memx_options_memo_sbe_v1_10.fields.reported_allocations_groups = ProtoField.new("Reported Allocations Groups", "memx.options.memo.sbe.v1.10.reportedallocationsgroups", ftypes.STRING)
omi_memx_options_memo_sbe_v1_10.fields.reprice_behavior = ProtoField.new("Reprice Behavior", "memx.options.memo.sbe.v1.10.repricebehavior", ftypes.UINT8)
omi_memx_options_memo_sbe_v1_10.fields.reprice_frequency = ProtoField.new("Reprice Frequency", "memx.options.memo.sbe.v1.10.repricefrequency", ftypes.UINT8)
omi_memx_options_memo_sbe_v1_10.fields.requested_allocations_group = ProtoField.new("Requested Allocations Group", "memx.options.memo.sbe.v1.10.requestedallocationsgroup", ftypes.STRING)
omi_memx_options_memo_sbe_v1_10.fields.requested_allocations_groups = ProtoField.new("Requested Allocations Groups", "memx.options.memo.sbe.v1.10.requestedallocationsgroups", ftypes.STRING)
omi_memx_options_memo_sbe_v1_10.fields.reserved_13 = ProtoField.new("Reserved 13", "memx.options.memo.sbe.v1.10.reserved13", ftypes.UINT16, nil, base.DEC, 0xFFF8)
omi_memx_options_memo_sbe_v1_10.fields.reserved_5 = ProtoField.new("Reserved 5", "memx.options.memo.sbe.v1.10.reserved5", ftypes.UINT8, nil, base.DEC, 0xF8)
omi_memx_options_memo_sbe_v1_10.fields.risk_group_id = ProtoField.new("Risk Group Id", "memx.options.memo.sbe.v1.10.riskgroupid", ftypes.UINT16)
omi_memx_options_memo_sbe_v1_10.fields.sbe_header = ProtoField.new("Sbe Header", "memx.options.memo.sbe.v1.10.sbeheader", ftypes.STRING)
omi_memx_options_memo_sbe_v1_10.fields.sbe_message = ProtoField.new("Sbe Message", "memx.options.memo.sbe.v1.10.sbemessage", ftypes.STRING)
omi_memx_options_memo_sbe_v1_10.fields.schema_id = ProtoField.new("Schema Id", "memx.options.memo.sbe.v1.10.schemaid", ftypes.UINT8)
omi_memx_options_memo_sbe_v1_10.fields.secondary_alloc_id = ProtoField.new("Secondary Alloc Id", "memx.options.memo.sbe.v1.10.secondaryallocid", ftypes.STRING)
omi_memx_options_memo_sbe_v1_10.fields.security_id = ProtoField.new("Security Id", "memx.options.memo.sbe.v1.10.securityid", ftypes.STRING)
omi_memx_options_memo_sbe_v1_10.fields.send_cancels = ProtoField.new("Send Cancels", "memx.options.memo.sbe.v1.10.sendcancels", ftypes.UINT8, {[1]="Yes",[0]="No"}, base.DEC, 0x02)
omi_memx_options_memo_sbe_v1_10.fields.sending_time = ProtoField.new("Sending Time", "memx.options.memo.sbe.v1.10.sendingtime", ftypes.UINT64)
omi_memx_options_memo_sbe_v1_10.fields.sequenced_message = ProtoField.new("Sequenced Message", "memx.options.memo.sbe.v1.10.sequencedmessage", ftypes.STRING)
omi_memx_options_memo_sbe_v1_10.fields.session_id = ProtoField.new("Session Id", "memx.options.memo.sbe.v1.10.sessionid", ftypes.UINT64)
omi_memx_options_memo_sbe_v1_10.fields.side = ProtoField.new("Side", "memx.options.memo.sbe.v1.10.side", ftypes.STRING)
omi_memx_options_memo_sbe_v1_10.fields.side_optional = ProtoField.new("Side Optional", "memx.options.memo.sbe.v1.10.sideoptional", ftypes.STRING)
omi_memx_options_memo_sbe_v1_10.fields.start_of_session_message = ProtoField.new("Start Of Session Message", "memx.options.memo.sbe.v1.10.startofsessionmessage", ftypes.STRING)
omi_memx_options_memo_sbe_v1_10.fields.stream_begin_message = ProtoField.new("Stream Begin Message", "memx.options.memo.sbe.v1.10.streambeginmessage", ftypes.STRING)
omi_memx_options_memo_sbe_v1_10.fields.stream_complete_message = ProtoField.new("Stream Complete Message", "memx.options.memo.sbe.v1.10.streamcompletemessage", ftypes.STRING)
omi_memx_options_memo_sbe_v1_10.fields.stream_reject_code = ProtoField.new("Stream Reject Code", "memx.options.memo.sbe.v1.10.streamrejectcode", ftypes.STRING)
omi_memx_options_memo_sbe_v1_10.fields.stream_rejected_message = ProtoField.new("Stream Rejected Message", "memx.options.memo.sbe.v1.10.streamrejectedmessage", ftypes.STRING)
omi_memx_options_memo_sbe_v1_10.fields.stream_request_message = ProtoField.new("Stream Request Message", "memx.options.memo.sbe.v1.10.streamrequestmessage", ftypes.STRING)
omi_memx_options_memo_sbe_v1_10.fields.supported_request_mode = ProtoField.new("Supported Request Mode", "memx.options.memo.sbe.v1.10.supportedrequestmode", ftypes.STRING)
omi_memx_options_memo_sbe_v1_10.fields.symbol = ProtoField.new("Symbol", "memx.options.memo.sbe.v1.10.symbol", ftypes.STRING)
omi_memx_options_memo_sbe_v1_10.fields.template_id = ProtoField.new("Template Id", "memx.options.memo.sbe.v1.10.templateid", ftypes.UINT8)
omi_memx_options_memo_sbe_v1_10.fields.time_in_force = ProtoField.new("Time In Force", "memx.options.memo.sbe.v1.10.timeinforce", ftypes.STRING)
omi_memx_options_memo_sbe_v1_10.fields.token = ProtoField.new("Token", "memx.options.memo.sbe.v1.10.token", ftypes.STRING)
omi_memx_options_memo_sbe_v1_10.fields.token_type = ProtoField.new("Token Type", "memx.options.memo.sbe.v1.10.tokentype", ftypes.STRING)
omi_memx_options_memo_sbe_v1_10.fields.total_affected_orders = ProtoField.new("Total Affected Orders", "memx.options.memo.sbe.v1.10.totalaffectedorders", ftypes.UINT32)
omi_memx_options_memo_sbe_v1_10.fields.total_sequence_count = ProtoField.new("Total Sequence Count", "memx.options.memo.sbe.v1.10.totalsequencecount", ftypes.UINT64)
omi_memx_options_memo_sbe_v1_10.fields.trade_date = ProtoField.new("Trade Date", "memx.options.memo.sbe.v1.10.tradedate", ftypes.STRING)
omi_memx_options_memo_sbe_v1_10.fields.trade_id = ProtoField.new("Trade Id", "memx.options.memo.sbe.v1.10.tradeid", ftypes.UINT64)
omi_memx_options_memo_sbe_v1_10.fields.trading_capacity = ProtoField.new("Trading Capacity", "memx.options.memo.sbe.v1.10.tradingcapacity", ftypes.UINT8)
omi_memx_options_memo_sbe_v1_10.fields.trading_capacity_optional = ProtoField.new("Trading Capacity Optional", "memx.options.memo.sbe.v1.10.tradingcapacityoptional", ftypes.UINT8)
omi_memx_options_memo_sbe_v1_10.fields.transact_time = ProtoField.new("Transact Time", "memx.options.memo.sbe.v1.10.transacttime", ftypes.UINT64)
omi_memx_options_memo_sbe_v1_10.fields.trd_match_id = ProtoField.new("Trd Match Id", "memx.options.memo.sbe.v1.10.trdmatchid", ftypes.UINT64)
omi_memx_options_memo_sbe_v1_10.fields.two_sided_quotes_group = ProtoField.new("Two Sided Quotes Group", "memx.options.memo.sbe.v1.10.twosidedquotesgroup", ftypes.STRING)
omi_memx_options_memo_sbe_v1_10.fields.two_sided_quotes_groups = ProtoField.new("Two Sided Quotes Groups", "memx.options.memo.sbe.v1.10.twosidedquotesgroups", ftypes.STRING)
omi_memx_options_memo_sbe_v1_10.fields.underlier = ProtoField.new("Underlier", "memx.options.memo.sbe.v1.10.underlier", ftypes.STRING)
omi_memx_options_memo_sbe_v1_10.fields.underlier_optional = ProtoField.new("Underlier Optional", "memx.options.memo.sbe.v1.10.underlieroptional", ftypes.STRING)
omi_memx_options_memo_sbe_v1_10.fields.underlying_or_series = ProtoField.new("Underlying Or Series", "memx.options.memo.sbe.v1.10.underlyingorseries", ftypes.UINT8)
omi_memx_options_memo_sbe_v1_10.fields.underlying_or_series_optional = ProtoField.new("Underlying Or Series Optional", "memx.options.memo.sbe.v1.10.underlyingorseriesoptional", ftypes.UINT8)
omi_memx_options_memo_sbe_v1_10.fields.unsequenced_message = ProtoField.new("Unsequenced Message", "memx.options.memo.sbe.v1.10.unsequencedmessage", ftypes.STRING)
omi_memx_options_memo_sbe_v1_10.fields.user_status = ProtoField.new("User Status", "memx.options.memo.sbe.v1.10.userstatus", ftypes.UINT8)
omi_memx_options_memo_sbe_v1_10.fields.version = ProtoField.new("Version", "memx.options.memo.sbe.v1.10.version", ftypes.UINT16)

-- Memx Options Memo Sbe 1.10 messages
omi_memx_options_memo_sbe_v1_10.fields.allocation_instruction_ack_message = ProtoField.new("Allocation Instruction Ack Message", "memx.options.memo.sbe.v1.10.allocationinstructionackmessage", ftypes.STRING)
omi_memx_options_memo_sbe_v1_10.fields.allocation_instruction_alert_message = ProtoField.new("Allocation Instruction Alert Message", "memx.options.memo.sbe.v1.10.allocationinstructionalertmessage", ftypes.STRING)
omi_memx_options_memo_sbe_v1_10.fields.allocation_instruction_message = ProtoField.new("Allocation Instruction Message", "memx.options.memo.sbe.v1.10.allocationinstructionmessage", ftypes.STRING)
omi_memx_options_memo_sbe_v1_10.fields.execution_report_bulk_quote_component_new_message = ProtoField.new("Execution Report Bulk Quote Component New Message", "memx.options.memo.sbe.v1.10.executionreportbulkquotecomponentnewmessage", ftypes.STRING)
omi_memx_options_memo_sbe_v1_10.fields.execution_report_bulk_quote_pending_new_message = ProtoField.new("Execution Report Bulk Quote Pending New Message", "memx.options.memo.sbe.v1.10.executionreportbulkquotependingnewmessage", ftypes.STRING)
omi_memx_options_memo_sbe_v1_10.fields.execution_report_canceled_message = ProtoField.new("Execution Report Canceled Message", "memx.options.memo.sbe.v1.10.executionreportcanceledmessage", ftypes.STRING)
omi_memx_options_memo_sbe_v1_10.fields.execution_report_new_message = ProtoField.new("Execution Report New Message", "memx.options.memo.sbe.v1.10.executionreportnewmessage", ftypes.STRING)
omi_memx_options_memo_sbe_v1_10.fields.execution_report_pending_cancel_message = ProtoField.new("Execution Report Pending Cancel Message", "memx.options.memo.sbe.v1.10.executionreportpendingcancelmessage", ftypes.STRING)
omi_memx_options_memo_sbe_v1_10.fields.execution_report_pending_replace_message = ProtoField.new("Execution Report Pending Replace Message", "memx.options.memo.sbe.v1.10.executionreportpendingreplacemessage", ftypes.STRING)
omi_memx_options_memo_sbe_v1_10.fields.execution_report_rejected_message = ProtoField.new("Execution Report Rejected Message", "memx.options.memo.sbe.v1.10.executionreportrejectedmessage", ftypes.STRING)
omi_memx_options_memo_sbe_v1_10.fields.execution_report_replaced_message = ProtoField.new("Execution Report Replaced Message", "memx.options.memo.sbe.v1.10.executionreportreplacedmessage", ftypes.STRING)
omi_memx_options_memo_sbe_v1_10.fields.execution_report_restatement_message = ProtoField.new("Execution Report Restatement Message", "memx.options.memo.sbe.v1.10.executionreportrestatementmessage", ftypes.STRING)
omi_memx_options_memo_sbe_v1_10.fields.execution_report_trade_break_message = ProtoField.new("Execution Report Trade Break Message", "memx.options.memo.sbe.v1.10.executionreporttradebreakmessage", ftypes.STRING)
omi_memx_options_memo_sbe_v1_10.fields.execution_report_trade_correction_message = ProtoField.new("Execution Report Trade Correction Message", "memx.options.memo.sbe.v1.10.executionreporttradecorrectionmessage", ftypes.STRING)
omi_memx_options_memo_sbe_v1_10.fields.execution_report_trade_message = ProtoField.new("Execution Report Trade Message", "memx.options.memo.sbe.v1.10.executionreporttrademessage", ftypes.STRING)
omi_memx_options_memo_sbe_v1_10.fields.long_one_sided_bulk_quote_message = ProtoField.new("Long One Sided Bulk Quote Message", "memx.options.memo.sbe.v1.10.longonesidedbulkquotemessage", ftypes.STRING)
omi_memx_options_memo_sbe_v1_10.fields.long_two_sided_bulk_quote_message = ProtoField.new("Long Two Sided Bulk Quote Message", "memx.options.memo.sbe.v1.10.longtwosidedbulkquotemessage", ftypes.STRING)
omi_memx_options_memo_sbe_v1_10.fields.mass_cancel_bulk_clear_all_lockouts_request_message = ProtoField.new("Mass Cancel Bulk Clear All Lockouts Request Message", "memx.options.memo.sbe.v1.10.masscancelbulkclearalllockoutsrequestmessage", ftypes.STRING)
omi_memx_options_memo_sbe_v1_10.fields.mass_cancel_bulk_clear_lockout_accepted_message = ProtoField.new("Mass Cancel Bulk Clear Lockout Accepted Message", "memx.options.memo.sbe.v1.10.masscancelbulkclearlockoutacceptedmessage", ftypes.STRING)
omi_memx_options_memo_sbe_v1_10.fields.mass_cancel_bulk_clear_lockout_reject_message = ProtoField.new("Mass Cancel Bulk Clear Lockout Reject Message", "memx.options.memo.sbe.v1.10.masscancelbulkclearlockoutrejectmessage", ftypes.STRING)
omi_memx_options_memo_sbe_v1_10.fields.mass_cancel_bulk_clear_lockouts_by_efid_or_underlier_request_message = ProtoField.new("Mass Cancel Bulk Clear Lockouts By Efid Or Underlier Request Message", "memx.options.memo.sbe.v1.10.masscancelbulkclearlockoutsbyefidorunderlierrequestmessage", ftypes.STRING)
omi_memx_options_memo_sbe_v1_10.fields.mass_cancel_clear_lockout_done_message = ProtoField.new("Mass Cancel Clear Lockout Done Message", "memx.options.memo.sbe.v1.10.masscancelclearlockoutdonemessage", ftypes.STRING)
omi_memx_options_memo_sbe_v1_10.fields.mass_cancel_clear_lockout_reject_message = ProtoField.new("Mass Cancel Clear Lockout Reject Message", "memx.options.memo.sbe.v1.10.masscancelclearlockoutrejectmessage", ftypes.STRING)
omi_memx_options_memo_sbe_v1_10.fields.mass_cancel_clear_lockout_request_message = ProtoField.new("Mass Cancel Clear Lockout Request Message", "memx.options.memo.sbe.v1.10.masscancelclearlockoutrequestmessage", ftypes.STRING)
omi_memx_options_memo_sbe_v1_10.fields.mass_cancel_done_message = ProtoField.new("Mass Cancel Done Message", "memx.options.memo.sbe.v1.10.masscanceldonemessage", ftypes.STRING)
omi_memx_options_memo_sbe_v1_10.fields.mass_cancel_reject_message = ProtoField.new("Mass Cancel Reject Message", "memx.options.memo.sbe.v1.10.masscancelrejectmessage", ftypes.STRING)
omi_memx_options_memo_sbe_v1_10.fields.mass_cancel_request_message = ProtoField.new("Mass Cancel Request Message", "memx.options.memo.sbe.v1.10.masscancelrequestmessage", ftypes.STRING)
omi_memx_options_memo_sbe_v1_10.fields.new_order_single_message = ProtoField.new("New Order Single Message", "memx.options.memo.sbe.v1.10.newordersinglemessage", ftypes.STRING)
omi_memx_options_memo_sbe_v1_10.fields.order_cancel_reject_message = ProtoField.new("Order Cancel Reject Message", "memx.options.memo.sbe.v1.10.ordercancelrejectmessage", ftypes.STRING)
omi_memx_options_memo_sbe_v1_10.fields.order_cancel_replace_request_message = ProtoField.new("Order Cancel Replace Request Message", "memx.options.memo.sbe.v1.10.ordercancelreplacerequestmessage", ftypes.STRING)
omi_memx_options_memo_sbe_v1_10.fields.order_cancel_request_message = ProtoField.new("Order Cancel Request Message", "memx.options.memo.sbe.v1.10.ordercancelrequestmessage", ftypes.STRING)
omi_memx_options_memo_sbe_v1_10.fields.pending_mass_cancel_message = ProtoField.new("Pending Mass Cancel Message", "memx.options.memo.sbe.v1.10.pendingmasscancelmessage", ftypes.STRING)
omi_memx_options_memo_sbe_v1_10.fields.short_one_sided_bulk_quote_message = ProtoField.new("Short One Sided Bulk Quote Message", "memx.options.memo.sbe.v1.10.shortonesidedbulkquotemessage", ftypes.STRING)
omi_memx_options_memo_sbe_v1_10.fields.short_two_sided_bulk_quote_message = ProtoField.new("Short Two Sided Bulk Quote Message", "memx.options.memo.sbe.v1.10.shorttwosidedbulkquotemessage", ftypes.STRING)
omi_memx_options_memo_sbe_v1_10.fields.user_notification_message = ProtoField.new("User Notification Message", "memx.options.memo.sbe.v1.10.usernotificationmessage", ftypes.STRING)

-- Memx Options Memo Sbe 1.10 generated fields
omi_memx_options_memo_sbe_v1_10.fields.execution_allocations_group_index = ProtoField.new("Execution Allocations Group Index", "memx.options.memo.sbe.v1.10.executionallocationsgroupindex", ftypes.UINT16)
omi_memx_options_memo_sbe_v1_10.fields.nested_parties_group_index = ProtoField.new("Nested Parties Group Index", "memx.options.memo.sbe.v1.10.nestedpartiesgroupindex", ftypes.UINT16)
omi_memx_options_memo_sbe_v1_10.fields.one_sided_quotes_group_index = ProtoField.new("One Sided Quotes Group Index", "memx.options.memo.sbe.v1.10.onesidedquotesgroupindex", ftypes.UINT16)
omi_memx_options_memo_sbe_v1_10.fields.parties_group_index = ProtoField.new("Parties Group Index", "memx.options.memo.sbe.v1.10.partiesgroupindex", ftypes.UINT16)
omi_memx_options_memo_sbe_v1_10.fields.reported_allocations_group_index = ProtoField.new("Reported Allocations Group Index", "memx.options.memo.sbe.v1.10.reportedallocationsgroupindex", ftypes.UINT16)
omi_memx_options_memo_sbe_v1_10.fields.requested_allocations_group_index = ProtoField.new("Requested Allocations Group Index", "memx.options.memo.sbe.v1.10.requestedallocationsgroupindex", ftypes.UINT16)
omi_memx_options_memo_sbe_v1_10.fields.two_sided_quotes_group_index = ProtoField.new("Two Sided Quotes Group Index", "memx.options.memo.sbe.v1.10.twosidedquotesgroupindex", ftypes.UINT16)

-----------------------------------------------------------------------
-- Declare Dissection Options
-----------------------------------------------------------------------

local show = {}

-- Memx Options Memo Sbe 1.10 Element Dissection Options
show.allocation_instruction_ack_message = true
show.allocation_instruction_alert_message = true
show.allocation_instruction_message = true
show.common_header = true
show.exec_inst = true
show.execution_allocations_group = true
show.execution_allocations_groups = true
show.execution_report_bulk_quote_component_new_message = true
show.execution_report_bulk_quote_pending_new_message = true
show.execution_report_canceled_message = true
show.execution_report_new_message = true
show.execution_report_pending_cancel_message = true
show.execution_report_pending_replace_message = true
show.execution_report_rejected_message = true
show.execution_report_replaced_message = true
show.execution_report_restatement_message = true
show.execution_report_trade_break_message = true
show.execution_report_trade_correction_message = true
show.execution_report_trade_message = true
show.login_accepted_message = true
show.login_rejected_message = true
show.login_request_message = true
show.long_one_sided_bulk_quote_message = true
show.long_two_sided_bulk_quote_message = true
show.mass_cancel_bulk_clear_all_lockouts_request_message = true
show.mass_cancel_bulk_clear_lockout_accepted_message = true
show.mass_cancel_bulk_clear_lockout_reject_message = true
show.mass_cancel_bulk_clear_lockouts_by_efid_or_underlier_request_message = true
show.mass_cancel_clear_lockout_done_message = true
show.mass_cancel_clear_lockout_reject_message = true
show.mass_cancel_clear_lockout_request_message = true
show.mass_cancel_done_message = true
show.mass_cancel_inst = true
show.mass_cancel_reject_message = true
show.mass_cancel_request_message = true
show.nested_parties_group = true
show.nested_parties_groups = true
show.new_order_single_message = true
show.one_sided_quotes_group = true
show.one_sided_quotes_groups = true
show.order_cancel_reject_message = true
show.order_cancel_replace_request_message = true
show.order_cancel_request_message = true
show.packet = true
show.parties_group = true
show.parties_groups = true
show.pending_mass_cancel_message = true
show.repeating_group_dimensions = true
show.replay_all_request_message = true
show.replay_begin_message = true
show.replay_complete_message = true
show.replay_rejected_message = true
show.replay_request_message = true
show.reported_allocations_group = true
show.reported_allocations_groups = true
show.requested_allocations_group = true
show.requested_allocations_groups = true
show.sbe_header = true
show.sbe_message = true
show.sequenced_message = true
show.short_one_sided_bulk_quote_message = true
show.short_two_sided_bulk_quote_message = true
show.start_of_session_message = true
show.stream_begin_message = true
show.stream_complete_message = true
show.stream_rejected_message = true
show.stream_request_message = true
show.two_sided_quotes_group = true
show.two_sided_quotes_groups = true
show.unsequenced_message = true
show.user_notification_message = true
show.data = false
show.payload = false

-- Register Memx Options Memo Sbe 1.10 Show Options
omi_memx_options_memo_sbe_v1_10.prefs.show_allocation_instruction_ack_message = Pref.bool("Show Allocation Instruction Ack Message", show.allocation_instruction_ack_message, "Parse and add Allocation Instruction Ack Message to protocol tree")
omi_memx_options_memo_sbe_v1_10.prefs.show_allocation_instruction_alert_message = Pref.bool("Show Allocation Instruction Alert Message", show.allocation_instruction_alert_message, "Parse and add Allocation Instruction Alert Message to protocol tree")
omi_memx_options_memo_sbe_v1_10.prefs.show_allocation_instruction_message = Pref.bool("Show Allocation Instruction Message", show.allocation_instruction_message, "Parse and add Allocation Instruction Message to protocol tree")
omi_memx_options_memo_sbe_v1_10.prefs.show_common_header = Pref.bool("Show Common Header", show.common_header, "Parse and add Common Header to protocol tree")
omi_memx_options_memo_sbe_v1_10.prefs.show_exec_inst = Pref.bool("Show Exec Inst", show.exec_inst, "Parse and add Exec Inst to protocol tree")
omi_memx_options_memo_sbe_v1_10.prefs.show_execution_allocations_group = Pref.bool("Show Execution Allocations Group", show.execution_allocations_group, "Parse and add Execution Allocations Group to protocol tree")
omi_memx_options_memo_sbe_v1_10.prefs.show_execution_allocations_groups = Pref.bool("Show Execution Allocations Groups", show.execution_allocations_groups, "Parse and add Execution Allocations Groups to protocol tree")
omi_memx_options_memo_sbe_v1_10.prefs.show_execution_report_bulk_quote_component_new_message = Pref.bool("Show Execution Report Bulk Quote Component New Message", show.execution_report_bulk_quote_component_new_message, "Parse and add Execution Report Bulk Quote Component New Message to protocol tree")
omi_memx_options_memo_sbe_v1_10.prefs.show_execution_report_bulk_quote_pending_new_message = Pref.bool("Show Execution Report Bulk Quote Pending New Message", show.execution_report_bulk_quote_pending_new_message, "Parse and add Execution Report Bulk Quote Pending New Message to protocol tree")
omi_memx_options_memo_sbe_v1_10.prefs.show_execution_report_canceled_message = Pref.bool("Show Execution Report Canceled Message", show.execution_report_canceled_message, "Parse and add Execution Report Canceled Message to protocol tree")
omi_memx_options_memo_sbe_v1_10.prefs.show_execution_report_new_message = Pref.bool("Show Execution Report New Message", show.execution_report_new_message, "Parse and add Execution Report New Message to protocol tree")
omi_memx_options_memo_sbe_v1_10.prefs.show_execution_report_pending_cancel_message = Pref.bool("Show Execution Report Pending Cancel Message", show.execution_report_pending_cancel_message, "Parse and add Execution Report Pending Cancel Message to protocol tree")
omi_memx_options_memo_sbe_v1_10.prefs.show_execution_report_pending_replace_message = Pref.bool("Show Execution Report Pending Replace Message", show.execution_report_pending_replace_message, "Parse and add Execution Report Pending Replace Message to protocol tree")
omi_memx_options_memo_sbe_v1_10.prefs.show_execution_report_rejected_message = Pref.bool("Show Execution Report Rejected Message", show.execution_report_rejected_message, "Parse and add Execution Report Rejected Message to protocol tree")
omi_memx_options_memo_sbe_v1_10.prefs.show_execution_report_replaced_message = Pref.bool("Show Execution Report Replaced Message", show.execution_report_replaced_message, "Parse and add Execution Report Replaced Message to protocol tree")
omi_memx_options_memo_sbe_v1_10.prefs.show_execution_report_restatement_message = Pref.bool("Show Execution Report Restatement Message", show.execution_report_restatement_message, "Parse and add Execution Report Restatement Message to protocol tree")
omi_memx_options_memo_sbe_v1_10.prefs.show_execution_report_trade_break_message = Pref.bool("Show Execution Report Trade Break Message", show.execution_report_trade_break_message, "Parse and add Execution Report Trade Break Message to protocol tree")
omi_memx_options_memo_sbe_v1_10.prefs.show_execution_report_trade_correction_message = Pref.bool("Show Execution Report Trade Correction Message", show.execution_report_trade_correction_message, "Parse and add Execution Report Trade Correction Message to protocol tree")
omi_memx_options_memo_sbe_v1_10.prefs.show_execution_report_trade_message = Pref.bool("Show Execution Report Trade Message", show.execution_report_trade_message, "Parse and add Execution Report Trade Message to protocol tree")
omi_memx_options_memo_sbe_v1_10.prefs.show_login_accepted_message = Pref.bool("Show Login Accepted Message", show.login_accepted_message, "Parse and add Login Accepted Message to protocol tree")
omi_memx_options_memo_sbe_v1_10.prefs.show_login_rejected_message = Pref.bool("Show Login Rejected Message", show.login_rejected_message, "Parse and add Login Rejected Message to protocol tree")
omi_memx_options_memo_sbe_v1_10.prefs.show_login_request_message = Pref.bool("Show Login Request Message", show.login_request_message, "Parse and add Login Request Message to protocol tree")
omi_memx_options_memo_sbe_v1_10.prefs.show_long_one_sided_bulk_quote_message = Pref.bool("Show Long One Sided Bulk Quote Message", show.long_one_sided_bulk_quote_message, "Parse and add Long One Sided Bulk Quote Message to protocol tree")
omi_memx_options_memo_sbe_v1_10.prefs.show_long_two_sided_bulk_quote_message = Pref.bool("Show Long Two Sided Bulk Quote Message", show.long_two_sided_bulk_quote_message, "Parse and add Long Two Sided Bulk Quote Message to protocol tree")
omi_memx_options_memo_sbe_v1_10.prefs.show_mass_cancel_bulk_clear_all_lockouts_request_message = Pref.bool("Show Mass Cancel Bulk Clear All Lockouts Request Message", show.mass_cancel_bulk_clear_all_lockouts_request_message, "Parse and add Mass Cancel Bulk Clear All Lockouts Request Message to protocol tree")
omi_memx_options_memo_sbe_v1_10.prefs.show_mass_cancel_bulk_clear_lockout_accepted_message = Pref.bool("Show Mass Cancel Bulk Clear Lockout Accepted Message", show.mass_cancel_bulk_clear_lockout_accepted_message, "Parse and add Mass Cancel Bulk Clear Lockout Accepted Message to protocol tree")
omi_memx_options_memo_sbe_v1_10.prefs.show_mass_cancel_bulk_clear_lockout_reject_message = Pref.bool("Show Mass Cancel Bulk Clear Lockout Reject Message", show.mass_cancel_bulk_clear_lockout_reject_message, "Parse and add Mass Cancel Bulk Clear Lockout Reject Message to protocol tree")
omi_memx_options_memo_sbe_v1_10.prefs.show_mass_cancel_bulk_clear_lockouts_by_efid_or_underlier_request_message = Pref.bool("Show Mass Cancel Bulk Clear Lockouts By Efid Or Underlier Request Message", show.mass_cancel_bulk_clear_lockouts_by_efid_or_underlier_request_message, "Parse and add Mass Cancel Bulk Clear Lockouts By Efid Or Underlier Request Message to protocol tree")
omi_memx_options_memo_sbe_v1_10.prefs.show_mass_cancel_clear_lockout_done_message = Pref.bool("Show Mass Cancel Clear Lockout Done Message", show.mass_cancel_clear_lockout_done_message, "Parse and add Mass Cancel Clear Lockout Done Message to protocol tree")
omi_memx_options_memo_sbe_v1_10.prefs.show_mass_cancel_clear_lockout_reject_message = Pref.bool("Show Mass Cancel Clear Lockout Reject Message", show.mass_cancel_clear_lockout_reject_message, "Parse and add Mass Cancel Clear Lockout Reject Message to protocol tree")
omi_memx_options_memo_sbe_v1_10.prefs.show_mass_cancel_clear_lockout_request_message = Pref.bool("Show Mass Cancel Clear Lockout Request Message", show.mass_cancel_clear_lockout_request_message, "Parse and add Mass Cancel Clear Lockout Request Message to protocol tree")
omi_memx_options_memo_sbe_v1_10.prefs.show_mass_cancel_done_message = Pref.bool("Show Mass Cancel Done Message", show.mass_cancel_done_message, "Parse and add Mass Cancel Done Message to protocol tree")
omi_memx_options_memo_sbe_v1_10.prefs.show_mass_cancel_inst = Pref.bool("Show Mass Cancel Inst", show.mass_cancel_inst, "Parse and add Mass Cancel Inst to protocol tree")
omi_memx_options_memo_sbe_v1_10.prefs.show_mass_cancel_reject_message = Pref.bool("Show Mass Cancel Reject Message", show.mass_cancel_reject_message, "Parse and add Mass Cancel Reject Message to protocol tree")
omi_memx_options_memo_sbe_v1_10.prefs.show_mass_cancel_request_message = Pref.bool("Show Mass Cancel Request Message", show.mass_cancel_request_message, "Parse and add Mass Cancel Request Message to protocol tree")
omi_memx_options_memo_sbe_v1_10.prefs.show_nested_parties_group = Pref.bool("Show Nested Parties Group", show.nested_parties_group, "Parse and add Nested Parties Group to protocol tree")
omi_memx_options_memo_sbe_v1_10.prefs.show_nested_parties_groups = Pref.bool("Show Nested Parties Groups", show.nested_parties_groups, "Parse and add Nested Parties Groups to protocol tree")
omi_memx_options_memo_sbe_v1_10.prefs.show_new_order_single_message = Pref.bool("Show New Order Single Message", show.new_order_single_message, "Parse and add New Order Single Message to protocol tree")
omi_memx_options_memo_sbe_v1_10.prefs.show_one_sided_quotes_group = Pref.bool("Show One Sided Quotes Group", show.one_sided_quotes_group, "Parse and add One Sided Quotes Group to protocol tree")
omi_memx_options_memo_sbe_v1_10.prefs.show_one_sided_quotes_groups = Pref.bool("Show One Sided Quotes Groups", show.one_sided_quotes_groups, "Parse and add One Sided Quotes Groups to protocol tree")
omi_memx_options_memo_sbe_v1_10.prefs.show_order_cancel_reject_message = Pref.bool("Show Order Cancel Reject Message", show.order_cancel_reject_message, "Parse and add Order Cancel Reject Message to protocol tree")
omi_memx_options_memo_sbe_v1_10.prefs.show_order_cancel_replace_request_message = Pref.bool("Show Order Cancel Replace Request Message", show.order_cancel_replace_request_message, "Parse and add Order Cancel Replace Request Message to protocol tree")
omi_memx_options_memo_sbe_v1_10.prefs.show_order_cancel_request_message = Pref.bool("Show Order Cancel Request Message", show.order_cancel_request_message, "Parse and add Order Cancel Request Message to protocol tree")
omi_memx_options_memo_sbe_v1_10.prefs.show_packet = Pref.bool("Show Packet", show.packet, "Parse and add Packet to protocol tree")
omi_memx_options_memo_sbe_v1_10.prefs.show_parties_group = Pref.bool("Show Parties Group", show.parties_group, "Parse and add Parties Group to protocol tree")
omi_memx_options_memo_sbe_v1_10.prefs.show_parties_groups = Pref.bool("Show Parties Groups", show.parties_groups, "Parse and add Parties Groups to protocol tree")
omi_memx_options_memo_sbe_v1_10.prefs.show_pending_mass_cancel_message = Pref.bool("Show Pending Mass Cancel Message", show.pending_mass_cancel_message, "Parse and add Pending Mass Cancel Message to protocol tree")
omi_memx_options_memo_sbe_v1_10.prefs.show_repeating_group_dimensions = Pref.bool("Show Repeating Group Dimensions", show.repeating_group_dimensions, "Parse and add Repeating Group Dimensions to protocol tree")
omi_memx_options_memo_sbe_v1_10.prefs.show_replay_all_request_message = Pref.bool("Show Replay All Request Message", show.replay_all_request_message, "Parse and add Replay All Request Message to protocol tree")
omi_memx_options_memo_sbe_v1_10.prefs.show_replay_begin_message = Pref.bool("Show Replay Begin Message", show.replay_begin_message, "Parse and add Replay Begin Message to protocol tree")
omi_memx_options_memo_sbe_v1_10.prefs.show_replay_complete_message = Pref.bool("Show Replay Complete Message", show.replay_complete_message, "Parse and add Replay Complete Message to protocol tree")
omi_memx_options_memo_sbe_v1_10.prefs.show_replay_rejected_message = Pref.bool("Show Replay Rejected Message", show.replay_rejected_message, "Parse and add Replay Rejected Message to protocol tree")
omi_memx_options_memo_sbe_v1_10.prefs.show_replay_request_message = Pref.bool("Show Replay Request Message", show.replay_request_message, "Parse and add Replay Request Message to protocol tree")
omi_memx_options_memo_sbe_v1_10.prefs.show_reported_allocations_group = Pref.bool("Show Reported Allocations Group", show.reported_allocations_group, "Parse and add Reported Allocations Group to protocol tree")
omi_memx_options_memo_sbe_v1_10.prefs.show_reported_allocations_groups = Pref.bool("Show Reported Allocations Groups", show.reported_allocations_groups, "Parse and add Reported Allocations Groups to protocol tree")
omi_memx_options_memo_sbe_v1_10.prefs.show_requested_allocations_group = Pref.bool("Show Requested Allocations Group", show.requested_allocations_group, "Parse and add Requested Allocations Group to protocol tree")
omi_memx_options_memo_sbe_v1_10.prefs.show_requested_allocations_groups = Pref.bool("Show Requested Allocations Groups", show.requested_allocations_groups, "Parse and add Requested Allocations Groups to protocol tree")
omi_memx_options_memo_sbe_v1_10.prefs.show_sbe_header = Pref.bool("Show Sbe Header", show.sbe_header, "Parse and add Sbe Header to protocol tree")
omi_memx_options_memo_sbe_v1_10.prefs.show_sbe_message = Pref.bool("Show Sbe Message", show.sbe_message, "Parse and add Sbe Message to protocol tree")
omi_memx_options_memo_sbe_v1_10.prefs.show_sequenced_message = Pref.bool("Show Sequenced Message", show.sequenced_message, "Parse and add Sequenced Message to protocol tree")
omi_memx_options_memo_sbe_v1_10.prefs.show_short_one_sided_bulk_quote_message = Pref.bool("Show Short One Sided Bulk Quote Message", show.short_one_sided_bulk_quote_message, "Parse and add Short One Sided Bulk Quote Message to protocol tree")
omi_memx_options_memo_sbe_v1_10.prefs.show_short_two_sided_bulk_quote_message = Pref.bool("Show Short Two Sided Bulk Quote Message", show.short_two_sided_bulk_quote_message, "Parse and add Short Two Sided Bulk Quote Message to protocol tree")
omi_memx_options_memo_sbe_v1_10.prefs.show_start_of_session_message = Pref.bool("Show Start Of Session Message", show.start_of_session_message, "Parse and add Start Of Session Message to protocol tree")
omi_memx_options_memo_sbe_v1_10.prefs.show_stream_begin_message = Pref.bool("Show Stream Begin Message", show.stream_begin_message, "Parse and add Stream Begin Message to protocol tree")
omi_memx_options_memo_sbe_v1_10.prefs.show_stream_complete_message = Pref.bool("Show Stream Complete Message", show.stream_complete_message, "Parse and add Stream Complete Message to protocol tree")
omi_memx_options_memo_sbe_v1_10.prefs.show_stream_rejected_message = Pref.bool("Show Stream Rejected Message", show.stream_rejected_message, "Parse and add Stream Rejected Message to protocol tree")
omi_memx_options_memo_sbe_v1_10.prefs.show_stream_request_message = Pref.bool("Show Stream Request Message", show.stream_request_message, "Parse and add Stream Request Message to protocol tree")
omi_memx_options_memo_sbe_v1_10.prefs.show_two_sided_quotes_group = Pref.bool("Show Two Sided Quotes Group", show.two_sided_quotes_group, "Parse and add Two Sided Quotes Group to protocol tree")
omi_memx_options_memo_sbe_v1_10.prefs.show_two_sided_quotes_groups = Pref.bool("Show Two Sided Quotes Groups", show.two_sided_quotes_groups, "Parse and add Two Sided Quotes Groups to protocol tree")
omi_memx_options_memo_sbe_v1_10.prefs.show_unsequenced_message = Pref.bool("Show Unsequenced Message", show.unsequenced_message, "Parse and add Unsequenced Message to protocol tree")
omi_memx_options_memo_sbe_v1_10.prefs.show_user_notification_message = Pref.bool("Show User Notification Message", show.user_notification_message, "Parse and add User Notification Message to protocol tree")
omi_memx_options_memo_sbe_v1_10.prefs.show_data = Pref.bool("Show Data", show.data, "Parse and add Data to protocol tree")
omi_memx_options_memo_sbe_v1_10.prefs.show_payload = Pref.bool("Show Payload", show.payload, "Parse and add Payload to protocol tree")

-- Handle changed preferences
function omi_memx_options_memo_sbe_v1_10.prefs_changed()
  local changed = false

  -- Check if show options have changed
  if show.allocation_instruction_ack_message ~= omi_memx_options_memo_sbe_v1_10.prefs.show_allocation_instruction_ack_message then
    show.allocation_instruction_ack_message = omi_memx_options_memo_sbe_v1_10.prefs.show_allocation_instruction_ack_message
    changed = true
  end
  if show.allocation_instruction_alert_message ~= omi_memx_options_memo_sbe_v1_10.prefs.show_allocation_instruction_alert_message then
    show.allocation_instruction_alert_message = omi_memx_options_memo_sbe_v1_10.prefs.show_allocation_instruction_alert_message
    changed = true
  end
  if show.allocation_instruction_message ~= omi_memx_options_memo_sbe_v1_10.prefs.show_allocation_instruction_message then
    show.allocation_instruction_message = omi_memx_options_memo_sbe_v1_10.prefs.show_allocation_instruction_message
    changed = true
  end
  if show.common_header ~= omi_memx_options_memo_sbe_v1_10.prefs.show_common_header then
    show.common_header = omi_memx_options_memo_sbe_v1_10.prefs.show_common_header
    changed = true
  end
  if show.exec_inst ~= omi_memx_options_memo_sbe_v1_10.prefs.show_exec_inst then
    show.exec_inst = omi_memx_options_memo_sbe_v1_10.prefs.show_exec_inst
    changed = true
  end
  if show.execution_allocations_group ~= omi_memx_options_memo_sbe_v1_10.prefs.show_execution_allocations_group then
    show.execution_allocations_group = omi_memx_options_memo_sbe_v1_10.prefs.show_execution_allocations_group
    changed = true
  end
  if show.execution_allocations_groups ~= omi_memx_options_memo_sbe_v1_10.prefs.show_execution_allocations_groups then
    show.execution_allocations_groups = omi_memx_options_memo_sbe_v1_10.prefs.show_execution_allocations_groups
    changed = true
  end
  if show.execution_report_bulk_quote_component_new_message ~= omi_memx_options_memo_sbe_v1_10.prefs.show_execution_report_bulk_quote_component_new_message then
    show.execution_report_bulk_quote_component_new_message = omi_memx_options_memo_sbe_v1_10.prefs.show_execution_report_bulk_quote_component_new_message
    changed = true
  end
  if show.execution_report_bulk_quote_pending_new_message ~= omi_memx_options_memo_sbe_v1_10.prefs.show_execution_report_bulk_quote_pending_new_message then
    show.execution_report_bulk_quote_pending_new_message = omi_memx_options_memo_sbe_v1_10.prefs.show_execution_report_bulk_quote_pending_new_message
    changed = true
  end
  if show.execution_report_canceled_message ~= omi_memx_options_memo_sbe_v1_10.prefs.show_execution_report_canceled_message then
    show.execution_report_canceled_message = omi_memx_options_memo_sbe_v1_10.prefs.show_execution_report_canceled_message
    changed = true
  end
  if show.execution_report_new_message ~= omi_memx_options_memo_sbe_v1_10.prefs.show_execution_report_new_message then
    show.execution_report_new_message = omi_memx_options_memo_sbe_v1_10.prefs.show_execution_report_new_message
    changed = true
  end
  if show.execution_report_pending_cancel_message ~= omi_memx_options_memo_sbe_v1_10.prefs.show_execution_report_pending_cancel_message then
    show.execution_report_pending_cancel_message = omi_memx_options_memo_sbe_v1_10.prefs.show_execution_report_pending_cancel_message
    changed = true
  end
  if show.execution_report_pending_replace_message ~= omi_memx_options_memo_sbe_v1_10.prefs.show_execution_report_pending_replace_message then
    show.execution_report_pending_replace_message = omi_memx_options_memo_sbe_v1_10.prefs.show_execution_report_pending_replace_message
    changed = true
  end
  if show.execution_report_rejected_message ~= omi_memx_options_memo_sbe_v1_10.prefs.show_execution_report_rejected_message then
    show.execution_report_rejected_message = omi_memx_options_memo_sbe_v1_10.prefs.show_execution_report_rejected_message
    changed = true
  end
  if show.execution_report_replaced_message ~= omi_memx_options_memo_sbe_v1_10.prefs.show_execution_report_replaced_message then
    show.execution_report_replaced_message = omi_memx_options_memo_sbe_v1_10.prefs.show_execution_report_replaced_message
    changed = true
  end
  if show.execution_report_restatement_message ~= omi_memx_options_memo_sbe_v1_10.prefs.show_execution_report_restatement_message then
    show.execution_report_restatement_message = omi_memx_options_memo_sbe_v1_10.prefs.show_execution_report_restatement_message
    changed = true
  end
  if show.execution_report_trade_break_message ~= omi_memx_options_memo_sbe_v1_10.prefs.show_execution_report_trade_break_message then
    show.execution_report_trade_break_message = omi_memx_options_memo_sbe_v1_10.prefs.show_execution_report_trade_break_message
    changed = true
  end
  if show.execution_report_trade_correction_message ~= omi_memx_options_memo_sbe_v1_10.prefs.show_execution_report_trade_correction_message then
    show.execution_report_trade_correction_message = omi_memx_options_memo_sbe_v1_10.prefs.show_execution_report_trade_correction_message
    changed = true
  end
  if show.execution_report_trade_message ~= omi_memx_options_memo_sbe_v1_10.prefs.show_execution_report_trade_message then
    show.execution_report_trade_message = omi_memx_options_memo_sbe_v1_10.prefs.show_execution_report_trade_message
    changed = true
  end
  if show.login_accepted_message ~= omi_memx_options_memo_sbe_v1_10.prefs.show_login_accepted_message then
    show.login_accepted_message = omi_memx_options_memo_sbe_v1_10.prefs.show_login_accepted_message
    changed = true
  end
  if show.login_rejected_message ~= omi_memx_options_memo_sbe_v1_10.prefs.show_login_rejected_message then
    show.login_rejected_message = omi_memx_options_memo_sbe_v1_10.prefs.show_login_rejected_message
    changed = true
  end
  if show.login_request_message ~= omi_memx_options_memo_sbe_v1_10.prefs.show_login_request_message then
    show.login_request_message = omi_memx_options_memo_sbe_v1_10.prefs.show_login_request_message
    changed = true
  end
  if show.long_one_sided_bulk_quote_message ~= omi_memx_options_memo_sbe_v1_10.prefs.show_long_one_sided_bulk_quote_message then
    show.long_one_sided_bulk_quote_message = omi_memx_options_memo_sbe_v1_10.prefs.show_long_one_sided_bulk_quote_message
    changed = true
  end
  if show.long_two_sided_bulk_quote_message ~= omi_memx_options_memo_sbe_v1_10.prefs.show_long_two_sided_bulk_quote_message then
    show.long_two_sided_bulk_quote_message = omi_memx_options_memo_sbe_v1_10.prefs.show_long_two_sided_bulk_quote_message
    changed = true
  end
  if show.mass_cancel_bulk_clear_all_lockouts_request_message ~= omi_memx_options_memo_sbe_v1_10.prefs.show_mass_cancel_bulk_clear_all_lockouts_request_message then
    show.mass_cancel_bulk_clear_all_lockouts_request_message = omi_memx_options_memo_sbe_v1_10.prefs.show_mass_cancel_bulk_clear_all_lockouts_request_message
    changed = true
  end
  if show.mass_cancel_bulk_clear_lockout_accepted_message ~= omi_memx_options_memo_sbe_v1_10.prefs.show_mass_cancel_bulk_clear_lockout_accepted_message then
    show.mass_cancel_bulk_clear_lockout_accepted_message = omi_memx_options_memo_sbe_v1_10.prefs.show_mass_cancel_bulk_clear_lockout_accepted_message
    changed = true
  end
  if show.mass_cancel_bulk_clear_lockout_reject_message ~= omi_memx_options_memo_sbe_v1_10.prefs.show_mass_cancel_bulk_clear_lockout_reject_message then
    show.mass_cancel_bulk_clear_lockout_reject_message = omi_memx_options_memo_sbe_v1_10.prefs.show_mass_cancel_bulk_clear_lockout_reject_message
    changed = true
  end
  if show.mass_cancel_bulk_clear_lockouts_by_efid_or_underlier_request_message ~= omi_memx_options_memo_sbe_v1_10.prefs.show_mass_cancel_bulk_clear_lockouts_by_efid_or_underlier_request_message then
    show.mass_cancel_bulk_clear_lockouts_by_efid_or_underlier_request_message = omi_memx_options_memo_sbe_v1_10.prefs.show_mass_cancel_bulk_clear_lockouts_by_efid_or_underlier_request_message
    changed = true
  end
  if show.mass_cancel_clear_lockout_done_message ~= omi_memx_options_memo_sbe_v1_10.prefs.show_mass_cancel_clear_lockout_done_message then
    show.mass_cancel_clear_lockout_done_message = omi_memx_options_memo_sbe_v1_10.prefs.show_mass_cancel_clear_lockout_done_message
    changed = true
  end
  if show.mass_cancel_clear_lockout_reject_message ~= omi_memx_options_memo_sbe_v1_10.prefs.show_mass_cancel_clear_lockout_reject_message then
    show.mass_cancel_clear_lockout_reject_message = omi_memx_options_memo_sbe_v1_10.prefs.show_mass_cancel_clear_lockout_reject_message
    changed = true
  end
  if show.mass_cancel_clear_lockout_request_message ~= omi_memx_options_memo_sbe_v1_10.prefs.show_mass_cancel_clear_lockout_request_message then
    show.mass_cancel_clear_lockout_request_message = omi_memx_options_memo_sbe_v1_10.prefs.show_mass_cancel_clear_lockout_request_message
    changed = true
  end
  if show.mass_cancel_done_message ~= omi_memx_options_memo_sbe_v1_10.prefs.show_mass_cancel_done_message then
    show.mass_cancel_done_message = omi_memx_options_memo_sbe_v1_10.prefs.show_mass_cancel_done_message
    changed = true
  end
  if show.mass_cancel_inst ~= omi_memx_options_memo_sbe_v1_10.prefs.show_mass_cancel_inst then
    show.mass_cancel_inst = omi_memx_options_memo_sbe_v1_10.prefs.show_mass_cancel_inst
    changed = true
  end
  if show.mass_cancel_reject_message ~= omi_memx_options_memo_sbe_v1_10.prefs.show_mass_cancel_reject_message then
    show.mass_cancel_reject_message = omi_memx_options_memo_sbe_v1_10.prefs.show_mass_cancel_reject_message
    changed = true
  end
  if show.mass_cancel_request_message ~= omi_memx_options_memo_sbe_v1_10.prefs.show_mass_cancel_request_message then
    show.mass_cancel_request_message = omi_memx_options_memo_sbe_v1_10.prefs.show_mass_cancel_request_message
    changed = true
  end
  if show.nested_parties_group ~= omi_memx_options_memo_sbe_v1_10.prefs.show_nested_parties_group then
    show.nested_parties_group = omi_memx_options_memo_sbe_v1_10.prefs.show_nested_parties_group
    changed = true
  end
  if show.nested_parties_groups ~= omi_memx_options_memo_sbe_v1_10.prefs.show_nested_parties_groups then
    show.nested_parties_groups = omi_memx_options_memo_sbe_v1_10.prefs.show_nested_parties_groups
    changed = true
  end
  if show.new_order_single_message ~= omi_memx_options_memo_sbe_v1_10.prefs.show_new_order_single_message then
    show.new_order_single_message = omi_memx_options_memo_sbe_v1_10.prefs.show_new_order_single_message
    changed = true
  end
  if show.one_sided_quotes_group ~= omi_memx_options_memo_sbe_v1_10.prefs.show_one_sided_quotes_group then
    show.one_sided_quotes_group = omi_memx_options_memo_sbe_v1_10.prefs.show_one_sided_quotes_group
    changed = true
  end
  if show.one_sided_quotes_groups ~= omi_memx_options_memo_sbe_v1_10.prefs.show_one_sided_quotes_groups then
    show.one_sided_quotes_groups = omi_memx_options_memo_sbe_v1_10.prefs.show_one_sided_quotes_groups
    changed = true
  end
  if show.order_cancel_reject_message ~= omi_memx_options_memo_sbe_v1_10.prefs.show_order_cancel_reject_message then
    show.order_cancel_reject_message = omi_memx_options_memo_sbe_v1_10.prefs.show_order_cancel_reject_message
    changed = true
  end
  if show.order_cancel_replace_request_message ~= omi_memx_options_memo_sbe_v1_10.prefs.show_order_cancel_replace_request_message then
    show.order_cancel_replace_request_message = omi_memx_options_memo_sbe_v1_10.prefs.show_order_cancel_replace_request_message
    changed = true
  end
  if show.order_cancel_request_message ~= omi_memx_options_memo_sbe_v1_10.prefs.show_order_cancel_request_message then
    show.order_cancel_request_message = omi_memx_options_memo_sbe_v1_10.prefs.show_order_cancel_request_message
    changed = true
  end
  if show.packet ~= omi_memx_options_memo_sbe_v1_10.prefs.show_packet then
    show.packet = omi_memx_options_memo_sbe_v1_10.prefs.show_packet
    changed = true
  end
  if show.parties_group ~= omi_memx_options_memo_sbe_v1_10.prefs.show_parties_group then
    show.parties_group = omi_memx_options_memo_sbe_v1_10.prefs.show_parties_group
    changed = true
  end
  if show.parties_groups ~= omi_memx_options_memo_sbe_v1_10.prefs.show_parties_groups then
    show.parties_groups = omi_memx_options_memo_sbe_v1_10.prefs.show_parties_groups
    changed = true
  end
  if show.pending_mass_cancel_message ~= omi_memx_options_memo_sbe_v1_10.prefs.show_pending_mass_cancel_message then
    show.pending_mass_cancel_message = omi_memx_options_memo_sbe_v1_10.prefs.show_pending_mass_cancel_message
    changed = true
  end
  if show.repeating_group_dimensions ~= omi_memx_options_memo_sbe_v1_10.prefs.show_repeating_group_dimensions then
    show.repeating_group_dimensions = omi_memx_options_memo_sbe_v1_10.prefs.show_repeating_group_dimensions
    changed = true
  end
  if show.replay_all_request_message ~= omi_memx_options_memo_sbe_v1_10.prefs.show_replay_all_request_message then
    show.replay_all_request_message = omi_memx_options_memo_sbe_v1_10.prefs.show_replay_all_request_message
    changed = true
  end
  if show.replay_begin_message ~= omi_memx_options_memo_sbe_v1_10.prefs.show_replay_begin_message then
    show.replay_begin_message = omi_memx_options_memo_sbe_v1_10.prefs.show_replay_begin_message
    changed = true
  end
  if show.replay_complete_message ~= omi_memx_options_memo_sbe_v1_10.prefs.show_replay_complete_message then
    show.replay_complete_message = omi_memx_options_memo_sbe_v1_10.prefs.show_replay_complete_message
    changed = true
  end
  if show.replay_rejected_message ~= omi_memx_options_memo_sbe_v1_10.prefs.show_replay_rejected_message then
    show.replay_rejected_message = omi_memx_options_memo_sbe_v1_10.prefs.show_replay_rejected_message
    changed = true
  end
  if show.replay_request_message ~= omi_memx_options_memo_sbe_v1_10.prefs.show_replay_request_message then
    show.replay_request_message = omi_memx_options_memo_sbe_v1_10.prefs.show_replay_request_message
    changed = true
  end
  if show.reported_allocations_group ~= omi_memx_options_memo_sbe_v1_10.prefs.show_reported_allocations_group then
    show.reported_allocations_group = omi_memx_options_memo_sbe_v1_10.prefs.show_reported_allocations_group
    changed = true
  end
  if show.reported_allocations_groups ~= omi_memx_options_memo_sbe_v1_10.prefs.show_reported_allocations_groups then
    show.reported_allocations_groups = omi_memx_options_memo_sbe_v1_10.prefs.show_reported_allocations_groups
    changed = true
  end
  if show.requested_allocations_group ~= omi_memx_options_memo_sbe_v1_10.prefs.show_requested_allocations_group then
    show.requested_allocations_group = omi_memx_options_memo_sbe_v1_10.prefs.show_requested_allocations_group
    changed = true
  end
  if show.requested_allocations_groups ~= omi_memx_options_memo_sbe_v1_10.prefs.show_requested_allocations_groups then
    show.requested_allocations_groups = omi_memx_options_memo_sbe_v1_10.prefs.show_requested_allocations_groups
    changed = true
  end
  if show.sbe_header ~= omi_memx_options_memo_sbe_v1_10.prefs.show_sbe_header then
    show.sbe_header = omi_memx_options_memo_sbe_v1_10.prefs.show_sbe_header
    changed = true
  end
  if show.sbe_message ~= omi_memx_options_memo_sbe_v1_10.prefs.show_sbe_message then
    show.sbe_message = omi_memx_options_memo_sbe_v1_10.prefs.show_sbe_message
    changed = true
  end
  if show.sequenced_message ~= omi_memx_options_memo_sbe_v1_10.prefs.show_sequenced_message then
    show.sequenced_message = omi_memx_options_memo_sbe_v1_10.prefs.show_sequenced_message
    changed = true
  end
  if show.short_one_sided_bulk_quote_message ~= omi_memx_options_memo_sbe_v1_10.prefs.show_short_one_sided_bulk_quote_message then
    show.short_one_sided_bulk_quote_message = omi_memx_options_memo_sbe_v1_10.prefs.show_short_one_sided_bulk_quote_message
    changed = true
  end
  if show.short_two_sided_bulk_quote_message ~= omi_memx_options_memo_sbe_v1_10.prefs.show_short_two_sided_bulk_quote_message then
    show.short_two_sided_bulk_quote_message = omi_memx_options_memo_sbe_v1_10.prefs.show_short_two_sided_bulk_quote_message
    changed = true
  end
  if show.start_of_session_message ~= omi_memx_options_memo_sbe_v1_10.prefs.show_start_of_session_message then
    show.start_of_session_message = omi_memx_options_memo_sbe_v1_10.prefs.show_start_of_session_message
    changed = true
  end
  if show.stream_begin_message ~= omi_memx_options_memo_sbe_v1_10.prefs.show_stream_begin_message then
    show.stream_begin_message = omi_memx_options_memo_sbe_v1_10.prefs.show_stream_begin_message
    changed = true
  end
  if show.stream_complete_message ~= omi_memx_options_memo_sbe_v1_10.prefs.show_stream_complete_message then
    show.stream_complete_message = omi_memx_options_memo_sbe_v1_10.prefs.show_stream_complete_message
    changed = true
  end
  if show.stream_rejected_message ~= omi_memx_options_memo_sbe_v1_10.prefs.show_stream_rejected_message then
    show.stream_rejected_message = omi_memx_options_memo_sbe_v1_10.prefs.show_stream_rejected_message
    changed = true
  end
  if show.stream_request_message ~= omi_memx_options_memo_sbe_v1_10.prefs.show_stream_request_message then
    show.stream_request_message = omi_memx_options_memo_sbe_v1_10.prefs.show_stream_request_message
    changed = true
  end
  if show.two_sided_quotes_group ~= omi_memx_options_memo_sbe_v1_10.prefs.show_two_sided_quotes_group then
    show.two_sided_quotes_group = omi_memx_options_memo_sbe_v1_10.prefs.show_two_sided_quotes_group
    changed = true
  end
  if show.two_sided_quotes_groups ~= omi_memx_options_memo_sbe_v1_10.prefs.show_two_sided_quotes_groups then
    show.two_sided_quotes_groups = omi_memx_options_memo_sbe_v1_10.prefs.show_two_sided_quotes_groups
    changed = true
  end
  if show.unsequenced_message ~= omi_memx_options_memo_sbe_v1_10.prefs.show_unsequenced_message then
    show.unsequenced_message = omi_memx_options_memo_sbe_v1_10.prefs.show_unsequenced_message
    changed = true
  end
  if show.user_notification_message ~= omi_memx_options_memo_sbe_v1_10.prefs.show_user_notification_message then
    show.user_notification_message = omi_memx_options_memo_sbe_v1_10.prefs.show_user_notification_message
    changed = true
  end
  if show.data ~= omi_memx_options_memo_sbe_v1_10.prefs.show_data then
    show.data = omi_memx_options_memo_sbe_v1_10.prefs.show_data
    changed = true
  end
  if show.payload ~= omi_memx_options_memo_sbe_v1_10.prefs.show_payload then
    show.payload = omi_memx_options_memo_sbe_v1_10.prefs.show_payload
    changed = true
  end

  -- Reload on changed preference
  if changed then
    reload()
  end
end


-----------------------------------------------------------------------
-- Dissect Memx Options Memo Sbe 1.10
-----------------------------------------------------------------------

-- Sending Time
memx_options_memo_sbe_v1_10.sending_time = {}

-- Size: Sending Time
memx_options_memo_sbe_v1_10.sending_time.size = 8

-- Display: Sending Time
memx_options_memo_sbe_v1_10.sending_time.display = function(value)
  -- Parse unix timestamp
  local seconds = math.floor(value:tonumber()/1000000000)
  local nanoseconds = value:tonumber()%1000000000

  return "Sending Time: "..os.date("%x %H:%M:%S.", seconds)..string.format("%09d", nanoseconds)
end

-- Dissect: Sending Time
memx_options_memo_sbe_v1_10.sending_time.dissect = function(buffer, offset, packet, parent)
  local length = memx_options_memo_sbe_v1_10.sending_time.size
  local range = buffer(offset, length)
  local value = range:uint64()
  local display = memx_options_memo_sbe_v1_10.sending_time.display(value, buffer, offset, packet, parent)

  parent:add(omi_memx_options_memo_sbe_v1_10.fields.sending_time, range, value, display)

  return offset + length, value
end

-- ClOrdId
memx_options_memo_sbe_v1_10.clordid = {}

-- Size: ClOrdId
memx_options_memo_sbe_v1_10.clordid.size = 20

-- Display: ClOrdId
memx_options_memo_sbe_v1_10.clordid.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "ClOrdId: No Value"
  end

  return "ClOrdId: "..value
end

-- Dissect: ClOrdId
memx_options_memo_sbe_v1_10.clordid.dissect = function(buffer, offset, packet, parent)
  local length = memx_options_memo_sbe_v1_10.clordid.size
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

  local display = memx_options_memo_sbe_v1_10.clordid.display(value, buffer, offset, packet, parent)

  parent:add(omi_memx_options_memo_sbe_v1_10.fields.clordid, range, value, display)

  return offset + length, value
end

-- Mass Cancel Bulk Clear Lockout Accepted Message
memx_options_memo_sbe_v1_10.mass_cancel_bulk_clear_lockout_accepted_message = {}

-- Size: Mass Cancel Bulk Clear Lockout Accepted Message
memx_options_memo_sbe_v1_10.mass_cancel_bulk_clear_lockout_accepted_message.size =
  memx_options_memo_sbe_v1_10.clordid.size + 
  memx_options_memo_sbe_v1_10.sending_time.size

-- Display: Mass Cancel Bulk Clear Lockout Accepted Message
memx_options_memo_sbe_v1_10.mass_cancel_bulk_clear_lockout_accepted_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Mass Cancel Bulk Clear Lockout Accepted Message
memx_options_memo_sbe_v1_10.mass_cancel_bulk_clear_lockout_accepted_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- ClOrdId: 20 Byte Ascii String
  index, clordid = memx_options_memo_sbe_v1_10.clordid.dissect(buffer, index, packet, parent)

  -- Sending Time: 8 Byte Unsigned Fixed Width Integer
  index, sending_time = memx_options_memo_sbe_v1_10.sending_time.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Mass Cancel Bulk Clear Lockout Accepted Message
memx_options_memo_sbe_v1_10.mass_cancel_bulk_clear_lockout_accepted_message.dissect = function(buffer, offset, packet, parent)
  if show.mass_cancel_bulk_clear_lockout_accepted_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_memx_options_memo_sbe_v1_10.fields.mass_cancel_bulk_clear_lockout_accepted_message, buffer(offset, 0))
    local index = memx_options_memo_sbe_v1_10.mass_cancel_bulk_clear_lockout_accepted_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = memx_options_memo_sbe_v1_10.mass_cancel_bulk_clear_lockout_accepted_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return memx_options_memo_sbe_v1_10.mass_cancel_bulk_clear_lockout_accepted_message.fields(buffer, offset, packet, parent)
  end
end

-- Rej Reason
memx_options_memo_sbe_v1_10.rej_reason = {}

-- Size: Rej Reason
memx_options_memo_sbe_v1_10.rej_reason.size = 2

-- Display: Rej Reason
memx_options_memo_sbe_v1_10.rej_reason.display = function(value)
  if value == 0 then
    return "Rej Reason: Other (0)"
  end
  if value == 1 then
    return "Rej Reason: Missing Cl Ord Id (1)"
  end
  if value == 2 then
    return "Rej Reason: Invalid Cl Ord Id (2)"
  end
  if value == 3 then
    return "Rej Reason: Missing Lockout Id (3)"
  end
  if value == 4 then
    return "Rej Reason: Invalid Lockout Id (4)"
  end
  if value == 5 then
    return "Rej Reason: Unknown Lockout Id (5)"
  end
  if value == 6 then
    return "Rej Reason: No Lockouts Active (6)"
  end
  if value == 7 then
    return "Rej Reason: Missing Efid (7)"
  end
  if value == 8 then
    return "Rej Reason: Invalid Efid (8)"
  end
  if value == 9 then
    return "Rej Reason: Missing Underlier (9)"
  end
  if value == 10 then
    return "Rej Reason: Invalid Underlier (10)"
  end
  if value == 11 then
    return "Rej Reason: Missing Efid Or Underlier (11)"
  end
  if value == 12 then
    return "Rej Reason: Invalid Underlier For Lockout Id (12)"
  end
  if value == 65535 then
    return "Rej Reason: Null Value (65535)"
  end

  return "Rej Reason: Unknown("..value..")"
end

-- Dissect: Rej Reason
memx_options_memo_sbe_v1_10.rej_reason.dissect = function(buffer, offset, packet, parent)
  local length = memx_options_memo_sbe_v1_10.rej_reason.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = memx_options_memo_sbe_v1_10.rej_reason.display(value, buffer, offset, packet, parent)

  parent:add(omi_memx_options_memo_sbe_v1_10.fields.rej_reason, range, value, display)

  return offset + length, value
end

-- Mass Cancel Bulk Clear Lockout Reject Message
memx_options_memo_sbe_v1_10.mass_cancel_bulk_clear_lockout_reject_message = {}

-- Size: Mass Cancel Bulk Clear Lockout Reject Message
memx_options_memo_sbe_v1_10.mass_cancel_bulk_clear_lockout_reject_message.size =
  memx_options_memo_sbe_v1_10.clordid.size + 
  memx_options_memo_sbe_v1_10.rej_reason.size + 
  memx_options_memo_sbe_v1_10.sending_time.size

-- Display: Mass Cancel Bulk Clear Lockout Reject Message
memx_options_memo_sbe_v1_10.mass_cancel_bulk_clear_lockout_reject_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Mass Cancel Bulk Clear Lockout Reject Message
memx_options_memo_sbe_v1_10.mass_cancel_bulk_clear_lockout_reject_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- ClOrdId: 20 Byte Ascii String
  index, clordid = memx_options_memo_sbe_v1_10.clordid.dissect(buffer, index, packet, parent)

  -- Rej Reason: 2 Byte Unsigned Fixed Width Integer Enum with 14 values
  index, rej_reason = memx_options_memo_sbe_v1_10.rej_reason.dissect(buffer, index, packet, parent)

  -- Sending Time: 8 Byte Unsigned Fixed Width Integer
  index, sending_time = memx_options_memo_sbe_v1_10.sending_time.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Mass Cancel Bulk Clear Lockout Reject Message
memx_options_memo_sbe_v1_10.mass_cancel_bulk_clear_lockout_reject_message.dissect = function(buffer, offset, packet, parent)
  if show.mass_cancel_bulk_clear_lockout_reject_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_memx_options_memo_sbe_v1_10.fields.mass_cancel_bulk_clear_lockout_reject_message, buffer(offset, 0))
    local index = memx_options_memo_sbe_v1_10.mass_cancel_bulk_clear_lockout_reject_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = memx_options_memo_sbe_v1_10.mass_cancel_bulk_clear_lockout_reject_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return memx_options_memo_sbe_v1_10.mass_cancel_bulk_clear_lockout_reject_message.fields(buffer, offset, packet, parent)
  end
end

-- Transact Time
memx_options_memo_sbe_v1_10.transact_time = {}

-- Size: Transact Time
memx_options_memo_sbe_v1_10.transact_time.size = 8

-- Display: Transact Time
memx_options_memo_sbe_v1_10.transact_time.display = function(value)
  return "Transact Time: "..value
end

-- Dissect: Transact Time
memx_options_memo_sbe_v1_10.transact_time.dissect = function(buffer, offset, packet, parent)
  local length = memx_options_memo_sbe_v1_10.transact_time.size
  local range = buffer(offset, length)
  local value = range:uint64()
  local display = memx_options_memo_sbe_v1_10.transact_time.display(value, buffer, offset, packet, parent)

  parent:add(omi_memx_options_memo_sbe_v1_10.fields.transact_time, range, value, display)

  return offset + length, value
end

-- Lockout Id
memx_options_memo_sbe_v1_10.lockout_id = {}

-- Size: Lockout Id
memx_options_memo_sbe_v1_10.lockout_id.size = 8

-- Display: Lockout Id
memx_options_memo_sbe_v1_10.lockout_id.display = function(value)
  return "Lockout Id: "..value
end

-- Dissect: Lockout Id
memx_options_memo_sbe_v1_10.lockout_id.dissect = function(buffer, offset, packet, parent)
  local length = memx_options_memo_sbe_v1_10.lockout_id.size
  local range = buffer(offset, length)
  local value = range:uint64()
  local display = memx_options_memo_sbe_v1_10.lockout_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_memx_options_memo_sbe_v1_10.fields.lockout_id, range, value, display)

  return offset + length, value
end

-- Underlier
memx_options_memo_sbe_v1_10.underlier = {}

-- Size: Underlier
memx_options_memo_sbe_v1_10.underlier.size = 6

-- Display: Underlier
memx_options_memo_sbe_v1_10.underlier.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Underlier: No Value"
  end

  return "Underlier: "..value
end

-- Dissect: Underlier
memx_options_memo_sbe_v1_10.underlier.dissect = function(buffer, offset, packet, parent)
  local length = memx_options_memo_sbe_v1_10.underlier.size
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

  local display = memx_options_memo_sbe_v1_10.underlier.display(value, buffer, offset, packet, parent)

  parent:add(omi_memx_options_memo_sbe_v1_10.fields.underlier, range, value, display)

  return offset + length, value
end

-- Mass Cancel Clear Lockout Done Message
memx_options_memo_sbe_v1_10.mass_cancel_clear_lockout_done_message = {}

-- Size: Mass Cancel Clear Lockout Done Message
memx_options_memo_sbe_v1_10.mass_cancel_clear_lockout_done_message.size =
  memx_options_memo_sbe_v1_10.clordid.size + 
  memx_options_memo_sbe_v1_10.underlier.size + 
  memx_options_memo_sbe_v1_10.lockout_id.size + 
  memx_options_memo_sbe_v1_10.sending_time.size + 
  memx_options_memo_sbe_v1_10.transact_time.size

-- Display: Mass Cancel Clear Lockout Done Message
memx_options_memo_sbe_v1_10.mass_cancel_clear_lockout_done_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Mass Cancel Clear Lockout Done Message
memx_options_memo_sbe_v1_10.mass_cancel_clear_lockout_done_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- ClOrdId: 20 Byte Ascii String
  index, clordid = memx_options_memo_sbe_v1_10.clordid.dissect(buffer, index, packet, parent)

  -- Underlier: 6 Byte Ascii String
  index, underlier = memx_options_memo_sbe_v1_10.underlier.dissect(buffer, index, packet, parent)

  -- Lockout Id: 8 Byte Unsigned Fixed Width Integer
  index, lockout_id = memx_options_memo_sbe_v1_10.lockout_id.dissect(buffer, index, packet, parent)

  -- Sending Time: 8 Byte Unsigned Fixed Width Integer
  index, sending_time = memx_options_memo_sbe_v1_10.sending_time.dissect(buffer, index, packet, parent)

  -- Transact Time: 8 Byte Unsigned Fixed Width Integer
  index, transact_time = memx_options_memo_sbe_v1_10.transact_time.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Mass Cancel Clear Lockout Done Message
memx_options_memo_sbe_v1_10.mass_cancel_clear_lockout_done_message.dissect = function(buffer, offset, packet, parent)
  if show.mass_cancel_clear_lockout_done_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_memx_options_memo_sbe_v1_10.fields.mass_cancel_clear_lockout_done_message, buffer(offset, 0))
    local index = memx_options_memo_sbe_v1_10.mass_cancel_clear_lockout_done_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = memx_options_memo_sbe_v1_10.mass_cancel_clear_lockout_done_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return memx_options_memo_sbe_v1_10.mass_cancel_clear_lockout_done_message.fields(buffer, offset, packet, parent)
  end
end

-- Mass Cancel Clear Lockout Reject Message
memx_options_memo_sbe_v1_10.mass_cancel_clear_lockout_reject_message = {}

-- Size: Mass Cancel Clear Lockout Reject Message
memx_options_memo_sbe_v1_10.mass_cancel_clear_lockout_reject_message.size =
  memx_options_memo_sbe_v1_10.clordid.size + 
  memx_options_memo_sbe_v1_10.underlier.size + 
  memx_options_memo_sbe_v1_10.lockout_id.size + 
  memx_options_memo_sbe_v1_10.rej_reason.size + 
  memx_options_memo_sbe_v1_10.sending_time.size

-- Display: Mass Cancel Clear Lockout Reject Message
memx_options_memo_sbe_v1_10.mass_cancel_clear_lockout_reject_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Mass Cancel Clear Lockout Reject Message
memx_options_memo_sbe_v1_10.mass_cancel_clear_lockout_reject_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- ClOrdId: 20 Byte Ascii String
  index, clordid = memx_options_memo_sbe_v1_10.clordid.dissect(buffer, index, packet, parent)

  -- Underlier: 6 Byte Ascii String
  index, underlier = memx_options_memo_sbe_v1_10.underlier.dissect(buffer, index, packet, parent)

  -- Lockout Id: 8 Byte Unsigned Fixed Width Integer
  index, lockout_id = memx_options_memo_sbe_v1_10.lockout_id.dissect(buffer, index, packet, parent)

  -- Rej Reason: 2 Byte Unsigned Fixed Width Integer Enum with 14 values
  index, rej_reason = memx_options_memo_sbe_v1_10.rej_reason.dissect(buffer, index, packet, parent)

  -- Sending Time: 8 Byte Unsigned Fixed Width Integer
  index, sending_time = memx_options_memo_sbe_v1_10.sending_time.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Mass Cancel Clear Lockout Reject Message
memx_options_memo_sbe_v1_10.mass_cancel_clear_lockout_reject_message.dissect = function(buffer, offset, packet, parent)
  if show.mass_cancel_clear_lockout_reject_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_memx_options_memo_sbe_v1_10.fields.mass_cancel_clear_lockout_reject_message, buffer(offset, 0))
    local index = memx_options_memo_sbe_v1_10.mass_cancel_clear_lockout_reject_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = memx_options_memo_sbe_v1_10.mass_cancel_clear_lockout_reject_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return memx_options_memo_sbe_v1_10.mass_cancel_clear_lockout_reject_message.fields(buffer, offset, packet, parent)
  end
end

-- User Status
memx_options_memo_sbe_v1_10.user_status = {}

-- Size: User Status
memx_options_memo_sbe_v1_10.user_status.size = 1

-- Display: User Status
memx_options_memo_sbe_v1_10.user_status.display = function(value)
  if value == 8 then
    return "User Status: Session Shutdown Warning (8)"
  end
  if value == 100 then
    return "User Status: End Of Events For Session (100)"
  end
  if value == 255 then
    return "User Status: Null Value (255)"
  end

  return "User Status: Unknown("..value..")"
end

-- Dissect: User Status
memx_options_memo_sbe_v1_10.user_status.dissect = function(buffer, offset, packet, parent)
  local length = memx_options_memo_sbe_v1_10.user_status.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = memx_options_memo_sbe_v1_10.user_status.display(value, buffer, offset, packet, parent)

  parent:add(omi_memx_options_memo_sbe_v1_10.fields.user_status, range, value, display)

  return offset + length, value
end

-- User Notification Message
memx_options_memo_sbe_v1_10.user_notification_message = {}

-- Size: User Notification Message
memx_options_memo_sbe_v1_10.user_notification_message.size =
  memx_options_memo_sbe_v1_10.sending_time.size + 
  memx_options_memo_sbe_v1_10.user_status.size

-- Display: User Notification Message
memx_options_memo_sbe_v1_10.user_notification_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: User Notification Message
memx_options_memo_sbe_v1_10.user_notification_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Sending Time: 8 Byte Unsigned Fixed Width Integer
  index, sending_time = memx_options_memo_sbe_v1_10.sending_time.dissect(buffer, index, packet, parent)

  -- User Status: 1 Byte Unsigned Fixed Width Integer Enum with 3 values
  index, user_status = memx_options_memo_sbe_v1_10.user_status.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: User Notification Message
memx_options_memo_sbe_v1_10.user_notification_message.dissect = function(buffer, offset, packet, parent)
  if show.user_notification_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_memx_options_memo_sbe_v1_10.fields.user_notification_message, buffer(offset, 0))
    local index = memx_options_memo_sbe_v1_10.user_notification_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = memx_options_memo_sbe_v1_10.user_notification_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return memx_options_memo_sbe_v1_10.user_notification_message.fields(buffer, offset, packet, parent)
  end
end

-- Nested Party Role
memx_options_memo_sbe_v1_10.nested_party_role = {}

-- Size: Nested Party Role
memx_options_memo_sbe_v1_10.nested_party_role.size = 1

-- Display: Nested Party Role
memx_options_memo_sbe_v1_10.nested_party_role.display = function(value)
  if value == 1 then
    return "Nested Party Role: Executing Firm Id (1)"
  end
  if value == 3 then
    return "Nested Party Role: Actionable Identifier (3)"
  end
  if value == 4 then
    return "Nested Party Role: Clearing Firm (4)"
  end
  if value == 14 then
    return "Nested Party Role: Give Up Clearing Firm (14)"
  end
  if value == 17 then
    return "Nested Party Role: Contra Efid (17)"
  end
  if value == 18 then
    return "Nested Party Role: Contra Clearing Firm (18)"
  end
  if value == 24 then
    return "Nested Party Role: Optional Occ Data (24)"
  end
  if value == 37 then
    return "Nested Party Role: Contra Mm Sub Account (37)"
  end
  if value == 40 then
    return "Nested Party Role: Cmta (40)"
  end
  if value == 41 then
    return "Nested Party Role: Contra Cmta (41)"
  end
  if value == 66 then
    return "Nested Party Role: Market Maker Sub Account (66)"
  end

  return "Nested Party Role: Unknown("..value..")"
end

-- Dissect: Nested Party Role
memx_options_memo_sbe_v1_10.nested_party_role.dissect = function(buffer, offset, packet, parent)
  local length = memx_options_memo_sbe_v1_10.nested_party_role.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = memx_options_memo_sbe_v1_10.nested_party_role.display(value, buffer, offset, packet, parent)

  parent:add(omi_memx_options_memo_sbe_v1_10.fields.nested_party_role, range, value, display)

  return offset + length, value
end

-- Nested Party Id Source
memx_options_memo_sbe_v1_10.nested_party_id_source = {}

-- Size: Nested Party Id Source
memx_options_memo_sbe_v1_10.nested_party_id_source.size = 1

-- Display: Nested Party Id Source
memx_options_memo_sbe_v1_10.nested_party_id_source.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Nested Party Id Source: No Value"
  end

  return "Nested Party Id Source: "..value
end

-- Dissect: Nested Party Id Source
memx_options_memo_sbe_v1_10.nested_party_id_source.dissect = function(buffer, offset, packet, parent)
  local length = memx_options_memo_sbe_v1_10.nested_party_id_source.size
  local range = buffer(offset, length)

  -- parse as byte
  local value = range:uint()

  -- check if value is non zero
  if value ~= 0 then
    value = range:string()
  end

  local display = memx_options_memo_sbe_v1_10.nested_party_id_source.display(value, buffer, offset, packet, parent)

  parent:add(omi_memx_options_memo_sbe_v1_10.fields.nested_party_id_source, range, value, display)

  return offset + length, value
end

-- Nested Party Id
memx_options_memo_sbe_v1_10.nested_party_id = {}

-- Size: Nested Party Id
memx_options_memo_sbe_v1_10.nested_party_id.size = 16

-- Display: Nested Party Id
memx_options_memo_sbe_v1_10.nested_party_id.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Nested Party Id: No Value"
  end

  return "Nested Party Id: "..value
end

-- Dissect: Nested Party Id
memx_options_memo_sbe_v1_10.nested_party_id.dissect = function(buffer, offset, packet, parent)
  local length = memx_options_memo_sbe_v1_10.nested_party_id.size
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

  local display = memx_options_memo_sbe_v1_10.nested_party_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_memx_options_memo_sbe_v1_10.fields.nested_party_id, range, value, display)

  return offset + length, value
end

-- Nested Parties Group
memx_options_memo_sbe_v1_10.nested_parties_group = {}

-- Size: Nested Parties Group
memx_options_memo_sbe_v1_10.nested_parties_group.size =
  memx_options_memo_sbe_v1_10.nested_party_id.size + 
  memx_options_memo_sbe_v1_10.nested_party_id_source.size + 
  memx_options_memo_sbe_v1_10.nested_party_role.size

-- Display: Nested Parties Group
memx_options_memo_sbe_v1_10.nested_parties_group.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Nested Parties Group
memx_options_memo_sbe_v1_10.nested_parties_group.fields = function(buffer, offset, packet, parent, nested_parties_group_index)
  local index = offset

  -- Implicit Nested Parties Group Index
  if nested_parties_group_index ~= nil then
    local iteration = parent:add(omi_memx_options_memo_sbe_v1_10.fields.nested_parties_group_index, nested_parties_group_index)
    iteration:set_generated()
  end

  -- Nested Party Id: 16 Byte Ascii String
  index, nested_party_id = memx_options_memo_sbe_v1_10.nested_party_id.dissect(buffer, index, packet, parent)

  -- Nested Party Id Source: 1 Byte Ascii String
  index, nested_party_id_source = memx_options_memo_sbe_v1_10.nested_party_id_source.dissect(buffer, index, packet, parent)

  -- Nested Party Role: 1 Byte Unsigned Fixed Width Integer Enum with 11 values
  index, nested_party_role = memx_options_memo_sbe_v1_10.nested_party_role.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Nested Parties Group
memx_options_memo_sbe_v1_10.nested_parties_group.dissect = function(buffer, offset, packet, parent, nested_parties_group_index)
  if show.nested_parties_group then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_memx_options_memo_sbe_v1_10.fields.nested_parties_group, buffer(offset, 0))
    local index = memx_options_memo_sbe_v1_10.nested_parties_group.fields(buffer, offset, packet, parent, nested_parties_group_index)
    local length = index - offset
    parent:set_len(length)
    local display = memx_options_memo_sbe_v1_10.nested_parties_group.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return memx_options_memo_sbe_v1_10.nested_parties_group.fields(buffer, offset, packet, parent, nested_parties_group_index)
  end
end

-- Num In Group
memx_options_memo_sbe_v1_10.num_in_group = {}

-- Size: Num In Group
memx_options_memo_sbe_v1_10.num_in_group.size = 1

-- Display: Num In Group
memx_options_memo_sbe_v1_10.num_in_group.display = function(value)
  return "Num In Group: "..value
end

-- Dissect: Num In Group
memx_options_memo_sbe_v1_10.num_in_group.dissect = function(buffer, offset, packet, parent)
  local length = memx_options_memo_sbe_v1_10.num_in_group.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = memx_options_memo_sbe_v1_10.num_in_group.display(value, buffer, offset, packet, parent)

  parent:add(omi_memx_options_memo_sbe_v1_10.fields.num_in_group, range, value, display)

  return offset + length, value
end

-- Block Length Short
memx_options_memo_sbe_v1_10.block_length_short = {}

-- Size: Block Length Short
memx_options_memo_sbe_v1_10.block_length_short.size = 1

-- Display: Block Length Short
memx_options_memo_sbe_v1_10.block_length_short.display = function(value)
  return "Block Length Short: "..value
end

-- Dissect: Block Length Short
memx_options_memo_sbe_v1_10.block_length_short.dissect = function(buffer, offset, packet, parent)
  local length = memx_options_memo_sbe_v1_10.block_length_short.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = memx_options_memo_sbe_v1_10.block_length_short.display(value, buffer, offset, packet, parent)

  parent:add(omi_memx_options_memo_sbe_v1_10.fields.block_length_short, range, value, display)

  return offset + length, value
end

-- Repeating Group Dimensions
memx_options_memo_sbe_v1_10.repeating_group_dimensions = {}

-- Size: Repeating Group Dimensions
memx_options_memo_sbe_v1_10.repeating_group_dimensions.size =
  memx_options_memo_sbe_v1_10.block_length_short.size + 
  memx_options_memo_sbe_v1_10.num_in_group.size

-- Display: Repeating Group Dimensions
memx_options_memo_sbe_v1_10.repeating_group_dimensions.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Repeating Group Dimensions
memx_options_memo_sbe_v1_10.repeating_group_dimensions.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Block Length Short: 1 Byte Unsigned Fixed Width Integer
  index, block_length_short = memx_options_memo_sbe_v1_10.block_length_short.dissect(buffer, index, packet, parent)

  -- Num In Group: 1 Byte Unsigned Fixed Width Integer
  index, num_in_group = memx_options_memo_sbe_v1_10.num_in_group.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Repeating Group Dimensions
memx_options_memo_sbe_v1_10.repeating_group_dimensions.dissect = function(buffer, offset, packet, parent)
  if show.repeating_group_dimensions then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_memx_options_memo_sbe_v1_10.fields.repeating_group_dimensions, buffer(offset, 0))
    local index = memx_options_memo_sbe_v1_10.repeating_group_dimensions.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = memx_options_memo_sbe_v1_10.repeating_group_dimensions.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return memx_options_memo_sbe_v1_10.repeating_group_dimensions.fields(buffer, offset, packet, parent)
  end
end

-- Nested Parties Groups
memx_options_memo_sbe_v1_10.nested_parties_groups = {}

-- Calculate size of: Nested Parties Groups
memx_options_memo_sbe_v1_10.nested_parties_groups.size = function(buffer, offset)
  local index = 0

  index = index + memx_options_memo_sbe_v1_10.repeating_group_dimensions.size

  -- Calculate field size from count
  local nested_parties_group_count = buffer(offset + index - 1, 1):uint()
  index = index + nested_parties_group_count * 18

  return index
end

-- Display: Nested Parties Groups
memx_options_memo_sbe_v1_10.nested_parties_groups.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Nested Parties Groups
memx_options_memo_sbe_v1_10.nested_parties_groups.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Repeating Group Dimensions: Struct of 2 fields
  index, repeating_group_dimensions = memx_options_memo_sbe_v1_10.repeating_group_dimensions.dissect(buffer, index, packet, parent)

  -- Dependency element: Num In Group
  local num_in_group = buffer(index - 1, 1):uint()

  -- Repeating: Nested Parties Group
  for nested_parties_group_index = 1, num_in_group do
    index, nested_parties_group = memx_options_memo_sbe_v1_10.nested_parties_group.dissect(buffer, index, packet, parent, nested_parties_group_index)
  end

  return index
end

-- Dissect: Nested Parties Groups
memx_options_memo_sbe_v1_10.nested_parties_groups.dissect = function(buffer, offset, packet, parent)
  -- Optionally add dynamic struct element to protocol tree
  if show.nested_parties_groups then
    local length = memx_options_memo_sbe_v1_10.nested_parties_groups.size(buffer, offset)
    local range = buffer(offset, length)
    local display = memx_options_memo_sbe_v1_10.nested_parties_groups.display(buffer, packet, parent)
    parent = parent:add(omi_memx_options_memo_sbe_v1_10.fields.nested_parties_groups, range, display)
  end

  return memx_options_memo_sbe_v1_10.nested_parties_groups.fields(buffer, offset, packet, parent)
end

-- Alloc Id
memx_options_memo_sbe_v1_10.alloc_id = {}

-- Size: Alloc Id
memx_options_memo_sbe_v1_10.alloc_id.size = 20

-- Display: Alloc Id
memx_options_memo_sbe_v1_10.alloc_id.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Alloc Id: No Value"
  end

  return "Alloc Id: "..value
end

-- Dissect: Alloc Id
memx_options_memo_sbe_v1_10.alloc_id.dissect = function(buffer, offset, packet, parent)
  local length = memx_options_memo_sbe_v1_10.alloc_id.size
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

  local display = memx_options_memo_sbe_v1_10.alloc_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_memx_options_memo_sbe_v1_10.fields.alloc_id, range, value, display)

  return offset + length, value
end

-- Trading Capacity Optional
memx_options_memo_sbe_v1_10.trading_capacity_optional = {}

-- Size: Trading Capacity Optional
memx_options_memo_sbe_v1_10.trading_capacity_optional.size = 1

-- Display: Trading Capacity Optional
memx_options_memo_sbe_v1_10.trading_capacity_optional.display = function(value)
  if value == 1 then
    return "Trading Capacity Optional: Customer (1)"
  end
  if value == 2 then
    return "Trading Capacity Optional: Professional Customer (2)"
  end
  if value == 3 then
    return "Trading Capacity Optional: Broker Dealer (3)"
  end
  if value == 4 then
    return "Trading Capacity Optional: Broker Dealer Customer (4)"
  end
  if value == 5 then
    return "Trading Capacity Optional: Firm (5)"
  end
  if value == 6 then
    return "Trading Capacity Optional: Market Maker (6)"
  end
  if value == 7 then
    return "Trading Capacity Optional: Away Market Maker (7)"
  end
  if value == 255 then
    return "Trading Capacity Optional: Null Value (255)"
  end
  if value == 255 then
    return "Trading Capacity Optional: No Value"
  end

  return "Trading Capacity Optional: Unknown("..value..")"
end

-- Dissect: Trading Capacity Optional
memx_options_memo_sbe_v1_10.trading_capacity_optional.dissect = function(buffer, offset, packet, parent)
  local length = memx_options_memo_sbe_v1_10.trading_capacity_optional.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = memx_options_memo_sbe_v1_10.trading_capacity_optional.display(value, buffer, offset, packet, parent)

  parent:add(omi_memx_options_memo_sbe_v1_10.fields.trading_capacity_optional, range, value, display)

  return offset + length, value
end

-- Alloc Position Effect
memx_options_memo_sbe_v1_10.alloc_position_effect = {}

-- Size: Alloc Position Effect
memx_options_memo_sbe_v1_10.alloc_position_effect.size = 1

-- Display: Alloc Position Effect
memx_options_memo_sbe_v1_10.alloc_position_effect.display = function(value)
  -- Check if field has value
  if value == nil or value == 0 then
    return "Alloc Position Effect: No Value"
  end

  if value == "O" then
    return "Alloc Position Effect: Open (O)"
  end
  if value == "C" then
    return "Alloc Position Effect: Close (C)"
  end

  return "Alloc Position Effect: Unknown("..value..")"
end

-- Dissect: Alloc Position Effect
memx_options_memo_sbe_v1_10.alloc_position_effect.dissect = function(buffer, offset, packet, parent)
  local length = memx_options_memo_sbe_v1_10.alloc_position_effect.size
  local range = buffer(offset, length)

  -- parse as byte
  local value = range:uint()

  -- check if value is non zero
  if value ~= 0 then
    value = range:string()
  end

  local display = memx_options_memo_sbe_v1_10.alloc_position_effect.display(value, buffer, offset, packet, parent)

  parent:add(omi_memx_options_memo_sbe_v1_10.fields.alloc_position_effect, range, value, display)

  return offset + length, value
end

-- Alloc Qty
memx_options_memo_sbe_v1_10.alloc_qty = {}

-- Size: Alloc Qty
memx_options_memo_sbe_v1_10.alloc_qty.size = 4

-- Display: Alloc Qty
memx_options_memo_sbe_v1_10.alloc_qty.display = function(value)
  return "Alloc Qty: "..value
end

-- Dissect: Alloc Qty
memx_options_memo_sbe_v1_10.alloc_qty.dissect = function(buffer, offset, packet, parent)
  local length = memx_options_memo_sbe_v1_10.alloc_qty.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = memx_options_memo_sbe_v1_10.alloc_qty.display(value, buffer, offset, packet, parent)

  parent:add(omi_memx_options_memo_sbe_v1_10.fields.alloc_qty, range, value, display)

  return offset + length, value
end

-- Reported Allocations Group
memx_options_memo_sbe_v1_10.reported_allocations_group = {}

-- Calculate size of: Reported Allocations Group
memx_options_memo_sbe_v1_10.reported_allocations_group.size = function(buffer, offset)
  local index = 0

  index = index + memx_options_memo_sbe_v1_10.alloc_qty.size

  index = index + memx_options_memo_sbe_v1_10.alloc_position_effect.size

  index = index + memx_options_memo_sbe_v1_10.trading_capacity_optional.size

  index = index + memx_options_memo_sbe_v1_10.alloc_id.size

  index = index + memx_options_memo_sbe_v1_10.nested_parties_groups.size(buffer, offset + index)

  return index
end

-- Display: Reported Allocations Group
memx_options_memo_sbe_v1_10.reported_allocations_group.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Reported Allocations Group
memx_options_memo_sbe_v1_10.reported_allocations_group.fields = function(buffer, offset, packet, parent, reported_allocations_group_index)
  local index = offset

  -- Implicit Reported Allocations Group Index
  if reported_allocations_group_index ~= nil then
    local iteration = parent:add(omi_memx_options_memo_sbe_v1_10.fields.reported_allocations_group_index, reported_allocations_group_index)
    iteration:set_generated()
  end

  -- Alloc Qty: 4 Byte Unsigned Fixed Width Integer
  index, alloc_qty = memx_options_memo_sbe_v1_10.alloc_qty.dissect(buffer, index, packet, parent)

  -- Alloc Position Effect: 1 Byte Ascii String Enum with 2 values
  index, alloc_position_effect = memx_options_memo_sbe_v1_10.alloc_position_effect.dissect(buffer, index, packet, parent)

  -- Trading Capacity Optional: 1 Byte Unsigned Fixed Width Integer Enum with 9 values
  index, trading_capacity_optional = memx_options_memo_sbe_v1_10.trading_capacity_optional.dissect(buffer, index, packet, parent)

  -- Alloc Id: 20 Byte Ascii String
  index, alloc_id = memx_options_memo_sbe_v1_10.alloc_id.dissect(buffer, index, packet, parent)

  -- Nested Parties Groups: Struct of 2 fields
  index, nested_parties_groups = memx_options_memo_sbe_v1_10.nested_parties_groups.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Reported Allocations Group
memx_options_memo_sbe_v1_10.reported_allocations_group.dissect = function(buffer, offset, packet, parent)
  -- Optionally add dynamic struct element to protocol tree
  if show.reported_allocations_group then
    local length = memx_options_memo_sbe_v1_10.reported_allocations_group.size(buffer, offset)
    local range = buffer(offset, length)
    local display = memx_options_memo_sbe_v1_10.reported_allocations_group.display(buffer, packet, parent)
    parent = parent:add(omi_memx_options_memo_sbe_v1_10.fields.reported_allocations_group, range, display)
  end

  return memx_options_memo_sbe_v1_10.reported_allocations_group.fields(buffer, offset, packet, parent)
end

-- Reported Allocations Groups
memx_options_memo_sbe_v1_10.reported_allocations_groups = {}

-- Calculate size of: Reported Allocations Groups
memx_options_memo_sbe_v1_10.reported_allocations_groups.size = function(buffer, offset)
  local index = 0

  index = index + memx_options_memo_sbe_v1_10.repeating_group_dimensions.size

  -- Calculate field size from count
  local reported_allocations_group_count = buffer(offset + index - 1, 1):uint()
  for i = 1, reported_allocations_group_count do
    index = index + memx_options_memo_sbe_v1_10.reported_allocations_group.size(buffer, offset + index)
  end
  return index
end

-- Display: Reported Allocations Groups
memx_options_memo_sbe_v1_10.reported_allocations_groups.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Reported Allocations Groups
memx_options_memo_sbe_v1_10.reported_allocations_groups.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Repeating Group Dimensions: Struct of 2 fields
  index, repeating_group_dimensions = memx_options_memo_sbe_v1_10.repeating_group_dimensions.dissect(buffer, index, packet, parent)

  -- Dependency element: Num In Group
  local num_in_group = buffer(index - 1, 1):uint()

  -- Repeating: Reported Allocations Group
  for reported_allocations_group_index = 1, num_in_group do
    index, reported_allocations_group = memx_options_memo_sbe_v1_10.reported_allocations_group.dissect(buffer, index, packet, parent, reported_allocations_group_index)
  end

  return index
end

-- Dissect: Reported Allocations Groups
memx_options_memo_sbe_v1_10.reported_allocations_groups.dissect = function(buffer, offset, packet, parent)
  -- Optionally add dynamic struct element to protocol tree
  if show.reported_allocations_groups then
    local length = memx_options_memo_sbe_v1_10.reported_allocations_groups.size(buffer, offset)
    local range = buffer(offset, length)
    local display = memx_options_memo_sbe_v1_10.reported_allocations_groups.display(buffer, packet, parent)
    parent = parent:add(omi_memx_options_memo_sbe_v1_10.fields.reported_allocations_groups, range, display)
  end

  return memx_options_memo_sbe_v1_10.reported_allocations_groups.fields(buffer, offset, packet, parent)
end

-- Last Px
memx_options_memo_sbe_v1_10.last_px = {}

-- Size: Last Px
memx_options_memo_sbe_v1_10.last_px.size = 8

-- Display: Last Px
memx_options_memo_sbe_v1_10.last_px.display = function(value)
  return "Last Px: "..value
end

-- Translate: Last Px
memx_options_memo_sbe_v1_10.last_px.translate = function(raw)
  return raw:tonumber()/100000000
end

-- Dissect: Last Px
memx_options_memo_sbe_v1_10.last_px.dissect = function(buffer, offset, packet, parent)
  local length = memx_options_memo_sbe_v1_10.last_px.size
  local range = buffer(offset, length)
  local raw = range:uint64()
  local value = memx_options_memo_sbe_v1_10.last_px.translate(raw)
  local display = memx_options_memo_sbe_v1_10.last_px.display(value, buffer, offset, packet, parent)

  parent:add(omi_memx_options_memo_sbe_v1_10.fields.last_px, range, value, display)

  return offset + length, value
end

-- Last Qty
memx_options_memo_sbe_v1_10.last_qty = {}

-- Size: Last Qty
memx_options_memo_sbe_v1_10.last_qty.size = 4

-- Display: Last Qty
memx_options_memo_sbe_v1_10.last_qty.display = function(value)
  return "Last Qty: "..value
end

-- Dissect: Last Qty
memx_options_memo_sbe_v1_10.last_qty.dissect = function(buffer, offset, packet, parent)
  local length = memx_options_memo_sbe_v1_10.last_qty.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = memx_options_memo_sbe_v1_10.last_qty.display(value, buffer, offset, packet, parent)

  parent:add(omi_memx_options_memo_sbe_v1_10.fields.last_qty, range, value, display)

  return offset + length, value
end

-- Trade Id
memx_options_memo_sbe_v1_10.trade_id = {}

-- Size: Trade Id
memx_options_memo_sbe_v1_10.trade_id.size = 8

-- Display: Trade Id
memx_options_memo_sbe_v1_10.trade_id.display = function(value)
  return "Trade Id: "..value
end

-- Dissect: Trade Id
memx_options_memo_sbe_v1_10.trade_id.dissect = function(buffer, offset, packet, parent)
  local length = memx_options_memo_sbe_v1_10.trade_id.size
  local range = buffer(offset, length)
  local value = range:uint64()
  local display = memx_options_memo_sbe_v1_10.trade_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_memx_options_memo_sbe_v1_10.fields.trade_id, range, value, display)

  return offset + length, value
end

-- Execution Allocations Group
memx_options_memo_sbe_v1_10.execution_allocations_group = {}

-- Size: Execution Allocations Group
memx_options_memo_sbe_v1_10.execution_allocations_group.size =
  memx_options_memo_sbe_v1_10.trade_id.size + 
  memx_options_memo_sbe_v1_10.last_qty.size + 
  memx_options_memo_sbe_v1_10.last_px.size

-- Display: Execution Allocations Group
memx_options_memo_sbe_v1_10.execution_allocations_group.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Execution Allocations Group
memx_options_memo_sbe_v1_10.execution_allocations_group.fields = function(buffer, offset, packet, parent, execution_allocations_group_index)
  local index = offset

  -- Implicit Execution Allocations Group Index
  if execution_allocations_group_index ~= nil then
    local iteration = parent:add(omi_memx_options_memo_sbe_v1_10.fields.execution_allocations_group_index, execution_allocations_group_index)
    iteration:set_generated()
  end

  -- Trade Id: 8 Byte Unsigned Fixed Width Integer
  index, trade_id = memx_options_memo_sbe_v1_10.trade_id.dissect(buffer, index, packet, parent)

  -- Last Qty: 4 Byte Unsigned Fixed Width Integer
  index, last_qty = memx_options_memo_sbe_v1_10.last_qty.dissect(buffer, index, packet, parent)

  -- Last Px: 8 Byte Unsigned Fixed Width Integer
  index, last_px = memx_options_memo_sbe_v1_10.last_px.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Execution Allocations Group
memx_options_memo_sbe_v1_10.execution_allocations_group.dissect = function(buffer, offset, packet, parent, execution_allocations_group_index)
  if show.execution_allocations_group then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_memx_options_memo_sbe_v1_10.fields.execution_allocations_group, buffer(offset, 0))
    local index = memx_options_memo_sbe_v1_10.execution_allocations_group.fields(buffer, offset, packet, parent, execution_allocations_group_index)
    local length = index - offset
    parent:set_len(length)
    local display = memx_options_memo_sbe_v1_10.execution_allocations_group.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return memx_options_memo_sbe_v1_10.execution_allocations_group.fields(buffer, offset, packet, parent, execution_allocations_group_index)
  end
end

-- Execution Allocations Groups
memx_options_memo_sbe_v1_10.execution_allocations_groups = {}

-- Calculate size of: Execution Allocations Groups
memx_options_memo_sbe_v1_10.execution_allocations_groups.size = function(buffer, offset)
  local index = 0

  index = index + memx_options_memo_sbe_v1_10.repeating_group_dimensions.size

  -- Calculate field size from count
  local execution_allocations_group_count = buffer(offset + index - 1, 1):uint()
  index = index + execution_allocations_group_count * 20

  return index
end

-- Display: Execution Allocations Groups
memx_options_memo_sbe_v1_10.execution_allocations_groups.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Execution Allocations Groups
memx_options_memo_sbe_v1_10.execution_allocations_groups.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Repeating Group Dimensions: Struct of 2 fields
  index, repeating_group_dimensions = memx_options_memo_sbe_v1_10.repeating_group_dimensions.dissect(buffer, index, packet, parent)

  -- Dependency element: Num In Group
  local num_in_group = buffer(index - 1, 1):uint()

  -- Repeating: Execution Allocations Group
  for execution_allocations_group_index = 1, num_in_group do
    index, execution_allocations_group = memx_options_memo_sbe_v1_10.execution_allocations_group.dissect(buffer, index, packet, parent, execution_allocations_group_index)
  end

  return index
end

-- Dissect: Execution Allocations Groups
memx_options_memo_sbe_v1_10.execution_allocations_groups.dissect = function(buffer, offset, packet, parent)
  -- Optionally add dynamic struct element to protocol tree
  if show.execution_allocations_groups then
    local length = memx_options_memo_sbe_v1_10.execution_allocations_groups.size(buffer, offset)
    local range = buffer(offset, length)
    local display = memx_options_memo_sbe_v1_10.execution_allocations_groups.display(buffer, packet, parent)
    parent = parent:add(omi_memx_options_memo_sbe_v1_10.fields.execution_allocations_groups, range, display)
  end

  return memx_options_memo_sbe_v1_10.execution_allocations_groups.fields(buffer, offset, packet, parent)
end

-- Trade Date
memx_options_memo_sbe_v1_10.trade_date = {}

-- Size: Trade Date
memx_options_memo_sbe_v1_10.trade_date.size = 8

-- Display: Trade Date
memx_options_memo_sbe_v1_10.trade_date.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Trade Date: No Value"
  end

  return "Trade Date: "..value
end

-- Dissect: Trade Date
memx_options_memo_sbe_v1_10.trade_date.dissect = function(buffer, offset, packet, parent)
  local length = memx_options_memo_sbe_v1_10.trade_date.size
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

  local display = memx_options_memo_sbe_v1_10.trade_date.display(value, buffer, offset, packet, parent)

  parent:add(omi_memx_options_memo_sbe_v1_10.fields.trade_date, range, value, display)

  return offset + length, value
end

-- Security Id
memx_options_memo_sbe_v1_10.security_id = {}

-- Size: Security Id
memx_options_memo_sbe_v1_10.security_id.size = 8

-- Display: Security Id
memx_options_memo_sbe_v1_10.security_id.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Security Id: No Value"
  end

  return "Security Id: "..value
end

-- Dissect: Security Id
memx_options_memo_sbe_v1_10.security_id.dissect = function(buffer, offset, packet, parent)
  local length = memx_options_memo_sbe_v1_10.security_id.size
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

  local display = memx_options_memo_sbe_v1_10.security_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_memx_options_memo_sbe_v1_10.fields.security_id, range, value, display)

  return offset + length, value
end

-- Side
memx_options_memo_sbe_v1_10.side = {}

-- Size: Side
memx_options_memo_sbe_v1_10.side.size = 1

-- Display: Side
memx_options_memo_sbe_v1_10.side.display = function(value)
  -- Check if field has value
  if value == nil or value == 0 then
    return "Side: No Value"
  end

  if value == "1" then
    return "Side: Buy (1)"
  end
  if value == "2" then
    return "Side: Sell (2)"
  end
  if value == "B" then
    return "Side: As Defined (B)"
  end

  return "Side: Unknown("..value..")"
end

-- Dissect: Side
memx_options_memo_sbe_v1_10.side.dissect = function(buffer, offset, packet, parent)
  local length = memx_options_memo_sbe_v1_10.side.size
  local range = buffer(offset, length)

  -- parse as byte
  local value = range:uint()

  -- check if value is non zero
  if value ~= 0 then
    value = range:string()
  end

  local display = memx_options_memo_sbe_v1_10.side.display(value, buffer, offset, packet, parent)

  parent:add(omi_memx_options_memo_sbe_v1_10.fields.side, range, value, display)

  return offset + length, value
end

-- Alloc Canc Replace Reason
memx_options_memo_sbe_v1_10.alloc_canc_replace_reason = {}

-- Size: Alloc Canc Replace Reason
memx_options_memo_sbe_v1_10.alloc_canc_replace_reason.size = 2

-- Display: Alloc Canc Replace Reason
memx_options_memo_sbe_v1_10.alloc_canc_replace_reason.display = function(value)
  if value == 2 then
    return "Alloc Canc Replace Reason: Change In Underlying Order Details (2)"
  end
  if value == 65535 then
    return "Alloc Canc Replace Reason: Null Value (65535)"
  end
  if value == 65535 then
    return "Alloc Canc Replace Reason: No Value"
  end

  return "Alloc Canc Replace Reason: Unknown("..value..")"
end

-- Dissect: Alloc Canc Replace Reason
memx_options_memo_sbe_v1_10.alloc_canc_replace_reason.dissect = function(buffer, offset, packet, parent)
  local length = memx_options_memo_sbe_v1_10.alloc_canc_replace_reason.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = memx_options_memo_sbe_v1_10.alloc_canc_replace_reason.display(value, buffer, offset, packet, parent)

  parent:add(omi_memx_options_memo_sbe_v1_10.fields.alloc_canc_replace_reason, range, value, display)

  return offset + length, value
end

-- Ref Alloc Id Optional
memx_options_memo_sbe_v1_10.ref_alloc_id_optional = {}

-- Size: Ref Alloc Id Optional
memx_options_memo_sbe_v1_10.ref_alloc_id_optional.size = 20

-- Display: Ref Alloc Id Optional
memx_options_memo_sbe_v1_10.ref_alloc_id_optional.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Ref Alloc Id Optional: No Value"
  end

  return "Ref Alloc Id Optional: "..value
end

-- Dissect: Ref Alloc Id Optional
memx_options_memo_sbe_v1_10.ref_alloc_id_optional.dissect = function(buffer, offset, packet, parent)
  local length = memx_options_memo_sbe_v1_10.ref_alloc_id_optional.size
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

  local display = memx_options_memo_sbe_v1_10.ref_alloc_id_optional.display(value, buffer, offset, packet, parent)

  parent:add(omi_memx_options_memo_sbe_v1_10.fields.ref_alloc_id_optional, range, value, display)

  return offset + length, value
end

-- Alloc Trans Type
memx_options_memo_sbe_v1_10.alloc_trans_type = {}

-- Size: Alloc Trans Type
memx_options_memo_sbe_v1_10.alloc_trans_type.size = 1

-- Display: Alloc Trans Type
memx_options_memo_sbe_v1_10.alloc_trans_type.display = function(value)
  if value == 0 then
    return "Alloc Trans Type: New (0)"
  end
  if value == 1 then
    return "Alloc Trans Type: Replace (1)"
  end
  if value == 2 then
    return "Alloc Trans Type: Cancel (2)"
  end
  if value == 255 then
    return "Alloc Trans Type: Null Value (255)"
  end

  return "Alloc Trans Type: Unknown("..value..")"
end

-- Dissect: Alloc Trans Type
memx_options_memo_sbe_v1_10.alloc_trans_type.dissect = function(buffer, offset, packet, parent)
  local length = memx_options_memo_sbe_v1_10.alloc_trans_type.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = memx_options_memo_sbe_v1_10.alloc_trans_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_memx_options_memo_sbe_v1_10.fields.alloc_trans_type, range, value, display)

  return offset + length, value
end

-- Alloc Type
memx_options_memo_sbe_v1_10.alloc_type = {}

-- Size: Alloc Type
memx_options_memo_sbe_v1_10.alloc_type.size = 1

-- Display: Alloc Type
memx_options_memo_sbe_v1_10.alloc_type.display = function(value)
  if value == 100 then
    return "Alloc Type: Post Trade Edit (100)"
  end
  if value == 255 then
    return "Alloc Type: Null Value (255)"
  end

  return "Alloc Type: Unknown("..value..")"
end

-- Dissect: Alloc Type
memx_options_memo_sbe_v1_10.alloc_type.dissect = function(buffer, offset, packet, parent)
  local length = memx_options_memo_sbe_v1_10.alloc_type.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = memx_options_memo_sbe_v1_10.alloc_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_memx_options_memo_sbe_v1_10.fields.alloc_type, range, value, display)

  return offset + length, value
end

-- Allocation Instruction Alert Message
memx_options_memo_sbe_v1_10.allocation_instruction_alert_message = {}

-- Calculate size of: Allocation Instruction Alert Message
memx_options_memo_sbe_v1_10.allocation_instruction_alert_message.size = function(buffer, offset)
  local index = 0

  index = index + memx_options_memo_sbe_v1_10.sending_time.size

  index = index + memx_options_memo_sbe_v1_10.alloc_id.size

  index = index + memx_options_memo_sbe_v1_10.alloc_type.size

  index = index + memx_options_memo_sbe_v1_10.alloc_trans_type.size

  index = index + memx_options_memo_sbe_v1_10.ref_alloc_id_optional.size

  index = index + memx_options_memo_sbe_v1_10.alloc_canc_replace_reason.size

  index = index + memx_options_memo_sbe_v1_10.side.size

  index = index + memx_options_memo_sbe_v1_10.security_id.size

  index = index + memx_options_memo_sbe_v1_10.trade_date.size

  index = index + memx_options_memo_sbe_v1_10.execution_allocations_groups.size(buffer, offset + index)

  index = index + memx_options_memo_sbe_v1_10.reported_allocations_groups.size(buffer, offset + index)

  return index
end

-- Display: Allocation Instruction Alert Message
memx_options_memo_sbe_v1_10.allocation_instruction_alert_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Allocation Instruction Alert Message
memx_options_memo_sbe_v1_10.allocation_instruction_alert_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Sending Time: 8 Byte Unsigned Fixed Width Integer
  index, sending_time = memx_options_memo_sbe_v1_10.sending_time.dissect(buffer, index, packet, parent)

  -- Alloc Id: 20 Byte Ascii String
  index, alloc_id = memx_options_memo_sbe_v1_10.alloc_id.dissect(buffer, index, packet, parent)

  -- Alloc Type: 1 Byte Unsigned Fixed Width Integer Enum with 2 values
  index, alloc_type = memx_options_memo_sbe_v1_10.alloc_type.dissect(buffer, index, packet, parent)

  -- Alloc Trans Type: 1 Byte Unsigned Fixed Width Integer Enum with 4 values
  index, alloc_trans_type = memx_options_memo_sbe_v1_10.alloc_trans_type.dissect(buffer, index, packet, parent)

  -- Ref Alloc Id Optional: 20 Byte Ascii String Nullable
  index, ref_alloc_id_optional = memx_options_memo_sbe_v1_10.ref_alloc_id_optional.dissect(buffer, index, packet, parent)

  -- Alloc Canc Replace Reason: 2 Byte Unsigned Fixed Width Integer Enum with 3 values
  index, alloc_canc_replace_reason = memx_options_memo_sbe_v1_10.alloc_canc_replace_reason.dissect(buffer, index, packet, parent)

  -- Side: 1 Byte Ascii String Enum with 3 values
  index, side = memx_options_memo_sbe_v1_10.side.dissect(buffer, index, packet, parent)

  -- Security Id: 8 Byte Ascii String
  index, security_id = memx_options_memo_sbe_v1_10.security_id.dissect(buffer, index, packet, parent)

  -- Trade Date: 8 Byte Ascii String
  index, trade_date = memx_options_memo_sbe_v1_10.trade_date.dissect(buffer, index, packet, parent)

  -- Execution Allocations Groups: Struct of 2 fields
  index, execution_allocations_groups = memx_options_memo_sbe_v1_10.execution_allocations_groups.dissect(buffer, index, packet, parent)

  -- Reported Allocations Groups: Struct of 2 fields
  index, reported_allocations_groups = memx_options_memo_sbe_v1_10.reported_allocations_groups.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Allocation Instruction Alert Message
memx_options_memo_sbe_v1_10.allocation_instruction_alert_message.dissect = function(buffer, offset, packet, parent)
  -- Optionally add dynamic struct element to protocol tree
  if show.allocation_instruction_alert_message then
    local length = memx_options_memo_sbe_v1_10.allocation_instruction_alert_message.size(buffer, offset)
    local range = buffer(offset, length)
    local display = memx_options_memo_sbe_v1_10.allocation_instruction_alert_message.display(buffer, packet, parent)
    parent = parent:add(omi_memx_options_memo_sbe_v1_10.fields.allocation_instruction_alert_message, range, display)
  end

  return memx_options_memo_sbe_v1_10.allocation_instruction_alert_message.fields(buffer, offset, packet, parent)
end

-- Alloc Rej Code
memx_options_memo_sbe_v1_10.alloc_rej_code = {}

-- Size: Alloc Rej Code
memx_options_memo_sbe_v1_10.alloc_rej_code.size = 2

-- Display: Alloc Rej Code
memx_options_memo_sbe_v1_10.alloc_rej_code.display = function(value)
  if value == 1 then
    return "Alloc Rej Code: Incorrect Quantity (1)"
  end
  if value == 8 then
    return "Alloc Rej Code: Incorrect Allocated Quantity (8)"
  end
  if value == 10 then
    return "Alloc Rej Code: Unknown Or Stale Exec Id (10)"
  end
  if value == 11 then
    return "Alloc Rej Code: Mismatched Data (11)"
  end
  if value == 14 then
    return "Alloc Rej Code: Duplicate Or Missing Individual Alloc Id (14)"
  end
  if value == 15 then
    return "Alloc Rej Code: Trade Not Recognized (15)"
  end
  if value == 16 then
    return "Alloc Rej Code: Duplicate Trade (16)"
  end
  if value == 17 then
    return "Alloc Rej Code: Incorrect Or Missing Instrument (17)"
  end
  if value == 23 then
    return "Alloc Rej Code: Unknown Or Missing Party (23)"
  end
  if value == 24 then
    return "Alloc Rej Code: Incorrect Or Missing Side (24)"
  end
  if value == 29 then
    return "Alloc Rej Code: Missing Position Effect Type (29)"
  end
  if value == 30 then
    return "Alloc Rej Code: Invalid Position Effect Type (30)"
  end
  if value == 113 then
    return "Alloc Rej Code: Invalid Trading Capacity (113)"
  end
  if value == 150 then
    return "Alloc Rej Code: Missing Party Id (150)"
  end
  if value == 99 then
    return "Alloc Rej Code: Other (99)"
  end
  if value == 65535 then
    return "Alloc Rej Code: Null Value (65535)"
  end
  if value == 65535 then
    return "Alloc Rej Code: No Value"
  end

  return "Alloc Rej Code: Unknown("..value..")"
end

-- Dissect: Alloc Rej Code
memx_options_memo_sbe_v1_10.alloc_rej_code.dissect = function(buffer, offset, packet, parent)
  local length = memx_options_memo_sbe_v1_10.alloc_rej_code.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = memx_options_memo_sbe_v1_10.alloc_rej_code.display(value, buffer, offset, packet, parent)

  parent:add(omi_memx_options_memo_sbe_v1_10.fields.alloc_rej_code, range, value, display)

  return offset + length, value
end

-- Alloc Status
memx_options_memo_sbe_v1_10.alloc_status = {}

-- Size: Alloc Status
memx_options_memo_sbe_v1_10.alloc_status.size = 1

-- Display: Alloc Status
memx_options_memo_sbe_v1_10.alloc_status.display = function(value)
  if value == 0 then
    return "Alloc Status: Accepted (0)"
  end
  if value == 1 then
    return "Alloc Status: Block Level Reject (1)"
  end
  if value == 2 then
    return "Alloc Status: Account Level Reject (2)"
  end
  if value == 255 then
    return "Alloc Status: Null Value (255)"
  end

  return "Alloc Status: Unknown("..value..")"
end

-- Dissect: Alloc Status
memx_options_memo_sbe_v1_10.alloc_status.dissect = function(buffer, offset, packet, parent)
  local length = memx_options_memo_sbe_v1_10.alloc_status.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = memx_options_memo_sbe_v1_10.alloc_status.display(value, buffer, offset, packet, parent)

  parent:add(omi_memx_options_memo_sbe_v1_10.fields.alloc_status, range, value, display)

  return offset + length, value
end

-- Secondary Alloc Id
memx_options_memo_sbe_v1_10.secondary_alloc_id = {}

-- Size: Secondary Alloc Id
memx_options_memo_sbe_v1_10.secondary_alloc_id.size = 20

-- Display: Secondary Alloc Id
memx_options_memo_sbe_v1_10.secondary_alloc_id.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Secondary Alloc Id: No Value"
  end

  return "Secondary Alloc Id: "..value
end

-- Dissect: Secondary Alloc Id
memx_options_memo_sbe_v1_10.secondary_alloc_id.dissect = function(buffer, offset, packet, parent)
  local length = memx_options_memo_sbe_v1_10.secondary_alloc_id.size
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

  local display = memx_options_memo_sbe_v1_10.secondary_alloc_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_memx_options_memo_sbe_v1_10.fields.secondary_alloc_id, range, value, display)

  return offset + length, value
end

-- Allocation Instruction Ack Message
memx_options_memo_sbe_v1_10.allocation_instruction_ack_message = {}

-- Calculate size of: Allocation Instruction Ack Message
memx_options_memo_sbe_v1_10.allocation_instruction_ack_message.size = function(buffer, offset)
  local index = 0

  index = index + memx_options_memo_sbe_v1_10.sending_time.size

  index = index + memx_options_memo_sbe_v1_10.alloc_id.size

  index = index + memx_options_memo_sbe_v1_10.alloc_type.size

  index = index + memx_options_memo_sbe_v1_10.alloc_trans_type.size

  index = index + memx_options_memo_sbe_v1_10.secondary_alloc_id.size

  index = index + memx_options_memo_sbe_v1_10.ref_alloc_id_optional.size

  index = index + memx_options_memo_sbe_v1_10.alloc_status.size

  index = index + memx_options_memo_sbe_v1_10.alloc_rej_code.size

  index = index + memx_options_memo_sbe_v1_10.reported_allocations_groups.size(buffer, offset + index)

  return index
end

-- Display: Allocation Instruction Ack Message
memx_options_memo_sbe_v1_10.allocation_instruction_ack_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Allocation Instruction Ack Message
memx_options_memo_sbe_v1_10.allocation_instruction_ack_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Sending Time: 8 Byte Unsigned Fixed Width Integer
  index, sending_time = memx_options_memo_sbe_v1_10.sending_time.dissect(buffer, index, packet, parent)

  -- Alloc Id: 20 Byte Ascii String
  index, alloc_id = memx_options_memo_sbe_v1_10.alloc_id.dissect(buffer, index, packet, parent)

  -- Alloc Type: 1 Byte Unsigned Fixed Width Integer Enum with 2 values
  index, alloc_type = memx_options_memo_sbe_v1_10.alloc_type.dissect(buffer, index, packet, parent)

  -- Alloc Trans Type: 1 Byte Unsigned Fixed Width Integer Enum with 4 values
  index, alloc_trans_type = memx_options_memo_sbe_v1_10.alloc_trans_type.dissect(buffer, index, packet, parent)

  -- Secondary Alloc Id: 20 Byte Ascii String
  index, secondary_alloc_id = memx_options_memo_sbe_v1_10.secondary_alloc_id.dissect(buffer, index, packet, parent)

  -- Ref Alloc Id Optional: 20 Byte Ascii String Nullable
  index, ref_alloc_id_optional = memx_options_memo_sbe_v1_10.ref_alloc_id_optional.dissect(buffer, index, packet, parent)

  -- Alloc Status: 1 Byte Unsigned Fixed Width Integer Enum with 4 values
  index, alloc_status = memx_options_memo_sbe_v1_10.alloc_status.dissect(buffer, index, packet, parent)

  -- Alloc Rej Code: 2 Byte Unsigned Fixed Width Integer Enum with 17 values
  index, alloc_rej_code = memx_options_memo_sbe_v1_10.alloc_rej_code.dissect(buffer, index, packet, parent)

  -- Reported Allocations Groups: Struct of 2 fields
  index, reported_allocations_groups = memx_options_memo_sbe_v1_10.reported_allocations_groups.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Allocation Instruction Ack Message
memx_options_memo_sbe_v1_10.allocation_instruction_ack_message.dissect = function(buffer, offset, packet, parent)
  -- Optionally add dynamic struct element to protocol tree
  if show.allocation_instruction_ack_message then
    local length = memx_options_memo_sbe_v1_10.allocation_instruction_ack_message.size(buffer, offset)
    local range = buffer(offset, length)
    local display = memx_options_memo_sbe_v1_10.allocation_instruction_ack_message.display(buffer, packet, parent)
    parent = parent:add(omi_memx_options_memo_sbe_v1_10.fields.allocation_instruction_ack_message, range, display)
  end

  return memx_options_memo_sbe_v1_10.allocation_instruction_ack_message.fields(buffer, offset, packet, parent)
end

-- Side Optional
memx_options_memo_sbe_v1_10.side_optional = {}

-- Size: Side Optional
memx_options_memo_sbe_v1_10.side_optional.size = 1

-- Display: Side Optional
memx_options_memo_sbe_v1_10.side_optional.display = function(value)
  -- Check if field has value
  if value == nil or value == 0 then
    return "Side Optional: No Value"
  end

  if value == "1" then
    return "Side Optional: Buy (1)"
  end
  if value == "2" then
    return "Side Optional: Sell (2)"
  end
  if value == "B" then
    return "Side Optional: As Defined (B)"
  end
  if value == 0 then
    return "Side Optional: No Value"
  end

  return "Side Optional: Unknown("..value..")"
end

-- Dissect: Side Optional
memx_options_memo_sbe_v1_10.side_optional.dissect = function(buffer, offset, packet, parent)
  local length = memx_options_memo_sbe_v1_10.side_optional.size
  local range = buffer(offset, length)

  -- parse as byte
  local value = range:uint()

  -- check if value is non zero
  if value ~= 0 then
    value = range:string()
  end

  local display = memx_options_memo_sbe_v1_10.side_optional.display(value, buffer, offset, packet, parent)

  parent:add(omi_memx_options_memo_sbe_v1_10.fields.side_optional, range, value, display)

  return offset + length, value
end

-- Options Security Id Optional
memx_options_memo_sbe_v1_10.options_security_id_optional = {}

-- Size: Options Security Id Optional
memx_options_memo_sbe_v1_10.options_security_id_optional.size = 8

-- Display: Options Security Id Optional
memx_options_memo_sbe_v1_10.options_security_id_optional.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Options Security Id Optional: No Value"
  end

  return "Options Security Id Optional: "..value
end

-- Dissect: Options Security Id Optional
memx_options_memo_sbe_v1_10.options_security_id_optional.dissect = function(buffer, offset, packet, parent)
  local length = memx_options_memo_sbe_v1_10.options_security_id_optional.size
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

  local display = memx_options_memo_sbe_v1_10.options_security_id_optional.display(value, buffer, offset, packet, parent)

  parent:add(omi_memx_options_memo_sbe_v1_10.fields.options_security_id_optional, range, value, display)

  return offset + length, value
end

-- Cxl Rej Reason
memx_options_memo_sbe_v1_10.cxl_rej_reason = {}

-- Size: Cxl Rej Reason
memx_options_memo_sbe_v1_10.cxl_rej_reason.size = 2

-- Display: Cxl Rej Reason
memx_options_memo_sbe_v1_10.cxl_rej_reason.display = function(value)
  if value == 0 then
    return "Cxl Rej Reason: Too Late To Cancel (0)"
  end
  if value == 1 then
    return "Cxl Rej Reason: Unknown Order (1)"
  end
  if value == 3 then
    return "Cxl Rej Reason: Order Already Pending Cancel Or Replace (3)"
  end
  if value == 6 then
    return "Cxl Rej Reason: Duplicate Cl Ord Id (6)"
  end
  if value == 8 then
    return "Cxl Rej Reason: Price Exceeds Current Price Band (8)"
  end
  if value == 18 then
    return "Cxl Rej Reason: Invalid Price Increment (18)"
  end
  if value == 99 then
    return "Cxl Rej Reason: Other (99)"
  end
  if value == 100 then
    return "Cxl Rej Reason: Missing Symbol (100)"
  end
  if value == 101 then
    return "Cxl Rej Reason: Invalid Symbol (101)"
  end
  if value == 102 then
    return "Cxl Rej Reason: Missing Cl Ord Id (102)"
  end
  if value == 103 then
    return "Cxl Rej Reason: Invalid Cl Ord Id (103)"
  end
  if value == 104 then
    return "Cxl Rej Reason: Missing Side (104)"
  end
  if value == 105 then
    return "Cxl Rej Reason: Invalid Side (105)"
  end
  if value == 106 then
    return "Cxl Rej Reason: Missing Order Qty (106)"
  end
  if value == 107 then
    return "Cxl Rej Reason: Invalid Order Qty (107)"
  end
  if value == 108 then
    return "Cxl Rej Reason: Missing Order Type (108)"
  end
  if value == 109 then
    return "Cxl Rej Reason: Invalid Order Type (109)"
  end
  if value == 110 then
    return "Cxl Rej Reason: Missing Limit Price (110)"
  end
  if value == 111 then
    return "Cxl Rej Reason: Invalid Limit Price (111)"
  end
  if value == 114 then
    return "Cxl Rej Reason: Missing List Seq No (114)"
  end
  if value == 115 then
    return "Cxl Rej Reason: Invalid List Seq No (115)"
  end
  if value == 116 then
    return "Cxl Rej Reason: Missing Orig Cl Ord Id (116)"
  end
  if value == 117 then
    return "Cxl Rej Reason: Invalid Orig Cl Ord Id (117)"
  end
  if value == 118 then
    return "Cxl Rej Reason: Missing Order Id (118)"
  end
  if value == 119 then
    return "Cxl Rej Reason: Invalid Order Id (119)"
  end
  if value == 120 then
    return "Cxl Rej Reason: Missing Sending Time (120)"
  end
  if value == 121 then
    return "Cxl Rej Reason: Invalid Sending Time (121)"
  end
  if value == 200 then
    return "Cxl Rej Reason: Halted (200)"
  end
  if value == 201 then
    return "Cxl Rej Reason: Firm Disabled (201)"
  end
  if value == 202 then
    return "Cxl Rej Reason: Efid Disabled (202)"
  end
  if value == 203 then
    return "Cxl Rej Reason: Account Disabled (203)"
  end
  if value == 204 then
    return "Cxl Rej Reason: Unsupported Ord Type Change (204)"
  end
  if value == 205 then
    return "Cxl Rej Reason: Unsupported Side Change (205)"
  end
  if value == 206 then
    return "Cxl Rej Reason: Symbol Mismatch (206)"
  end
  if value == 207 then
    return "Cxl Rej Reason: Orig Order Id Mismatch (207)"
  end
  if value == 208 then
    return "Cxl Rej Reason: Unsupported Order Property Change (208)"
  end
  if value == 300 then
    return "Cxl Rej Reason: Non Test Symbols Blocked (300)"
  end
  if value == 301 then
    return "Cxl Rej Reason: Notional Value Exceeds Threshold (301)"
  end
  if value == 302 then
    return "Cxl Rej Reason: Max Notional Value Per Order Risk Rule Violated (302)"
  end
  if value == 303 then
    return "Cxl Rej Reason: Block Non Test Symbol Risk Rule Violated (303)"
  end
  if value == 304 then
    return "Cxl Rej Reason: Max Contracts Per Order Risk Rule Violated (304)"
  end
  if value == 305 then
    return "Cxl Rej Reason: Nbbo Width Exceeds Threshold (305)"
  end
  if value == 306 then
    return "Cxl Rej Reason: Exchange Price Value Collar Risk Rule Violated (306)"
  end
  if value == 307 then
    return "Cxl Rej Reason: Execution Price Higher Than Strike Price (307)"
  end
  if value == 308 then
    return "Cxl Rej Reason: Market Buy When Nbo Is Zero (308)"
  end
  if value == 309 then
    return "Cxl Rej Reason: Market Sell When Nbb Greater Than Threshold (309)"
  end
  if value == 310 then
    return "Cxl Rej Reason: Quote Price Outside Exchange Threshold (310)"
  end
  if value == 312 then
    return "Cxl Rej Reason: Num Contracts Executed Exceeds Threshold (312)"
  end
  if value == 313 then
    return "Cxl Rej Reason: Notional Value Of Executions Exceeds Threshold (313)"
  end
  if value == 314 then
    return "Cxl Rej Reason: Count Of Executions Exceeds Threshold (314)"
  end
  if value == 315 then
    return "Cxl Rej Reason: Outstanding Percentage Threshold Exceeded (315)"
  end
  if value == 316 then
    return "Cxl Rej Reason: Trips Threshold Exceeded (316)"
  end
  if value == 317 then
    return "Cxl Rej Reason: Iso Orders Not Allowed (317)"
  end
  if value == 318 then
    return "Cxl Rej Reason: Market Is Crossed (318)"
  end
  if value == 319 then
    return "Cxl Rej Reason: Active Risk Breach (319)"
  end
  if value == 320 then
    return "Cxl Rej Reason: Manual Risk Breach (320)"
  end
  if value == 321 then
    return "Cxl Rej Reason: Gross Notional Value Exceeds Threshold (321)"
  end
  if value == 322 then
    return "Cxl Rej Reason: Net Notional Value Exceeds Threshold (322)"
  end
  if value == 323 then
    return "Cxl Rej Reason: Duplicate Order Threshold Exceeded (323)"
  end
  if value == 324 then
    return "Cxl Rej Reason: Order Rate Threshold Exceeded (324)"
  end
  if value == 325 then
    return "Cxl Rej Reason: Mass Cancel Lockout In Effect (325)"
  end
  if value == 326 then
    return "Cxl Rej Reason: Market Order Gross Notional Value Exceeds Threshold (326)"
  end
  if value == 327 then
    return "Cxl Rej Reason: Market Order Net Notional Value Exceeds Threshold (327)"
  end
  if value == 328 then
    return "Cxl Rej Reason: Limit Order Fat Finger Check (328)"
  end
  if value == 329 then
    return "Cxl Rej Reason: Bulk Quote Fat Finger Check (329)"
  end
  if value == 65535 then
    return "Cxl Rej Reason: Null Value (65535)"
  end

  return "Cxl Rej Reason: Unknown("..value..")"
end

-- Dissect: Cxl Rej Reason
memx_options_memo_sbe_v1_10.cxl_rej_reason.dissect = function(buffer, offset, packet, parent)
  local length = memx_options_memo_sbe_v1_10.cxl_rej_reason.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = memx_options_memo_sbe_v1_10.cxl_rej_reason.display(value, buffer, offset, packet, parent)

  parent:add(omi_memx_options_memo_sbe_v1_10.fields.cxl_rej_reason, range, value, display)

  return offset + length, value
end

-- Cxl Rej Response To
memx_options_memo_sbe_v1_10.cxl_rej_response_to = {}

-- Size: Cxl Rej Response To
memx_options_memo_sbe_v1_10.cxl_rej_response_to.size = 1

-- Display: Cxl Rej Response To
memx_options_memo_sbe_v1_10.cxl_rej_response_to.display = function(value)
  -- Check if field has value
  if value == nil or value == 0 then
    return "Cxl Rej Response To: No Value"
  end

  if value == "1" then
    return "Cxl Rej Response To: Order Cancel Request (1)"
  end
  if value == "2" then
    return "Cxl Rej Response To: Order Cancel Replace Request (2)"
  end

  return "Cxl Rej Response To: Unknown("..value..")"
end

-- Dissect: Cxl Rej Response To
memx_options_memo_sbe_v1_10.cxl_rej_response_to.dissect = function(buffer, offset, packet, parent)
  local length = memx_options_memo_sbe_v1_10.cxl_rej_response_to.size
  local range = buffer(offset, length)

  -- parse as byte
  local value = range:uint()

  -- check if value is non zero
  if value ~= 0 then
    value = range:string()
  end

  local display = memx_options_memo_sbe_v1_10.cxl_rej_response_to.display(value, buffer, offset, packet, parent)

  parent:add(omi_memx_options_memo_sbe_v1_10.fields.cxl_rej_response_to, range, value, display)

  return offset + length, value
end

-- List Seq No
memx_options_memo_sbe_v1_10.list_seq_no = {}

-- Size: List Seq No
memx_options_memo_sbe_v1_10.list_seq_no.size = 1

-- Display: List Seq No
memx_options_memo_sbe_v1_10.list_seq_no.display = function(value)
  return "List Seq No: "..value
end

-- Dissect: List Seq No
memx_options_memo_sbe_v1_10.list_seq_no.dissect = function(buffer, offset, packet, parent)
  local length = memx_options_memo_sbe_v1_10.list_seq_no.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = memx_options_memo_sbe_v1_10.list_seq_no.display(value, buffer, offset, packet, parent)

  parent:add(omi_memx_options_memo_sbe_v1_10.fields.list_seq_no, range, value, display)

  return offset + length, value
end

-- Order Cancel Reject Message
memx_options_memo_sbe_v1_10.order_cancel_reject_message = {}

-- Size: Order Cancel Reject Message
memx_options_memo_sbe_v1_10.order_cancel_reject_message.size =
  memx_options_memo_sbe_v1_10.clordid.size + 
  memx_options_memo_sbe_v1_10.list_seq_no.size + 
  memx_options_memo_sbe_v1_10.cxl_rej_response_to.size + 
  memx_options_memo_sbe_v1_10.cxl_rej_reason.size + 
  memx_options_memo_sbe_v1_10.options_security_id_optional.size + 
  memx_options_memo_sbe_v1_10.side_optional.size + 
  memx_options_memo_sbe_v1_10.sending_time.size

-- Display: Order Cancel Reject Message
memx_options_memo_sbe_v1_10.order_cancel_reject_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Order Cancel Reject Message
memx_options_memo_sbe_v1_10.order_cancel_reject_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- ClOrdId: 20 Byte Ascii String
  index, clordid = memx_options_memo_sbe_v1_10.clordid.dissect(buffer, index, packet, parent)

  -- List Seq No: 1 Byte Unsigned Fixed Width Integer
  index, list_seq_no = memx_options_memo_sbe_v1_10.list_seq_no.dissect(buffer, index, packet, parent)

  -- Cxl Rej Response To: 1 Byte Ascii String Enum with 2 values
  index, cxl_rej_response_to = memx_options_memo_sbe_v1_10.cxl_rej_response_to.dissect(buffer, index, packet, parent)

  -- Cxl Rej Reason: 2 Byte Unsigned Fixed Width Integer Enum with 66 values
  index, cxl_rej_reason = memx_options_memo_sbe_v1_10.cxl_rej_reason.dissect(buffer, index, packet, parent)

  -- Options Security Id Optional: 8 Byte Ascii String Nullable
  index, options_security_id_optional = memx_options_memo_sbe_v1_10.options_security_id_optional.dissect(buffer, index, packet, parent)

  -- Side Optional: 1 Byte Ascii String Enum with 4 values
  index, side_optional = memx_options_memo_sbe_v1_10.side_optional.dissect(buffer, index, packet, parent)

  -- Sending Time: 8 Byte Unsigned Fixed Width Integer
  index, sending_time = memx_options_memo_sbe_v1_10.sending_time.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Order Cancel Reject Message
memx_options_memo_sbe_v1_10.order_cancel_reject_message.dissect = function(buffer, offset, packet, parent)
  if show.order_cancel_reject_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_memx_options_memo_sbe_v1_10.fields.order_cancel_reject_message, buffer(offset, 0))
    local index = memx_options_memo_sbe_v1_10.order_cancel_reject_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = memx_options_memo_sbe_v1_10.order_cancel_reject_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return memx_options_memo_sbe_v1_10.order_cancel_reject_message.fields(buffer, offset, packet, parent)
  end
end

-- Total Affected Orders
memx_options_memo_sbe_v1_10.total_affected_orders = {}

-- Size: Total Affected Orders
memx_options_memo_sbe_v1_10.total_affected_orders.size = 4

-- Display: Total Affected Orders
memx_options_memo_sbe_v1_10.total_affected_orders.display = function(value)
  return "Total Affected Orders: "..value
end

-- Dissect: Total Affected Orders
memx_options_memo_sbe_v1_10.total_affected_orders.dissect = function(buffer, offset, packet, parent)
  local length = memx_options_memo_sbe_v1_10.total_affected_orders.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = memx_options_memo_sbe_v1_10.total_affected_orders.display(value, buffer, offset, packet, parent)

  parent:add(omi_memx_options_memo_sbe_v1_10.fields.total_affected_orders, range, value, display)

  return offset + length, value
end

-- Mass Cancel Done Message
memx_options_memo_sbe_v1_10.mass_cancel_done_message = {}

-- Size: Mass Cancel Done Message
memx_options_memo_sbe_v1_10.mass_cancel_done_message.size =
  memx_options_memo_sbe_v1_10.clordid.size + 
  memx_options_memo_sbe_v1_10.total_affected_orders.size + 
  memx_options_memo_sbe_v1_10.sending_time.size + 
  memx_options_memo_sbe_v1_10.transact_time.size

-- Display: Mass Cancel Done Message
memx_options_memo_sbe_v1_10.mass_cancel_done_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Mass Cancel Done Message
memx_options_memo_sbe_v1_10.mass_cancel_done_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- ClOrdId: 20 Byte Ascii String
  index, clordid = memx_options_memo_sbe_v1_10.clordid.dissect(buffer, index, packet, parent)

  -- Total Affected Orders: 4 Byte Unsigned Fixed Width Integer
  index, total_affected_orders = memx_options_memo_sbe_v1_10.total_affected_orders.dissect(buffer, index, packet, parent)

  -- Sending Time: 8 Byte Unsigned Fixed Width Integer
  index, sending_time = memx_options_memo_sbe_v1_10.sending_time.dissect(buffer, index, packet, parent)

  -- Transact Time: 8 Byte Unsigned Fixed Width Integer
  index, transact_time = memx_options_memo_sbe_v1_10.transact_time.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Mass Cancel Done Message
memx_options_memo_sbe_v1_10.mass_cancel_done_message.dissect = function(buffer, offset, packet, parent)
  if show.mass_cancel_done_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_memx_options_memo_sbe_v1_10.fields.mass_cancel_done_message, buffer(offset, 0))
    local index = memx_options_memo_sbe_v1_10.mass_cancel_done_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = memx_options_memo_sbe_v1_10.mass_cancel_done_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return memx_options_memo_sbe_v1_10.mass_cancel_done_message.fields(buffer, offset, packet, parent)
  end
end

-- Mass Cancel Inst
memx_options_memo_sbe_v1_10.mass_cancel_inst = {}

-- Size: Mass Cancel Inst
memx_options_memo_sbe_v1_10.mass_cancel_inst.size = 1

-- Display: Mass Cancel Inst
memx_options_memo_sbe_v1_10.mass_cancel_inst.display = function(range, value, packet, parent)
  local display = ""

  -- Is Lockout flag set?
  if bit.band(value, 0x01) ~= 0 then
    display = display.."Lockout|"
  end
  -- Is Send Cancels flag set?
  if bit.band(value, 0x02) ~= 0 then
    display = display.."Send Cancels|"
  end
  -- Is Cancel Orders From This Port Only flag set?
  if bit.band(value, 0x04) ~= 0 then
    display = display.."Cancel Orders From This Port Only|"
  end

  if display:sub(-1) == "|" then
    display = display:sub(1, -2)
  end

  return display
end

-- Dissect Bit Fields: Mass Cancel Inst
memx_options_memo_sbe_v1_10.mass_cancel_inst.bits = function(range, value, packet, parent)

  -- Lockout: 1 Bit
  parent:add(omi_memx_options_memo_sbe_v1_10.fields.lockout, range, value)

  -- Send Cancels: 1 Bit
  parent:add(omi_memx_options_memo_sbe_v1_10.fields.send_cancels, range, value)

  -- Cancel Orders From This Port Only: 1 Bit
  parent:add(omi_memx_options_memo_sbe_v1_10.fields.cancel_orders_from_this_port_only, range, value)

  -- Reserved 5: 5 Bit
  parent:add(omi_memx_options_memo_sbe_v1_10.fields.reserved_5, range, value)
end

-- Dissect: Mass Cancel Inst
memx_options_memo_sbe_v1_10.mass_cancel_inst.dissect = function(buffer, offset, packet, parent)
  local size = memx_options_memo_sbe_v1_10.mass_cancel_inst.size
  local range = buffer(offset, size)
  local value = range:le_uint()
  local display = memx_options_memo_sbe_v1_10.mass_cancel_inst.display(range, value, packet, parent)
  local element = parent:add(omi_memx_options_memo_sbe_v1_10.fields.mass_cancel_inst, range, display)

  if show.mass_cancel_inst then
    memx_options_memo_sbe_v1_10.mass_cancel_inst.bits(range, value, packet, element)
  end

  return offset + size, range
end

-- Cancel Group Id
memx_options_memo_sbe_v1_10.cancel_group_id = {}

-- Size: Cancel Group Id
memx_options_memo_sbe_v1_10.cancel_group_id.size = 2

-- Display: Cancel Group Id
memx_options_memo_sbe_v1_10.cancel_group_id.display = function(value)
  -- Check if field has value
  if value == 65535 then
    return "Cancel Group Id: No Value"
  end

  return "Cancel Group Id: "..value
end

-- Dissect: Cancel Group Id
memx_options_memo_sbe_v1_10.cancel_group_id.dissect = function(buffer, offset, packet, parent)
  local length = memx_options_memo_sbe_v1_10.cancel_group_id.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = memx_options_memo_sbe_v1_10.cancel_group_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_memx_options_memo_sbe_v1_10.fields.cancel_group_id, range, value, display)

  return offset + length, value
end

-- Underlier Optional
memx_options_memo_sbe_v1_10.underlier_optional = {}

-- Size: Underlier Optional
memx_options_memo_sbe_v1_10.underlier_optional.size = 6

-- Display: Underlier Optional
memx_options_memo_sbe_v1_10.underlier_optional.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Underlier Optional: No Value"
  end

  return "Underlier Optional: "..value
end

-- Dissect: Underlier Optional
memx_options_memo_sbe_v1_10.underlier_optional.dissect = function(buffer, offset, packet, parent)
  local length = memx_options_memo_sbe_v1_10.underlier_optional.size
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

  local display = memx_options_memo_sbe_v1_10.underlier_optional.display(value, buffer, offset, packet, parent)

  parent:add(omi_memx_options_memo_sbe_v1_10.fields.underlier_optional, range, value, display)

  return offset + length, value
end

-- Underlying Or Series Optional
memx_options_memo_sbe_v1_10.underlying_or_series_optional = {}

-- Size: Underlying Or Series Optional
memx_options_memo_sbe_v1_10.underlying_or_series_optional.size = 1

-- Display: Underlying Or Series Optional
memx_options_memo_sbe_v1_10.underlying_or_series_optional.display = function(value)
  if value == 0 then
    return "Underlying Or Series Optional: Cancel All On Underlying (0)"
  end
  if value == 1 then
    return "Underlying Or Series Optional: Cancel All On Series (1)"
  end
  if value == 255 then
    return "Underlying Or Series Optional: Null Value (255)"
  end
  if value == 255 then
    return "Underlying Or Series Optional: No Value"
  end

  return "Underlying Or Series Optional: Unknown("..value..")"
end

-- Dissect: Underlying Or Series Optional
memx_options_memo_sbe_v1_10.underlying_or_series_optional.dissect = function(buffer, offset, packet, parent)
  local length = memx_options_memo_sbe_v1_10.underlying_or_series_optional.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = memx_options_memo_sbe_v1_10.underlying_or_series_optional.display(value, buffer, offset, packet, parent)

  parent:add(omi_memx_options_memo_sbe_v1_10.fields.underlying_or_series_optional, range, value, display)

  return offset + length, value
end

-- Efid Optional
memx_options_memo_sbe_v1_10.efid_optional = {}

-- Size: Efid Optional
memx_options_memo_sbe_v1_10.efid_optional.size = 4

-- Display: Efid Optional
memx_options_memo_sbe_v1_10.efid_optional.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Efid Optional: No Value"
  end

  return "Efid Optional: "..value
end

-- Dissect: Efid Optional
memx_options_memo_sbe_v1_10.efid_optional.dissect = function(buffer, offset, packet, parent)
  local length = memx_options_memo_sbe_v1_10.efid_optional.size
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

  local display = memx_options_memo_sbe_v1_10.efid_optional.display(value, buffer, offset, packet, parent)

  parent:add(omi_memx_options_memo_sbe_v1_10.fields.efid_optional, range, value, display)

  return offset + length, value
end

-- Mass Cancel Reject Reason
memx_options_memo_sbe_v1_10.mass_cancel_reject_reason = {}

-- Size: Mass Cancel Reject Reason
memx_options_memo_sbe_v1_10.mass_cancel_reject_reason.size = 2

-- Display: Mass Cancel Reject Reason
memx_options_memo_sbe_v1_10.mass_cancel_reject_reason.display = function(value)
  if value == 0 then
    return "Mass Cancel Reject Reason: Other (0)"
  end
  if value == 1 then
    return "Mass Cancel Reject Reason: Duplicate Cl Ord Id (1)"
  end
  if value == 2 then
    return "Mass Cancel Reject Reason: Missing Cl Ord Id (2)"
  end
  if value == 3 then
    return "Mass Cancel Reject Reason: Invalid Cl Ord Id (3)"
  end
  if value == 4 then
    return "Mass Cancel Reject Reason: Missing Efid (4)"
  end
  if value == 5 then
    return "Mass Cancel Reject Reason: Invalid Efid (5)"
  end
  if value == 6 then
    return "Mass Cancel Reject Reason: Missing Underlying Or Series (6)"
  end
  if value == 7 then
    return "Mass Cancel Reject Reason: Invalid Underlying Or Series (7)"
  end
  if value == 8 then
    return "Mass Cancel Reject Reason: Missing Underlier (8)"
  end
  if value == 9 then
    return "Mass Cancel Reject Reason: Invalid Underlier (9)"
  end
  if value == 10 then
    return "Mass Cancel Reject Reason: Missing Options Security Id (10)"
  end
  if value == 11 then
    return "Mass Cancel Reject Reason: Invalid Options Security Id (11)"
  end
  if value == 12 then
    return "Mass Cancel Reject Reason: Missing Cancel Group Id (12)"
  end
  if value == 13 then
    return "Mass Cancel Reject Reason: Invalid Cancel Group Id (13)"
  end
  if value == 14 then
    return "Mass Cancel Reject Reason: Missing Mass Cancel Inst (14)"
  end
  if value == 15 then
    return "Mass Cancel Reject Reason: Invalid Mass Cancel Inst (15)"
  end
  if value == 17 then
    return "Mass Cancel Reject Reason: Mass Cancel In Progress (17)"
  end
  if value == 18 then
    return "Mass Cancel Reject Reason: Missing Sending Time (18)"
  end
  if value == 19 then
    return "Mass Cancel Reject Reason: Invalid Sending Time (19)"
  end
  if value == 20 then
    return "Mass Cancel Reject Reason: Invalid Options Security Id For Underlier (20)"
  end
  if value == 65535 then
    return "Mass Cancel Reject Reason: Null Value (65535)"
  end

  return "Mass Cancel Reject Reason: Unknown("..value..")"
end

-- Dissect: Mass Cancel Reject Reason
memx_options_memo_sbe_v1_10.mass_cancel_reject_reason.dissect = function(buffer, offset, packet, parent)
  local length = memx_options_memo_sbe_v1_10.mass_cancel_reject_reason.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = memx_options_memo_sbe_v1_10.mass_cancel_reject_reason.display(value, buffer, offset, packet, parent)

  parent:add(omi_memx_options_memo_sbe_v1_10.fields.mass_cancel_reject_reason, range, value, display)

  return offset + length, value
end

-- Mass Cancel Reject Message
memx_options_memo_sbe_v1_10.mass_cancel_reject_message = {}

-- Size: Mass Cancel Reject Message
memx_options_memo_sbe_v1_10.mass_cancel_reject_message.size =
  memx_options_memo_sbe_v1_10.clordid.size + 
  memx_options_memo_sbe_v1_10.mass_cancel_reject_reason.size + 
  memx_options_memo_sbe_v1_10.efid_optional.size + 
  memx_options_memo_sbe_v1_10.underlying_or_series_optional.size + 
  memx_options_memo_sbe_v1_10.underlier_optional.size + 
  memx_options_memo_sbe_v1_10.options_security_id_optional.size + 
  memx_options_memo_sbe_v1_10.cancel_group_id.size + 
  memx_options_memo_sbe_v1_10.mass_cancel_inst.size + 
  memx_options_memo_sbe_v1_10.sending_time.size

-- Display: Mass Cancel Reject Message
memx_options_memo_sbe_v1_10.mass_cancel_reject_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Mass Cancel Reject Message
memx_options_memo_sbe_v1_10.mass_cancel_reject_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- ClOrdId: 20 Byte Ascii String
  index, clordid = memx_options_memo_sbe_v1_10.clordid.dissect(buffer, index, packet, parent)

  -- Mass Cancel Reject Reason: 2 Byte Unsigned Fixed Width Integer Enum with 21 values
  index, mass_cancel_reject_reason = memx_options_memo_sbe_v1_10.mass_cancel_reject_reason.dissect(buffer, index, packet, parent)

  -- Efid Optional: 4 Byte Ascii String Nullable
  index, efid_optional = memx_options_memo_sbe_v1_10.efid_optional.dissect(buffer, index, packet, parent)

  -- Underlying Or Series Optional: 1 Byte Unsigned Fixed Width Integer Enum with 4 values
  index, underlying_or_series_optional = memx_options_memo_sbe_v1_10.underlying_or_series_optional.dissect(buffer, index, packet, parent)

  -- Underlier Optional: 6 Byte Ascii String Nullable
  index, underlier_optional = memx_options_memo_sbe_v1_10.underlier_optional.dissect(buffer, index, packet, parent)

  -- Options Security Id Optional: 8 Byte Ascii String Nullable
  index, options_security_id_optional = memx_options_memo_sbe_v1_10.options_security_id_optional.dissect(buffer, index, packet, parent)

  -- Cancel Group Id: 2 Byte Unsigned Fixed Width Integer Nullable
  index, cancel_group_id = memx_options_memo_sbe_v1_10.cancel_group_id.dissect(buffer, index, packet, parent)

  -- Mass Cancel Inst: Struct of 4 fields
  index, mass_cancel_inst = memx_options_memo_sbe_v1_10.mass_cancel_inst.dissect(buffer, index, packet, parent)

  -- Sending Time: 8 Byte Unsigned Fixed Width Integer
  index, sending_time = memx_options_memo_sbe_v1_10.sending_time.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Mass Cancel Reject Message
memx_options_memo_sbe_v1_10.mass_cancel_reject_message.dissect = function(buffer, offset, packet, parent)
  if show.mass_cancel_reject_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_memx_options_memo_sbe_v1_10.fields.mass_cancel_reject_message, buffer(offset, 0))
    local index = memx_options_memo_sbe_v1_10.mass_cancel_reject_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = memx_options_memo_sbe_v1_10.mass_cancel_reject_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return memx_options_memo_sbe_v1_10.mass_cancel_reject_message.fields(buffer, offset, packet, parent)
  end
end

-- Underlying Or Series
memx_options_memo_sbe_v1_10.underlying_or_series = {}

-- Size: Underlying Or Series
memx_options_memo_sbe_v1_10.underlying_or_series.size = 1

-- Display: Underlying Or Series
memx_options_memo_sbe_v1_10.underlying_or_series.display = function(value)
  if value == 0 then
    return "Underlying Or Series: Cancel All On Underlying (0)"
  end
  if value == 1 then
    return "Underlying Or Series: Cancel All On Series (1)"
  end
  if value == 255 then
    return "Underlying Or Series: Null Value (255)"
  end

  return "Underlying Or Series: Unknown("..value..")"
end

-- Dissect: Underlying Or Series
memx_options_memo_sbe_v1_10.underlying_or_series.dissect = function(buffer, offset, packet, parent)
  local length = memx_options_memo_sbe_v1_10.underlying_or_series.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = memx_options_memo_sbe_v1_10.underlying_or_series.display(value, buffer, offset, packet, parent)

  parent:add(omi_memx_options_memo_sbe_v1_10.fields.underlying_or_series, range, value, display)

  return offset + length, value
end

-- Lockout Id Optional
memx_options_memo_sbe_v1_10.lockout_id_optional = {}

-- Size: Lockout Id Optional
memx_options_memo_sbe_v1_10.lockout_id_optional.size = 8

-- Display: Lockout Id Optional
memx_options_memo_sbe_v1_10.lockout_id_optional.display = function(value)
  -- Check if field has value
  if value == UInt64(0xFFFFFFFF, 0xFFFFFFFF) then
    return "Lockout Id Optional: No Value"
  end

  return "Lockout Id Optional: "..value
end

-- Dissect: Lockout Id Optional
memx_options_memo_sbe_v1_10.lockout_id_optional.dissect = function(buffer, offset, packet, parent)
  local length = memx_options_memo_sbe_v1_10.lockout_id_optional.size
  local range = buffer(offset, length)
  local value = range:uint64()
  local display = memx_options_memo_sbe_v1_10.lockout_id_optional.display(value, buffer, offset, packet, parent)

  parent:add(omi_memx_options_memo_sbe_v1_10.fields.lockout_id_optional, range, value, display)

  return offset + length, value
end

-- Pending Mass Cancel Message
memx_options_memo_sbe_v1_10.pending_mass_cancel_message = {}

-- Size: Pending Mass Cancel Message
memx_options_memo_sbe_v1_10.pending_mass_cancel_message.size =
  memx_options_memo_sbe_v1_10.clordid.size + 
  memx_options_memo_sbe_v1_10.mass_cancel_inst.size + 
  memx_options_memo_sbe_v1_10.lockout_id_optional.size + 
  memx_options_memo_sbe_v1_10.efid_optional.size + 
  memx_options_memo_sbe_v1_10.underlying_or_series.size + 
  memx_options_memo_sbe_v1_10.underlier.size + 
  memx_options_memo_sbe_v1_10.options_security_id_optional.size + 
  memx_options_memo_sbe_v1_10.cancel_group_id.size + 
  memx_options_memo_sbe_v1_10.sending_time.size

-- Display: Pending Mass Cancel Message
memx_options_memo_sbe_v1_10.pending_mass_cancel_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Pending Mass Cancel Message
memx_options_memo_sbe_v1_10.pending_mass_cancel_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- ClOrdId: 20 Byte Ascii String
  index, clordid = memx_options_memo_sbe_v1_10.clordid.dissect(buffer, index, packet, parent)

  -- Mass Cancel Inst: Struct of 4 fields
  index, mass_cancel_inst = memx_options_memo_sbe_v1_10.mass_cancel_inst.dissect(buffer, index, packet, parent)

  -- Lockout Id Optional: 8 Byte Unsigned Fixed Width Integer Nullable
  index, lockout_id_optional = memx_options_memo_sbe_v1_10.lockout_id_optional.dissect(buffer, index, packet, parent)

  -- Efid Optional: 4 Byte Ascii String Nullable
  index, efid_optional = memx_options_memo_sbe_v1_10.efid_optional.dissect(buffer, index, packet, parent)

  -- Underlying Or Series: 1 Byte Unsigned Fixed Width Integer Enum with 3 values
  index, underlying_or_series = memx_options_memo_sbe_v1_10.underlying_or_series.dissect(buffer, index, packet, parent)

  -- Underlier: 6 Byte Ascii String
  index, underlier = memx_options_memo_sbe_v1_10.underlier.dissect(buffer, index, packet, parent)

  -- Options Security Id Optional: 8 Byte Ascii String Nullable
  index, options_security_id_optional = memx_options_memo_sbe_v1_10.options_security_id_optional.dissect(buffer, index, packet, parent)

  -- Cancel Group Id: 2 Byte Unsigned Fixed Width Integer Nullable
  index, cancel_group_id = memx_options_memo_sbe_v1_10.cancel_group_id.dissect(buffer, index, packet, parent)

  -- Sending Time: 8 Byte Unsigned Fixed Width Integer
  index, sending_time = memx_options_memo_sbe_v1_10.sending_time.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Pending Mass Cancel Message
memx_options_memo_sbe_v1_10.pending_mass_cancel_message.dissect = function(buffer, offset, packet, parent)
  if show.pending_mass_cancel_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_memx_options_memo_sbe_v1_10.fields.pending_mass_cancel_message, buffer(offset, 0))
    local index = memx_options_memo_sbe_v1_10.pending_mass_cancel_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = memx_options_memo_sbe_v1_10.pending_mass_cancel_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return memx_options_memo_sbe_v1_10.pending_mass_cancel_message.fields(buffer, offset, packet, parent)
  end
end

-- Cum Qty
memx_options_memo_sbe_v1_10.cum_qty = {}

-- Size: Cum Qty
memx_options_memo_sbe_v1_10.cum_qty.size = 4

-- Display: Cum Qty
memx_options_memo_sbe_v1_10.cum_qty.display = function(value)
  return "Cum Qty: "..value
end

-- Dissect: Cum Qty
memx_options_memo_sbe_v1_10.cum_qty.dissect = function(buffer, offset, packet, parent)
  local length = memx_options_memo_sbe_v1_10.cum_qty.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = memx_options_memo_sbe_v1_10.cum_qty.display(value, buffer, offset, packet, parent)

  parent:add(omi_memx_options_memo_sbe_v1_10.fields.cum_qty, range, value, display)

  return offset + length, value
end

-- Leaves Qty
memx_options_memo_sbe_v1_10.leaves_qty = {}

-- Size: Leaves Qty
memx_options_memo_sbe_v1_10.leaves_qty.size = 4

-- Display: Leaves Qty
memx_options_memo_sbe_v1_10.leaves_qty.display = function(value)
  return "Leaves Qty: "..value
end

-- Dissect: Leaves Qty
memx_options_memo_sbe_v1_10.leaves_qty.dissect = function(buffer, offset, packet, parent)
  local length = memx_options_memo_sbe_v1_10.leaves_qty.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = memx_options_memo_sbe_v1_10.leaves_qty.display(value, buffer, offset, packet, parent)

  parent:add(omi_memx_options_memo_sbe_v1_10.fields.leaves_qty, range, value, display)

  return offset + length, value
end

-- Last Qty Optional
memx_options_memo_sbe_v1_10.last_qty_optional = {}

-- Size: Last Qty Optional
memx_options_memo_sbe_v1_10.last_qty_optional.size = 4

-- Display: Last Qty Optional
memx_options_memo_sbe_v1_10.last_qty_optional.display = function(value)
  -- Check if field has value
  if value == 4294967295 then
    return "Last Qty Optional: No Value"
  end

  return "Last Qty Optional: "..value
end

-- Dissect: Last Qty Optional
memx_options_memo_sbe_v1_10.last_qty_optional.dissect = function(buffer, offset, packet, parent)
  local length = memx_options_memo_sbe_v1_10.last_qty_optional.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = memx_options_memo_sbe_v1_10.last_qty_optional.display(value, buffer, offset, packet, parent)

  parent:add(omi_memx_options_memo_sbe_v1_10.fields.last_qty_optional, range, value, display)

  return offset + length, value
end

-- Extended Restatement Reason
memx_options_memo_sbe_v1_10.extended_restatement_reason = {}

-- Size: Extended Restatement Reason
memx_options_memo_sbe_v1_10.extended_restatement_reason.size = 1

-- Display: Extended Restatement Reason
memx_options_memo_sbe_v1_10.extended_restatement_reason.display = function(value)
  if value == 0 then
    return "Extended Restatement Reason: None (0)"
  end
  if value == 3 then
    return "Extended Restatement Reason: Match Trade Cancel Newest (3)"
  end
  if value == 4 then
    return "Extended Restatement Reason: Match Trade Cancel Oldest (4)"
  end
  if value == 6 then
    return "Extended Restatement Reason: Match Trade Cancel Both (6)"
  end
  if value == 255 then
    return "Extended Restatement Reason: Null Value (255)"
  end
  if value == 255 then
    return "Extended Restatement Reason: No Value"
  end

  return "Extended Restatement Reason: Unknown("..value..")"
end

-- Dissect: Extended Restatement Reason
memx_options_memo_sbe_v1_10.extended_restatement_reason.dissect = function(buffer, offset, packet, parent)
  local length = memx_options_memo_sbe_v1_10.extended_restatement_reason.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = memx_options_memo_sbe_v1_10.extended_restatement_reason.display(value, buffer, offset, packet, parent)

  parent:add(omi_memx_options_memo_sbe_v1_10.fields.extended_restatement_reason, range, value, display)

  return offset + length, value
end

-- Exec Restatement Reason
memx_options_memo_sbe_v1_10.exec_restatement_reason = {}

-- Size: Exec Restatement Reason
memx_options_memo_sbe_v1_10.exec_restatement_reason.size = 1

-- Display: Exec Restatement Reason
memx_options_memo_sbe_v1_10.exec_restatement_reason.display = function(value)
  if value == 3 then
    return "Exec Restatement Reason: Order Reprice (3)"
  end
  if value == 5 then
    return "Exec Restatement Reason: Match Trade Prevention (5)"
  end
  if value == 99 then
    return "Exec Restatement Reason: Other (99)"
  end
  if value == 255 then
    return "Exec Restatement Reason: Null Value (255)"
  end

  return "Exec Restatement Reason: Unknown("..value..")"
end

-- Dissect: Exec Restatement Reason
memx_options_memo_sbe_v1_10.exec_restatement_reason.dissect = function(buffer, offset, packet, parent)
  local length = memx_options_memo_sbe_v1_10.exec_restatement_reason.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = memx_options_memo_sbe_v1_10.exec_restatement_reason.display(value, buffer, offset, packet, parent)

  parent:add(omi_memx_options_memo_sbe_v1_10.fields.exec_restatement_reason, range, value, display)

  return offset + length, value
end

-- Ord Status
memx_options_memo_sbe_v1_10.ord_status = {}

-- Size: Ord Status
memx_options_memo_sbe_v1_10.ord_status.size = 1

-- Display: Ord Status
memx_options_memo_sbe_v1_10.ord_status.display = function(value)
  -- Check if field has value
  if value == nil or value == 0 then
    return "Ord Status: No Value"
  end

  if value == "0" then
    return "Ord Status: New (0)"
  end
  if value == "1" then
    return "Ord Status: Partial Filled (1)"
  end
  if value == "2" then
    return "Ord Status: Filled (2)"
  end
  if value == "4" then
    return "Ord Status: Canceled (4)"
  end
  if value == "6" then
    return "Ord Status: Pending Cancel (6)"
  end
  if value == "8" then
    return "Ord Status: Rejected (8)"
  end
  if value == "E" then
    return "Ord Status: Pending Replace (E)"
  end
  if value == "C" then
    return "Ord Status: Expired (C)"
  end

  return "Ord Status: Unknown("..value..")"
end

-- Dissect: Ord Status
memx_options_memo_sbe_v1_10.ord_status.dissect = function(buffer, offset, packet, parent)
  local length = memx_options_memo_sbe_v1_10.ord_status.size
  local range = buffer(offset, length)

  -- parse as byte
  local value = range:uint()

  -- check if value is non zero
  if value ~= 0 then
    value = range:string()
  end

  local display = memx_options_memo_sbe_v1_10.ord_status.display(value, buffer, offset, packet, parent)

  parent:add(omi_memx_options_memo_sbe_v1_10.fields.ord_status, range, value, display)

  return offset + length, value
end

-- Exec Id
memx_options_memo_sbe_v1_10.exec_id = {}

-- Size: Exec Id
memx_options_memo_sbe_v1_10.exec_id.size = 8

-- Display: Exec Id
memx_options_memo_sbe_v1_10.exec_id.display = function(value)
  return "Exec Id: "..value
end

-- Dissect: Exec Id
memx_options_memo_sbe_v1_10.exec_id.dissect = function(buffer, offset, packet, parent)
  local length = memx_options_memo_sbe_v1_10.exec_id.size
  local range = buffer(offset, length)
  local value = range:uint64()
  local display = memx_options_memo_sbe_v1_10.exec_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_memx_options_memo_sbe_v1_10.fields.exec_id, range, value, display)

  return offset + length, value
end

-- Order Id
memx_options_memo_sbe_v1_10.order_id = {}

-- Size: Order Id
memx_options_memo_sbe_v1_10.order_id.size = 8

-- Display: Order Id
memx_options_memo_sbe_v1_10.order_id.display = function(value)
  return "Order Id: "..value
end

-- Dissect: Order Id
memx_options_memo_sbe_v1_10.order_id.dissect = function(buffer, offset, packet, parent)
  local length = memx_options_memo_sbe_v1_10.order_id.size
  local range = buffer(offset, length)
  local value = range:uint64()
  local display = memx_options_memo_sbe_v1_10.order_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_memx_options_memo_sbe_v1_10.fields.order_id, range, value, display)

  return offset + length, value
end

-- Execution Report Restatement Message
memx_options_memo_sbe_v1_10.execution_report_restatement_message = {}

-- Size: Execution Report Restatement Message
memx_options_memo_sbe_v1_10.execution_report_restatement_message.size =
  memx_options_memo_sbe_v1_10.order_id.size + 
  memx_options_memo_sbe_v1_10.clordid.size + 
  memx_options_memo_sbe_v1_10.list_seq_no.size + 
  memx_options_memo_sbe_v1_10.exec_id.size + 
  memx_options_memo_sbe_v1_10.ord_status.size + 
  memx_options_memo_sbe_v1_10.security_id.size + 
  memx_options_memo_sbe_v1_10.exec_restatement_reason.size + 
  memx_options_memo_sbe_v1_10.extended_restatement_reason.size + 
  memx_options_memo_sbe_v1_10.side.size + 
  memx_options_memo_sbe_v1_10.last_px.size + 
  memx_options_memo_sbe_v1_10.last_qty_optional.size + 
  memx_options_memo_sbe_v1_10.leaves_qty.size + 
  memx_options_memo_sbe_v1_10.cum_qty.size + 
  memx_options_memo_sbe_v1_10.sending_time.size + 
  memx_options_memo_sbe_v1_10.transact_time.size

-- Display: Execution Report Restatement Message
memx_options_memo_sbe_v1_10.execution_report_restatement_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Execution Report Restatement Message
memx_options_memo_sbe_v1_10.execution_report_restatement_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Order Id: 8 Byte Unsigned Fixed Width Integer
  index, order_id = memx_options_memo_sbe_v1_10.order_id.dissect(buffer, index, packet, parent)

  -- ClOrdId: 20 Byte Ascii String
  index, clordid = memx_options_memo_sbe_v1_10.clordid.dissect(buffer, index, packet, parent)

  -- List Seq No: 1 Byte Unsigned Fixed Width Integer
  index, list_seq_no = memx_options_memo_sbe_v1_10.list_seq_no.dissect(buffer, index, packet, parent)

  -- Exec Id: 8 Byte Unsigned Fixed Width Integer
  index, exec_id = memx_options_memo_sbe_v1_10.exec_id.dissect(buffer, index, packet, parent)

  -- Ord Status: 1 Byte Ascii String Enum with 8 values
  index, ord_status = memx_options_memo_sbe_v1_10.ord_status.dissect(buffer, index, packet, parent)

  -- Security Id: 8 Byte Ascii String
  index, security_id = memx_options_memo_sbe_v1_10.security_id.dissect(buffer, index, packet, parent)

  -- Exec Restatement Reason: 1 Byte Unsigned Fixed Width Integer Enum with 4 values
  index, exec_restatement_reason = memx_options_memo_sbe_v1_10.exec_restatement_reason.dissect(buffer, index, packet, parent)

  -- Extended Restatement Reason: 1 Byte Unsigned Fixed Width Integer Enum with 6 values
  index, extended_restatement_reason = memx_options_memo_sbe_v1_10.extended_restatement_reason.dissect(buffer, index, packet, parent)

  -- Side: 1 Byte Ascii String Enum with 3 values
  index, side = memx_options_memo_sbe_v1_10.side.dissect(buffer, index, packet, parent)

  -- Last Px: 8 Byte Unsigned Fixed Width Integer
  index, last_px = memx_options_memo_sbe_v1_10.last_px.dissect(buffer, index, packet, parent)

  -- Last Qty Optional: 4 Byte Unsigned Fixed Width Integer Nullable
  index, last_qty_optional = memx_options_memo_sbe_v1_10.last_qty_optional.dissect(buffer, index, packet, parent)

  -- Leaves Qty: 4 Byte Unsigned Fixed Width Integer
  index, leaves_qty = memx_options_memo_sbe_v1_10.leaves_qty.dissect(buffer, index, packet, parent)

  -- Cum Qty: 4 Byte Unsigned Fixed Width Integer
  index, cum_qty = memx_options_memo_sbe_v1_10.cum_qty.dissect(buffer, index, packet, parent)

  -- Sending Time: 8 Byte Unsigned Fixed Width Integer
  index, sending_time = memx_options_memo_sbe_v1_10.sending_time.dissect(buffer, index, packet, parent)

  -- Transact Time: 8 Byte Unsigned Fixed Width Integer
  index, transact_time = memx_options_memo_sbe_v1_10.transact_time.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Execution Report Restatement Message
memx_options_memo_sbe_v1_10.execution_report_restatement_message.dissect = function(buffer, offset, packet, parent)
  if show.execution_report_restatement_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_memx_options_memo_sbe_v1_10.fields.execution_report_restatement_message, buffer(offset, 0))
    local index = memx_options_memo_sbe_v1_10.execution_report_restatement_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = memx_options_memo_sbe_v1_10.execution_report_restatement_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return memx_options_memo_sbe_v1_10.execution_report_restatement_message.fields(buffer, offset, packet, parent)
  end
end

-- Exec Ref Id
memx_options_memo_sbe_v1_10.exec_ref_id = {}

-- Size: Exec Ref Id
memx_options_memo_sbe_v1_10.exec_ref_id.size = 8

-- Display: Exec Ref Id
memx_options_memo_sbe_v1_10.exec_ref_id.display = function(value)
  return "Exec Ref Id: "..value
end

-- Dissect: Exec Ref Id
memx_options_memo_sbe_v1_10.exec_ref_id.dissect = function(buffer, offset, packet, parent)
  local length = memx_options_memo_sbe_v1_10.exec_ref_id.size
  local range = buffer(offset, length)
  local value = range:uint64()
  local display = memx_options_memo_sbe_v1_10.exec_ref_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_memx_options_memo_sbe_v1_10.fields.exec_ref_id, range, value, display)

  return offset + length, value
end

-- Trd Match Id
memx_options_memo_sbe_v1_10.trd_match_id = {}

-- Size: Trd Match Id
memx_options_memo_sbe_v1_10.trd_match_id.size = 8

-- Display: Trd Match Id
memx_options_memo_sbe_v1_10.trd_match_id.display = function(value)
  return "Trd Match Id: "..value
end

-- Dissect: Trd Match Id
memx_options_memo_sbe_v1_10.trd_match_id.dissect = function(buffer, offset, packet, parent)
  local length = memx_options_memo_sbe_v1_10.trd_match_id.size
  local range = buffer(offset, length)
  local value = range:uint64()
  local display = memx_options_memo_sbe_v1_10.trd_match_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_memx_options_memo_sbe_v1_10.fields.trd_match_id, range, value, display)

  return offset + length, value
end

-- Execution Report Trade Break Message
memx_options_memo_sbe_v1_10.execution_report_trade_break_message = {}

-- Size: Execution Report Trade Break Message
memx_options_memo_sbe_v1_10.execution_report_trade_break_message.size =
  memx_options_memo_sbe_v1_10.order_id.size + 
  memx_options_memo_sbe_v1_10.clordid.size + 
  memx_options_memo_sbe_v1_10.list_seq_no.size + 
  memx_options_memo_sbe_v1_10.trd_match_id.size + 
  memx_options_memo_sbe_v1_10.exec_id.size + 
  memx_options_memo_sbe_v1_10.exec_ref_id.size + 
  memx_options_memo_sbe_v1_10.ord_status.size + 
  memx_options_memo_sbe_v1_10.security_id.size + 
  memx_options_memo_sbe_v1_10.side.size + 
  memx_options_memo_sbe_v1_10.leaves_qty.size + 
  memx_options_memo_sbe_v1_10.cum_qty.size + 
  memx_options_memo_sbe_v1_10.sending_time.size

-- Display: Execution Report Trade Break Message
memx_options_memo_sbe_v1_10.execution_report_trade_break_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Execution Report Trade Break Message
memx_options_memo_sbe_v1_10.execution_report_trade_break_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Order Id: 8 Byte Unsigned Fixed Width Integer
  index, order_id = memx_options_memo_sbe_v1_10.order_id.dissect(buffer, index, packet, parent)

  -- ClOrdId: 20 Byte Ascii String
  index, clordid = memx_options_memo_sbe_v1_10.clordid.dissect(buffer, index, packet, parent)

  -- List Seq No: 1 Byte Unsigned Fixed Width Integer
  index, list_seq_no = memx_options_memo_sbe_v1_10.list_seq_no.dissect(buffer, index, packet, parent)

  -- Trd Match Id: 8 Byte Unsigned Fixed Width Integer
  index, trd_match_id = memx_options_memo_sbe_v1_10.trd_match_id.dissect(buffer, index, packet, parent)

  -- Exec Id: 8 Byte Unsigned Fixed Width Integer
  index, exec_id = memx_options_memo_sbe_v1_10.exec_id.dissect(buffer, index, packet, parent)

  -- Exec Ref Id: 8 Byte Unsigned Fixed Width Integer
  index, exec_ref_id = memx_options_memo_sbe_v1_10.exec_ref_id.dissect(buffer, index, packet, parent)

  -- Ord Status: 1 Byte Ascii String Enum with 8 values
  index, ord_status = memx_options_memo_sbe_v1_10.ord_status.dissect(buffer, index, packet, parent)

  -- Security Id: 8 Byte Ascii String
  index, security_id = memx_options_memo_sbe_v1_10.security_id.dissect(buffer, index, packet, parent)

  -- Side: 1 Byte Ascii String Enum with 3 values
  index, side = memx_options_memo_sbe_v1_10.side.dissect(buffer, index, packet, parent)

  -- Leaves Qty: 4 Byte Unsigned Fixed Width Integer
  index, leaves_qty = memx_options_memo_sbe_v1_10.leaves_qty.dissect(buffer, index, packet, parent)

  -- Cum Qty: 4 Byte Unsigned Fixed Width Integer
  index, cum_qty = memx_options_memo_sbe_v1_10.cum_qty.dissect(buffer, index, packet, parent)

  -- Sending Time: 8 Byte Unsigned Fixed Width Integer
  index, sending_time = memx_options_memo_sbe_v1_10.sending_time.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Execution Report Trade Break Message
memx_options_memo_sbe_v1_10.execution_report_trade_break_message.dissect = function(buffer, offset, packet, parent)
  if show.execution_report_trade_break_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_memx_options_memo_sbe_v1_10.fields.execution_report_trade_break_message, buffer(offset, 0))
    local index = memx_options_memo_sbe_v1_10.execution_report_trade_break_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = memx_options_memo_sbe_v1_10.execution_report_trade_break_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return memx_options_memo_sbe_v1_10.execution_report_trade_break_message.fields(buffer, offset, packet, parent)
  end
end

-- Execution Report Trade Correction Message
memx_options_memo_sbe_v1_10.execution_report_trade_correction_message = {}

-- Size: Execution Report Trade Correction Message
memx_options_memo_sbe_v1_10.execution_report_trade_correction_message.size =
  memx_options_memo_sbe_v1_10.order_id.size + 
  memx_options_memo_sbe_v1_10.clordid.size + 
  memx_options_memo_sbe_v1_10.list_seq_no.size + 
  memx_options_memo_sbe_v1_10.trd_match_id.size + 
  memx_options_memo_sbe_v1_10.exec_id.size + 
  memx_options_memo_sbe_v1_10.exec_ref_id.size + 
  memx_options_memo_sbe_v1_10.ord_status.size + 
  memx_options_memo_sbe_v1_10.security_id.size + 
  memx_options_memo_sbe_v1_10.side.size + 
  memx_options_memo_sbe_v1_10.last_qty.size + 
  memx_options_memo_sbe_v1_10.last_px.size + 
  memx_options_memo_sbe_v1_10.leaves_qty.size + 
  memx_options_memo_sbe_v1_10.cum_qty.size + 
  memx_options_memo_sbe_v1_10.sending_time.size

-- Display: Execution Report Trade Correction Message
memx_options_memo_sbe_v1_10.execution_report_trade_correction_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Execution Report Trade Correction Message
memx_options_memo_sbe_v1_10.execution_report_trade_correction_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Order Id: 8 Byte Unsigned Fixed Width Integer
  index, order_id = memx_options_memo_sbe_v1_10.order_id.dissect(buffer, index, packet, parent)

  -- ClOrdId: 20 Byte Ascii String
  index, clordid = memx_options_memo_sbe_v1_10.clordid.dissect(buffer, index, packet, parent)

  -- List Seq No: 1 Byte Unsigned Fixed Width Integer
  index, list_seq_no = memx_options_memo_sbe_v1_10.list_seq_no.dissect(buffer, index, packet, parent)

  -- Trd Match Id: 8 Byte Unsigned Fixed Width Integer
  index, trd_match_id = memx_options_memo_sbe_v1_10.trd_match_id.dissect(buffer, index, packet, parent)

  -- Exec Id: 8 Byte Unsigned Fixed Width Integer
  index, exec_id = memx_options_memo_sbe_v1_10.exec_id.dissect(buffer, index, packet, parent)

  -- Exec Ref Id: 8 Byte Unsigned Fixed Width Integer
  index, exec_ref_id = memx_options_memo_sbe_v1_10.exec_ref_id.dissect(buffer, index, packet, parent)

  -- Ord Status: 1 Byte Ascii String Enum with 8 values
  index, ord_status = memx_options_memo_sbe_v1_10.ord_status.dissect(buffer, index, packet, parent)

  -- Security Id: 8 Byte Ascii String
  index, security_id = memx_options_memo_sbe_v1_10.security_id.dissect(buffer, index, packet, parent)

  -- Side: 1 Byte Ascii String Enum with 3 values
  index, side = memx_options_memo_sbe_v1_10.side.dissect(buffer, index, packet, parent)

  -- Last Qty: 4 Byte Unsigned Fixed Width Integer
  index, last_qty = memx_options_memo_sbe_v1_10.last_qty.dissect(buffer, index, packet, parent)

  -- Last Px: 8 Byte Unsigned Fixed Width Integer
  index, last_px = memx_options_memo_sbe_v1_10.last_px.dissect(buffer, index, packet, parent)

  -- Leaves Qty: 4 Byte Unsigned Fixed Width Integer
  index, leaves_qty = memx_options_memo_sbe_v1_10.leaves_qty.dissect(buffer, index, packet, parent)

  -- Cum Qty: 4 Byte Unsigned Fixed Width Integer
  index, cum_qty = memx_options_memo_sbe_v1_10.cum_qty.dissect(buffer, index, packet, parent)

  -- Sending Time: 8 Byte Unsigned Fixed Width Integer
  index, sending_time = memx_options_memo_sbe_v1_10.sending_time.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Execution Report Trade Correction Message
memx_options_memo_sbe_v1_10.execution_report_trade_correction_message.dissect = function(buffer, offset, packet, parent)
  if show.execution_report_trade_correction_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_memx_options_memo_sbe_v1_10.fields.execution_report_trade_correction_message, buffer(offset, 0))
    local index = memx_options_memo_sbe_v1_10.execution_report_trade_correction_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = memx_options_memo_sbe_v1_10.execution_report_trade_correction_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return memx_options_memo_sbe_v1_10.execution_report_trade_correction_message.fields(buffer, offset, packet, parent)
  end
end

-- Orig List Seq No
memx_options_memo_sbe_v1_10.orig_list_seq_no = {}

-- Size: Orig List Seq No
memx_options_memo_sbe_v1_10.orig_list_seq_no.size = 1

-- Display: Orig List Seq No
memx_options_memo_sbe_v1_10.orig_list_seq_no.display = function(value)
  return "Orig List Seq No: "..value
end

-- Dissect: Orig List Seq No
memx_options_memo_sbe_v1_10.orig_list_seq_no.dissect = function(buffer, offset, packet, parent)
  local length = memx_options_memo_sbe_v1_10.orig_list_seq_no.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = memx_options_memo_sbe_v1_10.orig_list_seq_no.display(value, buffer, offset, packet, parent)

  parent:add(omi_memx_options_memo_sbe_v1_10.fields.orig_list_seq_no, range, value, display)

  return offset + length, value
end

-- Price Optional
memx_options_memo_sbe_v1_10.price_optional = {}

-- Size: Price Optional
memx_options_memo_sbe_v1_10.price_optional.size = 8

-- Display: Price Optional
memx_options_memo_sbe_v1_10.price_optional.display = function(raw, value)
  -- Check null sentinel value
  if raw == UInt64(0xFFFFFFFF, 0xFFFFFFFF) then
    return "Price Optional: No Value"
  end

  return "Price Optional: "..value
end

-- Translate: Price Optional
memx_options_memo_sbe_v1_10.price_optional.translate = function(raw)
  -- Check null sentinel value
  if raw == UInt64(0xFFFFFFFF, 0xFFFFFFFF) then
    return 0/0
  end

  return raw:tonumber()/100000000
end

-- Dissect: Price Optional
memx_options_memo_sbe_v1_10.price_optional.dissect = function(buffer, offset, packet, parent)
  local length = memx_options_memo_sbe_v1_10.price_optional.size
  local range = buffer(offset, length)
  local raw = range:uint64()
  local value = memx_options_memo_sbe_v1_10.price_optional.translate(raw)
  local display = memx_options_memo_sbe_v1_10.price_optional.display(raw, value, buffer, offset, packet, parent)

  parent:add(omi_memx_options_memo_sbe_v1_10.fields.price_optional, range, value, display)

  return offset + length, value
end

-- Ord Type
memx_options_memo_sbe_v1_10.ord_type = {}

-- Size: Ord Type
memx_options_memo_sbe_v1_10.ord_type.size = 1

-- Display: Ord Type
memx_options_memo_sbe_v1_10.ord_type.display = function(value)
  -- Check if field has value
  if value == nil or value == 0 then
    return "Ord Type: No Value"
  end

  if value == "1" then
    return "Ord Type: Market (1)"
  end
  if value == "2" then
    return "Ord Type: Limit (2)"
  end

  return "Ord Type: Unknown("..value..")"
end

-- Dissect: Ord Type
memx_options_memo_sbe_v1_10.ord_type.dissect = function(buffer, offset, packet, parent)
  local length = memx_options_memo_sbe_v1_10.ord_type.size
  local range = buffer(offset, length)

  -- parse as byte
  local value = range:uint()

  -- check if value is non zero
  if value ~= 0 then
    value = range:string()
  end

  local display = memx_options_memo_sbe_v1_10.ord_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_memx_options_memo_sbe_v1_10.fields.ord_type, range, value, display)

  return offset + length, value
end

-- Order Qty
memx_options_memo_sbe_v1_10.order_qty = {}

-- Size: Order Qty
memx_options_memo_sbe_v1_10.order_qty.size = 4

-- Display: Order Qty
memx_options_memo_sbe_v1_10.order_qty.display = function(value)
  return "Order Qty: "..value
end

-- Dissect: Order Qty
memx_options_memo_sbe_v1_10.order_qty.dissect = function(buffer, offset, packet, parent)
  local length = memx_options_memo_sbe_v1_10.order_qty.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = memx_options_memo_sbe_v1_10.order_qty.display(value, buffer, offset, packet, parent)

  parent:add(omi_memx_options_memo_sbe_v1_10.fields.order_qty, range, value, display)

  return offset + length, value
end

-- OrigClOrdId
memx_options_memo_sbe_v1_10.origclordid = {}

-- Size: OrigClOrdId
memx_options_memo_sbe_v1_10.origclordid.size = 20

-- Display: OrigClOrdId
memx_options_memo_sbe_v1_10.origclordid.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "OrigClOrdId: No Value"
  end

  return "OrigClOrdId: "..value
end

-- Dissect: OrigClOrdId
memx_options_memo_sbe_v1_10.origclordid.dissect = function(buffer, offset, packet, parent)
  local length = memx_options_memo_sbe_v1_10.origclordid.size
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

  local display = memx_options_memo_sbe_v1_10.origclordid.display(value, buffer, offset, packet, parent)

  parent:add(omi_memx_options_memo_sbe_v1_10.fields.origclordid, range, value, display)

  return offset + length, value
end

-- Execution Report Replaced Message
memx_options_memo_sbe_v1_10.execution_report_replaced_message = {}

-- Size: Execution Report Replaced Message
memx_options_memo_sbe_v1_10.execution_report_replaced_message.size =
  memx_options_memo_sbe_v1_10.order_id.size + 
  memx_options_memo_sbe_v1_10.clordid.size + 
  memx_options_memo_sbe_v1_10.list_seq_no.size + 
  memx_options_memo_sbe_v1_10.origclordid.size + 
  memx_options_memo_sbe_v1_10.exec_id.size + 
  memx_options_memo_sbe_v1_10.ord_status.size + 
  memx_options_memo_sbe_v1_10.security_id.size + 
  memx_options_memo_sbe_v1_10.side.size + 
  memx_options_memo_sbe_v1_10.order_qty.size + 
  memx_options_memo_sbe_v1_10.ord_type.size + 
  memx_options_memo_sbe_v1_10.price_optional.size + 
  memx_options_memo_sbe_v1_10.leaves_qty.size + 
  memx_options_memo_sbe_v1_10.cum_qty.size + 
  memx_options_memo_sbe_v1_10.sending_time.size + 
  memx_options_memo_sbe_v1_10.transact_time.size + 
  memx_options_memo_sbe_v1_10.orig_list_seq_no.size

-- Display: Execution Report Replaced Message
memx_options_memo_sbe_v1_10.execution_report_replaced_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Execution Report Replaced Message
memx_options_memo_sbe_v1_10.execution_report_replaced_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Order Id: 8 Byte Unsigned Fixed Width Integer
  index, order_id = memx_options_memo_sbe_v1_10.order_id.dissect(buffer, index, packet, parent)

  -- ClOrdId: 20 Byte Ascii String
  index, clordid = memx_options_memo_sbe_v1_10.clordid.dissect(buffer, index, packet, parent)

  -- List Seq No: 1 Byte Unsigned Fixed Width Integer
  index, list_seq_no = memx_options_memo_sbe_v1_10.list_seq_no.dissect(buffer, index, packet, parent)

  -- OrigClOrdId: 20 Byte Ascii String
  index, origclordid = memx_options_memo_sbe_v1_10.origclordid.dissect(buffer, index, packet, parent)

  -- Exec Id: 8 Byte Unsigned Fixed Width Integer
  index, exec_id = memx_options_memo_sbe_v1_10.exec_id.dissect(buffer, index, packet, parent)

  -- Ord Status: 1 Byte Ascii String Enum with 8 values
  index, ord_status = memx_options_memo_sbe_v1_10.ord_status.dissect(buffer, index, packet, parent)

  -- Security Id: 8 Byte Ascii String
  index, security_id = memx_options_memo_sbe_v1_10.security_id.dissect(buffer, index, packet, parent)

  -- Side: 1 Byte Ascii String Enum with 3 values
  index, side = memx_options_memo_sbe_v1_10.side.dissect(buffer, index, packet, parent)

  -- Order Qty: 4 Byte Unsigned Fixed Width Integer
  index, order_qty = memx_options_memo_sbe_v1_10.order_qty.dissect(buffer, index, packet, parent)

  -- Ord Type: 1 Byte Ascii String Enum with 2 values
  index, ord_type = memx_options_memo_sbe_v1_10.ord_type.dissect(buffer, index, packet, parent)

  -- Price Optional: 8 Byte Unsigned Fixed Width Integer Nullable
  index, price_optional = memx_options_memo_sbe_v1_10.price_optional.dissect(buffer, index, packet, parent)

  -- Leaves Qty: 4 Byte Unsigned Fixed Width Integer
  index, leaves_qty = memx_options_memo_sbe_v1_10.leaves_qty.dissect(buffer, index, packet, parent)

  -- Cum Qty: 4 Byte Unsigned Fixed Width Integer
  index, cum_qty = memx_options_memo_sbe_v1_10.cum_qty.dissect(buffer, index, packet, parent)

  -- Sending Time: 8 Byte Unsigned Fixed Width Integer
  index, sending_time = memx_options_memo_sbe_v1_10.sending_time.dissect(buffer, index, packet, parent)

  -- Transact Time: 8 Byte Unsigned Fixed Width Integer
  index, transact_time = memx_options_memo_sbe_v1_10.transact_time.dissect(buffer, index, packet, parent)

  -- Orig List Seq No: 1 Byte Unsigned Fixed Width Integer
  index, orig_list_seq_no = memx_options_memo_sbe_v1_10.orig_list_seq_no.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Execution Report Replaced Message
memx_options_memo_sbe_v1_10.execution_report_replaced_message.dissect = function(buffer, offset, packet, parent)
  if show.execution_report_replaced_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_memx_options_memo_sbe_v1_10.fields.execution_report_replaced_message, buffer(offset, 0))
    local index = memx_options_memo_sbe_v1_10.execution_report_replaced_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = memx_options_memo_sbe_v1_10.execution_report_replaced_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return memx_options_memo_sbe_v1_10.execution_report_replaced_message.fields(buffer, offset, packet, parent)
  end
end

-- Execution Report Pending Replace Message
memx_options_memo_sbe_v1_10.execution_report_pending_replace_message = {}

-- Size: Execution Report Pending Replace Message
memx_options_memo_sbe_v1_10.execution_report_pending_replace_message.size =
  memx_options_memo_sbe_v1_10.order_id.size + 
  memx_options_memo_sbe_v1_10.clordid.size + 
  memx_options_memo_sbe_v1_10.list_seq_no.size + 
  memx_options_memo_sbe_v1_10.origclordid.size + 
  memx_options_memo_sbe_v1_10.exec_id.size + 
  memx_options_memo_sbe_v1_10.ord_status.size + 
  memx_options_memo_sbe_v1_10.security_id.size + 
  memx_options_memo_sbe_v1_10.side.size + 
  memx_options_memo_sbe_v1_10.order_qty.size + 
  memx_options_memo_sbe_v1_10.ord_type.size + 
  memx_options_memo_sbe_v1_10.price_optional.size + 
  memx_options_memo_sbe_v1_10.leaves_qty.size + 
  memx_options_memo_sbe_v1_10.cum_qty.size + 
  memx_options_memo_sbe_v1_10.sending_time.size

-- Display: Execution Report Pending Replace Message
memx_options_memo_sbe_v1_10.execution_report_pending_replace_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Execution Report Pending Replace Message
memx_options_memo_sbe_v1_10.execution_report_pending_replace_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Order Id: 8 Byte Unsigned Fixed Width Integer
  index, order_id = memx_options_memo_sbe_v1_10.order_id.dissect(buffer, index, packet, parent)

  -- ClOrdId: 20 Byte Ascii String
  index, clordid = memx_options_memo_sbe_v1_10.clordid.dissect(buffer, index, packet, parent)

  -- List Seq No: 1 Byte Unsigned Fixed Width Integer
  index, list_seq_no = memx_options_memo_sbe_v1_10.list_seq_no.dissect(buffer, index, packet, parent)

  -- OrigClOrdId: 20 Byte Ascii String
  index, origclordid = memx_options_memo_sbe_v1_10.origclordid.dissect(buffer, index, packet, parent)

  -- Exec Id: 8 Byte Unsigned Fixed Width Integer
  index, exec_id = memx_options_memo_sbe_v1_10.exec_id.dissect(buffer, index, packet, parent)

  -- Ord Status: 1 Byte Ascii String Enum with 8 values
  index, ord_status = memx_options_memo_sbe_v1_10.ord_status.dissect(buffer, index, packet, parent)

  -- Security Id: 8 Byte Ascii String
  index, security_id = memx_options_memo_sbe_v1_10.security_id.dissect(buffer, index, packet, parent)

  -- Side: 1 Byte Ascii String Enum with 3 values
  index, side = memx_options_memo_sbe_v1_10.side.dissect(buffer, index, packet, parent)

  -- Order Qty: 4 Byte Unsigned Fixed Width Integer
  index, order_qty = memx_options_memo_sbe_v1_10.order_qty.dissect(buffer, index, packet, parent)

  -- Ord Type: 1 Byte Ascii String Enum with 2 values
  index, ord_type = memx_options_memo_sbe_v1_10.ord_type.dissect(buffer, index, packet, parent)

  -- Price Optional: 8 Byte Unsigned Fixed Width Integer Nullable
  index, price_optional = memx_options_memo_sbe_v1_10.price_optional.dissect(buffer, index, packet, parent)

  -- Leaves Qty: 4 Byte Unsigned Fixed Width Integer
  index, leaves_qty = memx_options_memo_sbe_v1_10.leaves_qty.dissect(buffer, index, packet, parent)

  -- Cum Qty: 4 Byte Unsigned Fixed Width Integer
  index, cum_qty = memx_options_memo_sbe_v1_10.cum_qty.dissect(buffer, index, packet, parent)

  -- Sending Time: 8 Byte Unsigned Fixed Width Integer
  index, sending_time = memx_options_memo_sbe_v1_10.sending_time.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Execution Report Pending Replace Message
memx_options_memo_sbe_v1_10.execution_report_pending_replace_message.dissect = function(buffer, offset, packet, parent)
  if show.execution_report_pending_replace_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_memx_options_memo_sbe_v1_10.fields.execution_report_pending_replace_message, buffer(offset, 0))
    local index = memx_options_memo_sbe_v1_10.execution_report_pending_replace_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = memx_options_memo_sbe_v1_10.execution_report_pending_replace_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return memx_options_memo_sbe_v1_10.execution_report_pending_replace_message.fields(buffer, offset, packet, parent)
  end
end

-- Cancel Reason
memx_options_memo_sbe_v1_10.cancel_reason = {}

-- Size: Cancel Reason
memx_options_memo_sbe_v1_10.cancel_reason.size = 1

-- Display: Cancel Reason
memx_options_memo_sbe_v1_10.cancel_reason.display = function(value)
  if value == 0 then
    return "Cancel Reason: Other (0)"
  end
  if value == 1 then
    return "Cancel Reason: User Requested Cancel (1)"
  end
  if value == 5 then
    return "Cancel Reason: Execution Price Collar (5)"
  end
  if value == 6 then
    return "Cancel Reason: Halted (6)"
  end
  if value == 7 then
    return "Cancel Reason: Exchange Supervisory (7)"
  end
  if value == 8 then
    return "Cancel Reason: Order Expired (8)"
  end
  if value == 10 then
    return "Cancel Reason: Match Trade Prevention (10)"
  end
  if value == 13 then
    return "Cancel Reason: Participant Disconnect (13)"
  end
  if value == 14 then
    return "Cancel Reason: Order Not Bookable (14)"
  end
  if value == 16 then
    return "Cancel Reason: Unable To Route (16)"
  end
  if value == 17 then
    return "Cancel Reason: Firm Disabled (17)"
  end
  if value == 18 then
    return "Cancel Reason: Efid Disabled (18)"
  end
  if value == 19 then
    return "Cancel Reason: Account Disabled (19)"
  end
  if value == 22 then
    return "Cancel Reason: Quote Update Rejected Orig Quote Canceled (22)"
  end
  if value == 23 then
    return "Cancel Reason: Active Risk Breach (23)"
  end
  if value == 24 then
    return "Cancel Reason: Manual Risk Breach (24)"
  end
  if value == 25 then
    return "Cancel Reason: Num Contracts Executed Exceeds Threshold (25)"
  end
  if value == 26 then
    return "Cancel Reason: Notional Value Of Executions Exceeds Threshold (26)"
  end
  if value == 27 then
    return "Cancel Reason: Count Of Executions Exceeds Threshold (27)"
  end
  if value == 28 then
    return "Cancel Reason: Outstanding Percentage Threshold Exceeded (28)"
  end
  if value == 29 then
    return "Cancel Reason: Trips Threshold Exceeded (29)"
  end
  if value == 30 then
    return "Cancel Reason: Gross Notional Value Exceeds Threshold (30)"
  end
  if value == 31 then
    return "Cancel Reason: Net Notional Value Exceeds Threshold (31)"
  end
  if value == 32 then
    return "Cancel Reason: Duplicate Order Threshold Exceeded (32)"
  end
  if value == 33 then
    return "Cancel Reason: Order Rate Threshold Exceeded (33)"
  end
  if value == 34 then
    return "Cancel Reason: Market Order Gross Notional Value Exceeds Threshold (34)"
  end
  if value == 35 then
    return "Cancel Reason: Market Order Net Notional Value Exceeds Threshold (35)"
  end
  if value == 36 then
    return "Cancel Reason: Market Order Nbbo Width Exceeded (36)"
  end
  if value == 37 then
    return "Cancel Reason: Market Order No National Best Bid (37)"
  end
  if value == 38 then
    return "Cancel Reason: Market Order No National Best Offer (38)"
  end
  if value == 39 then
    return "Cancel Reason: Drill Through Price Exceeded (39)"
  end
  if value == 40 then
    return "Cancel Reason: Order Would Lock Or Cross (40)"
  end
  if value == 41 then
    return "Cancel Reason: Mass Cancel Request (41)"
  end
  if value == 42 then
    return "Cancel Reason: Locked Or Crossed Market (42)"
  end
  if value == 255 then
    return "Cancel Reason: Null Value (255)"
  end

  return "Cancel Reason: Unknown("..value..")"
end

-- Dissect: Cancel Reason
memx_options_memo_sbe_v1_10.cancel_reason.dissect = function(buffer, offset, packet, parent)
  local length = memx_options_memo_sbe_v1_10.cancel_reason.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = memx_options_memo_sbe_v1_10.cancel_reason.display(value, buffer, offset, packet, parent)

  parent:add(omi_memx_options_memo_sbe_v1_10.fields.cancel_reason, range, value, display)

  return offset + length, value
end

-- OrigClOrdId Optional
memx_options_memo_sbe_v1_10.origclordid_optional = {}

-- Size: OrigClOrdId Optional
memx_options_memo_sbe_v1_10.origclordid_optional.size = 20

-- Display: OrigClOrdId Optional
memx_options_memo_sbe_v1_10.origclordid_optional.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "OrigClOrdId Optional: No Value"
  end

  return "OrigClOrdId Optional: "..value
end

-- Dissect: OrigClOrdId Optional
memx_options_memo_sbe_v1_10.origclordid_optional.dissect = function(buffer, offset, packet, parent)
  local length = memx_options_memo_sbe_v1_10.origclordid_optional.size
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

  local display = memx_options_memo_sbe_v1_10.origclordid_optional.display(value, buffer, offset, packet, parent)

  parent:add(omi_memx_options_memo_sbe_v1_10.fields.origclordid_optional, range, value, display)

  return offset + length, value
end

-- Execution Report Canceled Message
memx_options_memo_sbe_v1_10.execution_report_canceled_message = {}

-- Size: Execution Report Canceled Message
memx_options_memo_sbe_v1_10.execution_report_canceled_message.size =
  memx_options_memo_sbe_v1_10.order_id.size + 
  memx_options_memo_sbe_v1_10.clordid.size + 
  memx_options_memo_sbe_v1_10.list_seq_no.size + 
  memx_options_memo_sbe_v1_10.origclordid_optional.size + 
  memx_options_memo_sbe_v1_10.exec_id.size + 
  memx_options_memo_sbe_v1_10.ord_status.size + 
  memx_options_memo_sbe_v1_10.cancel_reason.size + 
  memx_options_memo_sbe_v1_10.security_id.size + 
  memx_options_memo_sbe_v1_10.side_optional.size + 
  memx_options_memo_sbe_v1_10.leaves_qty.size + 
  memx_options_memo_sbe_v1_10.cum_qty.size + 
  memx_options_memo_sbe_v1_10.sending_time.size + 
  memx_options_memo_sbe_v1_10.transact_time.size + 
  memx_options_memo_sbe_v1_10.orig_list_seq_no.size

-- Display: Execution Report Canceled Message
memx_options_memo_sbe_v1_10.execution_report_canceled_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Execution Report Canceled Message
memx_options_memo_sbe_v1_10.execution_report_canceled_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Order Id: 8 Byte Unsigned Fixed Width Integer
  index, order_id = memx_options_memo_sbe_v1_10.order_id.dissect(buffer, index, packet, parent)

  -- ClOrdId: 20 Byte Ascii String
  index, clordid = memx_options_memo_sbe_v1_10.clordid.dissect(buffer, index, packet, parent)

  -- List Seq No: 1 Byte Unsigned Fixed Width Integer
  index, list_seq_no = memx_options_memo_sbe_v1_10.list_seq_no.dissect(buffer, index, packet, parent)

  -- OrigClOrdId Optional: 20 Byte Ascii String Nullable
  index, origclordid_optional = memx_options_memo_sbe_v1_10.origclordid_optional.dissect(buffer, index, packet, parent)

  -- Exec Id: 8 Byte Unsigned Fixed Width Integer
  index, exec_id = memx_options_memo_sbe_v1_10.exec_id.dissect(buffer, index, packet, parent)

  -- Ord Status: 1 Byte Ascii String Enum with 8 values
  index, ord_status = memx_options_memo_sbe_v1_10.ord_status.dissect(buffer, index, packet, parent)

  -- Cancel Reason: 1 Byte Unsigned Fixed Width Integer Enum with 35 values
  index, cancel_reason = memx_options_memo_sbe_v1_10.cancel_reason.dissect(buffer, index, packet, parent)

  -- Security Id: 8 Byte Ascii String
  index, security_id = memx_options_memo_sbe_v1_10.security_id.dissect(buffer, index, packet, parent)

  -- Side Optional: 1 Byte Ascii String Enum with 4 values
  index, side_optional = memx_options_memo_sbe_v1_10.side_optional.dissect(buffer, index, packet, parent)

  -- Leaves Qty: 4 Byte Unsigned Fixed Width Integer
  index, leaves_qty = memx_options_memo_sbe_v1_10.leaves_qty.dissect(buffer, index, packet, parent)

  -- Cum Qty: 4 Byte Unsigned Fixed Width Integer
  index, cum_qty = memx_options_memo_sbe_v1_10.cum_qty.dissect(buffer, index, packet, parent)

  -- Sending Time: 8 Byte Unsigned Fixed Width Integer
  index, sending_time = memx_options_memo_sbe_v1_10.sending_time.dissect(buffer, index, packet, parent)

  -- Transact Time: 8 Byte Unsigned Fixed Width Integer
  index, transact_time = memx_options_memo_sbe_v1_10.transact_time.dissect(buffer, index, packet, parent)

  -- Orig List Seq No: 1 Byte Unsigned Fixed Width Integer
  index, orig_list_seq_no = memx_options_memo_sbe_v1_10.orig_list_seq_no.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Execution Report Canceled Message
memx_options_memo_sbe_v1_10.execution_report_canceled_message.dissect = function(buffer, offset, packet, parent)
  if show.execution_report_canceled_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_memx_options_memo_sbe_v1_10.fields.execution_report_canceled_message, buffer(offset, 0))
    local index = memx_options_memo_sbe_v1_10.execution_report_canceled_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = memx_options_memo_sbe_v1_10.execution_report_canceled_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return memx_options_memo_sbe_v1_10.execution_report_canceled_message.fields(buffer, offset, packet, parent)
  end
end

-- Execution Report Pending Cancel Message
memx_options_memo_sbe_v1_10.execution_report_pending_cancel_message = {}

-- Size: Execution Report Pending Cancel Message
memx_options_memo_sbe_v1_10.execution_report_pending_cancel_message.size =
  memx_options_memo_sbe_v1_10.order_id.size + 
  memx_options_memo_sbe_v1_10.clordid.size + 
  memx_options_memo_sbe_v1_10.list_seq_no.size + 
  memx_options_memo_sbe_v1_10.origclordid.size + 
  memx_options_memo_sbe_v1_10.ord_status.size + 
  memx_options_memo_sbe_v1_10.security_id.size + 
  memx_options_memo_sbe_v1_10.side_optional.size + 
  memx_options_memo_sbe_v1_10.leaves_qty.size + 
  memx_options_memo_sbe_v1_10.cum_qty.size + 
  memx_options_memo_sbe_v1_10.sending_time.size

-- Display: Execution Report Pending Cancel Message
memx_options_memo_sbe_v1_10.execution_report_pending_cancel_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Execution Report Pending Cancel Message
memx_options_memo_sbe_v1_10.execution_report_pending_cancel_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Order Id: 8 Byte Unsigned Fixed Width Integer
  index, order_id = memx_options_memo_sbe_v1_10.order_id.dissect(buffer, index, packet, parent)

  -- ClOrdId: 20 Byte Ascii String
  index, clordid = memx_options_memo_sbe_v1_10.clordid.dissect(buffer, index, packet, parent)

  -- List Seq No: 1 Byte Unsigned Fixed Width Integer
  index, list_seq_no = memx_options_memo_sbe_v1_10.list_seq_no.dissect(buffer, index, packet, parent)

  -- OrigClOrdId: 20 Byte Ascii String
  index, origclordid = memx_options_memo_sbe_v1_10.origclordid.dissect(buffer, index, packet, parent)

  -- Ord Status: 1 Byte Ascii String Enum with 8 values
  index, ord_status = memx_options_memo_sbe_v1_10.ord_status.dissect(buffer, index, packet, parent)

  -- Security Id: 8 Byte Ascii String
  index, security_id = memx_options_memo_sbe_v1_10.security_id.dissect(buffer, index, packet, parent)

  -- Side Optional: 1 Byte Ascii String Enum with 4 values
  index, side_optional = memx_options_memo_sbe_v1_10.side_optional.dissect(buffer, index, packet, parent)

  -- Leaves Qty: 4 Byte Unsigned Fixed Width Integer
  index, leaves_qty = memx_options_memo_sbe_v1_10.leaves_qty.dissect(buffer, index, packet, parent)

  -- Cum Qty: 4 Byte Unsigned Fixed Width Integer
  index, cum_qty = memx_options_memo_sbe_v1_10.cum_qty.dissect(buffer, index, packet, parent)

  -- Sending Time: 8 Byte Unsigned Fixed Width Integer
  index, sending_time = memx_options_memo_sbe_v1_10.sending_time.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Execution Report Pending Cancel Message
memx_options_memo_sbe_v1_10.execution_report_pending_cancel_message.dissect = function(buffer, offset, packet, parent)
  if show.execution_report_pending_cancel_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_memx_options_memo_sbe_v1_10.fields.execution_report_pending_cancel_message, buffer(offset, 0))
    local index = memx_options_memo_sbe_v1_10.execution_report_pending_cancel_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = memx_options_memo_sbe_v1_10.execution_report_pending_cancel_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return memx_options_memo_sbe_v1_10.execution_report_pending_cancel_message.fields(buffer, offset, packet, parent)
  end
end

-- Party Role
memx_options_memo_sbe_v1_10.party_role = {}

-- Size: Party Role
memx_options_memo_sbe_v1_10.party_role.size = 1

-- Display: Party Role
memx_options_memo_sbe_v1_10.party_role.display = function(value)
  if value == 1 then
    return "Party Role: Executing Firm Id (1)"
  end
  if value == 3 then
    return "Party Role: Actionable Identifier (3)"
  end
  if value == 4 then
    return "Party Role: Clearing Firm (4)"
  end
  if value == 14 then
    return "Party Role: Give Up Clearing Firm (14)"
  end
  if value == 17 then
    return "Party Role: Contra Efid (17)"
  end
  if value == 18 then
    return "Party Role: Contra Clearing Firm (18)"
  end
  if value == 24 then
    return "Party Role: Optional Occ Data (24)"
  end
  if value == 37 then
    return "Party Role: Contra Mm Sub Account (37)"
  end
  if value == 40 then
    return "Party Role: Cmta (40)"
  end
  if value == 41 then
    return "Party Role: Contra Cmta (41)"
  end
  if value == 66 then
    return "Party Role: Market Maker Sub Account (66)"
  end

  return "Party Role: Unknown("..value..")"
end

-- Dissect: Party Role
memx_options_memo_sbe_v1_10.party_role.dissect = function(buffer, offset, packet, parent)
  local length = memx_options_memo_sbe_v1_10.party_role.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = memx_options_memo_sbe_v1_10.party_role.display(value, buffer, offset, packet, parent)

  parent:add(omi_memx_options_memo_sbe_v1_10.fields.party_role, range, value, display)

  return offset + length, value
end

-- Party Id Source
memx_options_memo_sbe_v1_10.party_id_source = {}

-- Size: Party Id Source
memx_options_memo_sbe_v1_10.party_id_source.size = 1

-- Display: Party Id Source
memx_options_memo_sbe_v1_10.party_id_source.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Party Id Source: No Value"
  end

  return "Party Id Source: "..value
end

-- Dissect: Party Id Source
memx_options_memo_sbe_v1_10.party_id_source.dissect = function(buffer, offset, packet, parent)
  local length = memx_options_memo_sbe_v1_10.party_id_source.size
  local range = buffer(offset, length)

  -- parse as byte
  local value = range:uint()

  -- check if value is non zero
  if value ~= 0 then
    value = range:string()
  end

  local display = memx_options_memo_sbe_v1_10.party_id_source.display(value, buffer, offset, packet, parent)

  parent:add(omi_memx_options_memo_sbe_v1_10.fields.party_id_source, range, value, display)

  return offset + length, value
end

-- Party Id
memx_options_memo_sbe_v1_10.party_id = {}

-- Size: Party Id
memx_options_memo_sbe_v1_10.party_id.size = 16

-- Display: Party Id
memx_options_memo_sbe_v1_10.party_id.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Party Id: No Value"
  end

  return "Party Id: "..value
end

-- Dissect: Party Id
memx_options_memo_sbe_v1_10.party_id.dissect = function(buffer, offset, packet, parent)
  local length = memx_options_memo_sbe_v1_10.party_id.size
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

  local display = memx_options_memo_sbe_v1_10.party_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_memx_options_memo_sbe_v1_10.fields.party_id, range, value, display)

  return offset + length, value
end

-- Parties Group
memx_options_memo_sbe_v1_10.parties_group = {}

-- Size: Parties Group
memx_options_memo_sbe_v1_10.parties_group.size =
  memx_options_memo_sbe_v1_10.party_id.size + 
  memx_options_memo_sbe_v1_10.party_id_source.size + 
  memx_options_memo_sbe_v1_10.party_role.size

-- Display: Parties Group
memx_options_memo_sbe_v1_10.parties_group.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Parties Group
memx_options_memo_sbe_v1_10.parties_group.fields = function(buffer, offset, packet, parent, parties_group_index)
  local index = offset

  -- Implicit Parties Group Index
  if parties_group_index ~= nil then
    local iteration = parent:add(omi_memx_options_memo_sbe_v1_10.fields.parties_group_index, parties_group_index)
    iteration:set_generated()
  end

  -- Party Id: 16 Byte Ascii String
  index, party_id = memx_options_memo_sbe_v1_10.party_id.dissect(buffer, index, packet, parent)

  -- Party Id Source: 1 Byte Ascii String
  index, party_id_source = memx_options_memo_sbe_v1_10.party_id_source.dissect(buffer, index, packet, parent)

  -- Party Role: 1 Byte Unsigned Fixed Width Integer Enum with 11 values
  index, party_role = memx_options_memo_sbe_v1_10.party_role.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Parties Group
memx_options_memo_sbe_v1_10.parties_group.dissect = function(buffer, offset, packet, parent, parties_group_index)
  if show.parties_group then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_memx_options_memo_sbe_v1_10.fields.parties_group, buffer(offset, 0))
    local index = memx_options_memo_sbe_v1_10.parties_group.fields(buffer, offset, packet, parent, parties_group_index)
    local length = index - offset
    parent:set_len(length)
    local display = memx_options_memo_sbe_v1_10.parties_group.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return memx_options_memo_sbe_v1_10.parties_group.fields(buffer, offset, packet, parent, parties_group_index)
  end
end

-- Parties Groups
memx_options_memo_sbe_v1_10.parties_groups = {}

-- Calculate size of: Parties Groups
memx_options_memo_sbe_v1_10.parties_groups.size = function(buffer, offset)
  local index = 0

  index = index + memx_options_memo_sbe_v1_10.repeating_group_dimensions.size

  -- Calculate field size from count
  local parties_group_count = buffer(offset + index - 1, 1):uint()
  index = index + parties_group_count * 18

  return index
end

-- Display: Parties Groups
memx_options_memo_sbe_v1_10.parties_groups.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Parties Groups
memx_options_memo_sbe_v1_10.parties_groups.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Repeating Group Dimensions: Struct of 2 fields
  index, repeating_group_dimensions = memx_options_memo_sbe_v1_10.repeating_group_dimensions.dissect(buffer, index, packet, parent)

  -- Dependency element: Num In Group
  local num_in_group = buffer(index - 1, 1):uint()

  -- Repeating: Parties Group
  for parties_group_index = 1, num_in_group do
    index, parties_group = memx_options_memo_sbe_v1_10.parties_group.dissect(buffer, index, packet, parent, parties_group_index)
  end

  return index
end

-- Dissect: Parties Groups
memx_options_memo_sbe_v1_10.parties_groups.dissect = function(buffer, offset, packet, parent)
  -- Optionally add dynamic struct element to protocol tree
  if show.parties_groups then
    local length = memx_options_memo_sbe_v1_10.parties_groups.size(buffer, offset)
    local range = buffer(offset, length)
    local display = memx_options_memo_sbe_v1_10.parties_groups.display(buffer, packet, parent)
    parent = parent:add(omi_memx_options_memo_sbe_v1_10.fields.parties_groups, range, display)
  end

  return memx_options_memo_sbe_v1_10.parties_groups.fields(buffer, offset, packet, parent)
end

-- Contra Trading Capacity
memx_options_memo_sbe_v1_10.contra_trading_capacity = {}

-- Size: Contra Trading Capacity
memx_options_memo_sbe_v1_10.contra_trading_capacity.size = 1

-- Display: Contra Trading Capacity
memx_options_memo_sbe_v1_10.contra_trading_capacity.display = function(value)
  if value == 1 then
    return "Contra Trading Capacity: Customer (1)"
  end
  if value == 2 then
    return "Contra Trading Capacity: Professional Customer (2)"
  end
  if value == 3 then
    return "Contra Trading Capacity: Broker Dealer (3)"
  end
  if value == 4 then
    return "Contra Trading Capacity: Broker Dealer Customer (4)"
  end
  if value == 5 then
    return "Contra Trading Capacity: Firm (5)"
  end
  if value == 6 then
    return "Contra Trading Capacity: Market Maker (6)"
  end
  if value == 7 then
    return "Contra Trading Capacity: Away Market Maker (7)"
  end
  if value == 255 then
    return "Contra Trading Capacity: Null Value (255)"
  end
  if value == 255 then
    return "Contra Trading Capacity: No Value"
  end

  return "Contra Trading Capacity: Unknown("..value..")"
end

-- Dissect: Contra Trading Capacity
memx_options_memo_sbe_v1_10.contra_trading_capacity.dissect = function(buffer, offset, packet, parent)
  local length = memx_options_memo_sbe_v1_10.contra_trading_capacity.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = memx_options_memo_sbe_v1_10.contra_trading_capacity.display(value, buffer, offset, packet, parent)

  parent:add(omi_memx_options_memo_sbe_v1_10.fields.contra_trading_capacity, range, value, display)

  return offset + length, value
end

-- Trading Capacity
memx_options_memo_sbe_v1_10.trading_capacity = {}

-- Size: Trading Capacity
memx_options_memo_sbe_v1_10.trading_capacity.size = 1

-- Display: Trading Capacity
memx_options_memo_sbe_v1_10.trading_capacity.display = function(value)
  if value == 1 then
    return "Trading Capacity: Customer (1)"
  end
  if value == 2 then
    return "Trading Capacity: Professional Customer (2)"
  end
  if value == 3 then
    return "Trading Capacity: Broker Dealer (3)"
  end
  if value == 4 then
    return "Trading Capacity: Broker Dealer Customer (4)"
  end
  if value == 5 then
    return "Trading Capacity: Firm (5)"
  end
  if value == 6 then
    return "Trading Capacity: Market Maker (6)"
  end
  if value == 7 then
    return "Trading Capacity: Away Market Maker (7)"
  end
  if value == 255 then
    return "Trading Capacity: Null Value (255)"
  end

  return "Trading Capacity: Unknown("..value..")"
end

-- Dissect: Trading Capacity
memx_options_memo_sbe_v1_10.trading_capacity.dissect = function(buffer, offset, packet, parent)
  local length = memx_options_memo_sbe_v1_10.trading_capacity.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = memx_options_memo_sbe_v1_10.trading_capacity.display(value, buffer, offset, packet, parent)

  parent:add(omi_memx_options_memo_sbe_v1_10.fields.trading_capacity, range, value, display)

  return offset + length, value
end

-- Position Effect
memx_options_memo_sbe_v1_10.position_effect = {}

-- Size: Position Effect
memx_options_memo_sbe_v1_10.position_effect.size = 1

-- Display: Position Effect
memx_options_memo_sbe_v1_10.position_effect.display = function(value)
  -- Check if field has value
  if value == nil or value == 0 then
    return "Position Effect: No Value"
  end

  if value == "O" then
    return "Position Effect: Open (O)"
  end
  if value == "C" then
    return "Position Effect: Close (C)"
  end

  return "Position Effect: Unknown("..value..")"
end

-- Dissect: Position Effect
memx_options_memo_sbe_v1_10.position_effect.dissect = function(buffer, offset, packet, parent)
  local length = memx_options_memo_sbe_v1_10.position_effect.size
  local range = buffer(offset, length)

  -- parse as byte
  local value = range:uint()

  -- check if value is non zero
  if value ~= 0 then
    value = range:string()
  end

  local display = memx_options_memo_sbe_v1_10.position_effect.display(value, buffer, offset, packet, parent)

  parent:add(omi_memx_options_memo_sbe_v1_10.fields.position_effect, range, value, display)

  return offset + length, value
end

-- Last Mkt
memx_options_memo_sbe_v1_10.last_mkt = {}

-- Size: Last Mkt
memx_options_memo_sbe_v1_10.last_mkt.size = 4

-- Display: Last Mkt
memx_options_memo_sbe_v1_10.last_mkt.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Last Mkt: No Value"
  end

  return "Last Mkt: "..value
end

-- Dissect: Last Mkt
memx_options_memo_sbe_v1_10.last_mkt.dissect = function(buffer, offset, packet, parent)
  local length = memx_options_memo_sbe_v1_10.last_mkt.size
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

  local display = memx_options_memo_sbe_v1_10.last_mkt.display(value, buffer, offset, packet, parent)

  parent:add(omi_memx_options_memo_sbe_v1_10.fields.last_mkt, range, value, display)

  return offset + length, value
end

-- Last Liquidity Ind
memx_options_memo_sbe_v1_10.last_liquidity_ind = {}

-- Size: Last Liquidity Ind
memx_options_memo_sbe_v1_10.last_liquidity_ind.size = 1

-- Display: Last Liquidity Ind
memx_options_memo_sbe_v1_10.last_liquidity_ind.display = function(value)
  if value == 1 then
    return "Last Liquidity Ind: Added (1)"
  end
  if value == 2 then
    return "Last Liquidity Ind: Removed (2)"
  end
  if value == 3 then
    return "Last Liquidity Ind: Routed (3)"
  end
  if value == 255 then
    return "Last Liquidity Ind: Null Value (255)"
  end

  return "Last Liquidity Ind: Unknown("..value..")"
end

-- Dissect: Last Liquidity Ind
memx_options_memo_sbe_v1_10.last_liquidity_ind.dissect = function(buffer, offset, packet, parent)
  local length = memx_options_memo_sbe_v1_10.last_liquidity_ind.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = memx_options_memo_sbe_v1_10.last_liquidity_ind.display(value, buffer, offset, packet, parent)

  parent:add(omi_memx_options_memo_sbe_v1_10.fields.last_liquidity_ind, range, value, display)

  return offset + length, value
end

-- Execution Report Trade Message
memx_options_memo_sbe_v1_10.execution_report_trade_message = {}

-- Calculate size of: Execution Report Trade Message
memx_options_memo_sbe_v1_10.execution_report_trade_message.size = function(buffer, offset)
  local index = 0

  index = index + memx_options_memo_sbe_v1_10.order_id.size

  index = index + memx_options_memo_sbe_v1_10.clordid.size

  index = index + memx_options_memo_sbe_v1_10.list_seq_no.size

  index = index + memx_options_memo_sbe_v1_10.trd_match_id.size

  index = index + memx_options_memo_sbe_v1_10.exec_id.size

  index = index + memx_options_memo_sbe_v1_10.ord_status.size

  index = index + memx_options_memo_sbe_v1_10.security_id.size

  index = index + memx_options_memo_sbe_v1_10.side.size

  index = index + memx_options_memo_sbe_v1_10.last_qty.size

  index = index + memx_options_memo_sbe_v1_10.last_px.size

  index = index + memx_options_memo_sbe_v1_10.leaves_qty.size

  index = index + memx_options_memo_sbe_v1_10.cum_qty.size

  index = index + memx_options_memo_sbe_v1_10.sending_time.size

  index = index + memx_options_memo_sbe_v1_10.transact_time.size

  index = index + memx_options_memo_sbe_v1_10.last_liquidity_ind.size

  index = index + memx_options_memo_sbe_v1_10.last_mkt.size

  index = index + memx_options_memo_sbe_v1_10.position_effect.size

  index = index + memx_options_memo_sbe_v1_10.trading_capacity.size

  index = index + memx_options_memo_sbe_v1_10.contra_trading_capacity.size

  index = index + memx_options_memo_sbe_v1_10.parties_groups.size(buffer, offset + index)

  return index
end

-- Display: Execution Report Trade Message
memx_options_memo_sbe_v1_10.execution_report_trade_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Execution Report Trade Message
memx_options_memo_sbe_v1_10.execution_report_trade_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Order Id: 8 Byte Unsigned Fixed Width Integer
  index, order_id = memx_options_memo_sbe_v1_10.order_id.dissect(buffer, index, packet, parent)

  -- ClOrdId: 20 Byte Ascii String
  index, clordid = memx_options_memo_sbe_v1_10.clordid.dissect(buffer, index, packet, parent)

  -- List Seq No: 1 Byte Unsigned Fixed Width Integer
  index, list_seq_no = memx_options_memo_sbe_v1_10.list_seq_no.dissect(buffer, index, packet, parent)

  -- Trd Match Id: 8 Byte Unsigned Fixed Width Integer
  index, trd_match_id = memx_options_memo_sbe_v1_10.trd_match_id.dissect(buffer, index, packet, parent)

  -- Exec Id: 8 Byte Unsigned Fixed Width Integer
  index, exec_id = memx_options_memo_sbe_v1_10.exec_id.dissect(buffer, index, packet, parent)

  -- Ord Status: 1 Byte Ascii String Enum with 8 values
  index, ord_status = memx_options_memo_sbe_v1_10.ord_status.dissect(buffer, index, packet, parent)

  -- Security Id: 8 Byte Ascii String
  index, security_id = memx_options_memo_sbe_v1_10.security_id.dissect(buffer, index, packet, parent)

  -- Side: 1 Byte Ascii String Enum with 3 values
  index, side = memx_options_memo_sbe_v1_10.side.dissect(buffer, index, packet, parent)

  -- Last Qty: 4 Byte Unsigned Fixed Width Integer
  index, last_qty = memx_options_memo_sbe_v1_10.last_qty.dissect(buffer, index, packet, parent)

  -- Last Px: 8 Byte Unsigned Fixed Width Integer
  index, last_px = memx_options_memo_sbe_v1_10.last_px.dissect(buffer, index, packet, parent)

  -- Leaves Qty: 4 Byte Unsigned Fixed Width Integer
  index, leaves_qty = memx_options_memo_sbe_v1_10.leaves_qty.dissect(buffer, index, packet, parent)

  -- Cum Qty: 4 Byte Unsigned Fixed Width Integer
  index, cum_qty = memx_options_memo_sbe_v1_10.cum_qty.dissect(buffer, index, packet, parent)

  -- Sending Time: 8 Byte Unsigned Fixed Width Integer
  index, sending_time = memx_options_memo_sbe_v1_10.sending_time.dissect(buffer, index, packet, parent)

  -- Transact Time: 8 Byte Unsigned Fixed Width Integer
  index, transact_time = memx_options_memo_sbe_v1_10.transact_time.dissect(buffer, index, packet, parent)

  -- Last Liquidity Ind: 1 Byte Unsigned Fixed Width Integer Enum with 4 values
  index, last_liquidity_ind = memx_options_memo_sbe_v1_10.last_liquidity_ind.dissect(buffer, index, packet, parent)

  -- Last Mkt: 4 Byte Ascii String
  index, last_mkt = memx_options_memo_sbe_v1_10.last_mkt.dissect(buffer, index, packet, parent)

  -- Position Effect: 1 Byte Ascii String Enum with 2 values
  index, position_effect = memx_options_memo_sbe_v1_10.position_effect.dissect(buffer, index, packet, parent)

  -- Trading Capacity: 1 Byte Unsigned Fixed Width Integer Enum with 8 values
  index, trading_capacity = memx_options_memo_sbe_v1_10.trading_capacity.dissect(buffer, index, packet, parent)

  -- Contra Trading Capacity: 1 Byte Unsigned Fixed Width Integer Enum with 9 values
  index, contra_trading_capacity = memx_options_memo_sbe_v1_10.contra_trading_capacity.dissect(buffer, index, packet, parent)

  -- Parties Groups: Struct of 2 fields
  index, parties_groups = memx_options_memo_sbe_v1_10.parties_groups.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Execution Report Trade Message
memx_options_memo_sbe_v1_10.execution_report_trade_message.dissect = function(buffer, offset, packet, parent)
  -- Optionally add dynamic struct element to protocol tree
  if show.execution_report_trade_message then
    local length = memx_options_memo_sbe_v1_10.execution_report_trade_message.size(buffer, offset)
    local range = buffer(offset, length)
    local display = memx_options_memo_sbe_v1_10.execution_report_trade_message.display(buffer, packet, parent)
    parent = parent:add(omi_memx_options_memo_sbe_v1_10.fields.execution_report_trade_message, range, display)
  end

  return memx_options_memo_sbe_v1_10.execution_report_trade_message.fields(buffer, offset, packet, parent)
end

-- Order Reject Reason
memx_options_memo_sbe_v1_10.order_reject_reason = {}

-- Size: Order Reject Reason
memx_options_memo_sbe_v1_10.order_reject_reason.size = 2

-- Display: Order Reject Reason
memx_options_memo_sbe_v1_10.order_reject_reason.display = function(value)
  if value == 1 then
    return "Order Reject Reason: Unknown Symbol (1)"
  end
  if value == 2 then
    return "Order Reject Reason: Exchange Closed (2)"
  end
  if value == 6 then
    return "Order Reject Reason: Duplicate Order (6)"
  end
  if value == 16 then
    return "Order Reject Reason: Price Exceeds Current Price Band (16)"
  end
  if value == 18 then
    return "Order Reject Reason: Invalid Price Increment (18)"
  end
  if value == 27 then
    return "Order Reject Reason: Max Notional Value Per Order Risk Rule Breach (27)"
  end
  if value == 99 then
    return "Order Reject Reason: Other (99)"
  end
  if value == 100 then
    return "Order Reject Reason: Missing Symbol (100)"
  end
  if value == 101 then
    return "Order Reject Reason: Invalid Symbol (101)"
  end
  if value == 102 then
    return "Order Reject Reason: Missing Cl Ord Id (102)"
  end
  if value == 103 then
    return "Order Reject Reason: Invalid Cl Ord Id (103)"
  end
  if value == 104 then
    return "Order Reject Reason: Missing Side (104)"
  end
  if value == 105 then
    return "Order Reject Reason: Invalid Side (105)"
  end
  if value == 106 then
    return "Order Reject Reason: Missing Order Qty (106)"
  end
  if value == 107 then
    return "Order Reject Reason: Invalid Order Qty (107)"
  end
  if value == 108 then
    return "Order Reject Reason: Missing Order Type (108)"
  end
  if value == 109 then
    return "Order Reject Reason: Invalid Order Type (109)"
  end
  if value == 110 then
    return "Order Reject Reason: Missing Time In Force (110)"
  end
  if value == 111 then
    return "Order Reject Reason: Invalid Time In Force (111)"
  end
  if value == 112 then
    return "Order Reject Reason: Missing Trading Capacity (112)"
  end
  if value == 113 then
    return "Order Reject Reason: Invalid Trading Capacity (113)"
  end
  if value == 114 then
    return "Order Reject Reason: Missing Exec Inst (114)"
  end
  if value == 115 then
    return "Order Reject Reason: Invalid Exec Inst (115)"
  end
  if value == 118 then
    return "Order Reject Reason: Missing Limit Price (118)"
  end
  if value == 119 then
    return "Order Reject Reason: Invalid Limit Price (119)"
  end
  if value == 124 then
    return "Order Reject Reason: Missing Match Trade Prevention Type (124)"
  end
  if value == 125 then
    return "Order Reject Reason: Invalid Match Trade Prevention Type (125)"
  end
  if value == 126 then
    return "Order Reject Reason: Missing Cancel Group Id (126)"
  end
  if value == 127 then
    return "Order Reject Reason: Invalid Cancel Group Id (127)"
  end
  if value == 128 then
    return "Order Reject Reason: Missing Mtp Group Id (128)"
  end
  if value == 129 then
    return "Order Reject Reason: Invalid Mtp Group Id (129)"
  end
  if value == 134 then
    return "Order Reject Reason: Missing Risk Group Id (134)"
  end
  if value == 135 then
    return "Order Reject Reason: Invalid Risk Group Id (135)"
  end
  if value == 136 then
    return "Order Reject Reason: Missing Efid (136)"
  end
  if value == 137 then
    return "Order Reject Reason: Invalid Efid (137)"
  end
  if value == 138 then
    return "Order Reject Reason: Missing List Seq No (138)"
  end
  if value == 139 then
    return "Order Reject Reason: Invalid List Seq No (139)"
  end
  if value == 140 then
    return "Order Reject Reason: Quotes Have Different Underliers (140)"
  end
  if value == 141 then
    return "Order Reject Reason: Two Sided Quotes Cross (141)"
  end
  if value == 142 then
    return "Order Reject Reason: Missing Position Effect (142)"
  end
  if value == 143 then
    return "Order Reject Reason: Invalid Position Effect (143)"
  end
  if value == 144 then
    return "Order Reject Reason: Missing Reprice Behavior Type (144)"
  end
  if value == 145 then
    return "Order Reject Reason: Invalid Reprice Behavior Type (145)"
  end
  if value == 146 then
    return "Order Reject Reason: Missing Reprice Frequency Type (146)"
  end
  if value == 147 then
    return "Order Reject Reason: Invalid Reprice Frequency Type (147)"
  end
  if value == 148 then
    return "Order Reject Reason: Missing Party Role Type (148)"
  end
  if value == 149 then
    return "Order Reject Reason: Invalid Party Role Type (149)"
  end
  if value == 150 then
    return "Order Reject Reason: Missing Party Id (150)"
  end
  if value == 151 then
    return "Order Reject Reason: Invalid Party Id (151)"
  end
  if value == 152 then
    return "Order Reject Reason: Missing Party Id Source (152)"
  end
  if value == 153 then
    return "Order Reject Reason: Invalid Party Id Source (153)"
  end
  if value == 154 then
    return "Order Reject Reason: Underlying Symbol Not Open (154)"
  end
  if value == 155 then
    return "Order Reject Reason: Missing Sending Time (155)"
  end
  if value == 156 then
    return "Order Reject Reason: Invalid Sending Time (156)"
  end
  if value == 157 then
    return "Order Reject Reason: Missing Sub Account (157)"
  end
  if value == 158 then
    return "Order Reject Reason: Invalid Sub Account (158)"
  end
  if value == 159 then
    return "Order Reject Reason: Missing Give Up (159)"
  end
  if value == 160 then
    return "Order Reject Reason: Invalid Give Up (160)"
  end
  if value == 161 then
    return "Order Reject Reason: Missing Cmta (161)"
  end
  if value == 162 then
    return "Order Reject Reason: Invalid Cmta (162)"
  end
  if value == 163 then
    return "Order Reject Reason: Missing Actionable Id (163)"
  end
  if value == 164 then
    return "Order Reject Reason: Invalid Actionable Id (164)"
  end
  if value == 165 then
    return "Order Reject Reason: Missing Optional Occ Data (165)"
  end
  if value == 166 then
    return "Order Reject Reason: Invalid Optional Occ Data (166)"
  end
  if value == 200 then
    return "Order Reject Reason: Halted (200)"
  end
  if value == 201 then
    return "Order Reject Reason: Firm Disabled (201)"
  end
  if value == 202 then
    return "Order Reject Reason: Efid Disabled (202)"
  end
  if value == 203 then
    return "Order Reject Reason: Account Disabled (203)"
  end
  if value == 204 then
    return "Order Reject Reason: Invalid Modifier For Order Type (204)"
  end
  if value == 205 then
    return "Order Reject Reason: Invalid Time In Force For Order Type (205)"
  end
  if value == 206 then
    return "Order Reject Reason: Invalid Modifiers Combination (206)"
  end
  if value == 207 then
    return "Order Reject Reason: Post Only Not Allowed (207)"
  end
  if value == 208 then
    return "Order Reject Reason: Quote Modify Rejected (208)"
  end
  if value == 209 then
    return "Order Reject Reason: Quoting Disabled (209)"
  end
  if value == 210 then
    return "Order Reject Reason: Invalid Quote Component Count (210)"
  end
  if value == 300 then
    return "Order Reject Reason: Non Test Symbols Blocked (300)"
  end
  if value == 301 then
    return "Order Reject Reason: Notional Value Exceeds Threshold (301)"
  end
  if value == 302 then
    return "Order Reject Reason: Max Notional Value Per Order Risk Rule Violated (302)"
  end
  if value == 303 then
    return "Order Reject Reason: Block Non Test Symbol Risk Rule Violated (303)"
  end
  if value == 304 then
    return "Order Reject Reason: Max Contracts Per Order Risk Rule Violated (304)"
  end
  if value == 305 then
    return "Order Reject Reason: Nbbo Width Exceeds Threshold (305)"
  end
  if value == 306 then
    return "Order Reject Reason: Exchange Price Value Collar Risk Rule Violated (306)"
  end
  if value == 307 then
    return "Order Reject Reason: Execution Price Higher Than Strike Price (307)"
  end
  if value == 308 then
    return "Order Reject Reason: Market Buy When Nbo Is Zero (308)"
  end
  if value == 309 then
    return "Order Reject Reason: Market Sell When Nbb Greater Than Threshold (309)"
  end
  if value == 310 then
    return "Order Reject Reason: Quote Price Outside Exchange Threshold (310)"
  end
  if value == 312 then
    return "Order Reject Reason: Num Contracts Executed Exceeds Threshold (312)"
  end
  if value == 313 then
    return "Order Reject Reason: Notional Value Of Executions Exceeds Threshold (313)"
  end
  if value == 314 then
    return "Order Reject Reason: Count Of Executions Exceeds Threshold (314)"
  end
  if value == 315 then
    return "Order Reject Reason: Outstanding Percentage Threshold Exceeded (315)"
  end
  if value == 316 then
    return "Order Reject Reason: Trips Threshold Exceeded (316)"
  end
  if value == 317 then
    return "Order Reject Reason: Iso Orders Not Allowed (317)"
  end
  if value == 318 then
    return "Order Reject Reason: Market Is Crossed (318)"
  end
  if value == 319 then
    return "Order Reject Reason: Active Risk Breach (319)"
  end
  if value == 320 then
    return "Order Reject Reason: Manual Risk Breach (320)"
  end
  if value == 321 then
    return "Order Reject Reason: Gross Notional Value Exceeds Threshold (321)"
  end
  if value == 322 then
    return "Order Reject Reason: Net Notional Value Exceeds Threshold (322)"
  end
  if value == 323 then
    return "Order Reject Reason: Duplicate Order Threshold Exceeded (323)"
  end
  if value == 324 then
    return "Order Reject Reason: Order Rate Threshold Exceeded (324)"
  end
  if value == 325 then
    return "Order Reject Reason: Mass Cancel Lockout In Effect (325)"
  end
  if value == 326 then
    return "Order Reject Reason: Market Order Gross Notional Value Exceeds Threshold (326)"
  end
  if value == 327 then
    return "Order Reject Reason: Market Order Net Notional Value Exceeds Threshold (327)"
  end
  if value == 328 then
    return "Order Reject Reason: Limit Order Fat Finger Check (328)"
  end
  if value == 329 then
    return "Order Reject Reason: Bulk Quote Fat Finger Check (329)"
  end
  if value == 330 then
    return "Order Reject Reason: Market Orders Not Allowed (330)"
  end
  if value == 331 then
    return "Order Reject Reason: Underlier On Restricted List (331)"
  end
  if value == 65535 then
    return "Order Reject Reason: Null Value (65535)"
  end

  return "Order Reject Reason: Unknown("..value..")"
end

-- Dissect: Order Reject Reason
memx_options_memo_sbe_v1_10.order_reject_reason.dissect = function(buffer, offset, packet, parent)
  local length = memx_options_memo_sbe_v1_10.order_reject_reason.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = memx_options_memo_sbe_v1_10.order_reject_reason.display(value, buffer, offset, packet, parent)

  parent:add(omi_memx_options_memo_sbe_v1_10.fields.order_reject_reason, range, value, display)

  return offset + length, value
end

-- Execution Report Rejected Message
memx_options_memo_sbe_v1_10.execution_report_rejected_message = {}

-- Size: Execution Report Rejected Message
memx_options_memo_sbe_v1_10.execution_report_rejected_message.size =
  memx_options_memo_sbe_v1_10.clordid.size + 
  memx_options_memo_sbe_v1_10.list_seq_no.size + 
  memx_options_memo_sbe_v1_10.exec_id.size + 
  memx_options_memo_sbe_v1_10.ord_status.size + 
  memx_options_memo_sbe_v1_10.order_reject_reason.size + 
  memx_options_memo_sbe_v1_10.security_id.size + 
  memx_options_memo_sbe_v1_10.side.size + 
  memx_options_memo_sbe_v1_10.leaves_qty.size + 
  memx_options_memo_sbe_v1_10.cum_qty.size + 
  memx_options_memo_sbe_v1_10.sending_time.size

-- Display: Execution Report Rejected Message
memx_options_memo_sbe_v1_10.execution_report_rejected_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Execution Report Rejected Message
memx_options_memo_sbe_v1_10.execution_report_rejected_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- ClOrdId: 20 Byte Ascii String
  index, clordid = memx_options_memo_sbe_v1_10.clordid.dissect(buffer, index, packet, parent)

  -- List Seq No: 1 Byte Unsigned Fixed Width Integer
  index, list_seq_no = memx_options_memo_sbe_v1_10.list_seq_no.dissect(buffer, index, packet, parent)

  -- Exec Id: 8 Byte Unsigned Fixed Width Integer
  index, exec_id = memx_options_memo_sbe_v1_10.exec_id.dissect(buffer, index, packet, parent)

  -- Ord Status: 1 Byte Ascii String Enum with 8 values
  index, ord_status = memx_options_memo_sbe_v1_10.ord_status.dissect(buffer, index, packet, parent)

  -- Order Reject Reason: 2 Byte Unsigned Fixed Width Integer Enum with 107 values
  index, order_reject_reason = memx_options_memo_sbe_v1_10.order_reject_reason.dissect(buffer, index, packet, parent)

  -- Security Id: 8 Byte Ascii String
  index, security_id = memx_options_memo_sbe_v1_10.security_id.dissect(buffer, index, packet, parent)

  -- Side: 1 Byte Ascii String Enum with 3 values
  index, side = memx_options_memo_sbe_v1_10.side.dissect(buffer, index, packet, parent)

  -- Leaves Qty: 4 Byte Unsigned Fixed Width Integer
  index, leaves_qty = memx_options_memo_sbe_v1_10.leaves_qty.dissect(buffer, index, packet, parent)

  -- Cum Qty: 4 Byte Unsigned Fixed Width Integer
  index, cum_qty = memx_options_memo_sbe_v1_10.cum_qty.dissect(buffer, index, packet, parent)

  -- Sending Time: 8 Byte Unsigned Fixed Width Integer
  index, sending_time = memx_options_memo_sbe_v1_10.sending_time.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Execution Report Rejected Message
memx_options_memo_sbe_v1_10.execution_report_rejected_message.dissect = function(buffer, offset, packet, parent)
  if show.execution_report_rejected_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_memx_options_memo_sbe_v1_10.fields.execution_report_rejected_message, buffer(offset, 0))
    local index = memx_options_memo_sbe_v1_10.execution_report_rejected_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = memx_options_memo_sbe_v1_10.execution_report_rejected_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return memx_options_memo_sbe_v1_10.execution_report_rejected_message.fields(buffer, offset, packet, parent)
  end
end

-- Execution Report Bulk Quote Component New Message
memx_options_memo_sbe_v1_10.execution_report_bulk_quote_component_new_message = {}

-- Size: Execution Report Bulk Quote Component New Message
memx_options_memo_sbe_v1_10.execution_report_bulk_quote_component_new_message.size =
  memx_options_memo_sbe_v1_10.order_id.size + 
  memx_options_memo_sbe_v1_10.clordid.size + 
  memx_options_memo_sbe_v1_10.list_seq_no.size + 
  memx_options_memo_sbe_v1_10.exec_id.size + 
  memx_options_memo_sbe_v1_10.ord_status.size + 
  memx_options_memo_sbe_v1_10.security_id.size + 
  memx_options_memo_sbe_v1_10.side.size + 
  memx_options_memo_sbe_v1_10.order_qty.size + 
  memx_options_memo_sbe_v1_10.price_optional.size + 
  memx_options_memo_sbe_v1_10.leaves_qty.size + 
  memx_options_memo_sbe_v1_10.cum_qty.size + 
  memx_options_memo_sbe_v1_10.sending_time.size + 
  memx_options_memo_sbe_v1_10.transact_time.size

-- Display: Execution Report Bulk Quote Component New Message
memx_options_memo_sbe_v1_10.execution_report_bulk_quote_component_new_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Execution Report Bulk Quote Component New Message
memx_options_memo_sbe_v1_10.execution_report_bulk_quote_component_new_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Order Id: 8 Byte Unsigned Fixed Width Integer
  index, order_id = memx_options_memo_sbe_v1_10.order_id.dissect(buffer, index, packet, parent)

  -- ClOrdId: 20 Byte Ascii String
  index, clordid = memx_options_memo_sbe_v1_10.clordid.dissect(buffer, index, packet, parent)

  -- List Seq No: 1 Byte Unsigned Fixed Width Integer
  index, list_seq_no = memx_options_memo_sbe_v1_10.list_seq_no.dissect(buffer, index, packet, parent)

  -- Exec Id: 8 Byte Unsigned Fixed Width Integer
  index, exec_id = memx_options_memo_sbe_v1_10.exec_id.dissect(buffer, index, packet, parent)

  -- Ord Status: 1 Byte Ascii String Enum with 8 values
  index, ord_status = memx_options_memo_sbe_v1_10.ord_status.dissect(buffer, index, packet, parent)

  -- Security Id: 8 Byte Ascii String
  index, security_id = memx_options_memo_sbe_v1_10.security_id.dissect(buffer, index, packet, parent)

  -- Side: 1 Byte Ascii String Enum with 3 values
  index, side = memx_options_memo_sbe_v1_10.side.dissect(buffer, index, packet, parent)

  -- Order Qty: 4 Byte Unsigned Fixed Width Integer
  index, order_qty = memx_options_memo_sbe_v1_10.order_qty.dissect(buffer, index, packet, parent)

  -- Price Optional: 8 Byte Unsigned Fixed Width Integer Nullable
  index, price_optional = memx_options_memo_sbe_v1_10.price_optional.dissect(buffer, index, packet, parent)

  -- Leaves Qty: 4 Byte Unsigned Fixed Width Integer
  index, leaves_qty = memx_options_memo_sbe_v1_10.leaves_qty.dissect(buffer, index, packet, parent)

  -- Cum Qty: 4 Byte Unsigned Fixed Width Integer
  index, cum_qty = memx_options_memo_sbe_v1_10.cum_qty.dissect(buffer, index, packet, parent)

  -- Sending Time: 8 Byte Unsigned Fixed Width Integer
  index, sending_time = memx_options_memo_sbe_v1_10.sending_time.dissect(buffer, index, packet, parent)

  -- Transact Time: 8 Byte Unsigned Fixed Width Integer
  index, transact_time = memx_options_memo_sbe_v1_10.transact_time.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Execution Report Bulk Quote Component New Message
memx_options_memo_sbe_v1_10.execution_report_bulk_quote_component_new_message.dissect = function(buffer, offset, packet, parent)
  if show.execution_report_bulk_quote_component_new_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_memx_options_memo_sbe_v1_10.fields.execution_report_bulk_quote_component_new_message, buffer(offset, 0))
    local index = memx_options_memo_sbe_v1_10.execution_report_bulk_quote_component_new_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = memx_options_memo_sbe_v1_10.execution_report_bulk_quote_component_new_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return memx_options_memo_sbe_v1_10.execution_report_bulk_quote_component_new_message.fields(buffer, offset, packet, parent)
  end
end

-- Number Of Orders
memx_options_memo_sbe_v1_10.number_of_orders = {}

-- Size: Number Of Orders
memx_options_memo_sbe_v1_10.number_of_orders.size = 1

-- Display: Number Of Orders
memx_options_memo_sbe_v1_10.number_of_orders.display = function(value)
  return "Number Of Orders: "..value
end

-- Dissect: Number Of Orders
memx_options_memo_sbe_v1_10.number_of_orders.dissect = function(buffer, offset, packet, parent)
  local length = memx_options_memo_sbe_v1_10.number_of_orders.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = memx_options_memo_sbe_v1_10.number_of_orders.display(value, buffer, offset, packet, parent)

  parent:add(omi_memx_options_memo_sbe_v1_10.fields.number_of_orders, range, value, display)

  return offset + length, value
end

-- Risk Group Id
memx_options_memo_sbe_v1_10.risk_group_id = {}

-- Size: Risk Group Id
memx_options_memo_sbe_v1_10.risk_group_id.size = 2

-- Display: Risk Group Id
memx_options_memo_sbe_v1_10.risk_group_id.display = function(value)
  -- Check if field has value
  if value == 65535 then
    return "Risk Group Id: No Value"
  end

  return "Risk Group Id: "..value
end

-- Dissect: Risk Group Id
memx_options_memo_sbe_v1_10.risk_group_id.dissect = function(buffer, offset, packet, parent)
  local length = memx_options_memo_sbe_v1_10.risk_group_id.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = memx_options_memo_sbe_v1_10.risk_group_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_memx_options_memo_sbe_v1_10.fields.risk_group_id, range, value, display)

  return offset + length, value
end

-- Match Trade Prevention
memx_options_memo_sbe_v1_10.match_trade_prevention = {}

-- Size: Match Trade Prevention
memx_options_memo_sbe_v1_10.match_trade_prevention.size = 1

-- Display: Match Trade Prevention
memx_options_memo_sbe_v1_10.match_trade_prevention.display = function(value)
  if value == 0 then
    return "Match Trade Prevention: Cancel Newest (0)"
  end
  if value == 1 then
    return "Match Trade Prevention: Cancel Oldest (1)"
  end
  if value == 3 then
    return "Match Trade Prevention: Cancel Both (3)"
  end
  if value == 255 then
    return "Match Trade Prevention: Null Value (255)"
  end
  if value == 255 then
    return "Match Trade Prevention: No Value"
  end

  return "Match Trade Prevention: Unknown("..value..")"
end

-- Dissect: Match Trade Prevention
memx_options_memo_sbe_v1_10.match_trade_prevention.dissect = function(buffer, offset, packet, parent)
  local length = memx_options_memo_sbe_v1_10.match_trade_prevention.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = memx_options_memo_sbe_v1_10.match_trade_prevention.display(value, buffer, offset, packet, parent)

  parent:add(omi_memx_options_memo_sbe_v1_10.fields.match_trade_prevention, range, value, display)

  return offset + length, value
end

-- Mtp Group Id
memx_options_memo_sbe_v1_10.mtp_group_id = {}

-- Size: Mtp Group Id
memx_options_memo_sbe_v1_10.mtp_group_id.size = 2

-- Display: Mtp Group Id
memx_options_memo_sbe_v1_10.mtp_group_id.display = function(value)
  -- Check if field has value
  if value == 65535 then
    return "Mtp Group Id: No Value"
  end

  return "Mtp Group Id: "..value
end

-- Dissect: Mtp Group Id
memx_options_memo_sbe_v1_10.mtp_group_id.dissect = function(buffer, offset, packet, parent)
  local length = memx_options_memo_sbe_v1_10.mtp_group_id.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = memx_options_memo_sbe_v1_10.mtp_group_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_memx_options_memo_sbe_v1_10.fields.mtp_group_id, range, value, display)

  return offset + length, value
end

-- Exec Inst
memx_options_memo_sbe_v1_10.exec_inst = {}

-- Size: Exec Inst
memx_options_memo_sbe_v1_10.exec_inst.size = 2

-- Display: Exec Inst
memx_options_memo_sbe_v1_10.exec_inst.display = function(range, value, packet, parent)
  local display = ""

  -- Is Participate Do Not Initiate flag set?
  if bit.band(value, 0x0001) ~= 0 then
    display = display.."Participate Do Not Initiate|"
  end
  -- Is Intermarket Sweep flag set?
  if bit.band(value, 0x0002) ~= 0 then
    display = display.."Intermarket Sweep|"
  end
  -- Is External Routing Not Allowed flag set?
  if bit.band(value, 0x0004) ~= 0 then
    display = display.."External Routing Not Allowed|"
  end

  if display:sub(-1) == "|" then
    display = display:sub(1, -2)
  end

  return display
end

-- Dissect Bit Fields: Exec Inst
memx_options_memo_sbe_v1_10.exec_inst.bits = function(range, value, packet, parent)

  -- Participate Do Not Initiate: 1 Bit
  parent:add(omi_memx_options_memo_sbe_v1_10.fields.participate_do_not_initiate, range, value)

  -- Intermarket Sweep: 1 Bit
  parent:add(omi_memx_options_memo_sbe_v1_10.fields.intermarket_sweep, range, value)

  -- External Routing Not Allowed: 1 Bit
  parent:add(omi_memx_options_memo_sbe_v1_10.fields.external_routing_not_allowed, range, value)

  -- Reserved 13: 13 Bit
  parent:add(omi_memx_options_memo_sbe_v1_10.fields.reserved_13, range, value)
end

-- Dissect: Exec Inst
memx_options_memo_sbe_v1_10.exec_inst.dissect = function(buffer, offset, packet, parent)
  local size = memx_options_memo_sbe_v1_10.exec_inst.size
  local range = buffer(offset, size)
  local value = range:le_uint()
  local display = memx_options_memo_sbe_v1_10.exec_inst.display(range, value, packet, parent)
  local element = parent:add(omi_memx_options_memo_sbe_v1_10.fields.exec_inst, range, display)

  if show.exec_inst then
    memx_options_memo_sbe_v1_10.exec_inst.bits(range, value, packet, element)
  end

  return offset + size, range
end

-- Time In Force
memx_options_memo_sbe_v1_10.time_in_force = {}

-- Size: Time In Force
memx_options_memo_sbe_v1_10.time_in_force.size = 1

-- Display: Time In Force
memx_options_memo_sbe_v1_10.time_in_force.display = function(value)
  -- Check if field has value
  if value == nil or value == 0 then
    return "Time In Force: No Value"
  end

  if value == "0" then
    return "Time In Force: Day (0)"
  end
  if value == "3" then
    return "Time In Force: Immediate Or Cancel (3)"
  end

  return "Time In Force: Unknown("..value..")"
end

-- Dissect: Time In Force
memx_options_memo_sbe_v1_10.time_in_force.dissect = function(buffer, offset, packet, parent)
  local length = memx_options_memo_sbe_v1_10.time_in_force.size
  local range = buffer(offset, length)

  -- parse as byte
  local value = range:uint()

  -- check if value is non zero
  if value ~= 0 then
    value = range:string()
  end

  local display = memx_options_memo_sbe_v1_10.time_in_force.display(value, buffer, offset, packet, parent)

  parent:add(omi_memx_options_memo_sbe_v1_10.fields.time_in_force, range, value, display)

  return offset + length, value
end

-- Symbol
memx_options_memo_sbe_v1_10.symbol = {}

-- Size: Symbol
memx_options_memo_sbe_v1_10.symbol.size = 6

-- Display: Symbol
memx_options_memo_sbe_v1_10.symbol.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Symbol: No Value"
  end

  return "Symbol: "..value
end

-- Dissect: Symbol
memx_options_memo_sbe_v1_10.symbol.dissect = function(buffer, offset, packet, parent)
  local length = memx_options_memo_sbe_v1_10.symbol.size
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

  local display = memx_options_memo_sbe_v1_10.symbol.display(value, buffer, offset, packet, parent)

  parent:add(omi_memx_options_memo_sbe_v1_10.fields.symbol, range, value, display)

  return offset + length, value
end

-- Execution Report Bulk Quote Pending New Message
memx_options_memo_sbe_v1_10.execution_report_bulk_quote_pending_new_message = {}

-- Calculate size of: Execution Report Bulk Quote Pending New Message
memx_options_memo_sbe_v1_10.execution_report_bulk_quote_pending_new_message.size = function(buffer, offset)
  local index = 0

  index = index + memx_options_memo_sbe_v1_10.clordid.size

  index = index + memx_options_memo_sbe_v1_10.symbol.size

  index = index + memx_options_memo_sbe_v1_10.time_in_force.size

  index = index + memx_options_memo_sbe_v1_10.exec_inst.size

  index = index + memx_options_memo_sbe_v1_10.trading_capacity.size

  index = index + memx_options_memo_sbe_v1_10.sending_time.size

  index = index + memx_options_memo_sbe_v1_10.transact_time.size

  index = index + memx_options_memo_sbe_v1_10.mtp_group_id.size

  index = index + memx_options_memo_sbe_v1_10.match_trade_prevention.size

  index = index + memx_options_memo_sbe_v1_10.cancel_group_id.size

  index = index + memx_options_memo_sbe_v1_10.risk_group_id.size

  index = index + memx_options_memo_sbe_v1_10.number_of_orders.size

  index = index + memx_options_memo_sbe_v1_10.parties_groups.size(buffer, offset + index)

  return index
end

-- Display: Execution Report Bulk Quote Pending New Message
memx_options_memo_sbe_v1_10.execution_report_bulk_quote_pending_new_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Execution Report Bulk Quote Pending New Message
memx_options_memo_sbe_v1_10.execution_report_bulk_quote_pending_new_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- ClOrdId: 20 Byte Ascii String
  index, clordid = memx_options_memo_sbe_v1_10.clordid.dissect(buffer, index, packet, parent)

  -- Symbol: 6 Byte Ascii String
  index, symbol = memx_options_memo_sbe_v1_10.symbol.dissect(buffer, index, packet, parent)

  -- Time In Force: 1 Byte Ascii String Enum with 2 values
  index, time_in_force = memx_options_memo_sbe_v1_10.time_in_force.dissect(buffer, index, packet, parent)

  -- Exec Inst: Struct of 4 fields
  index, exec_inst = memx_options_memo_sbe_v1_10.exec_inst.dissect(buffer, index, packet, parent)

  -- Trading Capacity: 1 Byte Unsigned Fixed Width Integer Enum with 8 values
  index, trading_capacity = memx_options_memo_sbe_v1_10.trading_capacity.dissect(buffer, index, packet, parent)

  -- Sending Time: 8 Byte Unsigned Fixed Width Integer
  index, sending_time = memx_options_memo_sbe_v1_10.sending_time.dissect(buffer, index, packet, parent)

  -- Transact Time: 8 Byte Unsigned Fixed Width Integer
  index, transact_time = memx_options_memo_sbe_v1_10.transact_time.dissect(buffer, index, packet, parent)

  -- Mtp Group Id: 2 Byte Unsigned Fixed Width Integer Nullable
  index, mtp_group_id = memx_options_memo_sbe_v1_10.mtp_group_id.dissect(buffer, index, packet, parent)

  -- Match Trade Prevention: 1 Byte Unsigned Fixed Width Integer Enum with 5 values
  index, match_trade_prevention = memx_options_memo_sbe_v1_10.match_trade_prevention.dissect(buffer, index, packet, parent)

  -- Cancel Group Id: 2 Byte Unsigned Fixed Width Integer Nullable
  index, cancel_group_id = memx_options_memo_sbe_v1_10.cancel_group_id.dissect(buffer, index, packet, parent)

  -- Risk Group Id: 2 Byte Unsigned Fixed Width Integer Nullable
  index, risk_group_id = memx_options_memo_sbe_v1_10.risk_group_id.dissect(buffer, index, packet, parent)

  -- Number Of Orders: 1 Byte Unsigned Fixed Width Integer
  index, number_of_orders = memx_options_memo_sbe_v1_10.number_of_orders.dissect(buffer, index, packet, parent)

  -- Parties Groups: Struct of 2 fields
  index, parties_groups = memx_options_memo_sbe_v1_10.parties_groups.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Execution Report Bulk Quote Pending New Message
memx_options_memo_sbe_v1_10.execution_report_bulk_quote_pending_new_message.dissect = function(buffer, offset, packet, parent)
  -- Optionally add dynamic struct element to protocol tree
  if show.execution_report_bulk_quote_pending_new_message then
    local length = memx_options_memo_sbe_v1_10.execution_report_bulk_quote_pending_new_message.size(buffer, offset)
    local range = buffer(offset, length)
    local display = memx_options_memo_sbe_v1_10.execution_report_bulk_quote_pending_new_message.display(buffer, packet, parent)
    parent = parent:add(omi_memx_options_memo_sbe_v1_10.fields.execution_report_bulk_quote_pending_new_message, range, display)
  end

  return memx_options_memo_sbe_v1_10.execution_report_bulk_quote_pending_new_message.fields(buffer, offset, packet, parent)
end

-- Reprice Behavior
memx_options_memo_sbe_v1_10.reprice_behavior = {}

-- Size: Reprice Behavior
memx_options_memo_sbe_v1_10.reprice_behavior.size = 1

-- Display: Reprice Behavior
memx_options_memo_sbe_v1_10.reprice_behavior.display = function(value)
  if value == 1 then
    return "Reprice Behavior: Reprice Lock Cancel Cross (1)"
  end
  if value == 2 then
    return "Reprice Behavior: Reprice Lock Reprice Cross (2)"
  end
  if value == 255 then
    return "Reprice Behavior: Null Value (255)"
  end
  if value == 255 then
    return "Reprice Behavior: No Value"
  end

  return "Reprice Behavior: Unknown("..value..")"
end

-- Dissect: Reprice Behavior
memx_options_memo_sbe_v1_10.reprice_behavior.dissect = function(buffer, offset, packet, parent)
  local length = memx_options_memo_sbe_v1_10.reprice_behavior.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = memx_options_memo_sbe_v1_10.reprice_behavior.display(value, buffer, offset, packet, parent)

  parent:add(omi_memx_options_memo_sbe_v1_10.fields.reprice_behavior, range, value, display)

  return offset + length, value
end

-- Reprice Frequency
memx_options_memo_sbe_v1_10.reprice_frequency = {}

-- Size: Reprice Frequency
memx_options_memo_sbe_v1_10.reprice_frequency.size = 1

-- Display: Reprice Frequency
memx_options_memo_sbe_v1_10.reprice_frequency.display = function(value)
  if value == 0 then
    return "Reprice Frequency: Single Reprice (0)"
  end
  if value == 1 then
    return "Reprice Frequency: Continuous Reprice (1)"
  end
  if value == 2 then
    return "Reprice Frequency: None (2)"
  end
  if value == 255 then
    return "Reprice Frequency: Null Value (255)"
  end
  if value == 255 then
    return "Reprice Frequency: No Value"
  end

  return "Reprice Frequency: Unknown("..value..")"
end

-- Dissect: Reprice Frequency
memx_options_memo_sbe_v1_10.reprice_frequency.dissect = function(buffer, offset, packet, parent)
  local length = memx_options_memo_sbe_v1_10.reprice_frequency.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = memx_options_memo_sbe_v1_10.reprice_frequency.display(value, buffer, offset, packet, parent)

  parent:add(omi_memx_options_memo_sbe_v1_10.fields.reprice_frequency, range, value, display)

  return offset + length, value
end

-- Position Effect Optional
memx_options_memo_sbe_v1_10.position_effect_optional = {}

-- Size: Position Effect Optional
memx_options_memo_sbe_v1_10.position_effect_optional.size = 1

-- Display: Position Effect Optional
memx_options_memo_sbe_v1_10.position_effect_optional.display = function(value)
  -- Check if field has value
  if value == nil or value == 0 then
    return "Position Effect Optional: No Value"
  end

  if value == "O" then
    return "Position Effect Optional: Open (O)"
  end
  if value == "C" then
    return "Position Effect Optional: Close (C)"
  end
  if value == 0 then
    return "Position Effect Optional: No Value"
  end

  return "Position Effect Optional: Unknown("..value..")"
end

-- Dissect: Position Effect Optional
memx_options_memo_sbe_v1_10.position_effect_optional.dissect = function(buffer, offset, packet, parent)
  local length = memx_options_memo_sbe_v1_10.position_effect_optional.size
  local range = buffer(offset, length)

  -- parse as byte
  local value = range:uint()

  -- check if value is non zero
  if value ~= 0 then
    value = range:string()
  end

  local display = memx_options_memo_sbe_v1_10.position_effect_optional.display(value, buffer, offset, packet, parent)

  parent:add(omi_memx_options_memo_sbe_v1_10.fields.position_effect_optional, range, value, display)

  return offset + length, value
end

-- Execution Report New Message
memx_options_memo_sbe_v1_10.execution_report_new_message = {}

-- Calculate size of: Execution Report New Message
memx_options_memo_sbe_v1_10.execution_report_new_message.size = function(buffer, offset)
  local index = 0

  index = index + memx_options_memo_sbe_v1_10.order_id.size

  index = index + memx_options_memo_sbe_v1_10.clordid.size

  index = index + memx_options_memo_sbe_v1_10.list_seq_no.size

  index = index + memx_options_memo_sbe_v1_10.exec_id.size

  index = index + memx_options_memo_sbe_v1_10.ord_status.size

  index = index + memx_options_memo_sbe_v1_10.security_id.size

  index = index + memx_options_memo_sbe_v1_10.side.size

  index = index + memx_options_memo_sbe_v1_10.order_qty.size

  index = index + memx_options_memo_sbe_v1_10.ord_type.size

  index = index + memx_options_memo_sbe_v1_10.price_optional.size

  index = index + memx_options_memo_sbe_v1_10.time_in_force.size

  index = index + memx_options_memo_sbe_v1_10.position_effect_optional.size

  index = index + memx_options_memo_sbe_v1_10.exec_inst.size

  index = index + memx_options_memo_sbe_v1_10.trading_capacity.size

  index = index + memx_options_memo_sbe_v1_10.reprice_frequency.size

  index = index + memx_options_memo_sbe_v1_10.reprice_behavior.size

  index = index + memx_options_memo_sbe_v1_10.leaves_qty.size

  index = index + memx_options_memo_sbe_v1_10.cum_qty.size

  index = index + memx_options_memo_sbe_v1_10.sending_time.size

  index = index + memx_options_memo_sbe_v1_10.transact_time.size

  index = index + memx_options_memo_sbe_v1_10.mtp_group_id.size

  index = index + memx_options_memo_sbe_v1_10.match_trade_prevention.size

  index = index + memx_options_memo_sbe_v1_10.cancel_group_id.size

  index = index + memx_options_memo_sbe_v1_10.risk_group_id.size

  index = index + memx_options_memo_sbe_v1_10.parties_groups.size(buffer, offset + index)

  return index
end

-- Display: Execution Report New Message
memx_options_memo_sbe_v1_10.execution_report_new_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Execution Report New Message
memx_options_memo_sbe_v1_10.execution_report_new_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Order Id: 8 Byte Unsigned Fixed Width Integer
  index, order_id = memx_options_memo_sbe_v1_10.order_id.dissect(buffer, index, packet, parent)

  -- ClOrdId: 20 Byte Ascii String
  index, clordid = memx_options_memo_sbe_v1_10.clordid.dissect(buffer, index, packet, parent)

  -- List Seq No: 1 Byte Unsigned Fixed Width Integer
  index, list_seq_no = memx_options_memo_sbe_v1_10.list_seq_no.dissect(buffer, index, packet, parent)

  -- Exec Id: 8 Byte Unsigned Fixed Width Integer
  index, exec_id = memx_options_memo_sbe_v1_10.exec_id.dissect(buffer, index, packet, parent)

  -- Ord Status: 1 Byte Ascii String Enum with 8 values
  index, ord_status = memx_options_memo_sbe_v1_10.ord_status.dissect(buffer, index, packet, parent)

  -- Security Id: 8 Byte Ascii String
  index, security_id = memx_options_memo_sbe_v1_10.security_id.dissect(buffer, index, packet, parent)

  -- Side: 1 Byte Ascii String Enum with 3 values
  index, side = memx_options_memo_sbe_v1_10.side.dissect(buffer, index, packet, parent)

  -- Order Qty: 4 Byte Unsigned Fixed Width Integer
  index, order_qty = memx_options_memo_sbe_v1_10.order_qty.dissect(buffer, index, packet, parent)

  -- Ord Type: 1 Byte Ascii String Enum with 2 values
  index, ord_type = memx_options_memo_sbe_v1_10.ord_type.dissect(buffer, index, packet, parent)

  -- Price Optional: 8 Byte Unsigned Fixed Width Integer Nullable
  index, price_optional = memx_options_memo_sbe_v1_10.price_optional.dissect(buffer, index, packet, parent)

  -- Time In Force: 1 Byte Ascii String Enum with 2 values
  index, time_in_force = memx_options_memo_sbe_v1_10.time_in_force.dissect(buffer, index, packet, parent)

  -- Position Effect Optional: 1 Byte Ascii String Enum with 3 values
  index, position_effect_optional = memx_options_memo_sbe_v1_10.position_effect_optional.dissect(buffer, index, packet, parent)

  -- Exec Inst: Struct of 4 fields
  index, exec_inst = memx_options_memo_sbe_v1_10.exec_inst.dissect(buffer, index, packet, parent)

  -- Trading Capacity: 1 Byte Unsigned Fixed Width Integer Enum with 8 values
  index, trading_capacity = memx_options_memo_sbe_v1_10.trading_capacity.dissect(buffer, index, packet, parent)

  -- Reprice Frequency: 1 Byte Unsigned Fixed Width Integer Enum with 5 values
  index, reprice_frequency = memx_options_memo_sbe_v1_10.reprice_frequency.dissect(buffer, index, packet, parent)

  -- Reprice Behavior: 1 Byte Unsigned Fixed Width Integer Enum with 4 values
  index, reprice_behavior = memx_options_memo_sbe_v1_10.reprice_behavior.dissect(buffer, index, packet, parent)

  -- Leaves Qty: 4 Byte Unsigned Fixed Width Integer
  index, leaves_qty = memx_options_memo_sbe_v1_10.leaves_qty.dissect(buffer, index, packet, parent)

  -- Cum Qty: 4 Byte Unsigned Fixed Width Integer
  index, cum_qty = memx_options_memo_sbe_v1_10.cum_qty.dissect(buffer, index, packet, parent)

  -- Sending Time: 8 Byte Unsigned Fixed Width Integer
  index, sending_time = memx_options_memo_sbe_v1_10.sending_time.dissect(buffer, index, packet, parent)

  -- Transact Time: 8 Byte Unsigned Fixed Width Integer
  index, transact_time = memx_options_memo_sbe_v1_10.transact_time.dissect(buffer, index, packet, parent)

  -- Mtp Group Id: 2 Byte Unsigned Fixed Width Integer Nullable
  index, mtp_group_id = memx_options_memo_sbe_v1_10.mtp_group_id.dissect(buffer, index, packet, parent)

  -- Match Trade Prevention: 1 Byte Unsigned Fixed Width Integer Enum with 5 values
  index, match_trade_prevention = memx_options_memo_sbe_v1_10.match_trade_prevention.dissect(buffer, index, packet, parent)

  -- Cancel Group Id: 2 Byte Unsigned Fixed Width Integer Nullable
  index, cancel_group_id = memx_options_memo_sbe_v1_10.cancel_group_id.dissect(buffer, index, packet, parent)

  -- Risk Group Id: 2 Byte Unsigned Fixed Width Integer Nullable
  index, risk_group_id = memx_options_memo_sbe_v1_10.risk_group_id.dissect(buffer, index, packet, parent)

  -- Parties Groups: Struct of 2 fields
  index, parties_groups = memx_options_memo_sbe_v1_10.parties_groups.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Execution Report New Message
memx_options_memo_sbe_v1_10.execution_report_new_message.dissect = function(buffer, offset, packet, parent)
  -- Optionally add dynamic struct element to protocol tree
  if show.execution_report_new_message then
    local length = memx_options_memo_sbe_v1_10.execution_report_new_message.size(buffer, offset)
    local range = buffer(offset, length)
    local display = memx_options_memo_sbe_v1_10.execution_report_new_message.display(buffer, packet, parent)
    parent = parent:add(omi_memx_options_memo_sbe_v1_10.fields.execution_report_new_message, range, display)
  end

  return memx_options_memo_sbe_v1_10.execution_report_new_message.fields(buffer, offset, packet, parent)
end

-- Requested Allocations Group
memx_options_memo_sbe_v1_10.requested_allocations_group = {}

-- Calculate size of: Requested Allocations Group
memx_options_memo_sbe_v1_10.requested_allocations_group.size = function(buffer, offset)
  local index = 0

  index = index + memx_options_memo_sbe_v1_10.alloc_qty.size

  index = index + memx_options_memo_sbe_v1_10.alloc_position_effect.size

  index = index + memx_options_memo_sbe_v1_10.trading_capacity_optional.size

  index = index + memx_options_memo_sbe_v1_10.nested_parties_groups.size(buffer, offset + index)

  return index
end

-- Display: Requested Allocations Group
memx_options_memo_sbe_v1_10.requested_allocations_group.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Requested Allocations Group
memx_options_memo_sbe_v1_10.requested_allocations_group.fields = function(buffer, offset, packet, parent, requested_allocations_group_index)
  local index = offset

  -- Implicit Requested Allocations Group Index
  if requested_allocations_group_index ~= nil then
    local iteration = parent:add(omi_memx_options_memo_sbe_v1_10.fields.requested_allocations_group_index, requested_allocations_group_index)
    iteration:set_generated()
  end

  -- Alloc Qty: 4 Byte Unsigned Fixed Width Integer
  index, alloc_qty = memx_options_memo_sbe_v1_10.alloc_qty.dissect(buffer, index, packet, parent)

  -- Alloc Position Effect: 1 Byte Ascii String Enum with 2 values
  index, alloc_position_effect = memx_options_memo_sbe_v1_10.alloc_position_effect.dissect(buffer, index, packet, parent)

  -- Trading Capacity Optional: 1 Byte Unsigned Fixed Width Integer Enum with 9 values
  index, trading_capacity_optional = memx_options_memo_sbe_v1_10.trading_capacity_optional.dissect(buffer, index, packet, parent)

  -- Nested Parties Groups: Struct of 2 fields
  index, nested_parties_groups = memx_options_memo_sbe_v1_10.nested_parties_groups.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Requested Allocations Group
memx_options_memo_sbe_v1_10.requested_allocations_group.dissect = function(buffer, offset, packet, parent)
  -- Optionally add dynamic struct element to protocol tree
  if show.requested_allocations_group then
    local length = memx_options_memo_sbe_v1_10.requested_allocations_group.size(buffer, offset)
    local range = buffer(offset, length)
    local display = memx_options_memo_sbe_v1_10.requested_allocations_group.display(buffer, packet, parent)
    parent = parent:add(omi_memx_options_memo_sbe_v1_10.fields.requested_allocations_group, range, display)
  end

  return memx_options_memo_sbe_v1_10.requested_allocations_group.fields(buffer, offset, packet, parent)
end

-- Requested Allocations Groups
memx_options_memo_sbe_v1_10.requested_allocations_groups = {}

-- Calculate size of: Requested Allocations Groups
memx_options_memo_sbe_v1_10.requested_allocations_groups.size = function(buffer, offset)
  local index = 0

  index = index + memx_options_memo_sbe_v1_10.repeating_group_dimensions.size

  -- Calculate field size from count
  local requested_allocations_group_count = buffer(offset + index - 1, 1):uint()
  for i = 1, requested_allocations_group_count do
    index = index + memx_options_memo_sbe_v1_10.requested_allocations_group.size(buffer, offset + index)
  end
  return index
end

-- Display: Requested Allocations Groups
memx_options_memo_sbe_v1_10.requested_allocations_groups.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Requested Allocations Groups
memx_options_memo_sbe_v1_10.requested_allocations_groups.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Repeating Group Dimensions: Struct of 2 fields
  index, repeating_group_dimensions = memx_options_memo_sbe_v1_10.repeating_group_dimensions.dissect(buffer, index, packet, parent)

  -- Dependency element: Num In Group
  local num_in_group = buffer(index - 1, 1):uint()

  -- Repeating: Requested Allocations Group
  for requested_allocations_group_index = 1, num_in_group do
    index, requested_allocations_group = memx_options_memo_sbe_v1_10.requested_allocations_group.dissect(buffer, index, packet, parent, requested_allocations_group_index)
  end

  return index
end

-- Dissect: Requested Allocations Groups
memx_options_memo_sbe_v1_10.requested_allocations_groups.dissect = function(buffer, offset, packet, parent)
  -- Optionally add dynamic struct element to protocol tree
  if show.requested_allocations_groups then
    local length = memx_options_memo_sbe_v1_10.requested_allocations_groups.size(buffer, offset)
    local range = buffer(offset, length)
    local display = memx_options_memo_sbe_v1_10.requested_allocations_groups.display(buffer, packet, parent)
    parent = parent:add(omi_memx_options_memo_sbe_v1_10.fields.requested_allocations_groups, range, display)
  end

  return memx_options_memo_sbe_v1_10.requested_allocations_groups.fields(buffer, offset, packet, parent)
end

-- Allocation Instruction Message
memx_options_memo_sbe_v1_10.allocation_instruction_message = {}

-- Calculate size of: Allocation Instruction Message
memx_options_memo_sbe_v1_10.allocation_instruction_message.size = function(buffer, offset)
  local index = 0

  index = index + memx_options_memo_sbe_v1_10.sending_time.size

  index = index + memx_options_memo_sbe_v1_10.alloc_id.size

  index = index + memx_options_memo_sbe_v1_10.alloc_type.size

  index = index + memx_options_memo_sbe_v1_10.alloc_trans_type.size

  index = index + memx_options_memo_sbe_v1_10.ref_alloc_id_optional.size

  index = index + memx_options_memo_sbe_v1_10.security_id.size

  index = index + memx_options_memo_sbe_v1_10.side.size

  index = index + memx_options_memo_sbe_v1_10.execution_allocations_groups.size(buffer, offset + index)

  index = index + memx_options_memo_sbe_v1_10.requested_allocations_groups.size(buffer, offset + index)

  return index
end

-- Display: Allocation Instruction Message
memx_options_memo_sbe_v1_10.allocation_instruction_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Allocation Instruction Message
memx_options_memo_sbe_v1_10.allocation_instruction_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Sending Time: 8 Byte Unsigned Fixed Width Integer
  index, sending_time = memx_options_memo_sbe_v1_10.sending_time.dissect(buffer, index, packet, parent)

  -- Alloc Id: 20 Byte Ascii String
  index, alloc_id = memx_options_memo_sbe_v1_10.alloc_id.dissect(buffer, index, packet, parent)

  -- Alloc Type: 1 Byte Unsigned Fixed Width Integer Enum with 2 values
  index, alloc_type = memx_options_memo_sbe_v1_10.alloc_type.dissect(buffer, index, packet, parent)

  -- Alloc Trans Type: 1 Byte Unsigned Fixed Width Integer Enum with 4 values
  index, alloc_trans_type = memx_options_memo_sbe_v1_10.alloc_trans_type.dissect(buffer, index, packet, parent)

  -- Ref Alloc Id Optional: 20 Byte Ascii String Nullable
  index, ref_alloc_id_optional = memx_options_memo_sbe_v1_10.ref_alloc_id_optional.dissect(buffer, index, packet, parent)

  -- Security Id: 8 Byte Ascii String
  index, security_id = memx_options_memo_sbe_v1_10.security_id.dissect(buffer, index, packet, parent)

  -- Side: 1 Byte Ascii String Enum with 3 values
  index, side = memx_options_memo_sbe_v1_10.side.dissect(buffer, index, packet, parent)

  -- Execution Allocations Groups: Struct of 2 fields
  index, execution_allocations_groups = memx_options_memo_sbe_v1_10.execution_allocations_groups.dissect(buffer, index, packet, parent)

  -- Requested Allocations Groups: Struct of 2 fields
  index, requested_allocations_groups = memx_options_memo_sbe_v1_10.requested_allocations_groups.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Allocation Instruction Message
memx_options_memo_sbe_v1_10.allocation_instruction_message.dissect = function(buffer, offset, packet, parent)
  -- Optionally add dynamic struct element to protocol tree
  if show.allocation_instruction_message then
    local length = memx_options_memo_sbe_v1_10.allocation_instruction_message.size(buffer, offset)
    local range = buffer(offset, length)
    local display = memx_options_memo_sbe_v1_10.allocation_instruction_message.display(buffer, packet, parent)
    parent = parent:add(omi_memx_options_memo_sbe_v1_10.fields.allocation_instruction_message, range, display)
  end

  return memx_options_memo_sbe_v1_10.allocation_instruction_message.fields(buffer, offset, packet, parent)
end

-- Mass Cancel Bulk Clear Lockouts By Efid Or Underlier Request Message
memx_options_memo_sbe_v1_10.mass_cancel_bulk_clear_lockouts_by_efid_or_underlier_request_message = {}

-- Size: Mass Cancel Bulk Clear Lockouts By Efid Or Underlier Request Message
memx_options_memo_sbe_v1_10.mass_cancel_bulk_clear_lockouts_by_efid_or_underlier_request_message.size =
  memx_options_memo_sbe_v1_10.sending_time.size + 
  memx_options_memo_sbe_v1_10.clordid.size + 
  memx_options_memo_sbe_v1_10.efid_optional.size + 
  memx_options_memo_sbe_v1_10.underlier_optional.size

-- Display: Mass Cancel Bulk Clear Lockouts By Efid Or Underlier Request Message
memx_options_memo_sbe_v1_10.mass_cancel_bulk_clear_lockouts_by_efid_or_underlier_request_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Mass Cancel Bulk Clear Lockouts By Efid Or Underlier Request Message
memx_options_memo_sbe_v1_10.mass_cancel_bulk_clear_lockouts_by_efid_or_underlier_request_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Sending Time: 8 Byte Unsigned Fixed Width Integer
  index, sending_time = memx_options_memo_sbe_v1_10.sending_time.dissect(buffer, index, packet, parent)

  -- ClOrdId: 20 Byte Ascii String
  index, clordid = memx_options_memo_sbe_v1_10.clordid.dissect(buffer, index, packet, parent)

  -- Efid Optional: 4 Byte Ascii String Nullable
  index, efid_optional = memx_options_memo_sbe_v1_10.efid_optional.dissect(buffer, index, packet, parent)

  -- Underlier Optional: 6 Byte Ascii String Nullable
  index, underlier_optional = memx_options_memo_sbe_v1_10.underlier_optional.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Mass Cancel Bulk Clear Lockouts By Efid Or Underlier Request Message
memx_options_memo_sbe_v1_10.mass_cancel_bulk_clear_lockouts_by_efid_or_underlier_request_message.dissect = function(buffer, offset, packet, parent)
  if show.mass_cancel_bulk_clear_lockouts_by_efid_or_underlier_request_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_memx_options_memo_sbe_v1_10.fields.mass_cancel_bulk_clear_lockouts_by_efid_or_underlier_request_message, buffer(offset, 0))
    local index = memx_options_memo_sbe_v1_10.mass_cancel_bulk_clear_lockouts_by_efid_or_underlier_request_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = memx_options_memo_sbe_v1_10.mass_cancel_bulk_clear_lockouts_by_efid_or_underlier_request_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return memx_options_memo_sbe_v1_10.mass_cancel_bulk_clear_lockouts_by_efid_or_underlier_request_message.fields(buffer, offset, packet, parent)
  end
end

-- Mass Cancel Bulk Clear All Lockouts Request Message
memx_options_memo_sbe_v1_10.mass_cancel_bulk_clear_all_lockouts_request_message = {}

-- Size: Mass Cancel Bulk Clear All Lockouts Request Message
memx_options_memo_sbe_v1_10.mass_cancel_bulk_clear_all_lockouts_request_message.size =
  memx_options_memo_sbe_v1_10.sending_time.size + 
  memx_options_memo_sbe_v1_10.clordid.size

-- Display: Mass Cancel Bulk Clear All Lockouts Request Message
memx_options_memo_sbe_v1_10.mass_cancel_bulk_clear_all_lockouts_request_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Mass Cancel Bulk Clear All Lockouts Request Message
memx_options_memo_sbe_v1_10.mass_cancel_bulk_clear_all_lockouts_request_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Sending Time: 8 Byte Unsigned Fixed Width Integer
  index, sending_time = memx_options_memo_sbe_v1_10.sending_time.dissect(buffer, index, packet, parent)

  -- ClOrdId: 20 Byte Ascii String
  index, clordid = memx_options_memo_sbe_v1_10.clordid.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Mass Cancel Bulk Clear All Lockouts Request Message
memx_options_memo_sbe_v1_10.mass_cancel_bulk_clear_all_lockouts_request_message.dissect = function(buffer, offset, packet, parent)
  if show.mass_cancel_bulk_clear_all_lockouts_request_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_memx_options_memo_sbe_v1_10.fields.mass_cancel_bulk_clear_all_lockouts_request_message, buffer(offset, 0))
    local index = memx_options_memo_sbe_v1_10.mass_cancel_bulk_clear_all_lockouts_request_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = memx_options_memo_sbe_v1_10.mass_cancel_bulk_clear_all_lockouts_request_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return memx_options_memo_sbe_v1_10.mass_cancel_bulk_clear_all_lockouts_request_message.fields(buffer, offset, packet, parent)
  end
end

-- Mass Cancel Clear Lockout Request Message
memx_options_memo_sbe_v1_10.mass_cancel_clear_lockout_request_message = {}

-- Size: Mass Cancel Clear Lockout Request Message
memx_options_memo_sbe_v1_10.mass_cancel_clear_lockout_request_message.size =
  memx_options_memo_sbe_v1_10.sending_time.size + 
  memx_options_memo_sbe_v1_10.clordid.size + 
  memx_options_memo_sbe_v1_10.underlier.size + 
  memx_options_memo_sbe_v1_10.lockout_id.size

-- Display: Mass Cancel Clear Lockout Request Message
memx_options_memo_sbe_v1_10.mass_cancel_clear_lockout_request_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Mass Cancel Clear Lockout Request Message
memx_options_memo_sbe_v1_10.mass_cancel_clear_lockout_request_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Sending Time: 8 Byte Unsigned Fixed Width Integer
  index, sending_time = memx_options_memo_sbe_v1_10.sending_time.dissect(buffer, index, packet, parent)

  -- ClOrdId: 20 Byte Ascii String
  index, clordid = memx_options_memo_sbe_v1_10.clordid.dissect(buffer, index, packet, parent)

  -- Underlier: 6 Byte Ascii String
  index, underlier = memx_options_memo_sbe_v1_10.underlier.dissect(buffer, index, packet, parent)

  -- Lockout Id: 8 Byte Unsigned Fixed Width Integer
  index, lockout_id = memx_options_memo_sbe_v1_10.lockout_id.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Mass Cancel Clear Lockout Request Message
memx_options_memo_sbe_v1_10.mass_cancel_clear_lockout_request_message.dissect = function(buffer, offset, packet, parent)
  if show.mass_cancel_clear_lockout_request_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_memx_options_memo_sbe_v1_10.fields.mass_cancel_clear_lockout_request_message, buffer(offset, 0))
    local index = memx_options_memo_sbe_v1_10.mass_cancel_clear_lockout_request_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = memx_options_memo_sbe_v1_10.mass_cancel_clear_lockout_request_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return memx_options_memo_sbe_v1_10.mass_cancel_clear_lockout_request_message.fields(buffer, offset, packet, parent)
  end
end

-- Mass Cancel Request Message
memx_options_memo_sbe_v1_10.mass_cancel_request_message = {}

-- Size: Mass Cancel Request Message
memx_options_memo_sbe_v1_10.mass_cancel_request_message.size =
  memx_options_memo_sbe_v1_10.sending_time.size + 
  memx_options_memo_sbe_v1_10.clordid.size + 
  memx_options_memo_sbe_v1_10.efid_optional.size + 
  memx_options_memo_sbe_v1_10.underlying_or_series.size + 
  memx_options_memo_sbe_v1_10.underlier.size + 
  memx_options_memo_sbe_v1_10.options_security_id_optional.size + 
  memx_options_memo_sbe_v1_10.cancel_group_id.size + 
  memx_options_memo_sbe_v1_10.mass_cancel_inst.size

-- Display: Mass Cancel Request Message
memx_options_memo_sbe_v1_10.mass_cancel_request_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Mass Cancel Request Message
memx_options_memo_sbe_v1_10.mass_cancel_request_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Sending Time: 8 Byte Unsigned Fixed Width Integer
  index, sending_time = memx_options_memo_sbe_v1_10.sending_time.dissect(buffer, index, packet, parent)

  -- ClOrdId: 20 Byte Ascii String
  index, clordid = memx_options_memo_sbe_v1_10.clordid.dissect(buffer, index, packet, parent)

  -- Efid Optional: 4 Byte Ascii String Nullable
  index, efid_optional = memx_options_memo_sbe_v1_10.efid_optional.dissect(buffer, index, packet, parent)

  -- Underlying Or Series: 1 Byte Unsigned Fixed Width Integer Enum with 3 values
  index, underlying_or_series = memx_options_memo_sbe_v1_10.underlying_or_series.dissect(buffer, index, packet, parent)

  -- Underlier: 6 Byte Ascii String
  index, underlier = memx_options_memo_sbe_v1_10.underlier.dissect(buffer, index, packet, parent)

  -- Options Security Id Optional: 8 Byte Ascii String Nullable
  index, options_security_id_optional = memx_options_memo_sbe_v1_10.options_security_id_optional.dissect(buffer, index, packet, parent)

  -- Cancel Group Id: 2 Byte Unsigned Fixed Width Integer Nullable
  index, cancel_group_id = memx_options_memo_sbe_v1_10.cancel_group_id.dissect(buffer, index, packet, parent)

  -- Mass Cancel Inst: Struct of 4 fields
  index, mass_cancel_inst = memx_options_memo_sbe_v1_10.mass_cancel_inst.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Mass Cancel Request Message
memx_options_memo_sbe_v1_10.mass_cancel_request_message.dissect = function(buffer, offset, packet, parent)
  if show.mass_cancel_request_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_memx_options_memo_sbe_v1_10.fields.mass_cancel_request_message, buffer(offset, 0))
    local index = memx_options_memo_sbe_v1_10.mass_cancel_request_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = memx_options_memo_sbe_v1_10.mass_cancel_request_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return memx_options_memo_sbe_v1_10.mass_cancel_request_message.fields(buffer, offset, packet, parent)
  end
end

-- Order Id Optional
memx_options_memo_sbe_v1_10.order_id_optional = {}

-- Size: Order Id Optional
memx_options_memo_sbe_v1_10.order_id_optional.size = 8

-- Display: Order Id Optional
memx_options_memo_sbe_v1_10.order_id_optional.display = function(value)
  -- Check if field has value
  if value == UInt64(0xFFFFFFFF, 0xFFFFFFFF) then
    return "Order Id Optional: No Value"
  end

  return "Order Id Optional: "..value
end

-- Dissect: Order Id Optional
memx_options_memo_sbe_v1_10.order_id_optional.dissect = function(buffer, offset, packet, parent)
  local length = memx_options_memo_sbe_v1_10.order_id_optional.size
  local range = buffer(offset, length)
  local value = range:uint64()
  local display = memx_options_memo_sbe_v1_10.order_id_optional.display(value, buffer, offset, packet, parent)

  parent:add(omi_memx_options_memo_sbe_v1_10.fields.order_id_optional, range, value, display)

  return offset + length, value
end

-- Order Cancel Request Message
memx_options_memo_sbe_v1_10.order_cancel_request_message = {}

-- Size: Order Cancel Request Message
memx_options_memo_sbe_v1_10.order_cancel_request_message.size =
  memx_options_memo_sbe_v1_10.sending_time.size + 
  memx_options_memo_sbe_v1_10.order_id_optional.size + 
  memx_options_memo_sbe_v1_10.clordid.size + 
  memx_options_memo_sbe_v1_10.list_seq_no.size + 
  memx_options_memo_sbe_v1_10.origclordid_optional.size + 
  memx_options_memo_sbe_v1_10.security_id.size + 
  memx_options_memo_sbe_v1_10.side_optional.size

-- Display: Order Cancel Request Message
memx_options_memo_sbe_v1_10.order_cancel_request_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Order Cancel Request Message
memx_options_memo_sbe_v1_10.order_cancel_request_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Sending Time: 8 Byte Unsigned Fixed Width Integer
  index, sending_time = memx_options_memo_sbe_v1_10.sending_time.dissect(buffer, index, packet, parent)

  -- Order Id Optional: 8 Byte Unsigned Fixed Width Integer Nullable
  index, order_id_optional = memx_options_memo_sbe_v1_10.order_id_optional.dissect(buffer, index, packet, parent)

  -- ClOrdId: 20 Byte Ascii String
  index, clordid = memx_options_memo_sbe_v1_10.clordid.dissect(buffer, index, packet, parent)

  -- List Seq No: 1 Byte Unsigned Fixed Width Integer
  index, list_seq_no = memx_options_memo_sbe_v1_10.list_seq_no.dissect(buffer, index, packet, parent)

  -- OrigClOrdId Optional: 20 Byte Ascii String Nullable
  index, origclordid_optional = memx_options_memo_sbe_v1_10.origclordid_optional.dissect(buffer, index, packet, parent)

  -- Security Id: 8 Byte Ascii String
  index, security_id = memx_options_memo_sbe_v1_10.security_id.dissect(buffer, index, packet, parent)

  -- Side Optional: 1 Byte Ascii String Enum with 4 values
  index, side_optional = memx_options_memo_sbe_v1_10.side_optional.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Order Cancel Request Message
memx_options_memo_sbe_v1_10.order_cancel_request_message.dissect = function(buffer, offset, packet, parent)
  if show.order_cancel_request_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_memx_options_memo_sbe_v1_10.fields.order_cancel_request_message, buffer(offset, 0))
    local index = memx_options_memo_sbe_v1_10.order_cancel_request_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = memx_options_memo_sbe_v1_10.order_cancel_request_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return memx_options_memo_sbe_v1_10.order_cancel_request_message.fields(buffer, offset, packet, parent)
  end
end

-- Order Cancel Replace Request Message
memx_options_memo_sbe_v1_10.order_cancel_replace_request_message = {}

-- Size: Order Cancel Replace Request Message
memx_options_memo_sbe_v1_10.order_cancel_replace_request_message.size =
  memx_options_memo_sbe_v1_10.sending_time.size + 
  memx_options_memo_sbe_v1_10.order_id_optional.size + 
  memx_options_memo_sbe_v1_10.clordid.size + 
  memx_options_memo_sbe_v1_10.list_seq_no.size + 
  memx_options_memo_sbe_v1_10.origclordid.size + 
  memx_options_memo_sbe_v1_10.security_id.size + 
  memx_options_memo_sbe_v1_10.side.size + 
  memx_options_memo_sbe_v1_10.order_qty.size + 
  memx_options_memo_sbe_v1_10.ord_type.size + 
  memx_options_memo_sbe_v1_10.price_optional.size

-- Display: Order Cancel Replace Request Message
memx_options_memo_sbe_v1_10.order_cancel_replace_request_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Order Cancel Replace Request Message
memx_options_memo_sbe_v1_10.order_cancel_replace_request_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Sending Time: 8 Byte Unsigned Fixed Width Integer
  index, sending_time = memx_options_memo_sbe_v1_10.sending_time.dissect(buffer, index, packet, parent)

  -- Order Id Optional: 8 Byte Unsigned Fixed Width Integer Nullable
  index, order_id_optional = memx_options_memo_sbe_v1_10.order_id_optional.dissect(buffer, index, packet, parent)

  -- ClOrdId: 20 Byte Ascii String
  index, clordid = memx_options_memo_sbe_v1_10.clordid.dissect(buffer, index, packet, parent)

  -- List Seq No: 1 Byte Unsigned Fixed Width Integer
  index, list_seq_no = memx_options_memo_sbe_v1_10.list_seq_no.dissect(buffer, index, packet, parent)

  -- OrigClOrdId: 20 Byte Ascii String
  index, origclordid = memx_options_memo_sbe_v1_10.origclordid.dissect(buffer, index, packet, parent)

  -- Security Id: 8 Byte Ascii String
  index, security_id = memx_options_memo_sbe_v1_10.security_id.dissect(buffer, index, packet, parent)

  -- Side: 1 Byte Ascii String Enum with 3 values
  index, side = memx_options_memo_sbe_v1_10.side.dissect(buffer, index, packet, parent)

  -- Order Qty: 4 Byte Unsigned Fixed Width Integer
  index, order_qty = memx_options_memo_sbe_v1_10.order_qty.dissect(buffer, index, packet, parent)

  -- Ord Type: 1 Byte Ascii String Enum with 2 values
  index, ord_type = memx_options_memo_sbe_v1_10.ord_type.dissect(buffer, index, packet, parent)

  -- Price Optional: 8 Byte Unsigned Fixed Width Integer Nullable
  index, price_optional = memx_options_memo_sbe_v1_10.price_optional.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Order Cancel Replace Request Message
memx_options_memo_sbe_v1_10.order_cancel_replace_request_message.dissect = function(buffer, offset, packet, parent)
  if show.order_cancel_replace_request_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_memx_options_memo_sbe_v1_10.fields.order_cancel_replace_request_message, buffer(offset, 0))
    local index = memx_options_memo_sbe_v1_10.order_cancel_replace_request_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = memx_options_memo_sbe_v1_10.order_cancel_replace_request_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return memx_options_memo_sbe_v1_10.order_cancel_replace_request_message.fields(buffer, offset, packet, parent)
  end
end

-- Price Short
memx_options_memo_sbe_v1_10.price_short = {}

-- Size: Price Short
memx_options_memo_sbe_v1_10.price_short.size = 2

-- Display: Price Short
memx_options_memo_sbe_v1_10.price_short.display = function(value)
  return "Price Short: "..value
end

-- Translate: Price Short
memx_options_memo_sbe_v1_10.price_short.translate = function(raw)
  return raw/100
end

-- Dissect: Price Short
memx_options_memo_sbe_v1_10.price_short.dissect = function(buffer, offset, packet, parent)
  local length = memx_options_memo_sbe_v1_10.price_short.size
  local range = buffer(offset, length)
  local raw = range:uint()
  local value = memx_options_memo_sbe_v1_10.price_short.translate(raw)
  local display = memx_options_memo_sbe_v1_10.price_short.display(value, buffer, offset, packet, parent)

  parent:add(omi_memx_options_memo_sbe_v1_10.fields.price_short, range, value, display)

  return offset + length, value
end

-- Quantity
memx_options_memo_sbe_v1_10.quantity = {}

-- Size: Quantity
memx_options_memo_sbe_v1_10.quantity.size = 2

-- Display: Quantity
memx_options_memo_sbe_v1_10.quantity.display = function(value)
  return "Quantity: "..value
end

-- Dissect: Quantity
memx_options_memo_sbe_v1_10.quantity.dissect = function(buffer, offset, packet, parent)
  local length = memx_options_memo_sbe_v1_10.quantity.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = memx_options_memo_sbe_v1_10.quantity.display(value, buffer, offset, packet, parent)

  parent:add(omi_memx_options_memo_sbe_v1_10.fields.quantity, range, value, display)

  return offset + length, value
end

-- One Sided Quotes Group
memx_options_memo_sbe_v1_10.one_sided_quotes_group = {}

-- Size: One Sided Quotes Group
memx_options_memo_sbe_v1_10.one_sided_quotes_group.size =
  memx_options_memo_sbe_v1_10.list_seq_no.size + 
  memx_options_memo_sbe_v1_10.security_id.size + 
  memx_options_memo_sbe_v1_10.side.size + 
  memx_options_memo_sbe_v1_10.quantity.size + 
  memx_options_memo_sbe_v1_10.price_short.size

-- Display: One Sided Quotes Group
memx_options_memo_sbe_v1_10.one_sided_quotes_group.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: One Sided Quotes Group
memx_options_memo_sbe_v1_10.one_sided_quotes_group.fields = function(buffer, offset, packet, parent, one_sided_quotes_group_index)
  local index = offset

  -- Implicit One Sided Quotes Group Index
  if one_sided_quotes_group_index ~= nil then
    local iteration = parent:add(omi_memx_options_memo_sbe_v1_10.fields.one_sided_quotes_group_index, one_sided_quotes_group_index)
    iteration:set_generated()
  end

  -- List Seq No: 1 Byte Unsigned Fixed Width Integer
  index, list_seq_no = memx_options_memo_sbe_v1_10.list_seq_no.dissect(buffer, index, packet, parent)

  -- Security Id: 8 Byte Ascii String
  index, security_id = memx_options_memo_sbe_v1_10.security_id.dissect(buffer, index, packet, parent)

  -- Side: 1 Byte Ascii String Enum with 3 values
  index, side = memx_options_memo_sbe_v1_10.side.dissect(buffer, index, packet, parent)

  -- Quantity: 2 Byte Unsigned Fixed Width Integer
  index, quantity = memx_options_memo_sbe_v1_10.quantity.dissect(buffer, index, packet, parent)

  -- Price Short: 2 Byte Unsigned Fixed Width Integer
  index, price_short = memx_options_memo_sbe_v1_10.price_short.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: One Sided Quotes Group
memx_options_memo_sbe_v1_10.one_sided_quotes_group.dissect = function(buffer, offset, packet, parent, one_sided_quotes_group_index)
  if show.one_sided_quotes_group then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_memx_options_memo_sbe_v1_10.fields.one_sided_quotes_group, buffer(offset, 0))
    local index = memx_options_memo_sbe_v1_10.one_sided_quotes_group.fields(buffer, offset, packet, parent, one_sided_quotes_group_index)
    local length = index - offset
    parent:set_len(length)
    local display = memx_options_memo_sbe_v1_10.one_sided_quotes_group.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return memx_options_memo_sbe_v1_10.one_sided_quotes_group.fields(buffer, offset, packet, parent, one_sided_quotes_group_index)
  end
end

-- One Sided Quotes Groups
memx_options_memo_sbe_v1_10.one_sided_quotes_groups = {}

-- Calculate size of: One Sided Quotes Groups
memx_options_memo_sbe_v1_10.one_sided_quotes_groups.size = function(buffer, offset)
  local index = 0

  index = index + memx_options_memo_sbe_v1_10.repeating_group_dimensions.size

  -- Calculate field size from count
  local one_sided_quotes_group_count = buffer(offset + index - 1, 1):uint()
  index = index + one_sided_quotes_group_count * 14

  return index
end

-- Display: One Sided Quotes Groups
memx_options_memo_sbe_v1_10.one_sided_quotes_groups.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: One Sided Quotes Groups
memx_options_memo_sbe_v1_10.one_sided_quotes_groups.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Repeating Group Dimensions: Struct of 2 fields
  index, repeating_group_dimensions = memx_options_memo_sbe_v1_10.repeating_group_dimensions.dissect(buffer, index, packet, parent)

  -- Dependency element: Num In Group
  local num_in_group = buffer(index - 1, 1):uint()

  -- Repeating: One Sided Quotes Group
  for one_sided_quotes_group_index = 1, num_in_group do
    index, one_sided_quotes_group = memx_options_memo_sbe_v1_10.one_sided_quotes_group.dissect(buffer, index, packet, parent, one_sided_quotes_group_index)
  end

  return index
end

-- Dissect: One Sided Quotes Groups
memx_options_memo_sbe_v1_10.one_sided_quotes_groups.dissect = function(buffer, offset, packet, parent)
  -- Optionally add dynamic struct element to protocol tree
  if show.one_sided_quotes_groups then
    local length = memx_options_memo_sbe_v1_10.one_sided_quotes_groups.size(buffer, offset)
    local range = buffer(offset, length)
    local display = memx_options_memo_sbe_v1_10.one_sided_quotes_groups.display(buffer, packet, parent)
    parent = parent:add(omi_memx_options_memo_sbe_v1_10.fields.one_sided_quotes_groups, range, display)
  end

  return memx_options_memo_sbe_v1_10.one_sided_quotes_groups.fields(buffer, offset, packet, parent)
end

-- Long One Sided Bulk Quote Message
memx_options_memo_sbe_v1_10.long_one_sided_bulk_quote_message = {}

-- Calculate size of: Long One Sided Bulk Quote Message
memx_options_memo_sbe_v1_10.long_one_sided_bulk_quote_message.size = function(buffer, offset)
  local index = 0

  index = index + memx_options_memo_sbe_v1_10.sending_time.size

  index = index + memx_options_memo_sbe_v1_10.clordid.size

  index = index + memx_options_memo_sbe_v1_10.time_in_force.size

  index = index + memx_options_memo_sbe_v1_10.exec_inst.size

  index = index + memx_options_memo_sbe_v1_10.trading_capacity.size

  index = index + memx_options_memo_sbe_v1_10.mtp_group_id.size

  index = index + memx_options_memo_sbe_v1_10.match_trade_prevention.size

  index = index + memx_options_memo_sbe_v1_10.cancel_group_id.size

  index = index + memx_options_memo_sbe_v1_10.risk_group_id.size

  index = index + memx_options_memo_sbe_v1_10.parties_groups.size(buffer, offset + index)

  index = index + memx_options_memo_sbe_v1_10.one_sided_quotes_groups.size(buffer, offset + index)

  return index
end

-- Display: Long One Sided Bulk Quote Message
memx_options_memo_sbe_v1_10.long_one_sided_bulk_quote_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Long One Sided Bulk Quote Message
memx_options_memo_sbe_v1_10.long_one_sided_bulk_quote_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Sending Time: 8 Byte Unsigned Fixed Width Integer
  index, sending_time = memx_options_memo_sbe_v1_10.sending_time.dissect(buffer, index, packet, parent)

  -- ClOrdId: 20 Byte Ascii String
  index, clordid = memx_options_memo_sbe_v1_10.clordid.dissect(buffer, index, packet, parent)

  -- Time In Force: 1 Byte Ascii String Enum with 2 values
  index, time_in_force = memx_options_memo_sbe_v1_10.time_in_force.dissect(buffer, index, packet, parent)

  -- Exec Inst: Struct of 4 fields
  index, exec_inst = memx_options_memo_sbe_v1_10.exec_inst.dissect(buffer, index, packet, parent)

  -- Trading Capacity: 1 Byte Unsigned Fixed Width Integer Enum with 8 values
  index, trading_capacity = memx_options_memo_sbe_v1_10.trading_capacity.dissect(buffer, index, packet, parent)

  -- Mtp Group Id: 2 Byte Unsigned Fixed Width Integer Nullable
  index, mtp_group_id = memx_options_memo_sbe_v1_10.mtp_group_id.dissect(buffer, index, packet, parent)

  -- Match Trade Prevention: 1 Byte Unsigned Fixed Width Integer Enum with 5 values
  index, match_trade_prevention = memx_options_memo_sbe_v1_10.match_trade_prevention.dissect(buffer, index, packet, parent)

  -- Cancel Group Id: 2 Byte Unsigned Fixed Width Integer Nullable
  index, cancel_group_id = memx_options_memo_sbe_v1_10.cancel_group_id.dissect(buffer, index, packet, parent)

  -- Risk Group Id: 2 Byte Unsigned Fixed Width Integer Nullable
  index, risk_group_id = memx_options_memo_sbe_v1_10.risk_group_id.dissect(buffer, index, packet, parent)

  -- Parties Groups: Struct of 2 fields
  index, parties_groups = memx_options_memo_sbe_v1_10.parties_groups.dissect(buffer, index, packet, parent)

  -- One Sided Quotes Groups: Struct of 2 fields
  index, one_sided_quotes_groups = memx_options_memo_sbe_v1_10.one_sided_quotes_groups.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Long One Sided Bulk Quote Message
memx_options_memo_sbe_v1_10.long_one_sided_bulk_quote_message.dissect = function(buffer, offset, packet, parent)
  -- Optionally add dynamic struct element to protocol tree
  if show.long_one_sided_bulk_quote_message then
    local length = memx_options_memo_sbe_v1_10.long_one_sided_bulk_quote_message.size(buffer, offset)
    local range = buffer(offset, length)
    local display = memx_options_memo_sbe_v1_10.long_one_sided_bulk_quote_message.display(buffer, packet, parent)
    parent = parent:add(omi_memx_options_memo_sbe_v1_10.fields.long_one_sided_bulk_quote_message, range, display)
  end

  return memx_options_memo_sbe_v1_10.long_one_sided_bulk_quote_message.fields(buffer, offset, packet, parent)
end

-- Short One Sided Bulk Quote Message
memx_options_memo_sbe_v1_10.short_one_sided_bulk_quote_message = {}

-- Calculate size of: Short One Sided Bulk Quote Message
memx_options_memo_sbe_v1_10.short_one_sided_bulk_quote_message.size = function(buffer, offset)
  local index = 0

  index = index + memx_options_memo_sbe_v1_10.sending_time.size

  index = index + memx_options_memo_sbe_v1_10.clordid.size

  index = index + memx_options_memo_sbe_v1_10.time_in_force.size

  index = index + memx_options_memo_sbe_v1_10.exec_inst.size

  index = index + memx_options_memo_sbe_v1_10.trading_capacity.size

  index = index + memx_options_memo_sbe_v1_10.mtp_group_id.size

  index = index + memx_options_memo_sbe_v1_10.match_trade_prevention.size

  index = index + memx_options_memo_sbe_v1_10.cancel_group_id.size

  index = index + memx_options_memo_sbe_v1_10.risk_group_id.size

  index = index + memx_options_memo_sbe_v1_10.parties_groups.size(buffer, offset + index)

  index = index + memx_options_memo_sbe_v1_10.one_sided_quotes_groups.size(buffer, offset + index)

  return index
end

-- Display: Short One Sided Bulk Quote Message
memx_options_memo_sbe_v1_10.short_one_sided_bulk_quote_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Short One Sided Bulk Quote Message
memx_options_memo_sbe_v1_10.short_one_sided_bulk_quote_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Sending Time: 8 Byte Unsigned Fixed Width Integer
  index, sending_time = memx_options_memo_sbe_v1_10.sending_time.dissect(buffer, index, packet, parent)

  -- ClOrdId: 20 Byte Ascii String
  index, clordid = memx_options_memo_sbe_v1_10.clordid.dissect(buffer, index, packet, parent)

  -- Time In Force: 1 Byte Ascii String Enum with 2 values
  index, time_in_force = memx_options_memo_sbe_v1_10.time_in_force.dissect(buffer, index, packet, parent)

  -- Exec Inst: Struct of 4 fields
  index, exec_inst = memx_options_memo_sbe_v1_10.exec_inst.dissect(buffer, index, packet, parent)

  -- Trading Capacity: 1 Byte Unsigned Fixed Width Integer Enum with 8 values
  index, trading_capacity = memx_options_memo_sbe_v1_10.trading_capacity.dissect(buffer, index, packet, parent)

  -- Mtp Group Id: 2 Byte Unsigned Fixed Width Integer Nullable
  index, mtp_group_id = memx_options_memo_sbe_v1_10.mtp_group_id.dissect(buffer, index, packet, parent)

  -- Match Trade Prevention: 1 Byte Unsigned Fixed Width Integer Enum with 5 values
  index, match_trade_prevention = memx_options_memo_sbe_v1_10.match_trade_prevention.dissect(buffer, index, packet, parent)

  -- Cancel Group Id: 2 Byte Unsigned Fixed Width Integer Nullable
  index, cancel_group_id = memx_options_memo_sbe_v1_10.cancel_group_id.dissect(buffer, index, packet, parent)

  -- Risk Group Id: 2 Byte Unsigned Fixed Width Integer Nullable
  index, risk_group_id = memx_options_memo_sbe_v1_10.risk_group_id.dissect(buffer, index, packet, parent)

  -- Parties Groups: Struct of 2 fields
  index, parties_groups = memx_options_memo_sbe_v1_10.parties_groups.dissect(buffer, index, packet, parent)

  -- One Sided Quotes Groups: Struct of 2 fields
  index, one_sided_quotes_groups = memx_options_memo_sbe_v1_10.one_sided_quotes_groups.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Short One Sided Bulk Quote Message
memx_options_memo_sbe_v1_10.short_one_sided_bulk_quote_message.dissect = function(buffer, offset, packet, parent)
  -- Optionally add dynamic struct element to protocol tree
  if show.short_one_sided_bulk_quote_message then
    local length = memx_options_memo_sbe_v1_10.short_one_sided_bulk_quote_message.size(buffer, offset)
    local range = buffer(offset, length)
    local display = memx_options_memo_sbe_v1_10.short_one_sided_bulk_quote_message.display(buffer, packet, parent)
    parent = parent:add(omi_memx_options_memo_sbe_v1_10.fields.short_one_sided_bulk_quote_message, range, display)
  end

  return memx_options_memo_sbe_v1_10.short_one_sided_bulk_quote_message.fields(buffer, offset, packet, parent)
end

-- Offer Px
memx_options_memo_sbe_v1_10.offer_px = {}

-- Size: Offer Px
memx_options_memo_sbe_v1_10.offer_px.size = 2

-- Display: Offer Px
memx_options_memo_sbe_v1_10.offer_px.display = function(value)
  return "Offer Px: "..value
end

-- Translate: Offer Px
memx_options_memo_sbe_v1_10.offer_px.translate = function(raw)
  return raw/100
end

-- Dissect: Offer Px
memx_options_memo_sbe_v1_10.offer_px.dissect = function(buffer, offset, packet, parent)
  local length = memx_options_memo_sbe_v1_10.offer_px.size
  local range = buffer(offset, length)
  local raw = range:uint()
  local value = memx_options_memo_sbe_v1_10.offer_px.translate(raw)
  local display = memx_options_memo_sbe_v1_10.offer_px.display(value, buffer, offset, packet, parent)

  parent:add(omi_memx_options_memo_sbe_v1_10.fields.offer_px, range, value, display)

  return offset + length, value
end

-- Offer Size
memx_options_memo_sbe_v1_10.offer_size = {}

-- Size: Offer Size
memx_options_memo_sbe_v1_10.offer_size.size = 2

-- Display: Offer Size
memx_options_memo_sbe_v1_10.offer_size.display = function(value)
  return "Offer Size: "..value
end

-- Dissect: Offer Size
memx_options_memo_sbe_v1_10.offer_size.dissect = function(buffer, offset, packet, parent)
  local length = memx_options_memo_sbe_v1_10.offer_size.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = memx_options_memo_sbe_v1_10.offer_size.display(value, buffer, offset, packet, parent)

  parent:add(omi_memx_options_memo_sbe_v1_10.fields.offer_size, range, value, display)

  return offset + length, value
end

-- Bid Px
memx_options_memo_sbe_v1_10.bid_px = {}

-- Size: Bid Px
memx_options_memo_sbe_v1_10.bid_px.size = 2

-- Display: Bid Px
memx_options_memo_sbe_v1_10.bid_px.display = function(value)
  return "Bid Px: "..value
end

-- Translate: Bid Px
memx_options_memo_sbe_v1_10.bid_px.translate = function(raw)
  return raw/100
end

-- Dissect: Bid Px
memx_options_memo_sbe_v1_10.bid_px.dissect = function(buffer, offset, packet, parent)
  local length = memx_options_memo_sbe_v1_10.bid_px.size
  local range = buffer(offset, length)
  local raw = range:uint()
  local value = memx_options_memo_sbe_v1_10.bid_px.translate(raw)
  local display = memx_options_memo_sbe_v1_10.bid_px.display(value, buffer, offset, packet, parent)

  parent:add(omi_memx_options_memo_sbe_v1_10.fields.bid_px, range, value, display)

  return offset + length, value
end

-- Bid Size
memx_options_memo_sbe_v1_10.bid_size = {}

-- Size: Bid Size
memx_options_memo_sbe_v1_10.bid_size.size = 2

-- Display: Bid Size
memx_options_memo_sbe_v1_10.bid_size.display = function(value)
  return "Bid Size: "..value
end

-- Dissect: Bid Size
memx_options_memo_sbe_v1_10.bid_size.dissect = function(buffer, offset, packet, parent)
  local length = memx_options_memo_sbe_v1_10.bid_size.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = memx_options_memo_sbe_v1_10.bid_size.display(value, buffer, offset, packet, parent)

  parent:add(omi_memx_options_memo_sbe_v1_10.fields.bid_size, range, value, display)

  return offset + length, value
end

-- Two Sided Quotes Group
memx_options_memo_sbe_v1_10.two_sided_quotes_group = {}

-- Size: Two Sided Quotes Group
memx_options_memo_sbe_v1_10.two_sided_quotes_group.size =
  memx_options_memo_sbe_v1_10.list_seq_no.size + 
  memx_options_memo_sbe_v1_10.security_id.size + 
  memx_options_memo_sbe_v1_10.bid_size.size + 
  memx_options_memo_sbe_v1_10.bid_px.size + 
  memx_options_memo_sbe_v1_10.offer_size.size + 
  memx_options_memo_sbe_v1_10.offer_px.size

-- Display: Two Sided Quotes Group
memx_options_memo_sbe_v1_10.two_sided_quotes_group.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Two Sided Quotes Group
memx_options_memo_sbe_v1_10.two_sided_quotes_group.fields = function(buffer, offset, packet, parent, two_sided_quotes_group_index)
  local index = offset

  -- Implicit Two Sided Quotes Group Index
  if two_sided_quotes_group_index ~= nil then
    local iteration = parent:add(omi_memx_options_memo_sbe_v1_10.fields.two_sided_quotes_group_index, two_sided_quotes_group_index)
    iteration:set_generated()
  end

  -- List Seq No: 1 Byte Unsigned Fixed Width Integer
  index, list_seq_no = memx_options_memo_sbe_v1_10.list_seq_no.dissect(buffer, index, packet, parent)

  -- Security Id: 8 Byte Ascii String
  index, security_id = memx_options_memo_sbe_v1_10.security_id.dissect(buffer, index, packet, parent)

  -- Bid Size: 2 Byte Unsigned Fixed Width Integer
  index, bid_size = memx_options_memo_sbe_v1_10.bid_size.dissect(buffer, index, packet, parent)

  -- Bid Px: 2 Byte Unsigned Fixed Width Integer
  index, bid_px = memx_options_memo_sbe_v1_10.bid_px.dissect(buffer, index, packet, parent)

  -- Offer Size: 2 Byte Unsigned Fixed Width Integer
  index, offer_size = memx_options_memo_sbe_v1_10.offer_size.dissect(buffer, index, packet, parent)

  -- Offer Px: 2 Byte Unsigned Fixed Width Integer
  index, offer_px = memx_options_memo_sbe_v1_10.offer_px.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Two Sided Quotes Group
memx_options_memo_sbe_v1_10.two_sided_quotes_group.dissect = function(buffer, offset, packet, parent, two_sided_quotes_group_index)
  if show.two_sided_quotes_group then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_memx_options_memo_sbe_v1_10.fields.two_sided_quotes_group, buffer(offset, 0))
    local index = memx_options_memo_sbe_v1_10.two_sided_quotes_group.fields(buffer, offset, packet, parent, two_sided_quotes_group_index)
    local length = index - offset
    parent:set_len(length)
    local display = memx_options_memo_sbe_v1_10.two_sided_quotes_group.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return memx_options_memo_sbe_v1_10.two_sided_quotes_group.fields(buffer, offset, packet, parent, two_sided_quotes_group_index)
  end
end

-- Two Sided Quotes Groups
memx_options_memo_sbe_v1_10.two_sided_quotes_groups = {}

-- Calculate size of: Two Sided Quotes Groups
memx_options_memo_sbe_v1_10.two_sided_quotes_groups.size = function(buffer, offset)
  local index = 0

  index = index + memx_options_memo_sbe_v1_10.repeating_group_dimensions.size

  -- Calculate field size from count
  local two_sided_quotes_group_count = buffer(offset + index - 1, 1):uint()
  index = index + two_sided_quotes_group_count * 17

  return index
end

-- Display: Two Sided Quotes Groups
memx_options_memo_sbe_v1_10.two_sided_quotes_groups.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Two Sided Quotes Groups
memx_options_memo_sbe_v1_10.two_sided_quotes_groups.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Repeating Group Dimensions: Struct of 2 fields
  index, repeating_group_dimensions = memx_options_memo_sbe_v1_10.repeating_group_dimensions.dissect(buffer, index, packet, parent)

  -- Dependency element: Num In Group
  local num_in_group = buffer(index - 1, 1):uint()

  -- Repeating: Two Sided Quotes Group
  for two_sided_quotes_group_index = 1, num_in_group do
    index, two_sided_quotes_group = memx_options_memo_sbe_v1_10.two_sided_quotes_group.dissect(buffer, index, packet, parent, two_sided_quotes_group_index)
  end

  return index
end

-- Dissect: Two Sided Quotes Groups
memx_options_memo_sbe_v1_10.two_sided_quotes_groups.dissect = function(buffer, offset, packet, parent)
  -- Optionally add dynamic struct element to protocol tree
  if show.two_sided_quotes_groups then
    local length = memx_options_memo_sbe_v1_10.two_sided_quotes_groups.size(buffer, offset)
    local range = buffer(offset, length)
    local display = memx_options_memo_sbe_v1_10.two_sided_quotes_groups.display(buffer, packet, parent)
    parent = parent:add(omi_memx_options_memo_sbe_v1_10.fields.two_sided_quotes_groups, range, display)
  end

  return memx_options_memo_sbe_v1_10.two_sided_quotes_groups.fields(buffer, offset, packet, parent)
end

-- Long Two Sided Bulk Quote Message
memx_options_memo_sbe_v1_10.long_two_sided_bulk_quote_message = {}

-- Calculate size of: Long Two Sided Bulk Quote Message
memx_options_memo_sbe_v1_10.long_two_sided_bulk_quote_message.size = function(buffer, offset)
  local index = 0

  index = index + memx_options_memo_sbe_v1_10.sending_time.size

  index = index + memx_options_memo_sbe_v1_10.clordid.size

  index = index + memx_options_memo_sbe_v1_10.time_in_force.size

  index = index + memx_options_memo_sbe_v1_10.exec_inst.size

  index = index + memx_options_memo_sbe_v1_10.trading_capacity.size

  index = index + memx_options_memo_sbe_v1_10.mtp_group_id.size

  index = index + memx_options_memo_sbe_v1_10.match_trade_prevention.size

  index = index + memx_options_memo_sbe_v1_10.cancel_group_id.size

  index = index + memx_options_memo_sbe_v1_10.risk_group_id.size

  index = index + memx_options_memo_sbe_v1_10.parties_groups.size(buffer, offset + index)

  index = index + memx_options_memo_sbe_v1_10.two_sided_quotes_groups.size(buffer, offset + index)

  return index
end

-- Display: Long Two Sided Bulk Quote Message
memx_options_memo_sbe_v1_10.long_two_sided_bulk_quote_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Long Two Sided Bulk Quote Message
memx_options_memo_sbe_v1_10.long_two_sided_bulk_quote_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Sending Time: 8 Byte Unsigned Fixed Width Integer
  index, sending_time = memx_options_memo_sbe_v1_10.sending_time.dissect(buffer, index, packet, parent)

  -- ClOrdId: 20 Byte Ascii String
  index, clordid = memx_options_memo_sbe_v1_10.clordid.dissect(buffer, index, packet, parent)

  -- Time In Force: 1 Byte Ascii String Enum with 2 values
  index, time_in_force = memx_options_memo_sbe_v1_10.time_in_force.dissect(buffer, index, packet, parent)

  -- Exec Inst: Struct of 4 fields
  index, exec_inst = memx_options_memo_sbe_v1_10.exec_inst.dissect(buffer, index, packet, parent)

  -- Trading Capacity: 1 Byte Unsigned Fixed Width Integer Enum with 8 values
  index, trading_capacity = memx_options_memo_sbe_v1_10.trading_capacity.dissect(buffer, index, packet, parent)

  -- Mtp Group Id: 2 Byte Unsigned Fixed Width Integer Nullable
  index, mtp_group_id = memx_options_memo_sbe_v1_10.mtp_group_id.dissect(buffer, index, packet, parent)

  -- Match Trade Prevention: 1 Byte Unsigned Fixed Width Integer Enum with 5 values
  index, match_trade_prevention = memx_options_memo_sbe_v1_10.match_trade_prevention.dissect(buffer, index, packet, parent)

  -- Cancel Group Id: 2 Byte Unsigned Fixed Width Integer Nullable
  index, cancel_group_id = memx_options_memo_sbe_v1_10.cancel_group_id.dissect(buffer, index, packet, parent)

  -- Risk Group Id: 2 Byte Unsigned Fixed Width Integer Nullable
  index, risk_group_id = memx_options_memo_sbe_v1_10.risk_group_id.dissect(buffer, index, packet, parent)

  -- Parties Groups: Struct of 2 fields
  index, parties_groups = memx_options_memo_sbe_v1_10.parties_groups.dissect(buffer, index, packet, parent)

  -- Two Sided Quotes Groups: Struct of 2 fields
  index, two_sided_quotes_groups = memx_options_memo_sbe_v1_10.two_sided_quotes_groups.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Long Two Sided Bulk Quote Message
memx_options_memo_sbe_v1_10.long_two_sided_bulk_quote_message.dissect = function(buffer, offset, packet, parent)
  -- Optionally add dynamic struct element to protocol tree
  if show.long_two_sided_bulk_quote_message then
    local length = memx_options_memo_sbe_v1_10.long_two_sided_bulk_quote_message.size(buffer, offset)
    local range = buffer(offset, length)
    local display = memx_options_memo_sbe_v1_10.long_two_sided_bulk_quote_message.display(buffer, packet, parent)
    parent = parent:add(omi_memx_options_memo_sbe_v1_10.fields.long_two_sided_bulk_quote_message, range, display)
  end

  return memx_options_memo_sbe_v1_10.long_two_sided_bulk_quote_message.fields(buffer, offset, packet, parent)
end

-- Short Two Sided Bulk Quote Message
memx_options_memo_sbe_v1_10.short_two_sided_bulk_quote_message = {}

-- Calculate size of: Short Two Sided Bulk Quote Message
memx_options_memo_sbe_v1_10.short_two_sided_bulk_quote_message.size = function(buffer, offset)
  local index = 0

  index = index + memx_options_memo_sbe_v1_10.sending_time.size

  index = index + memx_options_memo_sbe_v1_10.clordid.size

  index = index + memx_options_memo_sbe_v1_10.time_in_force.size

  index = index + memx_options_memo_sbe_v1_10.exec_inst.size

  index = index + memx_options_memo_sbe_v1_10.trading_capacity.size

  index = index + memx_options_memo_sbe_v1_10.mtp_group_id.size

  index = index + memx_options_memo_sbe_v1_10.match_trade_prevention.size

  index = index + memx_options_memo_sbe_v1_10.cancel_group_id.size

  index = index + memx_options_memo_sbe_v1_10.risk_group_id.size

  index = index + memx_options_memo_sbe_v1_10.parties_groups.size(buffer, offset + index)

  index = index + memx_options_memo_sbe_v1_10.two_sided_quotes_groups.size(buffer, offset + index)

  return index
end

-- Display: Short Two Sided Bulk Quote Message
memx_options_memo_sbe_v1_10.short_two_sided_bulk_quote_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Short Two Sided Bulk Quote Message
memx_options_memo_sbe_v1_10.short_two_sided_bulk_quote_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Sending Time: 8 Byte Unsigned Fixed Width Integer
  index, sending_time = memx_options_memo_sbe_v1_10.sending_time.dissect(buffer, index, packet, parent)

  -- ClOrdId: 20 Byte Ascii String
  index, clordid = memx_options_memo_sbe_v1_10.clordid.dissect(buffer, index, packet, parent)

  -- Time In Force: 1 Byte Ascii String Enum with 2 values
  index, time_in_force = memx_options_memo_sbe_v1_10.time_in_force.dissect(buffer, index, packet, parent)

  -- Exec Inst: Struct of 4 fields
  index, exec_inst = memx_options_memo_sbe_v1_10.exec_inst.dissect(buffer, index, packet, parent)

  -- Trading Capacity: 1 Byte Unsigned Fixed Width Integer Enum with 8 values
  index, trading_capacity = memx_options_memo_sbe_v1_10.trading_capacity.dissect(buffer, index, packet, parent)

  -- Mtp Group Id: 2 Byte Unsigned Fixed Width Integer Nullable
  index, mtp_group_id = memx_options_memo_sbe_v1_10.mtp_group_id.dissect(buffer, index, packet, parent)

  -- Match Trade Prevention: 1 Byte Unsigned Fixed Width Integer Enum with 5 values
  index, match_trade_prevention = memx_options_memo_sbe_v1_10.match_trade_prevention.dissect(buffer, index, packet, parent)

  -- Cancel Group Id: 2 Byte Unsigned Fixed Width Integer Nullable
  index, cancel_group_id = memx_options_memo_sbe_v1_10.cancel_group_id.dissect(buffer, index, packet, parent)

  -- Risk Group Id: 2 Byte Unsigned Fixed Width Integer Nullable
  index, risk_group_id = memx_options_memo_sbe_v1_10.risk_group_id.dissect(buffer, index, packet, parent)

  -- Parties Groups: Struct of 2 fields
  index, parties_groups = memx_options_memo_sbe_v1_10.parties_groups.dissect(buffer, index, packet, parent)

  -- Two Sided Quotes Groups: Struct of 2 fields
  index, two_sided_quotes_groups = memx_options_memo_sbe_v1_10.two_sided_quotes_groups.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Short Two Sided Bulk Quote Message
memx_options_memo_sbe_v1_10.short_two_sided_bulk_quote_message.dissect = function(buffer, offset, packet, parent)
  -- Optionally add dynamic struct element to protocol tree
  if show.short_two_sided_bulk_quote_message then
    local length = memx_options_memo_sbe_v1_10.short_two_sided_bulk_quote_message.size(buffer, offset)
    local range = buffer(offset, length)
    local display = memx_options_memo_sbe_v1_10.short_two_sided_bulk_quote_message.display(buffer, packet, parent)
    parent = parent:add(omi_memx_options_memo_sbe_v1_10.fields.short_two_sided_bulk_quote_message, range, display)
  end

  return memx_options_memo_sbe_v1_10.short_two_sided_bulk_quote_message.fields(buffer, offset, packet, parent)
end

-- New Order Single Message
memx_options_memo_sbe_v1_10.new_order_single_message = {}

-- Calculate size of: New Order Single Message
memx_options_memo_sbe_v1_10.new_order_single_message.size = function(buffer, offset)
  local index = 0

  index = index + memx_options_memo_sbe_v1_10.sending_time.size

  index = index + memx_options_memo_sbe_v1_10.clordid.size

  index = index + memx_options_memo_sbe_v1_10.security_id.size

  index = index + memx_options_memo_sbe_v1_10.side.size

  index = index + memx_options_memo_sbe_v1_10.order_qty.size

  index = index + memx_options_memo_sbe_v1_10.ord_type.size

  index = index + memx_options_memo_sbe_v1_10.price_optional.size

  index = index + memx_options_memo_sbe_v1_10.time_in_force.size

  index = index + memx_options_memo_sbe_v1_10.position_effect_optional.size

  index = index + memx_options_memo_sbe_v1_10.exec_inst.size

  index = index + memx_options_memo_sbe_v1_10.trading_capacity.size

  index = index + memx_options_memo_sbe_v1_10.reprice_frequency.size

  index = index + memx_options_memo_sbe_v1_10.reprice_behavior.size

  index = index + memx_options_memo_sbe_v1_10.mtp_group_id.size

  index = index + memx_options_memo_sbe_v1_10.match_trade_prevention.size

  index = index + memx_options_memo_sbe_v1_10.cancel_group_id.size

  index = index + memx_options_memo_sbe_v1_10.risk_group_id.size

  index = index + memx_options_memo_sbe_v1_10.parties_groups.size(buffer, offset + index)

  return index
end

-- Display: New Order Single Message
memx_options_memo_sbe_v1_10.new_order_single_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: New Order Single Message
memx_options_memo_sbe_v1_10.new_order_single_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Sending Time: 8 Byte Unsigned Fixed Width Integer
  index, sending_time = memx_options_memo_sbe_v1_10.sending_time.dissect(buffer, index, packet, parent)

  -- ClOrdId: 20 Byte Ascii String
  index, clordid = memx_options_memo_sbe_v1_10.clordid.dissect(buffer, index, packet, parent)

  -- Security Id: 8 Byte Ascii String
  index, security_id = memx_options_memo_sbe_v1_10.security_id.dissect(buffer, index, packet, parent)

  -- Side: 1 Byte Ascii String Enum with 3 values
  index, side = memx_options_memo_sbe_v1_10.side.dissect(buffer, index, packet, parent)

  -- Order Qty: 4 Byte Unsigned Fixed Width Integer
  index, order_qty = memx_options_memo_sbe_v1_10.order_qty.dissect(buffer, index, packet, parent)

  -- Ord Type: 1 Byte Ascii String Enum with 2 values
  index, ord_type = memx_options_memo_sbe_v1_10.ord_type.dissect(buffer, index, packet, parent)

  -- Price Optional: 8 Byte Unsigned Fixed Width Integer Nullable
  index, price_optional = memx_options_memo_sbe_v1_10.price_optional.dissect(buffer, index, packet, parent)

  -- Time In Force: 1 Byte Ascii String Enum with 2 values
  index, time_in_force = memx_options_memo_sbe_v1_10.time_in_force.dissect(buffer, index, packet, parent)

  -- Position Effect Optional: 1 Byte Ascii String Enum with 3 values
  index, position_effect_optional = memx_options_memo_sbe_v1_10.position_effect_optional.dissect(buffer, index, packet, parent)

  -- Exec Inst: Struct of 4 fields
  index, exec_inst = memx_options_memo_sbe_v1_10.exec_inst.dissect(buffer, index, packet, parent)

  -- Trading Capacity: 1 Byte Unsigned Fixed Width Integer Enum with 8 values
  index, trading_capacity = memx_options_memo_sbe_v1_10.trading_capacity.dissect(buffer, index, packet, parent)

  -- Reprice Frequency: 1 Byte Unsigned Fixed Width Integer Enum with 5 values
  index, reprice_frequency = memx_options_memo_sbe_v1_10.reprice_frequency.dissect(buffer, index, packet, parent)

  -- Reprice Behavior: 1 Byte Unsigned Fixed Width Integer Enum with 4 values
  index, reprice_behavior = memx_options_memo_sbe_v1_10.reprice_behavior.dissect(buffer, index, packet, parent)

  -- Mtp Group Id: 2 Byte Unsigned Fixed Width Integer Nullable
  index, mtp_group_id = memx_options_memo_sbe_v1_10.mtp_group_id.dissect(buffer, index, packet, parent)

  -- Match Trade Prevention: 1 Byte Unsigned Fixed Width Integer Enum with 5 values
  index, match_trade_prevention = memx_options_memo_sbe_v1_10.match_trade_prevention.dissect(buffer, index, packet, parent)

  -- Cancel Group Id: 2 Byte Unsigned Fixed Width Integer Nullable
  index, cancel_group_id = memx_options_memo_sbe_v1_10.cancel_group_id.dissect(buffer, index, packet, parent)

  -- Risk Group Id: 2 Byte Unsigned Fixed Width Integer Nullable
  index, risk_group_id = memx_options_memo_sbe_v1_10.risk_group_id.dissect(buffer, index, packet, parent)

  -- Parties Groups: Struct of 2 fields
  index, parties_groups = memx_options_memo_sbe_v1_10.parties_groups.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: New Order Single Message
memx_options_memo_sbe_v1_10.new_order_single_message.dissect = function(buffer, offset, packet, parent)
  -- Optionally add dynamic struct element to protocol tree
  if show.new_order_single_message then
    local length = memx_options_memo_sbe_v1_10.new_order_single_message.size(buffer, offset)
    local range = buffer(offset, length)
    local display = memx_options_memo_sbe_v1_10.new_order_single_message.display(buffer, packet, parent)
    parent = parent:add(omi_memx_options_memo_sbe_v1_10.fields.new_order_single_message, range, display)
  end

  return memx_options_memo_sbe_v1_10.new_order_single_message.fields(buffer, offset, packet, parent)
end

-- Payload
memx_options_memo_sbe_v1_10.payload = {}

-- Size: Payload
memx_options_memo_sbe_v1_10.payload.size = function(buffer, offset, template_id)
  -- Size of New Order Single Message
  if template_id == 1 then
    return memx_options_memo_sbe_v1_10.new_order_single_message.size(buffer, offset)
  end
  -- Size of Short Two Sided Bulk Quote Message
  if template_id == 2 then
    return memx_options_memo_sbe_v1_10.short_two_sided_bulk_quote_message.size(buffer, offset)
  end
  -- Size of Long Two Sided Bulk Quote Message
  if template_id == 3 then
    return memx_options_memo_sbe_v1_10.long_two_sided_bulk_quote_message.size(buffer, offset)
  end
  -- Size of Short One Sided Bulk Quote Message
  if template_id == 4 then
    return memx_options_memo_sbe_v1_10.short_one_sided_bulk_quote_message.size(buffer, offset)
  end
  -- Size of Long One Sided Bulk Quote Message
  if template_id == 5 then
    return memx_options_memo_sbe_v1_10.long_one_sided_bulk_quote_message.size(buffer, offset)
  end
  -- Size of Order Cancel Replace Request Message
  if template_id == 6 then
    return memx_options_memo_sbe_v1_10.order_cancel_replace_request_message.size
  end
  -- Size of Order Cancel Request Message
  if template_id == 7 then
    return memx_options_memo_sbe_v1_10.order_cancel_request_message.size
  end
  -- Size of Mass Cancel Request Message
  if template_id == 8 then
    return memx_options_memo_sbe_v1_10.mass_cancel_request_message.size
  end
  -- Size of Mass Cancel Clear Lockout Request Message
  if template_id == 9 then
    return memx_options_memo_sbe_v1_10.mass_cancel_clear_lockout_request_message.size
  end
  -- Size of Mass Cancel Bulk Clear All Lockouts Request Message
  if template_id == 32 then
    return memx_options_memo_sbe_v1_10.mass_cancel_bulk_clear_all_lockouts_request_message.size
  end
  -- Size of Mass Cancel Bulk Clear Lockouts By Efid Or Underlier Request Message
  if template_id == 33 then
    return memx_options_memo_sbe_v1_10.mass_cancel_bulk_clear_lockouts_by_efid_or_underlier_request_message.size
  end
  -- Size of Allocation Instruction Message
  if template_id == 10 then
    return memx_options_memo_sbe_v1_10.allocation_instruction_message.size(buffer, offset)
  end
  -- Size of Execution Report New Message
  if template_id == 11 then
    return memx_options_memo_sbe_v1_10.execution_report_new_message.size(buffer, offset)
  end
  -- Size of Execution Report Bulk Quote Pending New Message
  if template_id == 12 then
    return memx_options_memo_sbe_v1_10.execution_report_bulk_quote_pending_new_message.size(buffer, offset)
  end
  -- Size of Execution Report Bulk Quote Component New Message
  if template_id == 13 then
    return memx_options_memo_sbe_v1_10.execution_report_bulk_quote_component_new_message.size
  end
  -- Size of Execution Report Rejected Message
  if template_id == 14 then
    return memx_options_memo_sbe_v1_10.execution_report_rejected_message.size
  end
  -- Size of Execution Report Trade Message
  if template_id == 15 then
    return memx_options_memo_sbe_v1_10.execution_report_trade_message.size(buffer, offset)
  end
  -- Size of Execution Report Pending Cancel Message
  if template_id == 16 then
    return memx_options_memo_sbe_v1_10.execution_report_pending_cancel_message.size
  end
  -- Size of Execution Report Canceled Message
  if template_id == 17 then
    return memx_options_memo_sbe_v1_10.execution_report_canceled_message.size
  end
  -- Size of Execution Report Pending Replace Message
  if template_id == 18 then
    return memx_options_memo_sbe_v1_10.execution_report_pending_replace_message.size
  end
  -- Size of Execution Report Replaced Message
  if template_id == 19 then
    return memx_options_memo_sbe_v1_10.execution_report_replaced_message.size
  end
  -- Size of Execution Report Trade Correction Message
  if template_id == 20 then
    return memx_options_memo_sbe_v1_10.execution_report_trade_correction_message.size
  end
  -- Size of Execution Report Trade Break Message
  if template_id == 21 then
    return memx_options_memo_sbe_v1_10.execution_report_trade_break_message.size
  end
  -- Size of Execution Report Restatement Message
  if template_id == 22 then
    return memx_options_memo_sbe_v1_10.execution_report_restatement_message.size
  end
  -- Size of Pending Mass Cancel Message
  if template_id == 23 then
    return memx_options_memo_sbe_v1_10.pending_mass_cancel_message.size
  end
  -- Size of Mass Cancel Reject Message
  if template_id == 24 then
    return memx_options_memo_sbe_v1_10.mass_cancel_reject_message.size
  end
  -- Size of Mass Cancel Done Message
  if template_id == 25 then
    return memx_options_memo_sbe_v1_10.mass_cancel_done_message.size
  end
  -- Size of Order Cancel Reject Message
  if template_id == 26 then
    return memx_options_memo_sbe_v1_10.order_cancel_reject_message.size
  end
  -- Size of Allocation Instruction Ack Message
  if template_id == 27 then
    return memx_options_memo_sbe_v1_10.allocation_instruction_ack_message.size(buffer, offset)
  end
  -- Size of Allocation Instruction Alert Message
  if template_id == 28 then
    return memx_options_memo_sbe_v1_10.allocation_instruction_alert_message.size(buffer, offset)
  end
  -- Size of User Notification Message
  if template_id == 29 then
    return memx_options_memo_sbe_v1_10.user_notification_message.size
  end
  -- Size of Mass Cancel Clear Lockout Reject Message
  if template_id == 30 then
    return memx_options_memo_sbe_v1_10.mass_cancel_clear_lockout_reject_message.size
  end
  -- Size of Mass Cancel Clear Lockout Done Message
  if template_id == 31 then
    return memx_options_memo_sbe_v1_10.mass_cancel_clear_lockout_done_message.size
  end
  -- Size of Mass Cancel Bulk Clear Lockout Reject Message
  if template_id == 35 then
    return memx_options_memo_sbe_v1_10.mass_cancel_bulk_clear_lockout_reject_message.size
  end
  -- Size of Mass Cancel Bulk Clear Lockout Accepted Message
  if template_id == 36 then
    return memx_options_memo_sbe_v1_10.mass_cancel_bulk_clear_lockout_accepted_message.size
  end

  return 0
end

-- Display: Payload
memx_options_memo_sbe_v1_10.payload.display = function(buffer, offset, packet, parent)
  return ""
end

-- Dissect Branches: Payload
memx_options_memo_sbe_v1_10.payload.branches = function(buffer, offset, packet, parent, template_id)
  -- Dissect New Order Single Message
  if template_id == 1 then
    return memx_options_memo_sbe_v1_10.new_order_single_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Short Two Sided Bulk Quote Message
  if template_id == 2 then
    return memx_options_memo_sbe_v1_10.short_two_sided_bulk_quote_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Long Two Sided Bulk Quote Message
  if template_id == 3 then
    return memx_options_memo_sbe_v1_10.long_two_sided_bulk_quote_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Short One Sided Bulk Quote Message
  if template_id == 4 then
    return memx_options_memo_sbe_v1_10.short_one_sided_bulk_quote_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Long One Sided Bulk Quote Message
  if template_id == 5 then
    return memx_options_memo_sbe_v1_10.long_one_sided_bulk_quote_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Order Cancel Replace Request Message
  if template_id == 6 then
    return memx_options_memo_sbe_v1_10.order_cancel_replace_request_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Order Cancel Request Message
  if template_id == 7 then
    return memx_options_memo_sbe_v1_10.order_cancel_request_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Mass Cancel Request Message
  if template_id == 8 then
    return memx_options_memo_sbe_v1_10.mass_cancel_request_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Mass Cancel Clear Lockout Request Message
  if template_id == 9 then
    return memx_options_memo_sbe_v1_10.mass_cancel_clear_lockout_request_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Mass Cancel Bulk Clear All Lockouts Request Message
  if template_id == 32 then
    return memx_options_memo_sbe_v1_10.mass_cancel_bulk_clear_all_lockouts_request_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Mass Cancel Bulk Clear Lockouts By Efid Or Underlier Request Message
  if template_id == 33 then
    return memx_options_memo_sbe_v1_10.mass_cancel_bulk_clear_lockouts_by_efid_or_underlier_request_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Allocation Instruction Message
  if template_id == 10 then
    return memx_options_memo_sbe_v1_10.allocation_instruction_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Execution Report New Message
  if template_id == 11 then
    return memx_options_memo_sbe_v1_10.execution_report_new_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Execution Report Bulk Quote Pending New Message
  if template_id == 12 then
    return memx_options_memo_sbe_v1_10.execution_report_bulk_quote_pending_new_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Execution Report Bulk Quote Component New Message
  if template_id == 13 then
    return memx_options_memo_sbe_v1_10.execution_report_bulk_quote_component_new_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Execution Report Rejected Message
  if template_id == 14 then
    return memx_options_memo_sbe_v1_10.execution_report_rejected_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Execution Report Trade Message
  if template_id == 15 then
    return memx_options_memo_sbe_v1_10.execution_report_trade_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Execution Report Pending Cancel Message
  if template_id == 16 then
    return memx_options_memo_sbe_v1_10.execution_report_pending_cancel_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Execution Report Canceled Message
  if template_id == 17 then
    return memx_options_memo_sbe_v1_10.execution_report_canceled_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Execution Report Pending Replace Message
  if template_id == 18 then
    return memx_options_memo_sbe_v1_10.execution_report_pending_replace_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Execution Report Replaced Message
  if template_id == 19 then
    return memx_options_memo_sbe_v1_10.execution_report_replaced_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Execution Report Trade Correction Message
  if template_id == 20 then
    return memx_options_memo_sbe_v1_10.execution_report_trade_correction_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Execution Report Trade Break Message
  if template_id == 21 then
    return memx_options_memo_sbe_v1_10.execution_report_trade_break_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Execution Report Restatement Message
  if template_id == 22 then
    return memx_options_memo_sbe_v1_10.execution_report_restatement_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Pending Mass Cancel Message
  if template_id == 23 then
    return memx_options_memo_sbe_v1_10.pending_mass_cancel_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Mass Cancel Reject Message
  if template_id == 24 then
    return memx_options_memo_sbe_v1_10.mass_cancel_reject_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Mass Cancel Done Message
  if template_id == 25 then
    return memx_options_memo_sbe_v1_10.mass_cancel_done_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Order Cancel Reject Message
  if template_id == 26 then
    return memx_options_memo_sbe_v1_10.order_cancel_reject_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Allocation Instruction Ack Message
  if template_id == 27 then
    return memx_options_memo_sbe_v1_10.allocation_instruction_ack_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Allocation Instruction Alert Message
  if template_id == 28 then
    return memx_options_memo_sbe_v1_10.allocation_instruction_alert_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect User Notification Message
  if template_id == 29 then
    return memx_options_memo_sbe_v1_10.user_notification_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Mass Cancel Clear Lockout Reject Message
  if template_id == 30 then
    return memx_options_memo_sbe_v1_10.mass_cancel_clear_lockout_reject_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Mass Cancel Clear Lockout Done Message
  if template_id == 31 then
    return memx_options_memo_sbe_v1_10.mass_cancel_clear_lockout_done_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Mass Cancel Bulk Clear Lockout Reject Message
  if template_id == 35 then
    return memx_options_memo_sbe_v1_10.mass_cancel_bulk_clear_lockout_reject_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Mass Cancel Bulk Clear Lockout Accepted Message
  if template_id == 36 then
    return memx_options_memo_sbe_v1_10.mass_cancel_bulk_clear_lockout_accepted_message.dissect(buffer, offset, packet, parent)
  end

  return offset
end

-- Dissect: Payload
memx_options_memo_sbe_v1_10.payload.dissect = function(buffer, offset, packet, parent, template_id)
  if not show.payload then
    return memx_options_memo_sbe_v1_10.payload.branches(buffer, offset, packet, parent, template_id)
  end

  -- Calculate size and check that branch is not empty
  local size = memx_options_memo_sbe_v1_10.payload.size(buffer, offset, template_id)
  if size == 0 then
    return offset
  end

  -- Dissect Element
  local range = buffer(offset, size)
  local display = memx_options_memo_sbe_v1_10.payload.display(buffer, packet, parent)
  local element = parent:add(omi_memx_options_memo_sbe_v1_10.fields.payload, range, display)

  return memx_options_memo_sbe_v1_10.payload.branches(buffer, offset, packet, parent, template_id)
end

-- Version
memx_options_memo_sbe_v1_10.version = {}

-- Size: Version
memx_options_memo_sbe_v1_10.version.size = 2

-- Display: Version
memx_options_memo_sbe_v1_10.version.display = function(value)
  if value == 266 then
    return "Version: Version 1.10"
  end

  return "Version: Unknown("..value..")"
end

-- Dissect: Version
memx_options_memo_sbe_v1_10.version.dissect = function(buffer, offset, packet, parent)
  local length = memx_options_memo_sbe_v1_10.version.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = memx_options_memo_sbe_v1_10.version.display(value, buffer, offset, packet, parent)

  parent:add(omi_memx_options_memo_sbe_v1_10.fields.version, range, value, display)

  return offset + length, value
end

-- Schema Id
memx_options_memo_sbe_v1_10.schema_id = {}

-- Size: Schema Id
memx_options_memo_sbe_v1_10.schema_id.size = 1

-- Display: Schema Id
memx_options_memo_sbe_v1_10.schema_id.display = function(value)
  if value == 9 then
    return "Schema Id: SchemaId"
  end

  return "Schema Id: Unknown("..value..")"
end

-- Dissect: Schema Id
memx_options_memo_sbe_v1_10.schema_id.dissect = function(buffer, offset, packet, parent)
  local length = memx_options_memo_sbe_v1_10.schema_id.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = memx_options_memo_sbe_v1_10.schema_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_memx_options_memo_sbe_v1_10.fields.schema_id, range, value, display)

  return offset + length, value
end

-- Template Id
memx_options_memo_sbe_v1_10.template_id = {}

-- Size: Template Id
memx_options_memo_sbe_v1_10.template_id.size = 1

-- Display: Template Id
memx_options_memo_sbe_v1_10.template_id.display = function(value)
  if value == 1 then
    return "Template Id: New Order Single Message (1)"
  end
  if value == 2 then
    return "Template Id: Short Two Sided Bulk Quote Message (2)"
  end
  if value == 3 then
    return "Template Id: Long Two Sided Bulk Quote Message (3)"
  end
  if value == 4 then
    return "Template Id: Short One Sided Bulk Quote Message (4)"
  end
  if value == 5 then
    return "Template Id: Long One Sided Bulk Quote Message (5)"
  end
  if value == 6 then
    return "Template Id: Order Cancel Replace Request Message (6)"
  end
  if value == 7 then
    return "Template Id: Order Cancel Request Message (7)"
  end
  if value == 8 then
    return "Template Id: Mass Cancel Request Message (8)"
  end
  if value == 9 then
    return "Template Id: Mass Cancel Clear Lockout Request Message (9)"
  end
  if value == 32 then
    return "Template Id: Mass Cancel Bulk Clear All Lockouts Request Message (32)"
  end
  if value == 33 then
    return "Template Id: Mass Cancel Bulk Clear Lockouts By Efid Or Underlier Request Message (33)"
  end
  if value == 10 then
    return "Template Id: Allocation Instruction Message (10)"
  end
  if value == 11 then
    return "Template Id: Execution Report New Message (11)"
  end
  if value == 12 then
    return "Template Id: Execution Report Bulk Quote Pending New Message (12)"
  end
  if value == 13 then
    return "Template Id: Execution Report Bulk Quote Component New Message (13)"
  end
  if value == 14 then
    return "Template Id: Execution Report Rejected Message (14)"
  end
  if value == 15 then
    return "Template Id: Execution Report Trade Message (15)"
  end
  if value == 16 then
    return "Template Id: Execution Report Pending Cancel Message (16)"
  end
  if value == 17 then
    return "Template Id: Execution Report Canceled Message (17)"
  end
  if value == 18 then
    return "Template Id: Execution Report Pending Replace Message (18)"
  end
  if value == 19 then
    return "Template Id: Execution Report Replaced Message (19)"
  end
  if value == 20 then
    return "Template Id: Execution Report Trade Correction Message (20)"
  end
  if value == 21 then
    return "Template Id: Execution Report Trade Break Message (21)"
  end
  if value == 22 then
    return "Template Id: Execution Report Restatement Message (22)"
  end
  if value == 23 then
    return "Template Id: Pending Mass Cancel Message (23)"
  end
  if value == 24 then
    return "Template Id: Mass Cancel Reject Message (24)"
  end
  if value == 25 then
    return "Template Id: Mass Cancel Done Message (25)"
  end
  if value == 26 then
    return "Template Id: Order Cancel Reject Message (26)"
  end
  if value == 27 then
    return "Template Id: Allocation Instruction Ack Message (27)"
  end
  if value == 28 then
    return "Template Id: Allocation Instruction Alert Message (28)"
  end
  if value == 29 then
    return "Template Id: User Notification Message (29)"
  end
  if value == 30 then
    return "Template Id: Mass Cancel Clear Lockout Reject Message (30)"
  end
  if value == 31 then
    return "Template Id: Mass Cancel Clear Lockout Done Message (31)"
  end
  if value == 35 then
    return "Template Id: Mass Cancel Bulk Clear Lockout Reject Message (35)"
  end
  if value == 36 then
    return "Template Id: Mass Cancel Bulk Clear Lockout Accepted Message (36)"
  end

  return "Template Id: Unknown("..value..")"
end

-- Dissect: Template Id
memx_options_memo_sbe_v1_10.template_id.dissect = function(buffer, offset, packet, parent)
  local length = memx_options_memo_sbe_v1_10.template_id.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = memx_options_memo_sbe_v1_10.template_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_memx_options_memo_sbe_v1_10.fields.template_id, range, value, display)

  return offset + length, value
end

-- Block Length
memx_options_memo_sbe_v1_10.block_length = {}

-- Size: Block Length
memx_options_memo_sbe_v1_10.block_length.size = 2

-- Display: Block Length
memx_options_memo_sbe_v1_10.block_length.display = function(value)
  return "Block Length: "..value
end

-- Dissect: Block Length
memx_options_memo_sbe_v1_10.block_length.dissect = function(buffer, offset, packet, parent)
  local length = memx_options_memo_sbe_v1_10.block_length.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = memx_options_memo_sbe_v1_10.block_length.display(value, buffer, offset, packet, parent)

  parent:add(omi_memx_options_memo_sbe_v1_10.fields.block_length, range, value, display)

  return offset + length, value
end

-- Sbe Header
memx_options_memo_sbe_v1_10.sbe_header = {}

-- Size: Sbe Header
memx_options_memo_sbe_v1_10.sbe_header.size =
  memx_options_memo_sbe_v1_10.block_length.size + 
  memx_options_memo_sbe_v1_10.template_id.size + 
  memx_options_memo_sbe_v1_10.schema_id.size + 
  memx_options_memo_sbe_v1_10.version.size

-- Display: Sbe Header
memx_options_memo_sbe_v1_10.sbe_header.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Sbe Header
memx_options_memo_sbe_v1_10.sbe_header.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Block Length: 2 Byte Unsigned Fixed Width Integer
  index, block_length = memx_options_memo_sbe_v1_10.block_length.dissect(buffer, index, packet, parent)

  -- Template Id: 1 Byte Unsigned Fixed Width Integer Enum with 35 values
  index, template_id = memx_options_memo_sbe_v1_10.template_id.dissect(buffer, index, packet, parent)

  -- Schema Id: 1 Byte Unsigned Fixed Width Integer Static
  index, schema_id = memx_options_memo_sbe_v1_10.schema_id.dissect(buffer, index, packet, parent)

  -- Version: 2 Byte Unsigned Fixed Width Integer Static
  index, version = memx_options_memo_sbe_v1_10.version.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Sbe Header
memx_options_memo_sbe_v1_10.sbe_header.dissect = function(buffer, offset, packet, parent)
  if show.sbe_header then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_memx_options_memo_sbe_v1_10.fields.sbe_header, buffer(offset, 0))
    local index = memx_options_memo_sbe_v1_10.sbe_header.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = memx_options_memo_sbe_v1_10.sbe_header.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return memx_options_memo_sbe_v1_10.sbe_header.fields(buffer, offset, packet, parent)
  end
end

-- Sbe Message
memx_options_memo_sbe_v1_10.sbe_message = {}

-- Calculate size of: Sbe Message
memx_options_memo_sbe_v1_10.sbe_message.size = function(buffer, offset)
  local index = 0

  index = index + memx_options_memo_sbe_v1_10.sbe_header.size

  -- Calculate runtime size of Payload field
  local payload_offset = offset + index
  local payload_type = buffer(payload_offset - 4, 1):uint()
  index = index + memx_options_memo_sbe_v1_10.payload.size(buffer, payload_offset, payload_type)

  return index
end

-- Display: Sbe Message
memx_options_memo_sbe_v1_10.sbe_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Sbe Message
memx_options_memo_sbe_v1_10.sbe_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Sbe Header: Struct of 4 fields
  index, sbe_header = memx_options_memo_sbe_v1_10.sbe_header.dissect(buffer, index, packet, parent)

  -- Dependency element: Template Id
  local template_id = buffer(index - 4, 1):uint()

  -- Payload: Runtime Type with 35 branches
  index = memx_options_memo_sbe_v1_10.payload.dissect(buffer, index, packet, parent, template_id)

  return index
end

-- Dissect: Sbe Message
memx_options_memo_sbe_v1_10.sbe_message.dissect = function(buffer, offset, packet, parent)
  -- Optionally add dynamic struct element to protocol tree
  if show.sbe_message then
    local length = memx_options_memo_sbe_v1_10.sbe_message.size(buffer, offset)
    local range = buffer(offset, length)
    local display = memx_options_memo_sbe_v1_10.sbe_message.display(buffer, packet, parent)
    parent = parent:add(omi_memx_options_memo_sbe_v1_10.fields.sbe_message, range, display)
  end

  return memx_options_memo_sbe_v1_10.sbe_message.fields(buffer, offset, packet, parent)
end

-- Sequenced Message
memx_options_memo_sbe_v1_10.sequenced_message = {}

-- Calculate size of: Sequenced Message
memx_options_memo_sbe_v1_10.sequenced_message.size = function(buffer, offset)
  local index = 0

  index = index + memx_options_memo_sbe_v1_10.sbe_message.size(buffer, offset + index)

  return index
end

-- Display: Sequenced Message
memx_options_memo_sbe_v1_10.sequenced_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Sequenced Message
memx_options_memo_sbe_v1_10.sequenced_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Sbe Message: Struct of 2 fields
  index, sbe_message = memx_options_memo_sbe_v1_10.sbe_message.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Sequenced Message
memx_options_memo_sbe_v1_10.sequenced_message.dissect = function(buffer, offset, packet, parent)
  -- Optionally add dynamic struct element to protocol tree
  if show.sequenced_message then
    local length = memx_options_memo_sbe_v1_10.sequenced_message.size(buffer, offset)
    local range = buffer(offset, length)
    local display = memx_options_memo_sbe_v1_10.sequenced_message.display(buffer, packet, parent)
    parent = parent:add(omi_memx_options_memo_sbe_v1_10.fields.sequenced_message, range, display)
  end

  return memx_options_memo_sbe_v1_10.sequenced_message.fields(buffer, offset, packet, parent)
end

-- Total Sequence Count
memx_options_memo_sbe_v1_10.total_sequence_count = {}

-- Size: Total Sequence Count
memx_options_memo_sbe_v1_10.total_sequence_count.size = 8

-- Display: Total Sequence Count
memx_options_memo_sbe_v1_10.total_sequence_count.display = function(value)
  return "Total Sequence Count: "..value
end

-- Dissect: Total Sequence Count
memx_options_memo_sbe_v1_10.total_sequence_count.dissect = function(buffer, offset, packet, parent)
  local length = memx_options_memo_sbe_v1_10.total_sequence_count.size
  local range = buffer(offset, length)
  local value = range:uint64()
  local display = memx_options_memo_sbe_v1_10.total_sequence_count.display(value, buffer, offset, packet, parent)

  parent:add(omi_memx_options_memo_sbe_v1_10.fields.total_sequence_count, range, value, display)

  return offset + length, value
end

-- Stream Complete Message
memx_options_memo_sbe_v1_10.stream_complete_message = {}

-- Size: Stream Complete Message
memx_options_memo_sbe_v1_10.stream_complete_message.size =
  memx_options_memo_sbe_v1_10.total_sequence_count.size

-- Display: Stream Complete Message
memx_options_memo_sbe_v1_10.stream_complete_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Stream Complete Message
memx_options_memo_sbe_v1_10.stream_complete_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Total Sequence Count: 8 Byte Unsigned Fixed Width Integer
  index, total_sequence_count = memx_options_memo_sbe_v1_10.total_sequence_count.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Stream Complete Message
memx_options_memo_sbe_v1_10.stream_complete_message.dissect = function(buffer, offset, packet, parent)
  if show.stream_complete_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_memx_options_memo_sbe_v1_10.fields.stream_complete_message, buffer(offset, 0))
    local index = memx_options_memo_sbe_v1_10.stream_complete_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = memx_options_memo_sbe_v1_10.stream_complete_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return memx_options_memo_sbe_v1_10.stream_complete_message.fields(buffer, offset, packet, parent)
  end
end

-- Stream Reject Code
memx_options_memo_sbe_v1_10.stream_reject_code = {}

-- Size: Stream Reject Code
memx_options_memo_sbe_v1_10.stream_reject_code.size = 1

-- Display: Stream Reject Code
memx_options_memo_sbe_v1_10.stream_reject_code.display = function(value)
  if value == "R" then
    return "Stream Reject Code: Stream Requests Are Not Allowed (R)"
  end
  if value == "P" then
    return "Stream Reject Code: Not The Active Session (P)"
  end
  if value == "S" then
    return "Stream Reject Code: Sequence Number Out Of Range (S)"
  end

  return "Stream Reject Code: Unknown("..value..")"
end

-- Dissect: Stream Reject Code
memx_options_memo_sbe_v1_10.stream_reject_code.dissect = function(buffer, offset, packet, parent)
  local length = memx_options_memo_sbe_v1_10.stream_reject_code.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = memx_options_memo_sbe_v1_10.stream_reject_code.display(value, buffer, offset, packet, parent)

  parent:add(omi_memx_options_memo_sbe_v1_10.fields.stream_reject_code, range, value, display)

  return offset + length, value
end

-- Stream Rejected Message
memx_options_memo_sbe_v1_10.stream_rejected_message = {}

-- Size: Stream Rejected Message
memx_options_memo_sbe_v1_10.stream_rejected_message.size =
  memx_options_memo_sbe_v1_10.stream_reject_code.size

-- Display: Stream Rejected Message
memx_options_memo_sbe_v1_10.stream_rejected_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Stream Rejected Message
memx_options_memo_sbe_v1_10.stream_rejected_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Stream Reject Code: 1 Byte Ascii String Enum with 3 values
  index, stream_reject_code = memx_options_memo_sbe_v1_10.stream_reject_code.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Stream Rejected Message
memx_options_memo_sbe_v1_10.stream_rejected_message.dissect = function(buffer, offset, packet, parent)
  if show.stream_rejected_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_memx_options_memo_sbe_v1_10.fields.stream_rejected_message, buffer(offset, 0))
    local index = memx_options_memo_sbe_v1_10.stream_rejected_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = memx_options_memo_sbe_v1_10.stream_rejected_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return memx_options_memo_sbe_v1_10.stream_rejected_message.fields(buffer, offset, packet, parent)
  end
end

-- Max Sequence Number
memx_options_memo_sbe_v1_10.max_sequence_number = {}

-- Size: Max Sequence Number
memx_options_memo_sbe_v1_10.max_sequence_number.size = 8

-- Display: Max Sequence Number
memx_options_memo_sbe_v1_10.max_sequence_number.display = function(value)
  return "Max Sequence Number: "..value
end

-- Dissect: Max Sequence Number
memx_options_memo_sbe_v1_10.max_sequence_number.dissect = function(buffer, offset, packet, parent)
  local length = memx_options_memo_sbe_v1_10.max_sequence_number.size
  local range = buffer(offset, length)
  local value = range:uint64()
  local display = memx_options_memo_sbe_v1_10.max_sequence_number.display(value, buffer, offset, packet, parent)

  parent:add(omi_memx_options_memo_sbe_v1_10.fields.max_sequence_number, range, value, display)

  return offset + length, value
end

-- Next Sequence Number
memx_options_memo_sbe_v1_10.next_sequence_number = {}

-- Size: Next Sequence Number
memx_options_memo_sbe_v1_10.next_sequence_number.size = 8

-- Display: Next Sequence Number
memx_options_memo_sbe_v1_10.next_sequence_number.display = function(value)
  return "Next Sequence Number: "..value
end

-- Dissect: Next Sequence Number
memx_options_memo_sbe_v1_10.next_sequence_number.dissect = function(buffer, offset, packet, parent)
  local length = memx_options_memo_sbe_v1_10.next_sequence_number.size
  local range = buffer(offset, length)
  local value = range:uint64()
  local display = memx_options_memo_sbe_v1_10.next_sequence_number.display(value, buffer, offset, packet, parent)

  parent:add(omi_memx_options_memo_sbe_v1_10.fields.next_sequence_number, range, value, display)

  return offset + length, value
end

-- Stream Begin Message
memx_options_memo_sbe_v1_10.stream_begin_message = {}

-- Size: Stream Begin Message
memx_options_memo_sbe_v1_10.stream_begin_message.size =
  memx_options_memo_sbe_v1_10.next_sequence_number.size + 
  memx_options_memo_sbe_v1_10.max_sequence_number.size

-- Display: Stream Begin Message
memx_options_memo_sbe_v1_10.stream_begin_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Stream Begin Message
memx_options_memo_sbe_v1_10.stream_begin_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Next Sequence Number: 8 Byte Unsigned Fixed Width Integer
  index, next_sequence_number = memx_options_memo_sbe_v1_10.next_sequence_number.dissect(buffer, index, packet, parent)

  -- Max Sequence Number: 8 Byte Unsigned Fixed Width Integer
  index, max_sequence_number = memx_options_memo_sbe_v1_10.max_sequence_number.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Stream Begin Message
memx_options_memo_sbe_v1_10.stream_begin_message.dissect = function(buffer, offset, packet, parent)
  if show.stream_begin_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_memx_options_memo_sbe_v1_10.fields.stream_begin_message, buffer(offset, 0))
    local index = memx_options_memo_sbe_v1_10.stream_begin_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = memx_options_memo_sbe_v1_10.stream_begin_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return memx_options_memo_sbe_v1_10.stream_begin_message.fields(buffer, offset, packet, parent)
  end
end

-- Message Count
memx_options_memo_sbe_v1_10.message_count = {}

-- Size: Message Count
memx_options_memo_sbe_v1_10.message_count.size = 8

-- Display: Message Count
memx_options_memo_sbe_v1_10.message_count.display = function(value)
  return "Message Count: "..value
end

-- Dissect: Message Count
memx_options_memo_sbe_v1_10.message_count.dissect = function(buffer, offset, packet, parent)
  local length = memx_options_memo_sbe_v1_10.message_count.size
  local range = buffer(offset, length)
  local value = range:uint64()
  local display = memx_options_memo_sbe_v1_10.message_count.display(value, buffer, offset, packet, parent)

  parent:add(omi_memx_options_memo_sbe_v1_10.fields.message_count, range, value, display)

  return offset + length, value
end

-- Replay Complete Message
memx_options_memo_sbe_v1_10.replay_complete_message = {}

-- Size: Replay Complete Message
memx_options_memo_sbe_v1_10.replay_complete_message.size =
  memx_options_memo_sbe_v1_10.message_count.size

-- Display: Replay Complete Message
memx_options_memo_sbe_v1_10.replay_complete_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Replay Complete Message
memx_options_memo_sbe_v1_10.replay_complete_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Message Count: 8 Byte Unsigned Fixed Width Integer
  index, message_count = memx_options_memo_sbe_v1_10.message_count.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Replay Complete Message
memx_options_memo_sbe_v1_10.replay_complete_message.dissect = function(buffer, offset, packet, parent)
  if show.replay_complete_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_memx_options_memo_sbe_v1_10.fields.replay_complete_message, buffer(offset, 0))
    local index = memx_options_memo_sbe_v1_10.replay_complete_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = memx_options_memo_sbe_v1_10.replay_complete_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return memx_options_memo_sbe_v1_10.replay_complete_message.fields(buffer, offset, packet, parent)
  end
end

-- Replay Reject Code
memx_options_memo_sbe_v1_10.replay_reject_code = {}

-- Size: Replay Reject Code
memx_options_memo_sbe_v1_10.replay_reject_code.size = 1

-- Display: Replay Reject Code
memx_options_memo_sbe_v1_10.replay_reject_code.display = function(value)
  if value == "R" then
    return "Replay Reject Code: Replay Requests Are Not Allowed (R)"
  end
  if value == "A" then
    return "Replay Reject Code: Replay All Requests Are Not Allowed (A)"
  end
  if value == "P" then
    return "Replay Reject Code: Not The Active Session (P)"
  end
  if value == "S" then
    return "Replay Reject Code: Sequence Number Out Of Range (S)"
  end

  return "Replay Reject Code: Unknown("..value..")"
end

-- Dissect: Replay Reject Code
memx_options_memo_sbe_v1_10.replay_reject_code.dissect = function(buffer, offset, packet, parent)
  local length = memx_options_memo_sbe_v1_10.replay_reject_code.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = memx_options_memo_sbe_v1_10.replay_reject_code.display(value, buffer, offset, packet, parent)

  parent:add(omi_memx_options_memo_sbe_v1_10.fields.replay_reject_code, range, value, display)

  return offset + length, value
end

-- Replay Rejected Message
memx_options_memo_sbe_v1_10.replay_rejected_message = {}

-- Size: Replay Rejected Message
memx_options_memo_sbe_v1_10.replay_rejected_message.size =
  memx_options_memo_sbe_v1_10.replay_reject_code.size

-- Display: Replay Rejected Message
memx_options_memo_sbe_v1_10.replay_rejected_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Replay Rejected Message
memx_options_memo_sbe_v1_10.replay_rejected_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Replay Reject Code: 1 Byte Ascii String Enum with 4 values
  index, replay_reject_code = memx_options_memo_sbe_v1_10.replay_reject_code.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Replay Rejected Message
memx_options_memo_sbe_v1_10.replay_rejected_message.dissect = function(buffer, offset, packet, parent)
  if show.replay_rejected_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_memx_options_memo_sbe_v1_10.fields.replay_rejected_message, buffer(offset, 0))
    local index = memx_options_memo_sbe_v1_10.replay_rejected_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = memx_options_memo_sbe_v1_10.replay_rejected_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return memx_options_memo_sbe_v1_10.replay_rejected_message.fields(buffer, offset, packet, parent)
  end
end

-- Pending Message Count
memx_options_memo_sbe_v1_10.pending_message_count = {}

-- Size: Pending Message Count
memx_options_memo_sbe_v1_10.pending_message_count.size = 4

-- Display: Pending Message Count
memx_options_memo_sbe_v1_10.pending_message_count.display = function(value)
  return "Pending Message Count: "..value
end

-- Dissect: Pending Message Count
memx_options_memo_sbe_v1_10.pending_message_count.dissect = function(buffer, offset, packet, parent)
  local length = memx_options_memo_sbe_v1_10.pending_message_count.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = memx_options_memo_sbe_v1_10.pending_message_count.display(value, buffer, offset, packet, parent)

  parent:add(omi_memx_options_memo_sbe_v1_10.fields.pending_message_count, range, value, display)

  return offset + length, value
end

-- Replay Begin Message
memx_options_memo_sbe_v1_10.replay_begin_message = {}

-- Size: Replay Begin Message
memx_options_memo_sbe_v1_10.replay_begin_message.size =
  memx_options_memo_sbe_v1_10.next_sequence_number.size + 
  memx_options_memo_sbe_v1_10.pending_message_count.size

-- Display: Replay Begin Message
memx_options_memo_sbe_v1_10.replay_begin_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Replay Begin Message
memx_options_memo_sbe_v1_10.replay_begin_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Next Sequence Number: 8 Byte Unsigned Fixed Width Integer
  index, next_sequence_number = memx_options_memo_sbe_v1_10.next_sequence_number.dissect(buffer, index, packet, parent)

  -- Pending Message Count: 4 Byte Unsigned Fixed Width Integer
  index, pending_message_count = memx_options_memo_sbe_v1_10.pending_message_count.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Replay Begin Message
memx_options_memo_sbe_v1_10.replay_begin_message.dissect = function(buffer, offset, packet, parent)
  if show.replay_begin_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_memx_options_memo_sbe_v1_10.fields.replay_begin_message, buffer(offset, 0))
    local index = memx_options_memo_sbe_v1_10.replay_begin_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = memx_options_memo_sbe_v1_10.replay_begin_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return memx_options_memo_sbe_v1_10.replay_begin_message.fields(buffer, offset, packet, parent)
  end
end

-- Session Id
memx_options_memo_sbe_v1_10.session_id = {}

-- Size: Session Id
memx_options_memo_sbe_v1_10.session_id.size = 8

-- Display: Session Id
memx_options_memo_sbe_v1_10.session_id.display = function(value)
  return "Session Id: "..value
end

-- Dissect: Session Id
memx_options_memo_sbe_v1_10.session_id.dissect = function(buffer, offset, packet, parent)
  local length = memx_options_memo_sbe_v1_10.session_id.size
  local range = buffer(offset, length)
  local value = range:uint64()
  local display = memx_options_memo_sbe_v1_10.session_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_memx_options_memo_sbe_v1_10.fields.session_id, range, value, display)

  return offset + length, value
end

-- Start Of Session Message
memx_options_memo_sbe_v1_10.start_of_session_message = {}

-- Size: Start Of Session Message
memx_options_memo_sbe_v1_10.start_of_session_message.size =
  memx_options_memo_sbe_v1_10.session_id.size

-- Display: Start Of Session Message
memx_options_memo_sbe_v1_10.start_of_session_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Start Of Session Message
memx_options_memo_sbe_v1_10.start_of_session_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Session Id: 8 Byte Unsigned Fixed Width Integer
  index, session_id = memx_options_memo_sbe_v1_10.session_id.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Start Of Session Message
memx_options_memo_sbe_v1_10.start_of_session_message.dissect = function(buffer, offset, packet, parent)
  if show.start_of_session_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_memx_options_memo_sbe_v1_10.fields.start_of_session_message, buffer(offset, 0))
    local index = memx_options_memo_sbe_v1_10.start_of_session_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = memx_options_memo_sbe_v1_10.start_of_session_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return memx_options_memo_sbe_v1_10.start_of_session_message.fields(buffer, offset, packet, parent)
  end
end

-- Login Reject Code
memx_options_memo_sbe_v1_10.login_reject_code = {}

-- Size: Login Reject Code
memx_options_memo_sbe_v1_10.login_reject_code.size = 1

-- Display: Login Reject Code
memx_options_memo_sbe_v1_10.login_reject_code.display = function(value)
  if value == "T" then
    return "Login Reject Code: Malformed Token (T)"
  end
  if value == "U" then
    return "Login Reject Code: Token Type Unsupported (U)"
  end
  if value == "V" then
    return "Login Reject Code: Token Type Invalid (V)"
  end
  if value == "A" then
    return "Login Reject Code: Authorization Failed (A)"
  end

  return "Login Reject Code: Unknown("..value..")"
end

-- Dissect: Login Reject Code
memx_options_memo_sbe_v1_10.login_reject_code.dissect = function(buffer, offset, packet, parent)
  local length = memx_options_memo_sbe_v1_10.login_reject_code.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = memx_options_memo_sbe_v1_10.login_reject_code.display(value, buffer, offset, packet, parent)

  parent:add(omi_memx_options_memo_sbe_v1_10.fields.login_reject_code, range, value, display)

  return offset + length, value
end

-- Login Rejected Message
memx_options_memo_sbe_v1_10.login_rejected_message = {}

-- Size: Login Rejected Message
memx_options_memo_sbe_v1_10.login_rejected_message.size =
  memx_options_memo_sbe_v1_10.login_reject_code.size

-- Display: Login Rejected Message
memx_options_memo_sbe_v1_10.login_rejected_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Login Rejected Message
memx_options_memo_sbe_v1_10.login_rejected_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Login Reject Code: 1 Byte Ascii String Enum with 4 values
  index, login_reject_code = memx_options_memo_sbe_v1_10.login_reject_code.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Login Rejected Message
memx_options_memo_sbe_v1_10.login_rejected_message.dissect = function(buffer, offset, packet, parent)
  if show.login_rejected_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_memx_options_memo_sbe_v1_10.fields.login_rejected_message, buffer(offset, 0))
    local index = memx_options_memo_sbe_v1_10.login_rejected_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = memx_options_memo_sbe_v1_10.login_rejected_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return memx_options_memo_sbe_v1_10.login_rejected_message.fields(buffer, offset, packet, parent)
  end
end

-- Supported Request Mode
memx_options_memo_sbe_v1_10.supported_request_mode = {}

-- Size: Supported Request Mode
memx_options_memo_sbe_v1_10.supported_request_mode.size = 1

-- Display: Supported Request Mode
memx_options_memo_sbe_v1_10.supported_request_mode.display = function(value)
  if value == "S" then
    return "Supported Request Mode: Stream (S)"
  end
  if value == "R" then
    return "Supported Request Mode: Replay (R)"
  end
  if value == "T" then
    return "Supported Request Mode: Snapshot Mode (T)"
  end

  return "Supported Request Mode: Unknown("..value..")"
end

-- Dissect: Supported Request Mode
memx_options_memo_sbe_v1_10.supported_request_mode.dissect = function(buffer, offset, packet, parent)
  local length = memx_options_memo_sbe_v1_10.supported_request_mode.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = memx_options_memo_sbe_v1_10.supported_request_mode.display(value, buffer, offset, packet, parent)

  parent:add(omi_memx_options_memo_sbe_v1_10.fields.supported_request_mode, range, value, display)

  return offset + length, value
end

-- Login Accepted Message
memx_options_memo_sbe_v1_10.login_accepted_message = {}

-- Size: Login Accepted Message
memx_options_memo_sbe_v1_10.login_accepted_message.size =
  memx_options_memo_sbe_v1_10.supported_request_mode.size

-- Display: Login Accepted Message
memx_options_memo_sbe_v1_10.login_accepted_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Login Accepted Message
memx_options_memo_sbe_v1_10.login_accepted_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Supported Request Mode: 1 Byte Ascii String Enum with 3 values
  index, supported_request_mode = memx_options_memo_sbe_v1_10.supported_request_mode.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Login Accepted Message
memx_options_memo_sbe_v1_10.login_accepted_message.dissect = function(buffer, offset, packet, parent)
  if show.login_accepted_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_memx_options_memo_sbe_v1_10.fields.login_accepted_message, buffer(offset, 0))
    local index = memx_options_memo_sbe_v1_10.login_accepted_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = memx_options_memo_sbe_v1_10.login_accepted_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return memx_options_memo_sbe_v1_10.login_accepted_message.fields(buffer, offset, packet, parent)
  end
end

-- Unsequenced Message
memx_options_memo_sbe_v1_10.unsequenced_message = {}

-- Calculate size of: Unsequenced Message
memx_options_memo_sbe_v1_10.unsequenced_message.size = function(buffer, offset)
  local index = 0

  index = index + memx_options_memo_sbe_v1_10.sbe_message.size(buffer, offset + index)

  return index
end

-- Display: Unsequenced Message
memx_options_memo_sbe_v1_10.unsequenced_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Unsequenced Message
memx_options_memo_sbe_v1_10.unsequenced_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Sbe Message: Struct of 2 fields
  index, sbe_message = memx_options_memo_sbe_v1_10.sbe_message.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Unsequenced Message
memx_options_memo_sbe_v1_10.unsequenced_message.dissect = function(buffer, offset, packet, parent)
  -- Optionally add dynamic struct element to protocol tree
  if show.unsequenced_message then
    local length = memx_options_memo_sbe_v1_10.unsequenced_message.size(buffer, offset)
    local range = buffer(offset, length)
    local display = memx_options_memo_sbe_v1_10.unsequenced_message.display(buffer, packet, parent)
    parent = parent:add(omi_memx_options_memo_sbe_v1_10.fields.unsequenced_message, range, display)
  end

  return memx_options_memo_sbe_v1_10.unsequenced_message.fields(buffer, offset, packet, parent)
end

-- Stream Request Message
memx_options_memo_sbe_v1_10.stream_request_message = {}

-- Size: Stream Request Message
memx_options_memo_sbe_v1_10.stream_request_message.size =
  memx_options_memo_sbe_v1_10.session_id.size + 
  memx_options_memo_sbe_v1_10.next_sequence_number.size

-- Display: Stream Request Message
memx_options_memo_sbe_v1_10.stream_request_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Stream Request Message
memx_options_memo_sbe_v1_10.stream_request_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Session Id: 8 Byte Unsigned Fixed Width Integer
  index, session_id = memx_options_memo_sbe_v1_10.session_id.dissect(buffer, index, packet, parent)

  -- Next Sequence Number: 8 Byte Unsigned Fixed Width Integer
  index, next_sequence_number = memx_options_memo_sbe_v1_10.next_sequence_number.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Stream Request Message
memx_options_memo_sbe_v1_10.stream_request_message.dissect = function(buffer, offset, packet, parent)
  if show.stream_request_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_memx_options_memo_sbe_v1_10.fields.stream_request_message, buffer(offset, 0))
    local index = memx_options_memo_sbe_v1_10.stream_request_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = memx_options_memo_sbe_v1_10.stream_request_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return memx_options_memo_sbe_v1_10.stream_request_message.fields(buffer, offset, packet, parent)
  end
end

-- Replay All Request Message
memx_options_memo_sbe_v1_10.replay_all_request_message = {}

-- Size: Replay All Request Message
memx_options_memo_sbe_v1_10.replay_all_request_message.size =
  memx_options_memo_sbe_v1_10.session_id.size

-- Display: Replay All Request Message
memx_options_memo_sbe_v1_10.replay_all_request_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Replay All Request Message
memx_options_memo_sbe_v1_10.replay_all_request_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Session Id: 8 Byte Unsigned Fixed Width Integer
  index, session_id = memx_options_memo_sbe_v1_10.session_id.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Replay All Request Message
memx_options_memo_sbe_v1_10.replay_all_request_message.dissect = function(buffer, offset, packet, parent)
  if show.replay_all_request_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_memx_options_memo_sbe_v1_10.fields.replay_all_request_message, buffer(offset, 0))
    local index = memx_options_memo_sbe_v1_10.replay_all_request_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = memx_options_memo_sbe_v1_10.replay_all_request_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return memx_options_memo_sbe_v1_10.replay_all_request_message.fields(buffer, offset, packet, parent)
  end
end

-- Count
memx_options_memo_sbe_v1_10.count = {}

-- Size: Count
memx_options_memo_sbe_v1_10.count.size = 4

-- Display: Count
memx_options_memo_sbe_v1_10.count.display = function(value)
  return "Count: "..value
end

-- Dissect: Count
memx_options_memo_sbe_v1_10.count.dissect = function(buffer, offset, packet, parent)
  local length = memx_options_memo_sbe_v1_10.count.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = memx_options_memo_sbe_v1_10.count.display(value, buffer, offset, packet, parent)

  parent:add(omi_memx_options_memo_sbe_v1_10.fields.count, range, value, display)

  return offset + length, value
end

-- Replay Request Message
memx_options_memo_sbe_v1_10.replay_request_message = {}

-- Size: Replay Request Message
memx_options_memo_sbe_v1_10.replay_request_message.size =
  memx_options_memo_sbe_v1_10.session_id.size + 
  memx_options_memo_sbe_v1_10.next_sequence_number.size + 
  memx_options_memo_sbe_v1_10.count.size

-- Display: Replay Request Message
memx_options_memo_sbe_v1_10.replay_request_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Replay Request Message
memx_options_memo_sbe_v1_10.replay_request_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Session Id: 8 Byte Unsigned Fixed Width Integer
  index, session_id = memx_options_memo_sbe_v1_10.session_id.dissect(buffer, index, packet, parent)

  -- Next Sequence Number: 8 Byte Unsigned Fixed Width Integer
  index, next_sequence_number = memx_options_memo_sbe_v1_10.next_sequence_number.dissect(buffer, index, packet, parent)

  -- Count: 4 Byte Unsigned Fixed Width Integer
  index, count = memx_options_memo_sbe_v1_10.count.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Replay Request Message
memx_options_memo_sbe_v1_10.replay_request_message.dissect = function(buffer, offset, packet, parent)
  if show.replay_request_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_memx_options_memo_sbe_v1_10.fields.replay_request_message, buffer(offset, 0))
    local index = memx_options_memo_sbe_v1_10.replay_request_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = memx_options_memo_sbe_v1_10.replay_request_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return memx_options_memo_sbe_v1_10.replay_request_message.fields(buffer, offset, packet, parent)
  end
end

-- Token
memx_options_memo_sbe_v1_10.token = {}

-- Size: Token
memx_options_memo_sbe_v1_10.token.size = 1

-- Display: Token
memx_options_memo_sbe_v1_10.token.display = function(value)
  return "Token: "..value
end

-- Dissect: Token
memx_options_memo_sbe_v1_10.token.dissect = function(buffer, offset, packet, parent)
  local length = memx_options_memo_sbe_v1_10.token.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = memx_options_memo_sbe_v1_10.token.display(value, buffer, offset, packet, parent)

  parent:add(omi_memx_options_memo_sbe_v1_10.fields.token, range, value, display)

  return offset + length, value
end

-- Token Type
memx_options_memo_sbe_v1_10.token_type = {}

-- Size: Token Type
memx_options_memo_sbe_v1_10.token_type.size = 1

-- Display: Token Type
memx_options_memo_sbe_v1_10.token_type.display = function(value)
  return "Token Type: "..value
end

-- Dissect: Token Type
memx_options_memo_sbe_v1_10.token_type.dissect = function(buffer, offset, packet, parent)
  local length = memx_options_memo_sbe_v1_10.token_type.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = memx_options_memo_sbe_v1_10.token_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_memx_options_memo_sbe_v1_10.fields.token_type, range, value, display)

  return offset + length, value
end

-- Login Request Message
memx_options_memo_sbe_v1_10.login_request_message = {}

-- Size: Login Request Message
memx_options_memo_sbe_v1_10.login_request_message.size =
  memx_options_memo_sbe_v1_10.token_type.size + 
  memx_options_memo_sbe_v1_10.token.size

-- Display: Login Request Message
memx_options_memo_sbe_v1_10.login_request_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Login Request Message
memx_options_memo_sbe_v1_10.login_request_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Token Type: 1 Byte Ascii String
  index, token_type = memx_options_memo_sbe_v1_10.token_type.dissect(buffer, index, packet, parent)

  -- Token: 1 Byte Ascii String
  index, token = memx_options_memo_sbe_v1_10.token.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Login Request Message
memx_options_memo_sbe_v1_10.login_request_message.dissect = function(buffer, offset, packet, parent)
  if show.login_request_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_memx_options_memo_sbe_v1_10.fields.login_request_message, buffer(offset, 0))
    local index = memx_options_memo_sbe_v1_10.login_request_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = memx_options_memo_sbe_v1_10.login_request_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return memx_options_memo_sbe_v1_10.login_request_message.fields(buffer, offset, packet, parent)
  end
end

-- Data
memx_options_memo_sbe_v1_10.data = {}

-- Size: Data
memx_options_memo_sbe_v1_10.data.size = function(buffer, offset, message_type)
  -- Size of Login Request Message
  if message_type == 100 then
    return memx_options_memo_sbe_v1_10.login_request_message.size
  end
  -- Size of Replay Request Message
  if message_type == 101 then
    return memx_options_memo_sbe_v1_10.replay_request_message.size
  end
  -- Size of Replay All Request Message
  if message_type == 102 then
    return memx_options_memo_sbe_v1_10.replay_all_request_message.size
  end
  -- Size of Stream Request Message
  if message_type == 103 then
    return memx_options_memo_sbe_v1_10.stream_request_message.size
  end
  -- Size of Unsequenced Message
  if message_type == 104 then
    return memx_options_memo_sbe_v1_10.unsequenced_message.size(buffer, offset)
  end
  -- Size of Login Accepted Message
  if message_type == 1 then
    return memx_options_memo_sbe_v1_10.login_accepted_message.size
  end
  -- Size of Login Rejected Message
  if message_type == 2 then
    return memx_options_memo_sbe_v1_10.login_rejected_message.size
  end
  -- Size of Start Of Session Message
  if message_type == 3 then
    return memx_options_memo_sbe_v1_10.start_of_session_message.size
  end
  -- Size of Replay Begin Message
  if message_type == 5 then
    return memx_options_memo_sbe_v1_10.replay_begin_message.size
  end
  -- Size of Replay Rejected Message
  if message_type == 6 then
    return memx_options_memo_sbe_v1_10.replay_rejected_message.size
  end
  -- Size of Replay Complete Message
  if message_type == 7 then
    return memx_options_memo_sbe_v1_10.replay_complete_message.size
  end
  -- Size of Stream Begin Message
  if message_type == 8 then
    return memx_options_memo_sbe_v1_10.stream_begin_message.size
  end
  -- Size of Stream Rejected Message
  if message_type == 9 then
    return memx_options_memo_sbe_v1_10.stream_rejected_message.size
  end
  -- Size of Stream Complete Message
  if message_type == 10 then
    return memx_options_memo_sbe_v1_10.stream_complete_message.size
  end
  -- Size of Sequenced Message
  if message_type == 11 then
    return memx_options_memo_sbe_v1_10.sequenced_message.size(buffer, offset)
  end

  return 0
end

-- Display: Data
memx_options_memo_sbe_v1_10.data.display = function(buffer, offset, packet, parent)
  return ""
end

-- Dissect Branches: Data
memx_options_memo_sbe_v1_10.data.branches = function(buffer, offset, packet, parent, message_type)
  -- Dissect Login Request Message
  if message_type == 100 then
    return memx_options_memo_sbe_v1_10.login_request_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Replay Request Message
  if message_type == 101 then
    return memx_options_memo_sbe_v1_10.replay_request_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Replay All Request Message
  if message_type == 102 then
    return memx_options_memo_sbe_v1_10.replay_all_request_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Stream Request Message
  if message_type == 103 then
    return memx_options_memo_sbe_v1_10.stream_request_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Unsequenced Message
  if message_type == 104 then
    return memx_options_memo_sbe_v1_10.unsequenced_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Login Accepted Message
  if message_type == 1 then
    return memx_options_memo_sbe_v1_10.login_accepted_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Login Rejected Message
  if message_type == 2 then
    return memx_options_memo_sbe_v1_10.login_rejected_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Start Of Session Message
  if message_type == 3 then
    return memx_options_memo_sbe_v1_10.start_of_session_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Replay Begin Message
  if message_type == 5 then
    return memx_options_memo_sbe_v1_10.replay_begin_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Replay Rejected Message
  if message_type == 6 then
    return memx_options_memo_sbe_v1_10.replay_rejected_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Replay Complete Message
  if message_type == 7 then
    return memx_options_memo_sbe_v1_10.replay_complete_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Stream Begin Message
  if message_type == 8 then
    return memx_options_memo_sbe_v1_10.stream_begin_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Stream Rejected Message
  if message_type == 9 then
    return memx_options_memo_sbe_v1_10.stream_rejected_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Stream Complete Message
  if message_type == 10 then
    return memx_options_memo_sbe_v1_10.stream_complete_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Sequenced Message
  if message_type == 11 then
    return memx_options_memo_sbe_v1_10.sequenced_message.dissect(buffer, offset, packet, parent)
  end

  return offset
end

-- Dissect: Data
memx_options_memo_sbe_v1_10.data.dissect = function(buffer, offset, packet, parent, message_type)
  if not show.data then
    return memx_options_memo_sbe_v1_10.data.branches(buffer, offset, packet, parent, message_type)
  end

  -- Calculate size and check that branch is not empty
  local size = memx_options_memo_sbe_v1_10.data.size(buffer, offset, message_type)
  if size == 0 then
    return offset
  end

  -- Dissect Element
  local range = buffer(offset, size)
  local display = memx_options_memo_sbe_v1_10.data.display(buffer, packet, parent)
  local element = parent:add(omi_memx_options_memo_sbe_v1_10.fields.data, range, display)

  return memx_options_memo_sbe_v1_10.data.branches(buffer, offset, packet, parent, message_type)
end

-- Message Length
memx_options_memo_sbe_v1_10.message_length = {}

-- Size: Message Length
memx_options_memo_sbe_v1_10.message_length.size = 2

-- Display: Message Length
memx_options_memo_sbe_v1_10.message_length.display = function(value)
  return "Message Length: "..value
end

-- Dissect: Message Length
memx_options_memo_sbe_v1_10.message_length.dissect = function(buffer, offset, packet, parent)
  local length = memx_options_memo_sbe_v1_10.message_length.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = memx_options_memo_sbe_v1_10.message_length.display(value, buffer, offset, packet, parent)

  parent:add(omi_memx_options_memo_sbe_v1_10.fields.message_length, range, value, display)

  return offset + length, value
end

-- Message Type
memx_options_memo_sbe_v1_10.message_type = {}

-- Size: Message Type
memx_options_memo_sbe_v1_10.message_type.size = 1

-- Display: Message Type
memx_options_memo_sbe_v1_10.message_type.display = function(value)
  if value == 100 then
    return "Message Type: Login Request (100)"
  end
  if value == 101 then
    return "Message Type: Replay Request (101)"
  end
  if value == 102 then
    return "Message Type: Replay All Request (102)"
  end
  if value == 103 then
    return "Message Type: Stream Request (103)"
  end
  if value == 104 then
    return "Message Type: Unsequenced Message (104)"
  end
  if value == 1 then
    return "Message Type: Login Accepted (1)"
  end
  if value == 2 then
    return "Message Type: Login Rejected (2)"
  end
  if value == 3 then
    return "Message Type: Start Of Session (3)"
  end
  if value == 3 then
    return "Message Type: End Of Session (3)"
  end
  if value == 5 then
    return "Message Type: Replay Begin (5)"
  end
  if value == 6 then
    return "Message Type: Replay Rejected (6)"
  end
  if value == 7 then
    return "Message Type: Replay Complete (7)"
  end
  if value == 8 then
    return "Message Type: Stream Begin (8)"
  end
  if value == 9 then
    return "Message Type: Stream Rejected (9)"
  end
  if value == 10 then
    return "Message Type: Stream Complete (10)"
  end
  if value == 11 then
    return "Message Type: Sequenced Message (11)"
  end

  return "Message Type: Unknown("..value..")"
end

-- Dissect: Message Type
memx_options_memo_sbe_v1_10.message_type.dissect = function(buffer, offset, packet, parent)
  local length = memx_options_memo_sbe_v1_10.message_type.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = memx_options_memo_sbe_v1_10.message_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_memx_options_memo_sbe_v1_10.fields.message_type, range, value, display)

  return offset + length, value
end

-- Common Header
memx_options_memo_sbe_v1_10.common_header = {}

-- Size: Common Header
memx_options_memo_sbe_v1_10.common_header.size =
  memx_options_memo_sbe_v1_10.message_type.size + 
  memx_options_memo_sbe_v1_10.message_length.size

-- Display: Common Header
memx_options_memo_sbe_v1_10.common_header.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Common Header
memx_options_memo_sbe_v1_10.common_header.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Message Type: 1 Byte Unsigned Fixed Width Integer Enum with 16 values
  index, message_type = memx_options_memo_sbe_v1_10.message_type.dissect(buffer, index, packet, parent)

  -- Message Length: 2 Byte Unsigned Fixed Width Integer
  index, message_length = memx_options_memo_sbe_v1_10.message_length.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Common Header
memx_options_memo_sbe_v1_10.common_header.dissect = function(buffer, offset, packet, parent)
  if show.common_header then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_memx_options_memo_sbe_v1_10.fields.common_header, buffer(offset, 0))
    local index = memx_options_memo_sbe_v1_10.common_header.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = memx_options_memo_sbe_v1_10.common_header.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return memx_options_memo_sbe_v1_10.common_header.fields(buffer, offset, packet, parent)
  end
end

-- Packet
memx_options_memo_sbe_v1_10.packet = {}

-- Dissect Packet
memx_options_memo_sbe_v1_10.packet.dissect = function(buffer, packet, parent)
  local index = 0

  -- Common Header: Struct of 2 fields
  index, common_header = memx_options_memo_sbe_v1_10.common_header.dissect(buffer, index, packet, parent)

  -- Dependency element: Message Type
  local message_type = buffer(index - 3, 1):uint()

  -- Data: Runtime Type with 15 branches
  index = memx_options_memo_sbe_v1_10.data.dissect(buffer, index, packet, parent, message_type)

  return index
end


-----------------------------------------------------------------------
-- Protocol Dissector and Components
-----------------------------------------------------------------------

-- Initialize Dissector
function omi_memx_options_memo_sbe_v1_10.init()
end

-- Dissector for Memx Options Memo Sbe 1.10
function omi_memx_options_memo_sbe_v1_10.dissector(buffer, packet, parent)

  -- Set protocol name
  packet.cols.protocol = omi_memx_options_memo_sbe_v1_10.name

  -- Dissect protocol
  local protocol = parent:add(omi_memx_options_memo_sbe_v1_10, buffer(), omi_memx_options_memo_sbe_v1_10.description, "("..buffer:len().." Bytes)")
  return memx_options_memo_sbe_v1_10.packet.dissect(buffer, packet, protocol)
end

-- Register With Tcp Table
local tcp_table = DissectorTable.get("tcp.port")
tcp_table:add(65333, omi_memx_options_memo_sbe_v1_10)


-----------------------------------------------------------------------
-- Protocol Heuristics
-----------------------------------------------------------------------

-- Verify size of packet
memx_options_memo_sbe_v1_10.packet.requiredsize = function(buffer)

  return true
end

-- Verify Schema Id Field
memx_options_memo_sbe_v1_10.schema_id.verify = function(buffer)
  -- Attempt to read field
  local value = buffer(52, 1):uint()

  if value == 9 then
    return true
  end

  return false
end

-- Verify Version Field
memx_options_memo_sbe_v1_10.version.verify = function(buffer)
  -- Attempt to read field
  local value = buffer(53, 2):uint()

  if value == 266 then
    return true
  end

  return false
end

-- Verify Schema Id Field
memx_options_memo_sbe_v1_10.schema_id.verify = function(buffer)
  -- Attempt to read field
  local value = buffer(2603, 1):uint()

  if value == 9 then
    return true
  end

  return false
end

-- Verify Version Field
memx_options_memo_sbe_v1_10.version.verify = function(buffer)
  -- Attempt to read field
  local value = buffer(2604, 2):uint()

  if value == 266 then
    return true
  end

  return false
end

-- Dissector Heuristic for Memx Options Memo Sbe 1.10
local function omi_memx_options_memo_sbe_v1_10_heuristic(buffer, packet, parent)
  -- Verify packet length
  if not memx_options_memo_sbe_v1_10.packet.requiredsize(buffer) then return false end

  -- Verify Schema Id
  if not memx_options_memo_sbe_v1_10.schema_id.verify(buffer) then return false end

  -- Verify Version
  if not memx_options_memo_sbe_v1_10.version.verify(buffer) then return false end

  -- Verify Schema Id
  if not memx_options_memo_sbe_v1_10.schema_id.verify(buffer) then return false end

  -- Verify Version
  if not memx_options_memo_sbe_v1_10.version.verify(buffer) then return false end

  -- Protocol is valid, set conversation and dissect this packet
  packet.conversation = omi_memx_options_memo_sbe_v1_10
  omi_memx_options_memo_sbe_v1_10.dissector(buffer, packet, parent)

  return true
end

-- Register Heuristic for Memx Options Memo Sbe 1.10
omi_memx_options_memo_sbe_v1_10:register_heuristic("tcp", omi_memx_options_memo_sbe_v1_10_heuristic)

-----------------------------------------------------------------------
-- Lua dissectors are an easily edited and modified cross-platform dissection solution.
-- Feel free to modify. Enjoy.
-----------------------------------------------------------------------
-- 
-- Protocol:
--   Organization: Members Exchange
--   Version: 1.10
--   Date: Friday, May 23, 2025
--   Specification: MEMO for US Options - SBE-v1_10.pdf
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
