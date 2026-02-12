-----------------------------------------------------------------------
-- Lua Script Wireshark Dissector
-- 
-- Please see end of file for rules and regulations
-----------------------------------------------------------------------

-- Memx Equities Memo Sbe 1.12 Protocol
local omi_memx_equities_memo_sbe_v1_12 = Proto("Memx.Equities.Memo.Sbe.v1.12.Lua", "Memx Equities Memo Sbe 1.12")

-- Protocol table
local memx_equities_memo_sbe_v1_12 = {}

-----------------------------------------------------------------------
-- Declare Protocol Fields
-----------------------------------------------------------------------

-- Memx Equities Memo Sbe 1.12 Fields
omi_memx_equities_memo_sbe_v1_12.fields.block_length = ProtoField.new("Block Length", "memx.equities.memo.sbe.v1.12.blocklength", ftypes.UINT16)
omi_memx_equities_memo_sbe_v1_12.fields.cancel_group_id = ProtoField.new("Cancel Group Id", "memx.equities.memo.sbe.v1.12.cancelgroupid", ftypes.UINT16)
omi_memx_equities_memo_sbe_v1_12.fields.cancel_reason = ProtoField.new("Cancel Reason", "memx.equities.memo.sbe.v1.12.cancelreason", ftypes.UINT8)
omi_memx_equities_memo_sbe_v1_12.fields.clordid = ProtoField.new("ClOrdId", "memx.equities.memo.sbe.v1.12.clordid", ftypes.STRING)
omi_memx_equities_memo_sbe_v1_12.fields.common_header = ProtoField.new("Common Header", "memx.equities.memo.sbe.v1.12.commonheader", ftypes.STRING)
omi_memx_equities_memo_sbe_v1_12.fields.count = ProtoField.new("Count", "memx.equities.memo.sbe.v1.12.count", ftypes.UINT32)
omi_memx_equities_memo_sbe_v1_12.fields.cum_qty = ProtoField.new("Cum Qty", "memx.equities.memo.sbe.v1.12.cumqty", ftypes.UINT32)
omi_memx_equities_memo_sbe_v1_12.fields.cust_order_capacity = ProtoField.new("Cust Order Capacity", "memx.equities.memo.sbe.v1.12.custordercapacity", ftypes.UINT8)
omi_memx_equities_memo_sbe_v1_12.fields.cxl_rej_reason = ProtoField.new("Cxl Rej Reason", "memx.equities.memo.sbe.v1.12.cxlrejreason", ftypes.UINT8)
omi_memx_equities_memo_sbe_v1_12.fields.cxl_rej_response_to = ProtoField.new("Cxl Rej Response To", "memx.equities.memo.sbe.v1.12.cxlrejresponseto", ftypes.STRING)
omi_memx_equities_memo_sbe_v1_12.fields.data = ProtoField.new("Data", "memx.equities.memo.sbe.v1.12.data", ftypes.STRING)
omi_memx_equities_memo_sbe_v1_12.fields.display_method = ProtoField.new("Display Method", "memx.equities.memo.sbe.v1.12.displaymethod", ftypes.STRING)
omi_memx_equities_memo_sbe_v1_12.fields.display_min_incr = ProtoField.new("Display Min Incr", "memx.equities.memo.sbe.v1.12.displayminincr", ftypes.UINT32)
omi_memx_equities_memo_sbe_v1_12.fields.display_qty = ProtoField.new("Display Qty", "memx.equities.memo.sbe.v1.12.displayqty", ftypes.UINT32)
omi_memx_equities_memo_sbe_v1_12.fields.exec_id = ProtoField.new("Exec Id", "memx.equities.memo.sbe.v1.12.execid", ftypes.UINT64)
omi_memx_equities_memo_sbe_v1_12.fields.exec_inst = ProtoField.new("Exec Inst", "memx.equities.memo.sbe.v1.12.execinst", ftypes.STRING)
omi_memx_equities_memo_sbe_v1_12.fields.exec_ref_id = ProtoField.new("Exec Ref Id", "memx.equities.memo.sbe.v1.12.execrefid", ftypes.UINT64)
omi_memx_equities_memo_sbe_v1_12.fields.exec_restatement_reason = ProtoField.new("Exec Restatement Reason", "memx.equities.memo.sbe.v1.12.execrestatementreason", ftypes.UINT8)
omi_memx_equities_memo_sbe_v1_12.fields.expire_time = ProtoField.new("Expire Time", "memx.equities.memo.sbe.v1.12.expiretime", ftypes.UINT64)
omi_memx_equities_memo_sbe_v1_12.fields.extended_restatement_reason = ProtoField.new("Extended Restatement Reason", "memx.equities.memo.sbe.v1.12.extendedrestatementreason", ftypes.UINT8)
omi_memx_equities_memo_sbe_v1_12.fields.external_routing_not_allowed = ProtoField.new("External Routing Not Allowed", "memx.equities.memo.sbe.v1.12.externalroutingnotallowed", ftypes.UINT16, {[0]="No", [1]="Yes"}, base.DEC, 0x0004)
omi_memx_equities_memo_sbe_v1_12.fields.higher_than_price = ProtoField.new("Higher Than Price", "memx.equities.memo.sbe.v1.12.higherthanprice", ftypes.DOUBLE)
omi_memx_equities_memo_sbe_v1_12.fields.intermarket_sweep = ProtoField.new("Intermarket Sweep", "memx.equities.memo.sbe.v1.12.intermarketsweep", ftypes.UINT16, {[0]="No", [1]="Yes"}, base.DEC, 0x0002)
omi_memx_equities_memo_sbe_v1_12.fields.last_liquidity_ind = ProtoField.new("Last Liquidity Ind", "memx.equities.memo.sbe.v1.12.lastliquidityind", ftypes.UINT8)
omi_memx_equities_memo_sbe_v1_12.fields.last_mkt = ProtoField.new("Last Mkt", "memx.equities.memo.sbe.v1.12.lastmkt", ftypes.STRING)
omi_memx_equities_memo_sbe_v1_12.fields.last_px = ProtoField.new("Last Px", "memx.equities.memo.sbe.v1.12.lastpx", ftypes.DOUBLE)
omi_memx_equities_memo_sbe_v1_12.fields.last_px_optional = ProtoField.new("Last Px Optional", "memx.equities.memo.sbe.v1.12.lastpxoptional", ftypes.DOUBLE)
omi_memx_equities_memo_sbe_v1_12.fields.last_qty = ProtoField.new("Last Qty", "memx.equities.memo.sbe.v1.12.lastqty", ftypes.UINT32)
omi_memx_equities_memo_sbe_v1_12.fields.last_qty_optional = ProtoField.new("Last Qty Optional", "memx.equities.memo.sbe.v1.12.lastqtyoptional", ftypes.UINT32)
omi_memx_equities_memo_sbe_v1_12.fields.last_shares = ProtoField.new("Last Shares", "memx.equities.memo.sbe.v1.12.lastshares", ftypes.UINT32)
omi_memx_equities_memo_sbe_v1_12.fields.leaves_qty = ProtoField.new("Leaves Qty", "memx.equities.memo.sbe.v1.12.leavesqty", ftypes.UINT32)
omi_memx_equities_memo_sbe_v1_12.fields.link_id_optional = ProtoField.new("Link Id Optional", "memx.equities.memo.sbe.v1.12.linkidoptional", ftypes.STRING)
omi_memx_equities_memo_sbe_v1_12.fields.locate_broker_optional = ProtoField.new("Locate Broker Optional", "memx.equities.memo.sbe.v1.12.locatebrokeroptional", ftypes.STRING)
omi_memx_equities_memo_sbe_v1_12.fields.locate_reqd = ProtoField.new("Locate Reqd", "memx.equities.memo.sbe.v1.12.locatereqd", ftypes.STRING)
omi_memx_equities_memo_sbe_v1_12.fields.login_accepted_message = ProtoField.new("Login Accepted Message", "memx.equities.memo.sbe.v1.12.loginacceptedmessage", ftypes.STRING)
omi_memx_equities_memo_sbe_v1_12.fields.login_reject_code = ProtoField.new("Login Reject Code", "memx.equities.memo.sbe.v1.12.loginrejectcode", ftypes.STRING)
omi_memx_equities_memo_sbe_v1_12.fields.login_rejected_message = ProtoField.new("Login Rejected Message", "memx.equities.memo.sbe.v1.12.loginrejectedmessage", ftypes.STRING)
omi_memx_equities_memo_sbe_v1_12.fields.login_request_message = ProtoField.new("Login Request Message", "memx.equities.memo.sbe.v1.12.loginrequestmessage", ftypes.STRING)
omi_memx_equities_memo_sbe_v1_12.fields.lower_than_price = ProtoField.new("Lower Than Price", "memx.equities.memo.sbe.v1.12.lowerthanprice", ftypes.DOUBLE)
omi_memx_equities_memo_sbe_v1_12.fields.mass_cancel_reject_reason = ProtoField.new("Mass Cancel Reject Reason", "memx.equities.memo.sbe.v1.12.masscancelrejectreason", ftypes.UINT8)
omi_memx_equities_memo_sbe_v1_12.fields.max_sequence_number = ProtoField.new("Max Sequence Number", "memx.equities.memo.sbe.v1.12.maxsequencenumber", ftypes.UINT64)
omi_memx_equities_memo_sbe_v1_12.fields.message_count = ProtoField.new("Message Count", "memx.equities.memo.sbe.v1.12.messagecount", ftypes.UINT64)
omi_memx_equities_memo_sbe_v1_12.fields.message_length = ProtoField.new("Message Length", "memx.equities.memo.sbe.v1.12.messagelength", ftypes.UINT16)
omi_memx_equities_memo_sbe_v1_12.fields.message_type = ProtoField.new("Message Type", "memx.equities.memo.sbe.v1.12.messagetype", ftypes.UINT8)
omi_memx_equities_memo_sbe_v1_12.fields.min_qty = ProtoField.new("Min Qty", "memx.equities.memo.sbe.v1.12.minqty", ftypes.UINT32)
omi_memx_equities_memo_sbe_v1_12.fields.mpid_optional = ProtoField.new("Mpid Optional", "memx.equities.memo.sbe.v1.12.mpidoptional", ftypes.STRING)
omi_memx_equities_memo_sbe_v1_12.fields.next_sequence_number = ProtoField.new("Next Sequence Number", "memx.equities.memo.sbe.v1.12.nextsequencenumber", ftypes.UINT64)
omi_memx_equities_memo_sbe_v1_12.fields.ord_status = ProtoField.new("Ord Status", "memx.equities.memo.sbe.v1.12.ordstatus", ftypes.STRING)
omi_memx_equities_memo_sbe_v1_12.fields.ord_type = ProtoField.new("Ord Type", "memx.equities.memo.sbe.v1.12.ordtype", ftypes.STRING)
omi_memx_equities_memo_sbe_v1_12.fields.order_capacity = ProtoField.new("Order Capacity", "memx.equities.memo.sbe.v1.12.ordercapacity", ftypes.STRING)
omi_memx_equities_memo_sbe_v1_12.fields.order_id = ProtoField.new("Order Id", "memx.equities.memo.sbe.v1.12.orderid", ftypes.UINT64)
omi_memx_equities_memo_sbe_v1_12.fields.order_id_optional = ProtoField.new("Order Id Optional", "memx.equities.memo.sbe.v1.12.orderidoptional", ftypes.UINT64)
omi_memx_equities_memo_sbe_v1_12.fields.order_qty = ProtoField.new("Order Qty", "memx.equities.memo.sbe.v1.12.orderqty", ftypes.UINT32)
omi_memx_equities_memo_sbe_v1_12.fields.order_reject_reason = ProtoField.new("Order Reject Reason", "memx.equities.memo.sbe.v1.12.orderrejectreason", ftypes.UINT8)
omi_memx_equities_memo_sbe_v1_12.fields.origclordid = ProtoField.new("OrigClOrdId", "memx.equities.memo.sbe.v1.12.origclordid", ftypes.STRING)
omi_memx_equities_memo_sbe_v1_12.fields.origclordid_optional = ProtoField.new("OrigClOrdId Optional", "memx.equities.memo.sbe.v1.12.origclordidoptional", ftypes.STRING)
omi_memx_equities_memo_sbe_v1_12.fields.packet = ProtoField.new("Packet", "memx.equities.memo.sbe.v1.12.packet", ftypes.STRING)
omi_memx_equities_memo_sbe_v1_12.fields.participate_do_not_initiate = ProtoField.new("Participate Do Not Initiate", "memx.equities.memo.sbe.v1.12.participatedonotinitiate", ftypes.UINT16, {[0]="No", [1]="Yes"}, base.DEC, 0x0001)
omi_memx_equities_memo_sbe_v1_12.fields.payload = ProtoField.new("Payload", "memx.equities.memo.sbe.v1.12.payload", ftypes.STRING)
omi_memx_equities_memo_sbe_v1_12.fields.peg_offset_value = ProtoField.new("Peg Offset Value", "memx.equities.memo.sbe.v1.12.pegoffsetvalue", ftypes.DOUBLE)
omi_memx_equities_memo_sbe_v1_12.fields.peg_price_type = ProtoField.new("Peg Price Type", "memx.equities.memo.sbe.v1.12.pegpricetype", ftypes.UINT8)
omi_memx_equities_memo_sbe_v1_12.fields.pending_message_count = ProtoField.new("Pending Message Count", "memx.equities.memo.sbe.v1.12.pendingmessagecount", ftypes.UINT32)
omi_memx_equities_memo_sbe_v1_12.fields.price = ProtoField.new("Price", "memx.equities.memo.sbe.v1.12.price", ftypes.DOUBLE)
omi_memx_equities_memo_sbe_v1_12.fields.replay_all_request_message = ProtoField.new("Replay All Request Message", "memx.equities.memo.sbe.v1.12.replayallrequestmessage", ftypes.STRING)
omi_memx_equities_memo_sbe_v1_12.fields.replay_begin_message = ProtoField.new("Replay Begin Message", "memx.equities.memo.sbe.v1.12.replaybeginmessage", ftypes.STRING)
omi_memx_equities_memo_sbe_v1_12.fields.replay_complete_message = ProtoField.new("Replay Complete Message", "memx.equities.memo.sbe.v1.12.replaycompletemessage", ftypes.STRING)
omi_memx_equities_memo_sbe_v1_12.fields.replay_reject_code = ProtoField.new("Replay Reject Code", "memx.equities.memo.sbe.v1.12.replayrejectcode", ftypes.STRING)
omi_memx_equities_memo_sbe_v1_12.fields.replay_rejected_message = ProtoField.new("Replay Rejected Message", "memx.equities.memo.sbe.v1.12.replayrejectedmessage", ftypes.STRING)
omi_memx_equities_memo_sbe_v1_12.fields.replay_request_message = ProtoField.new("Replay Request Message", "memx.equities.memo.sbe.v1.12.replayrequestmessage", ftypes.STRING)
omi_memx_equities_memo_sbe_v1_12.fields.reprice_behavior = ProtoField.new("Reprice Behavior", "memx.equities.memo.sbe.v1.12.repricebehavior", ftypes.UINT8)
omi_memx_equities_memo_sbe_v1_12.fields.reprice_frequency = ProtoField.new("Reprice Frequency", "memx.equities.memo.sbe.v1.12.repricefrequency", ftypes.UINT8)
omi_memx_equities_memo_sbe_v1_12.fields.reserve_replenish_timing = ProtoField.new("Reserve Replenish Timing", "memx.equities.memo.sbe.v1.12.reservereplenishtiming", ftypes.UINT8)
omi_memx_equities_memo_sbe_v1_12.fields.reserved_13 = ProtoField.new("Reserved 13", "memx.equities.memo.sbe.v1.12.reserved13", ftypes.UINT16, nil, base.DEC, 0xFFF8)
omi_memx_equities_memo_sbe_v1_12.fields.risk_group_id = ProtoField.new("Risk Group Id", "memx.equities.memo.sbe.v1.12.riskgroupid", ftypes.UINT16)
omi_memx_equities_memo_sbe_v1_12.fields.sbe_header = ProtoField.new("Sbe Header", "memx.equities.memo.sbe.v1.12.sbeheader", ftypes.STRING)
omi_memx_equities_memo_sbe_v1_12.fields.sbe_message = ProtoField.new("Sbe Message", "memx.equities.memo.sbe.v1.12.sbemessage", ftypes.STRING)
omi_memx_equities_memo_sbe_v1_12.fields.schema_id = ProtoField.new("Schema Id", "memx.equities.memo.sbe.v1.12.schemaid", ftypes.UINT8)
omi_memx_equities_memo_sbe_v1_12.fields.security_group = ProtoField.new("Security Group", "memx.equities.memo.sbe.v1.12.securitygroup", ftypes.STRING)
omi_memx_equities_memo_sbe_v1_12.fields.self_trade_prevention = ProtoField.new("Self Trade Prevention", "memx.equities.memo.sbe.v1.12.selftradeprevention", ftypes.UINT8)
omi_memx_equities_memo_sbe_v1_12.fields.sending_time = ProtoField.new("Sending Time", "memx.equities.memo.sbe.v1.12.sendingtime", ftypes.UINT64)
omi_memx_equities_memo_sbe_v1_12.fields.sequenced_message = ProtoField.new("Sequenced Message", "memx.equities.memo.sbe.v1.12.sequencedmessage", ftypes.STRING)
omi_memx_equities_memo_sbe_v1_12.fields.session_id = ProtoField.new("Session Id", "memx.equities.memo.sbe.v1.12.sessionid", ftypes.UINT64)
omi_memx_equities_memo_sbe_v1_12.fields.side = ProtoField.new("Side", "memx.equities.memo.sbe.v1.12.side", ftypes.STRING)
omi_memx_equities_memo_sbe_v1_12.fields.side_optional = ProtoField.new("Side Optional", "memx.equities.memo.sbe.v1.12.sideoptional", ftypes.STRING)
omi_memx_equities_memo_sbe_v1_12.fields.start_of_session_message = ProtoField.new("Start Of Session Message", "memx.equities.memo.sbe.v1.12.startofsessionmessage", ftypes.STRING)
omi_memx_equities_memo_sbe_v1_12.fields.stp_group_id = ProtoField.new("Stp Group Id", "memx.equities.memo.sbe.v1.12.stpgroupid", ftypes.UINT16)
omi_memx_equities_memo_sbe_v1_12.fields.stream_begin_message = ProtoField.new("Stream Begin Message", "memx.equities.memo.sbe.v1.12.streambeginmessage", ftypes.STRING)
omi_memx_equities_memo_sbe_v1_12.fields.stream_complete_message = ProtoField.new("Stream Complete Message", "memx.equities.memo.sbe.v1.12.streamcompletemessage", ftypes.STRING)
omi_memx_equities_memo_sbe_v1_12.fields.stream_reject_code = ProtoField.new("Stream Reject Code", "memx.equities.memo.sbe.v1.12.streamrejectcode", ftypes.STRING)
omi_memx_equities_memo_sbe_v1_12.fields.stream_rejected_message = ProtoField.new("Stream Rejected Message", "memx.equities.memo.sbe.v1.12.streamrejectedmessage", ftypes.STRING)
omi_memx_equities_memo_sbe_v1_12.fields.stream_request_message = ProtoField.new("Stream Request Message", "memx.equities.memo.sbe.v1.12.streamrequestmessage", ftypes.STRING)
omi_memx_equities_memo_sbe_v1_12.fields.supported_request_mode = ProtoField.new("Supported Request Mode", "memx.equities.memo.sbe.v1.12.supportedrequestmode", ftypes.STRING)
omi_memx_equities_memo_sbe_v1_12.fields.symbol = ProtoField.new("Symbol", "memx.equities.memo.sbe.v1.12.symbol", ftypes.STRING)
omi_memx_equities_memo_sbe_v1_12.fields.symbol_sfx = ProtoField.new("Symbol Sfx", "memx.equities.memo.sbe.v1.12.symbolsfx", ftypes.STRING)
omi_memx_equities_memo_sbe_v1_12.fields.template_id = ProtoField.new("Template Id", "memx.equities.memo.sbe.v1.12.templateid", ftypes.UINT8)
omi_memx_equities_memo_sbe_v1_12.fields.time_in_force = ProtoField.new("Time In Force", "memx.equities.memo.sbe.v1.12.timeinforce", ftypes.STRING)
omi_memx_equities_memo_sbe_v1_12.fields.token = ProtoField.new("Token", "memx.equities.memo.sbe.v1.12.token", ftypes.STRING)
omi_memx_equities_memo_sbe_v1_12.fields.token_type = ProtoField.new("Token Type", "memx.equities.memo.sbe.v1.12.tokentype", ftypes.STRING)
omi_memx_equities_memo_sbe_v1_12.fields.total_sequence_count = ProtoField.new("Total Sequence Count", "memx.equities.memo.sbe.v1.12.totalsequencecount", ftypes.UINT64)
omi_memx_equities_memo_sbe_v1_12.fields.transact_time = ProtoField.new("Transact Time", "memx.equities.memo.sbe.v1.12.transacttime", ftypes.UINT64)
omi_memx_equities_memo_sbe_v1_12.fields.trd_match_id = ProtoField.new("Trd Match Id", "memx.equities.memo.sbe.v1.12.trdmatchid", ftypes.UINT64)
omi_memx_equities_memo_sbe_v1_12.fields.trd_matching_id = ProtoField.new("Trd Matching Id", "memx.equities.memo.sbe.v1.12.trdmatchingid", ftypes.UINT64)
omi_memx_equities_memo_sbe_v1_12.fields.unsequenced_message = ProtoField.new("Unsequenced Message", "memx.equities.memo.sbe.v1.12.unsequencedmessage", ftypes.STRING)
omi_memx_equities_memo_sbe_v1_12.fields.version = ProtoField.new("Version", "memx.equities.memo.sbe.v1.12.version", ftypes.UINT16)

-- Memx Equities Sbe Memo 1.12 Application Messages
omi_memx_equities_memo_sbe_v1_12.fields.execution_report_canceled_message = ProtoField.new("Execution Report Canceled Message", "memx.equities.memo.sbe.v1.12.executionreportcanceledmessage", ftypes.STRING)
omi_memx_equities_memo_sbe_v1_12.fields.execution_report_new_message = ProtoField.new("Execution Report New Message", "memx.equities.memo.sbe.v1.12.executionreportnewmessage", ftypes.STRING)
omi_memx_equities_memo_sbe_v1_12.fields.execution_report_pending_cancel_message = ProtoField.new("Execution Report Pending Cancel Message", "memx.equities.memo.sbe.v1.12.executionreportpendingcancelmessage", ftypes.STRING)
omi_memx_equities_memo_sbe_v1_12.fields.execution_report_pending_new_message = ProtoField.new("Execution Report Pending New Message", "memx.equities.memo.sbe.v1.12.executionreportpendingnewmessage", ftypes.STRING)
omi_memx_equities_memo_sbe_v1_12.fields.execution_report_pending_replace_message = ProtoField.new("Execution Report Pending Replace Message", "memx.equities.memo.sbe.v1.12.executionreportpendingreplacemessage", ftypes.STRING)
omi_memx_equities_memo_sbe_v1_12.fields.execution_report_rejected_message = ProtoField.new("Execution Report Rejected Message", "memx.equities.memo.sbe.v1.12.executionreportrejectedmessage", ftypes.STRING)
omi_memx_equities_memo_sbe_v1_12.fields.execution_report_replaced_message = ProtoField.new("Execution Report Replaced Message", "memx.equities.memo.sbe.v1.12.executionreportreplacedmessage", ftypes.STRING)
omi_memx_equities_memo_sbe_v1_12.fields.execution_report_restatement_message = ProtoField.new("Execution Report Restatement Message", "memx.equities.memo.sbe.v1.12.executionreportrestatementmessage", ftypes.STRING)
omi_memx_equities_memo_sbe_v1_12.fields.execution_report_trade_break_message = ProtoField.new("Execution Report Trade Break Message", "memx.equities.memo.sbe.v1.12.executionreporttradebreakmessage", ftypes.STRING)
omi_memx_equities_memo_sbe_v1_12.fields.execution_report_trade_correction_message = ProtoField.new("Execution Report Trade Correction Message", "memx.equities.memo.sbe.v1.12.executionreporttradecorrectionmessage", ftypes.STRING)
omi_memx_equities_memo_sbe_v1_12.fields.execution_report_trade_message = ProtoField.new("Execution Report Trade Message", "memx.equities.memo.sbe.v1.12.executionreporttrademessage", ftypes.STRING)
omi_memx_equities_memo_sbe_v1_12.fields.mass_cancel_done_message = ProtoField.new("Mass Cancel Done Message", "memx.equities.memo.sbe.v1.12.masscanceldonemessage", ftypes.STRING)
omi_memx_equities_memo_sbe_v1_12.fields.mass_cancel_reject_message = ProtoField.new("Mass Cancel Reject Message", "memx.equities.memo.sbe.v1.12.masscancelrejectmessage", ftypes.STRING)
omi_memx_equities_memo_sbe_v1_12.fields.mass_cancel_request_message = ProtoField.new("Mass Cancel Request Message", "memx.equities.memo.sbe.v1.12.masscancelrequestmessage", ftypes.STRING)
omi_memx_equities_memo_sbe_v1_12.fields.new_order_single_message = ProtoField.new("New Order Single Message", "memx.equities.memo.sbe.v1.12.newordersinglemessage", ftypes.STRING)
omi_memx_equities_memo_sbe_v1_12.fields.order_cancel_reject_message = ProtoField.new("Order Cancel Reject Message", "memx.equities.memo.sbe.v1.12.ordercancelrejectmessage", ftypes.STRING)
omi_memx_equities_memo_sbe_v1_12.fields.order_cancel_replace_request_message = ProtoField.new("Order Cancel Replace Request Message", "memx.equities.memo.sbe.v1.12.ordercancelreplacerequestmessage", ftypes.STRING)
omi_memx_equities_memo_sbe_v1_12.fields.order_cancel_request_message = ProtoField.new("Order Cancel Request Message", "memx.equities.memo.sbe.v1.12.ordercancelrequestmessage", ftypes.STRING)
omi_memx_equities_memo_sbe_v1_12.fields.pending_mass_cancel_message = ProtoField.new("Pending Mass Cancel Message", "memx.equities.memo.sbe.v1.12.pendingmasscancelmessage", ftypes.STRING)

-----------------------------------------------------------------------
-- Declare Dissection Options
-----------------------------------------------------------------------

local show = {}

-- Memx Equities Memo Sbe 1.12 Element Dissection Options
show.common_header = true
show.exec_inst = true
show.execution_report_canceled_message = true
show.execution_report_new_message = true
show.execution_report_pending_cancel_message = true
show.execution_report_pending_new_message = true
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
show.mass_cancel_done_message = true
show.mass_cancel_reject_message = true
show.mass_cancel_request_message = true
show.new_order_single_message = true
show.order_cancel_reject_message = true
show.order_cancel_replace_request_message = true
show.order_cancel_request_message = true
show.packet = true
show.pending_mass_cancel_message = true
show.replay_all_request_message = true
show.replay_begin_message = true
show.replay_complete_message = true
show.replay_rejected_message = true
show.replay_request_message = true
show.sbe_header = true
show.sbe_message = true
show.sequenced_message = true
show.start_of_session_message = true
show.stream_begin_message = true
show.stream_complete_message = true
show.stream_rejected_message = true
show.stream_request_message = true
show.unsequenced_message = true
show.data = false
show.payload = false

-- Register Memx Equities Memo Sbe 1.12 Show Options
omi_memx_equities_memo_sbe_v1_12.prefs.show_common_header = Pref.bool("Show Common Header", show.common_header, "Parse and add Common Header to protocol tree")
omi_memx_equities_memo_sbe_v1_12.prefs.show_exec_inst = Pref.bool("Show Exec Inst", show.exec_inst, "Parse and add Exec Inst to protocol tree")
omi_memx_equities_memo_sbe_v1_12.prefs.show_execution_report_canceled_message = Pref.bool("Show Execution Report Canceled Message", show.execution_report_canceled_message, "Parse and add Execution Report Canceled Message to protocol tree")
omi_memx_equities_memo_sbe_v1_12.prefs.show_execution_report_new_message = Pref.bool("Show Execution Report New Message", show.execution_report_new_message, "Parse and add Execution Report New Message to protocol tree")
omi_memx_equities_memo_sbe_v1_12.prefs.show_execution_report_pending_cancel_message = Pref.bool("Show Execution Report Pending Cancel Message", show.execution_report_pending_cancel_message, "Parse and add Execution Report Pending Cancel Message to protocol tree")
omi_memx_equities_memo_sbe_v1_12.prefs.show_execution_report_pending_new_message = Pref.bool("Show Execution Report Pending New Message", show.execution_report_pending_new_message, "Parse and add Execution Report Pending New Message to protocol tree")
omi_memx_equities_memo_sbe_v1_12.prefs.show_execution_report_pending_replace_message = Pref.bool("Show Execution Report Pending Replace Message", show.execution_report_pending_replace_message, "Parse and add Execution Report Pending Replace Message to protocol tree")
omi_memx_equities_memo_sbe_v1_12.prefs.show_execution_report_rejected_message = Pref.bool("Show Execution Report Rejected Message", show.execution_report_rejected_message, "Parse and add Execution Report Rejected Message to protocol tree")
omi_memx_equities_memo_sbe_v1_12.prefs.show_execution_report_replaced_message = Pref.bool("Show Execution Report Replaced Message", show.execution_report_replaced_message, "Parse and add Execution Report Replaced Message to protocol tree")
omi_memx_equities_memo_sbe_v1_12.prefs.show_execution_report_restatement_message = Pref.bool("Show Execution Report Restatement Message", show.execution_report_restatement_message, "Parse and add Execution Report Restatement Message to protocol tree")
omi_memx_equities_memo_sbe_v1_12.prefs.show_execution_report_trade_break_message = Pref.bool("Show Execution Report Trade Break Message", show.execution_report_trade_break_message, "Parse and add Execution Report Trade Break Message to protocol tree")
omi_memx_equities_memo_sbe_v1_12.prefs.show_execution_report_trade_correction_message = Pref.bool("Show Execution Report Trade Correction Message", show.execution_report_trade_correction_message, "Parse and add Execution Report Trade Correction Message to protocol tree")
omi_memx_equities_memo_sbe_v1_12.prefs.show_execution_report_trade_message = Pref.bool("Show Execution Report Trade Message", show.execution_report_trade_message, "Parse and add Execution Report Trade Message to protocol tree")
omi_memx_equities_memo_sbe_v1_12.prefs.show_login_accepted_message = Pref.bool("Show Login Accepted Message", show.login_accepted_message, "Parse and add Login Accepted Message to protocol tree")
omi_memx_equities_memo_sbe_v1_12.prefs.show_login_rejected_message = Pref.bool("Show Login Rejected Message", show.login_rejected_message, "Parse and add Login Rejected Message to protocol tree")
omi_memx_equities_memo_sbe_v1_12.prefs.show_login_request_message = Pref.bool("Show Login Request Message", show.login_request_message, "Parse and add Login Request Message to protocol tree")
omi_memx_equities_memo_sbe_v1_12.prefs.show_mass_cancel_done_message = Pref.bool("Show Mass Cancel Done Message", show.mass_cancel_done_message, "Parse and add Mass Cancel Done Message to protocol tree")
omi_memx_equities_memo_sbe_v1_12.prefs.show_mass_cancel_reject_message = Pref.bool("Show Mass Cancel Reject Message", show.mass_cancel_reject_message, "Parse and add Mass Cancel Reject Message to protocol tree")
omi_memx_equities_memo_sbe_v1_12.prefs.show_mass_cancel_request_message = Pref.bool("Show Mass Cancel Request Message", show.mass_cancel_request_message, "Parse and add Mass Cancel Request Message to protocol tree")
omi_memx_equities_memo_sbe_v1_12.prefs.show_new_order_single_message = Pref.bool("Show New Order Single Message", show.new_order_single_message, "Parse and add New Order Single Message to protocol tree")
omi_memx_equities_memo_sbe_v1_12.prefs.show_order_cancel_reject_message = Pref.bool("Show Order Cancel Reject Message", show.order_cancel_reject_message, "Parse and add Order Cancel Reject Message to protocol tree")
omi_memx_equities_memo_sbe_v1_12.prefs.show_order_cancel_replace_request_message = Pref.bool("Show Order Cancel Replace Request Message", show.order_cancel_replace_request_message, "Parse and add Order Cancel Replace Request Message to protocol tree")
omi_memx_equities_memo_sbe_v1_12.prefs.show_order_cancel_request_message = Pref.bool("Show Order Cancel Request Message", show.order_cancel_request_message, "Parse and add Order Cancel Request Message to protocol tree")
omi_memx_equities_memo_sbe_v1_12.prefs.show_packet = Pref.bool("Show Packet", show.packet, "Parse and add Packet to protocol tree")
omi_memx_equities_memo_sbe_v1_12.prefs.show_pending_mass_cancel_message = Pref.bool("Show Pending Mass Cancel Message", show.pending_mass_cancel_message, "Parse and add Pending Mass Cancel Message to protocol tree")
omi_memx_equities_memo_sbe_v1_12.prefs.show_replay_all_request_message = Pref.bool("Show Replay All Request Message", show.replay_all_request_message, "Parse and add Replay All Request Message to protocol tree")
omi_memx_equities_memo_sbe_v1_12.prefs.show_replay_begin_message = Pref.bool("Show Replay Begin Message", show.replay_begin_message, "Parse and add Replay Begin Message to protocol tree")
omi_memx_equities_memo_sbe_v1_12.prefs.show_replay_complete_message = Pref.bool("Show Replay Complete Message", show.replay_complete_message, "Parse and add Replay Complete Message to protocol tree")
omi_memx_equities_memo_sbe_v1_12.prefs.show_replay_rejected_message = Pref.bool("Show Replay Rejected Message", show.replay_rejected_message, "Parse and add Replay Rejected Message to protocol tree")
omi_memx_equities_memo_sbe_v1_12.prefs.show_replay_request_message = Pref.bool("Show Replay Request Message", show.replay_request_message, "Parse and add Replay Request Message to protocol tree")
omi_memx_equities_memo_sbe_v1_12.prefs.show_sbe_header = Pref.bool("Show Sbe Header", show.sbe_header, "Parse and add Sbe Header to protocol tree")
omi_memx_equities_memo_sbe_v1_12.prefs.show_sbe_message = Pref.bool("Show Sbe Message", show.sbe_message, "Parse and add Sbe Message to protocol tree")
omi_memx_equities_memo_sbe_v1_12.prefs.show_sequenced_message = Pref.bool("Show Sequenced Message", show.sequenced_message, "Parse and add Sequenced Message to protocol tree")
omi_memx_equities_memo_sbe_v1_12.prefs.show_start_of_session_message = Pref.bool("Show Start Of Session Message", show.start_of_session_message, "Parse and add Start Of Session Message to protocol tree")
omi_memx_equities_memo_sbe_v1_12.prefs.show_stream_begin_message = Pref.bool("Show Stream Begin Message", show.stream_begin_message, "Parse and add Stream Begin Message to protocol tree")
omi_memx_equities_memo_sbe_v1_12.prefs.show_stream_complete_message = Pref.bool("Show Stream Complete Message", show.stream_complete_message, "Parse and add Stream Complete Message to protocol tree")
omi_memx_equities_memo_sbe_v1_12.prefs.show_stream_rejected_message = Pref.bool("Show Stream Rejected Message", show.stream_rejected_message, "Parse and add Stream Rejected Message to protocol tree")
omi_memx_equities_memo_sbe_v1_12.prefs.show_stream_request_message = Pref.bool("Show Stream Request Message", show.stream_request_message, "Parse and add Stream Request Message to protocol tree")
omi_memx_equities_memo_sbe_v1_12.prefs.show_unsequenced_message = Pref.bool("Show Unsequenced Message", show.unsequenced_message, "Parse and add Unsequenced Message to protocol tree")
omi_memx_equities_memo_sbe_v1_12.prefs.show_data = Pref.bool("Show Data", show.data, "Parse and add Data to protocol tree")
omi_memx_equities_memo_sbe_v1_12.prefs.show_payload = Pref.bool("Show Payload", show.payload, "Parse and add Payload to protocol tree")

-- Handle changed preferences
function omi_memx_equities_memo_sbe_v1_12.prefs_changed()
  local changed = false

  -- Check if show options have changed
  if show.common_header ~= omi_memx_equities_memo_sbe_v1_12.prefs.show_common_header then
    show.common_header = omi_memx_equities_memo_sbe_v1_12.prefs.show_common_header
    changed = true
  end
  if show.exec_inst ~= omi_memx_equities_memo_sbe_v1_12.prefs.show_exec_inst then
    show.exec_inst = omi_memx_equities_memo_sbe_v1_12.prefs.show_exec_inst
    changed = true
  end
  if show.execution_report_canceled_message ~= omi_memx_equities_memo_sbe_v1_12.prefs.show_execution_report_canceled_message then
    show.execution_report_canceled_message = omi_memx_equities_memo_sbe_v1_12.prefs.show_execution_report_canceled_message
    changed = true
  end
  if show.execution_report_new_message ~= omi_memx_equities_memo_sbe_v1_12.prefs.show_execution_report_new_message then
    show.execution_report_new_message = omi_memx_equities_memo_sbe_v1_12.prefs.show_execution_report_new_message
    changed = true
  end
  if show.execution_report_pending_cancel_message ~= omi_memx_equities_memo_sbe_v1_12.prefs.show_execution_report_pending_cancel_message then
    show.execution_report_pending_cancel_message = omi_memx_equities_memo_sbe_v1_12.prefs.show_execution_report_pending_cancel_message
    changed = true
  end
  if show.execution_report_pending_new_message ~= omi_memx_equities_memo_sbe_v1_12.prefs.show_execution_report_pending_new_message then
    show.execution_report_pending_new_message = omi_memx_equities_memo_sbe_v1_12.prefs.show_execution_report_pending_new_message
    changed = true
  end
  if show.execution_report_pending_replace_message ~= omi_memx_equities_memo_sbe_v1_12.prefs.show_execution_report_pending_replace_message then
    show.execution_report_pending_replace_message = omi_memx_equities_memo_sbe_v1_12.prefs.show_execution_report_pending_replace_message
    changed = true
  end
  if show.execution_report_rejected_message ~= omi_memx_equities_memo_sbe_v1_12.prefs.show_execution_report_rejected_message then
    show.execution_report_rejected_message = omi_memx_equities_memo_sbe_v1_12.prefs.show_execution_report_rejected_message
    changed = true
  end
  if show.execution_report_replaced_message ~= omi_memx_equities_memo_sbe_v1_12.prefs.show_execution_report_replaced_message then
    show.execution_report_replaced_message = omi_memx_equities_memo_sbe_v1_12.prefs.show_execution_report_replaced_message
    changed = true
  end
  if show.execution_report_restatement_message ~= omi_memx_equities_memo_sbe_v1_12.prefs.show_execution_report_restatement_message then
    show.execution_report_restatement_message = omi_memx_equities_memo_sbe_v1_12.prefs.show_execution_report_restatement_message
    changed = true
  end
  if show.execution_report_trade_break_message ~= omi_memx_equities_memo_sbe_v1_12.prefs.show_execution_report_trade_break_message then
    show.execution_report_trade_break_message = omi_memx_equities_memo_sbe_v1_12.prefs.show_execution_report_trade_break_message
    changed = true
  end
  if show.execution_report_trade_correction_message ~= omi_memx_equities_memo_sbe_v1_12.prefs.show_execution_report_trade_correction_message then
    show.execution_report_trade_correction_message = omi_memx_equities_memo_sbe_v1_12.prefs.show_execution_report_trade_correction_message
    changed = true
  end
  if show.execution_report_trade_message ~= omi_memx_equities_memo_sbe_v1_12.prefs.show_execution_report_trade_message then
    show.execution_report_trade_message = omi_memx_equities_memo_sbe_v1_12.prefs.show_execution_report_trade_message
    changed = true
  end
  if show.login_accepted_message ~= omi_memx_equities_memo_sbe_v1_12.prefs.show_login_accepted_message then
    show.login_accepted_message = omi_memx_equities_memo_sbe_v1_12.prefs.show_login_accepted_message
    changed = true
  end
  if show.login_rejected_message ~= omi_memx_equities_memo_sbe_v1_12.prefs.show_login_rejected_message then
    show.login_rejected_message = omi_memx_equities_memo_sbe_v1_12.prefs.show_login_rejected_message
    changed = true
  end
  if show.login_request_message ~= omi_memx_equities_memo_sbe_v1_12.prefs.show_login_request_message then
    show.login_request_message = omi_memx_equities_memo_sbe_v1_12.prefs.show_login_request_message
    changed = true
  end
  if show.mass_cancel_done_message ~= omi_memx_equities_memo_sbe_v1_12.prefs.show_mass_cancel_done_message then
    show.mass_cancel_done_message = omi_memx_equities_memo_sbe_v1_12.prefs.show_mass_cancel_done_message
    changed = true
  end
  if show.mass_cancel_reject_message ~= omi_memx_equities_memo_sbe_v1_12.prefs.show_mass_cancel_reject_message then
    show.mass_cancel_reject_message = omi_memx_equities_memo_sbe_v1_12.prefs.show_mass_cancel_reject_message
    changed = true
  end
  if show.mass_cancel_request_message ~= omi_memx_equities_memo_sbe_v1_12.prefs.show_mass_cancel_request_message then
    show.mass_cancel_request_message = omi_memx_equities_memo_sbe_v1_12.prefs.show_mass_cancel_request_message
    changed = true
  end
  if show.new_order_single_message ~= omi_memx_equities_memo_sbe_v1_12.prefs.show_new_order_single_message then
    show.new_order_single_message = omi_memx_equities_memo_sbe_v1_12.prefs.show_new_order_single_message
    changed = true
  end
  if show.order_cancel_reject_message ~= omi_memx_equities_memo_sbe_v1_12.prefs.show_order_cancel_reject_message then
    show.order_cancel_reject_message = omi_memx_equities_memo_sbe_v1_12.prefs.show_order_cancel_reject_message
    changed = true
  end
  if show.order_cancel_replace_request_message ~= omi_memx_equities_memo_sbe_v1_12.prefs.show_order_cancel_replace_request_message then
    show.order_cancel_replace_request_message = omi_memx_equities_memo_sbe_v1_12.prefs.show_order_cancel_replace_request_message
    changed = true
  end
  if show.order_cancel_request_message ~= omi_memx_equities_memo_sbe_v1_12.prefs.show_order_cancel_request_message then
    show.order_cancel_request_message = omi_memx_equities_memo_sbe_v1_12.prefs.show_order_cancel_request_message
    changed = true
  end
  if show.packet ~= omi_memx_equities_memo_sbe_v1_12.prefs.show_packet then
    show.packet = omi_memx_equities_memo_sbe_v1_12.prefs.show_packet
    changed = true
  end
  if show.pending_mass_cancel_message ~= omi_memx_equities_memo_sbe_v1_12.prefs.show_pending_mass_cancel_message then
    show.pending_mass_cancel_message = omi_memx_equities_memo_sbe_v1_12.prefs.show_pending_mass_cancel_message
    changed = true
  end
  if show.replay_all_request_message ~= omi_memx_equities_memo_sbe_v1_12.prefs.show_replay_all_request_message then
    show.replay_all_request_message = omi_memx_equities_memo_sbe_v1_12.prefs.show_replay_all_request_message
    changed = true
  end
  if show.replay_begin_message ~= omi_memx_equities_memo_sbe_v1_12.prefs.show_replay_begin_message then
    show.replay_begin_message = omi_memx_equities_memo_sbe_v1_12.prefs.show_replay_begin_message
    changed = true
  end
  if show.replay_complete_message ~= omi_memx_equities_memo_sbe_v1_12.prefs.show_replay_complete_message then
    show.replay_complete_message = omi_memx_equities_memo_sbe_v1_12.prefs.show_replay_complete_message
    changed = true
  end
  if show.replay_rejected_message ~= omi_memx_equities_memo_sbe_v1_12.prefs.show_replay_rejected_message then
    show.replay_rejected_message = omi_memx_equities_memo_sbe_v1_12.prefs.show_replay_rejected_message
    changed = true
  end
  if show.replay_request_message ~= omi_memx_equities_memo_sbe_v1_12.prefs.show_replay_request_message then
    show.replay_request_message = omi_memx_equities_memo_sbe_v1_12.prefs.show_replay_request_message
    changed = true
  end
  if show.sbe_header ~= omi_memx_equities_memo_sbe_v1_12.prefs.show_sbe_header then
    show.sbe_header = omi_memx_equities_memo_sbe_v1_12.prefs.show_sbe_header
    changed = true
  end
  if show.sbe_message ~= omi_memx_equities_memo_sbe_v1_12.prefs.show_sbe_message then
    show.sbe_message = omi_memx_equities_memo_sbe_v1_12.prefs.show_sbe_message
    changed = true
  end
  if show.sequenced_message ~= omi_memx_equities_memo_sbe_v1_12.prefs.show_sequenced_message then
    show.sequenced_message = omi_memx_equities_memo_sbe_v1_12.prefs.show_sequenced_message
    changed = true
  end
  if show.start_of_session_message ~= omi_memx_equities_memo_sbe_v1_12.prefs.show_start_of_session_message then
    show.start_of_session_message = omi_memx_equities_memo_sbe_v1_12.prefs.show_start_of_session_message
    changed = true
  end
  if show.stream_begin_message ~= omi_memx_equities_memo_sbe_v1_12.prefs.show_stream_begin_message then
    show.stream_begin_message = omi_memx_equities_memo_sbe_v1_12.prefs.show_stream_begin_message
    changed = true
  end
  if show.stream_complete_message ~= omi_memx_equities_memo_sbe_v1_12.prefs.show_stream_complete_message then
    show.stream_complete_message = omi_memx_equities_memo_sbe_v1_12.prefs.show_stream_complete_message
    changed = true
  end
  if show.stream_rejected_message ~= omi_memx_equities_memo_sbe_v1_12.prefs.show_stream_rejected_message then
    show.stream_rejected_message = omi_memx_equities_memo_sbe_v1_12.prefs.show_stream_rejected_message
    changed = true
  end
  if show.stream_request_message ~= omi_memx_equities_memo_sbe_v1_12.prefs.show_stream_request_message then
    show.stream_request_message = omi_memx_equities_memo_sbe_v1_12.prefs.show_stream_request_message
    changed = true
  end
  if show.unsequenced_message ~= omi_memx_equities_memo_sbe_v1_12.prefs.show_unsequenced_message then
    show.unsequenced_message = omi_memx_equities_memo_sbe_v1_12.prefs.show_unsequenced_message
    changed = true
  end
  if show.data ~= omi_memx_equities_memo_sbe_v1_12.prefs.show_data then
    show.data = omi_memx_equities_memo_sbe_v1_12.prefs.show_data
    changed = true
  end
  if show.payload ~= omi_memx_equities_memo_sbe_v1_12.prefs.show_payload then
    show.payload = omi_memx_equities_memo_sbe_v1_12.prefs.show_payload
    changed = true
  end

  -- Reload on changed preference
  if changed then
    reload()
  end
end


-----------------------------------------------------------------------
-- Dissect Memx Equities Memo Sbe 1.12
-----------------------------------------------------------------------

-- Mass Cancel Reject Reason
memx_equities_memo_sbe_v1_12.mass_cancel_reject_reason = {}

-- Size: Mass Cancel Reject Reason
memx_equities_memo_sbe_v1_12.mass_cancel_reject_reason.size = 1

-- Display: Mass Cancel Reject Reason
memx_equities_memo_sbe_v1_12.mass_cancel_reject_reason.display = function(value)
  if value == 0 then
    return "Mass Cancel Reject Reason: Other (0)"
  end
  if value == 1 then
    return "Mass Cancel Reject Reason: Unknown Product (1)"
  end
  if value == 2 then
    return "Mass Cancel Reject Reason: Unknown Side (2)"
  end
  if value == 3 then
    return "Mass Cancel Reject Reason: Unknown Group Id (3)"
  end
  if value == 4 then
    return "Mass Cancel Reject Reason: Higher Price Lower Or Equal To Lower Price (4)"
  end
  if value == 5 then
    return "Mass Cancel Reject Reason: Product Missing For Price Restriction (5)"
  end
  if value == 6 then
    return "Mass Cancel Reject Reason: Duplicate Cl Ord Id (6)"
  end
  if value == 7 then
    return "Mass Cancel Reject Reason: Malformed Request Missing Cl Ord Id Field (7)"
  end
  if value == 8 then
    return "Mass Cancel Reject Reason: Invalid Cancel Group Id (8)"
  end
  if value == 9 then
    return "Mass Cancel Reject Reason: Invalid Cl Ord Id (9)"
  end
  if value == 10 then
    return "Mass Cancel Reject Reason: Invalid Lower Price (10)"
  end
  if value == 11 then
    return "Mass Cancel Reject Reason: Invalid Higher Price (11)"
  end
  if value == 255 then
    return "Mass Cancel Reject Reason: Null Value (255)"
  end

  return "Mass Cancel Reject Reason: Unknown("..value..")"
end

-- Dissect: Mass Cancel Reject Reason
memx_equities_memo_sbe_v1_12.mass_cancel_reject_reason.dissect = function(buffer, offset, packet, parent)
  local length = memx_equities_memo_sbe_v1_12.mass_cancel_reject_reason.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = memx_equities_memo_sbe_v1_12.mass_cancel_reject_reason.display(value, buffer, offset, packet, parent)

  parent:add(omi_memx_equities_memo_sbe_v1_12.fields.mass_cancel_reject_reason, range, value, display)

  return offset + length, value
end

-- Cancel Group Id
memx_equities_memo_sbe_v1_12.cancel_group_id = {}

-- Size: Cancel Group Id
memx_equities_memo_sbe_v1_12.cancel_group_id.size = 2

-- Display: Cancel Group Id
memx_equities_memo_sbe_v1_12.cancel_group_id.display = function(value)
  -- Check if field has value
  if value == 65535 then
    return "Cancel Group Id: No Value"
  end

  return "Cancel Group Id: "..value
end

-- Dissect: Cancel Group Id
memx_equities_memo_sbe_v1_12.cancel_group_id.dissect = function(buffer, offset, packet, parent)
  local length = memx_equities_memo_sbe_v1_12.cancel_group_id.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = memx_equities_memo_sbe_v1_12.cancel_group_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_memx_equities_memo_sbe_v1_12.fields.cancel_group_id, range, value, display)

  return offset + length, value
end

-- Higher Than Price
memx_equities_memo_sbe_v1_12.higher_than_price = {}

-- Size: Higher Than Price
memx_equities_memo_sbe_v1_12.higher_than_price.size = 8

-- Display: Higher Than Price
memx_equities_memo_sbe_v1_12.higher_than_price.display = function(raw, value)
  -- Check null sentinel value
  if raw == Int64(0x00000000, 0x80000000) then
    return "Higher Than Price: No Value"
  end

  return "Higher Than Price: "..value
end

-- Translate: Higher Than Price
memx_equities_memo_sbe_v1_12.higher_than_price.translate = function(raw)
  -- Check null sentinel value
  if raw == Int64(0x00000000, 0x80000000) then
    return 0/0
  end

  return raw:tonumber()/1000000
end

-- Dissect: Higher Than Price
memx_equities_memo_sbe_v1_12.higher_than_price.dissect = function(buffer, offset, packet, parent)
  local length = memx_equities_memo_sbe_v1_12.higher_than_price.size
  local range = buffer(offset, length)
  local raw = range:int64()
  local value = memx_equities_memo_sbe_v1_12.higher_than_price.translate(raw)
  local display = memx_equities_memo_sbe_v1_12.higher_than_price.display(raw, value, buffer, offset, packet, parent)

  parent:add(omi_memx_equities_memo_sbe_v1_12.fields.higher_than_price, range, value, display)

  return offset + length, value
end

-- Lower Than Price
memx_equities_memo_sbe_v1_12.lower_than_price = {}

-- Size: Lower Than Price
memx_equities_memo_sbe_v1_12.lower_than_price.size = 8

-- Display: Lower Than Price
memx_equities_memo_sbe_v1_12.lower_than_price.display = function(raw, value)
  -- Check null sentinel value
  if raw == Int64(0x00000000, 0x80000000) then
    return "Lower Than Price: No Value"
  end

  return "Lower Than Price: "..value
end

-- Translate: Lower Than Price
memx_equities_memo_sbe_v1_12.lower_than_price.translate = function(raw)
  -- Check null sentinel value
  if raw == Int64(0x00000000, 0x80000000) then
    return 0/0
  end

  return raw:tonumber()/1000000
end

-- Dissect: Lower Than Price
memx_equities_memo_sbe_v1_12.lower_than_price.dissect = function(buffer, offset, packet, parent)
  local length = memx_equities_memo_sbe_v1_12.lower_than_price.size
  local range = buffer(offset, length)
  local raw = range:int64()
  local value = memx_equities_memo_sbe_v1_12.lower_than_price.translate(raw)
  local display = memx_equities_memo_sbe_v1_12.lower_than_price.display(raw, value, buffer, offset, packet, parent)

  parent:add(omi_memx_equities_memo_sbe_v1_12.fields.lower_than_price, range, value, display)

  return offset + length, value
end

-- Side Optional
memx_equities_memo_sbe_v1_12.side_optional = {}

-- Size: Side Optional
memx_equities_memo_sbe_v1_12.side_optional.size = 1

-- Display: Side Optional
memx_equities_memo_sbe_v1_12.side_optional.display = function(value)
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
  if value == "5" then
    return "Side Optional: Sell Short (5)"
  end
  if value == "6" then
    return "Side Optional: Sell Short Exempt (6)"
  end
  if value == 0 then
    return "Side Optional: No Value"
  end

  return "Side Optional: Unknown("..value..")"
end

-- Dissect: Side Optional
memx_equities_memo_sbe_v1_12.side_optional.dissect = function(buffer, offset, packet, parent)
  local length = memx_equities_memo_sbe_v1_12.side_optional.size
  local range = buffer(offset, length)

  -- parse as byte
  local value = range:uint()

  -- check if value is non zero
  if value ~= 0 then
    value = range:string()
  end

  local display = memx_equities_memo_sbe_v1_12.side_optional.display(value, buffer, offset, packet, parent)

  parent:add(omi_memx_equities_memo_sbe_v1_12.fields.side_optional, range, value, display)

  return offset + length, value
end

-- Symbol Sfx
memx_equities_memo_sbe_v1_12.symbol_sfx = {}

-- Size: Symbol Sfx
memx_equities_memo_sbe_v1_12.symbol_sfx.size = 6

-- Display: Symbol Sfx
memx_equities_memo_sbe_v1_12.symbol_sfx.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Symbol Sfx: No Value"
  end

  return "Symbol Sfx: "..value
end

-- Dissect: Symbol Sfx
memx_equities_memo_sbe_v1_12.symbol_sfx.dissect = function(buffer, offset, packet, parent)
  local length = memx_equities_memo_sbe_v1_12.symbol_sfx.size
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

  local display = memx_equities_memo_sbe_v1_12.symbol_sfx.display(value, buffer, offset, packet, parent)

  parent:add(omi_memx_equities_memo_sbe_v1_12.fields.symbol_sfx, range, value, display)

  return offset + length, value
end

-- Symbol
memx_equities_memo_sbe_v1_12.symbol = {}

-- Size: Symbol
memx_equities_memo_sbe_v1_12.symbol.size = 6

-- Display: Symbol
memx_equities_memo_sbe_v1_12.symbol.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Symbol: No Value"
  end

  return "Symbol: "..value
end

-- Dissect: Symbol
memx_equities_memo_sbe_v1_12.symbol.dissect = function(buffer, offset, packet, parent)
  local length = memx_equities_memo_sbe_v1_12.symbol.size
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

  local display = memx_equities_memo_sbe_v1_12.symbol.display(value, buffer, offset, packet, parent)

  parent:add(omi_memx_equities_memo_sbe_v1_12.fields.symbol, range, value, display)

  return offset + length, value
end

-- ClOrdId
memx_equities_memo_sbe_v1_12.clordid = {}

-- Size: ClOrdId
memx_equities_memo_sbe_v1_12.clordid.size = 16

-- Display: ClOrdId
memx_equities_memo_sbe_v1_12.clordid.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "ClOrdId: No Value"
  end

  return "ClOrdId: "..value
end

-- Dissect: ClOrdId
memx_equities_memo_sbe_v1_12.clordid.dissect = function(buffer, offset, packet, parent)
  local length = memx_equities_memo_sbe_v1_12.clordid.size
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

  local display = memx_equities_memo_sbe_v1_12.clordid.display(value, buffer, offset, packet, parent)

  parent:add(omi_memx_equities_memo_sbe_v1_12.fields.clordid, range, value, display)

  return offset + length, value
end

-- Sending Time
memx_equities_memo_sbe_v1_12.sending_time = {}

-- Size: Sending Time
memx_equities_memo_sbe_v1_12.sending_time.size = 8

-- Display: Sending Time
memx_equities_memo_sbe_v1_12.sending_time.display = function(value)
  -- Parse unix nanosecond timestamp
  local seconds = (value / UInt64(1000000000)):tonumber()
  local nanoseconds = (value % UInt64(1000000000)):tonumber()

  return "Sending Time: "..os.date("%Y-%m-%d %H:%M:%S.", seconds)..string.format("%09d", nanoseconds)
end

-- Dissect: Sending Time
memx_equities_memo_sbe_v1_12.sending_time.dissect = function(buffer, offset, packet, parent)
  local length = memx_equities_memo_sbe_v1_12.sending_time.size
  local range = buffer(offset, length)
  local value = range:uint64()
  local display = memx_equities_memo_sbe_v1_12.sending_time.display(value, buffer, offset, packet, parent)

  parent:add(omi_memx_equities_memo_sbe_v1_12.fields.sending_time, range, value, display)

  return offset + length, value
end

-- Mass Cancel Reject Message
memx_equities_memo_sbe_v1_12.mass_cancel_reject_message = {}

-- Size: Mass Cancel Reject Message
memx_equities_memo_sbe_v1_12.mass_cancel_reject_message.size =
  memx_equities_memo_sbe_v1_12.sending_time.size + 
  memx_equities_memo_sbe_v1_12.clordid.size + 
  memx_equities_memo_sbe_v1_12.symbol.size + 
  memx_equities_memo_sbe_v1_12.symbol_sfx.size + 
  memx_equities_memo_sbe_v1_12.side_optional.size + 
  memx_equities_memo_sbe_v1_12.lower_than_price.size + 
  memx_equities_memo_sbe_v1_12.higher_than_price.size + 
  memx_equities_memo_sbe_v1_12.cancel_group_id.size + 
  memx_equities_memo_sbe_v1_12.mass_cancel_reject_reason.size

-- Display: Mass Cancel Reject Message
memx_equities_memo_sbe_v1_12.mass_cancel_reject_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Mass Cancel Reject Message
memx_equities_memo_sbe_v1_12.mass_cancel_reject_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Sending Time: UTCTimestampNanos
  index, sending_time = memx_equities_memo_sbe_v1_12.sending_time.dissect(buffer, index, packet, parent)

  -- ClOrdId: ExecutionReport_CanceledClOrdID
  index, clordid = memx_equities_memo_sbe_v1_12.clordid.dissect(buffer, index, packet, parent)

  -- Symbol: ExecutionReport_NewSymbol
  index, symbol = memx_equities_memo_sbe_v1_12.symbol.dissect(buffer, index, packet, parent)

  -- Symbol Sfx: ExecutionReport_NewSymbolSfx
  index, symbol_sfx = memx_equities_memo_sbe_v1_12.symbol_sfx.dissect(buffer, index, packet, parent)

  -- Side Optional: SideType
  index, side_optional = memx_equities_memo_sbe_v1_12.side_optional.dissect(buffer, index, packet, parent)

  -- Lower Than Price: PriceType
  index, lower_than_price = memx_equities_memo_sbe_v1_12.lower_than_price.dissect(buffer, index, packet, parent)

  -- Higher Than Price: PriceType
  index, higher_than_price = memx_equities_memo_sbe_v1_12.higher_than_price.dissect(buffer, index, packet, parent)

  -- Cancel Group Id: uint16
  index, cancel_group_id = memx_equities_memo_sbe_v1_12.cancel_group_id.dissect(buffer, index, packet, parent)

  -- Mass Cancel Reject Reason: MassCancelRejectReasonCode
  index, mass_cancel_reject_reason = memx_equities_memo_sbe_v1_12.mass_cancel_reject_reason.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Mass Cancel Reject Message
memx_equities_memo_sbe_v1_12.mass_cancel_reject_message.dissect = function(buffer, offset, packet, parent)
  if show.mass_cancel_reject_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_memx_equities_memo_sbe_v1_12.fields.mass_cancel_reject_message, buffer(offset, 0))
    local index = memx_equities_memo_sbe_v1_12.mass_cancel_reject_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = memx_equities_memo_sbe_v1_12.mass_cancel_reject_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return memx_equities_memo_sbe_v1_12.mass_cancel_reject_message.fields(buffer, offset, packet, parent)
  end
end

-- Link Id Optional
memx_equities_memo_sbe_v1_12.link_id_optional = {}

-- Size: Link Id Optional
memx_equities_memo_sbe_v1_12.link_id_optional.size = 4

-- Display: Link Id Optional
memx_equities_memo_sbe_v1_12.link_id_optional.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Link Id Optional: No Value"
  end

  return "Link Id Optional: "..value
end

-- Dissect: Link Id Optional
memx_equities_memo_sbe_v1_12.link_id_optional.dissect = function(buffer, offset, packet, parent)
  local length = memx_equities_memo_sbe_v1_12.link_id_optional.size
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

  local display = memx_equities_memo_sbe_v1_12.link_id_optional.display(value, buffer, offset, packet, parent)

  parent:add(omi_memx_equities_memo_sbe_v1_12.fields.link_id_optional, range, value, display)

  return offset + length, value
end

-- Cxl Rej Reason
memx_equities_memo_sbe_v1_12.cxl_rej_reason = {}

-- Size: Cxl Rej Reason
memx_equities_memo_sbe_v1_12.cxl_rej_reason.size = 1

-- Display: Cxl Rej Reason
memx_equities_memo_sbe_v1_12.cxl_rej_reason.display = function(value)
  if value == 1 then
    return "Cxl Rej Reason: Unknown Orig Order (1)"
  end
  if value == 3 then
    return "Cxl Rej Reason: Order In Pending State (3)"
  end
  if value == 6 then
    return "Cxl Rej Reason: Duplicate Cl Ord Id (6)"
  end
  if value == 18 then
    return "Cxl Rej Reason: Invalid Limit Price Increment (18)"
  end
  if value == 99 then
    return "Cxl Rej Reason: Other (99)"
  end
  if value == 100 then
    return "Cxl Rej Reason: Missing Symbol (100)"
  end
  if value == 101 then
    return "Cxl Rej Reason: Missing Locate (101)"
  end
  if value == 102 then
    return "Cxl Rej Reason: Missing Cl Ord Id (102)"
  end
  if value == 103 then
    return "Cxl Rej Reason: Invalid Order Quantity (103)"
  end
  if value == 104 then
    return "Cxl Rej Reason: Invalid Symbol (104)"
  end
  if value == 105 then
    return "Cxl Rej Reason: Invalid Limit Price (105)"
  end
  if value == 107 then
    return "Cxl Rej Reason: Symbol Halted Or Paused (107)"
  end
  if value == 108 then
    return "Cxl Rej Reason: Order Size Exceeds Limit (108)"
  end
  if value == 109 then
    return "Cxl Rej Reason: Exceeded Max Notional Order Amt (109)"
  end
  if value == 110 then
    return "Cxl Rej Reason: Missing Orig Order Identifiers (110)"
  end
  if value == 111 then
    return "Cxl Rej Reason: Ambiguous Orig Order Identifiers (111)"
  end
  if value == 112 then
    return "Cxl Rej Reason: Orig Order Symbol Not Matching Request Symbol (112)"
  end
  if value == 113 then
    return "Cxl Rej Reason: Unsupported Display Quantity Change (113)"
  end
  if value == 114 then
    return "Cxl Rej Reason: Unsupported Ord Type Change (114)"
  end
  if value == 115 then
    return "Cxl Rej Reason: Unsupported Side Change (115)"
  end
  if value == 116 then
    return "Cxl Rej Reason: Unsupported Quantity Change (116)"
  end
  if value == 117 then
    return "Cxl Rej Reason: Invalid Locate (117)"
  end
  if value == 118 then
    return "Cxl Rej Reason: Exchange Closed (118)"
  end
  if value == 119 then
    return "Cxl Rej Reason: Block Session Risk Rule Violated (119)"
  end
  if value == 120 then
    return "Cxl Rej Reason: Block Sell Short Risk Rule Violated (120)"
  end
  if value == 121 then
    return "Cxl Rej Reason: Max Shares Per Order Risk Rule Breach (121)"
  end
  if value == 122 then
    return "Cxl Rej Reason: No Nbbo Available (122)"
  end
  if value == 123 then
    return "Cxl Rej Reason: Max Notional Value Per Order Risk Rule Breach (123)"
  end
  if value == 124 then
    return "Cxl Rej Reason: Max Adv Percent Per Order Risk Rule Breach (124)"
  end
  if value == 125 then
    return "Cxl Rej Reason: Price Percent Collar Risk Rule Violated (125)"
  end
  if value == 126 then
    return "Cxl Rej Reason: Price Value Collar Risk Rule Violated (126)"
  end
  if value == 127 then
    return "Cxl Rej Reason: Hard To Borrow Security Risk Rule Violated (127)"
  end
  if value == 128 then
    return "Cxl Rej Reason: Invalid Side (128)"
  end
  if value == 129 then
    return "Cxl Rej Reason: Invalid Ord Type (129)"
  end
  if value == 130 then
    return "Cxl Rej Reason: Invalid Cl Ord Id (130)"
  end
  if value == 131 then
    return "Cxl Rej Reason: Invalid Lnk Id (131)"
  end
  if value == 132 then
    return "Cxl Rej Reason: Missing Locate Broker (132)"
  end
  if value == 133 then
    return "Cxl Rej Reason: Invalid Locate Broker (133)"
  end
  if value == 255 then
    return "Cxl Rej Reason: Null Value (255)"
  end

  return "Cxl Rej Reason: Unknown("..value..")"
end

-- Dissect: Cxl Rej Reason
memx_equities_memo_sbe_v1_12.cxl_rej_reason.dissect = function(buffer, offset, packet, parent)
  local length = memx_equities_memo_sbe_v1_12.cxl_rej_reason.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = memx_equities_memo_sbe_v1_12.cxl_rej_reason.display(value, buffer, offset, packet, parent)

  parent:add(omi_memx_equities_memo_sbe_v1_12.fields.cxl_rej_reason, range, value, display)

  return offset + length, value
end

-- Cxl Rej Response To
memx_equities_memo_sbe_v1_12.cxl_rej_response_to = {}

-- Size: Cxl Rej Response To
memx_equities_memo_sbe_v1_12.cxl_rej_response_to.size = 1

-- Display: Cxl Rej Response To
memx_equities_memo_sbe_v1_12.cxl_rej_response_to.display = function(value)
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
memx_equities_memo_sbe_v1_12.cxl_rej_response_to.dissect = function(buffer, offset, packet, parent)
  local length = memx_equities_memo_sbe_v1_12.cxl_rej_response_to.size
  local range = buffer(offset, length)

  -- parse as byte
  local value = range:uint()

  -- check if value is non zero
  if value ~= 0 then
    value = range:string()
  end

  local display = memx_equities_memo_sbe_v1_12.cxl_rej_response_to.display(value, buffer, offset, packet, parent)

  parent:add(omi_memx_equities_memo_sbe_v1_12.fields.cxl_rej_response_to, range, value, display)

  return offset + length, value
end

-- Order Cancel Reject Message
memx_equities_memo_sbe_v1_12.order_cancel_reject_message = {}

-- Size: Order Cancel Reject Message
memx_equities_memo_sbe_v1_12.order_cancel_reject_message.size =
  memx_equities_memo_sbe_v1_12.sending_time.size + 
  memx_equities_memo_sbe_v1_12.clordid.size + 
  memx_equities_memo_sbe_v1_12.cxl_rej_response_to.size + 
  memx_equities_memo_sbe_v1_12.cxl_rej_reason.size + 
  memx_equities_memo_sbe_v1_12.link_id_optional.size

-- Display: Order Cancel Reject Message
memx_equities_memo_sbe_v1_12.order_cancel_reject_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Order Cancel Reject Message
memx_equities_memo_sbe_v1_12.order_cancel_reject_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Sending Time: UTCTimestampNanos
  index, sending_time = memx_equities_memo_sbe_v1_12.sending_time.dissect(buffer, index, packet, parent)

  -- ClOrdId: ExecutionReport_CanceledClOrdID
  index, clordid = memx_equities_memo_sbe_v1_12.clordid.dissect(buffer, index, packet, parent)

  -- Cxl Rej Response To: CxlRejResponseToType
  index, cxl_rej_response_to = memx_equities_memo_sbe_v1_12.cxl_rej_response_to.dissect(buffer, index, packet, parent)

  -- Cxl Rej Reason: CancelRejectReasonCode
  index, cxl_rej_reason = memx_equities_memo_sbe_v1_12.cxl_rej_reason.dissect(buffer, index, packet, parent)

  -- Link Id Optional: ExecutionReport_CanceledLnkId
  index, link_id_optional = memx_equities_memo_sbe_v1_12.link_id_optional.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Order Cancel Reject Message
memx_equities_memo_sbe_v1_12.order_cancel_reject_message.dissect = function(buffer, offset, packet, parent)
  if show.order_cancel_reject_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_memx_equities_memo_sbe_v1_12.fields.order_cancel_reject_message, buffer(offset, 0))
    local index = memx_equities_memo_sbe_v1_12.order_cancel_reject_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = memx_equities_memo_sbe_v1_12.order_cancel_reject_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return memx_equities_memo_sbe_v1_12.order_cancel_reject_message.fields(buffer, offset, packet, parent)
  end
end

-- Extended Restatement Reason
memx_equities_memo_sbe_v1_12.extended_restatement_reason = {}

-- Size: Extended Restatement Reason
memx_equities_memo_sbe_v1_12.extended_restatement_reason.size = 1

-- Display: Extended Restatement Reason
memx_equities_memo_sbe_v1_12.extended_restatement_reason.display = function(value)
  if value == 0 then
    return "Extended Restatement Reason: None (0)"
  end
  if value == 1 then
    return "Extended Restatement Reason: Set Nbbo (1)"
  end
  if value == 2 then
    return "Extended Restatement Reason: Joined Nbbo (2)"
  end
  if value == 3 then
    return "Extended Restatement Reason: Self Trade Cancel Newest (3)"
  end
  if value == 4 then
    return "Extended Restatement Reason: Self Trade Cancel Oldest (4)"
  end
  if value == 5 then
    return "Extended Restatement Reason: Self Trade Decrement And Cancel (5)"
  end
  if value == 6 then
    return "Extended Restatement Reason: Self Trade Cancel Both (6)"
  end
  if value == 7 then
    return "Extended Restatement Reason: Self Trade Cancel Smallest (7)"
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
memx_equities_memo_sbe_v1_12.extended_restatement_reason.dissect = function(buffer, offset, packet, parent)
  local length = memx_equities_memo_sbe_v1_12.extended_restatement_reason.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = memx_equities_memo_sbe_v1_12.extended_restatement_reason.display(value, buffer, offset, packet, parent)

  parent:add(omi_memx_equities_memo_sbe_v1_12.fields.extended_restatement_reason, range, value, display)

  return offset + length, value
end

-- Transact Time
memx_equities_memo_sbe_v1_12.transact_time = {}

-- Size: Transact Time
memx_equities_memo_sbe_v1_12.transact_time.size = 8

-- Display: Transact Time
memx_equities_memo_sbe_v1_12.transact_time.display = function(value)
  return "Transact Time: "..value
end

-- Dissect: Transact Time
memx_equities_memo_sbe_v1_12.transact_time.dissect = function(buffer, offset, packet, parent)
  local length = memx_equities_memo_sbe_v1_12.transact_time.size
  local range = buffer(offset, length)
  local value = range:uint64()
  local display = memx_equities_memo_sbe_v1_12.transact_time.display(value, buffer, offset, packet, parent)

  parent:add(omi_memx_equities_memo_sbe_v1_12.fields.transact_time, range, value, display)

  return offset + length, value
end

-- Exec Restatement Reason
memx_equities_memo_sbe_v1_12.exec_restatement_reason = {}

-- Size: Exec Restatement Reason
memx_equities_memo_sbe_v1_12.exec_restatement_reason.size = 1

-- Display: Exec Restatement Reason
memx_equities_memo_sbe_v1_12.exec_restatement_reason.display = function(value)
  if value == 3 then
    return "Exec Restatement Reason: Order Reprice (3)"
  end
  if value == 5 then
    return "Exec Restatement Reason: Self Trade Prevention (5)"
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
memx_equities_memo_sbe_v1_12.exec_restatement_reason.dissect = function(buffer, offset, packet, parent)
  local length = memx_equities_memo_sbe_v1_12.exec_restatement_reason.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = memx_equities_memo_sbe_v1_12.exec_restatement_reason.display(value, buffer, offset, packet, parent)

  parent:add(omi_memx_equities_memo_sbe_v1_12.fields.exec_restatement_reason, range, value, display)

  return offset + length, value
end

-- Last Shares
memx_equities_memo_sbe_v1_12.last_shares = {}

-- Size: Last Shares
memx_equities_memo_sbe_v1_12.last_shares.size = 4

-- Display: Last Shares
memx_equities_memo_sbe_v1_12.last_shares.display = function(value)
  -- Check if field has value
  if value == 4294967295 then
    return "Last Shares: No Value"
  end

  return "Last Shares: "..value
end

-- Dissect: Last Shares
memx_equities_memo_sbe_v1_12.last_shares.dissect = function(buffer, offset, packet, parent)
  local length = memx_equities_memo_sbe_v1_12.last_shares.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = memx_equities_memo_sbe_v1_12.last_shares.display(value, buffer, offset, packet, parent)

  parent:add(omi_memx_equities_memo_sbe_v1_12.fields.last_shares, range, value, display)

  return offset + length, value
end

-- Cum Qty
memx_equities_memo_sbe_v1_12.cum_qty = {}

-- Size: Cum Qty
memx_equities_memo_sbe_v1_12.cum_qty.size = 4

-- Display: Cum Qty
memx_equities_memo_sbe_v1_12.cum_qty.display = function(value)
  return "Cum Qty: "..value
end

-- Dissect: Cum Qty
memx_equities_memo_sbe_v1_12.cum_qty.dissect = function(buffer, offset, packet, parent)
  local length = memx_equities_memo_sbe_v1_12.cum_qty.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = memx_equities_memo_sbe_v1_12.cum_qty.display(value, buffer, offset, packet, parent)

  parent:add(omi_memx_equities_memo_sbe_v1_12.fields.cum_qty, range, value, display)

  return offset + length, value
end

-- Leaves Qty
memx_equities_memo_sbe_v1_12.leaves_qty = {}

-- Size: Leaves Qty
memx_equities_memo_sbe_v1_12.leaves_qty.size = 4

-- Display: Leaves Qty
memx_equities_memo_sbe_v1_12.leaves_qty.display = function(value)
  return "Leaves Qty: "..value
end

-- Dissect: Leaves Qty
memx_equities_memo_sbe_v1_12.leaves_qty.dissect = function(buffer, offset, packet, parent)
  local length = memx_equities_memo_sbe_v1_12.leaves_qty.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = memx_equities_memo_sbe_v1_12.leaves_qty.display(value, buffer, offset, packet, parent)

  parent:add(omi_memx_equities_memo_sbe_v1_12.fields.leaves_qty, range, value, display)

  return offset + length, value
end

-- Last Px Optional
memx_equities_memo_sbe_v1_12.last_px_optional = {}

-- Size: Last Px Optional
memx_equities_memo_sbe_v1_12.last_px_optional.size = 8

-- Display: Last Px Optional
memx_equities_memo_sbe_v1_12.last_px_optional.display = function(raw, value)
  -- Check null sentinel value
  if raw == Int64(0x00000000, 0x80000000) then
    return "Last Px Optional: No Value"
  end

  return "Last Px Optional: "..value
end

-- Translate: Last Px Optional
memx_equities_memo_sbe_v1_12.last_px_optional.translate = function(raw)
  -- Check null sentinel value
  if raw == Int64(0x00000000, 0x80000000) then
    return 0/0
  end

  return raw:tonumber()/1000000
end

-- Dissect: Last Px Optional
memx_equities_memo_sbe_v1_12.last_px_optional.dissect = function(buffer, offset, packet, parent)
  local length = memx_equities_memo_sbe_v1_12.last_px_optional.size
  local range = buffer(offset, length)
  local raw = range:int64()
  local value = memx_equities_memo_sbe_v1_12.last_px_optional.translate(raw)
  local display = memx_equities_memo_sbe_v1_12.last_px_optional.display(raw, value, buffer, offset, packet, parent)

  parent:add(omi_memx_equities_memo_sbe_v1_12.fields.last_px_optional, range, value, display)

  return offset + length, value
end

-- Ord Status
memx_equities_memo_sbe_v1_12.ord_status = {}

-- Size: Ord Status
memx_equities_memo_sbe_v1_12.ord_status.size = 1

-- Display: Ord Status
memx_equities_memo_sbe_v1_12.ord_status.display = function(value)
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
  if value == "A" then
    return "Ord Status: Pending New (A)"
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
memx_equities_memo_sbe_v1_12.ord_status.dissect = function(buffer, offset, packet, parent)
  local length = memx_equities_memo_sbe_v1_12.ord_status.size
  local range = buffer(offset, length)

  -- parse as byte
  local value = range:uint()

  -- check if value is non zero
  if value ~= 0 then
    value = range:string()
  end

  local display = memx_equities_memo_sbe_v1_12.ord_status.display(value, buffer, offset, packet, parent)

  parent:add(omi_memx_equities_memo_sbe_v1_12.fields.ord_status, range, value, display)

  return offset + length, value
end

-- Exec Id
memx_equities_memo_sbe_v1_12.exec_id = {}

-- Size: Exec Id
memx_equities_memo_sbe_v1_12.exec_id.size = 8

-- Display: Exec Id
memx_equities_memo_sbe_v1_12.exec_id.display = function(value)
  return "Exec Id: "..value
end

-- Dissect: Exec Id
memx_equities_memo_sbe_v1_12.exec_id.dissect = function(buffer, offset, packet, parent)
  local length = memx_equities_memo_sbe_v1_12.exec_id.size
  local range = buffer(offset, length)
  local value = range:uint64()
  local display = memx_equities_memo_sbe_v1_12.exec_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_memx_equities_memo_sbe_v1_12.fields.exec_id, range, value, display)

  return offset + length, value
end

-- Order Id
memx_equities_memo_sbe_v1_12.order_id = {}

-- Size: Order Id
memx_equities_memo_sbe_v1_12.order_id.size = 8

-- Display: Order Id
memx_equities_memo_sbe_v1_12.order_id.display = function(value)
  return "Order Id: "..value
end

-- Dissect: Order Id
memx_equities_memo_sbe_v1_12.order_id.dissect = function(buffer, offset, packet, parent)
  local length = memx_equities_memo_sbe_v1_12.order_id.size
  local range = buffer(offset, length)
  local value = range:uint64()
  local display = memx_equities_memo_sbe_v1_12.order_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_memx_equities_memo_sbe_v1_12.fields.order_id, range, value, display)

  return offset + length, value
end

-- Execution Report Restatement Message
memx_equities_memo_sbe_v1_12.execution_report_restatement_message = {}

-- Size: Execution Report Restatement Message
memx_equities_memo_sbe_v1_12.execution_report_restatement_message.size =
  memx_equities_memo_sbe_v1_12.sending_time.size + 
  memx_equities_memo_sbe_v1_12.order_id.size + 
  memx_equities_memo_sbe_v1_12.clordid.size + 
  memx_equities_memo_sbe_v1_12.exec_id.size + 
  memx_equities_memo_sbe_v1_12.ord_status.size + 
  memx_equities_memo_sbe_v1_12.last_px_optional.size + 
  memx_equities_memo_sbe_v1_12.leaves_qty.size + 
  memx_equities_memo_sbe_v1_12.cum_qty.size + 
  memx_equities_memo_sbe_v1_12.last_shares.size + 
  memx_equities_memo_sbe_v1_12.exec_restatement_reason.size + 
  memx_equities_memo_sbe_v1_12.transact_time.size + 
  memx_equities_memo_sbe_v1_12.extended_restatement_reason.size + 
  memx_equities_memo_sbe_v1_12.link_id_optional.size

-- Display: Execution Report Restatement Message
memx_equities_memo_sbe_v1_12.execution_report_restatement_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Execution Report Restatement Message
memx_equities_memo_sbe_v1_12.execution_report_restatement_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Sending Time: UTCTimestampNanos
  index, sending_time = memx_equities_memo_sbe_v1_12.sending_time.dissect(buffer, index, packet, parent)

  -- Order Id: uint64
  index, order_id = memx_equities_memo_sbe_v1_12.order_id.dissect(buffer, index, packet, parent)

  -- ClOrdId: ExecutionReport_CanceledClOrdID
  index, clordid = memx_equities_memo_sbe_v1_12.clordid.dissect(buffer, index, packet, parent)

  -- Exec Id: uint64
  index, exec_id = memx_equities_memo_sbe_v1_12.exec_id.dissect(buffer, index, packet, parent)

  -- Ord Status: OrdStatusType
  index, ord_status = memx_equities_memo_sbe_v1_12.ord_status.dissect(buffer, index, packet, parent)

  -- Last Px Optional: PriceType
  index, last_px_optional = memx_equities_memo_sbe_v1_12.last_px_optional.dissect(buffer, index, packet, parent)

  -- Leaves Qty: uint32
  index, leaves_qty = memx_equities_memo_sbe_v1_12.leaves_qty.dissect(buffer, index, packet, parent)

  -- Cum Qty: uint32
  index, cum_qty = memx_equities_memo_sbe_v1_12.cum_qty.dissect(buffer, index, packet, parent)

  -- Last Shares: uint32
  index, last_shares = memx_equities_memo_sbe_v1_12.last_shares.dissect(buffer, index, packet, parent)

  -- Exec Restatement Reason: ExecRestatementType
  index, exec_restatement_reason = memx_equities_memo_sbe_v1_12.exec_restatement_reason.dissect(buffer, index, packet, parent)

  -- Transact Time: UTCTimestampNanos
  index, transact_time = memx_equities_memo_sbe_v1_12.transact_time.dissect(buffer, index, packet, parent)

  -- Extended Restatement Reason: ExtendedRestatementReasonType
  index, extended_restatement_reason = memx_equities_memo_sbe_v1_12.extended_restatement_reason.dissect(buffer, index, packet, parent)

  -- Link Id Optional: ExecutionReport_CanceledLnkId
  index, link_id_optional = memx_equities_memo_sbe_v1_12.link_id_optional.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Execution Report Restatement Message
memx_equities_memo_sbe_v1_12.execution_report_restatement_message.dissect = function(buffer, offset, packet, parent)
  if show.execution_report_restatement_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_memx_equities_memo_sbe_v1_12.fields.execution_report_restatement_message, buffer(offset, 0))
    local index = memx_equities_memo_sbe_v1_12.execution_report_restatement_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = memx_equities_memo_sbe_v1_12.execution_report_restatement_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return memx_equities_memo_sbe_v1_12.execution_report_restatement_message.fields(buffer, offset, packet, parent)
  end
end

-- Security Group
memx_equities_memo_sbe_v1_12.security_group = {}

-- Size: Security Group
memx_equities_memo_sbe_v1_12.security_group.size = 1

-- Display: Security Group
memx_equities_memo_sbe_v1_12.security_group.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Security Group: No Value"
  end

  return "Security Group: "..value
end

-- Dissect: Security Group
memx_equities_memo_sbe_v1_12.security_group.dissect = function(buffer, offset, packet, parent)
  local length = memx_equities_memo_sbe_v1_12.security_group.size
  local range = buffer(offset, length)

  -- parse as byte
  local value = range:uint()

  -- check if value is non zero
  if value ~= 0 then
    value = range:string()
  end

  local display = memx_equities_memo_sbe_v1_12.security_group.display(value, buffer, offset, packet, parent)

  parent:add(omi_memx_equities_memo_sbe_v1_12.fields.security_group, range, value, display)

  return offset + length, value
end

-- Trd Match Id
memx_equities_memo_sbe_v1_12.trd_match_id = {}

-- Size: Trd Match Id
memx_equities_memo_sbe_v1_12.trd_match_id.size = 8

-- Display: Trd Match Id
memx_equities_memo_sbe_v1_12.trd_match_id.display = function(value)
  return "Trd Match Id: "..value
end

-- Dissect: Trd Match Id
memx_equities_memo_sbe_v1_12.trd_match_id.dissect = function(buffer, offset, packet, parent)
  local length = memx_equities_memo_sbe_v1_12.trd_match_id.size
  local range = buffer(offset, length)
  local value = range:uint64()
  local display = memx_equities_memo_sbe_v1_12.trd_match_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_memx_equities_memo_sbe_v1_12.fields.trd_match_id, range, value, display)

  return offset + length, value
end

-- Exec Ref Id
memx_equities_memo_sbe_v1_12.exec_ref_id = {}

-- Size: Exec Ref Id
memx_equities_memo_sbe_v1_12.exec_ref_id.size = 8

-- Display: Exec Ref Id
memx_equities_memo_sbe_v1_12.exec_ref_id.display = function(value)
  return "Exec Ref Id: "..value
end

-- Dissect: Exec Ref Id
memx_equities_memo_sbe_v1_12.exec_ref_id.dissect = function(buffer, offset, packet, parent)
  local length = memx_equities_memo_sbe_v1_12.exec_ref_id.size
  local range = buffer(offset, length)
  local value = range:uint64()
  local display = memx_equities_memo_sbe_v1_12.exec_ref_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_memx_equities_memo_sbe_v1_12.fields.exec_ref_id, range, value, display)

  return offset + length, value
end

-- Execution Report Trade Break Message
memx_equities_memo_sbe_v1_12.execution_report_trade_break_message = {}

-- Size: Execution Report Trade Break Message
memx_equities_memo_sbe_v1_12.execution_report_trade_break_message.size =
  memx_equities_memo_sbe_v1_12.sending_time.size + 
  memx_equities_memo_sbe_v1_12.order_id.size + 
  memx_equities_memo_sbe_v1_12.clordid.size + 
  memx_equities_memo_sbe_v1_12.exec_id.size + 
  memx_equities_memo_sbe_v1_12.exec_ref_id.size + 
  memx_equities_memo_sbe_v1_12.trd_match_id.size + 
  memx_equities_memo_sbe_v1_12.ord_status.size + 
  memx_equities_memo_sbe_v1_12.leaves_qty.size + 
  memx_equities_memo_sbe_v1_12.cum_qty.size + 
  memx_equities_memo_sbe_v1_12.link_id_optional.size + 
  memx_equities_memo_sbe_v1_12.security_group.size

-- Display: Execution Report Trade Break Message
memx_equities_memo_sbe_v1_12.execution_report_trade_break_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Execution Report Trade Break Message
memx_equities_memo_sbe_v1_12.execution_report_trade_break_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Sending Time: UTCTimestampNanos
  index, sending_time = memx_equities_memo_sbe_v1_12.sending_time.dissect(buffer, index, packet, parent)

  -- Order Id: uint64
  index, order_id = memx_equities_memo_sbe_v1_12.order_id.dissect(buffer, index, packet, parent)

  -- ClOrdId: ExecutionReport_CanceledClOrdID
  index, clordid = memx_equities_memo_sbe_v1_12.clordid.dissect(buffer, index, packet, parent)

  -- Exec Id: uint64
  index, exec_id = memx_equities_memo_sbe_v1_12.exec_id.dissect(buffer, index, packet, parent)

  -- Exec Ref Id: uint64
  index, exec_ref_id = memx_equities_memo_sbe_v1_12.exec_ref_id.dissect(buffer, index, packet, parent)

  -- Trd Match Id: uint64
  index, trd_match_id = memx_equities_memo_sbe_v1_12.trd_match_id.dissect(buffer, index, packet, parent)

  -- Ord Status: OrdStatusType
  index, ord_status = memx_equities_memo_sbe_v1_12.ord_status.dissect(buffer, index, packet, parent)

  -- Leaves Qty: uint32
  index, leaves_qty = memx_equities_memo_sbe_v1_12.leaves_qty.dissect(buffer, index, packet, parent)

  -- Cum Qty: uint32
  index, cum_qty = memx_equities_memo_sbe_v1_12.cum_qty.dissect(buffer, index, packet, parent)

  -- Link Id Optional: ExecutionReport_CanceledLnkId
  index, link_id_optional = memx_equities_memo_sbe_v1_12.link_id_optional.dissect(buffer, index, packet, parent)

  -- Security Group: char
  index, security_group = memx_equities_memo_sbe_v1_12.security_group.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Execution Report Trade Break Message
memx_equities_memo_sbe_v1_12.execution_report_trade_break_message.dissect = function(buffer, offset, packet, parent)
  if show.execution_report_trade_break_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_memx_equities_memo_sbe_v1_12.fields.execution_report_trade_break_message, buffer(offset, 0))
    local index = memx_equities_memo_sbe_v1_12.execution_report_trade_break_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = memx_equities_memo_sbe_v1_12.execution_report_trade_break_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return memx_equities_memo_sbe_v1_12.execution_report_trade_break_message.fields(buffer, offset, packet, parent)
  end
end

-- Last Qty Optional
memx_equities_memo_sbe_v1_12.last_qty_optional = {}

-- Size: Last Qty Optional
memx_equities_memo_sbe_v1_12.last_qty_optional.size = 4

-- Display: Last Qty Optional
memx_equities_memo_sbe_v1_12.last_qty_optional.display = function(value)
  -- Check if field has value
  if value == 4294967295 then
    return "Last Qty Optional: No Value"
  end

  return "Last Qty Optional: "..value
end

-- Dissect: Last Qty Optional
memx_equities_memo_sbe_v1_12.last_qty_optional.dissect = function(buffer, offset, packet, parent)
  local length = memx_equities_memo_sbe_v1_12.last_qty_optional.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = memx_equities_memo_sbe_v1_12.last_qty_optional.display(value, buffer, offset, packet, parent)

  parent:add(omi_memx_equities_memo_sbe_v1_12.fields.last_qty_optional, range, value, display)

  return offset + length, value
end

-- Last Px
memx_equities_memo_sbe_v1_12.last_px = {}

-- Size: Last Px
memx_equities_memo_sbe_v1_12.last_px.size = 8

-- Display: Last Px
memx_equities_memo_sbe_v1_12.last_px.display = function(value)
  return "Last Px: "..value
end

-- Translate: Last Px
memx_equities_memo_sbe_v1_12.last_px.translate = function(raw)
  return raw:tonumber()/1000000
end

-- Dissect: Last Px
memx_equities_memo_sbe_v1_12.last_px.dissect = function(buffer, offset, packet, parent)
  local length = memx_equities_memo_sbe_v1_12.last_px.size
  local range = buffer(offset, length)
  local raw = range:int64()
  local value = memx_equities_memo_sbe_v1_12.last_px.translate(raw)
  local display = memx_equities_memo_sbe_v1_12.last_px.display(value, buffer, offset, packet, parent)

  parent:add(omi_memx_equities_memo_sbe_v1_12.fields.last_px, range, value, display)

  return offset + length, value
end

-- Execution Report Trade Correction Message
memx_equities_memo_sbe_v1_12.execution_report_trade_correction_message = {}

-- Size: Execution Report Trade Correction Message
memx_equities_memo_sbe_v1_12.execution_report_trade_correction_message.size =
  memx_equities_memo_sbe_v1_12.sending_time.size + 
  memx_equities_memo_sbe_v1_12.order_id.size + 
  memx_equities_memo_sbe_v1_12.clordid.size + 
  memx_equities_memo_sbe_v1_12.exec_id.size + 
  memx_equities_memo_sbe_v1_12.exec_ref_id.size + 
  memx_equities_memo_sbe_v1_12.trd_match_id.size + 
  memx_equities_memo_sbe_v1_12.ord_status.size + 
  memx_equities_memo_sbe_v1_12.last_px.size + 
  memx_equities_memo_sbe_v1_12.last_qty_optional.size + 
  memx_equities_memo_sbe_v1_12.leaves_qty.size + 
  memx_equities_memo_sbe_v1_12.cum_qty.size + 
  memx_equities_memo_sbe_v1_12.link_id_optional.size + 
  memx_equities_memo_sbe_v1_12.security_group.size

-- Display: Execution Report Trade Correction Message
memx_equities_memo_sbe_v1_12.execution_report_trade_correction_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Execution Report Trade Correction Message
memx_equities_memo_sbe_v1_12.execution_report_trade_correction_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Sending Time: UTCTimestampNanos
  index, sending_time = memx_equities_memo_sbe_v1_12.sending_time.dissect(buffer, index, packet, parent)

  -- Order Id: uint64
  index, order_id = memx_equities_memo_sbe_v1_12.order_id.dissect(buffer, index, packet, parent)

  -- ClOrdId: ExecutionReport_CanceledClOrdID
  index, clordid = memx_equities_memo_sbe_v1_12.clordid.dissect(buffer, index, packet, parent)

  -- Exec Id: uint64
  index, exec_id = memx_equities_memo_sbe_v1_12.exec_id.dissect(buffer, index, packet, parent)

  -- Exec Ref Id: uint64
  index, exec_ref_id = memx_equities_memo_sbe_v1_12.exec_ref_id.dissect(buffer, index, packet, parent)

  -- Trd Match Id: uint64
  index, trd_match_id = memx_equities_memo_sbe_v1_12.trd_match_id.dissect(buffer, index, packet, parent)

  -- Ord Status: OrdStatusType
  index, ord_status = memx_equities_memo_sbe_v1_12.ord_status.dissect(buffer, index, packet, parent)

  -- Last Px: PriceType
  index, last_px = memx_equities_memo_sbe_v1_12.last_px.dissect(buffer, index, packet, parent)

  -- Last Qty Optional: uint32
  index, last_qty_optional = memx_equities_memo_sbe_v1_12.last_qty_optional.dissect(buffer, index, packet, parent)

  -- Leaves Qty: uint32
  index, leaves_qty = memx_equities_memo_sbe_v1_12.leaves_qty.dissect(buffer, index, packet, parent)

  -- Cum Qty: uint32
  index, cum_qty = memx_equities_memo_sbe_v1_12.cum_qty.dissect(buffer, index, packet, parent)

  -- Link Id Optional: ExecutionReport_CanceledLnkId
  index, link_id_optional = memx_equities_memo_sbe_v1_12.link_id_optional.dissect(buffer, index, packet, parent)

  -- Security Group: char
  index, security_group = memx_equities_memo_sbe_v1_12.security_group.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Execution Report Trade Correction Message
memx_equities_memo_sbe_v1_12.execution_report_trade_correction_message.dissect = function(buffer, offset, packet, parent)
  if show.execution_report_trade_correction_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_memx_equities_memo_sbe_v1_12.fields.execution_report_trade_correction_message, buffer(offset, 0))
    local index = memx_equities_memo_sbe_v1_12.execution_report_trade_correction_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = memx_equities_memo_sbe_v1_12.execution_report_trade_correction_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return memx_equities_memo_sbe_v1_12.execution_report_trade_correction_message.fields(buffer, offset, packet, parent)
  end
end

-- Locate Broker Optional
memx_equities_memo_sbe_v1_12.locate_broker_optional = {}

-- Size: Locate Broker Optional
memx_equities_memo_sbe_v1_12.locate_broker_optional.size = 4

-- Display: Locate Broker Optional
memx_equities_memo_sbe_v1_12.locate_broker_optional.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Locate Broker Optional: No Value"
  end

  return "Locate Broker Optional: "..value
end

-- Dissect: Locate Broker Optional
memx_equities_memo_sbe_v1_12.locate_broker_optional.dissect = function(buffer, offset, packet, parent)
  local length = memx_equities_memo_sbe_v1_12.locate_broker_optional.size
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

  local display = memx_equities_memo_sbe_v1_12.locate_broker_optional.display(value, buffer, offset, packet, parent)

  parent:add(omi_memx_equities_memo_sbe_v1_12.fields.locate_broker_optional, range, value, display)

  return offset + length, value
end

-- Locate Reqd
memx_equities_memo_sbe_v1_12.locate_reqd = {}

-- Size: Locate Reqd
memx_equities_memo_sbe_v1_12.locate_reqd.size = 1

-- Display: Locate Reqd
memx_equities_memo_sbe_v1_12.locate_reqd.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Locate Reqd: No Value"
  end

  return "Locate Reqd: "..value
end

-- Dissect: Locate Reqd
memx_equities_memo_sbe_v1_12.locate_reqd.dissect = function(buffer, offset, packet, parent)
  local length = memx_equities_memo_sbe_v1_12.locate_reqd.size
  local range = buffer(offset, length)

  -- parse as byte
  local value = range:uint()

  -- check if value is non zero
  if value ~= 0 then
    value = range:string()
  end

  local display = memx_equities_memo_sbe_v1_12.locate_reqd.display(value, buffer, offset, packet, parent)

  parent:add(omi_memx_equities_memo_sbe_v1_12.fields.locate_reqd, range, value, display)

  return offset + length, value
end

-- Display Qty
memx_equities_memo_sbe_v1_12.display_qty = {}

-- Size: Display Qty
memx_equities_memo_sbe_v1_12.display_qty.size = 4

-- Display: Display Qty
memx_equities_memo_sbe_v1_12.display_qty.display = function(value)
  -- Check if field has value
  if value == 4294967295 then
    return "Display Qty: No Value"
  end

  return "Display Qty: "..value
end

-- Dissect: Display Qty
memx_equities_memo_sbe_v1_12.display_qty.dissect = function(buffer, offset, packet, parent)
  local length = memx_equities_memo_sbe_v1_12.display_qty.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = memx_equities_memo_sbe_v1_12.display_qty.display(value, buffer, offset, packet, parent)

  parent:add(omi_memx_equities_memo_sbe_v1_12.fields.display_qty, range, value, display)

  return offset + length, value
end

-- Price
memx_equities_memo_sbe_v1_12.price = {}

-- Size: Price
memx_equities_memo_sbe_v1_12.price.size = 8

-- Display: Price
memx_equities_memo_sbe_v1_12.price.display = function(raw, value)
  -- Check null sentinel value
  if raw == Int64(0x00000000, 0x80000000) then
    return "Price: No Value"
  end

  return "Price: "..value
end

-- Translate: Price
memx_equities_memo_sbe_v1_12.price.translate = function(raw)
  -- Check null sentinel value
  if raw == Int64(0x00000000, 0x80000000) then
    return 0/0
  end

  return raw:tonumber()/1000000
end

-- Dissect: Price
memx_equities_memo_sbe_v1_12.price.dissect = function(buffer, offset, packet, parent)
  local length = memx_equities_memo_sbe_v1_12.price.size
  local range = buffer(offset, length)
  local raw = range:int64()
  local value = memx_equities_memo_sbe_v1_12.price.translate(raw)
  local display = memx_equities_memo_sbe_v1_12.price.display(raw, value, buffer, offset, packet, parent)

  parent:add(omi_memx_equities_memo_sbe_v1_12.fields.price, range, value, display)

  return offset + length, value
end

-- Ord Type
memx_equities_memo_sbe_v1_12.ord_type = {}

-- Size: Ord Type
memx_equities_memo_sbe_v1_12.ord_type.size = 1

-- Display: Ord Type
memx_equities_memo_sbe_v1_12.ord_type.display = function(value)
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
  if value == "P" then
    return "Ord Type: Pegged (P)"
  end

  return "Ord Type: Unknown("..value..")"
end

-- Dissect: Ord Type
memx_equities_memo_sbe_v1_12.ord_type.dissect = function(buffer, offset, packet, parent)
  local length = memx_equities_memo_sbe_v1_12.ord_type.size
  local range = buffer(offset, length)

  -- parse as byte
  local value = range:uint()

  -- check if value is non zero
  if value ~= 0 then
    value = range:string()
  end

  local display = memx_equities_memo_sbe_v1_12.ord_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_memx_equities_memo_sbe_v1_12.fields.ord_type, range, value, display)

  return offset + length, value
end

-- Order Qty
memx_equities_memo_sbe_v1_12.order_qty = {}

-- Size: Order Qty
memx_equities_memo_sbe_v1_12.order_qty.size = 4

-- Display: Order Qty
memx_equities_memo_sbe_v1_12.order_qty.display = function(value)
  return "Order Qty: "..value
end

-- Dissect: Order Qty
memx_equities_memo_sbe_v1_12.order_qty.dissect = function(buffer, offset, packet, parent)
  local length = memx_equities_memo_sbe_v1_12.order_qty.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = memx_equities_memo_sbe_v1_12.order_qty.display(value, buffer, offset, packet, parent)

  parent:add(omi_memx_equities_memo_sbe_v1_12.fields.order_qty, range, value, display)

  return offset + length, value
end

-- Side
memx_equities_memo_sbe_v1_12.side = {}

-- Size: Side
memx_equities_memo_sbe_v1_12.side.size = 1

-- Display: Side
memx_equities_memo_sbe_v1_12.side.display = function(value)
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
  if value == "5" then
    return "Side: Sell Short (5)"
  end
  if value == "6" then
    return "Side: Sell Short Exempt (6)"
  end

  return "Side: Unknown("..value..")"
end

-- Dissect: Side
memx_equities_memo_sbe_v1_12.side.dissect = function(buffer, offset, packet, parent)
  local length = memx_equities_memo_sbe_v1_12.side.size
  local range = buffer(offset, length)

  -- parse as byte
  local value = range:uint()

  -- check if value is non zero
  if value ~= 0 then
    value = range:string()
  end

  local display = memx_equities_memo_sbe_v1_12.side.display(value, buffer, offset, packet, parent)

  parent:add(omi_memx_equities_memo_sbe_v1_12.fields.side, range, value, display)

  return offset + length, value
end

-- OrigClOrdId Optional
memx_equities_memo_sbe_v1_12.origclordid_optional = {}

-- Size: OrigClOrdId Optional
memx_equities_memo_sbe_v1_12.origclordid_optional.size = 16

-- Display: OrigClOrdId Optional
memx_equities_memo_sbe_v1_12.origclordid_optional.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "OrigClOrdId Optional: No Value"
  end

  return "OrigClOrdId Optional: "..value
end

-- Dissect: OrigClOrdId Optional
memx_equities_memo_sbe_v1_12.origclordid_optional.dissect = function(buffer, offset, packet, parent)
  local length = memx_equities_memo_sbe_v1_12.origclordid_optional.size
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

  local display = memx_equities_memo_sbe_v1_12.origclordid_optional.display(value, buffer, offset, packet, parent)

  parent:add(omi_memx_equities_memo_sbe_v1_12.fields.origclordid_optional, range, value, display)

  return offset + length, value
end

-- Execution Report Replaced Message
memx_equities_memo_sbe_v1_12.execution_report_replaced_message = {}

-- Size: Execution Report Replaced Message
memx_equities_memo_sbe_v1_12.execution_report_replaced_message.size =
  memx_equities_memo_sbe_v1_12.sending_time.size + 
  memx_equities_memo_sbe_v1_12.order_id.size + 
  memx_equities_memo_sbe_v1_12.clordid.size + 
  memx_equities_memo_sbe_v1_12.origclordid_optional.size + 
  memx_equities_memo_sbe_v1_12.exec_id.size + 
  memx_equities_memo_sbe_v1_12.symbol.size + 
  memx_equities_memo_sbe_v1_12.symbol_sfx.size + 
  memx_equities_memo_sbe_v1_12.side.size + 
  memx_equities_memo_sbe_v1_12.order_qty.size + 
  memx_equities_memo_sbe_v1_12.ord_type.size + 
  memx_equities_memo_sbe_v1_12.price.size + 
  memx_equities_memo_sbe_v1_12.display_qty.size + 
  memx_equities_memo_sbe_v1_12.locate_reqd.size + 
  memx_equities_memo_sbe_v1_12.ord_status.size + 
  memx_equities_memo_sbe_v1_12.leaves_qty.size + 
  memx_equities_memo_sbe_v1_12.cum_qty.size + 
  memx_equities_memo_sbe_v1_12.transact_time.size + 
  memx_equities_memo_sbe_v1_12.link_id_optional.size + 
  memx_equities_memo_sbe_v1_12.locate_broker_optional.size

-- Display: Execution Report Replaced Message
memx_equities_memo_sbe_v1_12.execution_report_replaced_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Execution Report Replaced Message
memx_equities_memo_sbe_v1_12.execution_report_replaced_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Sending Time: UTCTimestampNanos
  index, sending_time = memx_equities_memo_sbe_v1_12.sending_time.dissect(buffer, index, packet, parent)

  -- Order Id: uint64
  index, order_id = memx_equities_memo_sbe_v1_12.order_id.dissect(buffer, index, packet, parent)

  -- ClOrdId: ExecutionReport_CanceledClOrdID
  index, clordid = memx_equities_memo_sbe_v1_12.clordid.dissect(buffer, index, packet, parent)

  -- OrigClOrdId Optional: ExecutionReport_CanceledOrigClOrdID
  index, origclordid_optional = memx_equities_memo_sbe_v1_12.origclordid_optional.dissect(buffer, index, packet, parent)

  -- Exec Id: uint64
  index, exec_id = memx_equities_memo_sbe_v1_12.exec_id.dissect(buffer, index, packet, parent)

  -- Symbol: ExecutionReport_NewSymbol
  index, symbol = memx_equities_memo_sbe_v1_12.symbol.dissect(buffer, index, packet, parent)

  -- Symbol Sfx: ExecutionReport_NewSymbolSfx
  index, symbol_sfx = memx_equities_memo_sbe_v1_12.symbol_sfx.dissect(buffer, index, packet, parent)

  -- Side: SideType
  index, side = memx_equities_memo_sbe_v1_12.side.dissect(buffer, index, packet, parent)

  -- Order Qty: uint32
  index, order_qty = memx_equities_memo_sbe_v1_12.order_qty.dissect(buffer, index, packet, parent)

  -- Ord Type: OrdType
  index, ord_type = memx_equities_memo_sbe_v1_12.ord_type.dissect(buffer, index, packet, parent)

  -- Price: PriceType
  index, price = memx_equities_memo_sbe_v1_12.price.dissect(buffer, index, packet, parent)

  -- Display Qty: uint32
  index, display_qty = memx_equities_memo_sbe_v1_12.display_qty.dissect(buffer, index, packet, parent)

  -- Locate Reqd: char
  index, locate_reqd = memx_equities_memo_sbe_v1_12.locate_reqd.dissect(buffer, index, packet, parent)

  -- Ord Status: OrdStatusType
  index, ord_status = memx_equities_memo_sbe_v1_12.ord_status.dissect(buffer, index, packet, parent)

  -- Leaves Qty: uint32
  index, leaves_qty = memx_equities_memo_sbe_v1_12.leaves_qty.dissect(buffer, index, packet, parent)

  -- Cum Qty: uint32
  index, cum_qty = memx_equities_memo_sbe_v1_12.cum_qty.dissect(buffer, index, packet, parent)

  -- Transact Time: UTCTimestampNanos
  index, transact_time = memx_equities_memo_sbe_v1_12.transact_time.dissect(buffer, index, packet, parent)

  -- Link Id Optional: ExecutionReport_CanceledLnkId
  index, link_id_optional = memx_equities_memo_sbe_v1_12.link_id_optional.dissect(buffer, index, packet, parent)

  -- Locate Broker Optional: ExecutionReport_NewLocateBroker
  index, locate_broker_optional = memx_equities_memo_sbe_v1_12.locate_broker_optional.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Execution Report Replaced Message
memx_equities_memo_sbe_v1_12.execution_report_replaced_message.dissect = function(buffer, offset, packet, parent)
  if show.execution_report_replaced_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_memx_equities_memo_sbe_v1_12.fields.execution_report_replaced_message, buffer(offset, 0))
    local index = memx_equities_memo_sbe_v1_12.execution_report_replaced_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = memx_equities_memo_sbe_v1_12.execution_report_replaced_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return memx_equities_memo_sbe_v1_12.execution_report_replaced_message.fields(buffer, offset, packet, parent)
  end
end

-- Execution Report Pending Replace Message
memx_equities_memo_sbe_v1_12.execution_report_pending_replace_message = {}

-- Size: Execution Report Pending Replace Message
memx_equities_memo_sbe_v1_12.execution_report_pending_replace_message.size =
  memx_equities_memo_sbe_v1_12.sending_time.size + 
  memx_equities_memo_sbe_v1_12.order_id.size + 
  memx_equities_memo_sbe_v1_12.clordid.size + 
  memx_equities_memo_sbe_v1_12.origclordid_optional.size + 
  memx_equities_memo_sbe_v1_12.exec_id.size + 
  memx_equities_memo_sbe_v1_12.symbol.size + 
  memx_equities_memo_sbe_v1_12.symbol_sfx.size + 
  memx_equities_memo_sbe_v1_12.side.size + 
  memx_equities_memo_sbe_v1_12.order_qty.size + 
  memx_equities_memo_sbe_v1_12.ord_type.size + 
  memx_equities_memo_sbe_v1_12.price.size + 
  memx_equities_memo_sbe_v1_12.display_qty.size + 
  memx_equities_memo_sbe_v1_12.locate_reqd.size + 
  memx_equities_memo_sbe_v1_12.ord_status.size + 
  memx_equities_memo_sbe_v1_12.leaves_qty.size + 
  memx_equities_memo_sbe_v1_12.cum_qty.size + 
  memx_equities_memo_sbe_v1_12.link_id_optional.size + 
  memx_equities_memo_sbe_v1_12.locate_broker_optional.size

-- Display: Execution Report Pending Replace Message
memx_equities_memo_sbe_v1_12.execution_report_pending_replace_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Execution Report Pending Replace Message
memx_equities_memo_sbe_v1_12.execution_report_pending_replace_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Sending Time: UTCTimestampNanos
  index, sending_time = memx_equities_memo_sbe_v1_12.sending_time.dissect(buffer, index, packet, parent)

  -- Order Id: uint64
  index, order_id = memx_equities_memo_sbe_v1_12.order_id.dissect(buffer, index, packet, parent)

  -- ClOrdId: ExecutionReport_CanceledClOrdID
  index, clordid = memx_equities_memo_sbe_v1_12.clordid.dissect(buffer, index, packet, parent)

  -- OrigClOrdId Optional: ExecutionReport_CanceledOrigClOrdID
  index, origclordid_optional = memx_equities_memo_sbe_v1_12.origclordid_optional.dissect(buffer, index, packet, parent)

  -- Exec Id: uint64
  index, exec_id = memx_equities_memo_sbe_v1_12.exec_id.dissect(buffer, index, packet, parent)

  -- Symbol: ExecutionReport_NewSymbol
  index, symbol = memx_equities_memo_sbe_v1_12.symbol.dissect(buffer, index, packet, parent)

  -- Symbol Sfx: ExecutionReport_NewSymbolSfx
  index, symbol_sfx = memx_equities_memo_sbe_v1_12.symbol_sfx.dissect(buffer, index, packet, parent)

  -- Side: SideType
  index, side = memx_equities_memo_sbe_v1_12.side.dissect(buffer, index, packet, parent)

  -- Order Qty: uint32
  index, order_qty = memx_equities_memo_sbe_v1_12.order_qty.dissect(buffer, index, packet, parent)

  -- Ord Type: OrdType
  index, ord_type = memx_equities_memo_sbe_v1_12.ord_type.dissect(buffer, index, packet, parent)

  -- Price: PriceType
  index, price = memx_equities_memo_sbe_v1_12.price.dissect(buffer, index, packet, parent)

  -- Display Qty: uint32
  index, display_qty = memx_equities_memo_sbe_v1_12.display_qty.dissect(buffer, index, packet, parent)

  -- Locate Reqd: char
  index, locate_reqd = memx_equities_memo_sbe_v1_12.locate_reqd.dissect(buffer, index, packet, parent)

  -- Ord Status: OrdStatusType
  index, ord_status = memx_equities_memo_sbe_v1_12.ord_status.dissect(buffer, index, packet, parent)

  -- Leaves Qty: uint32
  index, leaves_qty = memx_equities_memo_sbe_v1_12.leaves_qty.dissect(buffer, index, packet, parent)

  -- Cum Qty: uint32
  index, cum_qty = memx_equities_memo_sbe_v1_12.cum_qty.dissect(buffer, index, packet, parent)

  -- Link Id Optional: ExecutionReport_CanceledLnkId
  index, link_id_optional = memx_equities_memo_sbe_v1_12.link_id_optional.dissect(buffer, index, packet, parent)

  -- Locate Broker Optional: ExecutionReport_NewLocateBroker
  index, locate_broker_optional = memx_equities_memo_sbe_v1_12.locate_broker_optional.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Execution Report Pending Replace Message
memx_equities_memo_sbe_v1_12.execution_report_pending_replace_message.dissect = function(buffer, offset, packet, parent)
  if show.execution_report_pending_replace_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_memx_equities_memo_sbe_v1_12.fields.execution_report_pending_replace_message, buffer(offset, 0))
    local index = memx_equities_memo_sbe_v1_12.execution_report_pending_replace_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = memx_equities_memo_sbe_v1_12.execution_report_pending_replace_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return memx_equities_memo_sbe_v1_12.execution_report_pending_replace_message.fields(buffer, offset, packet, parent)
  end
end

-- Mass Cancel Done Message
memx_equities_memo_sbe_v1_12.mass_cancel_done_message = {}

-- Size: Mass Cancel Done Message
memx_equities_memo_sbe_v1_12.mass_cancel_done_message.size =
  memx_equities_memo_sbe_v1_12.sending_time.size + 
  memx_equities_memo_sbe_v1_12.clordid.size

-- Display: Mass Cancel Done Message
memx_equities_memo_sbe_v1_12.mass_cancel_done_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Mass Cancel Done Message
memx_equities_memo_sbe_v1_12.mass_cancel_done_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Sending Time: UTCTimestampNanos
  index, sending_time = memx_equities_memo_sbe_v1_12.sending_time.dissect(buffer, index, packet, parent)

  -- ClOrdId: ExecutionReport_CanceledClOrdID
  index, clordid = memx_equities_memo_sbe_v1_12.clordid.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Mass Cancel Done Message
memx_equities_memo_sbe_v1_12.mass_cancel_done_message.dissect = function(buffer, offset, packet, parent)
  if show.mass_cancel_done_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_memx_equities_memo_sbe_v1_12.fields.mass_cancel_done_message, buffer(offset, 0))
    local index = memx_equities_memo_sbe_v1_12.mass_cancel_done_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = memx_equities_memo_sbe_v1_12.mass_cancel_done_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return memx_equities_memo_sbe_v1_12.mass_cancel_done_message.fields(buffer, offset, packet, parent)
  end
end

-- Cancel Reason
memx_equities_memo_sbe_v1_12.cancel_reason = {}

-- Size: Cancel Reason
memx_equities_memo_sbe_v1_12.cancel_reason.size = 1

-- Display: Cancel Reason
memx_equities_memo_sbe_v1_12.cancel_reason.display = function(value)
  if value == 0 then
    return "Cancel Reason: Other (0)"
  end
  if value == 1 then
    return "Cancel Reason: User Requested Cancel (1)"
  end
  if value == 4 then
    return "Cancel Reason: End Of Trading (4)"
  end
  if value == 5 then
    return "Cancel Reason: Limit Up Limit Down (5)"
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
  if value == 9 then
    return "Cancel Reason: Lock Or Cross Book (9)"
  end
  if value == 10 then
    return "Cancel Reason: Self Trade Prevention (10)"
  end
  if value == 11 then
    return "Cancel Reason: Insufficient Quotes (11)"
  end
  if value == 12 then
    return "Cancel Reason: Non Compliant Price (12)"
  end
  if value == 13 then
    return "Cancel Reason: Participant Disconnect (13)"
  end
  if value == 14 then
    return "Cancel Reason: Order Not Bookable (14)"
  end
  if value == 15 then
    return "Cancel Reason: Trade Protection Limits (15)"
  end
  if value == 16 then
    return "Cancel Reason: Unable To Route (16)"
  end
  if value == 17 then
    return "Cancel Reason: Firm Disabled (17)"
  end
  if value == 18 then
    return "Cancel Reason: Mpid Disabled (18)"
  end
  if value == 19 then
    return "Cancel Reason: Account Disabled (19)"
  end
  if value == 20 then
    return "Cancel Reason: Notional Exposure Risk Breached (20)"
  end
  if value == 255 then
    return "Cancel Reason: Null Value (255)"
  end
  if value == 255 then
    return "Cancel Reason: No Value"
  end

  return "Cancel Reason: Unknown("..value..")"
end

-- Dissect: Cancel Reason
memx_equities_memo_sbe_v1_12.cancel_reason.dissect = function(buffer, offset, packet, parent)
  local length = memx_equities_memo_sbe_v1_12.cancel_reason.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = memx_equities_memo_sbe_v1_12.cancel_reason.display(value, buffer, offset, packet, parent)

  parent:add(omi_memx_equities_memo_sbe_v1_12.fields.cancel_reason, range, value, display)

  return offset + length, value
end

-- Execution Report Canceled Message
memx_equities_memo_sbe_v1_12.execution_report_canceled_message = {}

-- Size: Execution Report Canceled Message
memx_equities_memo_sbe_v1_12.execution_report_canceled_message.size =
  memx_equities_memo_sbe_v1_12.sending_time.size + 
  memx_equities_memo_sbe_v1_12.clordid.size + 
  memx_equities_memo_sbe_v1_12.origclordid_optional.size + 
  memx_equities_memo_sbe_v1_12.order_id.size + 
  memx_equities_memo_sbe_v1_12.exec_id.size + 
  memx_equities_memo_sbe_v1_12.ord_status.size + 
  memx_equities_memo_sbe_v1_12.leaves_qty.size + 
  memx_equities_memo_sbe_v1_12.cum_qty.size + 
  memx_equities_memo_sbe_v1_12.cancel_reason.size + 
  memx_equities_memo_sbe_v1_12.transact_time.size + 
  memx_equities_memo_sbe_v1_12.link_id_optional.size

-- Display: Execution Report Canceled Message
memx_equities_memo_sbe_v1_12.execution_report_canceled_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Execution Report Canceled Message
memx_equities_memo_sbe_v1_12.execution_report_canceled_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Sending Time: UTCTimestampNanos
  index, sending_time = memx_equities_memo_sbe_v1_12.sending_time.dissect(buffer, index, packet, parent)

  -- ClOrdId: ExecutionReport_CanceledClOrdID
  index, clordid = memx_equities_memo_sbe_v1_12.clordid.dissect(buffer, index, packet, parent)

  -- OrigClOrdId Optional: ExecutionReport_CanceledOrigClOrdID
  index, origclordid_optional = memx_equities_memo_sbe_v1_12.origclordid_optional.dissect(buffer, index, packet, parent)

  -- Order Id: uint64
  index, order_id = memx_equities_memo_sbe_v1_12.order_id.dissect(buffer, index, packet, parent)

  -- Exec Id: uint64
  index, exec_id = memx_equities_memo_sbe_v1_12.exec_id.dissect(buffer, index, packet, parent)

  -- Ord Status: OrdStatusType
  index, ord_status = memx_equities_memo_sbe_v1_12.ord_status.dissect(buffer, index, packet, parent)

  -- Leaves Qty: uint32
  index, leaves_qty = memx_equities_memo_sbe_v1_12.leaves_qty.dissect(buffer, index, packet, parent)

  -- Cum Qty: uint32
  index, cum_qty = memx_equities_memo_sbe_v1_12.cum_qty.dissect(buffer, index, packet, parent)

  -- Cancel Reason: CancelReasonCode
  index, cancel_reason = memx_equities_memo_sbe_v1_12.cancel_reason.dissect(buffer, index, packet, parent)

  -- Transact Time: UTCTimestampNanos
  index, transact_time = memx_equities_memo_sbe_v1_12.transact_time.dissect(buffer, index, packet, parent)

  -- Link Id Optional: ExecutionReport_CanceledLnkId
  index, link_id_optional = memx_equities_memo_sbe_v1_12.link_id_optional.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Execution Report Canceled Message
memx_equities_memo_sbe_v1_12.execution_report_canceled_message.dissect = function(buffer, offset, packet, parent)
  if show.execution_report_canceled_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_memx_equities_memo_sbe_v1_12.fields.execution_report_canceled_message, buffer(offset, 0))
    local index = memx_equities_memo_sbe_v1_12.execution_report_canceled_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = memx_equities_memo_sbe_v1_12.execution_report_canceled_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return memx_equities_memo_sbe_v1_12.execution_report_canceled_message.fields(buffer, offset, packet, parent)
  end
end

-- Pending Mass Cancel Message
memx_equities_memo_sbe_v1_12.pending_mass_cancel_message = {}

-- Size: Pending Mass Cancel Message
memx_equities_memo_sbe_v1_12.pending_mass_cancel_message.size =
  memx_equities_memo_sbe_v1_12.sending_time.size + 
  memx_equities_memo_sbe_v1_12.clordid.size + 
  memx_equities_memo_sbe_v1_12.symbol.size + 
  memx_equities_memo_sbe_v1_12.symbol_sfx.size + 
  memx_equities_memo_sbe_v1_12.side_optional.size + 
  memx_equities_memo_sbe_v1_12.lower_than_price.size + 
  memx_equities_memo_sbe_v1_12.higher_than_price.size + 
  memx_equities_memo_sbe_v1_12.cancel_group_id.size

-- Display: Pending Mass Cancel Message
memx_equities_memo_sbe_v1_12.pending_mass_cancel_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Pending Mass Cancel Message
memx_equities_memo_sbe_v1_12.pending_mass_cancel_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Sending Time: UTCTimestampNanos
  index, sending_time = memx_equities_memo_sbe_v1_12.sending_time.dissect(buffer, index, packet, parent)

  -- ClOrdId: ExecutionReport_CanceledClOrdID
  index, clordid = memx_equities_memo_sbe_v1_12.clordid.dissect(buffer, index, packet, parent)

  -- Symbol: ExecutionReport_NewSymbol
  index, symbol = memx_equities_memo_sbe_v1_12.symbol.dissect(buffer, index, packet, parent)

  -- Symbol Sfx: ExecutionReport_NewSymbolSfx
  index, symbol_sfx = memx_equities_memo_sbe_v1_12.symbol_sfx.dissect(buffer, index, packet, parent)

  -- Side Optional: SideType
  index, side_optional = memx_equities_memo_sbe_v1_12.side_optional.dissect(buffer, index, packet, parent)

  -- Lower Than Price: PriceType
  index, lower_than_price = memx_equities_memo_sbe_v1_12.lower_than_price.dissect(buffer, index, packet, parent)

  -- Higher Than Price: PriceType
  index, higher_than_price = memx_equities_memo_sbe_v1_12.higher_than_price.dissect(buffer, index, packet, parent)

  -- Cancel Group Id: uint16
  index, cancel_group_id = memx_equities_memo_sbe_v1_12.cancel_group_id.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Pending Mass Cancel Message
memx_equities_memo_sbe_v1_12.pending_mass_cancel_message.dissect = function(buffer, offset, packet, parent)
  if show.pending_mass_cancel_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_memx_equities_memo_sbe_v1_12.fields.pending_mass_cancel_message, buffer(offset, 0))
    local index = memx_equities_memo_sbe_v1_12.pending_mass_cancel_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = memx_equities_memo_sbe_v1_12.pending_mass_cancel_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return memx_equities_memo_sbe_v1_12.pending_mass_cancel_message.fields(buffer, offset, packet, parent)
  end
end

-- Execution Report Pending Cancel Message
memx_equities_memo_sbe_v1_12.execution_report_pending_cancel_message = {}

-- Size: Execution Report Pending Cancel Message
memx_equities_memo_sbe_v1_12.execution_report_pending_cancel_message.size =
  memx_equities_memo_sbe_v1_12.sending_time.size + 
  memx_equities_memo_sbe_v1_12.order_id.size + 
  memx_equities_memo_sbe_v1_12.clordid.size + 
  memx_equities_memo_sbe_v1_12.origclordid_optional.size + 
  memx_equities_memo_sbe_v1_12.exec_id.size + 
  memx_equities_memo_sbe_v1_12.symbol.size + 
  memx_equities_memo_sbe_v1_12.symbol_sfx.size + 
  memx_equities_memo_sbe_v1_12.ord_status.size + 
  memx_equities_memo_sbe_v1_12.leaves_qty.size + 
  memx_equities_memo_sbe_v1_12.cum_qty.size + 
  memx_equities_memo_sbe_v1_12.link_id_optional.size

-- Display: Execution Report Pending Cancel Message
memx_equities_memo_sbe_v1_12.execution_report_pending_cancel_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Execution Report Pending Cancel Message
memx_equities_memo_sbe_v1_12.execution_report_pending_cancel_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Sending Time: UTCTimestampNanos
  index, sending_time = memx_equities_memo_sbe_v1_12.sending_time.dissect(buffer, index, packet, parent)

  -- Order Id: uint64
  index, order_id = memx_equities_memo_sbe_v1_12.order_id.dissect(buffer, index, packet, parent)

  -- ClOrdId: ExecutionReport_CanceledClOrdID
  index, clordid = memx_equities_memo_sbe_v1_12.clordid.dissect(buffer, index, packet, parent)

  -- OrigClOrdId Optional: ExecutionReport_CanceledOrigClOrdID
  index, origclordid_optional = memx_equities_memo_sbe_v1_12.origclordid_optional.dissect(buffer, index, packet, parent)

  -- Exec Id: uint64
  index, exec_id = memx_equities_memo_sbe_v1_12.exec_id.dissect(buffer, index, packet, parent)

  -- Symbol: ExecutionReport_NewSymbol
  index, symbol = memx_equities_memo_sbe_v1_12.symbol.dissect(buffer, index, packet, parent)

  -- Symbol Sfx: ExecutionReport_NewSymbolSfx
  index, symbol_sfx = memx_equities_memo_sbe_v1_12.symbol_sfx.dissect(buffer, index, packet, parent)

  -- Ord Status: OrdStatusType
  index, ord_status = memx_equities_memo_sbe_v1_12.ord_status.dissect(buffer, index, packet, parent)

  -- Leaves Qty: uint32
  index, leaves_qty = memx_equities_memo_sbe_v1_12.leaves_qty.dissect(buffer, index, packet, parent)

  -- Cum Qty: uint32
  index, cum_qty = memx_equities_memo_sbe_v1_12.cum_qty.dissect(buffer, index, packet, parent)

  -- Link Id Optional: ExecutionReport_CanceledLnkId
  index, link_id_optional = memx_equities_memo_sbe_v1_12.link_id_optional.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Execution Report Pending Cancel Message
memx_equities_memo_sbe_v1_12.execution_report_pending_cancel_message.dissect = function(buffer, offset, packet, parent)
  if show.execution_report_pending_cancel_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_memx_equities_memo_sbe_v1_12.fields.execution_report_pending_cancel_message, buffer(offset, 0))
    local index = memx_equities_memo_sbe_v1_12.execution_report_pending_cancel_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = memx_equities_memo_sbe_v1_12.execution_report_pending_cancel_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return memx_equities_memo_sbe_v1_12.execution_report_pending_cancel_message.fields(buffer, offset, packet, parent)
  end
end

-- Trd Matching Id
memx_equities_memo_sbe_v1_12.trd_matching_id = {}

-- Size: Trd Matching Id
memx_equities_memo_sbe_v1_12.trd_matching_id.size = 8

-- Display: Trd Matching Id
memx_equities_memo_sbe_v1_12.trd_matching_id.display = function(value)
  return "Trd Matching Id: "..value
end

-- Dissect: Trd Matching Id
memx_equities_memo_sbe_v1_12.trd_matching_id.dissect = function(buffer, offset, packet, parent)
  local length = memx_equities_memo_sbe_v1_12.trd_matching_id.size
  local range = buffer(offset, length)
  local value = range:uint64()
  local display = memx_equities_memo_sbe_v1_12.trd_matching_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_memx_equities_memo_sbe_v1_12.fields.trd_matching_id, range, value, display)

  return offset + length, value
end

-- Last Mkt
memx_equities_memo_sbe_v1_12.last_mkt = {}

-- Size: Last Mkt
memx_equities_memo_sbe_v1_12.last_mkt.size = 1

-- Display: Last Mkt
memx_equities_memo_sbe_v1_12.last_mkt.display = function(value)
  -- Check if field has value
  if value == nil or value == 0 then
    return "Last Mkt: No Value"
  end

  if value == "U" then
    return "Last Mkt: Memx (U)"
  end
  if value == "Q" then
    return "Last Mkt: Nasdaq (Q)"
  end
  if value == "B" then
    return "Last Mkt: Nasdaq Bx (B)"
  end
  if value == "X" then
    return "Last Mkt: Nasdaq Psx (X)"
  end
  if value == "N" then
    return "Last Mkt: Nyse (N)"
  end
  if value == "P" then
    return "Last Mkt: Arca (P)"
  end
  if value == "A" then
    return "Last Mkt: Nyse American (A)"
  end
  if value == "M" then
    return "Last Mkt: Nyse Chicago (M)"
  end
  if value == "C" then
    return "Last Mkt: Nyse National (C)"
  end
  if value == "K" then
    return "Last Mkt: Edgx (K)"
  end
  if value == "J" then
    return "Last Mkt: Edga (J)"
  end
  if value == "Z" then
    return "Last Mkt: Bats (Z)"
  end
  if value == "Y" then
    return "Last Mkt: Batsy (Y)"
  end
  if value == "V" then
    return "Last Mkt: Iex (V)"
  end
  if value == "L" then
    return "Last Mkt: Ltse (L)"
  end
  if value == "H" then
    return "Last Mkt: Eprl (H)"
  end

  return "Last Mkt: Unknown("..value..")"
end

-- Dissect: Last Mkt
memx_equities_memo_sbe_v1_12.last_mkt.dissect = function(buffer, offset, packet, parent)
  local length = memx_equities_memo_sbe_v1_12.last_mkt.size
  local range = buffer(offset, length)

  -- parse as byte
  local value = range:uint()

  -- check if value is non zero
  if value ~= 0 then
    value = range:string()
  end

  local display = memx_equities_memo_sbe_v1_12.last_mkt.display(value, buffer, offset, packet, parent)

  parent:add(omi_memx_equities_memo_sbe_v1_12.fields.last_mkt, range, value, display)

  return offset + length, value
end

-- Last Liquidity Ind
memx_equities_memo_sbe_v1_12.last_liquidity_ind = {}

-- Size: Last Liquidity Ind
memx_equities_memo_sbe_v1_12.last_liquidity_ind.size = 1

-- Display: Last Liquidity Ind
memx_equities_memo_sbe_v1_12.last_liquidity_ind.display = function(value)
  if value == 1 then
    return "Last Liquidity Ind: Add Displayed (1)"
  end
  if value == 2 then
    return "Last Liquidity Ind: Removed (2)"
  end
  if value == 3 then
    return "Last Liquidity Ind: Routed (3)"
  end
  if value == 4 then
    return "Last Liquidity Ind: Cross (4)"
  end
  if value == 51 then
    return "Last Liquidity Ind: Add Hidden (51)"
  end
  if value == 52 then
    return "Last Liquidity Ind: Add Midpoint Peg (52)"
  end
  if value == 53 then
    return "Last Liquidity Ind: Add Displayed Nbbo Improve (53)"
  end
  if value == 54 then
    return "Last Liquidity Ind: Add Displayed Nbbo Join (54)"
  end
  if value == 61 then
    return "Last Liquidity Ind: Immediate Midpoint Remove On Entry (61)"
  end
  if value == 62 then
    return "Last Liquidity Ind: Add Displayed Price Improvement (62)"
  end
  if value == 63 then
    return "Last Liquidity Ind: Add Hidden Price Improvement (63)"
  end
  if value == 101 then
    return "Last Liquidity Ind: Retail Add Displayed (101)"
  end
  if value == 102 then
    return "Last Liquidity Ind: Retail Removed (102)"
  end
  if value == 103 then
    return "Last Liquidity Ind: Retail Routed (103)"
  end
  if value == 104 then
    return "Last Liquidity Ind: Retail Cross (104)"
  end
  if value == 151 then
    return "Last Liquidity Ind: Retail Add Hidden (151)"
  end
  if value == 152 then
    return "Last Liquidity Ind: Retail Add Midpoint Peg (152)"
  end
  if value == 153 then
    return "Last Liquidity Ind: Retail Add Displayed Nbbo Improve (153)"
  end
  if value == 154 then
    return "Last Liquidity Ind: Retail Add Displayed Nbbo Join (154)"
  end
  if value == 160 then
    return "Last Liquidity Ind: Retail Removed On Entry (160)"
  end
  if value == 161 then
    return "Last Liquidity Ind: Retail Immediate Midpoint Remove On Entry (161)"
  end
  if value == 162 then
    return "Last Liquidity Ind: Retail Add Displayed Price Improvement (162)"
  end
  if value == 163 then
    return "Last Liquidity Ind: Retail Add Hidden Price Improvement (163)"
  end
  if value == 255 then
    return "Last Liquidity Ind: Null Value (255)"
  end

  return "Last Liquidity Ind: Unknown("..value..")"
end

-- Dissect: Last Liquidity Ind
memx_equities_memo_sbe_v1_12.last_liquidity_ind.dissect = function(buffer, offset, packet, parent)
  local length = memx_equities_memo_sbe_v1_12.last_liquidity_ind.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = memx_equities_memo_sbe_v1_12.last_liquidity_ind.display(value, buffer, offset, packet, parent)

  parent:add(omi_memx_equities_memo_sbe_v1_12.fields.last_liquidity_ind, range, value, display)

  return offset + length, value
end

-- Last Qty
memx_equities_memo_sbe_v1_12.last_qty = {}

-- Size: Last Qty
memx_equities_memo_sbe_v1_12.last_qty.size = 4

-- Display: Last Qty
memx_equities_memo_sbe_v1_12.last_qty.display = function(value)
  return "Last Qty: "..value
end

-- Dissect: Last Qty
memx_equities_memo_sbe_v1_12.last_qty.dissect = function(buffer, offset, packet, parent)
  local length = memx_equities_memo_sbe_v1_12.last_qty.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = memx_equities_memo_sbe_v1_12.last_qty.display(value, buffer, offset, packet, parent)

  parent:add(omi_memx_equities_memo_sbe_v1_12.fields.last_qty, range, value, display)

  return offset + length, value
end

-- Execution Report Trade Message
memx_equities_memo_sbe_v1_12.execution_report_trade_message = {}

-- Size: Execution Report Trade Message
memx_equities_memo_sbe_v1_12.execution_report_trade_message.size =
  memx_equities_memo_sbe_v1_12.sending_time.size + 
  memx_equities_memo_sbe_v1_12.order_id.size + 
  memx_equities_memo_sbe_v1_12.clordid.size + 
  memx_equities_memo_sbe_v1_12.exec_id.size + 
  memx_equities_memo_sbe_v1_12.ord_status.size + 
  memx_equities_memo_sbe_v1_12.last_qty.size + 
  memx_equities_memo_sbe_v1_12.last_px.size + 
  memx_equities_memo_sbe_v1_12.leaves_qty.size + 
  memx_equities_memo_sbe_v1_12.cum_qty.size + 
  memx_equities_memo_sbe_v1_12.transact_time.size + 
  memx_equities_memo_sbe_v1_12.last_liquidity_ind.size + 
  memx_equities_memo_sbe_v1_12.last_mkt.size + 
  memx_equities_memo_sbe_v1_12.trd_matching_id.size + 
  memx_equities_memo_sbe_v1_12.link_id_optional.size + 
  memx_equities_memo_sbe_v1_12.security_group.size

-- Display: Execution Report Trade Message
memx_equities_memo_sbe_v1_12.execution_report_trade_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Execution Report Trade Message
memx_equities_memo_sbe_v1_12.execution_report_trade_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Sending Time: UTCTimestampNanos
  index, sending_time = memx_equities_memo_sbe_v1_12.sending_time.dissect(buffer, index, packet, parent)

  -- Order Id: uint64
  index, order_id = memx_equities_memo_sbe_v1_12.order_id.dissect(buffer, index, packet, parent)

  -- ClOrdId: ExecutionReport_CanceledClOrdID
  index, clordid = memx_equities_memo_sbe_v1_12.clordid.dissect(buffer, index, packet, parent)

  -- Exec Id: uint64
  index, exec_id = memx_equities_memo_sbe_v1_12.exec_id.dissect(buffer, index, packet, parent)

  -- Ord Status: OrdStatusType
  index, ord_status = memx_equities_memo_sbe_v1_12.ord_status.dissect(buffer, index, packet, parent)

  -- Last Qty: uint32
  index, last_qty = memx_equities_memo_sbe_v1_12.last_qty.dissect(buffer, index, packet, parent)

  -- Last Px: PriceType
  index, last_px = memx_equities_memo_sbe_v1_12.last_px.dissect(buffer, index, packet, parent)

  -- Leaves Qty: uint32
  index, leaves_qty = memx_equities_memo_sbe_v1_12.leaves_qty.dissect(buffer, index, packet, parent)

  -- Cum Qty: uint32
  index, cum_qty = memx_equities_memo_sbe_v1_12.cum_qty.dissect(buffer, index, packet, parent)

  -- Transact Time: UTCTimestampNanos
  index, transact_time = memx_equities_memo_sbe_v1_12.transact_time.dissect(buffer, index, packet, parent)

  -- Last Liquidity Ind: LastLiquidityIndType
  index, last_liquidity_ind = memx_equities_memo_sbe_v1_12.last_liquidity_ind.dissect(buffer, index, packet, parent)

  -- Last Mkt: ExchangeCode
  index, last_mkt = memx_equities_memo_sbe_v1_12.last_mkt.dissect(buffer, index, packet, parent)

  -- Trd Matching Id: uint64
  index, trd_matching_id = memx_equities_memo_sbe_v1_12.trd_matching_id.dissect(buffer, index, packet, parent)

  -- Link Id Optional: ExecutionReport_CanceledLnkId
  index, link_id_optional = memx_equities_memo_sbe_v1_12.link_id_optional.dissect(buffer, index, packet, parent)

  -- Security Group: char
  index, security_group = memx_equities_memo_sbe_v1_12.security_group.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Execution Report Trade Message
memx_equities_memo_sbe_v1_12.execution_report_trade_message.dissect = function(buffer, offset, packet, parent)
  if show.execution_report_trade_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_memx_equities_memo_sbe_v1_12.fields.execution_report_trade_message, buffer(offset, 0))
    local index = memx_equities_memo_sbe_v1_12.execution_report_trade_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = memx_equities_memo_sbe_v1_12.execution_report_trade_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return memx_equities_memo_sbe_v1_12.execution_report_trade_message.fields(buffer, offset, packet, parent)
  end
end

-- Order Reject Reason
memx_equities_memo_sbe_v1_12.order_reject_reason = {}

-- Size: Order Reject Reason
memx_equities_memo_sbe_v1_12.order_reject_reason.size = 1

-- Display: Order Reject Reason
memx_equities_memo_sbe_v1_12.order_reject_reason.display = function(value)
  if value == 1 then
    return "Order Reject Reason: Invalid Symbol (1)"
  end
  if value == 2 then
    return "Order Reject Reason: Exchange Closed (2)"
  end
  if value == 3 then
    return "Order Reject Reason: Order Size Exceeds Limit (3)"
  end
  if value == 6 then
    return "Order Reject Reason: Duplicate Cl Ord Id (6)"
  end
  if value == 18 then
    return "Order Reject Reason: Invalid Limit Price Increment (18)"
  end
  if value == 19 then
    return "Order Reject Reason: No Nbbo Available (19)"
  end
  if value == 20 then
    return "Order Reject Reason: Order Notional Exceeds Limit (20)"
  end
  if value == 22 then
    return "Order Reject Reason: Block Sell Short Risk Rule Violated (22)"
  end
  if value == 23 then
    return "Order Reject Reason: Hard To Borrow Security Risk Rule Violated (23)"
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
    return "Order Reject Reason: Missing Locate (101)"
  end
  if value == 102 then
    return "Order Reject Reason: Invalid Locate (102)"
  end
  if value == 103 then
    return "Order Reject Reason: Missing Cl Ord Id (103)"
  end
  if value == 104 then
    return "Order Reject Reason: Invalid Cl Ord Id (104)"
  end
  if value == 105 then
    return "Order Reject Reason: Missing Side (105)"
  end
  if value == 106 then
    return "Order Reject Reason: Invalid Side (106)"
  end
  if value == 107 then
    return "Order Reject Reason: Missing Order Quantity (107)"
  end
  if value == 108 then
    return "Order Reject Reason: Invalid Order Quantity (108)"
  end
  if value == 109 then
    return "Order Reject Reason: Missing Order Type (109)"
  end
  if value == 110 then
    return "Order Reject Reason: Invalid Order Type (110)"
  end
  if value == 111 then
    return "Order Reject Reason: Missing Time In Force (111)"
  end
  if value == 112 then
    return "Order Reject Reason: Invalid Time In Force (112)"
  end
  if value == 113 then
    return "Order Reject Reason: Missing Order Capacity (113)"
  end
  if value == 114 then
    return "Order Reject Reason: Invalid Order Capacity (114)"
  end
  if value == 115 then
    return "Order Reject Reason: Missing Exec Inst (115)"
  end
  if value == 116 then
    return "Order Reject Reason: Missing Limit Price (116)"
  end
  if value == 117 then
    return "Order Reject Reason: Invalid Limit Price (117)"
  end
  if value == 118 then
    return "Order Reject Reason: Missing Max Floor (118)"
  end
  if value == 119 then
    return "Order Reject Reason: Invalid Max Floor (119)"
  end
  if value == 120 then
    return "Order Reject Reason: Missing Reserve Replenish Amount Type (120)"
  end
  if value == 121 then
    return "Order Reject Reason: Invalid Reserve Replenish Amount Type (121)"
  end
  if value == 122 then
    return "Order Reject Reason: Missing Reserve Replenish Time Type (122)"
  end
  if value == 123 then
    return "Order Reject Reason: Invalid Reserve Replenish Time Type (123)"
  end
  if value == 124 then
    return "Order Reject Reason: Missing Random Replenish Value (124)"
  end
  if value == 125 then
    return "Order Reject Reason: Invalid Random Replenish Value (125)"
  end
  if value == 126 then
    return "Order Reject Reason: Invalid Random Replenish Value For Reserve Type (126)"
  end
  if value == 127 then
    return "Order Reject Reason: Missing Reprice Frequency Type (127)"
  end
  if value == 128 then
    return "Order Reject Reason: Invalid Reprice Frequency Type (128)"
  end
  if value == 129 then
    return "Order Reject Reason: Missing Reprice Behavior Type (129)"
  end
  if value == 130 then
    return "Order Reject Reason: Invalid Reprice Behavior Type (130)"
  end
  if value == 131 then
    return "Order Reject Reason: Invalid Reprice Behavior For Reprice Frequency (131)"
  end
  if value == 132 then
    return "Order Reject Reason: Missing Customer Capacity Type (132)"
  end
  if value == 133 then
    return "Order Reject Reason: Invalid Customer Capacity (133)"
  end
  if value == 134 then
    return "Order Reject Reason: Missing Expire Time (134)"
  end
  if value == 135 then
    return "Order Reject Reason: Invalid Expire Time (135)"
  end
  if value == 136 then
    return "Order Reject Reason: Missing Peg Type (136)"
  end
  if value == 137 then
    return "Order Reject Reason: Invalid Peg Type (137)"
  end
  if value == 138 then
    return "Order Reject Reason: Invalid Modifier For Order Type (138)"
  end
  if value == 139 then
    return "Order Reject Reason: Invalid Modifiers Combination (139)"
  end
  if value == 140 then
    return "Order Reject Reason: Invalid Trading Session For Order Type (140)"
  end
  if value == 141 then
    return "Order Reject Reason: Invalid Time In Force For Order Type (141)"
  end
  if value == 142 then
    return "Order Reject Reason: Invalid Modifier For Peg Type (142)"
  end
  if value == 143 then
    return "Order Reject Reason: Invalid Min Quantity (143)"
  end
  if value == 145 then
    return "Order Reject Reason: Invalid Mpid Value (145)"
  end
  if value == 146 then
    return "Order Reject Reason: Symbol Halted Or Paused (146)"
  end
  if value == 147 then
    return "Order Reject Reason: Block Iso Risk Rule Violated (147)"
  end
  if value == 148 then
    return "Order Reject Reason: Block Session Risk Rule Violated (148)"
  end
  if value == 149 then
    return "Order Reject Reason: Block Non Test Symbols Risk Rule Violated (149)"
  end
  if value == 150 then
    return "Order Reject Reason: Max Shares Per Order Risk Rule Breach (150)"
  end
  if value == 151 then
    return "Order Reject Reason: Price Percent Collar Risk Rule Violated (151)"
  end
  if value == 152 then
    return "Order Reject Reason: Price Value Collar Risk Rule Violated (152)"
  end
  if value == 153 then
    return "Order Reject Reason: Max Adv Percent Per Order Risk Rule Breach (153)"
  end
  if value == 154 then
    return "Order Reject Reason: Daily Gross Notional Exposure Risk Rule Breach (154)"
  end
  if value == 155 then
    return "Order Reject Reason: Daily Net Notional Exposure Risk Rule Breach (155)"
  end
  if value == 156 then
    return "Order Reject Reason: Max Num Duplicate Orders Risk Rule Breach (156)"
  end
  if value == 157 then
    return "Order Reject Reason: Max Order Rate Risk Rule Breach (157)"
  end
  if value == 158 then
    return "Order Reject Reason: Restricted Security Risk Rule Violated (158)"
  end
  if value == 159 then
    return "Order Reject Reason: Invalid Self Trade Prevention Configuration (159)"
  end
  if value == 160 then
    return "Order Reject Reason: Invalid Self Trade Prevention Type (160)"
  end
  if value == 161 then
    return "Order Reject Reason: Invalid Risk Group Id (161)"
  end
  if value == 162 then
    return "Order Reject Reason: Firm Disabled (162)"
  end
  if value == 163 then
    return "Order Reject Reason: Mpid Disabled (163)"
  end
  if value == 164 then
    return "Order Reject Reason: Account Disabled (164)"
  end
  if value == 165 then
    return "Order Reject Reason: Cannot Trade Non Test Symbol (165)"
  end
  if value == 166 then
    return "Order Reject Reason: Missing Firm (166)"
  end
  if value == 167 then
    return "Order Reject Reason: Missing Account (167)"
  end
  if value == 168 then
    return "Order Reject Reason: Missing Mpid (168)"
  end
  if value == 169 then
    return "Order Reject Reason: Missing Risk Group (169)"
  end
  if value == 170 then
    return "Order Reject Reason: Daily Market Order Gross Notional Exposure Risk Rule Breach (170)"
  end
  if value == 171 then
    return "Order Reject Reason: Daily Market Order Net Notional Exposure Risk Rule Breach (171)"
  end
  if value == 172 then
    return "Order Reject Reason: Missing Disp Method Type (172)"
  end
  if value == 173 then
    return "Order Reject Reason: Missing Firm Risk Setting (173)"
  end
  if value == 174 then
    return "Order Reject Reason: Invalid Account Mpid To Firm (174)"
  end
  if value == 175 then
    return "Order Reject Reason: Invalid Peg Offset Value (175)"
  end
  if value == 176 then
    return "Order Reject Reason: Invalid Disp Method Type (176)"
  end
  if value == 177 then
    return "Order Reject Reason: Missing Cancel Group Id (177)"
  end
  if value == 178 then
    return "Order Reject Reason: Invalid Cancel Group Id (178)"
  end
  if value == 179 then
    return "Order Reject Reason: Missing Stp Group Id (179)"
  end
  if value == 180 then
    return "Order Reject Reason: Invalid Stp Group Id (180)"
  end
  if value == 181 then
    return "Order Reject Reason: Invalid Lnk Id (181)"
  end
  if value == 182 then
    return "Order Reject Reason: Missing Locate Broker (182)"
  end
  if value == 183 then
    return "Order Reject Reason: Invalid Locate Broker (183)"
  end
  if value == 255 then
    return "Order Reject Reason: Null Value (255)"
  end

  return "Order Reject Reason: Unknown("..value..")"
end

-- Dissect: Order Reject Reason
memx_equities_memo_sbe_v1_12.order_reject_reason.dissect = function(buffer, offset, packet, parent)
  local length = memx_equities_memo_sbe_v1_12.order_reject_reason.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = memx_equities_memo_sbe_v1_12.order_reject_reason.display(value, buffer, offset, packet, parent)

  parent:add(omi_memx_equities_memo_sbe_v1_12.fields.order_reject_reason, range, value, display)

  return offset + length, value
end

-- Execution Report Rejected Message
memx_equities_memo_sbe_v1_12.execution_report_rejected_message = {}

-- Size: Execution Report Rejected Message
memx_equities_memo_sbe_v1_12.execution_report_rejected_message.size =
  memx_equities_memo_sbe_v1_12.sending_time.size + 
  memx_equities_memo_sbe_v1_12.clordid.size + 
  memx_equities_memo_sbe_v1_12.exec_id.size + 
  memx_equities_memo_sbe_v1_12.ord_status.size + 
  memx_equities_memo_sbe_v1_12.symbol.size + 
  memx_equities_memo_sbe_v1_12.symbol_sfx.size + 
  memx_equities_memo_sbe_v1_12.leaves_qty.size + 
  memx_equities_memo_sbe_v1_12.cum_qty.size + 
  memx_equities_memo_sbe_v1_12.order_reject_reason.size + 
  memx_equities_memo_sbe_v1_12.link_id_optional.size

-- Display: Execution Report Rejected Message
memx_equities_memo_sbe_v1_12.execution_report_rejected_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Execution Report Rejected Message
memx_equities_memo_sbe_v1_12.execution_report_rejected_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Sending Time: UTCTimestampNanos
  index, sending_time = memx_equities_memo_sbe_v1_12.sending_time.dissect(buffer, index, packet, parent)

  -- ClOrdId: ExecutionReport_CanceledClOrdID
  index, clordid = memx_equities_memo_sbe_v1_12.clordid.dissect(buffer, index, packet, parent)

  -- Exec Id: uint64
  index, exec_id = memx_equities_memo_sbe_v1_12.exec_id.dissect(buffer, index, packet, parent)

  -- Ord Status: OrdStatusType
  index, ord_status = memx_equities_memo_sbe_v1_12.ord_status.dissect(buffer, index, packet, parent)

  -- Symbol: ExecutionReport_NewSymbol
  index, symbol = memx_equities_memo_sbe_v1_12.symbol.dissect(buffer, index, packet, parent)

  -- Symbol Sfx: ExecutionReport_NewSymbolSfx
  index, symbol_sfx = memx_equities_memo_sbe_v1_12.symbol_sfx.dissect(buffer, index, packet, parent)

  -- Leaves Qty: uint32
  index, leaves_qty = memx_equities_memo_sbe_v1_12.leaves_qty.dissect(buffer, index, packet, parent)

  -- Cum Qty: uint32
  index, cum_qty = memx_equities_memo_sbe_v1_12.cum_qty.dissect(buffer, index, packet, parent)

  -- Order Reject Reason: OrderRejectReasonCode
  index, order_reject_reason = memx_equities_memo_sbe_v1_12.order_reject_reason.dissect(buffer, index, packet, parent)

  -- Link Id Optional: ExecutionReport_CanceledLnkId
  index, link_id_optional = memx_equities_memo_sbe_v1_12.link_id_optional.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Execution Report Rejected Message
memx_equities_memo_sbe_v1_12.execution_report_rejected_message.dissect = function(buffer, offset, packet, parent)
  if show.execution_report_rejected_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_memx_equities_memo_sbe_v1_12.fields.execution_report_rejected_message, buffer(offset, 0))
    local index = memx_equities_memo_sbe_v1_12.execution_report_rejected_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = memx_equities_memo_sbe_v1_12.execution_report_rejected_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return memx_equities_memo_sbe_v1_12.execution_report_rejected_message.fields(buffer, offset, packet, parent)
  end
end

-- Risk Group Id
memx_equities_memo_sbe_v1_12.risk_group_id = {}

-- Size: Risk Group Id
memx_equities_memo_sbe_v1_12.risk_group_id.size = 2

-- Display: Risk Group Id
memx_equities_memo_sbe_v1_12.risk_group_id.display = function(value)
  -- Check if field has value
  if value == 65535 then
    return "Risk Group Id: No Value"
  end

  return "Risk Group Id: "..value
end

-- Dissect: Risk Group Id
memx_equities_memo_sbe_v1_12.risk_group_id.dissect = function(buffer, offset, packet, parent)
  local length = memx_equities_memo_sbe_v1_12.risk_group_id.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = memx_equities_memo_sbe_v1_12.risk_group_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_memx_equities_memo_sbe_v1_12.fields.risk_group_id, range, value, display)

  return offset + length, value
end

-- Self Trade Prevention
memx_equities_memo_sbe_v1_12.self_trade_prevention = {}

-- Size: Self Trade Prevention
memx_equities_memo_sbe_v1_12.self_trade_prevention.size = 1

-- Display: Self Trade Prevention
memx_equities_memo_sbe_v1_12.self_trade_prevention.display = function(value)
  if value == 0 then
    return "Self Trade Prevention: Cancel Newest (0)"
  end
  if value == 1 then
    return "Self Trade Prevention: Cancel Oldest (1)"
  end
  if value == 2 then
    return "Self Trade Prevention: Decrement And Cancel (2)"
  end
  if value == 3 then
    return "Self Trade Prevention: Cancel Both (3)"
  end
  if value == 4 then
    return "Self Trade Prevention: Cancel Smallest (4)"
  end
  if value == 255 then
    return "Self Trade Prevention: Null Value (255)"
  end
  if value == 255 then
    return "Self Trade Prevention: No Value"
  end

  return "Self Trade Prevention: Unknown("..value..")"
end

-- Dissect: Self Trade Prevention
memx_equities_memo_sbe_v1_12.self_trade_prevention.dissect = function(buffer, offset, packet, parent)
  local length = memx_equities_memo_sbe_v1_12.self_trade_prevention.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = memx_equities_memo_sbe_v1_12.self_trade_prevention.display(value, buffer, offset, packet, parent)

  parent:add(omi_memx_equities_memo_sbe_v1_12.fields.self_trade_prevention, range, value, display)

  return offset + length, value
end

-- Stp Group Id
memx_equities_memo_sbe_v1_12.stp_group_id = {}

-- Size: Stp Group Id
memx_equities_memo_sbe_v1_12.stp_group_id.size = 2

-- Display: Stp Group Id
memx_equities_memo_sbe_v1_12.stp_group_id.display = function(value)
  -- Check if field has value
  if value == 65535 then
    return "Stp Group Id: No Value"
  end

  return "Stp Group Id: "..value
end

-- Dissect: Stp Group Id
memx_equities_memo_sbe_v1_12.stp_group_id.dissect = function(buffer, offset, packet, parent)
  local length = memx_equities_memo_sbe_v1_12.stp_group_id.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = memx_equities_memo_sbe_v1_12.stp_group_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_memx_equities_memo_sbe_v1_12.fields.stp_group_id, range, value, display)

  return offset + length, value
end

-- Reprice Behavior
memx_equities_memo_sbe_v1_12.reprice_behavior = {}

-- Size: Reprice Behavior
memx_equities_memo_sbe_v1_12.reprice_behavior.size = 1

-- Display: Reprice Behavior
memx_equities_memo_sbe_v1_12.reprice_behavior.display = function(value)
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
memx_equities_memo_sbe_v1_12.reprice_behavior.dissect = function(buffer, offset, packet, parent)
  local length = memx_equities_memo_sbe_v1_12.reprice_behavior.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = memx_equities_memo_sbe_v1_12.reprice_behavior.display(value, buffer, offset, packet, parent)

  parent:add(omi_memx_equities_memo_sbe_v1_12.fields.reprice_behavior, range, value, display)

  return offset + length, value
end

-- Reprice Frequency
memx_equities_memo_sbe_v1_12.reprice_frequency = {}

-- Size: Reprice Frequency
memx_equities_memo_sbe_v1_12.reprice_frequency.size = 1

-- Display: Reprice Frequency
memx_equities_memo_sbe_v1_12.reprice_frequency.display = function(value)
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
memx_equities_memo_sbe_v1_12.reprice_frequency.dissect = function(buffer, offset, packet, parent)
  local length = memx_equities_memo_sbe_v1_12.reprice_frequency.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = memx_equities_memo_sbe_v1_12.reprice_frequency.display(value, buffer, offset, packet, parent)

  parent:add(omi_memx_equities_memo_sbe_v1_12.fields.reprice_frequency, range, value, display)

  return offset + length, value
end

-- Display Min Incr
memx_equities_memo_sbe_v1_12.display_min_incr = {}

-- Size: Display Min Incr
memx_equities_memo_sbe_v1_12.display_min_incr.size = 4

-- Display: Display Min Incr
memx_equities_memo_sbe_v1_12.display_min_incr.display = function(value)
  -- Check if field has value
  if value == 4294967295 then
    return "Display Min Incr: No Value"
  end

  return "Display Min Incr: "..value
end

-- Dissect: Display Min Incr
memx_equities_memo_sbe_v1_12.display_min_incr.dissect = function(buffer, offset, packet, parent)
  local length = memx_equities_memo_sbe_v1_12.display_min_incr.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = memx_equities_memo_sbe_v1_12.display_min_incr.display(value, buffer, offset, packet, parent)

  parent:add(omi_memx_equities_memo_sbe_v1_12.fields.display_min_incr, range, value, display)

  return offset + length, value
end

-- Reserve Replenish Timing
memx_equities_memo_sbe_v1_12.reserve_replenish_timing = {}

-- Size: Reserve Replenish Timing
memx_equities_memo_sbe_v1_12.reserve_replenish_timing.size = 1

-- Display: Reserve Replenish Timing
memx_equities_memo_sbe_v1_12.reserve_replenish_timing.display = function(value)
  if value == 1 then
    return "Reserve Replenish Timing: Immediate (1)"
  end
  if value == 2 then
    return "Reserve Replenish Timing: Random (2)"
  end
  if value == 255 then
    return "Reserve Replenish Timing: Null Value (255)"
  end
  if value == 255 then
    return "Reserve Replenish Timing: No Value"
  end

  return "Reserve Replenish Timing: Unknown("..value..")"
end

-- Dissect: Reserve Replenish Timing
memx_equities_memo_sbe_v1_12.reserve_replenish_timing.dissect = function(buffer, offset, packet, parent)
  local length = memx_equities_memo_sbe_v1_12.reserve_replenish_timing.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = memx_equities_memo_sbe_v1_12.reserve_replenish_timing.display(value, buffer, offset, packet, parent)

  parent:add(omi_memx_equities_memo_sbe_v1_12.fields.reserve_replenish_timing, range, value, display)

  return offset + length, value
end

-- Display Method
memx_equities_memo_sbe_v1_12.display_method = {}

-- Size: Display Method
memx_equities_memo_sbe_v1_12.display_method.size = 1

-- Display: Display Method
memx_equities_memo_sbe_v1_12.display_method.display = function(value)
  -- Check if field has value
  if value == nil or value == 0 then
    return "Display Method: No Value"
  end

  if value == "1" then
    return "Display Method: Initial (1)"
  end
  if value == "3" then
    return "Display Method: Random (3)"
  end
  if value == "4" then
    return "Display Method: Undisclosed (4)"
  end
  if value == 0 then
    return "Display Method: No Value"
  end

  return "Display Method: Unknown("..value..")"
end

-- Dissect: Display Method
memx_equities_memo_sbe_v1_12.display_method.dissect = function(buffer, offset, packet, parent)
  local length = memx_equities_memo_sbe_v1_12.display_method.size
  local range = buffer(offset, length)

  -- parse as byte
  local value = range:uint()

  -- check if value is non zero
  if value ~= 0 then
    value = range:string()
  end

  local display = memx_equities_memo_sbe_v1_12.display_method.display(value, buffer, offset, packet, parent)

  parent:add(omi_memx_equities_memo_sbe_v1_12.fields.display_method, range, value, display)

  return offset + length, value
end

-- Min Qty
memx_equities_memo_sbe_v1_12.min_qty = {}

-- Size: Min Qty
memx_equities_memo_sbe_v1_12.min_qty.size = 4

-- Display: Min Qty
memx_equities_memo_sbe_v1_12.min_qty.display = function(value)
  -- Check if field has value
  if value == 4294967295 then
    return "Min Qty: No Value"
  end

  return "Min Qty: "..value
end

-- Dissect: Min Qty
memx_equities_memo_sbe_v1_12.min_qty.dissect = function(buffer, offset, packet, parent)
  local length = memx_equities_memo_sbe_v1_12.min_qty.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = memx_equities_memo_sbe_v1_12.min_qty.display(value, buffer, offset, packet, parent)

  parent:add(omi_memx_equities_memo_sbe_v1_12.fields.min_qty, range, value, display)

  return offset + length, value
end

-- Expire Time
memx_equities_memo_sbe_v1_12.expire_time = {}

-- Size: Expire Time
memx_equities_memo_sbe_v1_12.expire_time.size = 8

-- Display: Expire Time
memx_equities_memo_sbe_v1_12.expire_time.display = function(value)
  -- Check if field has value
  if value == UInt64(0xFFFFFFFF, 0xFFFFFFFF) then
    return "Expire Time: No Value"
  end

  return "Expire Time: "..value
end

-- Dissect: Expire Time
memx_equities_memo_sbe_v1_12.expire_time.dissect = function(buffer, offset, packet, parent)
  local length = memx_equities_memo_sbe_v1_12.expire_time.size
  local range = buffer(offset, length)
  local value = range:uint64()
  local display = memx_equities_memo_sbe_v1_12.expire_time.display(value, buffer, offset, packet, parent)

  parent:add(omi_memx_equities_memo_sbe_v1_12.fields.expire_time, range, value, display)

  return offset + length, value
end

-- Peg Price Type
memx_equities_memo_sbe_v1_12.peg_price_type = {}

-- Size: Peg Price Type
memx_equities_memo_sbe_v1_12.peg_price_type.size = 1

-- Display: Peg Price Type
memx_equities_memo_sbe_v1_12.peg_price_type.display = function(value)
  if value == 2 then
    return "Peg Price Type: Mid Price Peg (2)"
  end
  if value == 5 then
    return "Peg Price Type: Primary Peg (5)"
  end
  if value == 255 then
    return "Peg Price Type: Null Value (255)"
  end
  if value == 255 then
    return "Peg Price Type: No Value"
  end

  return "Peg Price Type: Unknown("..value..")"
end

-- Dissect: Peg Price Type
memx_equities_memo_sbe_v1_12.peg_price_type.dissect = function(buffer, offset, packet, parent)
  local length = memx_equities_memo_sbe_v1_12.peg_price_type.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = memx_equities_memo_sbe_v1_12.peg_price_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_memx_equities_memo_sbe_v1_12.fields.peg_price_type, range, value, display)

  return offset + length, value
end

-- Peg Offset Value
memx_equities_memo_sbe_v1_12.peg_offset_value = {}

-- Size: Peg Offset Value
memx_equities_memo_sbe_v1_12.peg_offset_value.size = 8

-- Display: Peg Offset Value
memx_equities_memo_sbe_v1_12.peg_offset_value.display = function(raw, value)
  -- Check null sentinel value
  if raw == Int64(0x00000000, 0x80000000) then
    return "Peg Offset Value: No Value"
  end

  return "Peg Offset Value: "..value
end

-- Translate: Peg Offset Value
memx_equities_memo_sbe_v1_12.peg_offset_value.translate = function(raw)
  -- Check null sentinel value
  if raw == Int64(0x00000000, 0x80000000) then
    return 0/0
  end

  return raw:tonumber()/1000000
end

-- Dissect: Peg Offset Value
memx_equities_memo_sbe_v1_12.peg_offset_value.dissect = function(buffer, offset, packet, parent)
  local length = memx_equities_memo_sbe_v1_12.peg_offset_value.size
  local range = buffer(offset, length)
  local raw = range:int64()
  local value = memx_equities_memo_sbe_v1_12.peg_offset_value.translate(raw)
  local display = memx_equities_memo_sbe_v1_12.peg_offset_value.display(raw, value, buffer, offset, packet, parent)

  parent:add(omi_memx_equities_memo_sbe_v1_12.fields.peg_offset_value, range, value, display)

  return offset + length, value
end

-- Exec Inst
memx_equities_memo_sbe_v1_12.exec_inst = {}

-- Size: Exec Inst
memx_equities_memo_sbe_v1_12.exec_inst.size = 2

-- Display: Exec Inst
memx_equities_memo_sbe_v1_12.exec_inst.display = function(range, value, packet, parent)
  local flags = {}

  -- Is Participate Do Not Initiate flag set?
  if bit.band(value, 0x0001) ~= 0 then
    flags[#flags + 1] = "Participate Do Not Initiate"
  end
  -- Is Intermarket Sweep flag set?
  if bit.band(value, 0x0002) ~= 0 then
    flags[#flags + 1] = "Intermarket Sweep"
  end
  -- Is External Routing Not Allowed flag set?
  if bit.band(value, 0x0004) ~= 0 then
    flags[#flags + 1] = "External Routing Not Allowed"
  end

  return table.concat(flags, "|")
end

-- Dissect Bit Fields: Exec Inst
memx_equities_memo_sbe_v1_12.exec_inst.bits = function(range, value, packet, parent)

  -- Participate Do Not Initiate: 1 Bit
  parent:add(omi_memx_equities_memo_sbe_v1_12.fields.participate_do_not_initiate, range, value)

  -- Intermarket Sweep: 1 Bit
  parent:add(omi_memx_equities_memo_sbe_v1_12.fields.intermarket_sweep, range, value)

  -- External Routing Not Allowed: 1 Bit
  parent:add(omi_memx_equities_memo_sbe_v1_12.fields.external_routing_not_allowed, range, value)

  -- Reserved 13: 13 Bit
  parent:add(omi_memx_equities_memo_sbe_v1_12.fields.reserved_13, range, value)
end

-- Dissect: Exec Inst
memx_equities_memo_sbe_v1_12.exec_inst.dissect = function(buffer, offset, packet, parent)
  local size = memx_equities_memo_sbe_v1_12.exec_inst.size
  local range = buffer(offset, size)
  local value = range:le_uint()
  local display = memx_equities_memo_sbe_v1_12.exec_inst.display(range, value, packet, parent)
  local element = parent:add(omi_memx_equities_memo_sbe_v1_12.fields.exec_inst, range, display)

  if show.exec_inst then
    memx_equities_memo_sbe_v1_12.exec_inst.bits(range, value, packet, element)
  end

  return offset + size, value
end

-- Cust Order Capacity
memx_equities_memo_sbe_v1_12.cust_order_capacity = {}

-- Size: Cust Order Capacity
memx_equities_memo_sbe_v1_12.cust_order_capacity.size = 1

-- Display: Cust Order Capacity
memx_equities_memo_sbe_v1_12.cust_order_capacity.display = function(value)
  if value == 1 then
    return "Cust Order Capacity: Member Trading On Their Own Account (1)"
  end
  if value == 5 then
    return "Cust Order Capacity: Retail Customer (5)"
  end
  if value == 255 then
    return "Cust Order Capacity: Null Value (255)"
  end

  return "Cust Order Capacity: Unknown("..value..")"
end

-- Dissect: Cust Order Capacity
memx_equities_memo_sbe_v1_12.cust_order_capacity.dissect = function(buffer, offset, packet, parent)
  local length = memx_equities_memo_sbe_v1_12.cust_order_capacity.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = memx_equities_memo_sbe_v1_12.cust_order_capacity.display(value, buffer, offset, packet, parent)

  parent:add(omi_memx_equities_memo_sbe_v1_12.fields.cust_order_capacity, range, value, display)

  return offset + length, value
end

-- Order Capacity
memx_equities_memo_sbe_v1_12.order_capacity = {}

-- Size: Order Capacity
memx_equities_memo_sbe_v1_12.order_capacity.size = 1

-- Display: Order Capacity
memx_equities_memo_sbe_v1_12.order_capacity.display = function(value)
  -- Check if field has value
  if value == nil or value == 0 then
    return "Order Capacity: No Value"
  end

  if value == "A" then
    return "Order Capacity: Agency (A)"
  end
  if value == "P" then
    return "Order Capacity: Principal (P)"
  end
  if value == "R" then
    return "Order Capacity: Riskless Principal (R)"
  end

  return "Order Capacity: Unknown("..value..")"
end

-- Dissect: Order Capacity
memx_equities_memo_sbe_v1_12.order_capacity.dissect = function(buffer, offset, packet, parent)
  local length = memx_equities_memo_sbe_v1_12.order_capacity.size
  local range = buffer(offset, length)

  -- parse as byte
  local value = range:uint()

  -- check if value is non zero
  if value ~= 0 then
    value = range:string()
  end

  local display = memx_equities_memo_sbe_v1_12.order_capacity.display(value, buffer, offset, packet, parent)

  parent:add(omi_memx_equities_memo_sbe_v1_12.fields.order_capacity, range, value, display)

  return offset + length, value
end

-- Time In Force
memx_equities_memo_sbe_v1_12.time_in_force = {}

-- Size: Time In Force
memx_equities_memo_sbe_v1_12.time_in_force.size = 1

-- Display: Time In Force
memx_equities_memo_sbe_v1_12.time_in_force.display = function(value)
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
  if value == "4" then
    return "Time In Force: Fill Or Kill (4)"
  end
  if value == "A" then
    return "Time In Force: Good For Time (A)"
  end
  if value == "F" then
    return "Time In Force: Regular Hours Only (F)"
  end

  return "Time In Force: Unknown("..value..")"
end

-- Dissect: Time In Force
memx_equities_memo_sbe_v1_12.time_in_force.dissect = function(buffer, offset, packet, parent)
  local length = memx_equities_memo_sbe_v1_12.time_in_force.size
  local range = buffer(offset, length)

  -- parse as byte
  local value = range:uint()

  -- check if value is non zero
  if value ~= 0 then
    value = range:string()
  end

  local display = memx_equities_memo_sbe_v1_12.time_in_force.display(value, buffer, offset, packet, parent)

  parent:add(omi_memx_equities_memo_sbe_v1_12.fields.time_in_force, range, value, display)

  return offset + length, value
end

-- Mpid Optional
memx_equities_memo_sbe_v1_12.mpid_optional = {}

-- Size: Mpid Optional
memx_equities_memo_sbe_v1_12.mpid_optional.size = 4

-- Display: Mpid Optional
memx_equities_memo_sbe_v1_12.mpid_optional.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Mpid Optional: No Value"
  end

  return "Mpid Optional: "..value
end

-- Dissect: Mpid Optional
memx_equities_memo_sbe_v1_12.mpid_optional.dissect = function(buffer, offset, packet, parent)
  local length = memx_equities_memo_sbe_v1_12.mpid_optional.size
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

  local display = memx_equities_memo_sbe_v1_12.mpid_optional.display(value, buffer, offset, packet, parent)

  parent:add(omi_memx_equities_memo_sbe_v1_12.fields.mpid_optional, range, value, display)

  return offset + length, value
end

-- Execution Report New Message
memx_equities_memo_sbe_v1_12.execution_report_new_message = {}

-- Size: Execution Report New Message
memx_equities_memo_sbe_v1_12.execution_report_new_message.size =
  memx_equities_memo_sbe_v1_12.sending_time.size + 
  memx_equities_memo_sbe_v1_12.order_id.size + 
  memx_equities_memo_sbe_v1_12.clordid.size + 
  memx_equities_memo_sbe_v1_12.exec_id.size + 
  memx_equities_memo_sbe_v1_12.mpid_optional.size + 
  memx_equities_memo_sbe_v1_12.ord_status.size + 
  memx_equities_memo_sbe_v1_12.symbol.size + 
  memx_equities_memo_sbe_v1_12.symbol_sfx.size + 
  memx_equities_memo_sbe_v1_12.side.size + 
  memx_equities_memo_sbe_v1_12.ord_type.size + 
  memx_equities_memo_sbe_v1_12.order_qty.size + 
  memx_equities_memo_sbe_v1_12.price.size + 
  memx_equities_memo_sbe_v1_12.time_in_force.size + 
  memx_equities_memo_sbe_v1_12.order_capacity.size + 
  memx_equities_memo_sbe_v1_12.cust_order_capacity.size + 
  memx_equities_memo_sbe_v1_12.exec_inst.size + 
  memx_equities_memo_sbe_v1_12.peg_offset_value.size + 
  memx_equities_memo_sbe_v1_12.peg_price_type.size + 
  memx_equities_memo_sbe_v1_12.expire_time.size + 
  memx_equities_memo_sbe_v1_12.min_qty.size + 
  memx_equities_memo_sbe_v1_12.display_qty.size + 
  memx_equities_memo_sbe_v1_12.display_method.size + 
  memx_equities_memo_sbe_v1_12.reserve_replenish_timing.size + 
  memx_equities_memo_sbe_v1_12.display_min_incr.size + 
  memx_equities_memo_sbe_v1_12.locate_reqd.size + 
  memx_equities_memo_sbe_v1_12.reprice_frequency.size + 
  memx_equities_memo_sbe_v1_12.reprice_behavior.size + 
  memx_equities_memo_sbe_v1_12.cancel_group_id.size + 
  memx_equities_memo_sbe_v1_12.stp_group_id.size + 
  memx_equities_memo_sbe_v1_12.self_trade_prevention.size + 
  memx_equities_memo_sbe_v1_12.risk_group_id.size + 
  memx_equities_memo_sbe_v1_12.leaves_qty.size + 
  memx_equities_memo_sbe_v1_12.cum_qty.size + 
  memx_equities_memo_sbe_v1_12.transact_time.size + 
  memx_equities_memo_sbe_v1_12.link_id_optional.size + 
  memx_equities_memo_sbe_v1_12.locate_broker_optional.size

-- Display: Execution Report New Message
memx_equities_memo_sbe_v1_12.execution_report_new_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Execution Report New Message
memx_equities_memo_sbe_v1_12.execution_report_new_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Sending Time: UTCTimestampNanos
  index, sending_time = memx_equities_memo_sbe_v1_12.sending_time.dissect(buffer, index, packet, parent)

  -- Order Id: uint64
  index, order_id = memx_equities_memo_sbe_v1_12.order_id.dissect(buffer, index, packet, parent)

  -- ClOrdId: ExecutionReport_CanceledClOrdID
  index, clordid = memx_equities_memo_sbe_v1_12.clordid.dissect(buffer, index, packet, parent)

  -- Exec Id: uint64
  index, exec_id = memx_equities_memo_sbe_v1_12.exec_id.dissect(buffer, index, packet, parent)

  -- Mpid Optional: ExecutionReport_NewMPID
  index, mpid_optional = memx_equities_memo_sbe_v1_12.mpid_optional.dissect(buffer, index, packet, parent)

  -- Ord Status: OrdStatusType
  index, ord_status = memx_equities_memo_sbe_v1_12.ord_status.dissect(buffer, index, packet, parent)

  -- Symbol: ExecutionReport_NewSymbol
  index, symbol = memx_equities_memo_sbe_v1_12.symbol.dissect(buffer, index, packet, parent)

  -- Symbol Sfx: ExecutionReport_NewSymbolSfx
  index, symbol_sfx = memx_equities_memo_sbe_v1_12.symbol_sfx.dissect(buffer, index, packet, parent)

  -- Side: SideType
  index, side = memx_equities_memo_sbe_v1_12.side.dissect(buffer, index, packet, parent)

  -- Ord Type: OrdType
  index, ord_type = memx_equities_memo_sbe_v1_12.ord_type.dissect(buffer, index, packet, parent)

  -- Order Qty: uint32
  index, order_qty = memx_equities_memo_sbe_v1_12.order_qty.dissect(buffer, index, packet, parent)

  -- Price: PriceType
  index, price = memx_equities_memo_sbe_v1_12.price.dissect(buffer, index, packet, parent)

  -- Time In Force: TimeInForceType
  index, time_in_force = memx_equities_memo_sbe_v1_12.time_in_force.dissect(buffer, index, packet, parent)

  -- Order Capacity: OrderCapacityType
  index, order_capacity = memx_equities_memo_sbe_v1_12.order_capacity.dissect(buffer, index, packet, parent)

  -- Cust Order Capacity: CustOrderCapacityType
  index, cust_order_capacity = memx_equities_memo_sbe_v1_12.cust_order_capacity.dissect(buffer, index, packet, parent)

  -- Exec Inst: Struct of 4 fields
  index, exec_inst = memx_equities_memo_sbe_v1_12.exec_inst.dissect(buffer, index, packet, parent)

  -- Peg Offset Value: PriceType
  index, peg_offset_value = memx_equities_memo_sbe_v1_12.peg_offset_value.dissect(buffer, index, packet, parent)

  -- Peg Price Type: PegType
  index, peg_price_type = memx_equities_memo_sbe_v1_12.peg_price_type.dissect(buffer, index, packet, parent)

  -- Expire Time: UTCTimestampNanos
  index, expire_time = memx_equities_memo_sbe_v1_12.expire_time.dissect(buffer, index, packet, parent)

  -- Min Qty: uint32
  index, min_qty = memx_equities_memo_sbe_v1_12.min_qty.dissect(buffer, index, packet, parent)

  -- Display Qty: uint32
  index, display_qty = memx_equities_memo_sbe_v1_12.display_qty.dissect(buffer, index, packet, parent)

  -- Display Method: DispMethodType
  index, display_method = memx_equities_memo_sbe_v1_12.display_method.dissect(buffer, index, packet, parent)

  -- Reserve Replenish Timing: ReserveReplenishTimingType
  index, reserve_replenish_timing = memx_equities_memo_sbe_v1_12.reserve_replenish_timing.dissect(buffer, index, packet, parent)

  -- Display Min Incr: uint32
  index, display_min_incr = memx_equities_memo_sbe_v1_12.display_min_incr.dissect(buffer, index, packet, parent)

  -- Locate Reqd: char
  index, locate_reqd = memx_equities_memo_sbe_v1_12.locate_reqd.dissect(buffer, index, packet, parent)

  -- Reprice Frequency: RepriceFrequencyType
  index, reprice_frequency = memx_equities_memo_sbe_v1_12.reprice_frequency.dissect(buffer, index, packet, parent)

  -- Reprice Behavior: RepriceBehaviorType
  index, reprice_behavior = memx_equities_memo_sbe_v1_12.reprice_behavior.dissect(buffer, index, packet, parent)

  -- Cancel Group Id: uint16
  index, cancel_group_id = memx_equities_memo_sbe_v1_12.cancel_group_id.dissect(buffer, index, packet, parent)

  -- Stp Group Id: uint16
  index, stp_group_id = memx_equities_memo_sbe_v1_12.stp_group_id.dissect(buffer, index, packet, parent)

  -- Self Trade Prevention: SelfTradePreventionType
  index, self_trade_prevention = memx_equities_memo_sbe_v1_12.self_trade_prevention.dissect(buffer, index, packet, parent)

  -- Risk Group Id: uint16
  index, risk_group_id = memx_equities_memo_sbe_v1_12.risk_group_id.dissect(buffer, index, packet, parent)

  -- Leaves Qty: uint32
  index, leaves_qty = memx_equities_memo_sbe_v1_12.leaves_qty.dissect(buffer, index, packet, parent)

  -- Cum Qty: uint32
  index, cum_qty = memx_equities_memo_sbe_v1_12.cum_qty.dissect(buffer, index, packet, parent)

  -- Transact Time: UTCTimestampNanos
  index, transact_time = memx_equities_memo_sbe_v1_12.transact_time.dissect(buffer, index, packet, parent)

  -- Link Id Optional: ExecutionReport_CanceledLnkId
  index, link_id_optional = memx_equities_memo_sbe_v1_12.link_id_optional.dissect(buffer, index, packet, parent)

  -- Locate Broker Optional: ExecutionReport_NewLocateBroker
  index, locate_broker_optional = memx_equities_memo_sbe_v1_12.locate_broker_optional.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Execution Report New Message
memx_equities_memo_sbe_v1_12.execution_report_new_message.dissect = function(buffer, offset, packet, parent)
  if show.execution_report_new_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_memx_equities_memo_sbe_v1_12.fields.execution_report_new_message, buffer(offset, 0))
    local index = memx_equities_memo_sbe_v1_12.execution_report_new_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = memx_equities_memo_sbe_v1_12.execution_report_new_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return memx_equities_memo_sbe_v1_12.execution_report_new_message.fields(buffer, offset, packet, parent)
  end
end

-- Execution Report Pending New Message
memx_equities_memo_sbe_v1_12.execution_report_pending_new_message = {}

-- Size: Execution Report Pending New Message
memx_equities_memo_sbe_v1_12.execution_report_pending_new_message.size =
  memx_equities_memo_sbe_v1_12.sending_time.size + 
  memx_equities_memo_sbe_v1_12.order_id.size + 
  memx_equities_memo_sbe_v1_12.clordid.size + 
  memx_equities_memo_sbe_v1_12.exec_id.size + 
  memx_equities_memo_sbe_v1_12.mpid_optional.size + 
  memx_equities_memo_sbe_v1_12.ord_status.size + 
  memx_equities_memo_sbe_v1_12.symbol.size + 
  memx_equities_memo_sbe_v1_12.symbol_sfx.size + 
  memx_equities_memo_sbe_v1_12.side.size + 
  memx_equities_memo_sbe_v1_12.ord_type.size + 
  memx_equities_memo_sbe_v1_12.order_qty.size + 
  memx_equities_memo_sbe_v1_12.price.size + 
  memx_equities_memo_sbe_v1_12.time_in_force.size + 
  memx_equities_memo_sbe_v1_12.order_capacity.size + 
  memx_equities_memo_sbe_v1_12.cust_order_capacity.size + 
  memx_equities_memo_sbe_v1_12.exec_inst.size + 
  memx_equities_memo_sbe_v1_12.peg_offset_value.size + 
  memx_equities_memo_sbe_v1_12.peg_price_type.size + 
  memx_equities_memo_sbe_v1_12.expire_time.size + 
  memx_equities_memo_sbe_v1_12.min_qty.size + 
  memx_equities_memo_sbe_v1_12.display_qty.size + 
  memx_equities_memo_sbe_v1_12.display_method.size + 
  memx_equities_memo_sbe_v1_12.reserve_replenish_timing.size + 
  memx_equities_memo_sbe_v1_12.display_min_incr.size + 
  memx_equities_memo_sbe_v1_12.locate_reqd.size + 
  memx_equities_memo_sbe_v1_12.reprice_frequency.size + 
  memx_equities_memo_sbe_v1_12.reprice_behavior.size + 
  memx_equities_memo_sbe_v1_12.cancel_group_id.size + 
  memx_equities_memo_sbe_v1_12.stp_group_id.size + 
  memx_equities_memo_sbe_v1_12.self_trade_prevention.size + 
  memx_equities_memo_sbe_v1_12.risk_group_id.size + 
  memx_equities_memo_sbe_v1_12.leaves_qty.size + 
  memx_equities_memo_sbe_v1_12.cum_qty.size + 
  memx_equities_memo_sbe_v1_12.link_id_optional.size + 
  memx_equities_memo_sbe_v1_12.locate_broker_optional.size

-- Display: Execution Report Pending New Message
memx_equities_memo_sbe_v1_12.execution_report_pending_new_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Execution Report Pending New Message
memx_equities_memo_sbe_v1_12.execution_report_pending_new_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Sending Time: UTCTimestampNanos
  index, sending_time = memx_equities_memo_sbe_v1_12.sending_time.dissect(buffer, index, packet, parent)

  -- Order Id: uint64
  index, order_id = memx_equities_memo_sbe_v1_12.order_id.dissect(buffer, index, packet, parent)

  -- ClOrdId: ExecutionReport_CanceledClOrdID
  index, clordid = memx_equities_memo_sbe_v1_12.clordid.dissect(buffer, index, packet, parent)

  -- Exec Id: uint64
  index, exec_id = memx_equities_memo_sbe_v1_12.exec_id.dissect(buffer, index, packet, parent)

  -- Mpid Optional: ExecutionReport_NewMPID
  index, mpid_optional = memx_equities_memo_sbe_v1_12.mpid_optional.dissect(buffer, index, packet, parent)

  -- Ord Status: OrdStatusType
  index, ord_status = memx_equities_memo_sbe_v1_12.ord_status.dissect(buffer, index, packet, parent)

  -- Symbol: ExecutionReport_NewSymbol
  index, symbol = memx_equities_memo_sbe_v1_12.symbol.dissect(buffer, index, packet, parent)

  -- Symbol Sfx: ExecutionReport_NewSymbolSfx
  index, symbol_sfx = memx_equities_memo_sbe_v1_12.symbol_sfx.dissect(buffer, index, packet, parent)

  -- Side: SideType
  index, side = memx_equities_memo_sbe_v1_12.side.dissect(buffer, index, packet, parent)

  -- Ord Type: OrdType
  index, ord_type = memx_equities_memo_sbe_v1_12.ord_type.dissect(buffer, index, packet, parent)

  -- Order Qty: uint32
  index, order_qty = memx_equities_memo_sbe_v1_12.order_qty.dissect(buffer, index, packet, parent)

  -- Price: PriceType
  index, price = memx_equities_memo_sbe_v1_12.price.dissect(buffer, index, packet, parent)

  -- Time In Force: TimeInForceType
  index, time_in_force = memx_equities_memo_sbe_v1_12.time_in_force.dissect(buffer, index, packet, parent)

  -- Order Capacity: OrderCapacityType
  index, order_capacity = memx_equities_memo_sbe_v1_12.order_capacity.dissect(buffer, index, packet, parent)

  -- Cust Order Capacity: CustOrderCapacityType
  index, cust_order_capacity = memx_equities_memo_sbe_v1_12.cust_order_capacity.dissect(buffer, index, packet, parent)

  -- Exec Inst: Struct of 4 fields
  index, exec_inst = memx_equities_memo_sbe_v1_12.exec_inst.dissect(buffer, index, packet, parent)

  -- Peg Offset Value: PriceType
  index, peg_offset_value = memx_equities_memo_sbe_v1_12.peg_offset_value.dissect(buffer, index, packet, parent)

  -- Peg Price Type: PegType
  index, peg_price_type = memx_equities_memo_sbe_v1_12.peg_price_type.dissect(buffer, index, packet, parent)

  -- Expire Time: UTCTimestampNanos
  index, expire_time = memx_equities_memo_sbe_v1_12.expire_time.dissect(buffer, index, packet, parent)

  -- Min Qty: uint32
  index, min_qty = memx_equities_memo_sbe_v1_12.min_qty.dissect(buffer, index, packet, parent)

  -- Display Qty: uint32
  index, display_qty = memx_equities_memo_sbe_v1_12.display_qty.dissect(buffer, index, packet, parent)

  -- Display Method: DispMethodType
  index, display_method = memx_equities_memo_sbe_v1_12.display_method.dissect(buffer, index, packet, parent)

  -- Reserve Replenish Timing: ReserveReplenishTimingType
  index, reserve_replenish_timing = memx_equities_memo_sbe_v1_12.reserve_replenish_timing.dissect(buffer, index, packet, parent)

  -- Display Min Incr: uint32
  index, display_min_incr = memx_equities_memo_sbe_v1_12.display_min_incr.dissect(buffer, index, packet, parent)

  -- Locate Reqd: char
  index, locate_reqd = memx_equities_memo_sbe_v1_12.locate_reqd.dissect(buffer, index, packet, parent)

  -- Reprice Frequency: RepriceFrequencyType
  index, reprice_frequency = memx_equities_memo_sbe_v1_12.reprice_frequency.dissect(buffer, index, packet, parent)

  -- Reprice Behavior: RepriceBehaviorType
  index, reprice_behavior = memx_equities_memo_sbe_v1_12.reprice_behavior.dissect(buffer, index, packet, parent)

  -- Cancel Group Id: uint16
  index, cancel_group_id = memx_equities_memo_sbe_v1_12.cancel_group_id.dissect(buffer, index, packet, parent)

  -- Stp Group Id: uint16
  index, stp_group_id = memx_equities_memo_sbe_v1_12.stp_group_id.dissect(buffer, index, packet, parent)

  -- Self Trade Prevention: SelfTradePreventionType
  index, self_trade_prevention = memx_equities_memo_sbe_v1_12.self_trade_prevention.dissect(buffer, index, packet, parent)

  -- Risk Group Id: uint16
  index, risk_group_id = memx_equities_memo_sbe_v1_12.risk_group_id.dissect(buffer, index, packet, parent)

  -- Leaves Qty: uint32
  index, leaves_qty = memx_equities_memo_sbe_v1_12.leaves_qty.dissect(buffer, index, packet, parent)

  -- Cum Qty: uint32
  index, cum_qty = memx_equities_memo_sbe_v1_12.cum_qty.dissect(buffer, index, packet, parent)

  -- Link Id Optional: ExecutionReport_CanceledLnkId
  index, link_id_optional = memx_equities_memo_sbe_v1_12.link_id_optional.dissect(buffer, index, packet, parent)

  -- Locate Broker Optional: ExecutionReport_NewLocateBroker
  index, locate_broker_optional = memx_equities_memo_sbe_v1_12.locate_broker_optional.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Execution Report Pending New Message
memx_equities_memo_sbe_v1_12.execution_report_pending_new_message.dissect = function(buffer, offset, packet, parent)
  if show.execution_report_pending_new_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_memx_equities_memo_sbe_v1_12.fields.execution_report_pending_new_message, buffer(offset, 0))
    local index = memx_equities_memo_sbe_v1_12.execution_report_pending_new_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = memx_equities_memo_sbe_v1_12.execution_report_pending_new_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return memx_equities_memo_sbe_v1_12.execution_report_pending_new_message.fields(buffer, offset, packet, parent)
  end
end

-- Mass Cancel Request Message
memx_equities_memo_sbe_v1_12.mass_cancel_request_message = {}

-- Size: Mass Cancel Request Message
memx_equities_memo_sbe_v1_12.mass_cancel_request_message.size =
  memx_equities_memo_sbe_v1_12.clordid.size + 
  memx_equities_memo_sbe_v1_12.symbol.size + 
  memx_equities_memo_sbe_v1_12.symbol_sfx.size + 
  memx_equities_memo_sbe_v1_12.side_optional.size + 
  memx_equities_memo_sbe_v1_12.lower_than_price.size + 
  memx_equities_memo_sbe_v1_12.higher_than_price.size + 
  memx_equities_memo_sbe_v1_12.cancel_group_id.size

-- Display: Mass Cancel Request Message
memx_equities_memo_sbe_v1_12.mass_cancel_request_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Mass Cancel Request Message
memx_equities_memo_sbe_v1_12.mass_cancel_request_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- ClOrdId: ExecutionReport_CanceledClOrdID
  index, clordid = memx_equities_memo_sbe_v1_12.clordid.dissect(buffer, index, packet, parent)

  -- Symbol: ExecutionReport_NewSymbol
  index, symbol = memx_equities_memo_sbe_v1_12.symbol.dissect(buffer, index, packet, parent)

  -- Symbol Sfx: ExecutionReport_NewSymbolSfx
  index, symbol_sfx = memx_equities_memo_sbe_v1_12.symbol_sfx.dissect(buffer, index, packet, parent)

  -- Side Optional: SideType
  index, side_optional = memx_equities_memo_sbe_v1_12.side_optional.dissect(buffer, index, packet, parent)

  -- Lower Than Price: PriceType
  index, lower_than_price = memx_equities_memo_sbe_v1_12.lower_than_price.dissect(buffer, index, packet, parent)

  -- Higher Than Price: PriceType
  index, higher_than_price = memx_equities_memo_sbe_v1_12.higher_than_price.dissect(buffer, index, packet, parent)

  -- Cancel Group Id: uint16
  index, cancel_group_id = memx_equities_memo_sbe_v1_12.cancel_group_id.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Mass Cancel Request Message
memx_equities_memo_sbe_v1_12.mass_cancel_request_message.dissect = function(buffer, offset, packet, parent)
  if show.mass_cancel_request_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_memx_equities_memo_sbe_v1_12.fields.mass_cancel_request_message, buffer(offset, 0))
    local index = memx_equities_memo_sbe_v1_12.mass_cancel_request_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = memx_equities_memo_sbe_v1_12.mass_cancel_request_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return memx_equities_memo_sbe_v1_12.mass_cancel_request_message.fields(buffer, offset, packet, parent)
  end
end

-- Order Id Optional
memx_equities_memo_sbe_v1_12.order_id_optional = {}

-- Size: Order Id Optional
memx_equities_memo_sbe_v1_12.order_id_optional.size = 8

-- Display: Order Id Optional
memx_equities_memo_sbe_v1_12.order_id_optional.display = function(value)
  -- Check if field has value
  if value == UInt64(0xFFFFFFFF, 0xFFFFFFFF) then
    return "Order Id Optional: No Value"
  end

  return "Order Id Optional: "..value
end

-- Dissect: Order Id Optional
memx_equities_memo_sbe_v1_12.order_id_optional.dissect = function(buffer, offset, packet, parent)
  local length = memx_equities_memo_sbe_v1_12.order_id_optional.size
  local range = buffer(offset, length)
  local value = range:uint64()
  local display = memx_equities_memo_sbe_v1_12.order_id_optional.display(value, buffer, offset, packet, parent)

  parent:add(omi_memx_equities_memo_sbe_v1_12.fields.order_id_optional, range, value, display)

  return offset + length, value
end

-- Order Cancel Request Message
memx_equities_memo_sbe_v1_12.order_cancel_request_message = {}

-- Size: Order Cancel Request Message
memx_equities_memo_sbe_v1_12.order_cancel_request_message.size =
  memx_equities_memo_sbe_v1_12.origclordid_optional.size + 
  memx_equities_memo_sbe_v1_12.order_id_optional.size + 
  memx_equities_memo_sbe_v1_12.clordid.size + 
  memx_equities_memo_sbe_v1_12.symbol.size + 
  memx_equities_memo_sbe_v1_12.symbol_sfx.size

-- Display: Order Cancel Request Message
memx_equities_memo_sbe_v1_12.order_cancel_request_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Order Cancel Request Message
memx_equities_memo_sbe_v1_12.order_cancel_request_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- OrigClOrdId Optional: ExecutionReport_CanceledOrigClOrdID
  index, origclordid_optional = memx_equities_memo_sbe_v1_12.origclordid_optional.dissect(buffer, index, packet, parent)

  -- Order Id Optional: uint64
  index, order_id_optional = memx_equities_memo_sbe_v1_12.order_id_optional.dissect(buffer, index, packet, parent)

  -- ClOrdId: ExecutionReport_CanceledClOrdID
  index, clordid = memx_equities_memo_sbe_v1_12.clordid.dissect(buffer, index, packet, parent)

  -- Symbol: ExecutionReport_NewSymbol
  index, symbol = memx_equities_memo_sbe_v1_12.symbol.dissect(buffer, index, packet, parent)

  -- Symbol Sfx: ExecutionReport_NewSymbolSfx
  index, symbol_sfx = memx_equities_memo_sbe_v1_12.symbol_sfx.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Order Cancel Request Message
memx_equities_memo_sbe_v1_12.order_cancel_request_message.dissect = function(buffer, offset, packet, parent)
  if show.order_cancel_request_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_memx_equities_memo_sbe_v1_12.fields.order_cancel_request_message, buffer(offset, 0))
    local index = memx_equities_memo_sbe_v1_12.order_cancel_request_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = memx_equities_memo_sbe_v1_12.order_cancel_request_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return memx_equities_memo_sbe_v1_12.order_cancel_request_message.fields(buffer, offset, packet, parent)
  end
end

-- OrigClOrdId
memx_equities_memo_sbe_v1_12.origclordid = {}

-- Size: OrigClOrdId
memx_equities_memo_sbe_v1_12.origclordid.size = 16

-- Display: OrigClOrdId
memx_equities_memo_sbe_v1_12.origclordid.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "OrigClOrdId: No Value"
  end

  return "OrigClOrdId: "..value
end

-- Dissect: OrigClOrdId
memx_equities_memo_sbe_v1_12.origclordid.dissect = function(buffer, offset, packet, parent)
  local length = memx_equities_memo_sbe_v1_12.origclordid.size
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

  local display = memx_equities_memo_sbe_v1_12.origclordid.display(value, buffer, offset, packet, parent)

  parent:add(omi_memx_equities_memo_sbe_v1_12.fields.origclordid, range, value, display)

  return offset + length, value
end

-- Order Cancel Replace Request Message
memx_equities_memo_sbe_v1_12.order_cancel_replace_request_message = {}

-- Size: Order Cancel Replace Request Message
memx_equities_memo_sbe_v1_12.order_cancel_replace_request_message.size =
  memx_equities_memo_sbe_v1_12.origclordid.size + 
  memx_equities_memo_sbe_v1_12.clordid.size + 
  memx_equities_memo_sbe_v1_12.symbol.size + 
  memx_equities_memo_sbe_v1_12.symbol_sfx.size + 
  memx_equities_memo_sbe_v1_12.side.size + 
  memx_equities_memo_sbe_v1_12.order_qty.size + 
  memx_equities_memo_sbe_v1_12.ord_type.size + 
  memx_equities_memo_sbe_v1_12.price.size + 
  memx_equities_memo_sbe_v1_12.display_qty.size + 
  memx_equities_memo_sbe_v1_12.locate_reqd.size + 
  memx_equities_memo_sbe_v1_12.link_id_optional.size + 
  memx_equities_memo_sbe_v1_12.locate_broker_optional.size

-- Display: Order Cancel Replace Request Message
memx_equities_memo_sbe_v1_12.order_cancel_replace_request_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Order Cancel Replace Request Message
memx_equities_memo_sbe_v1_12.order_cancel_replace_request_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- OrigClOrdId: OrderCancelReplaceRequestOrigClOrdID
  index, origclordid = memx_equities_memo_sbe_v1_12.origclordid.dissect(buffer, index, packet, parent)

  -- ClOrdId: ExecutionReport_CanceledClOrdID
  index, clordid = memx_equities_memo_sbe_v1_12.clordid.dissect(buffer, index, packet, parent)

  -- Symbol: ExecutionReport_NewSymbol
  index, symbol = memx_equities_memo_sbe_v1_12.symbol.dissect(buffer, index, packet, parent)

  -- Symbol Sfx: ExecutionReport_NewSymbolSfx
  index, symbol_sfx = memx_equities_memo_sbe_v1_12.symbol_sfx.dissect(buffer, index, packet, parent)

  -- Side: SideType
  index, side = memx_equities_memo_sbe_v1_12.side.dissect(buffer, index, packet, parent)

  -- Order Qty: uint32
  index, order_qty = memx_equities_memo_sbe_v1_12.order_qty.dissect(buffer, index, packet, parent)

  -- Ord Type: OrdType
  index, ord_type = memx_equities_memo_sbe_v1_12.ord_type.dissect(buffer, index, packet, parent)

  -- Price: PriceType
  index, price = memx_equities_memo_sbe_v1_12.price.dissect(buffer, index, packet, parent)

  -- Display Qty: uint32
  index, display_qty = memx_equities_memo_sbe_v1_12.display_qty.dissect(buffer, index, packet, parent)

  -- Locate Reqd: char
  index, locate_reqd = memx_equities_memo_sbe_v1_12.locate_reqd.dissect(buffer, index, packet, parent)

  -- Link Id Optional: ExecutionReport_CanceledLnkId
  index, link_id_optional = memx_equities_memo_sbe_v1_12.link_id_optional.dissect(buffer, index, packet, parent)

  -- Locate Broker Optional: ExecutionReport_NewLocateBroker
  index, locate_broker_optional = memx_equities_memo_sbe_v1_12.locate_broker_optional.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Order Cancel Replace Request Message
memx_equities_memo_sbe_v1_12.order_cancel_replace_request_message.dissect = function(buffer, offset, packet, parent)
  if show.order_cancel_replace_request_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_memx_equities_memo_sbe_v1_12.fields.order_cancel_replace_request_message, buffer(offset, 0))
    local index = memx_equities_memo_sbe_v1_12.order_cancel_replace_request_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = memx_equities_memo_sbe_v1_12.order_cancel_replace_request_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return memx_equities_memo_sbe_v1_12.order_cancel_replace_request_message.fields(buffer, offset, packet, parent)
  end
end

-- New Order Single Message
memx_equities_memo_sbe_v1_12.new_order_single_message = {}

-- Size: New Order Single Message
memx_equities_memo_sbe_v1_12.new_order_single_message.size =
  memx_equities_memo_sbe_v1_12.clordid.size + 
  memx_equities_memo_sbe_v1_12.mpid_optional.size + 
  memx_equities_memo_sbe_v1_12.symbol.size + 
  memx_equities_memo_sbe_v1_12.symbol_sfx.size + 
  memx_equities_memo_sbe_v1_12.side.size + 
  memx_equities_memo_sbe_v1_12.order_qty.size + 
  memx_equities_memo_sbe_v1_12.ord_type.size + 
  memx_equities_memo_sbe_v1_12.price.size + 
  memx_equities_memo_sbe_v1_12.time_in_force.size + 
  memx_equities_memo_sbe_v1_12.order_capacity.size + 
  memx_equities_memo_sbe_v1_12.cust_order_capacity.size + 
  memx_equities_memo_sbe_v1_12.exec_inst.size + 
  memx_equities_memo_sbe_v1_12.peg_offset_value.size + 
  memx_equities_memo_sbe_v1_12.peg_price_type.size + 
  memx_equities_memo_sbe_v1_12.expire_time.size + 
  memx_equities_memo_sbe_v1_12.min_qty.size + 
  memx_equities_memo_sbe_v1_12.display_qty.size + 
  memx_equities_memo_sbe_v1_12.display_method.size + 
  memx_equities_memo_sbe_v1_12.reserve_replenish_timing.size + 
  memx_equities_memo_sbe_v1_12.display_min_incr.size + 
  memx_equities_memo_sbe_v1_12.locate_reqd.size + 
  memx_equities_memo_sbe_v1_12.reprice_frequency.size + 
  memx_equities_memo_sbe_v1_12.reprice_behavior.size + 
  memx_equities_memo_sbe_v1_12.cancel_group_id.size + 
  memx_equities_memo_sbe_v1_12.stp_group_id.size + 
  memx_equities_memo_sbe_v1_12.self_trade_prevention.size + 
  memx_equities_memo_sbe_v1_12.risk_group_id.size + 
  memx_equities_memo_sbe_v1_12.link_id_optional.size + 
  memx_equities_memo_sbe_v1_12.locate_broker_optional.size

-- Display: New Order Single Message
memx_equities_memo_sbe_v1_12.new_order_single_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: New Order Single Message
memx_equities_memo_sbe_v1_12.new_order_single_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- ClOrdId: ExecutionReport_CanceledClOrdID
  index, clordid = memx_equities_memo_sbe_v1_12.clordid.dissect(buffer, index, packet, parent)

  -- Mpid Optional: ExecutionReport_NewMPID
  index, mpid_optional = memx_equities_memo_sbe_v1_12.mpid_optional.dissect(buffer, index, packet, parent)

  -- Symbol: ExecutionReport_NewSymbol
  index, symbol = memx_equities_memo_sbe_v1_12.symbol.dissect(buffer, index, packet, parent)

  -- Symbol Sfx: ExecutionReport_NewSymbolSfx
  index, symbol_sfx = memx_equities_memo_sbe_v1_12.symbol_sfx.dissect(buffer, index, packet, parent)

  -- Side: SideType
  index, side = memx_equities_memo_sbe_v1_12.side.dissect(buffer, index, packet, parent)

  -- Order Qty: uint32
  index, order_qty = memx_equities_memo_sbe_v1_12.order_qty.dissect(buffer, index, packet, parent)

  -- Ord Type: OrdType
  index, ord_type = memx_equities_memo_sbe_v1_12.ord_type.dissect(buffer, index, packet, parent)

  -- Price: PriceType
  index, price = memx_equities_memo_sbe_v1_12.price.dissect(buffer, index, packet, parent)

  -- Time In Force: TimeInForceType
  index, time_in_force = memx_equities_memo_sbe_v1_12.time_in_force.dissect(buffer, index, packet, parent)

  -- Order Capacity: OrderCapacityType
  index, order_capacity = memx_equities_memo_sbe_v1_12.order_capacity.dissect(buffer, index, packet, parent)

  -- Cust Order Capacity: CustOrderCapacityType
  index, cust_order_capacity = memx_equities_memo_sbe_v1_12.cust_order_capacity.dissect(buffer, index, packet, parent)

  -- Exec Inst: Struct of 4 fields
  index, exec_inst = memx_equities_memo_sbe_v1_12.exec_inst.dissect(buffer, index, packet, parent)

  -- Peg Offset Value: PriceType
  index, peg_offset_value = memx_equities_memo_sbe_v1_12.peg_offset_value.dissect(buffer, index, packet, parent)

  -- Peg Price Type: PegType
  index, peg_price_type = memx_equities_memo_sbe_v1_12.peg_price_type.dissect(buffer, index, packet, parent)

  -- Expire Time: UTCTimestampNanos
  index, expire_time = memx_equities_memo_sbe_v1_12.expire_time.dissect(buffer, index, packet, parent)

  -- Min Qty: uint32
  index, min_qty = memx_equities_memo_sbe_v1_12.min_qty.dissect(buffer, index, packet, parent)

  -- Display Qty: uint32
  index, display_qty = memx_equities_memo_sbe_v1_12.display_qty.dissect(buffer, index, packet, parent)

  -- Display Method: DispMethodType
  index, display_method = memx_equities_memo_sbe_v1_12.display_method.dissect(buffer, index, packet, parent)

  -- Reserve Replenish Timing: ReserveReplenishTimingType
  index, reserve_replenish_timing = memx_equities_memo_sbe_v1_12.reserve_replenish_timing.dissect(buffer, index, packet, parent)

  -- Display Min Incr: uint32
  index, display_min_incr = memx_equities_memo_sbe_v1_12.display_min_incr.dissect(buffer, index, packet, parent)

  -- Locate Reqd: char
  index, locate_reqd = memx_equities_memo_sbe_v1_12.locate_reqd.dissect(buffer, index, packet, parent)

  -- Reprice Frequency: RepriceFrequencyType
  index, reprice_frequency = memx_equities_memo_sbe_v1_12.reprice_frequency.dissect(buffer, index, packet, parent)

  -- Reprice Behavior: RepriceBehaviorType
  index, reprice_behavior = memx_equities_memo_sbe_v1_12.reprice_behavior.dissect(buffer, index, packet, parent)

  -- Cancel Group Id: uint16
  index, cancel_group_id = memx_equities_memo_sbe_v1_12.cancel_group_id.dissect(buffer, index, packet, parent)

  -- Stp Group Id: uint16
  index, stp_group_id = memx_equities_memo_sbe_v1_12.stp_group_id.dissect(buffer, index, packet, parent)

  -- Self Trade Prevention: SelfTradePreventionType
  index, self_trade_prevention = memx_equities_memo_sbe_v1_12.self_trade_prevention.dissect(buffer, index, packet, parent)

  -- Risk Group Id: uint16
  index, risk_group_id = memx_equities_memo_sbe_v1_12.risk_group_id.dissect(buffer, index, packet, parent)

  -- Link Id Optional: ExecutionReport_CanceledLnkId
  index, link_id_optional = memx_equities_memo_sbe_v1_12.link_id_optional.dissect(buffer, index, packet, parent)

  -- Locate Broker Optional: ExecutionReport_NewLocateBroker
  index, locate_broker_optional = memx_equities_memo_sbe_v1_12.locate_broker_optional.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: New Order Single Message
memx_equities_memo_sbe_v1_12.new_order_single_message.dissect = function(buffer, offset, packet, parent)
  if show.new_order_single_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_memx_equities_memo_sbe_v1_12.fields.new_order_single_message, buffer(offset, 0))
    local index = memx_equities_memo_sbe_v1_12.new_order_single_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = memx_equities_memo_sbe_v1_12.new_order_single_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return memx_equities_memo_sbe_v1_12.new_order_single_message.fields(buffer, offset, packet, parent)
  end
end

-- Payload
memx_equities_memo_sbe_v1_12.payload = {}

-- Size: Payload
memx_equities_memo_sbe_v1_12.payload.size = function(buffer, offset, template_id)
  -- Size of New Order Single Message
  if template_id == 1 then
    return memx_equities_memo_sbe_v1_12.new_order_single_message.size
  end
  -- Size of Order Cancel Replace Request Message
  if template_id == 2 then
    return memx_equities_memo_sbe_v1_12.order_cancel_replace_request_message.size
  end
  -- Size of Order Cancel Request Message
  if template_id == 3 then
    return memx_equities_memo_sbe_v1_12.order_cancel_request_message.size
  end
  -- Size of Mass Cancel Request Message
  if template_id == 4 then
    return memx_equities_memo_sbe_v1_12.mass_cancel_request_message.size
  end
  -- Size of Execution Report Pending New Message
  if template_id == 5 then
    return memx_equities_memo_sbe_v1_12.execution_report_pending_new_message.size
  end
  -- Size of Execution Report New Message
  if template_id == 6 then
    return memx_equities_memo_sbe_v1_12.execution_report_new_message.size
  end
  -- Size of Execution Report Rejected Message
  if template_id == 7 then
    return memx_equities_memo_sbe_v1_12.execution_report_rejected_message.size
  end
  -- Size of Execution Report Trade Message
  if template_id == 8 then
    return memx_equities_memo_sbe_v1_12.execution_report_trade_message.size
  end
  -- Size of Execution Report Pending Cancel Message
  if template_id == 9 then
    return memx_equities_memo_sbe_v1_12.execution_report_pending_cancel_message.size
  end
  -- Size of Pending Mass Cancel Message
  if template_id == 10 then
    return memx_equities_memo_sbe_v1_12.pending_mass_cancel_message.size
  end
  -- Size of Execution Report Canceled Message
  if template_id == 11 then
    return memx_equities_memo_sbe_v1_12.execution_report_canceled_message.size
  end
  -- Size of Mass Cancel Done Message
  if template_id == 12 then
    return memx_equities_memo_sbe_v1_12.mass_cancel_done_message.size
  end
  -- Size of Execution Report Pending Replace Message
  if template_id == 13 then
    return memx_equities_memo_sbe_v1_12.execution_report_pending_replace_message.size
  end
  -- Size of Execution Report Replaced Message
  if template_id == 14 then
    return memx_equities_memo_sbe_v1_12.execution_report_replaced_message.size
  end
  -- Size of Execution Report Trade Correction Message
  if template_id == 15 then
    return memx_equities_memo_sbe_v1_12.execution_report_trade_correction_message.size
  end
  -- Size of Execution Report Trade Break Message
  if template_id == 16 then
    return memx_equities_memo_sbe_v1_12.execution_report_trade_break_message.size
  end
  -- Size of Execution Report Restatement Message
  if template_id == 17 then
    return memx_equities_memo_sbe_v1_12.execution_report_restatement_message.size
  end
  -- Size of Order Cancel Reject Message
  if template_id == 18 then
    return memx_equities_memo_sbe_v1_12.order_cancel_reject_message.size
  end
  -- Size of Mass Cancel Reject Message
  if template_id == 20 then
    return memx_equities_memo_sbe_v1_12.mass_cancel_reject_message.size
  end

  return 0
end

-- Display: Payload
memx_equities_memo_sbe_v1_12.payload.display = function(buffer, offset, packet, parent)
  return ""
end

-- Dissect Branches: Payload
memx_equities_memo_sbe_v1_12.payload.branches = function(buffer, offset, packet, parent, template_id)
  -- Dissect New Order Single Message
  if template_id == 1 then
    return memx_equities_memo_sbe_v1_12.new_order_single_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Order Cancel Replace Request Message
  if template_id == 2 then
    return memx_equities_memo_sbe_v1_12.order_cancel_replace_request_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Order Cancel Request Message
  if template_id == 3 then
    return memx_equities_memo_sbe_v1_12.order_cancel_request_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Mass Cancel Request Message
  if template_id == 4 then
    return memx_equities_memo_sbe_v1_12.mass_cancel_request_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Execution Report Pending New Message
  if template_id == 5 then
    return memx_equities_memo_sbe_v1_12.execution_report_pending_new_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Execution Report New Message
  if template_id == 6 then
    return memx_equities_memo_sbe_v1_12.execution_report_new_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Execution Report Rejected Message
  if template_id == 7 then
    return memx_equities_memo_sbe_v1_12.execution_report_rejected_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Execution Report Trade Message
  if template_id == 8 then
    return memx_equities_memo_sbe_v1_12.execution_report_trade_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Execution Report Pending Cancel Message
  if template_id == 9 then
    return memx_equities_memo_sbe_v1_12.execution_report_pending_cancel_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Pending Mass Cancel Message
  if template_id == 10 then
    return memx_equities_memo_sbe_v1_12.pending_mass_cancel_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Execution Report Canceled Message
  if template_id == 11 then
    return memx_equities_memo_sbe_v1_12.execution_report_canceled_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Mass Cancel Done Message
  if template_id == 12 then
    return memx_equities_memo_sbe_v1_12.mass_cancel_done_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Execution Report Pending Replace Message
  if template_id == 13 then
    return memx_equities_memo_sbe_v1_12.execution_report_pending_replace_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Execution Report Replaced Message
  if template_id == 14 then
    return memx_equities_memo_sbe_v1_12.execution_report_replaced_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Execution Report Trade Correction Message
  if template_id == 15 then
    return memx_equities_memo_sbe_v1_12.execution_report_trade_correction_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Execution Report Trade Break Message
  if template_id == 16 then
    return memx_equities_memo_sbe_v1_12.execution_report_trade_break_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Execution Report Restatement Message
  if template_id == 17 then
    return memx_equities_memo_sbe_v1_12.execution_report_restatement_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Order Cancel Reject Message
  if template_id == 18 then
    return memx_equities_memo_sbe_v1_12.order_cancel_reject_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Mass Cancel Reject Message
  if template_id == 20 then
    return memx_equities_memo_sbe_v1_12.mass_cancel_reject_message.dissect(buffer, offset, packet, parent)
  end

  return offset
end

-- Dissect: Payload
memx_equities_memo_sbe_v1_12.payload.dissect = function(buffer, offset, packet, parent, template_id)
  if not show.payload then
    return memx_equities_memo_sbe_v1_12.payload.branches(buffer, offset, packet, parent, template_id)
  end

  -- Calculate size and check that branch is not empty
  local size = memx_equities_memo_sbe_v1_12.payload.size(buffer, offset, template_id)
  if size == 0 then
    return offset
  end

  -- Dissect Element
  local range = buffer(offset, size)
  local display = memx_equities_memo_sbe_v1_12.payload.display(buffer, packet, parent)
  local element = parent:add(omi_memx_equities_memo_sbe_v1_12.fields.payload, range, display)

  return memx_equities_memo_sbe_v1_12.payload.branches(buffer, offset, packet, parent, template_id)
end

-- Version
memx_equities_memo_sbe_v1_12.version = {}

-- Size: Version
memx_equities_memo_sbe_v1_12.version.size = 2

-- Display: Version
memx_equities_memo_sbe_v1_12.version.display = function(value)
  if value == 268 then
    return "Version: Version 1.12"
  end

  return "Version: Unknown("..value..")"
end

-- Dissect: Version
memx_equities_memo_sbe_v1_12.version.dissect = function(buffer, offset, packet, parent)
  local length = memx_equities_memo_sbe_v1_12.version.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = memx_equities_memo_sbe_v1_12.version.display(value, buffer, offset, packet, parent)

  parent:add(omi_memx_equities_memo_sbe_v1_12.fields.version, range, value, display)

  return offset + length, value
end

-- Schema Id
memx_equities_memo_sbe_v1_12.schema_id = {}

-- Size: Schema Id
memx_equities_memo_sbe_v1_12.schema_id.size = 1

-- Display: Schema Id
memx_equities_memo_sbe_v1_12.schema_id.display = function(value)
  if value == 1 then
    return "Schema Id: SchemaId"
  end

  return "Schema Id: Unknown("..value..")"
end

-- Dissect: Schema Id
memx_equities_memo_sbe_v1_12.schema_id.dissect = function(buffer, offset, packet, parent)
  local length = memx_equities_memo_sbe_v1_12.schema_id.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = memx_equities_memo_sbe_v1_12.schema_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_memx_equities_memo_sbe_v1_12.fields.schema_id, range, value, display)

  return offset + length, value
end

-- Template Id
memx_equities_memo_sbe_v1_12.template_id = {}

-- Size: Template Id
memx_equities_memo_sbe_v1_12.template_id.size = 1

-- Display: Template Id
memx_equities_memo_sbe_v1_12.template_id.display = function(value)
  if value == 1 then
    return "Template Id: New Order Single Message (1)"
  end
  if value == 2 then
    return "Template Id: Order Cancel Replace Request Message (2)"
  end
  if value == 3 then
    return "Template Id: Order Cancel Request Message (3)"
  end
  if value == 4 then
    return "Template Id: Mass Cancel Request Message (4)"
  end
  if value == 5 then
    return "Template Id: Execution Report Pending New Message (5)"
  end
  if value == 6 then
    return "Template Id: Execution Report New Message (6)"
  end
  if value == 7 then
    return "Template Id: Execution Report Rejected Message (7)"
  end
  if value == 8 then
    return "Template Id: Execution Report Trade Message (8)"
  end
  if value == 9 then
    return "Template Id: Execution Report Pending Cancel Message (9)"
  end
  if value == 10 then
    return "Template Id: Pending Mass Cancel Message (10)"
  end
  if value == 11 then
    return "Template Id: Execution Report Canceled Message (11)"
  end
  if value == 12 then
    return "Template Id: Mass Cancel Done Message (12)"
  end
  if value == 13 then
    return "Template Id: Execution Report Pending Replace Message (13)"
  end
  if value == 14 then
    return "Template Id: Execution Report Replaced Message (14)"
  end
  if value == 15 then
    return "Template Id: Execution Report Trade Correction Message (15)"
  end
  if value == 16 then
    return "Template Id: Execution Report Trade Break Message (16)"
  end
  if value == 17 then
    return "Template Id: Execution Report Restatement Message (17)"
  end
  if value == 18 then
    return "Template Id: Order Cancel Reject Message (18)"
  end
  if value == 20 then
    return "Template Id: Mass Cancel Reject Message (20)"
  end

  return "Template Id: Unknown("..value..")"
end

-- Dissect: Template Id
memx_equities_memo_sbe_v1_12.template_id.dissect = function(buffer, offset, packet, parent)
  local length = memx_equities_memo_sbe_v1_12.template_id.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = memx_equities_memo_sbe_v1_12.template_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_memx_equities_memo_sbe_v1_12.fields.template_id, range, value, display)

  return offset + length, value
end

-- Block Length
memx_equities_memo_sbe_v1_12.block_length = {}

-- Size: Block Length
memx_equities_memo_sbe_v1_12.block_length.size = 2

-- Display: Block Length
memx_equities_memo_sbe_v1_12.block_length.display = function(value)
  return "Block Length: "..value
end

-- Dissect: Block Length
memx_equities_memo_sbe_v1_12.block_length.dissect = function(buffer, offset, packet, parent)
  local length = memx_equities_memo_sbe_v1_12.block_length.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = memx_equities_memo_sbe_v1_12.block_length.display(value, buffer, offset, packet, parent)

  parent:add(omi_memx_equities_memo_sbe_v1_12.fields.block_length, range, value, display)

  return offset + length, value
end

-- Sbe Header
memx_equities_memo_sbe_v1_12.sbe_header = {}

-- Size: Sbe Header
memx_equities_memo_sbe_v1_12.sbe_header.size =
  memx_equities_memo_sbe_v1_12.block_length.size + 
  memx_equities_memo_sbe_v1_12.template_id.size + 
  memx_equities_memo_sbe_v1_12.schema_id.size + 
  memx_equities_memo_sbe_v1_12.version.size

-- Display: Sbe Header
memx_equities_memo_sbe_v1_12.sbe_header.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Sbe Header
memx_equities_memo_sbe_v1_12.sbe_header.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Block Length: uint16
  index, block_length = memx_equities_memo_sbe_v1_12.block_length.dissect(buffer, index, packet, parent)

  -- Template Id: uint8
  index, template_id = memx_equities_memo_sbe_v1_12.template_id.dissect(buffer, index, packet, parent)

  -- Schema Id: uint8
  index, schema_id = memx_equities_memo_sbe_v1_12.schema_id.dissect(buffer, index, packet, parent)

  -- Version: uint16
  index, version = memx_equities_memo_sbe_v1_12.version.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Sbe Header
memx_equities_memo_sbe_v1_12.sbe_header.dissect = function(buffer, offset, packet, parent)
  if show.sbe_header then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_memx_equities_memo_sbe_v1_12.fields.sbe_header, buffer(offset, 0))
    local index = memx_equities_memo_sbe_v1_12.sbe_header.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = memx_equities_memo_sbe_v1_12.sbe_header.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return memx_equities_memo_sbe_v1_12.sbe_header.fields(buffer, offset, packet, parent)
  end
end

-- Sbe Message
memx_equities_memo_sbe_v1_12.sbe_message = {}

-- Calculate size of: Sbe Message
memx_equities_memo_sbe_v1_12.sbe_message.size = function(buffer, offset)
  local index = 0

  index = index + memx_equities_memo_sbe_v1_12.sbe_header.size

  -- Calculate runtime size of Payload field
  local payload_offset = offset + index
  local payload_type = buffer(payload_offset - 4, 1):uint()
  index = index + memx_equities_memo_sbe_v1_12.payload.size(buffer, payload_offset, payload_type)

  return index
end

-- Display: Sbe Message
memx_equities_memo_sbe_v1_12.sbe_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Sbe Message
memx_equities_memo_sbe_v1_12.sbe_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Sbe Header: Struct of 4 fields
  index, sbe_header = memx_equities_memo_sbe_v1_12.sbe_header.dissect(buffer, index, packet, parent)

  -- Dependency element: Template Id
  local template_id = buffer(index - 4, 1):uint()

  -- Payload: Runtime Type with 19 branches
  index = memx_equities_memo_sbe_v1_12.payload.dissect(buffer, index, packet, parent, template_id)

  return index
end

-- Dissect: Sbe Message
memx_equities_memo_sbe_v1_12.sbe_message.dissect = function(buffer, offset, packet, parent)
  -- Optionally add dynamic struct element to protocol tree
  if show.sbe_message then
    local length = memx_equities_memo_sbe_v1_12.sbe_message.size(buffer, offset)
    local range = buffer(offset, length)
    local display = memx_equities_memo_sbe_v1_12.sbe_message.display(buffer, packet, parent)
    parent = parent:add(omi_memx_equities_memo_sbe_v1_12.fields.sbe_message, range, display)
  end

  return memx_equities_memo_sbe_v1_12.sbe_message.fields(buffer, offset, packet, parent)
end

-- Sequenced Message
memx_equities_memo_sbe_v1_12.sequenced_message = {}

-- Calculate size of: Sequenced Message
memx_equities_memo_sbe_v1_12.sequenced_message.size = function(buffer, offset)
  local index = 0

  index = index + memx_equities_memo_sbe_v1_12.sbe_message.size(buffer, offset + index)

  return index
end

-- Display: Sequenced Message
memx_equities_memo_sbe_v1_12.sequenced_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Sequenced Message
memx_equities_memo_sbe_v1_12.sequenced_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Sbe Message: Struct of 2 fields
  index, sbe_message = memx_equities_memo_sbe_v1_12.sbe_message.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Sequenced Message
memx_equities_memo_sbe_v1_12.sequenced_message.dissect = function(buffer, offset, packet, parent)
  -- Optionally add dynamic struct element to protocol tree
  if show.sequenced_message then
    local length = memx_equities_memo_sbe_v1_12.sequenced_message.size(buffer, offset)
    local range = buffer(offset, length)
    local display = memx_equities_memo_sbe_v1_12.sequenced_message.display(buffer, packet, parent)
    parent = parent:add(omi_memx_equities_memo_sbe_v1_12.fields.sequenced_message, range, display)
  end

  return memx_equities_memo_sbe_v1_12.sequenced_message.fields(buffer, offset, packet, parent)
end

-- Total Sequence Count
memx_equities_memo_sbe_v1_12.total_sequence_count = {}

-- Size: Total Sequence Count
memx_equities_memo_sbe_v1_12.total_sequence_count.size = 8

-- Display: Total Sequence Count
memx_equities_memo_sbe_v1_12.total_sequence_count.display = function(value)
  return "Total Sequence Count: "..value
end

-- Dissect: Total Sequence Count
memx_equities_memo_sbe_v1_12.total_sequence_count.dissect = function(buffer, offset, packet, parent)
  local length = memx_equities_memo_sbe_v1_12.total_sequence_count.size
  local range = buffer(offset, length)
  local value = range:uint64()
  local display = memx_equities_memo_sbe_v1_12.total_sequence_count.display(value, buffer, offset, packet, parent)

  parent:add(omi_memx_equities_memo_sbe_v1_12.fields.total_sequence_count, range, value, display)

  return offset + length, value
end

-- Stream Complete Message
memx_equities_memo_sbe_v1_12.stream_complete_message = {}

-- Size: Stream Complete Message
memx_equities_memo_sbe_v1_12.stream_complete_message.size =
  memx_equities_memo_sbe_v1_12.total_sequence_count.size

-- Display: Stream Complete Message
memx_equities_memo_sbe_v1_12.stream_complete_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Stream Complete Message
memx_equities_memo_sbe_v1_12.stream_complete_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Total Sequence Count: 8 Byte Unsigned Fixed Width Integer
  index, total_sequence_count = memx_equities_memo_sbe_v1_12.total_sequence_count.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Stream Complete Message
memx_equities_memo_sbe_v1_12.stream_complete_message.dissect = function(buffer, offset, packet, parent)
  if show.stream_complete_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_memx_equities_memo_sbe_v1_12.fields.stream_complete_message, buffer(offset, 0))
    local index = memx_equities_memo_sbe_v1_12.stream_complete_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = memx_equities_memo_sbe_v1_12.stream_complete_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return memx_equities_memo_sbe_v1_12.stream_complete_message.fields(buffer, offset, packet, parent)
  end
end

-- Stream Reject Code
memx_equities_memo_sbe_v1_12.stream_reject_code = {}

-- Size: Stream Reject Code
memx_equities_memo_sbe_v1_12.stream_reject_code.size = 1

-- Display: Stream Reject Code
memx_equities_memo_sbe_v1_12.stream_reject_code.display = function(value)
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
memx_equities_memo_sbe_v1_12.stream_reject_code.dissect = function(buffer, offset, packet, parent)
  local length = memx_equities_memo_sbe_v1_12.stream_reject_code.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = memx_equities_memo_sbe_v1_12.stream_reject_code.display(value, buffer, offset, packet, parent)

  parent:add(omi_memx_equities_memo_sbe_v1_12.fields.stream_reject_code, range, value, display)

  return offset + length, value
end

-- Stream Rejected Message
memx_equities_memo_sbe_v1_12.stream_rejected_message = {}

-- Size: Stream Rejected Message
memx_equities_memo_sbe_v1_12.stream_rejected_message.size =
  memx_equities_memo_sbe_v1_12.stream_reject_code.size

-- Display: Stream Rejected Message
memx_equities_memo_sbe_v1_12.stream_rejected_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Stream Rejected Message
memx_equities_memo_sbe_v1_12.stream_rejected_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Stream Reject Code: 1 Byte Ascii String Enum with 3 values
  index, stream_reject_code = memx_equities_memo_sbe_v1_12.stream_reject_code.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Stream Rejected Message
memx_equities_memo_sbe_v1_12.stream_rejected_message.dissect = function(buffer, offset, packet, parent)
  if show.stream_rejected_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_memx_equities_memo_sbe_v1_12.fields.stream_rejected_message, buffer(offset, 0))
    local index = memx_equities_memo_sbe_v1_12.stream_rejected_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = memx_equities_memo_sbe_v1_12.stream_rejected_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return memx_equities_memo_sbe_v1_12.stream_rejected_message.fields(buffer, offset, packet, parent)
  end
end

-- Max Sequence Number
memx_equities_memo_sbe_v1_12.max_sequence_number = {}

-- Size: Max Sequence Number
memx_equities_memo_sbe_v1_12.max_sequence_number.size = 8

-- Display: Max Sequence Number
memx_equities_memo_sbe_v1_12.max_sequence_number.display = function(value)
  return "Max Sequence Number: "..value
end

-- Dissect: Max Sequence Number
memx_equities_memo_sbe_v1_12.max_sequence_number.dissect = function(buffer, offset, packet, parent)
  local length = memx_equities_memo_sbe_v1_12.max_sequence_number.size
  local range = buffer(offset, length)
  local value = range:uint64()
  local display = memx_equities_memo_sbe_v1_12.max_sequence_number.display(value, buffer, offset, packet, parent)

  parent:add(omi_memx_equities_memo_sbe_v1_12.fields.max_sequence_number, range, value, display)

  return offset + length, value
end

-- Next Sequence Number
memx_equities_memo_sbe_v1_12.next_sequence_number = {}

-- Size: Next Sequence Number
memx_equities_memo_sbe_v1_12.next_sequence_number.size = 8

-- Display: Next Sequence Number
memx_equities_memo_sbe_v1_12.next_sequence_number.display = function(value)
  return "Next Sequence Number: "..value
end

-- Dissect: Next Sequence Number
memx_equities_memo_sbe_v1_12.next_sequence_number.dissect = function(buffer, offset, packet, parent)
  local length = memx_equities_memo_sbe_v1_12.next_sequence_number.size
  local range = buffer(offset, length)
  local value = range:uint64()
  local display = memx_equities_memo_sbe_v1_12.next_sequence_number.display(value, buffer, offset, packet, parent)

  parent:add(omi_memx_equities_memo_sbe_v1_12.fields.next_sequence_number, range, value, display)

  return offset + length, value
end

-- Stream Begin Message
memx_equities_memo_sbe_v1_12.stream_begin_message = {}

-- Size: Stream Begin Message
memx_equities_memo_sbe_v1_12.stream_begin_message.size =
  memx_equities_memo_sbe_v1_12.next_sequence_number.size + 
  memx_equities_memo_sbe_v1_12.max_sequence_number.size

-- Display: Stream Begin Message
memx_equities_memo_sbe_v1_12.stream_begin_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Stream Begin Message
memx_equities_memo_sbe_v1_12.stream_begin_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Next Sequence Number: 8 Byte Unsigned Fixed Width Integer
  index, next_sequence_number = memx_equities_memo_sbe_v1_12.next_sequence_number.dissect(buffer, index, packet, parent)

  -- Max Sequence Number: 8 Byte Unsigned Fixed Width Integer
  index, max_sequence_number = memx_equities_memo_sbe_v1_12.max_sequence_number.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Stream Begin Message
memx_equities_memo_sbe_v1_12.stream_begin_message.dissect = function(buffer, offset, packet, parent)
  if show.stream_begin_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_memx_equities_memo_sbe_v1_12.fields.stream_begin_message, buffer(offset, 0))
    local index = memx_equities_memo_sbe_v1_12.stream_begin_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = memx_equities_memo_sbe_v1_12.stream_begin_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return memx_equities_memo_sbe_v1_12.stream_begin_message.fields(buffer, offset, packet, parent)
  end
end

-- Message Count
memx_equities_memo_sbe_v1_12.message_count = {}

-- Size: Message Count
memx_equities_memo_sbe_v1_12.message_count.size = 8

-- Display: Message Count
memx_equities_memo_sbe_v1_12.message_count.display = function(value)
  return "Message Count: "..value
end

-- Dissect: Message Count
memx_equities_memo_sbe_v1_12.message_count.dissect = function(buffer, offset, packet, parent)
  local length = memx_equities_memo_sbe_v1_12.message_count.size
  local range = buffer(offset, length)
  local value = range:uint64()
  local display = memx_equities_memo_sbe_v1_12.message_count.display(value, buffer, offset, packet, parent)

  parent:add(omi_memx_equities_memo_sbe_v1_12.fields.message_count, range, value, display)

  return offset + length, value
end

-- Replay Complete Message
memx_equities_memo_sbe_v1_12.replay_complete_message = {}

-- Size: Replay Complete Message
memx_equities_memo_sbe_v1_12.replay_complete_message.size =
  memx_equities_memo_sbe_v1_12.message_count.size

-- Display: Replay Complete Message
memx_equities_memo_sbe_v1_12.replay_complete_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Replay Complete Message
memx_equities_memo_sbe_v1_12.replay_complete_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Message Count: 8 Byte Unsigned Fixed Width Integer
  index, message_count = memx_equities_memo_sbe_v1_12.message_count.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Replay Complete Message
memx_equities_memo_sbe_v1_12.replay_complete_message.dissect = function(buffer, offset, packet, parent)
  if show.replay_complete_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_memx_equities_memo_sbe_v1_12.fields.replay_complete_message, buffer(offset, 0))
    local index = memx_equities_memo_sbe_v1_12.replay_complete_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = memx_equities_memo_sbe_v1_12.replay_complete_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return memx_equities_memo_sbe_v1_12.replay_complete_message.fields(buffer, offset, packet, parent)
  end
end

-- Replay Reject Code
memx_equities_memo_sbe_v1_12.replay_reject_code = {}

-- Size: Replay Reject Code
memx_equities_memo_sbe_v1_12.replay_reject_code.size = 1

-- Display: Replay Reject Code
memx_equities_memo_sbe_v1_12.replay_reject_code.display = function(value)
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
memx_equities_memo_sbe_v1_12.replay_reject_code.dissect = function(buffer, offset, packet, parent)
  local length = memx_equities_memo_sbe_v1_12.replay_reject_code.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = memx_equities_memo_sbe_v1_12.replay_reject_code.display(value, buffer, offset, packet, parent)

  parent:add(omi_memx_equities_memo_sbe_v1_12.fields.replay_reject_code, range, value, display)

  return offset + length, value
end

-- Replay Rejected Message
memx_equities_memo_sbe_v1_12.replay_rejected_message = {}

-- Size: Replay Rejected Message
memx_equities_memo_sbe_v1_12.replay_rejected_message.size =
  memx_equities_memo_sbe_v1_12.replay_reject_code.size

-- Display: Replay Rejected Message
memx_equities_memo_sbe_v1_12.replay_rejected_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Replay Rejected Message
memx_equities_memo_sbe_v1_12.replay_rejected_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Replay Reject Code: 1 Byte Ascii String Enum with 4 values
  index, replay_reject_code = memx_equities_memo_sbe_v1_12.replay_reject_code.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Replay Rejected Message
memx_equities_memo_sbe_v1_12.replay_rejected_message.dissect = function(buffer, offset, packet, parent)
  if show.replay_rejected_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_memx_equities_memo_sbe_v1_12.fields.replay_rejected_message, buffer(offset, 0))
    local index = memx_equities_memo_sbe_v1_12.replay_rejected_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = memx_equities_memo_sbe_v1_12.replay_rejected_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return memx_equities_memo_sbe_v1_12.replay_rejected_message.fields(buffer, offset, packet, parent)
  end
end

-- Pending Message Count
memx_equities_memo_sbe_v1_12.pending_message_count = {}

-- Size: Pending Message Count
memx_equities_memo_sbe_v1_12.pending_message_count.size = 4

-- Display: Pending Message Count
memx_equities_memo_sbe_v1_12.pending_message_count.display = function(value)
  return "Pending Message Count: "..value
end

-- Dissect: Pending Message Count
memx_equities_memo_sbe_v1_12.pending_message_count.dissect = function(buffer, offset, packet, parent)
  local length = memx_equities_memo_sbe_v1_12.pending_message_count.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = memx_equities_memo_sbe_v1_12.pending_message_count.display(value, buffer, offset, packet, parent)

  parent:add(omi_memx_equities_memo_sbe_v1_12.fields.pending_message_count, range, value, display)

  return offset + length, value
end

-- Replay Begin Message
memx_equities_memo_sbe_v1_12.replay_begin_message = {}

-- Size: Replay Begin Message
memx_equities_memo_sbe_v1_12.replay_begin_message.size =
  memx_equities_memo_sbe_v1_12.next_sequence_number.size + 
  memx_equities_memo_sbe_v1_12.pending_message_count.size

-- Display: Replay Begin Message
memx_equities_memo_sbe_v1_12.replay_begin_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Replay Begin Message
memx_equities_memo_sbe_v1_12.replay_begin_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Next Sequence Number: 8 Byte Unsigned Fixed Width Integer
  index, next_sequence_number = memx_equities_memo_sbe_v1_12.next_sequence_number.dissect(buffer, index, packet, parent)

  -- Pending Message Count: 4 Byte Unsigned Fixed Width Integer
  index, pending_message_count = memx_equities_memo_sbe_v1_12.pending_message_count.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Replay Begin Message
memx_equities_memo_sbe_v1_12.replay_begin_message.dissect = function(buffer, offset, packet, parent)
  if show.replay_begin_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_memx_equities_memo_sbe_v1_12.fields.replay_begin_message, buffer(offset, 0))
    local index = memx_equities_memo_sbe_v1_12.replay_begin_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = memx_equities_memo_sbe_v1_12.replay_begin_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return memx_equities_memo_sbe_v1_12.replay_begin_message.fields(buffer, offset, packet, parent)
  end
end

-- Session Id
memx_equities_memo_sbe_v1_12.session_id = {}

-- Size: Session Id
memx_equities_memo_sbe_v1_12.session_id.size = 8

-- Display: Session Id
memx_equities_memo_sbe_v1_12.session_id.display = function(value)
  return "Session Id: "..value
end

-- Dissect: Session Id
memx_equities_memo_sbe_v1_12.session_id.dissect = function(buffer, offset, packet, parent)
  local length = memx_equities_memo_sbe_v1_12.session_id.size
  local range = buffer(offset, length)
  local value = range:uint64()
  local display = memx_equities_memo_sbe_v1_12.session_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_memx_equities_memo_sbe_v1_12.fields.session_id, range, value, display)

  return offset + length, value
end

-- Start Of Session Message
memx_equities_memo_sbe_v1_12.start_of_session_message = {}

-- Size: Start Of Session Message
memx_equities_memo_sbe_v1_12.start_of_session_message.size =
  memx_equities_memo_sbe_v1_12.session_id.size

-- Display: Start Of Session Message
memx_equities_memo_sbe_v1_12.start_of_session_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Start Of Session Message
memx_equities_memo_sbe_v1_12.start_of_session_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Session Id: 8 Byte Unsigned Fixed Width Integer
  index, session_id = memx_equities_memo_sbe_v1_12.session_id.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Start Of Session Message
memx_equities_memo_sbe_v1_12.start_of_session_message.dissect = function(buffer, offset, packet, parent)
  if show.start_of_session_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_memx_equities_memo_sbe_v1_12.fields.start_of_session_message, buffer(offset, 0))
    local index = memx_equities_memo_sbe_v1_12.start_of_session_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = memx_equities_memo_sbe_v1_12.start_of_session_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return memx_equities_memo_sbe_v1_12.start_of_session_message.fields(buffer, offset, packet, parent)
  end
end

-- Login Reject Code
memx_equities_memo_sbe_v1_12.login_reject_code = {}

-- Size: Login Reject Code
memx_equities_memo_sbe_v1_12.login_reject_code.size = 1

-- Display: Login Reject Code
memx_equities_memo_sbe_v1_12.login_reject_code.display = function(value)
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
memx_equities_memo_sbe_v1_12.login_reject_code.dissect = function(buffer, offset, packet, parent)
  local length = memx_equities_memo_sbe_v1_12.login_reject_code.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = memx_equities_memo_sbe_v1_12.login_reject_code.display(value, buffer, offset, packet, parent)

  parent:add(omi_memx_equities_memo_sbe_v1_12.fields.login_reject_code, range, value, display)

  return offset + length, value
end

-- Login Rejected Message
memx_equities_memo_sbe_v1_12.login_rejected_message = {}

-- Size: Login Rejected Message
memx_equities_memo_sbe_v1_12.login_rejected_message.size =
  memx_equities_memo_sbe_v1_12.login_reject_code.size

-- Display: Login Rejected Message
memx_equities_memo_sbe_v1_12.login_rejected_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Login Rejected Message
memx_equities_memo_sbe_v1_12.login_rejected_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Login Reject Code: 1 Byte Ascii String Enum with 4 values
  index, login_reject_code = memx_equities_memo_sbe_v1_12.login_reject_code.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Login Rejected Message
memx_equities_memo_sbe_v1_12.login_rejected_message.dissect = function(buffer, offset, packet, parent)
  if show.login_rejected_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_memx_equities_memo_sbe_v1_12.fields.login_rejected_message, buffer(offset, 0))
    local index = memx_equities_memo_sbe_v1_12.login_rejected_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = memx_equities_memo_sbe_v1_12.login_rejected_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return memx_equities_memo_sbe_v1_12.login_rejected_message.fields(buffer, offset, packet, parent)
  end
end

-- Supported Request Mode
memx_equities_memo_sbe_v1_12.supported_request_mode = {}

-- Size: Supported Request Mode
memx_equities_memo_sbe_v1_12.supported_request_mode.size = 1

-- Display: Supported Request Mode
memx_equities_memo_sbe_v1_12.supported_request_mode.display = function(value)
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
memx_equities_memo_sbe_v1_12.supported_request_mode.dissect = function(buffer, offset, packet, parent)
  local length = memx_equities_memo_sbe_v1_12.supported_request_mode.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = memx_equities_memo_sbe_v1_12.supported_request_mode.display(value, buffer, offset, packet, parent)

  parent:add(omi_memx_equities_memo_sbe_v1_12.fields.supported_request_mode, range, value, display)

  return offset + length, value
end

-- Login Accepted Message
memx_equities_memo_sbe_v1_12.login_accepted_message = {}

-- Size: Login Accepted Message
memx_equities_memo_sbe_v1_12.login_accepted_message.size =
  memx_equities_memo_sbe_v1_12.supported_request_mode.size

-- Display: Login Accepted Message
memx_equities_memo_sbe_v1_12.login_accepted_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Login Accepted Message
memx_equities_memo_sbe_v1_12.login_accepted_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Supported Request Mode: 1 Byte Ascii String Enum with 3 values
  index, supported_request_mode = memx_equities_memo_sbe_v1_12.supported_request_mode.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Login Accepted Message
memx_equities_memo_sbe_v1_12.login_accepted_message.dissect = function(buffer, offset, packet, parent)
  if show.login_accepted_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_memx_equities_memo_sbe_v1_12.fields.login_accepted_message, buffer(offset, 0))
    local index = memx_equities_memo_sbe_v1_12.login_accepted_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = memx_equities_memo_sbe_v1_12.login_accepted_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return memx_equities_memo_sbe_v1_12.login_accepted_message.fields(buffer, offset, packet, parent)
  end
end

-- Unsequenced Message
memx_equities_memo_sbe_v1_12.unsequenced_message = {}

-- Calculate size of: Unsequenced Message
memx_equities_memo_sbe_v1_12.unsequenced_message.size = function(buffer, offset)
  local index = 0

  index = index + memx_equities_memo_sbe_v1_12.sbe_message.size(buffer, offset + index)

  return index
end

-- Display: Unsequenced Message
memx_equities_memo_sbe_v1_12.unsequenced_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Unsequenced Message
memx_equities_memo_sbe_v1_12.unsequenced_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Sbe Message: Struct of 2 fields
  index, sbe_message = memx_equities_memo_sbe_v1_12.sbe_message.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Unsequenced Message
memx_equities_memo_sbe_v1_12.unsequenced_message.dissect = function(buffer, offset, packet, parent)
  -- Optionally add dynamic struct element to protocol tree
  if show.unsequenced_message then
    local length = memx_equities_memo_sbe_v1_12.unsequenced_message.size(buffer, offset)
    local range = buffer(offset, length)
    local display = memx_equities_memo_sbe_v1_12.unsequenced_message.display(buffer, packet, parent)
    parent = parent:add(omi_memx_equities_memo_sbe_v1_12.fields.unsequenced_message, range, display)
  end

  return memx_equities_memo_sbe_v1_12.unsequenced_message.fields(buffer, offset, packet, parent)
end

-- Stream Request Message
memx_equities_memo_sbe_v1_12.stream_request_message = {}

-- Size: Stream Request Message
memx_equities_memo_sbe_v1_12.stream_request_message.size =
  memx_equities_memo_sbe_v1_12.session_id.size + 
  memx_equities_memo_sbe_v1_12.next_sequence_number.size

-- Display: Stream Request Message
memx_equities_memo_sbe_v1_12.stream_request_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Stream Request Message
memx_equities_memo_sbe_v1_12.stream_request_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Session Id: 8 Byte Unsigned Fixed Width Integer
  index, session_id = memx_equities_memo_sbe_v1_12.session_id.dissect(buffer, index, packet, parent)

  -- Next Sequence Number: 8 Byte Unsigned Fixed Width Integer
  index, next_sequence_number = memx_equities_memo_sbe_v1_12.next_sequence_number.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Stream Request Message
memx_equities_memo_sbe_v1_12.stream_request_message.dissect = function(buffer, offset, packet, parent)
  if show.stream_request_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_memx_equities_memo_sbe_v1_12.fields.stream_request_message, buffer(offset, 0))
    local index = memx_equities_memo_sbe_v1_12.stream_request_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = memx_equities_memo_sbe_v1_12.stream_request_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return memx_equities_memo_sbe_v1_12.stream_request_message.fields(buffer, offset, packet, parent)
  end
end

-- Replay All Request Message
memx_equities_memo_sbe_v1_12.replay_all_request_message = {}

-- Size: Replay All Request Message
memx_equities_memo_sbe_v1_12.replay_all_request_message.size =
  memx_equities_memo_sbe_v1_12.session_id.size

-- Display: Replay All Request Message
memx_equities_memo_sbe_v1_12.replay_all_request_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Replay All Request Message
memx_equities_memo_sbe_v1_12.replay_all_request_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Session Id: 8 Byte Unsigned Fixed Width Integer
  index, session_id = memx_equities_memo_sbe_v1_12.session_id.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Replay All Request Message
memx_equities_memo_sbe_v1_12.replay_all_request_message.dissect = function(buffer, offset, packet, parent)
  if show.replay_all_request_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_memx_equities_memo_sbe_v1_12.fields.replay_all_request_message, buffer(offset, 0))
    local index = memx_equities_memo_sbe_v1_12.replay_all_request_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = memx_equities_memo_sbe_v1_12.replay_all_request_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return memx_equities_memo_sbe_v1_12.replay_all_request_message.fields(buffer, offset, packet, parent)
  end
end

-- Count
memx_equities_memo_sbe_v1_12.count = {}

-- Size: Count
memx_equities_memo_sbe_v1_12.count.size = 4

-- Display: Count
memx_equities_memo_sbe_v1_12.count.display = function(value)
  return "Count: "..value
end

-- Dissect: Count
memx_equities_memo_sbe_v1_12.count.dissect = function(buffer, offset, packet, parent)
  local length = memx_equities_memo_sbe_v1_12.count.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = memx_equities_memo_sbe_v1_12.count.display(value, buffer, offset, packet, parent)

  parent:add(omi_memx_equities_memo_sbe_v1_12.fields.count, range, value, display)

  return offset + length, value
end

-- Replay Request Message
memx_equities_memo_sbe_v1_12.replay_request_message = {}

-- Size: Replay Request Message
memx_equities_memo_sbe_v1_12.replay_request_message.size =
  memx_equities_memo_sbe_v1_12.session_id.size + 
  memx_equities_memo_sbe_v1_12.next_sequence_number.size + 
  memx_equities_memo_sbe_v1_12.count.size

-- Display: Replay Request Message
memx_equities_memo_sbe_v1_12.replay_request_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Replay Request Message
memx_equities_memo_sbe_v1_12.replay_request_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Session Id: 8 Byte Unsigned Fixed Width Integer
  index, session_id = memx_equities_memo_sbe_v1_12.session_id.dissect(buffer, index, packet, parent)

  -- Next Sequence Number: 8 Byte Unsigned Fixed Width Integer
  index, next_sequence_number = memx_equities_memo_sbe_v1_12.next_sequence_number.dissect(buffer, index, packet, parent)

  -- Count: 4 Byte Unsigned Fixed Width Integer
  index, count = memx_equities_memo_sbe_v1_12.count.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Replay Request Message
memx_equities_memo_sbe_v1_12.replay_request_message.dissect = function(buffer, offset, packet, parent)
  if show.replay_request_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_memx_equities_memo_sbe_v1_12.fields.replay_request_message, buffer(offset, 0))
    local index = memx_equities_memo_sbe_v1_12.replay_request_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = memx_equities_memo_sbe_v1_12.replay_request_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return memx_equities_memo_sbe_v1_12.replay_request_message.fields(buffer, offset, packet, parent)
  end
end

-- Token
memx_equities_memo_sbe_v1_12.token = {}

-- Size: Token
memx_equities_memo_sbe_v1_12.token.size = 1

-- Display: Token
memx_equities_memo_sbe_v1_12.token.display = function(value)
  return "Token: "..value
end

-- Dissect: Token
memx_equities_memo_sbe_v1_12.token.dissect = function(buffer, offset, packet, parent)
  local length = memx_equities_memo_sbe_v1_12.token.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = memx_equities_memo_sbe_v1_12.token.display(value, buffer, offset, packet, parent)

  parent:add(omi_memx_equities_memo_sbe_v1_12.fields.token, range, value, display)

  return offset + length, value
end

-- Token Type
memx_equities_memo_sbe_v1_12.token_type = {}

-- Size: Token Type
memx_equities_memo_sbe_v1_12.token_type.size = 1

-- Display: Token Type
memx_equities_memo_sbe_v1_12.token_type.display = function(value)
  return "Token Type: "..value
end

-- Dissect: Token Type
memx_equities_memo_sbe_v1_12.token_type.dissect = function(buffer, offset, packet, parent)
  local length = memx_equities_memo_sbe_v1_12.token_type.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = memx_equities_memo_sbe_v1_12.token_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_memx_equities_memo_sbe_v1_12.fields.token_type, range, value, display)

  return offset + length, value
end

-- Login Request Message
memx_equities_memo_sbe_v1_12.login_request_message = {}

-- Size: Login Request Message
memx_equities_memo_sbe_v1_12.login_request_message.size =
  memx_equities_memo_sbe_v1_12.token_type.size + 
  memx_equities_memo_sbe_v1_12.token.size

-- Display: Login Request Message
memx_equities_memo_sbe_v1_12.login_request_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Login Request Message
memx_equities_memo_sbe_v1_12.login_request_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Token Type: 1 Byte Ascii String
  index, token_type = memx_equities_memo_sbe_v1_12.token_type.dissect(buffer, index, packet, parent)

  -- Token: 1 Byte Ascii String
  index, token = memx_equities_memo_sbe_v1_12.token.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Login Request Message
memx_equities_memo_sbe_v1_12.login_request_message.dissect = function(buffer, offset, packet, parent)
  if show.login_request_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_memx_equities_memo_sbe_v1_12.fields.login_request_message, buffer(offset, 0))
    local index = memx_equities_memo_sbe_v1_12.login_request_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = memx_equities_memo_sbe_v1_12.login_request_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return memx_equities_memo_sbe_v1_12.login_request_message.fields(buffer, offset, packet, parent)
  end
end

-- Data
memx_equities_memo_sbe_v1_12.data = {}

-- Size: Data
memx_equities_memo_sbe_v1_12.data.size = function(buffer, offset, message_type)
  -- Size of Login Request Message
  if message_type == 100 then
    return memx_equities_memo_sbe_v1_12.login_request_message.size
  end
  -- Size of Replay Request Message
  if message_type == 101 then
    return memx_equities_memo_sbe_v1_12.replay_request_message.size
  end
  -- Size of Replay All Request Message
  if message_type == 102 then
    return memx_equities_memo_sbe_v1_12.replay_all_request_message.size
  end
  -- Size of Stream Request Message
  if message_type == 103 then
    return memx_equities_memo_sbe_v1_12.stream_request_message.size
  end
  -- Size of Unsequenced Message
  if message_type == 104 then
    return memx_equities_memo_sbe_v1_12.unsequenced_message.size(buffer, offset)
  end
  -- Size of Login Accepted Message
  if message_type == 1 then
    return memx_equities_memo_sbe_v1_12.login_accepted_message.size
  end
  -- Size of Login Rejected Message
  if message_type == 2 then
    return memx_equities_memo_sbe_v1_12.login_rejected_message.size
  end
  -- Size of Start Of Session Message
  if message_type == 3 then
    return memx_equities_memo_sbe_v1_12.start_of_session_message.size
  end
  -- Size of Replay Begin Message
  if message_type == 5 then
    return memx_equities_memo_sbe_v1_12.replay_begin_message.size
  end
  -- Size of Replay Rejected Message
  if message_type == 6 then
    return memx_equities_memo_sbe_v1_12.replay_rejected_message.size
  end
  -- Size of Replay Complete Message
  if message_type == 7 then
    return memx_equities_memo_sbe_v1_12.replay_complete_message.size
  end
  -- Size of Stream Begin Message
  if message_type == 8 then
    return memx_equities_memo_sbe_v1_12.stream_begin_message.size
  end
  -- Size of Stream Rejected Message
  if message_type == 9 then
    return memx_equities_memo_sbe_v1_12.stream_rejected_message.size
  end
  -- Size of Stream Complete Message
  if message_type == 10 then
    return memx_equities_memo_sbe_v1_12.stream_complete_message.size
  end
  -- Size of Sequenced Message
  if message_type == 11 then
    return memx_equities_memo_sbe_v1_12.sequenced_message.size(buffer, offset)
  end

  return 0
end

-- Display: Data
memx_equities_memo_sbe_v1_12.data.display = function(buffer, offset, packet, parent)
  return ""
end

-- Dissect Branches: Data
memx_equities_memo_sbe_v1_12.data.branches = function(buffer, offset, packet, parent, message_type)
  -- Dissect Login Request Message
  if message_type == 100 then
    return memx_equities_memo_sbe_v1_12.login_request_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Replay Request Message
  if message_type == 101 then
    return memx_equities_memo_sbe_v1_12.replay_request_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Replay All Request Message
  if message_type == 102 then
    return memx_equities_memo_sbe_v1_12.replay_all_request_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Stream Request Message
  if message_type == 103 then
    return memx_equities_memo_sbe_v1_12.stream_request_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Unsequenced Message
  if message_type == 104 then
    return memx_equities_memo_sbe_v1_12.unsequenced_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Login Accepted Message
  if message_type == 1 then
    return memx_equities_memo_sbe_v1_12.login_accepted_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Login Rejected Message
  if message_type == 2 then
    return memx_equities_memo_sbe_v1_12.login_rejected_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Start Of Session Message
  if message_type == 3 then
    return memx_equities_memo_sbe_v1_12.start_of_session_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Replay Begin Message
  if message_type == 5 then
    return memx_equities_memo_sbe_v1_12.replay_begin_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Replay Rejected Message
  if message_type == 6 then
    return memx_equities_memo_sbe_v1_12.replay_rejected_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Replay Complete Message
  if message_type == 7 then
    return memx_equities_memo_sbe_v1_12.replay_complete_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Stream Begin Message
  if message_type == 8 then
    return memx_equities_memo_sbe_v1_12.stream_begin_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Stream Rejected Message
  if message_type == 9 then
    return memx_equities_memo_sbe_v1_12.stream_rejected_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Stream Complete Message
  if message_type == 10 then
    return memx_equities_memo_sbe_v1_12.stream_complete_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Sequenced Message
  if message_type == 11 then
    return memx_equities_memo_sbe_v1_12.sequenced_message.dissect(buffer, offset, packet, parent)
  end

  return offset
end

-- Dissect: Data
memx_equities_memo_sbe_v1_12.data.dissect = function(buffer, offset, packet, parent, message_type)
  if not show.data then
    return memx_equities_memo_sbe_v1_12.data.branches(buffer, offset, packet, parent, message_type)
  end

  -- Calculate size and check that branch is not empty
  local size = memx_equities_memo_sbe_v1_12.data.size(buffer, offset, message_type)
  if size == 0 then
    return offset
  end

  -- Dissect Element
  local range = buffer(offset, size)
  local display = memx_equities_memo_sbe_v1_12.data.display(buffer, packet, parent)
  local element = parent:add(omi_memx_equities_memo_sbe_v1_12.fields.data, range, display)

  return memx_equities_memo_sbe_v1_12.data.branches(buffer, offset, packet, parent, message_type)
end

-- Message Length
memx_equities_memo_sbe_v1_12.message_length = {}

-- Size: Message Length
memx_equities_memo_sbe_v1_12.message_length.size = 2

-- Display: Message Length
memx_equities_memo_sbe_v1_12.message_length.display = function(value)
  return "Message Length: "..value
end

-- Dissect: Message Length
memx_equities_memo_sbe_v1_12.message_length.dissect = function(buffer, offset, packet, parent)
  local length = memx_equities_memo_sbe_v1_12.message_length.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = memx_equities_memo_sbe_v1_12.message_length.display(value, buffer, offset, packet, parent)

  parent:add(omi_memx_equities_memo_sbe_v1_12.fields.message_length, range, value, display)

  return offset + length, value
end

-- Message Type
memx_equities_memo_sbe_v1_12.message_type = {}

-- Size: Message Type
memx_equities_memo_sbe_v1_12.message_type.size = 1

-- Display: Message Type
memx_equities_memo_sbe_v1_12.message_type.display = function(value)
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
memx_equities_memo_sbe_v1_12.message_type.dissect = function(buffer, offset, packet, parent)
  local length = memx_equities_memo_sbe_v1_12.message_type.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = memx_equities_memo_sbe_v1_12.message_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_memx_equities_memo_sbe_v1_12.fields.message_type, range, value, display)

  return offset + length, value
end

-- Common Header
memx_equities_memo_sbe_v1_12.common_header = {}

-- Size: Common Header
memx_equities_memo_sbe_v1_12.common_header.size =
  memx_equities_memo_sbe_v1_12.message_type.size + 
  memx_equities_memo_sbe_v1_12.message_length.size

-- Display: Common Header
memx_equities_memo_sbe_v1_12.common_header.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Common Header
memx_equities_memo_sbe_v1_12.common_header.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Message Type: 1 Byte Unsigned Fixed Width Integer Enum with 16 values
  index, message_type = memx_equities_memo_sbe_v1_12.message_type.dissect(buffer, index, packet, parent)

  -- Message Length: 2 Byte Unsigned Fixed Width Integer
  index, message_length = memx_equities_memo_sbe_v1_12.message_length.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Common Header
memx_equities_memo_sbe_v1_12.common_header.dissect = function(buffer, offset, packet, parent)
  if show.common_header then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_memx_equities_memo_sbe_v1_12.fields.common_header, buffer(offset, 0))
    local index = memx_equities_memo_sbe_v1_12.common_header.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = memx_equities_memo_sbe_v1_12.common_header.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return memx_equities_memo_sbe_v1_12.common_header.fields(buffer, offset, packet, parent)
  end
end

-- Packet
memx_equities_memo_sbe_v1_12.packet = {}

-- Dissect Packet
memx_equities_memo_sbe_v1_12.packet.dissect = function(buffer, packet, parent)
  local index = 0

  -- Common Header: Struct of 2 fields
  index, common_header = memx_equities_memo_sbe_v1_12.common_header.dissect(buffer, index, packet, parent)

  -- Dependency element: Message Type
  local message_type = buffer(index - 3, 1):uint()

  -- Data: Runtime Type with 15 branches
  index = memx_equities_memo_sbe_v1_12.data.dissect(buffer, index, packet, parent, message_type)

  return index
end


-----------------------------------------------------------------------
-- Protocol Dissector and Components
-----------------------------------------------------------------------

-- Initialize Dissector
function omi_memx_equities_memo_sbe_v1_12.init()
end

-- Dissector for Memx Equities Memo Sbe 1.12
function omi_memx_equities_memo_sbe_v1_12.dissector(buffer, packet, parent)

  -- Set protocol name
  packet.cols.protocol = omi_memx_equities_memo_sbe_v1_12.name

  -- Dissect protocol
  local protocol = parent:add(omi_memx_equities_memo_sbe_v1_12, buffer(), omi_memx_equities_memo_sbe_v1_12.description, "("..buffer:len().." Bytes)")
  return memx_equities_memo_sbe_v1_12.packet.dissect(buffer, packet, protocol)
end

-- Register With Tcp Table
local tcp_table = DissectorTable.get("tcp.port")
tcp_table:add(65333, omi_memx_equities_memo_sbe_v1_12)


-----------------------------------------------------------------------
-- Protocol Heuristics
-----------------------------------------------------------------------

-- Verify size of packet
memx_equities_memo_sbe_v1_12.packet.requiredsize = function(buffer)

  return true
end

-- Dissector Heuristic for Memx Equities Memo Sbe 1.12
local function omi_memx_equities_memo_sbe_v1_12_heuristic(buffer, packet, parent)
  -- Verify packet length
  if not memx_equities_memo_sbe_v1_12.packet.requiredsize(buffer) then return false end

  -- Protocol is valid, set conversation and dissect this packet
  packet.conversation = omi_memx_equities_memo_sbe_v1_12
  omi_memx_equities_memo_sbe_v1_12.dissector(buffer, packet, parent)

  return true
end

-- Register Heuristic for Memx Equities Memo Sbe 1.12
omi_memx_equities_memo_sbe_v1_12:register_heuristic("tcp", omi_memx_equities_memo_sbe_v1_12_heuristic)

-----------------------------------------------------------------------
-- Lua dissectors are an easily edited and modified cross-platform dissection solution.
-- Feel free to modify. Enjoy.
-----------------------------------------------------------------------
-- 
-- Protocol:
--   Organization: Members Exchange
--   Version: 1.12
--   Date: Tuesday, December 12, 2023
--   Specification: MEMO SBE-v1_12.pdf
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
