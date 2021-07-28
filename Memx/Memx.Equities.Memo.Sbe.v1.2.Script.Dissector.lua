-----------------------------------------------------------------------
-- Lua Script Wireshark Dissector
-- 
-- Please see end of file for rules and regulations
-----------------------------------------------------------------------

-- Memx Equities Memo Sbe 1.2 Protocol
local memx_equities_memo_sbe_v1_2 = Proto("Memx.Equities.Memo.Sbe.v1.2.Lua", "Memx Equities Memo Sbe 1.2")

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

-- Memx Equities Memo Sbe 1.2 Fields
memx_equities_memo_sbe_v1_2.fields.block_length = ProtoField.new("Block Length", "memx.equities.memo.sbe.v1.2.blocklength", ftypes.UINT16)
memx_equities_memo_sbe_v1_2.fields.cancel_group_id = ProtoField.new("Cancel Group Id", "memx.equities.memo.sbe.v1.2.cancelgroupid", ftypes.UINT16)
memx_equities_memo_sbe_v1_2.fields.cancel_reason = ProtoField.new("Cancel Reason", "memx.equities.memo.sbe.v1.2.cancelreason", ftypes.UINT8)
memx_equities_memo_sbe_v1_2.fields.cl_ord_id = ProtoField.new("Cl Ord Id", "memx.equities.memo.sbe.v1.2.clordid", ftypes.STRING)
memx_equities_memo_sbe_v1_2.fields.common_header = ProtoField.new("Common Header", "memx.equities.memo.sbe.v1.2.commonheader", ftypes.STRING)
memx_equities_memo_sbe_v1_2.fields.count = ProtoField.new("Count", "memx.equities.memo.sbe.v1.2.count", ftypes.UINT32)
memx_equities_memo_sbe_v1_2.fields.cum_qty = ProtoField.new("Cum Qty", "memx.equities.memo.sbe.v1.2.cumqty", ftypes.UINT32)
memx_equities_memo_sbe_v1_2.fields.cust_order_capacity = ProtoField.new("Cust Order Capacity", "memx.equities.memo.sbe.v1.2.custordercapacity", ftypes.UINT8)
memx_equities_memo_sbe_v1_2.fields.cxl_rej_reason = ProtoField.new("Cxl Rej Reason", "memx.equities.memo.sbe.v1.2.cxlrejreason", ftypes.UINT8)
memx_equities_memo_sbe_v1_2.fields.cxl_rej_response_to = ProtoField.new("Cxl Rej Response To", "memx.equities.memo.sbe.v1.2.cxlrejresponseto", ftypes.UINT8)
memx_equities_memo_sbe_v1_2.fields.data = ProtoField.new("Data", "memx.equities.memo.sbe.v1.2.data", ftypes.STRING)
memx_equities_memo_sbe_v1_2.fields.display_method = ProtoField.new("Display Method", "memx.equities.memo.sbe.v1.2.displaymethod", ftypes.UINT8)
memx_equities_memo_sbe_v1_2.fields.display_min_incr = ProtoField.new("Display Min Incr", "memx.equities.memo.sbe.v1.2.displayminincr", ftypes.UINT32)
memx_equities_memo_sbe_v1_2.fields.display_qty = ProtoField.new("Display Qty", "memx.equities.memo.sbe.v1.2.displayqty", ftypes.UINT32)
memx_equities_memo_sbe_v1_2.fields.exec_id = ProtoField.new("Exec Id", "memx.equities.memo.sbe.v1.2.execid", ftypes.UINT64)
memx_equities_memo_sbe_v1_2.fields.exec_inst = ProtoField.new("Exec Inst", "memx.equities.memo.sbe.v1.2.execinst", ftypes.UINT16)
memx_equities_memo_sbe_v1_2.fields.exec_ref_id = ProtoField.new("Exec Ref Id", "memx.equities.memo.sbe.v1.2.execrefid", ftypes.UINT64)
memx_equities_memo_sbe_v1_2.fields.exec_restatement_reason = ProtoField.new("Exec Restatement Reason", "memx.equities.memo.sbe.v1.2.execrestatementreason", ftypes.UINT8)
memx_equities_memo_sbe_v1_2.fields.execution_report_canceled_message = ProtoField.new("Execution Report Canceled Message", "memx.equities.memo.sbe.v1.2.executionreportcanceledmessage", ftypes.STRING)
memx_equities_memo_sbe_v1_2.fields.execution_report_new_message = ProtoField.new("Execution Report New Message", "memx.equities.memo.sbe.v1.2.executionreportnewmessage", ftypes.STRING)
memx_equities_memo_sbe_v1_2.fields.execution_report_pending_cancel_message = ProtoField.new("Execution Report Pending Cancel Message", "memx.equities.memo.sbe.v1.2.executionreportpendingcancelmessage", ftypes.STRING)
memx_equities_memo_sbe_v1_2.fields.execution_report_pending_new_message = ProtoField.new("Execution Report Pending New Message", "memx.equities.memo.sbe.v1.2.executionreportpendingnewmessage", ftypes.STRING)
memx_equities_memo_sbe_v1_2.fields.execution_report_pending_replace_message = ProtoField.new("Execution Report Pending Replace Message", "memx.equities.memo.sbe.v1.2.executionreportpendingreplacemessage", ftypes.STRING)
memx_equities_memo_sbe_v1_2.fields.execution_report_rejected_message = ProtoField.new("Execution Report Rejected Message", "memx.equities.memo.sbe.v1.2.executionreportrejectedmessage", ftypes.STRING)
memx_equities_memo_sbe_v1_2.fields.execution_report_replaced_message = ProtoField.new("Execution Report Replaced Message", "memx.equities.memo.sbe.v1.2.executionreportreplacedmessage", ftypes.STRING)
memx_equities_memo_sbe_v1_2.fields.execution_report_restatement_message = ProtoField.new("Execution Report Restatement Message", "memx.equities.memo.sbe.v1.2.executionreportrestatementmessage", ftypes.STRING)
memx_equities_memo_sbe_v1_2.fields.execution_report_trade_break_message = ProtoField.new("Execution Report Trade Break Message", "memx.equities.memo.sbe.v1.2.executionreporttradebreakmessage", ftypes.STRING)
memx_equities_memo_sbe_v1_2.fields.execution_report_trade_correction_message = ProtoField.new("Execution Report Trade Correction Message", "memx.equities.memo.sbe.v1.2.executionreporttradecorrectionmessage", ftypes.STRING)
memx_equities_memo_sbe_v1_2.fields.execution_report_trade_message = ProtoField.new("Execution Report Trade Message", "memx.equities.memo.sbe.v1.2.executionreporttrademessage", ftypes.STRING)
memx_equities_memo_sbe_v1_2.fields.expire_time = ProtoField.new("Expire Time", "memx.equities.memo.sbe.v1.2.expiretime", ftypes.UINT64)
memx_equities_memo_sbe_v1_2.fields.higher_than_price = ProtoField.new("Higher Than Price", "memx.equities.memo.sbe.v1.2.higherthanprice", ftypes.INT64)
memx_equities_memo_sbe_v1_2.fields.last_liquidity_ind = ProtoField.new("Last Liquidity Ind", "memx.equities.memo.sbe.v1.2.lastliquidityind", ftypes.UINT8)
memx_equities_memo_sbe_v1_2.fields.last_mkt = ProtoField.new("Last Mkt", "memx.equities.memo.sbe.v1.2.lastmkt", ftypes.STRING)
memx_equities_memo_sbe_v1_2.fields.last_px = ProtoField.new("Last Px", "memx.equities.memo.sbe.v1.2.lastpx", ftypes.INT64)
memx_equities_memo_sbe_v1_2.fields.last_qty = ProtoField.new("Last Qty", "memx.equities.memo.sbe.v1.2.lastqty", ftypes.UINT32)
memx_equities_memo_sbe_v1_2.fields.last_shares = ProtoField.new("Last Shares", "memx.equities.memo.sbe.v1.2.lastshares", ftypes.UINT32)
memx_equities_memo_sbe_v1_2.fields.leaves_qty = ProtoField.new("Leaves Qty", "memx.equities.memo.sbe.v1.2.leavesqty", ftypes.UINT32)
memx_equities_memo_sbe_v1_2.fields.locate_reqd = ProtoField.new("Locate Reqd", "memx.equities.memo.sbe.v1.2.locatereqd", ftypes.STRING)
memx_equities_memo_sbe_v1_2.fields.login_accepted_message = ProtoField.new("Login Accepted Message", "memx.equities.memo.sbe.v1.2.loginacceptedmessage", ftypes.STRING)
memx_equities_memo_sbe_v1_2.fields.login_reject_code = ProtoField.new("Login Reject Code", "memx.equities.memo.sbe.v1.2.loginrejectcode", ftypes.STRING)
memx_equities_memo_sbe_v1_2.fields.login_rejected_message = ProtoField.new("Login Rejected Message", "memx.equities.memo.sbe.v1.2.loginrejectedmessage", ftypes.STRING)
memx_equities_memo_sbe_v1_2.fields.login_request_message = ProtoField.new("Login Request Message", "memx.equities.memo.sbe.v1.2.loginrequestmessage", ftypes.STRING)
memx_equities_memo_sbe_v1_2.fields.lower_than_price = ProtoField.new("Lower Than Price", "memx.equities.memo.sbe.v1.2.lowerthanprice", ftypes.INT64)
memx_equities_memo_sbe_v1_2.fields.mass_cancel_done_message = ProtoField.new("Mass Cancel Done Message", "memx.equities.memo.sbe.v1.2.masscanceldonemessage", ftypes.STRING)
memx_equities_memo_sbe_v1_2.fields.mass_cancel_reject_message = ProtoField.new("Mass Cancel Reject Message", "memx.equities.memo.sbe.v1.2.masscancelrejectmessage", ftypes.STRING)
memx_equities_memo_sbe_v1_2.fields.mass_cancel_request_message = ProtoField.new("Mass Cancel Request Message", "memx.equities.memo.sbe.v1.2.masscancelrequestmessage", ftypes.STRING)
memx_equities_memo_sbe_v1_2.fields.message_count = ProtoField.new("Message Count", "memx.equities.memo.sbe.v1.2.messagecount", ftypes.UINT64)
memx_equities_memo_sbe_v1_2.fields.message_length = ProtoField.new("Message Length", "memx.equities.memo.sbe.v1.2.messagelength", ftypes.UINT16)
memx_equities_memo_sbe_v1_2.fields.message_type = ProtoField.new("Message Type", "memx.equities.memo.sbe.v1.2.messagetype", ftypes.UINT8)
memx_equities_memo_sbe_v1_2.fields.min_qty = ProtoField.new("Min Qty", "memx.equities.memo.sbe.v1.2.minqty", ftypes.UINT32)
memx_equities_memo_sbe_v1_2.fields.mpid = ProtoField.new("Mpid", "memx.equities.memo.sbe.v1.2.mpid", ftypes.STRING)
memx_equities_memo_sbe_v1_2.fields.new_order_single_message = ProtoField.new("New Order Single Message", "memx.equities.memo.sbe.v1.2.newordersinglemessage", ftypes.STRING)
memx_equities_memo_sbe_v1_2.fields.next_sequence_number = ProtoField.new("Next Sequence Number", "memx.equities.memo.sbe.v1.2.nextsequencenumber", ftypes.UINT64)
memx_equities_memo_sbe_v1_2.fields.ord_status = ProtoField.new("Ord Status", "memx.equities.memo.sbe.v1.2.ordstatus", ftypes.UINT8)
memx_equities_memo_sbe_v1_2.fields.ord_type = ProtoField.new("Ord Type", "memx.equities.memo.sbe.v1.2.ordtype", ftypes.UINT8)
memx_equities_memo_sbe_v1_2.fields.order_cancel_reject_message = ProtoField.new("Order Cancel Reject Message", "memx.equities.memo.sbe.v1.2.ordercancelrejectmessage", ftypes.STRING)
memx_equities_memo_sbe_v1_2.fields.order_cancel_replace_request_message = ProtoField.new("Order Cancel Replace Request Message", "memx.equities.memo.sbe.v1.2.ordercancelreplacerequestmessage", ftypes.STRING)
memx_equities_memo_sbe_v1_2.fields.order_cancel_request_message = ProtoField.new("Order Cancel Request Message", "memx.equities.memo.sbe.v1.2.ordercancelrequestmessage", ftypes.STRING)
memx_equities_memo_sbe_v1_2.fields.order_capacity = ProtoField.new("Order Capacity", "memx.equities.memo.sbe.v1.2.ordercapacity", ftypes.UINT8)
memx_equities_memo_sbe_v1_2.fields.order_id = ProtoField.new("Order Id", "memx.equities.memo.sbe.v1.2.orderid", ftypes.UINT64)
memx_equities_memo_sbe_v1_2.fields.order_qty = ProtoField.new("Order Qty", "memx.equities.memo.sbe.v1.2.orderqty", ftypes.UINT32)
memx_equities_memo_sbe_v1_2.fields.orig_cl_ord_id = ProtoField.new("Orig Cl Ord Id", "memx.equities.memo.sbe.v1.2.origclordid", ftypes.STRING)
memx_equities_memo_sbe_v1_2.fields.packet = ProtoField.new("Packet", "memx.equities.memo.sbe.v1.2.packet", ftypes.STRING)
memx_equities_memo_sbe_v1_2.fields.payload = ProtoField.new("Payload", "memx.equities.memo.sbe.v1.2.payload", ftypes.STRING)
memx_equities_memo_sbe_v1_2.fields.peg_offset_value = ProtoField.new("Peg Offset Value", "memx.equities.memo.sbe.v1.2.pegoffsetvalue", ftypes.INT64)
memx_equities_memo_sbe_v1_2.fields.peg_price_type = ProtoField.new("Peg Price Type", "memx.equities.memo.sbe.v1.2.pegpricetype", ftypes.UINT8)
memx_equities_memo_sbe_v1_2.fields.pending_mass_cancel_message = ProtoField.new("Pending Mass Cancel Message", "memx.equities.memo.sbe.v1.2.pendingmasscancelmessage", ftypes.STRING)
memx_equities_memo_sbe_v1_2.fields.pending_message_count = ProtoField.new("Pending Message Count", "memx.equities.memo.sbe.v1.2.pendingmessagecount", ftypes.UINT32)
memx_equities_memo_sbe_v1_2.fields.price = ProtoField.new("Price", "memx.equities.memo.sbe.v1.2.price", ftypes.INT64)
memx_equities_memo_sbe_v1_2.fields.reject_reason = ProtoField.new("Reject Reason", "memx.equities.memo.sbe.v1.2.rejectreason", ftypes.UINT8)
memx_equities_memo_sbe_v1_2.fields.replay_all_request_message = ProtoField.new("Replay All Request Message", "memx.equities.memo.sbe.v1.2.replayallrequestmessage", ftypes.STRING)
memx_equities_memo_sbe_v1_2.fields.replay_begin_message = ProtoField.new("Replay Begin Message", "memx.equities.memo.sbe.v1.2.replaybeginmessage", ftypes.STRING)
memx_equities_memo_sbe_v1_2.fields.replay_complete_message = ProtoField.new("Replay Complete Message", "memx.equities.memo.sbe.v1.2.replaycompletemessage", ftypes.STRING)
memx_equities_memo_sbe_v1_2.fields.replay_reject_code = ProtoField.new("Replay Reject Code", "memx.equities.memo.sbe.v1.2.replayrejectcode", ftypes.STRING)
memx_equities_memo_sbe_v1_2.fields.replay_rejected_message = ProtoField.new("Replay Rejected Message", "memx.equities.memo.sbe.v1.2.replayrejectedmessage", ftypes.STRING)
memx_equities_memo_sbe_v1_2.fields.replay_request_message = ProtoField.new("Replay Request Message", "memx.equities.memo.sbe.v1.2.replayrequestmessage", ftypes.STRING)
memx_equities_memo_sbe_v1_2.fields.reprice_behavior = ProtoField.new("Reprice Behavior", "memx.equities.memo.sbe.v1.2.repricebehavior", ftypes.UINT8)
memx_equities_memo_sbe_v1_2.fields.reprice_frequency = ProtoField.new("Reprice Frequency", "memx.equities.memo.sbe.v1.2.repricefrequency", ftypes.UINT8)
memx_equities_memo_sbe_v1_2.fields.reserve_replenish_timing = ProtoField.new("Reserve Replenish Timing", "memx.equities.memo.sbe.v1.2.reservereplenishtiming", ftypes.UINT8)
memx_equities_memo_sbe_v1_2.fields.risk_group_id = ProtoField.new("Risk Group Id", "memx.equities.memo.sbe.v1.2.riskgroupid", ftypes.UINT16)
memx_equities_memo_sbe_v1_2.fields.sbe_header = ProtoField.new("Sbe Header", "memx.equities.memo.sbe.v1.2.sbeheader", ftypes.STRING)
memx_equities_memo_sbe_v1_2.fields.sbe_message = ProtoField.new("Sbe Message", "memx.equities.memo.sbe.v1.2.sbemessage", ftypes.STRING)
memx_equities_memo_sbe_v1_2.fields.schema_id = ProtoField.new("Schema Id", "memx.equities.memo.sbe.v1.2.schemaid", ftypes.UINT8)
memx_equities_memo_sbe_v1_2.fields.self_trade_prevention = ProtoField.new("Self Trade Prevention", "memx.equities.memo.sbe.v1.2.selftradeprevention", ftypes.UINT8)
memx_equities_memo_sbe_v1_2.fields.sending_time = ProtoField.new("Sending Time", "memx.equities.memo.sbe.v1.2.sendingtime", ftypes.UINT64)
memx_equities_memo_sbe_v1_2.fields.sequenced_message = ProtoField.new("Sequenced Message", "memx.equities.memo.sbe.v1.2.sequencedmessage", ftypes.STRING)
memx_equities_memo_sbe_v1_2.fields.session_id = ProtoField.new("Session Id", "memx.equities.memo.sbe.v1.2.sessionid", ftypes.UINT64)
memx_equities_memo_sbe_v1_2.fields.side = ProtoField.new("Side", "memx.equities.memo.sbe.v1.2.side", ftypes.UINT8)
memx_equities_memo_sbe_v1_2.fields.start_of_session_message = ProtoField.new("Start Of Session Message", "memx.equities.memo.sbe.v1.2.startofsessionmessage", ftypes.STRING)
memx_equities_memo_sbe_v1_2.fields.stp_group_id = ProtoField.new("Stp Group Id", "memx.equities.memo.sbe.v1.2.stpgroupid", ftypes.UINT16)
memx_equities_memo_sbe_v1_2.fields.stream_begin_message = ProtoField.new("Stream Begin Message", "memx.equities.memo.sbe.v1.2.streambeginmessage", ftypes.STRING)
memx_equities_memo_sbe_v1_2.fields.stream_complete_message = ProtoField.new("Stream Complete Message", "memx.equities.memo.sbe.v1.2.streamcompletemessage", ftypes.STRING)
memx_equities_memo_sbe_v1_2.fields.stream_reject_code = ProtoField.new("Stream Reject Code", "memx.equities.memo.sbe.v1.2.streamrejectcode", ftypes.STRING)
memx_equities_memo_sbe_v1_2.fields.stream_rejected_message = ProtoField.new("Stream Rejected Message", "memx.equities.memo.sbe.v1.2.streamrejectedmessage", ftypes.STRING)
memx_equities_memo_sbe_v1_2.fields.stream_request_message = ProtoField.new("Stream Request Message", "memx.equities.memo.sbe.v1.2.streamrequestmessage", ftypes.STRING)
memx_equities_memo_sbe_v1_2.fields.supported_request_mode = ProtoField.new("Supported Request Mode", "memx.equities.memo.sbe.v1.2.supportedrequestmode", ftypes.STRING)
memx_equities_memo_sbe_v1_2.fields.symbol = ProtoField.new("Symbol", "memx.equities.memo.sbe.v1.2.symbol", ftypes.STRING)
memx_equities_memo_sbe_v1_2.fields.symbol_sfx = ProtoField.new("Symbol Sfx", "memx.equities.memo.sbe.v1.2.symbolsfx", ftypes.STRING)
memx_equities_memo_sbe_v1_2.fields.template_id = ProtoField.new("Template Id", "memx.equities.memo.sbe.v1.2.templateid", ftypes.UINT8)
memx_equities_memo_sbe_v1_2.fields.time_in_force = ProtoField.new("Time In Force", "memx.equities.memo.sbe.v1.2.timeinforce", ftypes.UINT8)
memx_equities_memo_sbe_v1_2.fields.token = ProtoField.new("Token", "memx.equities.memo.sbe.v1.2.token", ftypes.STRING)
memx_equities_memo_sbe_v1_2.fields.token_type = ProtoField.new("Token Type", "memx.equities.memo.sbe.v1.2.tokentype", ftypes.STRING)
memx_equities_memo_sbe_v1_2.fields.total_sequence_count = ProtoField.new("Total Sequence Count", "memx.equities.memo.sbe.v1.2.totalsequencecount", ftypes.UINT64)
memx_equities_memo_sbe_v1_2.fields.transact_time = ProtoField.new("Transact Time", "memx.equities.memo.sbe.v1.2.transacttime", ftypes.UINT64)
memx_equities_memo_sbe_v1_2.fields.trd_match_id = ProtoField.new("Trd Match Id", "memx.equities.memo.sbe.v1.2.trdmatchid", ftypes.UINT64)
memx_equities_memo_sbe_v1_2.fields.trd_matching_id = ProtoField.new("Trd Matching Id", "memx.equities.memo.sbe.v1.2.trdmatchingid", ftypes.UINT64)
memx_equities_memo_sbe_v1_2.fields.unsequenced_message = ProtoField.new("Unsequenced Message", "memx.equities.memo.sbe.v1.2.unsequencedmessage", ftypes.STRING)
memx_equities_memo_sbe_v1_2.fields.version = ProtoField.new("Version", "memx.equities.memo.sbe.v1.2.version", ftypes.UINT16)

-----------------------------------------------------------------------
-- Declare Dissection Options
-----------------------------------------------------------------------

-- Memx Equities Memo Sbe 1.2 Element Dissection Options
show.common_header = true
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

-- Register Memx Equities Memo Sbe 1.2 Show Options
memx_equities_memo_sbe_v1_2.prefs.show_common_header = Pref.bool("Show Common Header", show.common_header, "Parse and add Common Header to protocol tree")
memx_equities_memo_sbe_v1_2.prefs.show_execution_report_canceled_message = Pref.bool("Show Execution Report Canceled Message", show.execution_report_canceled_message, "Parse and add Execution Report Canceled Message to protocol tree")
memx_equities_memo_sbe_v1_2.prefs.show_execution_report_new_message = Pref.bool("Show Execution Report New Message", show.execution_report_new_message, "Parse and add Execution Report New Message to protocol tree")
memx_equities_memo_sbe_v1_2.prefs.show_execution_report_pending_cancel_message = Pref.bool("Show Execution Report Pending Cancel Message", show.execution_report_pending_cancel_message, "Parse and add Execution Report Pending Cancel Message to protocol tree")
memx_equities_memo_sbe_v1_2.prefs.show_execution_report_pending_new_message = Pref.bool("Show Execution Report Pending New Message", show.execution_report_pending_new_message, "Parse and add Execution Report Pending New Message to protocol tree")
memx_equities_memo_sbe_v1_2.prefs.show_execution_report_pending_replace_message = Pref.bool("Show Execution Report Pending Replace Message", show.execution_report_pending_replace_message, "Parse and add Execution Report Pending Replace Message to protocol tree")
memx_equities_memo_sbe_v1_2.prefs.show_execution_report_rejected_message = Pref.bool("Show Execution Report Rejected Message", show.execution_report_rejected_message, "Parse and add Execution Report Rejected Message to protocol tree")
memx_equities_memo_sbe_v1_2.prefs.show_execution_report_replaced_message = Pref.bool("Show Execution Report Replaced Message", show.execution_report_replaced_message, "Parse and add Execution Report Replaced Message to protocol tree")
memx_equities_memo_sbe_v1_2.prefs.show_execution_report_restatement_message = Pref.bool("Show Execution Report Restatement Message", show.execution_report_restatement_message, "Parse and add Execution Report Restatement Message to protocol tree")
memx_equities_memo_sbe_v1_2.prefs.show_execution_report_trade_break_message = Pref.bool("Show Execution Report Trade Break Message", show.execution_report_trade_break_message, "Parse and add Execution Report Trade Break Message to protocol tree")
memx_equities_memo_sbe_v1_2.prefs.show_execution_report_trade_correction_message = Pref.bool("Show Execution Report Trade Correction Message", show.execution_report_trade_correction_message, "Parse and add Execution Report Trade Correction Message to protocol tree")
memx_equities_memo_sbe_v1_2.prefs.show_execution_report_trade_message = Pref.bool("Show Execution Report Trade Message", show.execution_report_trade_message, "Parse and add Execution Report Trade Message to protocol tree")
memx_equities_memo_sbe_v1_2.prefs.show_login_accepted_message = Pref.bool("Show Login Accepted Message", show.login_accepted_message, "Parse and add Login Accepted Message to protocol tree")
memx_equities_memo_sbe_v1_2.prefs.show_login_rejected_message = Pref.bool("Show Login Rejected Message", show.login_rejected_message, "Parse and add Login Rejected Message to protocol tree")
memx_equities_memo_sbe_v1_2.prefs.show_login_request_message = Pref.bool("Show Login Request Message", show.login_request_message, "Parse and add Login Request Message to protocol tree")
memx_equities_memo_sbe_v1_2.prefs.show_mass_cancel_done_message = Pref.bool("Show Mass Cancel Done Message", show.mass_cancel_done_message, "Parse and add Mass Cancel Done Message to protocol tree")
memx_equities_memo_sbe_v1_2.prefs.show_mass_cancel_reject_message = Pref.bool("Show Mass Cancel Reject Message", show.mass_cancel_reject_message, "Parse and add Mass Cancel Reject Message to protocol tree")
memx_equities_memo_sbe_v1_2.prefs.show_mass_cancel_request_message = Pref.bool("Show Mass Cancel Request Message", show.mass_cancel_request_message, "Parse and add Mass Cancel Request Message to protocol tree")
memx_equities_memo_sbe_v1_2.prefs.show_new_order_single_message = Pref.bool("Show New Order Single Message", show.new_order_single_message, "Parse and add New Order Single Message to protocol tree")
memx_equities_memo_sbe_v1_2.prefs.show_order_cancel_reject_message = Pref.bool("Show Order Cancel Reject Message", show.order_cancel_reject_message, "Parse and add Order Cancel Reject Message to protocol tree")
memx_equities_memo_sbe_v1_2.prefs.show_order_cancel_replace_request_message = Pref.bool("Show Order Cancel Replace Request Message", show.order_cancel_replace_request_message, "Parse and add Order Cancel Replace Request Message to protocol tree")
memx_equities_memo_sbe_v1_2.prefs.show_order_cancel_request_message = Pref.bool("Show Order Cancel Request Message", show.order_cancel_request_message, "Parse and add Order Cancel Request Message to protocol tree")
memx_equities_memo_sbe_v1_2.prefs.show_packet = Pref.bool("Show Packet", show.packet, "Parse and add Packet to protocol tree")
memx_equities_memo_sbe_v1_2.prefs.show_pending_mass_cancel_message = Pref.bool("Show Pending Mass Cancel Message", show.pending_mass_cancel_message, "Parse and add Pending Mass Cancel Message to protocol tree")
memx_equities_memo_sbe_v1_2.prefs.show_replay_all_request_message = Pref.bool("Show Replay All Request Message", show.replay_all_request_message, "Parse and add Replay All Request Message to protocol tree")
memx_equities_memo_sbe_v1_2.prefs.show_replay_begin_message = Pref.bool("Show Replay Begin Message", show.replay_begin_message, "Parse and add Replay Begin Message to protocol tree")
memx_equities_memo_sbe_v1_2.prefs.show_replay_complete_message = Pref.bool("Show Replay Complete Message", show.replay_complete_message, "Parse and add Replay Complete Message to protocol tree")
memx_equities_memo_sbe_v1_2.prefs.show_replay_rejected_message = Pref.bool("Show Replay Rejected Message", show.replay_rejected_message, "Parse and add Replay Rejected Message to protocol tree")
memx_equities_memo_sbe_v1_2.prefs.show_replay_request_message = Pref.bool("Show Replay Request Message", show.replay_request_message, "Parse and add Replay Request Message to protocol tree")
memx_equities_memo_sbe_v1_2.prefs.show_sbe_header = Pref.bool("Show Sbe Header", show.sbe_header, "Parse and add Sbe Header to protocol tree")
memx_equities_memo_sbe_v1_2.prefs.show_sbe_message = Pref.bool("Show Sbe Message", show.sbe_message, "Parse and add Sbe Message to protocol tree")
memx_equities_memo_sbe_v1_2.prefs.show_sequenced_message = Pref.bool("Show Sequenced Message", show.sequenced_message, "Parse and add Sequenced Message to protocol tree")
memx_equities_memo_sbe_v1_2.prefs.show_start_of_session_message = Pref.bool("Show Start Of Session Message", show.start_of_session_message, "Parse and add Start Of Session Message to protocol tree")
memx_equities_memo_sbe_v1_2.prefs.show_stream_begin_message = Pref.bool("Show Stream Begin Message", show.stream_begin_message, "Parse and add Stream Begin Message to protocol tree")
memx_equities_memo_sbe_v1_2.prefs.show_stream_complete_message = Pref.bool("Show Stream Complete Message", show.stream_complete_message, "Parse and add Stream Complete Message to protocol tree")
memx_equities_memo_sbe_v1_2.prefs.show_stream_rejected_message = Pref.bool("Show Stream Rejected Message", show.stream_rejected_message, "Parse and add Stream Rejected Message to protocol tree")
memx_equities_memo_sbe_v1_2.prefs.show_stream_request_message = Pref.bool("Show Stream Request Message", show.stream_request_message, "Parse and add Stream Request Message to protocol tree")
memx_equities_memo_sbe_v1_2.prefs.show_unsequenced_message = Pref.bool("Show Unsequenced Message", show.unsequenced_message, "Parse and add Unsequenced Message to protocol tree")
memx_equities_memo_sbe_v1_2.prefs.show_data = Pref.bool("Show Data", show.data, "Parse and add Data to protocol tree")
memx_equities_memo_sbe_v1_2.prefs.show_payload = Pref.bool("Show Payload", show.payload, "Parse and add Payload to protocol tree")

-- Handle changed preferences
function memx_equities_memo_sbe_v1_2.prefs_changed()
  local changed = false

  -- Check if show options have changed
  if show.common_header ~= memx_equities_memo_sbe_v1_2.prefs.show_common_header then
    show.common_header = memx_equities_memo_sbe_v1_2.prefs.show_common_header
    changed = true
  end
  if show.execution_report_canceled_message ~= memx_equities_memo_sbe_v1_2.prefs.show_execution_report_canceled_message then
    show.execution_report_canceled_message = memx_equities_memo_sbe_v1_2.prefs.show_execution_report_canceled_message
    changed = true
  end
  if show.execution_report_new_message ~= memx_equities_memo_sbe_v1_2.prefs.show_execution_report_new_message then
    show.execution_report_new_message = memx_equities_memo_sbe_v1_2.prefs.show_execution_report_new_message
    changed = true
  end
  if show.execution_report_pending_cancel_message ~= memx_equities_memo_sbe_v1_2.prefs.show_execution_report_pending_cancel_message then
    show.execution_report_pending_cancel_message = memx_equities_memo_sbe_v1_2.prefs.show_execution_report_pending_cancel_message
    changed = true
  end
  if show.execution_report_pending_new_message ~= memx_equities_memo_sbe_v1_2.prefs.show_execution_report_pending_new_message then
    show.execution_report_pending_new_message = memx_equities_memo_sbe_v1_2.prefs.show_execution_report_pending_new_message
    changed = true
  end
  if show.execution_report_pending_replace_message ~= memx_equities_memo_sbe_v1_2.prefs.show_execution_report_pending_replace_message then
    show.execution_report_pending_replace_message = memx_equities_memo_sbe_v1_2.prefs.show_execution_report_pending_replace_message
    changed = true
  end
  if show.execution_report_rejected_message ~= memx_equities_memo_sbe_v1_2.prefs.show_execution_report_rejected_message then
    show.execution_report_rejected_message = memx_equities_memo_sbe_v1_2.prefs.show_execution_report_rejected_message
    changed = true
  end
  if show.execution_report_replaced_message ~= memx_equities_memo_sbe_v1_2.prefs.show_execution_report_replaced_message then
    show.execution_report_replaced_message = memx_equities_memo_sbe_v1_2.prefs.show_execution_report_replaced_message
    changed = true
  end
  if show.execution_report_restatement_message ~= memx_equities_memo_sbe_v1_2.prefs.show_execution_report_restatement_message then
    show.execution_report_restatement_message = memx_equities_memo_sbe_v1_2.prefs.show_execution_report_restatement_message
    changed = true
  end
  if show.execution_report_trade_break_message ~= memx_equities_memo_sbe_v1_2.prefs.show_execution_report_trade_break_message then
    show.execution_report_trade_break_message = memx_equities_memo_sbe_v1_2.prefs.show_execution_report_trade_break_message
    changed = true
  end
  if show.execution_report_trade_correction_message ~= memx_equities_memo_sbe_v1_2.prefs.show_execution_report_trade_correction_message then
    show.execution_report_trade_correction_message = memx_equities_memo_sbe_v1_2.prefs.show_execution_report_trade_correction_message
    changed = true
  end
  if show.execution_report_trade_message ~= memx_equities_memo_sbe_v1_2.prefs.show_execution_report_trade_message then
    show.execution_report_trade_message = memx_equities_memo_sbe_v1_2.prefs.show_execution_report_trade_message
    changed = true
  end
  if show.login_accepted_message ~= memx_equities_memo_sbe_v1_2.prefs.show_login_accepted_message then
    show.login_accepted_message = memx_equities_memo_sbe_v1_2.prefs.show_login_accepted_message
    changed = true
  end
  if show.login_rejected_message ~= memx_equities_memo_sbe_v1_2.prefs.show_login_rejected_message then
    show.login_rejected_message = memx_equities_memo_sbe_v1_2.prefs.show_login_rejected_message
    changed = true
  end
  if show.login_request_message ~= memx_equities_memo_sbe_v1_2.prefs.show_login_request_message then
    show.login_request_message = memx_equities_memo_sbe_v1_2.prefs.show_login_request_message
    changed = true
  end
  if show.mass_cancel_done_message ~= memx_equities_memo_sbe_v1_2.prefs.show_mass_cancel_done_message then
    show.mass_cancel_done_message = memx_equities_memo_sbe_v1_2.prefs.show_mass_cancel_done_message
    changed = true
  end
  if show.mass_cancel_reject_message ~= memx_equities_memo_sbe_v1_2.prefs.show_mass_cancel_reject_message then
    show.mass_cancel_reject_message = memx_equities_memo_sbe_v1_2.prefs.show_mass_cancel_reject_message
    changed = true
  end
  if show.mass_cancel_request_message ~= memx_equities_memo_sbe_v1_2.prefs.show_mass_cancel_request_message then
    show.mass_cancel_request_message = memx_equities_memo_sbe_v1_2.prefs.show_mass_cancel_request_message
    changed = true
  end
  if show.new_order_single_message ~= memx_equities_memo_sbe_v1_2.prefs.show_new_order_single_message then
    show.new_order_single_message = memx_equities_memo_sbe_v1_2.prefs.show_new_order_single_message
    changed = true
  end
  if show.order_cancel_reject_message ~= memx_equities_memo_sbe_v1_2.prefs.show_order_cancel_reject_message then
    show.order_cancel_reject_message = memx_equities_memo_sbe_v1_2.prefs.show_order_cancel_reject_message
    changed = true
  end
  if show.order_cancel_replace_request_message ~= memx_equities_memo_sbe_v1_2.prefs.show_order_cancel_replace_request_message then
    show.order_cancel_replace_request_message = memx_equities_memo_sbe_v1_2.prefs.show_order_cancel_replace_request_message
    changed = true
  end
  if show.order_cancel_request_message ~= memx_equities_memo_sbe_v1_2.prefs.show_order_cancel_request_message then
    show.order_cancel_request_message = memx_equities_memo_sbe_v1_2.prefs.show_order_cancel_request_message
    changed = true
  end
  if show.packet ~= memx_equities_memo_sbe_v1_2.prefs.show_packet then
    show.packet = memx_equities_memo_sbe_v1_2.prefs.show_packet
    changed = true
  end
  if show.pending_mass_cancel_message ~= memx_equities_memo_sbe_v1_2.prefs.show_pending_mass_cancel_message then
    show.pending_mass_cancel_message = memx_equities_memo_sbe_v1_2.prefs.show_pending_mass_cancel_message
    changed = true
  end
  if show.replay_all_request_message ~= memx_equities_memo_sbe_v1_2.prefs.show_replay_all_request_message then
    show.replay_all_request_message = memx_equities_memo_sbe_v1_2.prefs.show_replay_all_request_message
    changed = true
  end
  if show.replay_begin_message ~= memx_equities_memo_sbe_v1_2.prefs.show_replay_begin_message then
    show.replay_begin_message = memx_equities_memo_sbe_v1_2.prefs.show_replay_begin_message
    changed = true
  end
  if show.replay_complete_message ~= memx_equities_memo_sbe_v1_2.prefs.show_replay_complete_message then
    show.replay_complete_message = memx_equities_memo_sbe_v1_2.prefs.show_replay_complete_message
    changed = true
  end
  if show.replay_rejected_message ~= memx_equities_memo_sbe_v1_2.prefs.show_replay_rejected_message then
    show.replay_rejected_message = memx_equities_memo_sbe_v1_2.prefs.show_replay_rejected_message
    changed = true
  end
  if show.replay_request_message ~= memx_equities_memo_sbe_v1_2.prefs.show_replay_request_message then
    show.replay_request_message = memx_equities_memo_sbe_v1_2.prefs.show_replay_request_message
    changed = true
  end
  if show.sbe_header ~= memx_equities_memo_sbe_v1_2.prefs.show_sbe_header then
    show.sbe_header = memx_equities_memo_sbe_v1_2.prefs.show_sbe_header
    changed = true
  end
  if show.sbe_message ~= memx_equities_memo_sbe_v1_2.prefs.show_sbe_message then
    show.sbe_message = memx_equities_memo_sbe_v1_2.prefs.show_sbe_message
    changed = true
  end
  if show.sequenced_message ~= memx_equities_memo_sbe_v1_2.prefs.show_sequenced_message then
    show.sequenced_message = memx_equities_memo_sbe_v1_2.prefs.show_sequenced_message
    changed = true
  end
  if show.start_of_session_message ~= memx_equities_memo_sbe_v1_2.prefs.show_start_of_session_message then
    show.start_of_session_message = memx_equities_memo_sbe_v1_2.prefs.show_start_of_session_message
    changed = true
  end
  if show.stream_begin_message ~= memx_equities_memo_sbe_v1_2.prefs.show_stream_begin_message then
    show.stream_begin_message = memx_equities_memo_sbe_v1_2.prefs.show_stream_begin_message
    changed = true
  end
  if show.stream_complete_message ~= memx_equities_memo_sbe_v1_2.prefs.show_stream_complete_message then
    show.stream_complete_message = memx_equities_memo_sbe_v1_2.prefs.show_stream_complete_message
    changed = true
  end
  if show.stream_rejected_message ~= memx_equities_memo_sbe_v1_2.prefs.show_stream_rejected_message then
    show.stream_rejected_message = memx_equities_memo_sbe_v1_2.prefs.show_stream_rejected_message
    changed = true
  end
  if show.stream_request_message ~= memx_equities_memo_sbe_v1_2.prefs.show_stream_request_message then
    show.stream_request_message = memx_equities_memo_sbe_v1_2.prefs.show_stream_request_message
    changed = true
  end
  if show.unsequenced_message ~= memx_equities_memo_sbe_v1_2.prefs.show_unsequenced_message then
    show.unsequenced_message = memx_equities_memo_sbe_v1_2.prefs.show_unsequenced_message
    changed = true
  end
  if show.data ~= memx_equities_memo_sbe_v1_2.prefs.show_data then
    show.data = memx_equities_memo_sbe_v1_2.prefs.show_data
    changed = true
  end
  if show.payload ~= memx_equities_memo_sbe_v1_2.prefs.show_payload then
    show.payload = memx_equities_memo_sbe_v1_2.prefs.show_payload
    changed = true
  end

  -- Reload on changed preference
  if changed then
    reload()
  end
end


-----------------------------------------------------------------------
-- Dissect Memx Equities Memo Sbe 1.2
-----------------------------------------------------------------------

-- Size: Reject Reason
size_of.reject_reason = 1

-- Display: Reject Reason
display.reject_reason = function(value)
  return "Reject Reason: "..value
end

-- Dissect: Reject Reason
dissect.reject_reason = function(buffer, offset, packet, parent)
  local length = size_of.reject_reason
  local range = buffer(offset, length)
  local value = range:uint()
  local display = display.reject_reason(value, buffer, offset, packet, parent)

  parent:add(memx_equities_memo_sbe_v1_2.fields.reject_reason, range, value, display)

  return offset + length, value
end

-- Size: Cancel Group Id
size_of.cancel_group_id = 2

-- Display: Cancel Group Id
display.cancel_group_id = function(value)
  return "Cancel Group Id: "..value
end

-- Dissect: Cancel Group Id
dissect.cancel_group_id = function(buffer, offset, packet, parent)
  local length = size_of.cancel_group_id
  local range = buffer(offset, length)
  local value = range:uint()
  local display = display.cancel_group_id(value, buffer, offset, packet, parent)

  parent:add(memx_equities_memo_sbe_v1_2.fields.cancel_group_id, range, value, display)

  return offset + length, value
end

-- Size: Higher Than Price
size_of.higher_than_price = 8

-- Display: Higher Than Price
display.higher_than_price = function(value)
  return "Higher Than Price: "..value
end

-- Dissect: Higher Than Price
dissect.higher_than_price = function(buffer, offset, packet, parent)
  local length = size_of.higher_than_price
  local range = buffer(offset, length)
  local value = range:int64()
  local display = display.higher_than_price(value, buffer, offset, packet, parent)

  parent:add(memx_equities_memo_sbe_v1_2.fields.higher_than_price, range, value, display)

  return offset + length, value
end

-- Size: Lower Than Price
size_of.lower_than_price = 8

-- Display: Lower Than Price
display.lower_than_price = function(value)
  return "Lower Than Price: "..value
end

-- Dissect: Lower Than Price
dissect.lower_than_price = function(buffer, offset, packet, parent)
  local length = size_of.lower_than_price
  local range = buffer(offset, length)
  local value = range:int64()
  local display = display.lower_than_price(value, buffer, offset, packet, parent)

  parent:add(memx_equities_memo_sbe_v1_2.fields.lower_than_price, range, value, display)

  return offset + length, value
end

-- Size: Side
size_of.side = 1

-- Display: Side
display.side = function(value)
  return "Side: "..value
end

-- Dissect: Side
dissect.side = function(buffer, offset, packet, parent)
  local length = size_of.side
  local range = buffer(offset, length)
  local value = range:uint()
  local display = display.side(value, buffer, offset, packet, parent)

  parent:add(memx_equities_memo_sbe_v1_2.fields.side, range, value, display)

  return offset + length, value
end

-- Size: Symbol Sfx
size_of.symbol_sfx = 6

-- Display: Symbol Sfx
display.symbol_sfx = function(value)
  return "Symbol Sfx: "..value
end

-- Dissect: Symbol Sfx
dissect.symbol_sfx = function(buffer, offset, packet, parent)
  local length = size_of.symbol_sfx
  local range = buffer(offset, length)
  local value = range:string()
  local display = display.symbol_sfx(value, buffer, offset, packet, parent)

  parent:add(memx_equities_memo_sbe_v1_2.fields.symbol_sfx, range, value, display)

  return offset + length, value
end

-- Size: Symbol
size_of.symbol = 6

-- Display: Symbol
display.symbol = function(value)
  return "Symbol: "..value
end

-- Dissect: Symbol
dissect.symbol = function(buffer, offset, packet, parent)
  local length = size_of.symbol
  local range = buffer(offset, length)
  local value = range:string()
  local display = display.symbol(value, buffer, offset, packet, parent)

  parent:add(memx_equities_memo_sbe_v1_2.fields.symbol, range, value, display)

  return offset + length, value
end

-- Size: Cl Ord Id
size_of.cl_ord_id = 16

-- Display: Cl Ord Id
display.cl_ord_id = function(value)
  return "Cl Ord Id: "..value
end

-- Dissect: Cl Ord Id
dissect.cl_ord_id = function(buffer, offset, packet, parent)
  local length = size_of.cl_ord_id
  local range = buffer(offset, length)
  local value = range:string()
  local display = display.cl_ord_id(value, buffer, offset, packet, parent)

  parent:add(memx_equities_memo_sbe_v1_2.fields.cl_ord_id, range, value, display)

  return offset + length, value
end

-- Size: Sending Time
size_of.sending_time = 8

-- Display: Sending Time
display.sending_time = function(value)
  return "Sending Time: "..value
end

-- Dissect: Sending Time
dissect.sending_time = function(buffer, offset, packet, parent)
  local length = size_of.sending_time
  local range = buffer(offset, length)
  local value = range:uint64()
  local display = display.sending_time(value, buffer, offset, packet, parent)

  parent:add(memx_equities_memo_sbe_v1_2.fields.sending_time, range, value, display)

  return offset + length, value
end

-- Calculate size of: Mass Cancel Reject Message
size_of.mass_cancel_reject_message = function(buffer, offset)
  local index = 0

  index = index + size_of.sending_time

  index = index + size_of.cl_ord_id

  index = index + size_of.symbol

  index = index + size_of.symbol_sfx

  index = index + size_of.side

  index = index + size_of.lower_than_price

  index = index + size_of.higher_than_price

  index = index + size_of.cancel_group_id

  index = index + size_of.reject_reason

  return index
end

-- Display: Mass Cancel Reject Message
display.mass_cancel_reject_message = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Mass Cancel Reject Message
dissect.mass_cancel_reject_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Sending Time: 8 Byte Unsigned Fixed Width Integer
  index, sending_time = dissect.sending_time(buffer, index, packet, parent)

  -- Cl Ord Id: 16 Byte Ascii String
  index, cl_ord_id = dissect.cl_ord_id(buffer, index, packet, parent)

  -- Symbol: 6 Byte Ascii String
  index, symbol = dissect.symbol(buffer, index, packet, parent)

  -- Symbol Sfx: 6 Byte Ascii String
  index, symbol_sfx = dissect.symbol_sfx(buffer, index, packet, parent)

  -- Side: 1 Byte Unsigned Fixed Width Integer
  index, side = dissect.side(buffer, index, packet, parent)

  -- Lower Than Price: 8 Byte Signed Fixed Width Integer
  index, lower_than_price = dissect.lower_than_price(buffer, index, packet, parent)

  -- Higher Than Price: 8 Byte Signed Fixed Width Integer
  index, higher_than_price = dissect.higher_than_price(buffer, index, packet, parent)

  -- Cancel Group Id: 2 Byte Unsigned Fixed Width Integer
  index, cancel_group_id = dissect.cancel_group_id(buffer, index, packet, parent)

  -- Reject Reason: 1 Byte Unsigned Fixed Width Integer
  index, reject_reason = dissect.reject_reason(buffer, index, packet, parent)

  return index
end

-- Dissect: Mass Cancel Reject Message
dissect.mass_cancel_reject_message = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.mass_cancel_reject_message then
    local length = size_of.mass_cancel_reject_message(buffer, offset)
    local range = buffer(offset, length)
    local display = display.mass_cancel_reject_message(buffer, packet, parent)
    parent = parent:add(memx_equities_memo_sbe_v1_2.fields.mass_cancel_reject_message, range, display)
  end

  return dissect.mass_cancel_reject_message_fields(buffer, offset, packet, parent)
end

-- Size: Cxl Rej Reason
size_of.cxl_rej_reason = 1

-- Display: Cxl Rej Reason
display.cxl_rej_reason = function(value)
  return "Cxl Rej Reason: "..value
end

-- Dissect: Cxl Rej Reason
dissect.cxl_rej_reason = function(buffer, offset, packet, parent)
  local length = size_of.cxl_rej_reason
  local range = buffer(offset, length)
  local value = range:uint()
  local display = display.cxl_rej_reason(value, buffer, offset, packet, parent)

  parent:add(memx_equities_memo_sbe_v1_2.fields.cxl_rej_reason, range, value, display)

  return offset + length, value
end

-- Size: Cxl Rej Response To
size_of.cxl_rej_response_to = 1

-- Display: Cxl Rej Response To
display.cxl_rej_response_to = function(value)
  return "Cxl Rej Response To: "..value
end

-- Dissect: Cxl Rej Response To
dissect.cxl_rej_response_to = function(buffer, offset, packet, parent)
  local length = size_of.cxl_rej_response_to
  local range = buffer(offset, length)
  local value = range:uint()
  local display = display.cxl_rej_response_to(value, buffer, offset, packet, parent)

  parent:add(memx_equities_memo_sbe_v1_2.fields.cxl_rej_response_to, range, value, display)

  return offset + length, value
end

-- Calculate size of: Order Cancel Reject Message
size_of.order_cancel_reject_message = function(buffer, offset)
  local index = 0

  index = index + size_of.sending_time

  index = index + size_of.cl_ord_id

  index = index + size_of.cxl_rej_response_to

  index = index + size_of.cxl_rej_reason

  return index
end

-- Display: Order Cancel Reject Message
display.order_cancel_reject_message = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Order Cancel Reject Message
dissect.order_cancel_reject_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Sending Time: 8 Byte Unsigned Fixed Width Integer
  index, sending_time = dissect.sending_time(buffer, index, packet, parent)

  -- Cl Ord Id: 16 Byte Ascii String
  index, cl_ord_id = dissect.cl_ord_id(buffer, index, packet, parent)

  -- Cxl Rej Response To: 1 Byte Unsigned Fixed Width Integer
  index, cxl_rej_response_to = dissect.cxl_rej_response_to(buffer, index, packet, parent)

  -- Cxl Rej Reason: 1 Byte Unsigned Fixed Width Integer
  index, cxl_rej_reason = dissect.cxl_rej_reason(buffer, index, packet, parent)

  return index
end

-- Dissect: Order Cancel Reject Message
dissect.order_cancel_reject_message = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.order_cancel_reject_message then
    local length = size_of.order_cancel_reject_message(buffer, offset)
    local range = buffer(offset, length)
    local display = display.order_cancel_reject_message(buffer, packet, parent)
    parent = parent:add(memx_equities_memo_sbe_v1_2.fields.order_cancel_reject_message, range, display)
  end

  return dissect.order_cancel_reject_message_fields(buffer, offset, packet, parent)
end

-- Size: Transact Time
size_of.transact_time = 8

-- Display: Transact Time
display.transact_time = function(value)
  return "Transact Time: "..value
end

-- Dissect: Transact Time
dissect.transact_time = function(buffer, offset, packet, parent)
  local length = size_of.transact_time
  local range = buffer(offset, length)
  local value = range:uint64()
  local display = display.transact_time(value, buffer, offset, packet, parent)

  parent:add(memx_equities_memo_sbe_v1_2.fields.transact_time, range, value, display)

  return offset + length, value
end

-- Size: Exec Restatement Reason
size_of.exec_restatement_reason = 1

-- Display: Exec Restatement Reason
display.exec_restatement_reason = function(value)
  return "Exec Restatement Reason: "..value
end

-- Dissect: Exec Restatement Reason
dissect.exec_restatement_reason = function(buffer, offset, packet, parent)
  local length = size_of.exec_restatement_reason
  local range = buffer(offset, length)
  local value = range:uint()
  local display = display.exec_restatement_reason(value, buffer, offset, packet, parent)

  parent:add(memx_equities_memo_sbe_v1_2.fields.exec_restatement_reason, range, value, display)

  return offset + length, value
end

-- Size: Last Shares
size_of.last_shares = 4

-- Display: Last Shares
display.last_shares = function(value)
  return "Last Shares: "..value
end

-- Dissect: Last Shares
dissect.last_shares = function(buffer, offset, packet, parent)
  local length = size_of.last_shares
  local range = buffer(offset, length)
  local value = range:uint()
  local display = display.last_shares(value, buffer, offset, packet, parent)

  parent:add(memx_equities_memo_sbe_v1_2.fields.last_shares, range, value, display)

  return offset + length, value
end

-- Size: Cum Qty
size_of.cum_qty = 4

-- Display: Cum Qty
display.cum_qty = function(value)
  return "Cum Qty: "..value
end

-- Dissect: Cum Qty
dissect.cum_qty = function(buffer, offset, packet, parent)
  local length = size_of.cum_qty
  local range = buffer(offset, length)
  local value = range:uint()
  local display = display.cum_qty(value, buffer, offset, packet, parent)

  parent:add(memx_equities_memo_sbe_v1_2.fields.cum_qty, range, value, display)

  return offset + length, value
end

-- Size: Leaves Qty
size_of.leaves_qty = 4

-- Display: Leaves Qty
display.leaves_qty = function(value)
  return "Leaves Qty: "..value
end

-- Dissect: Leaves Qty
dissect.leaves_qty = function(buffer, offset, packet, parent)
  local length = size_of.leaves_qty
  local range = buffer(offset, length)
  local value = range:uint()
  local display = display.leaves_qty(value, buffer, offset, packet, parent)

  parent:add(memx_equities_memo_sbe_v1_2.fields.leaves_qty, range, value, display)

  return offset + length, value
end

-- Size: Last Px
size_of.last_px = 8

-- Display: Last Px
display.last_px = function(value)
  return "Last Px: "..value
end

-- Dissect: Last Px
dissect.last_px = function(buffer, offset, packet, parent)
  local length = size_of.last_px
  local range = buffer(offset, length)
  local value = range:int64()
  local display = display.last_px(value, buffer, offset, packet, parent)

  parent:add(memx_equities_memo_sbe_v1_2.fields.last_px, range, value, display)

  return offset + length, value
end

-- Size: Ord Status
size_of.ord_status = 1

-- Display: Ord Status
display.ord_status = function(value)
  return "Ord Status: "..value
end

-- Dissect: Ord Status
dissect.ord_status = function(buffer, offset, packet, parent)
  local length = size_of.ord_status
  local range = buffer(offset, length)
  local value = range:uint()
  local display = display.ord_status(value, buffer, offset, packet, parent)

  parent:add(memx_equities_memo_sbe_v1_2.fields.ord_status, range, value, display)

  return offset + length, value
end

-- Size: Exec Id
size_of.exec_id = 8

-- Display: Exec Id
display.exec_id = function(value)
  return "Exec Id: "..value
end

-- Dissect: Exec Id
dissect.exec_id = function(buffer, offset, packet, parent)
  local length = size_of.exec_id
  local range = buffer(offset, length)
  local value = range:uint64()
  local display = display.exec_id(value, buffer, offset, packet, parent)

  parent:add(memx_equities_memo_sbe_v1_2.fields.exec_id, range, value, display)

  return offset + length, value
end

-- Size: Order Id
size_of.order_id = 8

-- Display: Order Id
display.order_id = function(value)
  return "Order Id: "..value
end

-- Dissect: Order Id
dissect.order_id = function(buffer, offset, packet, parent)
  local length = size_of.order_id
  local range = buffer(offset, length)
  local value = range:uint64()
  local display = display.order_id(value, buffer, offset, packet, parent)

  parent:add(memx_equities_memo_sbe_v1_2.fields.order_id, range, value, display)

  return offset + length, value
end

-- Calculate size of: Execution Report Restatement Message
size_of.execution_report_restatement_message = function(buffer, offset)
  local index = 0

  index = index + size_of.sending_time

  index = index + size_of.order_id

  index = index + size_of.cl_ord_id

  index = index + size_of.exec_id

  index = index + size_of.ord_status

  index = index + size_of.last_px

  index = index + size_of.leaves_qty

  index = index + size_of.cum_qty

  index = index + size_of.last_shares

  index = index + size_of.exec_restatement_reason

  index = index + size_of.transact_time

  return index
end

-- Display: Execution Report Restatement Message
display.execution_report_restatement_message = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Execution Report Restatement Message
dissect.execution_report_restatement_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Sending Time: 8 Byte Unsigned Fixed Width Integer
  index, sending_time = dissect.sending_time(buffer, index, packet, parent)

  -- Order Id: 8 Byte Unsigned Fixed Width Integer
  index, order_id = dissect.order_id(buffer, index, packet, parent)

  -- Cl Ord Id: 16 Byte Ascii String
  index, cl_ord_id = dissect.cl_ord_id(buffer, index, packet, parent)

  -- Exec Id: 8 Byte Unsigned Fixed Width Integer
  index, exec_id = dissect.exec_id(buffer, index, packet, parent)

  -- Ord Status: 1 Byte Unsigned Fixed Width Integer
  index, ord_status = dissect.ord_status(buffer, index, packet, parent)

  -- Last Px: 8 Byte Signed Fixed Width Integer
  index, last_px = dissect.last_px(buffer, index, packet, parent)

  -- Leaves Qty: 4 Byte Unsigned Fixed Width Integer
  index, leaves_qty = dissect.leaves_qty(buffer, index, packet, parent)

  -- Cum Qty: 4 Byte Unsigned Fixed Width Integer
  index, cum_qty = dissect.cum_qty(buffer, index, packet, parent)

  -- Last Shares: 4 Byte Unsigned Fixed Width Integer
  index, last_shares = dissect.last_shares(buffer, index, packet, parent)

  -- Exec Restatement Reason: 1 Byte Unsigned Fixed Width Integer
  index, exec_restatement_reason = dissect.exec_restatement_reason(buffer, index, packet, parent)

  -- Transact Time: 8 Byte Unsigned Fixed Width Integer
  index, transact_time = dissect.transact_time(buffer, index, packet, parent)

  return index
end

-- Dissect: Execution Report Restatement Message
dissect.execution_report_restatement_message = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.execution_report_restatement_message then
    local length = size_of.execution_report_restatement_message(buffer, offset)
    local range = buffer(offset, length)
    local display = display.execution_report_restatement_message(buffer, packet, parent)
    parent = parent:add(memx_equities_memo_sbe_v1_2.fields.execution_report_restatement_message, range, display)
  end

  return dissect.execution_report_restatement_message_fields(buffer, offset, packet, parent)
end

-- Size: Trd Match Id
size_of.trd_match_id = 8

-- Display: Trd Match Id
display.trd_match_id = function(value)
  return "Trd Match Id: "..value
end

-- Dissect: Trd Match Id
dissect.trd_match_id = function(buffer, offset, packet, parent)
  local length = size_of.trd_match_id
  local range = buffer(offset, length)
  local value = range:uint64()
  local display = display.trd_match_id(value, buffer, offset, packet, parent)

  parent:add(memx_equities_memo_sbe_v1_2.fields.trd_match_id, range, value, display)

  return offset + length, value
end

-- Size: Exec Ref Id
size_of.exec_ref_id = 8

-- Display: Exec Ref Id
display.exec_ref_id = function(value)
  return "Exec Ref Id: "..value
end

-- Dissect: Exec Ref Id
dissect.exec_ref_id = function(buffer, offset, packet, parent)
  local length = size_of.exec_ref_id
  local range = buffer(offset, length)
  local value = range:uint64()
  local display = display.exec_ref_id(value, buffer, offset, packet, parent)

  parent:add(memx_equities_memo_sbe_v1_2.fields.exec_ref_id, range, value, display)

  return offset + length, value
end

-- Calculate size of: Execution Report Trade Break Message
size_of.execution_report_trade_break_message = function(buffer, offset)
  local index = 0

  index = index + size_of.sending_time

  index = index + size_of.order_id

  index = index + size_of.cl_ord_id

  index = index + size_of.exec_id

  index = index + size_of.exec_ref_id

  index = index + size_of.trd_match_id

  index = index + size_of.ord_status

  index = index + size_of.leaves_qty

  index = index + size_of.cum_qty

  return index
end

-- Display: Execution Report Trade Break Message
display.execution_report_trade_break_message = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Execution Report Trade Break Message
dissect.execution_report_trade_break_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Sending Time: 8 Byte Unsigned Fixed Width Integer
  index, sending_time = dissect.sending_time(buffer, index, packet, parent)

  -- Order Id: 8 Byte Unsigned Fixed Width Integer
  index, order_id = dissect.order_id(buffer, index, packet, parent)

  -- Cl Ord Id: 16 Byte Ascii String
  index, cl_ord_id = dissect.cl_ord_id(buffer, index, packet, parent)

  -- Exec Id: 8 Byte Unsigned Fixed Width Integer
  index, exec_id = dissect.exec_id(buffer, index, packet, parent)

  -- Exec Ref Id: 8 Byte Unsigned Fixed Width Integer
  index, exec_ref_id = dissect.exec_ref_id(buffer, index, packet, parent)

  -- Trd Match Id: 8 Byte Unsigned Fixed Width Integer
  index, trd_match_id = dissect.trd_match_id(buffer, index, packet, parent)

  -- Ord Status: 1 Byte Unsigned Fixed Width Integer
  index, ord_status = dissect.ord_status(buffer, index, packet, parent)

  -- Leaves Qty: 4 Byte Unsigned Fixed Width Integer
  index, leaves_qty = dissect.leaves_qty(buffer, index, packet, parent)

  -- Cum Qty: 4 Byte Unsigned Fixed Width Integer
  index, cum_qty = dissect.cum_qty(buffer, index, packet, parent)

  return index
end

-- Dissect: Execution Report Trade Break Message
dissect.execution_report_trade_break_message = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.execution_report_trade_break_message then
    local length = size_of.execution_report_trade_break_message(buffer, offset)
    local range = buffer(offset, length)
    local display = display.execution_report_trade_break_message(buffer, packet, parent)
    parent = parent:add(memx_equities_memo_sbe_v1_2.fields.execution_report_trade_break_message, range, display)
  end

  return dissect.execution_report_trade_break_message_fields(buffer, offset, packet, parent)
end

-- Size: Last Qty
size_of.last_qty = 4

-- Display: Last Qty
display.last_qty = function(value)
  return "Last Qty: "..value
end

-- Dissect: Last Qty
dissect.last_qty = function(buffer, offset, packet, parent)
  local length = size_of.last_qty
  local range = buffer(offset, length)
  local value = range:uint()
  local display = display.last_qty(value, buffer, offset, packet, parent)

  parent:add(memx_equities_memo_sbe_v1_2.fields.last_qty, range, value, display)

  return offset + length, value
end

-- Calculate size of: Execution Report Trade Correction Message
size_of.execution_report_trade_correction_message = function(buffer, offset)
  local index = 0

  index = index + size_of.sending_time

  index = index + size_of.order_id

  index = index + size_of.cl_ord_id

  index = index + size_of.exec_id

  index = index + size_of.exec_ref_id

  index = index + size_of.trd_match_id

  index = index + size_of.ord_status

  index = index + size_of.last_px

  index = index + size_of.last_qty

  index = index + size_of.leaves_qty

  index = index + size_of.cum_qty

  return index
end

-- Display: Execution Report Trade Correction Message
display.execution_report_trade_correction_message = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Execution Report Trade Correction Message
dissect.execution_report_trade_correction_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Sending Time: 8 Byte Unsigned Fixed Width Integer
  index, sending_time = dissect.sending_time(buffer, index, packet, parent)

  -- Order Id: 8 Byte Unsigned Fixed Width Integer
  index, order_id = dissect.order_id(buffer, index, packet, parent)

  -- Cl Ord Id: 16 Byte Ascii String
  index, cl_ord_id = dissect.cl_ord_id(buffer, index, packet, parent)

  -- Exec Id: 8 Byte Unsigned Fixed Width Integer
  index, exec_id = dissect.exec_id(buffer, index, packet, parent)

  -- Exec Ref Id: 8 Byte Unsigned Fixed Width Integer
  index, exec_ref_id = dissect.exec_ref_id(buffer, index, packet, parent)

  -- Trd Match Id: 8 Byte Unsigned Fixed Width Integer
  index, trd_match_id = dissect.trd_match_id(buffer, index, packet, parent)

  -- Ord Status: 1 Byte Unsigned Fixed Width Integer
  index, ord_status = dissect.ord_status(buffer, index, packet, parent)

  -- Last Px: 8 Byte Signed Fixed Width Integer
  index, last_px = dissect.last_px(buffer, index, packet, parent)

  -- Last Qty: 4 Byte Unsigned Fixed Width Integer
  index, last_qty = dissect.last_qty(buffer, index, packet, parent)

  -- Leaves Qty: 4 Byte Unsigned Fixed Width Integer
  index, leaves_qty = dissect.leaves_qty(buffer, index, packet, parent)

  -- Cum Qty: 4 Byte Unsigned Fixed Width Integer
  index, cum_qty = dissect.cum_qty(buffer, index, packet, parent)

  return index
end

-- Dissect: Execution Report Trade Correction Message
dissect.execution_report_trade_correction_message = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.execution_report_trade_correction_message then
    local length = size_of.execution_report_trade_correction_message(buffer, offset)
    local range = buffer(offset, length)
    local display = display.execution_report_trade_correction_message(buffer, packet, parent)
    parent = parent:add(memx_equities_memo_sbe_v1_2.fields.execution_report_trade_correction_message, range, display)
  end

  return dissect.execution_report_trade_correction_message_fields(buffer, offset, packet, parent)
end

-- Size: Locate Reqd
size_of.locate_reqd = 1

-- Display: Locate Reqd
display.locate_reqd = function(value)
  return "Locate Reqd: "..value
end

-- Dissect: Locate Reqd
dissect.locate_reqd = function(buffer, offset, packet, parent)
  local length = size_of.locate_reqd
  local range = buffer(offset, length)
  local value = range:string()
  local display = display.locate_reqd(value, buffer, offset, packet, parent)

  parent:add(memx_equities_memo_sbe_v1_2.fields.locate_reqd, range, value, display)

  return offset + length, value
end

-- Size: Display Qty
size_of.display_qty = 4

-- Display: Display Qty
display.display_qty = function(value)
  return "Display Qty: "..value
end

-- Dissect: Display Qty
dissect.display_qty = function(buffer, offset, packet, parent)
  local length = size_of.display_qty
  local range = buffer(offset, length)
  local value = range:uint()
  local display = display.display_qty(value, buffer, offset, packet, parent)

  parent:add(memx_equities_memo_sbe_v1_2.fields.display_qty, range, value, display)

  return offset + length, value
end

-- Size: Price
size_of.price = 8

-- Display: Price
display.price = function(value)
  return "Price: "..value
end

-- Dissect: Price
dissect.price = function(buffer, offset, packet, parent)
  local length = size_of.price
  local range = buffer(offset, length)
  local value = range:int64()
  local display = display.price(value, buffer, offset, packet, parent)

  parent:add(memx_equities_memo_sbe_v1_2.fields.price, range, value, display)

  return offset + length, value
end

-- Size: Ord Type
size_of.ord_type = 1

-- Display: Ord Type
display.ord_type = function(value)
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
dissect.ord_type = function(buffer, offset, packet, parent)
  local length = size_of.ord_type
  local range = buffer(offset, length)
  local value = range:uint()
  local display = display.ord_type(value, buffer, offset, packet, parent)

  parent:add(memx_equities_memo_sbe_v1_2.fields.ord_type, range, value, display)

  return offset + length, value
end

-- Size: Order Qty
size_of.order_qty = 4

-- Display: Order Qty
display.order_qty = function(value)
  return "Order Qty: "..value
end

-- Dissect: Order Qty
dissect.order_qty = function(buffer, offset, packet, parent)
  local length = size_of.order_qty
  local range = buffer(offset, length)
  local value = range:uint()
  local display = display.order_qty(value, buffer, offset, packet, parent)

  parent:add(memx_equities_memo_sbe_v1_2.fields.order_qty, range, value, display)

  return offset + length, value
end

-- Size: Orig Cl Ord Id
size_of.orig_cl_ord_id = 16

-- Display: Orig Cl Ord Id
display.orig_cl_ord_id = function(value)
  return "Orig Cl Ord Id: "..value
end

-- Dissect: Orig Cl Ord Id
dissect.orig_cl_ord_id = function(buffer, offset, packet, parent)
  local length = size_of.orig_cl_ord_id
  local range = buffer(offset, length)
  local value = range:string()
  local display = display.orig_cl_ord_id(value, buffer, offset, packet, parent)

  parent:add(memx_equities_memo_sbe_v1_2.fields.orig_cl_ord_id, range, value, display)

  return offset + length, value
end

-- Calculate size of: Execution Report Replaced Message
size_of.execution_report_replaced_message = function(buffer, offset)
  local index = 0

  index = index + size_of.sending_time

  index = index + size_of.order_id

  index = index + size_of.cl_ord_id

  index = index + size_of.orig_cl_ord_id

  index = index + size_of.exec_id

  index = index + size_of.symbol

  index = index + size_of.symbol_sfx

  index = index + size_of.side

  index = index + size_of.order_qty

  index = index + size_of.ord_type

  index = index + size_of.price

  index = index + size_of.display_qty

  index = index + size_of.locate_reqd

  index = index + size_of.ord_status

  index = index + size_of.leaves_qty

  index = index + size_of.cum_qty

  index = index + size_of.transact_time

  return index
end

-- Display: Execution Report Replaced Message
display.execution_report_replaced_message = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Execution Report Replaced Message
dissect.execution_report_replaced_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Sending Time: 8 Byte Unsigned Fixed Width Integer
  index, sending_time = dissect.sending_time(buffer, index, packet, parent)

  -- Order Id: 8 Byte Unsigned Fixed Width Integer
  index, order_id = dissect.order_id(buffer, index, packet, parent)

  -- Cl Ord Id: 16 Byte Ascii String
  index, cl_ord_id = dissect.cl_ord_id(buffer, index, packet, parent)

  -- Orig Cl Ord Id: 16 Byte Ascii String
  index, orig_cl_ord_id = dissect.orig_cl_ord_id(buffer, index, packet, parent)

  -- Exec Id: 8 Byte Unsigned Fixed Width Integer
  index, exec_id = dissect.exec_id(buffer, index, packet, parent)

  -- Symbol: 6 Byte Ascii String
  index, symbol = dissect.symbol(buffer, index, packet, parent)

  -- Symbol Sfx: 6 Byte Ascii String
  index, symbol_sfx = dissect.symbol_sfx(buffer, index, packet, parent)

  -- Side: 1 Byte Unsigned Fixed Width Integer
  index, side = dissect.side(buffer, index, packet, parent)

  -- Order Qty: 4 Byte Unsigned Fixed Width Integer
  index, order_qty = dissect.order_qty(buffer, index, packet, parent)

  -- Ord Type: 1 Byte Unsigned Fixed Width Integer Enum with 4 values
  index, ord_type = dissect.ord_type(buffer, index, packet, parent)

  -- Price: 8 Byte Signed Fixed Width Integer
  index, price = dissect.price(buffer, index, packet, parent)

  -- Display Qty: 4 Byte Unsigned Fixed Width Integer
  index, display_qty = dissect.display_qty(buffer, index, packet, parent)

  -- Locate Reqd: 1 Byte Ascii String
  index, locate_reqd = dissect.locate_reqd(buffer, index, packet, parent)

  -- Ord Status: 1 Byte Unsigned Fixed Width Integer
  index, ord_status = dissect.ord_status(buffer, index, packet, parent)

  -- Leaves Qty: 4 Byte Unsigned Fixed Width Integer
  index, leaves_qty = dissect.leaves_qty(buffer, index, packet, parent)

  -- Cum Qty: 4 Byte Unsigned Fixed Width Integer
  index, cum_qty = dissect.cum_qty(buffer, index, packet, parent)

  -- Transact Time: 8 Byte Unsigned Fixed Width Integer
  index, transact_time = dissect.transact_time(buffer, index, packet, parent)

  return index
end

-- Dissect: Execution Report Replaced Message
dissect.execution_report_replaced_message = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.execution_report_replaced_message then
    local length = size_of.execution_report_replaced_message(buffer, offset)
    local range = buffer(offset, length)
    local display = display.execution_report_replaced_message(buffer, packet, parent)
    parent = parent:add(memx_equities_memo_sbe_v1_2.fields.execution_report_replaced_message, range, display)
  end

  return dissect.execution_report_replaced_message_fields(buffer, offset, packet, parent)
end

-- Calculate size of: Execution Report Pending Replace Message
size_of.execution_report_pending_replace_message = function(buffer, offset)
  local index = 0

  index = index + size_of.sending_time

  index = index + size_of.order_id

  index = index + size_of.cl_ord_id

  index = index + size_of.orig_cl_ord_id

  index = index + size_of.exec_id

  index = index + size_of.symbol

  index = index + size_of.symbol_sfx

  index = index + size_of.side

  index = index + size_of.order_qty

  index = index + size_of.ord_type

  index = index + size_of.price

  index = index + size_of.display_qty

  index = index + size_of.locate_reqd

  index = index + size_of.ord_status

  index = index + size_of.leaves_qty

  index = index + size_of.cum_qty

  return index
end

-- Display: Execution Report Pending Replace Message
display.execution_report_pending_replace_message = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Execution Report Pending Replace Message
dissect.execution_report_pending_replace_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Sending Time: 8 Byte Unsigned Fixed Width Integer
  index, sending_time = dissect.sending_time(buffer, index, packet, parent)

  -- Order Id: 8 Byte Unsigned Fixed Width Integer
  index, order_id = dissect.order_id(buffer, index, packet, parent)

  -- Cl Ord Id: 16 Byte Ascii String
  index, cl_ord_id = dissect.cl_ord_id(buffer, index, packet, parent)

  -- Orig Cl Ord Id: 16 Byte Ascii String
  index, orig_cl_ord_id = dissect.orig_cl_ord_id(buffer, index, packet, parent)

  -- Exec Id: 8 Byte Unsigned Fixed Width Integer
  index, exec_id = dissect.exec_id(buffer, index, packet, parent)

  -- Symbol: 6 Byte Ascii String
  index, symbol = dissect.symbol(buffer, index, packet, parent)

  -- Symbol Sfx: 6 Byte Ascii String
  index, symbol_sfx = dissect.symbol_sfx(buffer, index, packet, parent)

  -- Side: 1 Byte Unsigned Fixed Width Integer
  index, side = dissect.side(buffer, index, packet, parent)

  -- Order Qty: 4 Byte Unsigned Fixed Width Integer
  index, order_qty = dissect.order_qty(buffer, index, packet, parent)

  -- Ord Type: 1 Byte Unsigned Fixed Width Integer Enum with 4 values
  index, ord_type = dissect.ord_type(buffer, index, packet, parent)

  -- Price: 8 Byte Signed Fixed Width Integer
  index, price = dissect.price(buffer, index, packet, parent)

  -- Display Qty: 4 Byte Unsigned Fixed Width Integer
  index, display_qty = dissect.display_qty(buffer, index, packet, parent)

  -- Locate Reqd: 1 Byte Ascii String
  index, locate_reqd = dissect.locate_reqd(buffer, index, packet, parent)

  -- Ord Status: 1 Byte Unsigned Fixed Width Integer
  index, ord_status = dissect.ord_status(buffer, index, packet, parent)

  -- Leaves Qty: 4 Byte Unsigned Fixed Width Integer
  index, leaves_qty = dissect.leaves_qty(buffer, index, packet, parent)

  -- Cum Qty: 4 Byte Unsigned Fixed Width Integer
  index, cum_qty = dissect.cum_qty(buffer, index, packet, parent)

  return index
end

-- Dissect: Execution Report Pending Replace Message
dissect.execution_report_pending_replace_message = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.execution_report_pending_replace_message then
    local length = size_of.execution_report_pending_replace_message(buffer, offset)
    local range = buffer(offset, length)
    local display = display.execution_report_pending_replace_message(buffer, packet, parent)
    parent = parent:add(memx_equities_memo_sbe_v1_2.fields.execution_report_pending_replace_message, range, display)
  end

  return dissect.execution_report_pending_replace_message_fields(buffer, offset, packet, parent)
end

-- Calculate size of: Mass Cancel Done Message
size_of.mass_cancel_done_message = function(buffer, offset)
  local index = 0

  index = index + size_of.sending_time

  index = index + size_of.cl_ord_id

  return index
end

-- Display: Mass Cancel Done Message
display.mass_cancel_done_message = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Mass Cancel Done Message
dissect.mass_cancel_done_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Sending Time: 8 Byte Unsigned Fixed Width Integer
  index, sending_time = dissect.sending_time(buffer, index, packet, parent)

  -- Cl Ord Id: 16 Byte Ascii String
  index, cl_ord_id = dissect.cl_ord_id(buffer, index, packet, parent)

  return index
end

-- Dissect: Mass Cancel Done Message
dissect.mass_cancel_done_message = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.mass_cancel_done_message then
    local length = size_of.mass_cancel_done_message(buffer, offset)
    local range = buffer(offset, length)
    local display = display.mass_cancel_done_message(buffer, packet, parent)
    parent = parent:add(memx_equities_memo_sbe_v1_2.fields.mass_cancel_done_message, range, display)
  end

  return dissect.mass_cancel_done_message_fields(buffer, offset, packet, parent)
end

-- Size: Cancel Reason
size_of.cancel_reason = 1

-- Display: Cancel Reason
display.cancel_reason = function(value)
  return "Cancel Reason: "..value
end

-- Dissect: Cancel Reason
dissect.cancel_reason = function(buffer, offset, packet, parent)
  local length = size_of.cancel_reason
  local range = buffer(offset, length)
  local value = range:uint()
  local display = display.cancel_reason(value, buffer, offset, packet, parent)

  parent:add(memx_equities_memo_sbe_v1_2.fields.cancel_reason, range, value, display)

  return offset + length, value
end

-- Calculate size of: Execution Report Canceled Message
size_of.execution_report_canceled_message = function(buffer, offset)
  local index = 0

  index = index + size_of.sending_time

  index = index + size_of.cl_ord_id

  index = index + size_of.orig_cl_ord_id

  index = index + size_of.order_id

  index = index + size_of.exec_id

  index = index + size_of.ord_status

  index = index + size_of.leaves_qty

  index = index + size_of.cum_qty

  index = index + size_of.cancel_reason

  index = index + size_of.transact_time

  return index
end

-- Display: Execution Report Canceled Message
display.execution_report_canceled_message = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Execution Report Canceled Message
dissect.execution_report_canceled_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Sending Time: 8 Byte Unsigned Fixed Width Integer
  index, sending_time = dissect.sending_time(buffer, index, packet, parent)

  -- Cl Ord Id: 16 Byte Ascii String
  index, cl_ord_id = dissect.cl_ord_id(buffer, index, packet, parent)

  -- Orig Cl Ord Id: 16 Byte Ascii String
  index, orig_cl_ord_id = dissect.orig_cl_ord_id(buffer, index, packet, parent)

  -- Order Id: 8 Byte Unsigned Fixed Width Integer
  index, order_id = dissect.order_id(buffer, index, packet, parent)

  -- Exec Id: 8 Byte Unsigned Fixed Width Integer
  index, exec_id = dissect.exec_id(buffer, index, packet, parent)

  -- Ord Status: 1 Byte Unsigned Fixed Width Integer
  index, ord_status = dissect.ord_status(buffer, index, packet, parent)

  -- Leaves Qty: 4 Byte Unsigned Fixed Width Integer
  index, leaves_qty = dissect.leaves_qty(buffer, index, packet, parent)

  -- Cum Qty: 4 Byte Unsigned Fixed Width Integer
  index, cum_qty = dissect.cum_qty(buffer, index, packet, parent)

  -- Cancel Reason: 1 Byte Unsigned Fixed Width Integer
  index, cancel_reason = dissect.cancel_reason(buffer, index, packet, parent)

  -- Transact Time: 8 Byte Unsigned Fixed Width Integer
  index, transact_time = dissect.transact_time(buffer, index, packet, parent)

  return index
end

-- Dissect: Execution Report Canceled Message
dissect.execution_report_canceled_message = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.execution_report_canceled_message then
    local length = size_of.execution_report_canceled_message(buffer, offset)
    local range = buffer(offset, length)
    local display = display.execution_report_canceled_message(buffer, packet, parent)
    parent = parent:add(memx_equities_memo_sbe_v1_2.fields.execution_report_canceled_message, range, display)
  end

  return dissect.execution_report_canceled_message_fields(buffer, offset, packet, parent)
end

-- Calculate size of: Pending Mass Cancel Message
size_of.pending_mass_cancel_message = function(buffer, offset)
  local index = 0

  index = index + size_of.sending_time

  index = index + size_of.cl_ord_id

  index = index + size_of.symbol

  index = index + size_of.symbol_sfx

  index = index + size_of.side

  index = index + size_of.lower_than_price

  index = index + size_of.higher_than_price

  index = index + size_of.cancel_group_id

  return index
end

-- Display: Pending Mass Cancel Message
display.pending_mass_cancel_message = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Pending Mass Cancel Message
dissect.pending_mass_cancel_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Sending Time: 8 Byte Unsigned Fixed Width Integer
  index, sending_time = dissect.sending_time(buffer, index, packet, parent)

  -- Cl Ord Id: 16 Byte Ascii String
  index, cl_ord_id = dissect.cl_ord_id(buffer, index, packet, parent)

  -- Symbol: 6 Byte Ascii String
  index, symbol = dissect.symbol(buffer, index, packet, parent)

  -- Symbol Sfx: 6 Byte Ascii String
  index, symbol_sfx = dissect.symbol_sfx(buffer, index, packet, parent)

  -- Side: 1 Byte Unsigned Fixed Width Integer
  index, side = dissect.side(buffer, index, packet, parent)

  -- Lower Than Price: 8 Byte Signed Fixed Width Integer
  index, lower_than_price = dissect.lower_than_price(buffer, index, packet, parent)

  -- Higher Than Price: 8 Byte Signed Fixed Width Integer
  index, higher_than_price = dissect.higher_than_price(buffer, index, packet, parent)

  -- Cancel Group Id: 2 Byte Unsigned Fixed Width Integer
  index, cancel_group_id = dissect.cancel_group_id(buffer, index, packet, parent)

  return index
end

-- Dissect: Pending Mass Cancel Message
dissect.pending_mass_cancel_message = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.pending_mass_cancel_message then
    local length = size_of.pending_mass_cancel_message(buffer, offset)
    local range = buffer(offset, length)
    local display = display.pending_mass_cancel_message(buffer, packet, parent)
    parent = parent:add(memx_equities_memo_sbe_v1_2.fields.pending_mass_cancel_message, range, display)
  end

  return dissect.pending_mass_cancel_message_fields(buffer, offset, packet, parent)
end

-- Calculate size of: Execution Report Pending Cancel Message
size_of.execution_report_pending_cancel_message = function(buffer, offset)
  local index = 0

  index = index + size_of.sending_time

  index = index + size_of.order_id

  index = index + size_of.cl_ord_id

  index = index + size_of.orig_cl_ord_id

  index = index + size_of.exec_id

  index = index + size_of.symbol

  index = index + size_of.symbol_sfx

  index = index + size_of.ord_status

  index = index + size_of.leaves_qty

  index = index + size_of.cum_qty

  return index
end

-- Display: Execution Report Pending Cancel Message
display.execution_report_pending_cancel_message = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Execution Report Pending Cancel Message
dissect.execution_report_pending_cancel_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Sending Time: 8 Byte Unsigned Fixed Width Integer
  index, sending_time = dissect.sending_time(buffer, index, packet, parent)

  -- Order Id: 8 Byte Unsigned Fixed Width Integer
  index, order_id = dissect.order_id(buffer, index, packet, parent)

  -- Cl Ord Id: 16 Byte Ascii String
  index, cl_ord_id = dissect.cl_ord_id(buffer, index, packet, parent)

  -- Orig Cl Ord Id: 16 Byte Ascii String
  index, orig_cl_ord_id = dissect.orig_cl_ord_id(buffer, index, packet, parent)

  -- Exec Id: 8 Byte Unsigned Fixed Width Integer
  index, exec_id = dissect.exec_id(buffer, index, packet, parent)

  -- Symbol: 6 Byte Ascii String
  index, symbol = dissect.symbol(buffer, index, packet, parent)

  -- Symbol Sfx: 6 Byte Ascii String
  index, symbol_sfx = dissect.symbol_sfx(buffer, index, packet, parent)

  -- Ord Status: 1 Byte Unsigned Fixed Width Integer
  index, ord_status = dissect.ord_status(buffer, index, packet, parent)

  -- Leaves Qty: 4 Byte Unsigned Fixed Width Integer
  index, leaves_qty = dissect.leaves_qty(buffer, index, packet, parent)

  -- Cum Qty: 4 Byte Unsigned Fixed Width Integer
  index, cum_qty = dissect.cum_qty(buffer, index, packet, parent)

  return index
end

-- Dissect: Execution Report Pending Cancel Message
dissect.execution_report_pending_cancel_message = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.execution_report_pending_cancel_message then
    local length = size_of.execution_report_pending_cancel_message(buffer, offset)
    local range = buffer(offset, length)
    local display = display.execution_report_pending_cancel_message(buffer, packet, parent)
    parent = parent:add(memx_equities_memo_sbe_v1_2.fields.execution_report_pending_cancel_message, range, display)
  end

  return dissect.execution_report_pending_cancel_message_fields(buffer, offset, packet, parent)
end

-- Size: Trd Matching Id
size_of.trd_matching_id = 8

-- Display: Trd Matching Id
display.trd_matching_id = function(value)
  return "Trd Matching Id: "..value
end

-- Dissect: Trd Matching Id
dissect.trd_matching_id = function(buffer, offset, packet, parent)
  local length = size_of.trd_matching_id
  local range = buffer(offset, length)
  local value = range:uint64()
  local display = display.trd_matching_id(value, buffer, offset, packet, parent)

  parent:add(memx_equities_memo_sbe_v1_2.fields.trd_matching_id, range, value, display)

  return offset + length, value
end

-- Size: Last Mkt
size_of.last_mkt = 1

-- Display: Last Mkt
display.last_mkt = function(value)
  return "Last Mkt: "..value
end

-- Dissect: Last Mkt
dissect.last_mkt = function(buffer, offset, packet, parent)
  local length = size_of.last_mkt
  local range = buffer(offset, length)
  local value = range:string()
  local display = display.last_mkt(value, buffer, offset, packet, parent)

  parent:add(memx_equities_memo_sbe_v1_2.fields.last_mkt, range, value, display)

  return offset + length, value
end

-- Size: Last Liquidity Ind
size_of.last_liquidity_ind = 1

-- Display: Last Liquidity Ind
display.last_liquidity_ind = function(value)
  return "Last Liquidity Ind: "..value
end

-- Dissect: Last Liquidity Ind
dissect.last_liquidity_ind = function(buffer, offset, packet, parent)
  local length = size_of.last_liquidity_ind
  local range = buffer(offset, length)
  local value = range:uint()
  local display = display.last_liquidity_ind(value, buffer, offset, packet, parent)

  parent:add(memx_equities_memo_sbe_v1_2.fields.last_liquidity_ind, range, value, display)

  return offset + length, value
end

-- Calculate size of: Execution Report Trade Message
size_of.execution_report_trade_message = function(buffer, offset)
  local index = 0

  index = index + size_of.sending_time

  index = index + size_of.order_id

  index = index + size_of.cl_ord_id

  index = index + size_of.exec_id

  index = index + size_of.ord_status

  index = index + size_of.last_qty

  index = index + size_of.last_px

  index = index + size_of.leaves_qty

  index = index + size_of.cum_qty

  index = index + size_of.transact_time

  index = index + size_of.last_liquidity_ind

  index = index + size_of.last_mkt

  index = index + size_of.trd_matching_id

  return index
end

-- Display: Execution Report Trade Message
display.execution_report_trade_message = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Execution Report Trade Message
dissect.execution_report_trade_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Sending Time: 8 Byte Unsigned Fixed Width Integer
  index, sending_time = dissect.sending_time(buffer, index, packet, parent)

  -- Order Id: 8 Byte Unsigned Fixed Width Integer
  index, order_id = dissect.order_id(buffer, index, packet, parent)

  -- Cl Ord Id: 16 Byte Ascii String
  index, cl_ord_id = dissect.cl_ord_id(buffer, index, packet, parent)

  -- Exec Id: 8 Byte Unsigned Fixed Width Integer
  index, exec_id = dissect.exec_id(buffer, index, packet, parent)

  -- Ord Status: 1 Byte Unsigned Fixed Width Integer
  index, ord_status = dissect.ord_status(buffer, index, packet, parent)

  -- Last Qty: 4 Byte Unsigned Fixed Width Integer
  index, last_qty = dissect.last_qty(buffer, index, packet, parent)

  -- Last Px: 8 Byte Signed Fixed Width Integer
  index, last_px = dissect.last_px(buffer, index, packet, parent)

  -- Leaves Qty: 4 Byte Unsigned Fixed Width Integer
  index, leaves_qty = dissect.leaves_qty(buffer, index, packet, parent)

  -- Cum Qty: 4 Byte Unsigned Fixed Width Integer
  index, cum_qty = dissect.cum_qty(buffer, index, packet, parent)

  -- Transact Time: 8 Byte Unsigned Fixed Width Integer
  index, transact_time = dissect.transact_time(buffer, index, packet, parent)

  -- Last Liquidity Ind: 1 Byte Unsigned Fixed Width Integer
  index, last_liquidity_ind = dissect.last_liquidity_ind(buffer, index, packet, parent)

  -- Last Mkt: 1 Byte Ascii String
  index, last_mkt = dissect.last_mkt(buffer, index, packet, parent)

  -- Trd Matching Id: 8 Byte Unsigned Fixed Width Integer
  index, trd_matching_id = dissect.trd_matching_id(buffer, index, packet, parent)

  return index
end

-- Dissect: Execution Report Trade Message
dissect.execution_report_trade_message = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.execution_report_trade_message then
    local length = size_of.execution_report_trade_message(buffer, offset)
    local range = buffer(offset, length)
    local display = display.execution_report_trade_message(buffer, packet, parent)
    parent = parent:add(memx_equities_memo_sbe_v1_2.fields.execution_report_trade_message, range, display)
  end

  return dissect.execution_report_trade_message_fields(buffer, offset, packet, parent)
end

-- Calculate size of: Execution Report Rejected Message
size_of.execution_report_rejected_message = function(buffer, offset)
  local index = 0

  index = index + size_of.sending_time

  index = index + size_of.cl_ord_id

  index = index + size_of.exec_id

  index = index + size_of.ord_status

  index = index + size_of.symbol

  index = index + size_of.symbol_sfx

  index = index + size_of.leaves_qty

  index = index + size_of.cum_qty

  index = index + size_of.reject_reason

  return index
end

-- Display: Execution Report Rejected Message
display.execution_report_rejected_message = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Execution Report Rejected Message
dissect.execution_report_rejected_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Sending Time: 8 Byte Unsigned Fixed Width Integer
  index, sending_time = dissect.sending_time(buffer, index, packet, parent)

  -- Cl Ord Id: 16 Byte Ascii String
  index, cl_ord_id = dissect.cl_ord_id(buffer, index, packet, parent)

  -- Exec Id: 8 Byte Unsigned Fixed Width Integer
  index, exec_id = dissect.exec_id(buffer, index, packet, parent)

  -- Ord Status: 1 Byte Unsigned Fixed Width Integer
  index, ord_status = dissect.ord_status(buffer, index, packet, parent)

  -- Symbol: 6 Byte Ascii String
  index, symbol = dissect.symbol(buffer, index, packet, parent)

  -- Symbol Sfx: 6 Byte Ascii String
  index, symbol_sfx = dissect.symbol_sfx(buffer, index, packet, parent)

  -- Leaves Qty: 4 Byte Unsigned Fixed Width Integer
  index, leaves_qty = dissect.leaves_qty(buffer, index, packet, parent)

  -- Cum Qty: 4 Byte Unsigned Fixed Width Integer
  index, cum_qty = dissect.cum_qty(buffer, index, packet, parent)

  -- Reject Reason: 1 Byte Unsigned Fixed Width Integer
  index, reject_reason = dissect.reject_reason(buffer, index, packet, parent)

  return index
end

-- Dissect: Execution Report Rejected Message
dissect.execution_report_rejected_message = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.execution_report_rejected_message then
    local length = size_of.execution_report_rejected_message(buffer, offset)
    local range = buffer(offset, length)
    local display = display.execution_report_rejected_message(buffer, packet, parent)
    parent = parent:add(memx_equities_memo_sbe_v1_2.fields.execution_report_rejected_message, range, display)
  end

  return dissect.execution_report_rejected_message_fields(buffer, offset, packet, parent)
end

-- Size: Risk Group Id
size_of.risk_group_id = 2

-- Display: Risk Group Id
display.risk_group_id = function(value)
  return "Risk Group Id: "..value
end

-- Dissect: Risk Group Id
dissect.risk_group_id = function(buffer, offset, packet, parent)
  local length = size_of.risk_group_id
  local range = buffer(offset, length)
  local value = range:uint()
  local display = display.risk_group_id(value, buffer, offset, packet, parent)

  parent:add(memx_equities_memo_sbe_v1_2.fields.risk_group_id, range, value, display)

  return offset + length, value
end

-- Size: Self Trade Prevention
size_of.self_trade_prevention = 1

-- Display: Self Trade Prevention
display.self_trade_prevention = function(value)
  return "Self Trade Prevention: "..value
end

-- Dissect: Self Trade Prevention
dissect.self_trade_prevention = function(buffer, offset, packet, parent)
  local length = size_of.self_trade_prevention
  local range = buffer(offset, length)
  local value = range:uint()
  local display = display.self_trade_prevention(value, buffer, offset, packet, parent)

  parent:add(memx_equities_memo_sbe_v1_2.fields.self_trade_prevention, range, value, display)

  return offset + length, value
end

-- Size: Stp Group Id
size_of.stp_group_id = 2

-- Display: Stp Group Id
display.stp_group_id = function(value)
  return "Stp Group Id: "..value
end

-- Dissect: Stp Group Id
dissect.stp_group_id = function(buffer, offset, packet, parent)
  local length = size_of.stp_group_id
  local range = buffer(offset, length)
  local value = range:uint()
  local display = display.stp_group_id(value, buffer, offset, packet, parent)

  parent:add(memx_equities_memo_sbe_v1_2.fields.stp_group_id, range, value, display)

  return offset + length, value
end

-- Size: Reprice Behavior
size_of.reprice_behavior = 1

-- Display: Reprice Behavior
display.reprice_behavior = function(value)
  return "Reprice Behavior: "..value
end

-- Dissect: Reprice Behavior
dissect.reprice_behavior = function(buffer, offset, packet, parent)
  local length = size_of.reprice_behavior
  local range = buffer(offset, length)
  local value = range:uint()
  local display = display.reprice_behavior(value, buffer, offset, packet, parent)

  parent:add(memx_equities_memo_sbe_v1_2.fields.reprice_behavior, range, value, display)

  return offset + length, value
end

-- Size: Reprice Frequency
size_of.reprice_frequency = 1

-- Display: Reprice Frequency
display.reprice_frequency = function(value)
  return "Reprice Frequency: "..value
end

-- Dissect: Reprice Frequency
dissect.reprice_frequency = function(buffer, offset, packet, parent)
  local length = size_of.reprice_frequency
  local range = buffer(offset, length)
  local value = range:uint()
  local display = display.reprice_frequency(value, buffer, offset, packet, parent)

  parent:add(memx_equities_memo_sbe_v1_2.fields.reprice_frequency, range, value, display)

  return offset + length, value
end

-- Size: Display Min Incr
size_of.display_min_incr = 4

-- Display: Display Min Incr
display.display_min_incr = function(value)
  return "Display Min Incr: "..value
end

-- Dissect: Display Min Incr
dissect.display_min_incr = function(buffer, offset, packet, parent)
  local length = size_of.display_min_incr
  local range = buffer(offset, length)
  local value = range:uint()
  local display = display.display_min_incr(value, buffer, offset, packet, parent)

  parent:add(memx_equities_memo_sbe_v1_2.fields.display_min_incr, range, value, display)

  return offset + length, value
end

-- Size: Reserve Replenish Timing
size_of.reserve_replenish_timing = 1

-- Display: Reserve Replenish Timing
display.reserve_replenish_timing = function(value)
  return "Reserve Replenish Timing: "..value
end

-- Dissect: Reserve Replenish Timing
dissect.reserve_replenish_timing = function(buffer, offset, packet, parent)
  local length = size_of.reserve_replenish_timing
  local range = buffer(offset, length)
  local value = range:uint()
  local display = display.reserve_replenish_timing(value, buffer, offset, packet, parent)

  parent:add(memx_equities_memo_sbe_v1_2.fields.reserve_replenish_timing, range, value, display)

  return offset + length, value
end

-- Size: Display Method
size_of.display_method = 1

-- Display: Display Method
display.display_method = function(value)
  return "Display Method: "..value
end

-- Dissect: Display Method
dissect.display_method = function(buffer, offset, packet, parent)
  local length = size_of.display_method
  local range = buffer(offset, length)
  local value = range:uint()
  local display = display.display_method(value, buffer, offset, packet, parent)

  parent:add(memx_equities_memo_sbe_v1_2.fields.display_method, range, value, display)

  return offset + length, value
end

-- Size: Min Qty
size_of.min_qty = 4

-- Display: Min Qty
display.min_qty = function(value)
  return "Min Qty: "..value
end

-- Dissect: Min Qty
dissect.min_qty = function(buffer, offset, packet, parent)
  local length = size_of.min_qty
  local range = buffer(offset, length)
  local value = range:uint()
  local display = display.min_qty(value, buffer, offset, packet, parent)

  parent:add(memx_equities_memo_sbe_v1_2.fields.min_qty, range, value, display)

  return offset + length, value
end

-- Size: Expire Time
size_of.expire_time = 8

-- Display: Expire Time
display.expire_time = function(value)
  return "Expire Time: "..value
end

-- Dissect: Expire Time
dissect.expire_time = function(buffer, offset, packet, parent)
  local length = size_of.expire_time
  local range = buffer(offset, length)
  local value = range:uint64()
  local display = display.expire_time(value, buffer, offset, packet, parent)

  parent:add(memx_equities_memo_sbe_v1_2.fields.expire_time, range, value, display)

  return offset + length, value
end

-- Size: Peg Price Type
size_of.peg_price_type = 1

-- Display: Peg Price Type
display.peg_price_type = function(value)
  return "Peg Price Type: "..value
end

-- Dissect: Peg Price Type
dissect.peg_price_type = function(buffer, offset, packet, parent)
  local length = size_of.peg_price_type
  local range = buffer(offset, length)
  local value = range:uint()
  local display = display.peg_price_type(value, buffer, offset, packet, parent)

  parent:add(memx_equities_memo_sbe_v1_2.fields.peg_price_type, range, value, display)

  return offset + length, value
end

-- Size: Peg Offset Value
size_of.peg_offset_value = 8

-- Display: Peg Offset Value
display.peg_offset_value = function(value)
  return "Peg Offset Value: "..value
end

-- Dissect: Peg Offset Value
dissect.peg_offset_value = function(buffer, offset, packet, parent)
  local length = size_of.peg_offset_value
  local range = buffer(offset, length)
  local value = range:int64()
  local display = display.peg_offset_value(value, buffer, offset, packet, parent)

  parent:add(memx_equities_memo_sbe_v1_2.fields.peg_offset_value, range, value, display)

  return offset + length, value
end

-- Size: Exec Inst
size_of.exec_inst = 2

-- Display: Exec Inst
display.exec_inst = function(value)
  return "Exec Inst: "..value
end

-- Dissect: Exec Inst
dissect.exec_inst = function(buffer, offset, packet, parent)
  local length = size_of.exec_inst
  local range = buffer(offset, length)
  local value = range:uint()
  local display = display.exec_inst(value, buffer, offset, packet, parent)

  parent:add(memx_equities_memo_sbe_v1_2.fields.exec_inst, range, value, display)

  return offset + length, value
end

-- Size: Cust Order Capacity
size_of.cust_order_capacity = 1

-- Display: Cust Order Capacity
display.cust_order_capacity = function(value)
  return "Cust Order Capacity: "..value
end

-- Dissect: Cust Order Capacity
dissect.cust_order_capacity = function(buffer, offset, packet, parent)
  local length = size_of.cust_order_capacity
  local range = buffer(offset, length)
  local value = range:uint()
  local display = display.cust_order_capacity(value, buffer, offset, packet, parent)

  parent:add(memx_equities_memo_sbe_v1_2.fields.cust_order_capacity, range, value, display)

  return offset + length, value
end

-- Size: Order Capacity
size_of.order_capacity = 1

-- Display: Order Capacity
display.order_capacity = function(value)
  return "Order Capacity: "..value
end

-- Dissect: Order Capacity
dissect.order_capacity = function(buffer, offset, packet, parent)
  local length = size_of.order_capacity
  local range = buffer(offset, length)
  local value = range:uint()
  local display = display.order_capacity(value, buffer, offset, packet, parent)

  parent:add(memx_equities_memo_sbe_v1_2.fields.order_capacity, range, value, display)

  return offset + length, value
end

-- Size: Time In Force
size_of.time_in_force = 1

-- Display: Time In Force
display.time_in_force = function(value)
  return "Time In Force: "..value
end

-- Dissect: Time In Force
dissect.time_in_force = function(buffer, offset, packet, parent)
  local length = size_of.time_in_force
  local range = buffer(offset, length)
  local value = range:uint()
  local display = display.time_in_force(value, buffer, offset, packet, parent)

  parent:add(memx_equities_memo_sbe_v1_2.fields.time_in_force, range, value, display)

  return offset + length, value
end

-- Size: Mpid
size_of.mpid = 4

-- Display: Mpid
display.mpid = function(value)
  return "Mpid: "..value
end

-- Dissect: Mpid
dissect.mpid = function(buffer, offset, packet, parent)
  local length = size_of.mpid
  local range = buffer(offset, length)
  local value = range:string()
  local display = display.mpid(value, buffer, offset, packet, parent)

  parent:add(memx_equities_memo_sbe_v1_2.fields.mpid, range, value, display)

  return offset + length, value
end

-- Calculate size of: Execution Report New Message
size_of.execution_report_new_message = function(buffer, offset)
  local index = 0

  index = index + size_of.sending_time

  index = index + size_of.order_id

  index = index + size_of.cl_ord_id

  index = index + size_of.exec_id

  index = index + size_of.mpid

  index = index + size_of.ord_status

  index = index + size_of.symbol

  index = index + size_of.symbol_sfx

  index = index + size_of.side

  index = index + size_of.ord_type

  index = index + size_of.order_qty

  index = index + size_of.price

  index = index + size_of.time_in_force

  index = index + size_of.order_capacity

  index = index + size_of.cust_order_capacity

  index = index + size_of.exec_inst

  index = index + size_of.peg_offset_value

  index = index + size_of.peg_price_type

  index = index + size_of.expire_time

  index = index + size_of.min_qty

  index = index + size_of.display_qty

  index = index + size_of.display_method

  index = index + size_of.reserve_replenish_timing

  index = index + size_of.display_min_incr

  index = index + size_of.locate_reqd

  index = index + size_of.reprice_frequency

  index = index + size_of.reprice_behavior

  index = index + size_of.cancel_group_id

  index = index + size_of.stp_group_id

  index = index + size_of.self_trade_prevention

  index = index + size_of.risk_group_id

  index = index + size_of.leaves_qty

  index = index + size_of.cum_qty

  index = index + size_of.transact_time

  return index
end

-- Display: Execution Report New Message
display.execution_report_new_message = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Execution Report New Message
dissect.execution_report_new_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Sending Time: 8 Byte Unsigned Fixed Width Integer
  index, sending_time = dissect.sending_time(buffer, index, packet, parent)

  -- Order Id: 8 Byte Unsigned Fixed Width Integer
  index, order_id = dissect.order_id(buffer, index, packet, parent)

  -- Cl Ord Id: 16 Byte Ascii String
  index, cl_ord_id = dissect.cl_ord_id(buffer, index, packet, parent)

  -- Exec Id: 8 Byte Unsigned Fixed Width Integer
  index, exec_id = dissect.exec_id(buffer, index, packet, parent)

  -- Mpid: 4 Byte Ascii String
  index, mpid = dissect.mpid(buffer, index, packet, parent)

  -- Ord Status: 1 Byte Unsigned Fixed Width Integer
  index, ord_status = dissect.ord_status(buffer, index, packet, parent)

  -- Symbol: 6 Byte Ascii String
  index, symbol = dissect.symbol(buffer, index, packet, parent)

  -- Symbol Sfx: 6 Byte Ascii String
  index, symbol_sfx = dissect.symbol_sfx(buffer, index, packet, parent)

  -- Side: 1 Byte Unsigned Fixed Width Integer
  index, side = dissect.side(buffer, index, packet, parent)

  -- Ord Type: 1 Byte Unsigned Fixed Width Integer Enum with 4 values
  index, ord_type = dissect.ord_type(buffer, index, packet, parent)

  -- Order Qty: 4 Byte Unsigned Fixed Width Integer
  index, order_qty = dissect.order_qty(buffer, index, packet, parent)

  -- Price: 8 Byte Signed Fixed Width Integer
  index, price = dissect.price(buffer, index, packet, parent)

  -- Time In Force: 1 Byte Unsigned Fixed Width Integer
  index, time_in_force = dissect.time_in_force(buffer, index, packet, parent)

  -- Order Capacity: 1 Byte Unsigned Fixed Width Integer
  index, order_capacity = dissect.order_capacity(buffer, index, packet, parent)

  -- Cust Order Capacity: 1 Byte Unsigned Fixed Width Integer
  index, cust_order_capacity = dissect.cust_order_capacity(buffer, index, packet, parent)

  -- Exec Inst: 2 Byte Unsigned Fixed Width Integer
  index, exec_inst = dissect.exec_inst(buffer, index, packet, parent)

  -- Peg Offset Value: 8 Byte Signed Fixed Width Integer
  index, peg_offset_value = dissect.peg_offset_value(buffer, index, packet, parent)

  -- Peg Price Type: 1 Byte Unsigned Fixed Width Integer
  index, peg_price_type = dissect.peg_price_type(buffer, index, packet, parent)

  -- Expire Time: 8 Byte Unsigned Fixed Width Integer
  index, expire_time = dissect.expire_time(buffer, index, packet, parent)

  -- Min Qty: 4 Byte Unsigned Fixed Width Integer
  index, min_qty = dissect.min_qty(buffer, index, packet, parent)

  -- Display Qty: 4 Byte Unsigned Fixed Width Integer
  index, display_qty = dissect.display_qty(buffer, index, packet, parent)

  -- Display Method: 1 Byte Unsigned Fixed Width Integer
  index, display_method = dissect.display_method(buffer, index, packet, parent)

  -- Reserve Replenish Timing: 1 Byte Unsigned Fixed Width Integer
  index, reserve_replenish_timing = dissect.reserve_replenish_timing(buffer, index, packet, parent)

  -- Display Min Incr: 4 Byte Unsigned Fixed Width Integer
  index, display_min_incr = dissect.display_min_incr(buffer, index, packet, parent)

  -- Locate Reqd: 1 Byte Ascii String
  index, locate_reqd = dissect.locate_reqd(buffer, index, packet, parent)

  -- Reprice Frequency: 1 Byte Unsigned Fixed Width Integer
  index, reprice_frequency = dissect.reprice_frequency(buffer, index, packet, parent)

  -- Reprice Behavior: 1 Byte Unsigned Fixed Width Integer
  index, reprice_behavior = dissect.reprice_behavior(buffer, index, packet, parent)

  -- Cancel Group Id: 2 Byte Unsigned Fixed Width Integer
  index, cancel_group_id = dissect.cancel_group_id(buffer, index, packet, parent)

  -- Stp Group Id: 2 Byte Unsigned Fixed Width Integer
  index, stp_group_id = dissect.stp_group_id(buffer, index, packet, parent)

  -- Self Trade Prevention: 1 Byte Unsigned Fixed Width Integer
  index, self_trade_prevention = dissect.self_trade_prevention(buffer, index, packet, parent)

  -- Risk Group Id: 2 Byte Unsigned Fixed Width Integer
  index, risk_group_id = dissect.risk_group_id(buffer, index, packet, parent)

  -- Leaves Qty: 4 Byte Unsigned Fixed Width Integer
  index, leaves_qty = dissect.leaves_qty(buffer, index, packet, parent)

  -- Cum Qty: 4 Byte Unsigned Fixed Width Integer
  index, cum_qty = dissect.cum_qty(buffer, index, packet, parent)

  -- Transact Time: 8 Byte Unsigned Fixed Width Integer
  index, transact_time = dissect.transact_time(buffer, index, packet, parent)

  return index
end

-- Dissect: Execution Report New Message
dissect.execution_report_new_message = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.execution_report_new_message then
    local length = size_of.execution_report_new_message(buffer, offset)
    local range = buffer(offset, length)
    local display = display.execution_report_new_message(buffer, packet, parent)
    parent = parent:add(memx_equities_memo_sbe_v1_2.fields.execution_report_new_message, range, display)
  end

  return dissect.execution_report_new_message_fields(buffer, offset, packet, parent)
end

-- Calculate size of: Execution Report Pending New Message
size_of.execution_report_pending_new_message = function(buffer, offset)
  local index = 0

  index = index + size_of.sending_time

  index = index + size_of.order_id

  index = index + size_of.cl_ord_id

  index = index + size_of.exec_id

  index = index + size_of.mpid

  index = index + size_of.ord_status

  index = index + size_of.symbol

  index = index + size_of.symbol_sfx

  index = index + size_of.side

  index = index + size_of.ord_type

  index = index + size_of.order_qty

  index = index + size_of.price

  index = index + size_of.time_in_force

  index = index + size_of.order_capacity

  index = index + size_of.cust_order_capacity

  index = index + size_of.exec_inst

  index = index + size_of.peg_offset_value

  index = index + size_of.peg_price_type

  index = index + size_of.expire_time

  index = index + size_of.min_qty

  index = index + size_of.display_qty

  index = index + size_of.display_method

  index = index + size_of.reserve_replenish_timing

  index = index + size_of.display_min_incr

  index = index + size_of.locate_reqd

  index = index + size_of.reprice_frequency

  index = index + size_of.reprice_behavior

  index = index + size_of.cancel_group_id

  index = index + size_of.stp_group_id

  index = index + size_of.self_trade_prevention

  index = index + size_of.risk_group_id

  index = index + size_of.leaves_qty

  index = index + size_of.cum_qty

  return index
end

-- Display: Execution Report Pending New Message
display.execution_report_pending_new_message = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Execution Report Pending New Message
dissect.execution_report_pending_new_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Sending Time: 8 Byte Unsigned Fixed Width Integer
  index, sending_time = dissect.sending_time(buffer, index, packet, parent)

  -- Order Id: 8 Byte Unsigned Fixed Width Integer
  index, order_id = dissect.order_id(buffer, index, packet, parent)

  -- Cl Ord Id: 16 Byte Ascii String
  index, cl_ord_id = dissect.cl_ord_id(buffer, index, packet, parent)

  -- Exec Id: 8 Byte Unsigned Fixed Width Integer
  index, exec_id = dissect.exec_id(buffer, index, packet, parent)

  -- Mpid: 4 Byte Ascii String
  index, mpid = dissect.mpid(buffer, index, packet, parent)

  -- Ord Status: 1 Byte Unsigned Fixed Width Integer
  index, ord_status = dissect.ord_status(buffer, index, packet, parent)

  -- Symbol: 6 Byte Ascii String
  index, symbol = dissect.symbol(buffer, index, packet, parent)

  -- Symbol Sfx: 6 Byte Ascii String
  index, symbol_sfx = dissect.symbol_sfx(buffer, index, packet, parent)

  -- Side: 1 Byte Unsigned Fixed Width Integer
  index, side = dissect.side(buffer, index, packet, parent)

  -- Ord Type: 1 Byte Unsigned Fixed Width Integer Enum with 4 values
  index, ord_type = dissect.ord_type(buffer, index, packet, parent)

  -- Order Qty: 4 Byte Unsigned Fixed Width Integer
  index, order_qty = dissect.order_qty(buffer, index, packet, parent)

  -- Price: 8 Byte Signed Fixed Width Integer
  index, price = dissect.price(buffer, index, packet, parent)

  -- Time In Force: 1 Byte Unsigned Fixed Width Integer
  index, time_in_force = dissect.time_in_force(buffer, index, packet, parent)

  -- Order Capacity: 1 Byte Unsigned Fixed Width Integer
  index, order_capacity = dissect.order_capacity(buffer, index, packet, parent)

  -- Cust Order Capacity: 1 Byte Unsigned Fixed Width Integer
  index, cust_order_capacity = dissect.cust_order_capacity(buffer, index, packet, parent)

  -- Exec Inst: 2 Byte Unsigned Fixed Width Integer
  index, exec_inst = dissect.exec_inst(buffer, index, packet, parent)

  -- Peg Offset Value: 8 Byte Signed Fixed Width Integer
  index, peg_offset_value = dissect.peg_offset_value(buffer, index, packet, parent)

  -- Peg Price Type: 1 Byte Unsigned Fixed Width Integer
  index, peg_price_type = dissect.peg_price_type(buffer, index, packet, parent)

  -- Expire Time: 8 Byte Unsigned Fixed Width Integer
  index, expire_time = dissect.expire_time(buffer, index, packet, parent)

  -- Min Qty: 4 Byte Unsigned Fixed Width Integer
  index, min_qty = dissect.min_qty(buffer, index, packet, parent)

  -- Display Qty: 4 Byte Unsigned Fixed Width Integer
  index, display_qty = dissect.display_qty(buffer, index, packet, parent)

  -- Display Method: 1 Byte Unsigned Fixed Width Integer
  index, display_method = dissect.display_method(buffer, index, packet, parent)

  -- Reserve Replenish Timing: 1 Byte Unsigned Fixed Width Integer
  index, reserve_replenish_timing = dissect.reserve_replenish_timing(buffer, index, packet, parent)

  -- Display Min Incr: 4 Byte Unsigned Fixed Width Integer
  index, display_min_incr = dissect.display_min_incr(buffer, index, packet, parent)

  -- Locate Reqd: 1 Byte Ascii String
  index, locate_reqd = dissect.locate_reqd(buffer, index, packet, parent)

  -- Reprice Frequency: 1 Byte Unsigned Fixed Width Integer
  index, reprice_frequency = dissect.reprice_frequency(buffer, index, packet, parent)

  -- Reprice Behavior: 1 Byte Unsigned Fixed Width Integer
  index, reprice_behavior = dissect.reprice_behavior(buffer, index, packet, parent)

  -- Cancel Group Id: 2 Byte Unsigned Fixed Width Integer
  index, cancel_group_id = dissect.cancel_group_id(buffer, index, packet, parent)

  -- Stp Group Id: 2 Byte Unsigned Fixed Width Integer
  index, stp_group_id = dissect.stp_group_id(buffer, index, packet, parent)

  -- Self Trade Prevention: 1 Byte Unsigned Fixed Width Integer
  index, self_trade_prevention = dissect.self_trade_prevention(buffer, index, packet, parent)

  -- Risk Group Id: 2 Byte Unsigned Fixed Width Integer
  index, risk_group_id = dissect.risk_group_id(buffer, index, packet, parent)

  -- Leaves Qty: 4 Byte Unsigned Fixed Width Integer
  index, leaves_qty = dissect.leaves_qty(buffer, index, packet, parent)

  -- Cum Qty: 4 Byte Unsigned Fixed Width Integer
  index, cum_qty = dissect.cum_qty(buffer, index, packet, parent)

  return index
end

-- Dissect: Execution Report Pending New Message
dissect.execution_report_pending_new_message = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.execution_report_pending_new_message then
    local length = size_of.execution_report_pending_new_message(buffer, offset)
    local range = buffer(offset, length)
    local display = display.execution_report_pending_new_message(buffer, packet, parent)
    parent = parent:add(memx_equities_memo_sbe_v1_2.fields.execution_report_pending_new_message, range, display)
  end

  return dissect.execution_report_pending_new_message_fields(buffer, offset, packet, parent)
end

-- Calculate size of: Mass Cancel Request Message
size_of.mass_cancel_request_message = function(buffer, offset)
  local index = 0

  index = index + size_of.cl_ord_id

  index = index + size_of.symbol

  index = index + size_of.symbol_sfx

  index = index + size_of.side

  index = index + size_of.lower_than_price

  index = index + size_of.higher_than_price

  index = index + size_of.cancel_group_id

  return index
end

-- Display: Mass Cancel Request Message
display.mass_cancel_request_message = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Mass Cancel Request Message
dissect.mass_cancel_request_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Cl Ord Id: 16 Byte Ascii String
  index, cl_ord_id = dissect.cl_ord_id(buffer, index, packet, parent)

  -- Symbol: 6 Byte Ascii String
  index, symbol = dissect.symbol(buffer, index, packet, parent)

  -- Symbol Sfx: 6 Byte Ascii String
  index, symbol_sfx = dissect.symbol_sfx(buffer, index, packet, parent)

  -- Side: 1 Byte Unsigned Fixed Width Integer
  index, side = dissect.side(buffer, index, packet, parent)

  -- Lower Than Price: 8 Byte Signed Fixed Width Integer
  index, lower_than_price = dissect.lower_than_price(buffer, index, packet, parent)

  -- Higher Than Price: 8 Byte Signed Fixed Width Integer
  index, higher_than_price = dissect.higher_than_price(buffer, index, packet, parent)

  -- Cancel Group Id: 2 Byte Unsigned Fixed Width Integer
  index, cancel_group_id = dissect.cancel_group_id(buffer, index, packet, parent)

  return index
end

-- Dissect: Mass Cancel Request Message
dissect.mass_cancel_request_message = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.mass_cancel_request_message then
    local length = size_of.mass_cancel_request_message(buffer, offset)
    local range = buffer(offset, length)
    local display = display.mass_cancel_request_message(buffer, packet, parent)
    parent = parent:add(memx_equities_memo_sbe_v1_2.fields.mass_cancel_request_message, range, display)
  end

  return dissect.mass_cancel_request_message_fields(buffer, offset, packet, parent)
end

-- Calculate size of: Order Cancel Request Message
size_of.order_cancel_request_message = function(buffer, offset)
  local index = 0

  index = index + size_of.orig_cl_ord_id

  index = index + size_of.order_id

  index = index + size_of.cl_ord_id

  index = index + size_of.symbol

  index = index + size_of.symbol_sfx

  return index
end

-- Display: Order Cancel Request Message
display.order_cancel_request_message = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Order Cancel Request Message
dissect.order_cancel_request_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Orig Cl Ord Id: 16 Byte Ascii String
  index, orig_cl_ord_id = dissect.orig_cl_ord_id(buffer, index, packet, parent)

  -- Order Id: 8 Byte Unsigned Fixed Width Integer
  index, order_id = dissect.order_id(buffer, index, packet, parent)

  -- Cl Ord Id: 16 Byte Ascii String
  index, cl_ord_id = dissect.cl_ord_id(buffer, index, packet, parent)

  -- Symbol: 6 Byte Ascii String
  index, symbol = dissect.symbol(buffer, index, packet, parent)

  -- Symbol Sfx: 6 Byte Ascii String
  index, symbol_sfx = dissect.symbol_sfx(buffer, index, packet, parent)

  return index
end

-- Dissect: Order Cancel Request Message
dissect.order_cancel_request_message = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.order_cancel_request_message then
    local length = size_of.order_cancel_request_message(buffer, offset)
    local range = buffer(offset, length)
    local display = display.order_cancel_request_message(buffer, packet, parent)
    parent = parent:add(memx_equities_memo_sbe_v1_2.fields.order_cancel_request_message, range, display)
  end

  return dissect.order_cancel_request_message_fields(buffer, offset, packet, parent)
end

-- Calculate size of: Order Cancel Replace Request Message
size_of.order_cancel_replace_request_message = function(buffer, offset)
  local index = 0

  index = index + size_of.orig_cl_ord_id

  index = index + size_of.cl_ord_id

  index = index + size_of.symbol

  index = index + size_of.symbol_sfx

  index = index + size_of.side

  index = index + size_of.order_qty

  index = index + size_of.ord_type

  index = index + size_of.price

  index = index + size_of.display_qty

  index = index + size_of.locate_reqd

  return index
end

-- Display: Order Cancel Replace Request Message
display.order_cancel_replace_request_message = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Order Cancel Replace Request Message
dissect.order_cancel_replace_request_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Orig Cl Ord Id: 16 Byte Ascii String
  index, orig_cl_ord_id = dissect.orig_cl_ord_id(buffer, index, packet, parent)

  -- Cl Ord Id: 16 Byte Ascii String
  index, cl_ord_id = dissect.cl_ord_id(buffer, index, packet, parent)

  -- Symbol: 6 Byte Ascii String
  index, symbol = dissect.symbol(buffer, index, packet, parent)

  -- Symbol Sfx: 6 Byte Ascii String
  index, symbol_sfx = dissect.symbol_sfx(buffer, index, packet, parent)

  -- Side: 1 Byte Unsigned Fixed Width Integer
  index, side = dissect.side(buffer, index, packet, parent)

  -- Order Qty: 4 Byte Unsigned Fixed Width Integer
  index, order_qty = dissect.order_qty(buffer, index, packet, parent)

  -- Ord Type: 1 Byte Unsigned Fixed Width Integer Enum with 4 values
  index, ord_type = dissect.ord_type(buffer, index, packet, parent)

  -- Price: 8 Byte Signed Fixed Width Integer
  index, price = dissect.price(buffer, index, packet, parent)

  -- Display Qty: 4 Byte Unsigned Fixed Width Integer
  index, display_qty = dissect.display_qty(buffer, index, packet, parent)

  -- Locate Reqd: 1 Byte Ascii String
  index, locate_reqd = dissect.locate_reqd(buffer, index, packet, parent)

  return index
end

-- Dissect: Order Cancel Replace Request Message
dissect.order_cancel_replace_request_message = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.order_cancel_replace_request_message then
    local length = size_of.order_cancel_replace_request_message(buffer, offset)
    local range = buffer(offset, length)
    local display = display.order_cancel_replace_request_message(buffer, packet, parent)
    parent = parent:add(memx_equities_memo_sbe_v1_2.fields.order_cancel_replace_request_message, range, display)
  end

  return dissect.order_cancel_replace_request_message_fields(buffer, offset, packet, parent)
end

-- Calculate size of: New Order Single Message
size_of.new_order_single_message = function(buffer, offset)
  local index = 0

  index = index + size_of.cl_ord_id

  index = index + size_of.mpid

  index = index + size_of.symbol

  index = index + size_of.symbol_sfx

  index = index + size_of.side

  index = index + size_of.order_qty

  index = index + size_of.ord_type

  index = index + size_of.price

  index = index + size_of.time_in_force

  index = index + size_of.order_capacity

  index = index + size_of.cust_order_capacity

  index = index + size_of.exec_inst

  index = index + size_of.peg_offset_value

  index = index + size_of.peg_price_type

  index = index + size_of.expire_time

  index = index + size_of.min_qty

  index = index + size_of.display_qty

  index = index + size_of.display_method

  index = index + size_of.reserve_replenish_timing

  index = index + size_of.display_min_incr

  index = index + size_of.locate_reqd

  index = index + size_of.reprice_frequency

  index = index + size_of.reprice_behavior

  index = index + size_of.cancel_group_id

  index = index + size_of.stp_group_id

  index = index + size_of.self_trade_prevention

  index = index + size_of.risk_group_id

  return index
end

-- Display: New Order Single Message
display.new_order_single_message = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: New Order Single Message
dissect.new_order_single_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Cl Ord Id: 16 Byte Ascii String
  index, cl_ord_id = dissect.cl_ord_id(buffer, index, packet, parent)

  -- Mpid: 4 Byte Ascii String
  index, mpid = dissect.mpid(buffer, index, packet, parent)

  -- Symbol: 6 Byte Ascii String
  index, symbol = dissect.symbol(buffer, index, packet, parent)

  -- Symbol Sfx: 6 Byte Ascii String
  index, symbol_sfx = dissect.symbol_sfx(buffer, index, packet, parent)

  -- Side: 1 Byte Unsigned Fixed Width Integer
  index, side = dissect.side(buffer, index, packet, parent)

  -- Order Qty: 4 Byte Unsigned Fixed Width Integer
  index, order_qty = dissect.order_qty(buffer, index, packet, parent)

  -- Ord Type: 1 Byte Unsigned Fixed Width Integer Enum with 4 values
  index, ord_type = dissect.ord_type(buffer, index, packet, parent)

  -- Price: 8 Byte Signed Fixed Width Integer
  index, price = dissect.price(buffer, index, packet, parent)

  -- Time In Force: 1 Byte Unsigned Fixed Width Integer
  index, time_in_force = dissect.time_in_force(buffer, index, packet, parent)

  -- Order Capacity: 1 Byte Unsigned Fixed Width Integer
  index, order_capacity = dissect.order_capacity(buffer, index, packet, parent)

  -- Cust Order Capacity: 1 Byte Unsigned Fixed Width Integer
  index, cust_order_capacity = dissect.cust_order_capacity(buffer, index, packet, parent)

  -- Exec Inst: 2 Byte Unsigned Fixed Width Integer
  index, exec_inst = dissect.exec_inst(buffer, index, packet, parent)

  -- Peg Offset Value: 8 Byte Signed Fixed Width Integer
  index, peg_offset_value = dissect.peg_offset_value(buffer, index, packet, parent)

  -- Peg Price Type: 1 Byte Unsigned Fixed Width Integer
  index, peg_price_type = dissect.peg_price_type(buffer, index, packet, parent)

  -- Expire Time: 8 Byte Unsigned Fixed Width Integer
  index, expire_time = dissect.expire_time(buffer, index, packet, parent)

  -- Min Qty: 4 Byte Unsigned Fixed Width Integer
  index, min_qty = dissect.min_qty(buffer, index, packet, parent)

  -- Display Qty: 4 Byte Unsigned Fixed Width Integer
  index, display_qty = dissect.display_qty(buffer, index, packet, parent)

  -- Display Method: 1 Byte Unsigned Fixed Width Integer
  index, display_method = dissect.display_method(buffer, index, packet, parent)

  -- Reserve Replenish Timing: 1 Byte Unsigned Fixed Width Integer
  index, reserve_replenish_timing = dissect.reserve_replenish_timing(buffer, index, packet, parent)

  -- Display Min Incr: 4 Byte Unsigned Fixed Width Integer
  index, display_min_incr = dissect.display_min_incr(buffer, index, packet, parent)

  -- Locate Reqd: 1 Byte Ascii String
  index, locate_reqd = dissect.locate_reqd(buffer, index, packet, parent)

  -- Reprice Frequency: 1 Byte Unsigned Fixed Width Integer
  index, reprice_frequency = dissect.reprice_frequency(buffer, index, packet, parent)

  -- Reprice Behavior: 1 Byte Unsigned Fixed Width Integer
  index, reprice_behavior = dissect.reprice_behavior(buffer, index, packet, parent)

  -- Cancel Group Id: 2 Byte Unsigned Fixed Width Integer
  index, cancel_group_id = dissect.cancel_group_id(buffer, index, packet, parent)

  -- Stp Group Id: 2 Byte Unsigned Fixed Width Integer
  index, stp_group_id = dissect.stp_group_id(buffer, index, packet, parent)

  -- Self Trade Prevention: 1 Byte Unsigned Fixed Width Integer
  index, self_trade_prevention = dissect.self_trade_prevention(buffer, index, packet, parent)

  -- Risk Group Id: 2 Byte Unsigned Fixed Width Integer
  index, risk_group_id = dissect.risk_group_id(buffer, index, packet, parent)

  return index
end

-- Dissect: New Order Single Message
dissect.new_order_single_message = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.new_order_single_message then
    local length = size_of.new_order_single_message(buffer, offset)
    local range = buffer(offset, length)
    local display = display.new_order_single_message(buffer, packet, parent)
    parent = parent:add(memx_equities_memo_sbe_v1_2.fields.new_order_single_message, range, display)
  end

  return dissect.new_order_single_message_fields(buffer, offset, packet, parent)
end

-- Calculate runtime size of: Payload
size_of.payload = function(buffer, offset, template_id)
  -- Size of New Order Single Message
  if template_id == 1 then
    return size_of.new_order_single_message(buffer, offset)
  end
  -- Size of Order Cancel Replace Request Message
  if template_id == 2 then
    return size_of.order_cancel_replace_request_message(buffer, offset)
  end
  -- Size of Order Cancel Request Message
  if template_id == 3 then
    return size_of.order_cancel_request_message(buffer, offset)
  end
  -- Size of Mass Cancel Request Message
  if template_id == 4 then
    return size_of.mass_cancel_request_message(buffer, offset)
  end
  -- Size of Execution Report Pending New Message
  if template_id == 5 then
    return size_of.execution_report_pending_new_message(buffer, offset)
  end
  -- Size of Execution Report New Message
  if template_id == 6 then
    return size_of.execution_report_new_message(buffer, offset)
  end
  -- Size of Execution Report Rejected Message
  if template_id == 7 then
    return size_of.execution_report_rejected_message(buffer, offset)
  end
  -- Size of Execution Report Trade Message
  if template_id == 8 then
    return size_of.execution_report_trade_message(buffer, offset)
  end
  -- Size of Execution Report Pending Cancel Message
  if template_id == 9 then
    return size_of.execution_report_pending_cancel_message(buffer, offset)
  end
  -- Size of Pending Mass Cancel Message
  if template_id == 10 then
    return size_of.pending_mass_cancel_message(buffer, offset)
  end
  -- Size of Execution Report Canceled Message
  if template_id == 11 then
    return size_of.execution_report_canceled_message(buffer, offset)
  end
  -- Size of Mass Cancel Done Message
  if template_id == 12 then
    return size_of.mass_cancel_done_message(buffer, offset)
  end
  -- Size of Execution Report Pending Replace Message
  if template_id == 13 then
    return size_of.execution_report_pending_replace_message(buffer, offset)
  end
  -- Size of Execution Report Replaced Message
  if template_id == 14 then
    return size_of.execution_report_replaced_message(buffer, offset)
  end
  -- Size of Execution Report Trade Correction Message
  if template_id == 15 then
    return size_of.execution_report_trade_correction_message(buffer, offset)
  end
  -- Size of Execution Report Trade Break Message
  if template_id == 16 then
    return size_of.execution_report_trade_break_message(buffer, offset)
  end
  -- Size of Execution Report Restatement Message
  if template_id == 17 then
    return size_of.execution_report_restatement_message(buffer, offset)
  end
  -- Size of Order Cancel Reject Message
  if template_id == 18 then
    return size_of.order_cancel_reject_message(buffer, offset)
  end
  -- Size of Mass Cancel Reject Message
  if template_id == 20 then
    return size_of.mass_cancel_reject_message(buffer, offset)
  end

  return 0
end

-- Display: Payload
display.payload = function(buffer, offset, packet, parent)
  return ""
end

-- Dissect Branches: Payload
dissect.payload_branches = function(buffer, offset, packet, parent, template_id)
  -- Dissect New Order Single Message
  if template_id == 1 then
    return dissect.new_order_single_message(buffer, offset, packet, parent)
  end
  -- Dissect Order Cancel Replace Request Message
  if template_id == 2 then
    return dissect.order_cancel_replace_request_message(buffer, offset, packet, parent)
  end
  -- Dissect Order Cancel Request Message
  if template_id == 3 then
    return dissect.order_cancel_request_message(buffer, offset, packet, parent)
  end
  -- Dissect Mass Cancel Request Message
  if template_id == 4 then
    return dissect.mass_cancel_request_message(buffer, offset, packet, parent)
  end
  -- Dissect Execution Report Pending New Message
  if template_id == 5 then
    return dissect.execution_report_pending_new_message(buffer, offset, packet, parent)
  end
  -- Dissect Execution Report New Message
  if template_id == 6 then
    return dissect.execution_report_new_message(buffer, offset, packet, parent)
  end
  -- Dissect Execution Report Rejected Message
  if template_id == 7 then
    return dissect.execution_report_rejected_message(buffer, offset, packet, parent)
  end
  -- Dissect Execution Report Trade Message
  if template_id == 8 then
    return dissect.execution_report_trade_message(buffer, offset, packet, parent)
  end
  -- Dissect Execution Report Pending Cancel Message
  if template_id == 9 then
    return dissect.execution_report_pending_cancel_message(buffer, offset, packet, parent)
  end
  -- Dissect Pending Mass Cancel Message
  if template_id == 10 then
    return dissect.pending_mass_cancel_message(buffer, offset, packet, parent)
  end
  -- Dissect Execution Report Canceled Message
  if template_id == 11 then
    return dissect.execution_report_canceled_message(buffer, offset, packet, parent)
  end
  -- Dissect Mass Cancel Done Message
  if template_id == 12 then
    return dissect.mass_cancel_done_message(buffer, offset, packet, parent)
  end
  -- Dissect Execution Report Pending Replace Message
  if template_id == 13 then
    return dissect.execution_report_pending_replace_message(buffer, offset, packet, parent)
  end
  -- Dissect Execution Report Replaced Message
  if template_id == 14 then
    return dissect.execution_report_replaced_message(buffer, offset, packet, parent)
  end
  -- Dissect Execution Report Trade Correction Message
  if template_id == 15 then
    return dissect.execution_report_trade_correction_message(buffer, offset, packet, parent)
  end
  -- Dissect Execution Report Trade Break Message
  if template_id == 16 then
    return dissect.execution_report_trade_break_message(buffer, offset, packet, parent)
  end
  -- Dissect Execution Report Restatement Message
  if template_id == 17 then
    return dissect.execution_report_restatement_message(buffer, offset, packet, parent)
  end
  -- Dissect Order Cancel Reject Message
  if template_id == 18 then
    return dissect.order_cancel_reject_message(buffer, offset, packet, parent)
  end
  -- Dissect Mass Cancel Reject Message
  if template_id == 20 then
    return dissect.mass_cancel_reject_message(buffer, offset, packet, parent)
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
  local element = parent:add(memx_equities_memo_sbe_v1_2.fields.payload, range, display)

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
  local value = range:uint()
  local display = display.version(value, buffer, offset, packet, parent)

  parent:add(memx_equities_memo_sbe_v1_2.fields.version, range, value, display)

  return offset + length, value
end

-- Size: Schema Id
size_of.schema_id = 1

-- Display: Schema Id
display.schema_id = function(value)
  return "Schema Id: "..value
end

-- Dissect: Schema Id
dissect.schema_id = function(buffer, offset, packet, parent)
  local length = size_of.schema_id
  local range = buffer(offset, length)
  local value = range:uint()
  local display = display.schema_id(value, buffer, offset, packet, parent)

  parent:add(memx_equities_memo_sbe_v1_2.fields.schema_id, range, value, display)

  return offset + length, value
end

-- Size: Template Id
size_of.template_id = 1

-- Display: Template Id
display.template_id = function(value)
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
dissect.template_id = function(buffer, offset, packet, parent)
  local length = size_of.template_id
  local range = buffer(offset, length)
  local value = range:uint()
  local display = display.template_id(value, buffer, offset, packet, parent)

  parent:add(memx_equities_memo_sbe_v1_2.fields.template_id, range, value, display)

  return offset + length, value
end

-- Size: Block Length
size_of.block_length = 2

-- Display: Block Length
display.block_length = function(value)
  return "Block Length: "..value
end

-- Dissect: Block Length
dissect.block_length = function(buffer, offset, packet, parent)
  local length = size_of.block_length
  local range = buffer(offset, length)
  local value = range:uint()
  local display = display.block_length(value, buffer, offset, packet, parent)

  parent:add(memx_equities_memo_sbe_v1_2.fields.block_length, range, value, display)

  return offset + length, value
end

-- Calculate size of: Sbe Header
size_of.sbe_header = function(buffer, offset)
  local index = 0

  index = index + size_of.block_length

  index = index + size_of.template_id

  index = index + size_of.schema_id

  index = index + size_of.version

  return index
end

-- Display: Sbe Header
display.sbe_header = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Sbe Header
dissect.sbe_header_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Block Length: 2 Byte Unsigned Fixed Width Integer
  index, block_length = dissect.block_length(buffer, index, packet, parent)

  -- Template Id: 1 Byte Unsigned Fixed Width Integer Enum with 19 values
  index, template_id = dissect.template_id(buffer, index, packet, parent)

  -- Schema Id: 1 Byte Unsigned Fixed Width Integer Static
  index, schema_id = dissect.schema_id(buffer, index, packet, parent)

  -- Version: 2 Byte Unsigned Fixed Width Integer Static
  index, version = dissect.version(buffer, index, packet, parent)

  return index
end

-- Dissect: Sbe Header
dissect.sbe_header = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.sbe_header then
    local length = size_of.sbe_header(buffer, offset)
    local range = buffer(offset, length)
    local display = display.sbe_header(buffer, packet, parent)
    parent = parent:add(memx_equities_memo_sbe_v1_2.fields.sbe_header, range, display)
  end

  return dissect.sbe_header_fields(buffer, offset, packet, parent)
end

-- Calculate size of: Sbe Message
size_of.sbe_message = function(buffer, offset)
  local index = 0

  index = index + size_of.sbe_header(buffer, offset + index)

  -- Calculate runtime size of Payload field
  local payload_offset = offset + index
  local payload_type = buffer(payload_offset - 4, 1):uint()
  index = index + size_of.payload(buffer, payload_offset, payload_type)

  return index
end

-- Display: Sbe Message
display.sbe_message = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Sbe Message
dissect.sbe_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Sbe Header: Struct of 4 fields
  index, sbe_header = dissect.sbe_header(buffer, index, packet, parent)

  -- Dependency element: Template Id
  local template_id = buffer(index - 4, 1):uint()

  -- Payload: Runtime Type with 19 branches
  index = dissect.payload(buffer, index, packet, parent, template_id)

  return index
end

-- Dissect: Sbe Message
dissect.sbe_message = function(buffer, offset, packet, parent)
  -- Optionally add dynamic struct element to protocol tree
  if show.sbe_message then
    local length = size_of.sbe_message(buffer, offset)
    local range = buffer(offset, length)
    local display = display.sbe_message(buffer, packet, parent)
    parent = parent:add(memx_equities_memo_sbe_v1_2.fields.sbe_message, range, display)
  end

  return dissect.sbe_message_fields(buffer, offset, packet, parent)
end

-- Calculate size of: Sequenced Message
size_of.sequenced_message = function(buffer, offset)
  local index = 0

  index = index + size_of.sbe_message(buffer, offset + index)

  return index
end

-- Display: Sequenced Message
display.sequenced_message = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Sequenced Message
dissect.sequenced_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Sbe Message: Struct of 2 fields
  index, sbe_message = dissect.sbe_message(buffer, index, packet, parent)

  return index
end

-- Dissect: Sequenced Message
dissect.sequenced_message = function(buffer, offset, packet, parent)
  -- Optionally add dynamic struct element to protocol tree
  if show.sequenced_message then
    local length = size_of.sequenced_message(buffer, offset)
    local range = buffer(offset, length)
    local display = display.sequenced_message(buffer, packet, parent)
    parent = parent:add(memx_equities_memo_sbe_v1_2.fields.sequenced_message, range, display)
  end

  return dissect.sequenced_message_fields(buffer, offset, packet, parent)
end

-- Size: Total Sequence Count
size_of.total_sequence_count = 8

-- Display: Total Sequence Count
display.total_sequence_count = function(value)
  return "Total Sequence Count: "..value
end

-- Dissect: Total Sequence Count
dissect.total_sequence_count = function(buffer, offset, packet, parent)
  local length = size_of.total_sequence_count
  local range = buffer(offset, length)
  local value = range:uint64()
  local display = display.total_sequence_count(value, buffer, offset, packet, parent)

  parent:add(memx_equities_memo_sbe_v1_2.fields.total_sequence_count, range, value, display)

  return offset + length, value
end

-- Calculate size of: Stream Complete Message
size_of.stream_complete_message = function(buffer, offset)
  local index = 0

  index = index + size_of.total_sequence_count

  return index
end

-- Display: Stream Complete Message
display.stream_complete_message = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Stream Complete Message
dissect.stream_complete_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Total Sequence Count: 8 Byte Unsigned Fixed Width Integer
  index, total_sequence_count = dissect.total_sequence_count(buffer, index, packet, parent)

  return index
end

-- Dissect: Stream Complete Message
dissect.stream_complete_message = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.stream_complete_message then
    local length = size_of.stream_complete_message(buffer, offset)
    local range = buffer(offset, length)
    local display = display.stream_complete_message(buffer, packet, parent)
    parent = parent:add(memx_equities_memo_sbe_v1_2.fields.stream_complete_message, range, display)
  end

  return dissect.stream_complete_message_fields(buffer, offset, packet, parent)
end

-- Size: Stream Reject Code
size_of.stream_reject_code = 1

-- Display: Stream Reject Code
display.stream_reject_code = function(value)
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
dissect.stream_reject_code = function(buffer, offset, packet, parent)
  local length = size_of.stream_reject_code
  local range = buffer(offset, length)
  local value = range:string()
  local display = display.stream_reject_code(value, buffer, offset, packet, parent)

  parent:add(memx_equities_memo_sbe_v1_2.fields.stream_reject_code, range, value, display)

  return offset + length, value
end

-- Calculate size of: Stream Rejected Message
size_of.stream_rejected_message = function(buffer, offset)
  local index = 0

  index = index + size_of.stream_reject_code

  return index
end

-- Display: Stream Rejected Message
display.stream_rejected_message = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Stream Rejected Message
dissect.stream_rejected_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Stream Reject Code: 1 Byte Ascii String Enum with 3 values
  index, stream_reject_code = dissect.stream_reject_code(buffer, index, packet, parent)

  return index
end

-- Dissect: Stream Rejected Message
dissect.stream_rejected_message = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.stream_rejected_message then
    local length = size_of.stream_rejected_message(buffer, offset)
    local range = buffer(offset, length)
    local display = display.stream_rejected_message(buffer, packet, parent)
    parent = parent:add(memx_equities_memo_sbe_v1_2.fields.stream_rejected_message, range, display)
  end

  return dissect.stream_rejected_message_fields(buffer, offset, packet, parent)
end

-- Size: Next Sequence Number
size_of.next_sequence_number = 8

-- Display: Next Sequence Number
display.next_sequence_number = function(value)
  return "Next Sequence Number: "..value
end

-- Dissect: Next Sequence Number
dissect.next_sequence_number = function(buffer, offset, packet, parent)
  local length = size_of.next_sequence_number
  local range = buffer(offset, length)
  local value = range:uint64()
  local display = display.next_sequence_number(value, buffer, offset, packet, parent)

  parent:add(memx_equities_memo_sbe_v1_2.fields.next_sequence_number, range, value, display)

  return offset + length, value
end

-- Calculate size of: Stream Begin Message
size_of.stream_begin_message = function(buffer, offset)
  local index = 0

  index = index + size_of.next_sequence_number

  index = index + size_of.max_sequence_number

  return index
end

-- Display: Stream Begin Message
display.stream_begin_message = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Stream Begin Message
dissect.stream_begin_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Next Sequence Number: 8 Byte Unsigned Fixed Width Integer
  index, next_sequence_number = dissect.next_sequence_number(buffer, index, packet, parent)

  -- Max Sequence Number
  index, max_sequence_number = dissect.max_sequence_number(buffer, index, packet, parent)

  return index
end

-- Dissect: Stream Begin Message
dissect.stream_begin_message = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.stream_begin_message then
    local length = size_of.stream_begin_message(buffer, offset)
    local range = buffer(offset, length)
    local display = display.stream_begin_message(buffer, packet, parent)
    parent = parent:add(memx_equities_memo_sbe_v1_2.fields.stream_begin_message, range, display)
  end

  return dissect.stream_begin_message_fields(buffer, offset, packet, parent)
end

-- Size: Message Count
size_of.message_count = 8

-- Display: Message Count
display.message_count = function(value)
  return "Message Count: "..value
end

-- Dissect: Message Count
dissect.message_count = function(buffer, offset, packet, parent)
  local length = size_of.message_count
  local range = buffer(offset, length)
  local value = range:uint64()
  local display = display.message_count(value, buffer, offset, packet, parent)

  parent:add(memx_equities_memo_sbe_v1_2.fields.message_count, range, value, display)

  return offset + length, value
end

-- Calculate size of: Replay Complete Message
size_of.replay_complete_message = function(buffer, offset)
  local index = 0

  index = index + size_of.message_count

  return index
end

-- Display: Replay Complete Message
display.replay_complete_message = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Replay Complete Message
dissect.replay_complete_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Message Count: 8 Byte Unsigned Fixed Width Integer
  index, message_count = dissect.message_count(buffer, index, packet, parent)

  return index
end

-- Dissect: Replay Complete Message
dissect.replay_complete_message = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.replay_complete_message then
    local length = size_of.replay_complete_message(buffer, offset)
    local range = buffer(offset, length)
    local display = display.replay_complete_message(buffer, packet, parent)
    parent = parent:add(memx_equities_memo_sbe_v1_2.fields.replay_complete_message, range, display)
  end

  return dissect.replay_complete_message_fields(buffer, offset, packet, parent)
end

-- Size: Replay Reject Code
size_of.replay_reject_code = 1

-- Display: Replay Reject Code
display.replay_reject_code = function(value)
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
dissect.replay_reject_code = function(buffer, offset, packet, parent)
  local length = size_of.replay_reject_code
  local range = buffer(offset, length)
  local value = range:string()
  local display = display.replay_reject_code(value, buffer, offset, packet, parent)

  parent:add(memx_equities_memo_sbe_v1_2.fields.replay_reject_code, range, value, display)

  return offset + length, value
end

-- Calculate size of: Replay Rejected Message
size_of.replay_rejected_message = function(buffer, offset)
  local index = 0

  index = index + size_of.replay_reject_code

  return index
end

-- Display: Replay Rejected Message
display.replay_rejected_message = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Replay Rejected Message
dissect.replay_rejected_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Replay Reject Code: 1 Byte Ascii String Enum with 4 values
  index, replay_reject_code = dissect.replay_reject_code(buffer, index, packet, parent)

  return index
end

-- Dissect: Replay Rejected Message
dissect.replay_rejected_message = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.replay_rejected_message then
    local length = size_of.replay_rejected_message(buffer, offset)
    local range = buffer(offset, length)
    local display = display.replay_rejected_message(buffer, packet, parent)
    parent = parent:add(memx_equities_memo_sbe_v1_2.fields.replay_rejected_message, range, display)
  end

  return dissect.replay_rejected_message_fields(buffer, offset, packet, parent)
end

-- Size: Pending Message Count
size_of.pending_message_count = 4

-- Display: Pending Message Count
display.pending_message_count = function(value)
  return "Pending Message Count: "..value
end

-- Dissect: Pending Message Count
dissect.pending_message_count = function(buffer, offset, packet, parent)
  local length = size_of.pending_message_count
  local range = buffer(offset, length)
  local value = range:uint()
  local display = display.pending_message_count(value, buffer, offset, packet, parent)

  parent:add(memx_equities_memo_sbe_v1_2.fields.pending_message_count, range, value, display)

  return offset + length, value
end

-- Calculate size of: Replay Begin Message
size_of.replay_begin_message = function(buffer, offset)
  local index = 0

  index = index + size_of.next_sequence_number

  index = index + size_of.pending_message_count

  return index
end

-- Display: Replay Begin Message
display.replay_begin_message = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Replay Begin Message
dissect.replay_begin_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Next Sequence Number: 8 Byte Unsigned Fixed Width Integer
  index, next_sequence_number = dissect.next_sequence_number(buffer, index, packet, parent)

  -- Pending Message Count: 4 Byte Unsigned Fixed Width Integer
  index, pending_message_count = dissect.pending_message_count(buffer, index, packet, parent)

  return index
end

-- Dissect: Replay Begin Message
dissect.replay_begin_message = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.replay_begin_message then
    local length = size_of.replay_begin_message(buffer, offset)
    local range = buffer(offset, length)
    local display = display.replay_begin_message(buffer, packet, parent)
    parent = parent:add(memx_equities_memo_sbe_v1_2.fields.replay_begin_message, range, display)
  end

  return dissect.replay_begin_message_fields(buffer, offset, packet, parent)
end

-- Size: Session Id
size_of.session_id = 8

-- Display: Session Id
display.session_id = function(value)
  return "Session Id: "..value
end

-- Dissect: Session Id
dissect.session_id = function(buffer, offset, packet, parent)
  local length = size_of.session_id
  local range = buffer(offset, length)
  local value = range:uint64()
  local display = display.session_id(value, buffer, offset, packet, parent)

  parent:add(memx_equities_memo_sbe_v1_2.fields.session_id, range, value, display)

  return offset + length, value
end

-- Calculate size of: Start Of Session Message
size_of.start_of_session_message = function(buffer, offset)
  local index = 0

  index = index + size_of.session_id

  return index
end

-- Display: Start Of Session Message
display.start_of_session_message = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Start Of Session Message
dissect.start_of_session_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Session Id: 8 Byte Unsigned Fixed Width Integer
  index, session_id = dissect.session_id(buffer, index, packet, parent)

  return index
end

-- Dissect: Start Of Session Message
dissect.start_of_session_message = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.start_of_session_message then
    local length = size_of.start_of_session_message(buffer, offset)
    local range = buffer(offset, length)
    local display = display.start_of_session_message(buffer, packet, parent)
    parent = parent:add(memx_equities_memo_sbe_v1_2.fields.start_of_session_message, range, display)
  end

  return dissect.start_of_session_message_fields(buffer, offset, packet, parent)
end

-- Size: Login Reject Code
size_of.login_reject_code = 1

-- Display: Login Reject Code
display.login_reject_code = function(value)
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
dissect.login_reject_code = function(buffer, offset, packet, parent)
  local length = size_of.login_reject_code
  local range = buffer(offset, length)
  local value = range:string()
  local display = display.login_reject_code(value, buffer, offset, packet, parent)

  parent:add(memx_equities_memo_sbe_v1_2.fields.login_reject_code, range, value, display)

  return offset + length, value
end

-- Calculate size of: Login Rejected Message
size_of.login_rejected_message = function(buffer, offset)
  local index = 0

  index = index + size_of.login_reject_code

  return index
end

-- Display: Login Rejected Message
display.login_rejected_message = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Login Rejected Message
dissect.login_rejected_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Login Reject Code: 1 Byte Ascii String Enum with 4 values
  index, login_reject_code = dissect.login_reject_code(buffer, index, packet, parent)

  return index
end

-- Dissect: Login Rejected Message
dissect.login_rejected_message = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.login_rejected_message then
    local length = size_of.login_rejected_message(buffer, offset)
    local range = buffer(offset, length)
    local display = display.login_rejected_message(buffer, packet, parent)
    parent = parent:add(memx_equities_memo_sbe_v1_2.fields.login_rejected_message, range, display)
  end

  return dissect.login_rejected_message_fields(buffer, offset, packet, parent)
end

-- Size: Supported Request Mode
size_of.supported_request_mode = 1

-- Display: Supported Request Mode
display.supported_request_mode = function(value)
  if value == "S" then
    return "Supported Request Mode: Stream (S)"
  end
  if value == "R" then
    return "Supported Request Mode: Replay (R)"
  end

  return "Supported Request Mode: Unknown("..value..")"
end

-- Dissect: Supported Request Mode
dissect.supported_request_mode = function(buffer, offset, packet, parent)
  local length = size_of.supported_request_mode
  local range = buffer(offset, length)
  local value = range:string()
  local display = display.supported_request_mode(value, buffer, offset, packet, parent)

  parent:add(memx_equities_memo_sbe_v1_2.fields.supported_request_mode, range, value, display)

  return offset + length, value
end

-- Calculate size of: Login Accepted Message
size_of.login_accepted_message = function(buffer, offset)
  local index = 0

  index = index + size_of.supported_request_mode

  return index
end

-- Display: Login Accepted Message
display.login_accepted_message = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Login Accepted Message
dissect.login_accepted_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Supported Request Mode: 1 Byte Ascii String Enum with 2 values
  index, supported_request_mode = dissect.supported_request_mode(buffer, index, packet, parent)

  return index
end

-- Dissect: Login Accepted Message
dissect.login_accepted_message = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.login_accepted_message then
    local length = size_of.login_accepted_message(buffer, offset)
    local range = buffer(offset, length)
    local display = display.login_accepted_message(buffer, packet, parent)
    parent = parent:add(memx_equities_memo_sbe_v1_2.fields.login_accepted_message, range, display)
  end

  return dissect.login_accepted_message_fields(buffer, offset, packet, parent)
end

-- Calculate size of: Unsequenced Message
size_of.unsequenced_message = function(buffer, offset)
  local index = 0

  index = index + size_of.sbe_message(buffer, offset + index)

  return index
end

-- Display: Unsequenced Message
display.unsequenced_message = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Unsequenced Message
dissect.unsequenced_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Sbe Message: Struct of 2 fields
  index, sbe_message = dissect.sbe_message(buffer, index, packet, parent)

  return index
end

-- Dissect: Unsequenced Message
dissect.unsequenced_message = function(buffer, offset, packet, parent)
  -- Optionally add dynamic struct element to protocol tree
  if show.unsequenced_message then
    local length = size_of.unsequenced_message(buffer, offset)
    local range = buffer(offset, length)
    local display = display.unsequenced_message(buffer, packet, parent)
    parent = parent:add(memx_equities_memo_sbe_v1_2.fields.unsequenced_message, range, display)
  end

  return dissect.unsequenced_message_fields(buffer, offset, packet, parent)
end

-- Calculate size of: Stream Request Message
size_of.stream_request_message = function(buffer, offset)
  local index = 0

  index = index + size_of.session_id

  index = index + size_of.next_sequence_number

  return index
end

-- Display: Stream Request Message
display.stream_request_message = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Stream Request Message
dissect.stream_request_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Session Id: 8 Byte Unsigned Fixed Width Integer
  index, session_id = dissect.session_id(buffer, index, packet, parent)

  -- Next Sequence Number: 8 Byte Unsigned Fixed Width Integer
  index, next_sequence_number = dissect.next_sequence_number(buffer, index, packet, parent)

  return index
end

-- Dissect: Stream Request Message
dissect.stream_request_message = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.stream_request_message then
    local length = size_of.stream_request_message(buffer, offset)
    local range = buffer(offset, length)
    local display = display.stream_request_message(buffer, packet, parent)
    parent = parent:add(memx_equities_memo_sbe_v1_2.fields.stream_request_message, range, display)
  end

  return dissect.stream_request_message_fields(buffer, offset, packet, parent)
end

-- Calculate size of: Replay All Request Message
size_of.replay_all_request_message = function(buffer, offset)
  local index = 0

  index = index + size_of.session_id

  return index
end

-- Display: Replay All Request Message
display.replay_all_request_message = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Replay All Request Message
dissect.replay_all_request_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Session Id: 8 Byte Unsigned Fixed Width Integer
  index, session_id = dissect.session_id(buffer, index, packet, parent)

  return index
end

-- Dissect: Replay All Request Message
dissect.replay_all_request_message = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.replay_all_request_message then
    local length = size_of.replay_all_request_message(buffer, offset)
    local range = buffer(offset, length)
    local display = display.replay_all_request_message(buffer, packet, parent)
    parent = parent:add(memx_equities_memo_sbe_v1_2.fields.replay_all_request_message, range, display)
  end

  return dissect.replay_all_request_message_fields(buffer, offset, packet, parent)
end

-- Size: Count
size_of.count = 4

-- Display: Count
display.count = function(value)
  return "Count: "..value
end

-- Dissect: Count
dissect.count = function(buffer, offset, packet, parent)
  local length = size_of.count
  local range = buffer(offset, length)
  local value = range:uint()
  local display = display.count(value, buffer, offset, packet, parent)

  parent:add(memx_equities_memo_sbe_v1_2.fields.count, range, value, display)

  return offset + length, value
end

-- Calculate size of: Replay Request Message
size_of.replay_request_message = function(buffer, offset)
  local index = 0

  index = index + size_of.session_id

  index = index + size_of.next_sequence_number

  index = index + size_of.count

  return index
end

-- Display: Replay Request Message
display.replay_request_message = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Replay Request Message
dissect.replay_request_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Session Id: 8 Byte Unsigned Fixed Width Integer
  index, session_id = dissect.session_id(buffer, index, packet, parent)

  -- Next Sequence Number: 8 Byte Unsigned Fixed Width Integer
  index, next_sequence_number = dissect.next_sequence_number(buffer, index, packet, parent)

  -- Count: 4 Byte Unsigned Fixed Width Integer
  index, count = dissect.count(buffer, index, packet, parent)

  return index
end

-- Dissect: Replay Request Message
dissect.replay_request_message = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.replay_request_message then
    local length = size_of.replay_request_message(buffer, offset)
    local range = buffer(offset, length)
    local display = display.replay_request_message(buffer, packet, parent)
    parent = parent:add(memx_equities_memo_sbe_v1_2.fields.replay_request_message, range, display)
  end

  return dissect.replay_request_message_fields(buffer, offset, packet, parent)
end

-- Size: Token
size_of.token = 1

-- Display: Token
display.token = function(value)
  return "Token: "..value
end

-- Dissect: Token
dissect.token = function(buffer, offset, packet, parent)
  local length = size_of.token
  local range = buffer(offset, length)
  local value = range:string()
  local display = display.token(value, buffer, offset, packet, parent)

  parent:add(memx_equities_memo_sbe_v1_2.fields.token, range, value, display)

  return offset + length, value
end

-- Size: Token Type
size_of.token_type = 1

-- Display: Token Type
display.token_type = function(value)
  return "Token Type: "..value
end

-- Dissect: Token Type
dissect.token_type = function(buffer, offset, packet, parent)
  local length = size_of.token_type
  local range = buffer(offset, length)
  local value = range:string()
  local display = display.token_type(value, buffer, offset, packet, parent)

  parent:add(memx_equities_memo_sbe_v1_2.fields.token_type, range, value, display)

  return offset + length, value
end

-- Calculate size of: Login Request Message
size_of.login_request_message = function(buffer, offset)
  local index = 0

  index = index + size_of.token_type

  index = index + size_of.token

  return index
end

-- Display: Login Request Message
display.login_request_message = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Login Request Message
dissect.login_request_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Token Type: 1 Byte Ascii String
  index, token_type = dissect.token_type(buffer, index, packet, parent)

  -- Token: 1 Byte Ascii String
  index, token = dissect.token(buffer, index, packet, parent)

  return index
end

-- Dissect: Login Request Message
dissect.login_request_message = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.login_request_message then
    local length = size_of.login_request_message(buffer, offset)
    local range = buffer(offset, length)
    local display = display.login_request_message(buffer, packet, parent)
    parent = parent:add(memx_equities_memo_sbe_v1_2.fields.login_request_message, range, display)
  end

  return dissect.login_request_message_fields(buffer, offset, packet, parent)
end

-- Calculate runtime size of: Data
size_of.data = function(buffer, offset, message_type)
  -- Size of Login Request Message
  if message_type == 100 then
    return size_of.login_request_message(buffer, offset)
  end
  -- Size of Replay Request Message
  if message_type == 101 then
    return size_of.replay_request_message(buffer, offset)
  end
  -- Size of Replay All Request Message
  if message_type == 102 then
    return size_of.replay_all_request_message(buffer, offset)
  end
  -- Size of Stream Request Message
  if message_type == 103 then
    return size_of.stream_request_message(buffer, offset)
  end
  -- Size of Unsequenced Message
  if message_type == 104 then
    return size_of.unsequenced_message(buffer, offset)
  end
  -- Size of Login Accepted Message
  if message_type == 1 then
    return size_of.login_accepted_message(buffer, offset)
  end
  -- Size of Login Rejected Message
  if message_type == 2 then
    return size_of.login_rejected_message(buffer, offset)
  end
  -- Size of Start Of Session Message
  if message_type == 3 then
    return size_of.start_of_session_message(buffer, offset)
  end
  -- Size of Replay Begin Message
  if message_type == 5 then
    return size_of.replay_begin_message(buffer, offset)
  end
  -- Size of Replay Rejected Message
  if message_type == 6 then
    return size_of.replay_rejected_message(buffer, offset)
  end
  -- Size of Replay Complete Message
  if message_type == 7 then
    return size_of.replay_complete_message(buffer, offset)
  end
  -- Size of Stream Begin Message
  if message_type == 8 then
    return size_of.stream_begin_message(buffer, offset)
  end
  -- Size of Stream Rejected Message
  if message_type == 9 then
    return size_of.stream_rejected_message(buffer, offset)
  end
  -- Size of Stream Complete Message
  if message_type == 10 then
    return size_of.stream_complete_message(buffer, offset)
  end
  -- Size of Sequenced Message
  if message_type == 11 then
    return size_of.sequenced_message(buffer, offset)
  end

  return 0
end

-- Display: Data
display.data = function(buffer, offset, packet, parent)
  return ""
end

-- Dissect Branches: Data
dissect.data_branches = function(buffer, offset, packet, parent, message_type)
  -- Dissect Login Request Message
  if message_type == 100 then
    return dissect.login_request_message(buffer, offset, packet, parent)
  end
  -- Dissect Replay Request Message
  if message_type == 101 then
    return dissect.replay_request_message(buffer, offset, packet, parent)
  end
  -- Dissect Replay All Request Message
  if message_type == 102 then
    return dissect.replay_all_request_message(buffer, offset, packet, parent)
  end
  -- Dissect Stream Request Message
  if message_type == 103 then
    return dissect.stream_request_message(buffer, offset, packet, parent)
  end
  -- Dissect Unsequenced Message
  if message_type == 104 then
    return dissect.unsequenced_message(buffer, offset, packet, parent)
  end
  -- Dissect Login Accepted Message
  if message_type == 1 then
    return dissect.login_accepted_message(buffer, offset, packet, parent)
  end
  -- Dissect Login Rejected Message
  if message_type == 2 then
    return dissect.login_rejected_message(buffer, offset, packet, parent)
  end
  -- Dissect Start Of Session Message
  if message_type == 3 then
    return dissect.start_of_session_message(buffer, offset, packet, parent)
  end
  -- Dissect Replay Begin Message
  if message_type == 5 then
    return dissect.replay_begin_message(buffer, offset, packet, parent)
  end
  -- Dissect Replay Rejected Message
  if message_type == 6 then
    return dissect.replay_rejected_message(buffer, offset, packet, parent)
  end
  -- Dissect Replay Complete Message
  if message_type == 7 then
    return dissect.replay_complete_message(buffer, offset, packet, parent)
  end
  -- Dissect Stream Begin Message
  if message_type == 8 then
    return dissect.stream_begin_message(buffer, offset, packet, parent)
  end
  -- Dissect Stream Rejected Message
  if message_type == 9 then
    return dissect.stream_rejected_message(buffer, offset, packet, parent)
  end
  -- Dissect Stream Complete Message
  if message_type == 10 then
    return dissect.stream_complete_message(buffer, offset, packet, parent)
  end
  -- Dissect Sequenced Message
  if message_type == 11 then
    return dissect.sequenced_message(buffer, offset, packet, parent)
  end

  return offset
end

-- Dissect: Data
dissect.data = function(buffer, offset, packet, parent, message_type)
  if not show.data then
    return dissect.data_branches(buffer, offset, packet, parent, message_type)
  end

  -- Calculate size and check that branch is not empty
  local size = size_of.data(buffer, offset, message_type)
  if size == 0 then
    return offset
  end

  -- Dissect Element
  local range = buffer(offset, size)
  local display = display.data(buffer, packet, parent)
  local element = parent:add(memx_equities_memo_sbe_v1_2.fields.data, range, display)

  return dissect.data_branches(buffer, offset, packet, parent, message_type)
end

-- Size: Message Length
size_of.message_length = 2

-- Display: Message Length
display.message_length = function(value)
  return "Message Length: "..value
end

-- Dissect: Message Length
dissect.message_length = function(buffer, offset, packet, parent)
  local length = size_of.message_length
  local range = buffer(offset, length)
  local value = range:uint()
  local display = display.message_length(value, buffer, offset, packet, parent)

  parent:add(memx_equities_memo_sbe_v1_2.fields.message_length, range, value, display)

  return offset + length, value
end

-- Size: Message Type
size_of.message_type = 1

-- Display: Message Type
display.message_type = function(value)
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
dissect.message_type = function(buffer, offset, packet, parent)
  local length = size_of.message_type
  local range = buffer(offset, length)
  local value = range:uint()
  local display = display.message_type(value, buffer, offset, packet, parent)

  parent:add(memx_equities_memo_sbe_v1_2.fields.message_type, range, value, display)

  return offset + length, value
end

-- Calculate size of: Common Header
size_of.common_header = function(buffer, offset)
  local index = 0

  index = index + size_of.message_type

  index = index + size_of.message_length

  return index
end

-- Display: Common Header
display.common_header = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Common Header
dissect.common_header_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Message Type: 1 Byte Unsigned Fixed Width Integer Enum with 16 values
  index, message_type = dissect.message_type(buffer, index, packet, parent)

  -- Message Length: 2 Byte Unsigned Fixed Width Integer
  index, message_length = dissect.message_length(buffer, index, packet, parent)

  return index
end

-- Dissect: Common Header
dissect.common_header = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.common_header then
    local length = size_of.common_header(buffer, offset)
    local range = buffer(offset, length)
    local display = display.common_header(buffer, packet, parent)
    parent = parent:add(memx_equities_memo_sbe_v1_2.fields.common_header, range, display)
  end

  return dissect.common_header_fields(buffer, offset, packet, parent)
end

-- Dissect Packet
dissect.packet = function(buffer, packet, parent)
  local index = 0

  -- Common Header: Struct of 2 fields
  index, common_header = dissect.common_header(buffer, index, packet, parent)

  -- Dependency element: Message Type
  local message_type = buffer(index - 3, 1):uint()

  -- Data: Runtime Type with 15 branches
  index = dissect.data(buffer, index, packet, parent, message_type)

  return index
end


-----------------------------------------------------------------------
-- Protocol Dissector and Components
-----------------------------------------------------------------------

-- Initialize Dissector
function memx_equities_memo_sbe_v1_2.init()
end

-- Dissector for Memx Equities Memo Sbe 1.2
function memx_equities_memo_sbe_v1_2.dissector(buffer, packet, parent)

  -- Set protocol name
  packet.cols.protocol = memx_equities_memo_sbe_v1_2.name

  -- Dissect protocol
  local protocol = parent:add(memx_equities_memo_sbe_v1_2, buffer(), memx_equities_memo_sbe_v1_2.description, "("..buffer:len().." Bytes)")
  return dissect.packet(buffer, packet, protocol)
end

-- Register With Tcp Table
local tcp_table = DissectorTable.get("tcp.port")
tcp_table:add(65333, memx_equities_memo_sbe_v1_2)


-----------------------------------------------------------------------
-- Protocol Heuristics
-----------------------------------------------------------------------

-- Verify size of packet
verify.memx_equities_memo_sbe_v1_2_packet_size = function(buffer)

  return true
end

-- Verify Schema Id Field
verify.schema_id = function(buffer)
  if 1 == buffer(52, 1):uint() then
    return true
  end

  return false
end

-- Verify Version Field
verify.version = function(buffer)
  if 1 == buffer(53, 2):uint() then
    return true
  end

  return false
end

-- Verify Schema Id Field
verify.schema_id = function(buffer)
  if 1 == buffer(1475, 1):uint() then
    return true
  end

  return false
end

-- Verify Version Field
verify.version = function(buffer)
  if 1 == buffer(1476, 2):uint() then
    return true
  end

  return false
end

-- Dissector Heuristic for Memx Equities Memo Sbe 1.2
local function memx_equities_memo_sbe_v1_2_heuristic(buffer, packet, parent)
  -- Verify packet length
  if not verify.memx_equities_memo_sbe_v1_2_packet_size(buffer) then return false end

  -- Verify Schema Id
  if not verify.schema_id(buffer) then return false end

  -- Verify Version
  if not verify.version(buffer) then return false end

  -- Verify Schema Id
  if not verify.schema_id(buffer) then return false end

  -- Verify Version
  if not verify.version(buffer) then return false end

  -- Protocol is valid, set conversation and dissect this packet
  packet.conversation = memx_equities_memo_sbe_v1_2
  memx_equities_memo_sbe_v1_2.dissector(buffer, packet, parent)

  return true
end

-- Register Heuristic for Memx Equities Memo Sbe 1.2
memx_equities_memo_sbe_v1_2:register_heuristic("tcp", memx_equities_memo_sbe_v1_2_heuristic)

-----------------------------------------------------------------------
-- Lua dissectors are an easily edited and modified cross platform dissection solution.
-- Feel free to modify. Enjoy.
-----------------------------------------------------------------------
-- 
-- Protocol:
--   Organization: Members Exchange
--   Version: 1.2
--   Date: Wednesday, September 23, 2020
--   Specification: MEMO SBE-v1_1.pdf
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
