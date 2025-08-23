-----------------------------------------------------------------------
-- Lua Script Wireshark Dissector
-- 
-- Please see end of file for rules and regulations
-----------------------------------------------------------------------

-- 24X Equities Memo Sbe 1.13 Protocol
local n24x_equities_memo_sbe_v1_13 = Proto("24X.Equities.Memo.Sbe.v1.13.Lua", "24X Equities Memo Sbe 1.13")

-- Component Tables
local show = {}
local format = {}
local n24x_equities_memo_sbe_v1_13_display = {}
local n24x_equities_memo_sbe_v1_13_dissect = {}
local n24x_equities_memo_sbe_v1_13_size_of = {}
local verify = {}
local translate = {}

-----------------------------------------------------------------------
-- Declare Protocol Fields
-----------------------------------------------------------------------

-- 24X Equities Memo Sbe 1.13 Fields
n24x_equities_memo_sbe_v1_13.fields.block_length = ProtoField.new("Block Length", "24x.equities.memo.sbe.v1.13.blocklength", ftypes.UINT16)
n24x_equities_memo_sbe_v1_13.fields.block_length_uint_8 = ProtoField.new("Block Length uint 8", "24x.equities.memo.sbe.v1.13.blocklengthuint8", ftypes.UINT8)
n24x_equities_memo_sbe_v1_13.fields.cancel_group_id = ProtoField.new("Cancel Group Id", "24x.equities.memo.sbe.v1.13.cancelgroupid", ftypes.UINT16)
n24x_equities_memo_sbe_v1_13.fields.cancel_reason = ProtoField.new("Cancel Reason", "24x.equities.memo.sbe.v1.13.cancelreason", ftypes.UINT8)
n24x_equities_memo_sbe_v1_13.fields.clordid = ProtoField.new("ClOrdId", "24x.equities.memo.sbe.v1.13.clordid", ftypes.STRING)
n24x_equities_memo_sbe_v1_13.fields.common_header = ProtoField.new("Common Header", "24x.equities.memo.sbe.v1.13.commonheader", ftypes.STRING)
n24x_equities_memo_sbe_v1_13.fields.count = ProtoField.new("Count", "24x.equities.memo.sbe.v1.13.count", ftypes.UINT32)
n24x_equities_memo_sbe_v1_13.fields.cum_qty = ProtoField.new("Cum Qty", "24x.equities.memo.sbe.v1.13.cumqty", ftypes.UINT32)
n24x_equities_memo_sbe_v1_13.fields.cust_order_capacity_cust_order_capacity_type = ProtoField.new("Cust Order Capacity Cust Order Capacity Type", "24x.equities.memo.sbe.v1.13.custordercapacitycustordercapacitytype", ftypes.UINT8)
n24x_equities_memo_sbe_v1_13.fields.cust_order_capacity_cust_order_capacity_type_optional = ProtoField.new("Cust Order Capacity Cust Order Capacity Type optional", "24x.equities.memo.sbe.v1.13.custordercapacitycustordercapacitytypeoptional", ftypes.UINT8)
n24x_equities_memo_sbe_v1_13.fields.cxl_rej_reason = ProtoField.new("Cxl Rej Reason", "24x.equities.memo.sbe.v1.13.cxlrejreason", ftypes.UINT8)
n24x_equities_memo_sbe_v1_13.fields.cxl_rej_response_to = ProtoField.new("Cxl Rej Response To", "24x.equities.memo.sbe.v1.13.cxlrejresponseto", ftypes.STRING)
n24x_equities_memo_sbe_v1_13.fields.data = ProtoField.new("Data", "24x.equities.memo.sbe.v1.13.data", ftypes.STRING)
n24x_equities_memo_sbe_v1_13.fields.display_method = ProtoField.new("Display Method", "24x.equities.memo.sbe.v1.13.displaymethod", ftypes.STRING)
n24x_equities_memo_sbe_v1_13.fields.display_min_incr = ProtoField.new("Display Min Incr", "24x.equities.memo.sbe.v1.13.displayminincr", ftypes.UINT32)
n24x_equities_memo_sbe_v1_13.fields.display_qty = ProtoField.new("Display Qty", "24x.equities.memo.sbe.v1.13.displayqty", ftypes.UINT32)
n24x_equities_memo_sbe_v1_13.fields.exec_id = ProtoField.new("Exec Id", "24x.equities.memo.sbe.v1.13.execid", ftypes.UINT64)
n24x_equities_memo_sbe_v1_13.fields.exec_inst = ProtoField.new("Exec Inst", "24x.equities.memo.sbe.v1.13.execinst", ftypes.STRING)
n24x_equities_memo_sbe_v1_13.fields.exec_ref_id = ProtoField.new("Exec Ref Id", "24x.equities.memo.sbe.v1.13.execrefid", ftypes.UINT64)
n24x_equities_memo_sbe_v1_13.fields.exec_restatement_reason = ProtoField.new("Exec Restatement Reason", "24x.equities.memo.sbe.v1.13.execrestatementreason", ftypes.UINT8)
n24x_equities_memo_sbe_v1_13.fields.expire_time = ProtoField.new("Expire Time", "24x.equities.memo.sbe.v1.13.expiretime", ftypes.UINT64)
n24x_equities_memo_sbe_v1_13.fields.extended_restatement_reason = ProtoField.new("Extended Restatement Reason", "24x.equities.memo.sbe.v1.13.extendedrestatementreason", ftypes.UINT8)
n24x_equities_memo_sbe_v1_13.fields.external_routing_not_allowed = ProtoField.new("External Routing Not Allowed", "24x.equities.memo.sbe.v1.13.externalroutingnotallowed", ftypes.UINT16, {[1]="Yes",[0]="No"}, base.DEC, 0x0004)
n24x_equities_memo_sbe_v1_13.fields.higher_than_price = ProtoField.new("Higher Than Price", "24x.equities.memo.sbe.v1.13.higherthanprice", ftypes.DOUBLE)
n24x_equities_memo_sbe_v1_13.fields.intermarket_sweep = ProtoField.new("Intermarket Sweep", "24x.equities.memo.sbe.v1.13.intermarketsweep", ftypes.UINT16, {[1]="Yes",[0]="No"}, base.DEC, 0x0002)
n24x_equities_memo_sbe_v1_13.fields.last_liquidity_ind = ProtoField.new("Last Liquidity Ind", "24x.equities.memo.sbe.v1.13.lastliquidityind", ftypes.UINT8)
n24x_equities_memo_sbe_v1_13.fields.last_mkt = ProtoField.new("Last Mkt", "24x.equities.memo.sbe.v1.13.lastmkt", ftypes.STRING)
n24x_equities_memo_sbe_v1_13.fields.last_px = ProtoField.new("Last Px", "24x.equities.memo.sbe.v1.13.lastpx", ftypes.DOUBLE)
n24x_equities_memo_sbe_v1_13.fields.last_px_optional = ProtoField.new("Last Px Optional", "24x.equities.memo.sbe.v1.13.lastpxoptional", ftypes.DOUBLE)
n24x_equities_memo_sbe_v1_13.fields.last_qty = ProtoField.new("Last Qty", "24x.equities.memo.sbe.v1.13.lastqty", ftypes.UINT32)
n24x_equities_memo_sbe_v1_13.fields.last_qty_optional = ProtoField.new("Last Qty Optional", "24x.equities.memo.sbe.v1.13.lastqtyoptional", ftypes.UINT32)
n24x_equities_memo_sbe_v1_13.fields.last_shares = ProtoField.new("Last Shares", "24x.equities.memo.sbe.v1.13.lastshares", ftypes.UINT32)
n24x_equities_memo_sbe_v1_13.fields.leaves_qty = ProtoField.new("Leaves Qty", "24x.equities.memo.sbe.v1.13.leavesqty", ftypes.UINT32)
n24x_equities_memo_sbe_v1_13.fields.link_id_optional = ProtoField.new("Link Id Optional", "24x.equities.memo.sbe.v1.13.linkidoptional", ftypes.STRING)
n24x_equities_memo_sbe_v1_13.fields.locate_broker_optional = ProtoField.new("Locate Broker Optional", "24x.equities.memo.sbe.v1.13.locatebrokeroptional", ftypes.STRING)
n24x_equities_memo_sbe_v1_13.fields.locate_reqd = ProtoField.new("Locate Reqd", "24x.equities.memo.sbe.v1.13.locatereqd", ftypes.STRING)
n24x_equities_memo_sbe_v1_13.fields.login_accepted_message = ProtoField.new("Login Accepted Message", "24x.equities.memo.sbe.v1.13.loginacceptedmessage", ftypes.STRING)
n24x_equities_memo_sbe_v1_13.fields.login_reject_code = ProtoField.new("Login Reject Code", "24x.equities.memo.sbe.v1.13.loginrejectcode", ftypes.STRING)
n24x_equities_memo_sbe_v1_13.fields.login_rejected_message = ProtoField.new("Login Rejected Message", "24x.equities.memo.sbe.v1.13.loginrejectedmessage", ftypes.STRING)
n24x_equities_memo_sbe_v1_13.fields.login_request_message = ProtoField.new("Login Request Message", "24x.equities.memo.sbe.v1.13.loginrequestmessage", ftypes.STRING)
n24x_equities_memo_sbe_v1_13.fields.lower_than_price = ProtoField.new("Lower Than Price", "24x.equities.memo.sbe.v1.13.lowerthanprice", ftypes.DOUBLE)
n24x_equities_memo_sbe_v1_13.fields.mass_cancel_reject_reason = ProtoField.new("Mass Cancel Reject Reason", "24x.equities.memo.sbe.v1.13.masscancelrejectreason", ftypes.UINT8)
n24x_equities_memo_sbe_v1_13.fields.message_count = ProtoField.new("Message Count", "24x.equities.memo.sbe.v1.13.messagecount", ftypes.UINT64)
n24x_equities_memo_sbe_v1_13.fields.message_length = ProtoField.new("Message Length", "24x.equities.memo.sbe.v1.13.messagelength", ftypes.UINT16)
n24x_equities_memo_sbe_v1_13.fields.message_type = ProtoField.new("Message Type", "24x.equities.memo.sbe.v1.13.messagetype", ftypes.UINT8)
n24x_equities_memo_sbe_v1_13.fields.min_qty = ProtoField.new("Min Qty", "24x.equities.memo.sbe.v1.13.minqty", ftypes.UINT32)
n24x_equities_memo_sbe_v1_13.fields.next_sequence_number = ProtoField.new("Next Sequence Number", "24x.equities.memo.sbe.v1.13.nextsequencenumber", ftypes.UINT64)
n24x_equities_memo_sbe_v1_13.fields.num_in_group = ProtoField.new("Num In Group", "24x.equities.memo.sbe.v1.13.numingroup", ftypes.UINT8)
n24x_equities_memo_sbe_v1_13.fields.ord_status = ProtoField.new("Ord Status", "24x.equities.memo.sbe.v1.13.ordstatus", ftypes.STRING)
n24x_equities_memo_sbe_v1_13.fields.ord_type = ProtoField.new("Ord Type", "24x.equities.memo.sbe.v1.13.ordtype", ftypes.STRING)
n24x_equities_memo_sbe_v1_13.fields.order_capacity = ProtoField.new("Order Capacity", "24x.equities.memo.sbe.v1.13.ordercapacity", ftypes.STRING)
n24x_equities_memo_sbe_v1_13.fields.order_id = ProtoField.new("Order Id", "24x.equities.memo.sbe.v1.13.orderid", ftypes.UINT64)
n24x_equities_memo_sbe_v1_13.fields.order_id_optional = ProtoField.new("Order Id Optional", "24x.equities.memo.sbe.v1.13.orderidoptional", ftypes.UINT64)
n24x_equities_memo_sbe_v1_13.fields.order_qty = ProtoField.new("Order Qty", "24x.equities.memo.sbe.v1.13.orderqty", ftypes.UINT32)
n24x_equities_memo_sbe_v1_13.fields.order_reject_reason = ProtoField.new("Order Reject Reason", "24x.equities.memo.sbe.v1.13.orderrejectreason", ftypes.UINT8)
n24x_equities_memo_sbe_v1_13.fields.origclordid = ProtoField.new("OrigClOrdId", "24x.equities.memo.sbe.v1.13.origclordid", ftypes.STRING)
n24x_equities_memo_sbe_v1_13.fields.origclordid_optional = ProtoField.new("OrigClOrdId Optional", "24x.equities.memo.sbe.v1.13.origclordidoptional", ftypes.STRING)
n24x_equities_memo_sbe_v1_13.fields.packet = ProtoField.new("Packet", "24x.equities.memo.sbe.v1.13.packet", ftypes.STRING)
n24x_equities_memo_sbe_v1_13.fields.participate_do_not_initiate = ProtoField.new("Participate Do Not Initiate", "24x.equities.memo.sbe.v1.13.participatedonotinitiate", ftypes.UINT16, {[1]="Yes",[0]="No"}, base.DEC, 0x0001)
n24x_equities_memo_sbe_v1_13.fields.parties_group = ProtoField.new("Parties Group", "24x.equities.memo.sbe.v1.13.partiesgroup", ftypes.STRING)
n24x_equities_memo_sbe_v1_13.fields.parties_groups = ProtoField.new("Parties Groups", "24x.equities.memo.sbe.v1.13.partiesgroups", ftypes.STRING)
n24x_equities_memo_sbe_v1_13.fields.party_i_d_new_order_single_party_id = ProtoField.new("Party I D New Order Single Party Id", "24x.equities.memo.sbe.v1.13.partyidnewordersinglepartyid", ftypes.STRING)
n24x_equities_memo_sbe_v1_13.fields.party_id_source = ProtoField.new("Party Id Source", "24x.equities.memo.sbe.v1.13.partyidsource", ftypes.STRING)
n24x_equities_memo_sbe_v1_13.fields.party_role = ProtoField.new("Party Role", "24x.equities.memo.sbe.v1.13.partyrole", ftypes.UINT8)
n24x_equities_memo_sbe_v1_13.fields.payload = ProtoField.new("Payload", "24x.equities.memo.sbe.v1.13.payload", ftypes.STRING)
n24x_equities_memo_sbe_v1_13.fields.peg_offset_value = ProtoField.new("Peg Offset Value", "24x.equities.memo.sbe.v1.13.pegoffsetvalue", ftypes.DOUBLE)
n24x_equities_memo_sbe_v1_13.fields.peg_price_type = ProtoField.new("Peg Price Type", "24x.equities.memo.sbe.v1.13.pegpricetype", ftypes.UINT8)
n24x_equities_memo_sbe_v1_13.fields.pending_message_count = ProtoField.new("Pending Message Count", "24x.equities.memo.sbe.v1.13.pendingmessagecount", ftypes.UINT32)
n24x_equities_memo_sbe_v1_13.fields.price = ProtoField.new("Price", "24x.equities.memo.sbe.v1.13.price", ftypes.DOUBLE)
n24x_equities_memo_sbe_v1_13.fields.repeating_group_dimensions = ProtoField.new("Repeating Group Dimensions", "24x.equities.memo.sbe.v1.13.repeatinggroupdimensions", ftypes.STRING)
n24x_equities_memo_sbe_v1_13.fields.replay_all_request_message = ProtoField.new("Replay All Request Message", "24x.equities.memo.sbe.v1.13.replayallrequestmessage", ftypes.STRING)
n24x_equities_memo_sbe_v1_13.fields.replay_begin_message = ProtoField.new("Replay Begin Message", "24x.equities.memo.sbe.v1.13.replaybeginmessage", ftypes.STRING)
n24x_equities_memo_sbe_v1_13.fields.replay_complete_message = ProtoField.new("Replay Complete Message", "24x.equities.memo.sbe.v1.13.replaycompletemessage", ftypes.STRING)
n24x_equities_memo_sbe_v1_13.fields.replay_reject_code = ProtoField.new("Replay Reject Code", "24x.equities.memo.sbe.v1.13.replayrejectcode", ftypes.STRING)
n24x_equities_memo_sbe_v1_13.fields.replay_rejected_message = ProtoField.new("Replay Rejected Message", "24x.equities.memo.sbe.v1.13.replayrejectedmessage", ftypes.STRING)
n24x_equities_memo_sbe_v1_13.fields.replay_request_message = ProtoField.new("Replay Request Message", "24x.equities.memo.sbe.v1.13.replayrequestmessage", ftypes.STRING)
n24x_equities_memo_sbe_v1_13.fields.reprice_behavior = ProtoField.new("Reprice Behavior", "24x.equities.memo.sbe.v1.13.repricebehavior", ftypes.UINT8)
n24x_equities_memo_sbe_v1_13.fields.reprice_frequency = ProtoField.new("Reprice Frequency", "24x.equities.memo.sbe.v1.13.repricefrequency", ftypes.UINT8)
n24x_equities_memo_sbe_v1_13.fields.reserve_replenish_timing = ProtoField.new("Reserve Replenish Timing", "24x.equities.memo.sbe.v1.13.reservereplenishtiming", ftypes.UINT8)
n24x_equities_memo_sbe_v1_13.fields.reserved_13 = ProtoField.new("Reserved 13", "24x.equities.memo.sbe.v1.13.reserved13", ftypes.UINT16, nil, base.DEC, 0xFFF8)
n24x_equities_memo_sbe_v1_13.fields.risk_group_id = ProtoField.new("Risk Group Id", "24x.equities.memo.sbe.v1.13.riskgroupid", ftypes.UINT16)
n24x_equities_memo_sbe_v1_13.fields.sbe_header = ProtoField.new("Sbe Header", "24x.equities.memo.sbe.v1.13.sbeheader", ftypes.STRING)
n24x_equities_memo_sbe_v1_13.fields.sbe_message = ProtoField.new("Sbe Message", "24x.equities.memo.sbe.v1.13.sbemessage", ftypes.STRING)
n24x_equities_memo_sbe_v1_13.fields.schema_id = ProtoField.new("Schema Id", "24x.equities.memo.sbe.v1.13.schemaid", ftypes.UINT8)
n24x_equities_memo_sbe_v1_13.fields.security_group = ProtoField.new("Security Group", "24x.equities.memo.sbe.v1.13.securitygroup", ftypes.STRING)
n24x_equities_memo_sbe_v1_13.fields.self_trade_prevention = ProtoField.new("Self Trade Prevention", "24x.equities.memo.sbe.v1.13.selftradeprevention", ftypes.UINT8)
n24x_equities_memo_sbe_v1_13.fields.sending_time = ProtoField.new("Sending Time", "24x.equities.memo.sbe.v1.13.sendingtime", ftypes.UINT64)
n24x_equities_memo_sbe_v1_13.fields.sequenced_message = ProtoField.new("Sequenced Message", "24x.equities.memo.sbe.v1.13.sequencedmessage", ftypes.STRING)
n24x_equities_memo_sbe_v1_13.fields.session_id = ProtoField.new("Session Id", "24x.equities.memo.sbe.v1.13.sessionid", ftypes.UINT64)
n24x_equities_memo_sbe_v1_13.fields.side = ProtoField.new("Side", "24x.equities.memo.sbe.v1.13.side", ftypes.STRING)
n24x_equities_memo_sbe_v1_13.fields.side_optional = ProtoField.new("Side Optional", "24x.equities.memo.sbe.v1.13.sideoptional", ftypes.STRING)
n24x_equities_memo_sbe_v1_13.fields.start_of_session_message = ProtoField.new("Start Of Session Message", "24x.equities.memo.sbe.v1.13.startofsessionmessage", ftypes.STRING)
n24x_equities_memo_sbe_v1_13.fields.stp_group_id = ProtoField.new("Stp Group Id", "24x.equities.memo.sbe.v1.13.stpgroupid", ftypes.UINT16)
n24x_equities_memo_sbe_v1_13.fields.stream_begin_message = ProtoField.new("Stream Begin Message", "24x.equities.memo.sbe.v1.13.streambeginmessage", ftypes.STRING)
n24x_equities_memo_sbe_v1_13.fields.stream_complete_message = ProtoField.new("Stream Complete Message", "24x.equities.memo.sbe.v1.13.streamcompletemessage", ftypes.STRING)
n24x_equities_memo_sbe_v1_13.fields.stream_reject_code = ProtoField.new("Stream Reject Code", "24x.equities.memo.sbe.v1.13.streamrejectcode", ftypes.STRING)
n24x_equities_memo_sbe_v1_13.fields.stream_rejected_message = ProtoField.new("Stream Rejected Message", "24x.equities.memo.sbe.v1.13.streamrejectedmessage", ftypes.STRING)
n24x_equities_memo_sbe_v1_13.fields.stream_request_message = ProtoField.new("Stream Request Message", "24x.equities.memo.sbe.v1.13.streamrequestmessage", ftypes.STRING)
n24x_equities_memo_sbe_v1_13.fields.supported_request_mode = ProtoField.new("Supported Request Mode", "24x.equities.memo.sbe.v1.13.supportedrequestmode", ftypes.STRING)
n24x_equities_memo_sbe_v1_13.fields.symbol = ProtoField.new("Symbol", "24x.equities.memo.sbe.v1.13.symbol", ftypes.STRING)
n24x_equities_memo_sbe_v1_13.fields.symbol_sfx = ProtoField.new("Symbol Sfx", "24x.equities.memo.sbe.v1.13.symbolsfx", ftypes.STRING)
n24x_equities_memo_sbe_v1_13.fields.template_id = ProtoField.new("Template Id", "24x.equities.memo.sbe.v1.13.templateid", ftypes.UINT8)
n24x_equities_memo_sbe_v1_13.fields.time_in_force = ProtoField.new("Time In Force", "24x.equities.memo.sbe.v1.13.timeinforce", ftypes.STRING)
n24x_equities_memo_sbe_v1_13.fields.token = ProtoField.new("Token", "24x.equities.memo.sbe.v1.13.token", ftypes.STRING)
n24x_equities_memo_sbe_v1_13.fields.token_type = ProtoField.new("Token Type", "24x.equities.memo.sbe.v1.13.tokentype", ftypes.STRING)
n24x_equities_memo_sbe_v1_13.fields.total_sequence_count = ProtoField.new("Total Sequence Count", "24x.equities.memo.sbe.v1.13.totalsequencecount", ftypes.UINT64)
n24x_equities_memo_sbe_v1_13.fields.transact_time = ProtoField.new("Transact Time", "24x.equities.memo.sbe.v1.13.transacttime", ftypes.UINT64)
n24x_equities_memo_sbe_v1_13.fields.trd_match_id = ProtoField.new("Trd Match Id", "24x.equities.memo.sbe.v1.13.trdmatchid", ftypes.UINT64)
n24x_equities_memo_sbe_v1_13.fields.trd_matching_id = ProtoField.new("Trd Matching Id", "24x.equities.memo.sbe.v1.13.trdmatchingid", ftypes.UINT64)
n24x_equities_memo_sbe_v1_13.fields.unsequenced_message = ProtoField.new("Unsequenced Message", "24x.equities.memo.sbe.v1.13.unsequencedmessage", ftypes.STRING)
n24x_equities_memo_sbe_v1_13.fields.version = ProtoField.new("Version", "24x.equities.memo.sbe.v1.13.version", ftypes.UINT16)

-- 24X Equities Memo Sbe 1.13 messages
n24x_equities_memo_sbe_v1_13.fields.execution_report_canceled_message = ProtoField.new("Execution Report Canceled Message", "24x.equities.memo.sbe.v1.13.executionreportcanceledmessage", ftypes.STRING)
n24x_equities_memo_sbe_v1_13.fields.execution_report_new_message = ProtoField.new("Execution Report New Message", "24x.equities.memo.sbe.v1.13.executionreportnewmessage", ftypes.STRING)
n24x_equities_memo_sbe_v1_13.fields.execution_report_pending_cancel_message = ProtoField.new("Execution Report Pending Cancel Message", "24x.equities.memo.sbe.v1.13.executionreportpendingcancelmessage", ftypes.STRING)
n24x_equities_memo_sbe_v1_13.fields.execution_report_pending_new_message = ProtoField.new("Execution Report Pending New Message", "24x.equities.memo.sbe.v1.13.executionreportpendingnewmessage", ftypes.STRING)
n24x_equities_memo_sbe_v1_13.fields.execution_report_pending_replace_message = ProtoField.new("Execution Report Pending Replace Message", "24x.equities.memo.sbe.v1.13.executionreportpendingreplacemessage", ftypes.STRING)
n24x_equities_memo_sbe_v1_13.fields.execution_report_rejected_message = ProtoField.new("Execution Report Rejected Message", "24x.equities.memo.sbe.v1.13.executionreportrejectedmessage", ftypes.STRING)
n24x_equities_memo_sbe_v1_13.fields.execution_report_replaced_message = ProtoField.new("Execution Report Replaced Message", "24x.equities.memo.sbe.v1.13.executionreportreplacedmessage", ftypes.STRING)
n24x_equities_memo_sbe_v1_13.fields.execution_report_restatement_message = ProtoField.new("Execution Report Restatement Message", "24x.equities.memo.sbe.v1.13.executionreportrestatementmessage", ftypes.STRING)
n24x_equities_memo_sbe_v1_13.fields.execution_report_trade_break_message = ProtoField.new("Execution Report Trade Break Message", "24x.equities.memo.sbe.v1.13.executionreporttradebreakmessage", ftypes.STRING)
n24x_equities_memo_sbe_v1_13.fields.execution_report_trade_correction_message = ProtoField.new("Execution Report Trade Correction Message", "24x.equities.memo.sbe.v1.13.executionreporttradecorrectionmessage", ftypes.STRING)
n24x_equities_memo_sbe_v1_13.fields.execution_report_trade_message = ProtoField.new("Execution Report Trade Message", "24x.equities.memo.sbe.v1.13.executionreporttrademessage", ftypes.STRING)
n24x_equities_memo_sbe_v1_13.fields.mass_cancel_done_message = ProtoField.new("Mass Cancel Done Message", "24x.equities.memo.sbe.v1.13.masscanceldonemessage", ftypes.STRING)
n24x_equities_memo_sbe_v1_13.fields.mass_cancel_reject_message = ProtoField.new("Mass Cancel Reject Message", "24x.equities.memo.sbe.v1.13.masscancelrejectmessage", ftypes.STRING)
n24x_equities_memo_sbe_v1_13.fields.mass_cancel_request_message = ProtoField.new("Mass Cancel Request Message", "24x.equities.memo.sbe.v1.13.masscancelrequestmessage", ftypes.STRING)
n24x_equities_memo_sbe_v1_13.fields.new_order_single_message = ProtoField.new("New Order Single Message", "24x.equities.memo.sbe.v1.13.newordersinglemessage", ftypes.STRING)
n24x_equities_memo_sbe_v1_13.fields.order_cancel_reject_message = ProtoField.new("Order Cancel Reject Message", "24x.equities.memo.sbe.v1.13.ordercancelrejectmessage", ftypes.STRING)
n24x_equities_memo_sbe_v1_13.fields.order_cancel_replace_request_message = ProtoField.new("Order Cancel Replace Request Message", "24x.equities.memo.sbe.v1.13.ordercancelreplacerequestmessage", ftypes.STRING)
n24x_equities_memo_sbe_v1_13.fields.order_cancel_request_message = ProtoField.new("Order Cancel Request Message", "24x.equities.memo.sbe.v1.13.ordercancelrequestmessage", ftypes.STRING)
n24x_equities_memo_sbe_v1_13.fields.pending_mass_cancel_message = ProtoField.new("Pending Mass Cancel Message", "24x.equities.memo.sbe.v1.13.pendingmasscancelmessage", ftypes.STRING)

-- 24X Equities Memo Sbe 1.13 generated fields
n24x_equities_memo_sbe_v1_13.fields.parties_group_index = ProtoField.new("Parties Group Index", "24x.equities.memo.sbe.v1.13.partiesgroupindex", ftypes.UINT16)

-----------------------------------------------------------------------
-- Declare Dissection Options
-----------------------------------------------------------------------

-- 24X Equities Memo Sbe 1.13 Element Dissection Options
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
show.parties_group = true
show.parties_groups = true
show.pending_mass_cancel_message = true
show.repeating_group_dimensions = true
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

-- Register 24X Equities Memo Sbe 1.13 Show Options
n24x_equities_memo_sbe_v1_13.prefs.show_common_header = Pref.bool("Show Common Header", show.common_header, "Parse and add Common Header to protocol tree")
n24x_equities_memo_sbe_v1_13.prefs.show_exec_inst = Pref.bool("Show Exec Inst", show.exec_inst, "Parse and add Exec Inst to protocol tree")
n24x_equities_memo_sbe_v1_13.prefs.show_execution_report_canceled_message = Pref.bool("Show Execution Report Canceled Message", show.execution_report_canceled_message, "Parse and add Execution Report Canceled Message to protocol tree")
n24x_equities_memo_sbe_v1_13.prefs.show_execution_report_new_message = Pref.bool("Show Execution Report New Message", show.execution_report_new_message, "Parse and add Execution Report New Message to protocol tree")
n24x_equities_memo_sbe_v1_13.prefs.show_execution_report_pending_cancel_message = Pref.bool("Show Execution Report Pending Cancel Message", show.execution_report_pending_cancel_message, "Parse and add Execution Report Pending Cancel Message to protocol tree")
n24x_equities_memo_sbe_v1_13.prefs.show_execution_report_pending_new_message = Pref.bool("Show Execution Report Pending New Message", show.execution_report_pending_new_message, "Parse and add Execution Report Pending New Message to protocol tree")
n24x_equities_memo_sbe_v1_13.prefs.show_execution_report_pending_replace_message = Pref.bool("Show Execution Report Pending Replace Message", show.execution_report_pending_replace_message, "Parse and add Execution Report Pending Replace Message to protocol tree")
n24x_equities_memo_sbe_v1_13.prefs.show_execution_report_rejected_message = Pref.bool("Show Execution Report Rejected Message", show.execution_report_rejected_message, "Parse and add Execution Report Rejected Message to protocol tree")
n24x_equities_memo_sbe_v1_13.prefs.show_execution_report_replaced_message = Pref.bool("Show Execution Report Replaced Message", show.execution_report_replaced_message, "Parse and add Execution Report Replaced Message to protocol tree")
n24x_equities_memo_sbe_v1_13.prefs.show_execution_report_restatement_message = Pref.bool("Show Execution Report Restatement Message", show.execution_report_restatement_message, "Parse and add Execution Report Restatement Message to protocol tree")
n24x_equities_memo_sbe_v1_13.prefs.show_execution_report_trade_break_message = Pref.bool("Show Execution Report Trade Break Message", show.execution_report_trade_break_message, "Parse and add Execution Report Trade Break Message to protocol tree")
n24x_equities_memo_sbe_v1_13.prefs.show_execution_report_trade_correction_message = Pref.bool("Show Execution Report Trade Correction Message", show.execution_report_trade_correction_message, "Parse and add Execution Report Trade Correction Message to protocol tree")
n24x_equities_memo_sbe_v1_13.prefs.show_execution_report_trade_message = Pref.bool("Show Execution Report Trade Message", show.execution_report_trade_message, "Parse and add Execution Report Trade Message to protocol tree")
n24x_equities_memo_sbe_v1_13.prefs.show_login_accepted_message = Pref.bool("Show Login Accepted Message", show.login_accepted_message, "Parse and add Login Accepted Message to protocol tree")
n24x_equities_memo_sbe_v1_13.prefs.show_login_rejected_message = Pref.bool("Show Login Rejected Message", show.login_rejected_message, "Parse and add Login Rejected Message to protocol tree")
n24x_equities_memo_sbe_v1_13.prefs.show_login_request_message = Pref.bool("Show Login Request Message", show.login_request_message, "Parse and add Login Request Message to protocol tree")
n24x_equities_memo_sbe_v1_13.prefs.show_mass_cancel_done_message = Pref.bool("Show Mass Cancel Done Message", show.mass_cancel_done_message, "Parse and add Mass Cancel Done Message to protocol tree")
n24x_equities_memo_sbe_v1_13.prefs.show_mass_cancel_reject_message = Pref.bool("Show Mass Cancel Reject Message", show.mass_cancel_reject_message, "Parse and add Mass Cancel Reject Message to protocol tree")
n24x_equities_memo_sbe_v1_13.prefs.show_mass_cancel_request_message = Pref.bool("Show Mass Cancel Request Message", show.mass_cancel_request_message, "Parse and add Mass Cancel Request Message to protocol tree")
n24x_equities_memo_sbe_v1_13.prefs.show_new_order_single_message = Pref.bool("Show New Order Single Message", show.new_order_single_message, "Parse and add New Order Single Message to protocol tree")
n24x_equities_memo_sbe_v1_13.prefs.show_order_cancel_reject_message = Pref.bool("Show Order Cancel Reject Message", show.order_cancel_reject_message, "Parse and add Order Cancel Reject Message to protocol tree")
n24x_equities_memo_sbe_v1_13.prefs.show_order_cancel_replace_request_message = Pref.bool("Show Order Cancel Replace Request Message", show.order_cancel_replace_request_message, "Parse and add Order Cancel Replace Request Message to protocol tree")
n24x_equities_memo_sbe_v1_13.prefs.show_order_cancel_request_message = Pref.bool("Show Order Cancel Request Message", show.order_cancel_request_message, "Parse and add Order Cancel Request Message to protocol tree")
n24x_equities_memo_sbe_v1_13.prefs.show_packet = Pref.bool("Show Packet", show.packet, "Parse and add Packet to protocol tree")
n24x_equities_memo_sbe_v1_13.prefs.show_parties_group = Pref.bool("Show Parties Group", show.parties_group, "Parse and add Parties Group to protocol tree")
n24x_equities_memo_sbe_v1_13.prefs.show_parties_groups = Pref.bool("Show Parties Groups", show.parties_groups, "Parse and add Parties Groups to protocol tree")
n24x_equities_memo_sbe_v1_13.prefs.show_pending_mass_cancel_message = Pref.bool("Show Pending Mass Cancel Message", show.pending_mass_cancel_message, "Parse and add Pending Mass Cancel Message to protocol tree")
n24x_equities_memo_sbe_v1_13.prefs.show_repeating_group_dimensions = Pref.bool("Show Repeating Group Dimensions", show.repeating_group_dimensions, "Parse and add Repeating Group Dimensions to protocol tree")
n24x_equities_memo_sbe_v1_13.prefs.show_replay_all_request_message = Pref.bool("Show Replay All Request Message", show.replay_all_request_message, "Parse and add Replay All Request Message to protocol tree")
n24x_equities_memo_sbe_v1_13.prefs.show_replay_begin_message = Pref.bool("Show Replay Begin Message", show.replay_begin_message, "Parse and add Replay Begin Message to protocol tree")
n24x_equities_memo_sbe_v1_13.prefs.show_replay_complete_message = Pref.bool("Show Replay Complete Message", show.replay_complete_message, "Parse and add Replay Complete Message to protocol tree")
n24x_equities_memo_sbe_v1_13.prefs.show_replay_rejected_message = Pref.bool("Show Replay Rejected Message", show.replay_rejected_message, "Parse and add Replay Rejected Message to protocol tree")
n24x_equities_memo_sbe_v1_13.prefs.show_replay_request_message = Pref.bool("Show Replay Request Message", show.replay_request_message, "Parse and add Replay Request Message to protocol tree")
n24x_equities_memo_sbe_v1_13.prefs.show_sbe_header = Pref.bool("Show Sbe Header", show.sbe_header, "Parse and add Sbe Header to protocol tree")
n24x_equities_memo_sbe_v1_13.prefs.show_sbe_message = Pref.bool("Show Sbe Message", show.sbe_message, "Parse and add Sbe Message to protocol tree")
n24x_equities_memo_sbe_v1_13.prefs.show_sequenced_message = Pref.bool("Show Sequenced Message", show.sequenced_message, "Parse and add Sequenced Message to protocol tree")
n24x_equities_memo_sbe_v1_13.prefs.show_start_of_session_message = Pref.bool("Show Start Of Session Message", show.start_of_session_message, "Parse and add Start Of Session Message to protocol tree")
n24x_equities_memo_sbe_v1_13.prefs.show_stream_begin_message = Pref.bool("Show Stream Begin Message", show.stream_begin_message, "Parse and add Stream Begin Message to protocol tree")
n24x_equities_memo_sbe_v1_13.prefs.show_stream_complete_message = Pref.bool("Show Stream Complete Message", show.stream_complete_message, "Parse and add Stream Complete Message to protocol tree")
n24x_equities_memo_sbe_v1_13.prefs.show_stream_rejected_message = Pref.bool("Show Stream Rejected Message", show.stream_rejected_message, "Parse and add Stream Rejected Message to protocol tree")
n24x_equities_memo_sbe_v1_13.prefs.show_stream_request_message = Pref.bool("Show Stream Request Message", show.stream_request_message, "Parse and add Stream Request Message to protocol tree")
n24x_equities_memo_sbe_v1_13.prefs.show_unsequenced_message = Pref.bool("Show Unsequenced Message", show.unsequenced_message, "Parse and add Unsequenced Message to protocol tree")
n24x_equities_memo_sbe_v1_13.prefs.show_data = Pref.bool("Show Data", show.data, "Parse and add Data to protocol tree")
n24x_equities_memo_sbe_v1_13.prefs.show_payload = Pref.bool("Show Payload", show.payload, "Parse and add Payload to protocol tree")

-- Handle changed preferences
function n24x_equities_memo_sbe_v1_13.prefs_changed()
  local changed = false

  -- Check if show options have changed
  if show.common_header ~= n24x_equities_memo_sbe_v1_13.prefs.show_common_header then
    show.common_header = n24x_equities_memo_sbe_v1_13.prefs.show_common_header
    changed = true
  end
  if show.exec_inst ~= n24x_equities_memo_sbe_v1_13.prefs.show_exec_inst then
    show.exec_inst = n24x_equities_memo_sbe_v1_13.prefs.show_exec_inst
    changed = true
  end
  if show.execution_report_canceled_message ~= n24x_equities_memo_sbe_v1_13.prefs.show_execution_report_canceled_message then
    show.execution_report_canceled_message = n24x_equities_memo_sbe_v1_13.prefs.show_execution_report_canceled_message
    changed = true
  end
  if show.execution_report_new_message ~= n24x_equities_memo_sbe_v1_13.prefs.show_execution_report_new_message then
    show.execution_report_new_message = n24x_equities_memo_sbe_v1_13.prefs.show_execution_report_new_message
    changed = true
  end
  if show.execution_report_pending_cancel_message ~= n24x_equities_memo_sbe_v1_13.prefs.show_execution_report_pending_cancel_message then
    show.execution_report_pending_cancel_message = n24x_equities_memo_sbe_v1_13.prefs.show_execution_report_pending_cancel_message
    changed = true
  end
  if show.execution_report_pending_new_message ~= n24x_equities_memo_sbe_v1_13.prefs.show_execution_report_pending_new_message then
    show.execution_report_pending_new_message = n24x_equities_memo_sbe_v1_13.prefs.show_execution_report_pending_new_message
    changed = true
  end
  if show.execution_report_pending_replace_message ~= n24x_equities_memo_sbe_v1_13.prefs.show_execution_report_pending_replace_message then
    show.execution_report_pending_replace_message = n24x_equities_memo_sbe_v1_13.prefs.show_execution_report_pending_replace_message
    changed = true
  end
  if show.execution_report_rejected_message ~= n24x_equities_memo_sbe_v1_13.prefs.show_execution_report_rejected_message then
    show.execution_report_rejected_message = n24x_equities_memo_sbe_v1_13.prefs.show_execution_report_rejected_message
    changed = true
  end
  if show.execution_report_replaced_message ~= n24x_equities_memo_sbe_v1_13.prefs.show_execution_report_replaced_message then
    show.execution_report_replaced_message = n24x_equities_memo_sbe_v1_13.prefs.show_execution_report_replaced_message
    changed = true
  end
  if show.execution_report_restatement_message ~= n24x_equities_memo_sbe_v1_13.prefs.show_execution_report_restatement_message then
    show.execution_report_restatement_message = n24x_equities_memo_sbe_v1_13.prefs.show_execution_report_restatement_message
    changed = true
  end
  if show.execution_report_trade_break_message ~= n24x_equities_memo_sbe_v1_13.prefs.show_execution_report_trade_break_message then
    show.execution_report_trade_break_message = n24x_equities_memo_sbe_v1_13.prefs.show_execution_report_trade_break_message
    changed = true
  end
  if show.execution_report_trade_correction_message ~= n24x_equities_memo_sbe_v1_13.prefs.show_execution_report_trade_correction_message then
    show.execution_report_trade_correction_message = n24x_equities_memo_sbe_v1_13.prefs.show_execution_report_trade_correction_message
    changed = true
  end
  if show.execution_report_trade_message ~= n24x_equities_memo_sbe_v1_13.prefs.show_execution_report_trade_message then
    show.execution_report_trade_message = n24x_equities_memo_sbe_v1_13.prefs.show_execution_report_trade_message
    changed = true
  end
  if show.login_accepted_message ~= n24x_equities_memo_sbe_v1_13.prefs.show_login_accepted_message then
    show.login_accepted_message = n24x_equities_memo_sbe_v1_13.prefs.show_login_accepted_message
    changed = true
  end
  if show.login_rejected_message ~= n24x_equities_memo_sbe_v1_13.prefs.show_login_rejected_message then
    show.login_rejected_message = n24x_equities_memo_sbe_v1_13.prefs.show_login_rejected_message
    changed = true
  end
  if show.login_request_message ~= n24x_equities_memo_sbe_v1_13.prefs.show_login_request_message then
    show.login_request_message = n24x_equities_memo_sbe_v1_13.prefs.show_login_request_message
    changed = true
  end
  if show.mass_cancel_done_message ~= n24x_equities_memo_sbe_v1_13.prefs.show_mass_cancel_done_message then
    show.mass_cancel_done_message = n24x_equities_memo_sbe_v1_13.prefs.show_mass_cancel_done_message
    changed = true
  end
  if show.mass_cancel_reject_message ~= n24x_equities_memo_sbe_v1_13.prefs.show_mass_cancel_reject_message then
    show.mass_cancel_reject_message = n24x_equities_memo_sbe_v1_13.prefs.show_mass_cancel_reject_message
    changed = true
  end
  if show.mass_cancel_request_message ~= n24x_equities_memo_sbe_v1_13.prefs.show_mass_cancel_request_message then
    show.mass_cancel_request_message = n24x_equities_memo_sbe_v1_13.prefs.show_mass_cancel_request_message
    changed = true
  end
  if show.new_order_single_message ~= n24x_equities_memo_sbe_v1_13.prefs.show_new_order_single_message then
    show.new_order_single_message = n24x_equities_memo_sbe_v1_13.prefs.show_new_order_single_message
    changed = true
  end
  if show.order_cancel_reject_message ~= n24x_equities_memo_sbe_v1_13.prefs.show_order_cancel_reject_message then
    show.order_cancel_reject_message = n24x_equities_memo_sbe_v1_13.prefs.show_order_cancel_reject_message
    changed = true
  end
  if show.order_cancel_replace_request_message ~= n24x_equities_memo_sbe_v1_13.prefs.show_order_cancel_replace_request_message then
    show.order_cancel_replace_request_message = n24x_equities_memo_sbe_v1_13.prefs.show_order_cancel_replace_request_message
    changed = true
  end
  if show.order_cancel_request_message ~= n24x_equities_memo_sbe_v1_13.prefs.show_order_cancel_request_message then
    show.order_cancel_request_message = n24x_equities_memo_sbe_v1_13.prefs.show_order_cancel_request_message
    changed = true
  end
  if show.packet ~= n24x_equities_memo_sbe_v1_13.prefs.show_packet then
    show.packet = n24x_equities_memo_sbe_v1_13.prefs.show_packet
    changed = true
  end
  if show.parties_group ~= n24x_equities_memo_sbe_v1_13.prefs.show_parties_group then
    show.parties_group = n24x_equities_memo_sbe_v1_13.prefs.show_parties_group
    changed = true
  end
  if show.parties_groups ~= n24x_equities_memo_sbe_v1_13.prefs.show_parties_groups then
    show.parties_groups = n24x_equities_memo_sbe_v1_13.prefs.show_parties_groups
    changed = true
  end
  if show.pending_mass_cancel_message ~= n24x_equities_memo_sbe_v1_13.prefs.show_pending_mass_cancel_message then
    show.pending_mass_cancel_message = n24x_equities_memo_sbe_v1_13.prefs.show_pending_mass_cancel_message
    changed = true
  end
  if show.repeating_group_dimensions ~= n24x_equities_memo_sbe_v1_13.prefs.show_repeating_group_dimensions then
    show.repeating_group_dimensions = n24x_equities_memo_sbe_v1_13.prefs.show_repeating_group_dimensions
    changed = true
  end
  if show.replay_all_request_message ~= n24x_equities_memo_sbe_v1_13.prefs.show_replay_all_request_message then
    show.replay_all_request_message = n24x_equities_memo_sbe_v1_13.prefs.show_replay_all_request_message
    changed = true
  end
  if show.replay_begin_message ~= n24x_equities_memo_sbe_v1_13.prefs.show_replay_begin_message then
    show.replay_begin_message = n24x_equities_memo_sbe_v1_13.prefs.show_replay_begin_message
    changed = true
  end
  if show.replay_complete_message ~= n24x_equities_memo_sbe_v1_13.prefs.show_replay_complete_message then
    show.replay_complete_message = n24x_equities_memo_sbe_v1_13.prefs.show_replay_complete_message
    changed = true
  end
  if show.replay_rejected_message ~= n24x_equities_memo_sbe_v1_13.prefs.show_replay_rejected_message then
    show.replay_rejected_message = n24x_equities_memo_sbe_v1_13.prefs.show_replay_rejected_message
    changed = true
  end
  if show.replay_request_message ~= n24x_equities_memo_sbe_v1_13.prefs.show_replay_request_message then
    show.replay_request_message = n24x_equities_memo_sbe_v1_13.prefs.show_replay_request_message
    changed = true
  end
  if show.sbe_header ~= n24x_equities_memo_sbe_v1_13.prefs.show_sbe_header then
    show.sbe_header = n24x_equities_memo_sbe_v1_13.prefs.show_sbe_header
    changed = true
  end
  if show.sbe_message ~= n24x_equities_memo_sbe_v1_13.prefs.show_sbe_message then
    show.sbe_message = n24x_equities_memo_sbe_v1_13.prefs.show_sbe_message
    changed = true
  end
  if show.sequenced_message ~= n24x_equities_memo_sbe_v1_13.prefs.show_sequenced_message then
    show.sequenced_message = n24x_equities_memo_sbe_v1_13.prefs.show_sequenced_message
    changed = true
  end
  if show.start_of_session_message ~= n24x_equities_memo_sbe_v1_13.prefs.show_start_of_session_message then
    show.start_of_session_message = n24x_equities_memo_sbe_v1_13.prefs.show_start_of_session_message
    changed = true
  end
  if show.stream_begin_message ~= n24x_equities_memo_sbe_v1_13.prefs.show_stream_begin_message then
    show.stream_begin_message = n24x_equities_memo_sbe_v1_13.prefs.show_stream_begin_message
    changed = true
  end
  if show.stream_complete_message ~= n24x_equities_memo_sbe_v1_13.prefs.show_stream_complete_message then
    show.stream_complete_message = n24x_equities_memo_sbe_v1_13.prefs.show_stream_complete_message
    changed = true
  end
  if show.stream_rejected_message ~= n24x_equities_memo_sbe_v1_13.prefs.show_stream_rejected_message then
    show.stream_rejected_message = n24x_equities_memo_sbe_v1_13.prefs.show_stream_rejected_message
    changed = true
  end
  if show.stream_request_message ~= n24x_equities_memo_sbe_v1_13.prefs.show_stream_request_message then
    show.stream_request_message = n24x_equities_memo_sbe_v1_13.prefs.show_stream_request_message
    changed = true
  end
  if show.unsequenced_message ~= n24x_equities_memo_sbe_v1_13.prefs.show_unsequenced_message then
    show.unsequenced_message = n24x_equities_memo_sbe_v1_13.prefs.show_unsequenced_message
    changed = true
  end
  if show.data ~= n24x_equities_memo_sbe_v1_13.prefs.show_data then
    show.data = n24x_equities_memo_sbe_v1_13.prefs.show_data
    changed = true
  end
  if show.payload ~= n24x_equities_memo_sbe_v1_13.prefs.show_payload then
    show.payload = n24x_equities_memo_sbe_v1_13.prefs.show_payload
    changed = true
  end

  -- Reload on changed preference
  if changed then
    reload()
  end
end


-----------------------------------------------------------------------
-- Dissect 24X Equities Memo Sbe 1.13
-----------------------------------------------------------------------

-- Size: Mass Cancel Reject Reason
n24x_equities_memo_sbe_v1_13_size_of.mass_cancel_reject_reason = 1

-- Display: Mass Cancel Reject Reason
n24x_equities_memo_sbe_v1_13_display.mass_cancel_reject_reason = function(value)
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
n24x_equities_memo_sbe_v1_13_dissect.mass_cancel_reject_reason = function(buffer, offset, packet, parent)
  local length = n24x_equities_memo_sbe_v1_13_size_of.mass_cancel_reject_reason
  local range = buffer(offset, length)
  local value = range:uint()
  local display = n24x_equities_memo_sbe_v1_13_display.mass_cancel_reject_reason(value, buffer, offset, packet, parent)

  parent:add(n24x_equities_memo_sbe_v1_13.fields.mass_cancel_reject_reason, range, value, display)

  return offset + length, value
end

-- Size: Cancel Group Id
n24x_equities_memo_sbe_v1_13_size_of.cancel_group_id = 2

-- Display: Cancel Group Id
n24x_equities_memo_sbe_v1_13_display.cancel_group_id = function(value)
  -- Check if field has value
  if value == 65535 then
    return "Cancel Group Id: No Value"
  end

  return "Cancel Group Id: "..value
end

-- Dissect: Cancel Group Id
n24x_equities_memo_sbe_v1_13_dissect.cancel_group_id = function(buffer, offset, packet, parent)
  local length = n24x_equities_memo_sbe_v1_13_size_of.cancel_group_id
  local range = buffer(offset, length)
  local value = range:uint()
  local display = n24x_equities_memo_sbe_v1_13_display.cancel_group_id(value, buffer, offset, packet, parent)

  parent:add(n24x_equities_memo_sbe_v1_13.fields.cancel_group_id, range, value, display)

  return offset + length, value
end

-- Size: Higher Than Price
n24x_equities_memo_sbe_v1_13_size_of.higher_than_price = 8

-- Display: Higher Than Price
n24x_equities_memo_sbe_v1_13_display.higher_than_price = function(raw, value)
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
n24x_equities_memo_sbe_v1_13_dissect.higher_than_price = function(buffer, offset, packet, parent)
  local length = n24x_equities_memo_sbe_v1_13_size_of.higher_than_price
  local range = buffer(offset, length)
  local raw = range:int64()
  local value = translate.higher_than_price(raw)
  local display = n24x_equities_memo_sbe_v1_13_display.higher_than_price(raw, value, buffer, offset, packet, parent)

  parent:add(n24x_equities_memo_sbe_v1_13.fields.higher_than_price, range, value, display)

  return offset + length, value
end

-- Size: Lower Than Price
n24x_equities_memo_sbe_v1_13_size_of.lower_than_price = 8

-- Display: Lower Than Price
n24x_equities_memo_sbe_v1_13_display.lower_than_price = function(raw, value)
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
n24x_equities_memo_sbe_v1_13_dissect.lower_than_price = function(buffer, offset, packet, parent)
  local length = n24x_equities_memo_sbe_v1_13_size_of.lower_than_price
  local range = buffer(offset, length)
  local raw = range:int64()
  local value = translate.lower_than_price(raw)
  local display = n24x_equities_memo_sbe_v1_13_display.lower_than_price(raw, value, buffer, offset, packet, parent)

  parent:add(n24x_equities_memo_sbe_v1_13.fields.lower_than_price, range, value, display)

  return offset + length, value
end

-- Size: Side Optional
n24x_equities_memo_sbe_v1_13_size_of.side_optional = 1

-- Display: Side Optional
n24x_equities_memo_sbe_v1_13_display.side_optional = function(value)
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
n24x_equities_memo_sbe_v1_13_dissect.side_optional = function(buffer, offset, packet, parent)
  local length = n24x_equities_memo_sbe_v1_13_size_of.side_optional
  local range = buffer(offset, length)

  -- parse as byte
  local value = range:uint()

  -- check if value is non zero
  if value ~= 0 then
    value = range:string()
  end

  local display = n24x_equities_memo_sbe_v1_13_display.side_optional(value, buffer, offset, packet, parent)

  parent:add(n24x_equities_memo_sbe_v1_13.fields.side_optional, range, value, display)

  return offset + length, value
end

-- Size: Symbol Sfx
n24x_equities_memo_sbe_v1_13_size_of.symbol_sfx = 6

-- Display: Symbol Sfx
n24x_equities_memo_sbe_v1_13_display.symbol_sfx = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Symbol Sfx: No Value"
  end

  return "Symbol Sfx: "..value
end

-- Dissect: Symbol Sfx
n24x_equities_memo_sbe_v1_13_dissect.symbol_sfx = function(buffer, offset, packet, parent)
  local length = n24x_equities_memo_sbe_v1_13_size_of.symbol_sfx
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

  local display = n24x_equities_memo_sbe_v1_13_display.symbol_sfx(value, buffer, offset, packet, parent)

  parent:add(n24x_equities_memo_sbe_v1_13.fields.symbol_sfx, range, value, display)

  return offset + length, value
end

-- Size: Symbol
n24x_equities_memo_sbe_v1_13_size_of.symbol = 6

-- Display: Symbol
n24x_equities_memo_sbe_v1_13_display.symbol = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Symbol: No Value"
  end

  return "Symbol: "..value
end

-- Dissect: Symbol
n24x_equities_memo_sbe_v1_13_dissect.symbol = function(buffer, offset, packet, parent)
  local length = n24x_equities_memo_sbe_v1_13_size_of.symbol
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

  local display = n24x_equities_memo_sbe_v1_13_display.symbol(value, buffer, offset, packet, parent)

  parent:add(n24x_equities_memo_sbe_v1_13.fields.symbol, range, value, display)

  return offset + length, value
end

-- Size: ClOrdId
n24x_equities_memo_sbe_v1_13_size_of.clordid = 16

-- Display: ClOrdId
n24x_equities_memo_sbe_v1_13_display.clordid = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "ClOrdId: No Value"
  end

  return "ClOrdId: "..value
end

-- Dissect: ClOrdId
n24x_equities_memo_sbe_v1_13_dissect.clordid = function(buffer, offset, packet, parent)
  local length = n24x_equities_memo_sbe_v1_13_size_of.clordid
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

  local display = n24x_equities_memo_sbe_v1_13_display.clordid(value, buffer, offset, packet, parent)

  parent:add(n24x_equities_memo_sbe_v1_13.fields.clordid, range, value, display)

  return offset + length, value
end

-- Size: Sending Time
n24x_equities_memo_sbe_v1_13_size_of.sending_time = 8

-- Display: Sending Time
n24x_equities_memo_sbe_v1_13_display.sending_time = function(value)
  -- Parse unix timestamp
  local seconds = math.floor(value:tonumber()/1000000000)
  local nanoseconds = value:tonumber()%1000000000

  return "Sending Time: "..os.date("%x %H:%M:%S.", seconds)..string.format("%09d", nanoseconds)
end

-- Dissect: Sending Time
n24x_equities_memo_sbe_v1_13_dissect.sending_time = function(buffer, offset, packet, parent)
  local length = n24x_equities_memo_sbe_v1_13_size_of.sending_time
  local range = buffer(offset, length)
  local value = range:uint64()
  local display = n24x_equities_memo_sbe_v1_13_display.sending_time(value, buffer, offset, packet, parent)

  parent:add(n24x_equities_memo_sbe_v1_13.fields.sending_time, range, value, display)

  return offset + length, value
end

-- Calculate size of: Mass Cancel Reject Message
n24x_equities_memo_sbe_v1_13_size_of.mass_cancel_reject_message = function(buffer, offset)
  local index = 0

  index = index + n24x_equities_memo_sbe_v1_13_size_of.sending_time

  index = index + n24x_equities_memo_sbe_v1_13_size_of.clordid

  index = index + n24x_equities_memo_sbe_v1_13_size_of.symbol

  index = index + n24x_equities_memo_sbe_v1_13_size_of.symbol_sfx

  index = index + n24x_equities_memo_sbe_v1_13_size_of.side_optional

  index = index + n24x_equities_memo_sbe_v1_13_size_of.lower_than_price

  index = index + n24x_equities_memo_sbe_v1_13_size_of.higher_than_price

  index = index + n24x_equities_memo_sbe_v1_13_size_of.cancel_group_id

  index = index + n24x_equities_memo_sbe_v1_13_size_of.mass_cancel_reject_reason

  return index
end

-- Display: Mass Cancel Reject Message
n24x_equities_memo_sbe_v1_13_display.mass_cancel_reject_message = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Mass Cancel Reject Message
n24x_equities_memo_sbe_v1_13_dissect.mass_cancel_reject_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Sending Time: 8 Byte Unsigned Fixed Width Integer
  index, sending_time = n24x_equities_memo_sbe_v1_13_dissect.sending_time(buffer, index, packet, parent)

  -- ClOrdId: 16 Byte Ascii String
  index, clordid = n24x_equities_memo_sbe_v1_13_dissect.clordid(buffer, index, packet, parent)

  -- Symbol: 6 Byte Ascii String
  index, symbol = n24x_equities_memo_sbe_v1_13_dissect.symbol(buffer, index, packet, parent)

  -- Symbol Sfx: 6 Byte Ascii String Nullable
  index, symbol_sfx = n24x_equities_memo_sbe_v1_13_dissect.symbol_sfx(buffer, index, packet, parent)

  -- Side Optional: 1 Byte Ascii String Enum with 5 values
  index, side_optional = n24x_equities_memo_sbe_v1_13_dissect.side_optional(buffer, index, packet, parent)

  -- Lower Than Price: 8 Byte Signed Fixed Width Integer Nullable
  index, lower_than_price = n24x_equities_memo_sbe_v1_13_dissect.lower_than_price(buffer, index, packet, parent)

  -- Higher Than Price: 8 Byte Signed Fixed Width Integer Nullable
  index, higher_than_price = n24x_equities_memo_sbe_v1_13_dissect.higher_than_price(buffer, index, packet, parent)

  -- Cancel Group Id: 2 Byte Unsigned Fixed Width Integer Nullable
  index, cancel_group_id = n24x_equities_memo_sbe_v1_13_dissect.cancel_group_id(buffer, index, packet, parent)

  -- Mass Cancel Reject Reason: 1 Byte Unsigned Fixed Width Integer Enum with 13 values
  index, mass_cancel_reject_reason = n24x_equities_memo_sbe_v1_13_dissect.mass_cancel_reject_reason(buffer, index, packet, parent)

  return index
end

-- Dissect: Mass Cancel Reject Message
n24x_equities_memo_sbe_v1_13_dissect.mass_cancel_reject_message = function(buffer, offset, packet, parent)
  if show.mass_cancel_reject_message then
    -- Optionally add element to protocol tree
    parent = parent:add(n24x_equities_memo_sbe_v1_13.fields.mass_cancel_reject_message, buffer(offset, 0))
    local index = n24x_equities_memo_sbe_v1_13_dissect.mass_cancel_reject_message_fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = n24x_equities_memo_sbe_v1_13_display.mass_cancel_reject_message(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return n24x_equities_memo_sbe_v1_13_dissect.mass_cancel_reject_message_fields(buffer, offset, packet, parent)
  end
end

-- Size: Link Id Optional
n24x_equities_memo_sbe_v1_13_size_of.link_id_optional = 4

-- Display: Link Id Optional
n24x_equities_memo_sbe_v1_13_display.link_id_optional = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Link Id Optional: No Value"
  end

  return "Link Id Optional: "..value
end

-- Dissect: Link Id Optional
n24x_equities_memo_sbe_v1_13_dissect.link_id_optional = function(buffer, offset, packet, parent)
  local length = n24x_equities_memo_sbe_v1_13_size_of.link_id_optional
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

  local display = n24x_equities_memo_sbe_v1_13_display.link_id_optional(value, buffer, offset, packet, parent)

  parent:add(n24x_equities_memo_sbe_v1_13.fields.link_id_optional, range, value, display)

  return offset + length, value
end

-- Size: Cxl Rej Reason
n24x_equities_memo_sbe_v1_13_size_of.cxl_rej_reason = 1

-- Display: Cxl Rej Reason
n24x_equities_memo_sbe_v1_13_display.cxl_rej_reason = function(value)
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
n24x_equities_memo_sbe_v1_13_dissect.cxl_rej_reason = function(buffer, offset, packet, parent)
  local length = n24x_equities_memo_sbe_v1_13_size_of.cxl_rej_reason
  local range = buffer(offset, length)
  local value = range:uint()
  local display = n24x_equities_memo_sbe_v1_13_display.cxl_rej_reason(value, buffer, offset, packet, parent)

  parent:add(n24x_equities_memo_sbe_v1_13.fields.cxl_rej_reason, range, value, display)

  return offset + length, value
end

-- Size: Cxl Rej Response To
n24x_equities_memo_sbe_v1_13_size_of.cxl_rej_response_to = 1

-- Display: Cxl Rej Response To
n24x_equities_memo_sbe_v1_13_display.cxl_rej_response_to = function(value)
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
n24x_equities_memo_sbe_v1_13_dissect.cxl_rej_response_to = function(buffer, offset, packet, parent)
  local length = n24x_equities_memo_sbe_v1_13_size_of.cxl_rej_response_to
  local range = buffer(offset, length)

  -- parse as byte
  local value = range:uint()

  -- check if value is non zero
  if value ~= 0 then
    value = range:string()
  end

  local display = n24x_equities_memo_sbe_v1_13_display.cxl_rej_response_to(value, buffer, offset, packet, parent)

  parent:add(n24x_equities_memo_sbe_v1_13.fields.cxl_rej_response_to, range, value, display)

  return offset + length, value
end

-- Calculate size of: Order Cancel Reject Message
n24x_equities_memo_sbe_v1_13_size_of.order_cancel_reject_message = function(buffer, offset)
  local index = 0

  index = index + n24x_equities_memo_sbe_v1_13_size_of.sending_time

  index = index + n24x_equities_memo_sbe_v1_13_size_of.clordid

  index = index + n24x_equities_memo_sbe_v1_13_size_of.cxl_rej_response_to

  index = index + n24x_equities_memo_sbe_v1_13_size_of.cxl_rej_reason

  index = index + n24x_equities_memo_sbe_v1_13_size_of.link_id_optional

  return index
end

-- Display: Order Cancel Reject Message
n24x_equities_memo_sbe_v1_13_display.order_cancel_reject_message = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Order Cancel Reject Message
n24x_equities_memo_sbe_v1_13_dissect.order_cancel_reject_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Sending Time: 8 Byte Unsigned Fixed Width Integer
  index, sending_time = n24x_equities_memo_sbe_v1_13_dissect.sending_time(buffer, index, packet, parent)

  -- ClOrdId: 16 Byte Ascii String
  index, clordid = n24x_equities_memo_sbe_v1_13_dissect.clordid(buffer, index, packet, parent)

  -- Cxl Rej Response To: 1 Byte Ascii String Enum with 2 values
  index, cxl_rej_response_to = n24x_equities_memo_sbe_v1_13_dissect.cxl_rej_response_to(buffer, index, packet, parent)

  -- Cxl Rej Reason: 1 Byte Unsigned Fixed Width Integer Enum with 39 values
  index, cxl_rej_reason = n24x_equities_memo_sbe_v1_13_dissect.cxl_rej_reason(buffer, index, packet, parent)

  -- Link Id Optional: 4 Byte Ascii String Nullable
  index, link_id_optional = n24x_equities_memo_sbe_v1_13_dissect.link_id_optional(buffer, index, packet, parent)

  return index
end

-- Dissect: Order Cancel Reject Message
n24x_equities_memo_sbe_v1_13_dissect.order_cancel_reject_message = function(buffer, offset, packet, parent)
  if show.order_cancel_reject_message then
    -- Optionally add element to protocol tree
    parent = parent:add(n24x_equities_memo_sbe_v1_13.fields.order_cancel_reject_message, buffer(offset, 0))
    local index = n24x_equities_memo_sbe_v1_13_dissect.order_cancel_reject_message_fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = n24x_equities_memo_sbe_v1_13_display.order_cancel_reject_message(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return n24x_equities_memo_sbe_v1_13_dissect.order_cancel_reject_message_fields(buffer, offset, packet, parent)
  end
end

-- Size: Party Role
n24x_equities_memo_sbe_v1_13_size_of.party_role = 1

-- Display: Party Role
n24x_equities_memo_sbe_v1_13_display.party_role = function(value)
  if value == 1 then
    return "Party Role: Executing Firm (1)"
  end

  return "Party Role: Unknown("..value..")"
end

-- Dissect: Party Role
n24x_equities_memo_sbe_v1_13_dissect.party_role = function(buffer, offset, packet, parent)
  local length = n24x_equities_memo_sbe_v1_13_size_of.party_role
  local range = buffer(offset, length)
  local value = range:uint()
  local display = n24x_equities_memo_sbe_v1_13_display.party_role(value, buffer, offset, packet, parent)

  parent:add(n24x_equities_memo_sbe_v1_13.fields.party_role, range, value, display)

  return offset + length, value
end

-- Size: Party Id Source
n24x_equities_memo_sbe_v1_13_size_of.party_id_source = 1

-- Display: Party Id Source
n24x_equities_memo_sbe_v1_13_display.party_id_source = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Party Id Source: No Value"
  end

  return "Party Id Source: "..value
end

-- Dissect: Party Id Source
n24x_equities_memo_sbe_v1_13_dissect.party_id_source = function(buffer, offset, packet, parent)
  local length = n24x_equities_memo_sbe_v1_13_size_of.party_id_source
  local range = buffer(offset, length)

  -- parse as byte
  local value = range:uint()

  -- check if value is non zero
  if value ~= 0 then
    value = range:string()
  end

  local display = n24x_equities_memo_sbe_v1_13_display.party_id_source(value, buffer, offset, packet, parent)

  parent:add(n24x_equities_memo_sbe_v1_13.fields.party_id_source, range, value, display)

  return offset + length, value
end

-- Size: Party I D New Order Single Party Id
n24x_equities_memo_sbe_v1_13_size_of.party_i_d_new_order_single_party_id = 16

-- Display: Party I D New Order Single Party Id
n24x_equities_memo_sbe_v1_13_display.party_i_d_new_order_single_party_id = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Party I D New Order Single Party Id: No Value"
  end

  return "Party I D New Order Single Party Id: "..value
end

-- Dissect: Party I D New Order Single Party Id
n24x_equities_memo_sbe_v1_13_dissect.party_i_d_new_order_single_party_id = function(buffer, offset, packet, parent)
  local length = n24x_equities_memo_sbe_v1_13_size_of.party_i_d_new_order_single_party_id
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

  local display = n24x_equities_memo_sbe_v1_13_display.party_i_d_new_order_single_party_id(value, buffer, offset, packet, parent)

  parent:add(n24x_equities_memo_sbe_v1_13.fields.party_i_d_new_order_single_party_id, range, value, display)

  return offset + length, value
end

-- Calculate size of: Parties Group
n24x_equities_memo_sbe_v1_13_size_of.parties_group = function(buffer, offset)
  local index = 0

  index = index + n24x_equities_memo_sbe_v1_13_size_of.party_i_d_new_order_single_party_id

  index = index + n24x_equities_memo_sbe_v1_13_size_of.party_id_source

  index = index + n24x_equities_memo_sbe_v1_13_size_of.party_role

  return index
end

-- Display: Parties Group
n24x_equities_memo_sbe_v1_13_display.parties_group = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Parties Group
n24x_equities_memo_sbe_v1_13_dissect.parties_group_fields = function(buffer, offset, packet, parent, parties_group_index)
  local index = offset

  -- Implicit Parties Group Index
  if parties_group_index ~= nil then
    local iteration = parent:add(n24x_equities_memo_sbe_v1_13.fields.parties_group_index, parties_group_index)
    iteration:set_generated()
  end

  -- Party I D New Order Single Party Id: 16 Byte Ascii String
  index, party_i_d_new_order_single_party_id = n24x_equities_memo_sbe_v1_13_dissect.party_i_d_new_order_single_party_id(buffer, index, packet, parent)

  -- Party Id Source: 1 Byte Ascii String
  index, party_id_source = n24x_equities_memo_sbe_v1_13_dissect.party_id_source(buffer, index, packet, parent)

  -- Party Role: 1 Byte Unsigned Fixed Width Integer Enum with 1 values
  index, party_role = n24x_equities_memo_sbe_v1_13_dissect.party_role(buffer, index, packet, parent)

  return index
end

-- Dissect: Parties Group
n24x_equities_memo_sbe_v1_13_dissect.parties_group = function(buffer, offset, packet, parent, parties_group_index)
  if show.parties_group then
    -- Optionally add element to protocol tree
    parent = parent:add(n24x_equities_memo_sbe_v1_13.fields.parties_group, buffer(offset, 0))
    local index = n24x_equities_memo_sbe_v1_13_dissect.parties_group_fields(buffer, offset, packet, parent, parties_group_index)
    local length = index - offset
    parent:set_len(length)
    local display = n24x_equities_memo_sbe_v1_13_display.parties_group(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return n24x_equities_memo_sbe_v1_13_dissect.parties_group_fields(buffer, offset, packet, parent, parties_group_index)
  end
end

-- Size: Num In Group
n24x_equities_memo_sbe_v1_13_size_of.num_in_group = 1

-- Display: Num In Group
n24x_equities_memo_sbe_v1_13_display.num_in_group = function(value)
  return "Num In Group: "..value
end

-- Dissect: Num In Group
n24x_equities_memo_sbe_v1_13_dissect.num_in_group = function(buffer, offset, packet, parent)
  local length = n24x_equities_memo_sbe_v1_13_size_of.num_in_group
  local range = buffer(offset, length)
  local value = range:uint()
  local display = n24x_equities_memo_sbe_v1_13_display.num_in_group(value, buffer, offset, packet, parent)

  parent:add(n24x_equities_memo_sbe_v1_13.fields.num_in_group, range, value, display)

  return offset + length, value
end

-- Size: Block Length uint 8
n24x_equities_memo_sbe_v1_13_size_of.block_length_uint_8 = 1

-- Display: Block Length uint 8
n24x_equities_memo_sbe_v1_13_display.block_length_uint_8 = function(value)
  return "Block Length uint 8: "..value
end

-- Dissect: Block Length uint 8
n24x_equities_memo_sbe_v1_13_dissect.block_length_uint_8 = function(buffer, offset, packet, parent)
  local length = n24x_equities_memo_sbe_v1_13_size_of.block_length_uint_8
  local range = buffer(offset, length)
  local value = range:uint()
  local display = n24x_equities_memo_sbe_v1_13_display.block_length_uint_8(value, buffer, offset, packet, parent)

  parent:add(n24x_equities_memo_sbe_v1_13.fields.block_length_uint_8, range, value, display)

  return offset + length, value
end

-- Calculate size of: Repeating Group Dimensions
n24x_equities_memo_sbe_v1_13_size_of.repeating_group_dimensions = function(buffer, offset)
  local index = 0

  index = index + n24x_equities_memo_sbe_v1_13_size_of.block_length_uint_8

  index = index + n24x_equities_memo_sbe_v1_13_size_of.num_in_group

  return index
end

-- Display: Repeating Group Dimensions
n24x_equities_memo_sbe_v1_13_display.repeating_group_dimensions = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Repeating Group Dimensions
n24x_equities_memo_sbe_v1_13_dissect.repeating_group_dimensions_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Block Length uint 8: 1 Byte Unsigned Fixed Width Integer
  index, block_length_uint_8 = n24x_equities_memo_sbe_v1_13_dissect.block_length_uint_8(buffer, index, packet, parent)

  -- Num In Group: 1 Byte Unsigned Fixed Width Integer
  index, num_in_group = n24x_equities_memo_sbe_v1_13_dissect.num_in_group(buffer, index, packet, parent)

  return index
end

-- Dissect: Repeating Group Dimensions
n24x_equities_memo_sbe_v1_13_dissect.repeating_group_dimensions = function(buffer, offset, packet, parent)
  if show.repeating_group_dimensions then
    -- Optionally add element to protocol tree
    parent = parent:add(n24x_equities_memo_sbe_v1_13.fields.repeating_group_dimensions, buffer(offset, 0))
    local index = n24x_equities_memo_sbe_v1_13_dissect.repeating_group_dimensions_fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = n24x_equities_memo_sbe_v1_13_display.repeating_group_dimensions(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return n24x_equities_memo_sbe_v1_13_dissect.repeating_group_dimensions_fields(buffer, offset, packet, parent)
  end
end

-- Calculate size of: Parties Groups
n24x_equities_memo_sbe_v1_13_size_of.parties_groups = function(buffer, offset)
  local index = 0

  index = index + n24x_equities_memo_sbe_v1_13_size_of.repeating_group_dimensions(buffer, offset + index)

  -- Calculate field size from count
  local parties_group_count = buffer(offset + index - 1, 1):uint()
  index = index + parties_group_count * 18

  return index
end

-- Display: Parties Groups
n24x_equities_memo_sbe_v1_13_display.parties_groups = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Parties Groups
n24x_equities_memo_sbe_v1_13_dissect.parties_groups_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Repeating Group Dimensions: Struct of 2 fields
  index, repeating_group_dimensions = n24x_equities_memo_sbe_v1_13_dissect.repeating_group_dimensions(buffer, index, packet, parent)

  -- Dependency element: Num In Group
  local num_in_group = buffer(index - 1, 1):uint()

  -- Repeating: Parties Group
  for parties_group_index = 1, num_in_group do
    index, parties_group = n24x_equities_memo_sbe_v1_13_dissect.parties_group(buffer, index, packet, parent, parties_group_index)
  end

  return index
end

-- Dissect: Parties Groups
n24x_equities_memo_sbe_v1_13_dissect.parties_groups = function(buffer, offset, packet, parent)
  -- Optionally add dynamic struct element to protocol tree
  if show.parties_groups then
    local length = n24x_equities_memo_sbe_v1_13_size_of.parties_groups(buffer, offset)
    local range = buffer(offset, length)
    local display = n24x_equities_memo_sbe_v1_13_display.parties_groups(buffer, packet, parent)
    parent = parent:add(n24x_equities_memo_sbe_v1_13.fields.parties_groups, range, display)
  end

  return n24x_equities_memo_sbe_v1_13_dissect.parties_groups_fields(buffer, offset, packet, parent)
end

-- Size: Extended Restatement Reason
n24x_equities_memo_sbe_v1_13_size_of.extended_restatement_reason = 1

-- Display: Extended Restatement Reason
n24x_equities_memo_sbe_v1_13_display.extended_restatement_reason = function(value)
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
n24x_equities_memo_sbe_v1_13_dissect.extended_restatement_reason = function(buffer, offset, packet, parent)
  local length = n24x_equities_memo_sbe_v1_13_size_of.extended_restatement_reason
  local range = buffer(offset, length)
  local value = range:uint()
  local display = n24x_equities_memo_sbe_v1_13_display.extended_restatement_reason(value, buffer, offset, packet, parent)

  parent:add(n24x_equities_memo_sbe_v1_13.fields.extended_restatement_reason, range, value, display)

  return offset + length, value
end

-- Size: Transact Time
n24x_equities_memo_sbe_v1_13_size_of.transact_time = 8

-- Display: Transact Time
n24x_equities_memo_sbe_v1_13_display.transact_time = function(value)
  return "Transact Time: "..value
end

-- Dissect: Transact Time
n24x_equities_memo_sbe_v1_13_dissect.transact_time = function(buffer, offset, packet, parent)
  local length = n24x_equities_memo_sbe_v1_13_size_of.transact_time
  local range = buffer(offset, length)
  local value = range:uint64()
  local display = n24x_equities_memo_sbe_v1_13_display.transact_time(value, buffer, offset, packet, parent)

  parent:add(n24x_equities_memo_sbe_v1_13.fields.transact_time, range, value, display)

  return offset + length, value
end

-- Size: Exec Restatement Reason
n24x_equities_memo_sbe_v1_13_size_of.exec_restatement_reason = 1

-- Display: Exec Restatement Reason
n24x_equities_memo_sbe_v1_13_display.exec_restatement_reason = function(value)
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
n24x_equities_memo_sbe_v1_13_dissect.exec_restatement_reason = function(buffer, offset, packet, parent)
  local length = n24x_equities_memo_sbe_v1_13_size_of.exec_restatement_reason
  local range = buffer(offset, length)
  local value = range:uint()
  local display = n24x_equities_memo_sbe_v1_13_display.exec_restatement_reason(value, buffer, offset, packet, parent)

  parent:add(n24x_equities_memo_sbe_v1_13.fields.exec_restatement_reason, range, value, display)

  return offset + length, value
end

-- Size: Last Shares
n24x_equities_memo_sbe_v1_13_size_of.last_shares = 4

-- Display: Last Shares
n24x_equities_memo_sbe_v1_13_display.last_shares = function(value)
  -- Check if field has value
  if value == 4294967295 then
    return "Last Shares: No Value"
  end

  return "Last Shares: "..value
end

-- Dissect: Last Shares
n24x_equities_memo_sbe_v1_13_dissect.last_shares = function(buffer, offset, packet, parent)
  local length = n24x_equities_memo_sbe_v1_13_size_of.last_shares
  local range = buffer(offset, length)
  local value = range:uint()
  local display = n24x_equities_memo_sbe_v1_13_display.last_shares(value, buffer, offset, packet, parent)

  parent:add(n24x_equities_memo_sbe_v1_13.fields.last_shares, range, value, display)

  return offset + length, value
end

-- Size: Cum Qty
n24x_equities_memo_sbe_v1_13_size_of.cum_qty = 4

-- Display: Cum Qty
n24x_equities_memo_sbe_v1_13_display.cum_qty = function(value)
  return "Cum Qty: "..value
end

-- Dissect: Cum Qty
n24x_equities_memo_sbe_v1_13_dissect.cum_qty = function(buffer, offset, packet, parent)
  local length = n24x_equities_memo_sbe_v1_13_size_of.cum_qty
  local range = buffer(offset, length)
  local value = range:uint()
  local display = n24x_equities_memo_sbe_v1_13_display.cum_qty(value, buffer, offset, packet, parent)

  parent:add(n24x_equities_memo_sbe_v1_13.fields.cum_qty, range, value, display)

  return offset + length, value
end

-- Size: Leaves Qty
n24x_equities_memo_sbe_v1_13_size_of.leaves_qty = 4

-- Display: Leaves Qty
n24x_equities_memo_sbe_v1_13_display.leaves_qty = function(value)
  return "Leaves Qty: "..value
end

-- Dissect: Leaves Qty
n24x_equities_memo_sbe_v1_13_dissect.leaves_qty = function(buffer, offset, packet, parent)
  local length = n24x_equities_memo_sbe_v1_13_size_of.leaves_qty
  local range = buffer(offset, length)
  local value = range:uint()
  local display = n24x_equities_memo_sbe_v1_13_display.leaves_qty(value, buffer, offset, packet, parent)

  parent:add(n24x_equities_memo_sbe_v1_13.fields.leaves_qty, range, value, display)

  return offset + length, value
end

-- Size: Last Px Optional
n24x_equities_memo_sbe_v1_13_size_of.last_px_optional = 8

-- Display: Last Px Optional
n24x_equities_memo_sbe_v1_13_display.last_px_optional = function(raw, value)
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
n24x_equities_memo_sbe_v1_13_dissect.last_px_optional = function(buffer, offset, packet, parent)
  local length = n24x_equities_memo_sbe_v1_13_size_of.last_px_optional
  local range = buffer(offset, length)
  local raw = range:int64()
  local value = translate.last_px_optional(raw)
  local display = n24x_equities_memo_sbe_v1_13_display.last_px_optional(raw, value, buffer, offset, packet, parent)

  parent:add(n24x_equities_memo_sbe_v1_13.fields.last_px_optional, range, value, display)

  return offset + length, value
end

-- Size: Ord Status
n24x_equities_memo_sbe_v1_13_size_of.ord_status = 1

-- Display: Ord Status
n24x_equities_memo_sbe_v1_13_display.ord_status = function(value)
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
n24x_equities_memo_sbe_v1_13_dissect.ord_status = function(buffer, offset, packet, parent)
  local length = n24x_equities_memo_sbe_v1_13_size_of.ord_status
  local range = buffer(offset, length)

  -- parse as byte
  local value = range:uint()

  -- check if value is non zero
  if value ~= 0 then
    value = range:string()
  end

  local display = n24x_equities_memo_sbe_v1_13_display.ord_status(value, buffer, offset, packet, parent)

  parent:add(n24x_equities_memo_sbe_v1_13.fields.ord_status, range, value, display)

  return offset + length, value
end

-- Size: Exec Id
n24x_equities_memo_sbe_v1_13_size_of.exec_id = 8

-- Display: Exec Id
n24x_equities_memo_sbe_v1_13_display.exec_id = function(value)
  return "Exec Id: "..value
end

-- Dissect: Exec Id
n24x_equities_memo_sbe_v1_13_dissect.exec_id = function(buffer, offset, packet, parent)
  local length = n24x_equities_memo_sbe_v1_13_size_of.exec_id
  local range = buffer(offset, length)
  local value = range:uint64()
  local display = n24x_equities_memo_sbe_v1_13_display.exec_id(value, buffer, offset, packet, parent)

  parent:add(n24x_equities_memo_sbe_v1_13.fields.exec_id, range, value, display)

  return offset + length, value
end

-- Size: Order Id
n24x_equities_memo_sbe_v1_13_size_of.order_id = 8

-- Display: Order Id
n24x_equities_memo_sbe_v1_13_display.order_id = function(value)
  return "Order Id: "..value
end

-- Dissect: Order Id
n24x_equities_memo_sbe_v1_13_dissect.order_id = function(buffer, offset, packet, parent)
  local length = n24x_equities_memo_sbe_v1_13_size_of.order_id
  local range = buffer(offset, length)
  local value = range:uint64()
  local display = n24x_equities_memo_sbe_v1_13_display.order_id(value, buffer, offset, packet, parent)

  parent:add(n24x_equities_memo_sbe_v1_13.fields.order_id, range, value, display)

  return offset + length, value
end

-- Calculate size of: Execution Report Restatement Message
n24x_equities_memo_sbe_v1_13_size_of.execution_report_restatement_message = function(buffer, offset)
  local index = 0

  index = index + n24x_equities_memo_sbe_v1_13_size_of.sending_time

  index = index + n24x_equities_memo_sbe_v1_13_size_of.order_id

  index = index + n24x_equities_memo_sbe_v1_13_size_of.clordid

  index = index + n24x_equities_memo_sbe_v1_13_size_of.exec_id

  index = index + n24x_equities_memo_sbe_v1_13_size_of.ord_status

  index = index + n24x_equities_memo_sbe_v1_13_size_of.last_px_optional

  index = index + n24x_equities_memo_sbe_v1_13_size_of.leaves_qty

  index = index + n24x_equities_memo_sbe_v1_13_size_of.cum_qty

  index = index + n24x_equities_memo_sbe_v1_13_size_of.last_shares

  index = index + n24x_equities_memo_sbe_v1_13_size_of.exec_restatement_reason

  index = index + n24x_equities_memo_sbe_v1_13_size_of.transact_time

  index = index + n24x_equities_memo_sbe_v1_13_size_of.extended_restatement_reason

  index = index + n24x_equities_memo_sbe_v1_13_size_of.link_id_optional

  index = index + n24x_equities_memo_sbe_v1_13_size_of.parties_groups(buffer, offset + index)

  return index
end

-- Display: Execution Report Restatement Message
n24x_equities_memo_sbe_v1_13_display.execution_report_restatement_message = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Execution Report Restatement Message
n24x_equities_memo_sbe_v1_13_dissect.execution_report_restatement_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Sending Time: 8 Byte Unsigned Fixed Width Integer
  index, sending_time = n24x_equities_memo_sbe_v1_13_dissect.sending_time(buffer, index, packet, parent)

  -- Order Id: 8 Byte Unsigned Fixed Width Integer
  index, order_id = n24x_equities_memo_sbe_v1_13_dissect.order_id(buffer, index, packet, parent)

  -- ClOrdId: 16 Byte Ascii String
  index, clordid = n24x_equities_memo_sbe_v1_13_dissect.clordid(buffer, index, packet, parent)

  -- Exec Id: 8 Byte Unsigned Fixed Width Integer
  index, exec_id = n24x_equities_memo_sbe_v1_13_dissect.exec_id(buffer, index, packet, parent)

  -- Ord Status: 1 Byte Ascii String Enum with 9 values
  index, ord_status = n24x_equities_memo_sbe_v1_13_dissect.ord_status(buffer, index, packet, parent)

  -- Last Px Optional: 8 Byte Signed Fixed Width Integer Nullable
  index, last_px_optional = n24x_equities_memo_sbe_v1_13_dissect.last_px_optional(buffer, index, packet, parent)

  -- Leaves Qty: 4 Byte Unsigned Fixed Width Integer
  index, leaves_qty = n24x_equities_memo_sbe_v1_13_dissect.leaves_qty(buffer, index, packet, parent)

  -- Cum Qty: 4 Byte Unsigned Fixed Width Integer
  index, cum_qty = n24x_equities_memo_sbe_v1_13_dissect.cum_qty(buffer, index, packet, parent)

  -- Last Shares: 4 Byte Unsigned Fixed Width Integer Nullable
  index, last_shares = n24x_equities_memo_sbe_v1_13_dissect.last_shares(buffer, index, packet, parent)

  -- Exec Restatement Reason: 1 Byte Unsigned Fixed Width Integer Enum with 4 values
  index, exec_restatement_reason = n24x_equities_memo_sbe_v1_13_dissect.exec_restatement_reason(buffer, index, packet, parent)

  -- Transact Time: 8 Byte Unsigned Fixed Width Integer
  index, transact_time = n24x_equities_memo_sbe_v1_13_dissect.transact_time(buffer, index, packet, parent)

  -- Extended Restatement Reason: 1 Byte Unsigned Fixed Width Integer Enum with 10 values
  index, extended_restatement_reason = n24x_equities_memo_sbe_v1_13_dissect.extended_restatement_reason(buffer, index, packet, parent)

  -- Link Id Optional: 4 Byte Ascii String Nullable
  index, link_id_optional = n24x_equities_memo_sbe_v1_13_dissect.link_id_optional(buffer, index, packet, parent)

  -- Parties Groups: Struct of 2 fields
  index, parties_groups = n24x_equities_memo_sbe_v1_13_dissect.parties_groups(buffer, index, packet, parent)

  return index
end

-- Dissect: Execution Report Restatement Message
n24x_equities_memo_sbe_v1_13_dissect.execution_report_restatement_message = function(buffer, offset, packet, parent)
  -- Optionally add dynamic struct element to protocol tree
  if show.execution_report_restatement_message then
    local length = n24x_equities_memo_sbe_v1_13_size_of.execution_report_restatement_message(buffer, offset)
    local range = buffer(offset, length)
    local display = n24x_equities_memo_sbe_v1_13_display.execution_report_restatement_message(buffer, packet, parent)
    parent = parent:add(n24x_equities_memo_sbe_v1_13.fields.execution_report_restatement_message, range, display)
  end

  return n24x_equities_memo_sbe_v1_13_dissect.execution_report_restatement_message_fields(buffer, offset, packet, parent)
end

-- Size: Security Group
n24x_equities_memo_sbe_v1_13_size_of.security_group = 1

-- Display: Security Group
n24x_equities_memo_sbe_v1_13_display.security_group = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Security Group: No Value"
  end

  return "Security Group: "..value
end

-- Dissect: Security Group
n24x_equities_memo_sbe_v1_13_dissect.security_group = function(buffer, offset, packet, parent)
  local length = n24x_equities_memo_sbe_v1_13_size_of.security_group
  local range = buffer(offset, length)

  -- parse as byte
  local value = range:uint()

  -- check if value is non zero
  if value ~= 0 then
    value = range:string()
  end

  local display = n24x_equities_memo_sbe_v1_13_display.security_group(value, buffer, offset, packet, parent)

  parent:add(n24x_equities_memo_sbe_v1_13.fields.security_group, range, value, display)

  return offset + length, value
end

-- Size: Trd Match Id
n24x_equities_memo_sbe_v1_13_size_of.trd_match_id = 8

-- Display: Trd Match Id
n24x_equities_memo_sbe_v1_13_display.trd_match_id = function(value)
  return "Trd Match Id: "..value
end

-- Dissect: Trd Match Id
n24x_equities_memo_sbe_v1_13_dissect.trd_match_id = function(buffer, offset, packet, parent)
  local length = n24x_equities_memo_sbe_v1_13_size_of.trd_match_id
  local range = buffer(offset, length)
  local value = range:uint64()
  local display = n24x_equities_memo_sbe_v1_13_display.trd_match_id(value, buffer, offset, packet, parent)

  parent:add(n24x_equities_memo_sbe_v1_13.fields.trd_match_id, range, value, display)

  return offset + length, value
end

-- Size: Exec Ref Id
n24x_equities_memo_sbe_v1_13_size_of.exec_ref_id = 8

-- Display: Exec Ref Id
n24x_equities_memo_sbe_v1_13_display.exec_ref_id = function(value)
  return "Exec Ref Id: "..value
end

-- Dissect: Exec Ref Id
n24x_equities_memo_sbe_v1_13_dissect.exec_ref_id = function(buffer, offset, packet, parent)
  local length = n24x_equities_memo_sbe_v1_13_size_of.exec_ref_id
  local range = buffer(offset, length)
  local value = range:uint64()
  local display = n24x_equities_memo_sbe_v1_13_display.exec_ref_id(value, buffer, offset, packet, parent)

  parent:add(n24x_equities_memo_sbe_v1_13.fields.exec_ref_id, range, value, display)

  return offset + length, value
end

-- Calculate size of: Execution Report Trade Break Message
n24x_equities_memo_sbe_v1_13_size_of.execution_report_trade_break_message = function(buffer, offset)
  local index = 0

  index = index + n24x_equities_memo_sbe_v1_13_size_of.sending_time

  index = index + n24x_equities_memo_sbe_v1_13_size_of.order_id

  index = index + n24x_equities_memo_sbe_v1_13_size_of.clordid

  index = index + n24x_equities_memo_sbe_v1_13_size_of.exec_id

  index = index + n24x_equities_memo_sbe_v1_13_size_of.exec_ref_id

  index = index + n24x_equities_memo_sbe_v1_13_size_of.trd_match_id

  index = index + n24x_equities_memo_sbe_v1_13_size_of.ord_status

  index = index + n24x_equities_memo_sbe_v1_13_size_of.leaves_qty

  index = index + n24x_equities_memo_sbe_v1_13_size_of.cum_qty

  index = index + n24x_equities_memo_sbe_v1_13_size_of.link_id_optional

  index = index + n24x_equities_memo_sbe_v1_13_size_of.security_group

  index = index + n24x_equities_memo_sbe_v1_13_size_of.parties_groups(buffer, offset + index)

  return index
end

-- Display: Execution Report Trade Break Message
n24x_equities_memo_sbe_v1_13_display.execution_report_trade_break_message = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Execution Report Trade Break Message
n24x_equities_memo_sbe_v1_13_dissect.execution_report_trade_break_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Sending Time: 8 Byte Unsigned Fixed Width Integer
  index, sending_time = n24x_equities_memo_sbe_v1_13_dissect.sending_time(buffer, index, packet, parent)

  -- Order Id: 8 Byte Unsigned Fixed Width Integer
  index, order_id = n24x_equities_memo_sbe_v1_13_dissect.order_id(buffer, index, packet, parent)

  -- ClOrdId: 16 Byte Ascii String
  index, clordid = n24x_equities_memo_sbe_v1_13_dissect.clordid(buffer, index, packet, parent)

  -- Exec Id: 8 Byte Unsigned Fixed Width Integer
  index, exec_id = n24x_equities_memo_sbe_v1_13_dissect.exec_id(buffer, index, packet, parent)

  -- Exec Ref Id: 8 Byte Unsigned Fixed Width Integer
  index, exec_ref_id = n24x_equities_memo_sbe_v1_13_dissect.exec_ref_id(buffer, index, packet, parent)

  -- Trd Match Id: 8 Byte Unsigned Fixed Width Integer
  index, trd_match_id = n24x_equities_memo_sbe_v1_13_dissect.trd_match_id(buffer, index, packet, parent)

  -- Ord Status: 1 Byte Ascii String Enum with 9 values
  index, ord_status = n24x_equities_memo_sbe_v1_13_dissect.ord_status(buffer, index, packet, parent)

  -- Leaves Qty: 4 Byte Unsigned Fixed Width Integer
  index, leaves_qty = n24x_equities_memo_sbe_v1_13_dissect.leaves_qty(buffer, index, packet, parent)

  -- Cum Qty: 4 Byte Unsigned Fixed Width Integer
  index, cum_qty = n24x_equities_memo_sbe_v1_13_dissect.cum_qty(buffer, index, packet, parent)

  -- Link Id Optional: 4 Byte Ascii String Nullable
  index, link_id_optional = n24x_equities_memo_sbe_v1_13_dissect.link_id_optional(buffer, index, packet, parent)

  -- Security Group: 1 Byte Ascii String
  index, security_group = n24x_equities_memo_sbe_v1_13_dissect.security_group(buffer, index, packet, parent)

  -- Parties Groups: Struct of 2 fields
  index, parties_groups = n24x_equities_memo_sbe_v1_13_dissect.parties_groups(buffer, index, packet, parent)

  return index
end

-- Dissect: Execution Report Trade Break Message
n24x_equities_memo_sbe_v1_13_dissect.execution_report_trade_break_message = function(buffer, offset, packet, parent)
  -- Optionally add dynamic struct element to protocol tree
  if show.execution_report_trade_break_message then
    local length = n24x_equities_memo_sbe_v1_13_size_of.execution_report_trade_break_message(buffer, offset)
    local range = buffer(offset, length)
    local display = n24x_equities_memo_sbe_v1_13_display.execution_report_trade_break_message(buffer, packet, parent)
    parent = parent:add(n24x_equities_memo_sbe_v1_13.fields.execution_report_trade_break_message, range, display)
  end

  return n24x_equities_memo_sbe_v1_13_dissect.execution_report_trade_break_message_fields(buffer, offset, packet, parent)
end

-- Size: Last Qty Optional
n24x_equities_memo_sbe_v1_13_size_of.last_qty_optional = 4

-- Display: Last Qty Optional
n24x_equities_memo_sbe_v1_13_display.last_qty_optional = function(value)
  -- Check if field has value
  if value == 4294967295 then
    return "Last Qty Optional: No Value"
  end

  return "Last Qty Optional: "..value
end

-- Dissect: Last Qty Optional
n24x_equities_memo_sbe_v1_13_dissect.last_qty_optional = function(buffer, offset, packet, parent)
  local length = n24x_equities_memo_sbe_v1_13_size_of.last_qty_optional
  local range = buffer(offset, length)
  local value = range:uint()
  local display = n24x_equities_memo_sbe_v1_13_display.last_qty_optional(value, buffer, offset, packet, parent)

  parent:add(n24x_equities_memo_sbe_v1_13.fields.last_qty_optional, range, value, display)

  return offset + length, value
end

-- Size: Last Px
n24x_equities_memo_sbe_v1_13_size_of.last_px = 8

-- Display: Last Px
n24x_equities_memo_sbe_v1_13_display.last_px = function(value)
  return "Last Px: "..value
end

-- Translate: Last Px
translate.last_px = function(raw)
  return raw:tonumber()/1000000
end

-- Dissect: Last Px
n24x_equities_memo_sbe_v1_13_dissect.last_px = function(buffer, offset, packet, parent)
  local length = n24x_equities_memo_sbe_v1_13_size_of.last_px
  local range = buffer(offset, length)
  local raw = range:int64()
  local value = translate.last_px(raw)
  local display = n24x_equities_memo_sbe_v1_13_display.last_px(value, buffer, offset, packet, parent)

  parent:add(n24x_equities_memo_sbe_v1_13.fields.last_px, range, value, display)

  return offset + length, value
end

-- Calculate size of: Execution Report Trade Correction Message
n24x_equities_memo_sbe_v1_13_size_of.execution_report_trade_correction_message = function(buffer, offset)
  local index = 0

  index = index + n24x_equities_memo_sbe_v1_13_size_of.sending_time

  index = index + n24x_equities_memo_sbe_v1_13_size_of.order_id

  index = index + n24x_equities_memo_sbe_v1_13_size_of.clordid

  index = index + n24x_equities_memo_sbe_v1_13_size_of.exec_id

  index = index + n24x_equities_memo_sbe_v1_13_size_of.exec_ref_id

  index = index + n24x_equities_memo_sbe_v1_13_size_of.trd_match_id

  index = index + n24x_equities_memo_sbe_v1_13_size_of.ord_status

  index = index + n24x_equities_memo_sbe_v1_13_size_of.last_px

  index = index + n24x_equities_memo_sbe_v1_13_size_of.last_qty_optional

  index = index + n24x_equities_memo_sbe_v1_13_size_of.leaves_qty

  index = index + n24x_equities_memo_sbe_v1_13_size_of.cum_qty

  index = index + n24x_equities_memo_sbe_v1_13_size_of.link_id_optional

  index = index + n24x_equities_memo_sbe_v1_13_size_of.security_group

  index = index + n24x_equities_memo_sbe_v1_13_size_of.parties_groups(buffer, offset + index)

  return index
end

-- Display: Execution Report Trade Correction Message
n24x_equities_memo_sbe_v1_13_display.execution_report_trade_correction_message = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Execution Report Trade Correction Message
n24x_equities_memo_sbe_v1_13_dissect.execution_report_trade_correction_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Sending Time: 8 Byte Unsigned Fixed Width Integer
  index, sending_time = n24x_equities_memo_sbe_v1_13_dissect.sending_time(buffer, index, packet, parent)

  -- Order Id: 8 Byte Unsigned Fixed Width Integer
  index, order_id = n24x_equities_memo_sbe_v1_13_dissect.order_id(buffer, index, packet, parent)

  -- ClOrdId: 16 Byte Ascii String
  index, clordid = n24x_equities_memo_sbe_v1_13_dissect.clordid(buffer, index, packet, parent)

  -- Exec Id: 8 Byte Unsigned Fixed Width Integer
  index, exec_id = n24x_equities_memo_sbe_v1_13_dissect.exec_id(buffer, index, packet, parent)

  -- Exec Ref Id: 8 Byte Unsigned Fixed Width Integer
  index, exec_ref_id = n24x_equities_memo_sbe_v1_13_dissect.exec_ref_id(buffer, index, packet, parent)

  -- Trd Match Id: 8 Byte Unsigned Fixed Width Integer
  index, trd_match_id = n24x_equities_memo_sbe_v1_13_dissect.trd_match_id(buffer, index, packet, parent)

  -- Ord Status: 1 Byte Ascii String Enum with 9 values
  index, ord_status = n24x_equities_memo_sbe_v1_13_dissect.ord_status(buffer, index, packet, parent)

  -- Last Px: 8 Byte Signed Fixed Width Integer
  index, last_px = n24x_equities_memo_sbe_v1_13_dissect.last_px(buffer, index, packet, parent)

  -- Last Qty Optional: 4 Byte Unsigned Fixed Width Integer Nullable
  index, last_qty_optional = n24x_equities_memo_sbe_v1_13_dissect.last_qty_optional(buffer, index, packet, parent)

  -- Leaves Qty: 4 Byte Unsigned Fixed Width Integer
  index, leaves_qty = n24x_equities_memo_sbe_v1_13_dissect.leaves_qty(buffer, index, packet, parent)

  -- Cum Qty: 4 Byte Unsigned Fixed Width Integer
  index, cum_qty = n24x_equities_memo_sbe_v1_13_dissect.cum_qty(buffer, index, packet, parent)

  -- Link Id Optional: 4 Byte Ascii String Nullable
  index, link_id_optional = n24x_equities_memo_sbe_v1_13_dissect.link_id_optional(buffer, index, packet, parent)

  -- Security Group: 1 Byte Ascii String
  index, security_group = n24x_equities_memo_sbe_v1_13_dissect.security_group(buffer, index, packet, parent)

  -- Parties Groups: Struct of 2 fields
  index, parties_groups = n24x_equities_memo_sbe_v1_13_dissect.parties_groups(buffer, index, packet, parent)

  return index
end

-- Dissect: Execution Report Trade Correction Message
n24x_equities_memo_sbe_v1_13_dissect.execution_report_trade_correction_message = function(buffer, offset, packet, parent)
  -- Optionally add dynamic struct element to protocol tree
  if show.execution_report_trade_correction_message then
    local length = n24x_equities_memo_sbe_v1_13_size_of.execution_report_trade_correction_message(buffer, offset)
    local range = buffer(offset, length)
    local display = n24x_equities_memo_sbe_v1_13_display.execution_report_trade_correction_message(buffer, packet, parent)
    parent = parent:add(n24x_equities_memo_sbe_v1_13.fields.execution_report_trade_correction_message, range, display)
  end

  return n24x_equities_memo_sbe_v1_13_dissect.execution_report_trade_correction_message_fields(buffer, offset, packet, parent)
end

-- Size: Locate Broker Optional
n24x_equities_memo_sbe_v1_13_size_of.locate_broker_optional = 4

-- Display: Locate Broker Optional
n24x_equities_memo_sbe_v1_13_display.locate_broker_optional = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Locate Broker Optional: No Value"
  end

  return "Locate Broker Optional: "..value
end

-- Dissect: Locate Broker Optional
n24x_equities_memo_sbe_v1_13_dissect.locate_broker_optional = function(buffer, offset, packet, parent)
  local length = n24x_equities_memo_sbe_v1_13_size_of.locate_broker_optional
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

  local display = n24x_equities_memo_sbe_v1_13_display.locate_broker_optional(value, buffer, offset, packet, parent)

  parent:add(n24x_equities_memo_sbe_v1_13.fields.locate_broker_optional, range, value, display)

  return offset + length, value
end

-- Size: Locate Reqd
n24x_equities_memo_sbe_v1_13_size_of.locate_reqd = 1

-- Display: Locate Reqd
n24x_equities_memo_sbe_v1_13_display.locate_reqd = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Locate Reqd: No Value"
  end

  return "Locate Reqd: "..value
end

-- Dissect: Locate Reqd
n24x_equities_memo_sbe_v1_13_dissect.locate_reqd = function(buffer, offset, packet, parent)
  local length = n24x_equities_memo_sbe_v1_13_size_of.locate_reqd
  local range = buffer(offset, length)

  -- parse as byte
  local value = range:uint()

  -- check if value is non zero
  if value ~= 0 then
    value = range:string()
  end

  local display = n24x_equities_memo_sbe_v1_13_display.locate_reqd(value, buffer, offset, packet, parent)

  parent:add(n24x_equities_memo_sbe_v1_13.fields.locate_reqd, range, value, display)

  return offset + length, value
end

-- Size: Display Qty
n24x_equities_memo_sbe_v1_13_size_of.display_qty = 4

-- Display: Display Qty
n24x_equities_memo_sbe_v1_13_display.display_qty = function(value)
  -- Check if field has value
  if value == 4294967295 then
    return "Display Qty: No Value"
  end

  return "Display Qty: "..value
end

-- Dissect: Display Qty
n24x_equities_memo_sbe_v1_13_dissect.display_qty = function(buffer, offset, packet, parent)
  local length = n24x_equities_memo_sbe_v1_13_size_of.display_qty
  local range = buffer(offset, length)
  local value = range:uint()
  local display = n24x_equities_memo_sbe_v1_13_display.display_qty(value, buffer, offset, packet, parent)

  parent:add(n24x_equities_memo_sbe_v1_13.fields.display_qty, range, value, display)

  return offset + length, value
end

-- Size: Price
n24x_equities_memo_sbe_v1_13_size_of.price = 8

-- Display: Price
n24x_equities_memo_sbe_v1_13_display.price = function(raw, value)
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
n24x_equities_memo_sbe_v1_13_dissect.price = function(buffer, offset, packet, parent)
  local length = n24x_equities_memo_sbe_v1_13_size_of.price
  local range = buffer(offset, length)
  local raw = range:int64()
  local value = translate.price(raw)
  local display = n24x_equities_memo_sbe_v1_13_display.price(raw, value, buffer, offset, packet, parent)

  parent:add(n24x_equities_memo_sbe_v1_13.fields.price, range, value, display)

  return offset + length, value
end

-- Size: Ord Type
n24x_equities_memo_sbe_v1_13_size_of.ord_type = 1

-- Display: Ord Type
n24x_equities_memo_sbe_v1_13_display.ord_type = function(value)
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
n24x_equities_memo_sbe_v1_13_dissect.ord_type = function(buffer, offset, packet, parent)
  local length = n24x_equities_memo_sbe_v1_13_size_of.ord_type
  local range = buffer(offset, length)

  -- parse as byte
  local value = range:uint()

  -- check if value is non zero
  if value ~= 0 then
    value = range:string()
  end

  local display = n24x_equities_memo_sbe_v1_13_display.ord_type(value, buffer, offset, packet, parent)

  parent:add(n24x_equities_memo_sbe_v1_13.fields.ord_type, range, value, display)

  return offset + length, value
end

-- Size: Order Qty
n24x_equities_memo_sbe_v1_13_size_of.order_qty = 4

-- Display: Order Qty
n24x_equities_memo_sbe_v1_13_display.order_qty = function(value)
  return "Order Qty: "..value
end

-- Dissect: Order Qty
n24x_equities_memo_sbe_v1_13_dissect.order_qty = function(buffer, offset, packet, parent)
  local length = n24x_equities_memo_sbe_v1_13_size_of.order_qty
  local range = buffer(offset, length)
  local value = range:uint()
  local display = n24x_equities_memo_sbe_v1_13_display.order_qty(value, buffer, offset, packet, parent)

  parent:add(n24x_equities_memo_sbe_v1_13.fields.order_qty, range, value, display)

  return offset + length, value
end

-- Size: Side
n24x_equities_memo_sbe_v1_13_size_of.side = 1

-- Display: Side
n24x_equities_memo_sbe_v1_13_display.side = function(value)
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
n24x_equities_memo_sbe_v1_13_dissect.side = function(buffer, offset, packet, parent)
  local length = n24x_equities_memo_sbe_v1_13_size_of.side
  local range = buffer(offset, length)

  -- parse as byte
  local value = range:uint()

  -- check if value is non zero
  if value ~= 0 then
    value = range:string()
  end

  local display = n24x_equities_memo_sbe_v1_13_display.side(value, buffer, offset, packet, parent)

  parent:add(n24x_equities_memo_sbe_v1_13.fields.side, range, value, display)

  return offset + length, value
end

-- Size: OrigClOrdId Optional
n24x_equities_memo_sbe_v1_13_size_of.origclordid_optional = 16

-- Display: OrigClOrdId Optional
n24x_equities_memo_sbe_v1_13_display.origclordid_optional = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "OrigClOrdId Optional: No Value"
  end

  return "OrigClOrdId Optional: "..value
end

-- Dissect: OrigClOrdId Optional
n24x_equities_memo_sbe_v1_13_dissect.origclordid_optional = function(buffer, offset, packet, parent)
  local length = n24x_equities_memo_sbe_v1_13_size_of.origclordid_optional
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

  local display = n24x_equities_memo_sbe_v1_13_display.origclordid_optional(value, buffer, offset, packet, parent)

  parent:add(n24x_equities_memo_sbe_v1_13.fields.origclordid_optional, range, value, display)

  return offset + length, value
end

-- Calculate size of: Execution Report Replaced Message
n24x_equities_memo_sbe_v1_13_size_of.execution_report_replaced_message = function(buffer, offset)
  local index = 0

  index = index + n24x_equities_memo_sbe_v1_13_size_of.sending_time

  index = index + n24x_equities_memo_sbe_v1_13_size_of.order_id

  index = index + n24x_equities_memo_sbe_v1_13_size_of.clordid

  index = index + n24x_equities_memo_sbe_v1_13_size_of.origclordid_optional

  index = index + n24x_equities_memo_sbe_v1_13_size_of.exec_id

  index = index + n24x_equities_memo_sbe_v1_13_size_of.symbol

  index = index + n24x_equities_memo_sbe_v1_13_size_of.symbol_sfx

  index = index + n24x_equities_memo_sbe_v1_13_size_of.side

  index = index + n24x_equities_memo_sbe_v1_13_size_of.order_qty

  index = index + n24x_equities_memo_sbe_v1_13_size_of.ord_type

  index = index + n24x_equities_memo_sbe_v1_13_size_of.price

  index = index + n24x_equities_memo_sbe_v1_13_size_of.display_qty

  index = index + n24x_equities_memo_sbe_v1_13_size_of.locate_reqd

  index = index + n24x_equities_memo_sbe_v1_13_size_of.ord_status

  index = index + n24x_equities_memo_sbe_v1_13_size_of.leaves_qty

  index = index + n24x_equities_memo_sbe_v1_13_size_of.cum_qty

  index = index + n24x_equities_memo_sbe_v1_13_size_of.transact_time

  index = index + n24x_equities_memo_sbe_v1_13_size_of.link_id_optional

  index = index + n24x_equities_memo_sbe_v1_13_size_of.locate_broker_optional

  index = index + n24x_equities_memo_sbe_v1_13_size_of.parties_groups(buffer, offset + index)

  return index
end

-- Display: Execution Report Replaced Message
n24x_equities_memo_sbe_v1_13_display.execution_report_replaced_message = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Execution Report Replaced Message
n24x_equities_memo_sbe_v1_13_dissect.execution_report_replaced_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Sending Time: 8 Byte Unsigned Fixed Width Integer
  index, sending_time = n24x_equities_memo_sbe_v1_13_dissect.sending_time(buffer, index, packet, parent)

  -- Order Id: 8 Byte Unsigned Fixed Width Integer
  index, order_id = n24x_equities_memo_sbe_v1_13_dissect.order_id(buffer, index, packet, parent)

  -- ClOrdId: 16 Byte Ascii String
  index, clordid = n24x_equities_memo_sbe_v1_13_dissect.clordid(buffer, index, packet, parent)

  -- OrigClOrdId Optional: 16 Byte Ascii String Nullable
  index, origclordid_optional = n24x_equities_memo_sbe_v1_13_dissect.origclordid_optional(buffer, index, packet, parent)

  -- Exec Id: 8 Byte Unsigned Fixed Width Integer
  index, exec_id = n24x_equities_memo_sbe_v1_13_dissect.exec_id(buffer, index, packet, parent)

  -- Symbol: 6 Byte Ascii String
  index, symbol = n24x_equities_memo_sbe_v1_13_dissect.symbol(buffer, index, packet, parent)

  -- Symbol Sfx: 6 Byte Ascii String Nullable
  index, symbol_sfx = n24x_equities_memo_sbe_v1_13_dissect.symbol_sfx(buffer, index, packet, parent)

  -- Side: 1 Byte Ascii String Enum with 4 values
  index, side = n24x_equities_memo_sbe_v1_13_dissect.side(buffer, index, packet, parent)

  -- Order Qty: 4 Byte Unsigned Fixed Width Integer
  index, order_qty = n24x_equities_memo_sbe_v1_13_dissect.order_qty(buffer, index, packet, parent)

  -- Ord Type: 1 Byte Ascii String Enum with 3 values
  index, ord_type = n24x_equities_memo_sbe_v1_13_dissect.ord_type(buffer, index, packet, parent)

  -- Price: 8 Byte Signed Fixed Width Integer Nullable
  index, price = n24x_equities_memo_sbe_v1_13_dissect.price(buffer, index, packet, parent)

  -- Display Qty: 4 Byte Unsigned Fixed Width Integer Nullable
  index, display_qty = n24x_equities_memo_sbe_v1_13_dissect.display_qty(buffer, index, packet, parent)

  -- Locate Reqd: 1 Byte Ascii String Nullable
  index, locate_reqd = n24x_equities_memo_sbe_v1_13_dissect.locate_reqd(buffer, index, packet, parent)

  -- Ord Status: 1 Byte Ascii String Enum with 9 values
  index, ord_status = n24x_equities_memo_sbe_v1_13_dissect.ord_status(buffer, index, packet, parent)

  -- Leaves Qty: 4 Byte Unsigned Fixed Width Integer
  index, leaves_qty = n24x_equities_memo_sbe_v1_13_dissect.leaves_qty(buffer, index, packet, parent)

  -- Cum Qty: 4 Byte Unsigned Fixed Width Integer
  index, cum_qty = n24x_equities_memo_sbe_v1_13_dissect.cum_qty(buffer, index, packet, parent)

  -- Transact Time: 8 Byte Unsigned Fixed Width Integer
  index, transact_time = n24x_equities_memo_sbe_v1_13_dissect.transact_time(buffer, index, packet, parent)

  -- Link Id Optional: 4 Byte Ascii String Nullable
  index, link_id_optional = n24x_equities_memo_sbe_v1_13_dissect.link_id_optional(buffer, index, packet, parent)

  -- Locate Broker Optional: 4 Byte Ascii String Nullable
  index, locate_broker_optional = n24x_equities_memo_sbe_v1_13_dissect.locate_broker_optional(buffer, index, packet, parent)

  -- Parties Groups: Struct of 2 fields
  index, parties_groups = n24x_equities_memo_sbe_v1_13_dissect.parties_groups(buffer, index, packet, parent)

  return index
end

-- Dissect: Execution Report Replaced Message
n24x_equities_memo_sbe_v1_13_dissect.execution_report_replaced_message = function(buffer, offset, packet, parent)
  -- Optionally add dynamic struct element to protocol tree
  if show.execution_report_replaced_message then
    local length = n24x_equities_memo_sbe_v1_13_size_of.execution_report_replaced_message(buffer, offset)
    local range = buffer(offset, length)
    local display = n24x_equities_memo_sbe_v1_13_display.execution_report_replaced_message(buffer, packet, parent)
    parent = parent:add(n24x_equities_memo_sbe_v1_13.fields.execution_report_replaced_message, range, display)
  end

  return n24x_equities_memo_sbe_v1_13_dissect.execution_report_replaced_message_fields(buffer, offset, packet, parent)
end

-- Calculate size of: Execution Report Pending Replace Message
n24x_equities_memo_sbe_v1_13_size_of.execution_report_pending_replace_message = function(buffer, offset)
  local index = 0

  index = index + n24x_equities_memo_sbe_v1_13_size_of.sending_time

  index = index + n24x_equities_memo_sbe_v1_13_size_of.order_id

  index = index + n24x_equities_memo_sbe_v1_13_size_of.clordid

  index = index + n24x_equities_memo_sbe_v1_13_size_of.origclordid_optional

  index = index + n24x_equities_memo_sbe_v1_13_size_of.exec_id

  index = index + n24x_equities_memo_sbe_v1_13_size_of.symbol

  index = index + n24x_equities_memo_sbe_v1_13_size_of.symbol_sfx

  index = index + n24x_equities_memo_sbe_v1_13_size_of.side

  index = index + n24x_equities_memo_sbe_v1_13_size_of.order_qty

  index = index + n24x_equities_memo_sbe_v1_13_size_of.ord_type

  index = index + n24x_equities_memo_sbe_v1_13_size_of.price

  index = index + n24x_equities_memo_sbe_v1_13_size_of.display_qty

  index = index + n24x_equities_memo_sbe_v1_13_size_of.locate_reqd

  index = index + n24x_equities_memo_sbe_v1_13_size_of.ord_status

  index = index + n24x_equities_memo_sbe_v1_13_size_of.leaves_qty

  index = index + n24x_equities_memo_sbe_v1_13_size_of.cum_qty

  index = index + n24x_equities_memo_sbe_v1_13_size_of.link_id_optional

  index = index + n24x_equities_memo_sbe_v1_13_size_of.locate_broker_optional

  index = index + n24x_equities_memo_sbe_v1_13_size_of.parties_groups(buffer, offset + index)

  return index
end

-- Display: Execution Report Pending Replace Message
n24x_equities_memo_sbe_v1_13_display.execution_report_pending_replace_message = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Execution Report Pending Replace Message
n24x_equities_memo_sbe_v1_13_dissect.execution_report_pending_replace_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Sending Time: 8 Byte Unsigned Fixed Width Integer
  index, sending_time = n24x_equities_memo_sbe_v1_13_dissect.sending_time(buffer, index, packet, parent)

  -- Order Id: 8 Byte Unsigned Fixed Width Integer
  index, order_id = n24x_equities_memo_sbe_v1_13_dissect.order_id(buffer, index, packet, parent)

  -- ClOrdId: 16 Byte Ascii String
  index, clordid = n24x_equities_memo_sbe_v1_13_dissect.clordid(buffer, index, packet, parent)

  -- OrigClOrdId Optional: 16 Byte Ascii String Nullable
  index, origclordid_optional = n24x_equities_memo_sbe_v1_13_dissect.origclordid_optional(buffer, index, packet, parent)

  -- Exec Id: 8 Byte Unsigned Fixed Width Integer
  index, exec_id = n24x_equities_memo_sbe_v1_13_dissect.exec_id(buffer, index, packet, parent)

  -- Symbol: 6 Byte Ascii String
  index, symbol = n24x_equities_memo_sbe_v1_13_dissect.symbol(buffer, index, packet, parent)

  -- Symbol Sfx: 6 Byte Ascii String Nullable
  index, symbol_sfx = n24x_equities_memo_sbe_v1_13_dissect.symbol_sfx(buffer, index, packet, parent)

  -- Side: 1 Byte Ascii String Enum with 4 values
  index, side = n24x_equities_memo_sbe_v1_13_dissect.side(buffer, index, packet, parent)

  -- Order Qty: 4 Byte Unsigned Fixed Width Integer
  index, order_qty = n24x_equities_memo_sbe_v1_13_dissect.order_qty(buffer, index, packet, parent)

  -- Ord Type: 1 Byte Ascii String Enum with 3 values
  index, ord_type = n24x_equities_memo_sbe_v1_13_dissect.ord_type(buffer, index, packet, parent)

  -- Price: 8 Byte Signed Fixed Width Integer Nullable
  index, price = n24x_equities_memo_sbe_v1_13_dissect.price(buffer, index, packet, parent)

  -- Display Qty: 4 Byte Unsigned Fixed Width Integer Nullable
  index, display_qty = n24x_equities_memo_sbe_v1_13_dissect.display_qty(buffer, index, packet, parent)

  -- Locate Reqd: 1 Byte Ascii String Nullable
  index, locate_reqd = n24x_equities_memo_sbe_v1_13_dissect.locate_reqd(buffer, index, packet, parent)

  -- Ord Status: 1 Byte Ascii String Enum with 9 values
  index, ord_status = n24x_equities_memo_sbe_v1_13_dissect.ord_status(buffer, index, packet, parent)

  -- Leaves Qty: 4 Byte Unsigned Fixed Width Integer
  index, leaves_qty = n24x_equities_memo_sbe_v1_13_dissect.leaves_qty(buffer, index, packet, parent)

  -- Cum Qty: 4 Byte Unsigned Fixed Width Integer
  index, cum_qty = n24x_equities_memo_sbe_v1_13_dissect.cum_qty(buffer, index, packet, parent)

  -- Link Id Optional: 4 Byte Ascii String Nullable
  index, link_id_optional = n24x_equities_memo_sbe_v1_13_dissect.link_id_optional(buffer, index, packet, parent)

  -- Locate Broker Optional: 4 Byte Ascii String Nullable
  index, locate_broker_optional = n24x_equities_memo_sbe_v1_13_dissect.locate_broker_optional(buffer, index, packet, parent)

  -- Parties Groups: Struct of 2 fields
  index, parties_groups = n24x_equities_memo_sbe_v1_13_dissect.parties_groups(buffer, index, packet, parent)

  return index
end

-- Dissect: Execution Report Pending Replace Message
n24x_equities_memo_sbe_v1_13_dissect.execution_report_pending_replace_message = function(buffer, offset, packet, parent)
  -- Optionally add dynamic struct element to protocol tree
  if show.execution_report_pending_replace_message then
    local length = n24x_equities_memo_sbe_v1_13_size_of.execution_report_pending_replace_message(buffer, offset)
    local range = buffer(offset, length)
    local display = n24x_equities_memo_sbe_v1_13_display.execution_report_pending_replace_message(buffer, packet, parent)
    parent = parent:add(n24x_equities_memo_sbe_v1_13.fields.execution_report_pending_replace_message, range, display)
  end

  return n24x_equities_memo_sbe_v1_13_dissect.execution_report_pending_replace_message_fields(buffer, offset, packet, parent)
end

-- Calculate size of: Mass Cancel Done Message
n24x_equities_memo_sbe_v1_13_size_of.mass_cancel_done_message = function(buffer, offset)
  local index = 0

  index = index + n24x_equities_memo_sbe_v1_13_size_of.sending_time

  index = index + n24x_equities_memo_sbe_v1_13_size_of.clordid

  return index
end

-- Display: Mass Cancel Done Message
n24x_equities_memo_sbe_v1_13_display.mass_cancel_done_message = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Mass Cancel Done Message
n24x_equities_memo_sbe_v1_13_dissect.mass_cancel_done_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Sending Time: 8 Byte Unsigned Fixed Width Integer
  index, sending_time = n24x_equities_memo_sbe_v1_13_dissect.sending_time(buffer, index, packet, parent)

  -- ClOrdId: 16 Byte Ascii String
  index, clordid = n24x_equities_memo_sbe_v1_13_dissect.clordid(buffer, index, packet, parent)

  return index
end

-- Dissect: Mass Cancel Done Message
n24x_equities_memo_sbe_v1_13_dissect.mass_cancel_done_message = function(buffer, offset, packet, parent)
  if show.mass_cancel_done_message then
    -- Optionally add element to protocol tree
    parent = parent:add(n24x_equities_memo_sbe_v1_13.fields.mass_cancel_done_message, buffer(offset, 0))
    local index = n24x_equities_memo_sbe_v1_13_dissect.mass_cancel_done_message_fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = n24x_equities_memo_sbe_v1_13_display.mass_cancel_done_message(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return n24x_equities_memo_sbe_v1_13_dissect.mass_cancel_done_message_fields(buffer, offset, packet, parent)
  end
end

-- Size: Cancel Reason
n24x_equities_memo_sbe_v1_13_size_of.cancel_reason = 1

-- Display: Cancel Reason
n24x_equities_memo_sbe_v1_13_display.cancel_reason = function(value)
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
n24x_equities_memo_sbe_v1_13_dissect.cancel_reason = function(buffer, offset, packet, parent)
  local length = n24x_equities_memo_sbe_v1_13_size_of.cancel_reason
  local range = buffer(offset, length)
  local value = range:uint()
  local display = n24x_equities_memo_sbe_v1_13_display.cancel_reason(value, buffer, offset, packet, parent)

  parent:add(n24x_equities_memo_sbe_v1_13.fields.cancel_reason, range, value, display)

  return offset + length, value
end

-- Calculate size of: Execution Report Canceled Message
n24x_equities_memo_sbe_v1_13_size_of.execution_report_canceled_message = function(buffer, offset)
  local index = 0

  index = index + n24x_equities_memo_sbe_v1_13_size_of.sending_time

  index = index + n24x_equities_memo_sbe_v1_13_size_of.clordid

  index = index + n24x_equities_memo_sbe_v1_13_size_of.origclordid_optional

  index = index + n24x_equities_memo_sbe_v1_13_size_of.order_id

  index = index + n24x_equities_memo_sbe_v1_13_size_of.exec_id

  index = index + n24x_equities_memo_sbe_v1_13_size_of.ord_status

  index = index + n24x_equities_memo_sbe_v1_13_size_of.leaves_qty

  index = index + n24x_equities_memo_sbe_v1_13_size_of.cum_qty

  index = index + n24x_equities_memo_sbe_v1_13_size_of.cancel_reason

  index = index + n24x_equities_memo_sbe_v1_13_size_of.transact_time

  index = index + n24x_equities_memo_sbe_v1_13_size_of.link_id_optional

  index = index + n24x_equities_memo_sbe_v1_13_size_of.parties_groups(buffer, offset + index)

  return index
end

-- Display: Execution Report Canceled Message
n24x_equities_memo_sbe_v1_13_display.execution_report_canceled_message = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Execution Report Canceled Message
n24x_equities_memo_sbe_v1_13_dissect.execution_report_canceled_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Sending Time: 8 Byte Unsigned Fixed Width Integer
  index, sending_time = n24x_equities_memo_sbe_v1_13_dissect.sending_time(buffer, index, packet, parent)

  -- ClOrdId: 16 Byte Ascii String
  index, clordid = n24x_equities_memo_sbe_v1_13_dissect.clordid(buffer, index, packet, parent)

  -- OrigClOrdId Optional: 16 Byte Ascii String Nullable
  index, origclordid_optional = n24x_equities_memo_sbe_v1_13_dissect.origclordid_optional(buffer, index, packet, parent)

  -- Order Id: 8 Byte Unsigned Fixed Width Integer
  index, order_id = n24x_equities_memo_sbe_v1_13_dissect.order_id(buffer, index, packet, parent)

  -- Exec Id: 8 Byte Unsigned Fixed Width Integer
  index, exec_id = n24x_equities_memo_sbe_v1_13_dissect.exec_id(buffer, index, packet, parent)

  -- Ord Status: 1 Byte Ascii String Enum with 9 values
  index, ord_status = n24x_equities_memo_sbe_v1_13_dissect.ord_status(buffer, index, packet, parent)

  -- Leaves Qty: 4 Byte Unsigned Fixed Width Integer
  index, leaves_qty = n24x_equities_memo_sbe_v1_13_dissect.leaves_qty(buffer, index, packet, parent)

  -- Cum Qty: 4 Byte Unsigned Fixed Width Integer
  index, cum_qty = n24x_equities_memo_sbe_v1_13_dissect.cum_qty(buffer, index, packet, parent)

  -- Cancel Reason: 1 Byte Unsigned Fixed Width Integer Enum with 21 values
  index, cancel_reason = n24x_equities_memo_sbe_v1_13_dissect.cancel_reason(buffer, index, packet, parent)

  -- Transact Time: 8 Byte Unsigned Fixed Width Integer
  index, transact_time = n24x_equities_memo_sbe_v1_13_dissect.transact_time(buffer, index, packet, parent)

  -- Link Id Optional: 4 Byte Ascii String Nullable
  index, link_id_optional = n24x_equities_memo_sbe_v1_13_dissect.link_id_optional(buffer, index, packet, parent)

  -- Parties Groups: Struct of 2 fields
  index, parties_groups = n24x_equities_memo_sbe_v1_13_dissect.parties_groups(buffer, index, packet, parent)

  return index
end

-- Dissect: Execution Report Canceled Message
n24x_equities_memo_sbe_v1_13_dissect.execution_report_canceled_message = function(buffer, offset, packet, parent)
  -- Optionally add dynamic struct element to protocol tree
  if show.execution_report_canceled_message then
    local length = n24x_equities_memo_sbe_v1_13_size_of.execution_report_canceled_message(buffer, offset)
    local range = buffer(offset, length)
    local display = n24x_equities_memo_sbe_v1_13_display.execution_report_canceled_message(buffer, packet, parent)
    parent = parent:add(n24x_equities_memo_sbe_v1_13.fields.execution_report_canceled_message, range, display)
  end

  return n24x_equities_memo_sbe_v1_13_dissect.execution_report_canceled_message_fields(buffer, offset, packet, parent)
end

-- Calculate size of: Pending Mass Cancel Message
n24x_equities_memo_sbe_v1_13_size_of.pending_mass_cancel_message = function(buffer, offset)
  local index = 0

  index = index + n24x_equities_memo_sbe_v1_13_size_of.sending_time

  index = index + n24x_equities_memo_sbe_v1_13_size_of.clordid

  index = index + n24x_equities_memo_sbe_v1_13_size_of.symbol

  index = index + n24x_equities_memo_sbe_v1_13_size_of.symbol_sfx

  index = index + n24x_equities_memo_sbe_v1_13_size_of.side_optional

  index = index + n24x_equities_memo_sbe_v1_13_size_of.lower_than_price

  index = index + n24x_equities_memo_sbe_v1_13_size_of.higher_than_price

  index = index + n24x_equities_memo_sbe_v1_13_size_of.cancel_group_id

  return index
end

-- Display: Pending Mass Cancel Message
n24x_equities_memo_sbe_v1_13_display.pending_mass_cancel_message = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Pending Mass Cancel Message
n24x_equities_memo_sbe_v1_13_dissect.pending_mass_cancel_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Sending Time: 8 Byte Unsigned Fixed Width Integer
  index, sending_time = n24x_equities_memo_sbe_v1_13_dissect.sending_time(buffer, index, packet, parent)

  -- ClOrdId: 16 Byte Ascii String
  index, clordid = n24x_equities_memo_sbe_v1_13_dissect.clordid(buffer, index, packet, parent)

  -- Symbol: 6 Byte Ascii String
  index, symbol = n24x_equities_memo_sbe_v1_13_dissect.symbol(buffer, index, packet, parent)

  -- Symbol Sfx: 6 Byte Ascii String Nullable
  index, symbol_sfx = n24x_equities_memo_sbe_v1_13_dissect.symbol_sfx(buffer, index, packet, parent)

  -- Side Optional: 1 Byte Ascii String Enum with 5 values
  index, side_optional = n24x_equities_memo_sbe_v1_13_dissect.side_optional(buffer, index, packet, parent)

  -- Lower Than Price: 8 Byte Signed Fixed Width Integer Nullable
  index, lower_than_price = n24x_equities_memo_sbe_v1_13_dissect.lower_than_price(buffer, index, packet, parent)

  -- Higher Than Price: 8 Byte Signed Fixed Width Integer Nullable
  index, higher_than_price = n24x_equities_memo_sbe_v1_13_dissect.higher_than_price(buffer, index, packet, parent)

  -- Cancel Group Id: 2 Byte Unsigned Fixed Width Integer Nullable
  index, cancel_group_id = n24x_equities_memo_sbe_v1_13_dissect.cancel_group_id(buffer, index, packet, parent)

  return index
end

-- Dissect: Pending Mass Cancel Message
n24x_equities_memo_sbe_v1_13_dissect.pending_mass_cancel_message = function(buffer, offset, packet, parent)
  if show.pending_mass_cancel_message then
    -- Optionally add element to protocol tree
    parent = parent:add(n24x_equities_memo_sbe_v1_13.fields.pending_mass_cancel_message, buffer(offset, 0))
    local index = n24x_equities_memo_sbe_v1_13_dissect.pending_mass_cancel_message_fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = n24x_equities_memo_sbe_v1_13_display.pending_mass_cancel_message(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return n24x_equities_memo_sbe_v1_13_dissect.pending_mass_cancel_message_fields(buffer, offset, packet, parent)
  end
end

-- Calculate size of: Execution Report Pending Cancel Message
n24x_equities_memo_sbe_v1_13_size_of.execution_report_pending_cancel_message = function(buffer, offset)
  local index = 0

  index = index + n24x_equities_memo_sbe_v1_13_size_of.sending_time

  index = index + n24x_equities_memo_sbe_v1_13_size_of.order_id

  index = index + n24x_equities_memo_sbe_v1_13_size_of.clordid

  index = index + n24x_equities_memo_sbe_v1_13_size_of.origclordid_optional

  index = index + n24x_equities_memo_sbe_v1_13_size_of.exec_id

  index = index + n24x_equities_memo_sbe_v1_13_size_of.symbol

  index = index + n24x_equities_memo_sbe_v1_13_size_of.symbol_sfx

  index = index + n24x_equities_memo_sbe_v1_13_size_of.ord_status

  index = index + n24x_equities_memo_sbe_v1_13_size_of.leaves_qty

  index = index + n24x_equities_memo_sbe_v1_13_size_of.cum_qty

  index = index + n24x_equities_memo_sbe_v1_13_size_of.link_id_optional

  index = index + n24x_equities_memo_sbe_v1_13_size_of.parties_groups(buffer, offset + index)

  return index
end

-- Display: Execution Report Pending Cancel Message
n24x_equities_memo_sbe_v1_13_display.execution_report_pending_cancel_message = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Execution Report Pending Cancel Message
n24x_equities_memo_sbe_v1_13_dissect.execution_report_pending_cancel_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Sending Time: 8 Byte Unsigned Fixed Width Integer
  index, sending_time = n24x_equities_memo_sbe_v1_13_dissect.sending_time(buffer, index, packet, parent)

  -- Order Id: 8 Byte Unsigned Fixed Width Integer
  index, order_id = n24x_equities_memo_sbe_v1_13_dissect.order_id(buffer, index, packet, parent)

  -- ClOrdId: 16 Byte Ascii String
  index, clordid = n24x_equities_memo_sbe_v1_13_dissect.clordid(buffer, index, packet, parent)

  -- OrigClOrdId Optional: 16 Byte Ascii String Nullable
  index, origclordid_optional = n24x_equities_memo_sbe_v1_13_dissect.origclordid_optional(buffer, index, packet, parent)

  -- Exec Id: 8 Byte Unsigned Fixed Width Integer
  index, exec_id = n24x_equities_memo_sbe_v1_13_dissect.exec_id(buffer, index, packet, parent)

  -- Symbol: 6 Byte Ascii String
  index, symbol = n24x_equities_memo_sbe_v1_13_dissect.symbol(buffer, index, packet, parent)

  -- Symbol Sfx: 6 Byte Ascii String Nullable
  index, symbol_sfx = n24x_equities_memo_sbe_v1_13_dissect.symbol_sfx(buffer, index, packet, parent)

  -- Ord Status: 1 Byte Ascii String Enum with 9 values
  index, ord_status = n24x_equities_memo_sbe_v1_13_dissect.ord_status(buffer, index, packet, parent)

  -- Leaves Qty: 4 Byte Unsigned Fixed Width Integer
  index, leaves_qty = n24x_equities_memo_sbe_v1_13_dissect.leaves_qty(buffer, index, packet, parent)

  -- Cum Qty: 4 Byte Unsigned Fixed Width Integer
  index, cum_qty = n24x_equities_memo_sbe_v1_13_dissect.cum_qty(buffer, index, packet, parent)

  -- Link Id Optional: 4 Byte Ascii String Nullable
  index, link_id_optional = n24x_equities_memo_sbe_v1_13_dissect.link_id_optional(buffer, index, packet, parent)

  -- Parties Groups: Struct of 2 fields
  index, parties_groups = n24x_equities_memo_sbe_v1_13_dissect.parties_groups(buffer, index, packet, parent)

  return index
end

-- Dissect: Execution Report Pending Cancel Message
n24x_equities_memo_sbe_v1_13_dissect.execution_report_pending_cancel_message = function(buffer, offset, packet, parent)
  -- Optionally add dynamic struct element to protocol tree
  if show.execution_report_pending_cancel_message then
    local length = n24x_equities_memo_sbe_v1_13_size_of.execution_report_pending_cancel_message(buffer, offset)
    local range = buffer(offset, length)
    local display = n24x_equities_memo_sbe_v1_13_display.execution_report_pending_cancel_message(buffer, packet, parent)
    parent = parent:add(n24x_equities_memo_sbe_v1_13.fields.execution_report_pending_cancel_message, range, display)
  end

  return n24x_equities_memo_sbe_v1_13_dissect.execution_report_pending_cancel_message_fields(buffer, offset, packet, parent)
end

-- Size: Trd Matching Id
n24x_equities_memo_sbe_v1_13_size_of.trd_matching_id = 8

-- Display: Trd Matching Id
n24x_equities_memo_sbe_v1_13_display.trd_matching_id = function(value)
  return "Trd Matching Id: "..value
end

-- Dissect: Trd Matching Id
n24x_equities_memo_sbe_v1_13_dissect.trd_matching_id = function(buffer, offset, packet, parent)
  local length = n24x_equities_memo_sbe_v1_13_size_of.trd_matching_id
  local range = buffer(offset, length)
  local value = range:uint64()
  local display = n24x_equities_memo_sbe_v1_13_display.trd_matching_id(value, buffer, offset, packet, parent)

  parent:add(n24x_equities_memo_sbe_v1_13.fields.trd_matching_id, range, value, display)

  return offset + length, value
end

-- Size: Last Mkt
n24x_equities_memo_sbe_v1_13_size_of.last_mkt = 4

-- Display: Last Mkt
n24x_equities_memo_sbe_v1_13_display.last_mkt = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Last Mkt: No Value"
  end

  return "Last Mkt: "..value
end

-- Dissect: Last Mkt
n24x_equities_memo_sbe_v1_13_dissect.last_mkt = function(buffer, offset, packet, parent)
  local length = n24x_equities_memo_sbe_v1_13_size_of.last_mkt
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

  local display = n24x_equities_memo_sbe_v1_13_display.last_mkt(value, buffer, offset, packet, parent)

  parent:add(n24x_equities_memo_sbe_v1_13.fields.last_mkt, range, value, display)

  return offset + length, value
end

-- Size: Last Liquidity Ind
n24x_equities_memo_sbe_v1_13_size_of.last_liquidity_ind = 1

-- Display: Last Liquidity Ind
n24x_equities_memo_sbe_v1_13_display.last_liquidity_ind = function(value)
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
n24x_equities_memo_sbe_v1_13_dissect.last_liquidity_ind = function(buffer, offset, packet, parent)
  local length = n24x_equities_memo_sbe_v1_13_size_of.last_liquidity_ind
  local range = buffer(offset, length)
  local value = range:uint()
  local display = n24x_equities_memo_sbe_v1_13_display.last_liquidity_ind(value, buffer, offset, packet, parent)

  parent:add(n24x_equities_memo_sbe_v1_13.fields.last_liquidity_ind, range, value, display)

  return offset + length, value
end

-- Size: Last Qty
n24x_equities_memo_sbe_v1_13_size_of.last_qty = 4

-- Display: Last Qty
n24x_equities_memo_sbe_v1_13_display.last_qty = function(value)
  return "Last Qty: "..value
end

-- Dissect: Last Qty
n24x_equities_memo_sbe_v1_13_dissect.last_qty = function(buffer, offset, packet, parent)
  local length = n24x_equities_memo_sbe_v1_13_size_of.last_qty
  local range = buffer(offset, length)
  local value = range:uint()
  local display = n24x_equities_memo_sbe_v1_13_display.last_qty(value, buffer, offset, packet, parent)

  parent:add(n24x_equities_memo_sbe_v1_13.fields.last_qty, range, value, display)

  return offset + length, value
end

-- Calculate size of: Execution Report Trade Message
n24x_equities_memo_sbe_v1_13_size_of.execution_report_trade_message = function(buffer, offset)
  local index = 0

  index = index + n24x_equities_memo_sbe_v1_13_size_of.sending_time

  index = index + n24x_equities_memo_sbe_v1_13_size_of.order_id

  index = index + n24x_equities_memo_sbe_v1_13_size_of.clordid

  index = index + n24x_equities_memo_sbe_v1_13_size_of.exec_id

  index = index + n24x_equities_memo_sbe_v1_13_size_of.ord_status

  index = index + n24x_equities_memo_sbe_v1_13_size_of.last_qty

  index = index + n24x_equities_memo_sbe_v1_13_size_of.last_px

  index = index + n24x_equities_memo_sbe_v1_13_size_of.leaves_qty

  index = index + n24x_equities_memo_sbe_v1_13_size_of.cum_qty

  index = index + n24x_equities_memo_sbe_v1_13_size_of.transact_time

  index = index + n24x_equities_memo_sbe_v1_13_size_of.last_liquidity_ind

  index = index + n24x_equities_memo_sbe_v1_13_size_of.last_mkt

  index = index + n24x_equities_memo_sbe_v1_13_size_of.trd_matching_id

  index = index + n24x_equities_memo_sbe_v1_13_size_of.link_id_optional

  index = index + n24x_equities_memo_sbe_v1_13_size_of.security_group

  index = index + n24x_equities_memo_sbe_v1_13_size_of.parties_groups(buffer, offset + index)

  return index
end

-- Display: Execution Report Trade Message
n24x_equities_memo_sbe_v1_13_display.execution_report_trade_message = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Execution Report Trade Message
n24x_equities_memo_sbe_v1_13_dissect.execution_report_trade_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Sending Time: 8 Byte Unsigned Fixed Width Integer
  index, sending_time = n24x_equities_memo_sbe_v1_13_dissect.sending_time(buffer, index, packet, parent)

  -- Order Id: 8 Byte Unsigned Fixed Width Integer
  index, order_id = n24x_equities_memo_sbe_v1_13_dissect.order_id(buffer, index, packet, parent)

  -- ClOrdId: 16 Byte Ascii String
  index, clordid = n24x_equities_memo_sbe_v1_13_dissect.clordid(buffer, index, packet, parent)

  -- Exec Id: 8 Byte Unsigned Fixed Width Integer
  index, exec_id = n24x_equities_memo_sbe_v1_13_dissect.exec_id(buffer, index, packet, parent)

  -- Ord Status: 1 Byte Ascii String Enum with 9 values
  index, ord_status = n24x_equities_memo_sbe_v1_13_dissect.ord_status(buffer, index, packet, parent)

  -- Last Qty: 4 Byte Unsigned Fixed Width Integer
  index, last_qty = n24x_equities_memo_sbe_v1_13_dissect.last_qty(buffer, index, packet, parent)

  -- Last Px: 8 Byte Signed Fixed Width Integer
  index, last_px = n24x_equities_memo_sbe_v1_13_dissect.last_px(buffer, index, packet, parent)

  -- Leaves Qty: 4 Byte Unsigned Fixed Width Integer
  index, leaves_qty = n24x_equities_memo_sbe_v1_13_dissect.leaves_qty(buffer, index, packet, parent)

  -- Cum Qty: 4 Byte Unsigned Fixed Width Integer
  index, cum_qty = n24x_equities_memo_sbe_v1_13_dissect.cum_qty(buffer, index, packet, parent)

  -- Transact Time: 8 Byte Unsigned Fixed Width Integer
  index, transact_time = n24x_equities_memo_sbe_v1_13_dissect.transact_time(buffer, index, packet, parent)

  -- Last Liquidity Ind: 1 Byte Unsigned Fixed Width Integer Enum with 24 values
  index, last_liquidity_ind = n24x_equities_memo_sbe_v1_13_dissect.last_liquidity_ind(buffer, index, packet, parent)

  -- Last Mkt: 4 Byte Ascii String
  index, last_mkt = n24x_equities_memo_sbe_v1_13_dissect.last_mkt(buffer, index, packet, parent)

  -- Trd Matching Id: 8 Byte Unsigned Fixed Width Integer
  index, trd_matching_id = n24x_equities_memo_sbe_v1_13_dissect.trd_matching_id(buffer, index, packet, parent)

  -- Link Id Optional: 4 Byte Ascii String Nullable
  index, link_id_optional = n24x_equities_memo_sbe_v1_13_dissect.link_id_optional(buffer, index, packet, parent)

  -- Security Group: 1 Byte Ascii String
  index, security_group = n24x_equities_memo_sbe_v1_13_dissect.security_group(buffer, index, packet, parent)

  -- Parties Groups: Struct of 2 fields
  index, parties_groups = n24x_equities_memo_sbe_v1_13_dissect.parties_groups(buffer, index, packet, parent)

  return index
end

-- Dissect: Execution Report Trade Message
n24x_equities_memo_sbe_v1_13_dissect.execution_report_trade_message = function(buffer, offset, packet, parent)
  -- Optionally add dynamic struct element to protocol tree
  if show.execution_report_trade_message then
    local length = n24x_equities_memo_sbe_v1_13_size_of.execution_report_trade_message(buffer, offset)
    local range = buffer(offset, length)
    local display = n24x_equities_memo_sbe_v1_13_display.execution_report_trade_message(buffer, packet, parent)
    parent = parent:add(n24x_equities_memo_sbe_v1_13.fields.execution_report_trade_message, range, display)
  end

  return n24x_equities_memo_sbe_v1_13_dissect.execution_report_trade_message_fields(buffer, offset, packet, parent)
end

-- Size: Order Reject Reason
n24x_equities_memo_sbe_v1_13_size_of.order_reject_reason = 1

-- Display: Order Reject Reason
n24x_equities_memo_sbe_v1_13_display.order_reject_reason = function(value)
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
n24x_equities_memo_sbe_v1_13_dissect.order_reject_reason = function(buffer, offset, packet, parent)
  local length = n24x_equities_memo_sbe_v1_13_size_of.order_reject_reason
  local range = buffer(offset, length)
  local value = range:uint()
  local display = n24x_equities_memo_sbe_v1_13_display.order_reject_reason(value, buffer, offset, packet, parent)

  parent:add(n24x_equities_memo_sbe_v1_13.fields.order_reject_reason, range, value, display)

  return offset + length, value
end

-- Calculate size of: Execution Report Rejected Message
n24x_equities_memo_sbe_v1_13_size_of.execution_report_rejected_message = function(buffer, offset)
  local index = 0

  index = index + n24x_equities_memo_sbe_v1_13_size_of.sending_time

  index = index + n24x_equities_memo_sbe_v1_13_size_of.clordid

  index = index + n24x_equities_memo_sbe_v1_13_size_of.exec_id

  index = index + n24x_equities_memo_sbe_v1_13_size_of.ord_status

  index = index + n24x_equities_memo_sbe_v1_13_size_of.symbol

  index = index + n24x_equities_memo_sbe_v1_13_size_of.symbol_sfx

  index = index + n24x_equities_memo_sbe_v1_13_size_of.leaves_qty

  index = index + n24x_equities_memo_sbe_v1_13_size_of.cum_qty

  index = index + n24x_equities_memo_sbe_v1_13_size_of.order_reject_reason

  index = index + n24x_equities_memo_sbe_v1_13_size_of.link_id_optional

  index = index + n24x_equities_memo_sbe_v1_13_size_of.parties_groups(buffer, offset + index)

  return index
end

-- Display: Execution Report Rejected Message
n24x_equities_memo_sbe_v1_13_display.execution_report_rejected_message = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Execution Report Rejected Message
n24x_equities_memo_sbe_v1_13_dissect.execution_report_rejected_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Sending Time: 8 Byte Unsigned Fixed Width Integer
  index, sending_time = n24x_equities_memo_sbe_v1_13_dissect.sending_time(buffer, index, packet, parent)

  -- ClOrdId: 16 Byte Ascii String
  index, clordid = n24x_equities_memo_sbe_v1_13_dissect.clordid(buffer, index, packet, parent)

  -- Exec Id: 8 Byte Unsigned Fixed Width Integer
  index, exec_id = n24x_equities_memo_sbe_v1_13_dissect.exec_id(buffer, index, packet, parent)

  -- Ord Status: 1 Byte Ascii String Enum with 9 values
  index, ord_status = n24x_equities_memo_sbe_v1_13_dissect.ord_status(buffer, index, packet, parent)

  -- Symbol: 6 Byte Ascii String
  index, symbol = n24x_equities_memo_sbe_v1_13_dissect.symbol(buffer, index, packet, parent)

  -- Symbol Sfx: 6 Byte Ascii String Nullable
  index, symbol_sfx = n24x_equities_memo_sbe_v1_13_dissect.symbol_sfx(buffer, index, packet, parent)

  -- Leaves Qty: 4 Byte Unsigned Fixed Width Integer
  index, leaves_qty = n24x_equities_memo_sbe_v1_13_dissect.leaves_qty(buffer, index, packet, parent)

  -- Cum Qty: 4 Byte Unsigned Fixed Width Integer
  index, cum_qty = n24x_equities_memo_sbe_v1_13_dissect.cum_qty(buffer, index, packet, parent)

  -- Order Reject Reason: 1 Byte Unsigned Fixed Width Integer Enum with 95 values
  index, order_reject_reason = n24x_equities_memo_sbe_v1_13_dissect.order_reject_reason(buffer, index, packet, parent)

  -- Link Id Optional: 4 Byte Ascii String Nullable
  index, link_id_optional = n24x_equities_memo_sbe_v1_13_dissect.link_id_optional(buffer, index, packet, parent)

  -- Parties Groups: Struct of 2 fields
  index, parties_groups = n24x_equities_memo_sbe_v1_13_dissect.parties_groups(buffer, index, packet, parent)

  return index
end

-- Dissect: Execution Report Rejected Message
n24x_equities_memo_sbe_v1_13_dissect.execution_report_rejected_message = function(buffer, offset, packet, parent)
  -- Optionally add dynamic struct element to protocol tree
  if show.execution_report_rejected_message then
    local length = n24x_equities_memo_sbe_v1_13_size_of.execution_report_rejected_message(buffer, offset)
    local range = buffer(offset, length)
    local display = n24x_equities_memo_sbe_v1_13_display.execution_report_rejected_message(buffer, packet, parent)
    parent = parent:add(n24x_equities_memo_sbe_v1_13.fields.execution_report_rejected_message, range, display)
  end

  return n24x_equities_memo_sbe_v1_13_dissect.execution_report_rejected_message_fields(buffer, offset, packet, parent)
end

-- Size: Risk Group Id
n24x_equities_memo_sbe_v1_13_size_of.risk_group_id = 2

-- Display: Risk Group Id
n24x_equities_memo_sbe_v1_13_display.risk_group_id = function(value)
  -- Check if field has value
  if value == 65535 then
    return "Risk Group Id: No Value"
  end

  return "Risk Group Id: "..value
end

-- Dissect: Risk Group Id
n24x_equities_memo_sbe_v1_13_dissect.risk_group_id = function(buffer, offset, packet, parent)
  local length = n24x_equities_memo_sbe_v1_13_size_of.risk_group_id
  local range = buffer(offset, length)
  local value = range:uint()
  local display = n24x_equities_memo_sbe_v1_13_display.risk_group_id(value, buffer, offset, packet, parent)

  parent:add(n24x_equities_memo_sbe_v1_13.fields.risk_group_id, range, value, display)

  return offset + length, value
end

-- Size: Self Trade Prevention
n24x_equities_memo_sbe_v1_13_size_of.self_trade_prevention = 1

-- Display: Self Trade Prevention
n24x_equities_memo_sbe_v1_13_display.self_trade_prevention = function(value)
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
n24x_equities_memo_sbe_v1_13_dissect.self_trade_prevention = function(buffer, offset, packet, parent)
  local length = n24x_equities_memo_sbe_v1_13_size_of.self_trade_prevention
  local range = buffer(offset, length)
  local value = range:uint()
  local display = n24x_equities_memo_sbe_v1_13_display.self_trade_prevention(value, buffer, offset, packet, parent)

  parent:add(n24x_equities_memo_sbe_v1_13.fields.self_trade_prevention, range, value, display)

  return offset + length, value
end

-- Size: Stp Group Id
n24x_equities_memo_sbe_v1_13_size_of.stp_group_id = 2

-- Display: Stp Group Id
n24x_equities_memo_sbe_v1_13_display.stp_group_id = function(value)
  -- Check if field has value
  if value == 65535 then
    return "Stp Group Id: No Value"
  end

  return "Stp Group Id: "..value
end

-- Dissect: Stp Group Id
n24x_equities_memo_sbe_v1_13_dissect.stp_group_id = function(buffer, offset, packet, parent)
  local length = n24x_equities_memo_sbe_v1_13_size_of.stp_group_id
  local range = buffer(offset, length)
  local value = range:uint()
  local display = n24x_equities_memo_sbe_v1_13_display.stp_group_id(value, buffer, offset, packet, parent)

  parent:add(n24x_equities_memo_sbe_v1_13.fields.stp_group_id, range, value, display)

  return offset + length, value
end

-- Size: Reprice Behavior
n24x_equities_memo_sbe_v1_13_size_of.reprice_behavior = 1

-- Display: Reprice Behavior
n24x_equities_memo_sbe_v1_13_display.reprice_behavior = function(value)
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
n24x_equities_memo_sbe_v1_13_dissect.reprice_behavior = function(buffer, offset, packet, parent)
  local length = n24x_equities_memo_sbe_v1_13_size_of.reprice_behavior
  local range = buffer(offset, length)
  local value = range:uint()
  local display = n24x_equities_memo_sbe_v1_13_display.reprice_behavior(value, buffer, offset, packet, parent)

  parent:add(n24x_equities_memo_sbe_v1_13.fields.reprice_behavior, range, value, display)

  return offset + length, value
end

-- Size: Reprice Frequency
n24x_equities_memo_sbe_v1_13_size_of.reprice_frequency = 1

-- Display: Reprice Frequency
n24x_equities_memo_sbe_v1_13_display.reprice_frequency = function(value)
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
n24x_equities_memo_sbe_v1_13_dissect.reprice_frequency = function(buffer, offset, packet, parent)
  local length = n24x_equities_memo_sbe_v1_13_size_of.reprice_frequency
  local range = buffer(offset, length)
  local value = range:uint()
  local display = n24x_equities_memo_sbe_v1_13_display.reprice_frequency(value, buffer, offset, packet, parent)

  parent:add(n24x_equities_memo_sbe_v1_13.fields.reprice_frequency, range, value, display)

  return offset + length, value
end

-- Size: Display Min Incr
n24x_equities_memo_sbe_v1_13_size_of.display_min_incr = 4

-- Display: Display Min Incr
n24x_equities_memo_sbe_v1_13_display.display_min_incr = function(value)
  -- Check if field has value
  if value == 4294967295 then
    return "Display Min Incr: No Value"
  end

  return "Display Min Incr: "..value
end

-- Dissect: Display Min Incr
n24x_equities_memo_sbe_v1_13_dissect.display_min_incr = function(buffer, offset, packet, parent)
  local length = n24x_equities_memo_sbe_v1_13_size_of.display_min_incr
  local range = buffer(offset, length)
  local value = range:uint()
  local display = n24x_equities_memo_sbe_v1_13_display.display_min_incr(value, buffer, offset, packet, parent)

  parent:add(n24x_equities_memo_sbe_v1_13.fields.display_min_incr, range, value, display)

  return offset + length, value
end

-- Size: Reserve Replenish Timing
n24x_equities_memo_sbe_v1_13_size_of.reserve_replenish_timing = 1

-- Display: Reserve Replenish Timing
n24x_equities_memo_sbe_v1_13_display.reserve_replenish_timing = function(value)
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
n24x_equities_memo_sbe_v1_13_dissect.reserve_replenish_timing = function(buffer, offset, packet, parent)
  local length = n24x_equities_memo_sbe_v1_13_size_of.reserve_replenish_timing
  local range = buffer(offset, length)
  local value = range:uint()
  local display = n24x_equities_memo_sbe_v1_13_display.reserve_replenish_timing(value, buffer, offset, packet, parent)

  parent:add(n24x_equities_memo_sbe_v1_13.fields.reserve_replenish_timing, range, value, display)

  return offset + length, value
end

-- Size: Display Method
n24x_equities_memo_sbe_v1_13_size_of.display_method = 1

-- Display: Display Method
n24x_equities_memo_sbe_v1_13_display.display_method = function(value)
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
n24x_equities_memo_sbe_v1_13_dissect.display_method = function(buffer, offset, packet, parent)
  local length = n24x_equities_memo_sbe_v1_13_size_of.display_method
  local range = buffer(offset, length)

  -- parse as byte
  local value = range:uint()

  -- check if value is non zero
  if value ~= 0 then
    value = range:string()
  end

  local display = n24x_equities_memo_sbe_v1_13_display.display_method(value, buffer, offset, packet, parent)

  parent:add(n24x_equities_memo_sbe_v1_13.fields.display_method, range, value, display)

  return offset + length, value
end

-- Size: Min Qty
n24x_equities_memo_sbe_v1_13_size_of.min_qty = 4

-- Display: Min Qty
n24x_equities_memo_sbe_v1_13_display.min_qty = function(value)
  -- Check if field has value
  if value == 4294967295 then
    return "Min Qty: No Value"
  end

  return "Min Qty: "..value
end

-- Dissect: Min Qty
n24x_equities_memo_sbe_v1_13_dissect.min_qty = function(buffer, offset, packet, parent)
  local length = n24x_equities_memo_sbe_v1_13_size_of.min_qty
  local range = buffer(offset, length)
  local value = range:uint()
  local display = n24x_equities_memo_sbe_v1_13_display.min_qty(value, buffer, offset, packet, parent)

  parent:add(n24x_equities_memo_sbe_v1_13.fields.min_qty, range, value, display)

  return offset + length, value
end

-- Size: Expire Time
n24x_equities_memo_sbe_v1_13_size_of.expire_time = 8

-- Display: Expire Time
n24x_equities_memo_sbe_v1_13_display.expire_time = function(value)
  -- Check if field has value
  if value == UInt64(0xFFFFFFFF, 0xFFFFFFFF) then
    return "Expire Time: No Value"
  end

  return "Expire Time: "..value
end

-- Dissect: Expire Time
n24x_equities_memo_sbe_v1_13_dissect.expire_time = function(buffer, offset, packet, parent)
  local length = n24x_equities_memo_sbe_v1_13_size_of.expire_time
  local range = buffer(offset, length)
  local value = range:uint64()
  local display = n24x_equities_memo_sbe_v1_13_display.expire_time(value, buffer, offset, packet, parent)

  parent:add(n24x_equities_memo_sbe_v1_13.fields.expire_time, range, value, display)

  return offset + length, value
end

-- Size: Peg Price Type
n24x_equities_memo_sbe_v1_13_size_of.peg_price_type = 1

-- Display: Peg Price Type
n24x_equities_memo_sbe_v1_13_display.peg_price_type = function(value)
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
n24x_equities_memo_sbe_v1_13_dissect.peg_price_type = function(buffer, offset, packet, parent)
  local length = n24x_equities_memo_sbe_v1_13_size_of.peg_price_type
  local range = buffer(offset, length)
  local value = range:uint()
  local display = n24x_equities_memo_sbe_v1_13_display.peg_price_type(value, buffer, offset, packet, parent)

  parent:add(n24x_equities_memo_sbe_v1_13.fields.peg_price_type, range, value, display)

  return offset + length, value
end

-- Size: Peg Offset Value
n24x_equities_memo_sbe_v1_13_size_of.peg_offset_value = 8

-- Display: Peg Offset Value
n24x_equities_memo_sbe_v1_13_display.peg_offset_value = function(raw, value)
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
n24x_equities_memo_sbe_v1_13_dissect.peg_offset_value = function(buffer, offset, packet, parent)
  local length = n24x_equities_memo_sbe_v1_13_size_of.peg_offset_value
  local range = buffer(offset, length)
  local raw = range:int64()
  local value = translate.peg_offset_value(raw)
  local display = n24x_equities_memo_sbe_v1_13_display.peg_offset_value(raw, value, buffer, offset, packet, parent)

  parent:add(n24x_equities_memo_sbe_v1_13.fields.peg_offset_value, range, value, display)

  return offset + length, value
end

-- Size: Exec Inst
n24x_equities_memo_sbe_v1_13_size_of.exec_inst = 2

-- Display: Exec Inst
n24x_equities_memo_sbe_v1_13_display.exec_inst = function(buffer, packet, parent)
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
n24x_equities_memo_sbe_v1_13_dissect.exec_inst_bits = function(buffer, offset, packet, parent)

  -- Reserved 13: 13 Bit
  parent:add(n24x_equities_memo_sbe_v1_13.fields.reserved_13, buffer(offset, 2))

  -- External Routing Not Allowed: 1 Bit
  parent:add(n24x_equities_memo_sbe_v1_13.fields.external_routing_not_allowed, buffer(offset, 2))

  -- Intermarket Sweep: 1 Bit
  parent:add(n24x_equities_memo_sbe_v1_13.fields.intermarket_sweep, buffer(offset, 2))

  -- Participate Do Not Initiate: 1 Bit
  parent:add(n24x_equities_memo_sbe_v1_13.fields.participate_do_not_initiate, buffer(offset, 2))
end

-- Dissect: Exec Inst
n24x_equities_memo_sbe_v1_13_dissect.exec_inst = function(buffer, offset, packet, parent)
  local size = 2
  local range = buffer(offset, size)
  local display = n24x_equities_memo_sbe_v1_13_display.exec_inst(range, packet, parent)
  local element = parent:add(n24x_equities_memo_sbe_v1_13.fields.exec_inst, range, display)

  if show.exec_inst then
    n24x_equities_memo_sbe_v1_13_dissect.exec_inst_bits(buffer, offset, packet, element)
  end

  return offset + 2, range
end

-- Size: Cust Order Capacity Cust Order Capacity Type
n24x_equities_memo_sbe_v1_13_size_of.cust_order_capacity_cust_order_capacity_type = 1

-- Display: Cust Order Capacity Cust Order Capacity Type
n24x_equities_memo_sbe_v1_13_display.cust_order_capacity_cust_order_capacity_type = function(value)
  if value == 1 then
    return "Cust Order Capacity Cust Order Capacity Type: Member Trading On Their Own Account (1)"
  end
  if value == 5 then
    return "Cust Order Capacity Cust Order Capacity Type: Retail Customer (5)"
  end
  if value == 255 then
    return "Cust Order Capacity Cust Order Capacity Type: Null Value (255)"
  end

  return "Cust Order Capacity Cust Order Capacity Type: Unknown("..value..")"
end

-- Dissect: Cust Order Capacity Cust Order Capacity Type
n24x_equities_memo_sbe_v1_13_dissect.cust_order_capacity_cust_order_capacity_type = function(buffer, offset, packet, parent)
  local length = n24x_equities_memo_sbe_v1_13_size_of.cust_order_capacity_cust_order_capacity_type
  local range = buffer(offset, length)
  local value = range:uint()
  local display = n24x_equities_memo_sbe_v1_13_display.cust_order_capacity_cust_order_capacity_type(value, buffer, offset, packet, parent)

  parent:add(n24x_equities_memo_sbe_v1_13.fields.cust_order_capacity_cust_order_capacity_type, range, value, display)

  return offset + length, value
end

-- Size: Order Capacity
n24x_equities_memo_sbe_v1_13_size_of.order_capacity = 1

-- Display: Order Capacity
n24x_equities_memo_sbe_v1_13_display.order_capacity = function(value)
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
n24x_equities_memo_sbe_v1_13_dissect.order_capacity = function(buffer, offset, packet, parent)
  local length = n24x_equities_memo_sbe_v1_13_size_of.order_capacity
  local range = buffer(offset, length)

  -- parse as byte
  local value = range:uint()

  -- check if value is non zero
  if value ~= 0 then
    value = range:string()
  end

  local display = n24x_equities_memo_sbe_v1_13_display.order_capacity(value, buffer, offset, packet, parent)

  parent:add(n24x_equities_memo_sbe_v1_13.fields.order_capacity, range, value, display)

  return offset + length, value
end

-- Size: Time In Force
n24x_equities_memo_sbe_v1_13_size_of.time_in_force = 1

-- Display: Time In Force
n24x_equities_memo_sbe_v1_13_display.time_in_force = function(value)
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
n24x_equities_memo_sbe_v1_13_dissect.time_in_force = function(buffer, offset, packet, parent)
  local length = n24x_equities_memo_sbe_v1_13_size_of.time_in_force
  local range = buffer(offset, length)

  -- parse as byte
  local value = range:uint()

  -- check if value is non zero
  if value ~= 0 then
    value = range:string()
  end

  local display = n24x_equities_memo_sbe_v1_13_display.time_in_force(value, buffer, offset, packet, parent)

  parent:add(n24x_equities_memo_sbe_v1_13.fields.time_in_force, range, value, display)

  return offset + length, value
end

-- Calculate size of: Execution Report New Message
n24x_equities_memo_sbe_v1_13_size_of.execution_report_new_message = function(buffer, offset)
  local index = 0

  index = index + n24x_equities_memo_sbe_v1_13_size_of.sending_time

  index = index + n24x_equities_memo_sbe_v1_13_size_of.order_id

  index = index + n24x_equities_memo_sbe_v1_13_size_of.clordid

  index = index + n24x_equities_memo_sbe_v1_13_size_of.exec_id

  index = index + n24x_equities_memo_sbe_v1_13_size_of.ord_status

  index = index + n24x_equities_memo_sbe_v1_13_size_of.symbol

  index = index + n24x_equities_memo_sbe_v1_13_size_of.symbol_sfx

  index = index + n24x_equities_memo_sbe_v1_13_size_of.side

  index = index + n24x_equities_memo_sbe_v1_13_size_of.ord_type

  index = index + n24x_equities_memo_sbe_v1_13_size_of.order_qty

  index = index + n24x_equities_memo_sbe_v1_13_size_of.price

  index = index + n24x_equities_memo_sbe_v1_13_size_of.time_in_force

  index = index + n24x_equities_memo_sbe_v1_13_size_of.order_capacity

  index = index + n24x_equities_memo_sbe_v1_13_size_of.cust_order_capacity_cust_order_capacity_type

  index = index + n24x_equities_memo_sbe_v1_13_size_of.exec_inst

  index = index + n24x_equities_memo_sbe_v1_13_size_of.peg_offset_value

  index = index + n24x_equities_memo_sbe_v1_13_size_of.peg_price_type

  index = index + n24x_equities_memo_sbe_v1_13_size_of.expire_time

  index = index + n24x_equities_memo_sbe_v1_13_size_of.min_qty

  index = index + n24x_equities_memo_sbe_v1_13_size_of.display_qty

  index = index + n24x_equities_memo_sbe_v1_13_size_of.display_method

  index = index + n24x_equities_memo_sbe_v1_13_size_of.reserve_replenish_timing

  index = index + n24x_equities_memo_sbe_v1_13_size_of.display_min_incr

  index = index + n24x_equities_memo_sbe_v1_13_size_of.locate_reqd

  index = index + n24x_equities_memo_sbe_v1_13_size_of.reprice_frequency

  index = index + n24x_equities_memo_sbe_v1_13_size_of.reprice_behavior

  index = index + n24x_equities_memo_sbe_v1_13_size_of.cancel_group_id

  index = index + n24x_equities_memo_sbe_v1_13_size_of.stp_group_id

  index = index + n24x_equities_memo_sbe_v1_13_size_of.self_trade_prevention

  index = index + n24x_equities_memo_sbe_v1_13_size_of.risk_group_id

  index = index + n24x_equities_memo_sbe_v1_13_size_of.leaves_qty

  index = index + n24x_equities_memo_sbe_v1_13_size_of.cum_qty

  index = index + n24x_equities_memo_sbe_v1_13_size_of.transact_time

  index = index + n24x_equities_memo_sbe_v1_13_size_of.link_id_optional

  index = index + n24x_equities_memo_sbe_v1_13_size_of.locate_broker_optional

  index = index + n24x_equities_memo_sbe_v1_13_size_of.parties_groups(buffer, offset + index)

  return index
end

-- Display: Execution Report New Message
n24x_equities_memo_sbe_v1_13_display.execution_report_new_message = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Execution Report New Message
n24x_equities_memo_sbe_v1_13_dissect.execution_report_new_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Sending Time: 8 Byte Unsigned Fixed Width Integer
  index, sending_time = n24x_equities_memo_sbe_v1_13_dissect.sending_time(buffer, index, packet, parent)

  -- Order Id: 8 Byte Unsigned Fixed Width Integer
  index, order_id = n24x_equities_memo_sbe_v1_13_dissect.order_id(buffer, index, packet, parent)

  -- ClOrdId: 16 Byte Ascii String
  index, clordid = n24x_equities_memo_sbe_v1_13_dissect.clordid(buffer, index, packet, parent)

  -- Exec Id: 8 Byte Unsigned Fixed Width Integer
  index, exec_id = n24x_equities_memo_sbe_v1_13_dissect.exec_id(buffer, index, packet, parent)

  -- Ord Status: 1 Byte Ascii String Enum with 9 values
  index, ord_status = n24x_equities_memo_sbe_v1_13_dissect.ord_status(buffer, index, packet, parent)

  -- Symbol: 6 Byte Ascii String
  index, symbol = n24x_equities_memo_sbe_v1_13_dissect.symbol(buffer, index, packet, parent)

  -- Symbol Sfx: 6 Byte Ascii String Nullable
  index, symbol_sfx = n24x_equities_memo_sbe_v1_13_dissect.symbol_sfx(buffer, index, packet, parent)

  -- Side: 1 Byte Ascii String Enum with 4 values
  index, side = n24x_equities_memo_sbe_v1_13_dissect.side(buffer, index, packet, parent)

  -- Ord Type: 1 Byte Ascii String Enum with 3 values
  index, ord_type = n24x_equities_memo_sbe_v1_13_dissect.ord_type(buffer, index, packet, parent)

  -- Order Qty: 4 Byte Unsigned Fixed Width Integer
  index, order_qty = n24x_equities_memo_sbe_v1_13_dissect.order_qty(buffer, index, packet, parent)

  -- Price: 8 Byte Signed Fixed Width Integer Nullable
  index, price = n24x_equities_memo_sbe_v1_13_dissect.price(buffer, index, packet, parent)

  -- Time In Force: 1 Byte Ascii String Enum with 5 values
  index, time_in_force = n24x_equities_memo_sbe_v1_13_dissect.time_in_force(buffer, index, packet, parent)

  -- Order Capacity: 1 Byte Ascii String Enum with 3 values
  index, order_capacity = n24x_equities_memo_sbe_v1_13_dissect.order_capacity(buffer, index, packet, parent)

  -- Cust Order Capacity Cust Order Capacity Type: 1 Byte Unsigned Fixed Width Integer Enum with 3 values
  index, cust_order_capacity_cust_order_capacity_type = n24x_equities_memo_sbe_v1_13_dissect.cust_order_capacity_cust_order_capacity_type(buffer, index, packet, parent)

  -- Exec Inst: Struct of 4 fields
  index, exec_inst = n24x_equities_memo_sbe_v1_13_dissect.exec_inst(buffer, index, packet, parent)

  -- Peg Offset Value: 8 Byte Signed Fixed Width Integer Nullable
  index, peg_offset_value = n24x_equities_memo_sbe_v1_13_dissect.peg_offset_value(buffer, index, packet, parent)

  -- Peg Price Type: 1 Byte Unsigned Fixed Width Integer Enum with 4 values
  index, peg_price_type = n24x_equities_memo_sbe_v1_13_dissect.peg_price_type(buffer, index, packet, parent)

  -- Expire Time: 8 Byte Unsigned Fixed Width Integer Nullable
  index, expire_time = n24x_equities_memo_sbe_v1_13_dissect.expire_time(buffer, index, packet, parent)

  -- Min Qty: 4 Byte Unsigned Fixed Width Integer Nullable
  index, min_qty = n24x_equities_memo_sbe_v1_13_dissect.min_qty(buffer, index, packet, parent)

  -- Display Qty: 4 Byte Unsigned Fixed Width Integer Nullable
  index, display_qty = n24x_equities_memo_sbe_v1_13_dissect.display_qty(buffer, index, packet, parent)

  -- Display Method: 1 Byte Ascii String Enum with 4 values
  index, display_method = n24x_equities_memo_sbe_v1_13_dissect.display_method(buffer, index, packet, parent)

  -- Reserve Replenish Timing: 1 Byte Unsigned Fixed Width Integer Enum with 4 values
  index, reserve_replenish_timing = n24x_equities_memo_sbe_v1_13_dissect.reserve_replenish_timing(buffer, index, packet, parent)

  -- Display Min Incr: 4 Byte Unsigned Fixed Width Integer Nullable
  index, display_min_incr = n24x_equities_memo_sbe_v1_13_dissect.display_min_incr(buffer, index, packet, parent)

  -- Locate Reqd: 1 Byte Ascii String Nullable
  index, locate_reqd = n24x_equities_memo_sbe_v1_13_dissect.locate_reqd(buffer, index, packet, parent)

  -- Reprice Frequency: 1 Byte Unsigned Fixed Width Integer Enum with 5 values
  index, reprice_frequency = n24x_equities_memo_sbe_v1_13_dissect.reprice_frequency(buffer, index, packet, parent)

  -- Reprice Behavior: 1 Byte Unsigned Fixed Width Integer Enum with 4 values
  index, reprice_behavior = n24x_equities_memo_sbe_v1_13_dissect.reprice_behavior(buffer, index, packet, parent)

  -- Cancel Group Id: 2 Byte Unsigned Fixed Width Integer Nullable
  index, cancel_group_id = n24x_equities_memo_sbe_v1_13_dissect.cancel_group_id(buffer, index, packet, parent)

  -- Stp Group Id: 2 Byte Unsigned Fixed Width Integer Nullable
  index, stp_group_id = n24x_equities_memo_sbe_v1_13_dissect.stp_group_id(buffer, index, packet, parent)

  -- Self Trade Prevention: 1 Byte Unsigned Fixed Width Integer Enum with 7 values
  index, self_trade_prevention = n24x_equities_memo_sbe_v1_13_dissect.self_trade_prevention(buffer, index, packet, parent)

  -- Risk Group Id: 2 Byte Unsigned Fixed Width Integer Nullable
  index, risk_group_id = n24x_equities_memo_sbe_v1_13_dissect.risk_group_id(buffer, index, packet, parent)

  -- Leaves Qty: 4 Byte Unsigned Fixed Width Integer
  index, leaves_qty = n24x_equities_memo_sbe_v1_13_dissect.leaves_qty(buffer, index, packet, parent)

  -- Cum Qty: 4 Byte Unsigned Fixed Width Integer
  index, cum_qty = n24x_equities_memo_sbe_v1_13_dissect.cum_qty(buffer, index, packet, parent)

  -- Transact Time: 8 Byte Unsigned Fixed Width Integer
  index, transact_time = n24x_equities_memo_sbe_v1_13_dissect.transact_time(buffer, index, packet, parent)

  -- Link Id Optional: 4 Byte Ascii String Nullable
  index, link_id_optional = n24x_equities_memo_sbe_v1_13_dissect.link_id_optional(buffer, index, packet, parent)

  -- Locate Broker Optional: 4 Byte Ascii String Nullable
  index, locate_broker_optional = n24x_equities_memo_sbe_v1_13_dissect.locate_broker_optional(buffer, index, packet, parent)

  -- Parties Groups: Struct of 2 fields
  index, parties_groups = n24x_equities_memo_sbe_v1_13_dissect.parties_groups(buffer, index, packet, parent)

  return index
end

-- Dissect: Execution Report New Message
n24x_equities_memo_sbe_v1_13_dissect.execution_report_new_message = function(buffer, offset, packet, parent)
  -- Optionally add dynamic struct element to protocol tree
  if show.execution_report_new_message then
    local length = n24x_equities_memo_sbe_v1_13_size_of.execution_report_new_message(buffer, offset)
    local range = buffer(offset, length)
    local display = n24x_equities_memo_sbe_v1_13_display.execution_report_new_message(buffer, packet, parent)
    parent = parent:add(n24x_equities_memo_sbe_v1_13.fields.execution_report_new_message, range, display)
  end

  return n24x_equities_memo_sbe_v1_13_dissect.execution_report_new_message_fields(buffer, offset, packet, parent)
end

-- Calculate size of: Execution Report Pending New Message
n24x_equities_memo_sbe_v1_13_size_of.execution_report_pending_new_message = function(buffer, offset)
  local index = 0

  index = index + n24x_equities_memo_sbe_v1_13_size_of.sending_time

  index = index + n24x_equities_memo_sbe_v1_13_size_of.order_id

  index = index + n24x_equities_memo_sbe_v1_13_size_of.clordid

  index = index + n24x_equities_memo_sbe_v1_13_size_of.exec_id

  index = index + n24x_equities_memo_sbe_v1_13_size_of.ord_status

  index = index + n24x_equities_memo_sbe_v1_13_size_of.symbol

  index = index + n24x_equities_memo_sbe_v1_13_size_of.symbol_sfx

  index = index + n24x_equities_memo_sbe_v1_13_size_of.side

  index = index + n24x_equities_memo_sbe_v1_13_size_of.ord_type

  index = index + n24x_equities_memo_sbe_v1_13_size_of.order_qty

  index = index + n24x_equities_memo_sbe_v1_13_size_of.price

  index = index + n24x_equities_memo_sbe_v1_13_size_of.time_in_force

  index = index + n24x_equities_memo_sbe_v1_13_size_of.order_capacity

  index = index + n24x_equities_memo_sbe_v1_13_size_of.cust_order_capacity_cust_order_capacity_type

  index = index + n24x_equities_memo_sbe_v1_13_size_of.exec_inst

  index = index + n24x_equities_memo_sbe_v1_13_size_of.peg_offset_value

  index = index + n24x_equities_memo_sbe_v1_13_size_of.peg_price_type

  index = index + n24x_equities_memo_sbe_v1_13_size_of.expire_time

  index = index + n24x_equities_memo_sbe_v1_13_size_of.min_qty

  index = index + n24x_equities_memo_sbe_v1_13_size_of.display_qty

  index = index + n24x_equities_memo_sbe_v1_13_size_of.display_method

  index = index + n24x_equities_memo_sbe_v1_13_size_of.reserve_replenish_timing

  index = index + n24x_equities_memo_sbe_v1_13_size_of.display_min_incr

  index = index + n24x_equities_memo_sbe_v1_13_size_of.locate_reqd

  index = index + n24x_equities_memo_sbe_v1_13_size_of.reprice_frequency

  index = index + n24x_equities_memo_sbe_v1_13_size_of.reprice_behavior

  index = index + n24x_equities_memo_sbe_v1_13_size_of.cancel_group_id

  index = index + n24x_equities_memo_sbe_v1_13_size_of.stp_group_id

  index = index + n24x_equities_memo_sbe_v1_13_size_of.self_trade_prevention

  index = index + n24x_equities_memo_sbe_v1_13_size_of.risk_group_id

  index = index + n24x_equities_memo_sbe_v1_13_size_of.leaves_qty

  index = index + n24x_equities_memo_sbe_v1_13_size_of.cum_qty

  index = index + n24x_equities_memo_sbe_v1_13_size_of.link_id_optional

  index = index + n24x_equities_memo_sbe_v1_13_size_of.locate_broker_optional

  index = index + n24x_equities_memo_sbe_v1_13_size_of.parties_groups(buffer, offset + index)

  return index
end

-- Display: Execution Report Pending New Message
n24x_equities_memo_sbe_v1_13_display.execution_report_pending_new_message = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Execution Report Pending New Message
n24x_equities_memo_sbe_v1_13_dissect.execution_report_pending_new_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Sending Time: 8 Byte Unsigned Fixed Width Integer
  index, sending_time = n24x_equities_memo_sbe_v1_13_dissect.sending_time(buffer, index, packet, parent)

  -- Order Id: 8 Byte Unsigned Fixed Width Integer
  index, order_id = n24x_equities_memo_sbe_v1_13_dissect.order_id(buffer, index, packet, parent)

  -- ClOrdId: 16 Byte Ascii String
  index, clordid = n24x_equities_memo_sbe_v1_13_dissect.clordid(buffer, index, packet, parent)

  -- Exec Id: 8 Byte Unsigned Fixed Width Integer
  index, exec_id = n24x_equities_memo_sbe_v1_13_dissect.exec_id(buffer, index, packet, parent)

  -- Ord Status: 1 Byte Ascii String Enum with 9 values
  index, ord_status = n24x_equities_memo_sbe_v1_13_dissect.ord_status(buffer, index, packet, parent)

  -- Symbol: 6 Byte Ascii String
  index, symbol = n24x_equities_memo_sbe_v1_13_dissect.symbol(buffer, index, packet, parent)

  -- Symbol Sfx: 6 Byte Ascii String Nullable
  index, symbol_sfx = n24x_equities_memo_sbe_v1_13_dissect.symbol_sfx(buffer, index, packet, parent)

  -- Side: 1 Byte Ascii String Enum with 4 values
  index, side = n24x_equities_memo_sbe_v1_13_dissect.side(buffer, index, packet, parent)

  -- Ord Type: 1 Byte Ascii String Enum with 3 values
  index, ord_type = n24x_equities_memo_sbe_v1_13_dissect.ord_type(buffer, index, packet, parent)

  -- Order Qty: 4 Byte Unsigned Fixed Width Integer
  index, order_qty = n24x_equities_memo_sbe_v1_13_dissect.order_qty(buffer, index, packet, parent)

  -- Price: 8 Byte Signed Fixed Width Integer Nullable
  index, price = n24x_equities_memo_sbe_v1_13_dissect.price(buffer, index, packet, parent)

  -- Time In Force: 1 Byte Ascii String Enum with 5 values
  index, time_in_force = n24x_equities_memo_sbe_v1_13_dissect.time_in_force(buffer, index, packet, parent)

  -- Order Capacity: 1 Byte Ascii String Enum with 3 values
  index, order_capacity = n24x_equities_memo_sbe_v1_13_dissect.order_capacity(buffer, index, packet, parent)

  -- Cust Order Capacity Cust Order Capacity Type: 1 Byte Unsigned Fixed Width Integer Enum with 3 values
  index, cust_order_capacity_cust_order_capacity_type = n24x_equities_memo_sbe_v1_13_dissect.cust_order_capacity_cust_order_capacity_type(buffer, index, packet, parent)

  -- Exec Inst: Struct of 4 fields
  index, exec_inst = n24x_equities_memo_sbe_v1_13_dissect.exec_inst(buffer, index, packet, parent)

  -- Peg Offset Value: 8 Byte Signed Fixed Width Integer Nullable
  index, peg_offset_value = n24x_equities_memo_sbe_v1_13_dissect.peg_offset_value(buffer, index, packet, parent)

  -- Peg Price Type: 1 Byte Unsigned Fixed Width Integer Enum with 4 values
  index, peg_price_type = n24x_equities_memo_sbe_v1_13_dissect.peg_price_type(buffer, index, packet, parent)

  -- Expire Time: 8 Byte Unsigned Fixed Width Integer Nullable
  index, expire_time = n24x_equities_memo_sbe_v1_13_dissect.expire_time(buffer, index, packet, parent)

  -- Min Qty: 4 Byte Unsigned Fixed Width Integer Nullable
  index, min_qty = n24x_equities_memo_sbe_v1_13_dissect.min_qty(buffer, index, packet, parent)

  -- Display Qty: 4 Byte Unsigned Fixed Width Integer Nullable
  index, display_qty = n24x_equities_memo_sbe_v1_13_dissect.display_qty(buffer, index, packet, parent)

  -- Display Method: 1 Byte Ascii String Enum with 4 values
  index, display_method = n24x_equities_memo_sbe_v1_13_dissect.display_method(buffer, index, packet, parent)

  -- Reserve Replenish Timing: 1 Byte Unsigned Fixed Width Integer Enum with 4 values
  index, reserve_replenish_timing = n24x_equities_memo_sbe_v1_13_dissect.reserve_replenish_timing(buffer, index, packet, parent)

  -- Display Min Incr: 4 Byte Unsigned Fixed Width Integer Nullable
  index, display_min_incr = n24x_equities_memo_sbe_v1_13_dissect.display_min_incr(buffer, index, packet, parent)

  -- Locate Reqd: 1 Byte Ascii String Nullable
  index, locate_reqd = n24x_equities_memo_sbe_v1_13_dissect.locate_reqd(buffer, index, packet, parent)

  -- Reprice Frequency: 1 Byte Unsigned Fixed Width Integer Enum with 5 values
  index, reprice_frequency = n24x_equities_memo_sbe_v1_13_dissect.reprice_frequency(buffer, index, packet, parent)

  -- Reprice Behavior: 1 Byte Unsigned Fixed Width Integer Enum with 4 values
  index, reprice_behavior = n24x_equities_memo_sbe_v1_13_dissect.reprice_behavior(buffer, index, packet, parent)

  -- Cancel Group Id: 2 Byte Unsigned Fixed Width Integer Nullable
  index, cancel_group_id = n24x_equities_memo_sbe_v1_13_dissect.cancel_group_id(buffer, index, packet, parent)

  -- Stp Group Id: 2 Byte Unsigned Fixed Width Integer Nullable
  index, stp_group_id = n24x_equities_memo_sbe_v1_13_dissect.stp_group_id(buffer, index, packet, parent)

  -- Self Trade Prevention: 1 Byte Unsigned Fixed Width Integer Enum with 7 values
  index, self_trade_prevention = n24x_equities_memo_sbe_v1_13_dissect.self_trade_prevention(buffer, index, packet, parent)

  -- Risk Group Id: 2 Byte Unsigned Fixed Width Integer Nullable
  index, risk_group_id = n24x_equities_memo_sbe_v1_13_dissect.risk_group_id(buffer, index, packet, parent)

  -- Leaves Qty: 4 Byte Unsigned Fixed Width Integer
  index, leaves_qty = n24x_equities_memo_sbe_v1_13_dissect.leaves_qty(buffer, index, packet, parent)

  -- Cum Qty: 4 Byte Unsigned Fixed Width Integer
  index, cum_qty = n24x_equities_memo_sbe_v1_13_dissect.cum_qty(buffer, index, packet, parent)

  -- Link Id Optional: 4 Byte Ascii String Nullable
  index, link_id_optional = n24x_equities_memo_sbe_v1_13_dissect.link_id_optional(buffer, index, packet, parent)

  -- Locate Broker Optional: 4 Byte Ascii String Nullable
  index, locate_broker_optional = n24x_equities_memo_sbe_v1_13_dissect.locate_broker_optional(buffer, index, packet, parent)

  -- Parties Groups: Struct of 2 fields
  index, parties_groups = n24x_equities_memo_sbe_v1_13_dissect.parties_groups(buffer, index, packet, parent)

  return index
end

-- Dissect: Execution Report Pending New Message
n24x_equities_memo_sbe_v1_13_dissect.execution_report_pending_new_message = function(buffer, offset, packet, parent)
  -- Optionally add dynamic struct element to protocol tree
  if show.execution_report_pending_new_message then
    local length = n24x_equities_memo_sbe_v1_13_size_of.execution_report_pending_new_message(buffer, offset)
    local range = buffer(offset, length)
    local display = n24x_equities_memo_sbe_v1_13_display.execution_report_pending_new_message(buffer, packet, parent)
    parent = parent:add(n24x_equities_memo_sbe_v1_13.fields.execution_report_pending_new_message, range, display)
  end

  return n24x_equities_memo_sbe_v1_13_dissect.execution_report_pending_new_message_fields(buffer, offset, packet, parent)
end

-- Calculate size of: Mass Cancel Request Message
n24x_equities_memo_sbe_v1_13_size_of.mass_cancel_request_message = function(buffer, offset)
  local index = 0

  index = index + n24x_equities_memo_sbe_v1_13_size_of.clordid

  index = index + n24x_equities_memo_sbe_v1_13_size_of.symbol

  index = index + n24x_equities_memo_sbe_v1_13_size_of.symbol_sfx

  index = index + n24x_equities_memo_sbe_v1_13_size_of.side_optional

  index = index + n24x_equities_memo_sbe_v1_13_size_of.lower_than_price

  index = index + n24x_equities_memo_sbe_v1_13_size_of.higher_than_price

  index = index + n24x_equities_memo_sbe_v1_13_size_of.cancel_group_id

  return index
end

-- Display: Mass Cancel Request Message
n24x_equities_memo_sbe_v1_13_display.mass_cancel_request_message = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Mass Cancel Request Message
n24x_equities_memo_sbe_v1_13_dissect.mass_cancel_request_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- ClOrdId: 16 Byte Ascii String
  index, clordid = n24x_equities_memo_sbe_v1_13_dissect.clordid(buffer, index, packet, parent)

  -- Symbol: 6 Byte Ascii String
  index, symbol = n24x_equities_memo_sbe_v1_13_dissect.symbol(buffer, index, packet, parent)

  -- Symbol Sfx: 6 Byte Ascii String Nullable
  index, symbol_sfx = n24x_equities_memo_sbe_v1_13_dissect.symbol_sfx(buffer, index, packet, parent)

  -- Side Optional: 1 Byte Ascii String Enum with 5 values
  index, side_optional = n24x_equities_memo_sbe_v1_13_dissect.side_optional(buffer, index, packet, parent)

  -- Lower Than Price: 8 Byte Signed Fixed Width Integer Nullable
  index, lower_than_price = n24x_equities_memo_sbe_v1_13_dissect.lower_than_price(buffer, index, packet, parent)

  -- Higher Than Price: 8 Byte Signed Fixed Width Integer Nullable
  index, higher_than_price = n24x_equities_memo_sbe_v1_13_dissect.higher_than_price(buffer, index, packet, parent)

  -- Cancel Group Id: 2 Byte Unsigned Fixed Width Integer Nullable
  index, cancel_group_id = n24x_equities_memo_sbe_v1_13_dissect.cancel_group_id(buffer, index, packet, parent)

  return index
end

-- Dissect: Mass Cancel Request Message
n24x_equities_memo_sbe_v1_13_dissect.mass_cancel_request_message = function(buffer, offset, packet, parent)
  if show.mass_cancel_request_message then
    -- Optionally add element to protocol tree
    parent = parent:add(n24x_equities_memo_sbe_v1_13.fields.mass_cancel_request_message, buffer(offset, 0))
    local index = n24x_equities_memo_sbe_v1_13_dissect.mass_cancel_request_message_fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = n24x_equities_memo_sbe_v1_13_display.mass_cancel_request_message(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return n24x_equities_memo_sbe_v1_13_dissect.mass_cancel_request_message_fields(buffer, offset, packet, parent)
  end
end

-- Size: Order Id Optional
n24x_equities_memo_sbe_v1_13_size_of.order_id_optional = 8

-- Display: Order Id Optional
n24x_equities_memo_sbe_v1_13_display.order_id_optional = function(value)
  -- Check if field has value
  if value == UInt64(0xFFFFFFFF, 0xFFFFFFFF) then
    return "Order Id Optional: No Value"
  end

  return "Order Id Optional: "..value
end

-- Dissect: Order Id Optional
n24x_equities_memo_sbe_v1_13_dissect.order_id_optional = function(buffer, offset, packet, parent)
  local length = n24x_equities_memo_sbe_v1_13_size_of.order_id_optional
  local range = buffer(offset, length)
  local value = range:uint64()
  local display = n24x_equities_memo_sbe_v1_13_display.order_id_optional(value, buffer, offset, packet, parent)

  parent:add(n24x_equities_memo_sbe_v1_13.fields.order_id_optional, range, value, display)

  return offset + length, value
end

-- Calculate size of: Order Cancel Request Message
n24x_equities_memo_sbe_v1_13_size_of.order_cancel_request_message = function(buffer, offset)
  local index = 0

  index = index + n24x_equities_memo_sbe_v1_13_size_of.origclordid_optional

  index = index + n24x_equities_memo_sbe_v1_13_size_of.order_id_optional

  index = index + n24x_equities_memo_sbe_v1_13_size_of.clordid

  index = index + n24x_equities_memo_sbe_v1_13_size_of.symbol

  index = index + n24x_equities_memo_sbe_v1_13_size_of.symbol_sfx

  return index
end

-- Display: Order Cancel Request Message
n24x_equities_memo_sbe_v1_13_display.order_cancel_request_message = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Order Cancel Request Message
n24x_equities_memo_sbe_v1_13_dissect.order_cancel_request_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- OrigClOrdId Optional: 16 Byte Ascii String Nullable
  index, origclordid_optional = n24x_equities_memo_sbe_v1_13_dissect.origclordid_optional(buffer, index, packet, parent)

  -- Order Id Optional: 8 Byte Unsigned Fixed Width Integer Nullable
  index, order_id_optional = n24x_equities_memo_sbe_v1_13_dissect.order_id_optional(buffer, index, packet, parent)

  -- ClOrdId: 16 Byte Ascii String
  index, clordid = n24x_equities_memo_sbe_v1_13_dissect.clordid(buffer, index, packet, parent)

  -- Symbol: 6 Byte Ascii String
  index, symbol = n24x_equities_memo_sbe_v1_13_dissect.symbol(buffer, index, packet, parent)

  -- Symbol Sfx: 6 Byte Ascii String Nullable
  index, symbol_sfx = n24x_equities_memo_sbe_v1_13_dissect.symbol_sfx(buffer, index, packet, parent)

  return index
end

-- Dissect: Order Cancel Request Message
n24x_equities_memo_sbe_v1_13_dissect.order_cancel_request_message = function(buffer, offset, packet, parent)
  if show.order_cancel_request_message then
    -- Optionally add element to protocol tree
    parent = parent:add(n24x_equities_memo_sbe_v1_13.fields.order_cancel_request_message, buffer(offset, 0))
    local index = n24x_equities_memo_sbe_v1_13_dissect.order_cancel_request_message_fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = n24x_equities_memo_sbe_v1_13_display.order_cancel_request_message(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return n24x_equities_memo_sbe_v1_13_dissect.order_cancel_request_message_fields(buffer, offset, packet, parent)
  end
end

-- Size: OrigClOrdId
n24x_equities_memo_sbe_v1_13_size_of.origclordid = 16

-- Display: OrigClOrdId
n24x_equities_memo_sbe_v1_13_display.origclordid = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "OrigClOrdId: No Value"
  end

  return "OrigClOrdId: "..value
end

-- Dissect: OrigClOrdId
n24x_equities_memo_sbe_v1_13_dissect.origclordid = function(buffer, offset, packet, parent)
  local length = n24x_equities_memo_sbe_v1_13_size_of.origclordid
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

  local display = n24x_equities_memo_sbe_v1_13_display.origclordid(value, buffer, offset, packet, parent)

  parent:add(n24x_equities_memo_sbe_v1_13.fields.origclordid, range, value, display)

  return offset + length, value
end

-- Calculate size of: Order Cancel Replace Request Message
n24x_equities_memo_sbe_v1_13_size_of.order_cancel_replace_request_message = function(buffer, offset)
  local index = 0

  index = index + n24x_equities_memo_sbe_v1_13_size_of.origclordid

  index = index + n24x_equities_memo_sbe_v1_13_size_of.clordid

  index = index + n24x_equities_memo_sbe_v1_13_size_of.symbol

  index = index + n24x_equities_memo_sbe_v1_13_size_of.symbol_sfx

  index = index + n24x_equities_memo_sbe_v1_13_size_of.side

  index = index + n24x_equities_memo_sbe_v1_13_size_of.order_qty

  index = index + n24x_equities_memo_sbe_v1_13_size_of.ord_type

  index = index + n24x_equities_memo_sbe_v1_13_size_of.price

  index = index + n24x_equities_memo_sbe_v1_13_size_of.display_qty

  index = index + n24x_equities_memo_sbe_v1_13_size_of.locate_reqd

  index = index + n24x_equities_memo_sbe_v1_13_size_of.link_id_optional

  index = index + n24x_equities_memo_sbe_v1_13_size_of.locate_broker_optional

  return index
end

-- Display: Order Cancel Replace Request Message
n24x_equities_memo_sbe_v1_13_display.order_cancel_replace_request_message = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Order Cancel Replace Request Message
n24x_equities_memo_sbe_v1_13_dissect.order_cancel_replace_request_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- OrigClOrdId: 16 Byte Ascii String
  index, origclordid = n24x_equities_memo_sbe_v1_13_dissect.origclordid(buffer, index, packet, parent)

  -- ClOrdId: 16 Byte Ascii String
  index, clordid = n24x_equities_memo_sbe_v1_13_dissect.clordid(buffer, index, packet, parent)

  -- Symbol: 6 Byte Ascii String
  index, symbol = n24x_equities_memo_sbe_v1_13_dissect.symbol(buffer, index, packet, parent)

  -- Symbol Sfx: 6 Byte Ascii String Nullable
  index, symbol_sfx = n24x_equities_memo_sbe_v1_13_dissect.symbol_sfx(buffer, index, packet, parent)

  -- Side: 1 Byte Ascii String Enum with 4 values
  index, side = n24x_equities_memo_sbe_v1_13_dissect.side(buffer, index, packet, parent)

  -- Order Qty: 4 Byte Unsigned Fixed Width Integer
  index, order_qty = n24x_equities_memo_sbe_v1_13_dissect.order_qty(buffer, index, packet, parent)

  -- Ord Type: 1 Byte Ascii String Enum with 3 values
  index, ord_type = n24x_equities_memo_sbe_v1_13_dissect.ord_type(buffer, index, packet, parent)

  -- Price: 8 Byte Signed Fixed Width Integer Nullable
  index, price = n24x_equities_memo_sbe_v1_13_dissect.price(buffer, index, packet, parent)

  -- Display Qty: 4 Byte Unsigned Fixed Width Integer Nullable
  index, display_qty = n24x_equities_memo_sbe_v1_13_dissect.display_qty(buffer, index, packet, parent)

  -- Locate Reqd: 1 Byte Ascii String Nullable
  index, locate_reqd = n24x_equities_memo_sbe_v1_13_dissect.locate_reqd(buffer, index, packet, parent)

  -- Link Id Optional: 4 Byte Ascii String Nullable
  index, link_id_optional = n24x_equities_memo_sbe_v1_13_dissect.link_id_optional(buffer, index, packet, parent)

  -- Locate Broker Optional: 4 Byte Ascii String Nullable
  index, locate_broker_optional = n24x_equities_memo_sbe_v1_13_dissect.locate_broker_optional(buffer, index, packet, parent)

  return index
end

-- Dissect: Order Cancel Replace Request Message
n24x_equities_memo_sbe_v1_13_dissect.order_cancel_replace_request_message = function(buffer, offset, packet, parent)
  if show.order_cancel_replace_request_message then
    -- Optionally add element to protocol tree
    parent = parent:add(n24x_equities_memo_sbe_v1_13.fields.order_cancel_replace_request_message, buffer(offset, 0))
    local index = n24x_equities_memo_sbe_v1_13_dissect.order_cancel_replace_request_message_fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = n24x_equities_memo_sbe_v1_13_display.order_cancel_replace_request_message(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return n24x_equities_memo_sbe_v1_13_dissect.order_cancel_replace_request_message_fields(buffer, offset, packet, parent)
  end
end

-- Size: Cust Order Capacity Cust Order Capacity Type optional
n24x_equities_memo_sbe_v1_13_size_of.cust_order_capacity_cust_order_capacity_type_optional = 1

-- Display: Cust Order Capacity Cust Order Capacity Type optional
n24x_equities_memo_sbe_v1_13_display.cust_order_capacity_cust_order_capacity_type_optional = function(value)
  if value == 1 then
    return "Cust Order Capacity Cust Order Capacity Type optional: Member Trading On Their Own Account (1)"
  end
  if value == 5 then
    return "Cust Order Capacity Cust Order Capacity Type optional: Retail Customer (5)"
  end
  if value == 255 then
    return "Cust Order Capacity Cust Order Capacity Type optional: Null Value (255)"
  end
  if value == 255 then
    return "Cust Order Capacity Cust Order Capacity Type optional: No Value"
  end

  return "Cust Order Capacity Cust Order Capacity Type optional: Unknown("..value..")"
end

-- Dissect: Cust Order Capacity Cust Order Capacity Type optional
n24x_equities_memo_sbe_v1_13_dissect.cust_order_capacity_cust_order_capacity_type_optional = function(buffer, offset, packet, parent)
  local length = n24x_equities_memo_sbe_v1_13_size_of.cust_order_capacity_cust_order_capacity_type_optional
  local range = buffer(offset, length)
  local value = range:uint()
  local display = n24x_equities_memo_sbe_v1_13_display.cust_order_capacity_cust_order_capacity_type_optional(value, buffer, offset, packet, parent)

  parent:add(n24x_equities_memo_sbe_v1_13.fields.cust_order_capacity_cust_order_capacity_type_optional, range, value, display)

  return offset + length, value
end

-- Calculate size of: New Order Single Message
n24x_equities_memo_sbe_v1_13_size_of.new_order_single_message = function(buffer, offset)
  local index = 0

  index = index + n24x_equities_memo_sbe_v1_13_size_of.clordid

  index = index + n24x_equities_memo_sbe_v1_13_size_of.symbol

  index = index + n24x_equities_memo_sbe_v1_13_size_of.symbol_sfx

  index = index + n24x_equities_memo_sbe_v1_13_size_of.side

  index = index + n24x_equities_memo_sbe_v1_13_size_of.order_qty

  index = index + n24x_equities_memo_sbe_v1_13_size_of.ord_type

  index = index + n24x_equities_memo_sbe_v1_13_size_of.price

  index = index + n24x_equities_memo_sbe_v1_13_size_of.time_in_force

  index = index + n24x_equities_memo_sbe_v1_13_size_of.order_capacity

  index = index + n24x_equities_memo_sbe_v1_13_size_of.cust_order_capacity_cust_order_capacity_type_optional

  index = index + n24x_equities_memo_sbe_v1_13_size_of.exec_inst

  index = index + n24x_equities_memo_sbe_v1_13_size_of.peg_offset_value

  index = index + n24x_equities_memo_sbe_v1_13_size_of.peg_price_type

  index = index + n24x_equities_memo_sbe_v1_13_size_of.expire_time

  index = index + n24x_equities_memo_sbe_v1_13_size_of.min_qty

  index = index + n24x_equities_memo_sbe_v1_13_size_of.display_qty

  index = index + n24x_equities_memo_sbe_v1_13_size_of.display_method

  index = index + n24x_equities_memo_sbe_v1_13_size_of.reserve_replenish_timing

  index = index + n24x_equities_memo_sbe_v1_13_size_of.display_min_incr

  index = index + n24x_equities_memo_sbe_v1_13_size_of.locate_reqd

  index = index + n24x_equities_memo_sbe_v1_13_size_of.reprice_frequency

  index = index + n24x_equities_memo_sbe_v1_13_size_of.reprice_behavior

  index = index + n24x_equities_memo_sbe_v1_13_size_of.cancel_group_id

  index = index + n24x_equities_memo_sbe_v1_13_size_of.stp_group_id

  index = index + n24x_equities_memo_sbe_v1_13_size_of.self_trade_prevention

  index = index + n24x_equities_memo_sbe_v1_13_size_of.risk_group_id

  index = index + n24x_equities_memo_sbe_v1_13_size_of.link_id_optional

  index = index + n24x_equities_memo_sbe_v1_13_size_of.locate_broker_optional

  index = index + n24x_equities_memo_sbe_v1_13_size_of.parties_groups(buffer, offset + index)

  return index
end

-- Display: New Order Single Message
n24x_equities_memo_sbe_v1_13_display.new_order_single_message = function(packet, parent, length)
  return ""
end

-- Dissect Fields: New Order Single Message
n24x_equities_memo_sbe_v1_13_dissect.new_order_single_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- ClOrdId: 16 Byte Ascii String
  index, clordid = n24x_equities_memo_sbe_v1_13_dissect.clordid(buffer, index, packet, parent)

  -- Symbol: 6 Byte Ascii String
  index, symbol = n24x_equities_memo_sbe_v1_13_dissect.symbol(buffer, index, packet, parent)

  -- Symbol Sfx: 6 Byte Ascii String Nullable
  index, symbol_sfx = n24x_equities_memo_sbe_v1_13_dissect.symbol_sfx(buffer, index, packet, parent)

  -- Side: 1 Byte Ascii String Enum with 4 values
  index, side = n24x_equities_memo_sbe_v1_13_dissect.side(buffer, index, packet, parent)

  -- Order Qty: 4 Byte Unsigned Fixed Width Integer
  index, order_qty = n24x_equities_memo_sbe_v1_13_dissect.order_qty(buffer, index, packet, parent)

  -- Ord Type: 1 Byte Ascii String Enum with 3 values
  index, ord_type = n24x_equities_memo_sbe_v1_13_dissect.ord_type(buffer, index, packet, parent)

  -- Price: 8 Byte Signed Fixed Width Integer Nullable
  index, price = n24x_equities_memo_sbe_v1_13_dissect.price(buffer, index, packet, parent)

  -- Time In Force: 1 Byte Ascii String Enum with 5 values
  index, time_in_force = n24x_equities_memo_sbe_v1_13_dissect.time_in_force(buffer, index, packet, parent)

  -- Order Capacity: 1 Byte Ascii String Enum with 3 values
  index, order_capacity = n24x_equities_memo_sbe_v1_13_dissect.order_capacity(buffer, index, packet, parent)

  -- Cust Order Capacity Cust Order Capacity Type optional: 1 Byte Unsigned Fixed Width Integer Enum with 4 values
  index, cust_order_capacity_cust_order_capacity_type_optional = n24x_equities_memo_sbe_v1_13_dissect.cust_order_capacity_cust_order_capacity_type_optional(buffer, index, packet, parent)

  -- Exec Inst: Struct of 4 fields
  index, exec_inst = n24x_equities_memo_sbe_v1_13_dissect.exec_inst(buffer, index, packet, parent)

  -- Peg Offset Value: 8 Byte Signed Fixed Width Integer Nullable
  index, peg_offset_value = n24x_equities_memo_sbe_v1_13_dissect.peg_offset_value(buffer, index, packet, parent)

  -- Peg Price Type: 1 Byte Unsigned Fixed Width Integer Enum with 4 values
  index, peg_price_type = n24x_equities_memo_sbe_v1_13_dissect.peg_price_type(buffer, index, packet, parent)

  -- Expire Time: 8 Byte Unsigned Fixed Width Integer Nullable
  index, expire_time = n24x_equities_memo_sbe_v1_13_dissect.expire_time(buffer, index, packet, parent)

  -- Min Qty: 4 Byte Unsigned Fixed Width Integer Nullable
  index, min_qty = n24x_equities_memo_sbe_v1_13_dissect.min_qty(buffer, index, packet, parent)

  -- Display Qty: 4 Byte Unsigned Fixed Width Integer Nullable
  index, display_qty = n24x_equities_memo_sbe_v1_13_dissect.display_qty(buffer, index, packet, parent)

  -- Display Method: 1 Byte Ascii String Enum with 4 values
  index, display_method = n24x_equities_memo_sbe_v1_13_dissect.display_method(buffer, index, packet, parent)

  -- Reserve Replenish Timing: 1 Byte Unsigned Fixed Width Integer Enum with 4 values
  index, reserve_replenish_timing = n24x_equities_memo_sbe_v1_13_dissect.reserve_replenish_timing(buffer, index, packet, parent)

  -- Display Min Incr: 4 Byte Unsigned Fixed Width Integer Nullable
  index, display_min_incr = n24x_equities_memo_sbe_v1_13_dissect.display_min_incr(buffer, index, packet, parent)

  -- Locate Reqd: 1 Byte Ascii String Nullable
  index, locate_reqd = n24x_equities_memo_sbe_v1_13_dissect.locate_reqd(buffer, index, packet, parent)

  -- Reprice Frequency: 1 Byte Unsigned Fixed Width Integer Enum with 5 values
  index, reprice_frequency = n24x_equities_memo_sbe_v1_13_dissect.reprice_frequency(buffer, index, packet, parent)

  -- Reprice Behavior: 1 Byte Unsigned Fixed Width Integer Enum with 4 values
  index, reprice_behavior = n24x_equities_memo_sbe_v1_13_dissect.reprice_behavior(buffer, index, packet, parent)

  -- Cancel Group Id: 2 Byte Unsigned Fixed Width Integer Nullable
  index, cancel_group_id = n24x_equities_memo_sbe_v1_13_dissect.cancel_group_id(buffer, index, packet, parent)

  -- Stp Group Id: 2 Byte Unsigned Fixed Width Integer Nullable
  index, stp_group_id = n24x_equities_memo_sbe_v1_13_dissect.stp_group_id(buffer, index, packet, parent)

  -- Self Trade Prevention: 1 Byte Unsigned Fixed Width Integer Enum with 7 values
  index, self_trade_prevention = n24x_equities_memo_sbe_v1_13_dissect.self_trade_prevention(buffer, index, packet, parent)

  -- Risk Group Id: 2 Byte Unsigned Fixed Width Integer Nullable
  index, risk_group_id = n24x_equities_memo_sbe_v1_13_dissect.risk_group_id(buffer, index, packet, parent)

  -- Link Id Optional: 4 Byte Ascii String Nullable
  index, link_id_optional = n24x_equities_memo_sbe_v1_13_dissect.link_id_optional(buffer, index, packet, parent)

  -- Locate Broker Optional: 4 Byte Ascii String Nullable
  index, locate_broker_optional = n24x_equities_memo_sbe_v1_13_dissect.locate_broker_optional(buffer, index, packet, parent)

  -- Parties Groups: Struct of 2 fields
  index, parties_groups = n24x_equities_memo_sbe_v1_13_dissect.parties_groups(buffer, index, packet, parent)

  return index
end

-- Dissect: New Order Single Message
n24x_equities_memo_sbe_v1_13_dissect.new_order_single_message = function(buffer, offset, packet, parent)
  -- Optionally add dynamic struct element to protocol tree
  if show.new_order_single_message then
    local length = n24x_equities_memo_sbe_v1_13_size_of.new_order_single_message(buffer, offset)
    local range = buffer(offset, length)
    local display = n24x_equities_memo_sbe_v1_13_display.new_order_single_message(buffer, packet, parent)
    parent = parent:add(n24x_equities_memo_sbe_v1_13.fields.new_order_single_message, range, display)
  end

  return n24x_equities_memo_sbe_v1_13_dissect.new_order_single_message_fields(buffer, offset, packet, parent)
end

-- Calculate runtime size of: Payload
n24x_equities_memo_sbe_v1_13_size_of.payload = function(buffer, offset, template_id)
  -- Size of New Order Single Message
  if template_id == 1 then
    return n24x_equities_memo_sbe_v1_13_size_of.new_order_single_message(buffer, offset)
  end
  -- Size of Order Cancel Replace Request Message
  if template_id == 2 then
    return n24x_equities_memo_sbe_v1_13_size_of.order_cancel_replace_request_message(buffer, offset)
  end
  -- Size of Order Cancel Request Message
  if template_id == 3 then
    return n24x_equities_memo_sbe_v1_13_size_of.order_cancel_request_message(buffer, offset)
  end
  -- Size of Mass Cancel Request Message
  if template_id == 4 then
    return n24x_equities_memo_sbe_v1_13_size_of.mass_cancel_request_message(buffer, offset)
  end
  -- Size of Execution Report Pending New Message
  if template_id == 5 then
    return n24x_equities_memo_sbe_v1_13_size_of.execution_report_pending_new_message(buffer, offset)
  end
  -- Size of Execution Report New Message
  if template_id == 6 then
    return n24x_equities_memo_sbe_v1_13_size_of.execution_report_new_message(buffer, offset)
  end
  -- Size of Execution Report Rejected Message
  if template_id == 7 then
    return n24x_equities_memo_sbe_v1_13_size_of.execution_report_rejected_message(buffer, offset)
  end
  -- Size of Execution Report Trade Message
  if template_id == 8 then
    return n24x_equities_memo_sbe_v1_13_size_of.execution_report_trade_message(buffer, offset)
  end
  -- Size of Execution Report Pending Cancel Message
  if template_id == 9 then
    return n24x_equities_memo_sbe_v1_13_size_of.execution_report_pending_cancel_message(buffer, offset)
  end
  -- Size of Pending Mass Cancel Message
  if template_id == 10 then
    return n24x_equities_memo_sbe_v1_13_size_of.pending_mass_cancel_message(buffer, offset)
  end
  -- Size of Execution Report Canceled Message
  if template_id == 11 then
    return n24x_equities_memo_sbe_v1_13_size_of.execution_report_canceled_message(buffer, offset)
  end
  -- Size of Mass Cancel Done Message
  if template_id == 12 then
    return n24x_equities_memo_sbe_v1_13_size_of.mass_cancel_done_message(buffer, offset)
  end
  -- Size of Execution Report Pending Replace Message
  if template_id == 13 then
    return n24x_equities_memo_sbe_v1_13_size_of.execution_report_pending_replace_message(buffer, offset)
  end
  -- Size of Execution Report Replaced Message
  if template_id == 14 then
    return n24x_equities_memo_sbe_v1_13_size_of.execution_report_replaced_message(buffer, offset)
  end
  -- Size of Execution Report Trade Correction Message
  if template_id == 15 then
    return n24x_equities_memo_sbe_v1_13_size_of.execution_report_trade_correction_message(buffer, offset)
  end
  -- Size of Execution Report Trade Break Message
  if template_id == 16 then
    return n24x_equities_memo_sbe_v1_13_size_of.execution_report_trade_break_message(buffer, offset)
  end
  -- Size of Execution Report Restatement Message
  if template_id == 17 then
    return n24x_equities_memo_sbe_v1_13_size_of.execution_report_restatement_message(buffer, offset)
  end
  -- Size of Order Cancel Reject Message
  if template_id == 18 then
    return n24x_equities_memo_sbe_v1_13_size_of.order_cancel_reject_message(buffer, offset)
  end
  -- Size of Mass Cancel Reject Message
  if template_id == 20 then
    return n24x_equities_memo_sbe_v1_13_size_of.mass_cancel_reject_message(buffer, offset)
  end

  return 0
end

-- Display: Payload
n24x_equities_memo_sbe_v1_13_display.payload = function(buffer, offset, packet, parent)
  return ""
end

-- Dissect Branches: Payload
n24x_equities_memo_sbe_v1_13_dissect.payload_branches = function(buffer, offset, packet, parent, template_id)
  -- Dissect New Order Single Message
  if template_id == 1 then
    return n24x_equities_memo_sbe_v1_13_dissect.new_order_single_message(buffer, offset, packet, parent)
  end
  -- Dissect Order Cancel Replace Request Message
  if template_id == 2 then
    return n24x_equities_memo_sbe_v1_13_dissect.order_cancel_replace_request_message(buffer, offset, packet, parent)
  end
  -- Dissect Order Cancel Request Message
  if template_id == 3 then
    return n24x_equities_memo_sbe_v1_13_dissect.order_cancel_request_message(buffer, offset, packet, parent)
  end
  -- Dissect Mass Cancel Request Message
  if template_id == 4 then
    return n24x_equities_memo_sbe_v1_13_dissect.mass_cancel_request_message(buffer, offset, packet, parent)
  end
  -- Dissect Execution Report Pending New Message
  if template_id == 5 then
    return n24x_equities_memo_sbe_v1_13_dissect.execution_report_pending_new_message(buffer, offset, packet, parent)
  end
  -- Dissect Execution Report New Message
  if template_id == 6 then
    return n24x_equities_memo_sbe_v1_13_dissect.execution_report_new_message(buffer, offset, packet, parent)
  end
  -- Dissect Execution Report Rejected Message
  if template_id == 7 then
    return n24x_equities_memo_sbe_v1_13_dissect.execution_report_rejected_message(buffer, offset, packet, parent)
  end
  -- Dissect Execution Report Trade Message
  if template_id == 8 then
    return n24x_equities_memo_sbe_v1_13_dissect.execution_report_trade_message(buffer, offset, packet, parent)
  end
  -- Dissect Execution Report Pending Cancel Message
  if template_id == 9 then
    return n24x_equities_memo_sbe_v1_13_dissect.execution_report_pending_cancel_message(buffer, offset, packet, parent)
  end
  -- Dissect Pending Mass Cancel Message
  if template_id == 10 then
    return n24x_equities_memo_sbe_v1_13_dissect.pending_mass_cancel_message(buffer, offset, packet, parent)
  end
  -- Dissect Execution Report Canceled Message
  if template_id == 11 then
    return n24x_equities_memo_sbe_v1_13_dissect.execution_report_canceled_message(buffer, offset, packet, parent)
  end
  -- Dissect Mass Cancel Done Message
  if template_id == 12 then
    return n24x_equities_memo_sbe_v1_13_dissect.mass_cancel_done_message(buffer, offset, packet, parent)
  end
  -- Dissect Execution Report Pending Replace Message
  if template_id == 13 then
    return n24x_equities_memo_sbe_v1_13_dissect.execution_report_pending_replace_message(buffer, offset, packet, parent)
  end
  -- Dissect Execution Report Replaced Message
  if template_id == 14 then
    return n24x_equities_memo_sbe_v1_13_dissect.execution_report_replaced_message(buffer, offset, packet, parent)
  end
  -- Dissect Execution Report Trade Correction Message
  if template_id == 15 then
    return n24x_equities_memo_sbe_v1_13_dissect.execution_report_trade_correction_message(buffer, offset, packet, parent)
  end
  -- Dissect Execution Report Trade Break Message
  if template_id == 16 then
    return n24x_equities_memo_sbe_v1_13_dissect.execution_report_trade_break_message(buffer, offset, packet, parent)
  end
  -- Dissect Execution Report Restatement Message
  if template_id == 17 then
    return n24x_equities_memo_sbe_v1_13_dissect.execution_report_restatement_message(buffer, offset, packet, parent)
  end
  -- Dissect Order Cancel Reject Message
  if template_id == 18 then
    return n24x_equities_memo_sbe_v1_13_dissect.order_cancel_reject_message(buffer, offset, packet, parent)
  end
  -- Dissect Mass Cancel Reject Message
  if template_id == 20 then
    return n24x_equities_memo_sbe_v1_13_dissect.mass_cancel_reject_message(buffer, offset, packet, parent)
  end

  return offset
end

-- Dissect: Payload
n24x_equities_memo_sbe_v1_13_dissect.payload = function(buffer, offset, packet, parent, template_id)
  if not show.payload then
    return n24x_equities_memo_sbe_v1_13_dissect.payload_branches(buffer, offset, packet, parent, template_id)
  end

  -- Calculate size and check that branch is not empty
  local size = n24x_equities_memo_sbe_v1_13_size_of.payload(buffer, offset, template_id)
  if size == 0 then
    return offset
  end

  -- Dissect Element
  local range = buffer(offset, size)
  local display = n24x_equities_memo_sbe_v1_13_display.payload(buffer, packet, parent)
  local element = parent:add(n24x_equities_memo_sbe_v1_13.fields.payload, range, display)

  return n24x_equities_memo_sbe_v1_13_dissect.payload_branches(buffer, offset, packet, parent, template_id)
end

-- Size: Version
n24x_equities_memo_sbe_v1_13_size_of.version = 2

-- Display: Version
n24x_equities_memo_sbe_v1_13_display.version = function(value)
  return "Version: "..value
end

-- Dissect: Version
n24x_equities_memo_sbe_v1_13_dissect.version = function(buffer, offset, packet, parent)
  local length = n24x_equities_memo_sbe_v1_13_size_of.version
  local range = buffer(offset, length)
  local value = range:uint()
  local display = n24x_equities_memo_sbe_v1_13_display.version(value, buffer, offset, packet, parent)

  parent:add(n24x_equities_memo_sbe_v1_13.fields.version, range, value, display)

  return offset + length, value
end

-- Size: Schema Id
n24x_equities_memo_sbe_v1_13_size_of.schema_id = 1

-- Display: Schema Id
n24x_equities_memo_sbe_v1_13_display.schema_id = function(value)
  return "Schema Id: "..value
end

-- Dissect: Schema Id
n24x_equities_memo_sbe_v1_13_dissect.schema_id = function(buffer, offset, packet, parent)
  local length = n24x_equities_memo_sbe_v1_13_size_of.schema_id
  local range = buffer(offset, length)
  local value = range:uint()
  local display = n24x_equities_memo_sbe_v1_13_display.schema_id(value, buffer, offset, packet, parent)

  parent:add(n24x_equities_memo_sbe_v1_13.fields.schema_id, range, value, display)

  return offset + length, value
end

-- Size: Template Id
n24x_equities_memo_sbe_v1_13_size_of.template_id = 1

-- Display: Template Id
n24x_equities_memo_sbe_v1_13_display.template_id = function(value)
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
n24x_equities_memo_sbe_v1_13_dissect.template_id = function(buffer, offset, packet, parent)
  local length = n24x_equities_memo_sbe_v1_13_size_of.template_id
  local range = buffer(offset, length)
  local value = range:uint()
  local display = n24x_equities_memo_sbe_v1_13_display.template_id(value, buffer, offset, packet, parent)

  parent:add(n24x_equities_memo_sbe_v1_13.fields.template_id, range, value, display)

  return offset + length, value
end

-- Size: Block Length
n24x_equities_memo_sbe_v1_13_size_of.block_length = 2

-- Display: Block Length
n24x_equities_memo_sbe_v1_13_display.block_length = function(value)
  return "Block Length: "..value
end

-- Dissect: Block Length
n24x_equities_memo_sbe_v1_13_dissect.block_length = function(buffer, offset, packet, parent)
  local length = n24x_equities_memo_sbe_v1_13_size_of.block_length
  local range = buffer(offset, length)
  local value = range:uint()
  local display = n24x_equities_memo_sbe_v1_13_display.block_length(value, buffer, offset, packet, parent)

  parent:add(n24x_equities_memo_sbe_v1_13.fields.block_length, range, value, display)

  return offset + length, value
end

-- Calculate size of: Sbe Header
n24x_equities_memo_sbe_v1_13_size_of.sbe_header = function(buffer, offset)
  local index = 0

  index = index + n24x_equities_memo_sbe_v1_13_size_of.block_length

  index = index + n24x_equities_memo_sbe_v1_13_size_of.template_id

  index = index + n24x_equities_memo_sbe_v1_13_size_of.schema_id

  index = index + n24x_equities_memo_sbe_v1_13_size_of.version

  return index
end

-- Display: Sbe Header
n24x_equities_memo_sbe_v1_13_display.sbe_header = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Sbe Header
n24x_equities_memo_sbe_v1_13_dissect.sbe_header_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Block Length: 2 Byte Unsigned Fixed Width Integer
  index, block_length = n24x_equities_memo_sbe_v1_13_dissect.block_length(buffer, index, packet, parent)

  -- Template Id: 1 Byte Unsigned Fixed Width Integer Enum with 19 values
  index, template_id = n24x_equities_memo_sbe_v1_13_dissect.template_id(buffer, index, packet, parent)

  -- Schema Id: 1 Byte Unsigned Fixed Width Integer Static
  index, schema_id = n24x_equities_memo_sbe_v1_13_dissect.schema_id(buffer, index, packet, parent)

  -- Version: 2 Byte Unsigned Fixed Width Integer Static
  index, version = n24x_equities_memo_sbe_v1_13_dissect.version(buffer, index, packet, parent)

  return index
end

-- Dissect: Sbe Header
n24x_equities_memo_sbe_v1_13_dissect.sbe_header = function(buffer, offset, packet, parent)
  if show.sbe_header then
    -- Optionally add element to protocol tree
    parent = parent:add(n24x_equities_memo_sbe_v1_13.fields.sbe_header, buffer(offset, 0))
    local index = n24x_equities_memo_sbe_v1_13_dissect.sbe_header_fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = n24x_equities_memo_sbe_v1_13_display.sbe_header(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return n24x_equities_memo_sbe_v1_13_dissect.sbe_header_fields(buffer, offset, packet, parent)
  end
end

-- Display: Sbe Message
n24x_equities_memo_sbe_v1_13_display.sbe_message = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Sbe Message
n24x_equities_memo_sbe_v1_13_dissect.sbe_message_fields = function(buffer, offset, packet, parent, size_of_sbe_message)
  local index = offset

  -- Sbe Header: Struct of 4 fields
  index, sbe_header = n24x_equities_memo_sbe_v1_13_dissect.sbe_header(buffer, index, packet, parent)

  -- Dependency element: Template Id
  local template_id = buffer(index - 4, 1):uint()

  -- Payload: Runtime Type with 19 branches
  index = n24x_equities_memo_sbe_v1_13_dissect.payload(buffer, index, packet, parent, template_id)

  return index
end

-- Dissect: Sbe Message
n24x_equities_memo_sbe_v1_13_dissect.sbe_message = function(buffer, offset, packet, parent, size_of_sbe_message)
  local index = offset + size_of_sbe_message

  -- Optionally add group/struct element to protocol tree
  if show.sbe_message then
    parent = parent:add(n24x_equities_memo_sbe_v1_13.fields.sbe_message, buffer(offset, 0))
    local current = n24x_equities_memo_sbe_v1_13_dissect.sbe_message_fields(buffer, offset, packet, parent, size_of_sbe_message)
    parent:set_len(size_of_sbe_message)
    local display = n24x_equities_memo_sbe_v1_13_display.sbe_message(buffer, packet, parent)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    n24x_equities_memo_sbe_v1_13_dissect.sbe_message_fields(buffer, offset, packet, parent, size_of_sbe_message)

    return index
  end
end

-- Calculate size of: Sequenced Message
n24x_equities_memo_sbe_v1_13_size_of.sequenced_message = function(buffer, offset)
  local index = 0

  -- Parse runtime size of: Sbe Message
  index = index + buffer(offset + index - 0, 2):uint()

  return index
end

-- Display: Sequenced Message
n24x_equities_memo_sbe_v1_13_display.sequenced_message = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Sequenced Message
n24x_equities_memo_sbe_v1_13_dissect.sequenced_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Dependency element: Block Length
  local block_length = buffer(index, 2):uint()

  -- Runtime Size Of: Sbe Message
  local size_of_sbe_message = block_length + 6

  -- Sbe Message: Struct of 2 fields
  index, sbe_message = n24x_equities_memo_sbe_v1_13_dissect.sbe_message(buffer, index, packet, parent, size_of_sbe_message)

  return index
end

-- Dissect: Sequenced Message
n24x_equities_memo_sbe_v1_13_dissect.sequenced_message = function(buffer, offset, packet, parent)
  -- Optionally add dynamic struct element to protocol tree
  if show.sequenced_message then
    local length = n24x_equities_memo_sbe_v1_13_size_of.sequenced_message(buffer, offset)
    local range = buffer(offset, length)
    local display = n24x_equities_memo_sbe_v1_13_display.sequenced_message(buffer, packet, parent)
    parent = parent:add(n24x_equities_memo_sbe_v1_13.fields.sequenced_message, range, display)
  end

  return n24x_equities_memo_sbe_v1_13_dissect.sequenced_message_fields(buffer, offset, packet, parent)
end

-- Size: Total Sequence Count
n24x_equities_memo_sbe_v1_13_size_of.total_sequence_count = 8

-- Display: Total Sequence Count
n24x_equities_memo_sbe_v1_13_display.total_sequence_count = function(value)
  return "Total Sequence Count: "..value
end

-- Dissect: Total Sequence Count
n24x_equities_memo_sbe_v1_13_dissect.total_sequence_count = function(buffer, offset, packet, parent)
  local length = n24x_equities_memo_sbe_v1_13_size_of.total_sequence_count
  local range = buffer(offset, length)
  local value = range:uint64()
  local display = n24x_equities_memo_sbe_v1_13_display.total_sequence_count(value, buffer, offset, packet, parent)

  parent:add(n24x_equities_memo_sbe_v1_13.fields.total_sequence_count, range, value, display)

  return offset + length, value
end

-- Calculate size of: Stream Complete Message
n24x_equities_memo_sbe_v1_13_size_of.stream_complete_message = function(buffer, offset)
  local index = 0

  index = index + n24x_equities_memo_sbe_v1_13_size_of.total_sequence_count

  return index
end

-- Display: Stream Complete Message
n24x_equities_memo_sbe_v1_13_display.stream_complete_message = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Stream Complete Message
n24x_equities_memo_sbe_v1_13_dissect.stream_complete_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Total Sequence Count: 8 Byte Unsigned Fixed Width Integer
  index, total_sequence_count = n24x_equities_memo_sbe_v1_13_dissect.total_sequence_count(buffer, index, packet, parent)

  return index
end

-- Dissect: Stream Complete Message
n24x_equities_memo_sbe_v1_13_dissect.stream_complete_message = function(buffer, offset, packet, parent)
  if show.stream_complete_message then
    -- Optionally add element to protocol tree
    parent = parent:add(n24x_equities_memo_sbe_v1_13.fields.stream_complete_message, buffer(offset, 0))
    local index = n24x_equities_memo_sbe_v1_13_dissect.stream_complete_message_fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = n24x_equities_memo_sbe_v1_13_display.stream_complete_message(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return n24x_equities_memo_sbe_v1_13_dissect.stream_complete_message_fields(buffer, offset, packet, parent)
  end
end

-- Size: Stream Reject Code
n24x_equities_memo_sbe_v1_13_size_of.stream_reject_code = 1

-- Display: Stream Reject Code
n24x_equities_memo_sbe_v1_13_display.stream_reject_code = function(value)
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
n24x_equities_memo_sbe_v1_13_dissect.stream_reject_code = function(buffer, offset, packet, parent)
  local length = n24x_equities_memo_sbe_v1_13_size_of.stream_reject_code
  local range = buffer(offset, length)
  local value = range:string()
  local display = n24x_equities_memo_sbe_v1_13_display.stream_reject_code(value, buffer, offset, packet, parent)

  parent:add(n24x_equities_memo_sbe_v1_13.fields.stream_reject_code, range, value, display)

  return offset + length, value
end

-- Calculate size of: Stream Rejected Message
n24x_equities_memo_sbe_v1_13_size_of.stream_rejected_message = function(buffer, offset)
  local index = 0

  index = index + n24x_equities_memo_sbe_v1_13_size_of.stream_reject_code

  return index
end

-- Display: Stream Rejected Message
n24x_equities_memo_sbe_v1_13_display.stream_rejected_message = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Stream Rejected Message
n24x_equities_memo_sbe_v1_13_dissect.stream_rejected_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Stream Reject Code: 1 Byte Ascii String Enum with 3 values
  index, stream_reject_code = n24x_equities_memo_sbe_v1_13_dissect.stream_reject_code(buffer, index, packet, parent)

  return index
end

-- Dissect: Stream Rejected Message
n24x_equities_memo_sbe_v1_13_dissect.stream_rejected_message = function(buffer, offset, packet, parent)
  if show.stream_rejected_message then
    -- Optionally add element to protocol tree
    parent = parent:add(n24x_equities_memo_sbe_v1_13.fields.stream_rejected_message, buffer(offset, 0))
    local index = n24x_equities_memo_sbe_v1_13_dissect.stream_rejected_message_fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = n24x_equities_memo_sbe_v1_13_display.stream_rejected_message(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return n24x_equities_memo_sbe_v1_13_dissect.stream_rejected_message_fields(buffer, offset, packet, parent)
  end
end

-- Size: Next Sequence Number
n24x_equities_memo_sbe_v1_13_size_of.next_sequence_number = 8

-- Display: Next Sequence Number
n24x_equities_memo_sbe_v1_13_display.next_sequence_number = function(value)
  return "Next Sequence Number: "..value
end

-- Dissect: Next Sequence Number
n24x_equities_memo_sbe_v1_13_dissect.next_sequence_number = function(buffer, offset, packet, parent)
  local length = n24x_equities_memo_sbe_v1_13_size_of.next_sequence_number
  local range = buffer(offset, length)
  local value = range:uint64()
  local display = n24x_equities_memo_sbe_v1_13_display.next_sequence_number(value, buffer, offset, packet, parent)

  parent:add(n24x_equities_memo_sbe_v1_13.fields.next_sequence_number, range, value, display)

  return offset + length, value
end

-- Calculate size of: Stream Begin Message
n24x_equities_memo_sbe_v1_13_size_of.stream_begin_message = function(buffer, offset)
  local index = 0

  index = index + n24x_equities_memo_sbe_v1_13_size_of.next_sequence_number

  index = index + n24x_equities_memo_sbe_v1_13_size_of.max_sequence_number

  return index
end

-- Display: Stream Begin Message
n24x_equities_memo_sbe_v1_13_display.stream_begin_message = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Stream Begin Message
n24x_equities_memo_sbe_v1_13_dissect.stream_begin_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Next Sequence Number: 8 Byte Unsigned Fixed Width Integer
  index, next_sequence_number = n24x_equities_memo_sbe_v1_13_dissect.next_sequence_number(buffer, index, packet, parent)

  -- Max Sequence Number
  index, max_sequence_number = n24x_equities_memo_sbe_v1_13_dissect.max_sequence_number(buffer, index, packet, parent)

  return index
end

-- Dissect: Stream Begin Message
n24x_equities_memo_sbe_v1_13_dissect.stream_begin_message = function(buffer, offset, packet, parent)
  if show.stream_begin_message then
    -- Optionally add element to protocol tree
    parent = parent:add(n24x_equities_memo_sbe_v1_13.fields.stream_begin_message, buffer(offset, 0))
    local index = n24x_equities_memo_sbe_v1_13_dissect.stream_begin_message_fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = n24x_equities_memo_sbe_v1_13_display.stream_begin_message(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return n24x_equities_memo_sbe_v1_13_dissect.stream_begin_message_fields(buffer, offset, packet, parent)
  end
end

-- Size: Message Count
n24x_equities_memo_sbe_v1_13_size_of.message_count = 8

-- Display: Message Count
n24x_equities_memo_sbe_v1_13_display.message_count = function(value)
  return "Message Count: "..value
end

-- Dissect: Message Count
n24x_equities_memo_sbe_v1_13_dissect.message_count = function(buffer, offset, packet, parent)
  local length = n24x_equities_memo_sbe_v1_13_size_of.message_count
  local range = buffer(offset, length)
  local value = range:uint64()
  local display = n24x_equities_memo_sbe_v1_13_display.message_count(value, buffer, offset, packet, parent)

  parent:add(n24x_equities_memo_sbe_v1_13.fields.message_count, range, value, display)

  return offset + length, value
end

-- Calculate size of: Replay Complete Message
n24x_equities_memo_sbe_v1_13_size_of.replay_complete_message = function(buffer, offset)
  local index = 0

  index = index + n24x_equities_memo_sbe_v1_13_size_of.message_count

  return index
end

-- Display: Replay Complete Message
n24x_equities_memo_sbe_v1_13_display.replay_complete_message = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Replay Complete Message
n24x_equities_memo_sbe_v1_13_dissect.replay_complete_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Message Count: 8 Byte Unsigned Fixed Width Integer
  index, message_count = n24x_equities_memo_sbe_v1_13_dissect.message_count(buffer, index, packet, parent)

  return index
end

-- Dissect: Replay Complete Message
n24x_equities_memo_sbe_v1_13_dissect.replay_complete_message = function(buffer, offset, packet, parent)
  if show.replay_complete_message then
    -- Optionally add element to protocol tree
    parent = parent:add(n24x_equities_memo_sbe_v1_13.fields.replay_complete_message, buffer(offset, 0))
    local index = n24x_equities_memo_sbe_v1_13_dissect.replay_complete_message_fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = n24x_equities_memo_sbe_v1_13_display.replay_complete_message(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return n24x_equities_memo_sbe_v1_13_dissect.replay_complete_message_fields(buffer, offset, packet, parent)
  end
end

-- Size: Replay Reject Code
n24x_equities_memo_sbe_v1_13_size_of.replay_reject_code = 1

-- Display: Replay Reject Code
n24x_equities_memo_sbe_v1_13_display.replay_reject_code = function(value)
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
n24x_equities_memo_sbe_v1_13_dissect.replay_reject_code = function(buffer, offset, packet, parent)
  local length = n24x_equities_memo_sbe_v1_13_size_of.replay_reject_code
  local range = buffer(offset, length)
  local value = range:string()
  local display = n24x_equities_memo_sbe_v1_13_display.replay_reject_code(value, buffer, offset, packet, parent)

  parent:add(n24x_equities_memo_sbe_v1_13.fields.replay_reject_code, range, value, display)

  return offset + length, value
end

-- Calculate size of: Replay Rejected Message
n24x_equities_memo_sbe_v1_13_size_of.replay_rejected_message = function(buffer, offset)
  local index = 0

  index = index + n24x_equities_memo_sbe_v1_13_size_of.replay_reject_code

  return index
end

-- Display: Replay Rejected Message
n24x_equities_memo_sbe_v1_13_display.replay_rejected_message = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Replay Rejected Message
n24x_equities_memo_sbe_v1_13_dissect.replay_rejected_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Replay Reject Code: 1 Byte Ascii String Enum with 4 values
  index, replay_reject_code = n24x_equities_memo_sbe_v1_13_dissect.replay_reject_code(buffer, index, packet, parent)

  return index
end

-- Dissect: Replay Rejected Message
n24x_equities_memo_sbe_v1_13_dissect.replay_rejected_message = function(buffer, offset, packet, parent)
  if show.replay_rejected_message then
    -- Optionally add element to protocol tree
    parent = parent:add(n24x_equities_memo_sbe_v1_13.fields.replay_rejected_message, buffer(offset, 0))
    local index = n24x_equities_memo_sbe_v1_13_dissect.replay_rejected_message_fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = n24x_equities_memo_sbe_v1_13_display.replay_rejected_message(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return n24x_equities_memo_sbe_v1_13_dissect.replay_rejected_message_fields(buffer, offset, packet, parent)
  end
end

-- Size: Pending Message Count
n24x_equities_memo_sbe_v1_13_size_of.pending_message_count = 4

-- Display: Pending Message Count
n24x_equities_memo_sbe_v1_13_display.pending_message_count = function(value)
  return "Pending Message Count: "..value
end

-- Dissect: Pending Message Count
n24x_equities_memo_sbe_v1_13_dissect.pending_message_count = function(buffer, offset, packet, parent)
  local length = n24x_equities_memo_sbe_v1_13_size_of.pending_message_count
  local range = buffer(offset, length)
  local value = range:uint()
  local display = n24x_equities_memo_sbe_v1_13_display.pending_message_count(value, buffer, offset, packet, parent)

  parent:add(n24x_equities_memo_sbe_v1_13.fields.pending_message_count, range, value, display)

  return offset + length, value
end

-- Calculate size of: Replay Begin Message
n24x_equities_memo_sbe_v1_13_size_of.replay_begin_message = function(buffer, offset)
  local index = 0

  index = index + n24x_equities_memo_sbe_v1_13_size_of.next_sequence_number

  index = index + n24x_equities_memo_sbe_v1_13_size_of.pending_message_count

  return index
end

-- Display: Replay Begin Message
n24x_equities_memo_sbe_v1_13_display.replay_begin_message = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Replay Begin Message
n24x_equities_memo_sbe_v1_13_dissect.replay_begin_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Next Sequence Number: 8 Byte Unsigned Fixed Width Integer
  index, next_sequence_number = n24x_equities_memo_sbe_v1_13_dissect.next_sequence_number(buffer, index, packet, parent)

  -- Pending Message Count: 4 Byte Unsigned Fixed Width Integer
  index, pending_message_count = n24x_equities_memo_sbe_v1_13_dissect.pending_message_count(buffer, index, packet, parent)

  return index
end

-- Dissect: Replay Begin Message
n24x_equities_memo_sbe_v1_13_dissect.replay_begin_message = function(buffer, offset, packet, parent)
  if show.replay_begin_message then
    -- Optionally add element to protocol tree
    parent = parent:add(n24x_equities_memo_sbe_v1_13.fields.replay_begin_message, buffer(offset, 0))
    local index = n24x_equities_memo_sbe_v1_13_dissect.replay_begin_message_fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = n24x_equities_memo_sbe_v1_13_display.replay_begin_message(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return n24x_equities_memo_sbe_v1_13_dissect.replay_begin_message_fields(buffer, offset, packet, parent)
  end
end

-- Size: Session Id
n24x_equities_memo_sbe_v1_13_size_of.session_id = 8

-- Display: Session Id
n24x_equities_memo_sbe_v1_13_display.session_id = function(value)
  return "Session Id: "..value
end

-- Dissect: Session Id
n24x_equities_memo_sbe_v1_13_dissect.session_id = function(buffer, offset, packet, parent)
  local length = n24x_equities_memo_sbe_v1_13_size_of.session_id
  local range = buffer(offset, length)
  local value = range:uint64()
  local display = n24x_equities_memo_sbe_v1_13_display.session_id(value, buffer, offset, packet, parent)

  parent:add(n24x_equities_memo_sbe_v1_13.fields.session_id, range, value, display)

  return offset + length, value
end

-- Calculate size of: Start Of Session Message
n24x_equities_memo_sbe_v1_13_size_of.start_of_session_message = function(buffer, offset)
  local index = 0

  index = index + n24x_equities_memo_sbe_v1_13_size_of.session_id

  return index
end

-- Display: Start Of Session Message
n24x_equities_memo_sbe_v1_13_display.start_of_session_message = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Start Of Session Message
n24x_equities_memo_sbe_v1_13_dissect.start_of_session_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Session Id: 8 Byte Unsigned Fixed Width Integer
  index, session_id = n24x_equities_memo_sbe_v1_13_dissect.session_id(buffer, index, packet, parent)

  return index
end

-- Dissect: Start Of Session Message
n24x_equities_memo_sbe_v1_13_dissect.start_of_session_message = function(buffer, offset, packet, parent)
  if show.start_of_session_message then
    -- Optionally add element to protocol tree
    parent = parent:add(n24x_equities_memo_sbe_v1_13.fields.start_of_session_message, buffer(offset, 0))
    local index = n24x_equities_memo_sbe_v1_13_dissect.start_of_session_message_fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = n24x_equities_memo_sbe_v1_13_display.start_of_session_message(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return n24x_equities_memo_sbe_v1_13_dissect.start_of_session_message_fields(buffer, offset, packet, parent)
  end
end

-- Size: Login Reject Code
n24x_equities_memo_sbe_v1_13_size_of.login_reject_code = 1

-- Display: Login Reject Code
n24x_equities_memo_sbe_v1_13_display.login_reject_code = function(value)
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
n24x_equities_memo_sbe_v1_13_dissect.login_reject_code = function(buffer, offset, packet, parent)
  local length = n24x_equities_memo_sbe_v1_13_size_of.login_reject_code
  local range = buffer(offset, length)
  local value = range:string()
  local display = n24x_equities_memo_sbe_v1_13_display.login_reject_code(value, buffer, offset, packet, parent)

  parent:add(n24x_equities_memo_sbe_v1_13.fields.login_reject_code, range, value, display)

  return offset + length, value
end

-- Calculate size of: Login Rejected Message
n24x_equities_memo_sbe_v1_13_size_of.login_rejected_message = function(buffer, offset)
  local index = 0

  index = index + n24x_equities_memo_sbe_v1_13_size_of.login_reject_code

  return index
end

-- Display: Login Rejected Message
n24x_equities_memo_sbe_v1_13_display.login_rejected_message = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Login Rejected Message
n24x_equities_memo_sbe_v1_13_dissect.login_rejected_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Login Reject Code: 1 Byte Ascii String Enum with 4 values
  index, login_reject_code = n24x_equities_memo_sbe_v1_13_dissect.login_reject_code(buffer, index, packet, parent)

  return index
end

-- Dissect: Login Rejected Message
n24x_equities_memo_sbe_v1_13_dissect.login_rejected_message = function(buffer, offset, packet, parent)
  if show.login_rejected_message then
    -- Optionally add element to protocol tree
    parent = parent:add(n24x_equities_memo_sbe_v1_13.fields.login_rejected_message, buffer(offset, 0))
    local index = n24x_equities_memo_sbe_v1_13_dissect.login_rejected_message_fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = n24x_equities_memo_sbe_v1_13_display.login_rejected_message(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return n24x_equities_memo_sbe_v1_13_dissect.login_rejected_message_fields(buffer, offset, packet, parent)
  end
end

-- Size: Supported Request Mode
n24x_equities_memo_sbe_v1_13_size_of.supported_request_mode = 1

-- Display: Supported Request Mode
n24x_equities_memo_sbe_v1_13_display.supported_request_mode = function(value)
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
n24x_equities_memo_sbe_v1_13_dissect.supported_request_mode = function(buffer, offset, packet, parent)
  local length = n24x_equities_memo_sbe_v1_13_size_of.supported_request_mode
  local range = buffer(offset, length)
  local value = range:string()
  local display = n24x_equities_memo_sbe_v1_13_display.supported_request_mode(value, buffer, offset, packet, parent)

  parent:add(n24x_equities_memo_sbe_v1_13.fields.supported_request_mode, range, value, display)

  return offset + length, value
end

-- Calculate size of: Login Accepted Message
n24x_equities_memo_sbe_v1_13_size_of.login_accepted_message = function(buffer, offset)
  local index = 0

  index = index + n24x_equities_memo_sbe_v1_13_size_of.supported_request_mode

  return index
end

-- Display: Login Accepted Message
n24x_equities_memo_sbe_v1_13_display.login_accepted_message = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Login Accepted Message
n24x_equities_memo_sbe_v1_13_dissect.login_accepted_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Supported Request Mode: 1 Byte Ascii String Enum with 3 values
  index, supported_request_mode = n24x_equities_memo_sbe_v1_13_dissect.supported_request_mode(buffer, index, packet, parent)

  return index
end

-- Dissect: Login Accepted Message
n24x_equities_memo_sbe_v1_13_dissect.login_accepted_message = function(buffer, offset, packet, parent)
  if show.login_accepted_message then
    -- Optionally add element to protocol tree
    parent = parent:add(n24x_equities_memo_sbe_v1_13.fields.login_accepted_message, buffer(offset, 0))
    local index = n24x_equities_memo_sbe_v1_13_dissect.login_accepted_message_fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = n24x_equities_memo_sbe_v1_13_display.login_accepted_message(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return n24x_equities_memo_sbe_v1_13_dissect.login_accepted_message_fields(buffer, offset, packet, parent)
  end
end

-- Calculate size of: Unsequenced Message
n24x_equities_memo_sbe_v1_13_size_of.unsequenced_message = function(buffer, offset)
  local index = 0

  -- Parse runtime size of: Sbe Message
  index = index + buffer(offset + index - 0, 2):uint()

  return index
end

-- Display: Unsequenced Message
n24x_equities_memo_sbe_v1_13_display.unsequenced_message = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Unsequenced Message
n24x_equities_memo_sbe_v1_13_dissect.unsequenced_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Dependency element: Block Length
  local block_length = buffer(index, 2):uint()

  -- Runtime Size Of: Sbe Message
  local size_of_sbe_message = block_length + 6

  -- Sbe Message: Struct of 2 fields
  index, sbe_message = n24x_equities_memo_sbe_v1_13_dissect.sbe_message(buffer, index, packet, parent, size_of_sbe_message)

  return index
end

-- Dissect: Unsequenced Message
n24x_equities_memo_sbe_v1_13_dissect.unsequenced_message = function(buffer, offset, packet, parent)
  -- Optionally add dynamic struct element to protocol tree
  if show.unsequenced_message then
    local length = n24x_equities_memo_sbe_v1_13_size_of.unsequenced_message(buffer, offset)
    local range = buffer(offset, length)
    local display = n24x_equities_memo_sbe_v1_13_display.unsequenced_message(buffer, packet, parent)
    parent = parent:add(n24x_equities_memo_sbe_v1_13.fields.unsequenced_message, range, display)
  end

  return n24x_equities_memo_sbe_v1_13_dissect.unsequenced_message_fields(buffer, offset, packet, parent)
end

-- Calculate size of: Stream Request Message
n24x_equities_memo_sbe_v1_13_size_of.stream_request_message = function(buffer, offset)
  local index = 0

  index = index + n24x_equities_memo_sbe_v1_13_size_of.session_id

  index = index + n24x_equities_memo_sbe_v1_13_size_of.next_sequence_number

  return index
end

-- Display: Stream Request Message
n24x_equities_memo_sbe_v1_13_display.stream_request_message = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Stream Request Message
n24x_equities_memo_sbe_v1_13_dissect.stream_request_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Session Id: 8 Byte Unsigned Fixed Width Integer
  index, session_id = n24x_equities_memo_sbe_v1_13_dissect.session_id(buffer, index, packet, parent)

  -- Next Sequence Number: 8 Byte Unsigned Fixed Width Integer
  index, next_sequence_number = n24x_equities_memo_sbe_v1_13_dissect.next_sequence_number(buffer, index, packet, parent)

  return index
end

-- Dissect: Stream Request Message
n24x_equities_memo_sbe_v1_13_dissect.stream_request_message = function(buffer, offset, packet, parent)
  if show.stream_request_message then
    -- Optionally add element to protocol tree
    parent = parent:add(n24x_equities_memo_sbe_v1_13.fields.stream_request_message, buffer(offset, 0))
    local index = n24x_equities_memo_sbe_v1_13_dissect.stream_request_message_fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = n24x_equities_memo_sbe_v1_13_display.stream_request_message(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return n24x_equities_memo_sbe_v1_13_dissect.stream_request_message_fields(buffer, offset, packet, parent)
  end
end

-- Calculate size of: Replay All Request Message
n24x_equities_memo_sbe_v1_13_size_of.replay_all_request_message = function(buffer, offset)
  local index = 0

  index = index + n24x_equities_memo_sbe_v1_13_size_of.session_id

  return index
end

-- Display: Replay All Request Message
n24x_equities_memo_sbe_v1_13_display.replay_all_request_message = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Replay All Request Message
n24x_equities_memo_sbe_v1_13_dissect.replay_all_request_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Session Id: 8 Byte Unsigned Fixed Width Integer
  index, session_id = n24x_equities_memo_sbe_v1_13_dissect.session_id(buffer, index, packet, parent)

  return index
end

-- Dissect: Replay All Request Message
n24x_equities_memo_sbe_v1_13_dissect.replay_all_request_message = function(buffer, offset, packet, parent)
  if show.replay_all_request_message then
    -- Optionally add element to protocol tree
    parent = parent:add(n24x_equities_memo_sbe_v1_13.fields.replay_all_request_message, buffer(offset, 0))
    local index = n24x_equities_memo_sbe_v1_13_dissect.replay_all_request_message_fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = n24x_equities_memo_sbe_v1_13_display.replay_all_request_message(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return n24x_equities_memo_sbe_v1_13_dissect.replay_all_request_message_fields(buffer, offset, packet, parent)
  end
end

-- Size: Count
n24x_equities_memo_sbe_v1_13_size_of.count = 4

-- Display: Count
n24x_equities_memo_sbe_v1_13_display.count = function(value)
  return "Count: "..value
end

-- Dissect: Count
n24x_equities_memo_sbe_v1_13_dissect.count = function(buffer, offset, packet, parent)
  local length = n24x_equities_memo_sbe_v1_13_size_of.count
  local range = buffer(offset, length)
  local value = range:uint()
  local display = n24x_equities_memo_sbe_v1_13_display.count(value, buffer, offset, packet, parent)

  parent:add(n24x_equities_memo_sbe_v1_13.fields.count, range, value, display)

  return offset + length, value
end

-- Calculate size of: Replay Request Message
n24x_equities_memo_sbe_v1_13_size_of.replay_request_message = function(buffer, offset)
  local index = 0

  index = index + n24x_equities_memo_sbe_v1_13_size_of.session_id

  index = index + n24x_equities_memo_sbe_v1_13_size_of.next_sequence_number

  index = index + n24x_equities_memo_sbe_v1_13_size_of.count

  return index
end

-- Display: Replay Request Message
n24x_equities_memo_sbe_v1_13_display.replay_request_message = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Replay Request Message
n24x_equities_memo_sbe_v1_13_dissect.replay_request_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Session Id: 8 Byte Unsigned Fixed Width Integer
  index, session_id = n24x_equities_memo_sbe_v1_13_dissect.session_id(buffer, index, packet, parent)

  -- Next Sequence Number: 8 Byte Unsigned Fixed Width Integer
  index, next_sequence_number = n24x_equities_memo_sbe_v1_13_dissect.next_sequence_number(buffer, index, packet, parent)

  -- Count: 4 Byte Unsigned Fixed Width Integer
  index, count = n24x_equities_memo_sbe_v1_13_dissect.count(buffer, index, packet, parent)

  return index
end

-- Dissect: Replay Request Message
n24x_equities_memo_sbe_v1_13_dissect.replay_request_message = function(buffer, offset, packet, parent)
  if show.replay_request_message then
    -- Optionally add element to protocol tree
    parent = parent:add(n24x_equities_memo_sbe_v1_13.fields.replay_request_message, buffer(offset, 0))
    local index = n24x_equities_memo_sbe_v1_13_dissect.replay_request_message_fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = n24x_equities_memo_sbe_v1_13_display.replay_request_message(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return n24x_equities_memo_sbe_v1_13_dissect.replay_request_message_fields(buffer, offset, packet, parent)
  end
end

-- Size: Token
n24x_equities_memo_sbe_v1_13_size_of.token = 1

-- Display: Token
n24x_equities_memo_sbe_v1_13_display.token = function(value)
  return "Token: "..value
end

-- Dissect: Token
n24x_equities_memo_sbe_v1_13_dissect.token = function(buffer, offset, packet, parent)
  local length = n24x_equities_memo_sbe_v1_13_size_of.token
  local range = buffer(offset, length)
  local value = range:string()
  local display = n24x_equities_memo_sbe_v1_13_display.token(value, buffer, offset, packet, parent)

  parent:add(n24x_equities_memo_sbe_v1_13.fields.token, range, value, display)

  return offset + length, value
end

-- Size: Token Type
n24x_equities_memo_sbe_v1_13_size_of.token_type = 1

-- Display: Token Type
n24x_equities_memo_sbe_v1_13_display.token_type = function(value)
  return "Token Type: "..value
end

-- Dissect: Token Type
n24x_equities_memo_sbe_v1_13_dissect.token_type = function(buffer, offset, packet, parent)
  local length = n24x_equities_memo_sbe_v1_13_size_of.token_type
  local range = buffer(offset, length)
  local value = range:string()
  local display = n24x_equities_memo_sbe_v1_13_display.token_type(value, buffer, offset, packet, parent)

  parent:add(n24x_equities_memo_sbe_v1_13.fields.token_type, range, value, display)

  return offset + length, value
end

-- Calculate size of: Login Request Message
n24x_equities_memo_sbe_v1_13_size_of.login_request_message = function(buffer, offset)
  local index = 0

  index = index + n24x_equities_memo_sbe_v1_13_size_of.token_type

  index = index + n24x_equities_memo_sbe_v1_13_size_of.token

  return index
end

-- Display: Login Request Message
n24x_equities_memo_sbe_v1_13_display.login_request_message = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Login Request Message
n24x_equities_memo_sbe_v1_13_dissect.login_request_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Token Type: 1 Byte Ascii String
  index, token_type = n24x_equities_memo_sbe_v1_13_dissect.token_type(buffer, index, packet, parent)

  -- Token: 1 Byte Ascii String
  index, token = n24x_equities_memo_sbe_v1_13_dissect.token(buffer, index, packet, parent)

  return index
end

-- Dissect: Login Request Message
n24x_equities_memo_sbe_v1_13_dissect.login_request_message = function(buffer, offset, packet, parent)
  if show.login_request_message then
    -- Optionally add element to protocol tree
    parent = parent:add(n24x_equities_memo_sbe_v1_13.fields.login_request_message, buffer(offset, 0))
    local index = n24x_equities_memo_sbe_v1_13_dissect.login_request_message_fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = n24x_equities_memo_sbe_v1_13_display.login_request_message(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return n24x_equities_memo_sbe_v1_13_dissect.login_request_message_fields(buffer, offset, packet, parent)
  end
end

-- Calculate runtime size of: Data
n24x_equities_memo_sbe_v1_13_size_of.data = function(buffer, offset, message_type)
  -- Size of Login Request Message
  if message_type == 100 then
    return n24x_equities_memo_sbe_v1_13_size_of.login_request_message(buffer, offset)
  end
  -- Size of Replay Request Message
  if message_type == 101 then
    return n24x_equities_memo_sbe_v1_13_size_of.replay_request_message(buffer, offset)
  end
  -- Size of Replay All Request Message
  if message_type == 102 then
    return n24x_equities_memo_sbe_v1_13_size_of.replay_all_request_message(buffer, offset)
  end
  -- Size of Stream Request Message
  if message_type == 103 then
    return n24x_equities_memo_sbe_v1_13_size_of.stream_request_message(buffer, offset)
  end
  -- Size of Unsequenced Message
  if message_type == 104 then
    return n24x_equities_memo_sbe_v1_13_size_of.unsequenced_message(buffer, offset)
  end
  -- Size of Login Accepted Message
  if message_type == 1 then
    return n24x_equities_memo_sbe_v1_13_size_of.login_accepted_message(buffer, offset)
  end
  -- Size of Login Rejected Message
  if message_type == 2 then
    return n24x_equities_memo_sbe_v1_13_size_of.login_rejected_message(buffer, offset)
  end
  -- Size of Start Of Session Message
  if message_type == 3 then
    return n24x_equities_memo_sbe_v1_13_size_of.start_of_session_message(buffer, offset)
  end
  -- Size of Replay Begin Message
  if message_type == 5 then
    return n24x_equities_memo_sbe_v1_13_size_of.replay_begin_message(buffer, offset)
  end
  -- Size of Replay Rejected Message
  if message_type == 6 then
    return n24x_equities_memo_sbe_v1_13_size_of.replay_rejected_message(buffer, offset)
  end
  -- Size of Replay Complete Message
  if message_type == 7 then
    return n24x_equities_memo_sbe_v1_13_size_of.replay_complete_message(buffer, offset)
  end
  -- Size of Stream Begin Message
  if message_type == 8 then
    return n24x_equities_memo_sbe_v1_13_size_of.stream_begin_message(buffer, offset)
  end
  -- Size of Stream Rejected Message
  if message_type == 9 then
    return n24x_equities_memo_sbe_v1_13_size_of.stream_rejected_message(buffer, offset)
  end
  -- Size of Stream Complete Message
  if message_type == 10 then
    return n24x_equities_memo_sbe_v1_13_size_of.stream_complete_message(buffer, offset)
  end
  -- Size of Sequenced Message
  if message_type == 11 then
    return n24x_equities_memo_sbe_v1_13_size_of.sequenced_message(buffer, offset)
  end

  return 0
end

-- Display: Data
n24x_equities_memo_sbe_v1_13_display.data = function(buffer, offset, packet, parent)
  return ""
end

-- Dissect Branches: Data
n24x_equities_memo_sbe_v1_13_dissect.data_branches = function(buffer, offset, packet, parent, message_type)
  -- Dissect Login Request Message
  if message_type == 100 then
    return n24x_equities_memo_sbe_v1_13_dissect.login_request_message(buffer, offset, packet, parent)
  end
  -- Dissect Replay Request Message
  if message_type == 101 then
    return n24x_equities_memo_sbe_v1_13_dissect.replay_request_message(buffer, offset, packet, parent)
  end
  -- Dissect Replay All Request Message
  if message_type == 102 then
    return n24x_equities_memo_sbe_v1_13_dissect.replay_all_request_message(buffer, offset, packet, parent)
  end
  -- Dissect Stream Request Message
  if message_type == 103 then
    return n24x_equities_memo_sbe_v1_13_dissect.stream_request_message(buffer, offset, packet, parent)
  end
  -- Dissect Unsequenced Message
  if message_type == 104 then
    return n24x_equities_memo_sbe_v1_13_dissect.unsequenced_message(buffer, offset, packet, parent)
  end
  -- Dissect Login Accepted Message
  if message_type == 1 then
    return n24x_equities_memo_sbe_v1_13_dissect.login_accepted_message(buffer, offset, packet, parent)
  end
  -- Dissect Login Rejected Message
  if message_type == 2 then
    return n24x_equities_memo_sbe_v1_13_dissect.login_rejected_message(buffer, offset, packet, parent)
  end
  -- Dissect Start Of Session Message
  if message_type == 3 then
    return n24x_equities_memo_sbe_v1_13_dissect.start_of_session_message(buffer, offset, packet, parent)
  end
  -- Dissect Replay Begin Message
  if message_type == 5 then
    return n24x_equities_memo_sbe_v1_13_dissect.replay_begin_message(buffer, offset, packet, parent)
  end
  -- Dissect Replay Rejected Message
  if message_type == 6 then
    return n24x_equities_memo_sbe_v1_13_dissect.replay_rejected_message(buffer, offset, packet, parent)
  end
  -- Dissect Replay Complete Message
  if message_type == 7 then
    return n24x_equities_memo_sbe_v1_13_dissect.replay_complete_message(buffer, offset, packet, parent)
  end
  -- Dissect Stream Begin Message
  if message_type == 8 then
    return n24x_equities_memo_sbe_v1_13_dissect.stream_begin_message(buffer, offset, packet, parent)
  end
  -- Dissect Stream Rejected Message
  if message_type == 9 then
    return n24x_equities_memo_sbe_v1_13_dissect.stream_rejected_message(buffer, offset, packet, parent)
  end
  -- Dissect Stream Complete Message
  if message_type == 10 then
    return n24x_equities_memo_sbe_v1_13_dissect.stream_complete_message(buffer, offset, packet, parent)
  end
  -- Dissect Sequenced Message
  if message_type == 11 then
    return n24x_equities_memo_sbe_v1_13_dissect.sequenced_message(buffer, offset, packet, parent)
  end

  return offset
end

-- Dissect: Data
n24x_equities_memo_sbe_v1_13_dissect.data = function(buffer, offset, packet, parent, message_type)
  if not show.data then
    return n24x_equities_memo_sbe_v1_13_dissect.data_branches(buffer, offset, packet, parent, message_type)
  end

  -- Calculate size and check that branch is not empty
  local size = n24x_equities_memo_sbe_v1_13_size_of.data(buffer, offset, message_type)
  if size == 0 then
    return offset
  end

  -- Dissect Element
  local range = buffer(offset, size)
  local display = n24x_equities_memo_sbe_v1_13_display.data(buffer, packet, parent)
  local element = parent:add(n24x_equities_memo_sbe_v1_13.fields.data, range, display)

  return n24x_equities_memo_sbe_v1_13_dissect.data_branches(buffer, offset, packet, parent, message_type)
end

-- Size: Message Length
n24x_equities_memo_sbe_v1_13_size_of.message_length = 2

-- Display: Message Length
n24x_equities_memo_sbe_v1_13_display.message_length = function(value)
  return "Message Length: "..value
end

-- Dissect: Message Length
n24x_equities_memo_sbe_v1_13_dissect.message_length = function(buffer, offset, packet, parent)
  local length = n24x_equities_memo_sbe_v1_13_size_of.message_length
  local range = buffer(offset, length)
  local value = range:uint()
  local display = n24x_equities_memo_sbe_v1_13_display.message_length(value, buffer, offset, packet, parent)

  parent:add(n24x_equities_memo_sbe_v1_13.fields.message_length, range, value, display)

  return offset + length, value
end

-- Size: Message Type
n24x_equities_memo_sbe_v1_13_size_of.message_type = 1

-- Display: Message Type
n24x_equities_memo_sbe_v1_13_display.message_type = function(value)
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
n24x_equities_memo_sbe_v1_13_dissect.message_type = function(buffer, offset, packet, parent)
  local length = n24x_equities_memo_sbe_v1_13_size_of.message_type
  local range = buffer(offset, length)
  local value = range:uint()
  local display = n24x_equities_memo_sbe_v1_13_display.message_type(value, buffer, offset, packet, parent)

  parent:add(n24x_equities_memo_sbe_v1_13.fields.message_type, range, value, display)

  return offset + length, value
end

-- Calculate size of: Common Header
n24x_equities_memo_sbe_v1_13_size_of.common_header = function(buffer, offset)
  local index = 0

  index = index + n24x_equities_memo_sbe_v1_13_size_of.message_type

  index = index + n24x_equities_memo_sbe_v1_13_size_of.message_length

  return index
end

-- Display: Common Header
n24x_equities_memo_sbe_v1_13_display.common_header = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Common Header
n24x_equities_memo_sbe_v1_13_dissect.common_header_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Message Type: 1 Byte Unsigned Fixed Width Integer Enum with 16 values
  index, message_type = n24x_equities_memo_sbe_v1_13_dissect.message_type(buffer, index, packet, parent)

  -- Message Length: 2 Byte Unsigned Fixed Width Integer
  index, message_length = n24x_equities_memo_sbe_v1_13_dissect.message_length(buffer, index, packet, parent)

  return index
end

-- Dissect: Common Header
n24x_equities_memo_sbe_v1_13_dissect.common_header = function(buffer, offset, packet, parent)
  if show.common_header then
    -- Optionally add element to protocol tree
    parent = parent:add(n24x_equities_memo_sbe_v1_13.fields.common_header, buffer(offset, 0))
    local index = n24x_equities_memo_sbe_v1_13_dissect.common_header_fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = n24x_equities_memo_sbe_v1_13_display.common_header(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return n24x_equities_memo_sbe_v1_13_dissect.common_header_fields(buffer, offset, packet, parent)
  end
end

-- Dissect Packet
n24x_equities_memo_sbe_v1_13_dissect.packet = function(buffer, packet, parent)
  local index = 0

  -- Common Header: Struct of 2 fields
  index, common_header = n24x_equities_memo_sbe_v1_13_dissect.common_header(buffer, index, packet, parent)

  -- Dependency element: Message Type
  local message_type = buffer(index - 3, 1):uint()

  -- Data: Runtime Type with 15 branches
  index = n24x_equities_memo_sbe_v1_13_dissect.data(buffer, index, packet, parent, message_type)

  return index
end


-----------------------------------------------------------------------
-- Protocol Dissector and Components
-----------------------------------------------------------------------

-- Initialize Dissector
function n24x_equities_memo_sbe_v1_13.init()
end

-- Dissector for 24X Equities Memo Sbe 1.13
function n24x_equities_memo_sbe_v1_13.dissector(buffer, packet, parent)

  -- Set protocol name
  packet.cols.protocol = n24x_equities_memo_sbe_v1_13.name

  -- Dissect protocol
  local protocol = parent:add(n24x_equities_memo_sbe_v1_13, buffer(), n24x_equities_memo_sbe_v1_13.description, "("..buffer:len().." Bytes)")
  return n24x_equities_memo_sbe_v1_13_dissect.packet(buffer, packet, protocol)
end

-- Register With Tcp Table
local tcp_table = DissectorTable.get("tcp.port")
tcp_table:add(65333, n24x_equities_memo_sbe_v1_13)


-----------------------------------------------------------------------
-- Protocol Heuristics
-----------------------------------------------------------------------

-- Verify size of packet
verify.n24x_equities_memo_sbe_v1_13_packet_size = function(buffer)

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

  if value == 269 then
    return true
  end

  return false
end

-- Verify Schema Id Field
verify.schema_id = function(buffer)
  -- Attempt to read field
  local value = buffer(1790, 1):uint()

  if value == 1 then
    return true
  end

  return false
end

-- Verify Version Field
verify.version = function(buffer)
  -- Attempt to read field
  local value = buffer(1791, 2):uint()

  if value == 269 then
    return true
  end

  return false
end

-- Dissector Heuristic for 24X Equities Memo Sbe 1.13
local function n24x_equities_memo_sbe_v1_13_heuristic(buffer, packet, parent)
  -- Verify packet length
  if not verify.n24x_equities_memo_sbe_v1_13_packet_size(buffer) then return false end

  -- Verify Schema Id
  if not verify.schema_id(buffer) then return false end

  -- Verify Version
  if not verify.version(buffer) then return false end

  -- Verify Schema Id
  if not verify.schema_id(buffer) then return false end

  -- Verify Version
  if not verify.version(buffer) then return false end

  -- Protocol is valid, set conversation and dissect this packet
  packet.conversation = n24x_equities_memo_sbe_v1_13
  n24x_equities_memo_sbe_v1_13.dissector(buffer, packet, parent)

  return true
end

-- Register Heuristic for 24X Equities Memo Sbe 1.13
n24x_equities_memo_sbe_v1_13:register_heuristic("tcp", n24x_equities_memo_sbe_v1_13_heuristic)

-----------------------------------------------------------------------
-- Lua dissectors are an easily edited and modified cross platform dissection solution.
-- Feel free to modify. Enjoy.
-----------------------------------------------------------------------
-- 
-- Protocol:
--   Organization: 24 Exchange
--   Version: 1.13
--   Date: Monday, September 1, 2025
--   Specification: memo-sbe-us-equities-v1.13a
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
