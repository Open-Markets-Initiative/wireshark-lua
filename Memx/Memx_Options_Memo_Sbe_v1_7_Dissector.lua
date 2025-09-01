-----------------------------------------------------------------------
-- Lua Script Wireshark Dissector
-- 
-- Please see end of file for rules and regulations
-----------------------------------------------------------------------

-- Memx Options Memo Sbe 1.7 Protocol
local omi_memx_options_memo_sbe_v1_7 = Proto("Memx.Options.Memo.Sbe.v1.7.Lua", "Memx Options Memo Sbe 1.7")

-- Protocol table
local memx_options_memo_sbe_v1_7 = {}

-- Component Tables
local show = {}

-----------------------------------------------------------------------
-- Declare Protocol Fields
-----------------------------------------------------------------------

-- Memx Options Memo Sbe 1.7 Fields
omi_memx_options_memo_sbe_v1_7.fields.alloc_canc_replace_reason = ProtoField.new("Alloc Canc Replace Reason", "memx.options.memo.sbe.v1.7.alloccancreplacereason", ftypes.UINT16)
omi_memx_options_memo_sbe_v1_7.fields.alloc_id = ProtoField.new("Alloc Id", "memx.options.memo.sbe.v1.7.allocid", ftypes.STRING)
omi_memx_options_memo_sbe_v1_7.fields.alloc_position_effect = ProtoField.new("Alloc Position Effect", "memx.options.memo.sbe.v1.7.allocpositioneffect", ftypes.STRING)
omi_memx_options_memo_sbe_v1_7.fields.alloc_qty = ProtoField.new("Alloc Qty", "memx.options.memo.sbe.v1.7.allocqty", ftypes.UINT32)
omi_memx_options_memo_sbe_v1_7.fields.alloc_rej_code = ProtoField.new("Alloc Rej Code", "memx.options.memo.sbe.v1.7.allocrejcode", ftypes.UINT16)
omi_memx_options_memo_sbe_v1_7.fields.alloc_status = ProtoField.new("Alloc Status", "memx.options.memo.sbe.v1.7.allocstatus", ftypes.UINT8)
omi_memx_options_memo_sbe_v1_7.fields.alloc_trans_type = ProtoField.new("Alloc Trans Type", "memx.options.memo.sbe.v1.7.alloctranstype", ftypes.UINT8)
omi_memx_options_memo_sbe_v1_7.fields.alloc_type = ProtoField.new("Alloc Type", "memx.options.memo.sbe.v1.7.alloctype", ftypes.UINT8)
omi_memx_options_memo_sbe_v1_7.fields.bid_px = ProtoField.new("Bid Px", "memx.options.memo.sbe.v1.7.bidpx", ftypes.DOUBLE)
omi_memx_options_memo_sbe_v1_7.fields.bid_size = ProtoField.new("Bid Size", "memx.options.memo.sbe.v1.7.bidsize", ftypes.UINT16)
omi_memx_options_memo_sbe_v1_7.fields.block_length = ProtoField.new("Block Length", "memx.options.memo.sbe.v1.7.blocklength", ftypes.UINT16)
omi_memx_options_memo_sbe_v1_7.fields.block_length_short = ProtoField.new("Block Length Short", "memx.options.memo.sbe.v1.7.blocklengthshort", ftypes.UINT8)
omi_memx_options_memo_sbe_v1_7.fields.cancel_group_id = ProtoField.new("Cancel Group Id", "memx.options.memo.sbe.v1.7.cancelgroupid", ftypes.UINT16)
omi_memx_options_memo_sbe_v1_7.fields.cancel_orders_from_this_port_only = ProtoField.new("Cancel Orders From This Port Only", "memx.options.memo.sbe.v1.7.cancelordersfromthisportonly", ftypes.UINT8, {[1]="Yes",[0]="No"}, base.DEC, 0x04)
omi_memx_options_memo_sbe_v1_7.fields.cancel_reason = ProtoField.new("Cancel Reason", "memx.options.memo.sbe.v1.7.cancelreason", ftypes.UINT8)
omi_memx_options_memo_sbe_v1_7.fields.cl_ord_i_d_mass_cancel_bulk_clear_all_lockouts_request_cl_ord_id = ProtoField.new("Cl Ord I D Mass Cancel Bulk Clear All Lockouts Request Cl Ord Id", "memx.options.memo.sbe.v1.7.clordidmasscancelbulkclearalllockoutsrequestclordid", ftypes.STRING)
omi_memx_options_memo_sbe_v1_7.fields.cl_ord_i_d_mass_cancel_bulk_clear_lockout_accepted_cl_ord_id = ProtoField.new("Cl Ord I D Mass Cancel Bulk Clear Lockout Accepted Cl Ord Id", "memx.options.memo.sbe.v1.7.clordidmasscancelbulkclearlockoutacceptedclordid", ftypes.STRING)
omi_memx_options_memo_sbe_v1_7.fields.cl_ord_i_d_mass_cancel_bulk_clear_lockout_reject_cl_ord_id = ProtoField.new("Cl Ord I D Mass Cancel Bulk Clear Lockout Reject Cl Ord Id", "memx.options.memo.sbe.v1.7.clordidmasscancelbulkclearlockoutrejectclordid", ftypes.STRING)
omi_memx_options_memo_sbe_v1_7.fields.cl_ord_i_d_mass_cancel_bulk_clear_lockouts_by_efid_or_underlier_request_cl_ord_id = ProtoField.new("Cl Ord I D Mass Cancel Bulk Clear Lockouts By Efid Or Underlier Request Cl Ord Id", "memx.options.memo.sbe.v1.7.clordidmasscancelbulkclearlockoutsbyefidorunderlierrequestclordid", ftypes.STRING)
omi_memx_options_memo_sbe_v1_7.fields.clordid = ProtoField.new("ClOrdId", "memx.options.memo.sbe.v1.7.clordid", ftypes.STRING)
omi_memx_options_memo_sbe_v1_7.fields.common_header = ProtoField.new("Common Header", "memx.options.memo.sbe.v1.7.commonheader", ftypes.STRING)
omi_memx_options_memo_sbe_v1_7.fields.contra_trading_capacity = ProtoField.new("Contra Trading Capacity", "memx.options.memo.sbe.v1.7.contratradingcapacity", ftypes.UINT8)
omi_memx_options_memo_sbe_v1_7.fields.count = ProtoField.new("Count", "memx.options.memo.sbe.v1.7.count", ftypes.UINT32)
omi_memx_options_memo_sbe_v1_7.fields.cum_qty = ProtoField.new("Cum Qty", "memx.options.memo.sbe.v1.7.cumqty", ftypes.UINT32)
omi_memx_options_memo_sbe_v1_7.fields.cxl_rej_reason = ProtoField.new("Cxl Rej Reason", "memx.options.memo.sbe.v1.7.cxlrejreason", ftypes.UINT16)
omi_memx_options_memo_sbe_v1_7.fields.cxl_rej_response_to = ProtoField.new("Cxl Rej Response To", "memx.options.memo.sbe.v1.7.cxlrejresponseto", ftypes.STRING)
omi_memx_options_memo_sbe_v1_7.fields.data = ProtoField.new("Data", "memx.options.memo.sbe.v1.7.data", ftypes.STRING)
omi_memx_options_memo_sbe_v1_7.fields.efi_d_mass_cancel_bulk_clear_lockouts_by_efid_or_underlier_request_efi_d_optional = ProtoField.new("Efi D Mass Cancel Bulk Clear Lockouts By Efid Or Underlier Request Efi D optional", "memx.options.memo.sbe.v1.7.efidmasscancelbulkclearlockoutsbyefidorunderlierrequestefidoptional", ftypes.STRING)
omi_memx_options_memo_sbe_v1_7.fields.efid_optional = ProtoField.new("Efid Optional", "memx.options.memo.sbe.v1.7.efidoptional", ftypes.STRING)
omi_memx_options_memo_sbe_v1_7.fields.exec_id = ProtoField.new("Exec Id", "memx.options.memo.sbe.v1.7.execid", ftypes.UINT64)
omi_memx_options_memo_sbe_v1_7.fields.exec_inst = ProtoField.new("Exec Inst", "memx.options.memo.sbe.v1.7.execinst", ftypes.STRING)
omi_memx_options_memo_sbe_v1_7.fields.exec_ref_id = ProtoField.new("Exec Ref Id", "memx.options.memo.sbe.v1.7.execrefid", ftypes.UINT64)
omi_memx_options_memo_sbe_v1_7.fields.exec_restatement_reason = ProtoField.new("Exec Restatement Reason", "memx.options.memo.sbe.v1.7.execrestatementreason", ftypes.UINT8)
omi_memx_options_memo_sbe_v1_7.fields.execution_allocations_group = ProtoField.new("Execution Allocations Group", "memx.options.memo.sbe.v1.7.executionallocationsgroup", ftypes.STRING)
omi_memx_options_memo_sbe_v1_7.fields.execution_allocations_groups = ProtoField.new("Execution Allocations Groups", "memx.options.memo.sbe.v1.7.executionallocationsgroups", ftypes.STRING)
omi_memx_options_memo_sbe_v1_7.fields.extended_restatement_reason = ProtoField.new("Extended Restatement Reason", "memx.options.memo.sbe.v1.7.extendedrestatementreason", ftypes.UINT8)
omi_memx_options_memo_sbe_v1_7.fields.external_routing_not_allowed = ProtoField.new("External Routing Not Allowed", "memx.options.memo.sbe.v1.7.externalroutingnotallowed", ftypes.UINT16, {[1]="Yes",[0]="No"}, base.DEC, 0x0004)
omi_memx_options_memo_sbe_v1_7.fields.intermarket_sweep = ProtoField.new("Intermarket Sweep", "memx.options.memo.sbe.v1.7.intermarketsweep", ftypes.UINT16, {[1]="Yes",[0]="No"}, base.DEC, 0x0002)
omi_memx_options_memo_sbe_v1_7.fields.last_liquidity_ind = ProtoField.new("Last Liquidity Ind", "memx.options.memo.sbe.v1.7.lastliquidityind", ftypes.UINT8)
omi_memx_options_memo_sbe_v1_7.fields.last_mkt = ProtoField.new("Last Mkt", "memx.options.memo.sbe.v1.7.lastmkt", ftypes.STRING)
omi_memx_options_memo_sbe_v1_7.fields.last_px = ProtoField.new("Last Px", "memx.options.memo.sbe.v1.7.lastpx", ftypes.DOUBLE)
omi_memx_options_memo_sbe_v1_7.fields.last_qty = ProtoField.new("Last Qty", "memx.options.memo.sbe.v1.7.lastqty", ftypes.UINT32)
omi_memx_options_memo_sbe_v1_7.fields.last_qty_optional = ProtoField.new("Last Qty Optional", "memx.options.memo.sbe.v1.7.lastqtyoptional", ftypes.UINT32)
omi_memx_options_memo_sbe_v1_7.fields.leaves_qty = ProtoField.new("Leaves Qty", "memx.options.memo.sbe.v1.7.leavesqty", ftypes.UINT32)
omi_memx_options_memo_sbe_v1_7.fields.list_seq_no = ProtoField.new("List Seq No", "memx.options.memo.sbe.v1.7.listseqno", ftypes.UINT8)
omi_memx_options_memo_sbe_v1_7.fields.lockout = ProtoField.new("Lockout", "memx.options.memo.sbe.v1.7.lockout", ftypes.UINT8, {[1]="Yes",[0]="No"}, base.DEC, 0x01)
omi_memx_options_memo_sbe_v1_7.fields.lockout_id = ProtoField.new("Lockout Id", "memx.options.memo.sbe.v1.7.lockoutid", ftypes.UINT64)
omi_memx_options_memo_sbe_v1_7.fields.lockout_id_optional = ProtoField.new("Lockout Id Optional", "memx.options.memo.sbe.v1.7.lockoutidoptional", ftypes.UINT64)
omi_memx_options_memo_sbe_v1_7.fields.login_accepted_message = ProtoField.new("Login Accepted Message", "memx.options.memo.sbe.v1.7.loginacceptedmessage", ftypes.STRING)
omi_memx_options_memo_sbe_v1_7.fields.login_reject_code = ProtoField.new("Login Reject Code", "memx.options.memo.sbe.v1.7.loginrejectcode", ftypes.STRING)
omi_memx_options_memo_sbe_v1_7.fields.login_rejected_message = ProtoField.new("Login Rejected Message", "memx.options.memo.sbe.v1.7.loginrejectedmessage", ftypes.STRING)
omi_memx_options_memo_sbe_v1_7.fields.login_request_message = ProtoField.new("Login Request Message", "memx.options.memo.sbe.v1.7.loginrequestmessage", ftypes.STRING)
omi_memx_options_memo_sbe_v1_7.fields.mass_cancel_inst = ProtoField.new("Mass Cancel Inst", "memx.options.memo.sbe.v1.7.masscancelinst", ftypes.STRING)
omi_memx_options_memo_sbe_v1_7.fields.mass_cancel_reject_reason = ProtoField.new("Mass Cancel Reject Reason", "memx.options.memo.sbe.v1.7.masscancelrejectreason", ftypes.UINT16)
omi_memx_options_memo_sbe_v1_7.fields.match_trade_prevention = ProtoField.new("Match Trade Prevention", "memx.options.memo.sbe.v1.7.matchtradeprevention", ftypes.UINT8)
omi_memx_options_memo_sbe_v1_7.fields.message_count = ProtoField.new("Message Count", "memx.options.memo.sbe.v1.7.messagecount", ftypes.UINT64)
omi_memx_options_memo_sbe_v1_7.fields.message_length = ProtoField.new("Message Length", "memx.options.memo.sbe.v1.7.messagelength", ftypes.UINT16)
omi_memx_options_memo_sbe_v1_7.fields.message_type = ProtoField.new("Message Type", "memx.options.memo.sbe.v1.7.messagetype", ftypes.UINT8)
omi_memx_options_memo_sbe_v1_7.fields.mtp_group_id = ProtoField.new("Mtp Group Id", "memx.options.memo.sbe.v1.7.mtpgroupid", ftypes.UINT16)
omi_memx_options_memo_sbe_v1_7.fields.next_sequence_number = ProtoField.new("Next Sequence Number", "memx.options.memo.sbe.v1.7.nextsequencenumber", ftypes.UINT64)
omi_memx_options_memo_sbe_v1_7.fields.num_in_group = ProtoField.new("Num In Group", "memx.options.memo.sbe.v1.7.numingroup", ftypes.UINT8)
omi_memx_options_memo_sbe_v1_7.fields.number_of_orders = ProtoField.new("Number Of Orders", "memx.options.memo.sbe.v1.7.numberoforders", ftypes.UINT8)
omi_memx_options_memo_sbe_v1_7.fields.offer_px = ProtoField.new("Offer Px", "memx.options.memo.sbe.v1.7.offerpx", ftypes.DOUBLE)
omi_memx_options_memo_sbe_v1_7.fields.offer_size = ProtoField.new("Offer Size", "memx.options.memo.sbe.v1.7.offersize", ftypes.UINT16)
omi_memx_options_memo_sbe_v1_7.fields.options_security_id_optional = ProtoField.new("Options Security Id Optional", "memx.options.memo.sbe.v1.7.optionssecurityidoptional", ftypes.STRING)
omi_memx_options_memo_sbe_v1_7.fields.ord_status = ProtoField.new("Ord Status", "memx.options.memo.sbe.v1.7.ordstatus", ftypes.STRING)
omi_memx_options_memo_sbe_v1_7.fields.ord_type = ProtoField.new("Ord Type", "memx.options.memo.sbe.v1.7.ordtype", ftypes.STRING)
omi_memx_options_memo_sbe_v1_7.fields.order_id = ProtoField.new("Order Id", "memx.options.memo.sbe.v1.7.orderid", ftypes.UINT64)
omi_memx_options_memo_sbe_v1_7.fields.order_id_optional = ProtoField.new("Order Id Optional", "memx.options.memo.sbe.v1.7.orderidoptional", ftypes.UINT64)
omi_memx_options_memo_sbe_v1_7.fields.order_qty = ProtoField.new("Order Qty", "memx.options.memo.sbe.v1.7.orderqty", ftypes.UINT32)
omi_memx_options_memo_sbe_v1_7.fields.order_reject_reason = ProtoField.new("Order Reject Reason", "memx.options.memo.sbe.v1.7.orderrejectreason", ftypes.UINT16)
omi_memx_options_memo_sbe_v1_7.fields.orig_list_seq_no = ProtoField.new("Orig List Seq No", "memx.options.memo.sbe.v1.7.origlistseqno", ftypes.UINT8)
omi_memx_options_memo_sbe_v1_7.fields.origclordid = ProtoField.new("OrigClOrdId", "memx.options.memo.sbe.v1.7.origclordid", ftypes.STRING)
omi_memx_options_memo_sbe_v1_7.fields.origclordid_optional = ProtoField.new("OrigClOrdId Optional", "memx.options.memo.sbe.v1.7.origclordidoptional", ftypes.STRING)
omi_memx_options_memo_sbe_v1_7.fields.packet = ProtoField.new("Packet", "memx.options.memo.sbe.v1.7.packet", ftypes.STRING)
omi_memx_options_memo_sbe_v1_7.fields.participate_do_not_initiate = ProtoField.new("Participate Do Not Initiate", "memx.options.memo.sbe.v1.7.participatedonotinitiate", ftypes.UINT16, {[1]="Yes",[0]="No"}, base.DEC, 0x0001)
omi_memx_options_memo_sbe_v1_7.fields.parties_group = ProtoField.new("Parties Group", "memx.options.memo.sbe.v1.7.partiesgroup", ftypes.STRING)
omi_memx_options_memo_sbe_v1_7.fields.parties_groups = ProtoField.new("Parties Groups", "memx.options.memo.sbe.v1.7.partiesgroups", ftypes.STRING)
omi_memx_options_memo_sbe_v1_7.fields.party_id = ProtoField.new("Party Id", "memx.options.memo.sbe.v1.7.partyid", ftypes.STRING)
omi_memx_options_memo_sbe_v1_7.fields.party_id_source = ProtoField.new("Party Id Source", "memx.options.memo.sbe.v1.7.partyidsource", ftypes.STRING)
omi_memx_options_memo_sbe_v1_7.fields.party_role = ProtoField.new("Party Role", "memx.options.memo.sbe.v1.7.partyrole", ftypes.UINT8)
omi_memx_options_memo_sbe_v1_7.fields.payload = ProtoField.new("Payload", "memx.options.memo.sbe.v1.7.payload", ftypes.STRING)
omi_memx_options_memo_sbe_v1_7.fields.pending_message_count = ProtoField.new("Pending Message Count", "memx.options.memo.sbe.v1.7.pendingmessagecount", ftypes.UINT32)
omi_memx_options_memo_sbe_v1_7.fields.position_effect = ProtoField.new("Position Effect", "memx.options.memo.sbe.v1.7.positioneffect", ftypes.STRING)
omi_memx_options_memo_sbe_v1_7.fields.position_effect_optional = ProtoField.new("Position Effect Optional", "memx.options.memo.sbe.v1.7.positioneffectoptional", ftypes.STRING)
omi_memx_options_memo_sbe_v1_7.fields.price_optional = ProtoField.new("Price Optional", "memx.options.memo.sbe.v1.7.priceoptional", ftypes.DOUBLE)
omi_memx_options_memo_sbe_v1_7.fields.quotes_group = ProtoField.new("Quotes Group", "memx.options.memo.sbe.v1.7.quotesgroup", ftypes.STRING)
omi_memx_options_memo_sbe_v1_7.fields.quotes_groups = ProtoField.new("Quotes Groups", "memx.options.memo.sbe.v1.7.quotesgroups", ftypes.STRING)
omi_memx_options_memo_sbe_v1_7.fields.ref_alloc_id_optional = ProtoField.new("Ref Alloc Id Optional", "memx.options.memo.sbe.v1.7.refallocidoptional", ftypes.STRING)
omi_memx_options_memo_sbe_v1_7.fields.rej_reason = ProtoField.new("Rej Reason", "memx.options.memo.sbe.v1.7.rejreason", ftypes.UINT16)
omi_memx_options_memo_sbe_v1_7.fields.repeating_group_dimensions = ProtoField.new("Repeating Group Dimensions", "memx.options.memo.sbe.v1.7.repeatinggroupdimensions", ftypes.STRING)
omi_memx_options_memo_sbe_v1_7.fields.replay_all_request_message = ProtoField.new("Replay All Request Message", "memx.options.memo.sbe.v1.7.replayallrequestmessage", ftypes.STRING)
omi_memx_options_memo_sbe_v1_7.fields.replay_begin_message = ProtoField.new("Replay Begin Message", "memx.options.memo.sbe.v1.7.replaybeginmessage", ftypes.STRING)
omi_memx_options_memo_sbe_v1_7.fields.replay_complete_message = ProtoField.new("Replay Complete Message", "memx.options.memo.sbe.v1.7.replaycompletemessage", ftypes.STRING)
omi_memx_options_memo_sbe_v1_7.fields.replay_reject_code = ProtoField.new("Replay Reject Code", "memx.options.memo.sbe.v1.7.replayrejectcode", ftypes.STRING)
omi_memx_options_memo_sbe_v1_7.fields.replay_rejected_message = ProtoField.new("Replay Rejected Message", "memx.options.memo.sbe.v1.7.replayrejectedmessage", ftypes.STRING)
omi_memx_options_memo_sbe_v1_7.fields.replay_request_message = ProtoField.new("Replay Request Message", "memx.options.memo.sbe.v1.7.replayrequestmessage", ftypes.STRING)
omi_memx_options_memo_sbe_v1_7.fields.reported_allocations_group = ProtoField.new("Reported Allocations Group", "memx.options.memo.sbe.v1.7.reportedallocationsgroup", ftypes.STRING)
omi_memx_options_memo_sbe_v1_7.fields.reported_allocations_groups = ProtoField.new("Reported Allocations Groups", "memx.options.memo.sbe.v1.7.reportedallocationsgroups", ftypes.STRING)
omi_memx_options_memo_sbe_v1_7.fields.reprice_behavior = ProtoField.new("Reprice Behavior", "memx.options.memo.sbe.v1.7.repricebehavior", ftypes.UINT8)
omi_memx_options_memo_sbe_v1_7.fields.reprice_frequency = ProtoField.new("Reprice Frequency", "memx.options.memo.sbe.v1.7.repricefrequency", ftypes.UINT8)
omi_memx_options_memo_sbe_v1_7.fields.requested_allocations_group = ProtoField.new("Requested Allocations Group", "memx.options.memo.sbe.v1.7.requestedallocationsgroup", ftypes.STRING)
omi_memx_options_memo_sbe_v1_7.fields.requested_allocations_groups = ProtoField.new("Requested Allocations Groups", "memx.options.memo.sbe.v1.7.requestedallocationsgroups", ftypes.STRING)
omi_memx_options_memo_sbe_v1_7.fields.reserved_13 = ProtoField.new("Reserved 13", "memx.options.memo.sbe.v1.7.reserved13", ftypes.UINT16, nil, base.DEC, 0xFFF8)
omi_memx_options_memo_sbe_v1_7.fields.reserved_5 = ProtoField.new("Reserved 5", "memx.options.memo.sbe.v1.7.reserved5", ftypes.UINT8, nil, base.DEC, 0xF8)
omi_memx_options_memo_sbe_v1_7.fields.risk_group_id = ProtoField.new("Risk Group Id", "memx.options.memo.sbe.v1.7.riskgroupid", ftypes.UINT16)
omi_memx_options_memo_sbe_v1_7.fields.sbe_header = ProtoField.new("Sbe Header", "memx.options.memo.sbe.v1.7.sbeheader", ftypes.STRING)
omi_memx_options_memo_sbe_v1_7.fields.sbe_message = ProtoField.new("Sbe Message", "memx.options.memo.sbe.v1.7.sbemessage", ftypes.STRING)
omi_memx_options_memo_sbe_v1_7.fields.schema_id = ProtoField.new("Schema Id", "memx.options.memo.sbe.v1.7.schemaid", ftypes.UINT8)
omi_memx_options_memo_sbe_v1_7.fields.secondary_alloc_id = ProtoField.new("Secondary Alloc Id", "memx.options.memo.sbe.v1.7.secondaryallocid", ftypes.STRING)
omi_memx_options_memo_sbe_v1_7.fields.security_id = ProtoField.new("Security Id", "memx.options.memo.sbe.v1.7.securityid", ftypes.STRING)
omi_memx_options_memo_sbe_v1_7.fields.send_cancels = ProtoField.new("Send Cancels", "memx.options.memo.sbe.v1.7.sendcancels", ftypes.UINT8, {[1]="Yes",[0]="No"}, base.DEC, 0x02)
omi_memx_options_memo_sbe_v1_7.fields.sending_time = ProtoField.new("Sending Time", "memx.options.memo.sbe.v1.7.sendingtime", ftypes.UINT64)
omi_memx_options_memo_sbe_v1_7.fields.sequenced_message = ProtoField.new("Sequenced Message", "memx.options.memo.sbe.v1.7.sequencedmessage", ftypes.STRING)
omi_memx_options_memo_sbe_v1_7.fields.session_id = ProtoField.new("Session Id", "memx.options.memo.sbe.v1.7.sessionid", ftypes.UINT64)
omi_memx_options_memo_sbe_v1_7.fields.side = ProtoField.new("Side", "memx.options.memo.sbe.v1.7.side", ftypes.STRING)
omi_memx_options_memo_sbe_v1_7.fields.side_optional = ProtoField.new("Side Optional", "memx.options.memo.sbe.v1.7.sideoptional", ftypes.STRING)
omi_memx_options_memo_sbe_v1_7.fields.start_of_session_message = ProtoField.new("Start Of Session Message", "memx.options.memo.sbe.v1.7.startofsessionmessage", ftypes.STRING)
omi_memx_options_memo_sbe_v1_7.fields.stream_begin_message = ProtoField.new("Stream Begin Message", "memx.options.memo.sbe.v1.7.streambeginmessage", ftypes.STRING)
omi_memx_options_memo_sbe_v1_7.fields.stream_complete_message = ProtoField.new("Stream Complete Message", "memx.options.memo.sbe.v1.7.streamcompletemessage", ftypes.STRING)
omi_memx_options_memo_sbe_v1_7.fields.stream_reject_code = ProtoField.new("Stream Reject Code", "memx.options.memo.sbe.v1.7.streamrejectcode", ftypes.STRING)
omi_memx_options_memo_sbe_v1_7.fields.stream_rejected_message = ProtoField.new("Stream Rejected Message", "memx.options.memo.sbe.v1.7.streamrejectedmessage", ftypes.STRING)
omi_memx_options_memo_sbe_v1_7.fields.stream_request_message = ProtoField.new("Stream Request Message", "memx.options.memo.sbe.v1.7.streamrequestmessage", ftypes.STRING)
omi_memx_options_memo_sbe_v1_7.fields.supported_request_mode = ProtoField.new("Supported Request Mode", "memx.options.memo.sbe.v1.7.supportedrequestmode", ftypes.STRING)
omi_memx_options_memo_sbe_v1_7.fields.symbol = ProtoField.new("Symbol", "memx.options.memo.sbe.v1.7.symbol", ftypes.STRING)
omi_memx_options_memo_sbe_v1_7.fields.template_id = ProtoField.new("Template Id", "memx.options.memo.sbe.v1.7.templateid", ftypes.UINT8)
omi_memx_options_memo_sbe_v1_7.fields.time_in_force = ProtoField.new("Time In Force", "memx.options.memo.sbe.v1.7.timeinforce", ftypes.STRING)
omi_memx_options_memo_sbe_v1_7.fields.token = ProtoField.new("Token", "memx.options.memo.sbe.v1.7.token", ftypes.STRING)
omi_memx_options_memo_sbe_v1_7.fields.token_type = ProtoField.new("Token Type", "memx.options.memo.sbe.v1.7.tokentype", ftypes.STRING)
omi_memx_options_memo_sbe_v1_7.fields.total_affected_orders = ProtoField.new("Total Affected Orders", "memx.options.memo.sbe.v1.7.totalaffectedorders", ftypes.UINT32)
omi_memx_options_memo_sbe_v1_7.fields.total_sequence_count = ProtoField.new("Total Sequence Count", "memx.options.memo.sbe.v1.7.totalsequencecount", ftypes.UINT64)
omi_memx_options_memo_sbe_v1_7.fields.trade_date = ProtoField.new("Trade Date", "memx.options.memo.sbe.v1.7.tradedate", ftypes.STRING)
omi_memx_options_memo_sbe_v1_7.fields.trade_id = ProtoField.new("Trade Id", "memx.options.memo.sbe.v1.7.tradeid", ftypes.UINT64)
omi_memx_options_memo_sbe_v1_7.fields.trading_capacity = ProtoField.new("Trading Capacity", "memx.options.memo.sbe.v1.7.tradingcapacity", ftypes.UINT8)
omi_memx_options_memo_sbe_v1_7.fields.transact_time = ProtoField.new("Transact Time", "memx.options.memo.sbe.v1.7.transacttime", ftypes.UINT64)
omi_memx_options_memo_sbe_v1_7.fields.trd_match_id = ProtoField.new("Trd Match Id", "memx.options.memo.sbe.v1.7.trdmatchid", ftypes.UINT64)
omi_memx_options_memo_sbe_v1_7.fields.underlier = ProtoField.new("Underlier", "memx.options.memo.sbe.v1.7.underlier", ftypes.STRING)
omi_memx_options_memo_sbe_v1_7.fields.underlier_mass_cancel_bulk_clear_lockouts_by_efid_or_underlier_request_underlier_optional = ProtoField.new("Underlier Mass Cancel Bulk Clear Lockouts By Efid Or Underlier Request Underlier optional", "memx.options.memo.sbe.v1.7.underliermasscancelbulkclearlockoutsbyefidorunderlierrequestunderlieroptional", ftypes.STRING)
omi_memx_options_memo_sbe_v1_7.fields.underlier_mass_cancel_clear_lockout_done_underlier = ProtoField.new("Underlier Mass Cancel Clear Lockout Done Underlier", "memx.options.memo.sbe.v1.7.underliermasscancelclearlockoutdoneunderlier", ftypes.STRING)
omi_memx_options_memo_sbe_v1_7.fields.underlier_mass_cancel_clear_lockout_reject_underlier = ProtoField.new("Underlier Mass Cancel Clear Lockout Reject Underlier", "memx.options.memo.sbe.v1.7.underliermasscancelclearlockoutrejectunderlier", ftypes.STRING)
omi_memx_options_memo_sbe_v1_7.fields.underlier_mass_cancel_clear_lockout_request_underlier = ProtoField.new("Underlier Mass Cancel Clear Lockout Request Underlier", "memx.options.memo.sbe.v1.7.underliermasscancelclearlockoutrequestunderlier", ftypes.STRING)
omi_memx_options_memo_sbe_v1_7.fields.underlier_optional = ProtoField.new("Underlier Optional", "memx.options.memo.sbe.v1.7.underlieroptional", ftypes.STRING)
omi_memx_options_memo_sbe_v1_7.fields.underlying_or_series = ProtoField.new("Underlying Or Series", "memx.options.memo.sbe.v1.7.underlyingorseries", ftypes.UINT8)
omi_memx_options_memo_sbe_v1_7.fields.underlying_or_series_optional = ProtoField.new("Underlying Or Series Optional", "memx.options.memo.sbe.v1.7.underlyingorseriesoptional", ftypes.UINT8)
omi_memx_options_memo_sbe_v1_7.fields.unsequenced_message = ProtoField.new("Unsequenced Message", "memx.options.memo.sbe.v1.7.unsequencedmessage", ftypes.STRING)
omi_memx_options_memo_sbe_v1_7.fields.user_status = ProtoField.new("User Status", "memx.options.memo.sbe.v1.7.userstatus", ftypes.UINT8)
omi_memx_options_memo_sbe_v1_7.fields.version = ProtoField.new("Version", "memx.options.memo.sbe.v1.7.version", ftypes.UINT16)

-- Memx Options Memo Sbe 1.7 messages
omi_memx_options_memo_sbe_v1_7.fields.allocation_instruction_ack_message = ProtoField.new("Allocation Instruction Ack Message", "memx.options.memo.sbe.v1.7.allocationinstructionackmessage", ftypes.STRING)
omi_memx_options_memo_sbe_v1_7.fields.allocation_instruction_alert_message = ProtoField.new("Allocation Instruction Alert Message", "memx.options.memo.sbe.v1.7.allocationinstructionalertmessage", ftypes.STRING)
omi_memx_options_memo_sbe_v1_7.fields.allocation_instruction_message = ProtoField.new("Allocation Instruction Message", "memx.options.memo.sbe.v1.7.allocationinstructionmessage", ftypes.STRING)
omi_memx_options_memo_sbe_v1_7.fields.execution_report_bulk_quote_component_new_message = ProtoField.new("Execution Report Bulk Quote Component New Message", "memx.options.memo.sbe.v1.7.executionreportbulkquotecomponentnewmessage", ftypes.STRING)
omi_memx_options_memo_sbe_v1_7.fields.execution_report_bulk_quote_pending_new_message = ProtoField.new("Execution Report Bulk Quote Pending New Message", "memx.options.memo.sbe.v1.7.executionreportbulkquotependingnewmessage", ftypes.STRING)
omi_memx_options_memo_sbe_v1_7.fields.execution_report_canceled_message = ProtoField.new("Execution Report Canceled Message", "memx.options.memo.sbe.v1.7.executionreportcanceledmessage", ftypes.STRING)
omi_memx_options_memo_sbe_v1_7.fields.execution_report_new_message = ProtoField.new("Execution Report New Message", "memx.options.memo.sbe.v1.7.executionreportnewmessage", ftypes.STRING)
omi_memx_options_memo_sbe_v1_7.fields.execution_report_pending_cancel_message = ProtoField.new("Execution Report Pending Cancel Message", "memx.options.memo.sbe.v1.7.executionreportpendingcancelmessage", ftypes.STRING)
omi_memx_options_memo_sbe_v1_7.fields.execution_report_pending_replace_message = ProtoField.new("Execution Report Pending Replace Message", "memx.options.memo.sbe.v1.7.executionreportpendingreplacemessage", ftypes.STRING)
omi_memx_options_memo_sbe_v1_7.fields.execution_report_rejected_message = ProtoField.new("Execution Report Rejected Message", "memx.options.memo.sbe.v1.7.executionreportrejectedmessage", ftypes.STRING)
omi_memx_options_memo_sbe_v1_7.fields.execution_report_replaced_message = ProtoField.new("Execution Report Replaced Message", "memx.options.memo.sbe.v1.7.executionreportreplacedmessage", ftypes.STRING)
omi_memx_options_memo_sbe_v1_7.fields.execution_report_restatement_message = ProtoField.new("Execution Report Restatement Message", "memx.options.memo.sbe.v1.7.executionreportrestatementmessage", ftypes.STRING)
omi_memx_options_memo_sbe_v1_7.fields.execution_report_trade_break_message = ProtoField.new("Execution Report Trade Break Message", "memx.options.memo.sbe.v1.7.executionreporttradebreakmessage", ftypes.STRING)
omi_memx_options_memo_sbe_v1_7.fields.execution_report_trade_correction_message = ProtoField.new("Execution Report Trade Correction Message", "memx.options.memo.sbe.v1.7.executionreporttradecorrectionmessage", ftypes.STRING)
omi_memx_options_memo_sbe_v1_7.fields.execution_report_trade_message = ProtoField.new("Execution Report Trade Message", "memx.options.memo.sbe.v1.7.executionreporttrademessage", ftypes.STRING)
omi_memx_options_memo_sbe_v1_7.fields.long_one_sided_bulk_quote_message = ProtoField.new("Long One Sided Bulk Quote Message", "memx.options.memo.sbe.v1.7.longonesidedbulkquotemessage", ftypes.STRING)
omi_memx_options_memo_sbe_v1_7.fields.long_two_sided_bulk_quote_message = ProtoField.new("Long Two Sided Bulk Quote Message", "memx.options.memo.sbe.v1.7.longtwosidedbulkquotemessage", ftypes.STRING)
omi_memx_options_memo_sbe_v1_7.fields.mass_cancel_bulk_clear_all_lockouts_request_message = ProtoField.new("Mass Cancel Bulk Clear All Lockouts Request Message", "memx.options.memo.sbe.v1.7.masscancelbulkclearalllockoutsrequestmessage", ftypes.STRING)
omi_memx_options_memo_sbe_v1_7.fields.mass_cancel_bulk_clear_lockout_accepted_message = ProtoField.new("Mass Cancel Bulk Clear Lockout Accepted Message", "memx.options.memo.sbe.v1.7.masscancelbulkclearlockoutacceptedmessage", ftypes.STRING)
omi_memx_options_memo_sbe_v1_7.fields.mass_cancel_bulk_clear_lockout_reject_message = ProtoField.new("Mass Cancel Bulk Clear Lockout Reject Message", "memx.options.memo.sbe.v1.7.masscancelbulkclearlockoutrejectmessage", ftypes.STRING)
omi_memx_options_memo_sbe_v1_7.fields.mass_cancel_bulk_clear_lockouts_by_efid_or_underlier_request_message = ProtoField.new("Mass Cancel Bulk Clear Lockouts By Efid Or Underlier Request Message", "memx.options.memo.sbe.v1.7.masscancelbulkclearlockoutsbyefidorunderlierrequestmessage", ftypes.STRING)
omi_memx_options_memo_sbe_v1_7.fields.mass_cancel_clear_lockout_done_message = ProtoField.new("Mass Cancel Clear Lockout Done Message", "memx.options.memo.sbe.v1.7.masscancelclearlockoutdonemessage", ftypes.STRING)
omi_memx_options_memo_sbe_v1_7.fields.mass_cancel_clear_lockout_reject_message = ProtoField.new("Mass Cancel Clear Lockout Reject Message", "memx.options.memo.sbe.v1.7.masscancelclearlockoutrejectmessage", ftypes.STRING)
omi_memx_options_memo_sbe_v1_7.fields.mass_cancel_clear_lockout_request_message = ProtoField.new("Mass Cancel Clear Lockout Request Message", "memx.options.memo.sbe.v1.7.masscancelclearlockoutrequestmessage", ftypes.STRING)
omi_memx_options_memo_sbe_v1_7.fields.mass_cancel_done_message = ProtoField.new("Mass Cancel Done Message", "memx.options.memo.sbe.v1.7.masscanceldonemessage", ftypes.STRING)
omi_memx_options_memo_sbe_v1_7.fields.mass_cancel_reject_message = ProtoField.new("Mass Cancel Reject Message", "memx.options.memo.sbe.v1.7.masscancelrejectmessage", ftypes.STRING)
omi_memx_options_memo_sbe_v1_7.fields.mass_cancel_request_message = ProtoField.new("Mass Cancel Request Message", "memx.options.memo.sbe.v1.7.masscancelrequestmessage", ftypes.STRING)
omi_memx_options_memo_sbe_v1_7.fields.new_order_single_message = ProtoField.new("New Order Single Message", "memx.options.memo.sbe.v1.7.newordersinglemessage", ftypes.STRING)
omi_memx_options_memo_sbe_v1_7.fields.order_cancel_reject_message = ProtoField.new("Order Cancel Reject Message", "memx.options.memo.sbe.v1.7.ordercancelrejectmessage", ftypes.STRING)
omi_memx_options_memo_sbe_v1_7.fields.order_cancel_replace_request_message = ProtoField.new("Order Cancel Replace Request Message", "memx.options.memo.sbe.v1.7.ordercancelreplacerequestmessage", ftypes.STRING)
omi_memx_options_memo_sbe_v1_7.fields.order_cancel_request_message = ProtoField.new("Order Cancel Request Message", "memx.options.memo.sbe.v1.7.ordercancelrequestmessage", ftypes.STRING)
omi_memx_options_memo_sbe_v1_7.fields.pending_mass_cancel_message = ProtoField.new("Pending Mass Cancel Message", "memx.options.memo.sbe.v1.7.pendingmasscancelmessage", ftypes.STRING)
omi_memx_options_memo_sbe_v1_7.fields.short_one_sided_bulk_quote_message = ProtoField.new("Short One Sided Bulk Quote Message", "memx.options.memo.sbe.v1.7.shortonesidedbulkquotemessage", ftypes.STRING)
omi_memx_options_memo_sbe_v1_7.fields.short_two_sided_bulk_quote_message = ProtoField.new("Short Two Sided Bulk Quote Message", "memx.options.memo.sbe.v1.7.shorttwosidedbulkquotemessage", ftypes.STRING)
omi_memx_options_memo_sbe_v1_7.fields.user_notification_message = ProtoField.new("User Notification Message", "memx.options.memo.sbe.v1.7.usernotificationmessage", ftypes.STRING)

-- Memx Options Memo Sbe 1.7 generated fields
omi_memx_options_memo_sbe_v1_7.fields.execution_allocations_group_index = ProtoField.new("Execution Allocations Group Index", "memx.options.memo.sbe.v1.7.executionallocationsgroupindex", ftypes.UINT16)
omi_memx_options_memo_sbe_v1_7.fields.parties_group_index = ProtoField.new("Parties Group Index", "memx.options.memo.sbe.v1.7.partiesgroupindex", ftypes.UINT16)
omi_memx_options_memo_sbe_v1_7.fields.quotes_group_index = ProtoField.new("Quotes Group Index", "memx.options.memo.sbe.v1.7.quotesgroupindex", ftypes.UINT16)
omi_memx_options_memo_sbe_v1_7.fields.reported_allocations_group_index = ProtoField.new("Reported Allocations Group Index", "memx.options.memo.sbe.v1.7.reportedallocationsgroupindex", ftypes.UINT16)
omi_memx_options_memo_sbe_v1_7.fields.requested_allocations_group_index = ProtoField.new("Requested Allocations Group Index", "memx.options.memo.sbe.v1.7.requestedallocationsgroupindex", ftypes.UINT16)

-----------------------------------------------------------------------
-- Declare Dissection Options
-----------------------------------------------------------------------

-- Memx Options Memo Sbe 1.7 Element Dissection Options
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
show.new_order_single_message = true
show.order_cancel_reject_message = true
show.order_cancel_replace_request_message = true
show.order_cancel_request_message = true
show.packet = true
show.parties_group = true
show.parties_groups = true
show.pending_mass_cancel_message = true
show.quotes_group = true
show.quotes_groups = true
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
show.unsequenced_message = true
show.user_notification_message = true
show.data = false
show.payload = false

-- Register Memx Options Memo Sbe 1.7 Show Options
omi_memx_options_memo_sbe_v1_7.prefs.show_allocation_instruction_ack_message = Pref.bool("Show Allocation Instruction Ack Message", show.allocation_instruction_ack_message, "Parse and add Allocation Instruction Ack Message to protocol tree")
omi_memx_options_memo_sbe_v1_7.prefs.show_allocation_instruction_alert_message = Pref.bool("Show Allocation Instruction Alert Message", show.allocation_instruction_alert_message, "Parse and add Allocation Instruction Alert Message to protocol tree")
omi_memx_options_memo_sbe_v1_7.prefs.show_allocation_instruction_message = Pref.bool("Show Allocation Instruction Message", show.allocation_instruction_message, "Parse and add Allocation Instruction Message to protocol tree")
omi_memx_options_memo_sbe_v1_7.prefs.show_common_header = Pref.bool("Show Common Header", show.common_header, "Parse and add Common Header to protocol tree")
omi_memx_options_memo_sbe_v1_7.prefs.show_exec_inst = Pref.bool("Show Exec Inst", show.exec_inst, "Parse and add Exec Inst to protocol tree")
omi_memx_options_memo_sbe_v1_7.prefs.show_execution_allocations_group = Pref.bool("Show Execution Allocations Group", show.execution_allocations_group, "Parse and add Execution Allocations Group to protocol tree")
omi_memx_options_memo_sbe_v1_7.prefs.show_execution_allocations_groups = Pref.bool("Show Execution Allocations Groups", show.execution_allocations_groups, "Parse and add Execution Allocations Groups to protocol tree")
omi_memx_options_memo_sbe_v1_7.prefs.show_execution_report_bulk_quote_component_new_message = Pref.bool("Show Execution Report Bulk Quote Component New Message", show.execution_report_bulk_quote_component_new_message, "Parse and add Execution Report Bulk Quote Component New Message to protocol tree")
omi_memx_options_memo_sbe_v1_7.prefs.show_execution_report_bulk_quote_pending_new_message = Pref.bool("Show Execution Report Bulk Quote Pending New Message", show.execution_report_bulk_quote_pending_new_message, "Parse and add Execution Report Bulk Quote Pending New Message to protocol tree")
omi_memx_options_memo_sbe_v1_7.prefs.show_execution_report_canceled_message = Pref.bool("Show Execution Report Canceled Message", show.execution_report_canceled_message, "Parse and add Execution Report Canceled Message to protocol tree")
omi_memx_options_memo_sbe_v1_7.prefs.show_execution_report_new_message = Pref.bool("Show Execution Report New Message", show.execution_report_new_message, "Parse and add Execution Report New Message to protocol tree")
omi_memx_options_memo_sbe_v1_7.prefs.show_execution_report_pending_cancel_message = Pref.bool("Show Execution Report Pending Cancel Message", show.execution_report_pending_cancel_message, "Parse and add Execution Report Pending Cancel Message to protocol tree")
omi_memx_options_memo_sbe_v1_7.prefs.show_execution_report_pending_replace_message = Pref.bool("Show Execution Report Pending Replace Message", show.execution_report_pending_replace_message, "Parse and add Execution Report Pending Replace Message to protocol tree")
omi_memx_options_memo_sbe_v1_7.prefs.show_execution_report_rejected_message = Pref.bool("Show Execution Report Rejected Message", show.execution_report_rejected_message, "Parse and add Execution Report Rejected Message to protocol tree")
omi_memx_options_memo_sbe_v1_7.prefs.show_execution_report_replaced_message = Pref.bool("Show Execution Report Replaced Message", show.execution_report_replaced_message, "Parse and add Execution Report Replaced Message to protocol tree")
omi_memx_options_memo_sbe_v1_7.prefs.show_execution_report_restatement_message = Pref.bool("Show Execution Report Restatement Message", show.execution_report_restatement_message, "Parse and add Execution Report Restatement Message to protocol tree")
omi_memx_options_memo_sbe_v1_7.prefs.show_execution_report_trade_break_message = Pref.bool("Show Execution Report Trade Break Message", show.execution_report_trade_break_message, "Parse and add Execution Report Trade Break Message to protocol tree")
omi_memx_options_memo_sbe_v1_7.prefs.show_execution_report_trade_correction_message = Pref.bool("Show Execution Report Trade Correction Message", show.execution_report_trade_correction_message, "Parse and add Execution Report Trade Correction Message to protocol tree")
omi_memx_options_memo_sbe_v1_7.prefs.show_execution_report_trade_message = Pref.bool("Show Execution Report Trade Message", show.execution_report_trade_message, "Parse and add Execution Report Trade Message to protocol tree")
omi_memx_options_memo_sbe_v1_7.prefs.show_login_accepted_message = Pref.bool("Show Login Accepted Message", show.login_accepted_message, "Parse and add Login Accepted Message to protocol tree")
omi_memx_options_memo_sbe_v1_7.prefs.show_login_rejected_message = Pref.bool("Show Login Rejected Message", show.login_rejected_message, "Parse and add Login Rejected Message to protocol tree")
omi_memx_options_memo_sbe_v1_7.prefs.show_login_request_message = Pref.bool("Show Login Request Message", show.login_request_message, "Parse and add Login Request Message to protocol tree")
omi_memx_options_memo_sbe_v1_7.prefs.show_long_one_sided_bulk_quote_message = Pref.bool("Show Long One Sided Bulk Quote Message", show.long_one_sided_bulk_quote_message, "Parse and add Long One Sided Bulk Quote Message to protocol tree")
omi_memx_options_memo_sbe_v1_7.prefs.show_long_two_sided_bulk_quote_message = Pref.bool("Show Long Two Sided Bulk Quote Message", show.long_two_sided_bulk_quote_message, "Parse and add Long Two Sided Bulk Quote Message to protocol tree")
omi_memx_options_memo_sbe_v1_7.prefs.show_mass_cancel_bulk_clear_all_lockouts_request_message = Pref.bool("Show Mass Cancel Bulk Clear All Lockouts Request Message", show.mass_cancel_bulk_clear_all_lockouts_request_message, "Parse and add Mass Cancel Bulk Clear All Lockouts Request Message to protocol tree")
omi_memx_options_memo_sbe_v1_7.prefs.show_mass_cancel_bulk_clear_lockout_accepted_message = Pref.bool("Show Mass Cancel Bulk Clear Lockout Accepted Message", show.mass_cancel_bulk_clear_lockout_accepted_message, "Parse and add Mass Cancel Bulk Clear Lockout Accepted Message to protocol tree")
omi_memx_options_memo_sbe_v1_7.prefs.show_mass_cancel_bulk_clear_lockout_reject_message = Pref.bool("Show Mass Cancel Bulk Clear Lockout Reject Message", show.mass_cancel_bulk_clear_lockout_reject_message, "Parse and add Mass Cancel Bulk Clear Lockout Reject Message to protocol tree")
omi_memx_options_memo_sbe_v1_7.prefs.show_mass_cancel_bulk_clear_lockouts_by_efid_or_underlier_request_message = Pref.bool("Show Mass Cancel Bulk Clear Lockouts By Efid Or Underlier Request Message", show.mass_cancel_bulk_clear_lockouts_by_efid_or_underlier_request_message, "Parse and add Mass Cancel Bulk Clear Lockouts By Efid Or Underlier Request Message to protocol tree")
omi_memx_options_memo_sbe_v1_7.prefs.show_mass_cancel_clear_lockout_done_message = Pref.bool("Show Mass Cancel Clear Lockout Done Message", show.mass_cancel_clear_lockout_done_message, "Parse and add Mass Cancel Clear Lockout Done Message to protocol tree")
omi_memx_options_memo_sbe_v1_7.prefs.show_mass_cancel_clear_lockout_reject_message = Pref.bool("Show Mass Cancel Clear Lockout Reject Message", show.mass_cancel_clear_lockout_reject_message, "Parse and add Mass Cancel Clear Lockout Reject Message to protocol tree")
omi_memx_options_memo_sbe_v1_7.prefs.show_mass_cancel_clear_lockout_request_message = Pref.bool("Show Mass Cancel Clear Lockout Request Message", show.mass_cancel_clear_lockout_request_message, "Parse and add Mass Cancel Clear Lockout Request Message to protocol tree")
omi_memx_options_memo_sbe_v1_7.prefs.show_mass_cancel_done_message = Pref.bool("Show Mass Cancel Done Message", show.mass_cancel_done_message, "Parse and add Mass Cancel Done Message to protocol tree")
omi_memx_options_memo_sbe_v1_7.prefs.show_mass_cancel_inst = Pref.bool("Show Mass Cancel Inst", show.mass_cancel_inst, "Parse and add Mass Cancel Inst to protocol tree")
omi_memx_options_memo_sbe_v1_7.prefs.show_mass_cancel_reject_message = Pref.bool("Show Mass Cancel Reject Message", show.mass_cancel_reject_message, "Parse and add Mass Cancel Reject Message to protocol tree")
omi_memx_options_memo_sbe_v1_7.prefs.show_mass_cancel_request_message = Pref.bool("Show Mass Cancel Request Message", show.mass_cancel_request_message, "Parse and add Mass Cancel Request Message to protocol tree")
omi_memx_options_memo_sbe_v1_7.prefs.show_new_order_single_message = Pref.bool("Show New Order Single Message", show.new_order_single_message, "Parse and add New Order Single Message to protocol tree")
omi_memx_options_memo_sbe_v1_7.prefs.show_order_cancel_reject_message = Pref.bool("Show Order Cancel Reject Message", show.order_cancel_reject_message, "Parse and add Order Cancel Reject Message to protocol tree")
omi_memx_options_memo_sbe_v1_7.prefs.show_order_cancel_replace_request_message = Pref.bool("Show Order Cancel Replace Request Message", show.order_cancel_replace_request_message, "Parse and add Order Cancel Replace Request Message to protocol tree")
omi_memx_options_memo_sbe_v1_7.prefs.show_order_cancel_request_message = Pref.bool("Show Order Cancel Request Message", show.order_cancel_request_message, "Parse and add Order Cancel Request Message to protocol tree")
omi_memx_options_memo_sbe_v1_7.prefs.show_packet = Pref.bool("Show Packet", show.packet, "Parse and add Packet to protocol tree")
omi_memx_options_memo_sbe_v1_7.prefs.show_parties_group = Pref.bool("Show Parties Group", show.parties_group, "Parse and add Parties Group to protocol tree")
omi_memx_options_memo_sbe_v1_7.prefs.show_parties_groups = Pref.bool("Show Parties Groups", show.parties_groups, "Parse and add Parties Groups to protocol tree")
omi_memx_options_memo_sbe_v1_7.prefs.show_pending_mass_cancel_message = Pref.bool("Show Pending Mass Cancel Message", show.pending_mass_cancel_message, "Parse and add Pending Mass Cancel Message to protocol tree")
omi_memx_options_memo_sbe_v1_7.prefs.show_quotes_group = Pref.bool("Show Quotes Group", show.quotes_group, "Parse and add Quotes Group to protocol tree")
omi_memx_options_memo_sbe_v1_7.prefs.show_quotes_groups = Pref.bool("Show Quotes Groups", show.quotes_groups, "Parse and add Quotes Groups to protocol tree")
omi_memx_options_memo_sbe_v1_7.prefs.show_repeating_group_dimensions = Pref.bool("Show Repeating Group Dimensions", show.repeating_group_dimensions, "Parse and add Repeating Group Dimensions to protocol tree")
omi_memx_options_memo_sbe_v1_7.prefs.show_replay_all_request_message = Pref.bool("Show Replay All Request Message", show.replay_all_request_message, "Parse and add Replay All Request Message to protocol tree")
omi_memx_options_memo_sbe_v1_7.prefs.show_replay_begin_message = Pref.bool("Show Replay Begin Message", show.replay_begin_message, "Parse and add Replay Begin Message to protocol tree")
omi_memx_options_memo_sbe_v1_7.prefs.show_replay_complete_message = Pref.bool("Show Replay Complete Message", show.replay_complete_message, "Parse and add Replay Complete Message to protocol tree")
omi_memx_options_memo_sbe_v1_7.prefs.show_replay_rejected_message = Pref.bool("Show Replay Rejected Message", show.replay_rejected_message, "Parse and add Replay Rejected Message to protocol tree")
omi_memx_options_memo_sbe_v1_7.prefs.show_replay_request_message = Pref.bool("Show Replay Request Message", show.replay_request_message, "Parse and add Replay Request Message to protocol tree")
omi_memx_options_memo_sbe_v1_7.prefs.show_reported_allocations_group = Pref.bool("Show Reported Allocations Group", show.reported_allocations_group, "Parse and add Reported Allocations Group to protocol tree")
omi_memx_options_memo_sbe_v1_7.prefs.show_reported_allocations_groups = Pref.bool("Show Reported Allocations Groups", show.reported_allocations_groups, "Parse and add Reported Allocations Groups to protocol tree")
omi_memx_options_memo_sbe_v1_7.prefs.show_requested_allocations_group = Pref.bool("Show Requested Allocations Group", show.requested_allocations_group, "Parse and add Requested Allocations Group to protocol tree")
omi_memx_options_memo_sbe_v1_7.prefs.show_requested_allocations_groups = Pref.bool("Show Requested Allocations Groups", show.requested_allocations_groups, "Parse and add Requested Allocations Groups to protocol tree")
omi_memx_options_memo_sbe_v1_7.prefs.show_sbe_header = Pref.bool("Show Sbe Header", show.sbe_header, "Parse and add Sbe Header to protocol tree")
omi_memx_options_memo_sbe_v1_7.prefs.show_sbe_message = Pref.bool("Show Sbe Message", show.sbe_message, "Parse and add Sbe Message to protocol tree")
omi_memx_options_memo_sbe_v1_7.prefs.show_sequenced_message = Pref.bool("Show Sequenced Message", show.sequenced_message, "Parse and add Sequenced Message to protocol tree")
omi_memx_options_memo_sbe_v1_7.prefs.show_short_one_sided_bulk_quote_message = Pref.bool("Show Short One Sided Bulk Quote Message", show.short_one_sided_bulk_quote_message, "Parse and add Short One Sided Bulk Quote Message to protocol tree")
omi_memx_options_memo_sbe_v1_7.prefs.show_short_two_sided_bulk_quote_message = Pref.bool("Show Short Two Sided Bulk Quote Message", show.short_two_sided_bulk_quote_message, "Parse and add Short Two Sided Bulk Quote Message to protocol tree")
omi_memx_options_memo_sbe_v1_7.prefs.show_start_of_session_message = Pref.bool("Show Start Of Session Message", show.start_of_session_message, "Parse and add Start Of Session Message to protocol tree")
omi_memx_options_memo_sbe_v1_7.prefs.show_stream_begin_message = Pref.bool("Show Stream Begin Message", show.stream_begin_message, "Parse and add Stream Begin Message to protocol tree")
omi_memx_options_memo_sbe_v1_7.prefs.show_stream_complete_message = Pref.bool("Show Stream Complete Message", show.stream_complete_message, "Parse and add Stream Complete Message to protocol tree")
omi_memx_options_memo_sbe_v1_7.prefs.show_stream_rejected_message = Pref.bool("Show Stream Rejected Message", show.stream_rejected_message, "Parse and add Stream Rejected Message to protocol tree")
omi_memx_options_memo_sbe_v1_7.prefs.show_stream_request_message = Pref.bool("Show Stream Request Message", show.stream_request_message, "Parse and add Stream Request Message to protocol tree")
omi_memx_options_memo_sbe_v1_7.prefs.show_unsequenced_message = Pref.bool("Show Unsequenced Message", show.unsequenced_message, "Parse and add Unsequenced Message to protocol tree")
omi_memx_options_memo_sbe_v1_7.prefs.show_user_notification_message = Pref.bool("Show User Notification Message", show.user_notification_message, "Parse and add User Notification Message to protocol tree")
omi_memx_options_memo_sbe_v1_7.prefs.show_data = Pref.bool("Show Data", show.data, "Parse and add Data to protocol tree")
omi_memx_options_memo_sbe_v1_7.prefs.show_payload = Pref.bool("Show Payload", show.payload, "Parse and add Payload to protocol tree")

-- Handle changed preferences
function omi_memx_options_memo_sbe_v1_7.prefs_changed()
  local changed = false

  -- Check if show options have changed
  if show.allocation_instruction_ack_message ~= omi_memx_options_memo_sbe_v1_7.prefs.show_allocation_instruction_ack_message then
    show.allocation_instruction_ack_message = omi_memx_options_memo_sbe_v1_7.prefs.show_allocation_instruction_ack_message
    changed = true
  end
  if show.allocation_instruction_alert_message ~= omi_memx_options_memo_sbe_v1_7.prefs.show_allocation_instruction_alert_message then
    show.allocation_instruction_alert_message = omi_memx_options_memo_sbe_v1_7.prefs.show_allocation_instruction_alert_message
    changed = true
  end
  if show.allocation_instruction_message ~= omi_memx_options_memo_sbe_v1_7.prefs.show_allocation_instruction_message then
    show.allocation_instruction_message = omi_memx_options_memo_sbe_v1_7.prefs.show_allocation_instruction_message
    changed = true
  end
  if show.common_header ~= omi_memx_options_memo_sbe_v1_7.prefs.show_common_header then
    show.common_header = omi_memx_options_memo_sbe_v1_7.prefs.show_common_header
    changed = true
  end
  if show.exec_inst ~= omi_memx_options_memo_sbe_v1_7.prefs.show_exec_inst then
    show.exec_inst = omi_memx_options_memo_sbe_v1_7.prefs.show_exec_inst
    changed = true
  end
  if show.execution_allocations_group ~= omi_memx_options_memo_sbe_v1_7.prefs.show_execution_allocations_group then
    show.execution_allocations_group = omi_memx_options_memo_sbe_v1_7.prefs.show_execution_allocations_group
    changed = true
  end
  if show.execution_allocations_groups ~= omi_memx_options_memo_sbe_v1_7.prefs.show_execution_allocations_groups then
    show.execution_allocations_groups = omi_memx_options_memo_sbe_v1_7.prefs.show_execution_allocations_groups
    changed = true
  end
  if show.execution_report_bulk_quote_component_new_message ~= omi_memx_options_memo_sbe_v1_7.prefs.show_execution_report_bulk_quote_component_new_message then
    show.execution_report_bulk_quote_component_new_message = omi_memx_options_memo_sbe_v1_7.prefs.show_execution_report_bulk_quote_component_new_message
    changed = true
  end
  if show.execution_report_bulk_quote_pending_new_message ~= omi_memx_options_memo_sbe_v1_7.prefs.show_execution_report_bulk_quote_pending_new_message then
    show.execution_report_bulk_quote_pending_new_message = omi_memx_options_memo_sbe_v1_7.prefs.show_execution_report_bulk_quote_pending_new_message
    changed = true
  end
  if show.execution_report_canceled_message ~= omi_memx_options_memo_sbe_v1_7.prefs.show_execution_report_canceled_message then
    show.execution_report_canceled_message = omi_memx_options_memo_sbe_v1_7.prefs.show_execution_report_canceled_message
    changed = true
  end
  if show.execution_report_new_message ~= omi_memx_options_memo_sbe_v1_7.prefs.show_execution_report_new_message then
    show.execution_report_new_message = omi_memx_options_memo_sbe_v1_7.prefs.show_execution_report_new_message
    changed = true
  end
  if show.execution_report_pending_cancel_message ~= omi_memx_options_memo_sbe_v1_7.prefs.show_execution_report_pending_cancel_message then
    show.execution_report_pending_cancel_message = omi_memx_options_memo_sbe_v1_7.prefs.show_execution_report_pending_cancel_message
    changed = true
  end
  if show.execution_report_pending_replace_message ~= omi_memx_options_memo_sbe_v1_7.prefs.show_execution_report_pending_replace_message then
    show.execution_report_pending_replace_message = omi_memx_options_memo_sbe_v1_7.prefs.show_execution_report_pending_replace_message
    changed = true
  end
  if show.execution_report_rejected_message ~= omi_memx_options_memo_sbe_v1_7.prefs.show_execution_report_rejected_message then
    show.execution_report_rejected_message = omi_memx_options_memo_sbe_v1_7.prefs.show_execution_report_rejected_message
    changed = true
  end
  if show.execution_report_replaced_message ~= omi_memx_options_memo_sbe_v1_7.prefs.show_execution_report_replaced_message then
    show.execution_report_replaced_message = omi_memx_options_memo_sbe_v1_7.prefs.show_execution_report_replaced_message
    changed = true
  end
  if show.execution_report_restatement_message ~= omi_memx_options_memo_sbe_v1_7.prefs.show_execution_report_restatement_message then
    show.execution_report_restatement_message = omi_memx_options_memo_sbe_v1_7.prefs.show_execution_report_restatement_message
    changed = true
  end
  if show.execution_report_trade_break_message ~= omi_memx_options_memo_sbe_v1_7.prefs.show_execution_report_trade_break_message then
    show.execution_report_trade_break_message = omi_memx_options_memo_sbe_v1_7.prefs.show_execution_report_trade_break_message
    changed = true
  end
  if show.execution_report_trade_correction_message ~= omi_memx_options_memo_sbe_v1_7.prefs.show_execution_report_trade_correction_message then
    show.execution_report_trade_correction_message = omi_memx_options_memo_sbe_v1_7.prefs.show_execution_report_trade_correction_message
    changed = true
  end
  if show.execution_report_trade_message ~= omi_memx_options_memo_sbe_v1_7.prefs.show_execution_report_trade_message then
    show.execution_report_trade_message = omi_memx_options_memo_sbe_v1_7.prefs.show_execution_report_trade_message
    changed = true
  end
  if show.login_accepted_message ~= omi_memx_options_memo_sbe_v1_7.prefs.show_login_accepted_message then
    show.login_accepted_message = omi_memx_options_memo_sbe_v1_7.prefs.show_login_accepted_message
    changed = true
  end
  if show.login_rejected_message ~= omi_memx_options_memo_sbe_v1_7.prefs.show_login_rejected_message then
    show.login_rejected_message = omi_memx_options_memo_sbe_v1_7.prefs.show_login_rejected_message
    changed = true
  end
  if show.login_request_message ~= omi_memx_options_memo_sbe_v1_7.prefs.show_login_request_message then
    show.login_request_message = omi_memx_options_memo_sbe_v1_7.prefs.show_login_request_message
    changed = true
  end
  if show.long_one_sided_bulk_quote_message ~= omi_memx_options_memo_sbe_v1_7.prefs.show_long_one_sided_bulk_quote_message then
    show.long_one_sided_bulk_quote_message = omi_memx_options_memo_sbe_v1_7.prefs.show_long_one_sided_bulk_quote_message
    changed = true
  end
  if show.long_two_sided_bulk_quote_message ~= omi_memx_options_memo_sbe_v1_7.prefs.show_long_two_sided_bulk_quote_message then
    show.long_two_sided_bulk_quote_message = omi_memx_options_memo_sbe_v1_7.prefs.show_long_two_sided_bulk_quote_message
    changed = true
  end
  if show.mass_cancel_bulk_clear_all_lockouts_request_message ~= omi_memx_options_memo_sbe_v1_7.prefs.show_mass_cancel_bulk_clear_all_lockouts_request_message then
    show.mass_cancel_bulk_clear_all_lockouts_request_message = omi_memx_options_memo_sbe_v1_7.prefs.show_mass_cancel_bulk_clear_all_lockouts_request_message
    changed = true
  end
  if show.mass_cancel_bulk_clear_lockout_accepted_message ~= omi_memx_options_memo_sbe_v1_7.prefs.show_mass_cancel_bulk_clear_lockout_accepted_message then
    show.mass_cancel_bulk_clear_lockout_accepted_message = omi_memx_options_memo_sbe_v1_7.prefs.show_mass_cancel_bulk_clear_lockout_accepted_message
    changed = true
  end
  if show.mass_cancel_bulk_clear_lockout_reject_message ~= omi_memx_options_memo_sbe_v1_7.prefs.show_mass_cancel_bulk_clear_lockout_reject_message then
    show.mass_cancel_bulk_clear_lockout_reject_message = omi_memx_options_memo_sbe_v1_7.prefs.show_mass_cancel_bulk_clear_lockout_reject_message
    changed = true
  end
  if show.mass_cancel_bulk_clear_lockouts_by_efid_or_underlier_request_message ~= omi_memx_options_memo_sbe_v1_7.prefs.show_mass_cancel_bulk_clear_lockouts_by_efid_or_underlier_request_message then
    show.mass_cancel_bulk_clear_lockouts_by_efid_or_underlier_request_message = omi_memx_options_memo_sbe_v1_7.prefs.show_mass_cancel_bulk_clear_lockouts_by_efid_or_underlier_request_message
    changed = true
  end
  if show.mass_cancel_clear_lockout_done_message ~= omi_memx_options_memo_sbe_v1_7.prefs.show_mass_cancel_clear_lockout_done_message then
    show.mass_cancel_clear_lockout_done_message = omi_memx_options_memo_sbe_v1_7.prefs.show_mass_cancel_clear_lockout_done_message
    changed = true
  end
  if show.mass_cancel_clear_lockout_reject_message ~= omi_memx_options_memo_sbe_v1_7.prefs.show_mass_cancel_clear_lockout_reject_message then
    show.mass_cancel_clear_lockout_reject_message = omi_memx_options_memo_sbe_v1_7.prefs.show_mass_cancel_clear_lockout_reject_message
    changed = true
  end
  if show.mass_cancel_clear_lockout_request_message ~= omi_memx_options_memo_sbe_v1_7.prefs.show_mass_cancel_clear_lockout_request_message then
    show.mass_cancel_clear_lockout_request_message = omi_memx_options_memo_sbe_v1_7.prefs.show_mass_cancel_clear_lockout_request_message
    changed = true
  end
  if show.mass_cancel_done_message ~= omi_memx_options_memo_sbe_v1_7.prefs.show_mass_cancel_done_message then
    show.mass_cancel_done_message = omi_memx_options_memo_sbe_v1_7.prefs.show_mass_cancel_done_message
    changed = true
  end
  if show.mass_cancel_inst ~= omi_memx_options_memo_sbe_v1_7.prefs.show_mass_cancel_inst then
    show.mass_cancel_inst = omi_memx_options_memo_sbe_v1_7.prefs.show_mass_cancel_inst
    changed = true
  end
  if show.mass_cancel_reject_message ~= omi_memx_options_memo_sbe_v1_7.prefs.show_mass_cancel_reject_message then
    show.mass_cancel_reject_message = omi_memx_options_memo_sbe_v1_7.prefs.show_mass_cancel_reject_message
    changed = true
  end
  if show.mass_cancel_request_message ~= omi_memx_options_memo_sbe_v1_7.prefs.show_mass_cancel_request_message then
    show.mass_cancel_request_message = omi_memx_options_memo_sbe_v1_7.prefs.show_mass_cancel_request_message
    changed = true
  end
  if show.new_order_single_message ~= omi_memx_options_memo_sbe_v1_7.prefs.show_new_order_single_message then
    show.new_order_single_message = omi_memx_options_memo_sbe_v1_7.prefs.show_new_order_single_message
    changed = true
  end
  if show.order_cancel_reject_message ~= omi_memx_options_memo_sbe_v1_7.prefs.show_order_cancel_reject_message then
    show.order_cancel_reject_message = omi_memx_options_memo_sbe_v1_7.prefs.show_order_cancel_reject_message
    changed = true
  end
  if show.order_cancel_replace_request_message ~= omi_memx_options_memo_sbe_v1_7.prefs.show_order_cancel_replace_request_message then
    show.order_cancel_replace_request_message = omi_memx_options_memo_sbe_v1_7.prefs.show_order_cancel_replace_request_message
    changed = true
  end
  if show.order_cancel_request_message ~= omi_memx_options_memo_sbe_v1_7.prefs.show_order_cancel_request_message then
    show.order_cancel_request_message = omi_memx_options_memo_sbe_v1_7.prefs.show_order_cancel_request_message
    changed = true
  end
  if show.packet ~= omi_memx_options_memo_sbe_v1_7.prefs.show_packet then
    show.packet = omi_memx_options_memo_sbe_v1_7.prefs.show_packet
    changed = true
  end
  if show.parties_group ~= omi_memx_options_memo_sbe_v1_7.prefs.show_parties_group then
    show.parties_group = omi_memx_options_memo_sbe_v1_7.prefs.show_parties_group
    changed = true
  end
  if show.parties_groups ~= omi_memx_options_memo_sbe_v1_7.prefs.show_parties_groups then
    show.parties_groups = omi_memx_options_memo_sbe_v1_7.prefs.show_parties_groups
    changed = true
  end
  if show.pending_mass_cancel_message ~= omi_memx_options_memo_sbe_v1_7.prefs.show_pending_mass_cancel_message then
    show.pending_mass_cancel_message = omi_memx_options_memo_sbe_v1_7.prefs.show_pending_mass_cancel_message
    changed = true
  end
  if show.quotes_group ~= omi_memx_options_memo_sbe_v1_7.prefs.show_quotes_group then
    show.quotes_group = omi_memx_options_memo_sbe_v1_7.prefs.show_quotes_group
    changed = true
  end
  if show.quotes_groups ~= omi_memx_options_memo_sbe_v1_7.prefs.show_quotes_groups then
    show.quotes_groups = omi_memx_options_memo_sbe_v1_7.prefs.show_quotes_groups
    changed = true
  end
  if show.repeating_group_dimensions ~= omi_memx_options_memo_sbe_v1_7.prefs.show_repeating_group_dimensions then
    show.repeating_group_dimensions = omi_memx_options_memo_sbe_v1_7.prefs.show_repeating_group_dimensions
    changed = true
  end
  if show.replay_all_request_message ~= omi_memx_options_memo_sbe_v1_7.prefs.show_replay_all_request_message then
    show.replay_all_request_message = omi_memx_options_memo_sbe_v1_7.prefs.show_replay_all_request_message
    changed = true
  end
  if show.replay_begin_message ~= omi_memx_options_memo_sbe_v1_7.prefs.show_replay_begin_message then
    show.replay_begin_message = omi_memx_options_memo_sbe_v1_7.prefs.show_replay_begin_message
    changed = true
  end
  if show.replay_complete_message ~= omi_memx_options_memo_sbe_v1_7.prefs.show_replay_complete_message then
    show.replay_complete_message = omi_memx_options_memo_sbe_v1_7.prefs.show_replay_complete_message
    changed = true
  end
  if show.replay_rejected_message ~= omi_memx_options_memo_sbe_v1_7.prefs.show_replay_rejected_message then
    show.replay_rejected_message = omi_memx_options_memo_sbe_v1_7.prefs.show_replay_rejected_message
    changed = true
  end
  if show.replay_request_message ~= omi_memx_options_memo_sbe_v1_7.prefs.show_replay_request_message then
    show.replay_request_message = omi_memx_options_memo_sbe_v1_7.prefs.show_replay_request_message
    changed = true
  end
  if show.reported_allocations_group ~= omi_memx_options_memo_sbe_v1_7.prefs.show_reported_allocations_group then
    show.reported_allocations_group = omi_memx_options_memo_sbe_v1_7.prefs.show_reported_allocations_group
    changed = true
  end
  if show.reported_allocations_groups ~= omi_memx_options_memo_sbe_v1_7.prefs.show_reported_allocations_groups then
    show.reported_allocations_groups = omi_memx_options_memo_sbe_v1_7.prefs.show_reported_allocations_groups
    changed = true
  end
  if show.requested_allocations_group ~= omi_memx_options_memo_sbe_v1_7.prefs.show_requested_allocations_group then
    show.requested_allocations_group = omi_memx_options_memo_sbe_v1_7.prefs.show_requested_allocations_group
    changed = true
  end
  if show.requested_allocations_groups ~= omi_memx_options_memo_sbe_v1_7.prefs.show_requested_allocations_groups then
    show.requested_allocations_groups = omi_memx_options_memo_sbe_v1_7.prefs.show_requested_allocations_groups
    changed = true
  end
  if show.sbe_header ~= omi_memx_options_memo_sbe_v1_7.prefs.show_sbe_header then
    show.sbe_header = omi_memx_options_memo_sbe_v1_7.prefs.show_sbe_header
    changed = true
  end
  if show.sbe_message ~= omi_memx_options_memo_sbe_v1_7.prefs.show_sbe_message then
    show.sbe_message = omi_memx_options_memo_sbe_v1_7.prefs.show_sbe_message
    changed = true
  end
  if show.sequenced_message ~= omi_memx_options_memo_sbe_v1_7.prefs.show_sequenced_message then
    show.sequenced_message = omi_memx_options_memo_sbe_v1_7.prefs.show_sequenced_message
    changed = true
  end
  if show.short_one_sided_bulk_quote_message ~= omi_memx_options_memo_sbe_v1_7.prefs.show_short_one_sided_bulk_quote_message then
    show.short_one_sided_bulk_quote_message = omi_memx_options_memo_sbe_v1_7.prefs.show_short_one_sided_bulk_quote_message
    changed = true
  end
  if show.short_two_sided_bulk_quote_message ~= omi_memx_options_memo_sbe_v1_7.prefs.show_short_two_sided_bulk_quote_message then
    show.short_two_sided_bulk_quote_message = omi_memx_options_memo_sbe_v1_7.prefs.show_short_two_sided_bulk_quote_message
    changed = true
  end
  if show.start_of_session_message ~= omi_memx_options_memo_sbe_v1_7.prefs.show_start_of_session_message then
    show.start_of_session_message = omi_memx_options_memo_sbe_v1_7.prefs.show_start_of_session_message
    changed = true
  end
  if show.stream_begin_message ~= omi_memx_options_memo_sbe_v1_7.prefs.show_stream_begin_message then
    show.stream_begin_message = omi_memx_options_memo_sbe_v1_7.prefs.show_stream_begin_message
    changed = true
  end
  if show.stream_complete_message ~= omi_memx_options_memo_sbe_v1_7.prefs.show_stream_complete_message then
    show.stream_complete_message = omi_memx_options_memo_sbe_v1_7.prefs.show_stream_complete_message
    changed = true
  end
  if show.stream_rejected_message ~= omi_memx_options_memo_sbe_v1_7.prefs.show_stream_rejected_message then
    show.stream_rejected_message = omi_memx_options_memo_sbe_v1_7.prefs.show_stream_rejected_message
    changed = true
  end
  if show.stream_request_message ~= omi_memx_options_memo_sbe_v1_7.prefs.show_stream_request_message then
    show.stream_request_message = omi_memx_options_memo_sbe_v1_7.prefs.show_stream_request_message
    changed = true
  end
  if show.unsequenced_message ~= omi_memx_options_memo_sbe_v1_7.prefs.show_unsequenced_message then
    show.unsequenced_message = omi_memx_options_memo_sbe_v1_7.prefs.show_unsequenced_message
    changed = true
  end
  if show.user_notification_message ~= omi_memx_options_memo_sbe_v1_7.prefs.show_user_notification_message then
    show.user_notification_message = omi_memx_options_memo_sbe_v1_7.prefs.show_user_notification_message
    changed = true
  end
  if show.data ~= omi_memx_options_memo_sbe_v1_7.prefs.show_data then
    show.data = omi_memx_options_memo_sbe_v1_7.prefs.show_data
    changed = true
  end
  if show.payload ~= omi_memx_options_memo_sbe_v1_7.prefs.show_payload then
    show.payload = omi_memx_options_memo_sbe_v1_7.prefs.show_payload
    changed = true
  end

  -- Reload on changed preference
  if changed then
    reload()
  end
end


-----------------------------------------------------------------------
-- Dissect Memx Options Memo Sbe 1.7
-----------------------------------------------------------------------

-- Sending Time
memx_options_memo_sbe_v1_7.sending_time = {}

-- Size: Sending Time
memx_options_memo_sbe_v1_7.sending_time.size = 8

-- Display: Sending Time
memx_options_memo_sbe_v1_7.sending_time.display = function(value)
  -- Parse unix timestamp
  local seconds = math.floor(value:tonumber()/1000000000)
  local nanoseconds = value:tonumber()%1000000000

  return "Sending Time: "..os.date("%x %H:%M:%S.", seconds)..string.format("%09d", nanoseconds)
end

-- Dissect: Sending Time
memx_options_memo_sbe_v1_7.sending_time.dissect = function(buffer, offset, packet, parent)
  local length = memx_options_memo_sbe_v1_7.sending_time.size
  local range = buffer(offset, length)
  local value = range:uint64()
  local display = memx_options_memo_sbe_v1_7.sending_time.display(value, buffer, offset, packet, parent)

  parent:add(omi_memx_options_memo_sbe_v1_7.fields.sending_time, range, value, display)

  return offset + length, value
end

-- Cl Ord I D Mass Cancel Bulk Clear Lockout Accepted Cl Ord Id
memx_options_memo_sbe_v1_7.cl_ord_i_d_mass_cancel_bulk_clear_lockout_accepted_cl_ord_id = {}

-- Size: Cl Ord I D Mass Cancel Bulk Clear Lockout Accepted Cl Ord Id
memx_options_memo_sbe_v1_7.cl_ord_i_d_mass_cancel_bulk_clear_lockout_accepted_cl_ord_id.size = 20

-- Display: Cl Ord I D Mass Cancel Bulk Clear Lockout Accepted Cl Ord Id
memx_options_memo_sbe_v1_7.cl_ord_i_d_mass_cancel_bulk_clear_lockout_accepted_cl_ord_id.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Cl Ord I D Mass Cancel Bulk Clear Lockout Accepted Cl Ord Id: No Value"
  end

  return "Cl Ord I D Mass Cancel Bulk Clear Lockout Accepted Cl Ord Id: "..value
end

-- Dissect: Cl Ord I D Mass Cancel Bulk Clear Lockout Accepted Cl Ord Id
memx_options_memo_sbe_v1_7.cl_ord_i_d_mass_cancel_bulk_clear_lockout_accepted_cl_ord_id.dissect = function(buffer, offset, packet, parent)
  local length = memx_options_memo_sbe_v1_7.cl_ord_i_d_mass_cancel_bulk_clear_lockout_accepted_cl_ord_id.size
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

  local display = memx_options_memo_sbe_v1_7.cl_ord_i_d_mass_cancel_bulk_clear_lockout_accepted_cl_ord_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_memx_options_memo_sbe_v1_7.fields.cl_ord_i_d_mass_cancel_bulk_clear_lockout_accepted_cl_ord_id, range, value, display)

  return offset + length, value
end

-- Mass Cancel Bulk Clear Lockout Accepted Message
memx_options_memo_sbe_v1_7.mass_cancel_bulk_clear_lockout_accepted_message = {}

-- Calculate size of: Mass Cancel Bulk Clear Lockout Accepted Message
memx_options_memo_sbe_v1_7.mass_cancel_bulk_clear_lockout_accepted_message.size = function(buffer, offset)
  local index = 0

  index = index + memx_options_memo_sbe_v1_7.cl_ord_i_d_mass_cancel_bulk_clear_lockout_accepted_cl_ord_id.size

  index = index + memx_options_memo_sbe_v1_7.sending_time.size

  return index
end

-- Display: Mass Cancel Bulk Clear Lockout Accepted Message
memx_options_memo_sbe_v1_7.mass_cancel_bulk_clear_lockout_accepted_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Mass Cancel Bulk Clear Lockout Accepted Message
memx_options_memo_sbe_v1_7.mass_cancel_bulk_clear_lockout_accepted_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Cl Ord I D Mass Cancel Bulk Clear Lockout Accepted Cl Ord Id: 20 Byte Ascii String
  index, cl_ord_i_d_mass_cancel_bulk_clear_lockout_accepted_cl_ord_id = memx_options_memo_sbe_v1_7.cl_ord_i_d_mass_cancel_bulk_clear_lockout_accepted_cl_ord_id.dissect(buffer, index, packet, parent)

  -- Sending Time: 8 Byte Unsigned Fixed Width Integer
  index, sending_time = memx_options_memo_sbe_v1_7.sending_time.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Mass Cancel Bulk Clear Lockout Accepted Message
memx_options_memo_sbe_v1_7.mass_cancel_bulk_clear_lockout_accepted_message.dissect = function(buffer, offset, packet, parent)
  if show.mass_cancel_bulk_clear_lockout_accepted_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_memx_options_memo_sbe_v1_7.fields.mass_cancel_bulk_clear_lockout_accepted_message, buffer(offset, 0))
    local index = memx_options_memo_sbe_v1_7.mass_cancel_bulk_clear_lockout_accepted_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = memx_options_memo_sbe_v1_7.mass_cancel_bulk_clear_lockout_accepted_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return memx_options_memo_sbe_v1_7.mass_cancel_bulk_clear_lockout_accepted_message.fields(buffer, offset, packet, parent)
  end
end

-- Rej Reason
memx_options_memo_sbe_v1_7.rej_reason = {}

-- Size: Rej Reason
memx_options_memo_sbe_v1_7.rej_reason.size = 2

-- Display: Rej Reason
memx_options_memo_sbe_v1_7.rej_reason.display = function(value)
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
memx_options_memo_sbe_v1_7.rej_reason.dissect = function(buffer, offset, packet, parent)
  local length = memx_options_memo_sbe_v1_7.rej_reason.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = memx_options_memo_sbe_v1_7.rej_reason.display(value, buffer, offset, packet, parent)

  parent:add(omi_memx_options_memo_sbe_v1_7.fields.rej_reason, range, value, display)

  return offset + length, value
end

-- Cl Ord I D Mass Cancel Bulk Clear Lockout Reject Cl Ord Id
memx_options_memo_sbe_v1_7.cl_ord_i_d_mass_cancel_bulk_clear_lockout_reject_cl_ord_id = {}

-- Size: Cl Ord I D Mass Cancel Bulk Clear Lockout Reject Cl Ord Id
memx_options_memo_sbe_v1_7.cl_ord_i_d_mass_cancel_bulk_clear_lockout_reject_cl_ord_id.size = 20

-- Display: Cl Ord I D Mass Cancel Bulk Clear Lockout Reject Cl Ord Id
memx_options_memo_sbe_v1_7.cl_ord_i_d_mass_cancel_bulk_clear_lockout_reject_cl_ord_id.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Cl Ord I D Mass Cancel Bulk Clear Lockout Reject Cl Ord Id: No Value"
  end

  return "Cl Ord I D Mass Cancel Bulk Clear Lockout Reject Cl Ord Id: "..value
end

-- Dissect: Cl Ord I D Mass Cancel Bulk Clear Lockout Reject Cl Ord Id
memx_options_memo_sbe_v1_7.cl_ord_i_d_mass_cancel_bulk_clear_lockout_reject_cl_ord_id.dissect = function(buffer, offset, packet, parent)
  local length = memx_options_memo_sbe_v1_7.cl_ord_i_d_mass_cancel_bulk_clear_lockout_reject_cl_ord_id.size
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

  local display = memx_options_memo_sbe_v1_7.cl_ord_i_d_mass_cancel_bulk_clear_lockout_reject_cl_ord_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_memx_options_memo_sbe_v1_7.fields.cl_ord_i_d_mass_cancel_bulk_clear_lockout_reject_cl_ord_id, range, value, display)

  return offset + length, value
end

-- Mass Cancel Bulk Clear Lockout Reject Message
memx_options_memo_sbe_v1_7.mass_cancel_bulk_clear_lockout_reject_message = {}

-- Calculate size of: Mass Cancel Bulk Clear Lockout Reject Message
memx_options_memo_sbe_v1_7.mass_cancel_bulk_clear_lockout_reject_message.size = function(buffer, offset)
  local index = 0

  index = index + memx_options_memo_sbe_v1_7.cl_ord_i_d_mass_cancel_bulk_clear_lockout_reject_cl_ord_id.size

  index = index + memx_options_memo_sbe_v1_7.rej_reason.size

  index = index + memx_options_memo_sbe_v1_7.sending_time.size

  return index
end

-- Display: Mass Cancel Bulk Clear Lockout Reject Message
memx_options_memo_sbe_v1_7.mass_cancel_bulk_clear_lockout_reject_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Mass Cancel Bulk Clear Lockout Reject Message
memx_options_memo_sbe_v1_7.mass_cancel_bulk_clear_lockout_reject_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Cl Ord I D Mass Cancel Bulk Clear Lockout Reject Cl Ord Id: 20 Byte Ascii String
  index, cl_ord_i_d_mass_cancel_bulk_clear_lockout_reject_cl_ord_id = memx_options_memo_sbe_v1_7.cl_ord_i_d_mass_cancel_bulk_clear_lockout_reject_cl_ord_id.dissect(buffer, index, packet, parent)

  -- Rej Reason: 2 Byte Unsigned Fixed Width Integer Enum with 14 values
  index, rej_reason = memx_options_memo_sbe_v1_7.rej_reason.dissect(buffer, index, packet, parent)

  -- Sending Time: 8 Byte Unsigned Fixed Width Integer
  index, sending_time = memx_options_memo_sbe_v1_7.sending_time.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Mass Cancel Bulk Clear Lockout Reject Message
memx_options_memo_sbe_v1_7.mass_cancel_bulk_clear_lockout_reject_message.dissect = function(buffer, offset, packet, parent)
  if show.mass_cancel_bulk_clear_lockout_reject_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_memx_options_memo_sbe_v1_7.fields.mass_cancel_bulk_clear_lockout_reject_message, buffer(offset, 0))
    local index = memx_options_memo_sbe_v1_7.mass_cancel_bulk_clear_lockout_reject_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = memx_options_memo_sbe_v1_7.mass_cancel_bulk_clear_lockout_reject_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return memx_options_memo_sbe_v1_7.mass_cancel_bulk_clear_lockout_reject_message.fields(buffer, offset, packet, parent)
  end
end

-- Transact Time
memx_options_memo_sbe_v1_7.transact_time = {}

-- Size: Transact Time
memx_options_memo_sbe_v1_7.transact_time.size = 8

-- Display: Transact Time
memx_options_memo_sbe_v1_7.transact_time.display = function(value)
  return "Transact Time: "..value
end

-- Dissect: Transact Time
memx_options_memo_sbe_v1_7.transact_time.dissect = function(buffer, offset, packet, parent)
  local length = memx_options_memo_sbe_v1_7.transact_time.size
  local range = buffer(offset, length)
  local value = range:uint64()
  local display = memx_options_memo_sbe_v1_7.transact_time.display(value, buffer, offset, packet, parent)

  parent:add(omi_memx_options_memo_sbe_v1_7.fields.transact_time, range, value, display)

  return offset + length, value
end

-- Lockout Id
memx_options_memo_sbe_v1_7.lockout_id = {}

-- Size: Lockout Id
memx_options_memo_sbe_v1_7.lockout_id.size = 8

-- Display: Lockout Id
memx_options_memo_sbe_v1_7.lockout_id.display = function(value)
  return "Lockout Id: "..value
end

-- Dissect: Lockout Id
memx_options_memo_sbe_v1_7.lockout_id.dissect = function(buffer, offset, packet, parent)
  local length = memx_options_memo_sbe_v1_7.lockout_id.size
  local range = buffer(offset, length)
  local value = range:uint64()
  local display = memx_options_memo_sbe_v1_7.lockout_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_memx_options_memo_sbe_v1_7.fields.lockout_id, range, value, display)

  return offset + length, value
end

-- Underlier Mass Cancel Clear Lockout Done Underlier
memx_options_memo_sbe_v1_7.underlier_mass_cancel_clear_lockout_done_underlier = {}

-- Size: Underlier Mass Cancel Clear Lockout Done Underlier
memx_options_memo_sbe_v1_7.underlier_mass_cancel_clear_lockout_done_underlier.size = 6

-- Display: Underlier Mass Cancel Clear Lockout Done Underlier
memx_options_memo_sbe_v1_7.underlier_mass_cancel_clear_lockout_done_underlier.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Underlier Mass Cancel Clear Lockout Done Underlier: No Value"
  end

  return "Underlier Mass Cancel Clear Lockout Done Underlier: "..value
end

-- Dissect: Underlier Mass Cancel Clear Lockout Done Underlier
memx_options_memo_sbe_v1_7.underlier_mass_cancel_clear_lockout_done_underlier.dissect = function(buffer, offset, packet, parent)
  local length = memx_options_memo_sbe_v1_7.underlier_mass_cancel_clear_lockout_done_underlier.size
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

  local display = memx_options_memo_sbe_v1_7.underlier_mass_cancel_clear_lockout_done_underlier.display(value, buffer, offset, packet, parent)

  parent:add(omi_memx_options_memo_sbe_v1_7.fields.underlier_mass_cancel_clear_lockout_done_underlier, range, value, display)

  return offset + length, value
end

-- ClOrdId
memx_options_memo_sbe_v1_7.clordid = {}

-- Size: ClOrdId
memx_options_memo_sbe_v1_7.clordid.size = 20

-- Display: ClOrdId
memx_options_memo_sbe_v1_7.clordid.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "ClOrdId: No Value"
  end

  return "ClOrdId: "..value
end

-- Dissect: ClOrdId
memx_options_memo_sbe_v1_7.clordid.dissect = function(buffer, offset, packet, parent)
  local length = memx_options_memo_sbe_v1_7.clordid.size
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

  local display = memx_options_memo_sbe_v1_7.clordid.display(value, buffer, offset, packet, parent)

  parent:add(omi_memx_options_memo_sbe_v1_7.fields.clordid, range, value, display)

  return offset + length, value
end

-- Mass Cancel Clear Lockout Done Message
memx_options_memo_sbe_v1_7.mass_cancel_clear_lockout_done_message = {}

-- Calculate size of: Mass Cancel Clear Lockout Done Message
memx_options_memo_sbe_v1_7.mass_cancel_clear_lockout_done_message.size = function(buffer, offset)
  local index = 0

  index = index + memx_options_memo_sbe_v1_7.clordid.size

  index = index + memx_options_memo_sbe_v1_7.underlier_mass_cancel_clear_lockout_done_underlier.size

  index = index + memx_options_memo_sbe_v1_7.lockout_id.size

  index = index + memx_options_memo_sbe_v1_7.sending_time.size

  index = index + memx_options_memo_sbe_v1_7.transact_time.size

  return index
end

-- Display: Mass Cancel Clear Lockout Done Message
memx_options_memo_sbe_v1_7.mass_cancel_clear_lockout_done_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Mass Cancel Clear Lockout Done Message
memx_options_memo_sbe_v1_7.mass_cancel_clear_lockout_done_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- ClOrdId: 20 Byte Ascii String
  index, clordid = memx_options_memo_sbe_v1_7.clordid.dissect(buffer, index, packet, parent)

  -- Underlier Mass Cancel Clear Lockout Done Underlier: 6 Byte Ascii String
  index, underlier_mass_cancel_clear_lockout_done_underlier = memx_options_memo_sbe_v1_7.underlier_mass_cancel_clear_lockout_done_underlier.dissect(buffer, index, packet, parent)

  -- Lockout Id: 8 Byte Unsigned Fixed Width Integer
  index, lockout_id = memx_options_memo_sbe_v1_7.lockout_id.dissect(buffer, index, packet, parent)

  -- Sending Time: 8 Byte Unsigned Fixed Width Integer
  index, sending_time = memx_options_memo_sbe_v1_7.sending_time.dissect(buffer, index, packet, parent)

  -- Transact Time: 8 Byte Unsigned Fixed Width Integer
  index, transact_time = memx_options_memo_sbe_v1_7.transact_time.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Mass Cancel Clear Lockout Done Message
memx_options_memo_sbe_v1_7.mass_cancel_clear_lockout_done_message.dissect = function(buffer, offset, packet, parent)
  if show.mass_cancel_clear_lockout_done_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_memx_options_memo_sbe_v1_7.fields.mass_cancel_clear_lockout_done_message, buffer(offset, 0))
    local index = memx_options_memo_sbe_v1_7.mass_cancel_clear_lockout_done_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = memx_options_memo_sbe_v1_7.mass_cancel_clear_lockout_done_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return memx_options_memo_sbe_v1_7.mass_cancel_clear_lockout_done_message.fields(buffer, offset, packet, parent)
  end
end

-- Underlier Mass Cancel Clear Lockout Reject Underlier
memx_options_memo_sbe_v1_7.underlier_mass_cancel_clear_lockout_reject_underlier = {}

-- Size: Underlier Mass Cancel Clear Lockout Reject Underlier
memx_options_memo_sbe_v1_7.underlier_mass_cancel_clear_lockout_reject_underlier.size = 6

-- Display: Underlier Mass Cancel Clear Lockout Reject Underlier
memx_options_memo_sbe_v1_7.underlier_mass_cancel_clear_lockout_reject_underlier.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Underlier Mass Cancel Clear Lockout Reject Underlier: No Value"
  end

  return "Underlier Mass Cancel Clear Lockout Reject Underlier: "..value
end

-- Dissect: Underlier Mass Cancel Clear Lockout Reject Underlier
memx_options_memo_sbe_v1_7.underlier_mass_cancel_clear_lockout_reject_underlier.dissect = function(buffer, offset, packet, parent)
  local length = memx_options_memo_sbe_v1_7.underlier_mass_cancel_clear_lockout_reject_underlier.size
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

  local display = memx_options_memo_sbe_v1_7.underlier_mass_cancel_clear_lockout_reject_underlier.display(value, buffer, offset, packet, parent)

  parent:add(omi_memx_options_memo_sbe_v1_7.fields.underlier_mass_cancel_clear_lockout_reject_underlier, range, value, display)

  return offset + length, value
end

-- Mass Cancel Clear Lockout Reject Message
memx_options_memo_sbe_v1_7.mass_cancel_clear_lockout_reject_message = {}

-- Calculate size of: Mass Cancel Clear Lockout Reject Message
memx_options_memo_sbe_v1_7.mass_cancel_clear_lockout_reject_message.size = function(buffer, offset)
  local index = 0

  index = index + memx_options_memo_sbe_v1_7.clordid.size

  index = index + memx_options_memo_sbe_v1_7.underlier_mass_cancel_clear_lockout_reject_underlier.size

  index = index + memx_options_memo_sbe_v1_7.lockout_id.size

  index = index + memx_options_memo_sbe_v1_7.rej_reason.size

  index = index + memx_options_memo_sbe_v1_7.sending_time.size

  return index
end

-- Display: Mass Cancel Clear Lockout Reject Message
memx_options_memo_sbe_v1_7.mass_cancel_clear_lockout_reject_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Mass Cancel Clear Lockout Reject Message
memx_options_memo_sbe_v1_7.mass_cancel_clear_lockout_reject_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- ClOrdId: 20 Byte Ascii String
  index, clordid = memx_options_memo_sbe_v1_7.clordid.dissect(buffer, index, packet, parent)

  -- Underlier Mass Cancel Clear Lockout Reject Underlier: 6 Byte Ascii String
  index, underlier_mass_cancel_clear_lockout_reject_underlier = memx_options_memo_sbe_v1_7.underlier_mass_cancel_clear_lockout_reject_underlier.dissect(buffer, index, packet, parent)

  -- Lockout Id: 8 Byte Unsigned Fixed Width Integer
  index, lockout_id = memx_options_memo_sbe_v1_7.lockout_id.dissect(buffer, index, packet, parent)

  -- Rej Reason: 2 Byte Unsigned Fixed Width Integer Enum with 14 values
  index, rej_reason = memx_options_memo_sbe_v1_7.rej_reason.dissect(buffer, index, packet, parent)

  -- Sending Time: 8 Byte Unsigned Fixed Width Integer
  index, sending_time = memx_options_memo_sbe_v1_7.sending_time.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Mass Cancel Clear Lockout Reject Message
memx_options_memo_sbe_v1_7.mass_cancel_clear_lockout_reject_message.dissect = function(buffer, offset, packet, parent)
  if show.mass_cancel_clear_lockout_reject_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_memx_options_memo_sbe_v1_7.fields.mass_cancel_clear_lockout_reject_message, buffer(offset, 0))
    local index = memx_options_memo_sbe_v1_7.mass_cancel_clear_lockout_reject_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = memx_options_memo_sbe_v1_7.mass_cancel_clear_lockout_reject_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return memx_options_memo_sbe_v1_7.mass_cancel_clear_lockout_reject_message.fields(buffer, offset, packet, parent)
  end
end

-- User Status
memx_options_memo_sbe_v1_7.user_status = {}

-- Size: User Status
memx_options_memo_sbe_v1_7.user_status.size = 1

-- Display: User Status
memx_options_memo_sbe_v1_7.user_status.display = function(value)
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
memx_options_memo_sbe_v1_7.user_status.dissect = function(buffer, offset, packet, parent)
  local length = memx_options_memo_sbe_v1_7.user_status.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = memx_options_memo_sbe_v1_7.user_status.display(value, buffer, offset, packet, parent)

  parent:add(omi_memx_options_memo_sbe_v1_7.fields.user_status, range, value, display)

  return offset + length, value
end

-- User Notification Message
memx_options_memo_sbe_v1_7.user_notification_message = {}

-- Calculate size of: User Notification Message
memx_options_memo_sbe_v1_7.user_notification_message.size = function(buffer, offset)
  local index = 0

  index = index + memx_options_memo_sbe_v1_7.sending_time.size

  index = index + memx_options_memo_sbe_v1_7.user_status.size

  return index
end

-- Display: User Notification Message
memx_options_memo_sbe_v1_7.user_notification_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: User Notification Message
memx_options_memo_sbe_v1_7.user_notification_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Sending Time: 8 Byte Unsigned Fixed Width Integer
  index, sending_time = memx_options_memo_sbe_v1_7.sending_time.dissect(buffer, index, packet, parent)

  -- User Status: 1 Byte Unsigned Fixed Width Integer Enum with 3 values
  index, user_status = memx_options_memo_sbe_v1_7.user_status.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: User Notification Message
memx_options_memo_sbe_v1_7.user_notification_message.dissect = function(buffer, offset, packet, parent)
  if show.user_notification_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_memx_options_memo_sbe_v1_7.fields.user_notification_message, buffer(offset, 0))
    local index = memx_options_memo_sbe_v1_7.user_notification_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = memx_options_memo_sbe_v1_7.user_notification_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return memx_options_memo_sbe_v1_7.user_notification_message.fields(buffer, offset, packet, parent)
  end
end

-- Alloc Id
memx_options_memo_sbe_v1_7.alloc_id = {}

-- Size: Alloc Id
memx_options_memo_sbe_v1_7.alloc_id.size = 20

-- Display: Alloc Id
memx_options_memo_sbe_v1_7.alloc_id.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Alloc Id: No Value"
  end

  return "Alloc Id: "..value
end

-- Dissect: Alloc Id
memx_options_memo_sbe_v1_7.alloc_id.dissect = function(buffer, offset, packet, parent)
  local length = memx_options_memo_sbe_v1_7.alloc_id.size
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

  local display = memx_options_memo_sbe_v1_7.alloc_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_memx_options_memo_sbe_v1_7.fields.alloc_id, range, value, display)

  return offset + length, value
end

-- Alloc Position Effect
memx_options_memo_sbe_v1_7.alloc_position_effect = {}

-- Size: Alloc Position Effect
memx_options_memo_sbe_v1_7.alloc_position_effect.size = 1

-- Display: Alloc Position Effect
memx_options_memo_sbe_v1_7.alloc_position_effect.display = function(value)
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
memx_options_memo_sbe_v1_7.alloc_position_effect.dissect = function(buffer, offset, packet, parent)
  local length = memx_options_memo_sbe_v1_7.alloc_position_effect.size
  local range = buffer(offset, length)

  -- parse as byte
  local value = range:uint()

  -- check if value is non zero
  if value ~= 0 then
    value = range:string()
  end

  local display = memx_options_memo_sbe_v1_7.alloc_position_effect.display(value, buffer, offset, packet, parent)

  parent:add(omi_memx_options_memo_sbe_v1_7.fields.alloc_position_effect, range, value, display)

  return offset + length, value
end

-- Alloc Qty
memx_options_memo_sbe_v1_7.alloc_qty = {}

-- Size: Alloc Qty
memx_options_memo_sbe_v1_7.alloc_qty.size = 4

-- Display: Alloc Qty
memx_options_memo_sbe_v1_7.alloc_qty.display = function(value)
  return "Alloc Qty: "..value
end

-- Dissect: Alloc Qty
memx_options_memo_sbe_v1_7.alloc_qty.dissect = function(buffer, offset, packet, parent)
  local length = memx_options_memo_sbe_v1_7.alloc_qty.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = memx_options_memo_sbe_v1_7.alloc_qty.display(value, buffer, offset, packet, parent)

  parent:add(omi_memx_options_memo_sbe_v1_7.fields.alloc_qty, range, value, display)

  return offset + length, value
end

-- Reported Allocations Group
memx_options_memo_sbe_v1_7.reported_allocations_group = {}

-- Calculate size of: Reported Allocations Group
memx_options_memo_sbe_v1_7.reported_allocations_group.size = function(buffer, offset)
  local index = 0

  index = index + memx_options_memo_sbe_v1_7.alloc_qty.size

  index = index + memx_options_memo_sbe_v1_7.alloc_position_effect.size

  index = index + memx_options_memo_sbe_v1_7.alloc_id.size

  return index
end

-- Display: Reported Allocations Group
memx_options_memo_sbe_v1_7.reported_allocations_group.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Reported Allocations Group
memx_options_memo_sbe_v1_7.reported_allocations_group.fields = function(buffer, offset, packet, parent, reported_allocations_group_index)
  local index = offset

  -- Implicit Reported Allocations Group Index
  if reported_allocations_group_index ~= nil then
    local iteration = parent:add(omi_memx_options_memo_sbe_v1_7.fields.reported_allocations_group_index, reported_allocations_group_index)
    iteration:set_generated()
  end

  -- Alloc Qty: 4 Byte Unsigned Fixed Width Integer
  index, alloc_qty = memx_options_memo_sbe_v1_7.alloc_qty.dissect(buffer, index, packet, parent)

  -- Alloc Position Effect: 1 Byte Ascii String Enum with 2 values
  index, alloc_position_effect = memx_options_memo_sbe_v1_7.alloc_position_effect.dissect(buffer, index, packet, parent)

  -- Alloc Id: 20 Byte Ascii String
  index, alloc_id = memx_options_memo_sbe_v1_7.alloc_id.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Reported Allocations Group
memx_options_memo_sbe_v1_7.reported_allocations_group.dissect = function(buffer, offset, packet, parent, reported_allocations_group_index)
  if show.reported_allocations_group then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_memx_options_memo_sbe_v1_7.fields.reported_allocations_group, buffer(offset, 0))
    local index = memx_options_memo_sbe_v1_7.reported_allocations_group.fields(buffer, offset, packet, parent, reported_allocations_group_index)
    local length = index - offset
    parent:set_len(length)
    local display = memx_options_memo_sbe_v1_7.reported_allocations_group.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return memx_options_memo_sbe_v1_7.reported_allocations_group.fields(buffer, offset, packet, parent, reported_allocations_group_index)
  end
end

-- Num In Group
memx_options_memo_sbe_v1_7.num_in_group = {}

-- Size: Num In Group
memx_options_memo_sbe_v1_7.num_in_group.size = 1

-- Display: Num In Group
memx_options_memo_sbe_v1_7.num_in_group.display = function(value)
  return "Num In Group: "..value
end

-- Dissect: Num In Group
memx_options_memo_sbe_v1_7.num_in_group.dissect = function(buffer, offset, packet, parent)
  local length = memx_options_memo_sbe_v1_7.num_in_group.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = memx_options_memo_sbe_v1_7.num_in_group.display(value, buffer, offset, packet, parent)

  parent:add(omi_memx_options_memo_sbe_v1_7.fields.num_in_group, range, value, display)

  return offset + length, value
end

-- Block Length Short
memx_options_memo_sbe_v1_7.block_length_short = {}

-- Size: Block Length Short
memx_options_memo_sbe_v1_7.block_length_short.size = 1

-- Display: Block Length Short
memx_options_memo_sbe_v1_7.block_length_short.display = function(value)
  return "Block Length Short: "..value
end

-- Dissect: Block Length Short
memx_options_memo_sbe_v1_7.block_length_short.dissect = function(buffer, offset, packet, parent)
  local length = memx_options_memo_sbe_v1_7.block_length_short.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = memx_options_memo_sbe_v1_7.block_length_short.display(value, buffer, offset, packet, parent)

  parent:add(omi_memx_options_memo_sbe_v1_7.fields.block_length_short, range, value, display)

  return offset + length, value
end

-- Repeating Group Dimensions
memx_options_memo_sbe_v1_7.repeating_group_dimensions = {}

-- Calculate size of: Repeating Group Dimensions
memx_options_memo_sbe_v1_7.repeating_group_dimensions.size = function(buffer, offset)
  local index = 0

  index = index + memx_options_memo_sbe_v1_7.block_length_short.size

  index = index + memx_options_memo_sbe_v1_7.num_in_group.size

  return index
end

-- Display: Repeating Group Dimensions
memx_options_memo_sbe_v1_7.repeating_group_dimensions.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Repeating Group Dimensions
memx_options_memo_sbe_v1_7.repeating_group_dimensions.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Block Length Short: 1 Byte Unsigned Fixed Width Integer
  index, block_length_short = memx_options_memo_sbe_v1_7.block_length_short.dissect(buffer, index, packet, parent)

  -- Num In Group: 1 Byte Unsigned Fixed Width Integer
  index, num_in_group = memx_options_memo_sbe_v1_7.num_in_group.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Repeating Group Dimensions
memx_options_memo_sbe_v1_7.repeating_group_dimensions.dissect = function(buffer, offset, packet, parent)
  if show.repeating_group_dimensions then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_memx_options_memo_sbe_v1_7.fields.repeating_group_dimensions, buffer(offset, 0))
    local index = memx_options_memo_sbe_v1_7.repeating_group_dimensions.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = memx_options_memo_sbe_v1_7.repeating_group_dimensions.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return memx_options_memo_sbe_v1_7.repeating_group_dimensions.fields(buffer, offset, packet, parent)
  end
end

-- Reported Allocations Groups
memx_options_memo_sbe_v1_7.reported_allocations_groups = {}

-- Calculate size of: Reported Allocations Groups
memx_options_memo_sbe_v1_7.reported_allocations_groups.size = function(buffer, offset)
  local index = 0

  index = index + memx_options_memo_sbe_v1_7.repeating_group_dimensions.size(buffer, offset + index)

  -- Calculate field size from count
  local reported_allocations_group_count = buffer(offset + index - 1, 1):uint()
  index = index + reported_allocations_group_count * 25

  return index
end

-- Display: Reported Allocations Groups
memx_options_memo_sbe_v1_7.reported_allocations_groups.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Reported Allocations Groups
memx_options_memo_sbe_v1_7.reported_allocations_groups.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Repeating Group Dimensions: Struct of 2 fields
  index, repeating_group_dimensions = memx_options_memo_sbe_v1_7.repeating_group_dimensions.dissect(buffer, index, packet, parent)

  -- Dependency element: Num In Group
  local num_in_group = buffer(index - 1, 1):uint()

  -- Repeating: Reported Allocations Group
  for reported_allocations_group_index = 1, num_in_group do
    index, reported_allocations_group = memx_options_memo_sbe_v1_7.reported_allocations_group.dissect(buffer, index, packet, parent, reported_allocations_group_index)
  end

  return index
end

-- Dissect: Reported Allocations Groups
memx_options_memo_sbe_v1_7.reported_allocations_groups.dissect = function(buffer, offset, packet, parent)
  -- Optionally add dynamic struct element to protocol tree
  if show.reported_allocations_groups then
    local length = memx_options_memo_sbe_v1_7.reported_allocations_groups.size(buffer, offset)
    local range = buffer(offset, length)
    local display = memx_options_memo_sbe_v1_7.reported_allocations_groups.display(buffer, packet, parent)
    parent = parent:add(omi_memx_options_memo_sbe_v1_7.fields.reported_allocations_groups, range, display)
  end

  return memx_options_memo_sbe_v1_7.reported_allocations_groups.fields(buffer, offset, packet, parent)
end

-- Last Px
memx_options_memo_sbe_v1_7.last_px = {}

-- Size: Last Px
memx_options_memo_sbe_v1_7.last_px.size = 8

-- Display: Last Px
memx_options_memo_sbe_v1_7.last_px.display = function(value)
  return "Last Px: "..value
end

-- Translate: Last Px
memx_options_memo_sbe_v1_7.last_px.translate = function(raw)
  return raw:tonumber()/100000000
end

-- Dissect: Last Px
memx_options_memo_sbe_v1_7.last_px.dissect = function(buffer, offset, packet, parent)
  local length = memx_options_memo_sbe_v1_7.last_px.size
  local range = buffer(offset, length)
  local raw = range:uint64()
  local value = memx_options_memo_sbe_v1_7.last_px.translate(raw)
  local display = memx_options_memo_sbe_v1_7.last_px.display(value, buffer, offset, packet, parent)

  parent:add(omi_memx_options_memo_sbe_v1_7.fields.last_px, range, value, display)

  return offset + length, value
end

-- Last Qty
memx_options_memo_sbe_v1_7.last_qty = {}

-- Size: Last Qty
memx_options_memo_sbe_v1_7.last_qty.size = 4

-- Display: Last Qty
memx_options_memo_sbe_v1_7.last_qty.display = function(value)
  return "Last Qty: "..value
end

-- Dissect: Last Qty
memx_options_memo_sbe_v1_7.last_qty.dissect = function(buffer, offset, packet, parent)
  local length = memx_options_memo_sbe_v1_7.last_qty.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = memx_options_memo_sbe_v1_7.last_qty.display(value, buffer, offset, packet, parent)

  parent:add(omi_memx_options_memo_sbe_v1_7.fields.last_qty, range, value, display)

  return offset + length, value
end

-- Trade Id
memx_options_memo_sbe_v1_7.trade_id = {}

-- Size: Trade Id
memx_options_memo_sbe_v1_7.trade_id.size = 8

-- Display: Trade Id
memx_options_memo_sbe_v1_7.trade_id.display = function(value)
  return "Trade Id: "..value
end

-- Dissect: Trade Id
memx_options_memo_sbe_v1_7.trade_id.dissect = function(buffer, offset, packet, parent)
  local length = memx_options_memo_sbe_v1_7.trade_id.size
  local range = buffer(offset, length)
  local value = range:uint64()
  local display = memx_options_memo_sbe_v1_7.trade_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_memx_options_memo_sbe_v1_7.fields.trade_id, range, value, display)

  return offset + length, value
end

-- Execution Allocations Group
memx_options_memo_sbe_v1_7.execution_allocations_group = {}

-- Calculate size of: Execution Allocations Group
memx_options_memo_sbe_v1_7.execution_allocations_group.size = function(buffer, offset)
  local index = 0

  index = index + memx_options_memo_sbe_v1_7.trade_id.size

  index = index + memx_options_memo_sbe_v1_7.last_qty.size

  index = index + memx_options_memo_sbe_v1_7.last_px.size

  return index
end

-- Display: Execution Allocations Group
memx_options_memo_sbe_v1_7.execution_allocations_group.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Execution Allocations Group
memx_options_memo_sbe_v1_7.execution_allocations_group.fields = function(buffer, offset, packet, parent, execution_allocations_group_index)
  local index = offset

  -- Implicit Execution Allocations Group Index
  if execution_allocations_group_index ~= nil then
    local iteration = parent:add(omi_memx_options_memo_sbe_v1_7.fields.execution_allocations_group_index, execution_allocations_group_index)
    iteration:set_generated()
  end

  -- Trade Id: 8 Byte Unsigned Fixed Width Integer
  index, trade_id = memx_options_memo_sbe_v1_7.trade_id.dissect(buffer, index, packet, parent)

  -- Last Qty: 4 Byte Unsigned Fixed Width Integer
  index, last_qty = memx_options_memo_sbe_v1_7.last_qty.dissect(buffer, index, packet, parent)

  -- Last Px: 8 Byte Unsigned Fixed Width Integer
  index, last_px = memx_options_memo_sbe_v1_7.last_px.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Execution Allocations Group
memx_options_memo_sbe_v1_7.execution_allocations_group.dissect = function(buffer, offset, packet, parent, execution_allocations_group_index)
  if show.execution_allocations_group then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_memx_options_memo_sbe_v1_7.fields.execution_allocations_group, buffer(offset, 0))
    local index = memx_options_memo_sbe_v1_7.execution_allocations_group.fields(buffer, offset, packet, parent, execution_allocations_group_index)
    local length = index - offset
    parent:set_len(length)
    local display = memx_options_memo_sbe_v1_7.execution_allocations_group.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return memx_options_memo_sbe_v1_7.execution_allocations_group.fields(buffer, offset, packet, parent, execution_allocations_group_index)
  end
end

-- Execution Allocations Groups
memx_options_memo_sbe_v1_7.execution_allocations_groups = {}

-- Calculate size of: Execution Allocations Groups
memx_options_memo_sbe_v1_7.execution_allocations_groups.size = function(buffer, offset)
  local index = 0

  index = index + memx_options_memo_sbe_v1_7.repeating_group_dimensions.size(buffer, offset + index)

  -- Calculate field size from count
  local execution_allocations_group_count = buffer(offset + index - 1, 1):uint()
  index = index + execution_allocations_group_count * 20

  return index
end

-- Display: Execution Allocations Groups
memx_options_memo_sbe_v1_7.execution_allocations_groups.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Execution Allocations Groups
memx_options_memo_sbe_v1_7.execution_allocations_groups.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Repeating Group Dimensions: Struct of 2 fields
  index, repeating_group_dimensions = memx_options_memo_sbe_v1_7.repeating_group_dimensions.dissect(buffer, index, packet, parent)

  -- Dependency element: Num In Group
  local num_in_group = buffer(index - 1, 1):uint()

  -- Repeating: Execution Allocations Group
  for execution_allocations_group_index = 1, num_in_group do
    index, execution_allocations_group = memx_options_memo_sbe_v1_7.execution_allocations_group.dissect(buffer, index, packet, parent, execution_allocations_group_index)
  end

  return index
end

-- Dissect: Execution Allocations Groups
memx_options_memo_sbe_v1_7.execution_allocations_groups.dissect = function(buffer, offset, packet, parent)
  -- Optionally add dynamic struct element to protocol tree
  if show.execution_allocations_groups then
    local length = memx_options_memo_sbe_v1_7.execution_allocations_groups.size(buffer, offset)
    local range = buffer(offset, length)
    local display = memx_options_memo_sbe_v1_7.execution_allocations_groups.display(buffer, packet, parent)
    parent = parent:add(omi_memx_options_memo_sbe_v1_7.fields.execution_allocations_groups, range, display)
  end

  return memx_options_memo_sbe_v1_7.execution_allocations_groups.fields(buffer, offset, packet, parent)
end

-- Trade Date
memx_options_memo_sbe_v1_7.trade_date = {}

-- Size: Trade Date
memx_options_memo_sbe_v1_7.trade_date.size = 8

-- Display: Trade Date
memx_options_memo_sbe_v1_7.trade_date.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Trade Date: No Value"
  end

  return "Trade Date: "..value
end

-- Dissect: Trade Date
memx_options_memo_sbe_v1_7.trade_date.dissect = function(buffer, offset, packet, parent)
  local length = memx_options_memo_sbe_v1_7.trade_date.size
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

  local display = memx_options_memo_sbe_v1_7.trade_date.display(value, buffer, offset, packet, parent)

  parent:add(omi_memx_options_memo_sbe_v1_7.fields.trade_date, range, value, display)

  return offset + length, value
end

-- Security Id
memx_options_memo_sbe_v1_7.security_id = {}

-- Size: Security Id
memx_options_memo_sbe_v1_7.security_id.size = 8

-- Display: Security Id
memx_options_memo_sbe_v1_7.security_id.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Security Id: No Value"
  end

  return "Security Id: "..value
end

-- Dissect: Security Id
memx_options_memo_sbe_v1_7.security_id.dissect = function(buffer, offset, packet, parent)
  local length = memx_options_memo_sbe_v1_7.security_id.size
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

  local display = memx_options_memo_sbe_v1_7.security_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_memx_options_memo_sbe_v1_7.fields.security_id, range, value, display)

  return offset + length, value
end

-- Side
memx_options_memo_sbe_v1_7.side = {}

-- Size: Side
memx_options_memo_sbe_v1_7.side.size = 1

-- Display: Side
memx_options_memo_sbe_v1_7.side.display = function(value)
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
memx_options_memo_sbe_v1_7.side.dissect = function(buffer, offset, packet, parent)
  local length = memx_options_memo_sbe_v1_7.side.size
  local range = buffer(offset, length)

  -- parse as byte
  local value = range:uint()

  -- check if value is non zero
  if value ~= 0 then
    value = range:string()
  end

  local display = memx_options_memo_sbe_v1_7.side.display(value, buffer, offset, packet, parent)

  parent:add(omi_memx_options_memo_sbe_v1_7.fields.side, range, value, display)

  return offset + length, value
end

-- Alloc Canc Replace Reason
memx_options_memo_sbe_v1_7.alloc_canc_replace_reason = {}

-- Size: Alloc Canc Replace Reason
memx_options_memo_sbe_v1_7.alloc_canc_replace_reason.size = 2

-- Display: Alloc Canc Replace Reason
memx_options_memo_sbe_v1_7.alloc_canc_replace_reason.display = function(value)
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
memx_options_memo_sbe_v1_7.alloc_canc_replace_reason.dissect = function(buffer, offset, packet, parent)
  local length = memx_options_memo_sbe_v1_7.alloc_canc_replace_reason.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = memx_options_memo_sbe_v1_7.alloc_canc_replace_reason.display(value, buffer, offset, packet, parent)

  parent:add(omi_memx_options_memo_sbe_v1_7.fields.alloc_canc_replace_reason, range, value, display)

  return offset + length, value
end

-- Ref Alloc Id Optional
memx_options_memo_sbe_v1_7.ref_alloc_id_optional = {}

-- Size: Ref Alloc Id Optional
memx_options_memo_sbe_v1_7.ref_alloc_id_optional.size = 20

-- Display: Ref Alloc Id Optional
memx_options_memo_sbe_v1_7.ref_alloc_id_optional.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Ref Alloc Id Optional: No Value"
  end

  return "Ref Alloc Id Optional: "..value
end

-- Dissect: Ref Alloc Id Optional
memx_options_memo_sbe_v1_7.ref_alloc_id_optional.dissect = function(buffer, offset, packet, parent)
  local length = memx_options_memo_sbe_v1_7.ref_alloc_id_optional.size
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

  local display = memx_options_memo_sbe_v1_7.ref_alloc_id_optional.display(value, buffer, offset, packet, parent)

  parent:add(omi_memx_options_memo_sbe_v1_7.fields.ref_alloc_id_optional, range, value, display)

  return offset + length, value
end

-- Alloc Trans Type
memx_options_memo_sbe_v1_7.alloc_trans_type = {}

-- Size: Alloc Trans Type
memx_options_memo_sbe_v1_7.alloc_trans_type.size = 1

-- Display: Alloc Trans Type
memx_options_memo_sbe_v1_7.alloc_trans_type.display = function(value)
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
memx_options_memo_sbe_v1_7.alloc_trans_type.dissect = function(buffer, offset, packet, parent)
  local length = memx_options_memo_sbe_v1_7.alloc_trans_type.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = memx_options_memo_sbe_v1_7.alloc_trans_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_memx_options_memo_sbe_v1_7.fields.alloc_trans_type, range, value, display)

  return offset + length, value
end

-- Alloc Type
memx_options_memo_sbe_v1_7.alloc_type = {}

-- Size: Alloc Type
memx_options_memo_sbe_v1_7.alloc_type.size = 1

-- Display: Alloc Type
memx_options_memo_sbe_v1_7.alloc_type.display = function(value)
  if value == 100 then
    return "Alloc Type: Post Trade Edit (100)"
  end
  if value == 255 then
    return "Alloc Type: Null Value (255)"
  end

  return "Alloc Type: Unknown("..value..")"
end

-- Dissect: Alloc Type
memx_options_memo_sbe_v1_7.alloc_type.dissect = function(buffer, offset, packet, parent)
  local length = memx_options_memo_sbe_v1_7.alloc_type.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = memx_options_memo_sbe_v1_7.alloc_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_memx_options_memo_sbe_v1_7.fields.alloc_type, range, value, display)

  return offset + length, value
end

-- Allocation Instruction Alert Message
memx_options_memo_sbe_v1_7.allocation_instruction_alert_message = {}

-- Calculate size of: Allocation Instruction Alert Message
memx_options_memo_sbe_v1_7.allocation_instruction_alert_message.size = function(buffer, offset)
  local index = 0

  index = index + memx_options_memo_sbe_v1_7.sending_time.size

  index = index + memx_options_memo_sbe_v1_7.alloc_id.size

  index = index + memx_options_memo_sbe_v1_7.alloc_type.size

  index = index + memx_options_memo_sbe_v1_7.alloc_trans_type.size

  index = index + memx_options_memo_sbe_v1_7.ref_alloc_id_optional.size

  index = index + memx_options_memo_sbe_v1_7.alloc_canc_replace_reason.size

  index = index + memx_options_memo_sbe_v1_7.side.size

  index = index + memx_options_memo_sbe_v1_7.security_id.size

  index = index + memx_options_memo_sbe_v1_7.trade_date.size

  index = index + memx_options_memo_sbe_v1_7.execution_allocations_groups.size(buffer, offset + index)

  index = index + memx_options_memo_sbe_v1_7.reported_allocations_groups.size(buffer, offset + index)

  return index
end

-- Display: Allocation Instruction Alert Message
memx_options_memo_sbe_v1_7.allocation_instruction_alert_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Allocation Instruction Alert Message
memx_options_memo_sbe_v1_7.allocation_instruction_alert_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Sending Time: 8 Byte Unsigned Fixed Width Integer
  index, sending_time = memx_options_memo_sbe_v1_7.sending_time.dissect(buffer, index, packet, parent)

  -- Alloc Id: 20 Byte Ascii String
  index, alloc_id = memx_options_memo_sbe_v1_7.alloc_id.dissect(buffer, index, packet, parent)

  -- Alloc Type: 1 Byte Unsigned Fixed Width Integer Enum with 2 values
  index, alloc_type = memx_options_memo_sbe_v1_7.alloc_type.dissect(buffer, index, packet, parent)

  -- Alloc Trans Type: 1 Byte Unsigned Fixed Width Integer Enum with 4 values
  index, alloc_trans_type = memx_options_memo_sbe_v1_7.alloc_trans_type.dissect(buffer, index, packet, parent)

  -- Ref Alloc Id Optional: 20 Byte Ascii String Nullable
  index, ref_alloc_id_optional = memx_options_memo_sbe_v1_7.ref_alloc_id_optional.dissect(buffer, index, packet, parent)

  -- Alloc Canc Replace Reason: 2 Byte Unsigned Fixed Width Integer Enum with 3 values
  index, alloc_canc_replace_reason = memx_options_memo_sbe_v1_7.alloc_canc_replace_reason.dissect(buffer, index, packet, parent)

  -- Side: 1 Byte Ascii String Enum with 3 values
  index, side = memx_options_memo_sbe_v1_7.side.dissect(buffer, index, packet, parent)

  -- Security Id: 8 Byte Ascii String
  index, security_id = memx_options_memo_sbe_v1_7.security_id.dissect(buffer, index, packet, parent)

  -- Trade Date: 8 Byte Ascii String
  index, trade_date = memx_options_memo_sbe_v1_7.trade_date.dissect(buffer, index, packet, parent)

  -- Execution Allocations Groups: Struct of 2 fields
  index, execution_allocations_groups = memx_options_memo_sbe_v1_7.execution_allocations_groups.dissect(buffer, index, packet, parent)

  -- Reported Allocations Groups: Struct of 2 fields
  index, reported_allocations_groups = memx_options_memo_sbe_v1_7.reported_allocations_groups.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Allocation Instruction Alert Message
memx_options_memo_sbe_v1_7.allocation_instruction_alert_message.dissect = function(buffer, offset, packet, parent)
  -- Optionally add dynamic struct element to protocol tree
  if show.allocation_instruction_alert_message then
    local length = memx_options_memo_sbe_v1_7.allocation_instruction_alert_message.size(buffer, offset)
    local range = buffer(offset, length)
    local display = memx_options_memo_sbe_v1_7.allocation_instruction_alert_message.display(buffer, packet, parent)
    parent = parent:add(omi_memx_options_memo_sbe_v1_7.fields.allocation_instruction_alert_message, range, display)
  end

  return memx_options_memo_sbe_v1_7.allocation_instruction_alert_message.fields(buffer, offset, packet, parent)
end

-- Alloc Rej Code
memx_options_memo_sbe_v1_7.alloc_rej_code = {}

-- Size: Alloc Rej Code
memx_options_memo_sbe_v1_7.alloc_rej_code.size = 2

-- Display: Alloc Rej Code
memx_options_memo_sbe_v1_7.alloc_rej_code.display = function(value)
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
memx_options_memo_sbe_v1_7.alloc_rej_code.dissect = function(buffer, offset, packet, parent)
  local length = memx_options_memo_sbe_v1_7.alloc_rej_code.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = memx_options_memo_sbe_v1_7.alloc_rej_code.display(value, buffer, offset, packet, parent)

  parent:add(omi_memx_options_memo_sbe_v1_7.fields.alloc_rej_code, range, value, display)

  return offset + length, value
end

-- Alloc Status
memx_options_memo_sbe_v1_7.alloc_status = {}

-- Size: Alloc Status
memx_options_memo_sbe_v1_7.alloc_status.size = 1

-- Display: Alloc Status
memx_options_memo_sbe_v1_7.alloc_status.display = function(value)
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
memx_options_memo_sbe_v1_7.alloc_status.dissect = function(buffer, offset, packet, parent)
  local length = memx_options_memo_sbe_v1_7.alloc_status.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = memx_options_memo_sbe_v1_7.alloc_status.display(value, buffer, offset, packet, parent)

  parent:add(omi_memx_options_memo_sbe_v1_7.fields.alloc_status, range, value, display)

  return offset + length, value
end

-- Secondary Alloc Id
memx_options_memo_sbe_v1_7.secondary_alloc_id = {}

-- Size: Secondary Alloc Id
memx_options_memo_sbe_v1_7.secondary_alloc_id.size = 20

-- Display: Secondary Alloc Id
memx_options_memo_sbe_v1_7.secondary_alloc_id.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Secondary Alloc Id: No Value"
  end

  return "Secondary Alloc Id: "..value
end

-- Dissect: Secondary Alloc Id
memx_options_memo_sbe_v1_7.secondary_alloc_id.dissect = function(buffer, offset, packet, parent)
  local length = memx_options_memo_sbe_v1_7.secondary_alloc_id.size
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

  local display = memx_options_memo_sbe_v1_7.secondary_alloc_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_memx_options_memo_sbe_v1_7.fields.secondary_alloc_id, range, value, display)

  return offset + length, value
end

-- Allocation Instruction Ack Message
memx_options_memo_sbe_v1_7.allocation_instruction_ack_message = {}

-- Calculate size of: Allocation Instruction Ack Message
memx_options_memo_sbe_v1_7.allocation_instruction_ack_message.size = function(buffer, offset)
  local index = 0

  index = index + memx_options_memo_sbe_v1_7.sending_time.size

  index = index + memx_options_memo_sbe_v1_7.alloc_id.size

  index = index + memx_options_memo_sbe_v1_7.alloc_type.size

  index = index + memx_options_memo_sbe_v1_7.alloc_trans_type.size

  index = index + memx_options_memo_sbe_v1_7.secondary_alloc_id.size

  index = index + memx_options_memo_sbe_v1_7.ref_alloc_id_optional.size

  index = index + memx_options_memo_sbe_v1_7.alloc_status.size

  index = index + memx_options_memo_sbe_v1_7.alloc_rej_code.size

  index = index + memx_options_memo_sbe_v1_7.reported_allocations_groups.size(buffer, offset + index)

  return index
end

-- Display: Allocation Instruction Ack Message
memx_options_memo_sbe_v1_7.allocation_instruction_ack_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Allocation Instruction Ack Message
memx_options_memo_sbe_v1_7.allocation_instruction_ack_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Sending Time: 8 Byte Unsigned Fixed Width Integer
  index, sending_time = memx_options_memo_sbe_v1_7.sending_time.dissect(buffer, index, packet, parent)

  -- Alloc Id: 20 Byte Ascii String
  index, alloc_id = memx_options_memo_sbe_v1_7.alloc_id.dissect(buffer, index, packet, parent)

  -- Alloc Type: 1 Byte Unsigned Fixed Width Integer Enum with 2 values
  index, alloc_type = memx_options_memo_sbe_v1_7.alloc_type.dissect(buffer, index, packet, parent)

  -- Alloc Trans Type: 1 Byte Unsigned Fixed Width Integer Enum with 4 values
  index, alloc_trans_type = memx_options_memo_sbe_v1_7.alloc_trans_type.dissect(buffer, index, packet, parent)

  -- Secondary Alloc Id: 20 Byte Ascii String
  index, secondary_alloc_id = memx_options_memo_sbe_v1_7.secondary_alloc_id.dissect(buffer, index, packet, parent)

  -- Ref Alloc Id Optional: 20 Byte Ascii String Nullable
  index, ref_alloc_id_optional = memx_options_memo_sbe_v1_7.ref_alloc_id_optional.dissect(buffer, index, packet, parent)

  -- Alloc Status: 1 Byte Unsigned Fixed Width Integer Enum with 4 values
  index, alloc_status = memx_options_memo_sbe_v1_7.alloc_status.dissect(buffer, index, packet, parent)

  -- Alloc Rej Code: 2 Byte Unsigned Fixed Width Integer Enum with 15 values
  index, alloc_rej_code = memx_options_memo_sbe_v1_7.alloc_rej_code.dissect(buffer, index, packet, parent)

  -- Reported Allocations Groups: Struct of 2 fields
  index, reported_allocations_groups = memx_options_memo_sbe_v1_7.reported_allocations_groups.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Allocation Instruction Ack Message
memx_options_memo_sbe_v1_7.allocation_instruction_ack_message.dissect = function(buffer, offset, packet, parent)
  -- Optionally add dynamic struct element to protocol tree
  if show.allocation_instruction_ack_message then
    local length = memx_options_memo_sbe_v1_7.allocation_instruction_ack_message.size(buffer, offset)
    local range = buffer(offset, length)
    local display = memx_options_memo_sbe_v1_7.allocation_instruction_ack_message.display(buffer, packet, parent)
    parent = parent:add(omi_memx_options_memo_sbe_v1_7.fields.allocation_instruction_ack_message, range, display)
  end

  return memx_options_memo_sbe_v1_7.allocation_instruction_ack_message.fields(buffer, offset, packet, parent)
end

-- Side Optional
memx_options_memo_sbe_v1_7.side_optional = {}

-- Size: Side Optional
memx_options_memo_sbe_v1_7.side_optional.size = 1

-- Display: Side Optional
memx_options_memo_sbe_v1_7.side_optional.display = function(value)
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
memx_options_memo_sbe_v1_7.side_optional.dissect = function(buffer, offset, packet, parent)
  local length = memx_options_memo_sbe_v1_7.side_optional.size
  local range = buffer(offset, length)

  -- parse as byte
  local value = range:uint()

  -- check if value is non zero
  if value ~= 0 then
    value = range:string()
  end

  local display = memx_options_memo_sbe_v1_7.side_optional.display(value, buffer, offset, packet, parent)

  parent:add(omi_memx_options_memo_sbe_v1_7.fields.side_optional, range, value, display)

  return offset + length, value
end

-- Options Security Id Optional
memx_options_memo_sbe_v1_7.options_security_id_optional = {}

-- Size: Options Security Id Optional
memx_options_memo_sbe_v1_7.options_security_id_optional.size = 8

-- Display: Options Security Id Optional
memx_options_memo_sbe_v1_7.options_security_id_optional.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Options Security Id Optional: No Value"
  end

  return "Options Security Id Optional: "..value
end

-- Dissect: Options Security Id Optional
memx_options_memo_sbe_v1_7.options_security_id_optional.dissect = function(buffer, offset, packet, parent)
  local length = memx_options_memo_sbe_v1_7.options_security_id_optional.size
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

  local display = memx_options_memo_sbe_v1_7.options_security_id_optional.display(value, buffer, offset, packet, parent)

  parent:add(omi_memx_options_memo_sbe_v1_7.fields.options_security_id_optional, range, value, display)

  return offset + length, value
end

-- Cxl Rej Reason
memx_options_memo_sbe_v1_7.cxl_rej_reason = {}

-- Size: Cxl Rej Reason
memx_options_memo_sbe_v1_7.cxl_rej_reason.size = 2

-- Display: Cxl Rej Reason
memx_options_memo_sbe_v1_7.cxl_rej_reason.display = function(value)
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
memx_options_memo_sbe_v1_7.cxl_rej_reason.dissect = function(buffer, offset, packet, parent)
  local length = memx_options_memo_sbe_v1_7.cxl_rej_reason.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = memx_options_memo_sbe_v1_7.cxl_rej_reason.display(value, buffer, offset, packet, parent)

  parent:add(omi_memx_options_memo_sbe_v1_7.fields.cxl_rej_reason, range, value, display)

  return offset + length, value
end

-- Cxl Rej Response To
memx_options_memo_sbe_v1_7.cxl_rej_response_to = {}

-- Size: Cxl Rej Response To
memx_options_memo_sbe_v1_7.cxl_rej_response_to.size = 1

-- Display: Cxl Rej Response To
memx_options_memo_sbe_v1_7.cxl_rej_response_to.display = function(value)
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
memx_options_memo_sbe_v1_7.cxl_rej_response_to.dissect = function(buffer, offset, packet, parent)
  local length = memx_options_memo_sbe_v1_7.cxl_rej_response_to.size
  local range = buffer(offset, length)

  -- parse as byte
  local value = range:uint()

  -- check if value is non zero
  if value ~= 0 then
    value = range:string()
  end

  local display = memx_options_memo_sbe_v1_7.cxl_rej_response_to.display(value, buffer, offset, packet, parent)

  parent:add(omi_memx_options_memo_sbe_v1_7.fields.cxl_rej_response_to, range, value, display)

  return offset + length, value
end

-- List Seq No
memx_options_memo_sbe_v1_7.list_seq_no = {}

-- Size: List Seq No
memx_options_memo_sbe_v1_7.list_seq_no.size = 1

-- Display: List Seq No
memx_options_memo_sbe_v1_7.list_seq_no.display = function(value)
  return "List Seq No: "..value
end

-- Dissect: List Seq No
memx_options_memo_sbe_v1_7.list_seq_no.dissect = function(buffer, offset, packet, parent)
  local length = memx_options_memo_sbe_v1_7.list_seq_no.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = memx_options_memo_sbe_v1_7.list_seq_no.display(value, buffer, offset, packet, parent)

  parent:add(omi_memx_options_memo_sbe_v1_7.fields.list_seq_no, range, value, display)

  return offset + length, value
end

-- Order Cancel Reject Message
memx_options_memo_sbe_v1_7.order_cancel_reject_message = {}

-- Calculate size of: Order Cancel Reject Message
memx_options_memo_sbe_v1_7.order_cancel_reject_message.size = function(buffer, offset)
  local index = 0

  index = index + memx_options_memo_sbe_v1_7.clordid.size

  index = index + memx_options_memo_sbe_v1_7.list_seq_no.size

  index = index + memx_options_memo_sbe_v1_7.cxl_rej_response_to.size

  index = index + memx_options_memo_sbe_v1_7.cxl_rej_reason.size

  index = index + memx_options_memo_sbe_v1_7.options_security_id_optional.size

  index = index + memx_options_memo_sbe_v1_7.side_optional.size

  index = index + memx_options_memo_sbe_v1_7.sending_time.size

  return index
end

-- Display: Order Cancel Reject Message
memx_options_memo_sbe_v1_7.order_cancel_reject_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Order Cancel Reject Message
memx_options_memo_sbe_v1_7.order_cancel_reject_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- ClOrdId: 20 Byte Ascii String
  index, clordid = memx_options_memo_sbe_v1_7.clordid.dissect(buffer, index, packet, parent)

  -- List Seq No: 1 Byte Unsigned Fixed Width Integer
  index, list_seq_no = memx_options_memo_sbe_v1_7.list_seq_no.dissect(buffer, index, packet, parent)

  -- Cxl Rej Response To: 1 Byte Ascii String Enum with 2 values
  index, cxl_rej_response_to = memx_options_memo_sbe_v1_7.cxl_rej_response_to.dissect(buffer, index, packet, parent)

  -- Cxl Rej Reason: 2 Byte Unsigned Fixed Width Integer Enum with 66 values
  index, cxl_rej_reason = memx_options_memo_sbe_v1_7.cxl_rej_reason.dissect(buffer, index, packet, parent)

  -- Options Security Id Optional: 8 Byte Ascii String Nullable
  index, options_security_id_optional = memx_options_memo_sbe_v1_7.options_security_id_optional.dissect(buffer, index, packet, parent)

  -- Side Optional: 1 Byte Ascii String Enum with 4 values
  index, side_optional = memx_options_memo_sbe_v1_7.side_optional.dissect(buffer, index, packet, parent)

  -- Sending Time: 8 Byte Unsigned Fixed Width Integer
  index, sending_time = memx_options_memo_sbe_v1_7.sending_time.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Order Cancel Reject Message
memx_options_memo_sbe_v1_7.order_cancel_reject_message.dissect = function(buffer, offset, packet, parent)
  if show.order_cancel_reject_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_memx_options_memo_sbe_v1_7.fields.order_cancel_reject_message, buffer(offset, 0))
    local index = memx_options_memo_sbe_v1_7.order_cancel_reject_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = memx_options_memo_sbe_v1_7.order_cancel_reject_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return memx_options_memo_sbe_v1_7.order_cancel_reject_message.fields(buffer, offset, packet, parent)
  end
end

-- Total Affected Orders
memx_options_memo_sbe_v1_7.total_affected_orders = {}

-- Size: Total Affected Orders
memx_options_memo_sbe_v1_7.total_affected_orders.size = 4

-- Display: Total Affected Orders
memx_options_memo_sbe_v1_7.total_affected_orders.display = function(value)
  return "Total Affected Orders: "..value
end

-- Dissect: Total Affected Orders
memx_options_memo_sbe_v1_7.total_affected_orders.dissect = function(buffer, offset, packet, parent)
  local length = memx_options_memo_sbe_v1_7.total_affected_orders.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = memx_options_memo_sbe_v1_7.total_affected_orders.display(value, buffer, offset, packet, parent)

  parent:add(omi_memx_options_memo_sbe_v1_7.fields.total_affected_orders, range, value, display)

  return offset + length, value
end

-- Mass Cancel Done Message
memx_options_memo_sbe_v1_7.mass_cancel_done_message = {}

-- Calculate size of: Mass Cancel Done Message
memx_options_memo_sbe_v1_7.mass_cancel_done_message.size = function(buffer, offset)
  local index = 0

  index = index + memx_options_memo_sbe_v1_7.clordid.size

  index = index + memx_options_memo_sbe_v1_7.total_affected_orders.size

  index = index + memx_options_memo_sbe_v1_7.sending_time.size

  index = index + memx_options_memo_sbe_v1_7.transact_time.size

  return index
end

-- Display: Mass Cancel Done Message
memx_options_memo_sbe_v1_7.mass_cancel_done_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Mass Cancel Done Message
memx_options_memo_sbe_v1_7.mass_cancel_done_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- ClOrdId: 20 Byte Ascii String
  index, clordid = memx_options_memo_sbe_v1_7.clordid.dissect(buffer, index, packet, parent)

  -- Total Affected Orders: 4 Byte Unsigned Fixed Width Integer
  index, total_affected_orders = memx_options_memo_sbe_v1_7.total_affected_orders.dissect(buffer, index, packet, parent)

  -- Sending Time: 8 Byte Unsigned Fixed Width Integer
  index, sending_time = memx_options_memo_sbe_v1_7.sending_time.dissect(buffer, index, packet, parent)

  -- Transact Time: 8 Byte Unsigned Fixed Width Integer
  index, transact_time = memx_options_memo_sbe_v1_7.transact_time.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Mass Cancel Done Message
memx_options_memo_sbe_v1_7.mass_cancel_done_message.dissect = function(buffer, offset, packet, parent)
  if show.mass_cancel_done_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_memx_options_memo_sbe_v1_7.fields.mass_cancel_done_message, buffer(offset, 0))
    local index = memx_options_memo_sbe_v1_7.mass_cancel_done_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = memx_options_memo_sbe_v1_7.mass_cancel_done_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return memx_options_memo_sbe_v1_7.mass_cancel_done_message.fields(buffer, offset, packet, parent)
  end
end

-- Lockout
memx_options_memo_sbe_v1_7.lockout = {}

-- Send Cancels
memx_options_memo_sbe_v1_7.send_cancels = {}

-- Cancel Orders From This Port Only
memx_options_memo_sbe_v1_7.cancel_orders_from_this_port_only = {}

-- Reserved 5
memx_options_memo_sbe_v1_7.reserved_5 = {}

-- Mass Cancel Inst
memx_options_memo_sbe_v1_7.mass_cancel_inst = {}

-- Size: Mass Cancel Inst
memx_options_memo_sbe_v1_7.mass_cancel_inst.size = 1

-- Display: Mass Cancel Inst
memx_options_memo_sbe_v1_7.mass_cancel_inst.display = function(buffer, packet, parent)
  local display = ""

  -- Is Cancel Orders From This Port Only flag set?
  if buffer:bitfield(5) > 0 then
    display = display.."Cancel Orders From This Port Only|"
  end
  -- Is Send Cancels flag set?
  if buffer:bitfield(6) > 0 then
    display = display.."Send Cancels|"
  end
  -- Is Lockout flag set?
  if buffer:bitfield(7) > 0 then
    display = display.."Lockout|"
  end

  return display:sub(1, -2)
end

-- Dissect Bit Fields: Mass Cancel Inst
memx_options_memo_sbe_v1_7.mass_cancel_inst.bits = function(buffer, offset, packet, parent)

  -- Reserved 5: 5 Bit
  parent:add(omi_memx_options_memo_sbe_v1_7.fields.reserved_5, buffer(offset, 1))

  -- Cancel Orders From This Port Only: 1 Bit
  parent:add(omi_memx_options_memo_sbe_v1_7.fields.cancel_orders_from_this_port_only, buffer(offset, 1))

  -- Send Cancels: 1 Bit
  parent:add(omi_memx_options_memo_sbe_v1_7.fields.send_cancels, buffer(offset, 1))

  -- Lockout: 1 Bit
  parent:add(omi_memx_options_memo_sbe_v1_7.fields.lockout, buffer(offset, 1))
end

-- Dissect: Mass Cancel Inst
memx_options_memo_sbe_v1_7.mass_cancel_inst.dissect = function(buffer, offset, packet, parent)
  local size = 1
  local range = buffer(offset, size)
  local display = memx_options_memo_sbe_v1_7.mass_cancel_inst.display(range, packet, parent)
  local element = parent:add(omi_memx_options_memo_sbe_v1_7.fields.mass_cancel_inst, range, display)

  if show.mass_cancel_inst then
    memx_options_memo_sbe_v1_7.mass_cancel_inst.bits(buffer, offset, packet, element)
  end

  return offset + 1, range
end

-- Cancel Group Id
memx_options_memo_sbe_v1_7.cancel_group_id = {}

-- Size: Cancel Group Id
memx_options_memo_sbe_v1_7.cancel_group_id.size = 2

-- Display: Cancel Group Id
memx_options_memo_sbe_v1_7.cancel_group_id.display = function(value)
  -- Check if field has value
  if value == 65535 then
    return "Cancel Group Id: No Value"
  end

  return "Cancel Group Id: "..value
end

-- Dissect: Cancel Group Id
memx_options_memo_sbe_v1_7.cancel_group_id.dissect = function(buffer, offset, packet, parent)
  local length = memx_options_memo_sbe_v1_7.cancel_group_id.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = memx_options_memo_sbe_v1_7.cancel_group_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_memx_options_memo_sbe_v1_7.fields.cancel_group_id, range, value, display)

  return offset + length, value
end

-- Underlier Optional
memx_options_memo_sbe_v1_7.underlier_optional = {}

-- Size: Underlier Optional
memx_options_memo_sbe_v1_7.underlier_optional.size = 6

-- Display: Underlier Optional
memx_options_memo_sbe_v1_7.underlier_optional.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Underlier Optional: No Value"
  end

  return "Underlier Optional: "..value
end

-- Dissect: Underlier Optional
memx_options_memo_sbe_v1_7.underlier_optional.dissect = function(buffer, offset, packet, parent)
  local length = memx_options_memo_sbe_v1_7.underlier_optional.size
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

  local display = memx_options_memo_sbe_v1_7.underlier_optional.display(value, buffer, offset, packet, parent)

  parent:add(omi_memx_options_memo_sbe_v1_7.fields.underlier_optional, range, value, display)

  return offset + length, value
end

-- Underlying Or Series Optional
memx_options_memo_sbe_v1_7.underlying_or_series_optional = {}

-- Size: Underlying Or Series Optional
memx_options_memo_sbe_v1_7.underlying_or_series_optional.size = 1

-- Display: Underlying Or Series Optional
memx_options_memo_sbe_v1_7.underlying_or_series_optional.display = function(value)
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
memx_options_memo_sbe_v1_7.underlying_or_series_optional.dissect = function(buffer, offset, packet, parent)
  local length = memx_options_memo_sbe_v1_7.underlying_or_series_optional.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = memx_options_memo_sbe_v1_7.underlying_or_series_optional.display(value, buffer, offset, packet, parent)

  parent:add(omi_memx_options_memo_sbe_v1_7.fields.underlying_or_series_optional, range, value, display)

  return offset + length, value
end

-- Efid Optional
memx_options_memo_sbe_v1_7.efid_optional = {}

-- Size: Efid Optional
memx_options_memo_sbe_v1_7.efid_optional.size = 4

-- Display: Efid Optional
memx_options_memo_sbe_v1_7.efid_optional.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Efid Optional: No Value"
  end

  return "Efid Optional: "..value
end

-- Dissect: Efid Optional
memx_options_memo_sbe_v1_7.efid_optional.dissect = function(buffer, offset, packet, parent)
  local length = memx_options_memo_sbe_v1_7.efid_optional.size
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

  local display = memx_options_memo_sbe_v1_7.efid_optional.display(value, buffer, offset, packet, parent)

  parent:add(omi_memx_options_memo_sbe_v1_7.fields.efid_optional, range, value, display)

  return offset + length, value
end

-- Mass Cancel Reject Reason
memx_options_memo_sbe_v1_7.mass_cancel_reject_reason = {}

-- Size: Mass Cancel Reject Reason
memx_options_memo_sbe_v1_7.mass_cancel_reject_reason.size = 2

-- Display: Mass Cancel Reject Reason
memx_options_memo_sbe_v1_7.mass_cancel_reject_reason.display = function(value)
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
memx_options_memo_sbe_v1_7.mass_cancel_reject_reason.dissect = function(buffer, offset, packet, parent)
  local length = memx_options_memo_sbe_v1_7.mass_cancel_reject_reason.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = memx_options_memo_sbe_v1_7.mass_cancel_reject_reason.display(value, buffer, offset, packet, parent)

  parent:add(omi_memx_options_memo_sbe_v1_7.fields.mass_cancel_reject_reason, range, value, display)

  return offset + length, value
end

-- Mass Cancel Reject Message
memx_options_memo_sbe_v1_7.mass_cancel_reject_message = {}

-- Calculate size of: Mass Cancel Reject Message
memx_options_memo_sbe_v1_7.mass_cancel_reject_message.size = function(buffer, offset)
  local index = 0

  index = index + memx_options_memo_sbe_v1_7.clordid.size

  index = index + memx_options_memo_sbe_v1_7.mass_cancel_reject_reason.size

  index = index + memx_options_memo_sbe_v1_7.efid_optional.size

  index = index + memx_options_memo_sbe_v1_7.underlying_or_series_optional.size

  index = index + memx_options_memo_sbe_v1_7.underlier_optional.size

  index = index + memx_options_memo_sbe_v1_7.options_security_id_optional.size

  index = index + memx_options_memo_sbe_v1_7.cancel_group_id.size

  index = index + memx_options_memo_sbe_v1_7.mass_cancel_inst.size

  index = index + memx_options_memo_sbe_v1_7.sending_time.size

  return index
end

-- Display: Mass Cancel Reject Message
memx_options_memo_sbe_v1_7.mass_cancel_reject_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Mass Cancel Reject Message
memx_options_memo_sbe_v1_7.mass_cancel_reject_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- ClOrdId: 20 Byte Ascii String
  index, clordid = memx_options_memo_sbe_v1_7.clordid.dissect(buffer, index, packet, parent)

  -- Mass Cancel Reject Reason: 2 Byte Unsigned Fixed Width Integer Enum with 21 values
  index, mass_cancel_reject_reason = memx_options_memo_sbe_v1_7.mass_cancel_reject_reason.dissect(buffer, index, packet, parent)

  -- Efid Optional: 4 Byte Ascii String Nullable
  index, efid_optional = memx_options_memo_sbe_v1_7.efid_optional.dissect(buffer, index, packet, parent)

  -- Underlying Or Series Optional: 1 Byte Unsigned Fixed Width Integer Enum with 4 values
  index, underlying_or_series_optional = memx_options_memo_sbe_v1_7.underlying_or_series_optional.dissect(buffer, index, packet, parent)

  -- Underlier Optional: 6 Byte Ascii String Nullable
  index, underlier_optional = memx_options_memo_sbe_v1_7.underlier_optional.dissect(buffer, index, packet, parent)

  -- Options Security Id Optional: 8 Byte Ascii String Nullable
  index, options_security_id_optional = memx_options_memo_sbe_v1_7.options_security_id_optional.dissect(buffer, index, packet, parent)

  -- Cancel Group Id: 2 Byte Unsigned Fixed Width Integer Nullable
  index, cancel_group_id = memx_options_memo_sbe_v1_7.cancel_group_id.dissect(buffer, index, packet, parent)

  -- Mass Cancel Inst: Struct of 4 fields
  index, mass_cancel_inst = memx_options_memo_sbe_v1_7.mass_cancel_inst.dissect(buffer, index, packet, parent)

  -- Sending Time: 8 Byte Unsigned Fixed Width Integer
  index, sending_time = memx_options_memo_sbe_v1_7.sending_time.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Mass Cancel Reject Message
memx_options_memo_sbe_v1_7.mass_cancel_reject_message.dissect = function(buffer, offset, packet, parent)
  if show.mass_cancel_reject_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_memx_options_memo_sbe_v1_7.fields.mass_cancel_reject_message, buffer(offset, 0))
    local index = memx_options_memo_sbe_v1_7.mass_cancel_reject_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = memx_options_memo_sbe_v1_7.mass_cancel_reject_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return memx_options_memo_sbe_v1_7.mass_cancel_reject_message.fields(buffer, offset, packet, parent)
  end
end

-- Underlier
memx_options_memo_sbe_v1_7.underlier = {}

-- Size: Underlier
memx_options_memo_sbe_v1_7.underlier.size = 6

-- Display: Underlier
memx_options_memo_sbe_v1_7.underlier.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Underlier: No Value"
  end

  return "Underlier: "..value
end

-- Dissect: Underlier
memx_options_memo_sbe_v1_7.underlier.dissect = function(buffer, offset, packet, parent)
  local length = memx_options_memo_sbe_v1_7.underlier.size
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

  local display = memx_options_memo_sbe_v1_7.underlier.display(value, buffer, offset, packet, parent)

  parent:add(omi_memx_options_memo_sbe_v1_7.fields.underlier, range, value, display)

  return offset + length, value
end

-- Underlying Or Series
memx_options_memo_sbe_v1_7.underlying_or_series = {}

-- Size: Underlying Or Series
memx_options_memo_sbe_v1_7.underlying_or_series.size = 1

-- Display: Underlying Or Series
memx_options_memo_sbe_v1_7.underlying_or_series.display = function(value)
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
memx_options_memo_sbe_v1_7.underlying_or_series.dissect = function(buffer, offset, packet, parent)
  local length = memx_options_memo_sbe_v1_7.underlying_or_series.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = memx_options_memo_sbe_v1_7.underlying_or_series.display(value, buffer, offset, packet, parent)

  parent:add(omi_memx_options_memo_sbe_v1_7.fields.underlying_or_series, range, value, display)

  return offset + length, value
end

-- Lockout Id Optional
memx_options_memo_sbe_v1_7.lockout_id_optional = {}

-- Size: Lockout Id Optional
memx_options_memo_sbe_v1_7.lockout_id_optional.size = 8

-- Display: Lockout Id Optional
memx_options_memo_sbe_v1_7.lockout_id_optional.display = function(value)
  -- Check if field has value
  if value == UInt64(0xFFFFFFFF, 0xFFFFFFFF) then
    return "Lockout Id Optional: No Value"
  end

  return "Lockout Id Optional: "..value
end

-- Dissect: Lockout Id Optional
memx_options_memo_sbe_v1_7.lockout_id_optional.dissect = function(buffer, offset, packet, parent)
  local length = memx_options_memo_sbe_v1_7.lockout_id_optional.size
  local range = buffer(offset, length)
  local value = range:uint64()
  local display = memx_options_memo_sbe_v1_7.lockout_id_optional.display(value, buffer, offset, packet, parent)

  parent:add(omi_memx_options_memo_sbe_v1_7.fields.lockout_id_optional, range, value, display)

  return offset + length, value
end

-- Pending Mass Cancel Message
memx_options_memo_sbe_v1_7.pending_mass_cancel_message = {}

-- Calculate size of: Pending Mass Cancel Message
memx_options_memo_sbe_v1_7.pending_mass_cancel_message.size = function(buffer, offset)
  local index = 0

  index = index + memx_options_memo_sbe_v1_7.clordid.size

  index = index + memx_options_memo_sbe_v1_7.mass_cancel_inst.size

  index = index + memx_options_memo_sbe_v1_7.lockout_id_optional.size

  index = index + memx_options_memo_sbe_v1_7.efid_optional.size

  index = index + memx_options_memo_sbe_v1_7.underlying_or_series.size

  index = index + memx_options_memo_sbe_v1_7.underlier.size

  index = index + memx_options_memo_sbe_v1_7.options_security_id_optional.size

  index = index + memx_options_memo_sbe_v1_7.cancel_group_id.size

  index = index + memx_options_memo_sbe_v1_7.sending_time.size

  return index
end

-- Display: Pending Mass Cancel Message
memx_options_memo_sbe_v1_7.pending_mass_cancel_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Pending Mass Cancel Message
memx_options_memo_sbe_v1_7.pending_mass_cancel_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- ClOrdId: 20 Byte Ascii String
  index, clordid = memx_options_memo_sbe_v1_7.clordid.dissect(buffer, index, packet, parent)

  -- Mass Cancel Inst: Struct of 4 fields
  index, mass_cancel_inst = memx_options_memo_sbe_v1_7.mass_cancel_inst.dissect(buffer, index, packet, parent)

  -- Lockout Id Optional: 8 Byte Unsigned Fixed Width Integer Nullable
  index, lockout_id_optional = memx_options_memo_sbe_v1_7.lockout_id_optional.dissect(buffer, index, packet, parent)

  -- Efid Optional: 4 Byte Ascii String Nullable
  index, efid_optional = memx_options_memo_sbe_v1_7.efid_optional.dissect(buffer, index, packet, parent)

  -- Underlying Or Series: 1 Byte Unsigned Fixed Width Integer Enum with 3 values
  index, underlying_or_series = memx_options_memo_sbe_v1_7.underlying_or_series.dissect(buffer, index, packet, parent)

  -- Underlier: 6 Byte Ascii String
  index, underlier = memx_options_memo_sbe_v1_7.underlier.dissect(buffer, index, packet, parent)

  -- Options Security Id Optional: 8 Byte Ascii String Nullable
  index, options_security_id_optional = memx_options_memo_sbe_v1_7.options_security_id_optional.dissect(buffer, index, packet, parent)

  -- Cancel Group Id: 2 Byte Unsigned Fixed Width Integer Nullable
  index, cancel_group_id = memx_options_memo_sbe_v1_7.cancel_group_id.dissect(buffer, index, packet, parent)

  -- Sending Time: 8 Byte Unsigned Fixed Width Integer
  index, sending_time = memx_options_memo_sbe_v1_7.sending_time.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Pending Mass Cancel Message
memx_options_memo_sbe_v1_7.pending_mass_cancel_message.dissect = function(buffer, offset, packet, parent)
  if show.pending_mass_cancel_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_memx_options_memo_sbe_v1_7.fields.pending_mass_cancel_message, buffer(offset, 0))
    local index = memx_options_memo_sbe_v1_7.pending_mass_cancel_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = memx_options_memo_sbe_v1_7.pending_mass_cancel_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return memx_options_memo_sbe_v1_7.pending_mass_cancel_message.fields(buffer, offset, packet, parent)
  end
end

-- Cum Qty
memx_options_memo_sbe_v1_7.cum_qty = {}

-- Size: Cum Qty
memx_options_memo_sbe_v1_7.cum_qty.size = 4

-- Display: Cum Qty
memx_options_memo_sbe_v1_7.cum_qty.display = function(value)
  return "Cum Qty: "..value
end

-- Dissect: Cum Qty
memx_options_memo_sbe_v1_7.cum_qty.dissect = function(buffer, offset, packet, parent)
  local length = memx_options_memo_sbe_v1_7.cum_qty.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = memx_options_memo_sbe_v1_7.cum_qty.display(value, buffer, offset, packet, parent)

  parent:add(omi_memx_options_memo_sbe_v1_7.fields.cum_qty, range, value, display)

  return offset + length, value
end

-- Leaves Qty
memx_options_memo_sbe_v1_7.leaves_qty = {}

-- Size: Leaves Qty
memx_options_memo_sbe_v1_7.leaves_qty.size = 4

-- Display: Leaves Qty
memx_options_memo_sbe_v1_7.leaves_qty.display = function(value)
  return "Leaves Qty: "..value
end

-- Dissect: Leaves Qty
memx_options_memo_sbe_v1_7.leaves_qty.dissect = function(buffer, offset, packet, parent)
  local length = memx_options_memo_sbe_v1_7.leaves_qty.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = memx_options_memo_sbe_v1_7.leaves_qty.display(value, buffer, offset, packet, parent)

  parent:add(omi_memx_options_memo_sbe_v1_7.fields.leaves_qty, range, value, display)

  return offset + length, value
end

-- Last Qty Optional
memx_options_memo_sbe_v1_7.last_qty_optional = {}

-- Size: Last Qty Optional
memx_options_memo_sbe_v1_7.last_qty_optional.size = 4

-- Display: Last Qty Optional
memx_options_memo_sbe_v1_7.last_qty_optional.display = function(value)
  -- Check if field has value
  if value == 4294967295 then
    return "Last Qty Optional: No Value"
  end

  return "Last Qty Optional: "..value
end

-- Dissect: Last Qty Optional
memx_options_memo_sbe_v1_7.last_qty_optional.dissect = function(buffer, offset, packet, parent)
  local length = memx_options_memo_sbe_v1_7.last_qty_optional.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = memx_options_memo_sbe_v1_7.last_qty_optional.display(value, buffer, offset, packet, parent)

  parent:add(omi_memx_options_memo_sbe_v1_7.fields.last_qty_optional, range, value, display)

  return offset + length, value
end

-- Extended Restatement Reason
memx_options_memo_sbe_v1_7.extended_restatement_reason = {}

-- Size: Extended Restatement Reason
memx_options_memo_sbe_v1_7.extended_restatement_reason.size = 1

-- Display: Extended Restatement Reason
memx_options_memo_sbe_v1_7.extended_restatement_reason.display = function(value)
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
memx_options_memo_sbe_v1_7.extended_restatement_reason.dissect = function(buffer, offset, packet, parent)
  local length = memx_options_memo_sbe_v1_7.extended_restatement_reason.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = memx_options_memo_sbe_v1_7.extended_restatement_reason.display(value, buffer, offset, packet, parent)

  parent:add(omi_memx_options_memo_sbe_v1_7.fields.extended_restatement_reason, range, value, display)

  return offset + length, value
end

-- Exec Restatement Reason
memx_options_memo_sbe_v1_7.exec_restatement_reason = {}

-- Size: Exec Restatement Reason
memx_options_memo_sbe_v1_7.exec_restatement_reason.size = 1

-- Display: Exec Restatement Reason
memx_options_memo_sbe_v1_7.exec_restatement_reason.display = function(value)
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
memx_options_memo_sbe_v1_7.exec_restatement_reason.dissect = function(buffer, offset, packet, parent)
  local length = memx_options_memo_sbe_v1_7.exec_restatement_reason.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = memx_options_memo_sbe_v1_7.exec_restatement_reason.display(value, buffer, offset, packet, parent)

  parent:add(omi_memx_options_memo_sbe_v1_7.fields.exec_restatement_reason, range, value, display)

  return offset + length, value
end

-- Ord Status
memx_options_memo_sbe_v1_7.ord_status = {}

-- Size: Ord Status
memx_options_memo_sbe_v1_7.ord_status.size = 1

-- Display: Ord Status
memx_options_memo_sbe_v1_7.ord_status.display = function(value)
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
memx_options_memo_sbe_v1_7.ord_status.dissect = function(buffer, offset, packet, parent)
  local length = memx_options_memo_sbe_v1_7.ord_status.size
  local range = buffer(offset, length)

  -- parse as byte
  local value = range:uint()

  -- check if value is non zero
  if value ~= 0 then
    value = range:string()
  end

  local display = memx_options_memo_sbe_v1_7.ord_status.display(value, buffer, offset, packet, parent)

  parent:add(omi_memx_options_memo_sbe_v1_7.fields.ord_status, range, value, display)

  return offset + length, value
end

-- Exec Id
memx_options_memo_sbe_v1_7.exec_id = {}

-- Size: Exec Id
memx_options_memo_sbe_v1_7.exec_id.size = 8

-- Display: Exec Id
memx_options_memo_sbe_v1_7.exec_id.display = function(value)
  return "Exec Id: "..value
end

-- Dissect: Exec Id
memx_options_memo_sbe_v1_7.exec_id.dissect = function(buffer, offset, packet, parent)
  local length = memx_options_memo_sbe_v1_7.exec_id.size
  local range = buffer(offset, length)
  local value = range:uint64()
  local display = memx_options_memo_sbe_v1_7.exec_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_memx_options_memo_sbe_v1_7.fields.exec_id, range, value, display)

  return offset + length, value
end

-- Order Id
memx_options_memo_sbe_v1_7.order_id = {}

-- Size: Order Id
memx_options_memo_sbe_v1_7.order_id.size = 8

-- Display: Order Id
memx_options_memo_sbe_v1_7.order_id.display = function(value)
  return "Order Id: "..value
end

-- Dissect: Order Id
memx_options_memo_sbe_v1_7.order_id.dissect = function(buffer, offset, packet, parent)
  local length = memx_options_memo_sbe_v1_7.order_id.size
  local range = buffer(offset, length)
  local value = range:uint64()
  local display = memx_options_memo_sbe_v1_7.order_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_memx_options_memo_sbe_v1_7.fields.order_id, range, value, display)

  return offset + length, value
end

-- Execution Report Restatement Message
memx_options_memo_sbe_v1_7.execution_report_restatement_message = {}

-- Calculate size of: Execution Report Restatement Message
memx_options_memo_sbe_v1_7.execution_report_restatement_message.size = function(buffer, offset)
  local index = 0

  index = index + memx_options_memo_sbe_v1_7.order_id.size

  index = index + memx_options_memo_sbe_v1_7.clordid.size

  index = index + memx_options_memo_sbe_v1_7.list_seq_no.size

  index = index + memx_options_memo_sbe_v1_7.exec_id.size

  index = index + memx_options_memo_sbe_v1_7.ord_status.size

  index = index + memx_options_memo_sbe_v1_7.security_id.size

  index = index + memx_options_memo_sbe_v1_7.exec_restatement_reason.size

  index = index + memx_options_memo_sbe_v1_7.extended_restatement_reason.size

  index = index + memx_options_memo_sbe_v1_7.side.size

  index = index + memx_options_memo_sbe_v1_7.last_px.size

  index = index + memx_options_memo_sbe_v1_7.last_qty_optional.size

  index = index + memx_options_memo_sbe_v1_7.leaves_qty.size

  index = index + memx_options_memo_sbe_v1_7.cum_qty.size

  index = index + memx_options_memo_sbe_v1_7.sending_time.size

  index = index + memx_options_memo_sbe_v1_7.transact_time.size

  return index
end

-- Display: Execution Report Restatement Message
memx_options_memo_sbe_v1_7.execution_report_restatement_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Execution Report Restatement Message
memx_options_memo_sbe_v1_7.execution_report_restatement_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Order Id: 8 Byte Unsigned Fixed Width Integer
  index, order_id = memx_options_memo_sbe_v1_7.order_id.dissect(buffer, index, packet, parent)

  -- ClOrdId: 20 Byte Ascii String
  index, clordid = memx_options_memo_sbe_v1_7.clordid.dissect(buffer, index, packet, parent)

  -- List Seq No: 1 Byte Unsigned Fixed Width Integer
  index, list_seq_no = memx_options_memo_sbe_v1_7.list_seq_no.dissect(buffer, index, packet, parent)

  -- Exec Id: 8 Byte Unsigned Fixed Width Integer
  index, exec_id = memx_options_memo_sbe_v1_7.exec_id.dissect(buffer, index, packet, parent)

  -- Ord Status: 1 Byte Ascii String Enum with 8 values
  index, ord_status = memx_options_memo_sbe_v1_7.ord_status.dissect(buffer, index, packet, parent)

  -- Security Id: 8 Byte Ascii String
  index, security_id = memx_options_memo_sbe_v1_7.security_id.dissect(buffer, index, packet, parent)

  -- Exec Restatement Reason: 1 Byte Unsigned Fixed Width Integer Enum with 4 values
  index, exec_restatement_reason = memx_options_memo_sbe_v1_7.exec_restatement_reason.dissect(buffer, index, packet, parent)

  -- Extended Restatement Reason: 1 Byte Unsigned Fixed Width Integer Enum with 6 values
  index, extended_restatement_reason = memx_options_memo_sbe_v1_7.extended_restatement_reason.dissect(buffer, index, packet, parent)

  -- Side: 1 Byte Ascii String Enum with 3 values
  index, side = memx_options_memo_sbe_v1_7.side.dissect(buffer, index, packet, parent)

  -- Last Px: 8 Byte Unsigned Fixed Width Integer
  index, last_px = memx_options_memo_sbe_v1_7.last_px.dissect(buffer, index, packet, parent)

  -- Last Qty Optional: 4 Byte Unsigned Fixed Width Integer Nullable
  index, last_qty_optional = memx_options_memo_sbe_v1_7.last_qty_optional.dissect(buffer, index, packet, parent)

  -- Leaves Qty: 4 Byte Unsigned Fixed Width Integer
  index, leaves_qty = memx_options_memo_sbe_v1_7.leaves_qty.dissect(buffer, index, packet, parent)

  -- Cum Qty: 4 Byte Unsigned Fixed Width Integer
  index, cum_qty = memx_options_memo_sbe_v1_7.cum_qty.dissect(buffer, index, packet, parent)

  -- Sending Time: 8 Byte Unsigned Fixed Width Integer
  index, sending_time = memx_options_memo_sbe_v1_7.sending_time.dissect(buffer, index, packet, parent)

  -- Transact Time: 8 Byte Unsigned Fixed Width Integer
  index, transact_time = memx_options_memo_sbe_v1_7.transact_time.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Execution Report Restatement Message
memx_options_memo_sbe_v1_7.execution_report_restatement_message.dissect = function(buffer, offset, packet, parent)
  if show.execution_report_restatement_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_memx_options_memo_sbe_v1_7.fields.execution_report_restatement_message, buffer(offset, 0))
    local index = memx_options_memo_sbe_v1_7.execution_report_restatement_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = memx_options_memo_sbe_v1_7.execution_report_restatement_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return memx_options_memo_sbe_v1_7.execution_report_restatement_message.fields(buffer, offset, packet, parent)
  end
end

-- Exec Ref Id
memx_options_memo_sbe_v1_7.exec_ref_id = {}

-- Size: Exec Ref Id
memx_options_memo_sbe_v1_7.exec_ref_id.size = 8

-- Display: Exec Ref Id
memx_options_memo_sbe_v1_7.exec_ref_id.display = function(value)
  return "Exec Ref Id: "..value
end

-- Dissect: Exec Ref Id
memx_options_memo_sbe_v1_7.exec_ref_id.dissect = function(buffer, offset, packet, parent)
  local length = memx_options_memo_sbe_v1_7.exec_ref_id.size
  local range = buffer(offset, length)
  local value = range:uint64()
  local display = memx_options_memo_sbe_v1_7.exec_ref_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_memx_options_memo_sbe_v1_7.fields.exec_ref_id, range, value, display)

  return offset + length, value
end

-- Trd Match Id
memx_options_memo_sbe_v1_7.trd_match_id = {}

-- Size: Trd Match Id
memx_options_memo_sbe_v1_7.trd_match_id.size = 8

-- Display: Trd Match Id
memx_options_memo_sbe_v1_7.trd_match_id.display = function(value)
  return "Trd Match Id: "..value
end

-- Dissect: Trd Match Id
memx_options_memo_sbe_v1_7.trd_match_id.dissect = function(buffer, offset, packet, parent)
  local length = memx_options_memo_sbe_v1_7.trd_match_id.size
  local range = buffer(offset, length)
  local value = range:uint64()
  local display = memx_options_memo_sbe_v1_7.trd_match_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_memx_options_memo_sbe_v1_7.fields.trd_match_id, range, value, display)

  return offset + length, value
end

-- Execution Report Trade Break Message
memx_options_memo_sbe_v1_7.execution_report_trade_break_message = {}

-- Calculate size of: Execution Report Trade Break Message
memx_options_memo_sbe_v1_7.execution_report_trade_break_message.size = function(buffer, offset)
  local index = 0

  index = index + memx_options_memo_sbe_v1_7.order_id.size

  index = index + memx_options_memo_sbe_v1_7.clordid.size

  index = index + memx_options_memo_sbe_v1_7.trd_match_id.size

  index = index + memx_options_memo_sbe_v1_7.exec_id.size

  index = index + memx_options_memo_sbe_v1_7.exec_ref_id.size

  index = index + memx_options_memo_sbe_v1_7.ord_status.size

  index = index + memx_options_memo_sbe_v1_7.security_id.size

  index = index + memx_options_memo_sbe_v1_7.leaves_qty.size

  index = index + memx_options_memo_sbe_v1_7.cum_qty.size

  index = index + memx_options_memo_sbe_v1_7.sending_time.size

  return index
end

-- Display: Execution Report Trade Break Message
memx_options_memo_sbe_v1_7.execution_report_trade_break_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Execution Report Trade Break Message
memx_options_memo_sbe_v1_7.execution_report_trade_break_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Order Id: 8 Byte Unsigned Fixed Width Integer
  index, order_id = memx_options_memo_sbe_v1_7.order_id.dissect(buffer, index, packet, parent)

  -- ClOrdId: 20 Byte Ascii String
  index, clordid = memx_options_memo_sbe_v1_7.clordid.dissect(buffer, index, packet, parent)

  -- Trd Match Id: 8 Byte Unsigned Fixed Width Integer
  index, trd_match_id = memx_options_memo_sbe_v1_7.trd_match_id.dissect(buffer, index, packet, parent)

  -- Exec Id: 8 Byte Unsigned Fixed Width Integer
  index, exec_id = memx_options_memo_sbe_v1_7.exec_id.dissect(buffer, index, packet, parent)

  -- Exec Ref Id: 8 Byte Unsigned Fixed Width Integer
  index, exec_ref_id = memx_options_memo_sbe_v1_7.exec_ref_id.dissect(buffer, index, packet, parent)

  -- Ord Status: 1 Byte Ascii String Enum with 8 values
  index, ord_status = memx_options_memo_sbe_v1_7.ord_status.dissect(buffer, index, packet, parent)

  -- Security Id: 8 Byte Ascii String
  index, security_id = memx_options_memo_sbe_v1_7.security_id.dissect(buffer, index, packet, parent)

  -- Leaves Qty: 4 Byte Unsigned Fixed Width Integer
  index, leaves_qty = memx_options_memo_sbe_v1_7.leaves_qty.dissect(buffer, index, packet, parent)

  -- Cum Qty: 4 Byte Unsigned Fixed Width Integer
  index, cum_qty = memx_options_memo_sbe_v1_7.cum_qty.dissect(buffer, index, packet, parent)

  -- Sending Time: 8 Byte Unsigned Fixed Width Integer
  index, sending_time = memx_options_memo_sbe_v1_7.sending_time.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Execution Report Trade Break Message
memx_options_memo_sbe_v1_7.execution_report_trade_break_message.dissect = function(buffer, offset, packet, parent)
  if show.execution_report_trade_break_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_memx_options_memo_sbe_v1_7.fields.execution_report_trade_break_message, buffer(offset, 0))
    local index = memx_options_memo_sbe_v1_7.execution_report_trade_break_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = memx_options_memo_sbe_v1_7.execution_report_trade_break_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return memx_options_memo_sbe_v1_7.execution_report_trade_break_message.fields(buffer, offset, packet, parent)
  end
end

-- Execution Report Trade Correction Message
memx_options_memo_sbe_v1_7.execution_report_trade_correction_message = {}

-- Calculate size of: Execution Report Trade Correction Message
memx_options_memo_sbe_v1_7.execution_report_trade_correction_message.size = function(buffer, offset)
  local index = 0

  index = index + memx_options_memo_sbe_v1_7.order_id.size

  index = index + memx_options_memo_sbe_v1_7.clordid.size

  index = index + memx_options_memo_sbe_v1_7.trd_match_id.size

  index = index + memx_options_memo_sbe_v1_7.exec_id.size

  index = index + memx_options_memo_sbe_v1_7.exec_ref_id.size

  index = index + memx_options_memo_sbe_v1_7.ord_status.size

  index = index + memx_options_memo_sbe_v1_7.security_id.size

  index = index + memx_options_memo_sbe_v1_7.last_qty.size

  index = index + memx_options_memo_sbe_v1_7.last_px.size

  index = index + memx_options_memo_sbe_v1_7.leaves_qty.size

  index = index + memx_options_memo_sbe_v1_7.cum_qty.size

  index = index + memx_options_memo_sbe_v1_7.sending_time.size

  return index
end

-- Display: Execution Report Trade Correction Message
memx_options_memo_sbe_v1_7.execution_report_trade_correction_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Execution Report Trade Correction Message
memx_options_memo_sbe_v1_7.execution_report_trade_correction_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Order Id: 8 Byte Unsigned Fixed Width Integer
  index, order_id = memx_options_memo_sbe_v1_7.order_id.dissect(buffer, index, packet, parent)

  -- ClOrdId: 20 Byte Ascii String
  index, clordid = memx_options_memo_sbe_v1_7.clordid.dissect(buffer, index, packet, parent)

  -- Trd Match Id: 8 Byte Unsigned Fixed Width Integer
  index, trd_match_id = memx_options_memo_sbe_v1_7.trd_match_id.dissect(buffer, index, packet, parent)

  -- Exec Id: 8 Byte Unsigned Fixed Width Integer
  index, exec_id = memx_options_memo_sbe_v1_7.exec_id.dissect(buffer, index, packet, parent)

  -- Exec Ref Id: 8 Byte Unsigned Fixed Width Integer
  index, exec_ref_id = memx_options_memo_sbe_v1_7.exec_ref_id.dissect(buffer, index, packet, parent)

  -- Ord Status: 1 Byte Ascii String Enum with 8 values
  index, ord_status = memx_options_memo_sbe_v1_7.ord_status.dissect(buffer, index, packet, parent)

  -- Security Id: 8 Byte Ascii String
  index, security_id = memx_options_memo_sbe_v1_7.security_id.dissect(buffer, index, packet, parent)

  -- Last Qty: 4 Byte Unsigned Fixed Width Integer
  index, last_qty = memx_options_memo_sbe_v1_7.last_qty.dissect(buffer, index, packet, parent)

  -- Last Px: 8 Byte Unsigned Fixed Width Integer
  index, last_px = memx_options_memo_sbe_v1_7.last_px.dissect(buffer, index, packet, parent)

  -- Leaves Qty: 4 Byte Unsigned Fixed Width Integer
  index, leaves_qty = memx_options_memo_sbe_v1_7.leaves_qty.dissect(buffer, index, packet, parent)

  -- Cum Qty: 4 Byte Unsigned Fixed Width Integer
  index, cum_qty = memx_options_memo_sbe_v1_7.cum_qty.dissect(buffer, index, packet, parent)

  -- Sending Time: 8 Byte Unsigned Fixed Width Integer
  index, sending_time = memx_options_memo_sbe_v1_7.sending_time.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Execution Report Trade Correction Message
memx_options_memo_sbe_v1_7.execution_report_trade_correction_message.dissect = function(buffer, offset, packet, parent)
  if show.execution_report_trade_correction_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_memx_options_memo_sbe_v1_7.fields.execution_report_trade_correction_message, buffer(offset, 0))
    local index = memx_options_memo_sbe_v1_7.execution_report_trade_correction_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = memx_options_memo_sbe_v1_7.execution_report_trade_correction_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return memx_options_memo_sbe_v1_7.execution_report_trade_correction_message.fields(buffer, offset, packet, parent)
  end
end

-- Orig List Seq No
memx_options_memo_sbe_v1_7.orig_list_seq_no = {}

-- Size: Orig List Seq No
memx_options_memo_sbe_v1_7.orig_list_seq_no.size = 1

-- Display: Orig List Seq No
memx_options_memo_sbe_v1_7.orig_list_seq_no.display = function(value)
  return "Orig List Seq No: "..value
end

-- Dissect: Orig List Seq No
memx_options_memo_sbe_v1_7.orig_list_seq_no.dissect = function(buffer, offset, packet, parent)
  local length = memx_options_memo_sbe_v1_7.orig_list_seq_no.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = memx_options_memo_sbe_v1_7.orig_list_seq_no.display(value, buffer, offset, packet, parent)

  parent:add(omi_memx_options_memo_sbe_v1_7.fields.orig_list_seq_no, range, value, display)

  return offset + length, value
end

-- Price Optional
memx_options_memo_sbe_v1_7.price_optional = {}

-- Size: Price Optional
memx_options_memo_sbe_v1_7.price_optional.size = 8

-- Display: Price Optional
memx_options_memo_sbe_v1_7.price_optional.display = function(raw, value)
  -- Check null sentinel value
  if raw == UInt64(0xFFFFFFFF, 0xFFFFFFFF) then
    return "Price Optional: No Value"
  end

  return "Price Optional: "..value
end

-- Translate: Price Optional
memx_options_memo_sbe_v1_7.price_optional.translate = function(raw)
  -- Check null sentinel value
  if raw == UInt64(0xFFFFFFFF, 0xFFFFFFFF) then
    return 0/0
  end

  return raw:tonumber()/100000000
end

-- Dissect: Price Optional
memx_options_memo_sbe_v1_7.price_optional.dissect = function(buffer, offset, packet, parent)
  local length = memx_options_memo_sbe_v1_7.price_optional.size
  local range = buffer(offset, length)
  local raw = range:uint64()
  local value = memx_options_memo_sbe_v1_7.price_optional.translate(raw)
  local display = memx_options_memo_sbe_v1_7.price_optional.display(raw, value, buffer, offset, packet, parent)

  parent:add(omi_memx_options_memo_sbe_v1_7.fields.price_optional, range, value, display)

  return offset + length, value
end

-- Ord Type
memx_options_memo_sbe_v1_7.ord_type = {}

-- Size: Ord Type
memx_options_memo_sbe_v1_7.ord_type.size = 1

-- Display: Ord Type
memx_options_memo_sbe_v1_7.ord_type.display = function(value)
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
memx_options_memo_sbe_v1_7.ord_type.dissect = function(buffer, offset, packet, parent)
  local length = memx_options_memo_sbe_v1_7.ord_type.size
  local range = buffer(offset, length)

  -- parse as byte
  local value = range:uint()

  -- check if value is non zero
  if value ~= 0 then
    value = range:string()
  end

  local display = memx_options_memo_sbe_v1_7.ord_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_memx_options_memo_sbe_v1_7.fields.ord_type, range, value, display)

  return offset + length, value
end

-- Order Qty
memx_options_memo_sbe_v1_7.order_qty = {}

-- Size: Order Qty
memx_options_memo_sbe_v1_7.order_qty.size = 4

-- Display: Order Qty
memx_options_memo_sbe_v1_7.order_qty.display = function(value)
  return "Order Qty: "..value
end

-- Dissect: Order Qty
memx_options_memo_sbe_v1_7.order_qty.dissect = function(buffer, offset, packet, parent)
  local length = memx_options_memo_sbe_v1_7.order_qty.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = memx_options_memo_sbe_v1_7.order_qty.display(value, buffer, offset, packet, parent)

  parent:add(omi_memx_options_memo_sbe_v1_7.fields.order_qty, range, value, display)

  return offset + length, value
end

-- OrigClOrdId
memx_options_memo_sbe_v1_7.origclordid = {}

-- Size: OrigClOrdId
memx_options_memo_sbe_v1_7.origclordid.size = 20

-- Display: OrigClOrdId
memx_options_memo_sbe_v1_7.origclordid.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "OrigClOrdId: No Value"
  end

  return "OrigClOrdId: "..value
end

-- Dissect: OrigClOrdId
memx_options_memo_sbe_v1_7.origclordid.dissect = function(buffer, offset, packet, parent)
  local length = memx_options_memo_sbe_v1_7.origclordid.size
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

  local display = memx_options_memo_sbe_v1_7.origclordid.display(value, buffer, offset, packet, parent)

  parent:add(omi_memx_options_memo_sbe_v1_7.fields.origclordid, range, value, display)

  return offset + length, value
end

-- Execution Report Replaced Message
memx_options_memo_sbe_v1_7.execution_report_replaced_message = {}

-- Calculate size of: Execution Report Replaced Message
memx_options_memo_sbe_v1_7.execution_report_replaced_message.size = function(buffer, offset)
  local index = 0

  index = index + memx_options_memo_sbe_v1_7.order_id.size

  index = index + memx_options_memo_sbe_v1_7.clordid.size

  index = index + memx_options_memo_sbe_v1_7.list_seq_no.size

  index = index + memx_options_memo_sbe_v1_7.origclordid.size

  index = index + memx_options_memo_sbe_v1_7.exec_id.size

  index = index + memx_options_memo_sbe_v1_7.ord_status.size

  index = index + memx_options_memo_sbe_v1_7.security_id.size

  index = index + memx_options_memo_sbe_v1_7.side.size

  index = index + memx_options_memo_sbe_v1_7.order_qty.size

  index = index + memx_options_memo_sbe_v1_7.ord_type.size

  index = index + memx_options_memo_sbe_v1_7.price_optional.size

  index = index + memx_options_memo_sbe_v1_7.leaves_qty.size

  index = index + memx_options_memo_sbe_v1_7.cum_qty.size

  index = index + memx_options_memo_sbe_v1_7.sending_time.size

  index = index + memx_options_memo_sbe_v1_7.transact_time.size

  index = index + memx_options_memo_sbe_v1_7.orig_list_seq_no.size

  return index
end

-- Display: Execution Report Replaced Message
memx_options_memo_sbe_v1_7.execution_report_replaced_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Execution Report Replaced Message
memx_options_memo_sbe_v1_7.execution_report_replaced_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Order Id: 8 Byte Unsigned Fixed Width Integer
  index, order_id = memx_options_memo_sbe_v1_7.order_id.dissect(buffer, index, packet, parent)

  -- ClOrdId: 20 Byte Ascii String
  index, clordid = memx_options_memo_sbe_v1_7.clordid.dissect(buffer, index, packet, parent)

  -- List Seq No: 1 Byte Unsigned Fixed Width Integer
  index, list_seq_no = memx_options_memo_sbe_v1_7.list_seq_no.dissect(buffer, index, packet, parent)

  -- OrigClOrdId: 20 Byte Ascii String
  index, origclordid = memx_options_memo_sbe_v1_7.origclordid.dissect(buffer, index, packet, parent)

  -- Exec Id: 8 Byte Unsigned Fixed Width Integer
  index, exec_id = memx_options_memo_sbe_v1_7.exec_id.dissect(buffer, index, packet, parent)

  -- Ord Status: 1 Byte Ascii String Enum with 8 values
  index, ord_status = memx_options_memo_sbe_v1_7.ord_status.dissect(buffer, index, packet, parent)

  -- Security Id: 8 Byte Ascii String
  index, security_id = memx_options_memo_sbe_v1_7.security_id.dissect(buffer, index, packet, parent)

  -- Side: 1 Byte Ascii String Enum with 3 values
  index, side = memx_options_memo_sbe_v1_7.side.dissect(buffer, index, packet, parent)

  -- Order Qty: 4 Byte Unsigned Fixed Width Integer
  index, order_qty = memx_options_memo_sbe_v1_7.order_qty.dissect(buffer, index, packet, parent)

  -- Ord Type: 1 Byte Ascii String Enum with 2 values
  index, ord_type = memx_options_memo_sbe_v1_7.ord_type.dissect(buffer, index, packet, parent)

  -- Price Optional: 8 Byte Unsigned Fixed Width Integer Nullable
  index, price_optional = memx_options_memo_sbe_v1_7.price_optional.dissect(buffer, index, packet, parent)

  -- Leaves Qty: 4 Byte Unsigned Fixed Width Integer
  index, leaves_qty = memx_options_memo_sbe_v1_7.leaves_qty.dissect(buffer, index, packet, parent)

  -- Cum Qty: 4 Byte Unsigned Fixed Width Integer
  index, cum_qty = memx_options_memo_sbe_v1_7.cum_qty.dissect(buffer, index, packet, parent)

  -- Sending Time: 8 Byte Unsigned Fixed Width Integer
  index, sending_time = memx_options_memo_sbe_v1_7.sending_time.dissect(buffer, index, packet, parent)

  -- Transact Time: 8 Byte Unsigned Fixed Width Integer
  index, transact_time = memx_options_memo_sbe_v1_7.transact_time.dissect(buffer, index, packet, parent)

  -- Orig List Seq No: 1 Byte Unsigned Fixed Width Integer
  index, orig_list_seq_no = memx_options_memo_sbe_v1_7.orig_list_seq_no.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Execution Report Replaced Message
memx_options_memo_sbe_v1_7.execution_report_replaced_message.dissect = function(buffer, offset, packet, parent)
  if show.execution_report_replaced_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_memx_options_memo_sbe_v1_7.fields.execution_report_replaced_message, buffer(offset, 0))
    local index = memx_options_memo_sbe_v1_7.execution_report_replaced_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = memx_options_memo_sbe_v1_7.execution_report_replaced_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return memx_options_memo_sbe_v1_7.execution_report_replaced_message.fields(buffer, offset, packet, parent)
  end
end

-- Execution Report Pending Replace Message
memx_options_memo_sbe_v1_7.execution_report_pending_replace_message = {}

-- Calculate size of: Execution Report Pending Replace Message
memx_options_memo_sbe_v1_7.execution_report_pending_replace_message.size = function(buffer, offset)
  local index = 0

  index = index + memx_options_memo_sbe_v1_7.order_id.size

  index = index + memx_options_memo_sbe_v1_7.clordid.size

  index = index + memx_options_memo_sbe_v1_7.list_seq_no.size

  index = index + memx_options_memo_sbe_v1_7.origclordid.size

  index = index + memx_options_memo_sbe_v1_7.exec_id.size

  index = index + memx_options_memo_sbe_v1_7.ord_status.size

  index = index + memx_options_memo_sbe_v1_7.security_id.size

  index = index + memx_options_memo_sbe_v1_7.side.size

  index = index + memx_options_memo_sbe_v1_7.order_qty.size

  index = index + memx_options_memo_sbe_v1_7.ord_type.size

  index = index + memx_options_memo_sbe_v1_7.price_optional.size

  index = index + memx_options_memo_sbe_v1_7.leaves_qty.size

  index = index + memx_options_memo_sbe_v1_7.cum_qty.size

  index = index + memx_options_memo_sbe_v1_7.sending_time.size

  return index
end

-- Display: Execution Report Pending Replace Message
memx_options_memo_sbe_v1_7.execution_report_pending_replace_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Execution Report Pending Replace Message
memx_options_memo_sbe_v1_7.execution_report_pending_replace_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Order Id: 8 Byte Unsigned Fixed Width Integer
  index, order_id = memx_options_memo_sbe_v1_7.order_id.dissect(buffer, index, packet, parent)

  -- ClOrdId: 20 Byte Ascii String
  index, clordid = memx_options_memo_sbe_v1_7.clordid.dissect(buffer, index, packet, parent)

  -- List Seq No: 1 Byte Unsigned Fixed Width Integer
  index, list_seq_no = memx_options_memo_sbe_v1_7.list_seq_no.dissect(buffer, index, packet, parent)

  -- OrigClOrdId: 20 Byte Ascii String
  index, origclordid = memx_options_memo_sbe_v1_7.origclordid.dissect(buffer, index, packet, parent)

  -- Exec Id: 8 Byte Unsigned Fixed Width Integer
  index, exec_id = memx_options_memo_sbe_v1_7.exec_id.dissect(buffer, index, packet, parent)

  -- Ord Status: 1 Byte Ascii String Enum with 8 values
  index, ord_status = memx_options_memo_sbe_v1_7.ord_status.dissect(buffer, index, packet, parent)

  -- Security Id: 8 Byte Ascii String
  index, security_id = memx_options_memo_sbe_v1_7.security_id.dissect(buffer, index, packet, parent)

  -- Side: 1 Byte Ascii String Enum with 3 values
  index, side = memx_options_memo_sbe_v1_7.side.dissect(buffer, index, packet, parent)

  -- Order Qty: 4 Byte Unsigned Fixed Width Integer
  index, order_qty = memx_options_memo_sbe_v1_7.order_qty.dissect(buffer, index, packet, parent)

  -- Ord Type: 1 Byte Ascii String Enum with 2 values
  index, ord_type = memx_options_memo_sbe_v1_7.ord_type.dissect(buffer, index, packet, parent)

  -- Price Optional: 8 Byte Unsigned Fixed Width Integer Nullable
  index, price_optional = memx_options_memo_sbe_v1_7.price_optional.dissect(buffer, index, packet, parent)

  -- Leaves Qty: 4 Byte Unsigned Fixed Width Integer
  index, leaves_qty = memx_options_memo_sbe_v1_7.leaves_qty.dissect(buffer, index, packet, parent)

  -- Cum Qty: 4 Byte Unsigned Fixed Width Integer
  index, cum_qty = memx_options_memo_sbe_v1_7.cum_qty.dissect(buffer, index, packet, parent)

  -- Sending Time: 8 Byte Unsigned Fixed Width Integer
  index, sending_time = memx_options_memo_sbe_v1_7.sending_time.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Execution Report Pending Replace Message
memx_options_memo_sbe_v1_7.execution_report_pending_replace_message.dissect = function(buffer, offset, packet, parent)
  if show.execution_report_pending_replace_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_memx_options_memo_sbe_v1_7.fields.execution_report_pending_replace_message, buffer(offset, 0))
    local index = memx_options_memo_sbe_v1_7.execution_report_pending_replace_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = memx_options_memo_sbe_v1_7.execution_report_pending_replace_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return memx_options_memo_sbe_v1_7.execution_report_pending_replace_message.fields(buffer, offset, packet, parent)
  end
end

-- Cancel Reason
memx_options_memo_sbe_v1_7.cancel_reason = {}

-- Size: Cancel Reason
memx_options_memo_sbe_v1_7.cancel_reason.size = 1

-- Display: Cancel Reason
memx_options_memo_sbe_v1_7.cancel_reason.display = function(value)
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
memx_options_memo_sbe_v1_7.cancel_reason.dissect = function(buffer, offset, packet, parent)
  local length = memx_options_memo_sbe_v1_7.cancel_reason.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = memx_options_memo_sbe_v1_7.cancel_reason.display(value, buffer, offset, packet, parent)

  parent:add(omi_memx_options_memo_sbe_v1_7.fields.cancel_reason, range, value, display)

  return offset + length, value
end

-- OrigClOrdId Optional
memx_options_memo_sbe_v1_7.origclordid_optional = {}

-- Size: OrigClOrdId Optional
memx_options_memo_sbe_v1_7.origclordid_optional.size = 20

-- Display: OrigClOrdId Optional
memx_options_memo_sbe_v1_7.origclordid_optional.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "OrigClOrdId Optional: No Value"
  end

  return "OrigClOrdId Optional: "..value
end

-- Dissect: OrigClOrdId Optional
memx_options_memo_sbe_v1_7.origclordid_optional.dissect = function(buffer, offset, packet, parent)
  local length = memx_options_memo_sbe_v1_7.origclordid_optional.size
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

  local display = memx_options_memo_sbe_v1_7.origclordid_optional.display(value, buffer, offset, packet, parent)

  parent:add(omi_memx_options_memo_sbe_v1_7.fields.origclordid_optional, range, value, display)

  return offset + length, value
end

-- Execution Report Canceled Message
memx_options_memo_sbe_v1_7.execution_report_canceled_message = {}

-- Calculate size of: Execution Report Canceled Message
memx_options_memo_sbe_v1_7.execution_report_canceled_message.size = function(buffer, offset)
  local index = 0

  index = index + memx_options_memo_sbe_v1_7.order_id.size

  index = index + memx_options_memo_sbe_v1_7.clordid.size

  index = index + memx_options_memo_sbe_v1_7.list_seq_no.size

  index = index + memx_options_memo_sbe_v1_7.origclordid_optional.size

  index = index + memx_options_memo_sbe_v1_7.exec_id.size

  index = index + memx_options_memo_sbe_v1_7.ord_status.size

  index = index + memx_options_memo_sbe_v1_7.cancel_reason.size

  index = index + memx_options_memo_sbe_v1_7.security_id.size

  index = index + memx_options_memo_sbe_v1_7.side_optional.size

  index = index + memx_options_memo_sbe_v1_7.leaves_qty.size

  index = index + memx_options_memo_sbe_v1_7.cum_qty.size

  index = index + memx_options_memo_sbe_v1_7.sending_time.size

  index = index + memx_options_memo_sbe_v1_7.transact_time.size

  index = index + memx_options_memo_sbe_v1_7.orig_list_seq_no.size

  return index
end

-- Display: Execution Report Canceled Message
memx_options_memo_sbe_v1_7.execution_report_canceled_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Execution Report Canceled Message
memx_options_memo_sbe_v1_7.execution_report_canceled_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Order Id: 8 Byte Unsigned Fixed Width Integer
  index, order_id = memx_options_memo_sbe_v1_7.order_id.dissect(buffer, index, packet, parent)

  -- ClOrdId: 20 Byte Ascii String
  index, clordid = memx_options_memo_sbe_v1_7.clordid.dissect(buffer, index, packet, parent)

  -- List Seq No: 1 Byte Unsigned Fixed Width Integer
  index, list_seq_no = memx_options_memo_sbe_v1_7.list_seq_no.dissect(buffer, index, packet, parent)

  -- OrigClOrdId Optional: 20 Byte Ascii String Nullable
  index, origclordid_optional = memx_options_memo_sbe_v1_7.origclordid_optional.dissect(buffer, index, packet, parent)

  -- Exec Id: 8 Byte Unsigned Fixed Width Integer
  index, exec_id = memx_options_memo_sbe_v1_7.exec_id.dissect(buffer, index, packet, parent)

  -- Ord Status: 1 Byte Ascii String Enum with 8 values
  index, ord_status = memx_options_memo_sbe_v1_7.ord_status.dissect(buffer, index, packet, parent)

  -- Cancel Reason: 1 Byte Unsigned Fixed Width Integer Enum with 34 values
  index, cancel_reason = memx_options_memo_sbe_v1_7.cancel_reason.dissect(buffer, index, packet, parent)

  -- Security Id: 8 Byte Ascii String
  index, security_id = memx_options_memo_sbe_v1_7.security_id.dissect(buffer, index, packet, parent)

  -- Side Optional: 1 Byte Ascii String Enum with 4 values
  index, side_optional = memx_options_memo_sbe_v1_7.side_optional.dissect(buffer, index, packet, parent)

  -- Leaves Qty: 4 Byte Unsigned Fixed Width Integer
  index, leaves_qty = memx_options_memo_sbe_v1_7.leaves_qty.dissect(buffer, index, packet, parent)

  -- Cum Qty: 4 Byte Unsigned Fixed Width Integer
  index, cum_qty = memx_options_memo_sbe_v1_7.cum_qty.dissect(buffer, index, packet, parent)

  -- Sending Time: 8 Byte Unsigned Fixed Width Integer
  index, sending_time = memx_options_memo_sbe_v1_7.sending_time.dissect(buffer, index, packet, parent)

  -- Transact Time: 8 Byte Unsigned Fixed Width Integer
  index, transact_time = memx_options_memo_sbe_v1_7.transact_time.dissect(buffer, index, packet, parent)

  -- Orig List Seq No: 1 Byte Unsigned Fixed Width Integer
  index, orig_list_seq_no = memx_options_memo_sbe_v1_7.orig_list_seq_no.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Execution Report Canceled Message
memx_options_memo_sbe_v1_7.execution_report_canceled_message.dissect = function(buffer, offset, packet, parent)
  if show.execution_report_canceled_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_memx_options_memo_sbe_v1_7.fields.execution_report_canceled_message, buffer(offset, 0))
    local index = memx_options_memo_sbe_v1_7.execution_report_canceled_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = memx_options_memo_sbe_v1_7.execution_report_canceled_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return memx_options_memo_sbe_v1_7.execution_report_canceled_message.fields(buffer, offset, packet, parent)
  end
end

-- Execution Report Pending Cancel Message
memx_options_memo_sbe_v1_7.execution_report_pending_cancel_message = {}

-- Calculate size of: Execution Report Pending Cancel Message
memx_options_memo_sbe_v1_7.execution_report_pending_cancel_message.size = function(buffer, offset)
  local index = 0

  index = index + memx_options_memo_sbe_v1_7.order_id.size

  index = index + memx_options_memo_sbe_v1_7.clordid.size

  index = index + memx_options_memo_sbe_v1_7.list_seq_no.size

  index = index + memx_options_memo_sbe_v1_7.origclordid.size

  index = index + memx_options_memo_sbe_v1_7.ord_status.size

  index = index + memx_options_memo_sbe_v1_7.security_id.size

  index = index + memx_options_memo_sbe_v1_7.side_optional.size

  index = index + memx_options_memo_sbe_v1_7.leaves_qty.size

  index = index + memx_options_memo_sbe_v1_7.cum_qty.size

  index = index + memx_options_memo_sbe_v1_7.sending_time.size

  return index
end

-- Display: Execution Report Pending Cancel Message
memx_options_memo_sbe_v1_7.execution_report_pending_cancel_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Execution Report Pending Cancel Message
memx_options_memo_sbe_v1_7.execution_report_pending_cancel_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Order Id: 8 Byte Unsigned Fixed Width Integer
  index, order_id = memx_options_memo_sbe_v1_7.order_id.dissect(buffer, index, packet, parent)

  -- ClOrdId: 20 Byte Ascii String
  index, clordid = memx_options_memo_sbe_v1_7.clordid.dissect(buffer, index, packet, parent)

  -- List Seq No: 1 Byte Unsigned Fixed Width Integer
  index, list_seq_no = memx_options_memo_sbe_v1_7.list_seq_no.dissect(buffer, index, packet, parent)

  -- OrigClOrdId: 20 Byte Ascii String
  index, origclordid = memx_options_memo_sbe_v1_7.origclordid.dissect(buffer, index, packet, parent)

  -- Ord Status: 1 Byte Ascii String Enum with 8 values
  index, ord_status = memx_options_memo_sbe_v1_7.ord_status.dissect(buffer, index, packet, parent)

  -- Security Id: 8 Byte Ascii String
  index, security_id = memx_options_memo_sbe_v1_7.security_id.dissect(buffer, index, packet, parent)

  -- Side Optional: 1 Byte Ascii String Enum with 4 values
  index, side_optional = memx_options_memo_sbe_v1_7.side_optional.dissect(buffer, index, packet, parent)

  -- Leaves Qty: 4 Byte Unsigned Fixed Width Integer
  index, leaves_qty = memx_options_memo_sbe_v1_7.leaves_qty.dissect(buffer, index, packet, parent)

  -- Cum Qty: 4 Byte Unsigned Fixed Width Integer
  index, cum_qty = memx_options_memo_sbe_v1_7.cum_qty.dissect(buffer, index, packet, parent)

  -- Sending Time: 8 Byte Unsigned Fixed Width Integer
  index, sending_time = memx_options_memo_sbe_v1_7.sending_time.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Execution Report Pending Cancel Message
memx_options_memo_sbe_v1_7.execution_report_pending_cancel_message.dissect = function(buffer, offset, packet, parent)
  if show.execution_report_pending_cancel_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_memx_options_memo_sbe_v1_7.fields.execution_report_pending_cancel_message, buffer(offset, 0))
    local index = memx_options_memo_sbe_v1_7.execution_report_pending_cancel_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = memx_options_memo_sbe_v1_7.execution_report_pending_cancel_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return memx_options_memo_sbe_v1_7.execution_report_pending_cancel_message.fields(buffer, offset, packet, parent)
  end
end

-- Party Role
memx_options_memo_sbe_v1_7.party_role = {}

-- Size: Party Role
memx_options_memo_sbe_v1_7.party_role.size = 1

-- Display: Party Role
memx_options_memo_sbe_v1_7.party_role.display = function(value)
  if value == 1 then
    return "Party Role: Executing Firm Id (1)"
  end
  if value == 3 then
    return "Party Role: Actionable Identifier (3)"
  end
  if value == 14 then
    return "Party Role: Give Up Clearing Firm (14)"
  end
  if value == 17 then
    return "Party Role: Contra Efid (17)"
  end
  if value == 18 then
    return "Party Role: Contra Give Up (18)"
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
memx_options_memo_sbe_v1_7.party_role.dissect = function(buffer, offset, packet, parent)
  local length = memx_options_memo_sbe_v1_7.party_role.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = memx_options_memo_sbe_v1_7.party_role.display(value, buffer, offset, packet, parent)

  parent:add(omi_memx_options_memo_sbe_v1_7.fields.party_role, range, value, display)

  return offset + length, value
end

-- Party Id Source
memx_options_memo_sbe_v1_7.party_id_source = {}

-- Size: Party Id Source
memx_options_memo_sbe_v1_7.party_id_source.size = 1

-- Display: Party Id Source
memx_options_memo_sbe_v1_7.party_id_source.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Party Id Source: No Value"
  end

  return "Party Id Source: "..value
end

-- Dissect: Party Id Source
memx_options_memo_sbe_v1_7.party_id_source.dissect = function(buffer, offset, packet, parent)
  local length = memx_options_memo_sbe_v1_7.party_id_source.size
  local range = buffer(offset, length)

  -- parse as byte
  local value = range:uint()

  -- check if value is non zero
  if value ~= 0 then
    value = range:string()
  end

  local display = memx_options_memo_sbe_v1_7.party_id_source.display(value, buffer, offset, packet, parent)

  parent:add(omi_memx_options_memo_sbe_v1_7.fields.party_id_source, range, value, display)

  return offset + length, value
end

-- Party Id
memx_options_memo_sbe_v1_7.party_id = {}

-- Size: Party Id
memx_options_memo_sbe_v1_7.party_id.size = 16

-- Display: Party Id
memx_options_memo_sbe_v1_7.party_id.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Party Id: No Value"
  end

  return "Party Id: "..value
end

-- Dissect: Party Id
memx_options_memo_sbe_v1_7.party_id.dissect = function(buffer, offset, packet, parent)
  local length = memx_options_memo_sbe_v1_7.party_id.size
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

  local display = memx_options_memo_sbe_v1_7.party_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_memx_options_memo_sbe_v1_7.fields.party_id, range, value, display)

  return offset + length, value
end

-- Parties Group
memx_options_memo_sbe_v1_7.parties_group = {}

-- Calculate size of: Parties Group
memx_options_memo_sbe_v1_7.parties_group.size = function(buffer, offset)
  local index = 0

  index = index + memx_options_memo_sbe_v1_7.party_id.size

  index = index + memx_options_memo_sbe_v1_7.party_id_source.size

  index = index + memx_options_memo_sbe_v1_7.party_role.size

  return index
end

-- Display: Parties Group
memx_options_memo_sbe_v1_7.parties_group.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Parties Group
memx_options_memo_sbe_v1_7.parties_group.fields = function(buffer, offset, packet, parent, parties_group_index)
  local index = offset

  -- Implicit Parties Group Index
  if parties_group_index ~= nil then
    local iteration = parent:add(omi_memx_options_memo_sbe_v1_7.fields.parties_group_index, parties_group_index)
    iteration:set_generated()
  end

  -- Party Id: 16 Byte Ascii String
  index, party_id = memx_options_memo_sbe_v1_7.party_id.dissect(buffer, index, packet, parent)

  -- Party Id Source: 1 Byte Ascii String
  index, party_id_source = memx_options_memo_sbe_v1_7.party_id_source.dissect(buffer, index, packet, parent)

  -- Party Role: 1 Byte Unsigned Fixed Width Integer Enum with 10 values
  index, party_role = memx_options_memo_sbe_v1_7.party_role.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Parties Group
memx_options_memo_sbe_v1_7.parties_group.dissect = function(buffer, offset, packet, parent, parties_group_index)
  if show.parties_group then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_memx_options_memo_sbe_v1_7.fields.parties_group, buffer(offset, 0))
    local index = memx_options_memo_sbe_v1_7.parties_group.fields(buffer, offset, packet, parent, parties_group_index)
    local length = index - offset
    parent:set_len(length)
    local display = memx_options_memo_sbe_v1_7.parties_group.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return memx_options_memo_sbe_v1_7.parties_group.fields(buffer, offset, packet, parent, parties_group_index)
  end
end

-- Parties Groups
memx_options_memo_sbe_v1_7.parties_groups = {}

-- Calculate size of: Parties Groups
memx_options_memo_sbe_v1_7.parties_groups.size = function(buffer, offset)
  local index = 0

  index = index + memx_options_memo_sbe_v1_7.repeating_group_dimensions.size(buffer, offset + index)

  -- Calculate field size from count
  local parties_group_count = buffer(offset + index - 1, 1):uint()
  index = index + parties_group_count * 18

  return index
end

-- Display: Parties Groups
memx_options_memo_sbe_v1_7.parties_groups.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Parties Groups
memx_options_memo_sbe_v1_7.parties_groups.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Repeating Group Dimensions: Struct of 2 fields
  index, repeating_group_dimensions = memx_options_memo_sbe_v1_7.repeating_group_dimensions.dissect(buffer, index, packet, parent)

  -- Dependency element: Num In Group
  local num_in_group = buffer(index - 1, 1):uint()

  -- Repeating: Parties Group
  for parties_group_index = 1, num_in_group do
    index, parties_group = memx_options_memo_sbe_v1_7.parties_group.dissect(buffer, index, packet, parent, parties_group_index)
  end

  return index
end

-- Dissect: Parties Groups
memx_options_memo_sbe_v1_7.parties_groups.dissect = function(buffer, offset, packet, parent)
  -- Optionally add dynamic struct element to protocol tree
  if show.parties_groups then
    local length = memx_options_memo_sbe_v1_7.parties_groups.size(buffer, offset)
    local range = buffer(offset, length)
    local display = memx_options_memo_sbe_v1_7.parties_groups.display(buffer, packet, parent)
    parent = parent:add(omi_memx_options_memo_sbe_v1_7.fields.parties_groups, range, display)
  end

  return memx_options_memo_sbe_v1_7.parties_groups.fields(buffer, offset, packet, parent)
end

-- Contra Trading Capacity
memx_options_memo_sbe_v1_7.contra_trading_capacity = {}

-- Size: Contra Trading Capacity
memx_options_memo_sbe_v1_7.contra_trading_capacity.size = 1

-- Display: Contra Trading Capacity
memx_options_memo_sbe_v1_7.contra_trading_capacity.display = function(value)
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

  return "Contra Trading Capacity: Unknown("..value..")"
end

-- Dissect: Contra Trading Capacity
memx_options_memo_sbe_v1_7.contra_trading_capacity.dissect = function(buffer, offset, packet, parent)
  local length = memx_options_memo_sbe_v1_7.contra_trading_capacity.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = memx_options_memo_sbe_v1_7.contra_trading_capacity.display(value, buffer, offset, packet, parent)

  parent:add(omi_memx_options_memo_sbe_v1_7.fields.contra_trading_capacity, range, value, display)

  return offset + length, value
end

-- Trading Capacity
memx_options_memo_sbe_v1_7.trading_capacity = {}

-- Size: Trading Capacity
memx_options_memo_sbe_v1_7.trading_capacity.size = 1

-- Display: Trading Capacity
memx_options_memo_sbe_v1_7.trading_capacity.display = function(value)
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
memx_options_memo_sbe_v1_7.trading_capacity.dissect = function(buffer, offset, packet, parent)
  local length = memx_options_memo_sbe_v1_7.trading_capacity.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = memx_options_memo_sbe_v1_7.trading_capacity.display(value, buffer, offset, packet, parent)

  parent:add(omi_memx_options_memo_sbe_v1_7.fields.trading_capacity, range, value, display)

  return offset + length, value
end

-- Position Effect
memx_options_memo_sbe_v1_7.position_effect = {}

-- Size: Position Effect
memx_options_memo_sbe_v1_7.position_effect.size = 1

-- Display: Position Effect
memx_options_memo_sbe_v1_7.position_effect.display = function(value)
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
memx_options_memo_sbe_v1_7.position_effect.dissect = function(buffer, offset, packet, parent)
  local length = memx_options_memo_sbe_v1_7.position_effect.size
  local range = buffer(offset, length)

  -- parse as byte
  local value = range:uint()

  -- check if value is non zero
  if value ~= 0 then
    value = range:string()
  end

  local display = memx_options_memo_sbe_v1_7.position_effect.display(value, buffer, offset, packet, parent)

  parent:add(omi_memx_options_memo_sbe_v1_7.fields.position_effect, range, value, display)

  return offset + length, value
end

-- Last Mkt
memx_options_memo_sbe_v1_7.last_mkt = {}

-- Size: Last Mkt
memx_options_memo_sbe_v1_7.last_mkt.size = 4

-- Display: Last Mkt
memx_options_memo_sbe_v1_7.last_mkt.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Last Mkt: No Value"
  end

  return "Last Mkt: "..value
end

-- Dissect: Last Mkt
memx_options_memo_sbe_v1_7.last_mkt.dissect = function(buffer, offset, packet, parent)
  local length = memx_options_memo_sbe_v1_7.last_mkt.size
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

  local display = memx_options_memo_sbe_v1_7.last_mkt.display(value, buffer, offset, packet, parent)

  parent:add(omi_memx_options_memo_sbe_v1_7.fields.last_mkt, range, value, display)

  return offset + length, value
end

-- Last Liquidity Ind
memx_options_memo_sbe_v1_7.last_liquidity_ind = {}

-- Size: Last Liquidity Ind
memx_options_memo_sbe_v1_7.last_liquidity_ind.size = 1

-- Display: Last Liquidity Ind
memx_options_memo_sbe_v1_7.last_liquidity_ind.display = function(value)
  if value == 1 then
    return "Last Liquidity Ind: Added (1)"
  end
  if value == 2 then
    return "Last Liquidity Ind: Removed (2)"
  end
  if value == 255 then
    return "Last Liquidity Ind: Null Value (255)"
  end

  return "Last Liquidity Ind: Unknown("..value..")"
end

-- Dissect: Last Liquidity Ind
memx_options_memo_sbe_v1_7.last_liquidity_ind.dissect = function(buffer, offset, packet, parent)
  local length = memx_options_memo_sbe_v1_7.last_liquidity_ind.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = memx_options_memo_sbe_v1_7.last_liquidity_ind.display(value, buffer, offset, packet, parent)

  parent:add(omi_memx_options_memo_sbe_v1_7.fields.last_liquidity_ind, range, value, display)

  return offset + length, value
end

-- Execution Report Trade Message
memx_options_memo_sbe_v1_7.execution_report_trade_message = {}

-- Calculate size of: Execution Report Trade Message
memx_options_memo_sbe_v1_7.execution_report_trade_message.size = function(buffer, offset)
  local index = 0

  index = index + memx_options_memo_sbe_v1_7.order_id.size

  index = index + memx_options_memo_sbe_v1_7.clordid.size

  index = index + memx_options_memo_sbe_v1_7.list_seq_no.size

  index = index + memx_options_memo_sbe_v1_7.trd_match_id.size

  index = index + memx_options_memo_sbe_v1_7.exec_id.size

  index = index + memx_options_memo_sbe_v1_7.ord_status.size

  index = index + memx_options_memo_sbe_v1_7.security_id.size

  index = index + memx_options_memo_sbe_v1_7.side.size

  index = index + memx_options_memo_sbe_v1_7.last_qty.size

  index = index + memx_options_memo_sbe_v1_7.last_px.size

  index = index + memx_options_memo_sbe_v1_7.leaves_qty.size

  index = index + memx_options_memo_sbe_v1_7.cum_qty.size

  index = index + memx_options_memo_sbe_v1_7.sending_time.size

  index = index + memx_options_memo_sbe_v1_7.transact_time.size

  index = index + memx_options_memo_sbe_v1_7.last_liquidity_ind.size

  index = index + memx_options_memo_sbe_v1_7.last_mkt.size

  index = index + memx_options_memo_sbe_v1_7.position_effect.size

  index = index + memx_options_memo_sbe_v1_7.trading_capacity.size

  index = index + memx_options_memo_sbe_v1_7.contra_trading_capacity.size

  index = index + memx_options_memo_sbe_v1_7.parties_groups.size(buffer, offset + index)

  return index
end

-- Display: Execution Report Trade Message
memx_options_memo_sbe_v1_7.execution_report_trade_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Execution Report Trade Message
memx_options_memo_sbe_v1_7.execution_report_trade_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Order Id: 8 Byte Unsigned Fixed Width Integer
  index, order_id = memx_options_memo_sbe_v1_7.order_id.dissect(buffer, index, packet, parent)

  -- ClOrdId: 20 Byte Ascii String
  index, clordid = memx_options_memo_sbe_v1_7.clordid.dissect(buffer, index, packet, parent)

  -- List Seq No: 1 Byte Unsigned Fixed Width Integer
  index, list_seq_no = memx_options_memo_sbe_v1_7.list_seq_no.dissect(buffer, index, packet, parent)

  -- Trd Match Id: 8 Byte Unsigned Fixed Width Integer
  index, trd_match_id = memx_options_memo_sbe_v1_7.trd_match_id.dissect(buffer, index, packet, parent)

  -- Exec Id: 8 Byte Unsigned Fixed Width Integer
  index, exec_id = memx_options_memo_sbe_v1_7.exec_id.dissect(buffer, index, packet, parent)

  -- Ord Status: 1 Byte Ascii String Enum with 8 values
  index, ord_status = memx_options_memo_sbe_v1_7.ord_status.dissect(buffer, index, packet, parent)

  -- Security Id: 8 Byte Ascii String
  index, security_id = memx_options_memo_sbe_v1_7.security_id.dissect(buffer, index, packet, parent)

  -- Side: 1 Byte Ascii String Enum with 3 values
  index, side = memx_options_memo_sbe_v1_7.side.dissect(buffer, index, packet, parent)

  -- Last Qty: 4 Byte Unsigned Fixed Width Integer
  index, last_qty = memx_options_memo_sbe_v1_7.last_qty.dissect(buffer, index, packet, parent)

  -- Last Px: 8 Byte Unsigned Fixed Width Integer
  index, last_px = memx_options_memo_sbe_v1_7.last_px.dissect(buffer, index, packet, parent)

  -- Leaves Qty: 4 Byte Unsigned Fixed Width Integer
  index, leaves_qty = memx_options_memo_sbe_v1_7.leaves_qty.dissect(buffer, index, packet, parent)

  -- Cum Qty: 4 Byte Unsigned Fixed Width Integer
  index, cum_qty = memx_options_memo_sbe_v1_7.cum_qty.dissect(buffer, index, packet, parent)

  -- Sending Time: 8 Byte Unsigned Fixed Width Integer
  index, sending_time = memx_options_memo_sbe_v1_7.sending_time.dissect(buffer, index, packet, parent)

  -- Transact Time: 8 Byte Unsigned Fixed Width Integer
  index, transact_time = memx_options_memo_sbe_v1_7.transact_time.dissect(buffer, index, packet, parent)

  -- Last Liquidity Ind: 1 Byte Unsigned Fixed Width Integer Enum with 3 values
  index, last_liquidity_ind = memx_options_memo_sbe_v1_7.last_liquidity_ind.dissect(buffer, index, packet, parent)

  -- Last Mkt: 4 Byte Ascii String
  index, last_mkt = memx_options_memo_sbe_v1_7.last_mkt.dissect(buffer, index, packet, parent)

  -- Position Effect: 1 Byte Ascii String Enum with 2 values
  index, position_effect = memx_options_memo_sbe_v1_7.position_effect.dissect(buffer, index, packet, parent)

  -- Trading Capacity: 1 Byte Unsigned Fixed Width Integer Enum with 8 values
  index, trading_capacity = memx_options_memo_sbe_v1_7.trading_capacity.dissect(buffer, index, packet, parent)

  -- Contra Trading Capacity: 1 Byte Unsigned Fixed Width Integer Enum with 8 values
  index, contra_trading_capacity = memx_options_memo_sbe_v1_7.contra_trading_capacity.dissect(buffer, index, packet, parent)

  -- Parties Groups: Struct of 2 fields
  index, parties_groups = memx_options_memo_sbe_v1_7.parties_groups.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Execution Report Trade Message
memx_options_memo_sbe_v1_7.execution_report_trade_message.dissect = function(buffer, offset, packet, parent)
  -- Optionally add dynamic struct element to protocol tree
  if show.execution_report_trade_message then
    local length = memx_options_memo_sbe_v1_7.execution_report_trade_message.size(buffer, offset)
    local range = buffer(offset, length)
    local display = memx_options_memo_sbe_v1_7.execution_report_trade_message.display(buffer, packet, parent)
    parent = parent:add(omi_memx_options_memo_sbe_v1_7.fields.execution_report_trade_message, range, display)
  end

  return memx_options_memo_sbe_v1_7.execution_report_trade_message.fields(buffer, offset, packet, parent)
end

-- Order Reject Reason
memx_options_memo_sbe_v1_7.order_reject_reason = {}

-- Size: Order Reject Reason
memx_options_memo_sbe_v1_7.order_reject_reason.size = 2

-- Display: Order Reject Reason
memx_options_memo_sbe_v1_7.order_reject_reason.display = function(value)
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
  if value == 65535 then
    return "Order Reject Reason: Null Value (65535)"
  end

  return "Order Reject Reason: Unknown("..value..")"
end

-- Dissect: Order Reject Reason
memx_options_memo_sbe_v1_7.order_reject_reason.dissect = function(buffer, offset, packet, parent)
  local length = memx_options_memo_sbe_v1_7.order_reject_reason.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = memx_options_memo_sbe_v1_7.order_reject_reason.display(value, buffer, offset, packet, parent)

  parent:add(omi_memx_options_memo_sbe_v1_7.fields.order_reject_reason, range, value, display)

  return offset + length, value
end

-- Execution Report Rejected Message
memx_options_memo_sbe_v1_7.execution_report_rejected_message = {}

-- Calculate size of: Execution Report Rejected Message
memx_options_memo_sbe_v1_7.execution_report_rejected_message.size = function(buffer, offset)
  local index = 0

  index = index + memx_options_memo_sbe_v1_7.clordid.size

  index = index + memx_options_memo_sbe_v1_7.list_seq_no.size

  index = index + memx_options_memo_sbe_v1_7.exec_id.size

  index = index + memx_options_memo_sbe_v1_7.ord_status.size

  index = index + memx_options_memo_sbe_v1_7.order_reject_reason.size

  index = index + memx_options_memo_sbe_v1_7.security_id.size

  index = index + memx_options_memo_sbe_v1_7.side.size

  index = index + memx_options_memo_sbe_v1_7.leaves_qty.size

  index = index + memx_options_memo_sbe_v1_7.cum_qty.size

  index = index + memx_options_memo_sbe_v1_7.sending_time.size

  return index
end

-- Display: Execution Report Rejected Message
memx_options_memo_sbe_v1_7.execution_report_rejected_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Execution Report Rejected Message
memx_options_memo_sbe_v1_7.execution_report_rejected_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- ClOrdId: 20 Byte Ascii String
  index, clordid = memx_options_memo_sbe_v1_7.clordid.dissect(buffer, index, packet, parent)

  -- List Seq No: 1 Byte Unsigned Fixed Width Integer
  index, list_seq_no = memx_options_memo_sbe_v1_7.list_seq_no.dissect(buffer, index, packet, parent)

  -- Exec Id: 8 Byte Unsigned Fixed Width Integer
  index, exec_id = memx_options_memo_sbe_v1_7.exec_id.dissect(buffer, index, packet, parent)

  -- Ord Status: 1 Byte Ascii String Enum with 8 values
  index, ord_status = memx_options_memo_sbe_v1_7.ord_status.dissect(buffer, index, packet, parent)

  -- Order Reject Reason: 2 Byte Unsigned Fixed Width Integer Enum with 104 values
  index, order_reject_reason = memx_options_memo_sbe_v1_7.order_reject_reason.dissect(buffer, index, packet, parent)

  -- Security Id: 8 Byte Ascii String
  index, security_id = memx_options_memo_sbe_v1_7.security_id.dissect(buffer, index, packet, parent)

  -- Side: 1 Byte Ascii String Enum with 3 values
  index, side = memx_options_memo_sbe_v1_7.side.dissect(buffer, index, packet, parent)

  -- Leaves Qty: 4 Byte Unsigned Fixed Width Integer
  index, leaves_qty = memx_options_memo_sbe_v1_7.leaves_qty.dissect(buffer, index, packet, parent)

  -- Cum Qty: 4 Byte Unsigned Fixed Width Integer
  index, cum_qty = memx_options_memo_sbe_v1_7.cum_qty.dissect(buffer, index, packet, parent)

  -- Sending Time: 8 Byte Unsigned Fixed Width Integer
  index, sending_time = memx_options_memo_sbe_v1_7.sending_time.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Execution Report Rejected Message
memx_options_memo_sbe_v1_7.execution_report_rejected_message.dissect = function(buffer, offset, packet, parent)
  if show.execution_report_rejected_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_memx_options_memo_sbe_v1_7.fields.execution_report_rejected_message, buffer(offset, 0))
    local index = memx_options_memo_sbe_v1_7.execution_report_rejected_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = memx_options_memo_sbe_v1_7.execution_report_rejected_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return memx_options_memo_sbe_v1_7.execution_report_rejected_message.fields(buffer, offset, packet, parent)
  end
end

-- Execution Report Bulk Quote Component New Message
memx_options_memo_sbe_v1_7.execution_report_bulk_quote_component_new_message = {}

-- Calculate size of: Execution Report Bulk Quote Component New Message
memx_options_memo_sbe_v1_7.execution_report_bulk_quote_component_new_message.size = function(buffer, offset)
  local index = 0

  index = index + memx_options_memo_sbe_v1_7.order_id.size

  index = index + memx_options_memo_sbe_v1_7.clordid.size

  index = index + memx_options_memo_sbe_v1_7.list_seq_no.size

  index = index + memx_options_memo_sbe_v1_7.exec_id.size

  index = index + memx_options_memo_sbe_v1_7.ord_status.size

  index = index + memx_options_memo_sbe_v1_7.security_id.size

  index = index + memx_options_memo_sbe_v1_7.side.size

  index = index + memx_options_memo_sbe_v1_7.order_qty.size

  index = index + memx_options_memo_sbe_v1_7.price_optional.size

  index = index + memx_options_memo_sbe_v1_7.leaves_qty.size

  index = index + memx_options_memo_sbe_v1_7.cum_qty.size

  index = index + memx_options_memo_sbe_v1_7.sending_time.size

  index = index + memx_options_memo_sbe_v1_7.transact_time.size

  return index
end

-- Display: Execution Report Bulk Quote Component New Message
memx_options_memo_sbe_v1_7.execution_report_bulk_quote_component_new_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Execution Report Bulk Quote Component New Message
memx_options_memo_sbe_v1_7.execution_report_bulk_quote_component_new_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Order Id: 8 Byte Unsigned Fixed Width Integer
  index, order_id = memx_options_memo_sbe_v1_7.order_id.dissect(buffer, index, packet, parent)

  -- ClOrdId: 20 Byte Ascii String
  index, clordid = memx_options_memo_sbe_v1_7.clordid.dissect(buffer, index, packet, parent)

  -- List Seq No: 1 Byte Unsigned Fixed Width Integer
  index, list_seq_no = memx_options_memo_sbe_v1_7.list_seq_no.dissect(buffer, index, packet, parent)

  -- Exec Id: 8 Byte Unsigned Fixed Width Integer
  index, exec_id = memx_options_memo_sbe_v1_7.exec_id.dissect(buffer, index, packet, parent)

  -- Ord Status: 1 Byte Ascii String Enum with 8 values
  index, ord_status = memx_options_memo_sbe_v1_7.ord_status.dissect(buffer, index, packet, parent)

  -- Security Id: 8 Byte Ascii String
  index, security_id = memx_options_memo_sbe_v1_7.security_id.dissect(buffer, index, packet, parent)

  -- Side: 1 Byte Ascii String Enum with 3 values
  index, side = memx_options_memo_sbe_v1_7.side.dissect(buffer, index, packet, parent)

  -- Order Qty: 4 Byte Unsigned Fixed Width Integer
  index, order_qty = memx_options_memo_sbe_v1_7.order_qty.dissect(buffer, index, packet, parent)

  -- Price Optional: 8 Byte Unsigned Fixed Width Integer Nullable
  index, price_optional = memx_options_memo_sbe_v1_7.price_optional.dissect(buffer, index, packet, parent)

  -- Leaves Qty: 4 Byte Unsigned Fixed Width Integer
  index, leaves_qty = memx_options_memo_sbe_v1_7.leaves_qty.dissect(buffer, index, packet, parent)

  -- Cum Qty: 4 Byte Unsigned Fixed Width Integer
  index, cum_qty = memx_options_memo_sbe_v1_7.cum_qty.dissect(buffer, index, packet, parent)

  -- Sending Time: 8 Byte Unsigned Fixed Width Integer
  index, sending_time = memx_options_memo_sbe_v1_7.sending_time.dissect(buffer, index, packet, parent)

  -- Transact Time: 8 Byte Unsigned Fixed Width Integer
  index, transact_time = memx_options_memo_sbe_v1_7.transact_time.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Execution Report Bulk Quote Component New Message
memx_options_memo_sbe_v1_7.execution_report_bulk_quote_component_new_message.dissect = function(buffer, offset, packet, parent)
  if show.execution_report_bulk_quote_component_new_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_memx_options_memo_sbe_v1_7.fields.execution_report_bulk_quote_component_new_message, buffer(offset, 0))
    local index = memx_options_memo_sbe_v1_7.execution_report_bulk_quote_component_new_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = memx_options_memo_sbe_v1_7.execution_report_bulk_quote_component_new_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return memx_options_memo_sbe_v1_7.execution_report_bulk_quote_component_new_message.fields(buffer, offset, packet, parent)
  end
end

-- Number Of Orders
memx_options_memo_sbe_v1_7.number_of_orders = {}

-- Size: Number Of Orders
memx_options_memo_sbe_v1_7.number_of_orders.size = 1

-- Display: Number Of Orders
memx_options_memo_sbe_v1_7.number_of_orders.display = function(value)
  return "Number Of Orders: "..value
end

-- Dissect: Number Of Orders
memx_options_memo_sbe_v1_7.number_of_orders.dissect = function(buffer, offset, packet, parent)
  local length = memx_options_memo_sbe_v1_7.number_of_orders.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = memx_options_memo_sbe_v1_7.number_of_orders.display(value, buffer, offset, packet, parent)

  parent:add(omi_memx_options_memo_sbe_v1_7.fields.number_of_orders, range, value, display)

  return offset + length, value
end

-- Risk Group Id
memx_options_memo_sbe_v1_7.risk_group_id = {}

-- Size: Risk Group Id
memx_options_memo_sbe_v1_7.risk_group_id.size = 2

-- Display: Risk Group Id
memx_options_memo_sbe_v1_7.risk_group_id.display = function(value)
  -- Check if field has value
  if value == 65535 then
    return "Risk Group Id: No Value"
  end

  return "Risk Group Id: "..value
end

-- Dissect: Risk Group Id
memx_options_memo_sbe_v1_7.risk_group_id.dissect = function(buffer, offset, packet, parent)
  local length = memx_options_memo_sbe_v1_7.risk_group_id.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = memx_options_memo_sbe_v1_7.risk_group_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_memx_options_memo_sbe_v1_7.fields.risk_group_id, range, value, display)

  return offset + length, value
end

-- Match Trade Prevention
memx_options_memo_sbe_v1_7.match_trade_prevention = {}

-- Size: Match Trade Prevention
memx_options_memo_sbe_v1_7.match_trade_prevention.size = 1

-- Display: Match Trade Prevention
memx_options_memo_sbe_v1_7.match_trade_prevention.display = function(value)
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
memx_options_memo_sbe_v1_7.match_trade_prevention.dissect = function(buffer, offset, packet, parent)
  local length = memx_options_memo_sbe_v1_7.match_trade_prevention.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = memx_options_memo_sbe_v1_7.match_trade_prevention.display(value, buffer, offset, packet, parent)

  parent:add(omi_memx_options_memo_sbe_v1_7.fields.match_trade_prevention, range, value, display)

  return offset + length, value
end

-- Mtp Group Id
memx_options_memo_sbe_v1_7.mtp_group_id = {}

-- Size: Mtp Group Id
memx_options_memo_sbe_v1_7.mtp_group_id.size = 2

-- Display: Mtp Group Id
memx_options_memo_sbe_v1_7.mtp_group_id.display = function(value)
  -- Check if field has value
  if value == 65535 then
    return "Mtp Group Id: No Value"
  end

  return "Mtp Group Id: "..value
end

-- Dissect: Mtp Group Id
memx_options_memo_sbe_v1_7.mtp_group_id.dissect = function(buffer, offset, packet, parent)
  local length = memx_options_memo_sbe_v1_7.mtp_group_id.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = memx_options_memo_sbe_v1_7.mtp_group_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_memx_options_memo_sbe_v1_7.fields.mtp_group_id, range, value, display)

  return offset + length, value
end

-- Participate Do Not Initiate
memx_options_memo_sbe_v1_7.participate_do_not_initiate = {}

-- Intermarket Sweep
memx_options_memo_sbe_v1_7.intermarket_sweep = {}

-- External Routing Not Allowed
memx_options_memo_sbe_v1_7.external_routing_not_allowed = {}

-- Reserved 13
memx_options_memo_sbe_v1_7.reserved_13 = {}

-- Exec Inst
memx_options_memo_sbe_v1_7.exec_inst = {}

-- Size: Exec Inst
memx_options_memo_sbe_v1_7.exec_inst.size = 2

-- Display: Exec Inst
memx_options_memo_sbe_v1_7.exec_inst.display = function(buffer, packet, parent)
  local display = ""

  -- Is External Routing Not Allowed flag set?
  if buffer:bitfield(13) > 0 then
    display = display.."External Routing Not Allowed|"
  end
  -- Is Intermarket Sweep flag set?
  if buffer:bitfield(14) > 0 then
    display = display.."Intermarket Sweep|"
  end
  -- Is Participate Do Not Initiate flag set?
  if buffer:bitfield(15) > 0 then
    display = display.."Participate Do Not Initiate|"
  end

  return display:sub(1, -2)
end

-- Dissect Bit Fields: Exec Inst
memx_options_memo_sbe_v1_7.exec_inst.bits = function(buffer, offset, packet, parent)

  -- Reserved 13: 13 Bit
  parent:add(omi_memx_options_memo_sbe_v1_7.fields.reserved_13, buffer(offset, 2))

  -- External Routing Not Allowed: 1 Bit
  parent:add(omi_memx_options_memo_sbe_v1_7.fields.external_routing_not_allowed, buffer(offset, 2))

  -- Intermarket Sweep: 1 Bit
  parent:add(omi_memx_options_memo_sbe_v1_7.fields.intermarket_sweep, buffer(offset, 2))

  -- Participate Do Not Initiate: 1 Bit
  parent:add(omi_memx_options_memo_sbe_v1_7.fields.participate_do_not_initiate, buffer(offset, 2))
end

-- Dissect: Exec Inst
memx_options_memo_sbe_v1_7.exec_inst.dissect = function(buffer, offset, packet, parent)
  local size = 2
  local range = buffer(offset, size)
  local display = memx_options_memo_sbe_v1_7.exec_inst.display(range, packet, parent)
  local element = parent:add(omi_memx_options_memo_sbe_v1_7.fields.exec_inst, range, display)

  if show.exec_inst then
    memx_options_memo_sbe_v1_7.exec_inst.bits(buffer, offset, packet, element)
  end

  return offset + 2, range
end

-- Time In Force
memx_options_memo_sbe_v1_7.time_in_force = {}

-- Size: Time In Force
memx_options_memo_sbe_v1_7.time_in_force.size = 1

-- Display: Time In Force
memx_options_memo_sbe_v1_7.time_in_force.display = function(value)
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
memx_options_memo_sbe_v1_7.time_in_force.dissect = function(buffer, offset, packet, parent)
  local length = memx_options_memo_sbe_v1_7.time_in_force.size
  local range = buffer(offset, length)

  -- parse as byte
  local value = range:uint()

  -- check if value is non zero
  if value ~= 0 then
    value = range:string()
  end

  local display = memx_options_memo_sbe_v1_7.time_in_force.display(value, buffer, offset, packet, parent)

  parent:add(omi_memx_options_memo_sbe_v1_7.fields.time_in_force, range, value, display)

  return offset + length, value
end

-- Symbol
memx_options_memo_sbe_v1_7.symbol = {}

-- Size: Symbol
memx_options_memo_sbe_v1_7.symbol.size = 6

-- Display: Symbol
memx_options_memo_sbe_v1_7.symbol.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Symbol: No Value"
  end

  return "Symbol: "..value
end

-- Dissect: Symbol
memx_options_memo_sbe_v1_7.symbol.dissect = function(buffer, offset, packet, parent)
  local length = memx_options_memo_sbe_v1_7.symbol.size
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

  local display = memx_options_memo_sbe_v1_7.symbol.display(value, buffer, offset, packet, parent)

  parent:add(omi_memx_options_memo_sbe_v1_7.fields.symbol, range, value, display)

  return offset + length, value
end

-- Execution Report Bulk Quote Pending New Message
memx_options_memo_sbe_v1_7.execution_report_bulk_quote_pending_new_message = {}

-- Calculate size of: Execution Report Bulk Quote Pending New Message
memx_options_memo_sbe_v1_7.execution_report_bulk_quote_pending_new_message.size = function(buffer, offset)
  local index = 0

  index = index + memx_options_memo_sbe_v1_7.clordid.size

  index = index + memx_options_memo_sbe_v1_7.symbol.size

  index = index + memx_options_memo_sbe_v1_7.time_in_force.size

  index = index + memx_options_memo_sbe_v1_7.exec_inst.size

  index = index + memx_options_memo_sbe_v1_7.trading_capacity.size

  index = index + memx_options_memo_sbe_v1_7.sending_time.size

  index = index + memx_options_memo_sbe_v1_7.transact_time.size

  index = index + memx_options_memo_sbe_v1_7.mtp_group_id.size

  index = index + memx_options_memo_sbe_v1_7.match_trade_prevention.size

  index = index + memx_options_memo_sbe_v1_7.cancel_group_id.size

  index = index + memx_options_memo_sbe_v1_7.risk_group_id.size

  index = index + memx_options_memo_sbe_v1_7.number_of_orders.size

  index = index + memx_options_memo_sbe_v1_7.parties_groups.size(buffer, offset + index)

  return index
end

-- Display: Execution Report Bulk Quote Pending New Message
memx_options_memo_sbe_v1_7.execution_report_bulk_quote_pending_new_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Execution Report Bulk Quote Pending New Message
memx_options_memo_sbe_v1_7.execution_report_bulk_quote_pending_new_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- ClOrdId: 20 Byte Ascii String
  index, clordid = memx_options_memo_sbe_v1_7.clordid.dissect(buffer, index, packet, parent)

  -- Symbol: 6 Byte Ascii String
  index, symbol = memx_options_memo_sbe_v1_7.symbol.dissect(buffer, index, packet, parent)

  -- Time In Force: 1 Byte Ascii String Enum with 2 values
  index, time_in_force = memx_options_memo_sbe_v1_7.time_in_force.dissect(buffer, index, packet, parent)

  -- Exec Inst: Struct of 4 fields
  index, exec_inst = memx_options_memo_sbe_v1_7.exec_inst.dissect(buffer, index, packet, parent)

  -- Trading Capacity: 1 Byte Unsigned Fixed Width Integer Enum with 8 values
  index, trading_capacity = memx_options_memo_sbe_v1_7.trading_capacity.dissect(buffer, index, packet, parent)

  -- Sending Time: 8 Byte Unsigned Fixed Width Integer
  index, sending_time = memx_options_memo_sbe_v1_7.sending_time.dissect(buffer, index, packet, parent)

  -- Transact Time: 8 Byte Unsigned Fixed Width Integer
  index, transact_time = memx_options_memo_sbe_v1_7.transact_time.dissect(buffer, index, packet, parent)

  -- Mtp Group Id: 2 Byte Unsigned Fixed Width Integer Nullable
  index, mtp_group_id = memx_options_memo_sbe_v1_7.mtp_group_id.dissect(buffer, index, packet, parent)

  -- Match Trade Prevention: 1 Byte Unsigned Fixed Width Integer Enum with 5 values
  index, match_trade_prevention = memx_options_memo_sbe_v1_7.match_trade_prevention.dissect(buffer, index, packet, parent)

  -- Cancel Group Id: 2 Byte Unsigned Fixed Width Integer Nullable
  index, cancel_group_id = memx_options_memo_sbe_v1_7.cancel_group_id.dissect(buffer, index, packet, parent)

  -- Risk Group Id: 2 Byte Unsigned Fixed Width Integer Nullable
  index, risk_group_id = memx_options_memo_sbe_v1_7.risk_group_id.dissect(buffer, index, packet, parent)

  -- Number Of Orders: 1 Byte Unsigned Fixed Width Integer
  index, number_of_orders = memx_options_memo_sbe_v1_7.number_of_orders.dissect(buffer, index, packet, parent)

  -- Parties Groups: Struct of 2 fields
  index, parties_groups = memx_options_memo_sbe_v1_7.parties_groups.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Execution Report Bulk Quote Pending New Message
memx_options_memo_sbe_v1_7.execution_report_bulk_quote_pending_new_message.dissect = function(buffer, offset, packet, parent)
  -- Optionally add dynamic struct element to protocol tree
  if show.execution_report_bulk_quote_pending_new_message then
    local length = memx_options_memo_sbe_v1_7.execution_report_bulk_quote_pending_new_message.size(buffer, offset)
    local range = buffer(offset, length)
    local display = memx_options_memo_sbe_v1_7.execution_report_bulk_quote_pending_new_message.display(buffer, packet, parent)
    parent = parent:add(omi_memx_options_memo_sbe_v1_7.fields.execution_report_bulk_quote_pending_new_message, range, display)
  end

  return memx_options_memo_sbe_v1_7.execution_report_bulk_quote_pending_new_message.fields(buffer, offset, packet, parent)
end

-- Reprice Behavior
memx_options_memo_sbe_v1_7.reprice_behavior = {}

-- Size: Reprice Behavior
memx_options_memo_sbe_v1_7.reprice_behavior.size = 1

-- Display: Reprice Behavior
memx_options_memo_sbe_v1_7.reprice_behavior.display = function(value)
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
memx_options_memo_sbe_v1_7.reprice_behavior.dissect = function(buffer, offset, packet, parent)
  local length = memx_options_memo_sbe_v1_7.reprice_behavior.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = memx_options_memo_sbe_v1_7.reprice_behavior.display(value, buffer, offset, packet, parent)

  parent:add(omi_memx_options_memo_sbe_v1_7.fields.reprice_behavior, range, value, display)

  return offset + length, value
end

-- Reprice Frequency
memx_options_memo_sbe_v1_7.reprice_frequency = {}

-- Size: Reprice Frequency
memx_options_memo_sbe_v1_7.reprice_frequency.size = 1

-- Display: Reprice Frequency
memx_options_memo_sbe_v1_7.reprice_frequency.display = function(value)
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
memx_options_memo_sbe_v1_7.reprice_frequency.dissect = function(buffer, offset, packet, parent)
  local length = memx_options_memo_sbe_v1_7.reprice_frequency.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = memx_options_memo_sbe_v1_7.reprice_frequency.display(value, buffer, offset, packet, parent)

  parent:add(omi_memx_options_memo_sbe_v1_7.fields.reprice_frequency, range, value, display)

  return offset + length, value
end

-- Position Effect Optional
memx_options_memo_sbe_v1_7.position_effect_optional = {}

-- Size: Position Effect Optional
memx_options_memo_sbe_v1_7.position_effect_optional.size = 1

-- Display: Position Effect Optional
memx_options_memo_sbe_v1_7.position_effect_optional.display = function(value)
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
memx_options_memo_sbe_v1_7.position_effect_optional.dissect = function(buffer, offset, packet, parent)
  local length = memx_options_memo_sbe_v1_7.position_effect_optional.size
  local range = buffer(offset, length)

  -- parse as byte
  local value = range:uint()

  -- check if value is non zero
  if value ~= 0 then
    value = range:string()
  end

  local display = memx_options_memo_sbe_v1_7.position_effect_optional.display(value, buffer, offset, packet, parent)

  parent:add(omi_memx_options_memo_sbe_v1_7.fields.position_effect_optional, range, value, display)

  return offset + length, value
end

-- Execution Report New Message
memx_options_memo_sbe_v1_7.execution_report_new_message = {}

-- Calculate size of: Execution Report New Message
memx_options_memo_sbe_v1_7.execution_report_new_message.size = function(buffer, offset)
  local index = 0

  index = index + memx_options_memo_sbe_v1_7.order_id.size

  index = index + memx_options_memo_sbe_v1_7.clordid.size

  index = index + memx_options_memo_sbe_v1_7.list_seq_no.size

  index = index + memx_options_memo_sbe_v1_7.exec_id.size

  index = index + memx_options_memo_sbe_v1_7.ord_status.size

  index = index + memx_options_memo_sbe_v1_7.security_id.size

  index = index + memx_options_memo_sbe_v1_7.side.size

  index = index + memx_options_memo_sbe_v1_7.order_qty.size

  index = index + memx_options_memo_sbe_v1_7.ord_type.size

  index = index + memx_options_memo_sbe_v1_7.price_optional.size

  index = index + memx_options_memo_sbe_v1_7.time_in_force.size

  index = index + memx_options_memo_sbe_v1_7.position_effect_optional.size

  index = index + memx_options_memo_sbe_v1_7.exec_inst.size

  index = index + memx_options_memo_sbe_v1_7.trading_capacity.size

  index = index + memx_options_memo_sbe_v1_7.reprice_frequency.size

  index = index + memx_options_memo_sbe_v1_7.reprice_behavior.size

  index = index + memx_options_memo_sbe_v1_7.leaves_qty.size

  index = index + memx_options_memo_sbe_v1_7.cum_qty.size

  index = index + memx_options_memo_sbe_v1_7.sending_time.size

  index = index + memx_options_memo_sbe_v1_7.transact_time.size

  index = index + memx_options_memo_sbe_v1_7.mtp_group_id.size

  index = index + memx_options_memo_sbe_v1_7.match_trade_prevention.size

  index = index + memx_options_memo_sbe_v1_7.cancel_group_id.size

  index = index + memx_options_memo_sbe_v1_7.risk_group_id.size

  index = index + memx_options_memo_sbe_v1_7.parties_groups.size(buffer, offset + index)

  return index
end

-- Display: Execution Report New Message
memx_options_memo_sbe_v1_7.execution_report_new_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Execution Report New Message
memx_options_memo_sbe_v1_7.execution_report_new_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Order Id: 8 Byte Unsigned Fixed Width Integer
  index, order_id = memx_options_memo_sbe_v1_7.order_id.dissect(buffer, index, packet, parent)

  -- ClOrdId: 20 Byte Ascii String
  index, clordid = memx_options_memo_sbe_v1_7.clordid.dissect(buffer, index, packet, parent)

  -- List Seq No: 1 Byte Unsigned Fixed Width Integer
  index, list_seq_no = memx_options_memo_sbe_v1_7.list_seq_no.dissect(buffer, index, packet, parent)

  -- Exec Id: 8 Byte Unsigned Fixed Width Integer
  index, exec_id = memx_options_memo_sbe_v1_7.exec_id.dissect(buffer, index, packet, parent)

  -- Ord Status: 1 Byte Ascii String Enum with 8 values
  index, ord_status = memx_options_memo_sbe_v1_7.ord_status.dissect(buffer, index, packet, parent)

  -- Security Id: 8 Byte Ascii String
  index, security_id = memx_options_memo_sbe_v1_7.security_id.dissect(buffer, index, packet, parent)

  -- Side: 1 Byte Ascii String Enum with 3 values
  index, side = memx_options_memo_sbe_v1_7.side.dissect(buffer, index, packet, parent)

  -- Order Qty: 4 Byte Unsigned Fixed Width Integer
  index, order_qty = memx_options_memo_sbe_v1_7.order_qty.dissect(buffer, index, packet, parent)

  -- Ord Type: 1 Byte Ascii String Enum with 2 values
  index, ord_type = memx_options_memo_sbe_v1_7.ord_type.dissect(buffer, index, packet, parent)

  -- Price Optional: 8 Byte Unsigned Fixed Width Integer Nullable
  index, price_optional = memx_options_memo_sbe_v1_7.price_optional.dissect(buffer, index, packet, parent)

  -- Time In Force: 1 Byte Ascii String Enum with 2 values
  index, time_in_force = memx_options_memo_sbe_v1_7.time_in_force.dissect(buffer, index, packet, parent)

  -- Position Effect Optional: 1 Byte Ascii String Enum with 3 values
  index, position_effect_optional = memx_options_memo_sbe_v1_7.position_effect_optional.dissect(buffer, index, packet, parent)

  -- Exec Inst: Struct of 4 fields
  index, exec_inst = memx_options_memo_sbe_v1_7.exec_inst.dissect(buffer, index, packet, parent)

  -- Trading Capacity: 1 Byte Unsigned Fixed Width Integer Enum with 8 values
  index, trading_capacity = memx_options_memo_sbe_v1_7.trading_capacity.dissect(buffer, index, packet, parent)

  -- Reprice Frequency: 1 Byte Unsigned Fixed Width Integer Enum with 5 values
  index, reprice_frequency = memx_options_memo_sbe_v1_7.reprice_frequency.dissect(buffer, index, packet, parent)

  -- Reprice Behavior: 1 Byte Unsigned Fixed Width Integer Enum with 4 values
  index, reprice_behavior = memx_options_memo_sbe_v1_7.reprice_behavior.dissect(buffer, index, packet, parent)

  -- Leaves Qty: 4 Byte Unsigned Fixed Width Integer
  index, leaves_qty = memx_options_memo_sbe_v1_7.leaves_qty.dissect(buffer, index, packet, parent)

  -- Cum Qty: 4 Byte Unsigned Fixed Width Integer
  index, cum_qty = memx_options_memo_sbe_v1_7.cum_qty.dissect(buffer, index, packet, parent)

  -- Sending Time: 8 Byte Unsigned Fixed Width Integer
  index, sending_time = memx_options_memo_sbe_v1_7.sending_time.dissect(buffer, index, packet, parent)

  -- Transact Time: 8 Byte Unsigned Fixed Width Integer
  index, transact_time = memx_options_memo_sbe_v1_7.transact_time.dissect(buffer, index, packet, parent)

  -- Mtp Group Id: 2 Byte Unsigned Fixed Width Integer Nullable
  index, mtp_group_id = memx_options_memo_sbe_v1_7.mtp_group_id.dissect(buffer, index, packet, parent)

  -- Match Trade Prevention: 1 Byte Unsigned Fixed Width Integer Enum with 5 values
  index, match_trade_prevention = memx_options_memo_sbe_v1_7.match_trade_prevention.dissect(buffer, index, packet, parent)

  -- Cancel Group Id: 2 Byte Unsigned Fixed Width Integer Nullable
  index, cancel_group_id = memx_options_memo_sbe_v1_7.cancel_group_id.dissect(buffer, index, packet, parent)

  -- Risk Group Id: 2 Byte Unsigned Fixed Width Integer Nullable
  index, risk_group_id = memx_options_memo_sbe_v1_7.risk_group_id.dissect(buffer, index, packet, parent)

  -- Parties Groups: Struct of 2 fields
  index, parties_groups = memx_options_memo_sbe_v1_7.parties_groups.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Execution Report New Message
memx_options_memo_sbe_v1_7.execution_report_new_message.dissect = function(buffer, offset, packet, parent)
  -- Optionally add dynamic struct element to protocol tree
  if show.execution_report_new_message then
    local length = memx_options_memo_sbe_v1_7.execution_report_new_message.size(buffer, offset)
    local range = buffer(offset, length)
    local display = memx_options_memo_sbe_v1_7.execution_report_new_message.display(buffer, packet, parent)
    parent = parent:add(omi_memx_options_memo_sbe_v1_7.fields.execution_report_new_message, range, display)
  end

  return memx_options_memo_sbe_v1_7.execution_report_new_message.fields(buffer, offset, packet, parent)
end

-- Requested Allocations Group
memx_options_memo_sbe_v1_7.requested_allocations_group = {}

-- Calculate size of: Requested Allocations Group
memx_options_memo_sbe_v1_7.requested_allocations_group.size = function(buffer, offset)
  local index = 0

  index = index + memx_options_memo_sbe_v1_7.alloc_qty.size

  index = index + memx_options_memo_sbe_v1_7.alloc_position_effect.size

  return index
end

-- Display: Requested Allocations Group
memx_options_memo_sbe_v1_7.requested_allocations_group.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Requested Allocations Group
memx_options_memo_sbe_v1_7.requested_allocations_group.fields = function(buffer, offset, packet, parent, requested_allocations_group_index)
  local index = offset

  -- Implicit Requested Allocations Group Index
  if requested_allocations_group_index ~= nil then
    local iteration = parent:add(omi_memx_options_memo_sbe_v1_7.fields.requested_allocations_group_index, requested_allocations_group_index)
    iteration:set_generated()
  end

  -- Alloc Qty: 4 Byte Unsigned Fixed Width Integer
  index, alloc_qty = memx_options_memo_sbe_v1_7.alloc_qty.dissect(buffer, index, packet, parent)

  -- Alloc Position Effect: 1 Byte Ascii String Enum with 2 values
  index, alloc_position_effect = memx_options_memo_sbe_v1_7.alloc_position_effect.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Requested Allocations Group
memx_options_memo_sbe_v1_7.requested_allocations_group.dissect = function(buffer, offset, packet, parent, requested_allocations_group_index)
  if show.requested_allocations_group then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_memx_options_memo_sbe_v1_7.fields.requested_allocations_group, buffer(offset, 0))
    local index = memx_options_memo_sbe_v1_7.requested_allocations_group.fields(buffer, offset, packet, parent, requested_allocations_group_index)
    local length = index - offset
    parent:set_len(length)
    local display = memx_options_memo_sbe_v1_7.requested_allocations_group.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return memx_options_memo_sbe_v1_7.requested_allocations_group.fields(buffer, offset, packet, parent, requested_allocations_group_index)
  end
end

-- Requested Allocations Groups
memx_options_memo_sbe_v1_7.requested_allocations_groups = {}

-- Calculate size of: Requested Allocations Groups
memx_options_memo_sbe_v1_7.requested_allocations_groups.size = function(buffer, offset)
  local index = 0

  index = index + memx_options_memo_sbe_v1_7.repeating_group_dimensions.size(buffer, offset + index)

  -- Calculate field size from count
  local requested_allocations_group_count = buffer(offset + index - 1, 1):uint()
  index = index + requested_allocations_group_count * 5

  return index
end

-- Display: Requested Allocations Groups
memx_options_memo_sbe_v1_7.requested_allocations_groups.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Requested Allocations Groups
memx_options_memo_sbe_v1_7.requested_allocations_groups.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Repeating Group Dimensions: Struct of 2 fields
  index, repeating_group_dimensions = memx_options_memo_sbe_v1_7.repeating_group_dimensions.dissect(buffer, index, packet, parent)

  -- Dependency element: Num In Group
  local num_in_group = buffer(index - 1, 1):uint()

  -- Repeating: Requested Allocations Group
  for requested_allocations_group_index = 1, num_in_group do
    index, requested_allocations_group = memx_options_memo_sbe_v1_7.requested_allocations_group.dissect(buffer, index, packet, parent, requested_allocations_group_index)
  end

  return index
end

-- Dissect: Requested Allocations Groups
memx_options_memo_sbe_v1_7.requested_allocations_groups.dissect = function(buffer, offset, packet, parent)
  -- Optionally add dynamic struct element to protocol tree
  if show.requested_allocations_groups then
    local length = memx_options_memo_sbe_v1_7.requested_allocations_groups.size(buffer, offset)
    local range = buffer(offset, length)
    local display = memx_options_memo_sbe_v1_7.requested_allocations_groups.display(buffer, packet, parent)
    parent = parent:add(omi_memx_options_memo_sbe_v1_7.fields.requested_allocations_groups, range, display)
  end

  return memx_options_memo_sbe_v1_7.requested_allocations_groups.fields(buffer, offset, packet, parent)
end

-- Allocation Instruction Message
memx_options_memo_sbe_v1_7.allocation_instruction_message = {}

-- Calculate size of: Allocation Instruction Message
memx_options_memo_sbe_v1_7.allocation_instruction_message.size = function(buffer, offset)
  local index = 0

  index = index + memx_options_memo_sbe_v1_7.sending_time.size

  index = index + memx_options_memo_sbe_v1_7.alloc_id.size

  index = index + memx_options_memo_sbe_v1_7.alloc_type.size

  index = index + memx_options_memo_sbe_v1_7.alloc_trans_type.size

  index = index + memx_options_memo_sbe_v1_7.ref_alloc_id_optional.size

  index = index + memx_options_memo_sbe_v1_7.security_id.size

  index = index + memx_options_memo_sbe_v1_7.side.size

  index = index + memx_options_memo_sbe_v1_7.execution_allocations_groups.size(buffer, offset + index)

  index = index + memx_options_memo_sbe_v1_7.requested_allocations_groups.size(buffer, offset + index)

  return index
end

-- Display: Allocation Instruction Message
memx_options_memo_sbe_v1_7.allocation_instruction_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Allocation Instruction Message
memx_options_memo_sbe_v1_7.allocation_instruction_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Sending Time: 8 Byte Unsigned Fixed Width Integer
  index, sending_time = memx_options_memo_sbe_v1_7.sending_time.dissect(buffer, index, packet, parent)

  -- Alloc Id: 20 Byte Ascii String
  index, alloc_id = memx_options_memo_sbe_v1_7.alloc_id.dissect(buffer, index, packet, parent)

  -- Alloc Type: 1 Byte Unsigned Fixed Width Integer Enum with 2 values
  index, alloc_type = memx_options_memo_sbe_v1_7.alloc_type.dissect(buffer, index, packet, parent)

  -- Alloc Trans Type: 1 Byte Unsigned Fixed Width Integer Enum with 4 values
  index, alloc_trans_type = memx_options_memo_sbe_v1_7.alloc_trans_type.dissect(buffer, index, packet, parent)

  -- Ref Alloc Id Optional: 20 Byte Ascii String Nullable
  index, ref_alloc_id_optional = memx_options_memo_sbe_v1_7.ref_alloc_id_optional.dissect(buffer, index, packet, parent)

  -- Security Id: 8 Byte Ascii String
  index, security_id = memx_options_memo_sbe_v1_7.security_id.dissect(buffer, index, packet, parent)

  -- Side: 1 Byte Ascii String Enum with 3 values
  index, side = memx_options_memo_sbe_v1_7.side.dissect(buffer, index, packet, parent)

  -- Execution Allocations Groups: Struct of 2 fields
  index, execution_allocations_groups = memx_options_memo_sbe_v1_7.execution_allocations_groups.dissect(buffer, index, packet, parent)

  -- Requested Allocations Groups: Struct of 2 fields
  index, requested_allocations_groups = memx_options_memo_sbe_v1_7.requested_allocations_groups.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Allocation Instruction Message
memx_options_memo_sbe_v1_7.allocation_instruction_message.dissect = function(buffer, offset, packet, parent)
  -- Optionally add dynamic struct element to protocol tree
  if show.allocation_instruction_message then
    local length = memx_options_memo_sbe_v1_7.allocation_instruction_message.size(buffer, offset)
    local range = buffer(offset, length)
    local display = memx_options_memo_sbe_v1_7.allocation_instruction_message.display(buffer, packet, parent)
    parent = parent:add(omi_memx_options_memo_sbe_v1_7.fields.allocation_instruction_message, range, display)
  end

  return memx_options_memo_sbe_v1_7.allocation_instruction_message.fields(buffer, offset, packet, parent)
end

-- Underlier Mass Cancel Bulk Clear Lockouts By Efid Or Underlier Request Underlier optional
memx_options_memo_sbe_v1_7.underlier_mass_cancel_bulk_clear_lockouts_by_efid_or_underlier_request_underlier_optional = {}

-- Size: Underlier Mass Cancel Bulk Clear Lockouts By Efid Or Underlier Request Underlier optional
memx_options_memo_sbe_v1_7.underlier_mass_cancel_bulk_clear_lockouts_by_efid_or_underlier_request_underlier_optional.size = 6

-- Display: Underlier Mass Cancel Bulk Clear Lockouts By Efid Or Underlier Request Underlier optional
memx_options_memo_sbe_v1_7.underlier_mass_cancel_bulk_clear_lockouts_by_efid_or_underlier_request_underlier_optional.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Underlier Mass Cancel Bulk Clear Lockouts By Efid Or Underlier Request Underlier optional: No Value"
  end

  return "Underlier Mass Cancel Bulk Clear Lockouts By Efid Or Underlier Request Underlier optional: "..value
end

-- Dissect: Underlier Mass Cancel Bulk Clear Lockouts By Efid Or Underlier Request Underlier optional
memx_options_memo_sbe_v1_7.underlier_mass_cancel_bulk_clear_lockouts_by_efid_or_underlier_request_underlier_optional.dissect = function(buffer, offset, packet, parent)
  local length = memx_options_memo_sbe_v1_7.underlier_mass_cancel_bulk_clear_lockouts_by_efid_or_underlier_request_underlier_optional.size
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

  local display = memx_options_memo_sbe_v1_7.underlier_mass_cancel_bulk_clear_lockouts_by_efid_or_underlier_request_underlier_optional.display(value, buffer, offset, packet, parent)

  parent:add(omi_memx_options_memo_sbe_v1_7.fields.underlier_mass_cancel_bulk_clear_lockouts_by_efid_or_underlier_request_underlier_optional, range, value, display)

  return offset + length, value
end

-- Efi D Mass Cancel Bulk Clear Lockouts By Efid Or Underlier Request Efi D optional
memx_options_memo_sbe_v1_7.efi_d_mass_cancel_bulk_clear_lockouts_by_efid_or_underlier_request_efi_d_optional = {}

-- Size: Efi D Mass Cancel Bulk Clear Lockouts By Efid Or Underlier Request Efi D optional
memx_options_memo_sbe_v1_7.efi_d_mass_cancel_bulk_clear_lockouts_by_efid_or_underlier_request_efi_d_optional.size = 4

-- Display: Efi D Mass Cancel Bulk Clear Lockouts By Efid Or Underlier Request Efi D optional
memx_options_memo_sbe_v1_7.efi_d_mass_cancel_bulk_clear_lockouts_by_efid_or_underlier_request_efi_d_optional.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Efi D Mass Cancel Bulk Clear Lockouts By Efid Or Underlier Request Efi D optional: No Value"
  end

  return "Efi D Mass Cancel Bulk Clear Lockouts By Efid Or Underlier Request Efi D optional: "..value
end

-- Dissect: Efi D Mass Cancel Bulk Clear Lockouts By Efid Or Underlier Request Efi D optional
memx_options_memo_sbe_v1_7.efi_d_mass_cancel_bulk_clear_lockouts_by_efid_or_underlier_request_efi_d_optional.dissect = function(buffer, offset, packet, parent)
  local length = memx_options_memo_sbe_v1_7.efi_d_mass_cancel_bulk_clear_lockouts_by_efid_or_underlier_request_efi_d_optional.size
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

  local display = memx_options_memo_sbe_v1_7.efi_d_mass_cancel_bulk_clear_lockouts_by_efid_or_underlier_request_efi_d_optional.display(value, buffer, offset, packet, parent)

  parent:add(omi_memx_options_memo_sbe_v1_7.fields.efi_d_mass_cancel_bulk_clear_lockouts_by_efid_or_underlier_request_efi_d_optional, range, value, display)

  return offset + length, value
end

-- Cl Ord I D Mass Cancel Bulk Clear Lockouts By Efid Or Underlier Request Cl Ord Id
memx_options_memo_sbe_v1_7.cl_ord_i_d_mass_cancel_bulk_clear_lockouts_by_efid_or_underlier_request_cl_ord_id = {}

-- Size: Cl Ord I D Mass Cancel Bulk Clear Lockouts By Efid Or Underlier Request Cl Ord Id
memx_options_memo_sbe_v1_7.cl_ord_i_d_mass_cancel_bulk_clear_lockouts_by_efid_or_underlier_request_cl_ord_id.size = 20

-- Display: Cl Ord I D Mass Cancel Bulk Clear Lockouts By Efid Or Underlier Request Cl Ord Id
memx_options_memo_sbe_v1_7.cl_ord_i_d_mass_cancel_bulk_clear_lockouts_by_efid_or_underlier_request_cl_ord_id.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Cl Ord I D Mass Cancel Bulk Clear Lockouts By Efid Or Underlier Request Cl Ord Id: No Value"
  end

  return "Cl Ord I D Mass Cancel Bulk Clear Lockouts By Efid Or Underlier Request Cl Ord Id: "..value
end

-- Dissect: Cl Ord I D Mass Cancel Bulk Clear Lockouts By Efid Or Underlier Request Cl Ord Id
memx_options_memo_sbe_v1_7.cl_ord_i_d_mass_cancel_bulk_clear_lockouts_by_efid_or_underlier_request_cl_ord_id.dissect = function(buffer, offset, packet, parent)
  local length = memx_options_memo_sbe_v1_7.cl_ord_i_d_mass_cancel_bulk_clear_lockouts_by_efid_or_underlier_request_cl_ord_id.size
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

  local display = memx_options_memo_sbe_v1_7.cl_ord_i_d_mass_cancel_bulk_clear_lockouts_by_efid_or_underlier_request_cl_ord_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_memx_options_memo_sbe_v1_7.fields.cl_ord_i_d_mass_cancel_bulk_clear_lockouts_by_efid_or_underlier_request_cl_ord_id, range, value, display)

  return offset + length, value
end

-- Mass Cancel Bulk Clear Lockouts By Efid Or Underlier Request Message
memx_options_memo_sbe_v1_7.mass_cancel_bulk_clear_lockouts_by_efid_or_underlier_request_message = {}

-- Calculate size of: Mass Cancel Bulk Clear Lockouts By Efid Or Underlier Request Message
memx_options_memo_sbe_v1_7.mass_cancel_bulk_clear_lockouts_by_efid_or_underlier_request_message.size = function(buffer, offset)
  local index = 0

  index = index + memx_options_memo_sbe_v1_7.sending_time.size

  index = index + memx_options_memo_sbe_v1_7.cl_ord_i_d_mass_cancel_bulk_clear_lockouts_by_efid_or_underlier_request_cl_ord_id.size

  index = index + memx_options_memo_sbe_v1_7.efi_d_mass_cancel_bulk_clear_lockouts_by_efid_or_underlier_request_efi_d_optional.size

  index = index + memx_options_memo_sbe_v1_7.underlier_mass_cancel_bulk_clear_lockouts_by_efid_or_underlier_request_underlier_optional.size

  return index
end

-- Display: Mass Cancel Bulk Clear Lockouts By Efid Or Underlier Request Message
memx_options_memo_sbe_v1_7.mass_cancel_bulk_clear_lockouts_by_efid_or_underlier_request_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Mass Cancel Bulk Clear Lockouts By Efid Or Underlier Request Message
memx_options_memo_sbe_v1_7.mass_cancel_bulk_clear_lockouts_by_efid_or_underlier_request_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Sending Time: 8 Byte Unsigned Fixed Width Integer
  index, sending_time = memx_options_memo_sbe_v1_7.sending_time.dissect(buffer, index, packet, parent)

  -- Cl Ord I D Mass Cancel Bulk Clear Lockouts By Efid Or Underlier Request Cl Ord Id: 20 Byte Ascii String
  index, cl_ord_i_d_mass_cancel_bulk_clear_lockouts_by_efid_or_underlier_request_cl_ord_id = memx_options_memo_sbe_v1_7.cl_ord_i_d_mass_cancel_bulk_clear_lockouts_by_efid_or_underlier_request_cl_ord_id.dissect(buffer, index, packet, parent)

  -- Efi D Mass Cancel Bulk Clear Lockouts By Efid Or Underlier Request Efi D optional: 4 Byte Ascii String Nullable
  index, efi_d_mass_cancel_bulk_clear_lockouts_by_efid_or_underlier_request_efi_d_optional = memx_options_memo_sbe_v1_7.efi_d_mass_cancel_bulk_clear_lockouts_by_efid_or_underlier_request_efi_d_optional.dissect(buffer, index, packet, parent)

  -- Underlier Mass Cancel Bulk Clear Lockouts By Efid Or Underlier Request Underlier optional: 6 Byte Ascii String Nullable
  index, underlier_mass_cancel_bulk_clear_lockouts_by_efid_or_underlier_request_underlier_optional = memx_options_memo_sbe_v1_7.underlier_mass_cancel_bulk_clear_lockouts_by_efid_or_underlier_request_underlier_optional.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Mass Cancel Bulk Clear Lockouts By Efid Or Underlier Request Message
memx_options_memo_sbe_v1_7.mass_cancel_bulk_clear_lockouts_by_efid_or_underlier_request_message.dissect = function(buffer, offset, packet, parent)
  if show.mass_cancel_bulk_clear_lockouts_by_efid_or_underlier_request_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_memx_options_memo_sbe_v1_7.fields.mass_cancel_bulk_clear_lockouts_by_efid_or_underlier_request_message, buffer(offset, 0))
    local index = memx_options_memo_sbe_v1_7.mass_cancel_bulk_clear_lockouts_by_efid_or_underlier_request_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = memx_options_memo_sbe_v1_7.mass_cancel_bulk_clear_lockouts_by_efid_or_underlier_request_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return memx_options_memo_sbe_v1_7.mass_cancel_bulk_clear_lockouts_by_efid_or_underlier_request_message.fields(buffer, offset, packet, parent)
  end
end

-- Cl Ord I D Mass Cancel Bulk Clear All Lockouts Request Cl Ord Id
memx_options_memo_sbe_v1_7.cl_ord_i_d_mass_cancel_bulk_clear_all_lockouts_request_cl_ord_id = {}

-- Size: Cl Ord I D Mass Cancel Bulk Clear All Lockouts Request Cl Ord Id
memx_options_memo_sbe_v1_7.cl_ord_i_d_mass_cancel_bulk_clear_all_lockouts_request_cl_ord_id.size = 20

-- Display: Cl Ord I D Mass Cancel Bulk Clear All Lockouts Request Cl Ord Id
memx_options_memo_sbe_v1_7.cl_ord_i_d_mass_cancel_bulk_clear_all_lockouts_request_cl_ord_id.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Cl Ord I D Mass Cancel Bulk Clear All Lockouts Request Cl Ord Id: No Value"
  end

  return "Cl Ord I D Mass Cancel Bulk Clear All Lockouts Request Cl Ord Id: "..value
end

-- Dissect: Cl Ord I D Mass Cancel Bulk Clear All Lockouts Request Cl Ord Id
memx_options_memo_sbe_v1_7.cl_ord_i_d_mass_cancel_bulk_clear_all_lockouts_request_cl_ord_id.dissect = function(buffer, offset, packet, parent)
  local length = memx_options_memo_sbe_v1_7.cl_ord_i_d_mass_cancel_bulk_clear_all_lockouts_request_cl_ord_id.size
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

  local display = memx_options_memo_sbe_v1_7.cl_ord_i_d_mass_cancel_bulk_clear_all_lockouts_request_cl_ord_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_memx_options_memo_sbe_v1_7.fields.cl_ord_i_d_mass_cancel_bulk_clear_all_lockouts_request_cl_ord_id, range, value, display)

  return offset + length, value
end

-- Mass Cancel Bulk Clear All Lockouts Request Message
memx_options_memo_sbe_v1_7.mass_cancel_bulk_clear_all_lockouts_request_message = {}

-- Calculate size of: Mass Cancel Bulk Clear All Lockouts Request Message
memx_options_memo_sbe_v1_7.mass_cancel_bulk_clear_all_lockouts_request_message.size = function(buffer, offset)
  local index = 0

  index = index + memx_options_memo_sbe_v1_7.sending_time.size

  index = index + memx_options_memo_sbe_v1_7.cl_ord_i_d_mass_cancel_bulk_clear_all_lockouts_request_cl_ord_id.size

  return index
end

-- Display: Mass Cancel Bulk Clear All Lockouts Request Message
memx_options_memo_sbe_v1_7.mass_cancel_bulk_clear_all_lockouts_request_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Mass Cancel Bulk Clear All Lockouts Request Message
memx_options_memo_sbe_v1_7.mass_cancel_bulk_clear_all_lockouts_request_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Sending Time: 8 Byte Unsigned Fixed Width Integer
  index, sending_time = memx_options_memo_sbe_v1_7.sending_time.dissect(buffer, index, packet, parent)

  -- Cl Ord I D Mass Cancel Bulk Clear All Lockouts Request Cl Ord Id: 20 Byte Ascii String
  index, cl_ord_i_d_mass_cancel_bulk_clear_all_lockouts_request_cl_ord_id = memx_options_memo_sbe_v1_7.cl_ord_i_d_mass_cancel_bulk_clear_all_lockouts_request_cl_ord_id.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Mass Cancel Bulk Clear All Lockouts Request Message
memx_options_memo_sbe_v1_7.mass_cancel_bulk_clear_all_lockouts_request_message.dissect = function(buffer, offset, packet, parent)
  if show.mass_cancel_bulk_clear_all_lockouts_request_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_memx_options_memo_sbe_v1_7.fields.mass_cancel_bulk_clear_all_lockouts_request_message, buffer(offset, 0))
    local index = memx_options_memo_sbe_v1_7.mass_cancel_bulk_clear_all_lockouts_request_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = memx_options_memo_sbe_v1_7.mass_cancel_bulk_clear_all_lockouts_request_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return memx_options_memo_sbe_v1_7.mass_cancel_bulk_clear_all_lockouts_request_message.fields(buffer, offset, packet, parent)
  end
end

-- Underlier Mass Cancel Clear Lockout Request Underlier
memx_options_memo_sbe_v1_7.underlier_mass_cancel_clear_lockout_request_underlier = {}

-- Size: Underlier Mass Cancel Clear Lockout Request Underlier
memx_options_memo_sbe_v1_7.underlier_mass_cancel_clear_lockout_request_underlier.size = 6

-- Display: Underlier Mass Cancel Clear Lockout Request Underlier
memx_options_memo_sbe_v1_7.underlier_mass_cancel_clear_lockout_request_underlier.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Underlier Mass Cancel Clear Lockout Request Underlier: No Value"
  end

  return "Underlier Mass Cancel Clear Lockout Request Underlier: "..value
end

-- Dissect: Underlier Mass Cancel Clear Lockout Request Underlier
memx_options_memo_sbe_v1_7.underlier_mass_cancel_clear_lockout_request_underlier.dissect = function(buffer, offset, packet, parent)
  local length = memx_options_memo_sbe_v1_7.underlier_mass_cancel_clear_lockout_request_underlier.size
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

  local display = memx_options_memo_sbe_v1_7.underlier_mass_cancel_clear_lockout_request_underlier.display(value, buffer, offset, packet, parent)

  parent:add(omi_memx_options_memo_sbe_v1_7.fields.underlier_mass_cancel_clear_lockout_request_underlier, range, value, display)

  return offset + length, value
end

-- Mass Cancel Clear Lockout Request Message
memx_options_memo_sbe_v1_7.mass_cancel_clear_lockout_request_message = {}

-- Calculate size of: Mass Cancel Clear Lockout Request Message
memx_options_memo_sbe_v1_7.mass_cancel_clear_lockout_request_message.size = function(buffer, offset)
  local index = 0

  index = index + memx_options_memo_sbe_v1_7.sending_time.size

  index = index + memx_options_memo_sbe_v1_7.clordid.size

  index = index + memx_options_memo_sbe_v1_7.underlier_mass_cancel_clear_lockout_request_underlier.size

  index = index + memx_options_memo_sbe_v1_7.lockout_id.size

  return index
end

-- Display: Mass Cancel Clear Lockout Request Message
memx_options_memo_sbe_v1_7.mass_cancel_clear_lockout_request_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Mass Cancel Clear Lockout Request Message
memx_options_memo_sbe_v1_7.mass_cancel_clear_lockout_request_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Sending Time: 8 Byte Unsigned Fixed Width Integer
  index, sending_time = memx_options_memo_sbe_v1_7.sending_time.dissect(buffer, index, packet, parent)

  -- ClOrdId: 20 Byte Ascii String
  index, clordid = memx_options_memo_sbe_v1_7.clordid.dissect(buffer, index, packet, parent)

  -- Underlier Mass Cancel Clear Lockout Request Underlier: 6 Byte Ascii String
  index, underlier_mass_cancel_clear_lockout_request_underlier = memx_options_memo_sbe_v1_7.underlier_mass_cancel_clear_lockout_request_underlier.dissect(buffer, index, packet, parent)

  -- Lockout Id: 8 Byte Unsigned Fixed Width Integer
  index, lockout_id = memx_options_memo_sbe_v1_7.lockout_id.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Mass Cancel Clear Lockout Request Message
memx_options_memo_sbe_v1_7.mass_cancel_clear_lockout_request_message.dissect = function(buffer, offset, packet, parent)
  if show.mass_cancel_clear_lockout_request_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_memx_options_memo_sbe_v1_7.fields.mass_cancel_clear_lockout_request_message, buffer(offset, 0))
    local index = memx_options_memo_sbe_v1_7.mass_cancel_clear_lockout_request_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = memx_options_memo_sbe_v1_7.mass_cancel_clear_lockout_request_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return memx_options_memo_sbe_v1_7.mass_cancel_clear_lockout_request_message.fields(buffer, offset, packet, parent)
  end
end

-- Mass Cancel Request Message
memx_options_memo_sbe_v1_7.mass_cancel_request_message = {}

-- Calculate size of: Mass Cancel Request Message
memx_options_memo_sbe_v1_7.mass_cancel_request_message.size = function(buffer, offset)
  local index = 0

  index = index + memx_options_memo_sbe_v1_7.sending_time.size

  index = index + memx_options_memo_sbe_v1_7.clordid.size

  index = index + memx_options_memo_sbe_v1_7.efid_optional.size

  index = index + memx_options_memo_sbe_v1_7.underlying_or_series.size

  index = index + memx_options_memo_sbe_v1_7.underlier.size

  index = index + memx_options_memo_sbe_v1_7.options_security_id_optional.size

  index = index + memx_options_memo_sbe_v1_7.cancel_group_id.size

  index = index + memx_options_memo_sbe_v1_7.mass_cancel_inst.size

  return index
end

-- Display: Mass Cancel Request Message
memx_options_memo_sbe_v1_7.mass_cancel_request_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Mass Cancel Request Message
memx_options_memo_sbe_v1_7.mass_cancel_request_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Sending Time: 8 Byte Unsigned Fixed Width Integer
  index, sending_time = memx_options_memo_sbe_v1_7.sending_time.dissect(buffer, index, packet, parent)

  -- ClOrdId: 20 Byte Ascii String
  index, clordid = memx_options_memo_sbe_v1_7.clordid.dissect(buffer, index, packet, parent)

  -- Efid Optional: 4 Byte Ascii String Nullable
  index, efid_optional = memx_options_memo_sbe_v1_7.efid_optional.dissect(buffer, index, packet, parent)

  -- Underlying Or Series: 1 Byte Unsigned Fixed Width Integer Enum with 3 values
  index, underlying_or_series = memx_options_memo_sbe_v1_7.underlying_or_series.dissect(buffer, index, packet, parent)

  -- Underlier: 6 Byte Ascii String
  index, underlier = memx_options_memo_sbe_v1_7.underlier.dissect(buffer, index, packet, parent)

  -- Options Security Id Optional: 8 Byte Ascii String Nullable
  index, options_security_id_optional = memx_options_memo_sbe_v1_7.options_security_id_optional.dissect(buffer, index, packet, parent)

  -- Cancel Group Id: 2 Byte Unsigned Fixed Width Integer Nullable
  index, cancel_group_id = memx_options_memo_sbe_v1_7.cancel_group_id.dissect(buffer, index, packet, parent)

  -- Mass Cancel Inst: Struct of 4 fields
  index, mass_cancel_inst = memx_options_memo_sbe_v1_7.mass_cancel_inst.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Mass Cancel Request Message
memx_options_memo_sbe_v1_7.mass_cancel_request_message.dissect = function(buffer, offset, packet, parent)
  if show.mass_cancel_request_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_memx_options_memo_sbe_v1_7.fields.mass_cancel_request_message, buffer(offset, 0))
    local index = memx_options_memo_sbe_v1_7.mass_cancel_request_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = memx_options_memo_sbe_v1_7.mass_cancel_request_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return memx_options_memo_sbe_v1_7.mass_cancel_request_message.fields(buffer, offset, packet, parent)
  end
end

-- Order Id Optional
memx_options_memo_sbe_v1_7.order_id_optional = {}

-- Size: Order Id Optional
memx_options_memo_sbe_v1_7.order_id_optional.size = 8

-- Display: Order Id Optional
memx_options_memo_sbe_v1_7.order_id_optional.display = function(value)
  -- Check if field has value
  if value == UInt64(0xFFFFFFFF, 0xFFFFFFFF) then
    return "Order Id Optional: No Value"
  end

  return "Order Id Optional: "..value
end

-- Dissect: Order Id Optional
memx_options_memo_sbe_v1_7.order_id_optional.dissect = function(buffer, offset, packet, parent)
  local length = memx_options_memo_sbe_v1_7.order_id_optional.size
  local range = buffer(offset, length)
  local value = range:uint64()
  local display = memx_options_memo_sbe_v1_7.order_id_optional.display(value, buffer, offset, packet, parent)

  parent:add(omi_memx_options_memo_sbe_v1_7.fields.order_id_optional, range, value, display)

  return offset + length, value
end

-- Order Cancel Request Message
memx_options_memo_sbe_v1_7.order_cancel_request_message = {}

-- Calculate size of: Order Cancel Request Message
memx_options_memo_sbe_v1_7.order_cancel_request_message.size = function(buffer, offset)
  local index = 0

  index = index + memx_options_memo_sbe_v1_7.sending_time.size

  index = index + memx_options_memo_sbe_v1_7.order_id_optional.size

  index = index + memx_options_memo_sbe_v1_7.clordid.size

  index = index + memx_options_memo_sbe_v1_7.list_seq_no.size

  index = index + memx_options_memo_sbe_v1_7.origclordid_optional.size

  index = index + memx_options_memo_sbe_v1_7.security_id.size

  index = index + memx_options_memo_sbe_v1_7.side_optional.size

  return index
end

-- Display: Order Cancel Request Message
memx_options_memo_sbe_v1_7.order_cancel_request_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Order Cancel Request Message
memx_options_memo_sbe_v1_7.order_cancel_request_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Sending Time: 8 Byte Unsigned Fixed Width Integer
  index, sending_time = memx_options_memo_sbe_v1_7.sending_time.dissect(buffer, index, packet, parent)

  -- Order Id Optional: 8 Byte Unsigned Fixed Width Integer Nullable
  index, order_id_optional = memx_options_memo_sbe_v1_7.order_id_optional.dissect(buffer, index, packet, parent)

  -- ClOrdId: 20 Byte Ascii String
  index, clordid = memx_options_memo_sbe_v1_7.clordid.dissect(buffer, index, packet, parent)

  -- List Seq No: 1 Byte Unsigned Fixed Width Integer
  index, list_seq_no = memx_options_memo_sbe_v1_7.list_seq_no.dissect(buffer, index, packet, parent)

  -- OrigClOrdId Optional: 20 Byte Ascii String Nullable
  index, origclordid_optional = memx_options_memo_sbe_v1_7.origclordid_optional.dissect(buffer, index, packet, parent)

  -- Security Id: 8 Byte Ascii String
  index, security_id = memx_options_memo_sbe_v1_7.security_id.dissect(buffer, index, packet, parent)

  -- Side Optional: 1 Byte Ascii String Enum with 4 values
  index, side_optional = memx_options_memo_sbe_v1_7.side_optional.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Order Cancel Request Message
memx_options_memo_sbe_v1_7.order_cancel_request_message.dissect = function(buffer, offset, packet, parent)
  if show.order_cancel_request_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_memx_options_memo_sbe_v1_7.fields.order_cancel_request_message, buffer(offset, 0))
    local index = memx_options_memo_sbe_v1_7.order_cancel_request_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = memx_options_memo_sbe_v1_7.order_cancel_request_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return memx_options_memo_sbe_v1_7.order_cancel_request_message.fields(buffer, offset, packet, parent)
  end
end

-- Order Cancel Replace Request Message
memx_options_memo_sbe_v1_7.order_cancel_replace_request_message = {}

-- Calculate size of: Order Cancel Replace Request Message
memx_options_memo_sbe_v1_7.order_cancel_replace_request_message.size = function(buffer, offset)
  local index = 0

  index = index + memx_options_memo_sbe_v1_7.sending_time.size

  index = index + memx_options_memo_sbe_v1_7.order_id_optional.size

  index = index + memx_options_memo_sbe_v1_7.clordid.size

  index = index + memx_options_memo_sbe_v1_7.list_seq_no.size

  index = index + memx_options_memo_sbe_v1_7.origclordid.size

  index = index + memx_options_memo_sbe_v1_7.security_id.size

  index = index + memx_options_memo_sbe_v1_7.side.size

  index = index + memx_options_memo_sbe_v1_7.order_qty.size

  index = index + memx_options_memo_sbe_v1_7.ord_type.size

  index = index + memx_options_memo_sbe_v1_7.price_optional.size

  return index
end

-- Display: Order Cancel Replace Request Message
memx_options_memo_sbe_v1_7.order_cancel_replace_request_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Order Cancel Replace Request Message
memx_options_memo_sbe_v1_7.order_cancel_replace_request_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Sending Time: 8 Byte Unsigned Fixed Width Integer
  index, sending_time = memx_options_memo_sbe_v1_7.sending_time.dissect(buffer, index, packet, parent)

  -- Order Id Optional: 8 Byte Unsigned Fixed Width Integer Nullable
  index, order_id_optional = memx_options_memo_sbe_v1_7.order_id_optional.dissect(buffer, index, packet, parent)

  -- ClOrdId: 20 Byte Ascii String
  index, clordid = memx_options_memo_sbe_v1_7.clordid.dissect(buffer, index, packet, parent)

  -- List Seq No: 1 Byte Unsigned Fixed Width Integer
  index, list_seq_no = memx_options_memo_sbe_v1_7.list_seq_no.dissect(buffer, index, packet, parent)

  -- OrigClOrdId: 20 Byte Ascii String
  index, origclordid = memx_options_memo_sbe_v1_7.origclordid.dissect(buffer, index, packet, parent)

  -- Security Id: 8 Byte Ascii String
  index, security_id = memx_options_memo_sbe_v1_7.security_id.dissect(buffer, index, packet, parent)

  -- Side: 1 Byte Ascii String Enum with 3 values
  index, side = memx_options_memo_sbe_v1_7.side.dissect(buffer, index, packet, parent)

  -- Order Qty: 4 Byte Unsigned Fixed Width Integer
  index, order_qty = memx_options_memo_sbe_v1_7.order_qty.dissect(buffer, index, packet, parent)

  -- Ord Type: 1 Byte Ascii String Enum with 2 values
  index, ord_type = memx_options_memo_sbe_v1_7.ord_type.dissect(buffer, index, packet, parent)

  -- Price Optional: 8 Byte Unsigned Fixed Width Integer Nullable
  index, price_optional = memx_options_memo_sbe_v1_7.price_optional.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Order Cancel Replace Request Message
memx_options_memo_sbe_v1_7.order_cancel_replace_request_message.dissect = function(buffer, offset, packet, parent)
  if show.order_cancel_replace_request_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_memx_options_memo_sbe_v1_7.fields.order_cancel_replace_request_message, buffer(offset, 0))
    local index = memx_options_memo_sbe_v1_7.order_cancel_replace_request_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = memx_options_memo_sbe_v1_7.order_cancel_replace_request_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return memx_options_memo_sbe_v1_7.order_cancel_replace_request_message.fields(buffer, offset, packet, parent)
  end
end

-- Offer Px
memx_options_memo_sbe_v1_7.offer_px = {}

-- Size: Offer Px
memx_options_memo_sbe_v1_7.offer_px.size = 2

-- Display: Offer Px
memx_options_memo_sbe_v1_7.offer_px.display = function(value)
  return "Offer Px: "..value
end

-- Translate: Offer Px
memx_options_memo_sbe_v1_7.offer_px.translate = function(raw)
  return raw/100
end

-- Dissect: Offer Px
memx_options_memo_sbe_v1_7.offer_px.dissect = function(buffer, offset, packet, parent)
  local length = memx_options_memo_sbe_v1_7.offer_px.size
  local range = buffer(offset, length)
  local raw = range:uint()
  local value = memx_options_memo_sbe_v1_7.offer_px.translate(raw)
  local display = memx_options_memo_sbe_v1_7.offer_px.display(value, buffer, offset, packet, parent)

  parent:add(omi_memx_options_memo_sbe_v1_7.fields.offer_px, range, value, display)

  return offset + length, value
end

-- Offer Size
memx_options_memo_sbe_v1_7.offer_size = {}

-- Size: Offer Size
memx_options_memo_sbe_v1_7.offer_size.size = 2

-- Display: Offer Size
memx_options_memo_sbe_v1_7.offer_size.display = function(value)
  return "Offer Size: "..value
end

-- Dissect: Offer Size
memx_options_memo_sbe_v1_7.offer_size.dissect = function(buffer, offset, packet, parent)
  local length = memx_options_memo_sbe_v1_7.offer_size.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = memx_options_memo_sbe_v1_7.offer_size.display(value, buffer, offset, packet, parent)

  parent:add(omi_memx_options_memo_sbe_v1_7.fields.offer_size, range, value, display)

  return offset + length, value
end

-- Bid Px
memx_options_memo_sbe_v1_7.bid_px = {}

-- Size: Bid Px
memx_options_memo_sbe_v1_7.bid_px.size = 2

-- Display: Bid Px
memx_options_memo_sbe_v1_7.bid_px.display = function(value)
  return "Bid Px: "..value
end

-- Translate: Bid Px
memx_options_memo_sbe_v1_7.bid_px.translate = function(raw)
  return raw/100
end

-- Dissect: Bid Px
memx_options_memo_sbe_v1_7.bid_px.dissect = function(buffer, offset, packet, parent)
  local length = memx_options_memo_sbe_v1_7.bid_px.size
  local range = buffer(offset, length)
  local raw = range:uint()
  local value = memx_options_memo_sbe_v1_7.bid_px.translate(raw)
  local display = memx_options_memo_sbe_v1_7.bid_px.display(value, buffer, offset, packet, parent)

  parent:add(omi_memx_options_memo_sbe_v1_7.fields.bid_px, range, value, display)

  return offset + length, value
end

-- Bid Size
memx_options_memo_sbe_v1_7.bid_size = {}

-- Size: Bid Size
memx_options_memo_sbe_v1_7.bid_size.size = 2

-- Display: Bid Size
memx_options_memo_sbe_v1_7.bid_size.display = function(value)
  return "Bid Size: "..value
end

-- Dissect: Bid Size
memx_options_memo_sbe_v1_7.bid_size.dissect = function(buffer, offset, packet, parent)
  local length = memx_options_memo_sbe_v1_7.bid_size.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = memx_options_memo_sbe_v1_7.bid_size.display(value, buffer, offset, packet, parent)

  parent:add(omi_memx_options_memo_sbe_v1_7.fields.bid_size, range, value, display)

  return offset + length, value
end

-- Quotes Group
memx_options_memo_sbe_v1_7.quotes_group = {}

-- Calculate size of: Quotes Group
memx_options_memo_sbe_v1_7.quotes_group.size = function(buffer, offset)
  local index = 0

  index = index + memx_options_memo_sbe_v1_7.list_seq_no.size

  index = index + memx_options_memo_sbe_v1_7.security_id.size

  index = index + memx_options_memo_sbe_v1_7.bid_size.size

  index = index + memx_options_memo_sbe_v1_7.bid_px.size

  index = index + memx_options_memo_sbe_v1_7.offer_size.size

  index = index + memx_options_memo_sbe_v1_7.offer_px.size

  return index
end

-- Display: Quotes Group
memx_options_memo_sbe_v1_7.quotes_group.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Quotes Group
memx_options_memo_sbe_v1_7.quotes_group.fields = function(buffer, offset, packet, parent, quotes_group_index)
  local index = offset

  -- Implicit Quotes Group Index
  if quotes_group_index ~= nil then
    local iteration = parent:add(omi_memx_options_memo_sbe_v1_7.fields.quotes_group_index, quotes_group_index)
    iteration:set_generated()
  end

  -- List Seq No: 1 Byte Unsigned Fixed Width Integer
  index, list_seq_no = memx_options_memo_sbe_v1_7.list_seq_no.dissect(buffer, index, packet, parent)

  -- Security Id: 8 Byte Ascii String
  index, security_id = memx_options_memo_sbe_v1_7.security_id.dissect(buffer, index, packet, parent)

  -- Bid Size: 2 Byte Unsigned Fixed Width Integer
  index, bid_size = memx_options_memo_sbe_v1_7.bid_size.dissect(buffer, index, packet, parent)

  -- Bid Px: 2 Byte Unsigned Fixed Width Integer
  index, bid_px = memx_options_memo_sbe_v1_7.bid_px.dissect(buffer, index, packet, parent)

  -- Offer Size: 2 Byte Unsigned Fixed Width Integer
  index, offer_size = memx_options_memo_sbe_v1_7.offer_size.dissect(buffer, index, packet, parent)

  -- Offer Px: 2 Byte Unsigned Fixed Width Integer
  index, offer_px = memx_options_memo_sbe_v1_7.offer_px.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Quotes Group
memx_options_memo_sbe_v1_7.quotes_group.dissect = function(buffer, offset, packet, parent, quotes_group_index)
  if show.quotes_group then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_memx_options_memo_sbe_v1_7.fields.quotes_group, buffer(offset, 0))
    local index = memx_options_memo_sbe_v1_7.quotes_group.fields(buffer, offset, packet, parent, quotes_group_index)
    local length = index - offset
    parent:set_len(length)
    local display = memx_options_memo_sbe_v1_7.quotes_group.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return memx_options_memo_sbe_v1_7.quotes_group.fields(buffer, offset, packet, parent, quotes_group_index)
  end
end

-- Quotes Groups
memx_options_memo_sbe_v1_7.quotes_groups = {}

-- Calculate size of: Quotes Groups
memx_options_memo_sbe_v1_7.quotes_groups.size = function(buffer, offset)
  local index = 0

  index = index + memx_options_memo_sbe_v1_7.repeating_group_dimensions.size(buffer, offset + index)

  -- Calculate field size from count
  local quotes_group_count = buffer(offset + index - 1, 1):uint()
  index = index + quotes_group_count * 17

  return index
end

-- Display: Quotes Groups
memx_options_memo_sbe_v1_7.quotes_groups.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Quotes Groups
memx_options_memo_sbe_v1_7.quotes_groups.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Repeating Group Dimensions: Struct of 2 fields
  index, repeating_group_dimensions = memx_options_memo_sbe_v1_7.repeating_group_dimensions.dissect(buffer, index, packet, parent)

  -- Dependency element: Num In Group
  local num_in_group = buffer(index - 1, 1):uint()

  -- Repeating: Quotes Group
  for quotes_group_index = 1, num_in_group do
    index, quotes_group = memx_options_memo_sbe_v1_7.quotes_group.dissect(buffer, index, packet, parent, quotes_group_index)
  end

  return index
end

-- Dissect: Quotes Groups
memx_options_memo_sbe_v1_7.quotes_groups.dissect = function(buffer, offset, packet, parent)
  -- Optionally add dynamic struct element to protocol tree
  if show.quotes_groups then
    local length = memx_options_memo_sbe_v1_7.quotes_groups.size(buffer, offset)
    local range = buffer(offset, length)
    local display = memx_options_memo_sbe_v1_7.quotes_groups.display(buffer, packet, parent)
    parent = parent:add(omi_memx_options_memo_sbe_v1_7.fields.quotes_groups, range, display)
  end

  return memx_options_memo_sbe_v1_7.quotes_groups.fields(buffer, offset, packet, parent)
end

-- Long One Sided Bulk Quote Message
memx_options_memo_sbe_v1_7.long_one_sided_bulk_quote_message = {}

-- Calculate size of: Long One Sided Bulk Quote Message
memx_options_memo_sbe_v1_7.long_one_sided_bulk_quote_message.size = function(buffer, offset)
  local index = 0

  index = index + memx_options_memo_sbe_v1_7.sending_time.size

  index = index + memx_options_memo_sbe_v1_7.clordid.size

  index = index + memx_options_memo_sbe_v1_7.time_in_force.size

  index = index + memx_options_memo_sbe_v1_7.exec_inst.size

  index = index + memx_options_memo_sbe_v1_7.trading_capacity.size

  index = index + memx_options_memo_sbe_v1_7.mtp_group_id.size

  index = index + memx_options_memo_sbe_v1_7.match_trade_prevention.size

  index = index + memx_options_memo_sbe_v1_7.cancel_group_id.size

  index = index + memx_options_memo_sbe_v1_7.risk_group_id.size

  index = index + memx_options_memo_sbe_v1_7.parties_groups.size(buffer, offset + index)

  index = index + memx_options_memo_sbe_v1_7.quotes_groups.size(buffer, offset + index)

  return index
end

-- Display: Long One Sided Bulk Quote Message
memx_options_memo_sbe_v1_7.long_one_sided_bulk_quote_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Long One Sided Bulk Quote Message
memx_options_memo_sbe_v1_7.long_one_sided_bulk_quote_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Sending Time: 8 Byte Unsigned Fixed Width Integer
  index, sending_time = memx_options_memo_sbe_v1_7.sending_time.dissect(buffer, index, packet, parent)

  -- ClOrdId: 20 Byte Ascii String
  index, clordid = memx_options_memo_sbe_v1_7.clordid.dissect(buffer, index, packet, parent)

  -- Time In Force: 1 Byte Ascii String Enum with 2 values
  index, time_in_force = memx_options_memo_sbe_v1_7.time_in_force.dissect(buffer, index, packet, parent)

  -- Exec Inst: Struct of 4 fields
  index, exec_inst = memx_options_memo_sbe_v1_7.exec_inst.dissect(buffer, index, packet, parent)

  -- Trading Capacity: 1 Byte Unsigned Fixed Width Integer Enum with 8 values
  index, trading_capacity = memx_options_memo_sbe_v1_7.trading_capacity.dissect(buffer, index, packet, parent)

  -- Mtp Group Id: 2 Byte Unsigned Fixed Width Integer Nullable
  index, mtp_group_id = memx_options_memo_sbe_v1_7.mtp_group_id.dissect(buffer, index, packet, parent)

  -- Match Trade Prevention: 1 Byte Unsigned Fixed Width Integer Enum with 5 values
  index, match_trade_prevention = memx_options_memo_sbe_v1_7.match_trade_prevention.dissect(buffer, index, packet, parent)

  -- Cancel Group Id: 2 Byte Unsigned Fixed Width Integer Nullable
  index, cancel_group_id = memx_options_memo_sbe_v1_7.cancel_group_id.dissect(buffer, index, packet, parent)

  -- Risk Group Id: 2 Byte Unsigned Fixed Width Integer Nullable
  index, risk_group_id = memx_options_memo_sbe_v1_7.risk_group_id.dissect(buffer, index, packet, parent)

  -- Parties Groups: Struct of 2 fields
  index, parties_groups = memx_options_memo_sbe_v1_7.parties_groups.dissect(buffer, index, packet, parent)

  -- Quotes Groups: Struct of 2 fields
  index, quotes_groups = memx_options_memo_sbe_v1_7.quotes_groups.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Long One Sided Bulk Quote Message
memx_options_memo_sbe_v1_7.long_one_sided_bulk_quote_message.dissect = function(buffer, offset, packet, parent)
  -- Optionally add dynamic struct element to protocol tree
  if show.long_one_sided_bulk_quote_message then
    local length = memx_options_memo_sbe_v1_7.long_one_sided_bulk_quote_message.size(buffer, offset)
    local range = buffer(offset, length)
    local display = memx_options_memo_sbe_v1_7.long_one_sided_bulk_quote_message.display(buffer, packet, parent)
    parent = parent:add(omi_memx_options_memo_sbe_v1_7.fields.long_one_sided_bulk_quote_message, range, display)
  end

  return memx_options_memo_sbe_v1_7.long_one_sided_bulk_quote_message.fields(buffer, offset, packet, parent)
end

-- Short One Sided Bulk Quote Message
memx_options_memo_sbe_v1_7.short_one_sided_bulk_quote_message = {}

-- Calculate size of: Short One Sided Bulk Quote Message
memx_options_memo_sbe_v1_7.short_one_sided_bulk_quote_message.size = function(buffer, offset)
  local index = 0

  index = index + memx_options_memo_sbe_v1_7.sending_time.size

  index = index + memx_options_memo_sbe_v1_7.clordid.size

  index = index + memx_options_memo_sbe_v1_7.time_in_force.size

  index = index + memx_options_memo_sbe_v1_7.exec_inst.size

  index = index + memx_options_memo_sbe_v1_7.trading_capacity.size

  index = index + memx_options_memo_sbe_v1_7.mtp_group_id.size

  index = index + memx_options_memo_sbe_v1_7.match_trade_prevention.size

  index = index + memx_options_memo_sbe_v1_7.cancel_group_id.size

  index = index + memx_options_memo_sbe_v1_7.risk_group_id.size

  index = index + memx_options_memo_sbe_v1_7.parties_groups.size(buffer, offset + index)

  index = index + memx_options_memo_sbe_v1_7.quotes_groups.size(buffer, offset + index)

  return index
end

-- Display: Short One Sided Bulk Quote Message
memx_options_memo_sbe_v1_7.short_one_sided_bulk_quote_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Short One Sided Bulk Quote Message
memx_options_memo_sbe_v1_7.short_one_sided_bulk_quote_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Sending Time: 8 Byte Unsigned Fixed Width Integer
  index, sending_time = memx_options_memo_sbe_v1_7.sending_time.dissect(buffer, index, packet, parent)

  -- ClOrdId: 20 Byte Ascii String
  index, clordid = memx_options_memo_sbe_v1_7.clordid.dissect(buffer, index, packet, parent)

  -- Time In Force: 1 Byte Ascii String Enum with 2 values
  index, time_in_force = memx_options_memo_sbe_v1_7.time_in_force.dissect(buffer, index, packet, parent)

  -- Exec Inst: Struct of 4 fields
  index, exec_inst = memx_options_memo_sbe_v1_7.exec_inst.dissect(buffer, index, packet, parent)

  -- Trading Capacity: 1 Byte Unsigned Fixed Width Integer Enum with 8 values
  index, trading_capacity = memx_options_memo_sbe_v1_7.trading_capacity.dissect(buffer, index, packet, parent)

  -- Mtp Group Id: 2 Byte Unsigned Fixed Width Integer Nullable
  index, mtp_group_id = memx_options_memo_sbe_v1_7.mtp_group_id.dissect(buffer, index, packet, parent)

  -- Match Trade Prevention: 1 Byte Unsigned Fixed Width Integer Enum with 5 values
  index, match_trade_prevention = memx_options_memo_sbe_v1_7.match_trade_prevention.dissect(buffer, index, packet, parent)

  -- Cancel Group Id: 2 Byte Unsigned Fixed Width Integer Nullable
  index, cancel_group_id = memx_options_memo_sbe_v1_7.cancel_group_id.dissect(buffer, index, packet, parent)

  -- Risk Group Id: 2 Byte Unsigned Fixed Width Integer Nullable
  index, risk_group_id = memx_options_memo_sbe_v1_7.risk_group_id.dissect(buffer, index, packet, parent)

  -- Parties Groups: Struct of 2 fields
  index, parties_groups = memx_options_memo_sbe_v1_7.parties_groups.dissect(buffer, index, packet, parent)

  -- Quotes Groups: Struct of 2 fields
  index, quotes_groups = memx_options_memo_sbe_v1_7.quotes_groups.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Short One Sided Bulk Quote Message
memx_options_memo_sbe_v1_7.short_one_sided_bulk_quote_message.dissect = function(buffer, offset, packet, parent)
  -- Optionally add dynamic struct element to protocol tree
  if show.short_one_sided_bulk_quote_message then
    local length = memx_options_memo_sbe_v1_7.short_one_sided_bulk_quote_message.size(buffer, offset)
    local range = buffer(offset, length)
    local display = memx_options_memo_sbe_v1_7.short_one_sided_bulk_quote_message.display(buffer, packet, parent)
    parent = parent:add(omi_memx_options_memo_sbe_v1_7.fields.short_one_sided_bulk_quote_message, range, display)
  end

  return memx_options_memo_sbe_v1_7.short_one_sided_bulk_quote_message.fields(buffer, offset, packet, parent)
end

-- Long Two Sided Bulk Quote Message
memx_options_memo_sbe_v1_7.long_two_sided_bulk_quote_message = {}

-- Calculate size of: Long Two Sided Bulk Quote Message
memx_options_memo_sbe_v1_7.long_two_sided_bulk_quote_message.size = function(buffer, offset)
  local index = 0

  index = index + memx_options_memo_sbe_v1_7.sending_time.size

  index = index + memx_options_memo_sbe_v1_7.clordid.size

  index = index + memx_options_memo_sbe_v1_7.time_in_force.size

  index = index + memx_options_memo_sbe_v1_7.exec_inst.size

  index = index + memx_options_memo_sbe_v1_7.trading_capacity.size

  index = index + memx_options_memo_sbe_v1_7.mtp_group_id.size

  index = index + memx_options_memo_sbe_v1_7.match_trade_prevention.size

  index = index + memx_options_memo_sbe_v1_7.cancel_group_id.size

  index = index + memx_options_memo_sbe_v1_7.risk_group_id.size

  index = index + memx_options_memo_sbe_v1_7.parties_groups.size(buffer, offset + index)

  index = index + memx_options_memo_sbe_v1_7.quotes_groups.size(buffer, offset + index)

  return index
end

-- Display: Long Two Sided Bulk Quote Message
memx_options_memo_sbe_v1_7.long_two_sided_bulk_quote_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Long Two Sided Bulk Quote Message
memx_options_memo_sbe_v1_7.long_two_sided_bulk_quote_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Sending Time: 8 Byte Unsigned Fixed Width Integer
  index, sending_time = memx_options_memo_sbe_v1_7.sending_time.dissect(buffer, index, packet, parent)

  -- ClOrdId: 20 Byte Ascii String
  index, clordid = memx_options_memo_sbe_v1_7.clordid.dissect(buffer, index, packet, parent)

  -- Time In Force: 1 Byte Ascii String Enum with 2 values
  index, time_in_force = memx_options_memo_sbe_v1_7.time_in_force.dissect(buffer, index, packet, parent)

  -- Exec Inst: Struct of 4 fields
  index, exec_inst = memx_options_memo_sbe_v1_7.exec_inst.dissect(buffer, index, packet, parent)

  -- Trading Capacity: 1 Byte Unsigned Fixed Width Integer Enum with 8 values
  index, trading_capacity = memx_options_memo_sbe_v1_7.trading_capacity.dissect(buffer, index, packet, parent)

  -- Mtp Group Id: 2 Byte Unsigned Fixed Width Integer Nullable
  index, mtp_group_id = memx_options_memo_sbe_v1_7.mtp_group_id.dissect(buffer, index, packet, parent)

  -- Match Trade Prevention: 1 Byte Unsigned Fixed Width Integer Enum with 5 values
  index, match_trade_prevention = memx_options_memo_sbe_v1_7.match_trade_prevention.dissect(buffer, index, packet, parent)

  -- Cancel Group Id: 2 Byte Unsigned Fixed Width Integer Nullable
  index, cancel_group_id = memx_options_memo_sbe_v1_7.cancel_group_id.dissect(buffer, index, packet, parent)

  -- Risk Group Id: 2 Byte Unsigned Fixed Width Integer Nullable
  index, risk_group_id = memx_options_memo_sbe_v1_7.risk_group_id.dissect(buffer, index, packet, parent)

  -- Parties Groups: Struct of 2 fields
  index, parties_groups = memx_options_memo_sbe_v1_7.parties_groups.dissect(buffer, index, packet, parent)

  -- Quotes Groups: Struct of 2 fields
  index, quotes_groups = memx_options_memo_sbe_v1_7.quotes_groups.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Long Two Sided Bulk Quote Message
memx_options_memo_sbe_v1_7.long_two_sided_bulk_quote_message.dissect = function(buffer, offset, packet, parent)
  -- Optionally add dynamic struct element to protocol tree
  if show.long_two_sided_bulk_quote_message then
    local length = memx_options_memo_sbe_v1_7.long_two_sided_bulk_quote_message.size(buffer, offset)
    local range = buffer(offset, length)
    local display = memx_options_memo_sbe_v1_7.long_two_sided_bulk_quote_message.display(buffer, packet, parent)
    parent = parent:add(omi_memx_options_memo_sbe_v1_7.fields.long_two_sided_bulk_quote_message, range, display)
  end

  return memx_options_memo_sbe_v1_7.long_two_sided_bulk_quote_message.fields(buffer, offset, packet, parent)
end

-- Short Two Sided Bulk Quote Message
memx_options_memo_sbe_v1_7.short_two_sided_bulk_quote_message = {}

-- Calculate size of: Short Two Sided Bulk Quote Message
memx_options_memo_sbe_v1_7.short_two_sided_bulk_quote_message.size = function(buffer, offset)
  local index = 0

  index = index + memx_options_memo_sbe_v1_7.sending_time.size

  index = index + memx_options_memo_sbe_v1_7.clordid.size

  index = index + memx_options_memo_sbe_v1_7.time_in_force.size

  index = index + memx_options_memo_sbe_v1_7.exec_inst.size

  index = index + memx_options_memo_sbe_v1_7.trading_capacity.size

  index = index + memx_options_memo_sbe_v1_7.mtp_group_id.size

  index = index + memx_options_memo_sbe_v1_7.match_trade_prevention.size

  index = index + memx_options_memo_sbe_v1_7.cancel_group_id.size

  index = index + memx_options_memo_sbe_v1_7.risk_group_id.size

  index = index + memx_options_memo_sbe_v1_7.parties_groups.size(buffer, offset + index)

  index = index + memx_options_memo_sbe_v1_7.quotes_groups.size(buffer, offset + index)

  return index
end

-- Display: Short Two Sided Bulk Quote Message
memx_options_memo_sbe_v1_7.short_two_sided_bulk_quote_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Short Two Sided Bulk Quote Message
memx_options_memo_sbe_v1_7.short_two_sided_bulk_quote_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Sending Time: 8 Byte Unsigned Fixed Width Integer
  index, sending_time = memx_options_memo_sbe_v1_7.sending_time.dissect(buffer, index, packet, parent)

  -- ClOrdId: 20 Byte Ascii String
  index, clordid = memx_options_memo_sbe_v1_7.clordid.dissect(buffer, index, packet, parent)

  -- Time In Force: 1 Byte Ascii String Enum with 2 values
  index, time_in_force = memx_options_memo_sbe_v1_7.time_in_force.dissect(buffer, index, packet, parent)

  -- Exec Inst: Struct of 4 fields
  index, exec_inst = memx_options_memo_sbe_v1_7.exec_inst.dissect(buffer, index, packet, parent)

  -- Trading Capacity: 1 Byte Unsigned Fixed Width Integer Enum with 8 values
  index, trading_capacity = memx_options_memo_sbe_v1_7.trading_capacity.dissect(buffer, index, packet, parent)

  -- Mtp Group Id: 2 Byte Unsigned Fixed Width Integer Nullable
  index, mtp_group_id = memx_options_memo_sbe_v1_7.mtp_group_id.dissect(buffer, index, packet, parent)

  -- Match Trade Prevention: 1 Byte Unsigned Fixed Width Integer Enum with 5 values
  index, match_trade_prevention = memx_options_memo_sbe_v1_7.match_trade_prevention.dissect(buffer, index, packet, parent)

  -- Cancel Group Id: 2 Byte Unsigned Fixed Width Integer Nullable
  index, cancel_group_id = memx_options_memo_sbe_v1_7.cancel_group_id.dissect(buffer, index, packet, parent)

  -- Risk Group Id: 2 Byte Unsigned Fixed Width Integer Nullable
  index, risk_group_id = memx_options_memo_sbe_v1_7.risk_group_id.dissect(buffer, index, packet, parent)

  -- Parties Groups: Struct of 2 fields
  index, parties_groups = memx_options_memo_sbe_v1_7.parties_groups.dissect(buffer, index, packet, parent)

  -- Quotes Groups: Struct of 2 fields
  index, quotes_groups = memx_options_memo_sbe_v1_7.quotes_groups.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Short Two Sided Bulk Quote Message
memx_options_memo_sbe_v1_7.short_two_sided_bulk_quote_message.dissect = function(buffer, offset, packet, parent)
  -- Optionally add dynamic struct element to protocol tree
  if show.short_two_sided_bulk_quote_message then
    local length = memx_options_memo_sbe_v1_7.short_two_sided_bulk_quote_message.size(buffer, offset)
    local range = buffer(offset, length)
    local display = memx_options_memo_sbe_v1_7.short_two_sided_bulk_quote_message.display(buffer, packet, parent)
    parent = parent:add(omi_memx_options_memo_sbe_v1_7.fields.short_two_sided_bulk_quote_message, range, display)
  end

  return memx_options_memo_sbe_v1_7.short_two_sided_bulk_quote_message.fields(buffer, offset, packet, parent)
end

-- New Order Single Message
memx_options_memo_sbe_v1_7.new_order_single_message = {}

-- Calculate size of: New Order Single Message
memx_options_memo_sbe_v1_7.new_order_single_message.size = function(buffer, offset)
  local index = 0

  index = index + memx_options_memo_sbe_v1_7.sending_time.size

  index = index + memx_options_memo_sbe_v1_7.clordid.size

  index = index + memx_options_memo_sbe_v1_7.security_id.size

  index = index + memx_options_memo_sbe_v1_7.side.size

  index = index + memx_options_memo_sbe_v1_7.order_qty.size

  index = index + memx_options_memo_sbe_v1_7.ord_type.size

  index = index + memx_options_memo_sbe_v1_7.price_optional.size

  index = index + memx_options_memo_sbe_v1_7.time_in_force.size

  index = index + memx_options_memo_sbe_v1_7.position_effect_optional.size

  index = index + memx_options_memo_sbe_v1_7.exec_inst.size

  index = index + memx_options_memo_sbe_v1_7.trading_capacity.size

  index = index + memx_options_memo_sbe_v1_7.reprice_frequency.size

  index = index + memx_options_memo_sbe_v1_7.reprice_behavior.size

  index = index + memx_options_memo_sbe_v1_7.mtp_group_id.size

  index = index + memx_options_memo_sbe_v1_7.match_trade_prevention.size

  index = index + memx_options_memo_sbe_v1_7.cancel_group_id.size

  index = index + memx_options_memo_sbe_v1_7.risk_group_id.size

  index = index + memx_options_memo_sbe_v1_7.parties_groups.size(buffer, offset + index)

  return index
end

-- Display: New Order Single Message
memx_options_memo_sbe_v1_7.new_order_single_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: New Order Single Message
memx_options_memo_sbe_v1_7.new_order_single_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Sending Time: 8 Byte Unsigned Fixed Width Integer
  index, sending_time = memx_options_memo_sbe_v1_7.sending_time.dissect(buffer, index, packet, parent)

  -- ClOrdId: 20 Byte Ascii String
  index, clordid = memx_options_memo_sbe_v1_7.clordid.dissect(buffer, index, packet, parent)

  -- Security Id: 8 Byte Ascii String
  index, security_id = memx_options_memo_sbe_v1_7.security_id.dissect(buffer, index, packet, parent)

  -- Side: 1 Byte Ascii String Enum with 3 values
  index, side = memx_options_memo_sbe_v1_7.side.dissect(buffer, index, packet, parent)

  -- Order Qty: 4 Byte Unsigned Fixed Width Integer
  index, order_qty = memx_options_memo_sbe_v1_7.order_qty.dissect(buffer, index, packet, parent)

  -- Ord Type: 1 Byte Ascii String Enum with 2 values
  index, ord_type = memx_options_memo_sbe_v1_7.ord_type.dissect(buffer, index, packet, parent)

  -- Price Optional: 8 Byte Unsigned Fixed Width Integer Nullable
  index, price_optional = memx_options_memo_sbe_v1_7.price_optional.dissect(buffer, index, packet, parent)

  -- Time In Force: 1 Byte Ascii String Enum with 2 values
  index, time_in_force = memx_options_memo_sbe_v1_7.time_in_force.dissect(buffer, index, packet, parent)

  -- Position Effect Optional: 1 Byte Ascii String Enum with 3 values
  index, position_effect_optional = memx_options_memo_sbe_v1_7.position_effect_optional.dissect(buffer, index, packet, parent)

  -- Exec Inst: Struct of 4 fields
  index, exec_inst = memx_options_memo_sbe_v1_7.exec_inst.dissect(buffer, index, packet, parent)

  -- Trading Capacity: 1 Byte Unsigned Fixed Width Integer Enum with 8 values
  index, trading_capacity = memx_options_memo_sbe_v1_7.trading_capacity.dissect(buffer, index, packet, parent)

  -- Reprice Frequency: 1 Byte Unsigned Fixed Width Integer Enum with 5 values
  index, reprice_frequency = memx_options_memo_sbe_v1_7.reprice_frequency.dissect(buffer, index, packet, parent)

  -- Reprice Behavior: 1 Byte Unsigned Fixed Width Integer Enum with 4 values
  index, reprice_behavior = memx_options_memo_sbe_v1_7.reprice_behavior.dissect(buffer, index, packet, parent)

  -- Mtp Group Id: 2 Byte Unsigned Fixed Width Integer Nullable
  index, mtp_group_id = memx_options_memo_sbe_v1_7.mtp_group_id.dissect(buffer, index, packet, parent)

  -- Match Trade Prevention: 1 Byte Unsigned Fixed Width Integer Enum with 5 values
  index, match_trade_prevention = memx_options_memo_sbe_v1_7.match_trade_prevention.dissect(buffer, index, packet, parent)

  -- Cancel Group Id: 2 Byte Unsigned Fixed Width Integer Nullable
  index, cancel_group_id = memx_options_memo_sbe_v1_7.cancel_group_id.dissect(buffer, index, packet, parent)

  -- Risk Group Id: 2 Byte Unsigned Fixed Width Integer Nullable
  index, risk_group_id = memx_options_memo_sbe_v1_7.risk_group_id.dissect(buffer, index, packet, parent)

  -- Parties Groups: Struct of 2 fields
  index, parties_groups = memx_options_memo_sbe_v1_7.parties_groups.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: New Order Single Message
memx_options_memo_sbe_v1_7.new_order_single_message.dissect = function(buffer, offset, packet, parent)
  -- Optionally add dynamic struct element to protocol tree
  if show.new_order_single_message then
    local length = memx_options_memo_sbe_v1_7.new_order_single_message.size(buffer, offset)
    local range = buffer(offset, length)
    local display = memx_options_memo_sbe_v1_7.new_order_single_message.display(buffer, packet, parent)
    parent = parent:add(omi_memx_options_memo_sbe_v1_7.fields.new_order_single_message, range, display)
  end

  return memx_options_memo_sbe_v1_7.new_order_single_message.fields(buffer, offset, packet, parent)
end

-- Payload
memx_options_memo_sbe_v1_7.payload = {}

-- Calculate runtime size of: Payload
memx_options_memo_sbe_v1_7.payload.size = function(buffer, offset, template_id)
  -- Size of New Order Single Message
  if template_id == 1 then
    return memx_options_memo_sbe_v1_7.new_order_single_message.size(buffer, offset)
  end
  -- Size of Short Two Sided Bulk Quote Message
  if template_id == 2 then
    return memx_options_memo_sbe_v1_7.short_two_sided_bulk_quote_message.size(buffer, offset)
  end
  -- Size of Long Two Sided Bulk Quote Message
  if template_id == 3 then
    return memx_options_memo_sbe_v1_7.long_two_sided_bulk_quote_message.size(buffer, offset)
  end
  -- Size of Short One Sided Bulk Quote Message
  if template_id == 4 then
    return memx_options_memo_sbe_v1_7.short_one_sided_bulk_quote_message.size(buffer, offset)
  end
  -- Size of Long One Sided Bulk Quote Message
  if template_id == 5 then
    return memx_options_memo_sbe_v1_7.long_one_sided_bulk_quote_message.size(buffer, offset)
  end
  -- Size of Order Cancel Replace Request Message
  if template_id == 6 then
    return memx_options_memo_sbe_v1_7.order_cancel_replace_request_message.size(buffer, offset)
  end
  -- Size of Order Cancel Request Message
  if template_id == 7 then
    return memx_options_memo_sbe_v1_7.order_cancel_request_message.size(buffer, offset)
  end
  -- Size of Mass Cancel Request Message
  if template_id == 8 then
    return memx_options_memo_sbe_v1_7.mass_cancel_request_message.size(buffer, offset)
  end
  -- Size of Mass Cancel Clear Lockout Request Message
  if template_id == 9 then
    return memx_options_memo_sbe_v1_7.mass_cancel_clear_lockout_request_message.size(buffer, offset)
  end
  -- Size of Mass Cancel Bulk Clear All Lockouts Request Message
  if template_id == 32 then
    return memx_options_memo_sbe_v1_7.mass_cancel_bulk_clear_all_lockouts_request_message.size(buffer, offset)
  end
  -- Size of Mass Cancel Bulk Clear Lockouts By Efid Or Underlier Request Message
  if template_id == 33 then
    return memx_options_memo_sbe_v1_7.mass_cancel_bulk_clear_lockouts_by_efid_or_underlier_request_message.size(buffer, offset)
  end
  -- Size of Allocation Instruction Message
  if template_id == 10 then
    return memx_options_memo_sbe_v1_7.allocation_instruction_message.size(buffer, offset)
  end
  -- Size of Execution Report New Message
  if template_id == 11 then
    return memx_options_memo_sbe_v1_7.execution_report_new_message.size(buffer, offset)
  end
  -- Size of Execution Report Bulk Quote Pending New Message
  if template_id == 12 then
    return memx_options_memo_sbe_v1_7.execution_report_bulk_quote_pending_new_message.size(buffer, offset)
  end
  -- Size of Execution Report Bulk Quote Component New Message
  if template_id == 13 then
    return memx_options_memo_sbe_v1_7.execution_report_bulk_quote_component_new_message.size(buffer, offset)
  end
  -- Size of Execution Report Rejected Message
  if template_id == 14 then
    return memx_options_memo_sbe_v1_7.execution_report_rejected_message.size(buffer, offset)
  end
  -- Size of Execution Report Trade Message
  if template_id == 15 then
    return memx_options_memo_sbe_v1_7.execution_report_trade_message.size(buffer, offset)
  end
  -- Size of Execution Report Pending Cancel Message
  if template_id == 16 then
    return memx_options_memo_sbe_v1_7.execution_report_pending_cancel_message.size(buffer, offset)
  end
  -- Size of Execution Report Canceled Message
  if template_id == 17 then
    return memx_options_memo_sbe_v1_7.execution_report_canceled_message.size(buffer, offset)
  end
  -- Size of Execution Report Pending Replace Message
  if template_id == 18 then
    return memx_options_memo_sbe_v1_7.execution_report_pending_replace_message.size(buffer, offset)
  end
  -- Size of Execution Report Replaced Message
  if template_id == 19 then
    return memx_options_memo_sbe_v1_7.execution_report_replaced_message.size(buffer, offset)
  end
  -- Size of Execution Report Trade Correction Message
  if template_id == 20 then
    return memx_options_memo_sbe_v1_7.execution_report_trade_correction_message.size(buffer, offset)
  end
  -- Size of Execution Report Trade Break Message
  if template_id == 21 then
    return memx_options_memo_sbe_v1_7.execution_report_trade_break_message.size(buffer, offset)
  end
  -- Size of Execution Report Restatement Message
  if template_id == 22 then
    return memx_options_memo_sbe_v1_7.execution_report_restatement_message.size(buffer, offset)
  end
  -- Size of Pending Mass Cancel Message
  if template_id == 23 then
    return memx_options_memo_sbe_v1_7.pending_mass_cancel_message.size(buffer, offset)
  end
  -- Size of Mass Cancel Reject Message
  if template_id == 24 then
    return memx_options_memo_sbe_v1_7.mass_cancel_reject_message.size(buffer, offset)
  end
  -- Size of Mass Cancel Done Message
  if template_id == 25 then
    return memx_options_memo_sbe_v1_7.mass_cancel_done_message.size(buffer, offset)
  end
  -- Size of Order Cancel Reject Message
  if template_id == 26 then
    return memx_options_memo_sbe_v1_7.order_cancel_reject_message.size(buffer, offset)
  end
  -- Size of Allocation Instruction Ack Message
  if template_id == 27 then
    return memx_options_memo_sbe_v1_7.allocation_instruction_ack_message.size(buffer, offset)
  end
  -- Size of Allocation Instruction Alert Message
  if template_id == 28 then
    return memx_options_memo_sbe_v1_7.allocation_instruction_alert_message.size(buffer, offset)
  end
  -- Size of User Notification Message
  if template_id == 29 then
    return memx_options_memo_sbe_v1_7.user_notification_message.size(buffer, offset)
  end
  -- Size of Mass Cancel Clear Lockout Reject Message
  if template_id == 30 then
    return memx_options_memo_sbe_v1_7.mass_cancel_clear_lockout_reject_message.size(buffer, offset)
  end
  -- Size of Mass Cancel Clear Lockout Done Message
  if template_id == 31 then
    return memx_options_memo_sbe_v1_7.mass_cancel_clear_lockout_done_message.size(buffer, offset)
  end
  -- Size of Mass Cancel Bulk Clear Lockout Reject Message
  if template_id == 35 then
    return memx_options_memo_sbe_v1_7.mass_cancel_bulk_clear_lockout_reject_message.size(buffer, offset)
  end
  -- Size of Mass Cancel Bulk Clear Lockout Accepted Message
  if template_id == 36 then
    return memx_options_memo_sbe_v1_7.mass_cancel_bulk_clear_lockout_accepted_message.size(buffer, offset)
  end

  return 0
end

-- Display: Payload
memx_options_memo_sbe_v1_7.payload.display = function(buffer, offset, packet, parent)
  return ""
end

-- Dissect Branches: Payload
memx_options_memo_sbe_v1_7.payload.branches = function(buffer, offset, packet, parent, template_id)
  -- Dissect New Order Single Message
  if template_id == 1 then
    return memx_options_memo_sbe_v1_7.new_order_single_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Short Two Sided Bulk Quote Message
  if template_id == 2 then
    return memx_options_memo_sbe_v1_7.short_two_sided_bulk_quote_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Long Two Sided Bulk Quote Message
  if template_id == 3 then
    return memx_options_memo_sbe_v1_7.long_two_sided_bulk_quote_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Short One Sided Bulk Quote Message
  if template_id == 4 then
    return memx_options_memo_sbe_v1_7.short_one_sided_bulk_quote_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Long One Sided Bulk Quote Message
  if template_id == 5 then
    return memx_options_memo_sbe_v1_7.long_one_sided_bulk_quote_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Order Cancel Replace Request Message
  if template_id == 6 then
    return memx_options_memo_sbe_v1_7.order_cancel_replace_request_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Order Cancel Request Message
  if template_id == 7 then
    return memx_options_memo_sbe_v1_7.order_cancel_request_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Mass Cancel Request Message
  if template_id == 8 then
    return memx_options_memo_sbe_v1_7.mass_cancel_request_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Mass Cancel Clear Lockout Request Message
  if template_id == 9 then
    return memx_options_memo_sbe_v1_7.mass_cancel_clear_lockout_request_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Mass Cancel Bulk Clear All Lockouts Request Message
  if template_id == 32 then
    return memx_options_memo_sbe_v1_7.mass_cancel_bulk_clear_all_lockouts_request_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Mass Cancel Bulk Clear Lockouts By Efid Or Underlier Request Message
  if template_id == 33 then
    return memx_options_memo_sbe_v1_7.mass_cancel_bulk_clear_lockouts_by_efid_or_underlier_request_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Allocation Instruction Message
  if template_id == 10 then
    return memx_options_memo_sbe_v1_7.allocation_instruction_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Execution Report New Message
  if template_id == 11 then
    return memx_options_memo_sbe_v1_7.execution_report_new_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Execution Report Bulk Quote Pending New Message
  if template_id == 12 then
    return memx_options_memo_sbe_v1_7.execution_report_bulk_quote_pending_new_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Execution Report Bulk Quote Component New Message
  if template_id == 13 then
    return memx_options_memo_sbe_v1_7.execution_report_bulk_quote_component_new_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Execution Report Rejected Message
  if template_id == 14 then
    return memx_options_memo_sbe_v1_7.execution_report_rejected_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Execution Report Trade Message
  if template_id == 15 then
    return memx_options_memo_sbe_v1_7.execution_report_trade_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Execution Report Pending Cancel Message
  if template_id == 16 then
    return memx_options_memo_sbe_v1_7.execution_report_pending_cancel_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Execution Report Canceled Message
  if template_id == 17 then
    return memx_options_memo_sbe_v1_7.execution_report_canceled_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Execution Report Pending Replace Message
  if template_id == 18 then
    return memx_options_memo_sbe_v1_7.execution_report_pending_replace_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Execution Report Replaced Message
  if template_id == 19 then
    return memx_options_memo_sbe_v1_7.execution_report_replaced_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Execution Report Trade Correction Message
  if template_id == 20 then
    return memx_options_memo_sbe_v1_7.execution_report_trade_correction_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Execution Report Trade Break Message
  if template_id == 21 then
    return memx_options_memo_sbe_v1_7.execution_report_trade_break_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Execution Report Restatement Message
  if template_id == 22 then
    return memx_options_memo_sbe_v1_7.execution_report_restatement_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Pending Mass Cancel Message
  if template_id == 23 then
    return memx_options_memo_sbe_v1_7.pending_mass_cancel_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Mass Cancel Reject Message
  if template_id == 24 then
    return memx_options_memo_sbe_v1_7.mass_cancel_reject_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Mass Cancel Done Message
  if template_id == 25 then
    return memx_options_memo_sbe_v1_7.mass_cancel_done_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Order Cancel Reject Message
  if template_id == 26 then
    return memx_options_memo_sbe_v1_7.order_cancel_reject_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Allocation Instruction Ack Message
  if template_id == 27 then
    return memx_options_memo_sbe_v1_7.allocation_instruction_ack_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Allocation Instruction Alert Message
  if template_id == 28 then
    return memx_options_memo_sbe_v1_7.allocation_instruction_alert_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect User Notification Message
  if template_id == 29 then
    return memx_options_memo_sbe_v1_7.user_notification_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Mass Cancel Clear Lockout Reject Message
  if template_id == 30 then
    return memx_options_memo_sbe_v1_7.mass_cancel_clear_lockout_reject_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Mass Cancel Clear Lockout Done Message
  if template_id == 31 then
    return memx_options_memo_sbe_v1_7.mass_cancel_clear_lockout_done_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Mass Cancel Bulk Clear Lockout Reject Message
  if template_id == 35 then
    return memx_options_memo_sbe_v1_7.mass_cancel_bulk_clear_lockout_reject_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Mass Cancel Bulk Clear Lockout Accepted Message
  if template_id == 36 then
    return memx_options_memo_sbe_v1_7.mass_cancel_bulk_clear_lockout_accepted_message.dissect(buffer, offset, packet, parent)
  end

  return offset
end

-- Dissect: Payload
memx_options_memo_sbe_v1_7.payload.dissect = function(buffer, offset, packet, parent, template_id)
  if not show.payload then
    return memx_options_memo_sbe_v1_7.payload.branches(buffer, offset, packet, parent, template_id)
  end

  -- Calculate size and check that branch is not empty
  local size = memx_options_memo_sbe_v1_7.payload.size(buffer, offset, template_id)
  if size == 0 then
    return offset
  end

  -- Dissect Element
  local range = buffer(offset, size)
  local display = memx_options_memo_sbe_v1_7.payload.display(buffer, packet, parent)
  local element = parent:add(omi_memx_options_memo_sbe_v1_7.fields.payload, range, display)

  return memx_options_memo_sbe_v1_7.payload.branches(buffer, offset, packet, parent, template_id)
end

-- Version
memx_options_memo_sbe_v1_7.version = {}

-- Size: Version
memx_options_memo_sbe_v1_7.version.size = 2

-- Display: Version
memx_options_memo_sbe_v1_7.version.display = function(value)
  return "Version: "..value
end

-- Dissect: Version
memx_options_memo_sbe_v1_7.version.dissect = function(buffer, offset, packet, parent)
  local length = memx_options_memo_sbe_v1_7.version.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = memx_options_memo_sbe_v1_7.version.display(value, buffer, offset, packet, parent)

  parent:add(omi_memx_options_memo_sbe_v1_7.fields.version, range, value, display)

  return offset + length, value
end

-- Schema Id
memx_options_memo_sbe_v1_7.schema_id = {}

-- Size: Schema Id
memx_options_memo_sbe_v1_7.schema_id.size = 1

-- Display: Schema Id
memx_options_memo_sbe_v1_7.schema_id.display = function(value)
  return "Schema Id: "..value
end

-- Dissect: Schema Id
memx_options_memo_sbe_v1_7.schema_id.dissect = function(buffer, offset, packet, parent)
  local length = memx_options_memo_sbe_v1_7.schema_id.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = memx_options_memo_sbe_v1_7.schema_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_memx_options_memo_sbe_v1_7.fields.schema_id, range, value, display)

  return offset + length, value
end

-- Template Id
memx_options_memo_sbe_v1_7.template_id = {}

-- Size: Template Id
memx_options_memo_sbe_v1_7.template_id.size = 1

-- Display: Template Id
memx_options_memo_sbe_v1_7.template_id.display = function(value)
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
memx_options_memo_sbe_v1_7.template_id.dissect = function(buffer, offset, packet, parent)
  local length = memx_options_memo_sbe_v1_7.template_id.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = memx_options_memo_sbe_v1_7.template_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_memx_options_memo_sbe_v1_7.fields.template_id, range, value, display)

  return offset + length, value
end

-- Block Length
memx_options_memo_sbe_v1_7.block_length = {}

-- Size: Block Length
memx_options_memo_sbe_v1_7.block_length.size = 2

-- Display: Block Length
memx_options_memo_sbe_v1_7.block_length.display = function(value)
  return "Block Length: "..value
end

-- Dissect: Block Length
memx_options_memo_sbe_v1_7.block_length.dissect = function(buffer, offset, packet, parent)
  local length = memx_options_memo_sbe_v1_7.block_length.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = memx_options_memo_sbe_v1_7.block_length.display(value, buffer, offset, packet, parent)

  parent:add(omi_memx_options_memo_sbe_v1_7.fields.block_length, range, value, display)

  return offset + length, value
end

-- Sbe Header
memx_options_memo_sbe_v1_7.sbe_header = {}

-- Calculate size of: Sbe Header
memx_options_memo_sbe_v1_7.sbe_header.size = function(buffer, offset)
  local index = 0

  index = index + memx_options_memo_sbe_v1_7.block_length.size

  index = index + memx_options_memo_sbe_v1_7.template_id.size

  index = index + memx_options_memo_sbe_v1_7.schema_id.size

  index = index + memx_options_memo_sbe_v1_7.version.size

  return index
end

-- Display: Sbe Header
memx_options_memo_sbe_v1_7.sbe_header.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Sbe Header
memx_options_memo_sbe_v1_7.sbe_header.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Block Length: 2 Byte Unsigned Fixed Width Integer
  index, block_length = memx_options_memo_sbe_v1_7.block_length.dissect(buffer, index, packet, parent)

  -- Template Id: 1 Byte Unsigned Fixed Width Integer Enum with 35 values
  index, template_id = memx_options_memo_sbe_v1_7.template_id.dissect(buffer, index, packet, parent)

  -- Schema Id: 1 Byte Unsigned Fixed Width Integer Static
  index, schema_id = memx_options_memo_sbe_v1_7.schema_id.dissect(buffer, index, packet, parent)

  -- Version: 2 Byte Unsigned Fixed Width Integer Static
  index, version = memx_options_memo_sbe_v1_7.version.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Sbe Header
memx_options_memo_sbe_v1_7.sbe_header.dissect = function(buffer, offset, packet, parent)
  if show.sbe_header then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_memx_options_memo_sbe_v1_7.fields.sbe_header, buffer(offset, 0))
    local index = memx_options_memo_sbe_v1_7.sbe_header.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = memx_options_memo_sbe_v1_7.sbe_header.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return memx_options_memo_sbe_v1_7.sbe_header.fields(buffer, offset, packet, parent)
  end
end

-- Sbe Message
memx_options_memo_sbe_v1_7.sbe_message = {}

-- Calculate size of: Sbe Message
memx_options_memo_sbe_v1_7.sbe_message.size = function(buffer, offset)
  local index = 0

  index = index + memx_options_memo_sbe_v1_7.sbe_header.size(buffer, offset + index)

  -- Calculate runtime size of Payload field
  local payload_offset = offset + index
  local payload_type = buffer(payload_offset - 4, 1):uint()
  index = index + memx_options_memo_sbe_v1_7.payload.size(buffer, payload_offset, payload_type)

  return index
end

-- Display: Sbe Message
memx_options_memo_sbe_v1_7.sbe_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Sbe Message
memx_options_memo_sbe_v1_7.sbe_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Sbe Header: Struct of 4 fields
  index, sbe_header = memx_options_memo_sbe_v1_7.sbe_header.dissect(buffer, index, packet, parent)

  -- Dependency element: Template Id
  local template_id = buffer(index - 4, 1):uint()

  -- Payload: Runtime Type with 35 branches
  index = memx_options_memo_sbe_v1_7.payload.dissect(buffer, index, packet, parent, template_id)

  return index
end

-- Dissect: Sbe Message
memx_options_memo_sbe_v1_7.sbe_message.dissect = function(buffer, offset, packet, parent)
  -- Optionally add dynamic struct element to protocol tree
  if show.sbe_message then
    local length = memx_options_memo_sbe_v1_7.sbe_message.size(buffer, offset)
    local range = buffer(offset, length)
    local display = memx_options_memo_sbe_v1_7.sbe_message.display(buffer, packet, parent)
    parent = parent:add(omi_memx_options_memo_sbe_v1_7.fields.sbe_message, range, display)
  end

  return memx_options_memo_sbe_v1_7.sbe_message.fields(buffer, offset, packet, parent)
end

-- Sequenced Message
memx_options_memo_sbe_v1_7.sequenced_message = {}

-- Calculate size of: Sequenced Message
memx_options_memo_sbe_v1_7.sequenced_message.size = function(buffer, offset)
  local index = 0

  index = index + memx_options_memo_sbe_v1_7.sbe_message.size(buffer, offset + index)

  return index
end

-- Display: Sequenced Message
memx_options_memo_sbe_v1_7.sequenced_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Sequenced Message
memx_options_memo_sbe_v1_7.sequenced_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Sbe Message: Struct of 2 fields
  index, sbe_message = memx_options_memo_sbe_v1_7.sbe_message.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Sequenced Message
memx_options_memo_sbe_v1_7.sequenced_message.dissect = function(buffer, offset, packet, parent)
  -- Optionally add dynamic struct element to protocol tree
  if show.sequenced_message then
    local length = memx_options_memo_sbe_v1_7.sequenced_message.size(buffer, offset)
    local range = buffer(offset, length)
    local display = memx_options_memo_sbe_v1_7.sequenced_message.display(buffer, packet, parent)
    parent = parent:add(omi_memx_options_memo_sbe_v1_7.fields.sequenced_message, range, display)
  end

  return memx_options_memo_sbe_v1_7.sequenced_message.fields(buffer, offset, packet, parent)
end

-- Total Sequence Count
memx_options_memo_sbe_v1_7.total_sequence_count = {}

-- Size: Total Sequence Count
memx_options_memo_sbe_v1_7.total_sequence_count.size = 8

-- Display: Total Sequence Count
memx_options_memo_sbe_v1_7.total_sequence_count.display = function(value)
  return "Total Sequence Count: "..value
end

-- Dissect: Total Sequence Count
memx_options_memo_sbe_v1_7.total_sequence_count.dissect = function(buffer, offset, packet, parent)
  local length = memx_options_memo_sbe_v1_7.total_sequence_count.size
  local range = buffer(offset, length)
  local value = range:uint64()
  local display = memx_options_memo_sbe_v1_7.total_sequence_count.display(value, buffer, offset, packet, parent)

  parent:add(omi_memx_options_memo_sbe_v1_7.fields.total_sequence_count, range, value, display)

  return offset + length, value
end

-- Stream Complete Message
memx_options_memo_sbe_v1_7.stream_complete_message = {}

-- Calculate size of: Stream Complete Message
memx_options_memo_sbe_v1_7.stream_complete_message.size = function(buffer, offset)
  local index = 0

  index = index + memx_options_memo_sbe_v1_7.total_sequence_count.size

  return index
end

-- Display: Stream Complete Message
memx_options_memo_sbe_v1_7.stream_complete_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Stream Complete Message
memx_options_memo_sbe_v1_7.stream_complete_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Total Sequence Count: 8 Byte Unsigned Fixed Width Integer
  index, total_sequence_count = memx_options_memo_sbe_v1_7.total_sequence_count.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Stream Complete Message
memx_options_memo_sbe_v1_7.stream_complete_message.dissect = function(buffer, offset, packet, parent)
  if show.stream_complete_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_memx_options_memo_sbe_v1_7.fields.stream_complete_message, buffer(offset, 0))
    local index = memx_options_memo_sbe_v1_7.stream_complete_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = memx_options_memo_sbe_v1_7.stream_complete_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return memx_options_memo_sbe_v1_7.stream_complete_message.fields(buffer, offset, packet, parent)
  end
end

-- Stream Reject Code
memx_options_memo_sbe_v1_7.stream_reject_code = {}

-- Size: Stream Reject Code
memx_options_memo_sbe_v1_7.stream_reject_code.size = 1

-- Display: Stream Reject Code
memx_options_memo_sbe_v1_7.stream_reject_code.display = function(value)
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
memx_options_memo_sbe_v1_7.stream_reject_code.dissect = function(buffer, offset, packet, parent)
  local length = memx_options_memo_sbe_v1_7.stream_reject_code.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = memx_options_memo_sbe_v1_7.stream_reject_code.display(value, buffer, offset, packet, parent)

  parent:add(omi_memx_options_memo_sbe_v1_7.fields.stream_reject_code, range, value, display)

  return offset + length, value
end

-- Stream Rejected Message
memx_options_memo_sbe_v1_7.stream_rejected_message = {}

-- Calculate size of: Stream Rejected Message
memx_options_memo_sbe_v1_7.stream_rejected_message.size = function(buffer, offset)
  local index = 0

  index = index + memx_options_memo_sbe_v1_7.stream_reject_code.size

  return index
end

-- Display: Stream Rejected Message
memx_options_memo_sbe_v1_7.stream_rejected_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Stream Rejected Message
memx_options_memo_sbe_v1_7.stream_rejected_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Stream Reject Code: 1 Byte Ascii String Enum with 3 values
  index, stream_reject_code = memx_options_memo_sbe_v1_7.stream_reject_code.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Stream Rejected Message
memx_options_memo_sbe_v1_7.stream_rejected_message.dissect = function(buffer, offset, packet, parent)
  if show.stream_rejected_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_memx_options_memo_sbe_v1_7.fields.stream_rejected_message, buffer(offset, 0))
    local index = memx_options_memo_sbe_v1_7.stream_rejected_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = memx_options_memo_sbe_v1_7.stream_rejected_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return memx_options_memo_sbe_v1_7.stream_rejected_message.fields(buffer, offset, packet, parent)
  end
end

-- Max Sequence Number
memx_options_memo_sbe_v1_7.max_sequence_number = {}

-- Next Sequence Number
memx_options_memo_sbe_v1_7.next_sequence_number = {}

-- Size: Next Sequence Number
memx_options_memo_sbe_v1_7.next_sequence_number.size = 8

-- Display: Next Sequence Number
memx_options_memo_sbe_v1_7.next_sequence_number.display = function(value)
  return "Next Sequence Number: "..value
end

-- Dissect: Next Sequence Number
memx_options_memo_sbe_v1_7.next_sequence_number.dissect = function(buffer, offset, packet, parent)
  local length = memx_options_memo_sbe_v1_7.next_sequence_number.size
  local range = buffer(offset, length)
  local value = range:uint64()
  local display = memx_options_memo_sbe_v1_7.next_sequence_number.display(value, buffer, offset, packet, parent)

  parent:add(omi_memx_options_memo_sbe_v1_7.fields.next_sequence_number, range, value, display)

  return offset + length, value
end

-- Stream Begin Message
memx_options_memo_sbe_v1_7.stream_begin_message = {}

-- Calculate size of: Stream Begin Message
memx_options_memo_sbe_v1_7.stream_begin_message.size = function(buffer, offset)
  local index = 0

  index = index + memx_options_memo_sbe_v1_7.next_sequence_number.size

  index = index + memx_options_memo_sbe_v1_7.max_sequence_number.size

  return index
end

-- Display: Stream Begin Message
memx_options_memo_sbe_v1_7.stream_begin_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Stream Begin Message
memx_options_memo_sbe_v1_7.stream_begin_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Next Sequence Number: 8 Byte Unsigned Fixed Width Integer
  index, next_sequence_number = memx_options_memo_sbe_v1_7.next_sequence_number.dissect(buffer, index, packet, parent)

  -- Max Sequence Number
  index, max_sequence_number = memx_options_memo_sbe_v1_7.max_sequence_number.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Stream Begin Message
memx_options_memo_sbe_v1_7.stream_begin_message.dissect = function(buffer, offset, packet, parent)
  if show.stream_begin_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_memx_options_memo_sbe_v1_7.fields.stream_begin_message, buffer(offset, 0))
    local index = memx_options_memo_sbe_v1_7.stream_begin_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = memx_options_memo_sbe_v1_7.stream_begin_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return memx_options_memo_sbe_v1_7.stream_begin_message.fields(buffer, offset, packet, parent)
  end
end

-- Message Count
memx_options_memo_sbe_v1_7.message_count = {}

-- Size: Message Count
memx_options_memo_sbe_v1_7.message_count.size = 8

-- Display: Message Count
memx_options_memo_sbe_v1_7.message_count.display = function(value)
  return "Message Count: "..value
end

-- Dissect: Message Count
memx_options_memo_sbe_v1_7.message_count.dissect = function(buffer, offset, packet, parent)
  local length = memx_options_memo_sbe_v1_7.message_count.size
  local range = buffer(offset, length)
  local value = range:uint64()
  local display = memx_options_memo_sbe_v1_7.message_count.display(value, buffer, offset, packet, parent)

  parent:add(omi_memx_options_memo_sbe_v1_7.fields.message_count, range, value, display)

  return offset + length, value
end

-- Replay Complete Message
memx_options_memo_sbe_v1_7.replay_complete_message = {}

-- Calculate size of: Replay Complete Message
memx_options_memo_sbe_v1_7.replay_complete_message.size = function(buffer, offset)
  local index = 0

  index = index + memx_options_memo_sbe_v1_7.message_count.size

  return index
end

-- Display: Replay Complete Message
memx_options_memo_sbe_v1_7.replay_complete_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Replay Complete Message
memx_options_memo_sbe_v1_7.replay_complete_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Message Count: 8 Byte Unsigned Fixed Width Integer
  index, message_count = memx_options_memo_sbe_v1_7.message_count.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Replay Complete Message
memx_options_memo_sbe_v1_7.replay_complete_message.dissect = function(buffer, offset, packet, parent)
  if show.replay_complete_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_memx_options_memo_sbe_v1_7.fields.replay_complete_message, buffer(offset, 0))
    local index = memx_options_memo_sbe_v1_7.replay_complete_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = memx_options_memo_sbe_v1_7.replay_complete_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return memx_options_memo_sbe_v1_7.replay_complete_message.fields(buffer, offset, packet, parent)
  end
end

-- Replay Reject Code
memx_options_memo_sbe_v1_7.replay_reject_code = {}

-- Size: Replay Reject Code
memx_options_memo_sbe_v1_7.replay_reject_code.size = 1

-- Display: Replay Reject Code
memx_options_memo_sbe_v1_7.replay_reject_code.display = function(value)
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
memx_options_memo_sbe_v1_7.replay_reject_code.dissect = function(buffer, offset, packet, parent)
  local length = memx_options_memo_sbe_v1_7.replay_reject_code.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = memx_options_memo_sbe_v1_7.replay_reject_code.display(value, buffer, offset, packet, parent)

  parent:add(omi_memx_options_memo_sbe_v1_7.fields.replay_reject_code, range, value, display)

  return offset + length, value
end

-- Replay Rejected Message
memx_options_memo_sbe_v1_7.replay_rejected_message = {}

-- Calculate size of: Replay Rejected Message
memx_options_memo_sbe_v1_7.replay_rejected_message.size = function(buffer, offset)
  local index = 0

  index = index + memx_options_memo_sbe_v1_7.replay_reject_code.size

  return index
end

-- Display: Replay Rejected Message
memx_options_memo_sbe_v1_7.replay_rejected_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Replay Rejected Message
memx_options_memo_sbe_v1_7.replay_rejected_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Replay Reject Code: 1 Byte Ascii String Enum with 4 values
  index, replay_reject_code = memx_options_memo_sbe_v1_7.replay_reject_code.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Replay Rejected Message
memx_options_memo_sbe_v1_7.replay_rejected_message.dissect = function(buffer, offset, packet, parent)
  if show.replay_rejected_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_memx_options_memo_sbe_v1_7.fields.replay_rejected_message, buffer(offset, 0))
    local index = memx_options_memo_sbe_v1_7.replay_rejected_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = memx_options_memo_sbe_v1_7.replay_rejected_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return memx_options_memo_sbe_v1_7.replay_rejected_message.fields(buffer, offset, packet, parent)
  end
end

-- Pending Message Count
memx_options_memo_sbe_v1_7.pending_message_count = {}

-- Size: Pending Message Count
memx_options_memo_sbe_v1_7.pending_message_count.size = 4

-- Display: Pending Message Count
memx_options_memo_sbe_v1_7.pending_message_count.display = function(value)
  return "Pending Message Count: "..value
end

-- Dissect: Pending Message Count
memx_options_memo_sbe_v1_7.pending_message_count.dissect = function(buffer, offset, packet, parent)
  local length = memx_options_memo_sbe_v1_7.pending_message_count.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = memx_options_memo_sbe_v1_7.pending_message_count.display(value, buffer, offset, packet, parent)

  parent:add(omi_memx_options_memo_sbe_v1_7.fields.pending_message_count, range, value, display)

  return offset + length, value
end

-- Replay Begin Message
memx_options_memo_sbe_v1_7.replay_begin_message = {}

-- Calculate size of: Replay Begin Message
memx_options_memo_sbe_v1_7.replay_begin_message.size = function(buffer, offset)
  local index = 0

  index = index + memx_options_memo_sbe_v1_7.next_sequence_number.size

  index = index + memx_options_memo_sbe_v1_7.pending_message_count.size

  return index
end

-- Display: Replay Begin Message
memx_options_memo_sbe_v1_7.replay_begin_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Replay Begin Message
memx_options_memo_sbe_v1_7.replay_begin_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Next Sequence Number: 8 Byte Unsigned Fixed Width Integer
  index, next_sequence_number = memx_options_memo_sbe_v1_7.next_sequence_number.dissect(buffer, index, packet, parent)

  -- Pending Message Count: 4 Byte Unsigned Fixed Width Integer
  index, pending_message_count = memx_options_memo_sbe_v1_7.pending_message_count.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Replay Begin Message
memx_options_memo_sbe_v1_7.replay_begin_message.dissect = function(buffer, offset, packet, parent)
  if show.replay_begin_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_memx_options_memo_sbe_v1_7.fields.replay_begin_message, buffer(offset, 0))
    local index = memx_options_memo_sbe_v1_7.replay_begin_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = memx_options_memo_sbe_v1_7.replay_begin_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return memx_options_memo_sbe_v1_7.replay_begin_message.fields(buffer, offset, packet, parent)
  end
end

-- Session Id
memx_options_memo_sbe_v1_7.session_id = {}

-- Size: Session Id
memx_options_memo_sbe_v1_7.session_id.size = 8

-- Display: Session Id
memx_options_memo_sbe_v1_7.session_id.display = function(value)
  return "Session Id: "..value
end

-- Dissect: Session Id
memx_options_memo_sbe_v1_7.session_id.dissect = function(buffer, offset, packet, parent)
  local length = memx_options_memo_sbe_v1_7.session_id.size
  local range = buffer(offset, length)
  local value = range:uint64()
  local display = memx_options_memo_sbe_v1_7.session_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_memx_options_memo_sbe_v1_7.fields.session_id, range, value, display)

  return offset + length, value
end

-- Start Of Session Message
memx_options_memo_sbe_v1_7.start_of_session_message = {}

-- Calculate size of: Start Of Session Message
memx_options_memo_sbe_v1_7.start_of_session_message.size = function(buffer, offset)
  local index = 0

  index = index + memx_options_memo_sbe_v1_7.session_id.size

  return index
end

-- Display: Start Of Session Message
memx_options_memo_sbe_v1_7.start_of_session_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Start Of Session Message
memx_options_memo_sbe_v1_7.start_of_session_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Session Id: 8 Byte Unsigned Fixed Width Integer
  index, session_id = memx_options_memo_sbe_v1_7.session_id.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Start Of Session Message
memx_options_memo_sbe_v1_7.start_of_session_message.dissect = function(buffer, offset, packet, parent)
  if show.start_of_session_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_memx_options_memo_sbe_v1_7.fields.start_of_session_message, buffer(offset, 0))
    local index = memx_options_memo_sbe_v1_7.start_of_session_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = memx_options_memo_sbe_v1_7.start_of_session_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return memx_options_memo_sbe_v1_7.start_of_session_message.fields(buffer, offset, packet, parent)
  end
end

-- Login Reject Code
memx_options_memo_sbe_v1_7.login_reject_code = {}

-- Size: Login Reject Code
memx_options_memo_sbe_v1_7.login_reject_code.size = 1

-- Display: Login Reject Code
memx_options_memo_sbe_v1_7.login_reject_code.display = function(value)
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
memx_options_memo_sbe_v1_7.login_reject_code.dissect = function(buffer, offset, packet, parent)
  local length = memx_options_memo_sbe_v1_7.login_reject_code.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = memx_options_memo_sbe_v1_7.login_reject_code.display(value, buffer, offset, packet, parent)

  parent:add(omi_memx_options_memo_sbe_v1_7.fields.login_reject_code, range, value, display)

  return offset + length, value
end

-- Login Rejected Message
memx_options_memo_sbe_v1_7.login_rejected_message = {}

-- Calculate size of: Login Rejected Message
memx_options_memo_sbe_v1_7.login_rejected_message.size = function(buffer, offset)
  local index = 0

  index = index + memx_options_memo_sbe_v1_7.login_reject_code.size

  return index
end

-- Display: Login Rejected Message
memx_options_memo_sbe_v1_7.login_rejected_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Login Rejected Message
memx_options_memo_sbe_v1_7.login_rejected_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Login Reject Code: 1 Byte Ascii String Enum with 4 values
  index, login_reject_code = memx_options_memo_sbe_v1_7.login_reject_code.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Login Rejected Message
memx_options_memo_sbe_v1_7.login_rejected_message.dissect = function(buffer, offset, packet, parent)
  if show.login_rejected_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_memx_options_memo_sbe_v1_7.fields.login_rejected_message, buffer(offset, 0))
    local index = memx_options_memo_sbe_v1_7.login_rejected_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = memx_options_memo_sbe_v1_7.login_rejected_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return memx_options_memo_sbe_v1_7.login_rejected_message.fields(buffer, offset, packet, parent)
  end
end

-- Supported Request Mode
memx_options_memo_sbe_v1_7.supported_request_mode = {}

-- Size: Supported Request Mode
memx_options_memo_sbe_v1_7.supported_request_mode.size = 1

-- Display: Supported Request Mode
memx_options_memo_sbe_v1_7.supported_request_mode.display = function(value)
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
memx_options_memo_sbe_v1_7.supported_request_mode.dissect = function(buffer, offset, packet, parent)
  local length = memx_options_memo_sbe_v1_7.supported_request_mode.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = memx_options_memo_sbe_v1_7.supported_request_mode.display(value, buffer, offset, packet, parent)

  parent:add(omi_memx_options_memo_sbe_v1_7.fields.supported_request_mode, range, value, display)

  return offset + length, value
end

-- Login Accepted Message
memx_options_memo_sbe_v1_7.login_accepted_message = {}

-- Calculate size of: Login Accepted Message
memx_options_memo_sbe_v1_7.login_accepted_message.size = function(buffer, offset)
  local index = 0

  index = index + memx_options_memo_sbe_v1_7.supported_request_mode.size

  return index
end

-- Display: Login Accepted Message
memx_options_memo_sbe_v1_7.login_accepted_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Login Accepted Message
memx_options_memo_sbe_v1_7.login_accepted_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Supported Request Mode: 1 Byte Ascii String Enum with 3 values
  index, supported_request_mode = memx_options_memo_sbe_v1_7.supported_request_mode.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Login Accepted Message
memx_options_memo_sbe_v1_7.login_accepted_message.dissect = function(buffer, offset, packet, parent)
  if show.login_accepted_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_memx_options_memo_sbe_v1_7.fields.login_accepted_message, buffer(offset, 0))
    local index = memx_options_memo_sbe_v1_7.login_accepted_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = memx_options_memo_sbe_v1_7.login_accepted_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return memx_options_memo_sbe_v1_7.login_accepted_message.fields(buffer, offset, packet, parent)
  end
end

-- Unsequenced Message
memx_options_memo_sbe_v1_7.unsequenced_message = {}

-- Calculate size of: Unsequenced Message
memx_options_memo_sbe_v1_7.unsequenced_message.size = function(buffer, offset)
  local index = 0

  index = index + memx_options_memo_sbe_v1_7.sbe_message.size(buffer, offset + index)

  return index
end

-- Display: Unsequenced Message
memx_options_memo_sbe_v1_7.unsequenced_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Unsequenced Message
memx_options_memo_sbe_v1_7.unsequenced_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Sbe Message: Struct of 2 fields
  index, sbe_message = memx_options_memo_sbe_v1_7.sbe_message.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Unsequenced Message
memx_options_memo_sbe_v1_7.unsequenced_message.dissect = function(buffer, offset, packet, parent)
  -- Optionally add dynamic struct element to protocol tree
  if show.unsequenced_message then
    local length = memx_options_memo_sbe_v1_7.unsequenced_message.size(buffer, offset)
    local range = buffer(offset, length)
    local display = memx_options_memo_sbe_v1_7.unsequenced_message.display(buffer, packet, parent)
    parent = parent:add(omi_memx_options_memo_sbe_v1_7.fields.unsequenced_message, range, display)
  end

  return memx_options_memo_sbe_v1_7.unsequenced_message.fields(buffer, offset, packet, parent)
end

-- Stream Request Message
memx_options_memo_sbe_v1_7.stream_request_message = {}

-- Calculate size of: Stream Request Message
memx_options_memo_sbe_v1_7.stream_request_message.size = function(buffer, offset)
  local index = 0

  index = index + memx_options_memo_sbe_v1_7.session_id.size

  index = index + memx_options_memo_sbe_v1_7.next_sequence_number.size

  return index
end

-- Display: Stream Request Message
memx_options_memo_sbe_v1_7.stream_request_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Stream Request Message
memx_options_memo_sbe_v1_7.stream_request_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Session Id: 8 Byte Unsigned Fixed Width Integer
  index, session_id = memx_options_memo_sbe_v1_7.session_id.dissect(buffer, index, packet, parent)

  -- Next Sequence Number: 8 Byte Unsigned Fixed Width Integer
  index, next_sequence_number = memx_options_memo_sbe_v1_7.next_sequence_number.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Stream Request Message
memx_options_memo_sbe_v1_7.stream_request_message.dissect = function(buffer, offset, packet, parent)
  if show.stream_request_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_memx_options_memo_sbe_v1_7.fields.stream_request_message, buffer(offset, 0))
    local index = memx_options_memo_sbe_v1_7.stream_request_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = memx_options_memo_sbe_v1_7.stream_request_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return memx_options_memo_sbe_v1_7.stream_request_message.fields(buffer, offset, packet, parent)
  end
end

-- Replay All Request Message
memx_options_memo_sbe_v1_7.replay_all_request_message = {}

-- Calculate size of: Replay All Request Message
memx_options_memo_sbe_v1_7.replay_all_request_message.size = function(buffer, offset)
  local index = 0

  index = index + memx_options_memo_sbe_v1_7.session_id.size

  return index
end

-- Display: Replay All Request Message
memx_options_memo_sbe_v1_7.replay_all_request_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Replay All Request Message
memx_options_memo_sbe_v1_7.replay_all_request_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Session Id: 8 Byte Unsigned Fixed Width Integer
  index, session_id = memx_options_memo_sbe_v1_7.session_id.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Replay All Request Message
memx_options_memo_sbe_v1_7.replay_all_request_message.dissect = function(buffer, offset, packet, parent)
  if show.replay_all_request_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_memx_options_memo_sbe_v1_7.fields.replay_all_request_message, buffer(offset, 0))
    local index = memx_options_memo_sbe_v1_7.replay_all_request_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = memx_options_memo_sbe_v1_7.replay_all_request_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return memx_options_memo_sbe_v1_7.replay_all_request_message.fields(buffer, offset, packet, parent)
  end
end

-- Count
memx_options_memo_sbe_v1_7.count = {}

-- Size: Count
memx_options_memo_sbe_v1_7.count.size = 4

-- Display: Count
memx_options_memo_sbe_v1_7.count.display = function(value)
  return "Count: "..value
end

-- Dissect: Count
memx_options_memo_sbe_v1_7.count.dissect = function(buffer, offset, packet, parent)
  local length = memx_options_memo_sbe_v1_7.count.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = memx_options_memo_sbe_v1_7.count.display(value, buffer, offset, packet, parent)

  parent:add(omi_memx_options_memo_sbe_v1_7.fields.count, range, value, display)

  return offset + length, value
end

-- Replay Request Message
memx_options_memo_sbe_v1_7.replay_request_message = {}

-- Calculate size of: Replay Request Message
memx_options_memo_sbe_v1_7.replay_request_message.size = function(buffer, offset)
  local index = 0

  index = index + memx_options_memo_sbe_v1_7.session_id.size

  index = index + memx_options_memo_sbe_v1_7.next_sequence_number.size

  index = index + memx_options_memo_sbe_v1_7.count.size

  return index
end

-- Display: Replay Request Message
memx_options_memo_sbe_v1_7.replay_request_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Replay Request Message
memx_options_memo_sbe_v1_7.replay_request_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Session Id: 8 Byte Unsigned Fixed Width Integer
  index, session_id = memx_options_memo_sbe_v1_7.session_id.dissect(buffer, index, packet, parent)

  -- Next Sequence Number: 8 Byte Unsigned Fixed Width Integer
  index, next_sequence_number = memx_options_memo_sbe_v1_7.next_sequence_number.dissect(buffer, index, packet, parent)

  -- Count: 4 Byte Unsigned Fixed Width Integer
  index, count = memx_options_memo_sbe_v1_7.count.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Replay Request Message
memx_options_memo_sbe_v1_7.replay_request_message.dissect = function(buffer, offset, packet, parent)
  if show.replay_request_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_memx_options_memo_sbe_v1_7.fields.replay_request_message, buffer(offset, 0))
    local index = memx_options_memo_sbe_v1_7.replay_request_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = memx_options_memo_sbe_v1_7.replay_request_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return memx_options_memo_sbe_v1_7.replay_request_message.fields(buffer, offset, packet, parent)
  end
end

-- Token
memx_options_memo_sbe_v1_7.token = {}

-- Size: Token
memx_options_memo_sbe_v1_7.token.size = 1

-- Display: Token
memx_options_memo_sbe_v1_7.token.display = function(value)
  return "Token: "..value
end

-- Dissect: Token
memx_options_memo_sbe_v1_7.token.dissect = function(buffer, offset, packet, parent)
  local length = memx_options_memo_sbe_v1_7.token.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = memx_options_memo_sbe_v1_7.token.display(value, buffer, offset, packet, parent)

  parent:add(omi_memx_options_memo_sbe_v1_7.fields.token, range, value, display)

  return offset + length, value
end

-- Token Type
memx_options_memo_sbe_v1_7.token_type = {}

-- Size: Token Type
memx_options_memo_sbe_v1_7.token_type.size = 1

-- Display: Token Type
memx_options_memo_sbe_v1_7.token_type.display = function(value)
  return "Token Type: "..value
end

-- Dissect: Token Type
memx_options_memo_sbe_v1_7.token_type.dissect = function(buffer, offset, packet, parent)
  local length = memx_options_memo_sbe_v1_7.token_type.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = memx_options_memo_sbe_v1_7.token_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_memx_options_memo_sbe_v1_7.fields.token_type, range, value, display)

  return offset + length, value
end

-- Login Request Message
memx_options_memo_sbe_v1_7.login_request_message = {}

-- Calculate size of: Login Request Message
memx_options_memo_sbe_v1_7.login_request_message.size = function(buffer, offset)
  local index = 0

  index = index + memx_options_memo_sbe_v1_7.token_type.size

  index = index + memx_options_memo_sbe_v1_7.token.size

  return index
end

-- Display: Login Request Message
memx_options_memo_sbe_v1_7.login_request_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Login Request Message
memx_options_memo_sbe_v1_7.login_request_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Token Type: 1 Byte Ascii String
  index, token_type = memx_options_memo_sbe_v1_7.token_type.dissect(buffer, index, packet, parent)

  -- Token: 1 Byte Ascii String
  index, token = memx_options_memo_sbe_v1_7.token.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Login Request Message
memx_options_memo_sbe_v1_7.login_request_message.dissect = function(buffer, offset, packet, parent)
  if show.login_request_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_memx_options_memo_sbe_v1_7.fields.login_request_message, buffer(offset, 0))
    local index = memx_options_memo_sbe_v1_7.login_request_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = memx_options_memo_sbe_v1_7.login_request_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return memx_options_memo_sbe_v1_7.login_request_message.fields(buffer, offset, packet, parent)
  end
end

-- Data
memx_options_memo_sbe_v1_7.data = {}

-- Calculate runtime size of: Data
memx_options_memo_sbe_v1_7.data.size = function(buffer, offset, message_type)
  -- Size of Login Request Message
  if message_type == 100 then
    return memx_options_memo_sbe_v1_7.login_request_message.size(buffer, offset)
  end
  -- Size of Replay Request Message
  if message_type == 101 then
    return memx_options_memo_sbe_v1_7.replay_request_message.size(buffer, offset)
  end
  -- Size of Replay All Request Message
  if message_type == 102 then
    return memx_options_memo_sbe_v1_7.replay_all_request_message.size(buffer, offset)
  end
  -- Size of Stream Request Message
  if message_type == 103 then
    return memx_options_memo_sbe_v1_7.stream_request_message.size(buffer, offset)
  end
  -- Size of Unsequenced Message
  if message_type == 104 then
    return memx_options_memo_sbe_v1_7.unsequenced_message.size(buffer, offset)
  end
  -- Size of Login Accepted Message
  if message_type == 1 then
    return memx_options_memo_sbe_v1_7.login_accepted_message.size(buffer, offset)
  end
  -- Size of Login Rejected Message
  if message_type == 2 then
    return memx_options_memo_sbe_v1_7.login_rejected_message.size(buffer, offset)
  end
  -- Size of Start Of Session Message
  if message_type == 3 then
    return memx_options_memo_sbe_v1_7.start_of_session_message.size(buffer, offset)
  end
  -- Size of Replay Begin Message
  if message_type == 5 then
    return memx_options_memo_sbe_v1_7.replay_begin_message.size(buffer, offset)
  end
  -- Size of Replay Rejected Message
  if message_type == 6 then
    return memx_options_memo_sbe_v1_7.replay_rejected_message.size(buffer, offset)
  end
  -- Size of Replay Complete Message
  if message_type == 7 then
    return memx_options_memo_sbe_v1_7.replay_complete_message.size(buffer, offset)
  end
  -- Size of Stream Begin Message
  if message_type == 8 then
    return memx_options_memo_sbe_v1_7.stream_begin_message.size(buffer, offset)
  end
  -- Size of Stream Rejected Message
  if message_type == 9 then
    return memx_options_memo_sbe_v1_7.stream_rejected_message.size(buffer, offset)
  end
  -- Size of Stream Complete Message
  if message_type == 10 then
    return memx_options_memo_sbe_v1_7.stream_complete_message.size(buffer, offset)
  end
  -- Size of Sequenced Message
  if message_type == 11 then
    return memx_options_memo_sbe_v1_7.sequenced_message.size(buffer, offset)
  end

  return 0
end

-- Display: Data
memx_options_memo_sbe_v1_7.data.display = function(buffer, offset, packet, parent)
  return ""
end

-- Dissect Branches: Data
memx_options_memo_sbe_v1_7.data.branches = function(buffer, offset, packet, parent, message_type)
  -- Dissect Login Request Message
  if message_type == 100 then
    return memx_options_memo_sbe_v1_7.login_request_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Replay Request Message
  if message_type == 101 then
    return memx_options_memo_sbe_v1_7.replay_request_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Replay All Request Message
  if message_type == 102 then
    return memx_options_memo_sbe_v1_7.replay_all_request_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Stream Request Message
  if message_type == 103 then
    return memx_options_memo_sbe_v1_7.stream_request_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Unsequenced Message
  if message_type == 104 then
    return memx_options_memo_sbe_v1_7.unsequenced_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Login Accepted Message
  if message_type == 1 then
    return memx_options_memo_sbe_v1_7.login_accepted_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Login Rejected Message
  if message_type == 2 then
    return memx_options_memo_sbe_v1_7.login_rejected_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Start Of Session Message
  if message_type == 3 then
    return memx_options_memo_sbe_v1_7.start_of_session_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Replay Begin Message
  if message_type == 5 then
    return memx_options_memo_sbe_v1_7.replay_begin_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Replay Rejected Message
  if message_type == 6 then
    return memx_options_memo_sbe_v1_7.replay_rejected_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Replay Complete Message
  if message_type == 7 then
    return memx_options_memo_sbe_v1_7.replay_complete_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Stream Begin Message
  if message_type == 8 then
    return memx_options_memo_sbe_v1_7.stream_begin_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Stream Rejected Message
  if message_type == 9 then
    return memx_options_memo_sbe_v1_7.stream_rejected_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Stream Complete Message
  if message_type == 10 then
    return memx_options_memo_sbe_v1_7.stream_complete_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Sequenced Message
  if message_type == 11 then
    return memx_options_memo_sbe_v1_7.sequenced_message.dissect(buffer, offset, packet, parent)
  end

  return offset
end

-- Dissect: Data
memx_options_memo_sbe_v1_7.data.dissect = function(buffer, offset, packet, parent, message_type)
  if not show.data then
    return memx_options_memo_sbe_v1_7.data.branches(buffer, offset, packet, parent, message_type)
  end

  -- Calculate size and check that branch is not empty
  local size = memx_options_memo_sbe_v1_7.data.size(buffer, offset, message_type)
  if size == 0 then
    return offset
  end

  -- Dissect Element
  local range = buffer(offset, size)
  local display = memx_options_memo_sbe_v1_7.data.display(buffer, packet, parent)
  local element = parent:add(omi_memx_options_memo_sbe_v1_7.fields.data, range, display)

  return memx_options_memo_sbe_v1_7.data.branches(buffer, offset, packet, parent, message_type)
end

-- Message Length
memx_options_memo_sbe_v1_7.message_length = {}

-- Size: Message Length
memx_options_memo_sbe_v1_7.message_length.size = 2

-- Display: Message Length
memx_options_memo_sbe_v1_7.message_length.display = function(value)
  return "Message Length: "..value
end

-- Dissect: Message Length
memx_options_memo_sbe_v1_7.message_length.dissect = function(buffer, offset, packet, parent)
  local length = memx_options_memo_sbe_v1_7.message_length.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = memx_options_memo_sbe_v1_7.message_length.display(value, buffer, offset, packet, parent)

  parent:add(omi_memx_options_memo_sbe_v1_7.fields.message_length, range, value, display)

  return offset + length, value
end

-- Message Type
memx_options_memo_sbe_v1_7.message_type = {}

-- Size: Message Type
memx_options_memo_sbe_v1_7.message_type.size = 1

-- Display: Message Type
memx_options_memo_sbe_v1_7.message_type.display = function(value)
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
memx_options_memo_sbe_v1_7.message_type.dissect = function(buffer, offset, packet, parent)
  local length = memx_options_memo_sbe_v1_7.message_type.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = memx_options_memo_sbe_v1_7.message_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_memx_options_memo_sbe_v1_7.fields.message_type, range, value, display)

  return offset + length, value
end

-- Common Header
memx_options_memo_sbe_v1_7.common_header = {}

-- Calculate size of: Common Header
memx_options_memo_sbe_v1_7.common_header.size = function(buffer, offset)
  local index = 0

  index = index + memx_options_memo_sbe_v1_7.message_type.size

  index = index + memx_options_memo_sbe_v1_7.message_length.size

  return index
end

-- Display: Common Header
memx_options_memo_sbe_v1_7.common_header.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Common Header
memx_options_memo_sbe_v1_7.common_header.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Message Type: 1 Byte Unsigned Fixed Width Integer Enum with 16 values
  index, message_type = memx_options_memo_sbe_v1_7.message_type.dissect(buffer, index, packet, parent)

  -- Message Length: 2 Byte Unsigned Fixed Width Integer
  index, message_length = memx_options_memo_sbe_v1_7.message_length.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Common Header
memx_options_memo_sbe_v1_7.common_header.dissect = function(buffer, offset, packet, parent)
  if show.common_header then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_memx_options_memo_sbe_v1_7.fields.common_header, buffer(offset, 0))
    local index = memx_options_memo_sbe_v1_7.common_header.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = memx_options_memo_sbe_v1_7.common_header.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return memx_options_memo_sbe_v1_7.common_header.fields(buffer, offset, packet, parent)
  end
end

-- Packet
memx_options_memo_sbe_v1_7.packet = {}

-- Dissect Packet
memx_options_memo_sbe_v1_7.packet.dissect = function(buffer, packet, parent)
  local index = 0

  -- Common Header: Struct of 2 fields
  index, common_header = memx_options_memo_sbe_v1_7.common_header.dissect(buffer, index, packet, parent)

  -- Dependency element: Message Type
  local message_type = buffer(index - 3, 1):uint()

  -- Data: Runtime Type with 15 branches
  index = memx_options_memo_sbe_v1_7.data.dissect(buffer, index, packet, parent, message_type)

  return index
end


-----------------------------------------------------------------------
-- Protocol Dissector and Components
-----------------------------------------------------------------------

-- Initialize Dissector
function omi_memx_options_memo_sbe_v1_7.init()
end

-- Dissector for Memx Options Memo Sbe 1.7
function omi_memx_options_memo_sbe_v1_7.dissector(buffer, packet, parent)

  -- Set protocol name
  packet.cols.protocol = omi_memx_options_memo_sbe_v1_7.name

  -- Dissect protocol
  local protocol = parent:add(omi_memx_options_memo_sbe_v1_7, buffer(), omi_memx_options_memo_sbe_v1_7.description, "("..buffer:len().." Bytes)")
  return memx_options_memo_sbe_v1_7.packet.dissect(buffer, packet, protocol)
end

-- Register With Tcp Table
local tcp_table = DissectorTable.get("tcp.port")
tcp_table:add(65333, omi_memx_options_memo_sbe_v1_7)


-----------------------------------------------------------------------
-- Protocol Heuristics
-----------------------------------------------------------------------

-- Verify size of packet
memx_options_memo_sbe_v1_7.packet.requiredsize = function(buffer)

  return true
end

-- Verify Schema Id Field
memx_options_memo_sbe_v1_7.schema_id.verify = function(buffer)
  -- Attempt to read field
  local value = buffer(52, 1):uint()

  if value == 9 then
    return true
  end

  return false
end

-- Verify Version Field
memx_options_memo_sbe_v1_7.version.verify = function(buffer)
  -- Attempt to read field
  local value = buffer(53, 2):uint()

  if value == 263 then
    return true
  end

  return false
end

-- Verify Schema Id Field
memx_options_memo_sbe_v1_7.schema_id.verify = function(buffer)
  -- Attempt to read field
  local value = buffer(2534, 1):uint()

  if value == 9 then
    return true
  end

  return false
end

-- Verify Version Field
memx_options_memo_sbe_v1_7.version.verify = function(buffer)
  -- Attempt to read field
  local value = buffer(2535, 2):uint()

  if value == 263 then
    return true
  end

  return false
end

-- Dissector Heuristic for Memx Options Memo Sbe 1.7
local function omi_memx_options_memo_sbe_v1_7_heuristic(buffer, packet, parent)
  -- Verify packet length
  if not memx_options_memo_sbe_v1_7.packet.requiredsize(buffer) then return false end

  -- Verify Schema Id
  if not memx_options_memo_sbe_v1_7.schema_id.verify(buffer) then return false end

  -- Verify Version
  if not memx_options_memo_sbe_v1_7.version.verify(buffer) then return false end

  -- Verify Schema Id
  if not memx_options_memo_sbe_v1_7.schema_id.verify(buffer) then return false end

  -- Verify Version
  if not memx_options_memo_sbe_v1_7.version.verify(buffer) then return false end

  -- Protocol is valid, set conversation and dissect this packet
  packet.conversation = omi_memx_options_memo_sbe_v1_7
  omi_memx_options_memo_sbe_v1_7.dissector(buffer, packet, parent)

  return true
end

-- Register Heuristic for Memx Options Memo Sbe 1.7
omi_memx_options_memo_sbe_v1_7:register_heuristic("tcp", omi_memx_options_memo_sbe_v1_7_heuristic)

-----------------------------------------------------------------------
-- Lua dissectors are an easily edited and modified cross platform dissection solution.
-- Feel free to modify. Enjoy.
-----------------------------------------------------------------------
-- 
-- Protocol:
--   Organization: Members Exchange
--   Version: 1.7
--   Date: Wednesday, April 17, 2024
--   Specification: MEMO for US Options - SBE-v1_7a.pdf
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
