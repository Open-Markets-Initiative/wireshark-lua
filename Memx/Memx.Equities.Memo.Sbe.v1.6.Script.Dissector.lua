-----------------------------------------------------------------------
-- Lua Script Wireshark Dissector
-- 
-- Please see end of file for rules and regulations
-----------------------------------------------------------------------

-- Memx Equities Memo Sbe 1.6 Protocol
local memx_equities_memo_sbe_v1_6 = Proto("Memx.Equities.Memo.Sbe.v1.6.Lua", "Memx Equities Memo Sbe 1.6")

-- Component Tables
local show = {}
local format = {}
local memx_equities_memo_sbe_v1_6_display = {}
local memx_equities_memo_sbe_v1_6_dissect = {}
local memx_equities_memo_sbe_v1_6_size_of = {}
local verify = {}
local translate = {}

-----------------------------------------------------------------------
-- Declare Protocol Fields
-----------------------------------------------------------------------

-- Memx Equities Memo Sbe 1.6 Fields
memx_equities_memo_sbe_v1_6.fields.block_length = ProtoField.new("Block Length", "memx.equities.memo.sbe.v1.6.blocklength", ftypes.UINT16)
memx_equities_memo_sbe_v1_6.fields.cancel_group_id = ProtoField.new("Cancel Group Id", "memx.equities.memo.sbe.v1.6.cancelgroupid", ftypes.UINT16)
memx_equities_memo_sbe_v1_6.fields.cancel_reason = ProtoField.new("Cancel Reason", "memx.equities.memo.sbe.v1.6.cancelreason", ftypes.UINT8)
memx_equities_memo_sbe_v1_6.fields.clordid = ProtoField.new("ClOrdId", "memx.equities.memo.sbe.v1.6.clordid", ftypes.STRING)
memx_equities_memo_sbe_v1_6.fields.common_header = ProtoField.new("Common Header", "memx.equities.memo.sbe.v1.6.commonheader", ftypes.STRING)
memx_equities_memo_sbe_v1_6.fields.count = ProtoField.new("Count", "memx.equities.memo.sbe.v1.6.count", ftypes.UINT32)
memx_equities_memo_sbe_v1_6.fields.cum_qty = ProtoField.new("Cum Qty", "memx.equities.memo.sbe.v1.6.cumqty", ftypes.UINT32)
memx_equities_memo_sbe_v1_6.fields.cust_order_capacity = ProtoField.new("Cust Order Capacity", "memx.equities.memo.sbe.v1.6.custordercapacity", ftypes.UINT8)
memx_equities_memo_sbe_v1_6.fields.cxl_rej_reason = ProtoField.new("Cxl Rej Reason", "memx.equities.memo.sbe.v1.6.cxlrejreason", ftypes.UINT8)
memx_equities_memo_sbe_v1_6.fields.cxl_rej_response_to = ProtoField.new("Cxl Rej Response To", "memx.equities.memo.sbe.v1.6.cxlrejresponseto", ftypes.UINT8)
memx_equities_memo_sbe_v1_6.fields.data = ProtoField.new("Data", "memx.equities.memo.sbe.v1.6.data", ftypes.STRING)
memx_equities_memo_sbe_v1_6.fields.display_method = ProtoField.new("Display Method", "memx.equities.memo.sbe.v1.6.displaymethod", ftypes.UINT8)
memx_equities_memo_sbe_v1_6.fields.display_min_incr = ProtoField.new("Display Min Incr", "memx.equities.memo.sbe.v1.6.displayminincr", ftypes.UINT32)
memx_equities_memo_sbe_v1_6.fields.display_qty = ProtoField.new("Display Qty", "memx.equities.memo.sbe.v1.6.displayqty", ftypes.UINT32)
memx_equities_memo_sbe_v1_6.fields.exec_id = ProtoField.new("Exec Id", "memx.equities.memo.sbe.v1.6.execid", ftypes.UINT64)
memx_equities_memo_sbe_v1_6.fields.exec_inst = ProtoField.new("Exec Inst", "memx.equities.memo.sbe.v1.6.execinst", ftypes.STRING)
memx_equities_memo_sbe_v1_6.fields.exec_ref_id = ProtoField.new("Exec Ref Id", "memx.equities.memo.sbe.v1.6.execrefid", ftypes.UINT64)
memx_equities_memo_sbe_v1_6.fields.exec_restatement_reason = ProtoField.new("Exec Restatement Reason", "memx.equities.memo.sbe.v1.6.execrestatementreason", ftypes.UINT8)
memx_equities_memo_sbe_v1_6.fields.execution_report_canceled_message = ProtoField.new("Execution Report Canceled Message", "memx.equities.memo.sbe.v1.6.executionreportcanceledmessage", ftypes.STRING)
memx_equities_memo_sbe_v1_6.fields.execution_report_new_message = ProtoField.new("Execution Report New Message", "memx.equities.memo.sbe.v1.6.executionreportnewmessage", ftypes.STRING)
memx_equities_memo_sbe_v1_6.fields.execution_report_pending_cancel_message = ProtoField.new("Execution Report Pending Cancel Message", "memx.equities.memo.sbe.v1.6.executionreportpendingcancelmessage", ftypes.STRING)
memx_equities_memo_sbe_v1_6.fields.execution_report_pending_new_message = ProtoField.new("Execution Report Pending New Message", "memx.equities.memo.sbe.v1.6.executionreportpendingnewmessage", ftypes.STRING)
memx_equities_memo_sbe_v1_6.fields.execution_report_pending_replace_message = ProtoField.new("Execution Report Pending Replace Message", "memx.equities.memo.sbe.v1.6.executionreportpendingreplacemessage", ftypes.STRING)
memx_equities_memo_sbe_v1_6.fields.execution_report_rejected_message = ProtoField.new("Execution Report Rejected Message", "memx.equities.memo.sbe.v1.6.executionreportrejectedmessage", ftypes.STRING)
memx_equities_memo_sbe_v1_6.fields.execution_report_replaced_message = ProtoField.new("Execution Report Replaced Message", "memx.equities.memo.sbe.v1.6.executionreportreplacedmessage", ftypes.STRING)
memx_equities_memo_sbe_v1_6.fields.execution_report_restatement_message = ProtoField.new("Execution Report Restatement Message", "memx.equities.memo.sbe.v1.6.executionreportrestatementmessage", ftypes.STRING)
memx_equities_memo_sbe_v1_6.fields.execution_report_trade_break_message = ProtoField.new("Execution Report Trade Break Message", "memx.equities.memo.sbe.v1.6.executionreporttradebreakmessage", ftypes.STRING)
memx_equities_memo_sbe_v1_6.fields.execution_report_trade_correction_message = ProtoField.new("Execution Report Trade Correction Message", "memx.equities.memo.sbe.v1.6.executionreporttradecorrectionmessage", ftypes.STRING)
memx_equities_memo_sbe_v1_6.fields.execution_report_trade_message = ProtoField.new("Execution Report Trade Message", "memx.equities.memo.sbe.v1.6.executionreporttrademessage", ftypes.STRING)
memx_equities_memo_sbe_v1_6.fields.expire_time = ProtoField.new("Expire Time", "memx.equities.memo.sbe.v1.6.expiretime", ftypes.UINT64)
memx_equities_memo_sbe_v1_6.fields.external_routing_not_allowed = ProtoField.new("External Routing Not Allowed", "memx.equities.memo.sbe.v1.6.externalroutingnotallowed", ftypes.UINT16, {[1]="Yes",[0]="No"}, base.DEC, "0x0004")
memx_equities_memo_sbe_v1_6.fields.higher_than_price = ProtoField.new("Higher Than Price", "memx.equities.memo.sbe.v1.6.higherthanprice", ftypes.DOUBLE)
memx_equities_memo_sbe_v1_6.fields.intermarket_sweep = ProtoField.new("Intermarket Sweep", "memx.equities.memo.sbe.v1.6.intermarketsweep", ftypes.UINT16, {[1]="Yes",[0]="No"}, base.DEC, "0x0002")
memx_equities_memo_sbe_v1_6.fields.last_liquidity_ind = ProtoField.new("Last Liquidity Ind", "memx.equities.memo.sbe.v1.6.lastliquidityind", ftypes.UINT8)
memx_equities_memo_sbe_v1_6.fields.last_mkt = ProtoField.new("Last Mkt", "memx.equities.memo.sbe.v1.6.lastmkt", ftypes.STRING)
memx_equities_memo_sbe_v1_6.fields.last_px = ProtoField.new("Last Px", "memx.equities.memo.sbe.v1.6.lastpx", ftypes.DOUBLE)
memx_equities_memo_sbe_v1_6.fields.last_px_optional = ProtoField.new("Last Px Optional", "memx.equities.memo.sbe.v1.6.lastpxoptional", ftypes.DOUBLE)
memx_equities_memo_sbe_v1_6.fields.last_qty = ProtoField.new("Last Qty", "memx.equities.memo.sbe.v1.6.lastqty", ftypes.UINT32)
memx_equities_memo_sbe_v1_6.fields.last_qty_optional = ProtoField.new("Last Qty Optional", "memx.equities.memo.sbe.v1.6.lastqtyoptional", ftypes.UINT32)
memx_equities_memo_sbe_v1_6.fields.last_shares = ProtoField.new("Last Shares", "memx.equities.memo.sbe.v1.6.lastshares", ftypes.UINT32)
memx_equities_memo_sbe_v1_6.fields.leaves_qty = ProtoField.new("Leaves Qty", "memx.equities.memo.sbe.v1.6.leavesqty", ftypes.UINT32)
memx_equities_memo_sbe_v1_6.fields.locate_reqd = ProtoField.new("Locate Reqd", "memx.equities.memo.sbe.v1.6.locatereqd", ftypes.STRING)
memx_equities_memo_sbe_v1_6.fields.login_accepted_message = ProtoField.new("Login Accepted Message", "memx.equities.memo.sbe.v1.6.loginacceptedmessage", ftypes.STRING)
memx_equities_memo_sbe_v1_6.fields.login_reject_code = ProtoField.new("Login Reject Code", "memx.equities.memo.sbe.v1.6.loginrejectcode", ftypes.STRING)
memx_equities_memo_sbe_v1_6.fields.login_rejected_message = ProtoField.new("Login Rejected Message", "memx.equities.memo.sbe.v1.6.loginrejectedmessage", ftypes.STRING)
memx_equities_memo_sbe_v1_6.fields.login_request_message = ProtoField.new("Login Request Message", "memx.equities.memo.sbe.v1.6.loginrequestmessage", ftypes.STRING)
memx_equities_memo_sbe_v1_6.fields.lower_than_price = ProtoField.new("Lower Than Price", "memx.equities.memo.sbe.v1.6.lowerthanprice", ftypes.DOUBLE)
memx_equities_memo_sbe_v1_6.fields.mass_cancel_done_message = ProtoField.new("Mass Cancel Done Message", "memx.equities.memo.sbe.v1.6.masscanceldonemessage", ftypes.STRING)
memx_equities_memo_sbe_v1_6.fields.mass_cancel_reject_message = ProtoField.new("Mass Cancel Reject Message", "memx.equities.memo.sbe.v1.6.masscancelrejectmessage", ftypes.STRING)
memx_equities_memo_sbe_v1_6.fields.mass_cancel_reject_reason = ProtoField.new("Mass Cancel Reject Reason", "memx.equities.memo.sbe.v1.6.masscancelrejectreason", ftypes.UINT8)
memx_equities_memo_sbe_v1_6.fields.mass_cancel_request_message = ProtoField.new("Mass Cancel Request Message", "memx.equities.memo.sbe.v1.6.masscancelrequestmessage", ftypes.STRING)
memx_equities_memo_sbe_v1_6.fields.message_count = ProtoField.new("Message Count", "memx.equities.memo.sbe.v1.6.messagecount", ftypes.UINT64)
memx_equities_memo_sbe_v1_6.fields.message_length = ProtoField.new("Message Length", "memx.equities.memo.sbe.v1.6.messagelength", ftypes.UINT16)
memx_equities_memo_sbe_v1_6.fields.message_type = ProtoField.new("Message Type", "memx.equities.memo.sbe.v1.6.messagetype", ftypes.UINT8)
memx_equities_memo_sbe_v1_6.fields.min_qty = ProtoField.new("Min Qty", "memx.equities.memo.sbe.v1.6.minqty", ftypes.UINT32)
memx_equities_memo_sbe_v1_6.fields.mpid = ProtoField.new("Mpid", "memx.equities.memo.sbe.v1.6.mpid", ftypes.STRING)
memx_equities_memo_sbe_v1_6.fields.new_order_single_message = ProtoField.new("New Order Single Message", "memx.equities.memo.sbe.v1.6.newordersinglemessage", ftypes.STRING)
memx_equities_memo_sbe_v1_6.fields.next_sequence_number = ProtoField.new("Next Sequence Number", "memx.equities.memo.sbe.v1.6.nextsequencenumber", ftypes.UINT64)
memx_equities_memo_sbe_v1_6.fields.ord_status = ProtoField.new("Ord Status", "memx.equities.memo.sbe.v1.6.ordstatus", ftypes.UINT8)
memx_equities_memo_sbe_v1_6.fields.ord_type = ProtoField.new("Ord Type", "memx.equities.memo.sbe.v1.6.ordtype", ftypes.UINT8)
memx_equities_memo_sbe_v1_6.fields.order_cancel_reject_message = ProtoField.new("Order Cancel Reject Message", "memx.equities.memo.sbe.v1.6.ordercancelrejectmessage", ftypes.STRING)
memx_equities_memo_sbe_v1_6.fields.order_cancel_replace_request_message = ProtoField.new("Order Cancel Replace Request Message", "memx.equities.memo.sbe.v1.6.ordercancelreplacerequestmessage", ftypes.STRING)
memx_equities_memo_sbe_v1_6.fields.order_cancel_request_message = ProtoField.new("Order Cancel Request Message", "memx.equities.memo.sbe.v1.6.ordercancelrequestmessage", ftypes.STRING)
memx_equities_memo_sbe_v1_6.fields.order_capacity = ProtoField.new("Order Capacity", "memx.equities.memo.sbe.v1.6.ordercapacity", ftypes.UINT8)
memx_equities_memo_sbe_v1_6.fields.order_id = ProtoField.new("Order Id", "memx.equities.memo.sbe.v1.6.orderid", ftypes.UINT64)
memx_equities_memo_sbe_v1_6.fields.order_id_optional = ProtoField.new("Order Id Optional", "memx.equities.memo.sbe.v1.6.orderidoptional", ftypes.UINT64)
memx_equities_memo_sbe_v1_6.fields.order_qty = ProtoField.new("Order Qty", "memx.equities.memo.sbe.v1.6.orderqty", ftypes.UINT32)
memx_equities_memo_sbe_v1_6.fields.order_reject_reason = ProtoField.new("Order Reject Reason", "memx.equities.memo.sbe.v1.6.orderrejectreason", ftypes.UINT8)
memx_equities_memo_sbe_v1_6.fields.origclordid = ProtoField.new("OrigClOrdId", "memx.equities.memo.sbe.v1.6.origclordid", ftypes.STRING)
memx_equities_memo_sbe_v1_6.fields.packet = ProtoField.new("Packet", "memx.equities.memo.sbe.v1.6.packet", ftypes.STRING)
memx_equities_memo_sbe_v1_6.fields.participate_do_not_initiate = ProtoField.new("Participate Do Not Initiate", "memx.equities.memo.sbe.v1.6.participatedonotinitiate", ftypes.UINT16, {[1]="Yes",[0]="No"}, base.DEC, "0x0001")
memx_equities_memo_sbe_v1_6.fields.payload = ProtoField.new("Payload", "memx.equities.memo.sbe.v1.6.payload", ftypes.STRING)
memx_equities_memo_sbe_v1_6.fields.peg_offset_value = ProtoField.new("Peg Offset Value", "memx.equities.memo.sbe.v1.6.pegoffsetvalue", ftypes.DOUBLE)
memx_equities_memo_sbe_v1_6.fields.peg_price_type = ProtoField.new("Peg Price Type", "memx.equities.memo.sbe.v1.6.pegpricetype", ftypes.UINT8)
memx_equities_memo_sbe_v1_6.fields.pending_mass_cancel_message = ProtoField.new("Pending Mass Cancel Message", "memx.equities.memo.sbe.v1.6.pendingmasscancelmessage", ftypes.STRING)
memx_equities_memo_sbe_v1_6.fields.pending_message_count = ProtoField.new("Pending Message Count", "memx.equities.memo.sbe.v1.6.pendingmessagecount", ftypes.UINT32)
memx_equities_memo_sbe_v1_6.fields.price = ProtoField.new("Price", "memx.equities.memo.sbe.v1.6.price", ftypes.DOUBLE)
memx_equities_memo_sbe_v1_6.fields.replay_all_request_message = ProtoField.new("Replay All Request Message", "memx.equities.memo.sbe.v1.6.replayallrequestmessage", ftypes.STRING)
memx_equities_memo_sbe_v1_6.fields.replay_begin_message = ProtoField.new("Replay Begin Message", "memx.equities.memo.sbe.v1.6.replaybeginmessage", ftypes.STRING)
memx_equities_memo_sbe_v1_6.fields.replay_complete_message = ProtoField.new("Replay Complete Message", "memx.equities.memo.sbe.v1.6.replaycompletemessage", ftypes.STRING)
memx_equities_memo_sbe_v1_6.fields.replay_reject_code = ProtoField.new("Replay Reject Code", "memx.equities.memo.sbe.v1.6.replayrejectcode", ftypes.STRING)
memx_equities_memo_sbe_v1_6.fields.replay_rejected_message = ProtoField.new("Replay Rejected Message", "memx.equities.memo.sbe.v1.6.replayrejectedmessage", ftypes.STRING)
memx_equities_memo_sbe_v1_6.fields.replay_request_message = ProtoField.new("Replay Request Message", "memx.equities.memo.sbe.v1.6.replayrequestmessage", ftypes.STRING)
memx_equities_memo_sbe_v1_6.fields.reprice_behavior = ProtoField.new("Reprice Behavior", "memx.equities.memo.sbe.v1.6.repricebehavior", ftypes.UINT8)
memx_equities_memo_sbe_v1_6.fields.reprice_frequency = ProtoField.new("Reprice Frequency", "memx.equities.memo.sbe.v1.6.repricefrequency", ftypes.UINT8)
memx_equities_memo_sbe_v1_6.fields.reserve_replenish_timing = ProtoField.new("Reserve Replenish Timing", "memx.equities.memo.sbe.v1.6.reservereplenishtiming", ftypes.UINT8)
memx_equities_memo_sbe_v1_6.fields.reserved_13 = ProtoField.new("Reserved 13", "memx.equities.memo.sbe.v1.6.reserved13", ftypes.UINT16, nil, base.DEC, "0xFFF8")
memx_equities_memo_sbe_v1_6.fields.risk_group_id = ProtoField.new("Risk Group Id", "memx.equities.memo.sbe.v1.6.riskgroupid", ftypes.UINT16)
memx_equities_memo_sbe_v1_6.fields.sbe_header = ProtoField.new("Sbe Header", "memx.equities.memo.sbe.v1.6.sbeheader", ftypes.STRING)
memx_equities_memo_sbe_v1_6.fields.sbe_message = ProtoField.new("Sbe Message", "memx.equities.memo.sbe.v1.6.sbemessage", ftypes.STRING)
memx_equities_memo_sbe_v1_6.fields.schema_id = ProtoField.new("Schema Id", "memx.equities.memo.sbe.v1.6.schemaid", ftypes.UINT8)
memx_equities_memo_sbe_v1_6.fields.self_trade_prevention = ProtoField.new("Self Trade Prevention", "memx.equities.memo.sbe.v1.6.selftradeprevention", ftypes.UINT8)
memx_equities_memo_sbe_v1_6.fields.sending_time = ProtoField.new("Sending Time", "memx.equities.memo.sbe.v1.6.sendingtime", ftypes.UINT64)
memx_equities_memo_sbe_v1_6.fields.sequenced_message = ProtoField.new("Sequenced Message", "memx.equities.memo.sbe.v1.6.sequencedmessage", ftypes.STRING)
memx_equities_memo_sbe_v1_6.fields.session_id = ProtoField.new("Session Id", "memx.equities.memo.sbe.v1.6.sessionid", ftypes.UINT64)
memx_equities_memo_sbe_v1_6.fields.side = ProtoField.new("Side", "memx.equities.memo.sbe.v1.6.side", ftypes.UINT8)
memx_equities_memo_sbe_v1_6.fields.side_optional = ProtoField.new("Side Optional", "memx.equities.memo.sbe.v1.6.sideoptional", ftypes.UINT8)
memx_equities_memo_sbe_v1_6.fields.start_of_session_message = ProtoField.new("Start Of Session Message", "memx.equities.memo.sbe.v1.6.startofsessionmessage", ftypes.STRING)
memx_equities_memo_sbe_v1_6.fields.stp_group_id = ProtoField.new("Stp Group Id", "memx.equities.memo.sbe.v1.6.stpgroupid", ftypes.UINT16)
memx_equities_memo_sbe_v1_6.fields.stream_begin_message = ProtoField.new("Stream Begin Message", "memx.equities.memo.sbe.v1.6.streambeginmessage", ftypes.STRING)
memx_equities_memo_sbe_v1_6.fields.stream_complete_message = ProtoField.new("Stream Complete Message", "memx.equities.memo.sbe.v1.6.streamcompletemessage", ftypes.STRING)
memx_equities_memo_sbe_v1_6.fields.stream_reject_code = ProtoField.new("Stream Reject Code", "memx.equities.memo.sbe.v1.6.streamrejectcode", ftypes.STRING)
memx_equities_memo_sbe_v1_6.fields.stream_rejected_message = ProtoField.new("Stream Rejected Message", "memx.equities.memo.sbe.v1.6.streamrejectedmessage", ftypes.STRING)
memx_equities_memo_sbe_v1_6.fields.stream_request_message = ProtoField.new("Stream Request Message", "memx.equities.memo.sbe.v1.6.streamrequestmessage", ftypes.STRING)
memx_equities_memo_sbe_v1_6.fields.supported_request_mode = ProtoField.new("Supported Request Mode", "memx.equities.memo.sbe.v1.6.supportedrequestmode", ftypes.STRING)
memx_equities_memo_sbe_v1_6.fields.symbol = ProtoField.new("Symbol", "memx.equities.memo.sbe.v1.6.symbol", ftypes.STRING)
memx_equities_memo_sbe_v1_6.fields.symbol_sfx = ProtoField.new("Symbol Sfx", "memx.equities.memo.sbe.v1.6.symbolsfx", ftypes.STRING)
memx_equities_memo_sbe_v1_6.fields.template_id = ProtoField.new("Template Id", "memx.equities.memo.sbe.v1.6.templateid", ftypes.UINT8)
memx_equities_memo_sbe_v1_6.fields.time_in_force = ProtoField.new("Time In Force", "memx.equities.memo.sbe.v1.6.timeinforce", ftypes.UINT8)
memx_equities_memo_sbe_v1_6.fields.token = ProtoField.new("Token", "memx.equities.memo.sbe.v1.6.token", ftypes.STRING)
memx_equities_memo_sbe_v1_6.fields.token_type = ProtoField.new("Token Type", "memx.equities.memo.sbe.v1.6.tokentype", ftypes.STRING)
memx_equities_memo_sbe_v1_6.fields.total_sequence_count = ProtoField.new("Total Sequence Count", "memx.equities.memo.sbe.v1.6.totalsequencecount", ftypes.UINT64)
memx_equities_memo_sbe_v1_6.fields.transact_time = ProtoField.new("Transact Time", "memx.equities.memo.sbe.v1.6.transacttime", ftypes.UINT64)
memx_equities_memo_sbe_v1_6.fields.trd_match_id = ProtoField.new("Trd Match Id", "memx.equities.memo.sbe.v1.6.trdmatchid", ftypes.UINT64)
memx_equities_memo_sbe_v1_6.fields.trd_matching_id = ProtoField.new("Trd Matching Id", "memx.equities.memo.sbe.v1.6.trdmatchingid", ftypes.UINT64)
memx_equities_memo_sbe_v1_6.fields.unsequenced_message = ProtoField.new("Unsequenced Message", "memx.equities.memo.sbe.v1.6.unsequencedmessage", ftypes.STRING)
memx_equities_memo_sbe_v1_6.fields.version = ProtoField.new("Version", "memx.equities.memo.sbe.v1.6.version", ftypes.UINT16)

-----------------------------------------------------------------------
-- Declare Dissection Options
-----------------------------------------------------------------------

-- Memx Equities Memo Sbe 1.6 Element Dissection Options
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

-- Register Memx Equities Memo Sbe 1.6 Show Options
memx_equities_memo_sbe_v1_6.prefs.show_common_header = Pref.bool("Show Common Header", show.common_header, "Parse and add Common Header to protocol tree")
memx_equities_memo_sbe_v1_6.prefs.show_exec_inst = Pref.bool("Show Exec Inst", show.exec_inst, "Parse and add Exec Inst to protocol tree")
memx_equities_memo_sbe_v1_6.prefs.show_execution_report_canceled_message = Pref.bool("Show Execution Report Canceled Message", show.execution_report_canceled_message, "Parse and add Execution Report Canceled Message to protocol tree")
memx_equities_memo_sbe_v1_6.prefs.show_execution_report_new_message = Pref.bool("Show Execution Report New Message", show.execution_report_new_message, "Parse and add Execution Report New Message to protocol tree")
memx_equities_memo_sbe_v1_6.prefs.show_execution_report_pending_cancel_message = Pref.bool("Show Execution Report Pending Cancel Message", show.execution_report_pending_cancel_message, "Parse and add Execution Report Pending Cancel Message to protocol tree")
memx_equities_memo_sbe_v1_6.prefs.show_execution_report_pending_new_message = Pref.bool("Show Execution Report Pending New Message", show.execution_report_pending_new_message, "Parse and add Execution Report Pending New Message to protocol tree")
memx_equities_memo_sbe_v1_6.prefs.show_execution_report_pending_replace_message = Pref.bool("Show Execution Report Pending Replace Message", show.execution_report_pending_replace_message, "Parse and add Execution Report Pending Replace Message to protocol tree")
memx_equities_memo_sbe_v1_6.prefs.show_execution_report_rejected_message = Pref.bool("Show Execution Report Rejected Message", show.execution_report_rejected_message, "Parse and add Execution Report Rejected Message to protocol tree")
memx_equities_memo_sbe_v1_6.prefs.show_execution_report_replaced_message = Pref.bool("Show Execution Report Replaced Message", show.execution_report_replaced_message, "Parse and add Execution Report Replaced Message to protocol tree")
memx_equities_memo_sbe_v1_6.prefs.show_execution_report_restatement_message = Pref.bool("Show Execution Report Restatement Message", show.execution_report_restatement_message, "Parse and add Execution Report Restatement Message to protocol tree")
memx_equities_memo_sbe_v1_6.prefs.show_execution_report_trade_break_message = Pref.bool("Show Execution Report Trade Break Message", show.execution_report_trade_break_message, "Parse and add Execution Report Trade Break Message to protocol tree")
memx_equities_memo_sbe_v1_6.prefs.show_execution_report_trade_correction_message = Pref.bool("Show Execution Report Trade Correction Message", show.execution_report_trade_correction_message, "Parse and add Execution Report Trade Correction Message to protocol tree")
memx_equities_memo_sbe_v1_6.prefs.show_execution_report_trade_message = Pref.bool("Show Execution Report Trade Message", show.execution_report_trade_message, "Parse and add Execution Report Trade Message to protocol tree")
memx_equities_memo_sbe_v1_6.prefs.show_login_accepted_message = Pref.bool("Show Login Accepted Message", show.login_accepted_message, "Parse and add Login Accepted Message to protocol tree")
memx_equities_memo_sbe_v1_6.prefs.show_login_rejected_message = Pref.bool("Show Login Rejected Message", show.login_rejected_message, "Parse and add Login Rejected Message to protocol tree")
memx_equities_memo_sbe_v1_6.prefs.show_login_request_message = Pref.bool("Show Login Request Message", show.login_request_message, "Parse and add Login Request Message to protocol tree")
memx_equities_memo_sbe_v1_6.prefs.show_mass_cancel_done_message = Pref.bool("Show Mass Cancel Done Message", show.mass_cancel_done_message, "Parse and add Mass Cancel Done Message to protocol tree")
memx_equities_memo_sbe_v1_6.prefs.show_mass_cancel_reject_message = Pref.bool("Show Mass Cancel Reject Message", show.mass_cancel_reject_message, "Parse and add Mass Cancel Reject Message to protocol tree")
memx_equities_memo_sbe_v1_6.prefs.show_mass_cancel_request_message = Pref.bool("Show Mass Cancel Request Message", show.mass_cancel_request_message, "Parse and add Mass Cancel Request Message to protocol tree")
memx_equities_memo_sbe_v1_6.prefs.show_new_order_single_message = Pref.bool("Show New Order Single Message", show.new_order_single_message, "Parse and add New Order Single Message to protocol tree")
memx_equities_memo_sbe_v1_6.prefs.show_order_cancel_reject_message = Pref.bool("Show Order Cancel Reject Message", show.order_cancel_reject_message, "Parse and add Order Cancel Reject Message to protocol tree")
memx_equities_memo_sbe_v1_6.prefs.show_order_cancel_replace_request_message = Pref.bool("Show Order Cancel Replace Request Message", show.order_cancel_replace_request_message, "Parse and add Order Cancel Replace Request Message to protocol tree")
memx_equities_memo_sbe_v1_6.prefs.show_order_cancel_request_message = Pref.bool("Show Order Cancel Request Message", show.order_cancel_request_message, "Parse and add Order Cancel Request Message to protocol tree")
memx_equities_memo_sbe_v1_6.prefs.show_packet = Pref.bool("Show Packet", show.packet, "Parse and add Packet to protocol tree")
memx_equities_memo_sbe_v1_6.prefs.show_pending_mass_cancel_message = Pref.bool("Show Pending Mass Cancel Message", show.pending_mass_cancel_message, "Parse and add Pending Mass Cancel Message to protocol tree")
memx_equities_memo_sbe_v1_6.prefs.show_replay_all_request_message = Pref.bool("Show Replay All Request Message", show.replay_all_request_message, "Parse and add Replay All Request Message to protocol tree")
memx_equities_memo_sbe_v1_6.prefs.show_replay_begin_message = Pref.bool("Show Replay Begin Message", show.replay_begin_message, "Parse and add Replay Begin Message to protocol tree")
memx_equities_memo_sbe_v1_6.prefs.show_replay_complete_message = Pref.bool("Show Replay Complete Message", show.replay_complete_message, "Parse and add Replay Complete Message to protocol tree")
memx_equities_memo_sbe_v1_6.prefs.show_replay_rejected_message = Pref.bool("Show Replay Rejected Message", show.replay_rejected_message, "Parse and add Replay Rejected Message to protocol tree")
memx_equities_memo_sbe_v1_6.prefs.show_replay_request_message = Pref.bool("Show Replay Request Message", show.replay_request_message, "Parse and add Replay Request Message to protocol tree")
memx_equities_memo_sbe_v1_6.prefs.show_sbe_header = Pref.bool("Show Sbe Header", show.sbe_header, "Parse and add Sbe Header to protocol tree")
memx_equities_memo_sbe_v1_6.prefs.show_sbe_message = Pref.bool("Show Sbe Message", show.sbe_message, "Parse and add Sbe Message to protocol tree")
memx_equities_memo_sbe_v1_6.prefs.show_sequenced_message = Pref.bool("Show Sequenced Message", show.sequenced_message, "Parse and add Sequenced Message to protocol tree")
memx_equities_memo_sbe_v1_6.prefs.show_start_of_session_message = Pref.bool("Show Start Of Session Message", show.start_of_session_message, "Parse and add Start Of Session Message to protocol tree")
memx_equities_memo_sbe_v1_6.prefs.show_stream_begin_message = Pref.bool("Show Stream Begin Message", show.stream_begin_message, "Parse and add Stream Begin Message to protocol tree")
memx_equities_memo_sbe_v1_6.prefs.show_stream_complete_message = Pref.bool("Show Stream Complete Message", show.stream_complete_message, "Parse and add Stream Complete Message to protocol tree")
memx_equities_memo_sbe_v1_6.prefs.show_stream_rejected_message = Pref.bool("Show Stream Rejected Message", show.stream_rejected_message, "Parse and add Stream Rejected Message to protocol tree")
memx_equities_memo_sbe_v1_6.prefs.show_stream_request_message = Pref.bool("Show Stream Request Message", show.stream_request_message, "Parse and add Stream Request Message to protocol tree")
memx_equities_memo_sbe_v1_6.prefs.show_unsequenced_message = Pref.bool("Show Unsequenced Message", show.unsequenced_message, "Parse and add Unsequenced Message to protocol tree")
memx_equities_memo_sbe_v1_6.prefs.show_data = Pref.bool("Show Data", show.data, "Parse and add Data to protocol tree")
memx_equities_memo_sbe_v1_6.prefs.show_payload = Pref.bool("Show Payload", show.payload, "Parse and add Payload to protocol tree")

-- Handle changed preferences
function memx_equities_memo_sbe_v1_6.prefs_changed()
  local changed = false

  -- Check if show options have changed
  if show.common_header ~= memx_equities_memo_sbe_v1_6.prefs.show_common_header then
    show.common_header = memx_equities_memo_sbe_v1_6.prefs.show_common_header
    changed = true
  end
  if show.exec_inst ~= memx_equities_memo_sbe_v1_6.prefs.show_exec_inst then
    show.exec_inst = memx_equities_memo_sbe_v1_6.prefs.show_exec_inst
    changed = true
  end
  if show.execution_report_canceled_message ~= memx_equities_memo_sbe_v1_6.prefs.show_execution_report_canceled_message then
    show.execution_report_canceled_message = memx_equities_memo_sbe_v1_6.prefs.show_execution_report_canceled_message
    changed = true
  end
  if show.execution_report_new_message ~= memx_equities_memo_sbe_v1_6.prefs.show_execution_report_new_message then
    show.execution_report_new_message = memx_equities_memo_sbe_v1_6.prefs.show_execution_report_new_message
    changed = true
  end
  if show.execution_report_pending_cancel_message ~= memx_equities_memo_sbe_v1_6.prefs.show_execution_report_pending_cancel_message then
    show.execution_report_pending_cancel_message = memx_equities_memo_sbe_v1_6.prefs.show_execution_report_pending_cancel_message
    changed = true
  end
  if show.execution_report_pending_new_message ~= memx_equities_memo_sbe_v1_6.prefs.show_execution_report_pending_new_message then
    show.execution_report_pending_new_message = memx_equities_memo_sbe_v1_6.prefs.show_execution_report_pending_new_message
    changed = true
  end
  if show.execution_report_pending_replace_message ~= memx_equities_memo_sbe_v1_6.prefs.show_execution_report_pending_replace_message then
    show.execution_report_pending_replace_message = memx_equities_memo_sbe_v1_6.prefs.show_execution_report_pending_replace_message
    changed = true
  end
  if show.execution_report_rejected_message ~= memx_equities_memo_sbe_v1_6.prefs.show_execution_report_rejected_message then
    show.execution_report_rejected_message = memx_equities_memo_sbe_v1_6.prefs.show_execution_report_rejected_message
    changed = true
  end
  if show.execution_report_replaced_message ~= memx_equities_memo_sbe_v1_6.prefs.show_execution_report_replaced_message then
    show.execution_report_replaced_message = memx_equities_memo_sbe_v1_6.prefs.show_execution_report_replaced_message
    changed = true
  end
  if show.execution_report_restatement_message ~= memx_equities_memo_sbe_v1_6.prefs.show_execution_report_restatement_message then
    show.execution_report_restatement_message = memx_equities_memo_sbe_v1_6.prefs.show_execution_report_restatement_message
    changed = true
  end
  if show.execution_report_trade_break_message ~= memx_equities_memo_sbe_v1_6.prefs.show_execution_report_trade_break_message then
    show.execution_report_trade_break_message = memx_equities_memo_sbe_v1_6.prefs.show_execution_report_trade_break_message
    changed = true
  end
  if show.execution_report_trade_correction_message ~= memx_equities_memo_sbe_v1_6.prefs.show_execution_report_trade_correction_message then
    show.execution_report_trade_correction_message = memx_equities_memo_sbe_v1_6.prefs.show_execution_report_trade_correction_message
    changed = true
  end
  if show.execution_report_trade_message ~= memx_equities_memo_sbe_v1_6.prefs.show_execution_report_trade_message then
    show.execution_report_trade_message = memx_equities_memo_sbe_v1_6.prefs.show_execution_report_trade_message
    changed = true
  end
  if show.login_accepted_message ~= memx_equities_memo_sbe_v1_6.prefs.show_login_accepted_message then
    show.login_accepted_message = memx_equities_memo_sbe_v1_6.prefs.show_login_accepted_message
    changed = true
  end
  if show.login_rejected_message ~= memx_equities_memo_sbe_v1_6.prefs.show_login_rejected_message then
    show.login_rejected_message = memx_equities_memo_sbe_v1_6.prefs.show_login_rejected_message
    changed = true
  end
  if show.login_request_message ~= memx_equities_memo_sbe_v1_6.prefs.show_login_request_message then
    show.login_request_message = memx_equities_memo_sbe_v1_6.prefs.show_login_request_message
    changed = true
  end
  if show.mass_cancel_done_message ~= memx_equities_memo_sbe_v1_6.prefs.show_mass_cancel_done_message then
    show.mass_cancel_done_message = memx_equities_memo_sbe_v1_6.prefs.show_mass_cancel_done_message
    changed = true
  end
  if show.mass_cancel_reject_message ~= memx_equities_memo_sbe_v1_6.prefs.show_mass_cancel_reject_message then
    show.mass_cancel_reject_message = memx_equities_memo_sbe_v1_6.prefs.show_mass_cancel_reject_message
    changed = true
  end
  if show.mass_cancel_request_message ~= memx_equities_memo_sbe_v1_6.prefs.show_mass_cancel_request_message then
    show.mass_cancel_request_message = memx_equities_memo_sbe_v1_6.prefs.show_mass_cancel_request_message
    changed = true
  end
  if show.new_order_single_message ~= memx_equities_memo_sbe_v1_6.prefs.show_new_order_single_message then
    show.new_order_single_message = memx_equities_memo_sbe_v1_6.prefs.show_new_order_single_message
    changed = true
  end
  if show.order_cancel_reject_message ~= memx_equities_memo_sbe_v1_6.prefs.show_order_cancel_reject_message then
    show.order_cancel_reject_message = memx_equities_memo_sbe_v1_6.prefs.show_order_cancel_reject_message
    changed = true
  end
  if show.order_cancel_replace_request_message ~= memx_equities_memo_sbe_v1_6.prefs.show_order_cancel_replace_request_message then
    show.order_cancel_replace_request_message = memx_equities_memo_sbe_v1_6.prefs.show_order_cancel_replace_request_message
    changed = true
  end
  if show.order_cancel_request_message ~= memx_equities_memo_sbe_v1_6.prefs.show_order_cancel_request_message then
    show.order_cancel_request_message = memx_equities_memo_sbe_v1_6.prefs.show_order_cancel_request_message
    changed = true
  end
  if show.packet ~= memx_equities_memo_sbe_v1_6.prefs.show_packet then
    show.packet = memx_equities_memo_sbe_v1_6.prefs.show_packet
    changed = true
  end
  if show.pending_mass_cancel_message ~= memx_equities_memo_sbe_v1_6.prefs.show_pending_mass_cancel_message then
    show.pending_mass_cancel_message = memx_equities_memo_sbe_v1_6.prefs.show_pending_mass_cancel_message
    changed = true
  end
  if show.replay_all_request_message ~= memx_equities_memo_sbe_v1_6.prefs.show_replay_all_request_message then
    show.replay_all_request_message = memx_equities_memo_sbe_v1_6.prefs.show_replay_all_request_message
    changed = true
  end
  if show.replay_begin_message ~= memx_equities_memo_sbe_v1_6.prefs.show_replay_begin_message then
    show.replay_begin_message = memx_equities_memo_sbe_v1_6.prefs.show_replay_begin_message
    changed = true
  end
  if show.replay_complete_message ~= memx_equities_memo_sbe_v1_6.prefs.show_replay_complete_message then
    show.replay_complete_message = memx_equities_memo_sbe_v1_6.prefs.show_replay_complete_message
    changed = true
  end
  if show.replay_rejected_message ~= memx_equities_memo_sbe_v1_6.prefs.show_replay_rejected_message then
    show.replay_rejected_message = memx_equities_memo_sbe_v1_6.prefs.show_replay_rejected_message
    changed = true
  end
  if show.replay_request_message ~= memx_equities_memo_sbe_v1_6.prefs.show_replay_request_message then
    show.replay_request_message = memx_equities_memo_sbe_v1_6.prefs.show_replay_request_message
    changed = true
  end
  if show.sbe_header ~= memx_equities_memo_sbe_v1_6.prefs.show_sbe_header then
    show.sbe_header = memx_equities_memo_sbe_v1_6.prefs.show_sbe_header
    changed = true
  end
  if show.sbe_message ~= memx_equities_memo_sbe_v1_6.prefs.show_sbe_message then
    show.sbe_message = memx_equities_memo_sbe_v1_6.prefs.show_sbe_message
    changed = true
  end
  if show.sequenced_message ~= memx_equities_memo_sbe_v1_6.prefs.show_sequenced_message then
    show.sequenced_message = memx_equities_memo_sbe_v1_6.prefs.show_sequenced_message
    changed = true
  end
  if show.start_of_session_message ~= memx_equities_memo_sbe_v1_6.prefs.show_start_of_session_message then
    show.start_of_session_message = memx_equities_memo_sbe_v1_6.prefs.show_start_of_session_message
    changed = true
  end
  if show.stream_begin_message ~= memx_equities_memo_sbe_v1_6.prefs.show_stream_begin_message then
    show.stream_begin_message = memx_equities_memo_sbe_v1_6.prefs.show_stream_begin_message
    changed = true
  end
  if show.stream_complete_message ~= memx_equities_memo_sbe_v1_6.prefs.show_stream_complete_message then
    show.stream_complete_message = memx_equities_memo_sbe_v1_6.prefs.show_stream_complete_message
    changed = true
  end
  if show.stream_rejected_message ~= memx_equities_memo_sbe_v1_6.prefs.show_stream_rejected_message then
    show.stream_rejected_message = memx_equities_memo_sbe_v1_6.prefs.show_stream_rejected_message
    changed = true
  end
  if show.stream_request_message ~= memx_equities_memo_sbe_v1_6.prefs.show_stream_request_message then
    show.stream_request_message = memx_equities_memo_sbe_v1_6.prefs.show_stream_request_message
    changed = true
  end
  if show.unsequenced_message ~= memx_equities_memo_sbe_v1_6.prefs.show_unsequenced_message then
    show.unsequenced_message = memx_equities_memo_sbe_v1_6.prefs.show_unsequenced_message
    changed = true
  end
  if show.data ~= memx_equities_memo_sbe_v1_6.prefs.show_data then
    show.data = memx_equities_memo_sbe_v1_6.prefs.show_data
    changed = true
  end
  if show.payload ~= memx_equities_memo_sbe_v1_6.prefs.show_payload then
    show.payload = memx_equities_memo_sbe_v1_6.prefs.show_payload
    changed = true
  end

  -- Reload on changed preference
  if changed then
    reload()
  end
end


-----------------------------------------------------------------------
-- Dissect Memx Equities Memo Sbe 1.6
-----------------------------------------------------------------------

-- Size: Mass Cancel Reject Reason
memx_equities_memo_sbe_v1_6_size_of.mass_cancel_reject_reason = 1

-- Display: Mass Cancel Reject Reason
memx_equities_memo_sbe_v1_6_display.mass_cancel_reject_reason = function(value)
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
  if value == 255 then
    return "Mass Cancel Reject Reason: Null Value (255)"
  end

  return "Mass Cancel Reject Reason: Unknown("..value..")"
end

-- Dissect: Mass Cancel Reject Reason
memx_equities_memo_sbe_v1_6_dissect.mass_cancel_reject_reason = function(buffer, offset, packet, parent)
  local length = memx_equities_memo_sbe_v1_6_size_of.mass_cancel_reject_reason
  local range = buffer(offset, length)
  local value = range:uint()
  local display = memx_equities_memo_sbe_v1_6_display.mass_cancel_reject_reason(value, buffer, offset, packet, parent)

  parent:add(memx_equities_memo_sbe_v1_6.fields.mass_cancel_reject_reason, range, value, display)

  return offset + length, value
end

-- Size: Cancel Group Id
memx_equities_memo_sbe_v1_6_size_of.cancel_group_id = 2

-- Display: Cancel Group Id
memx_equities_memo_sbe_v1_6_display.cancel_group_id = function(value)
  -- Check if field has value
  if value == 65535 then
    return "Cancel Group Id: No Value"
  end

  return "Cancel Group Id: "..value
end

-- Dissect: Cancel Group Id
memx_equities_memo_sbe_v1_6_dissect.cancel_group_id = function(buffer, offset, packet, parent)
  local length = memx_equities_memo_sbe_v1_6_size_of.cancel_group_id
  local range = buffer(offset, length)
  local value = range:uint()
  local display = memx_equities_memo_sbe_v1_6_display.cancel_group_id(value, buffer, offset, packet, parent)

  parent:add(memx_equities_memo_sbe_v1_6.fields.cancel_group_id, range, value, display)

  return offset + length, value
end

-- Size: Higher Than Price
memx_equities_memo_sbe_v1_6_size_of.higher_than_price = 8

-- Display: Higher Than Price
memx_equities_memo_sbe_v1_6_display.higher_than_price = function(raw, value)
  -- Check null sentinel value
  if raw == Int64(0x00000000, 0x80000000) then
    return "Higher Than Price: No Value"
  end

  return "Higher Than Price: "..value
end

-- Translate: Higher Than Price
translate.higher_than_price = function(raw)
  -- Check null sentinel value
  if raw == Int64(0x00000000, 0x80000000) then
    return 0/0
  end

  return raw:tonumber()/1000000
end

-- Dissect: Higher Than Price
memx_equities_memo_sbe_v1_6_dissect.higher_than_price = function(buffer, offset, packet, parent)
  local length = memx_equities_memo_sbe_v1_6_size_of.higher_than_price
  local range = buffer(offset, length)
  local raw = range:int64()
  local value = translate.higher_than_price(raw)
  local display = memx_equities_memo_sbe_v1_6_display.higher_than_price(raw, value, buffer, offset, packet, parent)

  parent:add(memx_equities_memo_sbe_v1_6.fields.higher_than_price, range, value, display)

  return offset + length, value
end

-- Size: Lower Than Price
memx_equities_memo_sbe_v1_6_size_of.lower_than_price = 8

-- Display: Lower Than Price
memx_equities_memo_sbe_v1_6_display.lower_than_price = function(raw, value)
  -- Check null sentinel value
  if raw == Int64(0x00000000, 0x80000000) then
    return "Lower Than Price: No Value"
  end

  return "Lower Than Price: "..value
end

-- Translate: Lower Than Price
translate.lower_than_price = function(raw)
  -- Check null sentinel value
  if raw == Int64(0x00000000, 0x80000000) then
    return 0/0
  end

  return raw:tonumber()/1000000
end

-- Dissect: Lower Than Price
memx_equities_memo_sbe_v1_6_dissect.lower_than_price = function(buffer, offset, packet, parent)
  local length = memx_equities_memo_sbe_v1_6_size_of.lower_than_price
  local range = buffer(offset, length)
  local raw = range:int64()
  local value = translate.lower_than_price(raw)
  local display = memx_equities_memo_sbe_v1_6_display.lower_than_price(raw, value, buffer, offset, packet, parent)

  parent:add(memx_equities_memo_sbe_v1_6.fields.lower_than_price, range, value, display)

  return offset + length, value
end

-- Size: Side Optional
memx_equities_memo_sbe_v1_6_size_of.side_optional = 1

-- Display: Side Optional
memx_equities_memo_sbe_v1_6_display.side_optional = function(value)
  if value == 1 then
    return "Side Optional: Buy (1)"
  end
  if value == 2 then
    return "Side Optional: Sell (2)"
  end
  if value == 3 then
    return "Side Optional: Sell Short (3)"
  end
  if value == 4 then
    return "Side Optional: Sell Short Exempt (4)"
  end
  if value == 255 then
    return "Side Optional: Null Value (255)"
  end
  if value == 255 then
    return "Side Optional: No Value"
  end

  return "Side Optional: Unknown("..value..")"
end

-- Dissect: Side Optional
memx_equities_memo_sbe_v1_6_dissect.side_optional = function(buffer, offset, packet, parent)
  local length = memx_equities_memo_sbe_v1_6_size_of.side_optional
  local range = buffer(offset, length)
  local value = range:uint()
  local display = memx_equities_memo_sbe_v1_6_display.side_optional(value, buffer, offset, packet, parent)

  parent:add(memx_equities_memo_sbe_v1_6.fields.side_optional, range, value, display)

  return offset + length, value
end

-- Size: Symbol Sfx
memx_equities_memo_sbe_v1_6_size_of.symbol_sfx = 6

-- Display: Symbol Sfx
memx_equities_memo_sbe_v1_6_display.symbol_sfx = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Symbol Sfx: No Value"
  end

  return "Symbol Sfx: "..value
end

-- Dissect: Symbol Sfx
memx_equities_memo_sbe_v1_6_dissect.symbol_sfx = function(buffer, offset, packet, parent)
  local length = memx_equities_memo_sbe_v1_6_size_of.symbol_sfx
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

  local display = memx_equities_memo_sbe_v1_6_display.symbol_sfx(value, buffer, offset, packet, parent)

  parent:add(memx_equities_memo_sbe_v1_6.fields.symbol_sfx, range, value, display)

  return offset + length, value
end

-- Size: Symbol
memx_equities_memo_sbe_v1_6_size_of.symbol = 6

-- Display: Symbol
memx_equities_memo_sbe_v1_6_display.symbol = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Symbol: No Value"
  end

  return "Symbol: "..value
end

-- Dissect: Symbol
memx_equities_memo_sbe_v1_6_dissect.symbol = function(buffer, offset, packet, parent)
  local length = memx_equities_memo_sbe_v1_6_size_of.symbol
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

  local display = memx_equities_memo_sbe_v1_6_display.symbol(value, buffer, offset, packet, parent)

  parent:add(memx_equities_memo_sbe_v1_6.fields.symbol, range, value, display)

  return offset + length, value
end

-- Size: ClOrdId
memx_equities_memo_sbe_v1_6_size_of.clordid = 16

-- Display: ClOrdId
memx_equities_memo_sbe_v1_6_display.clordid = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "ClOrdId: No Value"
  end

  return "ClOrdId: "..value
end

-- Dissect: ClOrdId
memx_equities_memo_sbe_v1_6_dissect.clordid = function(buffer, offset, packet, parent)
  local length = memx_equities_memo_sbe_v1_6_size_of.clordid
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

  local display = memx_equities_memo_sbe_v1_6_display.clordid(value, buffer, offset, packet, parent)

  parent:add(memx_equities_memo_sbe_v1_6.fields.clordid, range, value, display)

  return offset + length, value
end

-- Size: Sending Time
memx_equities_memo_sbe_v1_6_size_of.sending_time = 8

-- Display: Sending Time
memx_equities_memo_sbe_v1_6_display.sending_time = function(value)
  -- Parse unix timestamp
  local seconds = value:tonumber()/1000000000
  local nanoseconds = value:tonumber()%1000000000

  return "Sending Time: "..os.date("%x %H:%M:%S.", seconds)..string.format("%09d", nanoseconds)
end

-- Dissect: Sending Time
memx_equities_memo_sbe_v1_6_dissect.sending_time = function(buffer, offset, packet, parent)
  local length = memx_equities_memo_sbe_v1_6_size_of.sending_time
  local range = buffer(offset, length)
  local value = range:uint64()
  local display = memx_equities_memo_sbe_v1_6_display.sending_time(value, buffer, offset, packet, parent)

  parent:add(memx_equities_memo_sbe_v1_6.fields.sending_time, range, value, display)

  return offset + length, value
end

-- Calculate size of: Mass Cancel Reject Message
memx_equities_memo_sbe_v1_6_size_of.mass_cancel_reject_message = function(buffer, offset)
  local index = 0

  index = index + memx_equities_memo_sbe_v1_6_size_of.sending_time

  index = index + memx_equities_memo_sbe_v1_6_size_of.clordid

  index = index + memx_equities_memo_sbe_v1_6_size_of.symbol

  index = index + memx_equities_memo_sbe_v1_6_size_of.symbol_sfx

  index = index + memx_equities_memo_sbe_v1_6_size_of.side_optional

  index = index + memx_equities_memo_sbe_v1_6_size_of.lower_than_price

  index = index + memx_equities_memo_sbe_v1_6_size_of.higher_than_price

  index = index + memx_equities_memo_sbe_v1_6_size_of.cancel_group_id

  index = index + memx_equities_memo_sbe_v1_6_size_of.mass_cancel_reject_reason

  return index
end

-- Display: Mass Cancel Reject Message
memx_equities_memo_sbe_v1_6_display.mass_cancel_reject_message = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Mass Cancel Reject Message
memx_equities_memo_sbe_v1_6_dissect.mass_cancel_reject_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Sending Time: 8 Byte Unsigned Fixed Width Integer
  index, sending_time = memx_equities_memo_sbe_v1_6_dissect.sending_time(buffer, index, packet, parent)

  -- ClOrdId: 16 Byte Ascii String
  index, clordid = memx_equities_memo_sbe_v1_6_dissect.clordid(buffer, index, packet, parent)

  -- Symbol: 6 Byte Ascii String
  index, symbol = memx_equities_memo_sbe_v1_6_dissect.symbol(buffer, index, packet, parent)

  -- Symbol Sfx: 6 Byte Ascii String
  index, symbol_sfx = memx_equities_memo_sbe_v1_6_dissect.symbol_sfx(buffer, index, packet, parent)

  -- Side Optional: 1 Byte Unsigned Fixed Width Integer Enum with 6 values
  index, side_optional = memx_equities_memo_sbe_v1_6_dissect.side_optional(buffer, index, packet, parent)

  -- Lower Than Price: 8 Byte Signed Fixed Width Integer Nullable
  index, lower_than_price = memx_equities_memo_sbe_v1_6_dissect.lower_than_price(buffer, index, packet, parent)

  -- Higher Than Price: 8 Byte Signed Fixed Width Integer Nullable
  index, higher_than_price = memx_equities_memo_sbe_v1_6_dissect.higher_than_price(buffer, index, packet, parent)

  -- Cancel Group Id: 2 Byte Unsigned Fixed Width Integer Nullable
  index, cancel_group_id = memx_equities_memo_sbe_v1_6_dissect.cancel_group_id(buffer, index, packet, parent)

  -- Mass Cancel Reject Reason: 1 Byte Unsigned Fixed Width Integer Enum with 10 values
  index, mass_cancel_reject_reason = memx_equities_memo_sbe_v1_6_dissect.mass_cancel_reject_reason(buffer, index, packet, parent)

  return index
end

-- Dissect: Mass Cancel Reject Message
memx_equities_memo_sbe_v1_6_dissect.mass_cancel_reject_message = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.mass_cancel_reject_message then
    local length = memx_equities_memo_sbe_v1_6_size_of.mass_cancel_reject_message(buffer, offset)
    local range = buffer(offset, length)
    local display = memx_equities_memo_sbe_v1_6_display.mass_cancel_reject_message(buffer, packet, parent)
    parent = parent:add(memx_equities_memo_sbe_v1_6.fields.mass_cancel_reject_message, range, display)
  end

  return memx_equities_memo_sbe_v1_6_dissect.mass_cancel_reject_message_fields(buffer, offset, packet, parent)
end

-- Size: Cxl Rej Reason
memx_equities_memo_sbe_v1_6_size_of.cxl_rej_reason = 1

-- Display: Cxl Rej Reason
memx_equities_memo_sbe_v1_6_display.cxl_rej_reason = function(value)
  if value == 0 then
    return "Cxl Rej Reason: Other (0)"
  end
  if value == 1 then
    return "Cxl Rej Reason: Missing Symbol (1)"
  end
  if value == 2 then
    return "Cxl Rej Reason: Missing Cl Ord Id (2)"
  end
  if value == 3 then
    return "Cxl Rej Reason: Missing Orig Order Identifiers (3)"
  end
  if value == 4 then
    return "Cxl Rej Reason: Ambiguous Orig Order Identifiers (4)"
  end
  if value == 5 then
    return "Cxl Rej Reason: Unknown Orig Order (5)"
  end
  if value == 6 then
    return "Cxl Rej Reason: Orig Order Symbol Not Matching Request Symbol (6)"
  end
  if value == 7 then
    return "Cxl Rej Reason: Missing Locate (7)"
  end
  if value == 8 then
    return "Cxl Rej Reason: Invalid Order Quantity (8)"
  end
  if value == 9 then
    return "Cxl Rej Reason: Invalid Symbol (9)"
  end
  if value == 10 then
    return "Cxl Rej Reason: Invalid Limit Price (10)"
  end
  if value == 11 then
    return "Cxl Rej Reason: Invalid Limit Price Increment (11)"
  end
  if value == 12 then
    return "Cxl Rej Reason: Invalid Locate (12)"
  end
  if value == 13 then
    return "Cxl Rej Reason: Symbol Halted Or Paused (13)"
  end
  if value == 14 then
    return "Cxl Rej Reason: Exchange Closed (14)"
  end
  if value == 15 then
    return "Cxl Rej Reason: Duplicate Cl Ord Id (15)"
  end
  if value == 16 then
    return "Cxl Rej Reason: Order Size Exceeds Limit (16)"
  end
  if value == 17 then
    return "Cxl Rej Reason: Exceeded Max Notional Order Amt (17)"
  end
  if value == 18 then
    return "Cxl Rej Reason: Unsupported Display Quantity Change (18)"
  end
  if value == 19 then
    return "Cxl Rej Reason: Unsupported Ord Type Change (19)"
  end
  if value == 20 then
    return "Cxl Rej Reason: Unsupported Side Change (20)"
  end
  if value == 21 then
    return "Cxl Rej Reason: Unsupported Quantity Change (21)"
  end
  if value == 22 then
    return "Cxl Rej Reason: Order In Pending State (22)"
  end
  if value == 23 then
    return "Cxl Rej Reason: Block Session Risk Rule Violated (23)"
  end
  if value == 24 then
    return "Cxl Rej Reason: Block Sell Short Risk Rule Violated (24)"
  end
  if value == 25 then
    return "Cxl Rej Reason: Max Shares Per Order Risk Rule Breach (25)"
  end
  if value == 26 then
    return "Cxl Rej Reason: No Nbbo Available (26)"
  end
  if value == 27 then
    return "Cxl Rej Reason: Max Notional Value Per Order Risk Rule Breach (27)"
  end
  if value == 28 then
    return "Cxl Rej Reason: Max Adv Percent Per Order Risk Rule Breach (28)"
  end
  if value == 29 then
    return "Cxl Rej Reason: Price Percent Collar Risk Rule Violated (29)"
  end
  if value == 30 then
    return "Cxl Rej Reason: Price Value Collar Risk Rule Violated (30)"
  end
  if value == 31 then
    return "Cxl Rej Reason: Hard To Borrow Security Risk Rule Violated (31)"
  end
  if value == 32 then
    return "Cxl Rej Reason: Invalid Side (32)"
  end
  if value == 33 then
    return "Cxl Rej Reason: Invalid Ord Type (33)"
  end
  if value == 255 then
    return "Cxl Rej Reason: Null Value (255)"
  end

  return "Cxl Rej Reason: Unknown("..value..")"
end

-- Dissect: Cxl Rej Reason
memx_equities_memo_sbe_v1_6_dissect.cxl_rej_reason = function(buffer, offset, packet, parent)
  local length = memx_equities_memo_sbe_v1_6_size_of.cxl_rej_reason
  local range = buffer(offset, length)
  local value = range:uint()
  local display = memx_equities_memo_sbe_v1_6_display.cxl_rej_reason(value, buffer, offset, packet, parent)

  parent:add(memx_equities_memo_sbe_v1_6.fields.cxl_rej_reason, range, value, display)

  return offset + length, value
end

-- Size: Cxl Rej Response To
memx_equities_memo_sbe_v1_6_size_of.cxl_rej_response_to = 1

-- Display: Cxl Rej Response To
memx_equities_memo_sbe_v1_6_display.cxl_rej_response_to = function(value)
  if value == 1 then
    return "Cxl Rej Response To: Order Cancel Request (1)"
  end
  if value == 2 then
    return "Cxl Rej Response To: Order Cancel Replace Request (2)"
  end
  if value == 255 then
    return "Cxl Rej Response To: Null Value (255)"
  end

  return "Cxl Rej Response To: Unknown("..value..")"
end

-- Dissect: Cxl Rej Response To
memx_equities_memo_sbe_v1_6_dissect.cxl_rej_response_to = function(buffer, offset, packet, parent)
  local length = memx_equities_memo_sbe_v1_6_size_of.cxl_rej_response_to
  local range = buffer(offset, length)
  local value = range:uint()
  local display = memx_equities_memo_sbe_v1_6_display.cxl_rej_response_to(value, buffer, offset, packet, parent)

  parent:add(memx_equities_memo_sbe_v1_6.fields.cxl_rej_response_to, range, value, display)

  return offset + length, value
end

-- Calculate size of: Order Cancel Reject Message
memx_equities_memo_sbe_v1_6_size_of.order_cancel_reject_message = function(buffer, offset)
  local index = 0

  index = index + memx_equities_memo_sbe_v1_6_size_of.sending_time

  index = index + memx_equities_memo_sbe_v1_6_size_of.clordid

  index = index + memx_equities_memo_sbe_v1_6_size_of.cxl_rej_response_to

  index = index + memx_equities_memo_sbe_v1_6_size_of.cxl_rej_reason

  return index
end

-- Display: Order Cancel Reject Message
memx_equities_memo_sbe_v1_6_display.order_cancel_reject_message = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Order Cancel Reject Message
memx_equities_memo_sbe_v1_6_dissect.order_cancel_reject_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Sending Time: 8 Byte Unsigned Fixed Width Integer
  index, sending_time = memx_equities_memo_sbe_v1_6_dissect.sending_time(buffer, index, packet, parent)

  -- ClOrdId: 16 Byte Ascii String
  index, clordid = memx_equities_memo_sbe_v1_6_dissect.clordid(buffer, index, packet, parent)

  -- Cxl Rej Response To: 1 Byte Unsigned Fixed Width Integer Enum with 3 values
  index, cxl_rej_response_to = memx_equities_memo_sbe_v1_6_dissect.cxl_rej_response_to(buffer, index, packet, parent)

  -- Cxl Rej Reason: 1 Byte Unsigned Fixed Width Integer Enum with 35 values
  index, cxl_rej_reason = memx_equities_memo_sbe_v1_6_dissect.cxl_rej_reason(buffer, index, packet, parent)

  return index
end

-- Dissect: Order Cancel Reject Message
memx_equities_memo_sbe_v1_6_dissect.order_cancel_reject_message = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.order_cancel_reject_message then
    local length = memx_equities_memo_sbe_v1_6_size_of.order_cancel_reject_message(buffer, offset)
    local range = buffer(offset, length)
    local display = memx_equities_memo_sbe_v1_6_display.order_cancel_reject_message(buffer, packet, parent)
    parent = parent:add(memx_equities_memo_sbe_v1_6.fields.order_cancel_reject_message, range, display)
  end

  return memx_equities_memo_sbe_v1_6_dissect.order_cancel_reject_message_fields(buffer, offset, packet, parent)
end

-- Size: Transact Time
memx_equities_memo_sbe_v1_6_size_of.transact_time = 8

-- Display: Transact Time
memx_equities_memo_sbe_v1_6_display.transact_time = function(value)
  return "Transact Time: "..value
end

-- Dissect: Transact Time
memx_equities_memo_sbe_v1_6_dissect.transact_time = function(buffer, offset, packet, parent)
  local length = memx_equities_memo_sbe_v1_6_size_of.transact_time
  local range = buffer(offset, length)
  local value = range:uint64()
  local display = memx_equities_memo_sbe_v1_6_display.transact_time(value, buffer, offset, packet, parent)

  parent:add(memx_equities_memo_sbe_v1_6.fields.transact_time, range, value, display)

  return offset + length, value
end

-- Size: Exec Restatement Reason
memx_equities_memo_sbe_v1_6_size_of.exec_restatement_reason = 1

-- Display: Exec Restatement Reason
memx_equities_memo_sbe_v1_6_display.exec_restatement_reason = function(value)
  if value == 1 then
    return "Exec Restatement Reason: Order Reprice (1)"
  end
  if value == 2 then
    return "Exec Restatement Reason: Self Trade Prevention (2)"
  end
  if value == 255 then
    return "Exec Restatement Reason: Null Value (255)"
  end

  return "Exec Restatement Reason: Unknown("..value..")"
end

-- Dissect: Exec Restatement Reason
memx_equities_memo_sbe_v1_6_dissect.exec_restatement_reason = function(buffer, offset, packet, parent)
  local length = memx_equities_memo_sbe_v1_6_size_of.exec_restatement_reason
  local range = buffer(offset, length)
  local value = range:uint()
  local display = memx_equities_memo_sbe_v1_6_display.exec_restatement_reason(value, buffer, offset, packet, parent)

  parent:add(memx_equities_memo_sbe_v1_6.fields.exec_restatement_reason, range, value, display)

  return offset + length, value
end

-- Size: Last Shares
memx_equities_memo_sbe_v1_6_size_of.last_shares = 4

-- Display: Last Shares
memx_equities_memo_sbe_v1_6_display.last_shares = function(value)
  -- Check if field has value
  if value == 4294967295 then
    return "Last Shares: No Value"
  end

  return "Last Shares: "..value
end

-- Dissect: Last Shares
memx_equities_memo_sbe_v1_6_dissect.last_shares = function(buffer, offset, packet, parent)
  local length = memx_equities_memo_sbe_v1_6_size_of.last_shares
  local range = buffer(offset, length)
  local value = range:uint()
  local display = memx_equities_memo_sbe_v1_6_display.last_shares(value, buffer, offset, packet, parent)

  parent:add(memx_equities_memo_sbe_v1_6.fields.last_shares, range, value, display)

  return offset + length, value
end

-- Size: Cum Qty
memx_equities_memo_sbe_v1_6_size_of.cum_qty = 4

-- Display: Cum Qty
memx_equities_memo_sbe_v1_6_display.cum_qty = function(value)
  return "Cum Qty: "..value
end

-- Dissect: Cum Qty
memx_equities_memo_sbe_v1_6_dissect.cum_qty = function(buffer, offset, packet, parent)
  local length = memx_equities_memo_sbe_v1_6_size_of.cum_qty
  local range = buffer(offset, length)
  local value = range:uint()
  local display = memx_equities_memo_sbe_v1_6_display.cum_qty(value, buffer, offset, packet, parent)

  parent:add(memx_equities_memo_sbe_v1_6.fields.cum_qty, range, value, display)

  return offset + length, value
end

-- Size: Leaves Qty
memx_equities_memo_sbe_v1_6_size_of.leaves_qty = 4

-- Display: Leaves Qty
memx_equities_memo_sbe_v1_6_display.leaves_qty = function(value)
  return "Leaves Qty: "..value
end

-- Dissect: Leaves Qty
memx_equities_memo_sbe_v1_6_dissect.leaves_qty = function(buffer, offset, packet, parent)
  local length = memx_equities_memo_sbe_v1_6_size_of.leaves_qty
  local range = buffer(offset, length)
  local value = range:uint()
  local display = memx_equities_memo_sbe_v1_6_display.leaves_qty(value, buffer, offset, packet, parent)

  parent:add(memx_equities_memo_sbe_v1_6.fields.leaves_qty, range, value, display)

  return offset + length, value
end

-- Size: Last Px Optional
memx_equities_memo_sbe_v1_6_size_of.last_px_optional = 8

-- Display: Last Px Optional
memx_equities_memo_sbe_v1_6_display.last_px_optional = function(raw, value)
  -- Check null sentinel value
  if raw == Int64(0x00000000, 0x80000000) then
    return "Last Px Optional: No Value"
  end

  return "Last Px Optional: "..value
end

-- Translate: Last Px Optional
translate.last_px_optional = function(raw)
  -- Check null sentinel value
  if raw == Int64(0x00000000, 0x80000000) then
    return 0/0
  end

  return raw:tonumber()/1000000
end

-- Dissect: Last Px Optional
memx_equities_memo_sbe_v1_6_dissect.last_px_optional = function(buffer, offset, packet, parent)
  local length = memx_equities_memo_sbe_v1_6_size_of.last_px_optional
  local range = buffer(offset, length)
  local raw = range:int64()
  local value = translate.last_px_optional(raw)
  local display = memx_equities_memo_sbe_v1_6_display.last_px_optional(raw, value, buffer, offset, packet, parent)

  parent:add(memx_equities_memo_sbe_v1_6.fields.last_px_optional, range, value, display)

  return offset + length, value
end

-- Size: Ord Status
memx_equities_memo_sbe_v1_6_size_of.ord_status = 1

-- Display: Ord Status
memx_equities_memo_sbe_v1_6_display.ord_status = function(value)
  if value == 1 then
    return "Ord Status: New (1)"
  end
  if value == 2 then
    return "Ord Status: Partial Filled (2)"
  end
  if value == 3 then
    return "Ord Status: Filled (3)"
  end
  if value == 4 then
    return "Ord Status: Canceled (4)"
  end
  if value == 5 then
    return "Ord Status: Pending Cancel (5)"
  end
  if value == 6 then
    return "Ord Status: Rejected (6)"
  end
  if value == 7 then
    return "Ord Status: Pending New (7)"
  end
  if value == 8 then
    return "Ord Status: Pending Replace (8)"
  end
  if value == 9 then
    return "Ord Status: Expired (9)"
  end
  if value == 255 then
    return "Ord Status: Null Value (255)"
  end

  return "Ord Status: Unknown("..value..")"
end

-- Dissect: Ord Status
memx_equities_memo_sbe_v1_6_dissect.ord_status = function(buffer, offset, packet, parent)
  local length = memx_equities_memo_sbe_v1_6_size_of.ord_status
  local range = buffer(offset, length)
  local value = range:uint()
  local display = memx_equities_memo_sbe_v1_6_display.ord_status(value, buffer, offset, packet, parent)

  parent:add(memx_equities_memo_sbe_v1_6.fields.ord_status, range, value, display)

  return offset + length, value
end

-- Size: Exec Id
memx_equities_memo_sbe_v1_6_size_of.exec_id = 8

-- Display: Exec Id
memx_equities_memo_sbe_v1_6_display.exec_id = function(value)
  return "Exec Id: "..value
end

-- Dissect: Exec Id
memx_equities_memo_sbe_v1_6_dissect.exec_id = function(buffer, offset, packet, parent)
  local length = memx_equities_memo_sbe_v1_6_size_of.exec_id
  local range = buffer(offset, length)
  local value = range:uint64()
  local display = memx_equities_memo_sbe_v1_6_display.exec_id(value, buffer, offset, packet, parent)

  parent:add(memx_equities_memo_sbe_v1_6.fields.exec_id, range, value, display)

  return offset + length, value
end

-- Size: Order Id
memx_equities_memo_sbe_v1_6_size_of.order_id = 8

-- Display: Order Id
memx_equities_memo_sbe_v1_6_display.order_id = function(value)
  return "Order Id: "..value
end

-- Dissect: Order Id
memx_equities_memo_sbe_v1_6_dissect.order_id = function(buffer, offset, packet, parent)
  local length = memx_equities_memo_sbe_v1_6_size_of.order_id
  local range = buffer(offset, length)
  local value = range:uint64()
  local display = memx_equities_memo_sbe_v1_6_display.order_id(value, buffer, offset, packet, parent)

  parent:add(memx_equities_memo_sbe_v1_6.fields.order_id, range, value, display)

  return offset + length, value
end

-- Calculate size of: Execution Report Restatement Message
memx_equities_memo_sbe_v1_6_size_of.execution_report_restatement_message = function(buffer, offset)
  local index = 0

  index = index + memx_equities_memo_sbe_v1_6_size_of.sending_time

  index = index + memx_equities_memo_sbe_v1_6_size_of.order_id

  index = index + memx_equities_memo_sbe_v1_6_size_of.clordid

  index = index + memx_equities_memo_sbe_v1_6_size_of.exec_id

  index = index + memx_equities_memo_sbe_v1_6_size_of.ord_status

  index = index + memx_equities_memo_sbe_v1_6_size_of.last_px_optional

  index = index + memx_equities_memo_sbe_v1_6_size_of.leaves_qty

  index = index + memx_equities_memo_sbe_v1_6_size_of.cum_qty

  index = index + memx_equities_memo_sbe_v1_6_size_of.last_shares

  index = index + memx_equities_memo_sbe_v1_6_size_of.exec_restatement_reason

  index = index + memx_equities_memo_sbe_v1_6_size_of.transact_time

  return index
end

-- Display: Execution Report Restatement Message
memx_equities_memo_sbe_v1_6_display.execution_report_restatement_message = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Execution Report Restatement Message
memx_equities_memo_sbe_v1_6_dissect.execution_report_restatement_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Sending Time: 8 Byte Unsigned Fixed Width Integer
  index, sending_time = memx_equities_memo_sbe_v1_6_dissect.sending_time(buffer, index, packet, parent)

  -- Order Id: 8 Byte Unsigned Fixed Width Integer
  index, order_id = memx_equities_memo_sbe_v1_6_dissect.order_id(buffer, index, packet, parent)

  -- ClOrdId: 16 Byte Ascii String
  index, clordid = memx_equities_memo_sbe_v1_6_dissect.clordid(buffer, index, packet, parent)

  -- Exec Id: 8 Byte Unsigned Fixed Width Integer
  index, exec_id = memx_equities_memo_sbe_v1_6_dissect.exec_id(buffer, index, packet, parent)

  -- Ord Status: 1 Byte Unsigned Fixed Width Integer Enum with 10 values
  index, ord_status = memx_equities_memo_sbe_v1_6_dissect.ord_status(buffer, index, packet, parent)

  -- Last Px Optional: 8 Byte Signed Fixed Width Integer Nullable
  index, last_px_optional = memx_equities_memo_sbe_v1_6_dissect.last_px_optional(buffer, index, packet, parent)

  -- Leaves Qty: 4 Byte Unsigned Fixed Width Integer
  index, leaves_qty = memx_equities_memo_sbe_v1_6_dissect.leaves_qty(buffer, index, packet, parent)

  -- Cum Qty: 4 Byte Unsigned Fixed Width Integer
  index, cum_qty = memx_equities_memo_sbe_v1_6_dissect.cum_qty(buffer, index, packet, parent)

  -- Last Shares: 4 Byte Unsigned Fixed Width Integer Nullable
  index, last_shares = memx_equities_memo_sbe_v1_6_dissect.last_shares(buffer, index, packet, parent)

  -- Exec Restatement Reason: 1 Byte Unsigned Fixed Width Integer Enum with 3 values
  index, exec_restatement_reason = memx_equities_memo_sbe_v1_6_dissect.exec_restatement_reason(buffer, index, packet, parent)

  -- Transact Time: 8 Byte Unsigned Fixed Width Integer
  index, transact_time = memx_equities_memo_sbe_v1_6_dissect.transact_time(buffer, index, packet, parent)

  return index
end

-- Dissect: Execution Report Restatement Message
memx_equities_memo_sbe_v1_6_dissect.execution_report_restatement_message = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.execution_report_restatement_message then
    local length = memx_equities_memo_sbe_v1_6_size_of.execution_report_restatement_message(buffer, offset)
    local range = buffer(offset, length)
    local display = memx_equities_memo_sbe_v1_6_display.execution_report_restatement_message(buffer, packet, parent)
    parent = parent:add(memx_equities_memo_sbe_v1_6.fields.execution_report_restatement_message, range, display)
  end

  return memx_equities_memo_sbe_v1_6_dissect.execution_report_restatement_message_fields(buffer, offset, packet, parent)
end

-- Size: Trd Match Id
memx_equities_memo_sbe_v1_6_size_of.trd_match_id = 8

-- Display: Trd Match Id
memx_equities_memo_sbe_v1_6_display.trd_match_id = function(value)
  return "Trd Match Id: "..value
end

-- Dissect: Trd Match Id
memx_equities_memo_sbe_v1_6_dissect.trd_match_id = function(buffer, offset, packet, parent)
  local length = memx_equities_memo_sbe_v1_6_size_of.trd_match_id
  local range = buffer(offset, length)
  local value = range:uint64()
  local display = memx_equities_memo_sbe_v1_6_display.trd_match_id(value, buffer, offset, packet, parent)

  parent:add(memx_equities_memo_sbe_v1_6.fields.trd_match_id, range, value, display)

  return offset + length, value
end

-- Size: Exec Ref Id
memx_equities_memo_sbe_v1_6_size_of.exec_ref_id = 8

-- Display: Exec Ref Id
memx_equities_memo_sbe_v1_6_display.exec_ref_id = function(value)
  return "Exec Ref Id: "..value
end

-- Dissect: Exec Ref Id
memx_equities_memo_sbe_v1_6_dissect.exec_ref_id = function(buffer, offset, packet, parent)
  local length = memx_equities_memo_sbe_v1_6_size_of.exec_ref_id
  local range = buffer(offset, length)
  local value = range:uint64()
  local display = memx_equities_memo_sbe_v1_6_display.exec_ref_id(value, buffer, offset, packet, parent)

  parent:add(memx_equities_memo_sbe_v1_6.fields.exec_ref_id, range, value, display)

  return offset + length, value
end

-- Calculate size of: Execution Report Trade Break Message
memx_equities_memo_sbe_v1_6_size_of.execution_report_trade_break_message = function(buffer, offset)
  local index = 0

  index = index + memx_equities_memo_sbe_v1_6_size_of.sending_time

  index = index + memx_equities_memo_sbe_v1_6_size_of.order_id

  index = index + memx_equities_memo_sbe_v1_6_size_of.clordid

  index = index + memx_equities_memo_sbe_v1_6_size_of.exec_id

  index = index + memx_equities_memo_sbe_v1_6_size_of.exec_ref_id

  index = index + memx_equities_memo_sbe_v1_6_size_of.trd_match_id

  index = index + memx_equities_memo_sbe_v1_6_size_of.ord_status

  index = index + memx_equities_memo_sbe_v1_6_size_of.leaves_qty

  index = index + memx_equities_memo_sbe_v1_6_size_of.cum_qty

  return index
end

-- Display: Execution Report Trade Break Message
memx_equities_memo_sbe_v1_6_display.execution_report_trade_break_message = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Execution Report Trade Break Message
memx_equities_memo_sbe_v1_6_dissect.execution_report_trade_break_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Sending Time: 8 Byte Unsigned Fixed Width Integer
  index, sending_time = memx_equities_memo_sbe_v1_6_dissect.sending_time(buffer, index, packet, parent)

  -- Order Id: 8 Byte Unsigned Fixed Width Integer
  index, order_id = memx_equities_memo_sbe_v1_6_dissect.order_id(buffer, index, packet, parent)

  -- ClOrdId: 16 Byte Ascii String
  index, clordid = memx_equities_memo_sbe_v1_6_dissect.clordid(buffer, index, packet, parent)

  -- Exec Id: 8 Byte Unsigned Fixed Width Integer
  index, exec_id = memx_equities_memo_sbe_v1_6_dissect.exec_id(buffer, index, packet, parent)

  -- Exec Ref Id: 8 Byte Unsigned Fixed Width Integer
  index, exec_ref_id = memx_equities_memo_sbe_v1_6_dissect.exec_ref_id(buffer, index, packet, parent)

  -- Trd Match Id: 8 Byte Unsigned Fixed Width Integer
  index, trd_match_id = memx_equities_memo_sbe_v1_6_dissect.trd_match_id(buffer, index, packet, parent)

  -- Ord Status: 1 Byte Unsigned Fixed Width Integer Enum with 10 values
  index, ord_status = memx_equities_memo_sbe_v1_6_dissect.ord_status(buffer, index, packet, parent)

  -- Leaves Qty: 4 Byte Unsigned Fixed Width Integer
  index, leaves_qty = memx_equities_memo_sbe_v1_6_dissect.leaves_qty(buffer, index, packet, parent)

  -- Cum Qty: 4 Byte Unsigned Fixed Width Integer
  index, cum_qty = memx_equities_memo_sbe_v1_6_dissect.cum_qty(buffer, index, packet, parent)

  return index
end

-- Dissect: Execution Report Trade Break Message
memx_equities_memo_sbe_v1_6_dissect.execution_report_trade_break_message = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.execution_report_trade_break_message then
    local length = memx_equities_memo_sbe_v1_6_size_of.execution_report_trade_break_message(buffer, offset)
    local range = buffer(offset, length)
    local display = memx_equities_memo_sbe_v1_6_display.execution_report_trade_break_message(buffer, packet, parent)
    parent = parent:add(memx_equities_memo_sbe_v1_6.fields.execution_report_trade_break_message, range, display)
  end

  return memx_equities_memo_sbe_v1_6_dissect.execution_report_trade_break_message_fields(buffer, offset, packet, parent)
end

-- Size: Last Qty Optional
memx_equities_memo_sbe_v1_6_size_of.last_qty_optional = 4

-- Display: Last Qty Optional
memx_equities_memo_sbe_v1_6_display.last_qty_optional = function(value)
  -- Check if field has value
  if value == 4294967295 then
    return "Last Qty Optional: No Value"
  end

  return "Last Qty Optional: "..value
end

-- Dissect: Last Qty Optional
memx_equities_memo_sbe_v1_6_dissect.last_qty_optional = function(buffer, offset, packet, parent)
  local length = memx_equities_memo_sbe_v1_6_size_of.last_qty_optional
  local range = buffer(offset, length)
  local value = range:uint()
  local display = memx_equities_memo_sbe_v1_6_display.last_qty_optional(value, buffer, offset, packet, parent)

  parent:add(memx_equities_memo_sbe_v1_6.fields.last_qty_optional, range, value, display)

  return offset + length, value
end

-- Size: Last Px
memx_equities_memo_sbe_v1_6_size_of.last_px = 8

-- Display: Last Px
memx_equities_memo_sbe_v1_6_display.last_px = function(value)
  return "Last Px: "..value
end

-- Translate: Last Px
translate.last_px = function(raw)
  return raw:tonumber()/1000000
end

-- Dissect: Last Px
memx_equities_memo_sbe_v1_6_dissect.last_px = function(buffer, offset, packet, parent)
  local length = memx_equities_memo_sbe_v1_6_size_of.last_px
  local range = buffer(offset, length)
  local raw = range:int64()
  local value = translate.last_px(raw)
  local display = memx_equities_memo_sbe_v1_6_display.last_px(value, buffer, offset, packet, parent)

  parent:add(memx_equities_memo_sbe_v1_6.fields.last_px, range, value, display)

  return offset + length, value
end

-- Calculate size of: Execution Report Trade Correction Message
memx_equities_memo_sbe_v1_6_size_of.execution_report_trade_correction_message = function(buffer, offset)
  local index = 0

  index = index + memx_equities_memo_sbe_v1_6_size_of.sending_time

  index = index + memx_equities_memo_sbe_v1_6_size_of.order_id

  index = index + memx_equities_memo_sbe_v1_6_size_of.clordid

  index = index + memx_equities_memo_sbe_v1_6_size_of.exec_id

  index = index + memx_equities_memo_sbe_v1_6_size_of.exec_ref_id

  index = index + memx_equities_memo_sbe_v1_6_size_of.trd_match_id

  index = index + memx_equities_memo_sbe_v1_6_size_of.ord_status

  index = index + memx_equities_memo_sbe_v1_6_size_of.last_px

  index = index + memx_equities_memo_sbe_v1_6_size_of.last_qty_optional

  index = index + memx_equities_memo_sbe_v1_6_size_of.leaves_qty

  index = index + memx_equities_memo_sbe_v1_6_size_of.cum_qty

  return index
end

-- Display: Execution Report Trade Correction Message
memx_equities_memo_sbe_v1_6_display.execution_report_trade_correction_message = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Execution Report Trade Correction Message
memx_equities_memo_sbe_v1_6_dissect.execution_report_trade_correction_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Sending Time: 8 Byte Unsigned Fixed Width Integer
  index, sending_time = memx_equities_memo_sbe_v1_6_dissect.sending_time(buffer, index, packet, parent)

  -- Order Id: 8 Byte Unsigned Fixed Width Integer
  index, order_id = memx_equities_memo_sbe_v1_6_dissect.order_id(buffer, index, packet, parent)

  -- ClOrdId: 16 Byte Ascii String
  index, clordid = memx_equities_memo_sbe_v1_6_dissect.clordid(buffer, index, packet, parent)

  -- Exec Id: 8 Byte Unsigned Fixed Width Integer
  index, exec_id = memx_equities_memo_sbe_v1_6_dissect.exec_id(buffer, index, packet, parent)

  -- Exec Ref Id: 8 Byte Unsigned Fixed Width Integer
  index, exec_ref_id = memx_equities_memo_sbe_v1_6_dissect.exec_ref_id(buffer, index, packet, parent)

  -- Trd Match Id: 8 Byte Unsigned Fixed Width Integer
  index, trd_match_id = memx_equities_memo_sbe_v1_6_dissect.trd_match_id(buffer, index, packet, parent)

  -- Ord Status: 1 Byte Unsigned Fixed Width Integer Enum with 10 values
  index, ord_status = memx_equities_memo_sbe_v1_6_dissect.ord_status(buffer, index, packet, parent)

  -- Last Px: 8 Byte Signed Fixed Width Integer
  index, last_px = memx_equities_memo_sbe_v1_6_dissect.last_px(buffer, index, packet, parent)

  -- Last Qty Optional: 4 Byte Unsigned Fixed Width Integer Nullable
  index, last_qty_optional = memx_equities_memo_sbe_v1_6_dissect.last_qty_optional(buffer, index, packet, parent)

  -- Leaves Qty: 4 Byte Unsigned Fixed Width Integer
  index, leaves_qty = memx_equities_memo_sbe_v1_6_dissect.leaves_qty(buffer, index, packet, parent)

  -- Cum Qty: 4 Byte Unsigned Fixed Width Integer
  index, cum_qty = memx_equities_memo_sbe_v1_6_dissect.cum_qty(buffer, index, packet, parent)

  return index
end

-- Dissect: Execution Report Trade Correction Message
memx_equities_memo_sbe_v1_6_dissect.execution_report_trade_correction_message = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.execution_report_trade_correction_message then
    local length = memx_equities_memo_sbe_v1_6_size_of.execution_report_trade_correction_message(buffer, offset)
    local range = buffer(offset, length)
    local display = memx_equities_memo_sbe_v1_6_display.execution_report_trade_correction_message(buffer, packet, parent)
    parent = parent:add(memx_equities_memo_sbe_v1_6.fields.execution_report_trade_correction_message, range, display)
  end

  return memx_equities_memo_sbe_v1_6_dissect.execution_report_trade_correction_message_fields(buffer, offset, packet, parent)
end

-- Size: Locate Reqd
memx_equities_memo_sbe_v1_6_size_of.locate_reqd = 1

-- Display: Locate Reqd
memx_equities_memo_sbe_v1_6_display.locate_reqd = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Locate Reqd: No Value"
  end

  return "Locate Reqd: "..value
end

-- Dissect: Locate Reqd
memx_equities_memo_sbe_v1_6_dissect.locate_reqd = function(buffer, offset, packet, parent)
  local length = memx_equities_memo_sbe_v1_6_size_of.locate_reqd
  local range = buffer(offset, length)

  -- parse as byte
  local value = range:uint()

  -- check if value is non zero
  if value ~= 0 then
    value = range:string()
  end

  local display = memx_equities_memo_sbe_v1_6_display.locate_reqd(value, buffer, offset, packet, parent)

  parent:add(memx_equities_memo_sbe_v1_6.fields.locate_reqd, range, value, display)

  return offset + length, value
end

-- Size: Display Qty
memx_equities_memo_sbe_v1_6_size_of.display_qty = 4

-- Display: Display Qty
memx_equities_memo_sbe_v1_6_display.display_qty = function(value)
  -- Check if field has value
  if value == 4294967295 then
    return "Display Qty: No Value"
  end

  return "Display Qty: "..value
end

-- Dissect: Display Qty
memx_equities_memo_sbe_v1_6_dissect.display_qty = function(buffer, offset, packet, parent)
  local length = memx_equities_memo_sbe_v1_6_size_of.display_qty
  local range = buffer(offset, length)
  local value = range:uint()
  local display = memx_equities_memo_sbe_v1_6_display.display_qty(value, buffer, offset, packet, parent)

  parent:add(memx_equities_memo_sbe_v1_6.fields.display_qty, range, value, display)

  return offset + length, value
end

-- Size: Price
memx_equities_memo_sbe_v1_6_size_of.price = 8

-- Display: Price
memx_equities_memo_sbe_v1_6_display.price = function(raw, value)
  -- Check null sentinel value
  if raw == Int64(0x00000000, 0x80000000) then
    return "Price: No Value"
  end

  return "Price: "..value
end

-- Translate: Price
translate.price = function(raw)
  -- Check null sentinel value
  if raw == Int64(0x00000000, 0x80000000) then
    return 0/0
  end

  return raw:tonumber()/1000000
end

-- Dissect: Price
memx_equities_memo_sbe_v1_6_dissect.price = function(buffer, offset, packet, parent)
  local length = memx_equities_memo_sbe_v1_6_size_of.price
  local range = buffer(offset, length)
  local raw = range:int64()
  local value = translate.price(raw)
  local display = memx_equities_memo_sbe_v1_6_display.price(raw, value, buffer, offset, packet, parent)

  parent:add(memx_equities_memo_sbe_v1_6.fields.price, range, value, display)

  return offset + length, value
end

-- Size: Ord Type
memx_equities_memo_sbe_v1_6_size_of.ord_type = 1

-- Display: Ord Type
memx_equities_memo_sbe_v1_6_display.ord_type = function(value)
  if value == 1 then
    return "Ord Type: Market (1)"
  end
  if value == 2 then
    return "Ord Type: Limit (2)"
  end
  if value == 3 then
    return "Ord Type: Pegged (3)"
  end
  if value == 255 then
    return "Ord Type: Null Value (255)"
  end

  return "Ord Type: Unknown("..value..")"
end

-- Dissect: Ord Type
memx_equities_memo_sbe_v1_6_dissect.ord_type = function(buffer, offset, packet, parent)
  local length = memx_equities_memo_sbe_v1_6_size_of.ord_type
  local range = buffer(offset, length)
  local value = range:uint()
  local display = memx_equities_memo_sbe_v1_6_display.ord_type(value, buffer, offset, packet, parent)

  parent:add(memx_equities_memo_sbe_v1_6.fields.ord_type, range, value, display)

  return offset + length, value
end

-- Size: Order Qty
memx_equities_memo_sbe_v1_6_size_of.order_qty = 4

-- Display: Order Qty
memx_equities_memo_sbe_v1_6_display.order_qty = function(value)
  return "Order Qty: "..value
end

-- Dissect: Order Qty
memx_equities_memo_sbe_v1_6_dissect.order_qty = function(buffer, offset, packet, parent)
  local length = memx_equities_memo_sbe_v1_6_size_of.order_qty
  local range = buffer(offset, length)
  local value = range:uint()
  local display = memx_equities_memo_sbe_v1_6_display.order_qty(value, buffer, offset, packet, parent)

  parent:add(memx_equities_memo_sbe_v1_6.fields.order_qty, range, value, display)

  return offset + length, value
end

-- Size: Side
memx_equities_memo_sbe_v1_6_size_of.side = 1

-- Display: Side
memx_equities_memo_sbe_v1_6_display.side = function(value)
  if value == 1 then
    return "Side: Buy (1)"
  end
  if value == 2 then
    return "Side: Sell (2)"
  end
  if value == 3 then
    return "Side: Sell Short (3)"
  end
  if value == 4 then
    return "Side: Sell Short Exempt (4)"
  end
  if value == 255 then
    return "Side: Null Value (255)"
  end

  return "Side: Unknown("..value..")"
end

-- Dissect: Side
memx_equities_memo_sbe_v1_6_dissect.side = function(buffer, offset, packet, parent)
  local length = memx_equities_memo_sbe_v1_6_size_of.side
  local range = buffer(offset, length)
  local value = range:uint()
  local display = memx_equities_memo_sbe_v1_6_display.side(value, buffer, offset, packet, parent)

  parent:add(memx_equities_memo_sbe_v1_6.fields.side, range, value, display)

  return offset + length, value
end

-- Size: OrigClOrdId
memx_equities_memo_sbe_v1_6_size_of.origclordid = 16

-- Display: OrigClOrdId
memx_equities_memo_sbe_v1_6_display.origclordid = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "OrigClOrdId: No Value"
  end

  return "OrigClOrdId: "..value
end

-- Dissect: OrigClOrdId
memx_equities_memo_sbe_v1_6_dissect.origclordid = function(buffer, offset, packet, parent)
  local length = memx_equities_memo_sbe_v1_6_size_of.origclordid
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

  local display = memx_equities_memo_sbe_v1_6_display.origclordid(value, buffer, offset, packet, parent)

  parent:add(memx_equities_memo_sbe_v1_6.fields.origclordid, range, value, display)

  return offset + length, value
end

-- Calculate size of: Execution Report Replaced Message
memx_equities_memo_sbe_v1_6_size_of.execution_report_replaced_message = function(buffer, offset)
  local index = 0

  index = index + memx_equities_memo_sbe_v1_6_size_of.sending_time

  index = index + memx_equities_memo_sbe_v1_6_size_of.order_id

  index = index + memx_equities_memo_sbe_v1_6_size_of.clordid

  index = index + memx_equities_memo_sbe_v1_6_size_of.origclordid

  index = index + memx_equities_memo_sbe_v1_6_size_of.exec_id

  index = index + memx_equities_memo_sbe_v1_6_size_of.symbol

  index = index + memx_equities_memo_sbe_v1_6_size_of.symbol_sfx

  index = index + memx_equities_memo_sbe_v1_6_size_of.side

  index = index + memx_equities_memo_sbe_v1_6_size_of.order_qty

  index = index + memx_equities_memo_sbe_v1_6_size_of.ord_type

  index = index + memx_equities_memo_sbe_v1_6_size_of.price

  index = index + memx_equities_memo_sbe_v1_6_size_of.display_qty

  index = index + memx_equities_memo_sbe_v1_6_size_of.locate_reqd

  index = index + memx_equities_memo_sbe_v1_6_size_of.ord_status

  index = index + memx_equities_memo_sbe_v1_6_size_of.leaves_qty

  index = index + memx_equities_memo_sbe_v1_6_size_of.cum_qty

  index = index + memx_equities_memo_sbe_v1_6_size_of.transact_time

  return index
end

-- Display: Execution Report Replaced Message
memx_equities_memo_sbe_v1_6_display.execution_report_replaced_message = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Execution Report Replaced Message
memx_equities_memo_sbe_v1_6_dissect.execution_report_replaced_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Sending Time: 8 Byte Unsigned Fixed Width Integer
  index, sending_time = memx_equities_memo_sbe_v1_6_dissect.sending_time(buffer, index, packet, parent)

  -- Order Id: 8 Byte Unsigned Fixed Width Integer
  index, order_id = memx_equities_memo_sbe_v1_6_dissect.order_id(buffer, index, packet, parent)

  -- ClOrdId: 16 Byte Ascii String
  index, clordid = memx_equities_memo_sbe_v1_6_dissect.clordid(buffer, index, packet, parent)

  -- OrigClOrdId: 16 Byte Ascii String
  index, origclordid = memx_equities_memo_sbe_v1_6_dissect.origclordid(buffer, index, packet, parent)

  -- Exec Id: 8 Byte Unsigned Fixed Width Integer
  index, exec_id = memx_equities_memo_sbe_v1_6_dissect.exec_id(buffer, index, packet, parent)

  -- Symbol: 6 Byte Ascii String
  index, symbol = memx_equities_memo_sbe_v1_6_dissect.symbol(buffer, index, packet, parent)

  -- Symbol Sfx: 6 Byte Ascii String
  index, symbol_sfx = memx_equities_memo_sbe_v1_6_dissect.symbol_sfx(buffer, index, packet, parent)

  -- Side: 1 Byte Unsigned Fixed Width Integer Enum with 5 values
  index, side = memx_equities_memo_sbe_v1_6_dissect.side(buffer, index, packet, parent)

  -- Order Qty: 4 Byte Unsigned Fixed Width Integer
  index, order_qty = memx_equities_memo_sbe_v1_6_dissect.order_qty(buffer, index, packet, parent)

  -- Ord Type: 1 Byte Unsigned Fixed Width Integer Enum with 4 values
  index, ord_type = memx_equities_memo_sbe_v1_6_dissect.ord_type(buffer, index, packet, parent)

  -- Price: 8 Byte Signed Fixed Width Integer Nullable
  index, price = memx_equities_memo_sbe_v1_6_dissect.price(buffer, index, packet, parent)

  -- Display Qty: 4 Byte Unsigned Fixed Width Integer Nullable
  index, display_qty = memx_equities_memo_sbe_v1_6_dissect.display_qty(buffer, index, packet, parent)

  -- Locate Reqd: 1 Byte Ascii String Nullable
  index, locate_reqd = memx_equities_memo_sbe_v1_6_dissect.locate_reqd(buffer, index, packet, parent)

  -- Ord Status: 1 Byte Unsigned Fixed Width Integer Enum with 10 values
  index, ord_status = memx_equities_memo_sbe_v1_6_dissect.ord_status(buffer, index, packet, parent)

  -- Leaves Qty: 4 Byte Unsigned Fixed Width Integer
  index, leaves_qty = memx_equities_memo_sbe_v1_6_dissect.leaves_qty(buffer, index, packet, parent)

  -- Cum Qty: 4 Byte Unsigned Fixed Width Integer
  index, cum_qty = memx_equities_memo_sbe_v1_6_dissect.cum_qty(buffer, index, packet, parent)

  -- Transact Time: 8 Byte Unsigned Fixed Width Integer
  index, transact_time = memx_equities_memo_sbe_v1_6_dissect.transact_time(buffer, index, packet, parent)

  return index
end

-- Dissect: Execution Report Replaced Message
memx_equities_memo_sbe_v1_6_dissect.execution_report_replaced_message = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.execution_report_replaced_message then
    local length = memx_equities_memo_sbe_v1_6_size_of.execution_report_replaced_message(buffer, offset)
    local range = buffer(offset, length)
    local display = memx_equities_memo_sbe_v1_6_display.execution_report_replaced_message(buffer, packet, parent)
    parent = parent:add(memx_equities_memo_sbe_v1_6.fields.execution_report_replaced_message, range, display)
  end

  return memx_equities_memo_sbe_v1_6_dissect.execution_report_replaced_message_fields(buffer, offset, packet, parent)
end

-- Calculate size of: Execution Report Pending Replace Message
memx_equities_memo_sbe_v1_6_size_of.execution_report_pending_replace_message = function(buffer, offset)
  local index = 0

  index = index + memx_equities_memo_sbe_v1_6_size_of.sending_time

  index = index + memx_equities_memo_sbe_v1_6_size_of.order_id

  index = index + memx_equities_memo_sbe_v1_6_size_of.clordid

  index = index + memx_equities_memo_sbe_v1_6_size_of.origclordid

  index = index + memx_equities_memo_sbe_v1_6_size_of.exec_id

  index = index + memx_equities_memo_sbe_v1_6_size_of.symbol

  index = index + memx_equities_memo_sbe_v1_6_size_of.symbol_sfx

  index = index + memx_equities_memo_sbe_v1_6_size_of.side

  index = index + memx_equities_memo_sbe_v1_6_size_of.order_qty

  index = index + memx_equities_memo_sbe_v1_6_size_of.ord_type

  index = index + memx_equities_memo_sbe_v1_6_size_of.price

  index = index + memx_equities_memo_sbe_v1_6_size_of.display_qty

  index = index + memx_equities_memo_sbe_v1_6_size_of.locate_reqd

  index = index + memx_equities_memo_sbe_v1_6_size_of.ord_status

  index = index + memx_equities_memo_sbe_v1_6_size_of.leaves_qty

  index = index + memx_equities_memo_sbe_v1_6_size_of.cum_qty

  return index
end

-- Display: Execution Report Pending Replace Message
memx_equities_memo_sbe_v1_6_display.execution_report_pending_replace_message = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Execution Report Pending Replace Message
memx_equities_memo_sbe_v1_6_dissect.execution_report_pending_replace_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Sending Time: 8 Byte Unsigned Fixed Width Integer
  index, sending_time = memx_equities_memo_sbe_v1_6_dissect.sending_time(buffer, index, packet, parent)

  -- Order Id: 8 Byte Unsigned Fixed Width Integer
  index, order_id = memx_equities_memo_sbe_v1_6_dissect.order_id(buffer, index, packet, parent)

  -- ClOrdId: 16 Byte Ascii String
  index, clordid = memx_equities_memo_sbe_v1_6_dissect.clordid(buffer, index, packet, parent)

  -- OrigClOrdId: 16 Byte Ascii String
  index, origclordid = memx_equities_memo_sbe_v1_6_dissect.origclordid(buffer, index, packet, parent)

  -- Exec Id: 8 Byte Unsigned Fixed Width Integer
  index, exec_id = memx_equities_memo_sbe_v1_6_dissect.exec_id(buffer, index, packet, parent)

  -- Symbol: 6 Byte Ascii String
  index, symbol = memx_equities_memo_sbe_v1_6_dissect.symbol(buffer, index, packet, parent)

  -- Symbol Sfx: 6 Byte Ascii String
  index, symbol_sfx = memx_equities_memo_sbe_v1_6_dissect.symbol_sfx(buffer, index, packet, parent)

  -- Side: 1 Byte Unsigned Fixed Width Integer Enum with 5 values
  index, side = memx_equities_memo_sbe_v1_6_dissect.side(buffer, index, packet, parent)

  -- Order Qty: 4 Byte Unsigned Fixed Width Integer
  index, order_qty = memx_equities_memo_sbe_v1_6_dissect.order_qty(buffer, index, packet, parent)

  -- Ord Type: 1 Byte Unsigned Fixed Width Integer Enum with 4 values
  index, ord_type = memx_equities_memo_sbe_v1_6_dissect.ord_type(buffer, index, packet, parent)

  -- Price: 8 Byte Signed Fixed Width Integer Nullable
  index, price = memx_equities_memo_sbe_v1_6_dissect.price(buffer, index, packet, parent)

  -- Display Qty: 4 Byte Unsigned Fixed Width Integer Nullable
  index, display_qty = memx_equities_memo_sbe_v1_6_dissect.display_qty(buffer, index, packet, parent)

  -- Locate Reqd: 1 Byte Ascii String Nullable
  index, locate_reqd = memx_equities_memo_sbe_v1_6_dissect.locate_reqd(buffer, index, packet, parent)

  -- Ord Status: 1 Byte Unsigned Fixed Width Integer Enum with 10 values
  index, ord_status = memx_equities_memo_sbe_v1_6_dissect.ord_status(buffer, index, packet, parent)

  -- Leaves Qty: 4 Byte Unsigned Fixed Width Integer
  index, leaves_qty = memx_equities_memo_sbe_v1_6_dissect.leaves_qty(buffer, index, packet, parent)

  -- Cum Qty: 4 Byte Unsigned Fixed Width Integer
  index, cum_qty = memx_equities_memo_sbe_v1_6_dissect.cum_qty(buffer, index, packet, parent)

  return index
end

-- Dissect: Execution Report Pending Replace Message
memx_equities_memo_sbe_v1_6_dissect.execution_report_pending_replace_message = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.execution_report_pending_replace_message then
    local length = memx_equities_memo_sbe_v1_6_size_of.execution_report_pending_replace_message(buffer, offset)
    local range = buffer(offset, length)
    local display = memx_equities_memo_sbe_v1_6_display.execution_report_pending_replace_message(buffer, packet, parent)
    parent = parent:add(memx_equities_memo_sbe_v1_6.fields.execution_report_pending_replace_message, range, display)
  end

  return memx_equities_memo_sbe_v1_6_dissect.execution_report_pending_replace_message_fields(buffer, offset, packet, parent)
end

-- Calculate size of: Mass Cancel Done Message
memx_equities_memo_sbe_v1_6_size_of.mass_cancel_done_message = function(buffer, offset)
  local index = 0

  index = index + memx_equities_memo_sbe_v1_6_size_of.sending_time

  index = index + memx_equities_memo_sbe_v1_6_size_of.clordid

  return index
end

-- Display: Mass Cancel Done Message
memx_equities_memo_sbe_v1_6_display.mass_cancel_done_message = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Mass Cancel Done Message
memx_equities_memo_sbe_v1_6_dissect.mass_cancel_done_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Sending Time: 8 Byte Unsigned Fixed Width Integer
  index, sending_time = memx_equities_memo_sbe_v1_6_dissect.sending_time(buffer, index, packet, parent)

  -- ClOrdId: 16 Byte Ascii String
  index, clordid = memx_equities_memo_sbe_v1_6_dissect.clordid(buffer, index, packet, parent)

  return index
end

-- Dissect: Mass Cancel Done Message
memx_equities_memo_sbe_v1_6_dissect.mass_cancel_done_message = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.mass_cancel_done_message then
    local length = memx_equities_memo_sbe_v1_6_size_of.mass_cancel_done_message(buffer, offset)
    local range = buffer(offset, length)
    local display = memx_equities_memo_sbe_v1_6_display.mass_cancel_done_message(buffer, packet, parent)
    parent = parent:add(memx_equities_memo_sbe_v1_6.fields.mass_cancel_done_message, range, display)
  end

  return memx_equities_memo_sbe_v1_6_dissect.mass_cancel_done_message_fields(buffer, offset, packet, parent)
end

-- Size: Cancel Reason
memx_equities_memo_sbe_v1_6_size_of.cancel_reason = 1

-- Display: Cancel Reason
memx_equities_memo_sbe_v1_6_display.cancel_reason = function(value)
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
memx_equities_memo_sbe_v1_6_dissect.cancel_reason = function(buffer, offset, packet, parent)
  local length = memx_equities_memo_sbe_v1_6_size_of.cancel_reason
  local range = buffer(offset, length)
  local value = range:uint()
  local display = memx_equities_memo_sbe_v1_6_display.cancel_reason(value, buffer, offset, packet, parent)

  parent:add(memx_equities_memo_sbe_v1_6.fields.cancel_reason, range, value, display)

  return offset + length, value
end

-- Calculate size of: Execution Report Canceled Message
memx_equities_memo_sbe_v1_6_size_of.execution_report_canceled_message = function(buffer, offset)
  local index = 0

  index = index + memx_equities_memo_sbe_v1_6_size_of.sending_time

  index = index + memx_equities_memo_sbe_v1_6_size_of.clordid

  index = index + memx_equities_memo_sbe_v1_6_size_of.origclordid

  index = index + memx_equities_memo_sbe_v1_6_size_of.order_id

  index = index + memx_equities_memo_sbe_v1_6_size_of.exec_id

  index = index + memx_equities_memo_sbe_v1_6_size_of.ord_status

  index = index + memx_equities_memo_sbe_v1_6_size_of.leaves_qty

  index = index + memx_equities_memo_sbe_v1_6_size_of.cum_qty

  index = index + memx_equities_memo_sbe_v1_6_size_of.cancel_reason

  index = index + memx_equities_memo_sbe_v1_6_size_of.transact_time

  return index
end

-- Display: Execution Report Canceled Message
memx_equities_memo_sbe_v1_6_display.execution_report_canceled_message = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Execution Report Canceled Message
memx_equities_memo_sbe_v1_6_dissect.execution_report_canceled_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Sending Time: 8 Byte Unsigned Fixed Width Integer
  index, sending_time = memx_equities_memo_sbe_v1_6_dissect.sending_time(buffer, index, packet, parent)

  -- ClOrdId: 16 Byte Ascii String
  index, clordid = memx_equities_memo_sbe_v1_6_dissect.clordid(buffer, index, packet, parent)

  -- OrigClOrdId: 16 Byte Ascii String
  index, origclordid = memx_equities_memo_sbe_v1_6_dissect.origclordid(buffer, index, packet, parent)

  -- Order Id: 8 Byte Unsigned Fixed Width Integer
  index, order_id = memx_equities_memo_sbe_v1_6_dissect.order_id(buffer, index, packet, parent)

  -- Exec Id: 8 Byte Unsigned Fixed Width Integer
  index, exec_id = memx_equities_memo_sbe_v1_6_dissect.exec_id(buffer, index, packet, parent)

  -- Ord Status: 1 Byte Unsigned Fixed Width Integer Enum with 10 values
  index, ord_status = memx_equities_memo_sbe_v1_6_dissect.ord_status(buffer, index, packet, parent)

  -- Leaves Qty: 4 Byte Unsigned Fixed Width Integer
  index, leaves_qty = memx_equities_memo_sbe_v1_6_dissect.leaves_qty(buffer, index, packet, parent)

  -- Cum Qty: 4 Byte Unsigned Fixed Width Integer
  index, cum_qty = memx_equities_memo_sbe_v1_6_dissect.cum_qty(buffer, index, packet, parent)

  -- Cancel Reason: 1 Byte Unsigned Fixed Width Integer Enum with 21 values
  index, cancel_reason = memx_equities_memo_sbe_v1_6_dissect.cancel_reason(buffer, index, packet, parent)

  -- Transact Time: 8 Byte Unsigned Fixed Width Integer
  index, transact_time = memx_equities_memo_sbe_v1_6_dissect.transact_time(buffer, index, packet, parent)

  return index
end

-- Dissect: Execution Report Canceled Message
memx_equities_memo_sbe_v1_6_dissect.execution_report_canceled_message = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.execution_report_canceled_message then
    local length = memx_equities_memo_sbe_v1_6_size_of.execution_report_canceled_message(buffer, offset)
    local range = buffer(offset, length)
    local display = memx_equities_memo_sbe_v1_6_display.execution_report_canceled_message(buffer, packet, parent)
    parent = parent:add(memx_equities_memo_sbe_v1_6.fields.execution_report_canceled_message, range, display)
  end

  return memx_equities_memo_sbe_v1_6_dissect.execution_report_canceled_message_fields(buffer, offset, packet, parent)
end

-- Calculate size of: Pending Mass Cancel Message
memx_equities_memo_sbe_v1_6_size_of.pending_mass_cancel_message = function(buffer, offset)
  local index = 0

  index = index + memx_equities_memo_sbe_v1_6_size_of.sending_time

  index = index + memx_equities_memo_sbe_v1_6_size_of.clordid

  index = index + memx_equities_memo_sbe_v1_6_size_of.symbol

  index = index + memx_equities_memo_sbe_v1_6_size_of.symbol_sfx

  index = index + memx_equities_memo_sbe_v1_6_size_of.side_optional

  index = index + memx_equities_memo_sbe_v1_6_size_of.lower_than_price

  index = index + memx_equities_memo_sbe_v1_6_size_of.higher_than_price

  index = index + memx_equities_memo_sbe_v1_6_size_of.cancel_group_id

  return index
end

-- Display: Pending Mass Cancel Message
memx_equities_memo_sbe_v1_6_display.pending_mass_cancel_message = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Pending Mass Cancel Message
memx_equities_memo_sbe_v1_6_dissect.pending_mass_cancel_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Sending Time: 8 Byte Unsigned Fixed Width Integer
  index, sending_time = memx_equities_memo_sbe_v1_6_dissect.sending_time(buffer, index, packet, parent)

  -- ClOrdId: 16 Byte Ascii String
  index, clordid = memx_equities_memo_sbe_v1_6_dissect.clordid(buffer, index, packet, parent)

  -- Symbol: 6 Byte Ascii String
  index, symbol = memx_equities_memo_sbe_v1_6_dissect.symbol(buffer, index, packet, parent)

  -- Symbol Sfx: 6 Byte Ascii String
  index, symbol_sfx = memx_equities_memo_sbe_v1_6_dissect.symbol_sfx(buffer, index, packet, parent)

  -- Side Optional: 1 Byte Unsigned Fixed Width Integer Enum with 6 values
  index, side_optional = memx_equities_memo_sbe_v1_6_dissect.side_optional(buffer, index, packet, parent)

  -- Lower Than Price: 8 Byte Signed Fixed Width Integer Nullable
  index, lower_than_price = memx_equities_memo_sbe_v1_6_dissect.lower_than_price(buffer, index, packet, parent)

  -- Higher Than Price: 8 Byte Signed Fixed Width Integer Nullable
  index, higher_than_price = memx_equities_memo_sbe_v1_6_dissect.higher_than_price(buffer, index, packet, parent)

  -- Cancel Group Id: 2 Byte Unsigned Fixed Width Integer Nullable
  index, cancel_group_id = memx_equities_memo_sbe_v1_6_dissect.cancel_group_id(buffer, index, packet, parent)

  return index
end

-- Dissect: Pending Mass Cancel Message
memx_equities_memo_sbe_v1_6_dissect.pending_mass_cancel_message = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.pending_mass_cancel_message then
    local length = memx_equities_memo_sbe_v1_6_size_of.pending_mass_cancel_message(buffer, offset)
    local range = buffer(offset, length)
    local display = memx_equities_memo_sbe_v1_6_display.pending_mass_cancel_message(buffer, packet, parent)
    parent = parent:add(memx_equities_memo_sbe_v1_6.fields.pending_mass_cancel_message, range, display)
  end

  return memx_equities_memo_sbe_v1_6_dissect.pending_mass_cancel_message_fields(buffer, offset, packet, parent)
end

-- Calculate size of: Execution Report Pending Cancel Message
memx_equities_memo_sbe_v1_6_size_of.execution_report_pending_cancel_message = function(buffer, offset)
  local index = 0

  index = index + memx_equities_memo_sbe_v1_6_size_of.sending_time

  index = index + memx_equities_memo_sbe_v1_6_size_of.order_id

  index = index + memx_equities_memo_sbe_v1_6_size_of.clordid

  index = index + memx_equities_memo_sbe_v1_6_size_of.origclordid

  index = index + memx_equities_memo_sbe_v1_6_size_of.exec_id

  index = index + memx_equities_memo_sbe_v1_6_size_of.symbol

  index = index + memx_equities_memo_sbe_v1_6_size_of.symbol_sfx

  index = index + memx_equities_memo_sbe_v1_6_size_of.ord_status

  index = index + memx_equities_memo_sbe_v1_6_size_of.leaves_qty

  index = index + memx_equities_memo_sbe_v1_6_size_of.cum_qty

  return index
end

-- Display: Execution Report Pending Cancel Message
memx_equities_memo_sbe_v1_6_display.execution_report_pending_cancel_message = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Execution Report Pending Cancel Message
memx_equities_memo_sbe_v1_6_dissect.execution_report_pending_cancel_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Sending Time: 8 Byte Unsigned Fixed Width Integer
  index, sending_time = memx_equities_memo_sbe_v1_6_dissect.sending_time(buffer, index, packet, parent)

  -- Order Id: 8 Byte Unsigned Fixed Width Integer
  index, order_id = memx_equities_memo_sbe_v1_6_dissect.order_id(buffer, index, packet, parent)

  -- ClOrdId: 16 Byte Ascii String
  index, clordid = memx_equities_memo_sbe_v1_6_dissect.clordid(buffer, index, packet, parent)

  -- OrigClOrdId: 16 Byte Ascii String
  index, origclordid = memx_equities_memo_sbe_v1_6_dissect.origclordid(buffer, index, packet, parent)

  -- Exec Id: 8 Byte Unsigned Fixed Width Integer
  index, exec_id = memx_equities_memo_sbe_v1_6_dissect.exec_id(buffer, index, packet, parent)

  -- Symbol: 6 Byte Ascii String
  index, symbol = memx_equities_memo_sbe_v1_6_dissect.symbol(buffer, index, packet, parent)

  -- Symbol Sfx: 6 Byte Ascii String
  index, symbol_sfx = memx_equities_memo_sbe_v1_6_dissect.symbol_sfx(buffer, index, packet, parent)

  -- Ord Status: 1 Byte Unsigned Fixed Width Integer Enum with 10 values
  index, ord_status = memx_equities_memo_sbe_v1_6_dissect.ord_status(buffer, index, packet, parent)

  -- Leaves Qty: 4 Byte Unsigned Fixed Width Integer
  index, leaves_qty = memx_equities_memo_sbe_v1_6_dissect.leaves_qty(buffer, index, packet, parent)

  -- Cum Qty: 4 Byte Unsigned Fixed Width Integer
  index, cum_qty = memx_equities_memo_sbe_v1_6_dissect.cum_qty(buffer, index, packet, parent)

  return index
end

-- Dissect: Execution Report Pending Cancel Message
memx_equities_memo_sbe_v1_6_dissect.execution_report_pending_cancel_message = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.execution_report_pending_cancel_message then
    local length = memx_equities_memo_sbe_v1_6_size_of.execution_report_pending_cancel_message(buffer, offset)
    local range = buffer(offset, length)
    local display = memx_equities_memo_sbe_v1_6_display.execution_report_pending_cancel_message(buffer, packet, parent)
    parent = parent:add(memx_equities_memo_sbe_v1_6.fields.execution_report_pending_cancel_message, range, display)
  end

  return memx_equities_memo_sbe_v1_6_dissect.execution_report_pending_cancel_message_fields(buffer, offset, packet, parent)
end

-- Size: Trd Matching Id
memx_equities_memo_sbe_v1_6_size_of.trd_matching_id = 8

-- Display: Trd Matching Id
memx_equities_memo_sbe_v1_6_display.trd_matching_id = function(value)
  return "Trd Matching Id: "..value
end

-- Dissect: Trd Matching Id
memx_equities_memo_sbe_v1_6_dissect.trd_matching_id = function(buffer, offset, packet, parent)
  local length = memx_equities_memo_sbe_v1_6_size_of.trd_matching_id
  local range = buffer(offset, length)
  local value = range:uint64()
  local display = memx_equities_memo_sbe_v1_6_display.trd_matching_id(value, buffer, offset, packet, parent)

  parent:add(memx_equities_memo_sbe_v1_6.fields.trd_matching_id, range, value, display)

  return offset + length, value
end

-- Size: Last Mkt
memx_equities_memo_sbe_v1_6_size_of.last_mkt = 1

-- Display: Last Mkt
memx_equities_memo_sbe_v1_6_display.last_mkt = function(value)
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
  if value == " " then
    return "Last Mkt: Null Value (<whitespace>)"
  end

  return "Last Mkt: Unknown("..value..")"
end

-- Dissect: Last Mkt
memx_equities_memo_sbe_v1_6_dissect.last_mkt = function(buffer, offset, packet, parent)
  local length = memx_equities_memo_sbe_v1_6_size_of.last_mkt
  local range = buffer(offset, length)

  -- parse as byte
  local value = range:uint()

  -- check if value is non zero
  if value ~= 0 then
    value = range:string()
  end

  local display = memx_equities_memo_sbe_v1_6_display.last_mkt(value, buffer, offset, packet, parent)

  parent:add(memx_equities_memo_sbe_v1_6.fields.last_mkt, range, value, display)

  return offset + length, value
end

-- Size: Last Liquidity Ind
memx_equities_memo_sbe_v1_6_size_of.last_liquidity_ind = 1

-- Display: Last Liquidity Ind
memx_equities_memo_sbe_v1_6_display.last_liquidity_ind = function(value)
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
  if value == 5 then
    return "Last Liquidity Ind: Add Hidden (5)"
  end
  if value == 6 then
    return "Last Liquidity Ind: Add Midpoint Peg (6)"
  end
  if value == 7 then
    return "Last Liquidity Ind: Add Displayed Nbbo Improve (7)"
  end
  if value == 8 then
    return "Last Liquidity Ind: Add Displayed Nbbo Join (8)"
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
  if value == 105 then
    return "Last Liquidity Ind: Retail Add Hidden (105)"
  end
  if value == 106 then
    return "Last Liquidity Ind: Retail Add Midpoint Peg (106)"
  end
  if value == 107 then
    return "Last Liquidity Ind: Retail Add Displayed Nbbo Improve (107)"
  end
  if value == 108 then
    return "Last Liquidity Ind: Retail Add Displayed Nbbo Join (108)"
  end
  if value == 255 then
    return "Last Liquidity Ind: Null Value (255)"
  end

  return "Last Liquidity Ind: Unknown("..value..")"
end

-- Dissect: Last Liquidity Ind
memx_equities_memo_sbe_v1_6_dissect.last_liquidity_ind = function(buffer, offset, packet, parent)
  local length = memx_equities_memo_sbe_v1_6_size_of.last_liquidity_ind
  local range = buffer(offset, length)
  local value = range:uint()
  local display = memx_equities_memo_sbe_v1_6_display.last_liquidity_ind(value, buffer, offset, packet, parent)

  parent:add(memx_equities_memo_sbe_v1_6.fields.last_liquidity_ind, range, value, display)

  return offset + length, value
end

-- Size: Last Qty
memx_equities_memo_sbe_v1_6_size_of.last_qty = 4

-- Display: Last Qty
memx_equities_memo_sbe_v1_6_display.last_qty = function(value)
  return "Last Qty: "..value
end

-- Dissect: Last Qty
memx_equities_memo_sbe_v1_6_dissect.last_qty = function(buffer, offset, packet, parent)
  local length = memx_equities_memo_sbe_v1_6_size_of.last_qty
  local range = buffer(offset, length)
  local value = range:uint()
  local display = memx_equities_memo_sbe_v1_6_display.last_qty(value, buffer, offset, packet, parent)

  parent:add(memx_equities_memo_sbe_v1_6.fields.last_qty, range, value, display)

  return offset + length, value
end

-- Calculate size of: Execution Report Trade Message
memx_equities_memo_sbe_v1_6_size_of.execution_report_trade_message = function(buffer, offset)
  local index = 0

  index = index + memx_equities_memo_sbe_v1_6_size_of.sending_time

  index = index + memx_equities_memo_sbe_v1_6_size_of.order_id

  index = index + memx_equities_memo_sbe_v1_6_size_of.clordid

  index = index + memx_equities_memo_sbe_v1_6_size_of.exec_id

  index = index + memx_equities_memo_sbe_v1_6_size_of.ord_status

  index = index + memx_equities_memo_sbe_v1_6_size_of.last_qty

  index = index + memx_equities_memo_sbe_v1_6_size_of.last_px

  index = index + memx_equities_memo_sbe_v1_6_size_of.leaves_qty

  index = index + memx_equities_memo_sbe_v1_6_size_of.cum_qty

  index = index + memx_equities_memo_sbe_v1_6_size_of.transact_time

  index = index + memx_equities_memo_sbe_v1_6_size_of.last_liquidity_ind

  index = index + memx_equities_memo_sbe_v1_6_size_of.last_mkt

  index = index + memx_equities_memo_sbe_v1_6_size_of.trd_matching_id

  return index
end

-- Display: Execution Report Trade Message
memx_equities_memo_sbe_v1_6_display.execution_report_trade_message = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Execution Report Trade Message
memx_equities_memo_sbe_v1_6_dissect.execution_report_trade_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Sending Time: 8 Byte Unsigned Fixed Width Integer
  index, sending_time = memx_equities_memo_sbe_v1_6_dissect.sending_time(buffer, index, packet, parent)

  -- Order Id: 8 Byte Unsigned Fixed Width Integer
  index, order_id = memx_equities_memo_sbe_v1_6_dissect.order_id(buffer, index, packet, parent)

  -- ClOrdId: 16 Byte Ascii String
  index, clordid = memx_equities_memo_sbe_v1_6_dissect.clordid(buffer, index, packet, parent)

  -- Exec Id: 8 Byte Unsigned Fixed Width Integer
  index, exec_id = memx_equities_memo_sbe_v1_6_dissect.exec_id(buffer, index, packet, parent)

  -- Ord Status: 1 Byte Unsigned Fixed Width Integer Enum with 10 values
  index, ord_status = memx_equities_memo_sbe_v1_6_dissect.ord_status(buffer, index, packet, parent)

  -- Last Qty: 4 Byte Unsigned Fixed Width Integer
  index, last_qty = memx_equities_memo_sbe_v1_6_dissect.last_qty(buffer, index, packet, parent)

  -- Last Px: 8 Byte Signed Fixed Width Integer
  index, last_px = memx_equities_memo_sbe_v1_6_dissect.last_px(buffer, index, packet, parent)

  -- Leaves Qty: 4 Byte Unsigned Fixed Width Integer
  index, leaves_qty = memx_equities_memo_sbe_v1_6_dissect.leaves_qty(buffer, index, packet, parent)

  -- Cum Qty: 4 Byte Unsigned Fixed Width Integer
  index, cum_qty = memx_equities_memo_sbe_v1_6_dissect.cum_qty(buffer, index, packet, parent)

  -- Transact Time: 8 Byte Unsigned Fixed Width Integer
  index, transact_time = memx_equities_memo_sbe_v1_6_dissect.transact_time(buffer, index, packet, parent)

  -- Last Liquidity Ind: 1 Byte Unsigned Fixed Width Integer Enum with 17 values
  index, last_liquidity_ind = memx_equities_memo_sbe_v1_6_dissect.last_liquidity_ind(buffer, index, packet, parent)

  -- Last Mkt: 1 Byte Ascii String Enum with 17 values
  index, last_mkt = memx_equities_memo_sbe_v1_6_dissect.last_mkt(buffer, index, packet, parent)

  -- Trd Matching Id: 8 Byte Unsigned Fixed Width Integer
  index, trd_matching_id = memx_equities_memo_sbe_v1_6_dissect.trd_matching_id(buffer, index, packet, parent)

  return index
end

-- Dissect: Execution Report Trade Message
memx_equities_memo_sbe_v1_6_dissect.execution_report_trade_message = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.execution_report_trade_message then
    local length = memx_equities_memo_sbe_v1_6_size_of.execution_report_trade_message(buffer, offset)
    local range = buffer(offset, length)
    local display = memx_equities_memo_sbe_v1_6_display.execution_report_trade_message(buffer, packet, parent)
    parent = parent:add(memx_equities_memo_sbe_v1_6.fields.execution_report_trade_message, range, display)
  end

  return memx_equities_memo_sbe_v1_6_dissect.execution_report_trade_message_fields(buffer, offset, packet, parent)
end

-- Size: Order Reject Reason
memx_equities_memo_sbe_v1_6_size_of.order_reject_reason = 1

-- Display: Order Reject Reason
memx_equities_memo_sbe_v1_6_display.order_reject_reason = function(value)
  if value == 0 then
    return "Order Reject Reason: Other (0)"
  end
  if value == 1 then
    return "Order Reject Reason: Missing Symbol (1)"
  end
  if value == 2 then
    return "Order Reject Reason: Missing Locate (2)"
  end
  if value == 3 then
    return "Order Reject Reason: Missing Cl Ord Id (3)"
  end
  if value == 4 then
    return "Order Reject Reason: Missing Side (4)"
  end
  if value == 5 then
    return "Order Reject Reason: Missing Order Quantity (5)"
  end
  if value == 6 then
    return "Order Reject Reason: Missing Order Type (6)"
  end
  if value == 7 then
    return "Order Reject Reason: Missing Time In Force (7)"
  end
  if value == 8 then
    return "Order Reject Reason: Missing Order Capacity (8)"
  end
  if value == 9 then
    return "Order Reject Reason: Missing Exec Inst (9)"
  end
  if value == 10 then
    return "Order Reject Reason: Missing Limit Price (10)"
  end
  if value == 11 then
    return "Order Reject Reason: Missing Max Floor (11)"
  end
  if value == 12 then
    return "Order Reject Reason: Missing Reserve Replenish Amount Type (12)"
  end
  if value == 13 then
    return "Order Reject Reason: Missing Reserve Replenish Time Type (13)"
  end
  if value == 14 then
    return "Order Reject Reason: Missing Random Replenish Value (14)"
  end
  if value == 15 then
    return "Order Reject Reason: Missing Reprice Frequency Type (15)"
  end
  if value == 16 then
    return "Order Reject Reason: Missing Reprice Behavior Type (16)"
  end
  if value == 17 then
    return "Order Reject Reason: Missing Customer Capacity Type (17)"
  end
  if value == 18 then
    return "Order Reject Reason: Missing Expire Time (18)"
  end
  if value == 19 then
    return "Order Reject Reason: Missing Peg Type (19)"
  end
  if value == 20 then
    return "Order Reject Reason: Invalid Modifier For Order Type (20)"
  end
  if value == 21 then
    return "Order Reject Reason: Invalid Modifiers Combination (21)"
  end
  if value == 22 then
    return "Order Reject Reason: Invalid Trading Session For Order Type (22)"
  end
  if value == 23 then
    return "Order Reject Reason: Invalid Time In Force For Order Type (23)"
  end
  if value == 24 then
    return "Order Reject Reason: Invalid Min Quantity (24)"
  end
  if value == 25 then
    return "Order Reject Reason: Invalid Order Quantity (25)"
  end
  if value == 26 then
    return "Order Reject Reason: Invalid Side (26)"
  end
  if value == 27 then
    return "Order Reject Reason: Invalid Order Type (27)"
  end
  if value == 28 then
    return "Order Reject Reason: Invalid Time In Force (28)"
  end
  if value == 29 then
    return "Order Reject Reason: Invalid Order Capacity (29)"
  end
  if value == 30 then
    return "Order Reject Reason: Invalid Customer Capacity (30)"
  end
  if value == 31 then
    return "Order Reject Reason: Invalid Symbol (31)"
  end
  if value == 32 then
    return "Order Reject Reason: Invalid Expire Time (32)"
  end
  if value == 33 then
    return "Order Reject Reason: Invalid Limit Price (33)"
  end
  if value == 34 then
    return "Order Reject Reason: Invalid Limit Price Increment (34)"
  end
  if value == 35 then
    return "Order Reject Reason: Invalid Max Floor (35)"
  end
  if value == 36 then
    return "Order Reject Reason: Invalid Random Replenish Value (36)"
  end
  if value == 37 then
    return "Order Reject Reason: Invalid Random Replenish Value For Reserve Type (37)"
  end
  if value == 38 then
    return "Order Reject Reason: Invalid Reserve Replenish Amount Type (38)"
  end
  if value == 39 then
    return "Order Reject Reason: Invalid Reserve Replenish Time Type (39)"
  end
  if value == 40 then
    return "Order Reject Reason: Invalid Reprice Frequency Type (40)"
  end
  if value == 41 then
    return "Order Reject Reason: Invalid Reprice Behavior Type (41)"
  end
  if value == 42 then
    return "Order Reject Reason: Invalid Reprice Behavior For Reprice Frequency (42)"
  end
  if value == 43 then
    return "Order Reject Reason: Invalid Mpid Value (43)"
  end
  if value == 44 then
    return "Order Reject Reason: Invalid Peg Type (44)"
  end
  if value == 45 then
    return "Order Reject Reason: Invalid Modifier For Peg Type (45)"
  end
  if value == 46 then
    return "Order Reject Reason: Invalid Locate (46)"
  end
  if value == 47 then
    return "Order Reject Reason: Symbol Halted Or Paused (47)"
  end
  if value == 48 then
    return "Order Reject Reason: Exchange Closed (48)"
  end
  if value == 49 then
    return "Order Reject Reason: Duplicate Cl Ord Id (49)"
  end
  if value == 50 then
    return "Order Reject Reason: Order Size Exceeds Limit (50)"
  end
  if value == 51 then
    return "Order Reject Reason: Order Notional Exceeds Limit (51)"
  end
  if value == 52 then
    return "Order Reject Reason: Block Iso Risk Rule Violated (52)"
  end
  if value == 53 then
    return "Order Reject Reason: Block Session Risk Rule Violated (53)"
  end
  if value == 54 then
    return "Order Reject Reason: Block Sell Short Risk Rule Violated (54)"
  end
  if value == 55 then
    return "Order Reject Reason: Block Non Test Symbols Risk Rule Violated (55)"
  end
  if value == 56 then
    return "Order Reject Reason: Max Shares Per Order Risk Rule Breach (56)"
  end
  if value == 57 then
    return "Order Reject Reason: Max Notional Value Per Order Risk Rule Breach (57)"
  end
  if value == 58 then
    return "Order Reject Reason: Price Percent Collar Risk Rule Violated (58)"
  end
  if value == 59 then
    return "Order Reject Reason: Price Value Collar Risk Rule Violated (59)"
  end
  if value == 60 then
    return "Order Reject Reason: Max Adv Percent Per Order Risk Rule Breach (60)"
  end
  if value == 61 then
    return "Order Reject Reason: Daily Gross Notional Exposure Risk Rule Breach (61)"
  end
  if value == 62 then
    return "Order Reject Reason: Daily Net Notional Exposure Risk Rule Breach (62)"
  end
  if value == 63 then
    return "Order Reject Reason: Max Num Duplicate Orders Risk Rule Breach (63)"
  end
  if value == 64 then
    return "Order Reject Reason: Max Order Rate Risk Rule Breach (64)"
  end
  if value == 65 then
    return "Order Reject Reason: Restricted Security Risk Rule Violated (65)"
  end
  if value == 66 then
    return "Order Reject Reason: Hard To Borrow Security Risk Rule Violated (66)"
  end
  if value == 67 then
    return "Order Reject Reason: Invalid Self Trade Prevention Configuration (67)"
  end
  if value == 68 then
    return "Order Reject Reason: Invalid Self Trade Prevention Type (68)"
  end
  if value == 69 then
    return "Order Reject Reason: Invalid Risk Group Id (69)"
  end
  if value == 70 then
    return "Order Reject Reason: Firm Disabled (70)"
  end
  if value == 71 then
    return "Order Reject Reason: Mpid Disabled (71)"
  end
  if value == 72 then
    return "Order Reject Reason: Account Disabled (72)"
  end
  if value == 73 then
    return "Order Reject Reason: No Nbbo Available (73)"
  end
  if value == 74 then
    return "Order Reject Reason: Cannot Trade Non Test Symbol (74)"
  end
  if value == 75 then
    return "Order Reject Reason: Missing Firm (75)"
  end
  if value == 76 then
    return "Order Reject Reason: Missing Account (76)"
  end
  if value == 77 then
    return "Order Reject Reason: Missing Mpid (77)"
  end
  if value == 78 then
    return "Order Reject Reason: Missing Risk Group (78)"
  end
  if value == 79 then
    return "Order Reject Reason: Daily Market Order Gross Notional Exposure Risk Rule Breach (79)"
  end
  if value == 80 then
    return "Order Reject Reason: Daily Market Order Net Notional Exposure Risk Rule Breach (80)"
  end
  if value == 81 then
    return "Order Reject Reason: Missing Disp Method Type (81)"
  end
  if value == 82 then
    return "Order Reject Reason: Missing Firm Risk Setting (82)"
  end
  if value == 83 then
    return "Order Reject Reason: Invalid Account Mpid To Firm (83)"
  end
  if value == 84 then
    return "Order Reject Reason: Invalid Peg Offset Value (84)"
  end
  if value == 85 then
    return "Order Reject Reason: Invalid Disp Method Type (85)"
  end
  if value == 86 then
    return "Order Reject Reason: Missing Cancel Group Id (86)"
  end
  if value == 87 then
    return "Order Reject Reason: Invalid Cancel Group Id (87)"
  end
  if value == 88 then
    return "Order Reject Reason: Missing Stp Group Id (88)"
  end
  if value == 89 then
    return "Order Reject Reason: Invalid Stp Group Id (89)"
  end
  if value == 255 then
    return "Order Reject Reason: Null Value (255)"
  end

  return "Order Reject Reason: Unknown("..value..")"
end

-- Dissect: Order Reject Reason
memx_equities_memo_sbe_v1_6_dissect.order_reject_reason = function(buffer, offset, packet, parent)
  local length = memx_equities_memo_sbe_v1_6_size_of.order_reject_reason
  local range = buffer(offset, length)
  local value = range:uint()
  local display = memx_equities_memo_sbe_v1_6_display.order_reject_reason(value, buffer, offset, packet, parent)

  parent:add(memx_equities_memo_sbe_v1_6.fields.order_reject_reason, range, value, display)

  return offset + length, value
end

-- Calculate size of: Execution Report Rejected Message
memx_equities_memo_sbe_v1_6_size_of.execution_report_rejected_message = function(buffer, offset)
  local index = 0

  index = index + memx_equities_memo_sbe_v1_6_size_of.sending_time

  index = index + memx_equities_memo_sbe_v1_6_size_of.clordid

  index = index + memx_equities_memo_sbe_v1_6_size_of.exec_id

  index = index + memx_equities_memo_sbe_v1_6_size_of.ord_status

  index = index + memx_equities_memo_sbe_v1_6_size_of.symbol

  index = index + memx_equities_memo_sbe_v1_6_size_of.symbol_sfx

  index = index + memx_equities_memo_sbe_v1_6_size_of.leaves_qty

  index = index + memx_equities_memo_sbe_v1_6_size_of.cum_qty

  index = index + memx_equities_memo_sbe_v1_6_size_of.order_reject_reason

  return index
end

-- Display: Execution Report Rejected Message
memx_equities_memo_sbe_v1_6_display.execution_report_rejected_message = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Execution Report Rejected Message
memx_equities_memo_sbe_v1_6_dissect.execution_report_rejected_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Sending Time: 8 Byte Unsigned Fixed Width Integer
  index, sending_time = memx_equities_memo_sbe_v1_6_dissect.sending_time(buffer, index, packet, parent)

  -- ClOrdId: 16 Byte Ascii String
  index, clordid = memx_equities_memo_sbe_v1_6_dissect.clordid(buffer, index, packet, parent)

  -- Exec Id: 8 Byte Unsigned Fixed Width Integer
  index, exec_id = memx_equities_memo_sbe_v1_6_dissect.exec_id(buffer, index, packet, parent)

  -- Ord Status: 1 Byte Unsigned Fixed Width Integer Enum with 10 values
  index, ord_status = memx_equities_memo_sbe_v1_6_dissect.ord_status(buffer, index, packet, parent)

  -- Symbol: 6 Byte Ascii String
  index, symbol = memx_equities_memo_sbe_v1_6_dissect.symbol(buffer, index, packet, parent)

  -- Symbol Sfx: 6 Byte Ascii String
  index, symbol_sfx = memx_equities_memo_sbe_v1_6_dissect.symbol_sfx(buffer, index, packet, parent)

  -- Leaves Qty: 4 Byte Unsigned Fixed Width Integer
  index, leaves_qty = memx_equities_memo_sbe_v1_6_dissect.leaves_qty(buffer, index, packet, parent)

  -- Cum Qty: 4 Byte Unsigned Fixed Width Integer
  index, cum_qty = memx_equities_memo_sbe_v1_6_dissect.cum_qty(buffer, index, packet, parent)

  -- Order Reject Reason: 1 Byte Unsigned Fixed Width Integer Enum with 91 values
  index, order_reject_reason = memx_equities_memo_sbe_v1_6_dissect.order_reject_reason(buffer, index, packet, parent)

  return index
end

-- Dissect: Execution Report Rejected Message
memx_equities_memo_sbe_v1_6_dissect.execution_report_rejected_message = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.execution_report_rejected_message then
    local length = memx_equities_memo_sbe_v1_6_size_of.execution_report_rejected_message(buffer, offset)
    local range = buffer(offset, length)
    local display = memx_equities_memo_sbe_v1_6_display.execution_report_rejected_message(buffer, packet, parent)
    parent = parent:add(memx_equities_memo_sbe_v1_6.fields.execution_report_rejected_message, range, display)
  end

  return memx_equities_memo_sbe_v1_6_dissect.execution_report_rejected_message_fields(buffer, offset, packet, parent)
end

-- Size: Risk Group Id
memx_equities_memo_sbe_v1_6_size_of.risk_group_id = 2

-- Display: Risk Group Id
memx_equities_memo_sbe_v1_6_display.risk_group_id = function(value)
  -- Check if field has value
  if value == 65535 then
    return "Risk Group Id: No Value"
  end

  return "Risk Group Id: "..value
end

-- Dissect: Risk Group Id
memx_equities_memo_sbe_v1_6_dissect.risk_group_id = function(buffer, offset, packet, parent)
  local length = memx_equities_memo_sbe_v1_6_size_of.risk_group_id
  local range = buffer(offset, length)
  local value = range:uint()
  local display = memx_equities_memo_sbe_v1_6_display.risk_group_id(value, buffer, offset, packet, parent)

  parent:add(memx_equities_memo_sbe_v1_6.fields.risk_group_id, range, value, display)

  return offset + length, value
end

-- Size: Self Trade Prevention
memx_equities_memo_sbe_v1_6_size_of.self_trade_prevention = 1

-- Display: Self Trade Prevention
memx_equities_memo_sbe_v1_6_display.self_trade_prevention = function(value)
  if value == 1 then
    return "Self Trade Prevention: Cancel Newest (1)"
  end
  if value == 2 then
    return "Self Trade Prevention: Cancel Oldest (2)"
  end
  if value == 3 then
    return "Self Trade Prevention: Decrement And Cancel (3)"
  end
  if value == 4 then
    return "Self Trade Prevention: Cancel Both (4)"
  end
  if value == 5 then
    return "Self Trade Prevention: Cancel Smallest (5)"
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
memx_equities_memo_sbe_v1_6_dissect.self_trade_prevention = function(buffer, offset, packet, parent)
  local length = memx_equities_memo_sbe_v1_6_size_of.self_trade_prevention
  local range = buffer(offset, length)
  local value = range:uint()
  local display = memx_equities_memo_sbe_v1_6_display.self_trade_prevention(value, buffer, offset, packet, parent)

  parent:add(memx_equities_memo_sbe_v1_6.fields.self_trade_prevention, range, value, display)

  return offset + length, value
end

-- Size: Stp Group Id
memx_equities_memo_sbe_v1_6_size_of.stp_group_id = 2

-- Display: Stp Group Id
memx_equities_memo_sbe_v1_6_display.stp_group_id = function(value)
  -- Check if field has value
  if value == 65535 then
    return "Stp Group Id: No Value"
  end

  return "Stp Group Id: "..value
end

-- Dissect: Stp Group Id
memx_equities_memo_sbe_v1_6_dissect.stp_group_id = function(buffer, offset, packet, parent)
  local length = memx_equities_memo_sbe_v1_6_size_of.stp_group_id
  local range = buffer(offset, length)
  local value = range:uint()
  local display = memx_equities_memo_sbe_v1_6_display.stp_group_id(value, buffer, offset, packet, parent)

  parent:add(memx_equities_memo_sbe_v1_6.fields.stp_group_id, range, value, display)

  return offset + length, value
end

-- Size: Reprice Behavior
memx_equities_memo_sbe_v1_6_size_of.reprice_behavior = 1

-- Display: Reprice Behavior
memx_equities_memo_sbe_v1_6_display.reprice_behavior = function(value)
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
memx_equities_memo_sbe_v1_6_dissect.reprice_behavior = function(buffer, offset, packet, parent)
  local length = memx_equities_memo_sbe_v1_6_size_of.reprice_behavior
  local range = buffer(offset, length)
  local value = range:uint()
  local display = memx_equities_memo_sbe_v1_6_display.reprice_behavior(value, buffer, offset, packet, parent)

  parent:add(memx_equities_memo_sbe_v1_6.fields.reprice_behavior, range, value, display)

  return offset + length, value
end

-- Size: Reprice Frequency
memx_equities_memo_sbe_v1_6_size_of.reprice_frequency = 1

-- Display: Reprice Frequency
memx_equities_memo_sbe_v1_6_display.reprice_frequency = function(value)
  if value == 1 then
    return "Reprice Frequency: Single Reprice (1)"
  end
  if value == 2 then
    return "Reprice Frequency: Continuous Reprice (2)"
  end
  if value == 3 then
    return "Reprice Frequency: None (3)"
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
memx_equities_memo_sbe_v1_6_dissect.reprice_frequency = function(buffer, offset, packet, parent)
  local length = memx_equities_memo_sbe_v1_6_size_of.reprice_frequency
  local range = buffer(offset, length)
  local value = range:uint()
  local display = memx_equities_memo_sbe_v1_6_display.reprice_frequency(value, buffer, offset, packet, parent)

  parent:add(memx_equities_memo_sbe_v1_6.fields.reprice_frequency, range, value, display)

  return offset + length, value
end

-- Size: Display Min Incr
memx_equities_memo_sbe_v1_6_size_of.display_min_incr = 4

-- Display: Display Min Incr
memx_equities_memo_sbe_v1_6_display.display_min_incr = function(value)
  -- Check if field has value
  if value == 4294967295 then
    return "Display Min Incr: No Value"
  end

  return "Display Min Incr: "..value
end

-- Dissect: Display Min Incr
memx_equities_memo_sbe_v1_6_dissect.display_min_incr = function(buffer, offset, packet, parent)
  local length = memx_equities_memo_sbe_v1_6_size_of.display_min_incr
  local range = buffer(offset, length)
  local value = range:uint()
  local display = memx_equities_memo_sbe_v1_6_display.display_min_incr(value, buffer, offset, packet, parent)

  parent:add(memx_equities_memo_sbe_v1_6.fields.display_min_incr, range, value, display)

  return offset + length, value
end

-- Size: Reserve Replenish Timing
memx_equities_memo_sbe_v1_6_size_of.reserve_replenish_timing = 1

-- Display: Reserve Replenish Timing
memx_equities_memo_sbe_v1_6_display.reserve_replenish_timing = function(value)
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
memx_equities_memo_sbe_v1_6_dissect.reserve_replenish_timing = function(buffer, offset, packet, parent)
  local length = memx_equities_memo_sbe_v1_6_size_of.reserve_replenish_timing
  local range = buffer(offset, length)
  local value = range:uint()
  local display = memx_equities_memo_sbe_v1_6_display.reserve_replenish_timing(value, buffer, offset, packet, parent)

  parent:add(memx_equities_memo_sbe_v1_6.fields.reserve_replenish_timing, range, value, display)

  return offset + length, value
end

-- Size: Display Method
memx_equities_memo_sbe_v1_6_size_of.display_method = 1

-- Display: Display Method
memx_equities_memo_sbe_v1_6_display.display_method = function(value)
  if value == 1 then
    return "Display Method: Initial (1)"
  end
  if value == 2 then
    return "Display Method: Random (2)"
  end
  if value == 3 then
    return "Display Method: Undisclosed (3)"
  end
  if value == 255 then
    return "Display Method: Null Value (255)"
  end
  if value == 255 then
    return "Display Method: No Value"
  end

  return "Display Method: Unknown("..value..")"
end

-- Dissect: Display Method
memx_equities_memo_sbe_v1_6_dissect.display_method = function(buffer, offset, packet, parent)
  local length = memx_equities_memo_sbe_v1_6_size_of.display_method
  local range = buffer(offset, length)
  local value = range:uint()
  local display = memx_equities_memo_sbe_v1_6_display.display_method(value, buffer, offset, packet, parent)

  parent:add(memx_equities_memo_sbe_v1_6.fields.display_method, range, value, display)

  return offset + length, value
end

-- Size: Min Qty
memx_equities_memo_sbe_v1_6_size_of.min_qty = 4

-- Display: Min Qty
memx_equities_memo_sbe_v1_6_display.min_qty = function(value)
  -- Check if field has value
  if value == 4294967295 then
    return "Min Qty: No Value"
  end

  return "Min Qty: "..value
end

-- Dissect: Min Qty
memx_equities_memo_sbe_v1_6_dissect.min_qty = function(buffer, offset, packet, parent)
  local length = memx_equities_memo_sbe_v1_6_size_of.min_qty
  local range = buffer(offset, length)
  local value = range:uint()
  local display = memx_equities_memo_sbe_v1_6_display.min_qty(value, buffer, offset, packet, parent)

  parent:add(memx_equities_memo_sbe_v1_6.fields.min_qty, range, value, display)

  return offset + length, value
end

-- Size: Expire Time
memx_equities_memo_sbe_v1_6_size_of.expire_time = 8

-- Display: Expire Time
memx_equities_memo_sbe_v1_6_display.expire_time = function(value)
  -- Check if field has value
  if value == UInt64(0xFFFFFFFF, 0xFFFFFFFF) then
    return "Expire Time: No Value"
  end

  return "Expire Time: "..value
end

-- Dissect: Expire Time
memx_equities_memo_sbe_v1_6_dissect.expire_time = function(buffer, offset, packet, parent)
  local length = memx_equities_memo_sbe_v1_6_size_of.expire_time
  local range = buffer(offset, length)
  local value = range:uint64()
  local display = memx_equities_memo_sbe_v1_6_display.expire_time(value, buffer, offset, packet, parent)

  parent:add(memx_equities_memo_sbe_v1_6.fields.expire_time, range, value, display)

  return offset + length, value
end

-- Size: Peg Price Type
memx_equities_memo_sbe_v1_6_size_of.peg_price_type = 1

-- Display: Peg Price Type
memx_equities_memo_sbe_v1_6_display.peg_price_type = function(value)
  if value == 1 then
    return "Peg Price Type: Mid Price Peg (1)"
  end
  if value == 2 then
    return "Peg Price Type: Primary Peg (2)"
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
memx_equities_memo_sbe_v1_6_dissect.peg_price_type = function(buffer, offset, packet, parent)
  local length = memx_equities_memo_sbe_v1_6_size_of.peg_price_type
  local range = buffer(offset, length)
  local value = range:uint()
  local display = memx_equities_memo_sbe_v1_6_display.peg_price_type(value, buffer, offset, packet, parent)

  parent:add(memx_equities_memo_sbe_v1_6.fields.peg_price_type, range, value, display)

  return offset + length, value
end

-- Size: Peg Offset Value
memx_equities_memo_sbe_v1_6_size_of.peg_offset_value = 8

-- Display: Peg Offset Value
memx_equities_memo_sbe_v1_6_display.peg_offset_value = function(raw, value)
  -- Check null sentinel value
  if raw == Int64(0x00000000, 0x80000000) then
    return "Peg Offset Value: No Value"
  end

  return "Peg Offset Value: "..value
end

-- Translate: Peg Offset Value
translate.peg_offset_value = function(raw)
  -- Check null sentinel value
  if raw == Int64(0x00000000, 0x80000000) then
    return 0/0
  end

  return raw:tonumber()/1000000
end

-- Dissect: Peg Offset Value
memx_equities_memo_sbe_v1_6_dissect.peg_offset_value = function(buffer, offset, packet, parent)
  local length = memx_equities_memo_sbe_v1_6_size_of.peg_offset_value
  local range = buffer(offset, length)
  local raw = range:int64()
  local value = translate.peg_offset_value(raw)
  local display = memx_equities_memo_sbe_v1_6_display.peg_offset_value(raw, value, buffer, offset, packet, parent)

  parent:add(memx_equities_memo_sbe_v1_6.fields.peg_offset_value, range, value, display)

  return offset + length, value
end

-- Size: Exec Inst
memx_equities_memo_sbe_v1_6_size_of.exec_inst = 2

-- Display: Exec Inst
memx_equities_memo_sbe_v1_6_display.exec_inst = function(buffer, packet, parent)
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
memx_equities_memo_sbe_v1_6_dissect.exec_inst_bits = function(buffer, offset, packet, parent)

  -- Reserved 13: 13 Bit
  parent:add(memx_equities_memo_sbe_v1_6.fields.reserved_13, buffer(offset, 2))

  -- External Routing Not Allowed: 1 Bit
  parent:add(memx_equities_memo_sbe_v1_6.fields.external_routing_not_allowed, buffer(offset, 2))

  -- Intermarket Sweep: 1 Bit
  parent:add(memx_equities_memo_sbe_v1_6.fields.intermarket_sweep, buffer(offset, 2))

  -- Participate Do Not Initiate: 1 Bit
  parent:add(memx_equities_memo_sbe_v1_6.fields.participate_do_not_initiate, buffer(offset, 2))
end

-- Dissect: Exec Inst
memx_equities_memo_sbe_v1_6_dissect.exec_inst = function(buffer, offset, packet, parent)
  local size = 2
  local range = buffer(offset, size)
  local display = memx_equities_memo_sbe_v1_6_display.exec_inst(range, packet, parent)
  local element = parent:add(memx_equities_memo_sbe_v1_6.fields.exec_inst, range, display)

  if show.exec_inst then
    memx_equities_memo_sbe_v1_6_dissect.exec_inst_bits(buffer, offset, packet, element)
  end

  return offset + 2, range
end

-- Size: Cust Order Capacity
memx_equities_memo_sbe_v1_6_size_of.cust_order_capacity = 1

-- Display: Cust Order Capacity
memx_equities_memo_sbe_v1_6_display.cust_order_capacity = function(value)
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
memx_equities_memo_sbe_v1_6_dissect.cust_order_capacity = function(buffer, offset, packet, parent)
  local length = memx_equities_memo_sbe_v1_6_size_of.cust_order_capacity
  local range = buffer(offset, length)
  local value = range:uint()
  local display = memx_equities_memo_sbe_v1_6_display.cust_order_capacity(value, buffer, offset, packet, parent)

  parent:add(memx_equities_memo_sbe_v1_6.fields.cust_order_capacity, range, value, display)

  return offset + length, value
end

-- Size: Order Capacity
memx_equities_memo_sbe_v1_6_size_of.order_capacity = 1

-- Display: Order Capacity
memx_equities_memo_sbe_v1_6_display.order_capacity = function(value)
  if value == 1 then
    return "Order Capacity: Agency (1)"
  end
  if value == 2 then
    return "Order Capacity: Principal (2)"
  end
  if value == 3 then
    return "Order Capacity: Riskless Principal (3)"
  end
  if value == 255 then
    return "Order Capacity: Null Value (255)"
  end

  return "Order Capacity: Unknown("..value..")"
end

-- Dissect: Order Capacity
memx_equities_memo_sbe_v1_6_dissect.order_capacity = function(buffer, offset, packet, parent)
  local length = memx_equities_memo_sbe_v1_6_size_of.order_capacity
  local range = buffer(offset, length)
  local value = range:uint()
  local display = memx_equities_memo_sbe_v1_6_display.order_capacity(value, buffer, offset, packet, parent)

  parent:add(memx_equities_memo_sbe_v1_6.fields.order_capacity, range, value, display)

  return offset + length, value
end

-- Size: Time In Force
memx_equities_memo_sbe_v1_6_size_of.time_in_force = 1

-- Display: Time In Force
memx_equities_memo_sbe_v1_6_display.time_in_force = function(value)
  if value == 1 then
    return "Time In Force: Day (1)"
  end
  if value == 2 then
    return "Time In Force: Immediate Or Cancel (2)"
  end
  if value == 3 then
    return "Time In Force: Fill Or Kill (3)"
  end
  if value == 4 then
    return "Time In Force: Good For Time (4)"
  end
  if value == 5 then
    return "Time In Force: Regular Hours Only (5)"
  end
  if value == 255 then
    return "Time In Force: Null Value (255)"
  end

  return "Time In Force: Unknown("..value..")"
end

-- Dissect: Time In Force
memx_equities_memo_sbe_v1_6_dissect.time_in_force = function(buffer, offset, packet, parent)
  local length = memx_equities_memo_sbe_v1_6_size_of.time_in_force
  local range = buffer(offset, length)
  local value = range:uint()
  local display = memx_equities_memo_sbe_v1_6_display.time_in_force(value, buffer, offset, packet, parent)

  parent:add(memx_equities_memo_sbe_v1_6.fields.time_in_force, range, value, display)

  return offset + length, value
end

-- Size: Mpid
memx_equities_memo_sbe_v1_6_size_of.mpid = 4

-- Display: Mpid
memx_equities_memo_sbe_v1_6_display.mpid = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Mpid: No Value"
  end

  return "Mpid: "..value
end

-- Dissect: Mpid
memx_equities_memo_sbe_v1_6_dissect.mpid = function(buffer, offset, packet, parent)
  local length = memx_equities_memo_sbe_v1_6_size_of.mpid
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

  local display = memx_equities_memo_sbe_v1_6_display.mpid(value, buffer, offset, packet, parent)

  parent:add(memx_equities_memo_sbe_v1_6.fields.mpid, range, value, display)

  return offset + length, value
end

-- Calculate size of: Execution Report New Message
memx_equities_memo_sbe_v1_6_size_of.execution_report_new_message = function(buffer, offset)
  local index = 0

  index = index + memx_equities_memo_sbe_v1_6_size_of.sending_time

  index = index + memx_equities_memo_sbe_v1_6_size_of.order_id

  index = index + memx_equities_memo_sbe_v1_6_size_of.clordid

  index = index + memx_equities_memo_sbe_v1_6_size_of.exec_id

  index = index + memx_equities_memo_sbe_v1_6_size_of.mpid

  index = index + memx_equities_memo_sbe_v1_6_size_of.ord_status

  index = index + memx_equities_memo_sbe_v1_6_size_of.symbol

  index = index + memx_equities_memo_sbe_v1_6_size_of.symbol_sfx

  index = index + memx_equities_memo_sbe_v1_6_size_of.side

  index = index + memx_equities_memo_sbe_v1_6_size_of.ord_type

  index = index + memx_equities_memo_sbe_v1_6_size_of.order_qty

  index = index + memx_equities_memo_sbe_v1_6_size_of.price

  index = index + memx_equities_memo_sbe_v1_6_size_of.time_in_force

  index = index + memx_equities_memo_sbe_v1_6_size_of.order_capacity

  index = index + memx_equities_memo_sbe_v1_6_size_of.cust_order_capacity

  index = index + memx_equities_memo_sbe_v1_6_size_of.exec_inst

  index = index + memx_equities_memo_sbe_v1_6_size_of.peg_offset_value

  index = index + memx_equities_memo_sbe_v1_6_size_of.peg_price_type

  index = index + memx_equities_memo_sbe_v1_6_size_of.expire_time

  index = index + memx_equities_memo_sbe_v1_6_size_of.min_qty

  index = index + memx_equities_memo_sbe_v1_6_size_of.display_qty

  index = index + memx_equities_memo_sbe_v1_6_size_of.display_method

  index = index + memx_equities_memo_sbe_v1_6_size_of.reserve_replenish_timing

  index = index + memx_equities_memo_sbe_v1_6_size_of.display_min_incr

  index = index + memx_equities_memo_sbe_v1_6_size_of.locate_reqd

  index = index + memx_equities_memo_sbe_v1_6_size_of.reprice_frequency

  index = index + memx_equities_memo_sbe_v1_6_size_of.reprice_behavior

  index = index + memx_equities_memo_sbe_v1_6_size_of.cancel_group_id

  index = index + memx_equities_memo_sbe_v1_6_size_of.stp_group_id

  index = index + memx_equities_memo_sbe_v1_6_size_of.self_trade_prevention

  index = index + memx_equities_memo_sbe_v1_6_size_of.risk_group_id

  index = index + memx_equities_memo_sbe_v1_6_size_of.leaves_qty

  index = index + memx_equities_memo_sbe_v1_6_size_of.cum_qty

  index = index + memx_equities_memo_sbe_v1_6_size_of.transact_time

  return index
end

-- Display: Execution Report New Message
memx_equities_memo_sbe_v1_6_display.execution_report_new_message = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Execution Report New Message
memx_equities_memo_sbe_v1_6_dissect.execution_report_new_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Sending Time: 8 Byte Unsigned Fixed Width Integer
  index, sending_time = memx_equities_memo_sbe_v1_6_dissect.sending_time(buffer, index, packet, parent)

  -- Order Id: 8 Byte Unsigned Fixed Width Integer
  index, order_id = memx_equities_memo_sbe_v1_6_dissect.order_id(buffer, index, packet, parent)

  -- ClOrdId: 16 Byte Ascii String
  index, clordid = memx_equities_memo_sbe_v1_6_dissect.clordid(buffer, index, packet, parent)

  -- Exec Id: 8 Byte Unsigned Fixed Width Integer
  index, exec_id = memx_equities_memo_sbe_v1_6_dissect.exec_id(buffer, index, packet, parent)

  -- Mpid: 4 Byte Ascii String
  index, mpid = memx_equities_memo_sbe_v1_6_dissect.mpid(buffer, index, packet, parent)

  -- Ord Status: 1 Byte Unsigned Fixed Width Integer Enum with 10 values
  index, ord_status = memx_equities_memo_sbe_v1_6_dissect.ord_status(buffer, index, packet, parent)

  -- Symbol: 6 Byte Ascii String
  index, symbol = memx_equities_memo_sbe_v1_6_dissect.symbol(buffer, index, packet, parent)

  -- Symbol Sfx: 6 Byte Ascii String
  index, symbol_sfx = memx_equities_memo_sbe_v1_6_dissect.symbol_sfx(buffer, index, packet, parent)

  -- Side: 1 Byte Unsigned Fixed Width Integer Enum with 5 values
  index, side = memx_equities_memo_sbe_v1_6_dissect.side(buffer, index, packet, parent)

  -- Ord Type: 1 Byte Unsigned Fixed Width Integer Enum with 4 values
  index, ord_type = memx_equities_memo_sbe_v1_6_dissect.ord_type(buffer, index, packet, parent)

  -- Order Qty: 4 Byte Unsigned Fixed Width Integer
  index, order_qty = memx_equities_memo_sbe_v1_6_dissect.order_qty(buffer, index, packet, parent)

  -- Price: 8 Byte Signed Fixed Width Integer Nullable
  index, price = memx_equities_memo_sbe_v1_6_dissect.price(buffer, index, packet, parent)

  -- Time In Force: 1 Byte Unsigned Fixed Width Integer Enum with 6 values
  index, time_in_force = memx_equities_memo_sbe_v1_6_dissect.time_in_force(buffer, index, packet, parent)

  -- Order Capacity: 1 Byte Unsigned Fixed Width Integer Enum with 4 values
  index, order_capacity = memx_equities_memo_sbe_v1_6_dissect.order_capacity(buffer, index, packet, parent)

  -- Cust Order Capacity: 1 Byte Unsigned Fixed Width Integer Enum with 3 values
  index, cust_order_capacity = memx_equities_memo_sbe_v1_6_dissect.cust_order_capacity(buffer, index, packet, parent)

  -- Exec Inst: Struct of 4 fields
  index, exec_inst = memx_equities_memo_sbe_v1_6_dissect.exec_inst(buffer, index, packet, parent)

  -- Peg Offset Value: 8 Byte Signed Fixed Width Integer Nullable
  index, peg_offset_value = memx_equities_memo_sbe_v1_6_dissect.peg_offset_value(buffer, index, packet, parent)

  -- Peg Price Type: 1 Byte Unsigned Fixed Width Integer Enum with 4 values
  index, peg_price_type = memx_equities_memo_sbe_v1_6_dissect.peg_price_type(buffer, index, packet, parent)

  -- Expire Time: 8 Byte Unsigned Fixed Width Integer Nullable
  index, expire_time = memx_equities_memo_sbe_v1_6_dissect.expire_time(buffer, index, packet, parent)

  -- Min Qty: 4 Byte Unsigned Fixed Width Integer Nullable
  index, min_qty = memx_equities_memo_sbe_v1_6_dissect.min_qty(buffer, index, packet, parent)

  -- Display Qty: 4 Byte Unsigned Fixed Width Integer Nullable
  index, display_qty = memx_equities_memo_sbe_v1_6_dissect.display_qty(buffer, index, packet, parent)

  -- Display Method: 1 Byte Unsigned Fixed Width Integer Enum with 5 values
  index, display_method = memx_equities_memo_sbe_v1_6_dissect.display_method(buffer, index, packet, parent)

  -- Reserve Replenish Timing: 1 Byte Unsigned Fixed Width Integer Enum with 4 values
  index, reserve_replenish_timing = memx_equities_memo_sbe_v1_6_dissect.reserve_replenish_timing(buffer, index, packet, parent)

  -- Display Min Incr: 4 Byte Unsigned Fixed Width Integer Nullable
  index, display_min_incr = memx_equities_memo_sbe_v1_6_dissect.display_min_incr(buffer, index, packet, parent)

  -- Locate Reqd: 1 Byte Ascii String Nullable
  index, locate_reqd = memx_equities_memo_sbe_v1_6_dissect.locate_reqd(buffer, index, packet, parent)

  -- Reprice Frequency: 1 Byte Unsigned Fixed Width Integer Enum with 5 values
  index, reprice_frequency = memx_equities_memo_sbe_v1_6_dissect.reprice_frequency(buffer, index, packet, parent)

  -- Reprice Behavior: 1 Byte Unsigned Fixed Width Integer Enum with 4 values
  index, reprice_behavior = memx_equities_memo_sbe_v1_6_dissect.reprice_behavior(buffer, index, packet, parent)

  -- Cancel Group Id: 2 Byte Unsigned Fixed Width Integer Nullable
  index, cancel_group_id = memx_equities_memo_sbe_v1_6_dissect.cancel_group_id(buffer, index, packet, parent)

  -- Stp Group Id: 2 Byte Unsigned Fixed Width Integer Nullable
  index, stp_group_id = memx_equities_memo_sbe_v1_6_dissect.stp_group_id(buffer, index, packet, parent)

  -- Self Trade Prevention: 1 Byte Unsigned Fixed Width Integer Enum with 7 values
  index, self_trade_prevention = memx_equities_memo_sbe_v1_6_dissect.self_trade_prevention(buffer, index, packet, parent)

  -- Risk Group Id: 2 Byte Unsigned Fixed Width Integer Nullable
  index, risk_group_id = memx_equities_memo_sbe_v1_6_dissect.risk_group_id(buffer, index, packet, parent)

  -- Leaves Qty: 4 Byte Unsigned Fixed Width Integer
  index, leaves_qty = memx_equities_memo_sbe_v1_6_dissect.leaves_qty(buffer, index, packet, parent)

  -- Cum Qty: 4 Byte Unsigned Fixed Width Integer
  index, cum_qty = memx_equities_memo_sbe_v1_6_dissect.cum_qty(buffer, index, packet, parent)

  -- Transact Time: 8 Byte Unsigned Fixed Width Integer
  index, transact_time = memx_equities_memo_sbe_v1_6_dissect.transact_time(buffer, index, packet, parent)

  return index
end

-- Dissect: Execution Report New Message
memx_equities_memo_sbe_v1_6_dissect.execution_report_new_message = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.execution_report_new_message then
    local length = memx_equities_memo_sbe_v1_6_size_of.execution_report_new_message(buffer, offset)
    local range = buffer(offset, length)
    local display = memx_equities_memo_sbe_v1_6_display.execution_report_new_message(buffer, packet, parent)
    parent = parent:add(memx_equities_memo_sbe_v1_6.fields.execution_report_new_message, range, display)
  end

  return memx_equities_memo_sbe_v1_6_dissect.execution_report_new_message_fields(buffer, offset, packet, parent)
end

-- Calculate size of: Execution Report Pending New Message
memx_equities_memo_sbe_v1_6_size_of.execution_report_pending_new_message = function(buffer, offset)
  local index = 0

  index = index + memx_equities_memo_sbe_v1_6_size_of.sending_time

  index = index + memx_equities_memo_sbe_v1_6_size_of.order_id

  index = index + memx_equities_memo_sbe_v1_6_size_of.clordid

  index = index + memx_equities_memo_sbe_v1_6_size_of.exec_id

  index = index + memx_equities_memo_sbe_v1_6_size_of.mpid

  index = index + memx_equities_memo_sbe_v1_6_size_of.ord_status

  index = index + memx_equities_memo_sbe_v1_6_size_of.symbol

  index = index + memx_equities_memo_sbe_v1_6_size_of.symbol_sfx

  index = index + memx_equities_memo_sbe_v1_6_size_of.side

  index = index + memx_equities_memo_sbe_v1_6_size_of.ord_type

  index = index + memx_equities_memo_sbe_v1_6_size_of.order_qty

  index = index + memx_equities_memo_sbe_v1_6_size_of.price

  index = index + memx_equities_memo_sbe_v1_6_size_of.time_in_force

  index = index + memx_equities_memo_sbe_v1_6_size_of.order_capacity

  index = index + memx_equities_memo_sbe_v1_6_size_of.cust_order_capacity

  index = index + memx_equities_memo_sbe_v1_6_size_of.exec_inst

  index = index + memx_equities_memo_sbe_v1_6_size_of.peg_offset_value

  index = index + memx_equities_memo_sbe_v1_6_size_of.peg_price_type

  index = index + memx_equities_memo_sbe_v1_6_size_of.expire_time

  index = index + memx_equities_memo_sbe_v1_6_size_of.min_qty

  index = index + memx_equities_memo_sbe_v1_6_size_of.display_qty

  index = index + memx_equities_memo_sbe_v1_6_size_of.display_method

  index = index + memx_equities_memo_sbe_v1_6_size_of.reserve_replenish_timing

  index = index + memx_equities_memo_sbe_v1_6_size_of.display_min_incr

  index = index + memx_equities_memo_sbe_v1_6_size_of.locate_reqd

  index = index + memx_equities_memo_sbe_v1_6_size_of.reprice_frequency

  index = index + memx_equities_memo_sbe_v1_6_size_of.reprice_behavior

  index = index + memx_equities_memo_sbe_v1_6_size_of.cancel_group_id

  index = index + memx_equities_memo_sbe_v1_6_size_of.stp_group_id

  index = index + memx_equities_memo_sbe_v1_6_size_of.self_trade_prevention

  index = index + memx_equities_memo_sbe_v1_6_size_of.risk_group_id

  index = index + memx_equities_memo_sbe_v1_6_size_of.leaves_qty

  index = index + memx_equities_memo_sbe_v1_6_size_of.cum_qty

  return index
end

-- Display: Execution Report Pending New Message
memx_equities_memo_sbe_v1_6_display.execution_report_pending_new_message = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Execution Report Pending New Message
memx_equities_memo_sbe_v1_6_dissect.execution_report_pending_new_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Sending Time: 8 Byte Unsigned Fixed Width Integer
  index, sending_time = memx_equities_memo_sbe_v1_6_dissect.sending_time(buffer, index, packet, parent)

  -- Order Id: 8 Byte Unsigned Fixed Width Integer
  index, order_id = memx_equities_memo_sbe_v1_6_dissect.order_id(buffer, index, packet, parent)

  -- ClOrdId: 16 Byte Ascii String
  index, clordid = memx_equities_memo_sbe_v1_6_dissect.clordid(buffer, index, packet, parent)

  -- Exec Id: 8 Byte Unsigned Fixed Width Integer
  index, exec_id = memx_equities_memo_sbe_v1_6_dissect.exec_id(buffer, index, packet, parent)

  -- Mpid: 4 Byte Ascii String
  index, mpid = memx_equities_memo_sbe_v1_6_dissect.mpid(buffer, index, packet, parent)

  -- Ord Status: 1 Byte Unsigned Fixed Width Integer Enum with 10 values
  index, ord_status = memx_equities_memo_sbe_v1_6_dissect.ord_status(buffer, index, packet, parent)

  -- Symbol: 6 Byte Ascii String
  index, symbol = memx_equities_memo_sbe_v1_6_dissect.symbol(buffer, index, packet, parent)

  -- Symbol Sfx: 6 Byte Ascii String
  index, symbol_sfx = memx_equities_memo_sbe_v1_6_dissect.symbol_sfx(buffer, index, packet, parent)

  -- Side: 1 Byte Unsigned Fixed Width Integer Enum with 5 values
  index, side = memx_equities_memo_sbe_v1_6_dissect.side(buffer, index, packet, parent)

  -- Ord Type: 1 Byte Unsigned Fixed Width Integer Enum with 4 values
  index, ord_type = memx_equities_memo_sbe_v1_6_dissect.ord_type(buffer, index, packet, parent)

  -- Order Qty: 4 Byte Unsigned Fixed Width Integer
  index, order_qty = memx_equities_memo_sbe_v1_6_dissect.order_qty(buffer, index, packet, parent)

  -- Price: 8 Byte Signed Fixed Width Integer Nullable
  index, price = memx_equities_memo_sbe_v1_6_dissect.price(buffer, index, packet, parent)

  -- Time In Force: 1 Byte Unsigned Fixed Width Integer Enum with 6 values
  index, time_in_force = memx_equities_memo_sbe_v1_6_dissect.time_in_force(buffer, index, packet, parent)

  -- Order Capacity: 1 Byte Unsigned Fixed Width Integer Enum with 4 values
  index, order_capacity = memx_equities_memo_sbe_v1_6_dissect.order_capacity(buffer, index, packet, parent)

  -- Cust Order Capacity: 1 Byte Unsigned Fixed Width Integer Enum with 3 values
  index, cust_order_capacity = memx_equities_memo_sbe_v1_6_dissect.cust_order_capacity(buffer, index, packet, parent)

  -- Exec Inst: Struct of 4 fields
  index, exec_inst = memx_equities_memo_sbe_v1_6_dissect.exec_inst(buffer, index, packet, parent)

  -- Peg Offset Value: 8 Byte Signed Fixed Width Integer Nullable
  index, peg_offset_value = memx_equities_memo_sbe_v1_6_dissect.peg_offset_value(buffer, index, packet, parent)

  -- Peg Price Type: 1 Byte Unsigned Fixed Width Integer Enum with 4 values
  index, peg_price_type = memx_equities_memo_sbe_v1_6_dissect.peg_price_type(buffer, index, packet, parent)

  -- Expire Time: 8 Byte Unsigned Fixed Width Integer Nullable
  index, expire_time = memx_equities_memo_sbe_v1_6_dissect.expire_time(buffer, index, packet, parent)

  -- Min Qty: 4 Byte Unsigned Fixed Width Integer Nullable
  index, min_qty = memx_equities_memo_sbe_v1_6_dissect.min_qty(buffer, index, packet, parent)

  -- Display Qty: 4 Byte Unsigned Fixed Width Integer Nullable
  index, display_qty = memx_equities_memo_sbe_v1_6_dissect.display_qty(buffer, index, packet, parent)

  -- Display Method: 1 Byte Unsigned Fixed Width Integer Enum with 5 values
  index, display_method = memx_equities_memo_sbe_v1_6_dissect.display_method(buffer, index, packet, parent)

  -- Reserve Replenish Timing: 1 Byte Unsigned Fixed Width Integer Enum with 4 values
  index, reserve_replenish_timing = memx_equities_memo_sbe_v1_6_dissect.reserve_replenish_timing(buffer, index, packet, parent)

  -- Display Min Incr: 4 Byte Unsigned Fixed Width Integer Nullable
  index, display_min_incr = memx_equities_memo_sbe_v1_6_dissect.display_min_incr(buffer, index, packet, parent)

  -- Locate Reqd: 1 Byte Ascii String Nullable
  index, locate_reqd = memx_equities_memo_sbe_v1_6_dissect.locate_reqd(buffer, index, packet, parent)

  -- Reprice Frequency: 1 Byte Unsigned Fixed Width Integer Enum with 5 values
  index, reprice_frequency = memx_equities_memo_sbe_v1_6_dissect.reprice_frequency(buffer, index, packet, parent)

  -- Reprice Behavior: 1 Byte Unsigned Fixed Width Integer Enum with 4 values
  index, reprice_behavior = memx_equities_memo_sbe_v1_6_dissect.reprice_behavior(buffer, index, packet, parent)

  -- Cancel Group Id: 2 Byte Unsigned Fixed Width Integer Nullable
  index, cancel_group_id = memx_equities_memo_sbe_v1_6_dissect.cancel_group_id(buffer, index, packet, parent)

  -- Stp Group Id: 2 Byte Unsigned Fixed Width Integer Nullable
  index, stp_group_id = memx_equities_memo_sbe_v1_6_dissect.stp_group_id(buffer, index, packet, parent)

  -- Self Trade Prevention: 1 Byte Unsigned Fixed Width Integer Enum with 7 values
  index, self_trade_prevention = memx_equities_memo_sbe_v1_6_dissect.self_trade_prevention(buffer, index, packet, parent)

  -- Risk Group Id: 2 Byte Unsigned Fixed Width Integer Nullable
  index, risk_group_id = memx_equities_memo_sbe_v1_6_dissect.risk_group_id(buffer, index, packet, parent)

  -- Leaves Qty: 4 Byte Unsigned Fixed Width Integer
  index, leaves_qty = memx_equities_memo_sbe_v1_6_dissect.leaves_qty(buffer, index, packet, parent)

  -- Cum Qty: 4 Byte Unsigned Fixed Width Integer
  index, cum_qty = memx_equities_memo_sbe_v1_6_dissect.cum_qty(buffer, index, packet, parent)

  return index
end

-- Dissect: Execution Report Pending New Message
memx_equities_memo_sbe_v1_6_dissect.execution_report_pending_new_message = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.execution_report_pending_new_message then
    local length = memx_equities_memo_sbe_v1_6_size_of.execution_report_pending_new_message(buffer, offset)
    local range = buffer(offset, length)
    local display = memx_equities_memo_sbe_v1_6_display.execution_report_pending_new_message(buffer, packet, parent)
    parent = parent:add(memx_equities_memo_sbe_v1_6.fields.execution_report_pending_new_message, range, display)
  end

  return memx_equities_memo_sbe_v1_6_dissect.execution_report_pending_new_message_fields(buffer, offset, packet, parent)
end

-- Calculate size of: Mass Cancel Request Message
memx_equities_memo_sbe_v1_6_size_of.mass_cancel_request_message = function(buffer, offset)
  local index = 0

  index = index + memx_equities_memo_sbe_v1_6_size_of.clordid

  index = index + memx_equities_memo_sbe_v1_6_size_of.symbol

  index = index + memx_equities_memo_sbe_v1_6_size_of.symbol_sfx

  index = index + memx_equities_memo_sbe_v1_6_size_of.side_optional

  index = index + memx_equities_memo_sbe_v1_6_size_of.lower_than_price

  index = index + memx_equities_memo_sbe_v1_6_size_of.higher_than_price

  index = index + memx_equities_memo_sbe_v1_6_size_of.cancel_group_id

  return index
end

-- Display: Mass Cancel Request Message
memx_equities_memo_sbe_v1_6_display.mass_cancel_request_message = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Mass Cancel Request Message
memx_equities_memo_sbe_v1_6_dissect.mass_cancel_request_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- ClOrdId: 16 Byte Ascii String
  index, clordid = memx_equities_memo_sbe_v1_6_dissect.clordid(buffer, index, packet, parent)

  -- Symbol: 6 Byte Ascii String
  index, symbol = memx_equities_memo_sbe_v1_6_dissect.symbol(buffer, index, packet, parent)

  -- Symbol Sfx: 6 Byte Ascii String
  index, symbol_sfx = memx_equities_memo_sbe_v1_6_dissect.symbol_sfx(buffer, index, packet, parent)

  -- Side Optional: 1 Byte Unsigned Fixed Width Integer Enum with 6 values
  index, side_optional = memx_equities_memo_sbe_v1_6_dissect.side_optional(buffer, index, packet, parent)

  -- Lower Than Price: 8 Byte Signed Fixed Width Integer Nullable
  index, lower_than_price = memx_equities_memo_sbe_v1_6_dissect.lower_than_price(buffer, index, packet, parent)

  -- Higher Than Price: 8 Byte Signed Fixed Width Integer Nullable
  index, higher_than_price = memx_equities_memo_sbe_v1_6_dissect.higher_than_price(buffer, index, packet, parent)

  -- Cancel Group Id: 2 Byte Unsigned Fixed Width Integer Nullable
  index, cancel_group_id = memx_equities_memo_sbe_v1_6_dissect.cancel_group_id(buffer, index, packet, parent)

  return index
end

-- Dissect: Mass Cancel Request Message
memx_equities_memo_sbe_v1_6_dissect.mass_cancel_request_message = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.mass_cancel_request_message then
    local length = memx_equities_memo_sbe_v1_6_size_of.mass_cancel_request_message(buffer, offset)
    local range = buffer(offset, length)
    local display = memx_equities_memo_sbe_v1_6_display.mass_cancel_request_message(buffer, packet, parent)
    parent = parent:add(memx_equities_memo_sbe_v1_6.fields.mass_cancel_request_message, range, display)
  end

  return memx_equities_memo_sbe_v1_6_dissect.mass_cancel_request_message_fields(buffer, offset, packet, parent)
end

-- Size: Order Id Optional
memx_equities_memo_sbe_v1_6_size_of.order_id_optional = 8

-- Display: Order Id Optional
memx_equities_memo_sbe_v1_6_display.order_id_optional = function(value)
  -- Check if field has value
  if value == UInt64(0xFFFFFFFF, 0xFFFFFFFF) then
    return "Order Id Optional: No Value"
  end

  return "Order Id Optional: "..value
end

-- Dissect: Order Id Optional
memx_equities_memo_sbe_v1_6_dissect.order_id_optional = function(buffer, offset, packet, parent)
  local length = memx_equities_memo_sbe_v1_6_size_of.order_id_optional
  local range = buffer(offset, length)
  local value = range:uint64()
  local display = memx_equities_memo_sbe_v1_6_display.order_id_optional(value, buffer, offset, packet, parent)

  parent:add(memx_equities_memo_sbe_v1_6.fields.order_id_optional, range, value, display)

  return offset + length, value
end

-- Calculate size of: Order Cancel Request Message
memx_equities_memo_sbe_v1_6_size_of.order_cancel_request_message = function(buffer, offset)
  local index = 0

  index = index + memx_equities_memo_sbe_v1_6_size_of.origclordid

  index = index + memx_equities_memo_sbe_v1_6_size_of.order_id_optional

  index = index + memx_equities_memo_sbe_v1_6_size_of.clordid

  index = index + memx_equities_memo_sbe_v1_6_size_of.symbol

  index = index + memx_equities_memo_sbe_v1_6_size_of.symbol_sfx

  return index
end

-- Display: Order Cancel Request Message
memx_equities_memo_sbe_v1_6_display.order_cancel_request_message = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Order Cancel Request Message
memx_equities_memo_sbe_v1_6_dissect.order_cancel_request_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- OrigClOrdId: 16 Byte Ascii String
  index, origclordid = memx_equities_memo_sbe_v1_6_dissect.origclordid(buffer, index, packet, parent)

  -- Order Id Optional: 8 Byte Unsigned Fixed Width Integer Nullable
  index, order_id_optional = memx_equities_memo_sbe_v1_6_dissect.order_id_optional(buffer, index, packet, parent)

  -- ClOrdId: 16 Byte Ascii String
  index, clordid = memx_equities_memo_sbe_v1_6_dissect.clordid(buffer, index, packet, parent)

  -- Symbol: 6 Byte Ascii String
  index, symbol = memx_equities_memo_sbe_v1_6_dissect.symbol(buffer, index, packet, parent)

  -- Symbol Sfx: 6 Byte Ascii String
  index, symbol_sfx = memx_equities_memo_sbe_v1_6_dissect.symbol_sfx(buffer, index, packet, parent)

  return index
end

-- Dissect: Order Cancel Request Message
memx_equities_memo_sbe_v1_6_dissect.order_cancel_request_message = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.order_cancel_request_message then
    local length = memx_equities_memo_sbe_v1_6_size_of.order_cancel_request_message(buffer, offset)
    local range = buffer(offset, length)
    local display = memx_equities_memo_sbe_v1_6_display.order_cancel_request_message(buffer, packet, parent)
    parent = parent:add(memx_equities_memo_sbe_v1_6.fields.order_cancel_request_message, range, display)
  end

  return memx_equities_memo_sbe_v1_6_dissect.order_cancel_request_message_fields(buffer, offset, packet, parent)
end

-- Calculate size of: Order Cancel Replace Request Message
memx_equities_memo_sbe_v1_6_size_of.order_cancel_replace_request_message = function(buffer, offset)
  local index = 0

  index = index + memx_equities_memo_sbe_v1_6_size_of.origclordid

  index = index + memx_equities_memo_sbe_v1_6_size_of.clordid

  index = index + memx_equities_memo_sbe_v1_6_size_of.symbol

  index = index + memx_equities_memo_sbe_v1_6_size_of.symbol_sfx

  index = index + memx_equities_memo_sbe_v1_6_size_of.side

  index = index + memx_equities_memo_sbe_v1_6_size_of.order_qty

  index = index + memx_equities_memo_sbe_v1_6_size_of.ord_type

  index = index + memx_equities_memo_sbe_v1_6_size_of.price

  index = index + memx_equities_memo_sbe_v1_6_size_of.display_qty

  index = index + memx_equities_memo_sbe_v1_6_size_of.locate_reqd

  return index
end

-- Display: Order Cancel Replace Request Message
memx_equities_memo_sbe_v1_6_display.order_cancel_replace_request_message = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Order Cancel Replace Request Message
memx_equities_memo_sbe_v1_6_dissect.order_cancel_replace_request_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- OrigClOrdId: 16 Byte Ascii String
  index, origclordid = memx_equities_memo_sbe_v1_6_dissect.origclordid(buffer, index, packet, parent)

  -- ClOrdId: 16 Byte Ascii String
  index, clordid = memx_equities_memo_sbe_v1_6_dissect.clordid(buffer, index, packet, parent)

  -- Symbol: 6 Byte Ascii String
  index, symbol = memx_equities_memo_sbe_v1_6_dissect.symbol(buffer, index, packet, parent)

  -- Symbol Sfx: 6 Byte Ascii String
  index, symbol_sfx = memx_equities_memo_sbe_v1_6_dissect.symbol_sfx(buffer, index, packet, parent)

  -- Side: 1 Byte Unsigned Fixed Width Integer Enum with 5 values
  index, side = memx_equities_memo_sbe_v1_6_dissect.side(buffer, index, packet, parent)

  -- Order Qty: 4 Byte Unsigned Fixed Width Integer
  index, order_qty = memx_equities_memo_sbe_v1_6_dissect.order_qty(buffer, index, packet, parent)

  -- Ord Type: 1 Byte Unsigned Fixed Width Integer Enum with 4 values
  index, ord_type = memx_equities_memo_sbe_v1_6_dissect.ord_type(buffer, index, packet, parent)

  -- Price: 8 Byte Signed Fixed Width Integer Nullable
  index, price = memx_equities_memo_sbe_v1_6_dissect.price(buffer, index, packet, parent)

  -- Display Qty: 4 Byte Unsigned Fixed Width Integer Nullable
  index, display_qty = memx_equities_memo_sbe_v1_6_dissect.display_qty(buffer, index, packet, parent)

  -- Locate Reqd: 1 Byte Ascii String Nullable
  index, locate_reqd = memx_equities_memo_sbe_v1_6_dissect.locate_reqd(buffer, index, packet, parent)

  return index
end

-- Dissect: Order Cancel Replace Request Message
memx_equities_memo_sbe_v1_6_dissect.order_cancel_replace_request_message = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.order_cancel_replace_request_message then
    local length = memx_equities_memo_sbe_v1_6_size_of.order_cancel_replace_request_message(buffer, offset)
    local range = buffer(offset, length)
    local display = memx_equities_memo_sbe_v1_6_display.order_cancel_replace_request_message(buffer, packet, parent)
    parent = parent:add(memx_equities_memo_sbe_v1_6.fields.order_cancel_replace_request_message, range, display)
  end

  return memx_equities_memo_sbe_v1_6_dissect.order_cancel_replace_request_message_fields(buffer, offset, packet, parent)
end

-- Calculate size of: New Order Single Message
memx_equities_memo_sbe_v1_6_size_of.new_order_single_message = function(buffer, offset)
  local index = 0

  index = index + memx_equities_memo_sbe_v1_6_size_of.clordid

  index = index + memx_equities_memo_sbe_v1_6_size_of.mpid

  index = index + memx_equities_memo_sbe_v1_6_size_of.symbol

  index = index + memx_equities_memo_sbe_v1_6_size_of.symbol_sfx

  index = index + memx_equities_memo_sbe_v1_6_size_of.side

  index = index + memx_equities_memo_sbe_v1_6_size_of.order_qty

  index = index + memx_equities_memo_sbe_v1_6_size_of.ord_type

  index = index + memx_equities_memo_sbe_v1_6_size_of.price

  index = index + memx_equities_memo_sbe_v1_6_size_of.time_in_force

  index = index + memx_equities_memo_sbe_v1_6_size_of.order_capacity

  index = index + memx_equities_memo_sbe_v1_6_size_of.cust_order_capacity

  index = index + memx_equities_memo_sbe_v1_6_size_of.exec_inst

  index = index + memx_equities_memo_sbe_v1_6_size_of.peg_offset_value

  index = index + memx_equities_memo_sbe_v1_6_size_of.peg_price_type

  index = index + memx_equities_memo_sbe_v1_6_size_of.expire_time

  index = index + memx_equities_memo_sbe_v1_6_size_of.min_qty

  index = index + memx_equities_memo_sbe_v1_6_size_of.display_qty

  index = index + memx_equities_memo_sbe_v1_6_size_of.display_method

  index = index + memx_equities_memo_sbe_v1_6_size_of.reserve_replenish_timing

  index = index + memx_equities_memo_sbe_v1_6_size_of.display_min_incr

  index = index + memx_equities_memo_sbe_v1_6_size_of.locate_reqd

  index = index + memx_equities_memo_sbe_v1_6_size_of.reprice_frequency

  index = index + memx_equities_memo_sbe_v1_6_size_of.reprice_behavior

  index = index + memx_equities_memo_sbe_v1_6_size_of.cancel_group_id

  index = index + memx_equities_memo_sbe_v1_6_size_of.stp_group_id

  index = index + memx_equities_memo_sbe_v1_6_size_of.self_trade_prevention

  index = index + memx_equities_memo_sbe_v1_6_size_of.risk_group_id

  return index
end

-- Display: New Order Single Message
memx_equities_memo_sbe_v1_6_display.new_order_single_message = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: New Order Single Message
memx_equities_memo_sbe_v1_6_dissect.new_order_single_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- ClOrdId: 16 Byte Ascii String
  index, clordid = memx_equities_memo_sbe_v1_6_dissect.clordid(buffer, index, packet, parent)

  -- Mpid: 4 Byte Ascii String
  index, mpid = memx_equities_memo_sbe_v1_6_dissect.mpid(buffer, index, packet, parent)

  -- Symbol: 6 Byte Ascii String
  index, symbol = memx_equities_memo_sbe_v1_6_dissect.symbol(buffer, index, packet, parent)

  -- Symbol Sfx: 6 Byte Ascii String
  index, symbol_sfx = memx_equities_memo_sbe_v1_6_dissect.symbol_sfx(buffer, index, packet, parent)

  -- Side: 1 Byte Unsigned Fixed Width Integer Enum with 5 values
  index, side = memx_equities_memo_sbe_v1_6_dissect.side(buffer, index, packet, parent)

  -- Order Qty: 4 Byte Unsigned Fixed Width Integer
  index, order_qty = memx_equities_memo_sbe_v1_6_dissect.order_qty(buffer, index, packet, parent)

  -- Ord Type: 1 Byte Unsigned Fixed Width Integer Enum with 4 values
  index, ord_type = memx_equities_memo_sbe_v1_6_dissect.ord_type(buffer, index, packet, parent)

  -- Price: 8 Byte Signed Fixed Width Integer Nullable
  index, price = memx_equities_memo_sbe_v1_6_dissect.price(buffer, index, packet, parent)

  -- Time In Force: 1 Byte Unsigned Fixed Width Integer Enum with 6 values
  index, time_in_force = memx_equities_memo_sbe_v1_6_dissect.time_in_force(buffer, index, packet, parent)

  -- Order Capacity: 1 Byte Unsigned Fixed Width Integer Enum with 4 values
  index, order_capacity = memx_equities_memo_sbe_v1_6_dissect.order_capacity(buffer, index, packet, parent)

  -- Cust Order Capacity: 1 Byte Unsigned Fixed Width Integer Enum with 3 values
  index, cust_order_capacity = memx_equities_memo_sbe_v1_6_dissect.cust_order_capacity(buffer, index, packet, parent)

  -- Exec Inst: Struct of 4 fields
  index, exec_inst = memx_equities_memo_sbe_v1_6_dissect.exec_inst(buffer, index, packet, parent)

  -- Peg Offset Value: 8 Byte Signed Fixed Width Integer Nullable
  index, peg_offset_value = memx_equities_memo_sbe_v1_6_dissect.peg_offset_value(buffer, index, packet, parent)

  -- Peg Price Type: 1 Byte Unsigned Fixed Width Integer Enum with 4 values
  index, peg_price_type = memx_equities_memo_sbe_v1_6_dissect.peg_price_type(buffer, index, packet, parent)

  -- Expire Time: 8 Byte Unsigned Fixed Width Integer Nullable
  index, expire_time = memx_equities_memo_sbe_v1_6_dissect.expire_time(buffer, index, packet, parent)

  -- Min Qty: 4 Byte Unsigned Fixed Width Integer Nullable
  index, min_qty = memx_equities_memo_sbe_v1_6_dissect.min_qty(buffer, index, packet, parent)

  -- Display Qty: 4 Byte Unsigned Fixed Width Integer Nullable
  index, display_qty = memx_equities_memo_sbe_v1_6_dissect.display_qty(buffer, index, packet, parent)

  -- Display Method: 1 Byte Unsigned Fixed Width Integer Enum with 5 values
  index, display_method = memx_equities_memo_sbe_v1_6_dissect.display_method(buffer, index, packet, parent)

  -- Reserve Replenish Timing: 1 Byte Unsigned Fixed Width Integer Enum with 4 values
  index, reserve_replenish_timing = memx_equities_memo_sbe_v1_6_dissect.reserve_replenish_timing(buffer, index, packet, parent)

  -- Display Min Incr: 4 Byte Unsigned Fixed Width Integer Nullable
  index, display_min_incr = memx_equities_memo_sbe_v1_6_dissect.display_min_incr(buffer, index, packet, parent)

  -- Locate Reqd: 1 Byte Ascii String Nullable
  index, locate_reqd = memx_equities_memo_sbe_v1_6_dissect.locate_reqd(buffer, index, packet, parent)

  -- Reprice Frequency: 1 Byte Unsigned Fixed Width Integer Enum with 5 values
  index, reprice_frequency = memx_equities_memo_sbe_v1_6_dissect.reprice_frequency(buffer, index, packet, parent)

  -- Reprice Behavior: 1 Byte Unsigned Fixed Width Integer Enum with 4 values
  index, reprice_behavior = memx_equities_memo_sbe_v1_6_dissect.reprice_behavior(buffer, index, packet, parent)

  -- Cancel Group Id: 2 Byte Unsigned Fixed Width Integer Nullable
  index, cancel_group_id = memx_equities_memo_sbe_v1_6_dissect.cancel_group_id(buffer, index, packet, parent)

  -- Stp Group Id: 2 Byte Unsigned Fixed Width Integer Nullable
  index, stp_group_id = memx_equities_memo_sbe_v1_6_dissect.stp_group_id(buffer, index, packet, parent)

  -- Self Trade Prevention: 1 Byte Unsigned Fixed Width Integer Enum with 7 values
  index, self_trade_prevention = memx_equities_memo_sbe_v1_6_dissect.self_trade_prevention(buffer, index, packet, parent)

  -- Risk Group Id: 2 Byte Unsigned Fixed Width Integer Nullable
  index, risk_group_id = memx_equities_memo_sbe_v1_6_dissect.risk_group_id(buffer, index, packet, parent)

  return index
end

-- Dissect: New Order Single Message
memx_equities_memo_sbe_v1_6_dissect.new_order_single_message = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.new_order_single_message then
    local length = memx_equities_memo_sbe_v1_6_size_of.new_order_single_message(buffer, offset)
    local range = buffer(offset, length)
    local display = memx_equities_memo_sbe_v1_6_display.new_order_single_message(buffer, packet, parent)
    parent = parent:add(memx_equities_memo_sbe_v1_6.fields.new_order_single_message, range, display)
  end

  return memx_equities_memo_sbe_v1_6_dissect.new_order_single_message_fields(buffer, offset, packet, parent)
end

-- Calculate runtime size of: Payload
memx_equities_memo_sbe_v1_6_size_of.payload = function(buffer, offset, template_id)
  -- Size of New Order Single Message
  if template_id == 1 then
    return memx_equities_memo_sbe_v1_6_size_of.new_order_single_message(buffer, offset)
  end
  -- Size of Order Cancel Replace Request Message
  if template_id == 2 then
    return memx_equities_memo_sbe_v1_6_size_of.order_cancel_replace_request_message(buffer, offset)
  end
  -- Size of Order Cancel Request Message
  if template_id == 3 then
    return memx_equities_memo_sbe_v1_6_size_of.order_cancel_request_message(buffer, offset)
  end
  -- Size of Mass Cancel Request Message
  if template_id == 4 then
    return memx_equities_memo_sbe_v1_6_size_of.mass_cancel_request_message(buffer, offset)
  end
  -- Size of Execution Report Pending New Message
  if template_id == 5 then
    return memx_equities_memo_sbe_v1_6_size_of.execution_report_pending_new_message(buffer, offset)
  end
  -- Size of Execution Report New Message
  if template_id == 6 then
    return memx_equities_memo_sbe_v1_6_size_of.execution_report_new_message(buffer, offset)
  end
  -- Size of Execution Report Rejected Message
  if template_id == 7 then
    return memx_equities_memo_sbe_v1_6_size_of.execution_report_rejected_message(buffer, offset)
  end
  -- Size of Execution Report Trade Message
  if template_id == 8 then
    return memx_equities_memo_sbe_v1_6_size_of.execution_report_trade_message(buffer, offset)
  end
  -- Size of Execution Report Pending Cancel Message
  if template_id == 9 then
    return memx_equities_memo_sbe_v1_6_size_of.execution_report_pending_cancel_message(buffer, offset)
  end
  -- Size of Pending Mass Cancel Message
  if template_id == 10 then
    return memx_equities_memo_sbe_v1_6_size_of.pending_mass_cancel_message(buffer, offset)
  end
  -- Size of Execution Report Canceled Message
  if template_id == 11 then
    return memx_equities_memo_sbe_v1_6_size_of.execution_report_canceled_message(buffer, offset)
  end
  -- Size of Mass Cancel Done Message
  if template_id == 12 then
    return memx_equities_memo_sbe_v1_6_size_of.mass_cancel_done_message(buffer, offset)
  end
  -- Size of Execution Report Pending Replace Message
  if template_id == 13 then
    return memx_equities_memo_sbe_v1_6_size_of.execution_report_pending_replace_message(buffer, offset)
  end
  -- Size of Execution Report Replaced Message
  if template_id == 14 then
    return memx_equities_memo_sbe_v1_6_size_of.execution_report_replaced_message(buffer, offset)
  end
  -- Size of Execution Report Trade Correction Message
  if template_id == 15 then
    return memx_equities_memo_sbe_v1_6_size_of.execution_report_trade_correction_message(buffer, offset)
  end
  -- Size of Execution Report Trade Break Message
  if template_id == 16 then
    return memx_equities_memo_sbe_v1_6_size_of.execution_report_trade_break_message(buffer, offset)
  end
  -- Size of Execution Report Restatement Message
  if template_id == 17 then
    return memx_equities_memo_sbe_v1_6_size_of.execution_report_restatement_message(buffer, offset)
  end
  -- Size of Order Cancel Reject Message
  if template_id == 18 then
    return memx_equities_memo_sbe_v1_6_size_of.order_cancel_reject_message(buffer, offset)
  end
  -- Size of Mass Cancel Reject Message
  if template_id == 20 then
    return memx_equities_memo_sbe_v1_6_size_of.mass_cancel_reject_message(buffer, offset)
  end

  return 0
end

-- Display: Payload
memx_equities_memo_sbe_v1_6_display.payload = function(buffer, offset, packet, parent)
  return ""
end

-- Dissect Branches: Payload
memx_equities_memo_sbe_v1_6_dissect.payload_branches = function(buffer, offset, packet, parent, template_id)
  -- Dissect New Order Single Message
  if template_id == 1 then
    return memx_equities_memo_sbe_v1_6_dissect.new_order_single_message(buffer, offset, packet, parent)
  end
  -- Dissect Order Cancel Replace Request Message
  if template_id == 2 then
    return memx_equities_memo_sbe_v1_6_dissect.order_cancel_replace_request_message(buffer, offset, packet, parent)
  end
  -- Dissect Order Cancel Request Message
  if template_id == 3 then
    return memx_equities_memo_sbe_v1_6_dissect.order_cancel_request_message(buffer, offset, packet, parent)
  end
  -- Dissect Mass Cancel Request Message
  if template_id == 4 then
    return memx_equities_memo_sbe_v1_6_dissect.mass_cancel_request_message(buffer, offset, packet, parent)
  end
  -- Dissect Execution Report Pending New Message
  if template_id == 5 then
    return memx_equities_memo_sbe_v1_6_dissect.execution_report_pending_new_message(buffer, offset, packet, parent)
  end
  -- Dissect Execution Report New Message
  if template_id == 6 then
    return memx_equities_memo_sbe_v1_6_dissect.execution_report_new_message(buffer, offset, packet, parent)
  end
  -- Dissect Execution Report Rejected Message
  if template_id == 7 then
    return memx_equities_memo_sbe_v1_6_dissect.execution_report_rejected_message(buffer, offset, packet, parent)
  end
  -- Dissect Execution Report Trade Message
  if template_id == 8 then
    return memx_equities_memo_sbe_v1_6_dissect.execution_report_trade_message(buffer, offset, packet, parent)
  end
  -- Dissect Execution Report Pending Cancel Message
  if template_id == 9 then
    return memx_equities_memo_sbe_v1_6_dissect.execution_report_pending_cancel_message(buffer, offset, packet, parent)
  end
  -- Dissect Pending Mass Cancel Message
  if template_id == 10 then
    return memx_equities_memo_sbe_v1_6_dissect.pending_mass_cancel_message(buffer, offset, packet, parent)
  end
  -- Dissect Execution Report Canceled Message
  if template_id == 11 then
    return memx_equities_memo_sbe_v1_6_dissect.execution_report_canceled_message(buffer, offset, packet, parent)
  end
  -- Dissect Mass Cancel Done Message
  if template_id == 12 then
    return memx_equities_memo_sbe_v1_6_dissect.mass_cancel_done_message(buffer, offset, packet, parent)
  end
  -- Dissect Execution Report Pending Replace Message
  if template_id == 13 then
    return memx_equities_memo_sbe_v1_6_dissect.execution_report_pending_replace_message(buffer, offset, packet, parent)
  end
  -- Dissect Execution Report Replaced Message
  if template_id == 14 then
    return memx_equities_memo_sbe_v1_6_dissect.execution_report_replaced_message(buffer, offset, packet, parent)
  end
  -- Dissect Execution Report Trade Correction Message
  if template_id == 15 then
    return memx_equities_memo_sbe_v1_6_dissect.execution_report_trade_correction_message(buffer, offset, packet, parent)
  end
  -- Dissect Execution Report Trade Break Message
  if template_id == 16 then
    return memx_equities_memo_sbe_v1_6_dissect.execution_report_trade_break_message(buffer, offset, packet, parent)
  end
  -- Dissect Execution Report Restatement Message
  if template_id == 17 then
    return memx_equities_memo_sbe_v1_6_dissect.execution_report_restatement_message(buffer, offset, packet, parent)
  end
  -- Dissect Order Cancel Reject Message
  if template_id == 18 then
    return memx_equities_memo_sbe_v1_6_dissect.order_cancel_reject_message(buffer, offset, packet, parent)
  end
  -- Dissect Mass Cancel Reject Message
  if template_id == 20 then
    return memx_equities_memo_sbe_v1_6_dissect.mass_cancel_reject_message(buffer, offset, packet, parent)
  end

  return offset
end

-- Dissect: Payload
memx_equities_memo_sbe_v1_6_dissect.payload = function(buffer, offset, packet, parent, template_id)
  if not show.payload then
    return memx_equities_memo_sbe_v1_6_dissect.payload_branches(buffer, offset, packet, parent, template_id)
  end

  -- Calculate size and check that branch is not empty
  local size = memx_equities_memo_sbe_v1_6_size_of.payload(buffer, offset, template_id)
  if size == 0 then
    return offset
  end

  -- Dissect Element
  local range = buffer(offset, size)
  local display = memx_equities_memo_sbe_v1_6_display.payload(buffer, packet, parent)
  local element = parent:add(memx_equities_memo_sbe_v1_6.fields.payload, range, display)

  return memx_equities_memo_sbe_v1_6_dissect.payload_branches(buffer, offset, packet, parent, template_id)
end

-- Size: Version
memx_equities_memo_sbe_v1_6_size_of.version = 2

-- Display: Version
memx_equities_memo_sbe_v1_6_display.version = function(value)
  return "Version: "..value
end

-- Dissect: Version
memx_equities_memo_sbe_v1_6_dissect.version = function(buffer, offset, packet, parent)
  local length = memx_equities_memo_sbe_v1_6_size_of.version
  local range = buffer(offset, length)
  local value = range:uint()
  local display = memx_equities_memo_sbe_v1_6_display.version(value, buffer, offset, packet, parent)

  parent:add(memx_equities_memo_sbe_v1_6.fields.version, range, value, display)

  return offset + length, value
end

-- Size: Schema Id
memx_equities_memo_sbe_v1_6_size_of.schema_id = 1

-- Display: Schema Id
memx_equities_memo_sbe_v1_6_display.schema_id = function(value)
  return "Schema Id: "..value
end

-- Dissect: Schema Id
memx_equities_memo_sbe_v1_6_dissect.schema_id = function(buffer, offset, packet, parent)
  local length = memx_equities_memo_sbe_v1_6_size_of.schema_id
  local range = buffer(offset, length)
  local value = range:uint()
  local display = memx_equities_memo_sbe_v1_6_display.schema_id(value, buffer, offset, packet, parent)

  parent:add(memx_equities_memo_sbe_v1_6.fields.schema_id, range, value, display)

  return offset + length, value
end

-- Size: Template Id
memx_equities_memo_sbe_v1_6_size_of.template_id = 1

-- Display: Template Id
memx_equities_memo_sbe_v1_6_display.template_id = function(value)
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
memx_equities_memo_sbe_v1_6_dissect.template_id = function(buffer, offset, packet, parent)
  local length = memx_equities_memo_sbe_v1_6_size_of.template_id
  local range = buffer(offset, length)
  local value = range:uint()
  local display = memx_equities_memo_sbe_v1_6_display.template_id(value, buffer, offset, packet, parent)

  parent:add(memx_equities_memo_sbe_v1_6.fields.template_id, range, value, display)

  return offset + length, value
end

-- Size: Block Length
memx_equities_memo_sbe_v1_6_size_of.block_length = 2

-- Display: Block Length
memx_equities_memo_sbe_v1_6_display.block_length = function(value)
  return "Block Length: "..value
end

-- Dissect: Block Length
memx_equities_memo_sbe_v1_6_dissect.block_length = function(buffer, offset, packet, parent)
  local length = memx_equities_memo_sbe_v1_6_size_of.block_length
  local range = buffer(offset, length)
  local value = range:uint()
  local display = memx_equities_memo_sbe_v1_6_display.block_length(value, buffer, offset, packet, parent)

  parent:add(memx_equities_memo_sbe_v1_6.fields.block_length, range, value, display)

  return offset + length, value
end

-- Calculate size of: Sbe Header
memx_equities_memo_sbe_v1_6_size_of.sbe_header = function(buffer, offset)
  local index = 0

  index = index + memx_equities_memo_sbe_v1_6_size_of.block_length

  index = index + memx_equities_memo_sbe_v1_6_size_of.template_id

  index = index + memx_equities_memo_sbe_v1_6_size_of.schema_id

  index = index + memx_equities_memo_sbe_v1_6_size_of.version

  return index
end

-- Display: Sbe Header
memx_equities_memo_sbe_v1_6_display.sbe_header = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Sbe Header
memx_equities_memo_sbe_v1_6_dissect.sbe_header_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Block Length: 2 Byte Unsigned Fixed Width Integer
  index, block_length = memx_equities_memo_sbe_v1_6_dissect.block_length(buffer, index, packet, parent)

  -- Template Id: 1 Byte Unsigned Fixed Width Integer Enum with 19 values
  index, template_id = memx_equities_memo_sbe_v1_6_dissect.template_id(buffer, index, packet, parent)

  -- Schema Id: 1 Byte Unsigned Fixed Width Integer Static
  index, schema_id = memx_equities_memo_sbe_v1_6_dissect.schema_id(buffer, index, packet, parent)

  -- Version: 2 Byte Unsigned Fixed Width Integer Static
  index, version = memx_equities_memo_sbe_v1_6_dissect.version(buffer, index, packet, parent)

  return index
end

-- Dissect: Sbe Header
memx_equities_memo_sbe_v1_6_dissect.sbe_header = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.sbe_header then
    local length = memx_equities_memo_sbe_v1_6_size_of.sbe_header(buffer, offset)
    local range = buffer(offset, length)
    local display = memx_equities_memo_sbe_v1_6_display.sbe_header(buffer, packet, parent)
    parent = parent:add(memx_equities_memo_sbe_v1_6.fields.sbe_header, range, display)
  end

  return memx_equities_memo_sbe_v1_6_dissect.sbe_header_fields(buffer, offset, packet, parent)
end

-- Calculate size of: Sbe Message
memx_equities_memo_sbe_v1_6_size_of.sbe_message = function(buffer, offset)
  local index = 0

  index = index + memx_equities_memo_sbe_v1_6_size_of.sbe_header(buffer, offset + index)

  -- Calculate runtime size of Payload field
  local payload_offset = offset + index
  local payload_type = buffer(payload_offset - 4, 1):uint()
  index = index + memx_equities_memo_sbe_v1_6_size_of.payload(buffer, payload_offset, payload_type)

  return index
end

-- Display: Sbe Message
memx_equities_memo_sbe_v1_6_display.sbe_message = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Sbe Message
memx_equities_memo_sbe_v1_6_dissect.sbe_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Sbe Header: Struct of 4 fields
  index, sbe_header = memx_equities_memo_sbe_v1_6_dissect.sbe_header(buffer, index, packet, parent)

  -- Dependency element: Template Id
  local template_id = buffer(index - 4, 1):uint()

  -- Payload: Runtime Type with 19 branches
  index = memx_equities_memo_sbe_v1_6_dissect.payload(buffer, index, packet, parent, template_id)

  return index
end

-- Dissect: Sbe Message
memx_equities_memo_sbe_v1_6_dissect.sbe_message = function(buffer, offset, packet, parent)
  -- Optionally add dynamic struct element to protocol tree
  if show.sbe_message then
    local length = memx_equities_memo_sbe_v1_6_size_of.sbe_message(buffer, offset)
    local range = buffer(offset, length)
    local display = memx_equities_memo_sbe_v1_6_display.sbe_message(buffer, packet, parent)
    parent = parent:add(memx_equities_memo_sbe_v1_6.fields.sbe_message, range, display)
  end

  return memx_equities_memo_sbe_v1_6_dissect.sbe_message_fields(buffer, offset, packet, parent)
end

-- Calculate size of: Sequenced Message
memx_equities_memo_sbe_v1_6_size_of.sequenced_message = function(buffer, offset)
  local index = 0

  index = index + memx_equities_memo_sbe_v1_6_size_of.sbe_message(buffer, offset + index)

  return index
end

-- Display: Sequenced Message
memx_equities_memo_sbe_v1_6_display.sequenced_message = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Sequenced Message
memx_equities_memo_sbe_v1_6_dissect.sequenced_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Sbe Message: Struct of 2 fields
  index, sbe_message = memx_equities_memo_sbe_v1_6_dissect.sbe_message(buffer, index, packet, parent)

  return index
end

-- Dissect: Sequenced Message
memx_equities_memo_sbe_v1_6_dissect.sequenced_message = function(buffer, offset, packet, parent)
  -- Optionally add dynamic struct element to protocol tree
  if show.sequenced_message then
    local length = memx_equities_memo_sbe_v1_6_size_of.sequenced_message(buffer, offset)
    local range = buffer(offset, length)
    local display = memx_equities_memo_sbe_v1_6_display.sequenced_message(buffer, packet, parent)
    parent = parent:add(memx_equities_memo_sbe_v1_6.fields.sequenced_message, range, display)
  end

  return memx_equities_memo_sbe_v1_6_dissect.sequenced_message_fields(buffer, offset, packet, parent)
end

-- Size: Total Sequence Count
memx_equities_memo_sbe_v1_6_size_of.total_sequence_count = 8

-- Display: Total Sequence Count
memx_equities_memo_sbe_v1_6_display.total_sequence_count = function(value)
  return "Total Sequence Count: "..value
end

-- Dissect: Total Sequence Count
memx_equities_memo_sbe_v1_6_dissect.total_sequence_count = function(buffer, offset, packet, parent)
  local length = memx_equities_memo_sbe_v1_6_size_of.total_sequence_count
  local range = buffer(offset, length)
  local value = range:uint64()
  local display = memx_equities_memo_sbe_v1_6_display.total_sequence_count(value, buffer, offset, packet, parent)

  parent:add(memx_equities_memo_sbe_v1_6.fields.total_sequence_count, range, value, display)

  return offset + length, value
end

-- Calculate size of: Stream Complete Message
memx_equities_memo_sbe_v1_6_size_of.stream_complete_message = function(buffer, offset)
  local index = 0

  index = index + memx_equities_memo_sbe_v1_6_size_of.total_sequence_count

  return index
end

-- Display: Stream Complete Message
memx_equities_memo_sbe_v1_6_display.stream_complete_message = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Stream Complete Message
memx_equities_memo_sbe_v1_6_dissect.stream_complete_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Total Sequence Count: 8 Byte Unsigned Fixed Width Integer
  index, total_sequence_count = memx_equities_memo_sbe_v1_6_dissect.total_sequence_count(buffer, index, packet, parent)

  return index
end

-- Dissect: Stream Complete Message
memx_equities_memo_sbe_v1_6_dissect.stream_complete_message = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.stream_complete_message then
    local length = memx_equities_memo_sbe_v1_6_size_of.stream_complete_message(buffer, offset)
    local range = buffer(offset, length)
    local display = memx_equities_memo_sbe_v1_6_display.stream_complete_message(buffer, packet, parent)
    parent = parent:add(memx_equities_memo_sbe_v1_6.fields.stream_complete_message, range, display)
  end

  return memx_equities_memo_sbe_v1_6_dissect.stream_complete_message_fields(buffer, offset, packet, parent)
end

-- Size: Stream Reject Code
memx_equities_memo_sbe_v1_6_size_of.stream_reject_code = 1

-- Display: Stream Reject Code
memx_equities_memo_sbe_v1_6_display.stream_reject_code = function(value)
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
memx_equities_memo_sbe_v1_6_dissect.stream_reject_code = function(buffer, offset, packet, parent)
  local length = memx_equities_memo_sbe_v1_6_size_of.stream_reject_code
  local range = buffer(offset, length)
  local value = range:string()
  local display = memx_equities_memo_sbe_v1_6_display.stream_reject_code(value, buffer, offset, packet, parent)

  parent:add(memx_equities_memo_sbe_v1_6.fields.stream_reject_code, range, value, display)

  return offset + length, value
end

-- Calculate size of: Stream Rejected Message
memx_equities_memo_sbe_v1_6_size_of.stream_rejected_message = function(buffer, offset)
  local index = 0

  index = index + memx_equities_memo_sbe_v1_6_size_of.stream_reject_code

  return index
end

-- Display: Stream Rejected Message
memx_equities_memo_sbe_v1_6_display.stream_rejected_message = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Stream Rejected Message
memx_equities_memo_sbe_v1_6_dissect.stream_rejected_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Stream Reject Code: 1 Byte Ascii String Enum with 3 values
  index, stream_reject_code = memx_equities_memo_sbe_v1_6_dissect.stream_reject_code(buffer, index, packet, parent)

  return index
end

-- Dissect: Stream Rejected Message
memx_equities_memo_sbe_v1_6_dissect.stream_rejected_message = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.stream_rejected_message then
    local length = memx_equities_memo_sbe_v1_6_size_of.stream_rejected_message(buffer, offset)
    local range = buffer(offset, length)
    local display = memx_equities_memo_sbe_v1_6_display.stream_rejected_message(buffer, packet, parent)
    parent = parent:add(memx_equities_memo_sbe_v1_6.fields.stream_rejected_message, range, display)
  end

  return memx_equities_memo_sbe_v1_6_dissect.stream_rejected_message_fields(buffer, offset, packet, parent)
end

-- Size: Next Sequence Number
memx_equities_memo_sbe_v1_6_size_of.next_sequence_number = 8

-- Display: Next Sequence Number
memx_equities_memo_sbe_v1_6_display.next_sequence_number = function(value)
  return "Next Sequence Number: "..value
end

-- Dissect: Next Sequence Number
memx_equities_memo_sbe_v1_6_dissect.next_sequence_number = function(buffer, offset, packet, parent)
  local length = memx_equities_memo_sbe_v1_6_size_of.next_sequence_number
  local range = buffer(offset, length)
  local value = range:uint64()
  local display = memx_equities_memo_sbe_v1_6_display.next_sequence_number(value, buffer, offset, packet, parent)

  parent:add(memx_equities_memo_sbe_v1_6.fields.next_sequence_number, range, value, display)

  return offset + length, value
end

-- Calculate size of: Stream Begin Message
memx_equities_memo_sbe_v1_6_size_of.stream_begin_message = function(buffer, offset)
  local index = 0

  index = index + memx_equities_memo_sbe_v1_6_size_of.next_sequence_number

  index = index + memx_equities_memo_sbe_v1_6_size_of.max_sequence_number

  return index
end

-- Display: Stream Begin Message
memx_equities_memo_sbe_v1_6_display.stream_begin_message = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Stream Begin Message
memx_equities_memo_sbe_v1_6_dissect.stream_begin_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Next Sequence Number: 8 Byte Unsigned Fixed Width Integer
  index, next_sequence_number = memx_equities_memo_sbe_v1_6_dissect.next_sequence_number(buffer, index, packet, parent)

  -- Max Sequence Number
  index, max_sequence_number = memx_equities_memo_sbe_v1_6_dissect.max_sequence_number(buffer, index, packet, parent)

  return index
end

-- Dissect: Stream Begin Message
memx_equities_memo_sbe_v1_6_dissect.stream_begin_message = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.stream_begin_message then
    local length = memx_equities_memo_sbe_v1_6_size_of.stream_begin_message(buffer, offset)
    local range = buffer(offset, length)
    local display = memx_equities_memo_sbe_v1_6_display.stream_begin_message(buffer, packet, parent)
    parent = parent:add(memx_equities_memo_sbe_v1_6.fields.stream_begin_message, range, display)
  end

  return memx_equities_memo_sbe_v1_6_dissect.stream_begin_message_fields(buffer, offset, packet, parent)
end

-- Size: Message Count
memx_equities_memo_sbe_v1_6_size_of.message_count = 8

-- Display: Message Count
memx_equities_memo_sbe_v1_6_display.message_count = function(value)
  return "Message Count: "..value
end

-- Dissect: Message Count
memx_equities_memo_sbe_v1_6_dissect.message_count = function(buffer, offset, packet, parent)
  local length = memx_equities_memo_sbe_v1_6_size_of.message_count
  local range = buffer(offset, length)
  local value = range:uint64()
  local display = memx_equities_memo_sbe_v1_6_display.message_count(value, buffer, offset, packet, parent)

  parent:add(memx_equities_memo_sbe_v1_6.fields.message_count, range, value, display)

  return offset + length, value
end

-- Calculate size of: Replay Complete Message
memx_equities_memo_sbe_v1_6_size_of.replay_complete_message = function(buffer, offset)
  local index = 0

  index = index + memx_equities_memo_sbe_v1_6_size_of.message_count

  return index
end

-- Display: Replay Complete Message
memx_equities_memo_sbe_v1_6_display.replay_complete_message = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Replay Complete Message
memx_equities_memo_sbe_v1_6_dissect.replay_complete_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Message Count: 8 Byte Unsigned Fixed Width Integer
  index, message_count = memx_equities_memo_sbe_v1_6_dissect.message_count(buffer, index, packet, parent)

  return index
end

-- Dissect: Replay Complete Message
memx_equities_memo_sbe_v1_6_dissect.replay_complete_message = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.replay_complete_message then
    local length = memx_equities_memo_sbe_v1_6_size_of.replay_complete_message(buffer, offset)
    local range = buffer(offset, length)
    local display = memx_equities_memo_sbe_v1_6_display.replay_complete_message(buffer, packet, parent)
    parent = parent:add(memx_equities_memo_sbe_v1_6.fields.replay_complete_message, range, display)
  end

  return memx_equities_memo_sbe_v1_6_dissect.replay_complete_message_fields(buffer, offset, packet, parent)
end

-- Size: Replay Reject Code
memx_equities_memo_sbe_v1_6_size_of.replay_reject_code = 1

-- Display: Replay Reject Code
memx_equities_memo_sbe_v1_6_display.replay_reject_code = function(value)
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
memx_equities_memo_sbe_v1_6_dissect.replay_reject_code = function(buffer, offset, packet, parent)
  local length = memx_equities_memo_sbe_v1_6_size_of.replay_reject_code
  local range = buffer(offset, length)
  local value = range:string()
  local display = memx_equities_memo_sbe_v1_6_display.replay_reject_code(value, buffer, offset, packet, parent)

  parent:add(memx_equities_memo_sbe_v1_6.fields.replay_reject_code, range, value, display)

  return offset + length, value
end

-- Calculate size of: Replay Rejected Message
memx_equities_memo_sbe_v1_6_size_of.replay_rejected_message = function(buffer, offset)
  local index = 0

  index = index + memx_equities_memo_sbe_v1_6_size_of.replay_reject_code

  return index
end

-- Display: Replay Rejected Message
memx_equities_memo_sbe_v1_6_display.replay_rejected_message = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Replay Rejected Message
memx_equities_memo_sbe_v1_6_dissect.replay_rejected_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Replay Reject Code: 1 Byte Ascii String Enum with 4 values
  index, replay_reject_code = memx_equities_memo_sbe_v1_6_dissect.replay_reject_code(buffer, index, packet, parent)

  return index
end

-- Dissect: Replay Rejected Message
memx_equities_memo_sbe_v1_6_dissect.replay_rejected_message = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.replay_rejected_message then
    local length = memx_equities_memo_sbe_v1_6_size_of.replay_rejected_message(buffer, offset)
    local range = buffer(offset, length)
    local display = memx_equities_memo_sbe_v1_6_display.replay_rejected_message(buffer, packet, parent)
    parent = parent:add(memx_equities_memo_sbe_v1_6.fields.replay_rejected_message, range, display)
  end

  return memx_equities_memo_sbe_v1_6_dissect.replay_rejected_message_fields(buffer, offset, packet, parent)
end

-- Size: Pending Message Count
memx_equities_memo_sbe_v1_6_size_of.pending_message_count = 4

-- Display: Pending Message Count
memx_equities_memo_sbe_v1_6_display.pending_message_count = function(value)
  return "Pending Message Count: "..value
end

-- Dissect: Pending Message Count
memx_equities_memo_sbe_v1_6_dissect.pending_message_count = function(buffer, offset, packet, parent)
  local length = memx_equities_memo_sbe_v1_6_size_of.pending_message_count
  local range = buffer(offset, length)
  local value = range:uint()
  local display = memx_equities_memo_sbe_v1_6_display.pending_message_count(value, buffer, offset, packet, parent)

  parent:add(memx_equities_memo_sbe_v1_6.fields.pending_message_count, range, value, display)

  return offset + length, value
end

-- Calculate size of: Replay Begin Message
memx_equities_memo_sbe_v1_6_size_of.replay_begin_message = function(buffer, offset)
  local index = 0

  index = index + memx_equities_memo_sbe_v1_6_size_of.next_sequence_number

  index = index + memx_equities_memo_sbe_v1_6_size_of.pending_message_count

  return index
end

-- Display: Replay Begin Message
memx_equities_memo_sbe_v1_6_display.replay_begin_message = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Replay Begin Message
memx_equities_memo_sbe_v1_6_dissect.replay_begin_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Next Sequence Number: 8 Byte Unsigned Fixed Width Integer
  index, next_sequence_number = memx_equities_memo_sbe_v1_6_dissect.next_sequence_number(buffer, index, packet, parent)

  -- Pending Message Count: 4 Byte Unsigned Fixed Width Integer
  index, pending_message_count = memx_equities_memo_sbe_v1_6_dissect.pending_message_count(buffer, index, packet, parent)

  return index
end

-- Dissect: Replay Begin Message
memx_equities_memo_sbe_v1_6_dissect.replay_begin_message = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.replay_begin_message then
    local length = memx_equities_memo_sbe_v1_6_size_of.replay_begin_message(buffer, offset)
    local range = buffer(offset, length)
    local display = memx_equities_memo_sbe_v1_6_display.replay_begin_message(buffer, packet, parent)
    parent = parent:add(memx_equities_memo_sbe_v1_6.fields.replay_begin_message, range, display)
  end

  return memx_equities_memo_sbe_v1_6_dissect.replay_begin_message_fields(buffer, offset, packet, parent)
end

-- Size: Session Id
memx_equities_memo_sbe_v1_6_size_of.session_id = 8

-- Display: Session Id
memx_equities_memo_sbe_v1_6_display.session_id = function(value)
  return "Session Id: "..value
end

-- Dissect: Session Id
memx_equities_memo_sbe_v1_6_dissect.session_id = function(buffer, offset, packet, parent)
  local length = memx_equities_memo_sbe_v1_6_size_of.session_id
  local range = buffer(offset, length)
  local value = range:uint64()
  local display = memx_equities_memo_sbe_v1_6_display.session_id(value, buffer, offset, packet, parent)

  parent:add(memx_equities_memo_sbe_v1_6.fields.session_id, range, value, display)

  return offset + length, value
end

-- Calculate size of: Start Of Session Message
memx_equities_memo_sbe_v1_6_size_of.start_of_session_message = function(buffer, offset)
  local index = 0

  index = index + memx_equities_memo_sbe_v1_6_size_of.session_id

  return index
end

-- Display: Start Of Session Message
memx_equities_memo_sbe_v1_6_display.start_of_session_message = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Start Of Session Message
memx_equities_memo_sbe_v1_6_dissect.start_of_session_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Session Id: 8 Byte Unsigned Fixed Width Integer
  index, session_id = memx_equities_memo_sbe_v1_6_dissect.session_id(buffer, index, packet, parent)

  return index
end

-- Dissect: Start Of Session Message
memx_equities_memo_sbe_v1_6_dissect.start_of_session_message = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.start_of_session_message then
    local length = memx_equities_memo_sbe_v1_6_size_of.start_of_session_message(buffer, offset)
    local range = buffer(offset, length)
    local display = memx_equities_memo_sbe_v1_6_display.start_of_session_message(buffer, packet, parent)
    parent = parent:add(memx_equities_memo_sbe_v1_6.fields.start_of_session_message, range, display)
  end

  return memx_equities_memo_sbe_v1_6_dissect.start_of_session_message_fields(buffer, offset, packet, parent)
end

-- Size: Login Reject Code
memx_equities_memo_sbe_v1_6_size_of.login_reject_code = 1

-- Display: Login Reject Code
memx_equities_memo_sbe_v1_6_display.login_reject_code = function(value)
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
memx_equities_memo_sbe_v1_6_dissect.login_reject_code = function(buffer, offset, packet, parent)
  local length = memx_equities_memo_sbe_v1_6_size_of.login_reject_code
  local range = buffer(offset, length)
  local value = range:string()
  local display = memx_equities_memo_sbe_v1_6_display.login_reject_code(value, buffer, offset, packet, parent)

  parent:add(memx_equities_memo_sbe_v1_6.fields.login_reject_code, range, value, display)

  return offset + length, value
end

-- Calculate size of: Login Rejected Message
memx_equities_memo_sbe_v1_6_size_of.login_rejected_message = function(buffer, offset)
  local index = 0

  index = index + memx_equities_memo_sbe_v1_6_size_of.login_reject_code

  return index
end

-- Display: Login Rejected Message
memx_equities_memo_sbe_v1_6_display.login_rejected_message = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Login Rejected Message
memx_equities_memo_sbe_v1_6_dissect.login_rejected_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Login Reject Code: 1 Byte Ascii String Enum with 4 values
  index, login_reject_code = memx_equities_memo_sbe_v1_6_dissect.login_reject_code(buffer, index, packet, parent)

  return index
end

-- Dissect: Login Rejected Message
memx_equities_memo_sbe_v1_6_dissect.login_rejected_message = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.login_rejected_message then
    local length = memx_equities_memo_sbe_v1_6_size_of.login_rejected_message(buffer, offset)
    local range = buffer(offset, length)
    local display = memx_equities_memo_sbe_v1_6_display.login_rejected_message(buffer, packet, parent)
    parent = parent:add(memx_equities_memo_sbe_v1_6.fields.login_rejected_message, range, display)
  end

  return memx_equities_memo_sbe_v1_6_dissect.login_rejected_message_fields(buffer, offset, packet, parent)
end

-- Size: Supported Request Mode
memx_equities_memo_sbe_v1_6_size_of.supported_request_mode = 1

-- Display: Supported Request Mode
memx_equities_memo_sbe_v1_6_display.supported_request_mode = function(value)
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
memx_equities_memo_sbe_v1_6_dissect.supported_request_mode = function(buffer, offset, packet, parent)
  local length = memx_equities_memo_sbe_v1_6_size_of.supported_request_mode
  local range = buffer(offset, length)
  local value = range:string()
  local display = memx_equities_memo_sbe_v1_6_display.supported_request_mode(value, buffer, offset, packet, parent)

  parent:add(memx_equities_memo_sbe_v1_6.fields.supported_request_mode, range, value, display)

  return offset + length, value
end

-- Calculate size of: Login Accepted Message
memx_equities_memo_sbe_v1_6_size_of.login_accepted_message = function(buffer, offset)
  local index = 0

  index = index + memx_equities_memo_sbe_v1_6_size_of.supported_request_mode

  return index
end

-- Display: Login Accepted Message
memx_equities_memo_sbe_v1_6_display.login_accepted_message = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Login Accepted Message
memx_equities_memo_sbe_v1_6_dissect.login_accepted_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Supported Request Mode: 1 Byte Ascii String Enum with 3 values
  index, supported_request_mode = memx_equities_memo_sbe_v1_6_dissect.supported_request_mode(buffer, index, packet, parent)

  return index
end

-- Dissect: Login Accepted Message
memx_equities_memo_sbe_v1_6_dissect.login_accepted_message = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.login_accepted_message then
    local length = memx_equities_memo_sbe_v1_6_size_of.login_accepted_message(buffer, offset)
    local range = buffer(offset, length)
    local display = memx_equities_memo_sbe_v1_6_display.login_accepted_message(buffer, packet, parent)
    parent = parent:add(memx_equities_memo_sbe_v1_6.fields.login_accepted_message, range, display)
  end

  return memx_equities_memo_sbe_v1_6_dissect.login_accepted_message_fields(buffer, offset, packet, parent)
end

-- Calculate size of: Unsequenced Message
memx_equities_memo_sbe_v1_6_size_of.unsequenced_message = function(buffer, offset)
  local index = 0

  index = index + memx_equities_memo_sbe_v1_6_size_of.sbe_message(buffer, offset + index)

  return index
end

-- Display: Unsequenced Message
memx_equities_memo_sbe_v1_6_display.unsequenced_message = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Unsequenced Message
memx_equities_memo_sbe_v1_6_dissect.unsequenced_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Sbe Message: Struct of 2 fields
  index, sbe_message = memx_equities_memo_sbe_v1_6_dissect.sbe_message(buffer, index, packet, parent)

  return index
end

-- Dissect: Unsequenced Message
memx_equities_memo_sbe_v1_6_dissect.unsequenced_message = function(buffer, offset, packet, parent)
  -- Optionally add dynamic struct element to protocol tree
  if show.unsequenced_message then
    local length = memx_equities_memo_sbe_v1_6_size_of.unsequenced_message(buffer, offset)
    local range = buffer(offset, length)
    local display = memx_equities_memo_sbe_v1_6_display.unsequenced_message(buffer, packet, parent)
    parent = parent:add(memx_equities_memo_sbe_v1_6.fields.unsequenced_message, range, display)
  end

  return memx_equities_memo_sbe_v1_6_dissect.unsequenced_message_fields(buffer, offset, packet, parent)
end

-- Calculate size of: Stream Request Message
memx_equities_memo_sbe_v1_6_size_of.stream_request_message = function(buffer, offset)
  local index = 0

  index = index + memx_equities_memo_sbe_v1_6_size_of.session_id

  index = index + memx_equities_memo_sbe_v1_6_size_of.next_sequence_number

  return index
end

-- Display: Stream Request Message
memx_equities_memo_sbe_v1_6_display.stream_request_message = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Stream Request Message
memx_equities_memo_sbe_v1_6_dissect.stream_request_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Session Id: 8 Byte Unsigned Fixed Width Integer
  index, session_id = memx_equities_memo_sbe_v1_6_dissect.session_id(buffer, index, packet, parent)

  -- Next Sequence Number: 8 Byte Unsigned Fixed Width Integer
  index, next_sequence_number = memx_equities_memo_sbe_v1_6_dissect.next_sequence_number(buffer, index, packet, parent)

  return index
end

-- Dissect: Stream Request Message
memx_equities_memo_sbe_v1_6_dissect.stream_request_message = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.stream_request_message then
    local length = memx_equities_memo_sbe_v1_6_size_of.stream_request_message(buffer, offset)
    local range = buffer(offset, length)
    local display = memx_equities_memo_sbe_v1_6_display.stream_request_message(buffer, packet, parent)
    parent = parent:add(memx_equities_memo_sbe_v1_6.fields.stream_request_message, range, display)
  end

  return memx_equities_memo_sbe_v1_6_dissect.stream_request_message_fields(buffer, offset, packet, parent)
end

-- Calculate size of: Replay All Request Message
memx_equities_memo_sbe_v1_6_size_of.replay_all_request_message = function(buffer, offset)
  local index = 0

  index = index + memx_equities_memo_sbe_v1_6_size_of.session_id

  return index
end

-- Display: Replay All Request Message
memx_equities_memo_sbe_v1_6_display.replay_all_request_message = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Replay All Request Message
memx_equities_memo_sbe_v1_6_dissect.replay_all_request_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Session Id: 8 Byte Unsigned Fixed Width Integer
  index, session_id = memx_equities_memo_sbe_v1_6_dissect.session_id(buffer, index, packet, parent)

  return index
end

-- Dissect: Replay All Request Message
memx_equities_memo_sbe_v1_6_dissect.replay_all_request_message = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.replay_all_request_message then
    local length = memx_equities_memo_sbe_v1_6_size_of.replay_all_request_message(buffer, offset)
    local range = buffer(offset, length)
    local display = memx_equities_memo_sbe_v1_6_display.replay_all_request_message(buffer, packet, parent)
    parent = parent:add(memx_equities_memo_sbe_v1_6.fields.replay_all_request_message, range, display)
  end

  return memx_equities_memo_sbe_v1_6_dissect.replay_all_request_message_fields(buffer, offset, packet, parent)
end

-- Size: Count
memx_equities_memo_sbe_v1_6_size_of.count = 4

-- Display: Count
memx_equities_memo_sbe_v1_6_display.count = function(value)
  return "Count: "..value
end

-- Dissect: Count
memx_equities_memo_sbe_v1_6_dissect.count = function(buffer, offset, packet, parent)
  local length = memx_equities_memo_sbe_v1_6_size_of.count
  local range = buffer(offset, length)
  local value = range:uint()
  local display = memx_equities_memo_sbe_v1_6_display.count(value, buffer, offset, packet, parent)

  parent:add(memx_equities_memo_sbe_v1_6.fields.count, range, value, display)

  return offset + length, value
end

-- Calculate size of: Replay Request Message
memx_equities_memo_sbe_v1_6_size_of.replay_request_message = function(buffer, offset)
  local index = 0

  index = index + memx_equities_memo_sbe_v1_6_size_of.session_id

  index = index + memx_equities_memo_sbe_v1_6_size_of.next_sequence_number

  index = index + memx_equities_memo_sbe_v1_6_size_of.count

  return index
end

-- Display: Replay Request Message
memx_equities_memo_sbe_v1_6_display.replay_request_message = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Replay Request Message
memx_equities_memo_sbe_v1_6_dissect.replay_request_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Session Id: 8 Byte Unsigned Fixed Width Integer
  index, session_id = memx_equities_memo_sbe_v1_6_dissect.session_id(buffer, index, packet, parent)

  -- Next Sequence Number: 8 Byte Unsigned Fixed Width Integer
  index, next_sequence_number = memx_equities_memo_sbe_v1_6_dissect.next_sequence_number(buffer, index, packet, parent)

  -- Count: 4 Byte Unsigned Fixed Width Integer
  index, count = memx_equities_memo_sbe_v1_6_dissect.count(buffer, index, packet, parent)

  return index
end

-- Dissect: Replay Request Message
memx_equities_memo_sbe_v1_6_dissect.replay_request_message = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.replay_request_message then
    local length = memx_equities_memo_sbe_v1_6_size_of.replay_request_message(buffer, offset)
    local range = buffer(offset, length)
    local display = memx_equities_memo_sbe_v1_6_display.replay_request_message(buffer, packet, parent)
    parent = parent:add(memx_equities_memo_sbe_v1_6.fields.replay_request_message, range, display)
  end

  return memx_equities_memo_sbe_v1_6_dissect.replay_request_message_fields(buffer, offset, packet, parent)
end

-- Size: Token
memx_equities_memo_sbe_v1_6_size_of.token = 1

-- Display: Token
memx_equities_memo_sbe_v1_6_display.token = function(value)
  return "Token: "..value
end

-- Dissect: Token
memx_equities_memo_sbe_v1_6_dissect.token = function(buffer, offset, packet, parent)
  local length = memx_equities_memo_sbe_v1_6_size_of.token
  local range = buffer(offset, length)
  local value = range:string()
  local display = memx_equities_memo_sbe_v1_6_display.token(value, buffer, offset, packet, parent)

  parent:add(memx_equities_memo_sbe_v1_6.fields.token, range, value, display)

  return offset + length, value
end

-- Size: Token Type
memx_equities_memo_sbe_v1_6_size_of.token_type = 1

-- Display: Token Type
memx_equities_memo_sbe_v1_6_display.token_type = function(value)
  return "Token Type: "..value
end

-- Dissect: Token Type
memx_equities_memo_sbe_v1_6_dissect.token_type = function(buffer, offset, packet, parent)
  local length = memx_equities_memo_sbe_v1_6_size_of.token_type
  local range = buffer(offset, length)
  local value = range:string()
  local display = memx_equities_memo_sbe_v1_6_display.token_type(value, buffer, offset, packet, parent)

  parent:add(memx_equities_memo_sbe_v1_6.fields.token_type, range, value, display)

  return offset + length, value
end

-- Calculate size of: Login Request Message
memx_equities_memo_sbe_v1_6_size_of.login_request_message = function(buffer, offset)
  local index = 0

  index = index + memx_equities_memo_sbe_v1_6_size_of.token_type

  index = index + memx_equities_memo_sbe_v1_6_size_of.token

  return index
end

-- Display: Login Request Message
memx_equities_memo_sbe_v1_6_display.login_request_message = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Login Request Message
memx_equities_memo_sbe_v1_6_dissect.login_request_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Token Type: 1 Byte Ascii String
  index, token_type = memx_equities_memo_sbe_v1_6_dissect.token_type(buffer, index, packet, parent)

  -- Token: 1 Byte Ascii String
  index, token = memx_equities_memo_sbe_v1_6_dissect.token(buffer, index, packet, parent)

  return index
end

-- Dissect: Login Request Message
memx_equities_memo_sbe_v1_6_dissect.login_request_message = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.login_request_message then
    local length = memx_equities_memo_sbe_v1_6_size_of.login_request_message(buffer, offset)
    local range = buffer(offset, length)
    local display = memx_equities_memo_sbe_v1_6_display.login_request_message(buffer, packet, parent)
    parent = parent:add(memx_equities_memo_sbe_v1_6.fields.login_request_message, range, display)
  end

  return memx_equities_memo_sbe_v1_6_dissect.login_request_message_fields(buffer, offset, packet, parent)
end

-- Calculate runtime size of: Data
memx_equities_memo_sbe_v1_6_size_of.data = function(buffer, offset, message_type)
  -- Size of Login Request Message
  if message_type == 100 then
    return memx_equities_memo_sbe_v1_6_size_of.login_request_message(buffer, offset)
  end
  -- Size of Replay Request Message
  if message_type == 101 then
    return memx_equities_memo_sbe_v1_6_size_of.replay_request_message(buffer, offset)
  end
  -- Size of Replay All Request Message
  if message_type == 102 then
    return memx_equities_memo_sbe_v1_6_size_of.replay_all_request_message(buffer, offset)
  end
  -- Size of Stream Request Message
  if message_type == 103 then
    return memx_equities_memo_sbe_v1_6_size_of.stream_request_message(buffer, offset)
  end
  -- Size of Unsequenced Message
  if message_type == 104 then
    return memx_equities_memo_sbe_v1_6_size_of.unsequenced_message(buffer, offset)
  end
  -- Size of Login Accepted Message
  if message_type == 1 then
    return memx_equities_memo_sbe_v1_6_size_of.login_accepted_message(buffer, offset)
  end
  -- Size of Login Rejected Message
  if message_type == 2 then
    return memx_equities_memo_sbe_v1_6_size_of.login_rejected_message(buffer, offset)
  end
  -- Size of Start Of Session Message
  if message_type == 3 then
    return memx_equities_memo_sbe_v1_6_size_of.start_of_session_message(buffer, offset)
  end
  -- Size of Replay Begin Message
  if message_type == 5 then
    return memx_equities_memo_sbe_v1_6_size_of.replay_begin_message(buffer, offset)
  end
  -- Size of Replay Rejected Message
  if message_type == 6 then
    return memx_equities_memo_sbe_v1_6_size_of.replay_rejected_message(buffer, offset)
  end
  -- Size of Replay Complete Message
  if message_type == 7 then
    return memx_equities_memo_sbe_v1_6_size_of.replay_complete_message(buffer, offset)
  end
  -- Size of Stream Begin Message
  if message_type == 8 then
    return memx_equities_memo_sbe_v1_6_size_of.stream_begin_message(buffer, offset)
  end
  -- Size of Stream Rejected Message
  if message_type == 9 then
    return memx_equities_memo_sbe_v1_6_size_of.stream_rejected_message(buffer, offset)
  end
  -- Size of Stream Complete Message
  if message_type == 10 then
    return memx_equities_memo_sbe_v1_6_size_of.stream_complete_message(buffer, offset)
  end
  -- Size of Sequenced Message
  if message_type == 11 then
    return memx_equities_memo_sbe_v1_6_size_of.sequenced_message(buffer, offset)
  end

  return 0
end

-- Display: Data
memx_equities_memo_sbe_v1_6_display.data = function(buffer, offset, packet, parent)
  return ""
end

-- Dissect Branches: Data
memx_equities_memo_sbe_v1_6_dissect.data_branches = function(buffer, offset, packet, parent, message_type)
  -- Dissect Login Request Message
  if message_type == 100 then
    return memx_equities_memo_sbe_v1_6_dissect.login_request_message(buffer, offset, packet, parent)
  end
  -- Dissect Replay Request Message
  if message_type == 101 then
    return memx_equities_memo_sbe_v1_6_dissect.replay_request_message(buffer, offset, packet, parent)
  end
  -- Dissect Replay All Request Message
  if message_type == 102 then
    return memx_equities_memo_sbe_v1_6_dissect.replay_all_request_message(buffer, offset, packet, parent)
  end
  -- Dissect Stream Request Message
  if message_type == 103 then
    return memx_equities_memo_sbe_v1_6_dissect.stream_request_message(buffer, offset, packet, parent)
  end
  -- Dissect Unsequenced Message
  if message_type == 104 then
    return memx_equities_memo_sbe_v1_6_dissect.unsequenced_message(buffer, offset, packet, parent)
  end
  -- Dissect Login Accepted Message
  if message_type == 1 then
    return memx_equities_memo_sbe_v1_6_dissect.login_accepted_message(buffer, offset, packet, parent)
  end
  -- Dissect Login Rejected Message
  if message_type == 2 then
    return memx_equities_memo_sbe_v1_6_dissect.login_rejected_message(buffer, offset, packet, parent)
  end
  -- Dissect Start Of Session Message
  if message_type == 3 then
    return memx_equities_memo_sbe_v1_6_dissect.start_of_session_message(buffer, offset, packet, parent)
  end
  -- Dissect Replay Begin Message
  if message_type == 5 then
    return memx_equities_memo_sbe_v1_6_dissect.replay_begin_message(buffer, offset, packet, parent)
  end
  -- Dissect Replay Rejected Message
  if message_type == 6 then
    return memx_equities_memo_sbe_v1_6_dissect.replay_rejected_message(buffer, offset, packet, parent)
  end
  -- Dissect Replay Complete Message
  if message_type == 7 then
    return memx_equities_memo_sbe_v1_6_dissect.replay_complete_message(buffer, offset, packet, parent)
  end
  -- Dissect Stream Begin Message
  if message_type == 8 then
    return memx_equities_memo_sbe_v1_6_dissect.stream_begin_message(buffer, offset, packet, parent)
  end
  -- Dissect Stream Rejected Message
  if message_type == 9 then
    return memx_equities_memo_sbe_v1_6_dissect.stream_rejected_message(buffer, offset, packet, parent)
  end
  -- Dissect Stream Complete Message
  if message_type == 10 then
    return memx_equities_memo_sbe_v1_6_dissect.stream_complete_message(buffer, offset, packet, parent)
  end
  -- Dissect Sequenced Message
  if message_type == 11 then
    return memx_equities_memo_sbe_v1_6_dissect.sequenced_message(buffer, offset, packet, parent)
  end

  return offset
end

-- Dissect: Data
memx_equities_memo_sbe_v1_6_dissect.data = function(buffer, offset, packet, parent, message_type)
  if not show.data then
    return memx_equities_memo_sbe_v1_6_dissect.data_branches(buffer, offset, packet, parent, message_type)
  end

  -- Calculate size and check that branch is not empty
  local size = memx_equities_memo_sbe_v1_6_size_of.data(buffer, offset, message_type)
  if size == 0 then
    return offset
  end

  -- Dissect Element
  local range = buffer(offset, size)
  local display = memx_equities_memo_sbe_v1_6_display.data(buffer, packet, parent)
  local element = parent:add(memx_equities_memo_sbe_v1_6.fields.data, range, display)

  return memx_equities_memo_sbe_v1_6_dissect.data_branches(buffer, offset, packet, parent, message_type)
end

-- Size: Message Length
memx_equities_memo_sbe_v1_6_size_of.message_length = 2

-- Display: Message Length
memx_equities_memo_sbe_v1_6_display.message_length = function(value)
  return "Message Length: "..value
end

-- Dissect: Message Length
memx_equities_memo_sbe_v1_6_dissect.message_length = function(buffer, offset, packet, parent)
  local length = memx_equities_memo_sbe_v1_6_size_of.message_length
  local range = buffer(offset, length)
  local value = range:uint()
  local display = memx_equities_memo_sbe_v1_6_display.message_length(value, buffer, offset, packet, parent)

  parent:add(memx_equities_memo_sbe_v1_6.fields.message_length, range, value, display)

  return offset + length, value
end

-- Size: Message Type
memx_equities_memo_sbe_v1_6_size_of.message_type = 1

-- Display: Message Type
memx_equities_memo_sbe_v1_6_display.message_type = function(value)
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
memx_equities_memo_sbe_v1_6_dissect.message_type = function(buffer, offset, packet, parent)
  local length = memx_equities_memo_sbe_v1_6_size_of.message_type
  local range = buffer(offset, length)
  local value = range:uint()
  local display = memx_equities_memo_sbe_v1_6_display.message_type(value, buffer, offset, packet, parent)

  parent:add(memx_equities_memo_sbe_v1_6.fields.message_type, range, value, display)

  return offset + length, value
end

-- Calculate size of: Common Header
memx_equities_memo_sbe_v1_6_size_of.common_header = function(buffer, offset)
  local index = 0

  index = index + memx_equities_memo_sbe_v1_6_size_of.message_type

  index = index + memx_equities_memo_sbe_v1_6_size_of.message_length

  return index
end

-- Display: Common Header
memx_equities_memo_sbe_v1_6_display.common_header = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Common Header
memx_equities_memo_sbe_v1_6_dissect.common_header_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Message Type: 1 Byte Unsigned Fixed Width Integer Enum with 16 values
  index, message_type = memx_equities_memo_sbe_v1_6_dissect.message_type(buffer, index, packet, parent)

  -- Message Length: 2 Byte Unsigned Fixed Width Integer
  index, message_length = memx_equities_memo_sbe_v1_6_dissect.message_length(buffer, index, packet, parent)

  return index
end

-- Dissect: Common Header
memx_equities_memo_sbe_v1_6_dissect.common_header = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.common_header then
    local length = memx_equities_memo_sbe_v1_6_size_of.common_header(buffer, offset)
    local range = buffer(offset, length)
    local display = memx_equities_memo_sbe_v1_6_display.common_header(buffer, packet, parent)
    parent = parent:add(memx_equities_memo_sbe_v1_6.fields.common_header, range, display)
  end

  return memx_equities_memo_sbe_v1_6_dissect.common_header_fields(buffer, offset, packet, parent)
end

-- Dissect Packet
memx_equities_memo_sbe_v1_6_dissect.packet = function(buffer, packet, parent)
  local index = 0

  -- Common Header: Struct of 2 fields
  index, common_header = memx_equities_memo_sbe_v1_6_dissect.common_header(buffer, index, packet, parent)

  -- Dependency element: Message Type
  local message_type = buffer(index - 3, 1):uint()

  -- Data: Runtime Type with 15 branches
  index = memx_equities_memo_sbe_v1_6_dissect.data(buffer, index, packet, parent, message_type)

  return index
end


-----------------------------------------------------------------------
-- Protocol Dissector and Components
-----------------------------------------------------------------------

-- Initialize Dissector
function memx_equities_memo_sbe_v1_6.init()
end

-- Dissector for Memx Equities Memo Sbe 1.6
function memx_equities_memo_sbe_v1_6.dissector(buffer, packet, parent)

  -- Set protocol name
  packet.cols.protocol = memx_equities_memo_sbe_v1_6.name

  -- Dissect protocol
  local protocol = parent:add(memx_equities_memo_sbe_v1_6, buffer(), memx_equities_memo_sbe_v1_6.description, "("..buffer:len().." Bytes)")
  return memx_equities_memo_sbe_v1_6_dissect.packet(buffer, packet, protocol)
end

-- Register With Tcp Table
local tcp_table = DissectorTable.get("tcp.port")
tcp_table:add(65333, memx_equities_memo_sbe_v1_6)


-----------------------------------------------------------------------
-- Protocol Heuristics
-----------------------------------------------------------------------

-- Verify size of packet
verify.memx_equities_memo_sbe_v1_6_packet_size = function(buffer)

  return true
end

-- Verify Schema Id Field
verify.schema_id = function(buffer)
  -- Attempt to read field
  local value = buffer(52, 1):uint()

  if value == 1 then
    return true
  end

  return false
end

-- Verify Version Field
verify.version = function(buffer)
  -- Attempt to read field
  local value = buffer(53, 2):uint()

  if value == 262 then
    return true
  end

  return false
end

-- Verify Schema Id Field
verify.schema_id = function(buffer)
  -- Attempt to read field
  local value = buffer(1475, 1):uint()

  if value == 1 then
    return true
  end

  return false
end

-- Verify Version Field
verify.version = function(buffer)
  -- Attempt to read field
  local value = buffer(1476, 2):uint()

  if value == 262 then
    return true
  end

  return false
end

-- Dissector Heuristic for Memx Equities Memo Sbe 1.6
local function memx_equities_memo_sbe_v1_6_heuristic(buffer, packet, parent)
  -- Verify packet length
  if not verify.memx_equities_memo_sbe_v1_6_packet_size(buffer) then return false end

  -- Verify Schema Id
  if not verify.schema_id(buffer) then return false end

  -- Verify Version
  if not verify.version(buffer) then return false end

  -- Verify Schema Id
  if not verify.schema_id(buffer) then return false end

  -- Verify Version
  if not verify.version(buffer) then return false end

  -- Protocol is valid, set conversation and dissect this packet
  packet.conversation = memx_equities_memo_sbe_v1_6
  memx_equities_memo_sbe_v1_6.dissector(buffer, packet, parent)

  return true
end

-- Register Heuristic for Memx Equities Memo Sbe 1.6
memx_equities_memo_sbe_v1_6:register_heuristic("tcp", memx_equities_memo_sbe_v1_6_heuristic)

-----------------------------------------------------------------------
-- Lua dissectors are an easily edited and modified cross platform dissection solution.
-- Feel free to modify. Enjoy.
-----------------------------------------------------------------------
-- 
-- Protocol:
--   Organization: Members Exchange
--   Version: 1.6
--   Date: Monday, July 12, 2021
--   Specification: MEMO SBE-v1_6.pdf
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
