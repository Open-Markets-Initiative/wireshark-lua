-----------------------------------------------------------------------
-- Lua Script Wireshark Dissector
-- 
-- Please see end of file for rules and regulations
-----------------------------------------------------------------------

-- Memx Equities Memo Sbe 1.9 Protocol
local memx_equities_memo_sbe_v1_9 = Proto("Memx.Equities.Memo.Sbe.v1.9.Lua", "Memx Equities Memo Sbe 1.9")

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

-- Memx Equities Memo Sbe 1.9 Fields
memx_equities_memo_sbe_v1_9.fields.block_length = ProtoField.new("Block Length", "memx.equities.memo.sbe.v1.9.blocklength", ftypes.UINT16)
memx_equities_memo_sbe_v1_9.fields.cancel_group_id = ProtoField.new("Cancel Group Id", "memx.equities.memo.sbe.v1.9.cancelgroupid", ftypes.UINT16)
memx_equities_memo_sbe_v1_9.fields.cancel_reason = ProtoField.new("Cancel Reason", "memx.equities.memo.sbe.v1.9.cancelreason", ftypes.UINT8)
memx_equities_memo_sbe_v1_9.fields.cl_ord_id = ProtoField.new("Cl Ord Id", "memx.equities.memo.sbe.v1.9.clordid", ftypes.STRING)
memx_equities_memo_sbe_v1_9.fields.common_header = ProtoField.new("Common Header", "memx.equities.memo.sbe.v1.9.commonheader", ftypes.STRING)
memx_equities_memo_sbe_v1_9.fields.count = ProtoField.new("Count", "memx.equities.memo.sbe.v1.9.count", ftypes.UINT32)
memx_equities_memo_sbe_v1_9.fields.cum_qty = ProtoField.new("Cum Qty", "memx.equities.memo.sbe.v1.9.cumqty", ftypes.UINT32)
memx_equities_memo_sbe_v1_9.fields.cust_order_capacity = ProtoField.new("Cust Order Capacity", "memx.equities.memo.sbe.v1.9.custordercapacity", ftypes.UINT8)
memx_equities_memo_sbe_v1_9.fields.cxl_rej_reason = ProtoField.new("Cxl Rej Reason", "memx.equities.memo.sbe.v1.9.cxlrejreason", ftypes.UINT8)
memx_equities_memo_sbe_v1_9.fields.cxl_rej_response_to = ProtoField.new("Cxl Rej Response To", "memx.equities.memo.sbe.v1.9.cxlrejresponseto", ftypes.UINT8)
memx_equities_memo_sbe_v1_9.fields.data = ProtoField.new("Data", "memx.equities.memo.sbe.v1.9.data", ftypes.STRING)
memx_equities_memo_sbe_v1_9.fields.display_method = ProtoField.new("Display Method", "memx.equities.memo.sbe.v1.9.displaymethod", ftypes.UINT8)
memx_equities_memo_sbe_v1_9.fields.display_min_incr = ProtoField.new("Display Min Incr", "memx.equities.memo.sbe.v1.9.displayminincr", ftypes.UINT32)
memx_equities_memo_sbe_v1_9.fields.display_qty = ProtoField.new("Display Qty", "memx.equities.memo.sbe.v1.9.displayqty", ftypes.UINT32)
memx_equities_memo_sbe_v1_9.fields.exec_id = ProtoField.new("Exec Id", "memx.equities.memo.sbe.v1.9.execid", ftypes.UINT64)
memx_equities_memo_sbe_v1_9.fields.exec_inst = ProtoField.new("Exec Inst", "memx.equities.memo.sbe.v1.9.execinst", ftypes.STRING)
memx_equities_memo_sbe_v1_9.fields.exec_ref_id = ProtoField.new("Exec Ref Id", "memx.equities.memo.sbe.v1.9.execrefid", ftypes.UINT64)
memx_equities_memo_sbe_v1_9.fields.exec_restatement_reason = ProtoField.new("Exec Restatement Reason", "memx.equities.memo.sbe.v1.9.execrestatementreason", ftypes.UINT8)
memx_equities_memo_sbe_v1_9.fields.execution_report_canceled_message = ProtoField.new("Execution Report Canceled Message", "memx.equities.memo.sbe.v1.9.executionreportcanceledmessage", ftypes.STRING)
memx_equities_memo_sbe_v1_9.fields.execution_report_new_message = ProtoField.new("Execution Report New Message", "memx.equities.memo.sbe.v1.9.executionreportnewmessage", ftypes.STRING)
memx_equities_memo_sbe_v1_9.fields.execution_report_pending_cancel_message = ProtoField.new("Execution Report Pending Cancel Message", "memx.equities.memo.sbe.v1.9.executionreportpendingcancelmessage", ftypes.STRING)
memx_equities_memo_sbe_v1_9.fields.execution_report_pending_new_message = ProtoField.new("Execution Report Pending New Message", "memx.equities.memo.sbe.v1.9.executionreportpendingnewmessage", ftypes.STRING)
memx_equities_memo_sbe_v1_9.fields.execution_report_pending_replace_message = ProtoField.new("Execution Report Pending Replace Message", "memx.equities.memo.sbe.v1.9.executionreportpendingreplacemessage", ftypes.STRING)
memx_equities_memo_sbe_v1_9.fields.execution_report_rejected_message = ProtoField.new("Execution Report Rejected Message", "memx.equities.memo.sbe.v1.9.executionreportrejectedmessage", ftypes.STRING)
memx_equities_memo_sbe_v1_9.fields.execution_report_replaced_message = ProtoField.new("Execution Report Replaced Message", "memx.equities.memo.sbe.v1.9.executionreportreplacedmessage", ftypes.STRING)
memx_equities_memo_sbe_v1_9.fields.execution_report_restatement_message = ProtoField.new("Execution Report Restatement Message", "memx.equities.memo.sbe.v1.9.executionreportrestatementmessage", ftypes.STRING)
memx_equities_memo_sbe_v1_9.fields.execution_report_trade_break_message = ProtoField.new("Execution Report Trade Break Message", "memx.equities.memo.sbe.v1.9.executionreporttradebreakmessage", ftypes.STRING)
memx_equities_memo_sbe_v1_9.fields.execution_report_trade_correction_message = ProtoField.new("Execution Report Trade Correction Message", "memx.equities.memo.sbe.v1.9.executionreporttradecorrectionmessage", ftypes.STRING)
memx_equities_memo_sbe_v1_9.fields.execution_report_trade_message = ProtoField.new("Execution Report Trade Message", "memx.equities.memo.sbe.v1.9.executionreporttrademessage", ftypes.STRING)
memx_equities_memo_sbe_v1_9.fields.expire_time = ProtoField.new("Expire Time", "memx.equities.memo.sbe.v1.9.expiretime", ftypes.UINT64)
memx_equities_memo_sbe_v1_9.fields.extended_restatement_reason = ProtoField.new("Extended Restatement Reason", "memx.equities.memo.sbe.v1.9.extendedrestatementreason", ftypes.UINT8)
memx_equities_memo_sbe_v1_9.fields.external_routing_not_allowed = ProtoField.new("External Routing Not Allowed", "memx.equities.memo.sbe.v1.9.externalroutingnotallowed", ftypes.UINT16, {[1]="Yes",[0]="No"}, base.DEC, "0x0004")
memx_equities_memo_sbe_v1_9.fields.higher_than_price = ProtoField.new("Higher Than Price", "memx.equities.memo.sbe.v1.9.higherthanprice", ftypes.INT64)
memx_equities_memo_sbe_v1_9.fields.intermarket_sweep = ProtoField.new("Intermarket Sweep", "memx.equities.memo.sbe.v1.9.intermarketsweep", ftypes.UINT16, {[1]="Yes",[0]="No"}, base.DEC, "0x0002")
memx_equities_memo_sbe_v1_9.fields.last_liquidity_ind = ProtoField.new("Last Liquidity Ind", "memx.equities.memo.sbe.v1.9.lastliquidityind", ftypes.UINT8)
memx_equities_memo_sbe_v1_9.fields.last_mkt = ProtoField.new("Last Mkt", "memx.equities.memo.sbe.v1.9.lastmkt", ftypes.STRING)
memx_equities_memo_sbe_v1_9.fields.last_px = ProtoField.new("Last Px", "memx.equities.memo.sbe.v1.9.lastpx", ftypes.INT64)
memx_equities_memo_sbe_v1_9.fields.last_qty = ProtoField.new("Last Qty", "memx.equities.memo.sbe.v1.9.lastqty", ftypes.UINT32)
memx_equities_memo_sbe_v1_9.fields.last_shares = ProtoField.new("Last Shares", "memx.equities.memo.sbe.v1.9.lastshares", ftypes.UINT32)
memx_equities_memo_sbe_v1_9.fields.leaves_qty = ProtoField.new("Leaves Qty", "memx.equities.memo.sbe.v1.9.leavesqty", ftypes.UINT32)
memx_equities_memo_sbe_v1_9.fields.lnk_id = ProtoField.new("Lnk Id", "memx.equities.memo.sbe.v1.9.lnkid", ftypes.STRING)
memx_equities_memo_sbe_v1_9.fields.locate_reqd = ProtoField.new("Locate Reqd", "memx.equities.memo.sbe.v1.9.locatereqd", ftypes.STRING)
memx_equities_memo_sbe_v1_9.fields.login_accepted_message = ProtoField.new("Login Accepted Message", "memx.equities.memo.sbe.v1.9.loginacceptedmessage", ftypes.STRING)
memx_equities_memo_sbe_v1_9.fields.login_reject_code = ProtoField.new("Login Reject Code", "memx.equities.memo.sbe.v1.9.loginrejectcode", ftypes.STRING)
memx_equities_memo_sbe_v1_9.fields.login_rejected_message = ProtoField.new("Login Rejected Message", "memx.equities.memo.sbe.v1.9.loginrejectedmessage", ftypes.STRING)
memx_equities_memo_sbe_v1_9.fields.login_request_message = ProtoField.new("Login Request Message", "memx.equities.memo.sbe.v1.9.loginrequestmessage", ftypes.STRING)
memx_equities_memo_sbe_v1_9.fields.lower_than_price = ProtoField.new("Lower Than Price", "memx.equities.memo.sbe.v1.9.lowerthanprice", ftypes.INT64)
memx_equities_memo_sbe_v1_9.fields.mass_cancel_done_message = ProtoField.new("Mass Cancel Done Message", "memx.equities.memo.sbe.v1.9.masscanceldonemessage", ftypes.STRING)
memx_equities_memo_sbe_v1_9.fields.mass_cancel_reject_message = ProtoField.new("Mass Cancel Reject Message", "memx.equities.memo.sbe.v1.9.masscancelrejectmessage", ftypes.STRING)
memx_equities_memo_sbe_v1_9.fields.mass_cancel_request_message = ProtoField.new("Mass Cancel Request Message", "memx.equities.memo.sbe.v1.9.masscancelrequestmessage", ftypes.STRING)
memx_equities_memo_sbe_v1_9.fields.message_count = ProtoField.new("Message Count", "memx.equities.memo.sbe.v1.9.messagecount", ftypes.UINT64)
memx_equities_memo_sbe_v1_9.fields.message_length = ProtoField.new("Message Length", "memx.equities.memo.sbe.v1.9.messagelength", ftypes.UINT16)
memx_equities_memo_sbe_v1_9.fields.message_type = ProtoField.new("Message Type", "memx.equities.memo.sbe.v1.9.messagetype", ftypes.UINT8)
memx_equities_memo_sbe_v1_9.fields.min_qty = ProtoField.new("Min Qty", "memx.equities.memo.sbe.v1.9.minqty", ftypes.UINT32)
memx_equities_memo_sbe_v1_9.fields.mpid = ProtoField.new("Mpid", "memx.equities.memo.sbe.v1.9.mpid", ftypes.STRING)
memx_equities_memo_sbe_v1_9.fields.new_order_single_message = ProtoField.new("New Order Single Message", "memx.equities.memo.sbe.v1.9.newordersinglemessage", ftypes.STRING)
memx_equities_memo_sbe_v1_9.fields.next_sequence_number = ProtoField.new("Next Sequence Number", "memx.equities.memo.sbe.v1.9.nextsequencenumber", ftypes.UINT64)
memx_equities_memo_sbe_v1_9.fields.ord_status = ProtoField.new("Ord Status", "memx.equities.memo.sbe.v1.9.ordstatus", ftypes.UINT8)
memx_equities_memo_sbe_v1_9.fields.ord_type = ProtoField.new("Ord Type", "memx.equities.memo.sbe.v1.9.ordtype", ftypes.UINT8)
memx_equities_memo_sbe_v1_9.fields.order_cancel_reject_message = ProtoField.new("Order Cancel Reject Message", "memx.equities.memo.sbe.v1.9.ordercancelrejectmessage", ftypes.STRING)
memx_equities_memo_sbe_v1_9.fields.order_cancel_replace_request_message = ProtoField.new("Order Cancel Replace Request Message", "memx.equities.memo.sbe.v1.9.ordercancelreplacerequestmessage", ftypes.STRING)
memx_equities_memo_sbe_v1_9.fields.order_cancel_request_message = ProtoField.new("Order Cancel Request Message", "memx.equities.memo.sbe.v1.9.ordercancelrequestmessage", ftypes.STRING)
memx_equities_memo_sbe_v1_9.fields.order_capacity = ProtoField.new("Order Capacity", "memx.equities.memo.sbe.v1.9.ordercapacity", ftypes.UINT8)
memx_equities_memo_sbe_v1_9.fields.order_id = ProtoField.new("Order Id", "memx.equities.memo.sbe.v1.9.orderid", ftypes.UINT64)
memx_equities_memo_sbe_v1_9.fields.order_qty = ProtoField.new("Order Qty", "memx.equities.memo.sbe.v1.9.orderqty", ftypes.UINT32)
memx_equities_memo_sbe_v1_9.fields.orig_cl_ord_id = ProtoField.new("Orig Cl Ord Id", "memx.equities.memo.sbe.v1.9.origclordid", ftypes.STRING)
memx_equities_memo_sbe_v1_9.fields.packet = ProtoField.new("Packet", "memx.equities.memo.sbe.v1.9.packet", ftypes.STRING)
memx_equities_memo_sbe_v1_9.fields.participate_do_not_initiate = ProtoField.new("Participate Do Not Initiate", "memx.equities.memo.sbe.v1.9.participatedonotinitiate", ftypes.UINT16, {[1]="Yes",[0]="No"}, base.DEC, "0x0001")
memx_equities_memo_sbe_v1_9.fields.payload = ProtoField.new("Payload", "memx.equities.memo.sbe.v1.9.payload", ftypes.STRING)
memx_equities_memo_sbe_v1_9.fields.peg_offset_value = ProtoField.new("Peg Offset Value", "memx.equities.memo.sbe.v1.9.pegoffsetvalue", ftypes.INT64)
memx_equities_memo_sbe_v1_9.fields.peg_price_type = ProtoField.new("Peg Price Type", "memx.equities.memo.sbe.v1.9.pegpricetype", ftypes.UINT8)
memx_equities_memo_sbe_v1_9.fields.pending_mass_cancel_message = ProtoField.new("Pending Mass Cancel Message", "memx.equities.memo.sbe.v1.9.pendingmasscancelmessage", ftypes.STRING)
memx_equities_memo_sbe_v1_9.fields.pending_message_count = ProtoField.new("Pending Message Count", "memx.equities.memo.sbe.v1.9.pendingmessagecount", ftypes.UINT32)
memx_equities_memo_sbe_v1_9.fields.price = ProtoField.new("Price", "memx.equities.memo.sbe.v1.9.price", ftypes.INT64)
memx_equities_memo_sbe_v1_9.fields.reject_reason = ProtoField.new("Reject Reason", "memx.equities.memo.sbe.v1.9.rejectreason", ftypes.UINT8)
memx_equities_memo_sbe_v1_9.fields.replay_all_request_message = ProtoField.new("Replay All Request Message", "memx.equities.memo.sbe.v1.9.replayallrequestmessage", ftypes.STRING)
memx_equities_memo_sbe_v1_9.fields.replay_begin_message = ProtoField.new("Replay Begin Message", "memx.equities.memo.sbe.v1.9.replaybeginmessage", ftypes.STRING)
memx_equities_memo_sbe_v1_9.fields.replay_complete_message = ProtoField.new("Replay Complete Message", "memx.equities.memo.sbe.v1.9.replaycompletemessage", ftypes.STRING)
memx_equities_memo_sbe_v1_9.fields.replay_reject_code = ProtoField.new("Replay Reject Code", "memx.equities.memo.sbe.v1.9.replayrejectcode", ftypes.STRING)
memx_equities_memo_sbe_v1_9.fields.replay_rejected_message = ProtoField.new("Replay Rejected Message", "memx.equities.memo.sbe.v1.9.replayrejectedmessage", ftypes.STRING)
memx_equities_memo_sbe_v1_9.fields.replay_request_message = ProtoField.new("Replay Request Message", "memx.equities.memo.sbe.v1.9.replayrequestmessage", ftypes.STRING)
memx_equities_memo_sbe_v1_9.fields.reprice_behavior = ProtoField.new("Reprice Behavior", "memx.equities.memo.sbe.v1.9.repricebehavior", ftypes.UINT8)
memx_equities_memo_sbe_v1_9.fields.reprice_frequency = ProtoField.new("Reprice Frequency", "memx.equities.memo.sbe.v1.9.repricefrequency", ftypes.UINT8)
memx_equities_memo_sbe_v1_9.fields.reserve_replenish_timing = ProtoField.new("Reserve Replenish Timing", "memx.equities.memo.sbe.v1.9.reservereplenishtiming", ftypes.UINT8)
memx_equities_memo_sbe_v1_9.fields.reserved_13 = ProtoField.new("Reserved 13", "memx.equities.memo.sbe.v1.9.reserved13", ftypes.UINT16, nil, base.DEC, "0xFFF8")
memx_equities_memo_sbe_v1_9.fields.risk_group_id = ProtoField.new("Risk Group Id", "memx.equities.memo.sbe.v1.9.riskgroupid", ftypes.UINT16)
memx_equities_memo_sbe_v1_9.fields.sbe_header = ProtoField.new("Sbe Header", "memx.equities.memo.sbe.v1.9.sbeheader", ftypes.STRING)
memx_equities_memo_sbe_v1_9.fields.sbe_message = ProtoField.new("Sbe Message", "memx.equities.memo.sbe.v1.9.sbemessage", ftypes.STRING)
memx_equities_memo_sbe_v1_9.fields.schema_id = ProtoField.new("Schema Id", "memx.equities.memo.sbe.v1.9.schemaid", ftypes.UINT8)
memx_equities_memo_sbe_v1_9.fields.self_trade_prevention = ProtoField.new("Self Trade Prevention", "memx.equities.memo.sbe.v1.9.selftradeprevention", ftypes.UINT8)
memx_equities_memo_sbe_v1_9.fields.sending_time = ProtoField.new("Sending Time", "memx.equities.memo.sbe.v1.9.sendingtime", ftypes.UINT64)
memx_equities_memo_sbe_v1_9.fields.sequenced_message = ProtoField.new("Sequenced Message", "memx.equities.memo.sbe.v1.9.sequencedmessage", ftypes.STRING)
memx_equities_memo_sbe_v1_9.fields.session_id = ProtoField.new("Session Id", "memx.equities.memo.sbe.v1.9.sessionid", ftypes.UINT64)
memx_equities_memo_sbe_v1_9.fields.side = ProtoField.new("Side", "memx.equities.memo.sbe.v1.9.side", ftypes.UINT8)
memx_equities_memo_sbe_v1_9.fields.start_of_session_message = ProtoField.new("Start Of Session Message", "memx.equities.memo.sbe.v1.9.startofsessionmessage", ftypes.STRING)
memx_equities_memo_sbe_v1_9.fields.stp_group_id = ProtoField.new("Stp Group Id", "memx.equities.memo.sbe.v1.9.stpgroupid", ftypes.UINT16)
memx_equities_memo_sbe_v1_9.fields.stream_begin_message = ProtoField.new("Stream Begin Message", "memx.equities.memo.sbe.v1.9.streambeginmessage", ftypes.STRING)
memx_equities_memo_sbe_v1_9.fields.stream_complete_message = ProtoField.new("Stream Complete Message", "memx.equities.memo.sbe.v1.9.streamcompletemessage", ftypes.STRING)
memx_equities_memo_sbe_v1_9.fields.stream_reject_code = ProtoField.new("Stream Reject Code", "memx.equities.memo.sbe.v1.9.streamrejectcode", ftypes.STRING)
memx_equities_memo_sbe_v1_9.fields.stream_rejected_message = ProtoField.new("Stream Rejected Message", "memx.equities.memo.sbe.v1.9.streamrejectedmessage", ftypes.STRING)
memx_equities_memo_sbe_v1_9.fields.stream_request_message = ProtoField.new("Stream Request Message", "memx.equities.memo.sbe.v1.9.streamrequestmessage", ftypes.STRING)
memx_equities_memo_sbe_v1_9.fields.supported_request_mode = ProtoField.new("Supported Request Mode", "memx.equities.memo.sbe.v1.9.supportedrequestmode", ftypes.STRING)
memx_equities_memo_sbe_v1_9.fields.symbol_execution_report_new_symbol = ProtoField.new("Symbol Execution Report New Symbol", "memx.equities.memo.sbe.v1.9.symbolexecutionreportnewsymbol", ftypes.STRING)
memx_equities_memo_sbe_v1_9.fields.symbol_execution_report_pending_cancel_symbol = ProtoField.new("Symbol Execution Report Pending Cancel Symbol", "memx.equities.memo.sbe.v1.9.symbolexecutionreportpendingcancelsymbol", ftypes.STRING)
memx_equities_memo_sbe_v1_9.fields.symbol_execution_report_pending_new_symbol = ProtoField.new("Symbol Execution Report Pending New Symbol", "memx.equities.memo.sbe.v1.9.symbolexecutionreportpendingnewsymbol", ftypes.STRING)
memx_equities_memo_sbe_v1_9.fields.symbol_execution_report_pending_replace_symbol = ProtoField.new("Symbol Execution Report Pending Replace Symbol", "memx.equities.memo.sbe.v1.9.symbolexecutionreportpendingreplacesymbol", ftypes.STRING)
memx_equities_memo_sbe_v1_9.fields.symbol_execution_report_rejected_symbol = ProtoField.new("Symbol Execution Report Rejected Symbol", "memx.equities.memo.sbe.v1.9.symbolexecutionreportrejectedsymbol", ftypes.STRING)
memx_equities_memo_sbe_v1_9.fields.symbol_execution_report_replaced_symbol = ProtoField.new("Symbol Execution Report Replaced Symbol", "memx.equities.memo.sbe.v1.9.symbolexecutionreportreplacedsymbol", ftypes.STRING)
memx_equities_memo_sbe_v1_9.fields.symbol_mass_cancel_reject_symbol = ProtoField.new("Symbol Mass Cancel Reject Symbol", "memx.equities.memo.sbe.v1.9.symbolmasscancelrejectsymbol", ftypes.STRING)
memx_equities_memo_sbe_v1_9.fields.symbol_mass_cancel_request_symbol = ProtoField.new("Symbol Mass Cancel Request Symbol", "memx.equities.memo.sbe.v1.9.symbolmasscancelrequestsymbol", ftypes.STRING)
memx_equities_memo_sbe_v1_9.fields.symbol_new_order_single_symbol = ProtoField.new("Symbol New Order Single Symbol", "memx.equities.memo.sbe.v1.9.symbolnewordersinglesymbol", ftypes.STRING)
memx_equities_memo_sbe_v1_9.fields.symbol_order_cancel_replace_request_symbol = ProtoField.new("Symbol Order Cancel Replace Request Symbol", "memx.equities.memo.sbe.v1.9.symbolordercancelreplacerequestsymbol", ftypes.STRING)
memx_equities_memo_sbe_v1_9.fields.symbol_order_cancel_request_symbol = ProtoField.new("Symbol Order Cancel Request Symbol", "memx.equities.memo.sbe.v1.9.symbolordercancelrequestsymbol", ftypes.STRING)
memx_equities_memo_sbe_v1_9.fields.symbol_pending_mass_cancel_symbol = ProtoField.new("Symbol Pending Mass Cancel Symbol", "memx.equities.memo.sbe.v1.9.symbolpendingmasscancelsymbol", ftypes.STRING)
memx_equities_memo_sbe_v1_9.fields.symbol_sfx = ProtoField.new("Symbol Sfx", "memx.equities.memo.sbe.v1.9.symbolsfx", ftypes.STRING)
memx_equities_memo_sbe_v1_9.fields.template_id = ProtoField.new("Template Id", "memx.equities.memo.sbe.v1.9.templateid", ftypes.UINT8)
memx_equities_memo_sbe_v1_9.fields.time_in_force = ProtoField.new("Time In Force", "memx.equities.memo.sbe.v1.9.timeinforce", ftypes.UINT8)
memx_equities_memo_sbe_v1_9.fields.token = ProtoField.new("Token", "memx.equities.memo.sbe.v1.9.token", ftypes.STRING)
memx_equities_memo_sbe_v1_9.fields.token_type = ProtoField.new("Token Type", "memx.equities.memo.sbe.v1.9.tokentype", ftypes.STRING)
memx_equities_memo_sbe_v1_9.fields.total_sequence_count = ProtoField.new("Total Sequence Count", "memx.equities.memo.sbe.v1.9.totalsequencecount", ftypes.UINT64)
memx_equities_memo_sbe_v1_9.fields.transact_time = ProtoField.new("Transact Time", "memx.equities.memo.sbe.v1.9.transacttime", ftypes.UINT64)
memx_equities_memo_sbe_v1_9.fields.trd_match_id = ProtoField.new("Trd Match Id", "memx.equities.memo.sbe.v1.9.trdmatchid", ftypes.UINT64)
memx_equities_memo_sbe_v1_9.fields.trd_matching_id = ProtoField.new("Trd Matching Id", "memx.equities.memo.sbe.v1.9.trdmatchingid", ftypes.UINT64)
memx_equities_memo_sbe_v1_9.fields.unsequenced_message = ProtoField.new("Unsequenced Message", "memx.equities.memo.sbe.v1.9.unsequencedmessage", ftypes.STRING)
memx_equities_memo_sbe_v1_9.fields.version = ProtoField.new("Version", "memx.equities.memo.sbe.v1.9.version", ftypes.UINT16)

-----------------------------------------------------------------------
-- Declare Dissection Options
-----------------------------------------------------------------------

-- Memx Equities Memo Sbe 1.9 Element Dissection Options
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

-- Register Memx Equities Memo Sbe 1.9 Show Options
memx_equities_memo_sbe_v1_9.prefs.show_common_header = Pref.bool("Show Common Header", show.common_header, "Parse and add Common Header to protocol tree")
memx_equities_memo_sbe_v1_9.prefs.show_exec_inst = Pref.bool("Show Exec Inst", show.exec_inst, "Parse and add Exec Inst to protocol tree")
memx_equities_memo_sbe_v1_9.prefs.show_execution_report_canceled_message = Pref.bool("Show Execution Report Canceled Message", show.execution_report_canceled_message, "Parse and add Execution Report Canceled Message to protocol tree")
memx_equities_memo_sbe_v1_9.prefs.show_execution_report_new_message = Pref.bool("Show Execution Report New Message", show.execution_report_new_message, "Parse and add Execution Report New Message to protocol tree")
memx_equities_memo_sbe_v1_9.prefs.show_execution_report_pending_cancel_message = Pref.bool("Show Execution Report Pending Cancel Message", show.execution_report_pending_cancel_message, "Parse and add Execution Report Pending Cancel Message to protocol tree")
memx_equities_memo_sbe_v1_9.prefs.show_execution_report_pending_new_message = Pref.bool("Show Execution Report Pending New Message", show.execution_report_pending_new_message, "Parse and add Execution Report Pending New Message to protocol tree")
memx_equities_memo_sbe_v1_9.prefs.show_execution_report_pending_replace_message = Pref.bool("Show Execution Report Pending Replace Message", show.execution_report_pending_replace_message, "Parse and add Execution Report Pending Replace Message to protocol tree")
memx_equities_memo_sbe_v1_9.prefs.show_execution_report_rejected_message = Pref.bool("Show Execution Report Rejected Message", show.execution_report_rejected_message, "Parse and add Execution Report Rejected Message to protocol tree")
memx_equities_memo_sbe_v1_9.prefs.show_execution_report_replaced_message = Pref.bool("Show Execution Report Replaced Message", show.execution_report_replaced_message, "Parse and add Execution Report Replaced Message to protocol tree")
memx_equities_memo_sbe_v1_9.prefs.show_execution_report_restatement_message = Pref.bool("Show Execution Report Restatement Message", show.execution_report_restatement_message, "Parse and add Execution Report Restatement Message to protocol tree")
memx_equities_memo_sbe_v1_9.prefs.show_execution_report_trade_break_message = Pref.bool("Show Execution Report Trade Break Message", show.execution_report_trade_break_message, "Parse and add Execution Report Trade Break Message to protocol tree")
memx_equities_memo_sbe_v1_9.prefs.show_execution_report_trade_correction_message = Pref.bool("Show Execution Report Trade Correction Message", show.execution_report_trade_correction_message, "Parse and add Execution Report Trade Correction Message to protocol tree")
memx_equities_memo_sbe_v1_9.prefs.show_execution_report_trade_message = Pref.bool("Show Execution Report Trade Message", show.execution_report_trade_message, "Parse and add Execution Report Trade Message to protocol tree")
memx_equities_memo_sbe_v1_9.prefs.show_login_accepted_message = Pref.bool("Show Login Accepted Message", show.login_accepted_message, "Parse and add Login Accepted Message to protocol tree")
memx_equities_memo_sbe_v1_9.prefs.show_login_rejected_message = Pref.bool("Show Login Rejected Message", show.login_rejected_message, "Parse and add Login Rejected Message to protocol tree")
memx_equities_memo_sbe_v1_9.prefs.show_login_request_message = Pref.bool("Show Login Request Message", show.login_request_message, "Parse and add Login Request Message to protocol tree")
memx_equities_memo_sbe_v1_9.prefs.show_mass_cancel_done_message = Pref.bool("Show Mass Cancel Done Message", show.mass_cancel_done_message, "Parse and add Mass Cancel Done Message to protocol tree")
memx_equities_memo_sbe_v1_9.prefs.show_mass_cancel_reject_message = Pref.bool("Show Mass Cancel Reject Message", show.mass_cancel_reject_message, "Parse and add Mass Cancel Reject Message to protocol tree")
memx_equities_memo_sbe_v1_9.prefs.show_mass_cancel_request_message = Pref.bool("Show Mass Cancel Request Message", show.mass_cancel_request_message, "Parse and add Mass Cancel Request Message to protocol tree")
memx_equities_memo_sbe_v1_9.prefs.show_new_order_single_message = Pref.bool("Show New Order Single Message", show.new_order_single_message, "Parse and add New Order Single Message to protocol tree")
memx_equities_memo_sbe_v1_9.prefs.show_order_cancel_reject_message = Pref.bool("Show Order Cancel Reject Message", show.order_cancel_reject_message, "Parse and add Order Cancel Reject Message to protocol tree")
memx_equities_memo_sbe_v1_9.prefs.show_order_cancel_replace_request_message = Pref.bool("Show Order Cancel Replace Request Message", show.order_cancel_replace_request_message, "Parse and add Order Cancel Replace Request Message to protocol tree")
memx_equities_memo_sbe_v1_9.prefs.show_order_cancel_request_message = Pref.bool("Show Order Cancel Request Message", show.order_cancel_request_message, "Parse and add Order Cancel Request Message to protocol tree")
memx_equities_memo_sbe_v1_9.prefs.show_packet = Pref.bool("Show Packet", show.packet, "Parse and add Packet to protocol tree")
memx_equities_memo_sbe_v1_9.prefs.show_pending_mass_cancel_message = Pref.bool("Show Pending Mass Cancel Message", show.pending_mass_cancel_message, "Parse and add Pending Mass Cancel Message to protocol tree")
memx_equities_memo_sbe_v1_9.prefs.show_replay_all_request_message = Pref.bool("Show Replay All Request Message", show.replay_all_request_message, "Parse and add Replay All Request Message to protocol tree")
memx_equities_memo_sbe_v1_9.prefs.show_replay_begin_message = Pref.bool("Show Replay Begin Message", show.replay_begin_message, "Parse and add Replay Begin Message to protocol tree")
memx_equities_memo_sbe_v1_9.prefs.show_replay_complete_message = Pref.bool("Show Replay Complete Message", show.replay_complete_message, "Parse and add Replay Complete Message to protocol tree")
memx_equities_memo_sbe_v1_9.prefs.show_replay_rejected_message = Pref.bool("Show Replay Rejected Message", show.replay_rejected_message, "Parse and add Replay Rejected Message to protocol tree")
memx_equities_memo_sbe_v1_9.prefs.show_replay_request_message = Pref.bool("Show Replay Request Message", show.replay_request_message, "Parse and add Replay Request Message to protocol tree")
memx_equities_memo_sbe_v1_9.prefs.show_sbe_header = Pref.bool("Show Sbe Header", show.sbe_header, "Parse and add Sbe Header to protocol tree")
memx_equities_memo_sbe_v1_9.prefs.show_sbe_message = Pref.bool("Show Sbe Message", show.sbe_message, "Parse and add Sbe Message to protocol tree")
memx_equities_memo_sbe_v1_9.prefs.show_sequenced_message = Pref.bool("Show Sequenced Message", show.sequenced_message, "Parse and add Sequenced Message to protocol tree")
memx_equities_memo_sbe_v1_9.prefs.show_start_of_session_message = Pref.bool("Show Start Of Session Message", show.start_of_session_message, "Parse and add Start Of Session Message to protocol tree")
memx_equities_memo_sbe_v1_9.prefs.show_stream_begin_message = Pref.bool("Show Stream Begin Message", show.stream_begin_message, "Parse and add Stream Begin Message to protocol tree")
memx_equities_memo_sbe_v1_9.prefs.show_stream_complete_message = Pref.bool("Show Stream Complete Message", show.stream_complete_message, "Parse and add Stream Complete Message to protocol tree")
memx_equities_memo_sbe_v1_9.prefs.show_stream_rejected_message = Pref.bool("Show Stream Rejected Message", show.stream_rejected_message, "Parse and add Stream Rejected Message to protocol tree")
memx_equities_memo_sbe_v1_9.prefs.show_stream_request_message = Pref.bool("Show Stream Request Message", show.stream_request_message, "Parse and add Stream Request Message to protocol tree")
memx_equities_memo_sbe_v1_9.prefs.show_unsequenced_message = Pref.bool("Show Unsequenced Message", show.unsequenced_message, "Parse and add Unsequenced Message to protocol tree")
memx_equities_memo_sbe_v1_9.prefs.show_data = Pref.bool("Show Data", show.data, "Parse and add Data to protocol tree")
memx_equities_memo_sbe_v1_9.prefs.show_payload = Pref.bool("Show Payload", show.payload, "Parse and add Payload to protocol tree")

-- Handle changed preferences
function memx_equities_memo_sbe_v1_9.prefs_changed()
  local changed = false

  -- Check if show options have changed
  if show.common_header ~= memx_equities_memo_sbe_v1_9.prefs.show_common_header then
    show.common_header = memx_equities_memo_sbe_v1_9.prefs.show_common_header
    changed = true
  end
  if show.exec_inst ~= memx_equities_memo_sbe_v1_9.prefs.show_exec_inst then
    show.exec_inst = memx_equities_memo_sbe_v1_9.prefs.show_exec_inst
    changed = true
  end
  if show.execution_report_canceled_message ~= memx_equities_memo_sbe_v1_9.prefs.show_execution_report_canceled_message then
    show.execution_report_canceled_message = memx_equities_memo_sbe_v1_9.prefs.show_execution_report_canceled_message
    changed = true
  end
  if show.execution_report_new_message ~= memx_equities_memo_sbe_v1_9.prefs.show_execution_report_new_message then
    show.execution_report_new_message = memx_equities_memo_sbe_v1_9.prefs.show_execution_report_new_message
    changed = true
  end
  if show.execution_report_pending_cancel_message ~= memx_equities_memo_sbe_v1_9.prefs.show_execution_report_pending_cancel_message then
    show.execution_report_pending_cancel_message = memx_equities_memo_sbe_v1_9.prefs.show_execution_report_pending_cancel_message
    changed = true
  end
  if show.execution_report_pending_new_message ~= memx_equities_memo_sbe_v1_9.prefs.show_execution_report_pending_new_message then
    show.execution_report_pending_new_message = memx_equities_memo_sbe_v1_9.prefs.show_execution_report_pending_new_message
    changed = true
  end
  if show.execution_report_pending_replace_message ~= memx_equities_memo_sbe_v1_9.prefs.show_execution_report_pending_replace_message then
    show.execution_report_pending_replace_message = memx_equities_memo_sbe_v1_9.prefs.show_execution_report_pending_replace_message
    changed = true
  end
  if show.execution_report_rejected_message ~= memx_equities_memo_sbe_v1_9.prefs.show_execution_report_rejected_message then
    show.execution_report_rejected_message = memx_equities_memo_sbe_v1_9.prefs.show_execution_report_rejected_message
    changed = true
  end
  if show.execution_report_replaced_message ~= memx_equities_memo_sbe_v1_9.prefs.show_execution_report_replaced_message then
    show.execution_report_replaced_message = memx_equities_memo_sbe_v1_9.prefs.show_execution_report_replaced_message
    changed = true
  end
  if show.execution_report_restatement_message ~= memx_equities_memo_sbe_v1_9.prefs.show_execution_report_restatement_message then
    show.execution_report_restatement_message = memx_equities_memo_sbe_v1_9.prefs.show_execution_report_restatement_message
    changed = true
  end
  if show.execution_report_trade_break_message ~= memx_equities_memo_sbe_v1_9.prefs.show_execution_report_trade_break_message then
    show.execution_report_trade_break_message = memx_equities_memo_sbe_v1_9.prefs.show_execution_report_trade_break_message
    changed = true
  end
  if show.execution_report_trade_correction_message ~= memx_equities_memo_sbe_v1_9.prefs.show_execution_report_trade_correction_message then
    show.execution_report_trade_correction_message = memx_equities_memo_sbe_v1_9.prefs.show_execution_report_trade_correction_message
    changed = true
  end
  if show.execution_report_trade_message ~= memx_equities_memo_sbe_v1_9.prefs.show_execution_report_trade_message then
    show.execution_report_trade_message = memx_equities_memo_sbe_v1_9.prefs.show_execution_report_trade_message
    changed = true
  end
  if show.login_accepted_message ~= memx_equities_memo_sbe_v1_9.prefs.show_login_accepted_message then
    show.login_accepted_message = memx_equities_memo_sbe_v1_9.prefs.show_login_accepted_message
    changed = true
  end
  if show.login_rejected_message ~= memx_equities_memo_sbe_v1_9.prefs.show_login_rejected_message then
    show.login_rejected_message = memx_equities_memo_sbe_v1_9.prefs.show_login_rejected_message
    changed = true
  end
  if show.login_request_message ~= memx_equities_memo_sbe_v1_9.prefs.show_login_request_message then
    show.login_request_message = memx_equities_memo_sbe_v1_9.prefs.show_login_request_message
    changed = true
  end
  if show.mass_cancel_done_message ~= memx_equities_memo_sbe_v1_9.prefs.show_mass_cancel_done_message then
    show.mass_cancel_done_message = memx_equities_memo_sbe_v1_9.prefs.show_mass_cancel_done_message
    changed = true
  end
  if show.mass_cancel_reject_message ~= memx_equities_memo_sbe_v1_9.prefs.show_mass_cancel_reject_message then
    show.mass_cancel_reject_message = memx_equities_memo_sbe_v1_9.prefs.show_mass_cancel_reject_message
    changed = true
  end
  if show.mass_cancel_request_message ~= memx_equities_memo_sbe_v1_9.prefs.show_mass_cancel_request_message then
    show.mass_cancel_request_message = memx_equities_memo_sbe_v1_9.prefs.show_mass_cancel_request_message
    changed = true
  end
  if show.new_order_single_message ~= memx_equities_memo_sbe_v1_9.prefs.show_new_order_single_message then
    show.new_order_single_message = memx_equities_memo_sbe_v1_9.prefs.show_new_order_single_message
    changed = true
  end
  if show.order_cancel_reject_message ~= memx_equities_memo_sbe_v1_9.prefs.show_order_cancel_reject_message then
    show.order_cancel_reject_message = memx_equities_memo_sbe_v1_9.prefs.show_order_cancel_reject_message
    changed = true
  end
  if show.order_cancel_replace_request_message ~= memx_equities_memo_sbe_v1_9.prefs.show_order_cancel_replace_request_message then
    show.order_cancel_replace_request_message = memx_equities_memo_sbe_v1_9.prefs.show_order_cancel_replace_request_message
    changed = true
  end
  if show.order_cancel_request_message ~= memx_equities_memo_sbe_v1_9.prefs.show_order_cancel_request_message then
    show.order_cancel_request_message = memx_equities_memo_sbe_v1_9.prefs.show_order_cancel_request_message
    changed = true
  end
  if show.packet ~= memx_equities_memo_sbe_v1_9.prefs.show_packet then
    show.packet = memx_equities_memo_sbe_v1_9.prefs.show_packet
    changed = true
  end
  if show.pending_mass_cancel_message ~= memx_equities_memo_sbe_v1_9.prefs.show_pending_mass_cancel_message then
    show.pending_mass_cancel_message = memx_equities_memo_sbe_v1_9.prefs.show_pending_mass_cancel_message
    changed = true
  end
  if show.replay_all_request_message ~= memx_equities_memo_sbe_v1_9.prefs.show_replay_all_request_message then
    show.replay_all_request_message = memx_equities_memo_sbe_v1_9.prefs.show_replay_all_request_message
    changed = true
  end
  if show.replay_begin_message ~= memx_equities_memo_sbe_v1_9.prefs.show_replay_begin_message then
    show.replay_begin_message = memx_equities_memo_sbe_v1_9.prefs.show_replay_begin_message
    changed = true
  end
  if show.replay_complete_message ~= memx_equities_memo_sbe_v1_9.prefs.show_replay_complete_message then
    show.replay_complete_message = memx_equities_memo_sbe_v1_9.prefs.show_replay_complete_message
    changed = true
  end
  if show.replay_rejected_message ~= memx_equities_memo_sbe_v1_9.prefs.show_replay_rejected_message then
    show.replay_rejected_message = memx_equities_memo_sbe_v1_9.prefs.show_replay_rejected_message
    changed = true
  end
  if show.replay_request_message ~= memx_equities_memo_sbe_v1_9.prefs.show_replay_request_message then
    show.replay_request_message = memx_equities_memo_sbe_v1_9.prefs.show_replay_request_message
    changed = true
  end
  if show.sbe_header ~= memx_equities_memo_sbe_v1_9.prefs.show_sbe_header then
    show.sbe_header = memx_equities_memo_sbe_v1_9.prefs.show_sbe_header
    changed = true
  end
  if show.sbe_message ~= memx_equities_memo_sbe_v1_9.prefs.show_sbe_message then
    show.sbe_message = memx_equities_memo_sbe_v1_9.prefs.show_sbe_message
    changed = true
  end
  if show.sequenced_message ~= memx_equities_memo_sbe_v1_9.prefs.show_sequenced_message then
    show.sequenced_message = memx_equities_memo_sbe_v1_9.prefs.show_sequenced_message
    changed = true
  end
  if show.start_of_session_message ~= memx_equities_memo_sbe_v1_9.prefs.show_start_of_session_message then
    show.start_of_session_message = memx_equities_memo_sbe_v1_9.prefs.show_start_of_session_message
    changed = true
  end
  if show.stream_begin_message ~= memx_equities_memo_sbe_v1_9.prefs.show_stream_begin_message then
    show.stream_begin_message = memx_equities_memo_sbe_v1_9.prefs.show_stream_begin_message
    changed = true
  end
  if show.stream_complete_message ~= memx_equities_memo_sbe_v1_9.prefs.show_stream_complete_message then
    show.stream_complete_message = memx_equities_memo_sbe_v1_9.prefs.show_stream_complete_message
    changed = true
  end
  if show.stream_rejected_message ~= memx_equities_memo_sbe_v1_9.prefs.show_stream_rejected_message then
    show.stream_rejected_message = memx_equities_memo_sbe_v1_9.prefs.show_stream_rejected_message
    changed = true
  end
  if show.stream_request_message ~= memx_equities_memo_sbe_v1_9.prefs.show_stream_request_message then
    show.stream_request_message = memx_equities_memo_sbe_v1_9.prefs.show_stream_request_message
    changed = true
  end
  if show.unsequenced_message ~= memx_equities_memo_sbe_v1_9.prefs.show_unsequenced_message then
    show.unsequenced_message = memx_equities_memo_sbe_v1_9.prefs.show_unsequenced_message
    changed = true
  end
  if show.data ~= memx_equities_memo_sbe_v1_9.prefs.show_data then
    show.data = memx_equities_memo_sbe_v1_9.prefs.show_data
    changed = true
  end
  if show.payload ~= memx_equities_memo_sbe_v1_9.prefs.show_payload then
    show.payload = memx_equities_memo_sbe_v1_9.prefs.show_payload
    changed = true
  end

  -- Reload on changed preference
  if changed then
    reload()
  end
end


-----------------------------------------------------------------------
-- Dissect Memx Equities Memo Sbe 1.9
-----------------------------------------------------------------------

-- Size: Reject Reason
size_of.reject_reason = 1

-- Display: Reject Reason
display.reject_reason = function(value)
  if value == 0 then
    return "Reject Reason: Other (0)"
  end
  if value == 1 then
    return "Reject Reason: Missing Symbol (1)"
  end
  if value == 2 then
    return "Reject Reason: Missing Locate (2)"
  end
  if value == 3 then
    return "Reject Reason: Missing Cl Ord Id (3)"
  end
  if value == 4 then
    return "Reject Reason: Missing Side (4)"
  end
  if value == 5 then
    return "Reject Reason: Missing Order Quantity (5)"
  end
  if value == 6 then
    return "Reject Reason: Missing Order Type (6)"
  end
  if value == 7 then
    return "Reject Reason: Missing Time In Force (7)"
  end
  if value == 8 then
    return "Reject Reason: Missing Order Capacity (8)"
  end
  if value == 9 then
    return "Reject Reason: Missing Exec Inst (9)"
  end
  if value == 10 then
    return "Reject Reason: Missing Limit Price (10)"
  end
  if value == 11 then
    return "Reject Reason: Missing Max Floor (11)"
  end
  if value == 12 then
    return "Reject Reason: Missing Reserve Replenish Amount Type (12)"
  end
  if value == 13 then
    return "Reject Reason: Missing Reserve Replenish Time Type (13)"
  end
  if value == 14 then
    return "Reject Reason: Missing Random Replenish Value (14)"
  end
  if value == 15 then
    return "Reject Reason: Missing Reprice Frequency Type (15)"
  end
  if value == 16 then
    return "Reject Reason: Missing Reprice Behavior Type (16)"
  end
  if value == 17 then
    return "Reject Reason: Missing Customer Capacity Type (17)"
  end
  if value == 18 then
    return "Reject Reason: Missing Expire Time (18)"
  end
  if value == 19 then
    return "Reject Reason: Missing Peg Type (19)"
  end
  if value == 20 then
    return "Reject Reason: Invalid Modifier For Order Type (20)"
  end
  if value == 21 then
    return "Reject Reason: Invalid Modifiers Combination (21)"
  end
  if value == 22 then
    return "Reject Reason: Invalid Trading Session For Order Type (22)"
  end
  if value == 23 then
    return "Reject Reason: Invalid Time In Force For Order Type (23)"
  end
  if value == 24 then
    return "Reject Reason: Invalid Min Quantity (24)"
  end
  if value == 25 then
    return "Reject Reason: Invalid Order Quantity (25)"
  end
  if value == 26 then
    return "Reject Reason: Invalid Side (26)"
  end
  if value == 27 then
    return "Reject Reason: Invalid Order Type (27)"
  end
  if value == 28 then
    return "Reject Reason: Invalid Time In Force (28)"
  end
  if value == 29 then
    return "Reject Reason: Invalid Order Capacity (29)"
  end
  if value == 30 then
    return "Reject Reason: Invalid Customer Capacity (30)"
  end
  if value == 31 then
    return "Reject Reason: Invalid Symbol (31)"
  end
  if value == 32 then
    return "Reject Reason: Invalid Expire Time (32)"
  end
  if value == 33 then
    return "Reject Reason: Invalid Limit Price (33)"
  end
  if value == 34 then
    return "Reject Reason: Invalid Limit Price Increment (34)"
  end
  if value == 35 then
    return "Reject Reason: Invalid Max Floor (35)"
  end
  if value == 36 then
    return "Reject Reason: Invalid Random Replenish Value (36)"
  end
  if value == 37 then
    return "Reject Reason: Invalid Random Replenish Value For Reserve Type (37)"
  end
  if value == 38 then
    return "Reject Reason: Invalid Reserve Replenish Amount Type (38)"
  end
  if value == 39 then
    return "Reject Reason: Invalid Reserve Replenish Time Type (39)"
  end
  if value == 40 then
    return "Reject Reason: Invalid Reprice Frequency Type (40)"
  end
  if value == 41 then
    return "Reject Reason: Invalid Reprice Behavior Type (41)"
  end
  if value == 42 then
    return "Reject Reason: Invalid Reprice Behavior For Reprice Frequency (42)"
  end
  if value == 43 then
    return "Reject Reason: Invalid Mpid Value (43)"
  end
  if value == 44 then
    return "Reject Reason: Invalid Peg Type (44)"
  end
  if value == 45 then
    return "Reject Reason: Invalid Modifier For Peg Type (45)"
  end
  if value == 46 then
    return "Reject Reason: Invalid Locate (46)"
  end
  if value == 47 then
    return "Reject Reason: Symbol Halted Or Paused (47)"
  end
  if value == 48 then
    return "Reject Reason: Exchange Closed (48)"
  end
  if value == 49 then
    return "Reject Reason: Duplicate Cl Ord Id (49)"
  end
  if value == 50 then
    return "Reject Reason: Order Size Exceeds Limit (50)"
  end
  if value == 51 then
    return "Reject Reason: Order Notional Exceeds Limit (51)"
  end
  if value == 52 then
    return "Reject Reason: Block Iso Risk Rule Violated (52)"
  end
  if value == 53 then
    return "Reject Reason: Block Session Risk Rule Violated (53)"
  end
  if value == 54 then
    return "Reject Reason: Block Sell Short Risk Rule Violated (54)"
  end
  if value == 55 then
    return "Reject Reason: Block Non Test Symbols Risk Rule Violated (55)"
  end
  if value == 56 then
    return "Reject Reason: Max Shares Per Order Risk Rule Breach (56)"
  end
  if value == 57 then
    return "Reject Reason: Max Notional Value Per Order Risk Rule Breach (57)"
  end
  if value == 58 then
    return "Reject Reason: Price Percent Collar Risk Rule Violated (58)"
  end
  if value == 59 then
    return "Reject Reason: Price Value Collar Risk Rule Violated (59)"
  end
  if value == 60 then
    return "Reject Reason: Max Adv Percent Per Order Risk Rule Breach (60)"
  end
  if value == 61 then
    return "Reject Reason: Daily Gross Notional Exposure Risk Rule Breach (61)"
  end
  if value == 62 then
    return "Reject Reason: Daily Net Notional Exposure Risk Rule Breach (62)"
  end
  if value == 63 then
    return "Reject Reason: Max Num Duplicate Orders Risk Rule Breach (63)"
  end
  if value == 64 then
    return "Reject Reason: Max Order Rate Risk Rule Breach (64)"
  end
  if value == 65 then
    return "Reject Reason: Restricted Security Risk Rule Violated (65)"
  end
  if value == 66 then
    return "Reject Reason: Hard To Borrow Security Risk Rule Violated (66)"
  end
  if value == 67 then
    return "Reject Reason: Invalid Self Trade Prevention Configuration (67)"
  end
  if value == 68 then
    return "Reject Reason: Invalid Self Trade Prevention Type (68)"
  end
  if value == 69 then
    return "Reject Reason: Invalid Risk Group Id (69)"
  end
  if value == 70 then
    return "Reject Reason: Firm Disabled (70)"
  end
  if value == 71 then
    return "Reject Reason: Mpid Disabled (71)"
  end
  if value == 72 then
    return "Reject Reason: Account Disabled (72)"
  end
  if value == 73 then
    return "Reject Reason: No Nbbo Available (73)"
  end
  if value == 74 then
    return "Reject Reason: Cannot Trade Non Test Symbol (74)"
  end
  if value == 75 then
    return "Reject Reason: Missing Firm (75)"
  end
  if value == 76 then
    return "Reject Reason: Missing Account (76)"
  end
  if value == 77 then
    return "Reject Reason: Missing Mpid (77)"
  end
  if value == 78 then
    return "Reject Reason: Missing Risk Group (78)"
  end
  if value == 79 then
    return "Reject Reason: Daily Market Order Gross Notional Exposure Risk Rule Breach (79)"
  end
  if value == 80 then
    return "Reject Reason: Daily Market Order Net Notional Exposure Risk Rule Breach (80)"
  end
  if value == 81 then
    return "Reject Reason: Missing Disp Method Type (81)"
  end
  if value == 82 then
    return "Reject Reason: Missing Firm Risk Setting (82)"
  end
  if value == 83 then
    return "Reject Reason: Invalid Account Mpid To Firm (83)"
  end
  if value == 84 then
    return "Reject Reason: Invalid Peg Offset Value (84)"
  end
  if value == 85 then
    return "Reject Reason: Invalid Disp Method Type (85)"
  end
  if value == 86 then
    return "Reject Reason: Missing Cancel Group Id (86)"
  end
  if value == 87 then
    return "Reject Reason: Invalid Cancel Group Id (87)"
  end
  if value == 88 then
    return "Reject Reason: Missing Stp Group Id (88)"
  end
  if value == 89 then
    return "Reject Reason: Invalid Stp Group Id (89)"
  end
  if value == 90 then
    return "Reject Reason: Invalid Cl Ord Id (90)"
  end
  if value == 91 then
    return "Reject Reason: Invalid Lnk Id (91)"
  end
  if value == 255 then
    return "Reject Reason: Null Value (255)"
  end
  if value == 1 then
    return "Reject Reason: Unknown Product (1)"
  end
  if value == 2 then
    return "Reject Reason: Unknown Side (2)"
  end
  if value == 3 then
    return "Reject Reason: Unknown Group Id (3)"
  end
  if value == 4 then
    return "Reject Reason: Higher Price Lower Or Equal To Lower Price (4)"
  end
  if value == 5 then
    return "Reject Reason: Product Missing For Price Restriction (5)"
  end
  if value == 6 then
    return "Reject Reason: Duplicate Cl Ord Id (6)"
  end
  if value == 7 then
    return "Reject Reason: Malformed Request Missing Cl Ord Id Field (7)"
  end
  if value == 8 then
    return "Reject Reason: Invalid Cancel Group Id (8)"
  end
  if value == 9 then
    return "Reject Reason: Invalid Cl Ord Id (9)"
  end
  if value == 10 then
    return "Reject Reason: Invalid Lower Price (10)"
  end
  if value == 11 then
    return "Reject Reason: Invalid Higher Price (11)"
  end

  return "Reject Reason: Unknown("..value..")"
end

-- Dissect: Reject Reason
dissect.reject_reason = function(buffer, offset, packet, parent)
  local length = size_of.reject_reason
  local range = buffer(offset, length)
  local value = range:uint()
  local display = display.reject_reason(value, buffer, offset, packet, parent)

  parent:add(memx_equities_memo_sbe_v1_9.fields.reject_reason, range, value, display)

  return offset + length, value
end

-- Size: Cancel Group Id
size_of.cancel_group_id = 2

-- Display: Cancel Group Id
display.cancel_group_id = function(value)
  -- Check if field has value
  if value == 65535 then
    return "Cancel Group Id: No Value"
  end

  return "Cancel Group Id: "..value
end

-- Dissect: Cancel Group Id
dissect.cancel_group_id = function(buffer, offset, packet, parent)
  local length = size_of.cancel_group_id
  local range = buffer(offset, length)
  local value = range:uint()
  local display = display.cancel_group_id(value, buffer, offset, packet, parent)

  parent:add(memx_equities_memo_sbe_v1_9.fields.cancel_group_id, range, value, display)

  return offset + length, value
end

-- Size: Higher Than Price
size_of.higher_than_price = 8

-- Display: Higher Than Price
display.higher_than_price = function(value)
  -- Check if field has value
  if value == Int64(0x00000000, 0x80000000) then
    return "Higher Than Price: No Value"
  end

  return "Higher Than Price: "..value
end

-- Dissect: Higher Than Price
dissect.higher_than_price = function(buffer, offset, packet, parent)
  local length = size_of.higher_than_price
  local range = buffer(offset, length)
  local value = range:int64()
  local display = display.higher_than_price(value, buffer, offset, packet, parent)

  parent:add(memx_equities_memo_sbe_v1_9.fields.higher_than_price, range, value, display)

  return offset + length, value
end

-- Size: Lower Than Price
size_of.lower_than_price = 8

-- Display: Lower Than Price
display.lower_than_price = function(value)
  -- Check if field has value
  if value == Int64(0x00000000, 0x80000000) then
    return "Lower Than Price: No Value"
  end

  return "Lower Than Price: "..value
end

-- Dissect: Lower Than Price
dissect.lower_than_price = function(buffer, offset, packet, parent)
  local length = size_of.lower_than_price
  local range = buffer(offset, length)
  local value = range:int64()
  local display = display.lower_than_price(value, buffer, offset, packet, parent)

  parent:add(memx_equities_memo_sbe_v1_9.fields.lower_than_price, range, value, display)

  return offset + length, value
end

-- Size: Side
size_of.side = 1

-- Display: Side
display.side = function(value)
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
  if value == 255 then
    return "Side: No Value"
  end

  return "Side: Unknown("..value..")"
end

-- Dissect: Side
dissect.side = function(buffer, offset, packet, parent)
  local length = size_of.side
  local range = buffer(offset, length)
  local value = range:uint()
  local display = display.side(value, buffer, offset, packet, parent)

  parent:add(memx_equities_memo_sbe_v1_9.fields.side, range, value, display)

  return offset + length, value
end

-- Size: Symbol Sfx
size_of.symbol_sfx = 6

-- Display: Symbol Sfx
display.symbol_sfx = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Symbol Sfx: No Value"
  end

  return "Symbol Sfx: "..value
end

-- Dissect: Symbol Sfx
dissect.symbol_sfx = function(buffer, offset, packet, parent)
  local length = size_of.symbol_sfx
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

  local display = display.symbol_sfx(value, buffer, offset, packet, parent)

  parent:add(memx_equities_memo_sbe_v1_9.fields.symbol_sfx, range, value, display)

  return offset + length, value
end

-- Size: Symbol Mass Cancel Reject Symbol
size_of.symbol_mass_cancel_reject_symbol = 6

-- Display: Symbol Mass Cancel Reject Symbol
display.symbol_mass_cancel_reject_symbol = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Symbol Mass Cancel Reject Symbol: No Value"
  end

  return "Symbol Mass Cancel Reject Symbol: "..value
end

-- Dissect: Symbol Mass Cancel Reject Symbol
dissect.symbol_mass_cancel_reject_symbol = function(buffer, offset, packet, parent)
  local length = size_of.symbol_mass_cancel_reject_symbol
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

  local display = display.symbol_mass_cancel_reject_symbol(value, buffer, offset, packet, parent)

  parent:add(memx_equities_memo_sbe_v1_9.fields.symbol_mass_cancel_reject_symbol, range, value, display)

  return offset + length, value
end

-- Size: Cl Ord Id
size_of.cl_ord_id = 16

-- Display: Cl Ord Id
display.cl_ord_id = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Cl Ord Id: No Value"
  end

  return "Cl Ord Id: "..value
end

-- Dissect: Cl Ord Id
dissect.cl_ord_id = function(buffer, offset, packet, parent)
  local length = size_of.cl_ord_id
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

  local display = display.cl_ord_id(value, buffer, offset, packet, parent)

  parent:add(memx_equities_memo_sbe_v1_9.fields.cl_ord_id, range, value, display)

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

  parent:add(memx_equities_memo_sbe_v1_9.fields.sending_time, range, value, display)

  return offset + length, value
end

-- Calculate size of: Mass Cancel Reject Message
size_of.mass_cancel_reject_message = function(buffer, offset)
  local index = 0

  index = index + size_of.sending_time

  index = index + size_of.cl_ord_id

  index = index + size_of.symbol_mass_cancel_reject_symbol

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

  -- Symbol Mass Cancel Reject Symbol: 6 Byte Ascii String
  index, symbol_mass_cancel_reject_symbol = dissect.symbol_mass_cancel_reject_symbol(buffer, index, packet, parent)

  -- Symbol Sfx: 6 Byte Ascii String
  index, symbol_sfx = dissect.symbol_sfx(buffer, index, packet, parent)

  -- Side: 1 Byte Unsigned Fixed Width Integer Enum with 6 values
  index, side = dissect.side(buffer, index, packet, parent)

  -- Lower Than Price: 8 Byte Signed Fixed Width Integer Nullable
  index, lower_than_price = dissect.lower_than_price(buffer, index, packet, parent)

  -- Higher Than Price: 8 Byte Signed Fixed Width Integer Nullable
  index, higher_than_price = dissect.higher_than_price(buffer, index, packet, parent)

  -- Cancel Group Id: 2 Byte Unsigned Fixed Width Integer Nullable
  index, cancel_group_id = dissect.cancel_group_id(buffer, index, packet, parent)

  -- Reject Reason: 1 Byte Unsigned Fixed Width Integer Enum with 104 values
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
    parent = parent:add(memx_equities_memo_sbe_v1_9.fields.mass_cancel_reject_message, range, display)
  end

  return dissect.mass_cancel_reject_message_fields(buffer, offset, packet, parent)
end

-- Size: Lnk Id
size_of.lnk_id = 4

-- Display: Lnk Id
display.lnk_id = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Lnk Id: No Value"
  end

  return "Lnk Id: "..value
end

-- Dissect: Lnk Id
dissect.lnk_id = function(buffer, offset, packet, parent)
  local length = size_of.lnk_id
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

  local display = display.lnk_id(value, buffer, offset, packet, parent)

  parent:add(memx_equities_memo_sbe_v1_9.fields.lnk_id, range, value, display)

  return offset + length, value
end

-- Size: Cxl Rej Reason
size_of.cxl_rej_reason = 1

-- Display: Cxl Rej Reason
display.cxl_rej_reason = function(value)
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
  if value == 34 then
    return "Cxl Rej Reason: Invalid Cl Ord Id (34)"
  end
  if value == 35 then
    return "Cxl Rej Reason: Invalid Lnk Id (35)"
  end
  if value == 255 then
    return "Cxl Rej Reason: Null Value (255)"
  end

  return "Cxl Rej Reason: Unknown("..value..")"
end

-- Dissect: Cxl Rej Reason
dissect.cxl_rej_reason = function(buffer, offset, packet, parent)
  local length = size_of.cxl_rej_reason
  local range = buffer(offset, length)
  local value = range:uint()
  local display = display.cxl_rej_reason(value, buffer, offset, packet, parent)

  parent:add(memx_equities_memo_sbe_v1_9.fields.cxl_rej_reason, range, value, display)

  return offset + length, value
end

-- Size: Cxl Rej Response To
size_of.cxl_rej_response_to = 1

-- Display: Cxl Rej Response To
display.cxl_rej_response_to = function(value)
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
dissect.cxl_rej_response_to = function(buffer, offset, packet, parent)
  local length = size_of.cxl_rej_response_to
  local range = buffer(offset, length)
  local value = range:uint()
  local display = display.cxl_rej_response_to(value, buffer, offset, packet, parent)

  parent:add(memx_equities_memo_sbe_v1_9.fields.cxl_rej_response_to, range, value, display)

  return offset + length, value
end

-- Calculate size of: Order Cancel Reject Message
size_of.order_cancel_reject_message = function(buffer, offset)
  local index = 0

  index = index + size_of.sending_time

  index = index + size_of.cl_ord_id

  index = index + size_of.cxl_rej_response_to

  index = index + size_of.cxl_rej_reason

  index = index + size_of.lnk_id

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

  -- Cxl Rej Response To: 1 Byte Unsigned Fixed Width Integer Enum with 3 values
  index, cxl_rej_response_to = dissect.cxl_rej_response_to(buffer, index, packet, parent)

  -- Cxl Rej Reason: 1 Byte Unsigned Fixed Width Integer Enum with 37 values
  index, cxl_rej_reason = dissect.cxl_rej_reason(buffer, index, packet, parent)

  -- Lnk Id: 4 Byte Ascii String
  index, lnk_id = dissect.lnk_id(buffer, index, packet, parent)

  return index
end

-- Dissect: Order Cancel Reject Message
dissect.order_cancel_reject_message = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.order_cancel_reject_message then
    local length = size_of.order_cancel_reject_message(buffer, offset)
    local range = buffer(offset, length)
    local display = display.order_cancel_reject_message(buffer, packet, parent)
    parent = parent:add(memx_equities_memo_sbe_v1_9.fields.order_cancel_reject_message, range, display)
  end

  return dissect.order_cancel_reject_message_fields(buffer, offset, packet, parent)
end

-- Size: Extended Restatement Reason
size_of.extended_restatement_reason = 1

-- Display: Extended Restatement Reason
display.extended_restatement_reason = function(value)
  if value == 0 then
    return "Extended Restatement Reason: None (0)"
  end
  if value == 1 then
    return "Extended Restatement Reason: Set Nbbo (1)"
  end
  if value == 2 then
    return "Extended Restatement Reason: Joined Nbbo (2)"
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
dissect.extended_restatement_reason = function(buffer, offset, packet, parent)
  local length = size_of.extended_restatement_reason
  local range = buffer(offset, length)
  local value = range:uint()
  local display = display.extended_restatement_reason(value, buffer, offset, packet, parent)

  parent:add(memx_equities_memo_sbe_v1_9.fields.extended_restatement_reason, range, value, display)

  return offset + length, value
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

  parent:add(memx_equities_memo_sbe_v1_9.fields.transact_time, range, value, display)

  return offset + length, value
end

-- Size: Exec Restatement Reason
size_of.exec_restatement_reason = 1

-- Display: Exec Restatement Reason
display.exec_restatement_reason = function(value)
  if value == 1 then
    return "Exec Restatement Reason: Order Reprice (1)"
  end
  if value == 2 then
    return "Exec Restatement Reason: Self Trade Prevention (2)"
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
dissect.exec_restatement_reason = function(buffer, offset, packet, parent)
  local length = size_of.exec_restatement_reason
  local range = buffer(offset, length)
  local value = range:uint()
  local display = display.exec_restatement_reason(value, buffer, offset, packet, parent)

  parent:add(memx_equities_memo_sbe_v1_9.fields.exec_restatement_reason, range, value, display)

  return offset + length, value
end

-- Size: Last Shares
size_of.last_shares = 4

-- Display: Last Shares
display.last_shares = function(value)
  -- Check if field has value
  if value == 4294967295 then
    return "Last Shares: No Value"
  end

  return "Last Shares: "..value
end

-- Dissect: Last Shares
dissect.last_shares = function(buffer, offset, packet, parent)
  local length = size_of.last_shares
  local range = buffer(offset, length)
  local value = range:uint()
  local display = display.last_shares(value, buffer, offset, packet, parent)

  parent:add(memx_equities_memo_sbe_v1_9.fields.last_shares, range, value, display)

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

  parent:add(memx_equities_memo_sbe_v1_9.fields.cum_qty, range, value, display)

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

  parent:add(memx_equities_memo_sbe_v1_9.fields.leaves_qty, range, value, display)

  return offset + length, value
end

-- Size: Last Px
size_of.last_px = 8

-- Display: Last Px
display.last_px = function(value)
  -- Check if field has value
  if value == Int64(0x00000000, 0x80000000) then
    return "Last Px: No Value"
  end

  return "Last Px: "..value
end

-- Dissect: Last Px
dissect.last_px = function(buffer, offset, packet, parent)
  local length = size_of.last_px
  local range = buffer(offset, length)
  local value = range:int64()
  local display = display.last_px(value, buffer, offset, packet, parent)

  parent:add(memx_equities_memo_sbe_v1_9.fields.last_px, range, value, display)

  return offset + length, value
end

-- Size: Ord Status
size_of.ord_status = 1

-- Display: Ord Status
display.ord_status = function(value)
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
dissect.ord_status = function(buffer, offset, packet, parent)
  local length = size_of.ord_status
  local range = buffer(offset, length)
  local value = range:uint()
  local display = display.ord_status(value, buffer, offset, packet, parent)

  parent:add(memx_equities_memo_sbe_v1_9.fields.ord_status, range, value, display)

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

  parent:add(memx_equities_memo_sbe_v1_9.fields.exec_id, range, value, display)

  return offset + length, value
end

-- Size: Order Id
size_of.order_id = 8

-- Display: Order Id
display.order_id = function(value)
  -- Check if field has value
  if value == UInt64(0xFFFFFFFF, 0xFFFFFFFF) then
    return "Order Id: No Value"
  end

  return "Order Id: "..value
end

-- Dissect: Order Id
dissect.order_id = function(buffer, offset, packet, parent)
  local length = size_of.order_id
  local range = buffer(offset, length)
  local value = range:uint64()
  local display = display.order_id(value, buffer, offset, packet, parent)

  parent:add(memx_equities_memo_sbe_v1_9.fields.order_id, range, value, display)

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

  index = index + size_of.extended_restatement_reason

  index = index + size_of.lnk_id

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

  -- Order Id: 8 Byte Unsigned Fixed Width Integer Nullable
  index, order_id = dissect.order_id(buffer, index, packet, parent)

  -- Cl Ord Id: 16 Byte Ascii String
  index, cl_ord_id = dissect.cl_ord_id(buffer, index, packet, parent)

  -- Exec Id: 8 Byte Unsigned Fixed Width Integer
  index, exec_id = dissect.exec_id(buffer, index, packet, parent)

  -- Ord Status: 1 Byte Unsigned Fixed Width Integer Enum with 10 values
  index, ord_status = dissect.ord_status(buffer, index, packet, parent)

  -- Last Px: 8 Byte Signed Fixed Width Integer Nullable
  index, last_px = dissect.last_px(buffer, index, packet, parent)

  -- Leaves Qty: 4 Byte Unsigned Fixed Width Integer
  index, leaves_qty = dissect.leaves_qty(buffer, index, packet, parent)

  -- Cum Qty: 4 Byte Unsigned Fixed Width Integer
  index, cum_qty = dissect.cum_qty(buffer, index, packet, parent)

  -- Last Shares: 4 Byte Unsigned Fixed Width Integer Nullable
  index, last_shares = dissect.last_shares(buffer, index, packet, parent)

  -- Exec Restatement Reason: 1 Byte Unsigned Fixed Width Integer Enum with 4 values
  index, exec_restatement_reason = dissect.exec_restatement_reason(buffer, index, packet, parent)

  -- Transact Time: 8 Byte Unsigned Fixed Width Integer
  index, transact_time = dissect.transact_time(buffer, index, packet, parent)

  -- Extended Restatement Reason: 1 Byte Unsigned Fixed Width Integer Enum with 5 values
  index, extended_restatement_reason = dissect.extended_restatement_reason(buffer, index, packet, parent)

  -- Lnk Id: 4 Byte Ascii String
  index, lnk_id = dissect.lnk_id(buffer, index, packet, parent)

  return index
end

-- Dissect: Execution Report Restatement Message
dissect.execution_report_restatement_message = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.execution_report_restatement_message then
    local length = size_of.execution_report_restatement_message(buffer, offset)
    local range = buffer(offset, length)
    local display = display.execution_report_restatement_message(buffer, packet, parent)
    parent = parent:add(memx_equities_memo_sbe_v1_9.fields.execution_report_restatement_message, range, display)
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

  parent:add(memx_equities_memo_sbe_v1_9.fields.trd_match_id, range, value, display)

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

  parent:add(memx_equities_memo_sbe_v1_9.fields.exec_ref_id, range, value, display)

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

  index = index + size_of.lnk_id

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

  -- Order Id: 8 Byte Unsigned Fixed Width Integer Nullable
  index, order_id = dissect.order_id(buffer, index, packet, parent)

  -- Cl Ord Id: 16 Byte Ascii String
  index, cl_ord_id = dissect.cl_ord_id(buffer, index, packet, parent)

  -- Exec Id: 8 Byte Unsigned Fixed Width Integer
  index, exec_id = dissect.exec_id(buffer, index, packet, parent)

  -- Exec Ref Id: 8 Byte Unsigned Fixed Width Integer
  index, exec_ref_id = dissect.exec_ref_id(buffer, index, packet, parent)

  -- Trd Match Id: 8 Byte Unsigned Fixed Width Integer
  index, trd_match_id = dissect.trd_match_id(buffer, index, packet, parent)

  -- Ord Status: 1 Byte Unsigned Fixed Width Integer Enum with 10 values
  index, ord_status = dissect.ord_status(buffer, index, packet, parent)

  -- Leaves Qty: 4 Byte Unsigned Fixed Width Integer
  index, leaves_qty = dissect.leaves_qty(buffer, index, packet, parent)

  -- Cum Qty: 4 Byte Unsigned Fixed Width Integer
  index, cum_qty = dissect.cum_qty(buffer, index, packet, parent)

  -- Lnk Id: 4 Byte Ascii String
  index, lnk_id = dissect.lnk_id(buffer, index, packet, parent)

  return index
end

-- Dissect: Execution Report Trade Break Message
dissect.execution_report_trade_break_message = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.execution_report_trade_break_message then
    local length = size_of.execution_report_trade_break_message(buffer, offset)
    local range = buffer(offset, length)
    local display = display.execution_report_trade_break_message(buffer, packet, parent)
    parent = parent:add(memx_equities_memo_sbe_v1_9.fields.execution_report_trade_break_message, range, display)
  end

  return dissect.execution_report_trade_break_message_fields(buffer, offset, packet, parent)
end

-- Size: Last Qty
size_of.last_qty = 4

-- Display: Last Qty
display.last_qty = function(value)
  -- Check if field has value
  if value == 4294967295 then
    return "Last Qty: No Value"
  end

  return "Last Qty: "..value
end

-- Dissect: Last Qty
dissect.last_qty = function(buffer, offset, packet, parent)
  local length = size_of.last_qty
  local range = buffer(offset, length)
  local value = range:uint()
  local display = display.last_qty(value, buffer, offset, packet, parent)

  parent:add(memx_equities_memo_sbe_v1_9.fields.last_qty, range, value, display)

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

  index = index + size_of.lnk_id

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

  -- Order Id: 8 Byte Unsigned Fixed Width Integer Nullable
  index, order_id = dissect.order_id(buffer, index, packet, parent)

  -- Cl Ord Id: 16 Byte Ascii String
  index, cl_ord_id = dissect.cl_ord_id(buffer, index, packet, parent)

  -- Exec Id: 8 Byte Unsigned Fixed Width Integer
  index, exec_id = dissect.exec_id(buffer, index, packet, parent)

  -- Exec Ref Id: 8 Byte Unsigned Fixed Width Integer
  index, exec_ref_id = dissect.exec_ref_id(buffer, index, packet, parent)

  -- Trd Match Id: 8 Byte Unsigned Fixed Width Integer
  index, trd_match_id = dissect.trd_match_id(buffer, index, packet, parent)

  -- Ord Status: 1 Byte Unsigned Fixed Width Integer Enum with 10 values
  index, ord_status = dissect.ord_status(buffer, index, packet, parent)

  -- Last Px: 8 Byte Signed Fixed Width Integer Nullable
  index, last_px = dissect.last_px(buffer, index, packet, parent)

  -- Last Qty: 4 Byte Unsigned Fixed Width Integer Nullable
  index, last_qty = dissect.last_qty(buffer, index, packet, parent)

  -- Leaves Qty: 4 Byte Unsigned Fixed Width Integer
  index, leaves_qty = dissect.leaves_qty(buffer, index, packet, parent)

  -- Cum Qty: 4 Byte Unsigned Fixed Width Integer
  index, cum_qty = dissect.cum_qty(buffer, index, packet, parent)

  -- Lnk Id: 4 Byte Ascii String
  index, lnk_id = dissect.lnk_id(buffer, index, packet, parent)

  return index
end

-- Dissect: Execution Report Trade Correction Message
dissect.execution_report_trade_correction_message = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.execution_report_trade_correction_message then
    local length = size_of.execution_report_trade_correction_message(buffer, offset)
    local range = buffer(offset, length)
    local display = display.execution_report_trade_correction_message(buffer, packet, parent)
    parent = parent:add(memx_equities_memo_sbe_v1_9.fields.execution_report_trade_correction_message, range, display)
  end

  return dissect.execution_report_trade_correction_message_fields(buffer, offset, packet, parent)
end

-- Size: Locate Reqd
size_of.locate_reqd = 1

-- Display: Locate Reqd
display.locate_reqd = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Locate Reqd: No Value"
  end

  return "Locate Reqd: "..value
end

-- Dissect: Locate Reqd
dissect.locate_reqd = function(buffer, offset, packet, parent)
  local length = size_of.locate_reqd
  local range = buffer(offset, length)

  -- parse as byte
  local value = range:uint()

  -- check if value is non zero
  if value == 0 then
    value = ''
  else
    value = range:string()
  end

  local display = display.locate_reqd(value, buffer, offset, packet, parent)

  parent:add(memx_equities_memo_sbe_v1_9.fields.locate_reqd, range, value, display)

  return offset + length, value
end

-- Size: Display Qty
size_of.display_qty = 4

-- Display: Display Qty
display.display_qty = function(value)
  -- Check if field has value
  if value == 4294967295 then
    return "Display Qty: No Value"
  end

  return "Display Qty: "..value
end

-- Dissect: Display Qty
dissect.display_qty = function(buffer, offset, packet, parent)
  local length = size_of.display_qty
  local range = buffer(offset, length)
  local value = range:uint()
  local display = display.display_qty(value, buffer, offset, packet, parent)

  parent:add(memx_equities_memo_sbe_v1_9.fields.display_qty, range, value, display)

  return offset + length, value
end

-- Size: Price
size_of.price = 8

-- Display: Price
display.price = function(value)
  -- Check if field has value
  if value == Int64(0x00000000, 0x80000000) then
    return "Price: No Value"
  end

  return "Price: "..value
end

-- Dissect: Price
dissect.price = function(buffer, offset, packet, parent)
  local length = size_of.price
  local range = buffer(offset, length)
  local value = range:int64()
  local display = display.price(value, buffer, offset, packet, parent)

  parent:add(memx_equities_memo_sbe_v1_9.fields.price, range, value, display)

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

  parent:add(memx_equities_memo_sbe_v1_9.fields.ord_type, range, value, display)

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

  parent:add(memx_equities_memo_sbe_v1_9.fields.order_qty, range, value, display)

  return offset + length, value
end

-- Size: Symbol Execution Report Replaced Symbol
size_of.symbol_execution_report_replaced_symbol = 6

-- Display: Symbol Execution Report Replaced Symbol
display.symbol_execution_report_replaced_symbol = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Symbol Execution Report Replaced Symbol: No Value"
  end

  return "Symbol Execution Report Replaced Symbol: "..value
end

-- Dissect: Symbol Execution Report Replaced Symbol
dissect.symbol_execution_report_replaced_symbol = function(buffer, offset, packet, parent)
  local length = size_of.symbol_execution_report_replaced_symbol
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

  local display = display.symbol_execution_report_replaced_symbol(value, buffer, offset, packet, parent)

  parent:add(memx_equities_memo_sbe_v1_9.fields.symbol_execution_report_replaced_symbol, range, value, display)

  return offset + length, value
end

-- Size: Orig Cl Ord Id
size_of.orig_cl_ord_id = 16

-- Display: Orig Cl Ord Id
display.orig_cl_ord_id = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Orig Cl Ord Id: No Value"
  end

  return "Orig Cl Ord Id: "..value
end

-- Dissect: Orig Cl Ord Id
dissect.orig_cl_ord_id = function(buffer, offset, packet, parent)
  local length = size_of.orig_cl_ord_id
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

  local display = display.orig_cl_ord_id(value, buffer, offset, packet, parent)

  parent:add(memx_equities_memo_sbe_v1_9.fields.orig_cl_ord_id, range, value, display)

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

  index = index + size_of.symbol_execution_report_replaced_symbol

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

  index = index + size_of.lnk_id

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

  -- Order Id: 8 Byte Unsigned Fixed Width Integer Nullable
  index, order_id = dissect.order_id(buffer, index, packet, parent)

  -- Cl Ord Id: 16 Byte Ascii String
  index, cl_ord_id = dissect.cl_ord_id(buffer, index, packet, parent)

  -- Orig Cl Ord Id: 16 Byte Ascii String
  index, orig_cl_ord_id = dissect.orig_cl_ord_id(buffer, index, packet, parent)

  -- Exec Id: 8 Byte Unsigned Fixed Width Integer
  index, exec_id = dissect.exec_id(buffer, index, packet, parent)

  -- Symbol Execution Report Replaced Symbol: 6 Byte Ascii String
  index, symbol_execution_report_replaced_symbol = dissect.symbol_execution_report_replaced_symbol(buffer, index, packet, parent)

  -- Symbol Sfx: 6 Byte Ascii String
  index, symbol_sfx = dissect.symbol_sfx(buffer, index, packet, parent)

  -- Side: 1 Byte Unsigned Fixed Width Integer Enum with 6 values
  index, side = dissect.side(buffer, index, packet, parent)

  -- Order Qty: 4 Byte Unsigned Fixed Width Integer
  index, order_qty = dissect.order_qty(buffer, index, packet, parent)

  -- Ord Type: 1 Byte Unsigned Fixed Width Integer Enum with 4 values
  index, ord_type = dissect.ord_type(buffer, index, packet, parent)

  -- Price: 8 Byte Signed Fixed Width Integer Nullable
  index, price = dissect.price(buffer, index, packet, parent)

  -- Display Qty: 4 Byte Unsigned Fixed Width Integer Nullable
  index, display_qty = dissect.display_qty(buffer, index, packet, parent)

  -- Locate Reqd: 1 Byte Ascii String Nullable
  index, locate_reqd = dissect.locate_reqd(buffer, index, packet, parent)

  -- Ord Status: 1 Byte Unsigned Fixed Width Integer Enum with 10 values
  index, ord_status = dissect.ord_status(buffer, index, packet, parent)

  -- Leaves Qty: 4 Byte Unsigned Fixed Width Integer
  index, leaves_qty = dissect.leaves_qty(buffer, index, packet, parent)

  -- Cum Qty: 4 Byte Unsigned Fixed Width Integer
  index, cum_qty = dissect.cum_qty(buffer, index, packet, parent)

  -- Transact Time: 8 Byte Unsigned Fixed Width Integer
  index, transact_time = dissect.transact_time(buffer, index, packet, parent)

  -- Lnk Id: 4 Byte Ascii String
  index, lnk_id = dissect.lnk_id(buffer, index, packet, parent)

  return index
end

-- Dissect: Execution Report Replaced Message
dissect.execution_report_replaced_message = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.execution_report_replaced_message then
    local length = size_of.execution_report_replaced_message(buffer, offset)
    local range = buffer(offset, length)
    local display = display.execution_report_replaced_message(buffer, packet, parent)
    parent = parent:add(memx_equities_memo_sbe_v1_9.fields.execution_report_replaced_message, range, display)
  end

  return dissect.execution_report_replaced_message_fields(buffer, offset, packet, parent)
end

-- Size: Symbol Execution Report Pending Replace Symbol
size_of.symbol_execution_report_pending_replace_symbol = 6

-- Display: Symbol Execution Report Pending Replace Symbol
display.symbol_execution_report_pending_replace_symbol = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Symbol Execution Report Pending Replace Symbol: No Value"
  end

  return "Symbol Execution Report Pending Replace Symbol: "..value
end

-- Dissect: Symbol Execution Report Pending Replace Symbol
dissect.symbol_execution_report_pending_replace_symbol = function(buffer, offset, packet, parent)
  local length = size_of.symbol_execution_report_pending_replace_symbol
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

  local display = display.symbol_execution_report_pending_replace_symbol(value, buffer, offset, packet, parent)

  parent:add(memx_equities_memo_sbe_v1_9.fields.symbol_execution_report_pending_replace_symbol, range, value, display)

  return offset + length, value
end

-- Calculate size of: Execution Report Pending Replace Message
size_of.execution_report_pending_replace_message = function(buffer, offset)
  local index = 0

  index = index + size_of.sending_time

  index = index + size_of.order_id

  index = index + size_of.cl_ord_id

  index = index + size_of.orig_cl_ord_id

  index = index + size_of.exec_id

  index = index + size_of.symbol_execution_report_pending_replace_symbol

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

  index = index + size_of.lnk_id

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

  -- Order Id: 8 Byte Unsigned Fixed Width Integer Nullable
  index, order_id = dissect.order_id(buffer, index, packet, parent)

  -- Cl Ord Id: 16 Byte Ascii String
  index, cl_ord_id = dissect.cl_ord_id(buffer, index, packet, parent)

  -- Orig Cl Ord Id: 16 Byte Ascii String
  index, orig_cl_ord_id = dissect.orig_cl_ord_id(buffer, index, packet, parent)

  -- Exec Id: 8 Byte Unsigned Fixed Width Integer
  index, exec_id = dissect.exec_id(buffer, index, packet, parent)

  -- Symbol Execution Report Pending Replace Symbol: 6 Byte Ascii String
  index, symbol_execution_report_pending_replace_symbol = dissect.symbol_execution_report_pending_replace_symbol(buffer, index, packet, parent)

  -- Symbol Sfx: 6 Byte Ascii String
  index, symbol_sfx = dissect.symbol_sfx(buffer, index, packet, parent)

  -- Side: 1 Byte Unsigned Fixed Width Integer Enum with 6 values
  index, side = dissect.side(buffer, index, packet, parent)

  -- Order Qty: 4 Byte Unsigned Fixed Width Integer
  index, order_qty = dissect.order_qty(buffer, index, packet, parent)

  -- Ord Type: 1 Byte Unsigned Fixed Width Integer Enum with 4 values
  index, ord_type = dissect.ord_type(buffer, index, packet, parent)

  -- Price: 8 Byte Signed Fixed Width Integer Nullable
  index, price = dissect.price(buffer, index, packet, parent)

  -- Display Qty: 4 Byte Unsigned Fixed Width Integer Nullable
  index, display_qty = dissect.display_qty(buffer, index, packet, parent)

  -- Locate Reqd: 1 Byte Ascii String Nullable
  index, locate_reqd = dissect.locate_reqd(buffer, index, packet, parent)

  -- Ord Status: 1 Byte Unsigned Fixed Width Integer Enum with 10 values
  index, ord_status = dissect.ord_status(buffer, index, packet, parent)

  -- Leaves Qty: 4 Byte Unsigned Fixed Width Integer
  index, leaves_qty = dissect.leaves_qty(buffer, index, packet, parent)

  -- Cum Qty: 4 Byte Unsigned Fixed Width Integer
  index, cum_qty = dissect.cum_qty(buffer, index, packet, parent)

  -- Lnk Id: 4 Byte Ascii String
  index, lnk_id = dissect.lnk_id(buffer, index, packet, parent)

  return index
end

-- Dissect: Execution Report Pending Replace Message
dissect.execution_report_pending_replace_message = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.execution_report_pending_replace_message then
    local length = size_of.execution_report_pending_replace_message(buffer, offset)
    local range = buffer(offset, length)
    local display = display.execution_report_pending_replace_message(buffer, packet, parent)
    parent = parent:add(memx_equities_memo_sbe_v1_9.fields.execution_report_pending_replace_message, range, display)
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
    parent = parent:add(memx_equities_memo_sbe_v1_9.fields.mass_cancel_done_message, range, display)
  end

  return dissect.mass_cancel_done_message_fields(buffer, offset, packet, parent)
end

-- Size: Cancel Reason
size_of.cancel_reason = 1

-- Display: Cancel Reason
display.cancel_reason = function(value)
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
dissect.cancel_reason = function(buffer, offset, packet, parent)
  local length = size_of.cancel_reason
  local range = buffer(offset, length)
  local value = range:uint()
  local display = display.cancel_reason(value, buffer, offset, packet, parent)

  parent:add(memx_equities_memo_sbe_v1_9.fields.cancel_reason, range, value, display)

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

  index = index + size_of.lnk_id

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

  -- Order Id: 8 Byte Unsigned Fixed Width Integer Nullable
  index, order_id = dissect.order_id(buffer, index, packet, parent)

  -- Exec Id: 8 Byte Unsigned Fixed Width Integer
  index, exec_id = dissect.exec_id(buffer, index, packet, parent)

  -- Ord Status: 1 Byte Unsigned Fixed Width Integer Enum with 10 values
  index, ord_status = dissect.ord_status(buffer, index, packet, parent)

  -- Leaves Qty: 4 Byte Unsigned Fixed Width Integer
  index, leaves_qty = dissect.leaves_qty(buffer, index, packet, parent)

  -- Cum Qty: 4 Byte Unsigned Fixed Width Integer
  index, cum_qty = dissect.cum_qty(buffer, index, packet, parent)

  -- Cancel Reason: 1 Byte Unsigned Fixed Width Integer Enum with 21 values
  index, cancel_reason = dissect.cancel_reason(buffer, index, packet, parent)

  -- Transact Time: 8 Byte Unsigned Fixed Width Integer
  index, transact_time = dissect.transact_time(buffer, index, packet, parent)

  -- Lnk Id: 4 Byte Ascii String
  index, lnk_id = dissect.lnk_id(buffer, index, packet, parent)

  return index
end

-- Dissect: Execution Report Canceled Message
dissect.execution_report_canceled_message = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.execution_report_canceled_message then
    local length = size_of.execution_report_canceled_message(buffer, offset)
    local range = buffer(offset, length)
    local display = display.execution_report_canceled_message(buffer, packet, parent)
    parent = parent:add(memx_equities_memo_sbe_v1_9.fields.execution_report_canceled_message, range, display)
  end

  return dissect.execution_report_canceled_message_fields(buffer, offset, packet, parent)
end

-- Size: Symbol Pending Mass Cancel Symbol
size_of.symbol_pending_mass_cancel_symbol = 6

-- Display: Symbol Pending Mass Cancel Symbol
display.symbol_pending_mass_cancel_symbol = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Symbol Pending Mass Cancel Symbol: No Value"
  end

  return "Symbol Pending Mass Cancel Symbol: "..value
end

-- Dissect: Symbol Pending Mass Cancel Symbol
dissect.symbol_pending_mass_cancel_symbol = function(buffer, offset, packet, parent)
  local length = size_of.symbol_pending_mass_cancel_symbol
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

  local display = display.symbol_pending_mass_cancel_symbol(value, buffer, offset, packet, parent)

  parent:add(memx_equities_memo_sbe_v1_9.fields.symbol_pending_mass_cancel_symbol, range, value, display)

  return offset + length, value
end

-- Calculate size of: Pending Mass Cancel Message
size_of.pending_mass_cancel_message = function(buffer, offset)
  local index = 0

  index = index + size_of.sending_time

  index = index + size_of.cl_ord_id

  index = index + size_of.symbol_pending_mass_cancel_symbol

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

  -- Symbol Pending Mass Cancel Symbol: 6 Byte Ascii String
  index, symbol_pending_mass_cancel_symbol = dissect.symbol_pending_mass_cancel_symbol(buffer, index, packet, parent)

  -- Symbol Sfx: 6 Byte Ascii String
  index, symbol_sfx = dissect.symbol_sfx(buffer, index, packet, parent)

  -- Side: 1 Byte Unsigned Fixed Width Integer Enum with 6 values
  index, side = dissect.side(buffer, index, packet, parent)

  -- Lower Than Price: 8 Byte Signed Fixed Width Integer Nullable
  index, lower_than_price = dissect.lower_than_price(buffer, index, packet, parent)

  -- Higher Than Price: 8 Byte Signed Fixed Width Integer Nullable
  index, higher_than_price = dissect.higher_than_price(buffer, index, packet, parent)

  -- Cancel Group Id: 2 Byte Unsigned Fixed Width Integer Nullable
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
    parent = parent:add(memx_equities_memo_sbe_v1_9.fields.pending_mass_cancel_message, range, display)
  end

  return dissect.pending_mass_cancel_message_fields(buffer, offset, packet, parent)
end

-- Size: Symbol Execution Report Pending Cancel Symbol
size_of.symbol_execution_report_pending_cancel_symbol = 6

-- Display: Symbol Execution Report Pending Cancel Symbol
display.symbol_execution_report_pending_cancel_symbol = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Symbol Execution Report Pending Cancel Symbol: No Value"
  end

  return "Symbol Execution Report Pending Cancel Symbol: "..value
end

-- Dissect: Symbol Execution Report Pending Cancel Symbol
dissect.symbol_execution_report_pending_cancel_symbol = function(buffer, offset, packet, parent)
  local length = size_of.symbol_execution_report_pending_cancel_symbol
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

  local display = display.symbol_execution_report_pending_cancel_symbol(value, buffer, offset, packet, parent)

  parent:add(memx_equities_memo_sbe_v1_9.fields.symbol_execution_report_pending_cancel_symbol, range, value, display)

  return offset + length, value
end

-- Calculate size of: Execution Report Pending Cancel Message
size_of.execution_report_pending_cancel_message = function(buffer, offset)
  local index = 0

  index = index + size_of.sending_time

  index = index + size_of.order_id

  index = index + size_of.cl_ord_id

  index = index + size_of.orig_cl_ord_id

  index = index + size_of.exec_id

  index = index + size_of.symbol_execution_report_pending_cancel_symbol

  index = index + size_of.symbol_sfx

  index = index + size_of.ord_status

  index = index + size_of.leaves_qty

  index = index + size_of.cum_qty

  index = index + size_of.lnk_id

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

  -- Order Id: 8 Byte Unsigned Fixed Width Integer Nullable
  index, order_id = dissect.order_id(buffer, index, packet, parent)

  -- Cl Ord Id: 16 Byte Ascii String
  index, cl_ord_id = dissect.cl_ord_id(buffer, index, packet, parent)

  -- Orig Cl Ord Id: 16 Byte Ascii String
  index, orig_cl_ord_id = dissect.orig_cl_ord_id(buffer, index, packet, parent)

  -- Exec Id: 8 Byte Unsigned Fixed Width Integer
  index, exec_id = dissect.exec_id(buffer, index, packet, parent)

  -- Symbol Execution Report Pending Cancel Symbol: 6 Byte Ascii String
  index, symbol_execution_report_pending_cancel_symbol = dissect.symbol_execution_report_pending_cancel_symbol(buffer, index, packet, parent)

  -- Symbol Sfx: 6 Byte Ascii String
  index, symbol_sfx = dissect.symbol_sfx(buffer, index, packet, parent)

  -- Ord Status: 1 Byte Unsigned Fixed Width Integer Enum with 10 values
  index, ord_status = dissect.ord_status(buffer, index, packet, parent)

  -- Leaves Qty: 4 Byte Unsigned Fixed Width Integer
  index, leaves_qty = dissect.leaves_qty(buffer, index, packet, parent)

  -- Cum Qty: 4 Byte Unsigned Fixed Width Integer
  index, cum_qty = dissect.cum_qty(buffer, index, packet, parent)

  -- Lnk Id: 4 Byte Ascii String
  index, lnk_id = dissect.lnk_id(buffer, index, packet, parent)

  return index
end

-- Dissect: Execution Report Pending Cancel Message
dissect.execution_report_pending_cancel_message = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.execution_report_pending_cancel_message then
    local length = size_of.execution_report_pending_cancel_message(buffer, offset)
    local range = buffer(offset, length)
    local display = display.execution_report_pending_cancel_message(buffer, packet, parent)
    parent = parent:add(memx_equities_memo_sbe_v1_9.fields.execution_report_pending_cancel_message, range, display)
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

  parent:add(memx_equities_memo_sbe_v1_9.fields.trd_matching_id, range, value, display)

  return offset + length, value
end

-- Size: Last Mkt
size_of.last_mkt = 1

-- Display: Last Mkt
display.last_mkt = function(value)
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
dissect.last_mkt = function(buffer, offset, packet, parent)
  local length = size_of.last_mkt
  local range = buffer(offset, length)

  -- parse as byte
  local value = range:uint()

  -- check if value is non zero
  if value == 0 then
    value = ''
  else
    value = range:string()
  end

  local display = display.last_mkt(value, buffer, offset, packet, parent)

  parent:add(memx_equities_memo_sbe_v1_9.fields.last_mkt, range, value, display)

  return offset + length, value
end

-- Size: Last Liquidity Ind
size_of.last_liquidity_ind = 1

-- Display: Last Liquidity Ind
display.last_liquidity_ind = function(value)
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
  if value == 109 then
    return "Last Liquidity Ind: Retail Removed On Entry (109)"
  end
  if value == 255 then
    return "Last Liquidity Ind: Null Value (255)"
  end

  return "Last Liquidity Ind: Unknown("..value..")"
end

-- Dissect: Last Liquidity Ind
dissect.last_liquidity_ind = function(buffer, offset, packet, parent)
  local length = size_of.last_liquidity_ind
  local range = buffer(offset, length)
  local value = range:uint()
  local display = display.last_liquidity_ind(value, buffer, offset, packet, parent)

  parent:add(memx_equities_memo_sbe_v1_9.fields.last_liquidity_ind, range, value, display)

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

  index = index + size_of.lnk_id

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

  -- Order Id: 8 Byte Unsigned Fixed Width Integer Nullable
  index, order_id = dissect.order_id(buffer, index, packet, parent)

  -- Cl Ord Id: 16 Byte Ascii String
  index, cl_ord_id = dissect.cl_ord_id(buffer, index, packet, parent)

  -- Exec Id: 8 Byte Unsigned Fixed Width Integer
  index, exec_id = dissect.exec_id(buffer, index, packet, parent)

  -- Ord Status: 1 Byte Unsigned Fixed Width Integer Enum with 10 values
  index, ord_status = dissect.ord_status(buffer, index, packet, parent)

  -- Last Qty: 4 Byte Unsigned Fixed Width Integer Nullable
  index, last_qty = dissect.last_qty(buffer, index, packet, parent)

  -- Last Px: 8 Byte Signed Fixed Width Integer Nullable
  index, last_px = dissect.last_px(buffer, index, packet, parent)

  -- Leaves Qty: 4 Byte Unsigned Fixed Width Integer
  index, leaves_qty = dissect.leaves_qty(buffer, index, packet, parent)

  -- Cum Qty: 4 Byte Unsigned Fixed Width Integer
  index, cum_qty = dissect.cum_qty(buffer, index, packet, parent)

  -- Transact Time: 8 Byte Unsigned Fixed Width Integer
  index, transact_time = dissect.transact_time(buffer, index, packet, parent)

  -- Last Liquidity Ind: 1 Byte Unsigned Fixed Width Integer Enum with 18 values
  index, last_liquidity_ind = dissect.last_liquidity_ind(buffer, index, packet, parent)

  -- Last Mkt: 1 Byte Ascii String Enum with 17 values
  index, last_mkt = dissect.last_mkt(buffer, index, packet, parent)

  -- Trd Matching Id: 8 Byte Unsigned Fixed Width Integer
  index, trd_matching_id = dissect.trd_matching_id(buffer, index, packet, parent)

  -- Lnk Id: 4 Byte Ascii String
  index, lnk_id = dissect.lnk_id(buffer, index, packet, parent)

  return index
end

-- Dissect: Execution Report Trade Message
dissect.execution_report_trade_message = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.execution_report_trade_message then
    local length = size_of.execution_report_trade_message(buffer, offset)
    local range = buffer(offset, length)
    local display = display.execution_report_trade_message(buffer, packet, parent)
    parent = parent:add(memx_equities_memo_sbe_v1_9.fields.execution_report_trade_message, range, display)
  end

  return dissect.execution_report_trade_message_fields(buffer, offset, packet, parent)
end

-- Size: Symbol Execution Report Rejected Symbol
size_of.symbol_execution_report_rejected_symbol = 6

-- Display: Symbol Execution Report Rejected Symbol
display.symbol_execution_report_rejected_symbol = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Symbol Execution Report Rejected Symbol: No Value"
  end

  return "Symbol Execution Report Rejected Symbol: "..value
end

-- Dissect: Symbol Execution Report Rejected Symbol
dissect.symbol_execution_report_rejected_symbol = function(buffer, offset, packet, parent)
  local length = size_of.symbol_execution_report_rejected_symbol
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

  local display = display.symbol_execution_report_rejected_symbol(value, buffer, offset, packet, parent)

  parent:add(memx_equities_memo_sbe_v1_9.fields.symbol_execution_report_rejected_symbol, range, value, display)

  return offset + length, value
end

-- Calculate size of: Execution Report Rejected Message
size_of.execution_report_rejected_message = function(buffer, offset)
  local index = 0

  index = index + size_of.sending_time

  index = index + size_of.cl_ord_id

  index = index + size_of.exec_id

  index = index + size_of.ord_status

  index = index + size_of.symbol_execution_report_rejected_symbol

  index = index + size_of.symbol_sfx

  index = index + size_of.leaves_qty

  index = index + size_of.cum_qty

  index = index + size_of.reject_reason

  index = index + size_of.lnk_id

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

  -- Ord Status: 1 Byte Unsigned Fixed Width Integer Enum with 10 values
  index, ord_status = dissect.ord_status(buffer, index, packet, parent)

  -- Symbol Execution Report Rejected Symbol: 6 Byte Ascii String
  index, symbol_execution_report_rejected_symbol = dissect.symbol_execution_report_rejected_symbol(buffer, index, packet, parent)

  -- Symbol Sfx: 6 Byte Ascii String
  index, symbol_sfx = dissect.symbol_sfx(buffer, index, packet, parent)

  -- Leaves Qty: 4 Byte Unsigned Fixed Width Integer
  index, leaves_qty = dissect.leaves_qty(buffer, index, packet, parent)

  -- Cum Qty: 4 Byte Unsigned Fixed Width Integer
  index, cum_qty = dissect.cum_qty(buffer, index, packet, parent)

  -- Reject Reason: 1 Byte Unsigned Fixed Width Integer Enum with 104 values
  index, reject_reason = dissect.reject_reason(buffer, index, packet, parent)

  -- Lnk Id: 4 Byte Ascii String
  index, lnk_id = dissect.lnk_id(buffer, index, packet, parent)

  return index
end

-- Dissect: Execution Report Rejected Message
dissect.execution_report_rejected_message = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.execution_report_rejected_message then
    local length = size_of.execution_report_rejected_message(buffer, offset)
    local range = buffer(offset, length)
    local display = display.execution_report_rejected_message(buffer, packet, parent)
    parent = parent:add(memx_equities_memo_sbe_v1_9.fields.execution_report_rejected_message, range, display)
  end

  return dissect.execution_report_rejected_message_fields(buffer, offset, packet, parent)
end

-- Size: Risk Group Id
size_of.risk_group_id = 2

-- Display: Risk Group Id
display.risk_group_id = function(value)
  -- Check if field has value
  if value == 65535 then
    return "Risk Group Id: No Value"
  end

  return "Risk Group Id: "..value
end

-- Dissect: Risk Group Id
dissect.risk_group_id = function(buffer, offset, packet, parent)
  local length = size_of.risk_group_id
  local range = buffer(offset, length)
  local value = range:uint()
  local display = display.risk_group_id(value, buffer, offset, packet, parent)

  parent:add(memx_equities_memo_sbe_v1_9.fields.risk_group_id, range, value, display)

  return offset + length, value
end

-- Size: Self Trade Prevention
size_of.self_trade_prevention = 1

-- Display: Self Trade Prevention
display.self_trade_prevention = function(value)
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
dissect.self_trade_prevention = function(buffer, offset, packet, parent)
  local length = size_of.self_trade_prevention
  local range = buffer(offset, length)
  local value = range:uint()
  local display = display.self_trade_prevention(value, buffer, offset, packet, parent)

  parent:add(memx_equities_memo_sbe_v1_9.fields.self_trade_prevention, range, value, display)

  return offset + length, value
end

-- Size: Stp Group Id
size_of.stp_group_id = 2

-- Display: Stp Group Id
display.stp_group_id = function(value)
  -- Check if field has value
  if value == 65535 then
    return "Stp Group Id: No Value"
  end

  return "Stp Group Id: "..value
end

-- Dissect: Stp Group Id
dissect.stp_group_id = function(buffer, offset, packet, parent)
  local length = size_of.stp_group_id
  local range = buffer(offset, length)
  local value = range:uint()
  local display = display.stp_group_id(value, buffer, offset, packet, parent)

  parent:add(memx_equities_memo_sbe_v1_9.fields.stp_group_id, range, value, display)

  return offset + length, value
end

-- Size: Reprice Behavior
size_of.reprice_behavior = 1

-- Display: Reprice Behavior
display.reprice_behavior = function(value)
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
dissect.reprice_behavior = function(buffer, offset, packet, parent)
  local length = size_of.reprice_behavior
  local range = buffer(offset, length)
  local value = range:uint()
  local display = display.reprice_behavior(value, buffer, offset, packet, parent)

  parent:add(memx_equities_memo_sbe_v1_9.fields.reprice_behavior, range, value, display)

  return offset + length, value
end

-- Size: Reprice Frequency
size_of.reprice_frequency = 1

-- Display: Reprice Frequency
display.reprice_frequency = function(value)
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
dissect.reprice_frequency = function(buffer, offset, packet, parent)
  local length = size_of.reprice_frequency
  local range = buffer(offset, length)
  local value = range:uint()
  local display = display.reprice_frequency(value, buffer, offset, packet, parent)

  parent:add(memx_equities_memo_sbe_v1_9.fields.reprice_frequency, range, value, display)

  return offset + length, value
end

-- Size: Display Min Incr
size_of.display_min_incr = 4

-- Display: Display Min Incr
display.display_min_incr = function(value)
  -- Check if field has value
  if value == 4294967295 then
    return "Display Min Incr: No Value"
  end

  return "Display Min Incr: "..value
end

-- Dissect: Display Min Incr
dissect.display_min_incr = function(buffer, offset, packet, parent)
  local length = size_of.display_min_incr
  local range = buffer(offset, length)
  local value = range:uint()
  local display = display.display_min_incr(value, buffer, offset, packet, parent)

  parent:add(memx_equities_memo_sbe_v1_9.fields.display_min_incr, range, value, display)

  return offset + length, value
end

-- Size: Reserve Replenish Timing
size_of.reserve_replenish_timing = 1

-- Display: Reserve Replenish Timing
display.reserve_replenish_timing = function(value)
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
dissect.reserve_replenish_timing = function(buffer, offset, packet, parent)
  local length = size_of.reserve_replenish_timing
  local range = buffer(offset, length)
  local value = range:uint()
  local display = display.reserve_replenish_timing(value, buffer, offset, packet, parent)

  parent:add(memx_equities_memo_sbe_v1_9.fields.reserve_replenish_timing, range, value, display)

  return offset + length, value
end

-- Size: Display Method
size_of.display_method = 1

-- Display: Display Method
display.display_method = function(value)
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
dissect.display_method = function(buffer, offset, packet, parent)
  local length = size_of.display_method
  local range = buffer(offset, length)
  local value = range:uint()
  local display = display.display_method(value, buffer, offset, packet, parent)

  parent:add(memx_equities_memo_sbe_v1_9.fields.display_method, range, value, display)

  return offset + length, value
end

-- Size: Min Qty
size_of.min_qty = 4

-- Display: Min Qty
display.min_qty = function(value)
  -- Check if field has value
  if value == 4294967295 then
    return "Min Qty: No Value"
  end

  return "Min Qty: "..value
end

-- Dissect: Min Qty
dissect.min_qty = function(buffer, offset, packet, parent)
  local length = size_of.min_qty
  local range = buffer(offset, length)
  local value = range:uint()
  local display = display.min_qty(value, buffer, offset, packet, parent)

  parent:add(memx_equities_memo_sbe_v1_9.fields.min_qty, range, value, display)

  return offset + length, value
end

-- Size: Expire Time
size_of.expire_time = 8

-- Display: Expire Time
display.expire_time = function(value)
  -- Check if field has value
  if value == UInt64(0xFFFFFFFF, 0xFFFFFFFF) then
    return "Expire Time: No Value"
  end

  return "Expire Time: "..value
end

-- Dissect: Expire Time
dissect.expire_time = function(buffer, offset, packet, parent)
  local length = size_of.expire_time
  local range = buffer(offset, length)
  local value = range:uint64()
  local display = display.expire_time(value, buffer, offset, packet, parent)

  parent:add(memx_equities_memo_sbe_v1_9.fields.expire_time, range, value, display)

  return offset + length, value
end

-- Size: Peg Price Type
size_of.peg_price_type = 1

-- Display: Peg Price Type
display.peg_price_type = function(value)
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
dissect.peg_price_type = function(buffer, offset, packet, parent)
  local length = size_of.peg_price_type
  local range = buffer(offset, length)
  local value = range:uint()
  local display = display.peg_price_type(value, buffer, offset, packet, parent)

  parent:add(memx_equities_memo_sbe_v1_9.fields.peg_price_type, range, value, display)

  return offset + length, value
end

-- Size: Peg Offset Value
size_of.peg_offset_value = 8

-- Display: Peg Offset Value
display.peg_offset_value = function(value)
  -- Check if field has value
  if value == Int64(0x00000000, 0x80000000) then
    return "Peg Offset Value: No Value"
  end

  return "Peg Offset Value: "..value
end

-- Dissect: Peg Offset Value
dissect.peg_offset_value = function(buffer, offset, packet, parent)
  local length = size_of.peg_offset_value
  local range = buffer(offset, length)
  local value = range:int64()
  local display = display.peg_offset_value(value, buffer, offset, packet, parent)

  parent:add(memx_equities_memo_sbe_v1_9.fields.peg_offset_value, range, value, display)

  return offset + length, value
end

-- Size: Exec Inst
size_of.exec_inst = 2

-- Display: Exec Inst
display.exec_inst = function(buffer, packet, parent)
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
dissect.exec_inst_bits = function(buffer, offset, packet, parent)

  -- Reserved 13: 13 Bit
  parent:add(memx_equities_memo_sbe_v1_9.fields.reserved_13, buffer(offset, 2))

  -- External Routing Not Allowed: 1 Bit
  parent:add(memx_equities_memo_sbe_v1_9.fields.external_routing_not_allowed, buffer(offset, 2))

  -- Intermarket Sweep: 1 Bit
  parent:add(memx_equities_memo_sbe_v1_9.fields.intermarket_sweep, buffer(offset, 2))

  -- Participate Do Not Initiate: 1 Bit
  parent:add(memx_equities_memo_sbe_v1_9.fields.participate_do_not_initiate, buffer(offset, 2))
end

-- Dissect: Exec Inst
dissect.exec_inst = function(buffer, offset, packet, parent)
  local size = 2
  local range = buffer(offset, size)
  local display = display.exec_inst(range, packet, parent)
  local element = parent:add(memx_equities_memo_sbe_v1_9.fields.exec_inst, range, display)

  if show.exec_inst then
    dissect.exec_inst_bits(buffer, offset, packet, element)
  end

  return offset + 2, range
end

-- Size: Cust Order Capacity
size_of.cust_order_capacity = 1

-- Display: Cust Order Capacity
display.cust_order_capacity = function(value)
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
dissect.cust_order_capacity = function(buffer, offset, packet, parent)
  local length = size_of.cust_order_capacity
  local range = buffer(offset, length)
  local value = range:uint()
  local display = display.cust_order_capacity(value, buffer, offset, packet, parent)

  parent:add(memx_equities_memo_sbe_v1_9.fields.cust_order_capacity, range, value, display)

  return offset + length, value
end

-- Size: Order Capacity
size_of.order_capacity = 1

-- Display: Order Capacity
display.order_capacity = function(value)
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
dissect.order_capacity = function(buffer, offset, packet, parent)
  local length = size_of.order_capacity
  local range = buffer(offset, length)
  local value = range:uint()
  local display = display.order_capacity(value, buffer, offset, packet, parent)

  parent:add(memx_equities_memo_sbe_v1_9.fields.order_capacity, range, value, display)

  return offset + length, value
end

-- Size: Time In Force
size_of.time_in_force = 1

-- Display: Time In Force
display.time_in_force = function(value)
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
dissect.time_in_force = function(buffer, offset, packet, parent)
  local length = size_of.time_in_force
  local range = buffer(offset, length)
  local value = range:uint()
  local display = display.time_in_force(value, buffer, offset, packet, parent)

  parent:add(memx_equities_memo_sbe_v1_9.fields.time_in_force, range, value, display)

  return offset + length, value
end

-- Size: Symbol Execution Report New Symbol
size_of.symbol_execution_report_new_symbol = 6

-- Display: Symbol Execution Report New Symbol
display.symbol_execution_report_new_symbol = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Symbol Execution Report New Symbol: No Value"
  end

  return "Symbol Execution Report New Symbol: "..value
end

-- Dissect: Symbol Execution Report New Symbol
dissect.symbol_execution_report_new_symbol = function(buffer, offset, packet, parent)
  local length = size_of.symbol_execution_report_new_symbol
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

  local display = display.symbol_execution_report_new_symbol(value, buffer, offset, packet, parent)

  parent:add(memx_equities_memo_sbe_v1_9.fields.symbol_execution_report_new_symbol, range, value, display)

  return offset + length, value
end

-- Size: Mpid
size_of.mpid = 4

-- Display: Mpid
display.mpid = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Mpid: No Value"
  end

  return "Mpid: "..value
end

-- Dissect: Mpid
dissect.mpid = function(buffer, offset, packet, parent)
  local length = size_of.mpid
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

  local display = display.mpid(value, buffer, offset, packet, parent)

  parent:add(memx_equities_memo_sbe_v1_9.fields.mpid, range, value, display)

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

  index = index + size_of.symbol_execution_report_new_symbol

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

  index = index + size_of.lnk_id

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

  -- Order Id: 8 Byte Unsigned Fixed Width Integer Nullable
  index, order_id = dissect.order_id(buffer, index, packet, parent)

  -- Cl Ord Id: 16 Byte Ascii String
  index, cl_ord_id = dissect.cl_ord_id(buffer, index, packet, parent)

  -- Exec Id: 8 Byte Unsigned Fixed Width Integer
  index, exec_id = dissect.exec_id(buffer, index, packet, parent)

  -- Mpid: 4 Byte Ascii String
  index, mpid = dissect.mpid(buffer, index, packet, parent)

  -- Ord Status: 1 Byte Unsigned Fixed Width Integer Enum with 10 values
  index, ord_status = dissect.ord_status(buffer, index, packet, parent)

  -- Symbol Execution Report New Symbol: 6 Byte Ascii String
  index, symbol_execution_report_new_symbol = dissect.symbol_execution_report_new_symbol(buffer, index, packet, parent)

  -- Symbol Sfx: 6 Byte Ascii String
  index, symbol_sfx = dissect.symbol_sfx(buffer, index, packet, parent)

  -- Side: 1 Byte Unsigned Fixed Width Integer Enum with 6 values
  index, side = dissect.side(buffer, index, packet, parent)

  -- Ord Type: 1 Byte Unsigned Fixed Width Integer Enum with 4 values
  index, ord_type = dissect.ord_type(buffer, index, packet, parent)

  -- Order Qty: 4 Byte Unsigned Fixed Width Integer
  index, order_qty = dissect.order_qty(buffer, index, packet, parent)

  -- Price: 8 Byte Signed Fixed Width Integer Nullable
  index, price = dissect.price(buffer, index, packet, parent)

  -- Time In Force: 1 Byte Unsigned Fixed Width Integer Enum with 6 values
  index, time_in_force = dissect.time_in_force(buffer, index, packet, parent)

  -- Order Capacity: 1 Byte Unsigned Fixed Width Integer Enum with 4 values
  index, order_capacity = dissect.order_capacity(buffer, index, packet, parent)

  -- Cust Order Capacity: 1 Byte Unsigned Fixed Width Integer Enum with 3 values
  index, cust_order_capacity = dissect.cust_order_capacity(buffer, index, packet, parent)

  -- Exec Inst: Struct of 4 fields
  index, exec_inst = dissect.exec_inst(buffer, index, packet, parent)

  -- Peg Offset Value: 8 Byte Signed Fixed Width Integer Nullable
  index, peg_offset_value = dissect.peg_offset_value(buffer, index, packet, parent)

  -- Peg Price Type: 1 Byte Unsigned Fixed Width Integer Enum with 4 values
  index, peg_price_type = dissect.peg_price_type(buffer, index, packet, parent)

  -- Expire Time: 8 Byte Unsigned Fixed Width Integer Nullable
  index, expire_time = dissect.expire_time(buffer, index, packet, parent)

  -- Min Qty: 4 Byte Unsigned Fixed Width Integer Nullable
  index, min_qty = dissect.min_qty(buffer, index, packet, parent)

  -- Display Qty: 4 Byte Unsigned Fixed Width Integer Nullable
  index, display_qty = dissect.display_qty(buffer, index, packet, parent)

  -- Display Method: 1 Byte Unsigned Fixed Width Integer Enum with 5 values
  index, display_method = dissect.display_method(buffer, index, packet, parent)

  -- Reserve Replenish Timing: 1 Byte Unsigned Fixed Width Integer Enum with 4 values
  index, reserve_replenish_timing = dissect.reserve_replenish_timing(buffer, index, packet, parent)

  -- Display Min Incr: 4 Byte Unsigned Fixed Width Integer Nullable
  index, display_min_incr = dissect.display_min_incr(buffer, index, packet, parent)

  -- Locate Reqd: 1 Byte Ascii String Nullable
  index, locate_reqd = dissect.locate_reqd(buffer, index, packet, parent)

  -- Reprice Frequency: 1 Byte Unsigned Fixed Width Integer Enum with 5 values
  index, reprice_frequency = dissect.reprice_frequency(buffer, index, packet, parent)

  -- Reprice Behavior: 1 Byte Unsigned Fixed Width Integer Enum with 4 values
  index, reprice_behavior = dissect.reprice_behavior(buffer, index, packet, parent)

  -- Cancel Group Id: 2 Byte Unsigned Fixed Width Integer Nullable
  index, cancel_group_id = dissect.cancel_group_id(buffer, index, packet, parent)

  -- Stp Group Id: 2 Byte Unsigned Fixed Width Integer Nullable
  index, stp_group_id = dissect.stp_group_id(buffer, index, packet, parent)

  -- Self Trade Prevention: 1 Byte Unsigned Fixed Width Integer Enum with 7 values
  index, self_trade_prevention = dissect.self_trade_prevention(buffer, index, packet, parent)

  -- Risk Group Id: 2 Byte Unsigned Fixed Width Integer Nullable
  index, risk_group_id = dissect.risk_group_id(buffer, index, packet, parent)

  -- Leaves Qty: 4 Byte Unsigned Fixed Width Integer
  index, leaves_qty = dissect.leaves_qty(buffer, index, packet, parent)

  -- Cum Qty: 4 Byte Unsigned Fixed Width Integer
  index, cum_qty = dissect.cum_qty(buffer, index, packet, parent)

  -- Transact Time: 8 Byte Unsigned Fixed Width Integer
  index, transact_time = dissect.transact_time(buffer, index, packet, parent)

  -- Lnk Id: 4 Byte Ascii String
  index, lnk_id = dissect.lnk_id(buffer, index, packet, parent)

  return index
end

-- Dissect: Execution Report New Message
dissect.execution_report_new_message = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.execution_report_new_message then
    local length = size_of.execution_report_new_message(buffer, offset)
    local range = buffer(offset, length)
    local display = display.execution_report_new_message(buffer, packet, parent)
    parent = parent:add(memx_equities_memo_sbe_v1_9.fields.execution_report_new_message, range, display)
  end

  return dissect.execution_report_new_message_fields(buffer, offset, packet, parent)
end

-- Size: Symbol Execution Report Pending New Symbol
size_of.symbol_execution_report_pending_new_symbol = 6

-- Display: Symbol Execution Report Pending New Symbol
display.symbol_execution_report_pending_new_symbol = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Symbol Execution Report Pending New Symbol: No Value"
  end

  return "Symbol Execution Report Pending New Symbol: "..value
end

-- Dissect: Symbol Execution Report Pending New Symbol
dissect.symbol_execution_report_pending_new_symbol = function(buffer, offset, packet, parent)
  local length = size_of.symbol_execution_report_pending_new_symbol
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

  local display = display.symbol_execution_report_pending_new_symbol(value, buffer, offset, packet, parent)

  parent:add(memx_equities_memo_sbe_v1_9.fields.symbol_execution_report_pending_new_symbol, range, value, display)

  return offset + length, value
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

  index = index + size_of.symbol_execution_report_pending_new_symbol

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

  index = index + size_of.lnk_id

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

  -- Order Id: 8 Byte Unsigned Fixed Width Integer Nullable
  index, order_id = dissect.order_id(buffer, index, packet, parent)

  -- Cl Ord Id: 16 Byte Ascii String
  index, cl_ord_id = dissect.cl_ord_id(buffer, index, packet, parent)

  -- Exec Id: 8 Byte Unsigned Fixed Width Integer
  index, exec_id = dissect.exec_id(buffer, index, packet, parent)

  -- Mpid: 4 Byte Ascii String
  index, mpid = dissect.mpid(buffer, index, packet, parent)

  -- Ord Status: 1 Byte Unsigned Fixed Width Integer Enum with 10 values
  index, ord_status = dissect.ord_status(buffer, index, packet, parent)

  -- Symbol Execution Report Pending New Symbol: 6 Byte Ascii String
  index, symbol_execution_report_pending_new_symbol = dissect.symbol_execution_report_pending_new_symbol(buffer, index, packet, parent)

  -- Symbol Sfx: 6 Byte Ascii String
  index, symbol_sfx = dissect.symbol_sfx(buffer, index, packet, parent)

  -- Side: 1 Byte Unsigned Fixed Width Integer Enum with 6 values
  index, side = dissect.side(buffer, index, packet, parent)

  -- Ord Type: 1 Byte Unsigned Fixed Width Integer Enum with 4 values
  index, ord_type = dissect.ord_type(buffer, index, packet, parent)

  -- Order Qty: 4 Byte Unsigned Fixed Width Integer
  index, order_qty = dissect.order_qty(buffer, index, packet, parent)

  -- Price: 8 Byte Signed Fixed Width Integer Nullable
  index, price = dissect.price(buffer, index, packet, parent)

  -- Time In Force: 1 Byte Unsigned Fixed Width Integer Enum with 6 values
  index, time_in_force = dissect.time_in_force(buffer, index, packet, parent)

  -- Order Capacity: 1 Byte Unsigned Fixed Width Integer Enum with 4 values
  index, order_capacity = dissect.order_capacity(buffer, index, packet, parent)

  -- Cust Order Capacity: 1 Byte Unsigned Fixed Width Integer Enum with 3 values
  index, cust_order_capacity = dissect.cust_order_capacity(buffer, index, packet, parent)

  -- Exec Inst: Struct of 4 fields
  index, exec_inst = dissect.exec_inst(buffer, index, packet, parent)

  -- Peg Offset Value: 8 Byte Signed Fixed Width Integer Nullable
  index, peg_offset_value = dissect.peg_offset_value(buffer, index, packet, parent)

  -- Peg Price Type: 1 Byte Unsigned Fixed Width Integer Enum with 4 values
  index, peg_price_type = dissect.peg_price_type(buffer, index, packet, parent)

  -- Expire Time: 8 Byte Unsigned Fixed Width Integer Nullable
  index, expire_time = dissect.expire_time(buffer, index, packet, parent)

  -- Min Qty: 4 Byte Unsigned Fixed Width Integer Nullable
  index, min_qty = dissect.min_qty(buffer, index, packet, parent)

  -- Display Qty: 4 Byte Unsigned Fixed Width Integer Nullable
  index, display_qty = dissect.display_qty(buffer, index, packet, parent)

  -- Display Method: 1 Byte Unsigned Fixed Width Integer Enum with 5 values
  index, display_method = dissect.display_method(buffer, index, packet, parent)

  -- Reserve Replenish Timing: 1 Byte Unsigned Fixed Width Integer Enum with 4 values
  index, reserve_replenish_timing = dissect.reserve_replenish_timing(buffer, index, packet, parent)

  -- Display Min Incr: 4 Byte Unsigned Fixed Width Integer Nullable
  index, display_min_incr = dissect.display_min_incr(buffer, index, packet, parent)

  -- Locate Reqd: 1 Byte Ascii String Nullable
  index, locate_reqd = dissect.locate_reqd(buffer, index, packet, parent)

  -- Reprice Frequency: 1 Byte Unsigned Fixed Width Integer Enum with 5 values
  index, reprice_frequency = dissect.reprice_frequency(buffer, index, packet, parent)

  -- Reprice Behavior: 1 Byte Unsigned Fixed Width Integer Enum with 4 values
  index, reprice_behavior = dissect.reprice_behavior(buffer, index, packet, parent)

  -- Cancel Group Id: 2 Byte Unsigned Fixed Width Integer Nullable
  index, cancel_group_id = dissect.cancel_group_id(buffer, index, packet, parent)

  -- Stp Group Id: 2 Byte Unsigned Fixed Width Integer Nullable
  index, stp_group_id = dissect.stp_group_id(buffer, index, packet, parent)

  -- Self Trade Prevention: 1 Byte Unsigned Fixed Width Integer Enum with 7 values
  index, self_trade_prevention = dissect.self_trade_prevention(buffer, index, packet, parent)

  -- Risk Group Id: 2 Byte Unsigned Fixed Width Integer Nullable
  index, risk_group_id = dissect.risk_group_id(buffer, index, packet, parent)

  -- Leaves Qty: 4 Byte Unsigned Fixed Width Integer
  index, leaves_qty = dissect.leaves_qty(buffer, index, packet, parent)

  -- Cum Qty: 4 Byte Unsigned Fixed Width Integer
  index, cum_qty = dissect.cum_qty(buffer, index, packet, parent)

  -- Lnk Id: 4 Byte Ascii String
  index, lnk_id = dissect.lnk_id(buffer, index, packet, parent)

  return index
end

-- Dissect: Execution Report Pending New Message
dissect.execution_report_pending_new_message = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.execution_report_pending_new_message then
    local length = size_of.execution_report_pending_new_message(buffer, offset)
    local range = buffer(offset, length)
    local display = display.execution_report_pending_new_message(buffer, packet, parent)
    parent = parent:add(memx_equities_memo_sbe_v1_9.fields.execution_report_pending_new_message, range, display)
  end

  return dissect.execution_report_pending_new_message_fields(buffer, offset, packet, parent)
end

-- Size: Symbol Mass Cancel Request Symbol
size_of.symbol_mass_cancel_request_symbol = 6

-- Display: Symbol Mass Cancel Request Symbol
display.symbol_mass_cancel_request_symbol = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Symbol Mass Cancel Request Symbol: No Value"
  end

  return "Symbol Mass Cancel Request Symbol: "..value
end

-- Dissect: Symbol Mass Cancel Request Symbol
dissect.symbol_mass_cancel_request_symbol = function(buffer, offset, packet, parent)
  local length = size_of.symbol_mass_cancel_request_symbol
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

  local display = display.symbol_mass_cancel_request_symbol(value, buffer, offset, packet, parent)

  parent:add(memx_equities_memo_sbe_v1_9.fields.symbol_mass_cancel_request_symbol, range, value, display)

  return offset + length, value
end

-- Calculate size of: Mass Cancel Request Message
size_of.mass_cancel_request_message = function(buffer, offset)
  local index = 0

  index = index + size_of.cl_ord_id

  index = index + size_of.symbol_mass_cancel_request_symbol

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

  -- Symbol Mass Cancel Request Symbol: 6 Byte Ascii String
  index, symbol_mass_cancel_request_symbol = dissect.symbol_mass_cancel_request_symbol(buffer, index, packet, parent)

  -- Symbol Sfx: 6 Byte Ascii String
  index, symbol_sfx = dissect.symbol_sfx(buffer, index, packet, parent)

  -- Side: 1 Byte Unsigned Fixed Width Integer Enum with 6 values
  index, side = dissect.side(buffer, index, packet, parent)

  -- Lower Than Price: 8 Byte Signed Fixed Width Integer Nullable
  index, lower_than_price = dissect.lower_than_price(buffer, index, packet, parent)

  -- Higher Than Price: 8 Byte Signed Fixed Width Integer Nullable
  index, higher_than_price = dissect.higher_than_price(buffer, index, packet, parent)

  -- Cancel Group Id: 2 Byte Unsigned Fixed Width Integer Nullable
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
    parent = parent:add(memx_equities_memo_sbe_v1_9.fields.mass_cancel_request_message, range, display)
  end

  return dissect.mass_cancel_request_message_fields(buffer, offset, packet, parent)
end

-- Size: Symbol Order Cancel Request Symbol
size_of.symbol_order_cancel_request_symbol = 6

-- Display: Symbol Order Cancel Request Symbol
display.symbol_order_cancel_request_symbol = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Symbol Order Cancel Request Symbol: No Value"
  end

  return "Symbol Order Cancel Request Symbol: "..value
end

-- Dissect: Symbol Order Cancel Request Symbol
dissect.symbol_order_cancel_request_symbol = function(buffer, offset, packet, parent)
  local length = size_of.symbol_order_cancel_request_symbol
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

  local display = display.symbol_order_cancel_request_symbol(value, buffer, offset, packet, parent)

  parent:add(memx_equities_memo_sbe_v1_9.fields.symbol_order_cancel_request_symbol, range, value, display)

  return offset + length, value
end

-- Calculate size of: Order Cancel Request Message
size_of.order_cancel_request_message = function(buffer, offset)
  local index = 0

  index = index + size_of.orig_cl_ord_id

  index = index + size_of.order_id

  index = index + size_of.cl_ord_id

  index = index + size_of.symbol_order_cancel_request_symbol

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

  -- Order Id: 8 Byte Unsigned Fixed Width Integer Nullable
  index, order_id = dissect.order_id(buffer, index, packet, parent)

  -- Cl Ord Id: 16 Byte Ascii String
  index, cl_ord_id = dissect.cl_ord_id(buffer, index, packet, parent)

  -- Symbol Order Cancel Request Symbol: 6 Byte Ascii String
  index, symbol_order_cancel_request_symbol = dissect.symbol_order_cancel_request_symbol(buffer, index, packet, parent)

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
    parent = parent:add(memx_equities_memo_sbe_v1_9.fields.order_cancel_request_message, range, display)
  end

  return dissect.order_cancel_request_message_fields(buffer, offset, packet, parent)
end

-- Size: Symbol Order Cancel Replace Request Symbol
size_of.symbol_order_cancel_replace_request_symbol = 6

-- Display: Symbol Order Cancel Replace Request Symbol
display.symbol_order_cancel_replace_request_symbol = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Symbol Order Cancel Replace Request Symbol: No Value"
  end

  return "Symbol Order Cancel Replace Request Symbol: "..value
end

-- Dissect: Symbol Order Cancel Replace Request Symbol
dissect.symbol_order_cancel_replace_request_symbol = function(buffer, offset, packet, parent)
  local length = size_of.symbol_order_cancel_replace_request_symbol
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

  local display = display.symbol_order_cancel_replace_request_symbol(value, buffer, offset, packet, parent)

  parent:add(memx_equities_memo_sbe_v1_9.fields.symbol_order_cancel_replace_request_symbol, range, value, display)

  return offset + length, value
end

-- Calculate size of: Order Cancel Replace Request Message
size_of.order_cancel_replace_request_message = function(buffer, offset)
  local index = 0

  index = index + size_of.orig_cl_ord_id

  index = index + size_of.cl_ord_id

  index = index + size_of.symbol_order_cancel_replace_request_symbol

  index = index + size_of.symbol_sfx

  index = index + size_of.side

  index = index + size_of.order_qty

  index = index + size_of.ord_type

  index = index + size_of.price

  index = index + size_of.display_qty

  index = index + size_of.locate_reqd

  index = index + size_of.lnk_id

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

  -- Symbol Order Cancel Replace Request Symbol: 6 Byte Ascii String
  index, symbol_order_cancel_replace_request_symbol = dissect.symbol_order_cancel_replace_request_symbol(buffer, index, packet, parent)

  -- Symbol Sfx: 6 Byte Ascii String
  index, symbol_sfx = dissect.symbol_sfx(buffer, index, packet, parent)

  -- Side: 1 Byte Unsigned Fixed Width Integer Enum with 6 values
  index, side = dissect.side(buffer, index, packet, parent)

  -- Order Qty: 4 Byte Unsigned Fixed Width Integer
  index, order_qty = dissect.order_qty(buffer, index, packet, parent)

  -- Ord Type: 1 Byte Unsigned Fixed Width Integer Enum with 4 values
  index, ord_type = dissect.ord_type(buffer, index, packet, parent)

  -- Price: 8 Byte Signed Fixed Width Integer Nullable
  index, price = dissect.price(buffer, index, packet, parent)

  -- Display Qty: 4 Byte Unsigned Fixed Width Integer Nullable
  index, display_qty = dissect.display_qty(buffer, index, packet, parent)

  -- Locate Reqd: 1 Byte Ascii String Nullable
  index, locate_reqd = dissect.locate_reqd(buffer, index, packet, parent)

  -- Lnk Id: 4 Byte Ascii String
  index, lnk_id = dissect.lnk_id(buffer, index, packet, parent)

  return index
end

-- Dissect: Order Cancel Replace Request Message
dissect.order_cancel_replace_request_message = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.order_cancel_replace_request_message then
    local length = size_of.order_cancel_replace_request_message(buffer, offset)
    local range = buffer(offset, length)
    local display = display.order_cancel_replace_request_message(buffer, packet, parent)
    parent = parent:add(memx_equities_memo_sbe_v1_9.fields.order_cancel_replace_request_message, range, display)
  end

  return dissect.order_cancel_replace_request_message_fields(buffer, offset, packet, parent)
end

-- Size: Symbol New Order Single Symbol
size_of.symbol_new_order_single_symbol = 6

-- Display: Symbol New Order Single Symbol
display.symbol_new_order_single_symbol = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Symbol New Order Single Symbol: No Value"
  end

  return "Symbol New Order Single Symbol: "..value
end

-- Dissect: Symbol New Order Single Symbol
dissect.symbol_new_order_single_symbol = function(buffer, offset, packet, parent)
  local length = size_of.symbol_new_order_single_symbol
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

  local display = display.symbol_new_order_single_symbol(value, buffer, offset, packet, parent)

  parent:add(memx_equities_memo_sbe_v1_9.fields.symbol_new_order_single_symbol, range, value, display)

  return offset + length, value
end

-- Calculate size of: New Order Single Message
size_of.new_order_single_message = function(buffer, offset)
  local index = 0

  index = index + size_of.cl_ord_id

  index = index + size_of.mpid

  index = index + size_of.symbol_new_order_single_symbol

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

  index = index + size_of.lnk_id

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

  -- Symbol New Order Single Symbol: 6 Byte Ascii String
  index, symbol_new_order_single_symbol = dissect.symbol_new_order_single_symbol(buffer, index, packet, parent)

  -- Symbol Sfx: 6 Byte Ascii String
  index, symbol_sfx = dissect.symbol_sfx(buffer, index, packet, parent)

  -- Side: 1 Byte Unsigned Fixed Width Integer Enum with 6 values
  index, side = dissect.side(buffer, index, packet, parent)

  -- Order Qty: 4 Byte Unsigned Fixed Width Integer
  index, order_qty = dissect.order_qty(buffer, index, packet, parent)

  -- Ord Type: 1 Byte Unsigned Fixed Width Integer Enum with 4 values
  index, ord_type = dissect.ord_type(buffer, index, packet, parent)

  -- Price: 8 Byte Signed Fixed Width Integer Nullable
  index, price = dissect.price(buffer, index, packet, parent)

  -- Time In Force: 1 Byte Unsigned Fixed Width Integer Enum with 6 values
  index, time_in_force = dissect.time_in_force(buffer, index, packet, parent)

  -- Order Capacity: 1 Byte Unsigned Fixed Width Integer Enum with 4 values
  index, order_capacity = dissect.order_capacity(buffer, index, packet, parent)

  -- Cust Order Capacity: 1 Byte Unsigned Fixed Width Integer Enum with 3 values
  index, cust_order_capacity = dissect.cust_order_capacity(buffer, index, packet, parent)

  -- Exec Inst: Struct of 4 fields
  index, exec_inst = dissect.exec_inst(buffer, index, packet, parent)

  -- Peg Offset Value: 8 Byte Signed Fixed Width Integer Nullable
  index, peg_offset_value = dissect.peg_offset_value(buffer, index, packet, parent)

  -- Peg Price Type: 1 Byte Unsigned Fixed Width Integer Enum with 4 values
  index, peg_price_type = dissect.peg_price_type(buffer, index, packet, parent)

  -- Expire Time: 8 Byte Unsigned Fixed Width Integer Nullable
  index, expire_time = dissect.expire_time(buffer, index, packet, parent)

  -- Min Qty: 4 Byte Unsigned Fixed Width Integer Nullable
  index, min_qty = dissect.min_qty(buffer, index, packet, parent)

  -- Display Qty: 4 Byte Unsigned Fixed Width Integer Nullable
  index, display_qty = dissect.display_qty(buffer, index, packet, parent)

  -- Display Method: 1 Byte Unsigned Fixed Width Integer Enum with 5 values
  index, display_method = dissect.display_method(buffer, index, packet, parent)

  -- Reserve Replenish Timing: 1 Byte Unsigned Fixed Width Integer Enum with 4 values
  index, reserve_replenish_timing = dissect.reserve_replenish_timing(buffer, index, packet, parent)

  -- Display Min Incr: 4 Byte Unsigned Fixed Width Integer Nullable
  index, display_min_incr = dissect.display_min_incr(buffer, index, packet, parent)

  -- Locate Reqd: 1 Byte Ascii String Nullable
  index, locate_reqd = dissect.locate_reqd(buffer, index, packet, parent)

  -- Reprice Frequency: 1 Byte Unsigned Fixed Width Integer Enum with 5 values
  index, reprice_frequency = dissect.reprice_frequency(buffer, index, packet, parent)

  -- Reprice Behavior: 1 Byte Unsigned Fixed Width Integer Enum with 4 values
  index, reprice_behavior = dissect.reprice_behavior(buffer, index, packet, parent)

  -- Cancel Group Id: 2 Byte Unsigned Fixed Width Integer Nullable
  index, cancel_group_id = dissect.cancel_group_id(buffer, index, packet, parent)

  -- Stp Group Id: 2 Byte Unsigned Fixed Width Integer Nullable
  index, stp_group_id = dissect.stp_group_id(buffer, index, packet, parent)

  -- Self Trade Prevention: 1 Byte Unsigned Fixed Width Integer Enum with 7 values
  index, self_trade_prevention = dissect.self_trade_prevention(buffer, index, packet, parent)

  -- Risk Group Id: 2 Byte Unsigned Fixed Width Integer Nullable
  index, risk_group_id = dissect.risk_group_id(buffer, index, packet, parent)

  -- Lnk Id: 4 Byte Ascii String
  index, lnk_id = dissect.lnk_id(buffer, index, packet, parent)

  return index
end

-- Dissect: New Order Single Message
dissect.new_order_single_message = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.new_order_single_message then
    local length = size_of.new_order_single_message(buffer, offset)
    local range = buffer(offset, length)
    local display = display.new_order_single_message(buffer, packet, parent)
    parent = parent:add(memx_equities_memo_sbe_v1_9.fields.new_order_single_message, range, display)
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
  local element = parent:add(memx_equities_memo_sbe_v1_9.fields.payload, range, display)

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

  parent:add(memx_equities_memo_sbe_v1_9.fields.version, range, value, display)

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

  parent:add(memx_equities_memo_sbe_v1_9.fields.schema_id, range, value, display)

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

  parent:add(memx_equities_memo_sbe_v1_9.fields.template_id, range, value, display)

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

  parent:add(memx_equities_memo_sbe_v1_9.fields.block_length, range, value, display)

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
    parent = parent:add(memx_equities_memo_sbe_v1_9.fields.sbe_header, range, display)
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
    parent = parent:add(memx_equities_memo_sbe_v1_9.fields.sbe_message, range, display)
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
    parent = parent:add(memx_equities_memo_sbe_v1_9.fields.sequenced_message, range, display)
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

  parent:add(memx_equities_memo_sbe_v1_9.fields.total_sequence_count, range, value, display)

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
    parent = parent:add(memx_equities_memo_sbe_v1_9.fields.stream_complete_message, range, display)
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

  parent:add(memx_equities_memo_sbe_v1_9.fields.stream_reject_code, range, value, display)

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
    parent = parent:add(memx_equities_memo_sbe_v1_9.fields.stream_rejected_message, range, display)
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

  parent:add(memx_equities_memo_sbe_v1_9.fields.next_sequence_number, range, value, display)

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
    parent = parent:add(memx_equities_memo_sbe_v1_9.fields.stream_begin_message, range, display)
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

  parent:add(memx_equities_memo_sbe_v1_9.fields.message_count, range, value, display)

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
    parent = parent:add(memx_equities_memo_sbe_v1_9.fields.replay_complete_message, range, display)
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

  parent:add(memx_equities_memo_sbe_v1_9.fields.replay_reject_code, range, value, display)

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
    parent = parent:add(memx_equities_memo_sbe_v1_9.fields.replay_rejected_message, range, display)
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

  parent:add(memx_equities_memo_sbe_v1_9.fields.pending_message_count, range, value, display)

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
    parent = parent:add(memx_equities_memo_sbe_v1_9.fields.replay_begin_message, range, display)
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

  parent:add(memx_equities_memo_sbe_v1_9.fields.session_id, range, value, display)

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
    parent = parent:add(memx_equities_memo_sbe_v1_9.fields.start_of_session_message, range, display)
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

  parent:add(memx_equities_memo_sbe_v1_9.fields.login_reject_code, range, value, display)

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
    parent = parent:add(memx_equities_memo_sbe_v1_9.fields.login_rejected_message, range, display)
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
  if value == "T" then
    return "Supported Request Mode: Snapshot Mode (T)"
  end

  return "Supported Request Mode: Unknown("..value..")"
end

-- Dissect: Supported Request Mode
dissect.supported_request_mode = function(buffer, offset, packet, parent)
  local length = size_of.supported_request_mode
  local range = buffer(offset, length)
  local value = range:string()
  local display = display.supported_request_mode(value, buffer, offset, packet, parent)

  parent:add(memx_equities_memo_sbe_v1_9.fields.supported_request_mode, range, value, display)

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

  -- Supported Request Mode: 1 Byte Ascii String Enum with 3 values
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
    parent = parent:add(memx_equities_memo_sbe_v1_9.fields.login_accepted_message, range, display)
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
    parent = parent:add(memx_equities_memo_sbe_v1_9.fields.unsequenced_message, range, display)
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
    parent = parent:add(memx_equities_memo_sbe_v1_9.fields.stream_request_message, range, display)
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
    parent = parent:add(memx_equities_memo_sbe_v1_9.fields.replay_all_request_message, range, display)
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

  parent:add(memx_equities_memo_sbe_v1_9.fields.count, range, value, display)

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
    parent = parent:add(memx_equities_memo_sbe_v1_9.fields.replay_request_message, range, display)
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

  parent:add(memx_equities_memo_sbe_v1_9.fields.token, range, value, display)

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

  parent:add(memx_equities_memo_sbe_v1_9.fields.token_type, range, value, display)

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
    parent = parent:add(memx_equities_memo_sbe_v1_9.fields.login_request_message, range, display)
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
  local element = parent:add(memx_equities_memo_sbe_v1_9.fields.data, range, display)

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

  parent:add(memx_equities_memo_sbe_v1_9.fields.message_length, range, value, display)

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

  parent:add(memx_equities_memo_sbe_v1_9.fields.message_type, range, value, display)

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
    parent = parent:add(memx_equities_memo_sbe_v1_9.fields.common_header, range, display)
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
function memx_equities_memo_sbe_v1_9.init()
end

-- Dissector for Memx Equities Memo Sbe 1.9
function memx_equities_memo_sbe_v1_9.dissector(buffer, packet, parent)

  -- Set protocol name
  packet.cols.protocol = memx_equities_memo_sbe_v1_9.name

  -- Dissect protocol
  local protocol = parent:add(memx_equities_memo_sbe_v1_9, buffer(), memx_equities_memo_sbe_v1_9.description, "("..buffer:len().." Bytes)")
  return dissect.packet(buffer, packet, protocol)
end

-- Register With Tcp Table
local tcp_table = DissectorTable.get("tcp.port")
tcp_table:add(65333, memx_equities_memo_sbe_v1_9)


-----------------------------------------------------------------------
-- Protocol Heuristics
-----------------------------------------------------------------------

-- Verify size of packet
verify.memx_equities_memo_sbe_v1_9_packet_size = function(buffer)

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

  if value == 265 then
    return true
  end

  return false
end

-- Verify Schema Id Field
verify.schema_id = function(buffer)
  -- Attempt to read field
  local value = buffer(1526, 1):uint()

  if value == 1 then
    return true
  end

  return false
end

-- Verify Version Field
verify.version = function(buffer)
  -- Attempt to read field
  local value = buffer(1527, 2):uint()

  if value == 265 then
    return true
  end

  return false
end

-- Dissector Heuristic for Memx Equities Memo Sbe 1.9
local function memx_equities_memo_sbe_v1_9_heuristic(buffer, packet, parent)
  -- Verify packet length
  if not verify.memx_equities_memo_sbe_v1_9_packet_size(buffer) then return false end

  -- Verify Schema Id
  if not verify.schema_id(buffer) then return false end

  -- Verify Version
  if not verify.version(buffer) then return false end

  -- Verify Schema Id
  if not verify.schema_id(buffer) then return false end

  -- Verify Version
  if not verify.version(buffer) then return false end

  -- Protocol is valid, set conversation and dissect this packet
  packet.conversation = memx_equities_memo_sbe_v1_9
  memx_equities_memo_sbe_v1_9.dissector(buffer, packet, parent)

  return true
end

-- Register Heuristic for Memx Equities Memo Sbe 1.9
memx_equities_memo_sbe_v1_9:register_heuristic("tcp", memx_equities_memo_sbe_v1_9_heuristic)

-----------------------------------------------------------------------
-- Lua dissectors are an easily edited and modified cross platform dissection solution.
-- Feel free to modify. Enjoy.
-----------------------------------------------------------------------
-- 
-- Protocol:
--   Organization: Members Exchange
--   Version: 1.9
--   Date: Wednesday, May 25, 2022
--   Specification: MEMO SBE-v1_9.pdf
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
