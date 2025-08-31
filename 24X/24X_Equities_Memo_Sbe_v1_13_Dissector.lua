-----------------------------------------------------------------------
-- Lua Script Wireshark Dissector
-- 
-- Please see end of file for rules and regulations
-----------------------------------------------------------------------

-- 24X Equities Memo Sbe 1.13 Protocol
local omi_n24x_equities_memo_sbe_v1_13 = Proto("24X.Equities.Memo.Sbe.v1.13.Lua", "24X Equities Memo Sbe 1.13")

-- Protocol table
local n24x_equities_memo_sbe_v1_13 = {}

-- Component Tables
local show = {}
local format = {}
local verify = {}
local translate = {}

-----------------------------------------------------------------------
-- Declare Protocol Fields
-----------------------------------------------------------------------

-- 24X Equities Memo Sbe 1.13 Fields
omi_n24x_equities_memo_sbe_v1_13.fields.block_length = ProtoField.new("Block Length", "24x.equities.memo.sbe.v1.13.blocklength", ftypes.UINT16)
omi_n24x_equities_memo_sbe_v1_13.fields.block_length_uint_8 = ProtoField.new("Block Length uint 8", "24x.equities.memo.sbe.v1.13.blocklengthuint8", ftypes.UINT8)
omi_n24x_equities_memo_sbe_v1_13.fields.cancel_group_id = ProtoField.new("Cancel Group Id", "24x.equities.memo.sbe.v1.13.cancelgroupid", ftypes.UINT16)
omi_n24x_equities_memo_sbe_v1_13.fields.cancel_reason = ProtoField.new("Cancel Reason", "24x.equities.memo.sbe.v1.13.cancelreason", ftypes.UINT8)
omi_n24x_equities_memo_sbe_v1_13.fields.clordid = ProtoField.new("ClOrdId", "24x.equities.memo.sbe.v1.13.clordid", ftypes.STRING)
omi_n24x_equities_memo_sbe_v1_13.fields.common_header = ProtoField.new("Common Header", "24x.equities.memo.sbe.v1.13.commonheader", ftypes.STRING)
omi_n24x_equities_memo_sbe_v1_13.fields.count = ProtoField.new("Count", "24x.equities.memo.sbe.v1.13.count", ftypes.UINT32)
omi_n24x_equities_memo_sbe_v1_13.fields.cum_qty = ProtoField.new("Cum Qty", "24x.equities.memo.sbe.v1.13.cumqty", ftypes.UINT32)
omi_n24x_equities_memo_sbe_v1_13.fields.cust_order_capacity_cust_order_capacity_type = ProtoField.new("Cust Order Capacity Cust Order Capacity Type", "24x.equities.memo.sbe.v1.13.custordercapacitycustordercapacitytype", ftypes.UINT8)
omi_n24x_equities_memo_sbe_v1_13.fields.cust_order_capacity_cust_order_capacity_type_optional = ProtoField.new("Cust Order Capacity Cust Order Capacity Type optional", "24x.equities.memo.sbe.v1.13.custordercapacitycustordercapacitytypeoptional", ftypes.UINT8)
omi_n24x_equities_memo_sbe_v1_13.fields.cxl_rej_reason = ProtoField.new("Cxl Rej Reason", "24x.equities.memo.sbe.v1.13.cxlrejreason", ftypes.UINT8)
omi_n24x_equities_memo_sbe_v1_13.fields.cxl_rej_response_to = ProtoField.new("Cxl Rej Response To", "24x.equities.memo.sbe.v1.13.cxlrejresponseto", ftypes.STRING)
omi_n24x_equities_memo_sbe_v1_13.fields.data = ProtoField.new("Data", "24x.equities.memo.sbe.v1.13.data", ftypes.STRING)
omi_n24x_equities_memo_sbe_v1_13.fields.display_method = ProtoField.new("Display Method", "24x.equities.memo.sbe.v1.13.displaymethod", ftypes.STRING)
omi_n24x_equities_memo_sbe_v1_13.fields.display_min_incr = ProtoField.new("Display Min Incr", "24x.equities.memo.sbe.v1.13.displayminincr", ftypes.UINT32)
omi_n24x_equities_memo_sbe_v1_13.fields.display_qty = ProtoField.new("Display Qty", "24x.equities.memo.sbe.v1.13.displayqty", ftypes.UINT32)
omi_n24x_equities_memo_sbe_v1_13.fields.exec_id = ProtoField.new("Exec Id", "24x.equities.memo.sbe.v1.13.execid", ftypes.UINT64)
omi_n24x_equities_memo_sbe_v1_13.fields.exec_inst = ProtoField.new("Exec Inst", "24x.equities.memo.sbe.v1.13.execinst", ftypes.STRING)
omi_n24x_equities_memo_sbe_v1_13.fields.exec_ref_id = ProtoField.new("Exec Ref Id", "24x.equities.memo.sbe.v1.13.execrefid", ftypes.UINT64)
omi_n24x_equities_memo_sbe_v1_13.fields.exec_restatement_reason = ProtoField.new("Exec Restatement Reason", "24x.equities.memo.sbe.v1.13.execrestatementreason", ftypes.UINT8)
omi_n24x_equities_memo_sbe_v1_13.fields.expire_time = ProtoField.new("Expire Time", "24x.equities.memo.sbe.v1.13.expiretime", ftypes.UINT64)
omi_n24x_equities_memo_sbe_v1_13.fields.extended_restatement_reason = ProtoField.new("Extended Restatement Reason", "24x.equities.memo.sbe.v1.13.extendedrestatementreason", ftypes.UINT8)
omi_n24x_equities_memo_sbe_v1_13.fields.external_routing_not_allowed = ProtoField.new("External Routing Not Allowed", "24x.equities.memo.sbe.v1.13.externalroutingnotallowed", ftypes.UINT16, {[1]="Yes",[0]="No"}, base.DEC, 0x0004)
omi_n24x_equities_memo_sbe_v1_13.fields.higher_than_price = ProtoField.new("Higher Than Price", "24x.equities.memo.sbe.v1.13.higherthanprice", ftypes.DOUBLE)
omi_n24x_equities_memo_sbe_v1_13.fields.intermarket_sweep = ProtoField.new("Intermarket Sweep", "24x.equities.memo.sbe.v1.13.intermarketsweep", ftypes.UINT16, {[1]="Yes",[0]="No"}, base.DEC, 0x0002)
omi_n24x_equities_memo_sbe_v1_13.fields.last_liquidity_ind = ProtoField.new("Last Liquidity Ind", "24x.equities.memo.sbe.v1.13.lastliquidityind", ftypes.UINT8)
omi_n24x_equities_memo_sbe_v1_13.fields.last_mkt = ProtoField.new("Last Mkt", "24x.equities.memo.sbe.v1.13.lastmkt", ftypes.STRING)
omi_n24x_equities_memo_sbe_v1_13.fields.last_px = ProtoField.new("Last Px", "24x.equities.memo.sbe.v1.13.lastpx", ftypes.DOUBLE)
omi_n24x_equities_memo_sbe_v1_13.fields.last_px_optional = ProtoField.new("Last Px Optional", "24x.equities.memo.sbe.v1.13.lastpxoptional", ftypes.DOUBLE)
omi_n24x_equities_memo_sbe_v1_13.fields.last_qty = ProtoField.new("Last Qty", "24x.equities.memo.sbe.v1.13.lastqty", ftypes.UINT32)
omi_n24x_equities_memo_sbe_v1_13.fields.last_qty_optional = ProtoField.new("Last Qty Optional", "24x.equities.memo.sbe.v1.13.lastqtyoptional", ftypes.UINT32)
omi_n24x_equities_memo_sbe_v1_13.fields.last_shares = ProtoField.new("Last Shares", "24x.equities.memo.sbe.v1.13.lastshares", ftypes.UINT32)
omi_n24x_equities_memo_sbe_v1_13.fields.leaves_qty = ProtoField.new("Leaves Qty", "24x.equities.memo.sbe.v1.13.leavesqty", ftypes.UINT32)
omi_n24x_equities_memo_sbe_v1_13.fields.link_id_optional = ProtoField.new("Link Id Optional", "24x.equities.memo.sbe.v1.13.linkidoptional", ftypes.STRING)
omi_n24x_equities_memo_sbe_v1_13.fields.locate_broker_optional = ProtoField.new("Locate Broker Optional", "24x.equities.memo.sbe.v1.13.locatebrokeroptional", ftypes.STRING)
omi_n24x_equities_memo_sbe_v1_13.fields.locate_reqd = ProtoField.new("Locate Reqd", "24x.equities.memo.sbe.v1.13.locatereqd", ftypes.STRING)
omi_n24x_equities_memo_sbe_v1_13.fields.login_accepted_message = ProtoField.new("Login Accepted Message", "24x.equities.memo.sbe.v1.13.loginacceptedmessage", ftypes.STRING)
omi_n24x_equities_memo_sbe_v1_13.fields.login_reject_code = ProtoField.new("Login Reject Code", "24x.equities.memo.sbe.v1.13.loginrejectcode", ftypes.STRING)
omi_n24x_equities_memo_sbe_v1_13.fields.login_rejected_message = ProtoField.new("Login Rejected Message", "24x.equities.memo.sbe.v1.13.loginrejectedmessage", ftypes.STRING)
omi_n24x_equities_memo_sbe_v1_13.fields.login_request_message = ProtoField.new("Login Request Message", "24x.equities.memo.sbe.v1.13.loginrequestmessage", ftypes.STRING)
omi_n24x_equities_memo_sbe_v1_13.fields.lower_than_price = ProtoField.new("Lower Than Price", "24x.equities.memo.sbe.v1.13.lowerthanprice", ftypes.DOUBLE)
omi_n24x_equities_memo_sbe_v1_13.fields.mass_cancel_reject_reason = ProtoField.new("Mass Cancel Reject Reason", "24x.equities.memo.sbe.v1.13.masscancelrejectreason", ftypes.UINT8)
omi_n24x_equities_memo_sbe_v1_13.fields.message_count = ProtoField.new("Message Count", "24x.equities.memo.sbe.v1.13.messagecount", ftypes.UINT64)
omi_n24x_equities_memo_sbe_v1_13.fields.message_length = ProtoField.new("Message Length", "24x.equities.memo.sbe.v1.13.messagelength", ftypes.UINT16)
omi_n24x_equities_memo_sbe_v1_13.fields.message_type = ProtoField.new("Message Type", "24x.equities.memo.sbe.v1.13.messagetype", ftypes.UINT8)
omi_n24x_equities_memo_sbe_v1_13.fields.min_qty = ProtoField.new("Min Qty", "24x.equities.memo.sbe.v1.13.minqty", ftypes.UINT32)
omi_n24x_equities_memo_sbe_v1_13.fields.next_sequence_number = ProtoField.new("Next Sequence Number", "24x.equities.memo.sbe.v1.13.nextsequencenumber", ftypes.UINT64)
omi_n24x_equities_memo_sbe_v1_13.fields.num_in_group = ProtoField.new("Num In Group", "24x.equities.memo.sbe.v1.13.numingroup", ftypes.UINT8)
omi_n24x_equities_memo_sbe_v1_13.fields.ord_status = ProtoField.new("Ord Status", "24x.equities.memo.sbe.v1.13.ordstatus", ftypes.STRING)
omi_n24x_equities_memo_sbe_v1_13.fields.ord_type = ProtoField.new("Ord Type", "24x.equities.memo.sbe.v1.13.ordtype", ftypes.STRING)
omi_n24x_equities_memo_sbe_v1_13.fields.order_capacity = ProtoField.new("Order Capacity", "24x.equities.memo.sbe.v1.13.ordercapacity", ftypes.STRING)
omi_n24x_equities_memo_sbe_v1_13.fields.order_id = ProtoField.new("Order Id", "24x.equities.memo.sbe.v1.13.orderid", ftypes.UINT64)
omi_n24x_equities_memo_sbe_v1_13.fields.order_id_optional = ProtoField.new("Order Id Optional", "24x.equities.memo.sbe.v1.13.orderidoptional", ftypes.UINT64)
omi_n24x_equities_memo_sbe_v1_13.fields.order_qty = ProtoField.new("Order Qty", "24x.equities.memo.sbe.v1.13.orderqty", ftypes.UINT32)
omi_n24x_equities_memo_sbe_v1_13.fields.order_reject_reason = ProtoField.new("Order Reject Reason", "24x.equities.memo.sbe.v1.13.orderrejectreason", ftypes.UINT8)
omi_n24x_equities_memo_sbe_v1_13.fields.origclordid = ProtoField.new("OrigClOrdId", "24x.equities.memo.sbe.v1.13.origclordid", ftypes.STRING)
omi_n24x_equities_memo_sbe_v1_13.fields.origclordid_optional = ProtoField.new("OrigClOrdId Optional", "24x.equities.memo.sbe.v1.13.origclordidoptional", ftypes.STRING)
omi_n24x_equities_memo_sbe_v1_13.fields.packet = ProtoField.new("Packet", "24x.equities.memo.sbe.v1.13.packet", ftypes.STRING)
omi_n24x_equities_memo_sbe_v1_13.fields.participate_do_not_initiate = ProtoField.new("Participate Do Not Initiate", "24x.equities.memo.sbe.v1.13.participatedonotinitiate", ftypes.UINT16, {[1]="Yes",[0]="No"}, base.DEC, 0x0001)
omi_n24x_equities_memo_sbe_v1_13.fields.parties_group = ProtoField.new("Parties Group", "24x.equities.memo.sbe.v1.13.partiesgroup", ftypes.STRING)
omi_n24x_equities_memo_sbe_v1_13.fields.parties_groups = ProtoField.new("Parties Groups", "24x.equities.memo.sbe.v1.13.partiesgroups", ftypes.STRING)
omi_n24x_equities_memo_sbe_v1_13.fields.party_i_d_new_order_single_party_id = ProtoField.new("Party I D New Order Single Party Id", "24x.equities.memo.sbe.v1.13.partyidnewordersinglepartyid", ftypes.STRING)
omi_n24x_equities_memo_sbe_v1_13.fields.party_id_source = ProtoField.new("Party Id Source", "24x.equities.memo.sbe.v1.13.partyidsource", ftypes.STRING)
omi_n24x_equities_memo_sbe_v1_13.fields.party_role = ProtoField.new("Party Role", "24x.equities.memo.sbe.v1.13.partyrole", ftypes.UINT8)
omi_n24x_equities_memo_sbe_v1_13.fields.payload = ProtoField.new("Payload", "24x.equities.memo.sbe.v1.13.payload", ftypes.STRING)
omi_n24x_equities_memo_sbe_v1_13.fields.peg_offset_value = ProtoField.new("Peg Offset Value", "24x.equities.memo.sbe.v1.13.pegoffsetvalue", ftypes.DOUBLE)
omi_n24x_equities_memo_sbe_v1_13.fields.peg_price_type = ProtoField.new("Peg Price Type", "24x.equities.memo.sbe.v1.13.pegpricetype", ftypes.UINT8)
omi_n24x_equities_memo_sbe_v1_13.fields.pending_message_count = ProtoField.new("Pending Message Count", "24x.equities.memo.sbe.v1.13.pendingmessagecount", ftypes.UINT32)
omi_n24x_equities_memo_sbe_v1_13.fields.price = ProtoField.new("Price", "24x.equities.memo.sbe.v1.13.price", ftypes.DOUBLE)
omi_n24x_equities_memo_sbe_v1_13.fields.repeating_group_dimensions = ProtoField.new("Repeating Group Dimensions", "24x.equities.memo.sbe.v1.13.repeatinggroupdimensions", ftypes.STRING)
omi_n24x_equities_memo_sbe_v1_13.fields.replay_all_request_message = ProtoField.new("Replay All Request Message", "24x.equities.memo.sbe.v1.13.replayallrequestmessage", ftypes.STRING)
omi_n24x_equities_memo_sbe_v1_13.fields.replay_begin_message = ProtoField.new("Replay Begin Message", "24x.equities.memo.sbe.v1.13.replaybeginmessage", ftypes.STRING)
omi_n24x_equities_memo_sbe_v1_13.fields.replay_complete_message = ProtoField.new("Replay Complete Message", "24x.equities.memo.sbe.v1.13.replaycompletemessage", ftypes.STRING)
omi_n24x_equities_memo_sbe_v1_13.fields.replay_reject_code = ProtoField.new("Replay Reject Code", "24x.equities.memo.sbe.v1.13.replayrejectcode", ftypes.STRING)
omi_n24x_equities_memo_sbe_v1_13.fields.replay_rejected_message = ProtoField.new("Replay Rejected Message", "24x.equities.memo.sbe.v1.13.replayrejectedmessage", ftypes.STRING)
omi_n24x_equities_memo_sbe_v1_13.fields.replay_request_message = ProtoField.new("Replay Request Message", "24x.equities.memo.sbe.v1.13.replayrequestmessage", ftypes.STRING)
omi_n24x_equities_memo_sbe_v1_13.fields.reprice_behavior = ProtoField.new("Reprice Behavior", "24x.equities.memo.sbe.v1.13.repricebehavior", ftypes.UINT8)
omi_n24x_equities_memo_sbe_v1_13.fields.reprice_frequency = ProtoField.new("Reprice Frequency", "24x.equities.memo.sbe.v1.13.repricefrequency", ftypes.UINT8)
omi_n24x_equities_memo_sbe_v1_13.fields.reserve_replenish_timing = ProtoField.new("Reserve Replenish Timing", "24x.equities.memo.sbe.v1.13.reservereplenishtiming", ftypes.UINT8)
omi_n24x_equities_memo_sbe_v1_13.fields.reserved_13 = ProtoField.new("Reserved 13", "24x.equities.memo.sbe.v1.13.reserved13", ftypes.UINT16, nil, base.DEC, 0xFFF8)
omi_n24x_equities_memo_sbe_v1_13.fields.risk_group_id = ProtoField.new("Risk Group Id", "24x.equities.memo.sbe.v1.13.riskgroupid", ftypes.UINT16)
omi_n24x_equities_memo_sbe_v1_13.fields.sbe_header = ProtoField.new("Sbe Header", "24x.equities.memo.sbe.v1.13.sbeheader", ftypes.STRING)
omi_n24x_equities_memo_sbe_v1_13.fields.sbe_message = ProtoField.new("Sbe Message", "24x.equities.memo.sbe.v1.13.sbemessage", ftypes.STRING)
omi_n24x_equities_memo_sbe_v1_13.fields.schema_id = ProtoField.new("Schema Id", "24x.equities.memo.sbe.v1.13.schemaid", ftypes.UINT8)
omi_n24x_equities_memo_sbe_v1_13.fields.security_group = ProtoField.new("Security Group", "24x.equities.memo.sbe.v1.13.securitygroup", ftypes.STRING)
omi_n24x_equities_memo_sbe_v1_13.fields.self_trade_prevention = ProtoField.new("Self Trade Prevention", "24x.equities.memo.sbe.v1.13.selftradeprevention", ftypes.UINT8)
omi_n24x_equities_memo_sbe_v1_13.fields.sending_time = ProtoField.new("Sending Time", "24x.equities.memo.sbe.v1.13.sendingtime", ftypes.UINT64)
omi_n24x_equities_memo_sbe_v1_13.fields.sequenced_message = ProtoField.new("Sequenced Message", "24x.equities.memo.sbe.v1.13.sequencedmessage", ftypes.STRING)
omi_n24x_equities_memo_sbe_v1_13.fields.session_id = ProtoField.new("Session Id", "24x.equities.memo.sbe.v1.13.sessionid", ftypes.UINT64)
omi_n24x_equities_memo_sbe_v1_13.fields.side = ProtoField.new("Side", "24x.equities.memo.sbe.v1.13.side", ftypes.STRING)
omi_n24x_equities_memo_sbe_v1_13.fields.side_optional = ProtoField.new("Side Optional", "24x.equities.memo.sbe.v1.13.sideoptional", ftypes.STRING)
omi_n24x_equities_memo_sbe_v1_13.fields.start_of_session_message = ProtoField.new("Start Of Session Message", "24x.equities.memo.sbe.v1.13.startofsessionmessage", ftypes.STRING)
omi_n24x_equities_memo_sbe_v1_13.fields.stp_group_id = ProtoField.new("Stp Group Id", "24x.equities.memo.sbe.v1.13.stpgroupid", ftypes.UINT16)
omi_n24x_equities_memo_sbe_v1_13.fields.stream_begin_message = ProtoField.new("Stream Begin Message", "24x.equities.memo.sbe.v1.13.streambeginmessage", ftypes.STRING)
omi_n24x_equities_memo_sbe_v1_13.fields.stream_complete_message = ProtoField.new("Stream Complete Message", "24x.equities.memo.sbe.v1.13.streamcompletemessage", ftypes.STRING)
omi_n24x_equities_memo_sbe_v1_13.fields.stream_reject_code = ProtoField.new("Stream Reject Code", "24x.equities.memo.sbe.v1.13.streamrejectcode", ftypes.STRING)
omi_n24x_equities_memo_sbe_v1_13.fields.stream_rejected_message = ProtoField.new("Stream Rejected Message", "24x.equities.memo.sbe.v1.13.streamrejectedmessage", ftypes.STRING)
omi_n24x_equities_memo_sbe_v1_13.fields.stream_request_message = ProtoField.new("Stream Request Message", "24x.equities.memo.sbe.v1.13.streamrequestmessage", ftypes.STRING)
omi_n24x_equities_memo_sbe_v1_13.fields.supported_request_mode = ProtoField.new("Supported Request Mode", "24x.equities.memo.sbe.v1.13.supportedrequestmode", ftypes.STRING)
omi_n24x_equities_memo_sbe_v1_13.fields.symbol = ProtoField.new("Symbol", "24x.equities.memo.sbe.v1.13.symbol", ftypes.STRING)
omi_n24x_equities_memo_sbe_v1_13.fields.symbol_sfx = ProtoField.new("Symbol Sfx", "24x.equities.memo.sbe.v1.13.symbolsfx", ftypes.STRING)
omi_n24x_equities_memo_sbe_v1_13.fields.template_id = ProtoField.new("Template Id", "24x.equities.memo.sbe.v1.13.templateid", ftypes.UINT8)
omi_n24x_equities_memo_sbe_v1_13.fields.time_in_force = ProtoField.new("Time In Force", "24x.equities.memo.sbe.v1.13.timeinforce", ftypes.STRING)
omi_n24x_equities_memo_sbe_v1_13.fields.token = ProtoField.new("Token", "24x.equities.memo.sbe.v1.13.token", ftypes.STRING)
omi_n24x_equities_memo_sbe_v1_13.fields.token_type = ProtoField.new("Token Type", "24x.equities.memo.sbe.v1.13.tokentype", ftypes.STRING)
omi_n24x_equities_memo_sbe_v1_13.fields.total_sequence_count = ProtoField.new("Total Sequence Count", "24x.equities.memo.sbe.v1.13.totalsequencecount", ftypes.UINT64)
omi_n24x_equities_memo_sbe_v1_13.fields.transact_time = ProtoField.new("Transact Time", "24x.equities.memo.sbe.v1.13.transacttime", ftypes.UINT64)
omi_n24x_equities_memo_sbe_v1_13.fields.trd_match_id = ProtoField.new("Trd Match Id", "24x.equities.memo.sbe.v1.13.trdmatchid", ftypes.UINT64)
omi_n24x_equities_memo_sbe_v1_13.fields.trd_matching_id = ProtoField.new("Trd Matching Id", "24x.equities.memo.sbe.v1.13.trdmatchingid", ftypes.UINT64)
omi_n24x_equities_memo_sbe_v1_13.fields.unsequenced_message = ProtoField.new("Unsequenced Message", "24x.equities.memo.sbe.v1.13.unsequencedmessage", ftypes.STRING)
omi_n24x_equities_memo_sbe_v1_13.fields.version = ProtoField.new("Version", "24x.equities.memo.sbe.v1.13.version", ftypes.UINT16)

-- 24X Equities Memo Sbe 1.13 messages
omi_n24x_equities_memo_sbe_v1_13.fields.execution_report_canceled_message = ProtoField.new("Execution Report Canceled Message", "24x.equities.memo.sbe.v1.13.executionreportcanceledmessage", ftypes.STRING)
omi_n24x_equities_memo_sbe_v1_13.fields.execution_report_new_message = ProtoField.new("Execution Report New Message", "24x.equities.memo.sbe.v1.13.executionreportnewmessage", ftypes.STRING)
omi_n24x_equities_memo_sbe_v1_13.fields.execution_report_pending_cancel_message = ProtoField.new("Execution Report Pending Cancel Message", "24x.equities.memo.sbe.v1.13.executionreportpendingcancelmessage", ftypes.STRING)
omi_n24x_equities_memo_sbe_v1_13.fields.execution_report_pending_new_message = ProtoField.new("Execution Report Pending New Message", "24x.equities.memo.sbe.v1.13.executionreportpendingnewmessage", ftypes.STRING)
omi_n24x_equities_memo_sbe_v1_13.fields.execution_report_pending_replace_message = ProtoField.new("Execution Report Pending Replace Message", "24x.equities.memo.sbe.v1.13.executionreportpendingreplacemessage", ftypes.STRING)
omi_n24x_equities_memo_sbe_v1_13.fields.execution_report_rejected_message = ProtoField.new("Execution Report Rejected Message", "24x.equities.memo.sbe.v1.13.executionreportrejectedmessage", ftypes.STRING)
omi_n24x_equities_memo_sbe_v1_13.fields.execution_report_replaced_message = ProtoField.new("Execution Report Replaced Message", "24x.equities.memo.sbe.v1.13.executionreportreplacedmessage", ftypes.STRING)
omi_n24x_equities_memo_sbe_v1_13.fields.execution_report_restatement_message = ProtoField.new("Execution Report Restatement Message", "24x.equities.memo.sbe.v1.13.executionreportrestatementmessage", ftypes.STRING)
omi_n24x_equities_memo_sbe_v1_13.fields.execution_report_trade_break_message = ProtoField.new("Execution Report Trade Break Message", "24x.equities.memo.sbe.v1.13.executionreporttradebreakmessage", ftypes.STRING)
omi_n24x_equities_memo_sbe_v1_13.fields.execution_report_trade_correction_message = ProtoField.new("Execution Report Trade Correction Message", "24x.equities.memo.sbe.v1.13.executionreporttradecorrectionmessage", ftypes.STRING)
omi_n24x_equities_memo_sbe_v1_13.fields.execution_report_trade_message = ProtoField.new("Execution Report Trade Message", "24x.equities.memo.sbe.v1.13.executionreporttrademessage", ftypes.STRING)
omi_n24x_equities_memo_sbe_v1_13.fields.mass_cancel_done_message = ProtoField.new("Mass Cancel Done Message", "24x.equities.memo.sbe.v1.13.masscanceldonemessage", ftypes.STRING)
omi_n24x_equities_memo_sbe_v1_13.fields.mass_cancel_reject_message = ProtoField.new("Mass Cancel Reject Message", "24x.equities.memo.sbe.v1.13.masscancelrejectmessage", ftypes.STRING)
omi_n24x_equities_memo_sbe_v1_13.fields.mass_cancel_request_message = ProtoField.new("Mass Cancel Request Message", "24x.equities.memo.sbe.v1.13.masscancelrequestmessage", ftypes.STRING)
omi_n24x_equities_memo_sbe_v1_13.fields.new_order_single_message = ProtoField.new("New Order Single Message", "24x.equities.memo.sbe.v1.13.newordersinglemessage", ftypes.STRING)
omi_n24x_equities_memo_sbe_v1_13.fields.order_cancel_reject_message = ProtoField.new("Order Cancel Reject Message", "24x.equities.memo.sbe.v1.13.ordercancelrejectmessage", ftypes.STRING)
omi_n24x_equities_memo_sbe_v1_13.fields.order_cancel_replace_request_message = ProtoField.new("Order Cancel Replace Request Message", "24x.equities.memo.sbe.v1.13.ordercancelreplacerequestmessage", ftypes.STRING)
omi_n24x_equities_memo_sbe_v1_13.fields.order_cancel_request_message = ProtoField.new("Order Cancel Request Message", "24x.equities.memo.sbe.v1.13.ordercancelrequestmessage", ftypes.STRING)
omi_n24x_equities_memo_sbe_v1_13.fields.pending_mass_cancel_message = ProtoField.new("Pending Mass Cancel Message", "24x.equities.memo.sbe.v1.13.pendingmasscancelmessage", ftypes.STRING)

-- 24X Equities Memo Sbe 1.13 generated fields
omi_n24x_equities_memo_sbe_v1_13.fields.parties_group_index = ProtoField.new("Parties Group Index", "24x.equities.memo.sbe.v1.13.partiesgroupindex", ftypes.UINT16)

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
omi_n24x_equities_memo_sbe_v1_13.prefs.show_common_header = Pref.bool("Show Common Header", show.common_header, "Parse and add Common Header to protocol tree")
omi_n24x_equities_memo_sbe_v1_13.prefs.show_exec_inst = Pref.bool("Show Exec Inst", show.exec_inst, "Parse and add Exec Inst to protocol tree")
omi_n24x_equities_memo_sbe_v1_13.prefs.show_execution_report_canceled_message = Pref.bool("Show Execution Report Canceled Message", show.execution_report_canceled_message, "Parse and add Execution Report Canceled Message to protocol tree")
omi_n24x_equities_memo_sbe_v1_13.prefs.show_execution_report_new_message = Pref.bool("Show Execution Report New Message", show.execution_report_new_message, "Parse and add Execution Report New Message to protocol tree")
omi_n24x_equities_memo_sbe_v1_13.prefs.show_execution_report_pending_cancel_message = Pref.bool("Show Execution Report Pending Cancel Message", show.execution_report_pending_cancel_message, "Parse and add Execution Report Pending Cancel Message to protocol tree")
omi_n24x_equities_memo_sbe_v1_13.prefs.show_execution_report_pending_new_message = Pref.bool("Show Execution Report Pending New Message", show.execution_report_pending_new_message, "Parse and add Execution Report Pending New Message to protocol tree")
omi_n24x_equities_memo_sbe_v1_13.prefs.show_execution_report_pending_replace_message = Pref.bool("Show Execution Report Pending Replace Message", show.execution_report_pending_replace_message, "Parse and add Execution Report Pending Replace Message to protocol tree")
omi_n24x_equities_memo_sbe_v1_13.prefs.show_execution_report_rejected_message = Pref.bool("Show Execution Report Rejected Message", show.execution_report_rejected_message, "Parse and add Execution Report Rejected Message to protocol tree")
omi_n24x_equities_memo_sbe_v1_13.prefs.show_execution_report_replaced_message = Pref.bool("Show Execution Report Replaced Message", show.execution_report_replaced_message, "Parse and add Execution Report Replaced Message to protocol tree")
omi_n24x_equities_memo_sbe_v1_13.prefs.show_execution_report_restatement_message = Pref.bool("Show Execution Report Restatement Message", show.execution_report_restatement_message, "Parse and add Execution Report Restatement Message to protocol tree")
omi_n24x_equities_memo_sbe_v1_13.prefs.show_execution_report_trade_break_message = Pref.bool("Show Execution Report Trade Break Message", show.execution_report_trade_break_message, "Parse and add Execution Report Trade Break Message to protocol tree")
omi_n24x_equities_memo_sbe_v1_13.prefs.show_execution_report_trade_correction_message = Pref.bool("Show Execution Report Trade Correction Message", show.execution_report_trade_correction_message, "Parse and add Execution Report Trade Correction Message to protocol tree")
omi_n24x_equities_memo_sbe_v1_13.prefs.show_execution_report_trade_message = Pref.bool("Show Execution Report Trade Message", show.execution_report_trade_message, "Parse and add Execution Report Trade Message to protocol tree")
omi_n24x_equities_memo_sbe_v1_13.prefs.show_login_accepted_message = Pref.bool("Show Login Accepted Message", show.login_accepted_message, "Parse and add Login Accepted Message to protocol tree")
omi_n24x_equities_memo_sbe_v1_13.prefs.show_login_rejected_message = Pref.bool("Show Login Rejected Message", show.login_rejected_message, "Parse and add Login Rejected Message to protocol tree")
omi_n24x_equities_memo_sbe_v1_13.prefs.show_login_request_message = Pref.bool("Show Login Request Message", show.login_request_message, "Parse and add Login Request Message to protocol tree")
omi_n24x_equities_memo_sbe_v1_13.prefs.show_mass_cancel_done_message = Pref.bool("Show Mass Cancel Done Message", show.mass_cancel_done_message, "Parse and add Mass Cancel Done Message to protocol tree")
omi_n24x_equities_memo_sbe_v1_13.prefs.show_mass_cancel_reject_message = Pref.bool("Show Mass Cancel Reject Message", show.mass_cancel_reject_message, "Parse and add Mass Cancel Reject Message to protocol tree")
omi_n24x_equities_memo_sbe_v1_13.prefs.show_mass_cancel_request_message = Pref.bool("Show Mass Cancel Request Message", show.mass_cancel_request_message, "Parse and add Mass Cancel Request Message to protocol tree")
omi_n24x_equities_memo_sbe_v1_13.prefs.show_new_order_single_message = Pref.bool("Show New Order Single Message", show.new_order_single_message, "Parse and add New Order Single Message to protocol tree")
omi_n24x_equities_memo_sbe_v1_13.prefs.show_order_cancel_reject_message = Pref.bool("Show Order Cancel Reject Message", show.order_cancel_reject_message, "Parse and add Order Cancel Reject Message to protocol tree")
omi_n24x_equities_memo_sbe_v1_13.prefs.show_order_cancel_replace_request_message = Pref.bool("Show Order Cancel Replace Request Message", show.order_cancel_replace_request_message, "Parse and add Order Cancel Replace Request Message to protocol tree")
omi_n24x_equities_memo_sbe_v1_13.prefs.show_order_cancel_request_message = Pref.bool("Show Order Cancel Request Message", show.order_cancel_request_message, "Parse and add Order Cancel Request Message to protocol tree")
omi_n24x_equities_memo_sbe_v1_13.prefs.show_packet = Pref.bool("Show Packet", show.packet, "Parse and add Packet to protocol tree")
omi_n24x_equities_memo_sbe_v1_13.prefs.show_parties_group = Pref.bool("Show Parties Group", show.parties_group, "Parse and add Parties Group to protocol tree")
omi_n24x_equities_memo_sbe_v1_13.prefs.show_parties_groups = Pref.bool("Show Parties Groups", show.parties_groups, "Parse and add Parties Groups to protocol tree")
omi_n24x_equities_memo_sbe_v1_13.prefs.show_pending_mass_cancel_message = Pref.bool("Show Pending Mass Cancel Message", show.pending_mass_cancel_message, "Parse and add Pending Mass Cancel Message to protocol tree")
omi_n24x_equities_memo_sbe_v1_13.prefs.show_repeating_group_dimensions = Pref.bool("Show Repeating Group Dimensions", show.repeating_group_dimensions, "Parse and add Repeating Group Dimensions to protocol tree")
omi_n24x_equities_memo_sbe_v1_13.prefs.show_replay_all_request_message = Pref.bool("Show Replay All Request Message", show.replay_all_request_message, "Parse and add Replay All Request Message to protocol tree")
omi_n24x_equities_memo_sbe_v1_13.prefs.show_replay_begin_message = Pref.bool("Show Replay Begin Message", show.replay_begin_message, "Parse and add Replay Begin Message to protocol tree")
omi_n24x_equities_memo_sbe_v1_13.prefs.show_replay_complete_message = Pref.bool("Show Replay Complete Message", show.replay_complete_message, "Parse and add Replay Complete Message to protocol tree")
omi_n24x_equities_memo_sbe_v1_13.prefs.show_replay_rejected_message = Pref.bool("Show Replay Rejected Message", show.replay_rejected_message, "Parse and add Replay Rejected Message to protocol tree")
omi_n24x_equities_memo_sbe_v1_13.prefs.show_replay_request_message = Pref.bool("Show Replay Request Message", show.replay_request_message, "Parse and add Replay Request Message to protocol tree")
omi_n24x_equities_memo_sbe_v1_13.prefs.show_sbe_header = Pref.bool("Show Sbe Header", show.sbe_header, "Parse and add Sbe Header to protocol tree")
omi_n24x_equities_memo_sbe_v1_13.prefs.show_sbe_message = Pref.bool("Show Sbe Message", show.sbe_message, "Parse and add Sbe Message to protocol tree")
omi_n24x_equities_memo_sbe_v1_13.prefs.show_sequenced_message = Pref.bool("Show Sequenced Message", show.sequenced_message, "Parse and add Sequenced Message to protocol tree")
omi_n24x_equities_memo_sbe_v1_13.prefs.show_start_of_session_message = Pref.bool("Show Start Of Session Message", show.start_of_session_message, "Parse and add Start Of Session Message to protocol tree")
omi_n24x_equities_memo_sbe_v1_13.prefs.show_stream_begin_message = Pref.bool("Show Stream Begin Message", show.stream_begin_message, "Parse and add Stream Begin Message to protocol tree")
omi_n24x_equities_memo_sbe_v1_13.prefs.show_stream_complete_message = Pref.bool("Show Stream Complete Message", show.stream_complete_message, "Parse and add Stream Complete Message to protocol tree")
omi_n24x_equities_memo_sbe_v1_13.prefs.show_stream_rejected_message = Pref.bool("Show Stream Rejected Message", show.stream_rejected_message, "Parse and add Stream Rejected Message to protocol tree")
omi_n24x_equities_memo_sbe_v1_13.prefs.show_stream_request_message = Pref.bool("Show Stream Request Message", show.stream_request_message, "Parse and add Stream Request Message to protocol tree")
omi_n24x_equities_memo_sbe_v1_13.prefs.show_unsequenced_message = Pref.bool("Show Unsequenced Message", show.unsequenced_message, "Parse and add Unsequenced Message to protocol tree")
omi_n24x_equities_memo_sbe_v1_13.prefs.show_data = Pref.bool("Show Data", show.data, "Parse and add Data to protocol tree")
omi_n24x_equities_memo_sbe_v1_13.prefs.show_payload = Pref.bool("Show Payload", show.payload, "Parse and add Payload to protocol tree")

-- Handle changed preferences
function omi_n24x_equities_memo_sbe_v1_13.prefs_changed()
  local changed = false

  -- Check if show options have changed
  if show.common_header ~= omi_n24x_equities_memo_sbe_v1_13.prefs.show_common_header then
    show.common_header = omi_n24x_equities_memo_sbe_v1_13.prefs.show_common_header
    changed = true
  end
  if show.exec_inst ~= omi_n24x_equities_memo_sbe_v1_13.prefs.show_exec_inst then
    show.exec_inst = omi_n24x_equities_memo_sbe_v1_13.prefs.show_exec_inst
    changed = true
  end
  if show.execution_report_canceled_message ~= omi_n24x_equities_memo_sbe_v1_13.prefs.show_execution_report_canceled_message then
    show.execution_report_canceled_message = omi_n24x_equities_memo_sbe_v1_13.prefs.show_execution_report_canceled_message
    changed = true
  end
  if show.execution_report_new_message ~= omi_n24x_equities_memo_sbe_v1_13.prefs.show_execution_report_new_message then
    show.execution_report_new_message = omi_n24x_equities_memo_sbe_v1_13.prefs.show_execution_report_new_message
    changed = true
  end
  if show.execution_report_pending_cancel_message ~= omi_n24x_equities_memo_sbe_v1_13.prefs.show_execution_report_pending_cancel_message then
    show.execution_report_pending_cancel_message = omi_n24x_equities_memo_sbe_v1_13.prefs.show_execution_report_pending_cancel_message
    changed = true
  end
  if show.execution_report_pending_new_message ~= omi_n24x_equities_memo_sbe_v1_13.prefs.show_execution_report_pending_new_message then
    show.execution_report_pending_new_message = omi_n24x_equities_memo_sbe_v1_13.prefs.show_execution_report_pending_new_message
    changed = true
  end
  if show.execution_report_pending_replace_message ~= omi_n24x_equities_memo_sbe_v1_13.prefs.show_execution_report_pending_replace_message then
    show.execution_report_pending_replace_message = omi_n24x_equities_memo_sbe_v1_13.prefs.show_execution_report_pending_replace_message
    changed = true
  end
  if show.execution_report_rejected_message ~= omi_n24x_equities_memo_sbe_v1_13.prefs.show_execution_report_rejected_message then
    show.execution_report_rejected_message = omi_n24x_equities_memo_sbe_v1_13.prefs.show_execution_report_rejected_message
    changed = true
  end
  if show.execution_report_replaced_message ~= omi_n24x_equities_memo_sbe_v1_13.prefs.show_execution_report_replaced_message then
    show.execution_report_replaced_message = omi_n24x_equities_memo_sbe_v1_13.prefs.show_execution_report_replaced_message
    changed = true
  end
  if show.execution_report_restatement_message ~= omi_n24x_equities_memo_sbe_v1_13.prefs.show_execution_report_restatement_message then
    show.execution_report_restatement_message = omi_n24x_equities_memo_sbe_v1_13.prefs.show_execution_report_restatement_message
    changed = true
  end
  if show.execution_report_trade_break_message ~= omi_n24x_equities_memo_sbe_v1_13.prefs.show_execution_report_trade_break_message then
    show.execution_report_trade_break_message = omi_n24x_equities_memo_sbe_v1_13.prefs.show_execution_report_trade_break_message
    changed = true
  end
  if show.execution_report_trade_correction_message ~= omi_n24x_equities_memo_sbe_v1_13.prefs.show_execution_report_trade_correction_message then
    show.execution_report_trade_correction_message = omi_n24x_equities_memo_sbe_v1_13.prefs.show_execution_report_trade_correction_message
    changed = true
  end
  if show.execution_report_trade_message ~= omi_n24x_equities_memo_sbe_v1_13.prefs.show_execution_report_trade_message then
    show.execution_report_trade_message = omi_n24x_equities_memo_sbe_v1_13.prefs.show_execution_report_trade_message
    changed = true
  end
  if show.login_accepted_message ~= omi_n24x_equities_memo_sbe_v1_13.prefs.show_login_accepted_message then
    show.login_accepted_message = omi_n24x_equities_memo_sbe_v1_13.prefs.show_login_accepted_message
    changed = true
  end
  if show.login_rejected_message ~= omi_n24x_equities_memo_sbe_v1_13.prefs.show_login_rejected_message then
    show.login_rejected_message = omi_n24x_equities_memo_sbe_v1_13.prefs.show_login_rejected_message
    changed = true
  end
  if show.login_request_message ~= omi_n24x_equities_memo_sbe_v1_13.prefs.show_login_request_message then
    show.login_request_message = omi_n24x_equities_memo_sbe_v1_13.prefs.show_login_request_message
    changed = true
  end
  if show.mass_cancel_done_message ~= omi_n24x_equities_memo_sbe_v1_13.prefs.show_mass_cancel_done_message then
    show.mass_cancel_done_message = omi_n24x_equities_memo_sbe_v1_13.prefs.show_mass_cancel_done_message
    changed = true
  end
  if show.mass_cancel_reject_message ~= omi_n24x_equities_memo_sbe_v1_13.prefs.show_mass_cancel_reject_message then
    show.mass_cancel_reject_message = omi_n24x_equities_memo_sbe_v1_13.prefs.show_mass_cancel_reject_message
    changed = true
  end
  if show.mass_cancel_request_message ~= omi_n24x_equities_memo_sbe_v1_13.prefs.show_mass_cancel_request_message then
    show.mass_cancel_request_message = omi_n24x_equities_memo_sbe_v1_13.prefs.show_mass_cancel_request_message
    changed = true
  end
  if show.new_order_single_message ~= omi_n24x_equities_memo_sbe_v1_13.prefs.show_new_order_single_message then
    show.new_order_single_message = omi_n24x_equities_memo_sbe_v1_13.prefs.show_new_order_single_message
    changed = true
  end
  if show.order_cancel_reject_message ~= omi_n24x_equities_memo_sbe_v1_13.prefs.show_order_cancel_reject_message then
    show.order_cancel_reject_message = omi_n24x_equities_memo_sbe_v1_13.prefs.show_order_cancel_reject_message
    changed = true
  end
  if show.order_cancel_replace_request_message ~= omi_n24x_equities_memo_sbe_v1_13.prefs.show_order_cancel_replace_request_message then
    show.order_cancel_replace_request_message = omi_n24x_equities_memo_sbe_v1_13.prefs.show_order_cancel_replace_request_message
    changed = true
  end
  if show.order_cancel_request_message ~= omi_n24x_equities_memo_sbe_v1_13.prefs.show_order_cancel_request_message then
    show.order_cancel_request_message = omi_n24x_equities_memo_sbe_v1_13.prefs.show_order_cancel_request_message
    changed = true
  end
  if show.packet ~= omi_n24x_equities_memo_sbe_v1_13.prefs.show_packet then
    show.packet = omi_n24x_equities_memo_sbe_v1_13.prefs.show_packet
    changed = true
  end
  if show.parties_group ~= omi_n24x_equities_memo_sbe_v1_13.prefs.show_parties_group then
    show.parties_group = omi_n24x_equities_memo_sbe_v1_13.prefs.show_parties_group
    changed = true
  end
  if show.parties_groups ~= omi_n24x_equities_memo_sbe_v1_13.prefs.show_parties_groups then
    show.parties_groups = omi_n24x_equities_memo_sbe_v1_13.prefs.show_parties_groups
    changed = true
  end
  if show.pending_mass_cancel_message ~= omi_n24x_equities_memo_sbe_v1_13.prefs.show_pending_mass_cancel_message then
    show.pending_mass_cancel_message = omi_n24x_equities_memo_sbe_v1_13.prefs.show_pending_mass_cancel_message
    changed = true
  end
  if show.repeating_group_dimensions ~= omi_n24x_equities_memo_sbe_v1_13.prefs.show_repeating_group_dimensions then
    show.repeating_group_dimensions = omi_n24x_equities_memo_sbe_v1_13.prefs.show_repeating_group_dimensions
    changed = true
  end
  if show.replay_all_request_message ~= omi_n24x_equities_memo_sbe_v1_13.prefs.show_replay_all_request_message then
    show.replay_all_request_message = omi_n24x_equities_memo_sbe_v1_13.prefs.show_replay_all_request_message
    changed = true
  end
  if show.replay_begin_message ~= omi_n24x_equities_memo_sbe_v1_13.prefs.show_replay_begin_message then
    show.replay_begin_message = omi_n24x_equities_memo_sbe_v1_13.prefs.show_replay_begin_message
    changed = true
  end
  if show.replay_complete_message ~= omi_n24x_equities_memo_sbe_v1_13.prefs.show_replay_complete_message then
    show.replay_complete_message = omi_n24x_equities_memo_sbe_v1_13.prefs.show_replay_complete_message
    changed = true
  end
  if show.replay_rejected_message ~= omi_n24x_equities_memo_sbe_v1_13.prefs.show_replay_rejected_message then
    show.replay_rejected_message = omi_n24x_equities_memo_sbe_v1_13.prefs.show_replay_rejected_message
    changed = true
  end
  if show.replay_request_message ~= omi_n24x_equities_memo_sbe_v1_13.prefs.show_replay_request_message then
    show.replay_request_message = omi_n24x_equities_memo_sbe_v1_13.prefs.show_replay_request_message
    changed = true
  end
  if show.sbe_header ~= omi_n24x_equities_memo_sbe_v1_13.prefs.show_sbe_header then
    show.sbe_header = omi_n24x_equities_memo_sbe_v1_13.prefs.show_sbe_header
    changed = true
  end
  if show.sbe_message ~= omi_n24x_equities_memo_sbe_v1_13.prefs.show_sbe_message then
    show.sbe_message = omi_n24x_equities_memo_sbe_v1_13.prefs.show_sbe_message
    changed = true
  end
  if show.sequenced_message ~= omi_n24x_equities_memo_sbe_v1_13.prefs.show_sequenced_message then
    show.sequenced_message = omi_n24x_equities_memo_sbe_v1_13.prefs.show_sequenced_message
    changed = true
  end
  if show.start_of_session_message ~= omi_n24x_equities_memo_sbe_v1_13.prefs.show_start_of_session_message then
    show.start_of_session_message = omi_n24x_equities_memo_sbe_v1_13.prefs.show_start_of_session_message
    changed = true
  end
  if show.stream_begin_message ~= omi_n24x_equities_memo_sbe_v1_13.prefs.show_stream_begin_message then
    show.stream_begin_message = omi_n24x_equities_memo_sbe_v1_13.prefs.show_stream_begin_message
    changed = true
  end
  if show.stream_complete_message ~= omi_n24x_equities_memo_sbe_v1_13.prefs.show_stream_complete_message then
    show.stream_complete_message = omi_n24x_equities_memo_sbe_v1_13.prefs.show_stream_complete_message
    changed = true
  end
  if show.stream_rejected_message ~= omi_n24x_equities_memo_sbe_v1_13.prefs.show_stream_rejected_message then
    show.stream_rejected_message = omi_n24x_equities_memo_sbe_v1_13.prefs.show_stream_rejected_message
    changed = true
  end
  if show.stream_request_message ~= omi_n24x_equities_memo_sbe_v1_13.prefs.show_stream_request_message then
    show.stream_request_message = omi_n24x_equities_memo_sbe_v1_13.prefs.show_stream_request_message
    changed = true
  end
  if show.unsequenced_message ~= omi_n24x_equities_memo_sbe_v1_13.prefs.show_unsequenced_message then
    show.unsequenced_message = omi_n24x_equities_memo_sbe_v1_13.prefs.show_unsequenced_message
    changed = true
  end
  if show.data ~= omi_n24x_equities_memo_sbe_v1_13.prefs.show_data then
    show.data = omi_n24x_equities_memo_sbe_v1_13.prefs.show_data
    changed = true
  end
  if show.payload ~= omi_n24x_equities_memo_sbe_v1_13.prefs.show_payload then
    show.payload = omi_n24x_equities_memo_sbe_v1_13.prefs.show_payload
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

-- Mass Cancel Reject Reason
n24x_equities_memo_sbe_v1_13.mass_cancel_reject_reason = {}

-- Size: Mass Cancel Reject Reason
n24x_equities_memo_sbe_v1_13.mass_cancel_reject_reason.size = 1

-- Display: Mass Cancel Reject Reason
n24x_equities_memo_sbe_v1_13.mass_cancel_reject_reason.display = function(value)
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
n24x_equities_memo_sbe_v1_13.mass_cancel_reject_reason.dissect = function(buffer, offset, packet, parent)
  local length = n24x_equities_memo_sbe_v1_13.mass_cancel_reject_reason.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = n24x_equities_memo_sbe_v1_13.mass_cancel_reject_reason.display(value, buffer, offset, packet, parent)

  parent:add(omi_n24x_equities_memo_sbe_v1_13.fields.mass_cancel_reject_reason, range, value, display)

  return offset + length, value
end

-- Cancel Group Id
n24x_equities_memo_sbe_v1_13.cancel_group_id = {}

-- Size: Cancel Group Id
n24x_equities_memo_sbe_v1_13.cancel_group_id.size = 2

-- Display: Cancel Group Id
n24x_equities_memo_sbe_v1_13.cancel_group_id.display = function(value)
  -- Check if field has value
  if value == 65535 then
    return "Cancel Group Id: No Value"
  end

  return "Cancel Group Id: "..value
end

-- Dissect: Cancel Group Id
n24x_equities_memo_sbe_v1_13.cancel_group_id.dissect = function(buffer, offset, packet, parent)
  local length = n24x_equities_memo_sbe_v1_13.cancel_group_id.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = n24x_equities_memo_sbe_v1_13.cancel_group_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_n24x_equities_memo_sbe_v1_13.fields.cancel_group_id, range, value, display)

  return offset + length, value
end

-- Higher Than Price
n24x_equities_memo_sbe_v1_13.higher_than_price = {}

-- Size: Higher Than Price
n24x_equities_memo_sbe_v1_13.higher_than_price.size = 8

-- Display: Higher Than Price
n24x_equities_memo_sbe_v1_13.higher_than_price.display = function(raw, value)
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
n24x_equities_memo_sbe_v1_13.higher_than_price.dissect = function(buffer, offset, packet, parent)
  local length = n24x_equities_memo_sbe_v1_13.higher_than_price.size
  local range = buffer(offset, length)
  local raw = range:int64()
  local value = translate.higher_than_price(raw)
  local display = n24x_equities_memo_sbe_v1_13.higher_than_price.display(raw, value, buffer, offset, packet, parent)

  parent:add(omi_n24x_equities_memo_sbe_v1_13.fields.higher_than_price, range, value, display)

  return offset + length, value
end

-- Lower Than Price
n24x_equities_memo_sbe_v1_13.lower_than_price = {}

-- Size: Lower Than Price
n24x_equities_memo_sbe_v1_13.lower_than_price.size = 8

-- Display: Lower Than Price
n24x_equities_memo_sbe_v1_13.lower_than_price.display = function(raw, value)
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
n24x_equities_memo_sbe_v1_13.lower_than_price.dissect = function(buffer, offset, packet, parent)
  local length = n24x_equities_memo_sbe_v1_13.lower_than_price.size
  local range = buffer(offset, length)
  local raw = range:int64()
  local value = translate.lower_than_price(raw)
  local display = n24x_equities_memo_sbe_v1_13.lower_than_price.display(raw, value, buffer, offset, packet, parent)

  parent:add(omi_n24x_equities_memo_sbe_v1_13.fields.lower_than_price, range, value, display)

  return offset + length, value
end

-- Side Optional
n24x_equities_memo_sbe_v1_13.side_optional = {}

-- Size: Side Optional
n24x_equities_memo_sbe_v1_13.side_optional.size = 1

-- Display: Side Optional
n24x_equities_memo_sbe_v1_13.side_optional.display = function(value)
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
n24x_equities_memo_sbe_v1_13.side_optional.dissect = function(buffer, offset, packet, parent)
  local length = n24x_equities_memo_sbe_v1_13.side_optional.size
  local range = buffer(offset, length)

  -- parse as byte
  local value = range:uint()

  -- check if value is non zero
  if value ~= 0 then
    value = range:string()
  end

  local display = n24x_equities_memo_sbe_v1_13.side_optional.display(value, buffer, offset, packet, parent)

  parent:add(omi_n24x_equities_memo_sbe_v1_13.fields.side_optional, range, value, display)

  return offset + length, value
end

-- Symbol Sfx
n24x_equities_memo_sbe_v1_13.symbol_sfx = {}

-- Size: Symbol Sfx
n24x_equities_memo_sbe_v1_13.symbol_sfx.size = 6

-- Display: Symbol Sfx
n24x_equities_memo_sbe_v1_13.symbol_sfx.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Symbol Sfx: No Value"
  end

  return "Symbol Sfx: "..value
end

-- Dissect: Symbol Sfx
n24x_equities_memo_sbe_v1_13.symbol_sfx.dissect = function(buffer, offset, packet, parent)
  local length = n24x_equities_memo_sbe_v1_13.symbol_sfx.size
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

  local display = n24x_equities_memo_sbe_v1_13.symbol_sfx.display(value, buffer, offset, packet, parent)

  parent:add(omi_n24x_equities_memo_sbe_v1_13.fields.symbol_sfx, range, value, display)

  return offset + length, value
end

-- Symbol
n24x_equities_memo_sbe_v1_13.symbol = {}

-- Size: Symbol
n24x_equities_memo_sbe_v1_13.symbol.size = 6

-- Display: Symbol
n24x_equities_memo_sbe_v1_13.symbol.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Symbol: No Value"
  end

  return "Symbol: "..value
end

-- Dissect: Symbol
n24x_equities_memo_sbe_v1_13.symbol.dissect = function(buffer, offset, packet, parent)
  local length = n24x_equities_memo_sbe_v1_13.symbol.size
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

  local display = n24x_equities_memo_sbe_v1_13.symbol.display(value, buffer, offset, packet, parent)

  parent:add(omi_n24x_equities_memo_sbe_v1_13.fields.symbol, range, value, display)

  return offset + length, value
end

-- ClOrdId
n24x_equities_memo_sbe_v1_13.clordid = {}

-- Size: ClOrdId
n24x_equities_memo_sbe_v1_13.clordid.size = 16

-- Display: ClOrdId
n24x_equities_memo_sbe_v1_13.clordid.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "ClOrdId: No Value"
  end

  return "ClOrdId: "..value
end

-- Dissect: ClOrdId
n24x_equities_memo_sbe_v1_13.clordid.dissect = function(buffer, offset, packet, parent)
  local length = n24x_equities_memo_sbe_v1_13.clordid.size
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

  local display = n24x_equities_memo_sbe_v1_13.clordid.display(value, buffer, offset, packet, parent)

  parent:add(omi_n24x_equities_memo_sbe_v1_13.fields.clordid, range, value, display)

  return offset + length, value
end

-- Sending Time
n24x_equities_memo_sbe_v1_13.sending_time = {}

-- Size: Sending Time
n24x_equities_memo_sbe_v1_13.sending_time.size = 8

-- Display: Sending Time
n24x_equities_memo_sbe_v1_13.sending_time.display = function(value)
  -- Parse unix timestamp
  local seconds = math.floor(value:tonumber()/1000000000)
  local nanoseconds = value:tonumber()%1000000000

  return "Sending Time: "..os.date("%x %H:%M:%S.", seconds)..string.format("%09d", nanoseconds)
end

-- Dissect: Sending Time
n24x_equities_memo_sbe_v1_13.sending_time.dissect = function(buffer, offset, packet, parent)
  local length = n24x_equities_memo_sbe_v1_13.sending_time.size
  local range = buffer(offset, length)
  local value = range:uint64()
  local display = n24x_equities_memo_sbe_v1_13.sending_time.display(value, buffer, offset, packet, parent)

  parent:add(omi_n24x_equities_memo_sbe_v1_13.fields.sending_time, range, value, display)

  return offset + length, value
end

-- Mass Cancel Reject Message
n24x_equities_memo_sbe_v1_13.mass_cancel_reject_message = {}

-- Calculate size of: Mass Cancel Reject Message
n24x_equities_memo_sbe_v1_13.mass_cancel_reject_message.size = function(buffer, offset)
  local index = 0

  index = index + n24x_equities_memo_sbe_v1_13.sending_time.size

  index = index + n24x_equities_memo_sbe_v1_13.clordid.size

  index = index + n24x_equities_memo_sbe_v1_13.symbol.size

  index = index + n24x_equities_memo_sbe_v1_13.symbol_sfx.size

  index = index + n24x_equities_memo_sbe_v1_13.side_optional.size

  index = index + n24x_equities_memo_sbe_v1_13.lower_than_price.size

  index = index + n24x_equities_memo_sbe_v1_13.higher_than_price.size

  index = index + n24x_equities_memo_sbe_v1_13.cancel_group_id.size

  index = index + n24x_equities_memo_sbe_v1_13.mass_cancel_reject_reason.size

  return index
end

-- Display: Mass Cancel Reject Message
n24x_equities_memo_sbe_v1_13.mass_cancel_reject_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Mass Cancel Reject Message
n24x_equities_memo_sbe_v1_13.mass_cancel_reject_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Sending Time: 8 Byte Unsigned Fixed Width Integer
  index, sending_time = n24x_equities_memo_sbe_v1_13.sending_time.dissect(buffer, index, packet, parent)

  -- ClOrdId: 16 Byte Ascii String
  index, clordid = n24x_equities_memo_sbe_v1_13.clordid.dissect(buffer, index, packet, parent)

  -- Symbol: 6 Byte Ascii String
  index, symbol = n24x_equities_memo_sbe_v1_13.symbol.dissect(buffer, index, packet, parent)

  -- Symbol Sfx: 6 Byte Ascii String Nullable
  index, symbol_sfx = n24x_equities_memo_sbe_v1_13.symbol_sfx.dissect(buffer, index, packet, parent)

  -- Side Optional: 1 Byte Ascii String Enum with 5 values
  index, side_optional = n24x_equities_memo_sbe_v1_13.side_optional.dissect(buffer, index, packet, parent)

  -- Lower Than Price: 8 Byte Signed Fixed Width Integer Nullable
  index, lower_than_price = n24x_equities_memo_sbe_v1_13.lower_than_price.dissect(buffer, index, packet, parent)

  -- Higher Than Price: 8 Byte Signed Fixed Width Integer Nullable
  index, higher_than_price = n24x_equities_memo_sbe_v1_13.higher_than_price.dissect(buffer, index, packet, parent)

  -- Cancel Group Id: 2 Byte Unsigned Fixed Width Integer Nullable
  index, cancel_group_id = n24x_equities_memo_sbe_v1_13.cancel_group_id.dissect(buffer, index, packet, parent)

  -- Mass Cancel Reject Reason: 1 Byte Unsigned Fixed Width Integer Enum with 13 values
  index, mass_cancel_reject_reason = n24x_equities_memo_sbe_v1_13.mass_cancel_reject_reason.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Mass Cancel Reject Message
n24x_equities_memo_sbe_v1_13.mass_cancel_reject_message.dissect = function(buffer, offset, packet, parent)
  if show.mass_cancel_reject_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_n24x_equities_memo_sbe_v1_13.fields.mass_cancel_reject_message, buffer(offset, 0))
    local index = n24x_equities_memo_sbe_v1_13.mass_cancel_reject_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = n24x_equities_memo_sbe_v1_13.mass_cancel_reject_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return n24x_equities_memo_sbe_v1_13.mass_cancel_reject_message.fields(buffer, offset, packet, parent)
  end
end

-- Link Id Optional
n24x_equities_memo_sbe_v1_13.link_id_optional = {}

-- Size: Link Id Optional
n24x_equities_memo_sbe_v1_13.link_id_optional.size = 4

-- Display: Link Id Optional
n24x_equities_memo_sbe_v1_13.link_id_optional.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Link Id Optional: No Value"
  end

  return "Link Id Optional: "..value
end

-- Dissect: Link Id Optional
n24x_equities_memo_sbe_v1_13.link_id_optional.dissect = function(buffer, offset, packet, parent)
  local length = n24x_equities_memo_sbe_v1_13.link_id_optional.size
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

  local display = n24x_equities_memo_sbe_v1_13.link_id_optional.display(value, buffer, offset, packet, parent)

  parent:add(omi_n24x_equities_memo_sbe_v1_13.fields.link_id_optional, range, value, display)

  return offset + length, value
end

-- Cxl Rej Reason
n24x_equities_memo_sbe_v1_13.cxl_rej_reason = {}

-- Size: Cxl Rej Reason
n24x_equities_memo_sbe_v1_13.cxl_rej_reason.size = 1

-- Display: Cxl Rej Reason
n24x_equities_memo_sbe_v1_13.cxl_rej_reason.display = function(value)
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
n24x_equities_memo_sbe_v1_13.cxl_rej_reason.dissect = function(buffer, offset, packet, parent)
  local length = n24x_equities_memo_sbe_v1_13.cxl_rej_reason.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = n24x_equities_memo_sbe_v1_13.cxl_rej_reason.display(value, buffer, offset, packet, parent)

  parent:add(omi_n24x_equities_memo_sbe_v1_13.fields.cxl_rej_reason, range, value, display)

  return offset + length, value
end

-- Cxl Rej Response To
n24x_equities_memo_sbe_v1_13.cxl_rej_response_to = {}

-- Size: Cxl Rej Response To
n24x_equities_memo_sbe_v1_13.cxl_rej_response_to.size = 1

-- Display: Cxl Rej Response To
n24x_equities_memo_sbe_v1_13.cxl_rej_response_to.display = function(value)
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
n24x_equities_memo_sbe_v1_13.cxl_rej_response_to.dissect = function(buffer, offset, packet, parent)
  local length = n24x_equities_memo_sbe_v1_13.cxl_rej_response_to.size
  local range = buffer(offset, length)

  -- parse as byte
  local value = range:uint()

  -- check if value is non zero
  if value ~= 0 then
    value = range:string()
  end

  local display = n24x_equities_memo_sbe_v1_13.cxl_rej_response_to.display(value, buffer, offset, packet, parent)

  parent:add(omi_n24x_equities_memo_sbe_v1_13.fields.cxl_rej_response_to, range, value, display)

  return offset + length, value
end

-- Order Cancel Reject Message
n24x_equities_memo_sbe_v1_13.order_cancel_reject_message = {}

-- Calculate size of: Order Cancel Reject Message
n24x_equities_memo_sbe_v1_13.order_cancel_reject_message.size = function(buffer, offset)
  local index = 0

  index = index + n24x_equities_memo_sbe_v1_13.sending_time.size

  index = index + n24x_equities_memo_sbe_v1_13.clordid.size

  index = index + n24x_equities_memo_sbe_v1_13.cxl_rej_response_to.size

  index = index + n24x_equities_memo_sbe_v1_13.cxl_rej_reason.size

  index = index + n24x_equities_memo_sbe_v1_13.link_id_optional.size

  return index
end

-- Display: Order Cancel Reject Message
n24x_equities_memo_sbe_v1_13.order_cancel_reject_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Order Cancel Reject Message
n24x_equities_memo_sbe_v1_13.order_cancel_reject_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Sending Time: 8 Byte Unsigned Fixed Width Integer
  index, sending_time = n24x_equities_memo_sbe_v1_13.sending_time.dissect(buffer, index, packet, parent)

  -- ClOrdId: 16 Byte Ascii String
  index, clordid = n24x_equities_memo_sbe_v1_13.clordid.dissect(buffer, index, packet, parent)

  -- Cxl Rej Response To: 1 Byte Ascii String Enum with 2 values
  index, cxl_rej_response_to = n24x_equities_memo_sbe_v1_13.cxl_rej_response_to.dissect(buffer, index, packet, parent)

  -- Cxl Rej Reason: 1 Byte Unsigned Fixed Width Integer Enum with 39 values
  index, cxl_rej_reason = n24x_equities_memo_sbe_v1_13.cxl_rej_reason.dissect(buffer, index, packet, parent)

  -- Link Id Optional: 4 Byte Ascii String Nullable
  index, link_id_optional = n24x_equities_memo_sbe_v1_13.link_id_optional.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Order Cancel Reject Message
n24x_equities_memo_sbe_v1_13.order_cancel_reject_message.dissect = function(buffer, offset, packet, parent)
  if show.order_cancel_reject_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_n24x_equities_memo_sbe_v1_13.fields.order_cancel_reject_message, buffer(offset, 0))
    local index = n24x_equities_memo_sbe_v1_13.order_cancel_reject_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = n24x_equities_memo_sbe_v1_13.order_cancel_reject_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return n24x_equities_memo_sbe_v1_13.order_cancel_reject_message.fields(buffer, offset, packet, parent)
  end
end

-- Party Role
n24x_equities_memo_sbe_v1_13.party_role = {}

-- Size: Party Role
n24x_equities_memo_sbe_v1_13.party_role.size = 1

-- Display: Party Role
n24x_equities_memo_sbe_v1_13.party_role.display = function(value)
  if value == 1 then
    return "Party Role: Executing Firm (1)"
  end

  return "Party Role: Unknown("..value..")"
end

-- Dissect: Party Role
n24x_equities_memo_sbe_v1_13.party_role.dissect = function(buffer, offset, packet, parent)
  local length = n24x_equities_memo_sbe_v1_13.party_role.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = n24x_equities_memo_sbe_v1_13.party_role.display(value, buffer, offset, packet, parent)

  parent:add(omi_n24x_equities_memo_sbe_v1_13.fields.party_role, range, value, display)

  return offset + length, value
end

-- Party Id Source
n24x_equities_memo_sbe_v1_13.party_id_source = {}

-- Size: Party Id Source
n24x_equities_memo_sbe_v1_13.party_id_source.size = 1

-- Display: Party Id Source
n24x_equities_memo_sbe_v1_13.party_id_source.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Party Id Source: No Value"
  end

  return "Party Id Source: "..value
end

-- Dissect: Party Id Source
n24x_equities_memo_sbe_v1_13.party_id_source.dissect = function(buffer, offset, packet, parent)
  local length = n24x_equities_memo_sbe_v1_13.party_id_source.size
  local range = buffer(offset, length)

  -- parse as byte
  local value = range:uint()

  -- check if value is non zero
  if value ~= 0 then
    value = range:string()
  end

  local display = n24x_equities_memo_sbe_v1_13.party_id_source.display(value, buffer, offset, packet, parent)

  parent:add(omi_n24x_equities_memo_sbe_v1_13.fields.party_id_source, range, value, display)

  return offset + length, value
end

-- Party I D New Order Single Party Id
n24x_equities_memo_sbe_v1_13.party_i_d_new_order_single_party_id = {}

-- Size: Party I D New Order Single Party Id
n24x_equities_memo_sbe_v1_13.party_i_d_new_order_single_party_id.size = 16

-- Display: Party I D New Order Single Party Id
n24x_equities_memo_sbe_v1_13.party_i_d_new_order_single_party_id.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Party I D New Order Single Party Id: No Value"
  end

  return "Party I D New Order Single Party Id: "..value
end

-- Dissect: Party I D New Order Single Party Id
n24x_equities_memo_sbe_v1_13.party_i_d_new_order_single_party_id.dissect = function(buffer, offset, packet, parent)
  local length = n24x_equities_memo_sbe_v1_13.party_i_d_new_order_single_party_id.size
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

  local display = n24x_equities_memo_sbe_v1_13.party_i_d_new_order_single_party_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_n24x_equities_memo_sbe_v1_13.fields.party_i_d_new_order_single_party_id, range, value, display)

  return offset + length, value
end

-- Parties Group
n24x_equities_memo_sbe_v1_13.parties_group = {}

-- Calculate size of: Parties Group
n24x_equities_memo_sbe_v1_13.parties_group.size = function(buffer, offset)
  local index = 0

  index = index + n24x_equities_memo_sbe_v1_13.party_i_d_new_order_single_party_id.size

  index = index + n24x_equities_memo_sbe_v1_13.party_id_source.size

  index = index + n24x_equities_memo_sbe_v1_13.party_role.size

  return index
end

-- Display: Parties Group
n24x_equities_memo_sbe_v1_13.parties_group.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Parties Group
n24x_equities_memo_sbe_v1_13.parties_group.fields = function(buffer, offset, packet, parent, parties_group_index)
  local index = offset

  -- Implicit Parties Group Index
  if parties_group_index ~= nil then
    local iteration = parent:add(omi_n24x_equities_memo_sbe_v1_13.fields.parties_group_index, parties_group_index)
    iteration:set_generated()
  end

  -- Party I D New Order Single Party Id: 16 Byte Ascii String
  index, party_i_d_new_order_single_party_id = n24x_equities_memo_sbe_v1_13.party_i_d_new_order_single_party_id.dissect(buffer, index, packet, parent)

  -- Party Id Source: 1 Byte Ascii String
  index, party_id_source = n24x_equities_memo_sbe_v1_13.party_id_source.dissect(buffer, index, packet, parent)

  -- Party Role: 1 Byte Unsigned Fixed Width Integer Enum with 1 values
  index, party_role = n24x_equities_memo_sbe_v1_13.party_role.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Parties Group
n24x_equities_memo_sbe_v1_13.parties_group.dissect = function(buffer, offset, packet, parent, parties_group_index)
  if show.parties_group then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_n24x_equities_memo_sbe_v1_13.fields.parties_group, buffer(offset, 0))
    local index = n24x_equities_memo_sbe_v1_13.parties_group.fields(buffer, offset, packet, parent, parties_group_index)
    local length = index - offset
    parent:set_len(length)
    local display = n24x_equities_memo_sbe_v1_13.parties_group.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return n24x_equities_memo_sbe_v1_13.parties_group.fields(buffer, offset, packet, parent, parties_group_index)
  end
end

-- Num In Group
n24x_equities_memo_sbe_v1_13.num_in_group = {}

-- Size: Num In Group
n24x_equities_memo_sbe_v1_13.num_in_group.size = 1

-- Display: Num In Group
n24x_equities_memo_sbe_v1_13.num_in_group.display = function(value)
  return "Num In Group: "..value
end

-- Dissect: Num In Group
n24x_equities_memo_sbe_v1_13.num_in_group.dissect = function(buffer, offset, packet, parent)
  local length = n24x_equities_memo_sbe_v1_13.num_in_group.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = n24x_equities_memo_sbe_v1_13.num_in_group.display(value, buffer, offset, packet, parent)

  parent:add(omi_n24x_equities_memo_sbe_v1_13.fields.num_in_group, range, value, display)

  return offset + length, value
end

-- Block Length uint 8
n24x_equities_memo_sbe_v1_13.block_length_uint_8 = {}

-- Size: Block Length uint 8
n24x_equities_memo_sbe_v1_13.block_length_uint_8.size = 1

-- Display: Block Length uint 8
n24x_equities_memo_sbe_v1_13.block_length_uint_8.display = function(value)
  return "Block Length uint 8: "..value
end

-- Dissect: Block Length uint 8
n24x_equities_memo_sbe_v1_13.block_length_uint_8.dissect = function(buffer, offset, packet, parent)
  local length = n24x_equities_memo_sbe_v1_13.block_length_uint_8.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = n24x_equities_memo_sbe_v1_13.block_length_uint_8.display(value, buffer, offset, packet, parent)

  parent:add(omi_n24x_equities_memo_sbe_v1_13.fields.block_length_uint_8, range, value, display)

  return offset + length, value
end

-- Repeating Group Dimensions
n24x_equities_memo_sbe_v1_13.repeating_group_dimensions = {}

-- Calculate size of: Repeating Group Dimensions
n24x_equities_memo_sbe_v1_13.repeating_group_dimensions.size = function(buffer, offset)
  local index = 0

  index = index + n24x_equities_memo_sbe_v1_13.block_length_uint_8.size

  index = index + n24x_equities_memo_sbe_v1_13.num_in_group.size

  return index
end

-- Display: Repeating Group Dimensions
n24x_equities_memo_sbe_v1_13.repeating_group_dimensions.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Repeating Group Dimensions
n24x_equities_memo_sbe_v1_13.repeating_group_dimensions.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Block Length uint 8: 1 Byte Unsigned Fixed Width Integer
  index, block_length_uint_8 = n24x_equities_memo_sbe_v1_13.block_length_uint_8.dissect(buffer, index, packet, parent)

  -- Num In Group: 1 Byte Unsigned Fixed Width Integer
  index, num_in_group = n24x_equities_memo_sbe_v1_13.num_in_group.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Repeating Group Dimensions
n24x_equities_memo_sbe_v1_13.repeating_group_dimensions.dissect = function(buffer, offset, packet, parent)
  if show.repeating_group_dimensions then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_n24x_equities_memo_sbe_v1_13.fields.repeating_group_dimensions, buffer(offset, 0))
    local index = n24x_equities_memo_sbe_v1_13.repeating_group_dimensions.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = n24x_equities_memo_sbe_v1_13.repeating_group_dimensions.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return n24x_equities_memo_sbe_v1_13.repeating_group_dimensions.fields(buffer, offset, packet, parent)
  end
end

-- Parties Groups
n24x_equities_memo_sbe_v1_13.parties_groups = {}

-- Calculate size of: Parties Groups
n24x_equities_memo_sbe_v1_13.parties_groups.size = function(buffer, offset)
  local index = 0

  index = index + n24x_equities_memo_sbe_v1_13.repeating_group_dimensions.size(buffer, offset + index)

  -- Calculate field size from count
  local parties_group_count = buffer(offset + index - 1, 1):uint()
  index = index + parties_group_count * 18

  return index
end

-- Display: Parties Groups
n24x_equities_memo_sbe_v1_13.parties_groups.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Parties Groups
n24x_equities_memo_sbe_v1_13.parties_groups.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Repeating Group Dimensions: Struct of 2 fields
  index, repeating_group_dimensions = n24x_equities_memo_sbe_v1_13.repeating_group_dimensions.dissect(buffer, index, packet, parent)

  -- Dependency element: Num In Group
  local num_in_group = buffer(index - 1, 1):uint()

  -- Repeating: Parties Group
  for parties_group_index = 1, num_in_group do
    index, parties_group = n24x_equities_memo_sbe_v1_13.parties_group.dissect(buffer, index, packet, parent, parties_group_index)
  end

  return index
end

-- Dissect: Parties Groups
n24x_equities_memo_sbe_v1_13.parties_groups.dissect = function(buffer, offset, packet, parent)
  -- Optionally add dynamic struct element to protocol tree
  if show.parties_groups then
    local length = n24x_equities_memo_sbe_v1_13.parties_groups.size(buffer, offset)
    local range = buffer(offset, length)
    local display = n24x_equities_memo_sbe_v1_13.parties_groups.display(buffer, packet, parent)
    parent = parent:add(omi_n24x_equities_memo_sbe_v1_13.fields.parties_groups, range, display)
  end

  return n24x_equities_memo_sbe_v1_13.parties_groups.fields(buffer, offset, packet, parent)
end

-- Extended Restatement Reason
n24x_equities_memo_sbe_v1_13.extended_restatement_reason = {}

-- Size: Extended Restatement Reason
n24x_equities_memo_sbe_v1_13.extended_restatement_reason.size = 1

-- Display: Extended Restatement Reason
n24x_equities_memo_sbe_v1_13.extended_restatement_reason.display = function(value)
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
n24x_equities_memo_sbe_v1_13.extended_restatement_reason.dissect = function(buffer, offset, packet, parent)
  local length = n24x_equities_memo_sbe_v1_13.extended_restatement_reason.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = n24x_equities_memo_sbe_v1_13.extended_restatement_reason.display(value, buffer, offset, packet, parent)

  parent:add(omi_n24x_equities_memo_sbe_v1_13.fields.extended_restatement_reason, range, value, display)

  return offset + length, value
end

-- Transact Time
n24x_equities_memo_sbe_v1_13.transact_time = {}

-- Size: Transact Time
n24x_equities_memo_sbe_v1_13.transact_time.size = 8

-- Display: Transact Time
n24x_equities_memo_sbe_v1_13.transact_time.display = function(value)
  return "Transact Time: "..value
end

-- Dissect: Transact Time
n24x_equities_memo_sbe_v1_13.transact_time.dissect = function(buffer, offset, packet, parent)
  local length = n24x_equities_memo_sbe_v1_13.transact_time.size
  local range = buffer(offset, length)
  local value = range:uint64()
  local display = n24x_equities_memo_sbe_v1_13.transact_time.display(value, buffer, offset, packet, parent)

  parent:add(omi_n24x_equities_memo_sbe_v1_13.fields.transact_time, range, value, display)

  return offset + length, value
end

-- Exec Restatement Reason
n24x_equities_memo_sbe_v1_13.exec_restatement_reason = {}

-- Size: Exec Restatement Reason
n24x_equities_memo_sbe_v1_13.exec_restatement_reason.size = 1

-- Display: Exec Restatement Reason
n24x_equities_memo_sbe_v1_13.exec_restatement_reason.display = function(value)
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
n24x_equities_memo_sbe_v1_13.exec_restatement_reason.dissect = function(buffer, offset, packet, parent)
  local length = n24x_equities_memo_sbe_v1_13.exec_restatement_reason.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = n24x_equities_memo_sbe_v1_13.exec_restatement_reason.display(value, buffer, offset, packet, parent)

  parent:add(omi_n24x_equities_memo_sbe_v1_13.fields.exec_restatement_reason, range, value, display)

  return offset + length, value
end

-- Last Shares
n24x_equities_memo_sbe_v1_13.last_shares = {}

-- Size: Last Shares
n24x_equities_memo_sbe_v1_13.last_shares.size = 4

-- Display: Last Shares
n24x_equities_memo_sbe_v1_13.last_shares.display = function(value)
  -- Check if field has value
  if value == 4294967295 then
    return "Last Shares: No Value"
  end

  return "Last Shares: "..value
end

-- Dissect: Last Shares
n24x_equities_memo_sbe_v1_13.last_shares.dissect = function(buffer, offset, packet, parent)
  local length = n24x_equities_memo_sbe_v1_13.last_shares.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = n24x_equities_memo_sbe_v1_13.last_shares.display(value, buffer, offset, packet, parent)

  parent:add(omi_n24x_equities_memo_sbe_v1_13.fields.last_shares, range, value, display)

  return offset + length, value
end

-- Cum Qty
n24x_equities_memo_sbe_v1_13.cum_qty = {}

-- Size: Cum Qty
n24x_equities_memo_sbe_v1_13.cum_qty.size = 4

-- Display: Cum Qty
n24x_equities_memo_sbe_v1_13.cum_qty.display = function(value)
  return "Cum Qty: "..value
end

-- Dissect: Cum Qty
n24x_equities_memo_sbe_v1_13.cum_qty.dissect = function(buffer, offset, packet, parent)
  local length = n24x_equities_memo_sbe_v1_13.cum_qty.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = n24x_equities_memo_sbe_v1_13.cum_qty.display(value, buffer, offset, packet, parent)

  parent:add(omi_n24x_equities_memo_sbe_v1_13.fields.cum_qty, range, value, display)

  return offset + length, value
end

-- Leaves Qty
n24x_equities_memo_sbe_v1_13.leaves_qty = {}

-- Size: Leaves Qty
n24x_equities_memo_sbe_v1_13.leaves_qty.size = 4

-- Display: Leaves Qty
n24x_equities_memo_sbe_v1_13.leaves_qty.display = function(value)
  return "Leaves Qty: "..value
end

-- Dissect: Leaves Qty
n24x_equities_memo_sbe_v1_13.leaves_qty.dissect = function(buffer, offset, packet, parent)
  local length = n24x_equities_memo_sbe_v1_13.leaves_qty.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = n24x_equities_memo_sbe_v1_13.leaves_qty.display(value, buffer, offset, packet, parent)

  parent:add(omi_n24x_equities_memo_sbe_v1_13.fields.leaves_qty, range, value, display)

  return offset + length, value
end

-- Last Px Optional
n24x_equities_memo_sbe_v1_13.last_px_optional = {}

-- Size: Last Px Optional
n24x_equities_memo_sbe_v1_13.last_px_optional.size = 8

-- Display: Last Px Optional
n24x_equities_memo_sbe_v1_13.last_px_optional.display = function(raw, value)
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
n24x_equities_memo_sbe_v1_13.last_px_optional.dissect = function(buffer, offset, packet, parent)
  local length = n24x_equities_memo_sbe_v1_13.last_px_optional.size
  local range = buffer(offset, length)
  local raw = range:int64()
  local value = translate.last_px_optional(raw)
  local display = n24x_equities_memo_sbe_v1_13.last_px_optional.display(raw, value, buffer, offset, packet, parent)

  parent:add(omi_n24x_equities_memo_sbe_v1_13.fields.last_px_optional, range, value, display)

  return offset + length, value
end

-- Ord Status
n24x_equities_memo_sbe_v1_13.ord_status = {}

-- Size: Ord Status
n24x_equities_memo_sbe_v1_13.ord_status.size = 1

-- Display: Ord Status
n24x_equities_memo_sbe_v1_13.ord_status.display = function(value)
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
n24x_equities_memo_sbe_v1_13.ord_status.dissect = function(buffer, offset, packet, parent)
  local length = n24x_equities_memo_sbe_v1_13.ord_status.size
  local range = buffer(offset, length)

  -- parse as byte
  local value = range:uint()

  -- check if value is non zero
  if value ~= 0 then
    value = range:string()
  end

  local display = n24x_equities_memo_sbe_v1_13.ord_status.display(value, buffer, offset, packet, parent)

  parent:add(omi_n24x_equities_memo_sbe_v1_13.fields.ord_status, range, value, display)

  return offset + length, value
end

-- Exec Id
n24x_equities_memo_sbe_v1_13.exec_id = {}

-- Size: Exec Id
n24x_equities_memo_sbe_v1_13.exec_id.size = 8

-- Display: Exec Id
n24x_equities_memo_sbe_v1_13.exec_id.display = function(value)
  return "Exec Id: "..value
end

-- Dissect: Exec Id
n24x_equities_memo_sbe_v1_13.exec_id.dissect = function(buffer, offset, packet, parent)
  local length = n24x_equities_memo_sbe_v1_13.exec_id.size
  local range = buffer(offset, length)
  local value = range:uint64()
  local display = n24x_equities_memo_sbe_v1_13.exec_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_n24x_equities_memo_sbe_v1_13.fields.exec_id, range, value, display)

  return offset + length, value
end

-- Order Id
n24x_equities_memo_sbe_v1_13.order_id = {}

-- Size: Order Id
n24x_equities_memo_sbe_v1_13.order_id.size = 8

-- Display: Order Id
n24x_equities_memo_sbe_v1_13.order_id.display = function(value)
  return "Order Id: "..value
end

-- Dissect: Order Id
n24x_equities_memo_sbe_v1_13.order_id.dissect = function(buffer, offset, packet, parent)
  local length = n24x_equities_memo_sbe_v1_13.order_id.size
  local range = buffer(offset, length)
  local value = range:uint64()
  local display = n24x_equities_memo_sbe_v1_13.order_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_n24x_equities_memo_sbe_v1_13.fields.order_id, range, value, display)

  return offset + length, value
end

-- Execution Report Restatement Message
n24x_equities_memo_sbe_v1_13.execution_report_restatement_message = {}

-- Calculate size of: Execution Report Restatement Message
n24x_equities_memo_sbe_v1_13.execution_report_restatement_message.size = function(buffer, offset)
  local index = 0

  index = index + n24x_equities_memo_sbe_v1_13.sending_time.size

  index = index + n24x_equities_memo_sbe_v1_13.order_id.size

  index = index + n24x_equities_memo_sbe_v1_13.clordid.size

  index = index + n24x_equities_memo_sbe_v1_13.exec_id.size

  index = index + n24x_equities_memo_sbe_v1_13.ord_status.size

  index = index + n24x_equities_memo_sbe_v1_13.last_px_optional.size

  index = index + n24x_equities_memo_sbe_v1_13.leaves_qty.size

  index = index + n24x_equities_memo_sbe_v1_13.cum_qty.size

  index = index + n24x_equities_memo_sbe_v1_13.last_shares.size

  index = index + n24x_equities_memo_sbe_v1_13.exec_restatement_reason.size

  index = index + n24x_equities_memo_sbe_v1_13.transact_time.size

  index = index + n24x_equities_memo_sbe_v1_13.extended_restatement_reason.size

  index = index + n24x_equities_memo_sbe_v1_13.link_id_optional.size

  index = index + n24x_equities_memo_sbe_v1_13.parties_groups.size(buffer, offset + index)

  return index
end

-- Display: Execution Report Restatement Message
n24x_equities_memo_sbe_v1_13.execution_report_restatement_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Execution Report Restatement Message
n24x_equities_memo_sbe_v1_13.execution_report_restatement_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Sending Time: 8 Byte Unsigned Fixed Width Integer
  index, sending_time = n24x_equities_memo_sbe_v1_13.sending_time.dissect(buffer, index, packet, parent)

  -- Order Id: 8 Byte Unsigned Fixed Width Integer
  index, order_id = n24x_equities_memo_sbe_v1_13.order_id.dissect(buffer, index, packet, parent)

  -- ClOrdId: 16 Byte Ascii String
  index, clordid = n24x_equities_memo_sbe_v1_13.clordid.dissect(buffer, index, packet, parent)

  -- Exec Id: 8 Byte Unsigned Fixed Width Integer
  index, exec_id = n24x_equities_memo_sbe_v1_13.exec_id.dissect(buffer, index, packet, parent)

  -- Ord Status: 1 Byte Ascii String Enum with 9 values
  index, ord_status = n24x_equities_memo_sbe_v1_13.ord_status.dissect(buffer, index, packet, parent)

  -- Last Px Optional: 8 Byte Signed Fixed Width Integer Nullable
  index, last_px_optional = n24x_equities_memo_sbe_v1_13.last_px_optional.dissect(buffer, index, packet, parent)

  -- Leaves Qty: 4 Byte Unsigned Fixed Width Integer
  index, leaves_qty = n24x_equities_memo_sbe_v1_13.leaves_qty.dissect(buffer, index, packet, parent)

  -- Cum Qty: 4 Byte Unsigned Fixed Width Integer
  index, cum_qty = n24x_equities_memo_sbe_v1_13.cum_qty.dissect(buffer, index, packet, parent)

  -- Last Shares: 4 Byte Unsigned Fixed Width Integer Nullable
  index, last_shares = n24x_equities_memo_sbe_v1_13.last_shares.dissect(buffer, index, packet, parent)

  -- Exec Restatement Reason: 1 Byte Unsigned Fixed Width Integer Enum with 4 values
  index, exec_restatement_reason = n24x_equities_memo_sbe_v1_13.exec_restatement_reason.dissect(buffer, index, packet, parent)

  -- Transact Time: 8 Byte Unsigned Fixed Width Integer
  index, transact_time = n24x_equities_memo_sbe_v1_13.transact_time.dissect(buffer, index, packet, parent)

  -- Extended Restatement Reason: 1 Byte Unsigned Fixed Width Integer Enum with 10 values
  index, extended_restatement_reason = n24x_equities_memo_sbe_v1_13.extended_restatement_reason.dissect(buffer, index, packet, parent)

  -- Link Id Optional: 4 Byte Ascii String Nullable
  index, link_id_optional = n24x_equities_memo_sbe_v1_13.link_id_optional.dissect(buffer, index, packet, parent)

  -- Parties Groups: Struct of 2 fields
  index, parties_groups = n24x_equities_memo_sbe_v1_13.parties_groups.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Execution Report Restatement Message
n24x_equities_memo_sbe_v1_13.execution_report_restatement_message.dissect = function(buffer, offset, packet, parent)
  -- Optionally add dynamic struct element to protocol tree
  if show.execution_report_restatement_message then
    local length = n24x_equities_memo_sbe_v1_13.execution_report_restatement_message.size(buffer, offset)
    local range = buffer(offset, length)
    local display = n24x_equities_memo_sbe_v1_13.execution_report_restatement_message.display(buffer, packet, parent)
    parent = parent:add(omi_n24x_equities_memo_sbe_v1_13.fields.execution_report_restatement_message, range, display)
  end

  return n24x_equities_memo_sbe_v1_13.execution_report_restatement_message.fields(buffer, offset, packet, parent)
end

-- Security Group
n24x_equities_memo_sbe_v1_13.security_group = {}

-- Size: Security Group
n24x_equities_memo_sbe_v1_13.security_group.size = 1

-- Display: Security Group
n24x_equities_memo_sbe_v1_13.security_group.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Security Group: No Value"
  end

  return "Security Group: "..value
end

-- Dissect: Security Group
n24x_equities_memo_sbe_v1_13.security_group.dissect = function(buffer, offset, packet, parent)
  local length = n24x_equities_memo_sbe_v1_13.security_group.size
  local range = buffer(offset, length)

  -- parse as byte
  local value = range:uint()

  -- check if value is non zero
  if value ~= 0 then
    value = range:string()
  end

  local display = n24x_equities_memo_sbe_v1_13.security_group.display(value, buffer, offset, packet, parent)

  parent:add(omi_n24x_equities_memo_sbe_v1_13.fields.security_group, range, value, display)

  return offset + length, value
end

-- Trd Match Id
n24x_equities_memo_sbe_v1_13.trd_match_id = {}

-- Size: Trd Match Id
n24x_equities_memo_sbe_v1_13.trd_match_id.size = 8

-- Display: Trd Match Id
n24x_equities_memo_sbe_v1_13.trd_match_id.display = function(value)
  return "Trd Match Id: "..value
end

-- Dissect: Trd Match Id
n24x_equities_memo_sbe_v1_13.trd_match_id.dissect = function(buffer, offset, packet, parent)
  local length = n24x_equities_memo_sbe_v1_13.trd_match_id.size
  local range = buffer(offset, length)
  local value = range:uint64()
  local display = n24x_equities_memo_sbe_v1_13.trd_match_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_n24x_equities_memo_sbe_v1_13.fields.trd_match_id, range, value, display)

  return offset + length, value
end

-- Exec Ref Id
n24x_equities_memo_sbe_v1_13.exec_ref_id = {}

-- Size: Exec Ref Id
n24x_equities_memo_sbe_v1_13.exec_ref_id.size = 8

-- Display: Exec Ref Id
n24x_equities_memo_sbe_v1_13.exec_ref_id.display = function(value)
  return "Exec Ref Id: "..value
end

-- Dissect: Exec Ref Id
n24x_equities_memo_sbe_v1_13.exec_ref_id.dissect = function(buffer, offset, packet, parent)
  local length = n24x_equities_memo_sbe_v1_13.exec_ref_id.size
  local range = buffer(offset, length)
  local value = range:uint64()
  local display = n24x_equities_memo_sbe_v1_13.exec_ref_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_n24x_equities_memo_sbe_v1_13.fields.exec_ref_id, range, value, display)

  return offset + length, value
end

-- Execution Report Trade Break Message
n24x_equities_memo_sbe_v1_13.execution_report_trade_break_message = {}

-- Calculate size of: Execution Report Trade Break Message
n24x_equities_memo_sbe_v1_13.execution_report_trade_break_message.size = function(buffer, offset)
  local index = 0

  index = index + n24x_equities_memo_sbe_v1_13.sending_time.size

  index = index + n24x_equities_memo_sbe_v1_13.order_id.size

  index = index + n24x_equities_memo_sbe_v1_13.clordid.size

  index = index + n24x_equities_memo_sbe_v1_13.exec_id.size

  index = index + n24x_equities_memo_sbe_v1_13.exec_ref_id.size

  index = index + n24x_equities_memo_sbe_v1_13.trd_match_id.size

  index = index + n24x_equities_memo_sbe_v1_13.ord_status.size

  index = index + n24x_equities_memo_sbe_v1_13.leaves_qty.size

  index = index + n24x_equities_memo_sbe_v1_13.cum_qty.size

  index = index + n24x_equities_memo_sbe_v1_13.link_id_optional.size

  index = index + n24x_equities_memo_sbe_v1_13.security_group.size

  index = index + n24x_equities_memo_sbe_v1_13.parties_groups.size(buffer, offset + index)

  return index
end

-- Display: Execution Report Trade Break Message
n24x_equities_memo_sbe_v1_13.execution_report_trade_break_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Execution Report Trade Break Message
n24x_equities_memo_sbe_v1_13.execution_report_trade_break_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Sending Time: 8 Byte Unsigned Fixed Width Integer
  index, sending_time = n24x_equities_memo_sbe_v1_13.sending_time.dissect(buffer, index, packet, parent)

  -- Order Id: 8 Byte Unsigned Fixed Width Integer
  index, order_id = n24x_equities_memo_sbe_v1_13.order_id.dissect(buffer, index, packet, parent)

  -- ClOrdId: 16 Byte Ascii String
  index, clordid = n24x_equities_memo_sbe_v1_13.clordid.dissect(buffer, index, packet, parent)

  -- Exec Id: 8 Byte Unsigned Fixed Width Integer
  index, exec_id = n24x_equities_memo_sbe_v1_13.exec_id.dissect(buffer, index, packet, parent)

  -- Exec Ref Id: 8 Byte Unsigned Fixed Width Integer
  index, exec_ref_id = n24x_equities_memo_sbe_v1_13.exec_ref_id.dissect(buffer, index, packet, parent)

  -- Trd Match Id: 8 Byte Unsigned Fixed Width Integer
  index, trd_match_id = n24x_equities_memo_sbe_v1_13.trd_match_id.dissect(buffer, index, packet, parent)

  -- Ord Status: 1 Byte Ascii String Enum with 9 values
  index, ord_status = n24x_equities_memo_sbe_v1_13.ord_status.dissect(buffer, index, packet, parent)

  -- Leaves Qty: 4 Byte Unsigned Fixed Width Integer
  index, leaves_qty = n24x_equities_memo_sbe_v1_13.leaves_qty.dissect(buffer, index, packet, parent)

  -- Cum Qty: 4 Byte Unsigned Fixed Width Integer
  index, cum_qty = n24x_equities_memo_sbe_v1_13.cum_qty.dissect(buffer, index, packet, parent)

  -- Link Id Optional: 4 Byte Ascii String Nullable
  index, link_id_optional = n24x_equities_memo_sbe_v1_13.link_id_optional.dissect(buffer, index, packet, parent)

  -- Security Group: 1 Byte Ascii String
  index, security_group = n24x_equities_memo_sbe_v1_13.security_group.dissect(buffer, index, packet, parent)

  -- Parties Groups: Struct of 2 fields
  index, parties_groups = n24x_equities_memo_sbe_v1_13.parties_groups.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Execution Report Trade Break Message
n24x_equities_memo_sbe_v1_13.execution_report_trade_break_message.dissect = function(buffer, offset, packet, parent)
  -- Optionally add dynamic struct element to protocol tree
  if show.execution_report_trade_break_message then
    local length = n24x_equities_memo_sbe_v1_13.execution_report_trade_break_message.size(buffer, offset)
    local range = buffer(offset, length)
    local display = n24x_equities_memo_sbe_v1_13.execution_report_trade_break_message.display(buffer, packet, parent)
    parent = parent:add(omi_n24x_equities_memo_sbe_v1_13.fields.execution_report_trade_break_message, range, display)
  end

  return n24x_equities_memo_sbe_v1_13.execution_report_trade_break_message.fields(buffer, offset, packet, parent)
end

-- Last Qty Optional
n24x_equities_memo_sbe_v1_13.last_qty_optional = {}

-- Size: Last Qty Optional
n24x_equities_memo_sbe_v1_13.last_qty_optional.size = 4

-- Display: Last Qty Optional
n24x_equities_memo_sbe_v1_13.last_qty_optional.display = function(value)
  -- Check if field has value
  if value == 4294967295 then
    return "Last Qty Optional: No Value"
  end

  return "Last Qty Optional: "..value
end

-- Dissect: Last Qty Optional
n24x_equities_memo_sbe_v1_13.last_qty_optional.dissect = function(buffer, offset, packet, parent)
  local length = n24x_equities_memo_sbe_v1_13.last_qty_optional.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = n24x_equities_memo_sbe_v1_13.last_qty_optional.display(value, buffer, offset, packet, parent)

  parent:add(omi_n24x_equities_memo_sbe_v1_13.fields.last_qty_optional, range, value, display)

  return offset + length, value
end

-- Last Px
n24x_equities_memo_sbe_v1_13.last_px = {}

-- Size: Last Px
n24x_equities_memo_sbe_v1_13.last_px.size = 8

-- Display: Last Px
n24x_equities_memo_sbe_v1_13.last_px.display = function(value)
  return "Last Px: "..value
end

-- Translate: Last Px
translate.last_px = function(raw)
  return raw:tonumber()/1000000
end

-- Dissect: Last Px
n24x_equities_memo_sbe_v1_13.last_px.dissect = function(buffer, offset, packet, parent)
  local length = n24x_equities_memo_sbe_v1_13.last_px.size
  local range = buffer(offset, length)
  local raw = range:int64()
  local value = translate.last_px(raw)
  local display = n24x_equities_memo_sbe_v1_13.last_px.display(value, buffer, offset, packet, parent)

  parent:add(omi_n24x_equities_memo_sbe_v1_13.fields.last_px, range, value, display)

  return offset + length, value
end

-- Execution Report Trade Correction Message
n24x_equities_memo_sbe_v1_13.execution_report_trade_correction_message = {}

-- Calculate size of: Execution Report Trade Correction Message
n24x_equities_memo_sbe_v1_13.execution_report_trade_correction_message.size = function(buffer, offset)
  local index = 0

  index = index + n24x_equities_memo_sbe_v1_13.sending_time.size

  index = index + n24x_equities_memo_sbe_v1_13.order_id.size

  index = index + n24x_equities_memo_sbe_v1_13.clordid.size

  index = index + n24x_equities_memo_sbe_v1_13.exec_id.size

  index = index + n24x_equities_memo_sbe_v1_13.exec_ref_id.size

  index = index + n24x_equities_memo_sbe_v1_13.trd_match_id.size

  index = index + n24x_equities_memo_sbe_v1_13.ord_status.size

  index = index + n24x_equities_memo_sbe_v1_13.last_px.size

  index = index + n24x_equities_memo_sbe_v1_13.last_qty_optional.size

  index = index + n24x_equities_memo_sbe_v1_13.leaves_qty.size

  index = index + n24x_equities_memo_sbe_v1_13.cum_qty.size

  index = index + n24x_equities_memo_sbe_v1_13.link_id_optional.size

  index = index + n24x_equities_memo_sbe_v1_13.security_group.size

  index = index + n24x_equities_memo_sbe_v1_13.parties_groups.size(buffer, offset + index)

  return index
end

-- Display: Execution Report Trade Correction Message
n24x_equities_memo_sbe_v1_13.execution_report_trade_correction_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Execution Report Trade Correction Message
n24x_equities_memo_sbe_v1_13.execution_report_trade_correction_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Sending Time: 8 Byte Unsigned Fixed Width Integer
  index, sending_time = n24x_equities_memo_sbe_v1_13.sending_time.dissect(buffer, index, packet, parent)

  -- Order Id: 8 Byte Unsigned Fixed Width Integer
  index, order_id = n24x_equities_memo_sbe_v1_13.order_id.dissect(buffer, index, packet, parent)

  -- ClOrdId: 16 Byte Ascii String
  index, clordid = n24x_equities_memo_sbe_v1_13.clordid.dissect(buffer, index, packet, parent)

  -- Exec Id: 8 Byte Unsigned Fixed Width Integer
  index, exec_id = n24x_equities_memo_sbe_v1_13.exec_id.dissect(buffer, index, packet, parent)

  -- Exec Ref Id: 8 Byte Unsigned Fixed Width Integer
  index, exec_ref_id = n24x_equities_memo_sbe_v1_13.exec_ref_id.dissect(buffer, index, packet, parent)

  -- Trd Match Id: 8 Byte Unsigned Fixed Width Integer
  index, trd_match_id = n24x_equities_memo_sbe_v1_13.trd_match_id.dissect(buffer, index, packet, parent)

  -- Ord Status: 1 Byte Ascii String Enum with 9 values
  index, ord_status = n24x_equities_memo_sbe_v1_13.ord_status.dissect(buffer, index, packet, parent)

  -- Last Px: 8 Byte Signed Fixed Width Integer
  index, last_px = n24x_equities_memo_sbe_v1_13.last_px.dissect(buffer, index, packet, parent)

  -- Last Qty Optional: 4 Byte Unsigned Fixed Width Integer Nullable
  index, last_qty_optional = n24x_equities_memo_sbe_v1_13.last_qty_optional.dissect(buffer, index, packet, parent)

  -- Leaves Qty: 4 Byte Unsigned Fixed Width Integer
  index, leaves_qty = n24x_equities_memo_sbe_v1_13.leaves_qty.dissect(buffer, index, packet, parent)

  -- Cum Qty: 4 Byte Unsigned Fixed Width Integer
  index, cum_qty = n24x_equities_memo_sbe_v1_13.cum_qty.dissect(buffer, index, packet, parent)

  -- Link Id Optional: 4 Byte Ascii String Nullable
  index, link_id_optional = n24x_equities_memo_sbe_v1_13.link_id_optional.dissect(buffer, index, packet, parent)

  -- Security Group: 1 Byte Ascii String
  index, security_group = n24x_equities_memo_sbe_v1_13.security_group.dissect(buffer, index, packet, parent)

  -- Parties Groups: Struct of 2 fields
  index, parties_groups = n24x_equities_memo_sbe_v1_13.parties_groups.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Execution Report Trade Correction Message
n24x_equities_memo_sbe_v1_13.execution_report_trade_correction_message.dissect = function(buffer, offset, packet, parent)
  -- Optionally add dynamic struct element to protocol tree
  if show.execution_report_trade_correction_message then
    local length = n24x_equities_memo_sbe_v1_13.execution_report_trade_correction_message.size(buffer, offset)
    local range = buffer(offset, length)
    local display = n24x_equities_memo_sbe_v1_13.execution_report_trade_correction_message.display(buffer, packet, parent)
    parent = parent:add(omi_n24x_equities_memo_sbe_v1_13.fields.execution_report_trade_correction_message, range, display)
  end

  return n24x_equities_memo_sbe_v1_13.execution_report_trade_correction_message.fields(buffer, offset, packet, parent)
end

-- Locate Broker Optional
n24x_equities_memo_sbe_v1_13.locate_broker_optional = {}

-- Size: Locate Broker Optional
n24x_equities_memo_sbe_v1_13.locate_broker_optional.size = 4

-- Display: Locate Broker Optional
n24x_equities_memo_sbe_v1_13.locate_broker_optional.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Locate Broker Optional: No Value"
  end

  return "Locate Broker Optional: "..value
end

-- Dissect: Locate Broker Optional
n24x_equities_memo_sbe_v1_13.locate_broker_optional.dissect = function(buffer, offset, packet, parent)
  local length = n24x_equities_memo_sbe_v1_13.locate_broker_optional.size
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

  local display = n24x_equities_memo_sbe_v1_13.locate_broker_optional.display(value, buffer, offset, packet, parent)

  parent:add(omi_n24x_equities_memo_sbe_v1_13.fields.locate_broker_optional, range, value, display)

  return offset + length, value
end

-- Locate Reqd
n24x_equities_memo_sbe_v1_13.locate_reqd = {}

-- Size: Locate Reqd
n24x_equities_memo_sbe_v1_13.locate_reqd.size = 1

-- Display: Locate Reqd
n24x_equities_memo_sbe_v1_13.locate_reqd.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Locate Reqd: No Value"
  end

  return "Locate Reqd: "..value
end

-- Dissect: Locate Reqd
n24x_equities_memo_sbe_v1_13.locate_reqd.dissect = function(buffer, offset, packet, parent)
  local length = n24x_equities_memo_sbe_v1_13.locate_reqd.size
  local range = buffer(offset, length)

  -- parse as byte
  local value = range:uint()

  -- check if value is non zero
  if value ~= 0 then
    value = range:string()
  end

  local display = n24x_equities_memo_sbe_v1_13.locate_reqd.display(value, buffer, offset, packet, parent)

  parent:add(omi_n24x_equities_memo_sbe_v1_13.fields.locate_reqd, range, value, display)

  return offset + length, value
end

-- Display Qty
n24x_equities_memo_sbe_v1_13.display_qty = {}

-- Size: Display Qty
n24x_equities_memo_sbe_v1_13.display_qty.size = 4

-- Display: Display Qty
n24x_equities_memo_sbe_v1_13.display_qty.display = function(value)
  -- Check if field has value
  if value == 4294967295 then
    return "Display Qty: No Value"
  end

  return "Display Qty: "..value
end

-- Dissect: Display Qty
n24x_equities_memo_sbe_v1_13.display_qty.dissect = function(buffer, offset, packet, parent)
  local length = n24x_equities_memo_sbe_v1_13.display_qty.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = n24x_equities_memo_sbe_v1_13.display_qty.display(value, buffer, offset, packet, parent)

  parent:add(omi_n24x_equities_memo_sbe_v1_13.fields.display_qty, range, value, display)

  return offset + length, value
end

-- Price
n24x_equities_memo_sbe_v1_13.price = {}

-- Size: Price
n24x_equities_memo_sbe_v1_13.price.size = 8

-- Display: Price
n24x_equities_memo_sbe_v1_13.price.display = function(raw, value)
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
n24x_equities_memo_sbe_v1_13.price.dissect = function(buffer, offset, packet, parent)
  local length = n24x_equities_memo_sbe_v1_13.price.size
  local range = buffer(offset, length)
  local raw = range:int64()
  local value = translate.price(raw)
  local display = n24x_equities_memo_sbe_v1_13.price.display(raw, value, buffer, offset, packet, parent)

  parent:add(omi_n24x_equities_memo_sbe_v1_13.fields.price, range, value, display)

  return offset + length, value
end

-- Ord Type
n24x_equities_memo_sbe_v1_13.ord_type = {}

-- Size: Ord Type
n24x_equities_memo_sbe_v1_13.ord_type.size = 1

-- Display: Ord Type
n24x_equities_memo_sbe_v1_13.ord_type.display = function(value)
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
n24x_equities_memo_sbe_v1_13.ord_type.dissect = function(buffer, offset, packet, parent)
  local length = n24x_equities_memo_sbe_v1_13.ord_type.size
  local range = buffer(offset, length)

  -- parse as byte
  local value = range:uint()

  -- check if value is non zero
  if value ~= 0 then
    value = range:string()
  end

  local display = n24x_equities_memo_sbe_v1_13.ord_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_n24x_equities_memo_sbe_v1_13.fields.ord_type, range, value, display)

  return offset + length, value
end

-- Order Qty
n24x_equities_memo_sbe_v1_13.order_qty = {}

-- Size: Order Qty
n24x_equities_memo_sbe_v1_13.order_qty.size = 4

-- Display: Order Qty
n24x_equities_memo_sbe_v1_13.order_qty.display = function(value)
  return "Order Qty: "..value
end

-- Dissect: Order Qty
n24x_equities_memo_sbe_v1_13.order_qty.dissect = function(buffer, offset, packet, parent)
  local length = n24x_equities_memo_sbe_v1_13.order_qty.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = n24x_equities_memo_sbe_v1_13.order_qty.display(value, buffer, offset, packet, parent)

  parent:add(omi_n24x_equities_memo_sbe_v1_13.fields.order_qty, range, value, display)

  return offset + length, value
end

-- Side
n24x_equities_memo_sbe_v1_13.side = {}

-- Size: Side
n24x_equities_memo_sbe_v1_13.side.size = 1

-- Display: Side
n24x_equities_memo_sbe_v1_13.side.display = function(value)
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
n24x_equities_memo_sbe_v1_13.side.dissect = function(buffer, offset, packet, parent)
  local length = n24x_equities_memo_sbe_v1_13.side.size
  local range = buffer(offset, length)

  -- parse as byte
  local value = range:uint()

  -- check if value is non zero
  if value ~= 0 then
    value = range:string()
  end

  local display = n24x_equities_memo_sbe_v1_13.side.display(value, buffer, offset, packet, parent)

  parent:add(omi_n24x_equities_memo_sbe_v1_13.fields.side, range, value, display)

  return offset + length, value
end

-- OrigClOrdId Optional
n24x_equities_memo_sbe_v1_13.origclordid_optional = {}

-- Size: OrigClOrdId Optional
n24x_equities_memo_sbe_v1_13.origclordid_optional.size = 16

-- Display: OrigClOrdId Optional
n24x_equities_memo_sbe_v1_13.origclordid_optional.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "OrigClOrdId Optional: No Value"
  end

  return "OrigClOrdId Optional: "..value
end

-- Dissect: OrigClOrdId Optional
n24x_equities_memo_sbe_v1_13.origclordid_optional.dissect = function(buffer, offset, packet, parent)
  local length = n24x_equities_memo_sbe_v1_13.origclordid_optional.size
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

  local display = n24x_equities_memo_sbe_v1_13.origclordid_optional.display(value, buffer, offset, packet, parent)

  parent:add(omi_n24x_equities_memo_sbe_v1_13.fields.origclordid_optional, range, value, display)

  return offset + length, value
end

-- Execution Report Replaced Message
n24x_equities_memo_sbe_v1_13.execution_report_replaced_message = {}

-- Calculate size of: Execution Report Replaced Message
n24x_equities_memo_sbe_v1_13.execution_report_replaced_message.size = function(buffer, offset)
  local index = 0

  index = index + n24x_equities_memo_sbe_v1_13.sending_time.size

  index = index + n24x_equities_memo_sbe_v1_13.order_id.size

  index = index + n24x_equities_memo_sbe_v1_13.clordid.size

  index = index + n24x_equities_memo_sbe_v1_13.origclordid_optional.size

  index = index + n24x_equities_memo_sbe_v1_13.exec_id.size

  index = index + n24x_equities_memo_sbe_v1_13.symbol.size

  index = index + n24x_equities_memo_sbe_v1_13.symbol_sfx.size

  index = index + n24x_equities_memo_sbe_v1_13.side.size

  index = index + n24x_equities_memo_sbe_v1_13.order_qty.size

  index = index + n24x_equities_memo_sbe_v1_13.ord_type.size

  index = index + n24x_equities_memo_sbe_v1_13.price.size

  index = index + n24x_equities_memo_sbe_v1_13.display_qty.size

  index = index + n24x_equities_memo_sbe_v1_13.locate_reqd.size

  index = index + n24x_equities_memo_sbe_v1_13.ord_status.size

  index = index + n24x_equities_memo_sbe_v1_13.leaves_qty.size

  index = index + n24x_equities_memo_sbe_v1_13.cum_qty.size

  index = index + n24x_equities_memo_sbe_v1_13.transact_time.size

  index = index + n24x_equities_memo_sbe_v1_13.link_id_optional.size

  index = index + n24x_equities_memo_sbe_v1_13.locate_broker_optional.size

  index = index + n24x_equities_memo_sbe_v1_13.parties_groups.size(buffer, offset + index)

  return index
end

-- Display: Execution Report Replaced Message
n24x_equities_memo_sbe_v1_13.execution_report_replaced_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Execution Report Replaced Message
n24x_equities_memo_sbe_v1_13.execution_report_replaced_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Sending Time: 8 Byte Unsigned Fixed Width Integer
  index, sending_time = n24x_equities_memo_sbe_v1_13.sending_time.dissect(buffer, index, packet, parent)

  -- Order Id: 8 Byte Unsigned Fixed Width Integer
  index, order_id = n24x_equities_memo_sbe_v1_13.order_id.dissect(buffer, index, packet, parent)

  -- ClOrdId: 16 Byte Ascii String
  index, clordid = n24x_equities_memo_sbe_v1_13.clordid.dissect(buffer, index, packet, parent)

  -- OrigClOrdId Optional: 16 Byte Ascii String Nullable
  index, origclordid_optional = n24x_equities_memo_sbe_v1_13.origclordid_optional.dissect(buffer, index, packet, parent)

  -- Exec Id: 8 Byte Unsigned Fixed Width Integer
  index, exec_id = n24x_equities_memo_sbe_v1_13.exec_id.dissect(buffer, index, packet, parent)

  -- Symbol: 6 Byte Ascii String
  index, symbol = n24x_equities_memo_sbe_v1_13.symbol.dissect(buffer, index, packet, parent)

  -- Symbol Sfx: 6 Byte Ascii String Nullable
  index, symbol_sfx = n24x_equities_memo_sbe_v1_13.symbol_sfx.dissect(buffer, index, packet, parent)

  -- Side: 1 Byte Ascii String Enum with 4 values
  index, side = n24x_equities_memo_sbe_v1_13.side.dissect(buffer, index, packet, parent)

  -- Order Qty: 4 Byte Unsigned Fixed Width Integer
  index, order_qty = n24x_equities_memo_sbe_v1_13.order_qty.dissect(buffer, index, packet, parent)

  -- Ord Type: 1 Byte Ascii String Enum with 3 values
  index, ord_type = n24x_equities_memo_sbe_v1_13.ord_type.dissect(buffer, index, packet, parent)

  -- Price: 8 Byte Signed Fixed Width Integer Nullable
  index, price = n24x_equities_memo_sbe_v1_13.price.dissect(buffer, index, packet, parent)

  -- Display Qty: 4 Byte Unsigned Fixed Width Integer Nullable
  index, display_qty = n24x_equities_memo_sbe_v1_13.display_qty.dissect(buffer, index, packet, parent)

  -- Locate Reqd: 1 Byte Ascii String Nullable
  index, locate_reqd = n24x_equities_memo_sbe_v1_13.locate_reqd.dissect(buffer, index, packet, parent)

  -- Ord Status: 1 Byte Ascii String Enum with 9 values
  index, ord_status = n24x_equities_memo_sbe_v1_13.ord_status.dissect(buffer, index, packet, parent)

  -- Leaves Qty: 4 Byte Unsigned Fixed Width Integer
  index, leaves_qty = n24x_equities_memo_sbe_v1_13.leaves_qty.dissect(buffer, index, packet, parent)

  -- Cum Qty: 4 Byte Unsigned Fixed Width Integer
  index, cum_qty = n24x_equities_memo_sbe_v1_13.cum_qty.dissect(buffer, index, packet, parent)

  -- Transact Time: 8 Byte Unsigned Fixed Width Integer
  index, transact_time = n24x_equities_memo_sbe_v1_13.transact_time.dissect(buffer, index, packet, parent)

  -- Link Id Optional: 4 Byte Ascii String Nullable
  index, link_id_optional = n24x_equities_memo_sbe_v1_13.link_id_optional.dissect(buffer, index, packet, parent)

  -- Locate Broker Optional: 4 Byte Ascii String Nullable
  index, locate_broker_optional = n24x_equities_memo_sbe_v1_13.locate_broker_optional.dissect(buffer, index, packet, parent)

  -- Parties Groups: Struct of 2 fields
  index, parties_groups = n24x_equities_memo_sbe_v1_13.parties_groups.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Execution Report Replaced Message
n24x_equities_memo_sbe_v1_13.execution_report_replaced_message.dissect = function(buffer, offset, packet, parent)
  -- Optionally add dynamic struct element to protocol tree
  if show.execution_report_replaced_message then
    local length = n24x_equities_memo_sbe_v1_13.execution_report_replaced_message.size(buffer, offset)
    local range = buffer(offset, length)
    local display = n24x_equities_memo_sbe_v1_13.execution_report_replaced_message.display(buffer, packet, parent)
    parent = parent:add(omi_n24x_equities_memo_sbe_v1_13.fields.execution_report_replaced_message, range, display)
  end

  return n24x_equities_memo_sbe_v1_13.execution_report_replaced_message.fields(buffer, offset, packet, parent)
end

-- Execution Report Pending Replace Message
n24x_equities_memo_sbe_v1_13.execution_report_pending_replace_message = {}

-- Calculate size of: Execution Report Pending Replace Message
n24x_equities_memo_sbe_v1_13.execution_report_pending_replace_message.size = function(buffer, offset)
  local index = 0

  index = index + n24x_equities_memo_sbe_v1_13.sending_time.size

  index = index + n24x_equities_memo_sbe_v1_13.order_id.size

  index = index + n24x_equities_memo_sbe_v1_13.clordid.size

  index = index + n24x_equities_memo_sbe_v1_13.origclordid_optional.size

  index = index + n24x_equities_memo_sbe_v1_13.exec_id.size

  index = index + n24x_equities_memo_sbe_v1_13.symbol.size

  index = index + n24x_equities_memo_sbe_v1_13.symbol_sfx.size

  index = index + n24x_equities_memo_sbe_v1_13.side.size

  index = index + n24x_equities_memo_sbe_v1_13.order_qty.size

  index = index + n24x_equities_memo_sbe_v1_13.ord_type.size

  index = index + n24x_equities_memo_sbe_v1_13.price.size

  index = index + n24x_equities_memo_sbe_v1_13.display_qty.size

  index = index + n24x_equities_memo_sbe_v1_13.locate_reqd.size

  index = index + n24x_equities_memo_sbe_v1_13.ord_status.size

  index = index + n24x_equities_memo_sbe_v1_13.leaves_qty.size

  index = index + n24x_equities_memo_sbe_v1_13.cum_qty.size

  index = index + n24x_equities_memo_sbe_v1_13.link_id_optional.size

  index = index + n24x_equities_memo_sbe_v1_13.locate_broker_optional.size

  index = index + n24x_equities_memo_sbe_v1_13.parties_groups.size(buffer, offset + index)

  return index
end

-- Display: Execution Report Pending Replace Message
n24x_equities_memo_sbe_v1_13.execution_report_pending_replace_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Execution Report Pending Replace Message
n24x_equities_memo_sbe_v1_13.execution_report_pending_replace_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Sending Time: 8 Byte Unsigned Fixed Width Integer
  index, sending_time = n24x_equities_memo_sbe_v1_13.sending_time.dissect(buffer, index, packet, parent)

  -- Order Id: 8 Byte Unsigned Fixed Width Integer
  index, order_id = n24x_equities_memo_sbe_v1_13.order_id.dissect(buffer, index, packet, parent)

  -- ClOrdId: 16 Byte Ascii String
  index, clordid = n24x_equities_memo_sbe_v1_13.clordid.dissect(buffer, index, packet, parent)

  -- OrigClOrdId Optional: 16 Byte Ascii String Nullable
  index, origclordid_optional = n24x_equities_memo_sbe_v1_13.origclordid_optional.dissect(buffer, index, packet, parent)

  -- Exec Id: 8 Byte Unsigned Fixed Width Integer
  index, exec_id = n24x_equities_memo_sbe_v1_13.exec_id.dissect(buffer, index, packet, parent)

  -- Symbol: 6 Byte Ascii String
  index, symbol = n24x_equities_memo_sbe_v1_13.symbol.dissect(buffer, index, packet, parent)

  -- Symbol Sfx: 6 Byte Ascii String Nullable
  index, symbol_sfx = n24x_equities_memo_sbe_v1_13.symbol_sfx.dissect(buffer, index, packet, parent)

  -- Side: 1 Byte Ascii String Enum with 4 values
  index, side = n24x_equities_memo_sbe_v1_13.side.dissect(buffer, index, packet, parent)

  -- Order Qty: 4 Byte Unsigned Fixed Width Integer
  index, order_qty = n24x_equities_memo_sbe_v1_13.order_qty.dissect(buffer, index, packet, parent)

  -- Ord Type: 1 Byte Ascii String Enum with 3 values
  index, ord_type = n24x_equities_memo_sbe_v1_13.ord_type.dissect(buffer, index, packet, parent)

  -- Price: 8 Byte Signed Fixed Width Integer Nullable
  index, price = n24x_equities_memo_sbe_v1_13.price.dissect(buffer, index, packet, parent)

  -- Display Qty: 4 Byte Unsigned Fixed Width Integer Nullable
  index, display_qty = n24x_equities_memo_sbe_v1_13.display_qty.dissect(buffer, index, packet, parent)

  -- Locate Reqd: 1 Byte Ascii String Nullable
  index, locate_reqd = n24x_equities_memo_sbe_v1_13.locate_reqd.dissect(buffer, index, packet, parent)

  -- Ord Status: 1 Byte Ascii String Enum with 9 values
  index, ord_status = n24x_equities_memo_sbe_v1_13.ord_status.dissect(buffer, index, packet, parent)

  -- Leaves Qty: 4 Byte Unsigned Fixed Width Integer
  index, leaves_qty = n24x_equities_memo_sbe_v1_13.leaves_qty.dissect(buffer, index, packet, parent)

  -- Cum Qty: 4 Byte Unsigned Fixed Width Integer
  index, cum_qty = n24x_equities_memo_sbe_v1_13.cum_qty.dissect(buffer, index, packet, parent)

  -- Link Id Optional: 4 Byte Ascii String Nullable
  index, link_id_optional = n24x_equities_memo_sbe_v1_13.link_id_optional.dissect(buffer, index, packet, parent)

  -- Locate Broker Optional: 4 Byte Ascii String Nullable
  index, locate_broker_optional = n24x_equities_memo_sbe_v1_13.locate_broker_optional.dissect(buffer, index, packet, parent)

  -- Parties Groups: Struct of 2 fields
  index, parties_groups = n24x_equities_memo_sbe_v1_13.parties_groups.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Execution Report Pending Replace Message
n24x_equities_memo_sbe_v1_13.execution_report_pending_replace_message.dissect = function(buffer, offset, packet, parent)
  -- Optionally add dynamic struct element to protocol tree
  if show.execution_report_pending_replace_message then
    local length = n24x_equities_memo_sbe_v1_13.execution_report_pending_replace_message.size(buffer, offset)
    local range = buffer(offset, length)
    local display = n24x_equities_memo_sbe_v1_13.execution_report_pending_replace_message.display(buffer, packet, parent)
    parent = parent:add(omi_n24x_equities_memo_sbe_v1_13.fields.execution_report_pending_replace_message, range, display)
  end

  return n24x_equities_memo_sbe_v1_13.execution_report_pending_replace_message.fields(buffer, offset, packet, parent)
end

-- Mass Cancel Done Message
n24x_equities_memo_sbe_v1_13.mass_cancel_done_message = {}

-- Calculate size of: Mass Cancel Done Message
n24x_equities_memo_sbe_v1_13.mass_cancel_done_message.size = function(buffer, offset)
  local index = 0

  index = index + n24x_equities_memo_sbe_v1_13.sending_time.size

  index = index + n24x_equities_memo_sbe_v1_13.clordid.size

  return index
end

-- Display: Mass Cancel Done Message
n24x_equities_memo_sbe_v1_13.mass_cancel_done_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Mass Cancel Done Message
n24x_equities_memo_sbe_v1_13.mass_cancel_done_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Sending Time: 8 Byte Unsigned Fixed Width Integer
  index, sending_time = n24x_equities_memo_sbe_v1_13.sending_time.dissect(buffer, index, packet, parent)

  -- ClOrdId: 16 Byte Ascii String
  index, clordid = n24x_equities_memo_sbe_v1_13.clordid.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Mass Cancel Done Message
n24x_equities_memo_sbe_v1_13.mass_cancel_done_message.dissect = function(buffer, offset, packet, parent)
  if show.mass_cancel_done_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_n24x_equities_memo_sbe_v1_13.fields.mass_cancel_done_message, buffer(offset, 0))
    local index = n24x_equities_memo_sbe_v1_13.mass_cancel_done_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = n24x_equities_memo_sbe_v1_13.mass_cancel_done_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return n24x_equities_memo_sbe_v1_13.mass_cancel_done_message.fields(buffer, offset, packet, parent)
  end
end

-- Cancel Reason
n24x_equities_memo_sbe_v1_13.cancel_reason = {}

-- Size: Cancel Reason
n24x_equities_memo_sbe_v1_13.cancel_reason.size = 1

-- Display: Cancel Reason
n24x_equities_memo_sbe_v1_13.cancel_reason.display = function(value)
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
n24x_equities_memo_sbe_v1_13.cancel_reason.dissect = function(buffer, offset, packet, parent)
  local length = n24x_equities_memo_sbe_v1_13.cancel_reason.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = n24x_equities_memo_sbe_v1_13.cancel_reason.display(value, buffer, offset, packet, parent)

  parent:add(omi_n24x_equities_memo_sbe_v1_13.fields.cancel_reason, range, value, display)

  return offset + length, value
end

-- Execution Report Canceled Message
n24x_equities_memo_sbe_v1_13.execution_report_canceled_message = {}

-- Calculate size of: Execution Report Canceled Message
n24x_equities_memo_sbe_v1_13.execution_report_canceled_message.size = function(buffer, offset)
  local index = 0

  index = index + n24x_equities_memo_sbe_v1_13.sending_time.size

  index = index + n24x_equities_memo_sbe_v1_13.clordid.size

  index = index + n24x_equities_memo_sbe_v1_13.origclordid_optional.size

  index = index + n24x_equities_memo_sbe_v1_13.order_id.size

  index = index + n24x_equities_memo_sbe_v1_13.exec_id.size

  index = index + n24x_equities_memo_sbe_v1_13.ord_status.size

  index = index + n24x_equities_memo_sbe_v1_13.leaves_qty.size

  index = index + n24x_equities_memo_sbe_v1_13.cum_qty.size

  index = index + n24x_equities_memo_sbe_v1_13.cancel_reason.size

  index = index + n24x_equities_memo_sbe_v1_13.transact_time.size

  index = index + n24x_equities_memo_sbe_v1_13.link_id_optional.size

  index = index + n24x_equities_memo_sbe_v1_13.parties_groups.size(buffer, offset + index)

  return index
end

-- Display: Execution Report Canceled Message
n24x_equities_memo_sbe_v1_13.execution_report_canceled_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Execution Report Canceled Message
n24x_equities_memo_sbe_v1_13.execution_report_canceled_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Sending Time: 8 Byte Unsigned Fixed Width Integer
  index, sending_time = n24x_equities_memo_sbe_v1_13.sending_time.dissect(buffer, index, packet, parent)

  -- ClOrdId: 16 Byte Ascii String
  index, clordid = n24x_equities_memo_sbe_v1_13.clordid.dissect(buffer, index, packet, parent)

  -- OrigClOrdId Optional: 16 Byte Ascii String Nullable
  index, origclordid_optional = n24x_equities_memo_sbe_v1_13.origclordid_optional.dissect(buffer, index, packet, parent)

  -- Order Id: 8 Byte Unsigned Fixed Width Integer
  index, order_id = n24x_equities_memo_sbe_v1_13.order_id.dissect(buffer, index, packet, parent)

  -- Exec Id: 8 Byte Unsigned Fixed Width Integer
  index, exec_id = n24x_equities_memo_sbe_v1_13.exec_id.dissect(buffer, index, packet, parent)

  -- Ord Status: 1 Byte Ascii String Enum with 9 values
  index, ord_status = n24x_equities_memo_sbe_v1_13.ord_status.dissect(buffer, index, packet, parent)

  -- Leaves Qty: 4 Byte Unsigned Fixed Width Integer
  index, leaves_qty = n24x_equities_memo_sbe_v1_13.leaves_qty.dissect(buffer, index, packet, parent)

  -- Cum Qty: 4 Byte Unsigned Fixed Width Integer
  index, cum_qty = n24x_equities_memo_sbe_v1_13.cum_qty.dissect(buffer, index, packet, parent)

  -- Cancel Reason: 1 Byte Unsigned Fixed Width Integer Enum with 21 values
  index, cancel_reason = n24x_equities_memo_sbe_v1_13.cancel_reason.dissect(buffer, index, packet, parent)

  -- Transact Time: 8 Byte Unsigned Fixed Width Integer
  index, transact_time = n24x_equities_memo_sbe_v1_13.transact_time.dissect(buffer, index, packet, parent)

  -- Link Id Optional: 4 Byte Ascii String Nullable
  index, link_id_optional = n24x_equities_memo_sbe_v1_13.link_id_optional.dissect(buffer, index, packet, parent)

  -- Parties Groups: Struct of 2 fields
  index, parties_groups = n24x_equities_memo_sbe_v1_13.parties_groups.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Execution Report Canceled Message
n24x_equities_memo_sbe_v1_13.execution_report_canceled_message.dissect = function(buffer, offset, packet, parent)
  -- Optionally add dynamic struct element to protocol tree
  if show.execution_report_canceled_message then
    local length = n24x_equities_memo_sbe_v1_13.execution_report_canceled_message.size(buffer, offset)
    local range = buffer(offset, length)
    local display = n24x_equities_memo_sbe_v1_13.execution_report_canceled_message.display(buffer, packet, parent)
    parent = parent:add(omi_n24x_equities_memo_sbe_v1_13.fields.execution_report_canceled_message, range, display)
  end

  return n24x_equities_memo_sbe_v1_13.execution_report_canceled_message.fields(buffer, offset, packet, parent)
end

-- Pending Mass Cancel Message
n24x_equities_memo_sbe_v1_13.pending_mass_cancel_message = {}

-- Calculate size of: Pending Mass Cancel Message
n24x_equities_memo_sbe_v1_13.pending_mass_cancel_message.size = function(buffer, offset)
  local index = 0

  index = index + n24x_equities_memo_sbe_v1_13.sending_time.size

  index = index + n24x_equities_memo_sbe_v1_13.clordid.size

  index = index + n24x_equities_memo_sbe_v1_13.symbol.size

  index = index + n24x_equities_memo_sbe_v1_13.symbol_sfx.size

  index = index + n24x_equities_memo_sbe_v1_13.side_optional.size

  index = index + n24x_equities_memo_sbe_v1_13.lower_than_price.size

  index = index + n24x_equities_memo_sbe_v1_13.higher_than_price.size

  index = index + n24x_equities_memo_sbe_v1_13.cancel_group_id.size

  return index
end

-- Display: Pending Mass Cancel Message
n24x_equities_memo_sbe_v1_13.pending_mass_cancel_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Pending Mass Cancel Message
n24x_equities_memo_sbe_v1_13.pending_mass_cancel_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Sending Time: 8 Byte Unsigned Fixed Width Integer
  index, sending_time = n24x_equities_memo_sbe_v1_13.sending_time.dissect(buffer, index, packet, parent)

  -- ClOrdId: 16 Byte Ascii String
  index, clordid = n24x_equities_memo_sbe_v1_13.clordid.dissect(buffer, index, packet, parent)

  -- Symbol: 6 Byte Ascii String
  index, symbol = n24x_equities_memo_sbe_v1_13.symbol.dissect(buffer, index, packet, parent)

  -- Symbol Sfx: 6 Byte Ascii String Nullable
  index, symbol_sfx = n24x_equities_memo_sbe_v1_13.symbol_sfx.dissect(buffer, index, packet, parent)

  -- Side Optional: 1 Byte Ascii String Enum with 5 values
  index, side_optional = n24x_equities_memo_sbe_v1_13.side_optional.dissect(buffer, index, packet, parent)

  -- Lower Than Price: 8 Byte Signed Fixed Width Integer Nullable
  index, lower_than_price = n24x_equities_memo_sbe_v1_13.lower_than_price.dissect(buffer, index, packet, parent)

  -- Higher Than Price: 8 Byte Signed Fixed Width Integer Nullable
  index, higher_than_price = n24x_equities_memo_sbe_v1_13.higher_than_price.dissect(buffer, index, packet, parent)

  -- Cancel Group Id: 2 Byte Unsigned Fixed Width Integer Nullable
  index, cancel_group_id = n24x_equities_memo_sbe_v1_13.cancel_group_id.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Pending Mass Cancel Message
n24x_equities_memo_sbe_v1_13.pending_mass_cancel_message.dissect = function(buffer, offset, packet, parent)
  if show.pending_mass_cancel_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_n24x_equities_memo_sbe_v1_13.fields.pending_mass_cancel_message, buffer(offset, 0))
    local index = n24x_equities_memo_sbe_v1_13.pending_mass_cancel_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = n24x_equities_memo_sbe_v1_13.pending_mass_cancel_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return n24x_equities_memo_sbe_v1_13.pending_mass_cancel_message.fields(buffer, offset, packet, parent)
  end
end

-- Execution Report Pending Cancel Message
n24x_equities_memo_sbe_v1_13.execution_report_pending_cancel_message = {}

-- Calculate size of: Execution Report Pending Cancel Message
n24x_equities_memo_sbe_v1_13.execution_report_pending_cancel_message.size = function(buffer, offset)
  local index = 0

  index = index + n24x_equities_memo_sbe_v1_13.sending_time.size

  index = index + n24x_equities_memo_sbe_v1_13.order_id.size

  index = index + n24x_equities_memo_sbe_v1_13.clordid.size

  index = index + n24x_equities_memo_sbe_v1_13.origclordid_optional.size

  index = index + n24x_equities_memo_sbe_v1_13.exec_id.size

  index = index + n24x_equities_memo_sbe_v1_13.symbol.size

  index = index + n24x_equities_memo_sbe_v1_13.symbol_sfx.size

  index = index + n24x_equities_memo_sbe_v1_13.ord_status.size

  index = index + n24x_equities_memo_sbe_v1_13.leaves_qty.size

  index = index + n24x_equities_memo_sbe_v1_13.cum_qty.size

  index = index + n24x_equities_memo_sbe_v1_13.link_id_optional.size

  index = index + n24x_equities_memo_sbe_v1_13.parties_groups.size(buffer, offset + index)

  return index
end

-- Display: Execution Report Pending Cancel Message
n24x_equities_memo_sbe_v1_13.execution_report_pending_cancel_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Execution Report Pending Cancel Message
n24x_equities_memo_sbe_v1_13.execution_report_pending_cancel_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Sending Time: 8 Byte Unsigned Fixed Width Integer
  index, sending_time = n24x_equities_memo_sbe_v1_13.sending_time.dissect(buffer, index, packet, parent)

  -- Order Id: 8 Byte Unsigned Fixed Width Integer
  index, order_id = n24x_equities_memo_sbe_v1_13.order_id.dissect(buffer, index, packet, parent)

  -- ClOrdId: 16 Byte Ascii String
  index, clordid = n24x_equities_memo_sbe_v1_13.clordid.dissect(buffer, index, packet, parent)

  -- OrigClOrdId Optional: 16 Byte Ascii String Nullable
  index, origclordid_optional = n24x_equities_memo_sbe_v1_13.origclordid_optional.dissect(buffer, index, packet, parent)

  -- Exec Id: 8 Byte Unsigned Fixed Width Integer
  index, exec_id = n24x_equities_memo_sbe_v1_13.exec_id.dissect(buffer, index, packet, parent)

  -- Symbol: 6 Byte Ascii String
  index, symbol = n24x_equities_memo_sbe_v1_13.symbol.dissect(buffer, index, packet, parent)

  -- Symbol Sfx: 6 Byte Ascii String Nullable
  index, symbol_sfx = n24x_equities_memo_sbe_v1_13.symbol_sfx.dissect(buffer, index, packet, parent)

  -- Ord Status: 1 Byte Ascii String Enum with 9 values
  index, ord_status = n24x_equities_memo_sbe_v1_13.ord_status.dissect(buffer, index, packet, parent)

  -- Leaves Qty: 4 Byte Unsigned Fixed Width Integer
  index, leaves_qty = n24x_equities_memo_sbe_v1_13.leaves_qty.dissect(buffer, index, packet, parent)

  -- Cum Qty: 4 Byte Unsigned Fixed Width Integer
  index, cum_qty = n24x_equities_memo_sbe_v1_13.cum_qty.dissect(buffer, index, packet, parent)

  -- Link Id Optional: 4 Byte Ascii String Nullable
  index, link_id_optional = n24x_equities_memo_sbe_v1_13.link_id_optional.dissect(buffer, index, packet, parent)

  -- Parties Groups: Struct of 2 fields
  index, parties_groups = n24x_equities_memo_sbe_v1_13.parties_groups.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Execution Report Pending Cancel Message
n24x_equities_memo_sbe_v1_13.execution_report_pending_cancel_message.dissect = function(buffer, offset, packet, parent)
  -- Optionally add dynamic struct element to protocol tree
  if show.execution_report_pending_cancel_message then
    local length = n24x_equities_memo_sbe_v1_13.execution_report_pending_cancel_message.size(buffer, offset)
    local range = buffer(offset, length)
    local display = n24x_equities_memo_sbe_v1_13.execution_report_pending_cancel_message.display(buffer, packet, parent)
    parent = parent:add(omi_n24x_equities_memo_sbe_v1_13.fields.execution_report_pending_cancel_message, range, display)
  end

  return n24x_equities_memo_sbe_v1_13.execution_report_pending_cancel_message.fields(buffer, offset, packet, parent)
end

-- Trd Matching Id
n24x_equities_memo_sbe_v1_13.trd_matching_id = {}

-- Size: Trd Matching Id
n24x_equities_memo_sbe_v1_13.trd_matching_id.size = 8

-- Display: Trd Matching Id
n24x_equities_memo_sbe_v1_13.trd_matching_id.display = function(value)
  return "Trd Matching Id: "..value
end

-- Dissect: Trd Matching Id
n24x_equities_memo_sbe_v1_13.trd_matching_id.dissect = function(buffer, offset, packet, parent)
  local length = n24x_equities_memo_sbe_v1_13.trd_matching_id.size
  local range = buffer(offset, length)
  local value = range:uint64()
  local display = n24x_equities_memo_sbe_v1_13.trd_matching_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_n24x_equities_memo_sbe_v1_13.fields.trd_matching_id, range, value, display)

  return offset + length, value
end

-- Last Mkt
n24x_equities_memo_sbe_v1_13.last_mkt = {}

-- Size: Last Mkt
n24x_equities_memo_sbe_v1_13.last_mkt.size = 4

-- Display: Last Mkt
n24x_equities_memo_sbe_v1_13.last_mkt.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Last Mkt: No Value"
  end

  return "Last Mkt: "..value
end

-- Dissect: Last Mkt
n24x_equities_memo_sbe_v1_13.last_mkt.dissect = function(buffer, offset, packet, parent)
  local length = n24x_equities_memo_sbe_v1_13.last_mkt.size
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

  local display = n24x_equities_memo_sbe_v1_13.last_mkt.display(value, buffer, offset, packet, parent)

  parent:add(omi_n24x_equities_memo_sbe_v1_13.fields.last_mkt, range, value, display)

  return offset + length, value
end

-- Last Liquidity Ind
n24x_equities_memo_sbe_v1_13.last_liquidity_ind = {}

-- Size: Last Liquidity Ind
n24x_equities_memo_sbe_v1_13.last_liquidity_ind.size = 1

-- Display: Last Liquidity Ind
n24x_equities_memo_sbe_v1_13.last_liquidity_ind.display = function(value)
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
n24x_equities_memo_sbe_v1_13.last_liquidity_ind.dissect = function(buffer, offset, packet, parent)
  local length = n24x_equities_memo_sbe_v1_13.last_liquidity_ind.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = n24x_equities_memo_sbe_v1_13.last_liquidity_ind.display(value, buffer, offset, packet, parent)

  parent:add(omi_n24x_equities_memo_sbe_v1_13.fields.last_liquidity_ind, range, value, display)

  return offset + length, value
end

-- Last Qty
n24x_equities_memo_sbe_v1_13.last_qty = {}

-- Size: Last Qty
n24x_equities_memo_sbe_v1_13.last_qty.size = 4

-- Display: Last Qty
n24x_equities_memo_sbe_v1_13.last_qty.display = function(value)
  return "Last Qty: "..value
end

-- Dissect: Last Qty
n24x_equities_memo_sbe_v1_13.last_qty.dissect = function(buffer, offset, packet, parent)
  local length = n24x_equities_memo_sbe_v1_13.last_qty.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = n24x_equities_memo_sbe_v1_13.last_qty.display(value, buffer, offset, packet, parent)

  parent:add(omi_n24x_equities_memo_sbe_v1_13.fields.last_qty, range, value, display)

  return offset + length, value
end

-- Execution Report Trade Message
n24x_equities_memo_sbe_v1_13.execution_report_trade_message = {}

-- Calculate size of: Execution Report Trade Message
n24x_equities_memo_sbe_v1_13.execution_report_trade_message.size = function(buffer, offset)
  local index = 0

  index = index + n24x_equities_memo_sbe_v1_13.sending_time.size

  index = index + n24x_equities_memo_sbe_v1_13.order_id.size

  index = index + n24x_equities_memo_sbe_v1_13.clordid.size

  index = index + n24x_equities_memo_sbe_v1_13.exec_id.size

  index = index + n24x_equities_memo_sbe_v1_13.ord_status.size

  index = index + n24x_equities_memo_sbe_v1_13.last_qty.size

  index = index + n24x_equities_memo_sbe_v1_13.last_px.size

  index = index + n24x_equities_memo_sbe_v1_13.leaves_qty.size

  index = index + n24x_equities_memo_sbe_v1_13.cum_qty.size

  index = index + n24x_equities_memo_sbe_v1_13.transact_time.size

  index = index + n24x_equities_memo_sbe_v1_13.last_liquidity_ind.size

  index = index + n24x_equities_memo_sbe_v1_13.last_mkt.size

  index = index + n24x_equities_memo_sbe_v1_13.trd_matching_id.size

  index = index + n24x_equities_memo_sbe_v1_13.link_id_optional.size

  index = index + n24x_equities_memo_sbe_v1_13.security_group.size

  index = index + n24x_equities_memo_sbe_v1_13.parties_groups.size(buffer, offset + index)

  return index
end

-- Display: Execution Report Trade Message
n24x_equities_memo_sbe_v1_13.execution_report_trade_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Execution Report Trade Message
n24x_equities_memo_sbe_v1_13.execution_report_trade_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Sending Time: 8 Byte Unsigned Fixed Width Integer
  index, sending_time = n24x_equities_memo_sbe_v1_13.sending_time.dissect(buffer, index, packet, parent)

  -- Order Id: 8 Byte Unsigned Fixed Width Integer
  index, order_id = n24x_equities_memo_sbe_v1_13.order_id.dissect(buffer, index, packet, parent)

  -- ClOrdId: 16 Byte Ascii String
  index, clordid = n24x_equities_memo_sbe_v1_13.clordid.dissect(buffer, index, packet, parent)

  -- Exec Id: 8 Byte Unsigned Fixed Width Integer
  index, exec_id = n24x_equities_memo_sbe_v1_13.exec_id.dissect(buffer, index, packet, parent)

  -- Ord Status: 1 Byte Ascii String Enum with 9 values
  index, ord_status = n24x_equities_memo_sbe_v1_13.ord_status.dissect(buffer, index, packet, parent)

  -- Last Qty: 4 Byte Unsigned Fixed Width Integer
  index, last_qty = n24x_equities_memo_sbe_v1_13.last_qty.dissect(buffer, index, packet, parent)

  -- Last Px: 8 Byte Signed Fixed Width Integer
  index, last_px = n24x_equities_memo_sbe_v1_13.last_px.dissect(buffer, index, packet, parent)

  -- Leaves Qty: 4 Byte Unsigned Fixed Width Integer
  index, leaves_qty = n24x_equities_memo_sbe_v1_13.leaves_qty.dissect(buffer, index, packet, parent)

  -- Cum Qty: 4 Byte Unsigned Fixed Width Integer
  index, cum_qty = n24x_equities_memo_sbe_v1_13.cum_qty.dissect(buffer, index, packet, parent)

  -- Transact Time: 8 Byte Unsigned Fixed Width Integer
  index, transact_time = n24x_equities_memo_sbe_v1_13.transact_time.dissect(buffer, index, packet, parent)

  -- Last Liquidity Ind: 1 Byte Unsigned Fixed Width Integer Enum with 24 values
  index, last_liquidity_ind = n24x_equities_memo_sbe_v1_13.last_liquidity_ind.dissect(buffer, index, packet, parent)

  -- Last Mkt: 4 Byte Ascii String
  index, last_mkt = n24x_equities_memo_sbe_v1_13.last_mkt.dissect(buffer, index, packet, parent)

  -- Trd Matching Id: 8 Byte Unsigned Fixed Width Integer
  index, trd_matching_id = n24x_equities_memo_sbe_v1_13.trd_matching_id.dissect(buffer, index, packet, parent)

  -- Link Id Optional: 4 Byte Ascii String Nullable
  index, link_id_optional = n24x_equities_memo_sbe_v1_13.link_id_optional.dissect(buffer, index, packet, parent)

  -- Security Group: 1 Byte Ascii String
  index, security_group = n24x_equities_memo_sbe_v1_13.security_group.dissect(buffer, index, packet, parent)

  -- Parties Groups: Struct of 2 fields
  index, parties_groups = n24x_equities_memo_sbe_v1_13.parties_groups.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Execution Report Trade Message
n24x_equities_memo_sbe_v1_13.execution_report_trade_message.dissect = function(buffer, offset, packet, parent)
  -- Optionally add dynamic struct element to protocol tree
  if show.execution_report_trade_message then
    local length = n24x_equities_memo_sbe_v1_13.execution_report_trade_message.size(buffer, offset)
    local range = buffer(offset, length)
    local display = n24x_equities_memo_sbe_v1_13.execution_report_trade_message.display(buffer, packet, parent)
    parent = parent:add(omi_n24x_equities_memo_sbe_v1_13.fields.execution_report_trade_message, range, display)
  end

  return n24x_equities_memo_sbe_v1_13.execution_report_trade_message.fields(buffer, offset, packet, parent)
end

-- Order Reject Reason
n24x_equities_memo_sbe_v1_13.order_reject_reason = {}

-- Size: Order Reject Reason
n24x_equities_memo_sbe_v1_13.order_reject_reason.size = 1

-- Display: Order Reject Reason
n24x_equities_memo_sbe_v1_13.order_reject_reason.display = function(value)
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
n24x_equities_memo_sbe_v1_13.order_reject_reason.dissect = function(buffer, offset, packet, parent)
  local length = n24x_equities_memo_sbe_v1_13.order_reject_reason.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = n24x_equities_memo_sbe_v1_13.order_reject_reason.display(value, buffer, offset, packet, parent)

  parent:add(omi_n24x_equities_memo_sbe_v1_13.fields.order_reject_reason, range, value, display)

  return offset + length, value
end

-- Execution Report Rejected Message
n24x_equities_memo_sbe_v1_13.execution_report_rejected_message = {}

-- Calculate size of: Execution Report Rejected Message
n24x_equities_memo_sbe_v1_13.execution_report_rejected_message.size = function(buffer, offset)
  local index = 0

  index = index + n24x_equities_memo_sbe_v1_13.sending_time.size

  index = index + n24x_equities_memo_sbe_v1_13.clordid.size

  index = index + n24x_equities_memo_sbe_v1_13.exec_id.size

  index = index + n24x_equities_memo_sbe_v1_13.ord_status.size

  index = index + n24x_equities_memo_sbe_v1_13.symbol.size

  index = index + n24x_equities_memo_sbe_v1_13.symbol_sfx.size

  index = index + n24x_equities_memo_sbe_v1_13.leaves_qty.size

  index = index + n24x_equities_memo_sbe_v1_13.cum_qty.size

  index = index + n24x_equities_memo_sbe_v1_13.order_reject_reason.size

  index = index + n24x_equities_memo_sbe_v1_13.link_id_optional.size

  index = index + n24x_equities_memo_sbe_v1_13.parties_groups.size(buffer, offset + index)

  return index
end

-- Display: Execution Report Rejected Message
n24x_equities_memo_sbe_v1_13.execution_report_rejected_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Execution Report Rejected Message
n24x_equities_memo_sbe_v1_13.execution_report_rejected_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Sending Time: 8 Byte Unsigned Fixed Width Integer
  index, sending_time = n24x_equities_memo_sbe_v1_13.sending_time.dissect(buffer, index, packet, parent)

  -- ClOrdId: 16 Byte Ascii String
  index, clordid = n24x_equities_memo_sbe_v1_13.clordid.dissect(buffer, index, packet, parent)

  -- Exec Id: 8 Byte Unsigned Fixed Width Integer
  index, exec_id = n24x_equities_memo_sbe_v1_13.exec_id.dissect(buffer, index, packet, parent)

  -- Ord Status: 1 Byte Ascii String Enum with 9 values
  index, ord_status = n24x_equities_memo_sbe_v1_13.ord_status.dissect(buffer, index, packet, parent)

  -- Symbol: 6 Byte Ascii String
  index, symbol = n24x_equities_memo_sbe_v1_13.symbol.dissect(buffer, index, packet, parent)

  -- Symbol Sfx: 6 Byte Ascii String Nullable
  index, symbol_sfx = n24x_equities_memo_sbe_v1_13.symbol_sfx.dissect(buffer, index, packet, parent)

  -- Leaves Qty: 4 Byte Unsigned Fixed Width Integer
  index, leaves_qty = n24x_equities_memo_sbe_v1_13.leaves_qty.dissect(buffer, index, packet, parent)

  -- Cum Qty: 4 Byte Unsigned Fixed Width Integer
  index, cum_qty = n24x_equities_memo_sbe_v1_13.cum_qty.dissect(buffer, index, packet, parent)

  -- Order Reject Reason: 1 Byte Unsigned Fixed Width Integer Enum with 95 values
  index, order_reject_reason = n24x_equities_memo_sbe_v1_13.order_reject_reason.dissect(buffer, index, packet, parent)

  -- Link Id Optional: 4 Byte Ascii String Nullable
  index, link_id_optional = n24x_equities_memo_sbe_v1_13.link_id_optional.dissect(buffer, index, packet, parent)

  -- Parties Groups: Struct of 2 fields
  index, parties_groups = n24x_equities_memo_sbe_v1_13.parties_groups.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Execution Report Rejected Message
n24x_equities_memo_sbe_v1_13.execution_report_rejected_message.dissect = function(buffer, offset, packet, parent)
  -- Optionally add dynamic struct element to protocol tree
  if show.execution_report_rejected_message then
    local length = n24x_equities_memo_sbe_v1_13.execution_report_rejected_message.size(buffer, offset)
    local range = buffer(offset, length)
    local display = n24x_equities_memo_sbe_v1_13.execution_report_rejected_message.display(buffer, packet, parent)
    parent = parent:add(omi_n24x_equities_memo_sbe_v1_13.fields.execution_report_rejected_message, range, display)
  end

  return n24x_equities_memo_sbe_v1_13.execution_report_rejected_message.fields(buffer, offset, packet, parent)
end

-- Risk Group Id
n24x_equities_memo_sbe_v1_13.risk_group_id = {}

-- Size: Risk Group Id
n24x_equities_memo_sbe_v1_13.risk_group_id.size = 2

-- Display: Risk Group Id
n24x_equities_memo_sbe_v1_13.risk_group_id.display = function(value)
  -- Check if field has value
  if value == 65535 then
    return "Risk Group Id: No Value"
  end

  return "Risk Group Id: "..value
end

-- Dissect: Risk Group Id
n24x_equities_memo_sbe_v1_13.risk_group_id.dissect = function(buffer, offset, packet, parent)
  local length = n24x_equities_memo_sbe_v1_13.risk_group_id.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = n24x_equities_memo_sbe_v1_13.risk_group_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_n24x_equities_memo_sbe_v1_13.fields.risk_group_id, range, value, display)

  return offset + length, value
end

-- Self Trade Prevention
n24x_equities_memo_sbe_v1_13.self_trade_prevention = {}

-- Size: Self Trade Prevention
n24x_equities_memo_sbe_v1_13.self_trade_prevention.size = 1

-- Display: Self Trade Prevention
n24x_equities_memo_sbe_v1_13.self_trade_prevention.display = function(value)
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
n24x_equities_memo_sbe_v1_13.self_trade_prevention.dissect = function(buffer, offset, packet, parent)
  local length = n24x_equities_memo_sbe_v1_13.self_trade_prevention.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = n24x_equities_memo_sbe_v1_13.self_trade_prevention.display(value, buffer, offset, packet, parent)

  parent:add(omi_n24x_equities_memo_sbe_v1_13.fields.self_trade_prevention, range, value, display)

  return offset + length, value
end

-- Stp Group Id
n24x_equities_memo_sbe_v1_13.stp_group_id = {}

-- Size: Stp Group Id
n24x_equities_memo_sbe_v1_13.stp_group_id.size = 2

-- Display: Stp Group Id
n24x_equities_memo_sbe_v1_13.stp_group_id.display = function(value)
  -- Check if field has value
  if value == 65535 then
    return "Stp Group Id: No Value"
  end

  return "Stp Group Id: "..value
end

-- Dissect: Stp Group Id
n24x_equities_memo_sbe_v1_13.stp_group_id.dissect = function(buffer, offset, packet, parent)
  local length = n24x_equities_memo_sbe_v1_13.stp_group_id.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = n24x_equities_memo_sbe_v1_13.stp_group_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_n24x_equities_memo_sbe_v1_13.fields.stp_group_id, range, value, display)

  return offset + length, value
end

-- Reprice Behavior
n24x_equities_memo_sbe_v1_13.reprice_behavior = {}

-- Size: Reprice Behavior
n24x_equities_memo_sbe_v1_13.reprice_behavior.size = 1

-- Display: Reprice Behavior
n24x_equities_memo_sbe_v1_13.reprice_behavior.display = function(value)
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
n24x_equities_memo_sbe_v1_13.reprice_behavior.dissect = function(buffer, offset, packet, parent)
  local length = n24x_equities_memo_sbe_v1_13.reprice_behavior.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = n24x_equities_memo_sbe_v1_13.reprice_behavior.display(value, buffer, offset, packet, parent)

  parent:add(omi_n24x_equities_memo_sbe_v1_13.fields.reprice_behavior, range, value, display)

  return offset + length, value
end

-- Reprice Frequency
n24x_equities_memo_sbe_v1_13.reprice_frequency = {}

-- Size: Reprice Frequency
n24x_equities_memo_sbe_v1_13.reprice_frequency.size = 1

-- Display: Reprice Frequency
n24x_equities_memo_sbe_v1_13.reprice_frequency.display = function(value)
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
n24x_equities_memo_sbe_v1_13.reprice_frequency.dissect = function(buffer, offset, packet, parent)
  local length = n24x_equities_memo_sbe_v1_13.reprice_frequency.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = n24x_equities_memo_sbe_v1_13.reprice_frequency.display(value, buffer, offset, packet, parent)

  parent:add(omi_n24x_equities_memo_sbe_v1_13.fields.reprice_frequency, range, value, display)

  return offset + length, value
end

-- Display Min Incr
n24x_equities_memo_sbe_v1_13.display_min_incr = {}

-- Size: Display Min Incr
n24x_equities_memo_sbe_v1_13.display_min_incr.size = 4

-- Display: Display Min Incr
n24x_equities_memo_sbe_v1_13.display_min_incr.display = function(value)
  -- Check if field has value
  if value == 4294967295 then
    return "Display Min Incr: No Value"
  end

  return "Display Min Incr: "..value
end

-- Dissect: Display Min Incr
n24x_equities_memo_sbe_v1_13.display_min_incr.dissect = function(buffer, offset, packet, parent)
  local length = n24x_equities_memo_sbe_v1_13.display_min_incr.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = n24x_equities_memo_sbe_v1_13.display_min_incr.display(value, buffer, offset, packet, parent)

  parent:add(omi_n24x_equities_memo_sbe_v1_13.fields.display_min_incr, range, value, display)

  return offset + length, value
end

-- Reserve Replenish Timing
n24x_equities_memo_sbe_v1_13.reserve_replenish_timing = {}

-- Size: Reserve Replenish Timing
n24x_equities_memo_sbe_v1_13.reserve_replenish_timing.size = 1

-- Display: Reserve Replenish Timing
n24x_equities_memo_sbe_v1_13.reserve_replenish_timing.display = function(value)
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
n24x_equities_memo_sbe_v1_13.reserve_replenish_timing.dissect = function(buffer, offset, packet, parent)
  local length = n24x_equities_memo_sbe_v1_13.reserve_replenish_timing.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = n24x_equities_memo_sbe_v1_13.reserve_replenish_timing.display(value, buffer, offset, packet, parent)

  parent:add(omi_n24x_equities_memo_sbe_v1_13.fields.reserve_replenish_timing, range, value, display)

  return offset + length, value
end

-- Display Method
n24x_equities_memo_sbe_v1_13.display_method = {}

-- Size: Display Method
n24x_equities_memo_sbe_v1_13.display_method.size = 1

-- Display: Display Method
n24x_equities_memo_sbe_v1_13.display_method.display = function(value)
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
n24x_equities_memo_sbe_v1_13.display_method.dissect = function(buffer, offset, packet, parent)
  local length = n24x_equities_memo_sbe_v1_13.display_method.size
  local range = buffer(offset, length)

  -- parse as byte
  local value = range:uint()

  -- check if value is non zero
  if value ~= 0 then
    value = range:string()
  end

  local display = n24x_equities_memo_sbe_v1_13.display_method.display(value, buffer, offset, packet, parent)

  parent:add(omi_n24x_equities_memo_sbe_v1_13.fields.display_method, range, value, display)

  return offset + length, value
end

-- Min Qty
n24x_equities_memo_sbe_v1_13.min_qty = {}

-- Size: Min Qty
n24x_equities_memo_sbe_v1_13.min_qty.size = 4

-- Display: Min Qty
n24x_equities_memo_sbe_v1_13.min_qty.display = function(value)
  -- Check if field has value
  if value == 4294967295 then
    return "Min Qty: No Value"
  end

  return "Min Qty: "..value
end

-- Dissect: Min Qty
n24x_equities_memo_sbe_v1_13.min_qty.dissect = function(buffer, offset, packet, parent)
  local length = n24x_equities_memo_sbe_v1_13.min_qty.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = n24x_equities_memo_sbe_v1_13.min_qty.display(value, buffer, offset, packet, parent)

  parent:add(omi_n24x_equities_memo_sbe_v1_13.fields.min_qty, range, value, display)

  return offset + length, value
end

-- Expire Time
n24x_equities_memo_sbe_v1_13.expire_time = {}

-- Size: Expire Time
n24x_equities_memo_sbe_v1_13.expire_time.size = 8

-- Display: Expire Time
n24x_equities_memo_sbe_v1_13.expire_time.display = function(value)
  -- Check if field has value
  if value == UInt64(0xFFFFFFFF, 0xFFFFFFFF) then
    return "Expire Time: No Value"
  end

  return "Expire Time: "..value
end

-- Dissect: Expire Time
n24x_equities_memo_sbe_v1_13.expire_time.dissect = function(buffer, offset, packet, parent)
  local length = n24x_equities_memo_sbe_v1_13.expire_time.size
  local range = buffer(offset, length)
  local value = range:uint64()
  local display = n24x_equities_memo_sbe_v1_13.expire_time.display(value, buffer, offset, packet, parent)

  parent:add(omi_n24x_equities_memo_sbe_v1_13.fields.expire_time, range, value, display)

  return offset + length, value
end

-- Peg Price Type
n24x_equities_memo_sbe_v1_13.peg_price_type = {}

-- Size: Peg Price Type
n24x_equities_memo_sbe_v1_13.peg_price_type.size = 1

-- Display: Peg Price Type
n24x_equities_memo_sbe_v1_13.peg_price_type.display = function(value)
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
n24x_equities_memo_sbe_v1_13.peg_price_type.dissect = function(buffer, offset, packet, parent)
  local length = n24x_equities_memo_sbe_v1_13.peg_price_type.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = n24x_equities_memo_sbe_v1_13.peg_price_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_n24x_equities_memo_sbe_v1_13.fields.peg_price_type, range, value, display)

  return offset + length, value
end

-- Peg Offset Value
n24x_equities_memo_sbe_v1_13.peg_offset_value = {}

-- Size: Peg Offset Value
n24x_equities_memo_sbe_v1_13.peg_offset_value.size = 8

-- Display: Peg Offset Value
n24x_equities_memo_sbe_v1_13.peg_offset_value.display = function(raw, value)
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
n24x_equities_memo_sbe_v1_13.peg_offset_value.dissect = function(buffer, offset, packet, parent)
  local length = n24x_equities_memo_sbe_v1_13.peg_offset_value.size
  local range = buffer(offset, length)
  local raw = range:int64()
  local value = translate.peg_offset_value(raw)
  local display = n24x_equities_memo_sbe_v1_13.peg_offset_value.display(raw, value, buffer, offset, packet, parent)

  parent:add(omi_n24x_equities_memo_sbe_v1_13.fields.peg_offset_value, range, value, display)

  return offset + length, value
end

-- Participate Do Not Initiate
n24x_equities_memo_sbe_v1_13.participate_do_not_initiate = {}

-- Intermarket Sweep
n24x_equities_memo_sbe_v1_13.intermarket_sweep = {}

-- External Routing Not Allowed
n24x_equities_memo_sbe_v1_13.external_routing_not_allowed = {}

-- Reserved 13
n24x_equities_memo_sbe_v1_13.reserved_13 = {}

-- Exec Inst
n24x_equities_memo_sbe_v1_13.exec_inst = {}

-- Size: Exec Inst
n24x_equities_memo_sbe_v1_13.exec_inst.size = 2

-- Display: Exec Inst
n24x_equities_memo_sbe_v1_13.exec_inst.display = function(buffer, packet, parent)
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
n24x_equities_memo_sbe_v1_13.exec_inst.bits = function(buffer, offset, packet, parent)

  -- Reserved 13: 13 Bit
  parent:add(omi_n24x_equities_memo_sbe_v1_13.fields.reserved_13, buffer(offset, 2))

  -- External Routing Not Allowed: 1 Bit
  parent:add(omi_n24x_equities_memo_sbe_v1_13.fields.external_routing_not_allowed, buffer(offset, 2))

  -- Intermarket Sweep: 1 Bit
  parent:add(omi_n24x_equities_memo_sbe_v1_13.fields.intermarket_sweep, buffer(offset, 2))

  -- Participate Do Not Initiate: 1 Bit
  parent:add(omi_n24x_equities_memo_sbe_v1_13.fields.participate_do_not_initiate, buffer(offset, 2))
end

-- Dissect: Exec Inst
n24x_equities_memo_sbe_v1_13.exec_inst.dissect = function(buffer, offset, packet, parent)
  local size = 2
  local range = buffer(offset, size)
  local display = n24x_equities_memo_sbe_v1_13.exec_inst.display(range, packet, parent)
  local element = parent:add(omi_n24x_equities_memo_sbe_v1_13.fields.exec_inst, range, display)

  if show.exec_inst then
    n24x_equities_memo_sbe_v1_13.exec_inst.bits(buffer, offset, packet, element)
  end

  return offset + 2, range
end

-- Cust Order Capacity Cust Order Capacity Type
n24x_equities_memo_sbe_v1_13.cust_order_capacity_cust_order_capacity_type = {}

-- Size: Cust Order Capacity Cust Order Capacity Type
n24x_equities_memo_sbe_v1_13.cust_order_capacity_cust_order_capacity_type.size = 1

-- Display: Cust Order Capacity Cust Order Capacity Type
n24x_equities_memo_sbe_v1_13.cust_order_capacity_cust_order_capacity_type.display = function(value)
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
n24x_equities_memo_sbe_v1_13.cust_order_capacity_cust_order_capacity_type.dissect = function(buffer, offset, packet, parent)
  local length = n24x_equities_memo_sbe_v1_13.cust_order_capacity_cust_order_capacity_type.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = n24x_equities_memo_sbe_v1_13.cust_order_capacity_cust_order_capacity_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_n24x_equities_memo_sbe_v1_13.fields.cust_order_capacity_cust_order_capacity_type, range, value, display)

  return offset + length, value
end

-- Order Capacity
n24x_equities_memo_sbe_v1_13.order_capacity = {}

-- Size: Order Capacity
n24x_equities_memo_sbe_v1_13.order_capacity.size = 1

-- Display: Order Capacity
n24x_equities_memo_sbe_v1_13.order_capacity.display = function(value)
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
n24x_equities_memo_sbe_v1_13.order_capacity.dissect = function(buffer, offset, packet, parent)
  local length = n24x_equities_memo_sbe_v1_13.order_capacity.size
  local range = buffer(offset, length)

  -- parse as byte
  local value = range:uint()

  -- check if value is non zero
  if value ~= 0 then
    value = range:string()
  end

  local display = n24x_equities_memo_sbe_v1_13.order_capacity.display(value, buffer, offset, packet, parent)

  parent:add(omi_n24x_equities_memo_sbe_v1_13.fields.order_capacity, range, value, display)

  return offset + length, value
end

-- Time In Force
n24x_equities_memo_sbe_v1_13.time_in_force = {}

-- Size: Time In Force
n24x_equities_memo_sbe_v1_13.time_in_force.size = 1

-- Display: Time In Force
n24x_equities_memo_sbe_v1_13.time_in_force.display = function(value)
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
n24x_equities_memo_sbe_v1_13.time_in_force.dissect = function(buffer, offset, packet, parent)
  local length = n24x_equities_memo_sbe_v1_13.time_in_force.size
  local range = buffer(offset, length)

  -- parse as byte
  local value = range:uint()

  -- check if value is non zero
  if value ~= 0 then
    value = range:string()
  end

  local display = n24x_equities_memo_sbe_v1_13.time_in_force.display(value, buffer, offset, packet, parent)

  parent:add(omi_n24x_equities_memo_sbe_v1_13.fields.time_in_force, range, value, display)

  return offset + length, value
end

-- Execution Report New Message
n24x_equities_memo_sbe_v1_13.execution_report_new_message = {}

-- Calculate size of: Execution Report New Message
n24x_equities_memo_sbe_v1_13.execution_report_new_message.size = function(buffer, offset)
  local index = 0

  index = index + n24x_equities_memo_sbe_v1_13.sending_time.size

  index = index + n24x_equities_memo_sbe_v1_13.order_id.size

  index = index + n24x_equities_memo_sbe_v1_13.clordid.size

  index = index + n24x_equities_memo_sbe_v1_13.exec_id.size

  index = index + n24x_equities_memo_sbe_v1_13.ord_status.size

  index = index + n24x_equities_memo_sbe_v1_13.symbol.size

  index = index + n24x_equities_memo_sbe_v1_13.symbol_sfx.size

  index = index + n24x_equities_memo_sbe_v1_13.side.size

  index = index + n24x_equities_memo_sbe_v1_13.ord_type.size

  index = index + n24x_equities_memo_sbe_v1_13.order_qty.size

  index = index + n24x_equities_memo_sbe_v1_13.price.size

  index = index + n24x_equities_memo_sbe_v1_13.time_in_force.size

  index = index + n24x_equities_memo_sbe_v1_13.order_capacity.size

  index = index + n24x_equities_memo_sbe_v1_13.cust_order_capacity_cust_order_capacity_type.size

  index = index + n24x_equities_memo_sbe_v1_13.exec_inst.size

  index = index + n24x_equities_memo_sbe_v1_13.peg_offset_value.size

  index = index + n24x_equities_memo_sbe_v1_13.peg_price_type.size

  index = index + n24x_equities_memo_sbe_v1_13.expire_time.size

  index = index + n24x_equities_memo_sbe_v1_13.min_qty.size

  index = index + n24x_equities_memo_sbe_v1_13.display_qty.size

  index = index + n24x_equities_memo_sbe_v1_13.display_method.size

  index = index + n24x_equities_memo_sbe_v1_13.reserve_replenish_timing.size

  index = index + n24x_equities_memo_sbe_v1_13.display_min_incr.size

  index = index + n24x_equities_memo_sbe_v1_13.locate_reqd.size

  index = index + n24x_equities_memo_sbe_v1_13.reprice_frequency.size

  index = index + n24x_equities_memo_sbe_v1_13.reprice_behavior.size

  index = index + n24x_equities_memo_sbe_v1_13.cancel_group_id.size

  index = index + n24x_equities_memo_sbe_v1_13.stp_group_id.size

  index = index + n24x_equities_memo_sbe_v1_13.self_trade_prevention.size

  index = index + n24x_equities_memo_sbe_v1_13.risk_group_id.size

  index = index + n24x_equities_memo_sbe_v1_13.leaves_qty.size

  index = index + n24x_equities_memo_sbe_v1_13.cum_qty.size

  index = index + n24x_equities_memo_sbe_v1_13.transact_time.size

  index = index + n24x_equities_memo_sbe_v1_13.link_id_optional.size

  index = index + n24x_equities_memo_sbe_v1_13.locate_broker_optional.size

  index = index + n24x_equities_memo_sbe_v1_13.parties_groups.size(buffer, offset + index)

  return index
end

-- Display: Execution Report New Message
n24x_equities_memo_sbe_v1_13.execution_report_new_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Execution Report New Message
n24x_equities_memo_sbe_v1_13.execution_report_new_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Sending Time: 8 Byte Unsigned Fixed Width Integer
  index, sending_time = n24x_equities_memo_sbe_v1_13.sending_time.dissect(buffer, index, packet, parent)

  -- Order Id: 8 Byte Unsigned Fixed Width Integer
  index, order_id = n24x_equities_memo_sbe_v1_13.order_id.dissect(buffer, index, packet, parent)

  -- ClOrdId: 16 Byte Ascii String
  index, clordid = n24x_equities_memo_sbe_v1_13.clordid.dissect(buffer, index, packet, parent)

  -- Exec Id: 8 Byte Unsigned Fixed Width Integer
  index, exec_id = n24x_equities_memo_sbe_v1_13.exec_id.dissect(buffer, index, packet, parent)

  -- Ord Status: 1 Byte Ascii String Enum with 9 values
  index, ord_status = n24x_equities_memo_sbe_v1_13.ord_status.dissect(buffer, index, packet, parent)

  -- Symbol: 6 Byte Ascii String
  index, symbol = n24x_equities_memo_sbe_v1_13.symbol.dissect(buffer, index, packet, parent)

  -- Symbol Sfx: 6 Byte Ascii String Nullable
  index, symbol_sfx = n24x_equities_memo_sbe_v1_13.symbol_sfx.dissect(buffer, index, packet, parent)

  -- Side: 1 Byte Ascii String Enum with 4 values
  index, side = n24x_equities_memo_sbe_v1_13.side.dissect(buffer, index, packet, parent)

  -- Ord Type: 1 Byte Ascii String Enum with 3 values
  index, ord_type = n24x_equities_memo_sbe_v1_13.ord_type.dissect(buffer, index, packet, parent)

  -- Order Qty: 4 Byte Unsigned Fixed Width Integer
  index, order_qty = n24x_equities_memo_sbe_v1_13.order_qty.dissect(buffer, index, packet, parent)

  -- Price: 8 Byte Signed Fixed Width Integer Nullable
  index, price = n24x_equities_memo_sbe_v1_13.price.dissect(buffer, index, packet, parent)

  -- Time In Force: 1 Byte Ascii String Enum with 5 values
  index, time_in_force = n24x_equities_memo_sbe_v1_13.time_in_force.dissect(buffer, index, packet, parent)

  -- Order Capacity: 1 Byte Ascii String Enum with 3 values
  index, order_capacity = n24x_equities_memo_sbe_v1_13.order_capacity.dissect(buffer, index, packet, parent)

  -- Cust Order Capacity Cust Order Capacity Type: 1 Byte Unsigned Fixed Width Integer Enum with 3 values
  index, cust_order_capacity_cust_order_capacity_type = n24x_equities_memo_sbe_v1_13.cust_order_capacity_cust_order_capacity_type.dissect(buffer, index, packet, parent)

  -- Exec Inst: Struct of 4 fields
  index, exec_inst = n24x_equities_memo_sbe_v1_13.exec_inst.dissect(buffer, index, packet, parent)

  -- Peg Offset Value: 8 Byte Signed Fixed Width Integer Nullable
  index, peg_offset_value = n24x_equities_memo_sbe_v1_13.peg_offset_value.dissect(buffer, index, packet, parent)

  -- Peg Price Type: 1 Byte Unsigned Fixed Width Integer Enum with 4 values
  index, peg_price_type = n24x_equities_memo_sbe_v1_13.peg_price_type.dissect(buffer, index, packet, parent)

  -- Expire Time: 8 Byte Unsigned Fixed Width Integer Nullable
  index, expire_time = n24x_equities_memo_sbe_v1_13.expire_time.dissect(buffer, index, packet, parent)

  -- Min Qty: 4 Byte Unsigned Fixed Width Integer Nullable
  index, min_qty = n24x_equities_memo_sbe_v1_13.min_qty.dissect(buffer, index, packet, parent)

  -- Display Qty: 4 Byte Unsigned Fixed Width Integer Nullable
  index, display_qty = n24x_equities_memo_sbe_v1_13.display_qty.dissect(buffer, index, packet, parent)

  -- Display Method: 1 Byte Ascii String Enum with 4 values
  index, display_method = n24x_equities_memo_sbe_v1_13.display_method.dissect(buffer, index, packet, parent)

  -- Reserve Replenish Timing: 1 Byte Unsigned Fixed Width Integer Enum with 4 values
  index, reserve_replenish_timing = n24x_equities_memo_sbe_v1_13.reserve_replenish_timing.dissect(buffer, index, packet, parent)

  -- Display Min Incr: 4 Byte Unsigned Fixed Width Integer Nullable
  index, display_min_incr = n24x_equities_memo_sbe_v1_13.display_min_incr.dissect(buffer, index, packet, parent)

  -- Locate Reqd: 1 Byte Ascii String Nullable
  index, locate_reqd = n24x_equities_memo_sbe_v1_13.locate_reqd.dissect(buffer, index, packet, parent)

  -- Reprice Frequency: 1 Byte Unsigned Fixed Width Integer Enum with 5 values
  index, reprice_frequency = n24x_equities_memo_sbe_v1_13.reprice_frequency.dissect(buffer, index, packet, parent)

  -- Reprice Behavior: 1 Byte Unsigned Fixed Width Integer Enum with 4 values
  index, reprice_behavior = n24x_equities_memo_sbe_v1_13.reprice_behavior.dissect(buffer, index, packet, parent)

  -- Cancel Group Id: 2 Byte Unsigned Fixed Width Integer Nullable
  index, cancel_group_id = n24x_equities_memo_sbe_v1_13.cancel_group_id.dissect(buffer, index, packet, parent)

  -- Stp Group Id: 2 Byte Unsigned Fixed Width Integer Nullable
  index, stp_group_id = n24x_equities_memo_sbe_v1_13.stp_group_id.dissect(buffer, index, packet, parent)

  -- Self Trade Prevention: 1 Byte Unsigned Fixed Width Integer Enum with 7 values
  index, self_trade_prevention = n24x_equities_memo_sbe_v1_13.self_trade_prevention.dissect(buffer, index, packet, parent)

  -- Risk Group Id: 2 Byte Unsigned Fixed Width Integer Nullable
  index, risk_group_id = n24x_equities_memo_sbe_v1_13.risk_group_id.dissect(buffer, index, packet, parent)

  -- Leaves Qty: 4 Byte Unsigned Fixed Width Integer
  index, leaves_qty = n24x_equities_memo_sbe_v1_13.leaves_qty.dissect(buffer, index, packet, parent)

  -- Cum Qty: 4 Byte Unsigned Fixed Width Integer
  index, cum_qty = n24x_equities_memo_sbe_v1_13.cum_qty.dissect(buffer, index, packet, parent)

  -- Transact Time: 8 Byte Unsigned Fixed Width Integer
  index, transact_time = n24x_equities_memo_sbe_v1_13.transact_time.dissect(buffer, index, packet, parent)

  -- Link Id Optional: 4 Byte Ascii String Nullable
  index, link_id_optional = n24x_equities_memo_sbe_v1_13.link_id_optional.dissect(buffer, index, packet, parent)

  -- Locate Broker Optional: 4 Byte Ascii String Nullable
  index, locate_broker_optional = n24x_equities_memo_sbe_v1_13.locate_broker_optional.dissect(buffer, index, packet, parent)

  -- Parties Groups: Struct of 2 fields
  index, parties_groups = n24x_equities_memo_sbe_v1_13.parties_groups.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Execution Report New Message
n24x_equities_memo_sbe_v1_13.execution_report_new_message.dissect = function(buffer, offset, packet, parent)
  -- Optionally add dynamic struct element to protocol tree
  if show.execution_report_new_message then
    local length = n24x_equities_memo_sbe_v1_13.execution_report_new_message.size(buffer, offset)
    local range = buffer(offset, length)
    local display = n24x_equities_memo_sbe_v1_13.execution_report_new_message.display(buffer, packet, parent)
    parent = parent:add(omi_n24x_equities_memo_sbe_v1_13.fields.execution_report_new_message, range, display)
  end

  return n24x_equities_memo_sbe_v1_13.execution_report_new_message.fields(buffer, offset, packet, parent)
end

-- Execution Report Pending New Message
n24x_equities_memo_sbe_v1_13.execution_report_pending_new_message = {}

-- Calculate size of: Execution Report Pending New Message
n24x_equities_memo_sbe_v1_13.execution_report_pending_new_message.size = function(buffer, offset)
  local index = 0

  index = index + n24x_equities_memo_sbe_v1_13.sending_time.size

  index = index + n24x_equities_memo_sbe_v1_13.order_id.size

  index = index + n24x_equities_memo_sbe_v1_13.clordid.size

  index = index + n24x_equities_memo_sbe_v1_13.exec_id.size

  index = index + n24x_equities_memo_sbe_v1_13.ord_status.size

  index = index + n24x_equities_memo_sbe_v1_13.symbol.size

  index = index + n24x_equities_memo_sbe_v1_13.symbol_sfx.size

  index = index + n24x_equities_memo_sbe_v1_13.side.size

  index = index + n24x_equities_memo_sbe_v1_13.ord_type.size

  index = index + n24x_equities_memo_sbe_v1_13.order_qty.size

  index = index + n24x_equities_memo_sbe_v1_13.price.size

  index = index + n24x_equities_memo_sbe_v1_13.time_in_force.size

  index = index + n24x_equities_memo_sbe_v1_13.order_capacity.size

  index = index + n24x_equities_memo_sbe_v1_13.cust_order_capacity_cust_order_capacity_type.size

  index = index + n24x_equities_memo_sbe_v1_13.exec_inst.size

  index = index + n24x_equities_memo_sbe_v1_13.peg_offset_value.size

  index = index + n24x_equities_memo_sbe_v1_13.peg_price_type.size

  index = index + n24x_equities_memo_sbe_v1_13.expire_time.size

  index = index + n24x_equities_memo_sbe_v1_13.min_qty.size

  index = index + n24x_equities_memo_sbe_v1_13.display_qty.size

  index = index + n24x_equities_memo_sbe_v1_13.display_method.size

  index = index + n24x_equities_memo_sbe_v1_13.reserve_replenish_timing.size

  index = index + n24x_equities_memo_sbe_v1_13.display_min_incr.size

  index = index + n24x_equities_memo_sbe_v1_13.locate_reqd.size

  index = index + n24x_equities_memo_sbe_v1_13.reprice_frequency.size

  index = index + n24x_equities_memo_sbe_v1_13.reprice_behavior.size

  index = index + n24x_equities_memo_sbe_v1_13.cancel_group_id.size

  index = index + n24x_equities_memo_sbe_v1_13.stp_group_id.size

  index = index + n24x_equities_memo_sbe_v1_13.self_trade_prevention.size

  index = index + n24x_equities_memo_sbe_v1_13.risk_group_id.size

  index = index + n24x_equities_memo_sbe_v1_13.leaves_qty.size

  index = index + n24x_equities_memo_sbe_v1_13.cum_qty.size

  index = index + n24x_equities_memo_sbe_v1_13.link_id_optional.size

  index = index + n24x_equities_memo_sbe_v1_13.locate_broker_optional.size

  index = index + n24x_equities_memo_sbe_v1_13.parties_groups.size(buffer, offset + index)

  return index
end

-- Display: Execution Report Pending New Message
n24x_equities_memo_sbe_v1_13.execution_report_pending_new_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Execution Report Pending New Message
n24x_equities_memo_sbe_v1_13.execution_report_pending_new_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Sending Time: 8 Byte Unsigned Fixed Width Integer
  index, sending_time = n24x_equities_memo_sbe_v1_13.sending_time.dissect(buffer, index, packet, parent)

  -- Order Id: 8 Byte Unsigned Fixed Width Integer
  index, order_id = n24x_equities_memo_sbe_v1_13.order_id.dissect(buffer, index, packet, parent)

  -- ClOrdId: 16 Byte Ascii String
  index, clordid = n24x_equities_memo_sbe_v1_13.clordid.dissect(buffer, index, packet, parent)

  -- Exec Id: 8 Byte Unsigned Fixed Width Integer
  index, exec_id = n24x_equities_memo_sbe_v1_13.exec_id.dissect(buffer, index, packet, parent)

  -- Ord Status: 1 Byte Ascii String Enum with 9 values
  index, ord_status = n24x_equities_memo_sbe_v1_13.ord_status.dissect(buffer, index, packet, parent)

  -- Symbol: 6 Byte Ascii String
  index, symbol = n24x_equities_memo_sbe_v1_13.symbol.dissect(buffer, index, packet, parent)

  -- Symbol Sfx: 6 Byte Ascii String Nullable
  index, symbol_sfx = n24x_equities_memo_sbe_v1_13.symbol_sfx.dissect(buffer, index, packet, parent)

  -- Side: 1 Byte Ascii String Enum with 4 values
  index, side = n24x_equities_memo_sbe_v1_13.side.dissect(buffer, index, packet, parent)

  -- Ord Type: 1 Byte Ascii String Enum with 3 values
  index, ord_type = n24x_equities_memo_sbe_v1_13.ord_type.dissect(buffer, index, packet, parent)

  -- Order Qty: 4 Byte Unsigned Fixed Width Integer
  index, order_qty = n24x_equities_memo_sbe_v1_13.order_qty.dissect(buffer, index, packet, parent)

  -- Price: 8 Byte Signed Fixed Width Integer Nullable
  index, price = n24x_equities_memo_sbe_v1_13.price.dissect(buffer, index, packet, parent)

  -- Time In Force: 1 Byte Ascii String Enum with 5 values
  index, time_in_force = n24x_equities_memo_sbe_v1_13.time_in_force.dissect(buffer, index, packet, parent)

  -- Order Capacity: 1 Byte Ascii String Enum with 3 values
  index, order_capacity = n24x_equities_memo_sbe_v1_13.order_capacity.dissect(buffer, index, packet, parent)

  -- Cust Order Capacity Cust Order Capacity Type: 1 Byte Unsigned Fixed Width Integer Enum with 3 values
  index, cust_order_capacity_cust_order_capacity_type = n24x_equities_memo_sbe_v1_13.cust_order_capacity_cust_order_capacity_type.dissect(buffer, index, packet, parent)

  -- Exec Inst: Struct of 4 fields
  index, exec_inst = n24x_equities_memo_sbe_v1_13.exec_inst.dissect(buffer, index, packet, parent)

  -- Peg Offset Value: 8 Byte Signed Fixed Width Integer Nullable
  index, peg_offset_value = n24x_equities_memo_sbe_v1_13.peg_offset_value.dissect(buffer, index, packet, parent)

  -- Peg Price Type: 1 Byte Unsigned Fixed Width Integer Enum with 4 values
  index, peg_price_type = n24x_equities_memo_sbe_v1_13.peg_price_type.dissect(buffer, index, packet, parent)

  -- Expire Time: 8 Byte Unsigned Fixed Width Integer Nullable
  index, expire_time = n24x_equities_memo_sbe_v1_13.expire_time.dissect(buffer, index, packet, parent)

  -- Min Qty: 4 Byte Unsigned Fixed Width Integer Nullable
  index, min_qty = n24x_equities_memo_sbe_v1_13.min_qty.dissect(buffer, index, packet, parent)

  -- Display Qty: 4 Byte Unsigned Fixed Width Integer Nullable
  index, display_qty = n24x_equities_memo_sbe_v1_13.display_qty.dissect(buffer, index, packet, parent)

  -- Display Method: 1 Byte Ascii String Enum with 4 values
  index, display_method = n24x_equities_memo_sbe_v1_13.display_method.dissect(buffer, index, packet, parent)

  -- Reserve Replenish Timing: 1 Byte Unsigned Fixed Width Integer Enum with 4 values
  index, reserve_replenish_timing = n24x_equities_memo_sbe_v1_13.reserve_replenish_timing.dissect(buffer, index, packet, parent)

  -- Display Min Incr: 4 Byte Unsigned Fixed Width Integer Nullable
  index, display_min_incr = n24x_equities_memo_sbe_v1_13.display_min_incr.dissect(buffer, index, packet, parent)

  -- Locate Reqd: 1 Byte Ascii String Nullable
  index, locate_reqd = n24x_equities_memo_sbe_v1_13.locate_reqd.dissect(buffer, index, packet, parent)

  -- Reprice Frequency: 1 Byte Unsigned Fixed Width Integer Enum with 5 values
  index, reprice_frequency = n24x_equities_memo_sbe_v1_13.reprice_frequency.dissect(buffer, index, packet, parent)

  -- Reprice Behavior: 1 Byte Unsigned Fixed Width Integer Enum with 4 values
  index, reprice_behavior = n24x_equities_memo_sbe_v1_13.reprice_behavior.dissect(buffer, index, packet, parent)

  -- Cancel Group Id: 2 Byte Unsigned Fixed Width Integer Nullable
  index, cancel_group_id = n24x_equities_memo_sbe_v1_13.cancel_group_id.dissect(buffer, index, packet, parent)

  -- Stp Group Id: 2 Byte Unsigned Fixed Width Integer Nullable
  index, stp_group_id = n24x_equities_memo_sbe_v1_13.stp_group_id.dissect(buffer, index, packet, parent)

  -- Self Trade Prevention: 1 Byte Unsigned Fixed Width Integer Enum with 7 values
  index, self_trade_prevention = n24x_equities_memo_sbe_v1_13.self_trade_prevention.dissect(buffer, index, packet, parent)

  -- Risk Group Id: 2 Byte Unsigned Fixed Width Integer Nullable
  index, risk_group_id = n24x_equities_memo_sbe_v1_13.risk_group_id.dissect(buffer, index, packet, parent)

  -- Leaves Qty: 4 Byte Unsigned Fixed Width Integer
  index, leaves_qty = n24x_equities_memo_sbe_v1_13.leaves_qty.dissect(buffer, index, packet, parent)

  -- Cum Qty: 4 Byte Unsigned Fixed Width Integer
  index, cum_qty = n24x_equities_memo_sbe_v1_13.cum_qty.dissect(buffer, index, packet, parent)

  -- Link Id Optional: 4 Byte Ascii String Nullable
  index, link_id_optional = n24x_equities_memo_sbe_v1_13.link_id_optional.dissect(buffer, index, packet, parent)

  -- Locate Broker Optional: 4 Byte Ascii String Nullable
  index, locate_broker_optional = n24x_equities_memo_sbe_v1_13.locate_broker_optional.dissect(buffer, index, packet, parent)

  -- Parties Groups: Struct of 2 fields
  index, parties_groups = n24x_equities_memo_sbe_v1_13.parties_groups.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Execution Report Pending New Message
n24x_equities_memo_sbe_v1_13.execution_report_pending_new_message.dissect = function(buffer, offset, packet, parent)
  -- Optionally add dynamic struct element to protocol tree
  if show.execution_report_pending_new_message then
    local length = n24x_equities_memo_sbe_v1_13.execution_report_pending_new_message.size(buffer, offset)
    local range = buffer(offset, length)
    local display = n24x_equities_memo_sbe_v1_13.execution_report_pending_new_message.display(buffer, packet, parent)
    parent = parent:add(omi_n24x_equities_memo_sbe_v1_13.fields.execution_report_pending_new_message, range, display)
  end

  return n24x_equities_memo_sbe_v1_13.execution_report_pending_new_message.fields(buffer, offset, packet, parent)
end

-- Mass Cancel Request Message
n24x_equities_memo_sbe_v1_13.mass_cancel_request_message = {}

-- Calculate size of: Mass Cancel Request Message
n24x_equities_memo_sbe_v1_13.mass_cancel_request_message.size = function(buffer, offset)
  local index = 0

  index = index + n24x_equities_memo_sbe_v1_13.clordid.size

  index = index + n24x_equities_memo_sbe_v1_13.symbol.size

  index = index + n24x_equities_memo_sbe_v1_13.symbol_sfx.size

  index = index + n24x_equities_memo_sbe_v1_13.side_optional.size

  index = index + n24x_equities_memo_sbe_v1_13.lower_than_price.size

  index = index + n24x_equities_memo_sbe_v1_13.higher_than_price.size

  index = index + n24x_equities_memo_sbe_v1_13.cancel_group_id.size

  return index
end

-- Display: Mass Cancel Request Message
n24x_equities_memo_sbe_v1_13.mass_cancel_request_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Mass Cancel Request Message
n24x_equities_memo_sbe_v1_13.mass_cancel_request_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- ClOrdId: 16 Byte Ascii String
  index, clordid = n24x_equities_memo_sbe_v1_13.clordid.dissect(buffer, index, packet, parent)

  -- Symbol: 6 Byte Ascii String
  index, symbol = n24x_equities_memo_sbe_v1_13.symbol.dissect(buffer, index, packet, parent)

  -- Symbol Sfx: 6 Byte Ascii String Nullable
  index, symbol_sfx = n24x_equities_memo_sbe_v1_13.symbol_sfx.dissect(buffer, index, packet, parent)

  -- Side Optional: 1 Byte Ascii String Enum with 5 values
  index, side_optional = n24x_equities_memo_sbe_v1_13.side_optional.dissect(buffer, index, packet, parent)

  -- Lower Than Price: 8 Byte Signed Fixed Width Integer Nullable
  index, lower_than_price = n24x_equities_memo_sbe_v1_13.lower_than_price.dissect(buffer, index, packet, parent)

  -- Higher Than Price: 8 Byte Signed Fixed Width Integer Nullable
  index, higher_than_price = n24x_equities_memo_sbe_v1_13.higher_than_price.dissect(buffer, index, packet, parent)

  -- Cancel Group Id: 2 Byte Unsigned Fixed Width Integer Nullable
  index, cancel_group_id = n24x_equities_memo_sbe_v1_13.cancel_group_id.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Mass Cancel Request Message
n24x_equities_memo_sbe_v1_13.mass_cancel_request_message.dissect = function(buffer, offset, packet, parent)
  if show.mass_cancel_request_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_n24x_equities_memo_sbe_v1_13.fields.mass_cancel_request_message, buffer(offset, 0))
    local index = n24x_equities_memo_sbe_v1_13.mass_cancel_request_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = n24x_equities_memo_sbe_v1_13.mass_cancel_request_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return n24x_equities_memo_sbe_v1_13.mass_cancel_request_message.fields(buffer, offset, packet, parent)
  end
end

-- Order Id Optional
n24x_equities_memo_sbe_v1_13.order_id_optional = {}

-- Size: Order Id Optional
n24x_equities_memo_sbe_v1_13.order_id_optional.size = 8

-- Display: Order Id Optional
n24x_equities_memo_sbe_v1_13.order_id_optional.display = function(value)
  -- Check if field has value
  if value == UInt64(0xFFFFFFFF, 0xFFFFFFFF) then
    return "Order Id Optional: No Value"
  end

  return "Order Id Optional: "..value
end

-- Dissect: Order Id Optional
n24x_equities_memo_sbe_v1_13.order_id_optional.dissect = function(buffer, offset, packet, parent)
  local length = n24x_equities_memo_sbe_v1_13.order_id_optional.size
  local range = buffer(offset, length)
  local value = range:uint64()
  local display = n24x_equities_memo_sbe_v1_13.order_id_optional.display(value, buffer, offset, packet, parent)

  parent:add(omi_n24x_equities_memo_sbe_v1_13.fields.order_id_optional, range, value, display)

  return offset + length, value
end

-- Order Cancel Request Message
n24x_equities_memo_sbe_v1_13.order_cancel_request_message = {}

-- Calculate size of: Order Cancel Request Message
n24x_equities_memo_sbe_v1_13.order_cancel_request_message.size = function(buffer, offset)
  local index = 0

  index = index + n24x_equities_memo_sbe_v1_13.origclordid_optional.size

  index = index + n24x_equities_memo_sbe_v1_13.order_id_optional.size

  index = index + n24x_equities_memo_sbe_v1_13.clordid.size

  index = index + n24x_equities_memo_sbe_v1_13.symbol.size

  index = index + n24x_equities_memo_sbe_v1_13.symbol_sfx.size

  return index
end

-- Display: Order Cancel Request Message
n24x_equities_memo_sbe_v1_13.order_cancel_request_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Order Cancel Request Message
n24x_equities_memo_sbe_v1_13.order_cancel_request_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- OrigClOrdId Optional: 16 Byte Ascii String Nullable
  index, origclordid_optional = n24x_equities_memo_sbe_v1_13.origclordid_optional.dissect(buffer, index, packet, parent)

  -- Order Id Optional: 8 Byte Unsigned Fixed Width Integer Nullable
  index, order_id_optional = n24x_equities_memo_sbe_v1_13.order_id_optional.dissect(buffer, index, packet, parent)

  -- ClOrdId: 16 Byte Ascii String
  index, clordid = n24x_equities_memo_sbe_v1_13.clordid.dissect(buffer, index, packet, parent)

  -- Symbol: 6 Byte Ascii String
  index, symbol = n24x_equities_memo_sbe_v1_13.symbol.dissect(buffer, index, packet, parent)

  -- Symbol Sfx: 6 Byte Ascii String Nullable
  index, symbol_sfx = n24x_equities_memo_sbe_v1_13.symbol_sfx.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Order Cancel Request Message
n24x_equities_memo_sbe_v1_13.order_cancel_request_message.dissect = function(buffer, offset, packet, parent)
  if show.order_cancel_request_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_n24x_equities_memo_sbe_v1_13.fields.order_cancel_request_message, buffer(offset, 0))
    local index = n24x_equities_memo_sbe_v1_13.order_cancel_request_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = n24x_equities_memo_sbe_v1_13.order_cancel_request_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return n24x_equities_memo_sbe_v1_13.order_cancel_request_message.fields(buffer, offset, packet, parent)
  end
end

-- OrigClOrdId
n24x_equities_memo_sbe_v1_13.origclordid = {}

-- Size: OrigClOrdId
n24x_equities_memo_sbe_v1_13.origclordid.size = 16

-- Display: OrigClOrdId
n24x_equities_memo_sbe_v1_13.origclordid.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "OrigClOrdId: No Value"
  end

  return "OrigClOrdId: "..value
end

-- Dissect: OrigClOrdId
n24x_equities_memo_sbe_v1_13.origclordid.dissect = function(buffer, offset, packet, parent)
  local length = n24x_equities_memo_sbe_v1_13.origclordid.size
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

  local display = n24x_equities_memo_sbe_v1_13.origclordid.display(value, buffer, offset, packet, parent)

  parent:add(omi_n24x_equities_memo_sbe_v1_13.fields.origclordid, range, value, display)

  return offset + length, value
end

-- Order Cancel Replace Request Message
n24x_equities_memo_sbe_v1_13.order_cancel_replace_request_message = {}

-- Calculate size of: Order Cancel Replace Request Message
n24x_equities_memo_sbe_v1_13.order_cancel_replace_request_message.size = function(buffer, offset)
  local index = 0

  index = index + n24x_equities_memo_sbe_v1_13.origclordid.size

  index = index + n24x_equities_memo_sbe_v1_13.clordid.size

  index = index + n24x_equities_memo_sbe_v1_13.symbol.size

  index = index + n24x_equities_memo_sbe_v1_13.symbol_sfx.size

  index = index + n24x_equities_memo_sbe_v1_13.side.size

  index = index + n24x_equities_memo_sbe_v1_13.order_qty.size

  index = index + n24x_equities_memo_sbe_v1_13.ord_type.size

  index = index + n24x_equities_memo_sbe_v1_13.price.size

  index = index + n24x_equities_memo_sbe_v1_13.display_qty.size

  index = index + n24x_equities_memo_sbe_v1_13.locate_reqd.size

  index = index + n24x_equities_memo_sbe_v1_13.link_id_optional.size

  index = index + n24x_equities_memo_sbe_v1_13.locate_broker_optional.size

  return index
end

-- Display: Order Cancel Replace Request Message
n24x_equities_memo_sbe_v1_13.order_cancel_replace_request_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Order Cancel Replace Request Message
n24x_equities_memo_sbe_v1_13.order_cancel_replace_request_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- OrigClOrdId: 16 Byte Ascii String
  index, origclordid = n24x_equities_memo_sbe_v1_13.origclordid.dissect(buffer, index, packet, parent)

  -- ClOrdId: 16 Byte Ascii String
  index, clordid = n24x_equities_memo_sbe_v1_13.clordid.dissect(buffer, index, packet, parent)

  -- Symbol: 6 Byte Ascii String
  index, symbol = n24x_equities_memo_sbe_v1_13.symbol.dissect(buffer, index, packet, parent)

  -- Symbol Sfx: 6 Byte Ascii String Nullable
  index, symbol_sfx = n24x_equities_memo_sbe_v1_13.symbol_sfx.dissect(buffer, index, packet, parent)

  -- Side: 1 Byte Ascii String Enum with 4 values
  index, side = n24x_equities_memo_sbe_v1_13.side.dissect(buffer, index, packet, parent)

  -- Order Qty: 4 Byte Unsigned Fixed Width Integer
  index, order_qty = n24x_equities_memo_sbe_v1_13.order_qty.dissect(buffer, index, packet, parent)

  -- Ord Type: 1 Byte Ascii String Enum with 3 values
  index, ord_type = n24x_equities_memo_sbe_v1_13.ord_type.dissect(buffer, index, packet, parent)

  -- Price: 8 Byte Signed Fixed Width Integer Nullable
  index, price = n24x_equities_memo_sbe_v1_13.price.dissect(buffer, index, packet, parent)

  -- Display Qty: 4 Byte Unsigned Fixed Width Integer Nullable
  index, display_qty = n24x_equities_memo_sbe_v1_13.display_qty.dissect(buffer, index, packet, parent)

  -- Locate Reqd: 1 Byte Ascii String Nullable
  index, locate_reqd = n24x_equities_memo_sbe_v1_13.locate_reqd.dissect(buffer, index, packet, parent)

  -- Link Id Optional: 4 Byte Ascii String Nullable
  index, link_id_optional = n24x_equities_memo_sbe_v1_13.link_id_optional.dissect(buffer, index, packet, parent)

  -- Locate Broker Optional: 4 Byte Ascii String Nullable
  index, locate_broker_optional = n24x_equities_memo_sbe_v1_13.locate_broker_optional.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Order Cancel Replace Request Message
n24x_equities_memo_sbe_v1_13.order_cancel_replace_request_message.dissect = function(buffer, offset, packet, parent)
  if show.order_cancel_replace_request_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_n24x_equities_memo_sbe_v1_13.fields.order_cancel_replace_request_message, buffer(offset, 0))
    local index = n24x_equities_memo_sbe_v1_13.order_cancel_replace_request_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = n24x_equities_memo_sbe_v1_13.order_cancel_replace_request_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return n24x_equities_memo_sbe_v1_13.order_cancel_replace_request_message.fields(buffer, offset, packet, parent)
  end
end

-- Cust Order Capacity Cust Order Capacity Type optional
n24x_equities_memo_sbe_v1_13.cust_order_capacity_cust_order_capacity_type_optional = {}

-- Size: Cust Order Capacity Cust Order Capacity Type optional
n24x_equities_memo_sbe_v1_13.cust_order_capacity_cust_order_capacity_type_optional.size = 1

-- Display: Cust Order Capacity Cust Order Capacity Type optional
n24x_equities_memo_sbe_v1_13.cust_order_capacity_cust_order_capacity_type_optional.display = function(value)
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
n24x_equities_memo_sbe_v1_13.cust_order_capacity_cust_order_capacity_type_optional.dissect = function(buffer, offset, packet, parent)
  local length = n24x_equities_memo_sbe_v1_13.cust_order_capacity_cust_order_capacity_type_optional.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = n24x_equities_memo_sbe_v1_13.cust_order_capacity_cust_order_capacity_type_optional.display(value, buffer, offset, packet, parent)

  parent:add(omi_n24x_equities_memo_sbe_v1_13.fields.cust_order_capacity_cust_order_capacity_type_optional, range, value, display)

  return offset + length, value
end

-- New Order Single Message
n24x_equities_memo_sbe_v1_13.new_order_single_message = {}

-- Calculate size of: New Order Single Message
n24x_equities_memo_sbe_v1_13.new_order_single_message.size = function(buffer, offset)
  local index = 0

  index = index + n24x_equities_memo_sbe_v1_13.clordid.size

  index = index + n24x_equities_memo_sbe_v1_13.symbol.size

  index = index + n24x_equities_memo_sbe_v1_13.symbol_sfx.size

  index = index + n24x_equities_memo_sbe_v1_13.side.size

  index = index + n24x_equities_memo_sbe_v1_13.order_qty.size

  index = index + n24x_equities_memo_sbe_v1_13.ord_type.size

  index = index + n24x_equities_memo_sbe_v1_13.price.size

  index = index + n24x_equities_memo_sbe_v1_13.time_in_force.size

  index = index + n24x_equities_memo_sbe_v1_13.order_capacity.size

  index = index + n24x_equities_memo_sbe_v1_13.cust_order_capacity_cust_order_capacity_type_optional.size

  index = index + n24x_equities_memo_sbe_v1_13.exec_inst.size

  index = index + n24x_equities_memo_sbe_v1_13.peg_offset_value.size

  index = index + n24x_equities_memo_sbe_v1_13.peg_price_type.size

  index = index + n24x_equities_memo_sbe_v1_13.expire_time.size

  index = index + n24x_equities_memo_sbe_v1_13.min_qty.size

  index = index + n24x_equities_memo_sbe_v1_13.display_qty.size

  index = index + n24x_equities_memo_sbe_v1_13.display_method.size

  index = index + n24x_equities_memo_sbe_v1_13.reserve_replenish_timing.size

  index = index + n24x_equities_memo_sbe_v1_13.display_min_incr.size

  index = index + n24x_equities_memo_sbe_v1_13.locate_reqd.size

  index = index + n24x_equities_memo_sbe_v1_13.reprice_frequency.size

  index = index + n24x_equities_memo_sbe_v1_13.reprice_behavior.size

  index = index + n24x_equities_memo_sbe_v1_13.cancel_group_id.size

  index = index + n24x_equities_memo_sbe_v1_13.stp_group_id.size

  index = index + n24x_equities_memo_sbe_v1_13.self_trade_prevention.size

  index = index + n24x_equities_memo_sbe_v1_13.risk_group_id.size

  index = index + n24x_equities_memo_sbe_v1_13.link_id_optional.size

  index = index + n24x_equities_memo_sbe_v1_13.locate_broker_optional.size

  index = index + n24x_equities_memo_sbe_v1_13.parties_groups.size(buffer, offset + index)

  return index
end

-- Display: New Order Single Message
n24x_equities_memo_sbe_v1_13.new_order_single_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: New Order Single Message
n24x_equities_memo_sbe_v1_13.new_order_single_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- ClOrdId: 16 Byte Ascii String
  index, clordid = n24x_equities_memo_sbe_v1_13.clordid.dissect(buffer, index, packet, parent)

  -- Symbol: 6 Byte Ascii String
  index, symbol = n24x_equities_memo_sbe_v1_13.symbol.dissect(buffer, index, packet, parent)

  -- Symbol Sfx: 6 Byte Ascii String Nullable
  index, symbol_sfx = n24x_equities_memo_sbe_v1_13.symbol_sfx.dissect(buffer, index, packet, parent)

  -- Side: 1 Byte Ascii String Enum with 4 values
  index, side = n24x_equities_memo_sbe_v1_13.side.dissect(buffer, index, packet, parent)

  -- Order Qty: 4 Byte Unsigned Fixed Width Integer
  index, order_qty = n24x_equities_memo_sbe_v1_13.order_qty.dissect(buffer, index, packet, parent)

  -- Ord Type: 1 Byte Ascii String Enum with 3 values
  index, ord_type = n24x_equities_memo_sbe_v1_13.ord_type.dissect(buffer, index, packet, parent)

  -- Price: 8 Byte Signed Fixed Width Integer Nullable
  index, price = n24x_equities_memo_sbe_v1_13.price.dissect(buffer, index, packet, parent)

  -- Time In Force: 1 Byte Ascii String Enum with 5 values
  index, time_in_force = n24x_equities_memo_sbe_v1_13.time_in_force.dissect(buffer, index, packet, parent)

  -- Order Capacity: 1 Byte Ascii String Enum with 3 values
  index, order_capacity = n24x_equities_memo_sbe_v1_13.order_capacity.dissect(buffer, index, packet, parent)

  -- Cust Order Capacity Cust Order Capacity Type optional: 1 Byte Unsigned Fixed Width Integer Enum with 4 values
  index, cust_order_capacity_cust_order_capacity_type_optional = n24x_equities_memo_sbe_v1_13.cust_order_capacity_cust_order_capacity_type_optional.dissect(buffer, index, packet, parent)

  -- Exec Inst: Struct of 4 fields
  index, exec_inst = n24x_equities_memo_sbe_v1_13.exec_inst.dissect(buffer, index, packet, parent)

  -- Peg Offset Value: 8 Byte Signed Fixed Width Integer Nullable
  index, peg_offset_value = n24x_equities_memo_sbe_v1_13.peg_offset_value.dissect(buffer, index, packet, parent)

  -- Peg Price Type: 1 Byte Unsigned Fixed Width Integer Enum with 4 values
  index, peg_price_type = n24x_equities_memo_sbe_v1_13.peg_price_type.dissect(buffer, index, packet, parent)

  -- Expire Time: 8 Byte Unsigned Fixed Width Integer Nullable
  index, expire_time = n24x_equities_memo_sbe_v1_13.expire_time.dissect(buffer, index, packet, parent)

  -- Min Qty: 4 Byte Unsigned Fixed Width Integer Nullable
  index, min_qty = n24x_equities_memo_sbe_v1_13.min_qty.dissect(buffer, index, packet, parent)

  -- Display Qty: 4 Byte Unsigned Fixed Width Integer Nullable
  index, display_qty = n24x_equities_memo_sbe_v1_13.display_qty.dissect(buffer, index, packet, parent)

  -- Display Method: 1 Byte Ascii String Enum with 4 values
  index, display_method = n24x_equities_memo_sbe_v1_13.display_method.dissect(buffer, index, packet, parent)

  -- Reserve Replenish Timing: 1 Byte Unsigned Fixed Width Integer Enum with 4 values
  index, reserve_replenish_timing = n24x_equities_memo_sbe_v1_13.reserve_replenish_timing.dissect(buffer, index, packet, parent)

  -- Display Min Incr: 4 Byte Unsigned Fixed Width Integer Nullable
  index, display_min_incr = n24x_equities_memo_sbe_v1_13.display_min_incr.dissect(buffer, index, packet, parent)

  -- Locate Reqd: 1 Byte Ascii String Nullable
  index, locate_reqd = n24x_equities_memo_sbe_v1_13.locate_reqd.dissect(buffer, index, packet, parent)

  -- Reprice Frequency: 1 Byte Unsigned Fixed Width Integer Enum with 5 values
  index, reprice_frequency = n24x_equities_memo_sbe_v1_13.reprice_frequency.dissect(buffer, index, packet, parent)

  -- Reprice Behavior: 1 Byte Unsigned Fixed Width Integer Enum with 4 values
  index, reprice_behavior = n24x_equities_memo_sbe_v1_13.reprice_behavior.dissect(buffer, index, packet, parent)

  -- Cancel Group Id: 2 Byte Unsigned Fixed Width Integer Nullable
  index, cancel_group_id = n24x_equities_memo_sbe_v1_13.cancel_group_id.dissect(buffer, index, packet, parent)

  -- Stp Group Id: 2 Byte Unsigned Fixed Width Integer Nullable
  index, stp_group_id = n24x_equities_memo_sbe_v1_13.stp_group_id.dissect(buffer, index, packet, parent)

  -- Self Trade Prevention: 1 Byte Unsigned Fixed Width Integer Enum with 7 values
  index, self_trade_prevention = n24x_equities_memo_sbe_v1_13.self_trade_prevention.dissect(buffer, index, packet, parent)

  -- Risk Group Id: 2 Byte Unsigned Fixed Width Integer Nullable
  index, risk_group_id = n24x_equities_memo_sbe_v1_13.risk_group_id.dissect(buffer, index, packet, parent)

  -- Link Id Optional: 4 Byte Ascii String Nullable
  index, link_id_optional = n24x_equities_memo_sbe_v1_13.link_id_optional.dissect(buffer, index, packet, parent)

  -- Locate Broker Optional: 4 Byte Ascii String Nullable
  index, locate_broker_optional = n24x_equities_memo_sbe_v1_13.locate_broker_optional.dissect(buffer, index, packet, parent)

  -- Parties Groups: Struct of 2 fields
  index, parties_groups = n24x_equities_memo_sbe_v1_13.parties_groups.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: New Order Single Message
n24x_equities_memo_sbe_v1_13.new_order_single_message.dissect = function(buffer, offset, packet, parent)
  -- Optionally add dynamic struct element to protocol tree
  if show.new_order_single_message then
    local length = n24x_equities_memo_sbe_v1_13.new_order_single_message.size(buffer, offset)
    local range = buffer(offset, length)
    local display = n24x_equities_memo_sbe_v1_13.new_order_single_message.display(buffer, packet, parent)
    parent = parent:add(omi_n24x_equities_memo_sbe_v1_13.fields.new_order_single_message, range, display)
  end

  return n24x_equities_memo_sbe_v1_13.new_order_single_message.fields(buffer, offset, packet, parent)
end

-- Payload
n24x_equities_memo_sbe_v1_13.payload = {}

-- Calculate runtime size of: Payload
n24x_equities_memo_sbe_v1_13.payload.size = function(buffer, offset, template_id)
  -- Size of New Order Single Message
  if template_id == 1 then
    return n24x_equities_memo_sbe_v1_13.new_order_single_message.size(buffer, offset)
  end
  -- Size of Order Cancel Replace Request Message
  if template_id == 2 then
    return n24x_equities_memo_sbe_v1_13.order_cancel_replace_request_message.size(buffer, offset)
  end
  -- Size of Order Cancel Request Message
  if template_id == 3 then
    return n24x_equities_memo_sbe_v1_13.order_cancel_request_message.size(buffer, offset)
  end
  -- Size of Mass Cancel Request Message
  if template_id == 4 then
    return n24x_equities_memo_sbe_v1_13.mass_cancel_request_message.size(buffer, offset)
  end
  -- Size of Execution Report Pending New Message
  if template_id == 5 then
    return n24x_equities_memo_sbe_v1_13.execution_report_pending_new_message.size(buffer, offset)
  end
  -- Size of Execution Report New Message
  if template_id == 6 then
    return n24x_equities_memo_sbe_v1_13.execution_report_new_message.size(buffer, offset)
  end
  -- Size of Execution Report Rejected Message
  if template_id == 7 then
    return n24x_equities_memo_sbe_v1_13.execution_report_rejected_message.size(buffer, offset)
  end
  -- Size of Execution Report Trade Message
  if template_id == 8 then
    return n24x_equities_memo_sbe_v1_13.execution_report_trade_message.size(buffer, offset)
  end
  -- Size of Execution Report Pending Cancel Message
  if template_id == 9 then
    return n24x_equities_memo_sbe_v1_13.execution_report_pending_cancel_message.size(buffer, offset)
  end
  -- Size of Pending Mass Cancel Message
  if template_id == 10 then
    return n24x_equities_memo_sbe_v1_13.pending_mass_cancel_message.size(buffer, offset)
  end
  -- Size of Execution Report Canceled Message
  if template_id == 11 then
    return n24x_equities_memo_sbe_v1_13.execution_report_canceled_message.size(buffer, offset)
  end
  -- Size of Mass Cancel Done Message
  if template_id == 12 then
    return n24x_equities_memo_sbe_v1_13.mass_cancel_done_message.size(buffer, offset)
  end
  -- Size of Execution Report Pending Replace Message
  if template_id == 13 then
    return n24x_equities_memo_sbe_v1_13.execution_report_pending_replace_message.size(buffer, offset)
  end
  -- Size of Execution Report Replaced Message
  if template_id == 14 then
    return n24x_equities_memo_sbe_v1_13.execution_report_replaced_message.size(buffer, offset)
  end
  -- Size of Execution Report Trade Correction Message
  if template_id == 15 then
    return n24x_equities_memo_sbe_v1_13.execution_report_trade_correction_message.size(buffer, offset)
  end
  -- Size of Execution Report Trade Break Message
  if template_id == 16 then
    return n24x_equities_memo_sbe_v1_13.execution_report_trade_break_message.size(buffer, offset)
  end
  -- Size of Execution Report Restatement Message
  if template_id == 17 then
    return n24x_equities_memo_sbe_v1_13.execution_report_restatement_message.size(buffer, offset)
  end
  -- Size of Order Cancel Reject Message
  if template_id == 18 then
    return n24x_equities_memo_sbe_v1_13.order_cancel_reject_message.size(buffer, offset)
  end
  -- Size of Mass Cancel Reject Message
  if template_id == 20 then
    return n24x_equities_memo_sbe_v1_13.mass_cancel_reject_message.size(buffer, offset)
  end

  return 0
end

-- Display: Payload
n24x_equities_memo_sbe_v1_13.payload.display = function(buffer, offset, packet, parent)
  return ""
end

-- Dissect Branches: Payload
n24x_equities_memo_sbe_v1_13.payload.branches = function(buffer, offset, packet, parent, template_id)
  -- Dissect New Order Single Message
  if template_id == 1 then
    return n24x_equities_memo_sbe_v1_13.new_order_single_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Order Cancel Replace Request Message
  if template_id == 2 then
    return n24x_equities_memo_sbe_v1_13.order_cancel_replace_request_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Order Cancel Request Message
  if template_id == 3 then
    return n24x_equities_memo_sbe_v1_13.order_cancel_request_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Mass Cancel Request Message
  if template_id == 4 then
    return n24x_equities_memo_sbe_v1_13.mass_cancel_request_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Execution Report Pending New Message
  if template_id == 5 then
    return n24x_equities_memo_sbe_v1_13.execution_report_pending_new_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Execution Report New Message
  if template_id == 6 then
    return n24x_equities_memo_sbe_v1_13.execution_report_new_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Execution Report Rejected Message
  if template_id == 7 then
    return n24x_equities_memo_sbe_v1_13.execution_report_rejected_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Execution Report Trade Message
  if template_id == 8 then
    return n24x_equities_memo_sbe_v1_13.execution_report_trade_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Execution Report Pending Cancel Message
  if template_id == 9 then
    return n24x_equities_memo_sbe_v1_13.execution_report_pending_cancel_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Pending Mass Cancel Message
  if template_id == 10 then
    return n24x_equities_memo_sbe_v1_13.pending_mass_cancel_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Execution Report Canceled Message
  if template_id == 11 then
    return n24x_equities_memo_sbe_v1_13.execution_report_canceled_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Mass Cancel Done Message
  if template_id == 12 then
    return n24x_equities_memo_sbe_v1_13.mass_cancel_done_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Execution Report Pending Replace Message
  if template_id == 13 then
    return n24x_equities_memo_sbe_v1_13.execution_report_pending_replace_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Execution Report Replaced Message
  if template_id == 14 then
    return n24x_equities_memo_sbe_v1_13.execution_report_replaced_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Execution Report Trade Correction Message
  if template_id == 15 then
    return n24x_equities_memo_sbe_v1_13.execution_report_trade_correction_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Execution Report Trade Break Message
  if template_id == 16 then
    return n24x_equities_memo_sbe_v1_13.execution_report_trade_break_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Execution Report Restatement Message
  if template_id == 17 then
    return n24x_equities_memo_sbe_v1_13.execution_report_restatement_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Order Cancel Reject Message
  if template_id == 18 then
    return n24x_equities_memo_sbe_v1_13.order_cancel_reject_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Mass Cancel Reject Message
  if template_id == 20 then
    return n24x_equities_memo_sbe_v1_13.mass_cancel_reject_message.dissect(buffer, offset, packet, parent)
  end

  return offset
end

-- Dissect: Payload
n24x_equities_memo_sbe_v1_13.payload.dissect = function(buffer, offset, packet, parent, template_id)
  if not show.payload then
    return n24x_equities_memo_sbe_v1_13.payload.branches(buffer, offset, packet, parent, template_id)
  end

  -- Calculate size and check that branch is not empty
  local size = n24x_equities_memo_sbe_v1_13.payload.size(buffer, offset, template_id)
  if size == 0 then
    return offset
  end

  -- Dissect Element
  local range = buffer(offset, size)
  local display = n24x_equities_memo_sbe_v1_13.payload.display(buffer, packet, parent)
  local element = parent:add(omi_n24x_equities_memo_sbe_v1_13.fields.payload, range, display)

  return n24x_equities_memo_sbe_v1_13.payload.branches(buffer, offset, packet, parent, template_id)
end

-- Version
n24x_equities_memo_sbe_v1_13.version = {}

-- Size: Version
n24x_equities_memo_sbe_v1_13.version.size = 2

-- Display: Version
n24x_equities_memo_sbe_v1_13.version.display = function(value)
  return "Version: "..value
end

-- Dissect: Version
n24x_equities_memo_sbe_v1_13.version.dissect = function(buffer, offset, packet, parent)
  local length = n24x_equities_memo_sbe_v1_13.version.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = n24x_equities_memo_sbe_v1_13.version.display(value, buffer, offset, packet, parent)

  parent:add(omi_n24x_equities_memo_sbe_v1_13.fields.version, range, value, display)

  return offset + length, value
end

-- Schema Id
n24x_equities_memo_sbe_v1_13.schema_id = {}

-- Size: Schema Id
n24x_equities_memo_sbe_v1_13.schema_id.size = 1

-- Display: Schema Id
n24x_equities_memo_sbe_v1_13.schema_id.display = function(value)
  return "Schema Id: "..value
end

-- Dissect: Schema Id
n24x_equities_memo_sbe_v1_13.schema_id.dissect = function(buffer, offset, packet, parent)
  local length = n24x_equities_memo_sbe_v1_13.schema_id.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = n24x_equities_memo_sbe_v1_13.schema_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_n24x_equities_memo_sbe_v1_13.fields.schema_id, range, value, display)

  return offset + length, value
end

-- Template Id
n24x_equities_memo_sbe_v1_13.template_id = {}

-- Size: Template Id
n24x_equities_memo_sbe_v1_13.template_id.size = 1

-- Display: Template Id
n24x_equities_memo_sbe_v1_13.template_id.display = function(value)
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
n24x_equities_memo_sbe_v1_13.template_id.dissect = function(buffer, offset, packet, parent)
  local length = n24x_equities_memo_sbe_v1_13.template_id.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = n24x_equities_memo_sbe_v1_13.template_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_n24x_equities_memo_sbe_v1_13.fields.template_id, range, value, display)

  return offset + length, value
end

-- Block Length
n24x_equities_memo_sbe_v1_13.block_length = {}

-- Size: Block Length
n24x_equities_memo_sbe_v1_13.block_length.size = 2

-- Display: Block Length
n24x_equities_memo_sbe_v1_13.block_length.display = function(value)
  return "Block Length: "..value
end

-- Dissect: Block Length
n24x_equities_memo_sbe_v1_13.block_length.dissect = function(buffer, offset, packet, parent)
  local length = n24x_equities_memo_sbe_v1_13.block_length.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = n24x_equities_memo_sbe_v1_13.block_length.display(value, buffer, offset, packet, parent)

  parent:add(omi_n24x_equities_memo_sbe_v1_13.fields.block_length, range, value, display)

  return offset + length, value
end

-- Sbe Header
n24x_equities_memo_sbe_v1_13.sbe_header = {}

-- Calculate size of: Sbe Header
n24x_equities_memo_sbe_v1_13.sbe_header.size = function(buffer, offset)
  local index = 0

  index = index + n24x_equities_memo_sbe_v1_13.block_length.size

  index = index + n24x_equities_memo_sbe_v1_13.template_id.size

  index = index + n24x_equities_memo_sbe_v1_13.schema_id.size

  index = index + n24x_equities_memo_sbe_v1_13.version.size

  return index
end

-- Display: Sbe Header
n24x_equities_memo_sbe_v1_13.sbe_header.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Sbe Header
n24x_equities_memo_sbe_v1_13.sbe_header.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Block Length: 2 Byte Unsigned Fixed Width Integer
  index, block_length = n24x_equities_memo_sbe_v1_13.block_length.dissect(buffer, index, packet, parent)

  -- Template Id: 1 Byte Unsigned Fixed Width Integer Enum with 19 values
  index, template_id = n24x_equities_memo_sbe_v1_13.template_id.dissect(buffer, index, packet, parent)

  -- Schema Id: 1 Byte Unsigned Fixed Width Integer Static
  index, schema_id = n24x_equities_memo_sbe_v1_13.schema_id.dissect(buffer, index, packet, parent)

  -- Version: 2 Byte Unsigned Fixed Width Integer Static
  index, version = n24x_equities_memo_sbe_v1_13.version.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Sbe Header
n24x_equities_memo_sbe_v1_13.sbe_header.dissect = function(buffer, offset, packet, parent)
  if show.sbe_header then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_n24x_equities_memo_sbe_v1_13.fields.sbe_header, buffer(offset, 0))
    local index = n24x_equities_memo_sbe_v1_13.sbe_header.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = n24x_equities_memo_sbe_v1_13.sbe_header.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return n24x_equities_memo_sbe_v1_13.sbe_header.fields(buffer, offset, packet, parent)
  end
end

-- Sbe Message
n24x_equities_memo_sbe_v1_13.sbe_message = {}

-- Display: Sbe Message
n24x_equities_memo_sbe_v1_13.sbe_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Sbe Message
n24x_equities_memo_sbe_v1_13.sbe_message.fields = function(buffer, offset, packet, parent, size_of_sbe_message)
  local index = offset

  -- Sbe Header: Struct of 4 fields
  index, sbe_header = n24x_equities_memo_sbe_v1_13.sbe_header.dissect(buffer, index, packet, parent)

  -- Dependency element: Template Id
  local template_id = buffer(index - 4, 1):uint()

  -- Payload: Runtime Type with 19 branches
  index = n24x_equities_memo_sbe_v1_13.payload.dissect(buffer, index, packet, parent, template_id)

  return index
end

-- Dissect: Sbe Message
n24x_equities_memo_sbe_v1_13.sbe_message.dissect = function(buffer, offset, packet, parent, size_of_sbe_message)
  local index = offset + size_of_sbe_message

  -- Optionally add group/struct element to protocol tree
  if show.sbe_message then
    parent = parent:add(omi_n24x_equities_memo_sbe_v1_13.fields.sbe_message, buffer(offset, 0))
    local current = n24x_equities_memo_sbe_v1_13.sbe_message.fields(buffer, offset, packet, parent, size_of_sbe_message)
    parent:set_len(size_of_sbe_message)
    local display = n24x_equities_memo_sbe_v1_13.sbe_message.display(buffer, packet, parent)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    n24x_equities_memo_sbe_v1_13.sbe_message.fields(buffer, offset, packet, parent, size_of_sbe_message)

    return index
  end
end

-- Sequenced Message
n24x_equities_memo_sbe_v1_13.sequenced_message = {}

-- Calculate size of: Sequenced Message
n24x_equities_memo_sbe_v1_13.sequenced_message.size = function(buffer, offset)
  local index = 0

  -- Parse runtime size of: Sbe Message
  index = index + buffer(offset + index - 0, 2):uint()

  return index
end

-- Display: Sequenced Message
n24x_equities_memo_sbe_v1_13.sequenced_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Sequenced Message
n24x_equities_memo_sbe_v1_13.sequenced_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Dependency element: Block Length
  local block_length = buffer(index, 2):uint()

  -- Runtime Size Of: Sbe Message
  local size_of_sbe_message = block_length + 6

  -- Sbe Message: Struct of 2 fields
  index, sbe_message = n24x_equities_memo_sbe_v1_13.sbe_message.dissect(buffer, index, packet, parent, size_of_sbe_message)

  return index
end

-- Dissect: Sequenced Message
n24x_equities_memo_sbe_v1_13.sequenced_message.dissect = function(buffer, offset, packet, parent)
  -- Optionally add dynamic struct element to protocol tree
  if show.sequenced_message then
    local length = n24x_equities_memo_sbe_v1_13.sequenced_message.size(buffer, offset)
    local range = buffer(offset, length)
    local display = n24x_equities_memo_sbe_v1_13.sequenced_message.display(buffer, packet, parent)
    parent = parent:add(omi_n24x_equities_memo_sbe_v1_13.fields.sequenced_message, range, display)
  end

  return n24x_equities_memo_sbe_v1_13.sequenced_message.fields(buffer, offset, packet, parent)
end

-- Total Sequence Count
n24x_equities_memo_sbe_v1_13.total_sequence_count = {}

-- Size: Total Sequence Count
n24x_equities_memo_sbe_v1_13.total_sequence_count.size = 8

-- Display: Total Sequence Count
n24x_equities_memo_sbe_v1_13.total_sequence_count.display = function(value)
  return "Total Sequence Count: "..value
end

-- Dissect: Total Sequence Count
n24x_equities_memo_sbe_v1_13.total_sequence_count.dissect = function(buffer, offset, packet, parent)
  local length = n24x_equities_memo_sbe_v1_13.total_sequence_count.size
  local range = buffer(offset, length)
  local value = range:uint64()
  local display = n24x_equities_memo_sbe_v1_13.total_sequence_count.display(value, buffer, offset, packet, parent)

  parent:add(omi_n24x_equities_memo_sbe_v1_13.fields.total_sequence_count, range, value, display)

  return offset + length, value
end

-- Stream Complete Message
n24x_equities_memo_sbe_v1_13.stream_complete_message = {}

-- Calculate size of: Stream Complete Message
n24x_equities_memo_sbe_v1_13.stream_complete_message.size = function(buffer, offset)
  local index = 0

  index = index + n24x_equities_memo_sbe_v1_13.total_sequence_count.size

  return index
end

-- Display: Stream Complete Message
n24x_equities_memo_sbe_v1_13.stream_complete_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Stream Complete Message
n24x_equities_memo_sbe_v1_13.stream_complete_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Total Sequence Count: 8 Byte Unsigned Fixed Width Integer
  index, total_sequence_count = n24x_equities_memo_sbe_v1_13.total_sequence_count.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Stream Complete Message
n24x_equities_memo_sbe_v1_13.stream_complete_message.dissect = function(buffer, offset, packet, parent)
  if show.stream_complete_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_n24x_equities_memo_sbe_v1_13.fields.stream_complete_message, buffer(offset, 0))
    local index = n24x_equities_memo_sbe_v1_13.stream_complete_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = n24x_equities_memo_sbe_v1_13.stream_complete_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return n24x_equities_memo_sbe_v1_13.stream_complete_message.fields(buffer, offset, packet, parent)
  end
end

-- Stream Reject Code
n24x_equities_memo_sbe_v1_13.stream_reject_code = {}

-- Size: Stream Reject Code
n24x_equities_memo_sbe_v1_13.stream_reject_code.size = 1

-- Display: Stream Reject Code
n24x_equities_memo_sbe_v1_13.stream_reject_code.display = function(value)
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
n24x_equities_memo_sbe_v1_13.stream_reject_code.dissect = function(buffer, offset, packet, parent)
  local length = n24x_equities_memo_sbe_v1_13.stream_reject_code.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = n24x_equities_memo_sbe_v1_13.stream_reject_code.display(value, buffer, offset, packet, parent)

  parent:add(omi_n24x_equities_memo_sbe_v1_13.fields.stream_reject_code, range, value, display)

  return offset + length, value
end

-- Stream Rejected Message
n24x_equities_memo_sbe_v1_13.stream_rejected_message = {}

-- Calculate size of: Stream Rejected Message
n24x_equities_memo_sbe_v1_13.stream_rejected_message.size = function(buffer, offset)
  local index = 0

  index = index + n24x_equities_memo_sbe_v1_13.stream_reject_code.size

  return index
end

-- Display: Stream Rejected Message
n24x_equities_memo_sbe_v1_13.stream_rejected_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Stream Rejected Message
n24x_equities_memo_sbe_v1_13.stream_rejected_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Stream Reject Code: 1 Byte Ascii String Enum with 3 values
  index, stream_reject_code = n24x_equities_memo_sbe_v1_13.stream_reject_code.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Stream Rejected Message
n24x_equities_memo_sbe_v1_13.stream_rejected_message.dissect = function(buffer, offset, packet, parent)
  if show.stream_rejected_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_n24x_equities_memo_sbe_v1_13.fields.stream_rejected_message, buffer(offset, 0))
    local index = n24x_equities_memo_sbe_v1_13.stream_rejected_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = n24x_equities_memo_sbe_v1_13.stream_rejected_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return n24x_equities_memo_sbe_v1_13.stream_rejected_message.fields(buffer, offset, packet, parent)
  end
end

-- Max Sequence Number
n24x_equities_memo_sbe_v1_13.max_sequence_number = {}

-- Next Sequence Number
n24x_equities_memo_sbe_v1_13.next_sequence_number = {}

-- Size: Next Sequence Number
n24x_equities_memo_sbe_v1_13.next_sequence_number.size = 8

-- Display: Next Sequence Number
n24x_equities_memo_sbe_v1_13.next_sequence_number.display = function(value)
  return "Next Sequence Number: "..value
end

-- Dissect: Next Sequence Number
n24x_equities_memo_sbe_v1_13.next_sequence_number.dissect = function(buffer, offset, packet, parent)
  local length = n24x_equities_memo_sbe_v1_13.next_sequence_number.size
  local range = buffer(offset, length)
  local value = range:uint64()
  local display = n24x_equities_memo_sbe_v1_13.next_sequence_number.display(value, buffer, offset, packet, parent)

  parent:add(omi_n24x_equities_memo_sbe_v1_13.fields.next_sequence_number, range, value, display)

  return offset + length, value
end

-- Stream Begin Message
n24x_equities_memo_sbe_v1_13.stream_begin_message = {}

-- Calculate size of: Stream Begin Message
n24x_equities_memo_sbe_v1_13.stream_begin_message.size = function(buffer, offset)
  local index = 0

  index = index + n24x_equities_memo_sbe_v1_13.next_sequence_number.size

  index = index + n24x_equities_memo_sbe_v1_13.max_sequence_number.size

  return index
end

-- Display: Stream Begin Message
n24x_equities_memo_sbe_v1_13.stream_begin_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Stream Begin Message
n24x_equities_memo_sbe_v1_13.stream_begin_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Next Sequence Number: 8 Byte Unsigned Fixed Width Integer
  index, next_sequence_number = n24x_equities_memo_sbe_v1_13.next_sequence_number.dissect(buffer, index, packet, parent)

  -- Max Sequence Number
  index, max_sequence_number = n24x_equities_memo_sbe_v1_13.max_sequence_number.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Stream Begin Message
n24x_equities_memo_sbe_v1_13.stream_begin_message.dissect = function(buffer, offset, packet, parent)
  if show.stream_begin_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_n24x_equities_memo_sbe_v1_13.fields.stream_begin_message, buffer(offset, 0))
    local index = n24x_equities_memo_sbe_v1_13.stream_begin_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = n24x_equities_memo_sbe_v1_13.stream_begin_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return n24x_equities_memo_sbe_v1_13.stream_begin_message.fields(buffer, offset, packet, parent)
  end
end

-- Message Count
n24x_equities_memo_sbe_v1_13.message_count = {}

-- Size: Message Count
n24x_equities_memo_sbe_v1_13.message_count.size = 8

-- Display: Message Count
n24x_equities_memo_sbe_v1_13.message_count.display = function(value)
  return "Message Count: "..value
end

-- Dissect: Message Count
n24x_equities_memo_sbe_v1_13.message_count.dissect = function(buffer, offset, packet, parent)
  local length = n24x_equities_memo_sbe_v1_13.message_count.size
  local range = buffer(offset, length)
  local value = range:uint64()
  local display = n24x_equities_memo_sbe_v1_13.message_count.display(value, buffer, offset, packet, parent)

  parent:add(omi_n24x_equities_memo_sbe_v1_13.fields.message_count, range, value, display)

  return offset + length, value
end

-- Replay Complete Message
n24x_equities_memo_sbe_v1_13.replay_complete_message = {}

-- Calculate size of: Replay Complete Message
n24x_equities_memo_sbe_v1_13.replay_complete_message.size = function(buffer, offset)
  local index = 0

  index = index + n24x_equities_memo_sbe_v1_13.message_count.size

  return index
end

-- Display: Replay Complete Message
n24x_equities_memo_sbe_v1_13.replay_complete_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Replay Complete Message
n24x_equities_memo_sbe_v1_13.replay_complete_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Message Count: 8 Byte Unsigned Fixed Width Integer
  index, message_count = n24x_equities_memo_sbe_v1_13.message_count.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Replay Complete Message
n24x_equities_memo_sbe_v1_13.replay_complete_message.dissect = function(buffer, offset, packet, parent)
  if show.replay_complete_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_n24x_equities_memo_sbe_v1_13.fields.replay_complete_message, buffer(offset, 0))
    local index = n24x_equities_memo_sbe_v1_13.replay_complete_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = n24x_equities_memo_sbe_v1_13.replay_complete_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return n24x_equities_memo_sbe_v1_13.replay_complete_message.fields(buffer, offset, packet, parent)
  end
end

-- Replay Reject Code
n24x_equities_memo_sbe_v1_13.replay_reject_code = {}

-- Size: Replay Reject Code
n24x_equities_memo_sbe_v1_13.replay_reject_code.size = 1

-- Display: Replay Reject Code
n24x_equities_memo_sbe_v1_13.replay_reject_code.display = function(value)
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
n24x_equities_memo_sbe_v1_13.replay_reject_code.dissect = function(buffer, offset, packet, parent)
  local length = n24x_equities_memo_sbe_v1_13.replay_reject_code.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = n24x_equities_memo_sbe_v1_13.replay_reject_code.display(value, buffer, offset, packet, parent)

  parent:add(omi_n24x_equities_memo_sbe_v1_13.fields.replay_reject_code, range, value, display)

  return offset + length, value
end

-- Replay Rejected Message
n24x_equities_memo_sbe_v1_13.replay_rejected_message = {}

-- Calculate size of: Replay Rejected Message
n24x_equities_memo_sbe_v1_13.replay_rejected_message.size = function(buffer, offset)
  local index = 0

  index = index + n24x_equities_memo_sbe_v1_13.replay_reject_code.size

  return index
end

-- Display: Replay Rejected Message
n24x_equities_memo_sbe_v1_13.replay_rejected_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Replay Rejected Message
n24x_equities_memo_sbe_v1_13.replay_rejected_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Replay Reject Code: 1 Byte Ascii String Enum with 4 values
  index, replay_reject_code = n24x_equities_memo_sbe_v1_13.replay_reject_code.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Replay Rejected Message
n24x_equities_memo_sbe_v1_13.replay_rejected_message.dissect = function(buffer, offset, packet, parent)
  if show.replay_rejected_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_n24x_equities_memo_sbe_v1_13.fields.replay_rejected_message, buffer(offset, 0))
    local index = n24x_equities_memo_sbe_v1_13.replay_rejected_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = n24x_equities_memo_sbe_v1_13.replay_rejected_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return n24x_equities_memo_sbe_v1_13.replay_rejected_message.fields(buffer, offset, packet, parent)
  end
end

-- Pending Message Count
n24x_equities_memo_sbe_v1_13.pending_message_count = {}

-- Size: Pending Message Count
n24x_equities_memo_sbe_v1_13.pending_message_count.size = 4

-- Display: Pending Message Count
n24x_equities_memo_sbe_v1_13.pending_message_count.display = function(value)
  return "Pending Message Count: "..value
end

-- Dissect: Pending Message Count
n24x_equities_memo_sbe_v1_13.pending_message_count.dissect = function(buffer, offset, packet, parent)
  local length = n24x_equities_memo_sbe_v1_13.pending_message_count.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = n24x_equities_memo_sbe_v1_13.pending_message_count.display(value, buffer, offset, packet, parent)

  parent:add(omi_n24x_equities_memo_sbe_v1_13.fields.pending_message_count, range, value, display)

  return offset + length, value
end

-- Replay Begin Message
n24x_equities_memo_sbe_v1_13.replay_begin_message = {}

-- Calculate size of: Replay Begin Message
n24x_equities_memo_sbe_v1_13.replay_begin_message.size = function(buffer, offset)
  local index = 0

  index = index + n24x_equities_memo_sbe_v1_13.next_sequence_number.size

  index = index + n24x_equities_memo_sbe_v1_13.pending_message_count.size

  return index
end

-- Display: Replay Begin Message
n24x_equities_memo_sbe_v1_13.replay_begin_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Replay Begin Message
n24x_equities_memo_sbe_v1_13.replay_begin_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Next Sequence Number: 8 Byte Unsigned Fixed Width Integer
  index, next_sequence_number = n24x_equities_memo_sbe_v1_13.next_sequence_number.dissect(buffer, index, packet, parent)

  -- Pending Message Count: 4 Byte Unsigned Fixed Width Integer
  index, pending_message_count = n24x_equities_memo_sbe_v1_13.pending_message_count.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Replay Begin Message
n24x_equities_memo_sbe_v1_13.replay_begin_message.dissect = function(buffer, offset, packet, parent)
  if show.replay_begin_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_n24x_equities_memo_sbe_v1_13.fields.replay_begin_message, buffer(offset, 0))
    local index = n24x_equities_memo_sbe_v1_13.replay_begin_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = n24x_equities_memo_sbe_v1_13.replay_begin_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return n24x_equities_memo_sbe_v1_13.replay_begin_message.fields(buffer, offset, packet, parent)
  end
end

-- Session Id
n24x_equities_memo_sbe_v1_13.session_id = {}

-- Size: Session Id
n24x_equities_memo_sbe_v1_13.session_id.size = 8

-- Display: Session Id
n24x_equities_memo_sbe_v1_13.session_id.display = function(value)
  return "Session Id: "..value
end

-- Dissect: Session Id
n24x_equities_memo_sbe_v1_13.session_id.dissect = function(buffer, offset, packet, parent)
  local length = n24x_equities_memo_sbe_v1_13.session_id.size
  local range = buffer(offset, length)
  local value = range:uint64()
  local display = n24x_equities_memo_sbe_v1_13.session_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_n24x_equities_memo_sbe_v1_13.fields.session_id, range, value, display)

  return offset + length, value
end

-- Start Of Session Message
n24x_equities_memo_sbe_v1_13.start_of_session_message = {}

-- Calculate size of: Start Of Session Message
n24x_equities_memo_sbe_v1_13.start_of_session_message.size = function(buffer, offset)
  local index = 0

  index = index + n24x_equities_memo_sbe_v1_13.session_id.size

  return index
end

-- Display: Start Of Session Message
n24x_equities_memo_sbe_v1_13.start_of_session_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Start Of Session Message
n24x_equities_memo_sbe_v1_13.start_of_session_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Session Id: 8 Byte Unsigned Fixed Width Integer
  index, session_id = n24x_equities_memo_sbe_v1_13.session_id.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Start Of Session Message
n24x_equities_memo_sbe_v1_13.start_of_session_message.dissect = function(buffer, offset, packet, parent)
  if show.start_of_session_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_n24x_equities_memo_sbe_v1_13.fields.start_of_session_message, buffer(offset, 0))
    local index = n24x_equities_memo_sbe_v1_13.start_of_session_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = n24x_equities_memo_sbe_v1_13.start_of_session_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return n24x_equities_memo_sbe_v1_13.start_of_session_message.fields(buffer, offset, packet, parent)
  end
end

-- Login Reject Code
n24x_equities_memo_sbe_v1_13.login_reject_code = {}

-- Size: Login Reject Code
n24x_equities_memo_sbe_v1_13.login_reject_code.size = 1

-- Display: Login Reject Code
n24x_equities_memo_sbe_v1_13.login_reject_code.display = function(value)
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
n24x_equities_memo_sbe_v1_13.login_reject_code.dissect = function(buffer, offset, packet, parent)
  local length = n24x_equities_memo_sbe_v1_13.login_reject_code.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = n24x_equities_memo_sbe_v1_13.login_reject_code.display(value, buffer, offset, packet, parent)

  parent:add(omi_n24x_equities_memo_sbe_v1_13.fields.login_reject_code, range, value, display)

  return offset + length, value
end

-- Login Rejected Message
n24x_equities_memo_sbe_v1_13.login_rejected_message = {}

-- Calculate size of: Login Rejected Message
n24x_equities_memo_sbe_v1_13.login_rejected_message.size = function(buffer, offset)
  local index = 0

  index = index + n24x_equities_memo_sbe_v1_13.login_reject_code.size

  return index
end

-- Display: Login Rejected Message
n24x_equities_memo_sbe_v1_13.login_rejected_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Login Rejected Message
n24x_equities_memo_sbe_v1_13.login_rejected_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Login Reject Code: 1 Byte Ascii String Enum with 4 values
  index, login_reject_code = n24x_equities_memo_sbe_v1_13.login_reject_code.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Login Rejected Message
n24x_equities_memo_sbe_v1_13.login_rejected_message.dissect = function(buffer, offset, packet, parent)
  if show.login_rejected_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_n24x_equities_memo_sbe_v1_13.fields.login_rejected_message, buffer(offset, 0))
    local index = n24x_equities_memo_sbe_v1_13.login_rejected_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = n24x_equities_memo_sbe_v1_13.login_rejected_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return n24x_equities_memo_sbe_v1_13.login_rejected_message.fields(buffer, offset, packet, parent)
  end
end

-- Supported Request Mode
n24x_equities_memo_sbe_v1_13.supported_request_mode = {}

-- Size: Supported Request Mode
n24x_equities_memo_sbe_v1_13.supported_request_mode.size = 1

-- Display: Supported Request Mode
n24x_equities_memo_sbe_v1_13.supported_request_mode.display = function(value)
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
n24x_equities_memo_sbe_v1_13.supported_request_mode.dissect = function(buffer, offset, packet, parent)
  local length = n24x_equities_memo_sbe_v1_13.supported_request_mode.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = n24x_equities_memo_sbe_v1_13.supported_request_mode.display(value, buffer, offset, packet, parent)

  parent:add(omi_n24x_equities_memo_sbe_v1_13.fields.supported_request_mode, range, value, display)

  return offset + length, value
end

-- Login Accepted Message
n24x_equities_memo_sbe_v1_13.login_accepted_message = {}

-- Calculate size of: Login Accepted Message
n24x_equities_memo_sbe_v1_13.login_accepted_message.size = function(buffer, offset)
  local index = 0

  index = index + n24x_equities_memo_sbe_v1_13.supported_request_mode.size

  return index
end

-- Display: Login Accepted Message
n24x_equities_memo_sbe_v1_13.login_accepted_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Login Accepted Message
n24x_equities_memo_sbe_v1_13.login_accepted_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Supported Request Mode: 1 Byte Ascii String Enum with 3 values
  index, supported_request_mode = n24x_equities_memo_sbe_v1_13.supported_request_mode.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Login Accepted Message
n24x_equities_memo_sbe_v1_13.login_accepted_message.dissect = function(buffer, offset, packet, parent)
  if show.login_accepted_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_n24x_equities_memo_sbe_v1_13.fields.login_accepted_message, buffer(offset, 0))
    local index = n24x_equities_memo_sbe_v1_13.login_accepted_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = n24x_equities_memo_sbe_v1_13.login_accepted_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return n24x_equities_memo_sbe_v1_13.login_accepted_message.fields(buffer, offset, packet, parent)
  end
end

-- Unsequenced Message
n24x_equities_memo_sbe_v1_13.unsequenced_message = {}

-- Calculate size of: Unsequenced Message
n24x_equities_memo_sbe_v1_13.unsequenced_message.size = function(buffer, offset)
  local index = 0

  -- Parse runtime size of: Sbe Message
  index = index + buffer(offset + index - 0, 2):uint()

  return index
end

-- Display: Unsequenced Message
n24x_equities_memo_sbe_v1_13.unsequenced_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Unsequenced Message
n24x_equities_memo_sbe_v1_13.unsequenced_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Dependency element: Block Length
  local block_length = buffer(index, 2):uint()

  -- Runtime Size Of: Sbe Message
  local size_of_sbe_message = block_length + 6

  -- Sbe Message: Struct of 2 fields
  index, sbe_message = n24x_equities_memo_sbe_v1_13.sbe_message.dissect(buffer, index, packet, parent, size_of_sbe_message)

  return index
end

-- Dissect: Unsequenced Message
n24x_equities_memo_sbe_v1_13.unsequenced_message.dissect = function(buffer, offset, packet, parent)
  -- Optionally add dynamic struct element to protocol tree
  if show.unsequenced_message then
    local length = n24x_equities_memo_sbe_v1_13.unsequenced_message.size(buffer, offset)
    local range = buffer(offset, length)
    local display = n24x_equities_memo_sbe_v1_13.unsequenced_message.display(buffer, packet, parent)
    parent = parent:add(omi_n24x_equities_memo_sbe_v1_13.fields.unsequenced_message, range, display)
  end

  return n24x_equities_memo_sbe_v1_13.unsequenced_message.fields(buffer, offset, packet, parent)
end

-- Stream Request Message
n24x_equities_memo_sbe_v1_13.stream_request_message = {}

-- Calculate size of: Stream Request Message
n24x_equities_memo_sbe_v1_13.stream_request_message.size = function(buffer, offset)
  local index = 0

  index = index + n24x_equities_memo_sbe_v1_13.session_id.size

  index = index + n24x_equities_memo_sbe_v1_13.next_sequence_number.size

  return index
end

-- Display: Stream Request Message
n24x_equities_memo_sbe_v1_13.stream_request_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Stream Request Message
n24x_equities_memo_sbe_v1_13.stream_request_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Session Id: 8 Byte Unsigned Fixed Width Integer
  index, session_id = n24x_equities_memo_sbe_v1_13.session_id.dissect(buffer, index, packet, parent)

  -- Next Sequence Number: 8 Byte Unsigned Fixed Width Integer
  index, next_sequence_number = n24x_equities_memo_sbe_v1_13.next_sequence_number.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Stream Request Message
n24x_equities_memo_sbe_v1_13.stream_request_message.dissect = function(buffer, offset, packet, parent)
  if show.stream_request_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_n24x_equities_memo_sbe_v1_13.fields.stream_request_message, buffer(offset, 0))
    local index = n24x_equities_memo_sbe_v1_13.stream_request_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = n24x_equities_memo_sbe_v1_13.stream_request_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return n24x_equities_memo_sbe_v1_13.stream_request_message.fields(buffer, offset, packet, parent)
  end
end

-- Replay All Request Message
n24x_equities_memo_sbe_v1_13.replay_all_request_message = {}

-- Calculate size of: Replay All Request Message
n24x_equities_memo_sbe_v1_13.replay_all_request_message.size = function(buffer, offset)
  local index = 0

  index = index + n24x_equities_memo_sbe_v1_13.session_id.size

  return index
end

-- Display: Replay All Request Message
n24x_equities_memo_sbe_v1_13.replay_all_request_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Replay All Request Message
n24x_equities_memo_sbe_v1_13.replay_all_request_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Session Id: 8 Byte Unsigned Fixed Width Integer
  index, session_id = n24x_equities_memo_sbe_v1_13.session_id.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Replay All Request Message
n24x_equities_memo_sbe_v1_13.replay_all_request_message.dissect = function(buffer, offset, packet, parent)
  if show.replay_all_request_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_n24x_equities_memo_sbe_v1_13.fields.replay_all_request_message, buffer(offset, 0))
    local index = n24x_equities_memo_sbe_v1_13.replay_all_request_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = n24x_equities_memo_sbe_v1_13.replay_all_request_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return n24x_equities_memo_sbe_v1_13.replay_all_request_message.fields(buffer, offset, packet, parent)
  end
end

-- Count
n24x_equities_memo_sbe_v1_13.count = {}

-- Size: Count
n24x_equities_memo_sbe_v1_13.count.size = 4

-- Display: Count
n24x_equities_memo_sbe_v1_13.count.display = function(value)
  return "Count: "..value
end

-- Dissect: Count
n24x_equities_memo_sbe_v1_13.count.dissect = function(buffer, offset, packet, parent)
  local length = n24x_equities_memo_sbe_v1_13.count.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = n24x_equities_memo_sbe_v1_13.count.display(value, buffer, offset, packet, parent)

  parent:add(omi_n24x_equities_memo_sbe_v1_13.fields.count, range, value, display)

  return offset + length, value
end

-- Replay Request Message
n24x_equities_memo_sbe_v1_13.replay_request_message = {}

-- Calculate size of: Replay Request Message
n24x_equities_memo_sbe_v1_13.replay_request_message.size = function(buffer, offset)
  local index = 0

  index = index + n24x_equities_memo_sbe_v1_13.session_id.size

  index = index + n24x_equities_memo_sbe_v1_13.next_sequence_number.size

  index = index + n24x_equities_memo_sbe_v1_13.count.size

  return index
end

-- Display: Replay Request Message
n24x_equities_memo_sbe_v1_13.replay_request_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Replay Request Message
n24x_equities_memo_sbe_v1_13.replay_request_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Session Id: 8 Byte Unsigned Fixed Width Integer
  index, session_id = n24x_equities_memo_sbe_v1_13.session_id.dissect(buffer, index, packet, parent)

  -- Next Sequence Number: 8 Byte Unsigned Fixed Width Integer
  index, next_sequence_number = n24x_equities_memo_sbe_v1_13.next_sequence_number.dissect(buffer, index, packet, parent)

  -- Count: 4 Byte Unsigned Fixed Width Integer
  index, count = n24x_equities_memo_sbe_v1_13.count.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Replay Request Message
n24x_equities_memo_sbe_v1_13.replay_request_message.dissect = function(buffer, offset, packet, parent)
  if show.replay_request_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_n24x_equities_memo_sbe_v1_13.fields.replay_request_message, buffer(offset, 0))
    local index = n24x_equities_memo_sbe_v1_13.replay_request_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = n24x_equities_memo_sbe_v1_13.replay_request_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return n24x_equities_memo_sbe_v1_13.replay_request_message.fields(buffer, offset, packet, parent)
  end
end

-- Token
n24x_equities_memo_sbe_v1_13.token = {}

-- Size: Token
n24x_equities_memo_sbe_v1_13.token.size = 1

-- Display: Token
n24x_equities_memo_sbe_v1_13.token.display = function(value)
  return "Token: "..value
end

-- Dissect: Token
n24x_equities_memo_sbe_v1_13.token.dissect = function(buffer, offset, packet, parent)
  local length = n24x_equities_memo_sbe_v1_13.token.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = n24x_equities_memo_sbe_v1_13.token.display(value, buffer, offset, packet, parent)

  parent:add(omi_n24x_equities_memo_sbe_v1_13.fields.token, range, value, display)

  return offset + length, value
end

-- Token Type
n24x_equities_memo_sbe_v1_13.token_type = {}

-- Size: Token Type
n24x_equities_memo_sbe_v1_13.token_type.size = 1

-- Display: Token Type
n24x_equities_memo_sbe_v1_13.token_type.display = function(value)
  return "Token Type: "..value
end

-- Dissect: Token Type
n24x_equities_memo_sbe_v1_13.token_type.dissect = function(buffer, offset, packet, parent)
  local length = n24x_equities_memo_sbe_v1_13.token_type.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = n24x_equities_memo_sbe_v1_13.token_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_n24x_equities_memo_sbe_v1_13.fields.token_type, range, value, display)

  return offset + length, value
end

-- Login Request Message
n24x_equities_memo_sbe_v1_13.login_request_message = {}

-- Calculate size of: Login Request Message
n24x_equities_memo_sbe_v1_13.login_request_message.size = function(buffer, offset)
  local index = 0

  index = index + n24x_equities_memo_sbe_v1_13.token_type.size

  index = index + n24x_equities_memo_sbe_v1_13.token.size

  return index
end

-- Display: Login Request Message
n24x_equities_memo_sbe_v1_13.login_request_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Login Request Message
n24x_equities_memo_sbe_v1_13.login_request_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Token Type: 1 Byte Ascii String
  index, token_type = n24x_equities_memo_sbe_v1_13.token_type.dissect(buffer, index, packet, parent)

  -- Token: 1 Byte Ascii String
  index, token = n24x_equities_memo_sbe_v1_13.token.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Login Request Message
n24x_equities_memo_sbe_v1_13.login_request_message.dissect = function(buffer, offset, packet, parent)
  if show.login_request_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_n24x_equities_memo_sbe_v1_13.fields.login_request_message, buffer(offset, 0))
    local index = n24x_equities_memo_sbe_v1_13.login_request_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = n24x_equities_memo_sbe_v1_13.login_request_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return n24x_equities_memo_sbe_v1_13.login_request_message.fields(buffer, offset, packet, parent)
  end
end

-- Data
n24x_equities_memo_sbe_v1_13.data = {}

-- Calculate runtime size of: Data
n24x_equities_memo_sbe_v1_13.data.size = function(buffer, offset, message_type)
  -- Size of Login Request Message
  if message_type == 100 then
    return n24x_equities_memo_sbe_v1_13.login_request_message.size(buffer, offset)
  end
  -- Size of Replay Request Message
  if message_type == 101 then
    return n24x_equities_memo_sbe_v1_13.replay_request_message.size(buffer, offset)
  end
  -- Size of Replay All Request Message
  if message_type == 102 then
    return n24x_equities_memo_sbe_v1_13.replay_all_request_message.size(buffer, offset)
  end
  -- Size of Stream Request Message
  if message_type == 103 then
    return n24x_equities_memo_sbe_v1_13.stream_request_message.size(buffer, offset)
  end
  -- Size of Unsequenced Message
  if message_type == 104 then
    return n24x_equities_memo_sbe_v1_13.unsequenced_message.size(buffer, offset)
  end
  -- Size of Login Accepted Message
  if message_type == 1 then
    return n24x_equities_memo_sbe_v1_13.login_accepted_message.size(buffer, offset)
  end
  -- Size of Login Rejected Message
  if message_type == 2 then
    return n24x_equities_memo_sbe_v1_13.login_rejected_message.size(buffer, offset)
  end
  -- Size of Start Of Session Message
  if message_type == 3 then
    return n24x_equities_memo_sbe_v1_13.start_of_session_message.size(buffer, offset)
  end
  -- Size of Replay Begin Message
  if message_type == 5 then
    return n24x_equities_memo_sbe_v1_13.replay_begin_message.size(buffer, offset)
  end
  -- Size of Replay Rejected Message
  if message_type == 6 then
    return n24x_equities_memo_sbe_v1_13.replay_rejected_message.size(buffer, offset)
  end
  -- Size of Replay Complete Message
  if message_type == 7 then
    return n24x_equities_memo_sbe_v1_13.replay_complete_message.size(buffer, offset)
  end
  -- Size of Stream Begin Message
  if message_type == 8 then
    return n24x_equities_memo_sbe_v1_13.stream_begin_message.size(buffer, offset)
  end
  -- Size of Stream Rejected Message
  if message_type == 9 then
    return n24x_equities_memo_sbe_v1_13.stream_rejected_message.size(buffer, offset)
  end
  -- Size of Stream Complete Message
  if message_type == 10 then
    return n24x_equities_memo_sbe_v1_13.stream_complete_message.size(buffer, offset)
  end
  -- Size of Sequenced Message
  if message_type == 11 then
    return n24x_equities_memo_sbe_v1_13.sequenced_message.size(buffer, offset)
  end

  return 0
end

-- Display: Data
n24x_equities_memo_sbe_v1_13.data.display = function(buffer, offset, packet, parent)
  return ""
end

-- Dissect Branches: Data
n24x_equities_memo_sbe_v1_13.data.branches = function(buffer, offset, packet, parent, message_type)
  -- Dissect Login Request Message
  if message_type == 100 then
    return n24x_equities_memo_sbe_v1_13.login_request_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Replay Request Message
  if message_type == 101 then
    return n24x_equities_memo_sbe_v1_13.replay_request_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Replay All Request Message
  if message_type == 102 then
    return n24x_equities_memo_sbe_v1_13.replay_all_request_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Stream Request Message
  if message_type == 103 then
    return n24x_equities_memo_sbe_v1_13.stream_request_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Unsequenced Message
  if message_type == 104 then
    return n24x_equities_memo_sbe_v1_13.unsequenced_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Login Accepted Message
  if message_type == 1 then
    return n24x_equities_memo_sbe_v1_13.login_accepted_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Login Rejected Message
  if message_type == 2 then
    return n24x_equities_memo_sbe_v1_13.login_rejected_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Start Of Session Message
  if message_type == 3 then
    return n24x_equities_memo_sbe_v1_13.start_of_session_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Replay Begin Message
  if message_type == 5 then
    return n24x_equities_memo_sbe_v1_13.replay_begin_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Replay Rejected Message
  if message_type == 6 then
    return n24x_equities_memo_sbe_v1_13.replay_rejected_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Replay Complete Message
  if message_type == 7 then
    return n24x_equities_memo_sbe_v1_13.replay_complete_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Stream Begin Message
  if message_type == 8 then
    return n24x_equities_memo_sbe_v1_13.stream_begin_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Stream Rejected Message
  if message_type == 9 then
    return n24x_equities_memo_sbe_v1_13.stream_rejected_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Stream Complete Message
  if message_type == 10 then
    return n24x_equities_memo_sbe_v1_13.stream_complete_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Sequenced Message
  if message_type == 11 then
    return n24x_equities_memo_sbe_v1_13.sequenced_message.dissect(buffer, offset, packet, parent)
  end

  return offset
end

-- Dissect: Data
n24x_equities_memo_sbe_v1_13.data.dissect = function(buffer, offset, packet, parent, message_type)
  if not show.data then
    return n24x_equities_memo_sbe_v1_13.data.branches(buffer, offset, packet, parent, message_type)
  end

  -- Calculate size and check that branch is not empty
  local size = n24x_equities_memo_sbe_v1_13.data.size(buffer, offset, message_type)
  if size == 0 then
    return offset
  end

  -- Dissect Element
  local range = buffer(offset, size)
  local display = n24x_equities_memo_sbe_v1_13.data.display(buffer, packet, parent)
  local element = parent:add(omi_n24x_equities_memo_sbe_v1_13.fields.data, range, display)

  return n24x_equities_memo_sbe_v1_13.data.branches(buffer, offset, packet, parent, message_type)
end

-- Message Length
n24x_equities_memo_sbe_v1_13.message_length = {}

-- Size: Message Length
n24x_equities_memo_sbe_v1_13.message_length.size = 2

-- Display: Message Length
n24x_equities_memo_sbe_v1_13.message_length.display = function(value)
  return "Message Length: "..value
end

-- Dissect: Message Length
n24x_equities_memo_sbe_v1_13.message_length.dissect = function(buffer, offset, packet, parent)
  local length = n24x_equities_memo_sbe_v1_13.message_length.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = n24x_equities_memo_sbe_v1_13.message_length.display(value, buffer, offset, packet, parent)

  parent:add(omi_n24x_equities_memo_sbe_v1_13.fields.message_length, range, value, display)

  return offset + length, value
end

-- Message Type
n24x_equities_memo_sbe_v1_13.message_type = {}

-- Size: Message Type
n24x_equities_memo_sbe_v1_13.message_type.size = 1

-- Display: Message Type
n24x_equities_memo_sbe_v1_13.message_type.display = function(value)
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
n24x_equities_memo_sbe_v1_13.message_type.dissect = function(buffer, offset, packet, parent)
  local length = n24x_equities_memo_sbe_v1_13.message_type.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = n24x_equities_memo_sbe_v1_13.message_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_n24x_equities_memo_sbe_v1_13.fields.message_type, range, value, display)

  return offset + length, value
end

-- Common Header
n24x_equities_memo_sbe_v1_13.common_header = {}

-- Calculate size of: Common Header
n24x_equities_memo_sbe_v1_13.common_header.size = function(buffer, offset)
  local index = 0

  index = index + n24x_equities_memo_sbe_v1_13.message_type.size

  index = index + n24x_equities_memo_sbe_v1_13.message_length.size

  return index
end

-- Display: Common Header
n24x_equities_memo_sbe_v1_13.common_header.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Common Header
n24x_equities_memo_sbe_v1_13.common_header.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Message Type: 1 Byte Unsigned Fixed Width Integer Enum with 16 values
  index, message_type = n24x_equities_memo_sbe_v1_13.message_type.dissect(buffer, index, packet, parent)

  -- Message Length: 2 Byte Unsigned Fixed Width Integer
  index, message_length = n24x_equities_memo_sbe_v1_13.message_length.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Common Header
n24x_equities_memo_sbe_v1_13.common_header.dissect = function(buffer, offset, packet, parent)
  if show.common_header then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_n24x_equities_memo_sbe_v1_13.fields.common_header, buffer(offset, 0))
    local index = n24x_equities_memo_sbe_v1_13.common_header.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = n24x_equities_memo_sbe_v1_13.common_header.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return n24x_equities_memo_sbe_v1_13.common_header.fields(buffer, offset, packet, parent)
  end
end

-- Packet
n24x_equities_memo_sbe_v1_13.packet = {}

-- Dissect Packet
n24x_equities_memo_sbe_v1_13.packet.dissect = function(buffer, packet, parent)
  local index = 0

  -- Common Header: Struct of 2 fields
  index, common_header = n24x_equities_memo_sbe_v1_13.common_header.dissect(buffer, index, packet, parent)

  -- Dependency element: Message Type
  local message_type = buffer(index - 3, 1):uint()

  -- Data: Runtime Type with 15 branches
  index = n24x_equities_memo_sbe_v1_13.data.dissect(buffer, index, packet, parent, message_type)

  return index
end


-----------------------------------------------------------------------
-- Protocol Dissector and Components
-----------------------------------------------------------------------

-- Initialize Dissector
function omi_n24x_equities_memo_sbe_v1_13.init()
end

-- Dissector for 24X Equities Memo Sbe 1.13
function omi_n24x_equities_memo_sbe_v1_13.dissector(buffer, packet, parent)

  -- Set protocol name
  packet.cols.protocol = omi_n24x_equities_memo_sbe_v1_13.name

  -- Dissect protocol
  local protocol = parent:add(omi_n24x_equities_memo_sbe_v1_13, buffer(), omi_n24x_equities_memo_sbe_v1_13.description, "("..buffer:len().." Bytes)")
  return n24x_equities_memo_sbe_v1_13.packet.dissect(buffer, packet, protocol)
end

-- Register With Tcp Table
local tcp_table = DissectorTable.get("tcp.port")
tcp_table:add(65333, omi_n24x_equities_memo_sbe_v1_13)


-----------------------------------------------------------------------
-- Protocol Heuristics
-----------------------------------------------------------------------

-- Verify size of packet
verify.omi_n24x_equities_memo_sbe_v1_13_packet_size = function(buffer)

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
local function omi_n24x_equities_memo_sbe_v1_13_heuristic(buffer, packet, parent)
  -- Verify packet length
  if not verify.omi_n24x_equities_memo_sbe_v1_13_packet_size(buffer) then return false end

  -- Verify Schema Id
  if not verify.schema_id(buffer) then return false end

  -- Verify Version
  if not verify.version(buffer) then return false end

  -- Verify Schema Id
  if not verify.schema_id(buffer) then return false end

  -- Verify Version
  if not verify.version(buffer) then return false end

  -- Protocol is valid, set conversation and dissect this packet
  packet.conversation = omi_n24x_equities_memo_sbe_v1_13
  omi_n24x_equities_memo_sbe_v1_13.dissector(buffer, packet, parent)

  return true
end

-- Register Heuristic for 24X Equities Memo Sbe 1.13
omi_n24x_equities_memo_sbe_v1_13:register_heuristic("tcp", omi_n24x_equities_memo_sbe_v1_13_heuristic)

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
