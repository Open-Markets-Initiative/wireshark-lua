-----------------------------------------------------------------------
-- Lua Script Wireshark Dissector
-- 
-- Please see end of file for rules and regulations
-----------------------------------------------------------------------

-- B3 Equities BinaryEntryPoint Sbe 7.0 Protocol
local b3_equities_binaryentrypoint_sbe_v7_0 = Proto("B3.Equities.BinaryEntryPoint.Sbe.v7.0.Lua", "B3 Equities BinaryEntryPoint Sbe 7.0")

-- Component Tables
local show = {}
local format = {}
local b3_equities_binaryentrypoint_sbe_v7_0_display = {}
local b3_equities_binaryentrypoint_sbe_v7_0_dissect = {}
local b3_equities_binaryentrypoint_sbe_v7_0_size_of = {}
local verify = {}
local translate = {}

-----------------------------------------------------------------------
-- Declare Protocol Fields
-----------------------------------------------------------------------

-- B3 Equities BinaryEntryPoint Sbe 7.0 Fields
b3_equities_binaryentrypoint_sbe_v7_0.fields.account = ProtoField.new("Account", "b3.equities.binaryentrypoint.sbe.v7.0.account", ftypes.UINT32)
b3_equities_binaryentrypoint_sbe_v7_0.fields.account_type = ProtoField.new("Account Type", "b3.equities.binaryentrypoint.sbe.v7.0.accounttype", ftypes.UINT8)
b3_equities_binaryentrypoint_sbe_v7_0.fields.action_requested_from_session_id = ProtoField.new("Action Requested From Session Id", "b3.equities.binaryentrypoint.sbe.v7.0.actionrequestedfromsessionid", ftypes.UINT32)
b3_equities_binaryentrypoint_sbe_v7_0.fields.action_target_group_id = ProtoField.new("Action Target Group Id", "b3.equities.binaryentrypoint.sbe.v7.0.actiontargetgroupid", ftypes.UINT32)
b3_equities_binaryentrypoint_sbe_v7_0.fields.action_target_session_id = ProtoField.new("Action Target Session Id", "b3.equities.binaryentrypoint.sbe.v7.0.actiontargetsessionid", ftypes.UINT32)
b3_equities_binaryentrypoint_sbe_v7_0.fields.aggressor_indicator = ProtoField.new("Aggressor Indicator", "b3.equities.binaryentrypoint.sbe.v7.0.aggressorindicator", ftypes.UINT8)
b3_equities_binaryentrypoint_sbe_v7_0.fields.alloc_account = ProtoField.new("Alloc Account", "b3.equities.binaryentrypoint.sbe.v7.0.allocaccount", ftypes.UINT32)
b3_equities_binaryentrypoint_sbe_v7_0.fields.alloc_id = ProtoField.new("Alloc Id", "b3.equities.binaryentrypoint.sbe.v7.0.allocid", ftypes.UINT64)
b3_equities_binaryentrypoint_sbe_v7_0.fields.alloc_no_orders_type = ProtoField.new("Alloc No Orders Type", "b3.equities.binaryentrypoint.sbe.v7.0.allocnoorderstype", ftypes.STRING)
b3_equities_binaryentrypoint_sbe_v7_0.fields.alloc_qty = ProtoField.new("Alloc Qty", "b3.equities.binaryentrypoint.sbe.v7.0.allocqty", ftypes.UINT64)
b3_equities_binaryentrypoint_sbe_v7_0.fields.alloc_rej_code = ProtoField.new("Alloc Rej Code", "b3.equities.binaryentrypoint.sbe.v7.0.allocrejcode", ftypes.UINT32)
b3_equities_binaryentrypoint_sbe_v7_0.fields.alloc_report_id = ProtoField.new("Alloc Report Id", "b3.equities.binaryentrypoint.sbe.v7.0.allocreportid", ftypes.UINT64)
b3_equities_binaryentrypoint_sbe_v7_0.fields.alloc_report_type = ProtoField.new("Alloc Report Type", "b3.equities.binaryentrypoint.sbe.v7.0.allocreporttype", ftypes.STRING)
b3_equities_binaryentrypoint_sbe_v7_0.fields.alloc_status = ProtoField.new("Alloc Status", "b3.equities.binaryentrypoint.sbe.v7.0.allocstatus", ftypes.STRING)
b3_equities_binaryentrypoint_sbe_v7_0.fields.alloc_trans_type = ProtoField.new("Alloc Trans Type", "b3.equities.binaryentrypoint.sbe.v7.0.alloctranstype", ftypes.STRING)
b3_equities_binaryentrypoint_sbe_v7_0.fields.alloc_type = ProtoField.new("Alloc Type", "b3.equities.binaryentrypoint.sbe.v7.0.alloctype", ftypes.STRING)
b3_equities_binaryentrypoint_sbe_v7_0.fields.allocation_instruction_message = ProtoField.new("Allocation Instruction Message", "b3.equities.binaryentrypoint.sbe.v7.0.allocationinstructionmessage", ftypes.STRING)
b3_equities_binaryentrypoint_sbe_v7_0.fields.allocation_report_message = ProtoField.new("Allocation Report Message", "b3.equities.binaryentrypoint.sbe.v7.0.allocationreportmessage", ftypes.STRING)
b3_equities_binaryentrypoint_sbe_v7_0.fields.asset = ProtoField.new("Asset", "b3.equities.binaryentrypoint.sbe.v7.0.asset", ftypes.STRING)
b3_equities_binaryentrypoint_sbe_v7_0.fields.bidirectional_business_header = ProtoField.new("Bidirectional Business Header", "b3.equities.binaryentrypoint.sbe.v7.0.bidirectionalbusinessheader", ftypes.STRING)
b3_equities_binaryentrypoint_sbe_v7_0.fields.block_length = ProtoField.new("Block Length", "b3.equities.binaryentrypoint.sbe.v7.0.blocklength", ftypes.UINT16)
b3_equities_binaryentrypoint_sbe_v7_0.fields.business_message_reject = ProtoField.new("Business Message Reject", "b3.equities.binaryentrypoint.sbe.v7.0.businessmessagereject", ftypes.STRING)
b3_equities_binaryentrypoint_sbe_v7_0.fields.business_reject_reason = ProtoField.new("Business Reject Reason", "b3.equities.binaryentrypoint.sbe.v7.0.businessrejectreason", ftypes.UINT32)
b3_equities_binaryentrypoint_sbe_v7_0.fields.business_reject_ref_id = ProtoField.new("Business Reject Ref Id", "b3.equities.binaryentrypoint.sbe.v7.0.businessrejectrefid", ftypes.UINT64)
b3_equities_binaryentrypoint_sbe_v7_0.fields.cancel_on_disconnect_type = ProtoField.new("Cancel On Disconnect Type", "b3.equities.binaryentrypoint.sbe.v7.0.cancelondisconnecttype", ftypes.UINT8)
b3_equities_binaryentrypoint_sbe_v7_0.fields.clearing_business_date = ProtoField.new("Clearing Business Date", "b3.equities.binaryentrypoint.sbe.v7.0.clearingbusinessdate", ftypes.UINT16)
b3_equities_binaryentrypoint_sbe_v7_0.fields.client_app_name = ProtoField.new("Client App Name", "b3.equities.binaryentrypoint.sbe.v7.0.clientappname", ftypes.STRING)
b3_equities_binaryentrypoint_sbe_v7_0.fields.client_app_version = ProtoField.new("Client App Version", "b3.equities.binaryentrypoint.sbe.v7.0.clientappversion", ftypes.STRING)
b3_equities_binaryentrypoint_sbe_v7_0.fields.client_ip = ProtoField.new("Client Ip", "b3.equities.binaryentrypoint.sbe.v7.0.clientip", ftypes.STRING)
b3_equities_binaryentrypoint_sbe_v7_0.fields.clordid = ProtoField.new("ClOrdId", "b3.equities.binaryentrypoint.sbe.v7.0.clordid", ftypes.UINT64)
b3_equities_binaryentrypoint_sbe_v7_0.fields.clordid_optional = ProtoField.new("ClOrdId Optional", "b3.equities.binaryentrypoint.sbe.v7.0.clordidoptional", ftypes.UINT64)
b3_equities_binaryentrypoint_sbe_v7_0.fields.cod_timeout_window = ProtoField.new("Cod Timeout Window", "b3.equities.binaryentrypoint.sbe.v7.0.codtimeoutwindow", ftypes.UINT64)
b3_equities_binaryentrypoint_sbe_v7_0.fields.contra_broker = ProtoField.new("Contra Broker", "b3.equities.binaryentrypoint.sbe.v7.0.contrabroker", ftypes.UINT32)
b3_equities_binaryentrypoint_sbe_v7_0.fields.contrary_instruction_indicator = ProtoField.new("Contrary Instruction Indicator", "b3.equities.binaryentrypoint.sbe.v7.0.contraryinstructionindicator", ftypes.UINT8)
b3_equities_binaryentrypoint_sbe_v7_0.fields.count = ProtoField.new("Count", "b3.equities.binaryentrypoint.sbe.v7.0.count", ftypes.UINT32)
b3_equities_binaryentrypoint_sbe_v7_0.fields.credentials = ProtoField.new("Credentials", "b3.equities.binaryentrypoint.sbe.v7.0.credentials", ftypes.STRING)
b3_equities_binaryentrypoint_sbe_v7_0.fields.crossed_indicator = ProtoField.new("Crossed Indicator", "b3.equities.binaryentrypoint.sbe.v7.0.crossedindicator", ftypes.UINT16)
b3_equities_binaryentrypoint_sbe_v7_0.fields.crossid = ProtoField.new("CrossId", "b3.equities.binaryentrypoint.sbe.v7.0.crossid", ftypes.UINT64)
b3_equities_binaryentrypoint_sbe_v7_0.fields.crossid_optional = ProtoField.new("CrossId Optional", "b3.equities.binaryentrypoint.sbe.v7.0.crossidoptional", ftypes.UINT64)
b3_equities_binaryentrypoint_sbe_v7_0.fields.cum_qty = ProtoField.new("Cum Qty", "b3.equities.binaryentrypoint.sbe.v7.0.cumqty", ftypes.UINT64)
b3_equities_binaryentrypoint_sbe_v7_0.fields.current_session_ver_id = ProtoField.new("Current Session Ver Id", "b3.equities.binaryentrypoint.sbe.v7.0.currentsessionverid", ftypes.UINT64)
b3_equities_binaryentrypoint_sbe_v7_0.fields.custodian = ProtoField.new("Custodian", "b3.equities.binaryentrypoint.sbe.v7.0.custodian", ftypes.UINT32)
b3_equities_binaryentrypoint_sbe_v7_0.fields.custodian_info = ProtoField.new("Custodian Info", "b3.equities.binaryentrypoint.sbe.v7.0.custodianinfo", ftypes.STRING)
b3_equities_binaryentrypoint_sbe_v7_0.fields.custody_account = ProtoField.new("Custody Account", "b3.equities.binaryentrypoint.sbe.v7.0.custodyaccount", ftypes.UINT32)
b3_equities_binaryentrypoint_sbe_v7_0.fields.custody_allocation_type = ProtoField.new("Custody Allocation Type", "b3.equities.binaryentrypoint.sbe.v7.0.custodyallocationtype", ftypes.UINT32)
b3_equities_binaryentrypoint_sbe_v7_0.fields.cxl_rej_response_to = ProtoField.new("Cxl Rej Response To", "b3.equities.binaryentrypoint.sbe.v7.0.cxlrejresponseto", ftypes.UINT8)
b3_equities_binaryentrypoint_sbe_v7_0.fields.days_to_settlement = ProtoField.new("Days To Settlement", "b3.equities.binaryentrypoint.sbe.v7.0.daystosettlement", ftypes.UINT16)
b3_equities_binaryentrypoint_sbe_v7_0.fields.days_to_settlement_optional = ProtoField.new("Days To Settlement Optional", "b3.equities.binaryentrypoint.sbe.v7.0.daystosettlementoptional", ftypes.UINT16)
b3_equities_binaryentrypoint_sbe_v7_0.fields.desk_id = ProtoField.new("Desk Id", "b3.equities.binaryentrypoint.sbe.v7.0.deskid", ftypes.STRING)
b3_equities_binaryentrypoint_sbe_v7_0.fields.encoding_type = ProtoField.new("Encoding Type", "b3.equities.binaryentrypoint.sbe.v7.0.encodingtype", ftypes.UINT16)
b3_equities_binaryentrypoint_sbe_v7_0.fields.entering_firm = ProtoField.new("Entering Firm", "b3.equities.binaryentrypoint.sbe.v7.0.enteringfirm", ftypes.UINT32)
b3_equities_binaryentrypoint_sbe_v7_0.fields.entering_firm_optional = ProtoField.new("Entering Firm Optional", "b3.equities.binaryentrypoint.sbe.v7.0.enteringfirmoptional", ftypes.UINT32)
b3_equities_binaryentrypoint_sbe_v7_0.fields.entering_trader = ProtoField.new("Entering Trader", "b3.equities.binaryentrypoint.sbe.v7.0.enteringtrader", ftypes.STRING)
b3_equities_binaryentrypoint_sbe_v7_0.fields.establish_ack_message = ProtoField.new("Establish Ack Message", "b3.equities.binaryentrypoint.sbe.v7.0.establishackmessage", ftypes.STRING)
b3_equities_binaryentrypoint_sbe_v7_0.fields.establish_message = ProtoField.new("Establish Message", "b3.equities.binaryentrypoint.sbe.v7.0.establishmessage", ftypes.STRING)
b3_equities_binaryentrypoint_sbe_v7_0.fields.establish_reject_message = ProtoField.new("Establish Reject Message", "b3.equities.binaryentrypoint.sbe.v7.0.establishrejectmessage", ftypes.STRING)
b3_equities_binaryentrypoint_sbe_v7_0.fields.establishment_reject_code = ProtoField.new("Establishment Reject Code", "b3.equities.binaryentrypoint.sbe.v7.0.establishmentrejectcode", ftypes.UINT8)
b3_equities_binaryentrypoint_sbe_v7_0.fields.exec_id = ProtoField.new("Exec Id", "b3.equities.binaryentrypoint.sbe.v7.0.execid", ftypes.UINT64)
b3_equities_binaryentrypoint_sbe_v7_0.fields.exec_ref_id = ProtoField.new("Exec Ref Id", "b3.equities.binaryentrypoint.sbe.v7.0.execrefid", ftypes.UINT64)
b3_equities_binaryentrypoint_sbe_v7_0.fields.exec_restatement_reason = ProtoField.new("Exec Restatement Reason", "b3.equities.binaryentrypoint.sbe.v7.0.execrestatementreason", ftypes.UINT8)
b3_equities_binaryentrypoint_sbe_v7_0.fields.exec_type = ProtoField.new("Exec Type", "b3.equities.binaryentrypoint.sbe.v7.0.exectype", ftypes.STRING)
b3_equities_binaryentrypoint_sbe_v7_0.fields.execute_underlying_trade = ProtoField.new("Execute Underlying Trade", "b3.equities.binaryentrypoint.sbe.v7.0.executeunderlyingtrade", ftypes.STRING)
b3_equities_binaryentrypoint_sbe_v7_0.fields.executing_trader = ProtoField.new("Executing Trader", "b3.equities.binaryentrypoint.sbe.v7.0.executingtrader", ftypes.STRING)
b3_equities_binaryentrypoint_sbe_v7_0.fields.executing_trader_optional = ProtoField.new("Executing Trader Optional", "b3.equities.binaryentrypoint.sbe.v7.0.executingtraderoptional", ftypes.STRING)
b3_equities_binaryentrypoint_sbe_v7_0.fields.execution_report_cancel_message = ProtoField.new("Execution Report Cancel Message", "b3.equities.binaryentrypoint.sbe.v7.0.executionreportcancelmessage", ftypes.STRING)
b3_equities_binaryentrypoint_sbe_v7_0.fields.execution_report_forward_message = ProtoField.new("Execution Report Forward Message", "b3.equities.binaryentrypoint.sbe.v7.0.executionreportforwardmessage", ftypes.STRING)
b3_equities_binaryentrypoint_sbe_v7_0.fields.execution_report_modify_message = ProtoField.new("Execution Report Modify Message", "b3.equities.binaryentrypoint.sbe.v7.0.executionreportmodifymessage", ftypes.STRING)
b3_equities_binaryentrypoint_sbe_v7_0.fields.execution_report_new_message = ProtoField.new("Execution Report New Message", "b3.equities.binaryentrypoint.sbe.v7.0.executionreportnewmessage", ftypes.STRING)
b3_equities_binaryentrypoint_sbe_v7_0.fields.execution_report_reject_message = ProtoField.new("Execution Report Reject Message", "b3.equities.binaryentrypoint.sbe.v7.0.executionreportrejectmessage", ftypes.STRING)
b3_equities_binaryentrypoint_sbe_v7_0.fields.execution_report_trade_message = ProtoField.new("Execution Report Trade Message", "b3.equities.binaryentrypoint.sbe.v7.0.executionreporttrademessage", ftypes.STRING)
b3_equities_binaryentrypoint_sbe_v7_0.fields.expire_date = ProtoField.new("Expire Date", "b3.equities.binaryentrypoint.sbe.v7.0.expiredate", ftypes.UINT16)
b3_equities_binaryentrypoint_sbe_v7_0.fields.fixed_rate = ProtoField.new("Fixed Rate", "b3.equities.binaryentrypoint.sbe.v7.0.fixedrate", ftypes.DOUBLE)
b3_equities_binaryentrypoint_sbe_v7_0.fields.fixed_rate_optional = ProtoField.new("Fixed Rate Optional", "b3.equities.binaryentrypoint.sbe.v7.0.fixedrateoptional", ftypes.DOUBLE)
b3_equities_binaryentrypoint_sbe_v7_0.fields.framing_header = ProtoField.new("Framing Header", "b3.equities.binaryentrypoint.sbe.v7.0.framingheader", ftypes.STRING)
b3_equities_binaryentrypoint_sbe_v7_0.fields.from_seq_no = ProtoField.new("From Seq No", "b3.equities.binaryentrypoint.sbe.v7.0.fromseqno", ftypes.UINT32)
b3_equities_binaryentrypoint_sbe_v7_0.fields.group_size_encoding = ProtoField.new("Group Size Encoding", "b3.equities.binaryentrypoint.sbe.v7.0.groupsizeencoding", ftypes.STRING)
b3_equities_binaryentrypoint_sbe_v7_0.fields.header_message = ProtoField.new("Header Message", "b3.equities.binaryentrypoint.sbe.v7.0.headermessage", ftypes.STRING)
b3_equities_binaryentrypoint_sbe_v7_0.fields.inbound_business_header = ProtoField.new("Inbound Business Header", "b3.equities.binaryentrypoint.sbe.v7.0.inboundbusinessheader", ftypes.STRING)
b3_equities_binaryentrypoint_sbe_v7_0.fields.individual_alloc_id = ProtoField.new("Individual Alloc Id", "b3.equities.binaryentrypoint.sbe.v7.0.individualallocid", ftypes.UINT64)
b3_equities_binaryentrypoint_sbe_v7_0.fields.investor_id = ProtoField.new("Investor Id", "b3.equities.binaryentrypoint.sbe.v7.0.investorid", ftypes.STRING)
b3_equities_binaryentrypoint_sbe_v7_0.fields.keep_alive_interval = ProtoField.new("Keep Alive Interval", "b3.equities.binaryentrypoint.sbe.v7.0.keepaliveinterval", ftypes.UINT64)
b3_equities_binaryentrypoint_sbe_v7_0.fields.last_incoming_seq_no = ProtoField.new("Last Incoming Seq No", "b3.equities.binaryentrypoint.sbe.v7.0.lastincomingseqno", ftypes.UINT32)
b3_equities_binaryentrypoint_sbe_v7_0.fields.last_incoming_seq_no_optional = ProtoField.new("Last Incoming Seq No Optional", "b3.equities.binaryentrypoint.sbe.v7.0.lastincomingseqnooptional", ftypes.UINT32)
b3_equities_binaryentrypoint_sbe_v7_0.fields.last_px = ProtoField.new("Last Px", "b3.equities.binaryentrypoint.sbe.v7.0.lastpx", ftypes.DOUBLE)
b3_equities_binaryentrypoint_sbe_v7_0.fields.last_qty = ProtoField.new("Last Qty", "b3.equities.binaryentrypoint.sbe.v7.0.lastqty", ftypes.UINT64)
b3_equities_binaryentrypoint_sbe_v7_0.fields.leaves_qty = ProtoField.new("Leaves Qty", "b3.equities.binaryentrypoint.sbe.v7.0.leavesqty", ftypes.UINT64)
b3_equities_binaryentrypoint_sbe_v7_0.fields.leg_ratio_qty = ProtoField.new("Leg Ratio Qty", "b3.equities.binaryentrypoint.sbe.v7.0.legratioqty", ftypes.DOUBLE)
b3_equities_binaryentrypoint_sbe_v7_0.fields.leg_security_exchange = ProtoField.new("Leg Security Exchange", "b3.equities.binaryentrypoint.sbe.v7.0.legsecurityexchange", ftypes.STRING)
b3_equities_binaryentrypoint_sbe_v7_0.fields.leg_side = ProtoField.new("Leg Side", "b3.equities.binaryentrypoint.sbe.v7.0.legside", ftypes.STRING)
b3_equities_binaryentrypoint_sbe_v7_0.fields.leg_symbol = ProtoField.new("Leg Symbol", "b3.equities.binaryentrypoint.sbe.v7.0.legsymbol", ftypes.STRING)
b3_equities_binaryentrypoint_sbe_v7_0.fields.length = ProtoField.new("Length", "b3.equities.binaryentrypoint.sbe.v7.0.length", ftypes.UINT8)
b3_equities_binaryentrypoint_sbe_v7_0.fields.long_qty = ProtoField.new("Long Qty", "b3.equities.binaryentrypoint.sbe.v7.0.longqty", ftypes.UINT64)
b3_equities_binaryentrypoint_sbe_v7_0.fields.long_qty_optional = ProtoField.new("Long Qty Optional", "b3.equities.binaryentrypoint.sbe.v7.0.longqtyoptional", ftypes.UINT64)
b3_equities_binaryentrypoint_sbe_v7_0.fields.market_segment_i_d_market_segment_id = ProtoField.new("Market Segment I D Market Segment Id", "b3.equities.binaryentrypoint.sbe.v7.0.marketsegmentidmarketsegmentid", ftypes.UINT8)
b3_equities_binaryentrypoint_sbe_v7_0.fields.market_segment_i_d_market_segment_id_optional = ProtoField.new("Market Segment I D Market Segment Id Optional", "b3.equities.binaryentrypoint.sbe.v7.0.marketsegmentidmarketsegmentidoptional", ftypes.UINT8)
b3_equities_binaryentrypoint_sbe_v7_0.fields.market_segment_received_time = ProtoField.new("Market Segment Received Time", "b3.equities.binaryentrypoint.sbe.v7.0.marketsegmentreceivedtime", ftypes.UINT64)
b3_equities_binaryentrypoint_sbe_v7_0.fields.mass_action_reject_reason = ProtoField.new("Mass Action Reject Reason", "b3.equities.binaryentrypoint.sbe.v7.0.massactionrejectreason", ftypes.UINT8)
b3_equities_binaryentrypoint_sbe_v7_0.fields.mass_action_report_id = ProtoField.new("Mass Action Report Id", "b3.equities.binaryentrypoint.sbe.v7.0.massactionreportid", ftypes.UINT64)
b3_equities_binaryentrypoint_sbe_v7_0.fields.mass_action_report_id_optional = ProtoField.new("Mass Action Report Id Optional", "b3.equities.binaryentrypoint.sbe.v7.0.massactionreportidoptional", ftypes.UINT64)
b3_equities_binaryentrypoint_sbe_v7_0.fields.mass_action_response = ProtoField.new("Mass Action Response", "b3.equities.binaryentrypoint.sbe.v7.0.massactionresponse", ftypes.STRING)
b3_equities_binaryentrypoint_sbe_v7_0.fields.mass_action_scope = ProtoField.new("Mass Action Scope", "b3.equities.binaryentrypoint.sbe.v7.0.massactionscope", ftypes.UINT8)
b3_equities_binaryentrypoint_sbe_v7_0.fields.mass_action_type = ProtoField.new("Mass Action Type", "b3.equities.binaryentrypoint.sbe.v7.0.massactiontype", ftypes.UINT8)
b3_equities_binaryentrypoint_sbe_v7_0.fields.mass_cancel_restatement_reason = ProtoField.new("Mass Cancel Restatement Reason", "b3.equities.binaryentrypoint.sbe.v7.0.masscancelrestatementreason", ftypes.UINT8)
b3_equities_binaryentrypoint_sbe_v7_0.fields.max_floor = ProtoField.new("Max Floor", "b3.equities.binaryentrypoint.sbe.v7.0.maxfloor", ftypes.UINT64)
b3_equities_binaryentrypoint_sbe_v7_0.fields.memo = ProtoField.new("Memo", "b3.equities.binaryentrypoint.sbe.v7.0.memo", ftypes.STRING)
b3_equities_binaryentrypoint_sbe_v7_0.fields.message_header = ProtoField.new("Message Header", "b3.equities.binaryentrypoint.sbe.v7.0.messageheader", ftypes.STRING)
b3_equities_binaryentrypoint_sbe_v7_0.fields.message_length = ProtoField.new("Message Length", "b3.equities.binaryentrypoint.sbe.v7.0.messagelength", ftypes.UINT16)
b3_equities_binaryentrypoint_sbe_v7_0.fields.min_qty = ProtoField.new("Min Qty", "b3.equities.binaryentrypoint.sbe.v7.0.minqty", ftypes.UINT64)
b3_equities_binaryentrypoint_sbe_v7_0.fields.mm_protection_reset = ProtoField.new("Mm Protection Reset", "b3.equities.binaryentrypoint.sbe.v7.0.mmprotectionreset", ftypes.UINT8)
b3_equities_binaryentrypoint_sbe_v7_0.fields.msg_seq_num = ProtoField.new("Msg Seq Num", "b3.equities.binaryentrypoint.sbe.v7.0.msgseqnum", ftypes.UINT32)
b3_equities_binaryentrypoint_sbe_v7_0.fields.multi_leg_reporting_type = ProtoField.new("Multi Leg Reporting Type", "b3.equities.binaryentrypoint.sbe.v7.0.multilegreportingtype", ftypes.STRING)
b3_equities_binaryentrypoint_sbe_v7_0.fields.negotiate_message = ProtoField.new("Negotiate Message", "b3.equities.binaryentrypoint.sbe.v7.0.negotiatemessage", ftypes.STRING)
b3_equities_binaryentrypoint_sbe_v7_0.fields.negotiate_reject_message = ProtoField.new("Negotiate Reject Message", "b3.equities.binaryentrypoint.sbe.v7.0.negotiaterejectmessage", ftypes.STRING)
b3_equities_binaryentrypoint_sbe_v7_0.fields.negotiate_response_message = ProtoField.new("Negotiate Response Message", "b3.equities.binaryentrypoint.sbe.v7.0.negotiateresponsemessage", ftypes.STRING)
b3_equities_binaryentrypoint_sbe_v7_0.fields.negotiation_reject_code = ProtoField.new("Negotiation Reject Code", "b3.equities.binaryentrypoint.sbe.v7.0.negotiationrejectcode", ftypes.UINT8)
b3_equities_binaryentrypoint_sbe_v7_0.fields.new_order_cross_message = ProtoField.new("New Order Cross Message", "b3.equities.binaryentrypoint.sbe.v7.0.newordercrossmessage", ftypes.STRING)
b3_equities_binaryentrypoint_sbe_v7_0.fields.new_order_single_message = ProtoField.new("New Order Single Message", "b3.equities.binaryentrypoint.sbe.v7.0.newordersinglemessage", ftypes.STRING)
b3_equities_binaryentrypoint_sbe_v7_0.fields.next_seq_no = ProtoField.new("Next Seq No", "b3.equities.binaryentrypoint.sbe.v7.0.nextseqno", ftypes.UINT32)
b3_equities_binaryentrypoint_sbe_v7_0.fields.no_comp_i_ds_group = ProtoField.new("No Comp I Ds Group", "b3.equities.binaryentrypoint.sbe.v7.0.nocompidsgroup", ftypes.STRING)
b3_equities_binaryentrypoint_sbe_v7_0.fields.no_comp_i_ds_groups = ProtoField.new("No Comp I Ds Groups", "b3.equities.binaryentrypoint.sbe.v7.0.nocompidsgroups", ftypes.STRING)
b3_equities_binaryentrypoint_sbe_v7_0.fields.no_legs_group = ProtoField.new("No Legs Group", "b3.equities.binaryentrypoint.sbe.v7.0.nolegsgroup", ftypes.STRING)
b3_equities_binaryentrypoint_sbe_v7_0.fields.no_legs_groups = ProtoField.new("No Legs Groups", "b3.equities.binaryentrypoint.sbe.v7.0.nolegsgroups", ftypes.STRING)
b3_equities_binaryentrypoint_sbe_v7_0.fields.no_positions_group = ProtoField.new("No Positions Group", "b3.equities.binaryentrypoint.sbe.v7.0.nopositionsgroup", ftypes.STRING)
b3_equities_binaryentrypoint_sbe_v7_0.fields.no_positions_groups = ProtoField.new("No Positions Groups", "b3.equities.binaryentrypoint.sbe.v7.0.nopositionsgroups", ftypes.STRING)
b3_equities_binaryentrypoint_sbe_v7_0.fields.no_sides_group = ProtoField.new("No Sides Group", "b3.equities.binaryentrypoint.sbe.v7.0.nosidesgroup", ftypes.STRING)
b3_equities_binaryentrypoint_sbe_v7_0.fields.no_sides_groups = ProtoField.new("No Sides Groups", "b3.equities.binaryentrypoint.sbe.v7.0.nosidesgroups", ftypes.STRING)
b3_equities_binaryentrypoint_sbe_v7_0.fields.not_applied_message = ProtoField.new("Not Applied Message", "b3.equities.binaryentrypoint.sbe.v7.0.notappliedmessage", ftypes.STRING)
b3_equities_binaryentrypoint_sbe_v7_0.fields.num_in_group = ProtoField.new("Num In Group", "b3.equities.binaryentrypoint.sbe.v7.0.numingroup", ftypes.UINT8)
b3_equities_binaryentrypoint_sbe_v7_0.fields.onbehalf_firm = ProtoField.new("Onbehalf Firm", "b3.equities.binaryentrypoint.sbe.v7.0.onbehalffirm", ftypes.UINT32)
b3_equities_binaryentrypoint_sbe_v7_0.fields.ord_rej_reason = ProtoField.new("Ord Rej Reason", "b3.equities.binaryentrypoint.sbe.v7.0.ordrejreason", ftypes.UINT32)
b3_equities_binaryentrypoint_sbe_v7_0.fields.ord_status = ProtoField.new("Ord Status", "b3.equities.binaryentrypoint.sbe.v7.0.ordstatus", ftypes.STRING)
b3_equities_binaryentrypoint_sbe_v7_0.fields.ord_tag_id = ProtoField.new("Ord Tag Id", "b3.equities.binaryentrypoint.sbe.v7.0.ordtagid", ftypes.UINT8)
b3_equities_binaryentrypoint_sbe_v7_0.fields.order_cancel_replace_request_message = ProtoField.new("Order Cancel Replace Request Message", "b3.equities.binaryentrypoint.sbe.v7.0.ordercancelreplacerequestmessage", ftypes.STRING)
b3_equities_binaryentrypoint_sbe_v7_0.fields.order_cancel_request_message = ProtoField.new("Order Cancel Request Message", "b3.equities.binaryentrypoint.sbe.v7.0.ordercancelrequestmessage", ftypes.STRING)
b3_equities_binaryentrypoint_sbe_v7_0.fields.order_category = ProtoField.new("Order Category", "b3.equities.binaryentrypoint.sbe.v7.0.ordercategory", ftypes.STRING)
b3_equities_binaryentrypoint_sbe_v7_0.fields.order_id = ProtoField.new("Order Id", "b3.equities.binaryentrypoint.sbe.v7.0.orderid", ftypes.UINT64)
b3_equities_binaryentrypoint_sbe_v7_0.fields.order_id_optional = ProtoField.new("Order Id Optional", "b3.equities.binaryentrypoint.sbe.v7.0.orderidoptional", ftypes.UINT64)
b3_equities_binaryentrypoint_sbe_v7_0.fields.order_mass_action_report_message = ProtoField.new("Order Mass Action Report Message", "b3.equities.binaryentrypoint.sbe.v7.0.ordermassactionreportmessage", ftypes.STRING)
b3_equities_binaryentrypoint_sbe_v7_0.fields.order_mass_action_request_message = ProtoField.new("Order Mass Action Request Message", "b3.equities.binaryentrypoint.sbe.v7.0.ordermassactionrequestmessage", ftypes.STRING)
b3_equities_binaryentrypoint_sbe_v7_0.fields.order_qty = ProtoField.new("Order Qty", "b3.equities.binaryentrypoint.sbe.v7.0.orderqty", ftypes.UINT64)
b3_equities_binaryentrypoint_sbe_v7_0.fields.order_qty_optional = ProtoField.new("Order Qty Optional", "b3.equities.binaryentrypoint.sbe.v7.0.orderqtyoptional", ftypes.UINT64)
b3_equities_binaryentrypoint_sbe_v7_0.fields.ordtype = ProtoField.new("OrdType", "b3.equities.binaryentrypoint.sbe.v7.0.ordtype", ftypes.STRING)
b3_equities_binaryentrypoint_sbe_v7_0.fields.orig_pos_req_ref_id = ProtoField.new("Orig Pos Req Ref Id", "b3.equities.binaryentrypoint.sbe.v7.0.origposreqrefid", ftypes.UINT64)
b3_equities_binaryentrypoint_sbe_v7_0.fields.origclordid = ProtoField.new("OrigClOrdId", "b3.equities.binaryentrypoint.sbe.v7.0.origclordid", ftypes.UINT64)
b3_equities_binaryentrypoint_sbe_v7_0.fields.outbound_business_header = ProtoField.new("Outbound Business Header", "b3.equities.binaryentrypoint.sbe.v7.0.outboundbusinessheader", ftypes.STRING)
b3_equities_binaryentrypoint_sbe_v7_0.fields.packet = ProtoField.new("Packet", "b3.equities.binaryentrypoint.sbe.v7.0.packet", ftypes.STRING)
b3_equities_binaryentrypoint_sbe_v7_0.fields.padding = ProtoField.new("Padding", "b3.equities.binaryentrypoint.sbe.v7.0.padding", ftypes.STRING)
b3_equities_binaryentrypoint_sbe_v7_0.fields.payload = ProtoField.new("Payload", "b3.equities.binaryentrypoint.sbe.v7.0.payload", ftypes.STRING)
b3_equities_binaryentrypoint_sbe_v7_0.fields.pos_maint_action = ProtoField.new("Pos Maint Action", "b3.equities.binaryentrypoint.sbe.v7.0.posmaintaction", ftypes.STRING)
b3_equities_binaryentrypoint_sbe_v7_0.fields.pos_maint_result = ProtoField.new("Pos Maint Result", "b3.equities.binaryentrypoint.sbe.v7.0.posmaintresult", ftypes.UINT32)
b3_equities_binaryentrypoint_sbe_v7_0.fields.pos_maint_rpt_id = ProtoField.new("Pos Maint Rpt Id", "b3.equities.binaryentrypoint.sbe.v7.0.posmaintrptid", ftypes.UINT64)
b3_equities_binaryentrypoint_sbe_v7_0.fields.pos_maint_rpt_ref_id = ProtoField.new("Pos Maint Rpt Ref Id", "b3.equities.binaryentrypoint.sbe.v7.0.posmaintrptrefid", ftypes.UINT64)
b3_equities_binaryentrypoint_sbe_v7_0.fields.pos_maint_status = ProtoField.new("Pos Maint Status", "b3.equities.binaryentrypoint.sbe.v7.0.posmaintstatus", ftypes.STRING)
b3_equities_binaryentrypoint_sbe_v7_0.fields.pos_req_id = ProtoField.new("Pos Req Id", "b3.equities.binaryentrypoint.sbe.v7.0.posreqid", ftypes.UINT64)
b3_equities_binaryentrypoint_sbe_v7_0.fields.pos_req_id_optional = ProtoField.new("Pos Req Id Optional", "b3.equities.binaryentrypoint.sbe.v7.0.posreqidoptional", ftypes.UINT64)
b3_equities_binaryentrypoint_sbe_v7_0.fields.pos_trans_type = ProtoField.new("Pos Trans Type", "b3.equities.binaryentrypoint.sbe.v7.0.postranstype", ftypes.UINT8)
b3_equities_binaryentrypoint_sbe_v7_0.fields.pos_type = ProtoField.new("Pos Type", "b3.equities.binaryentrypoint.sbe.v7.0.postype", ftypes.STRING)
b3_equities_binaryentrypoint_sbe_v7_0.fields.position_maintenance_cancel_request_message = ProtoField.new("Position Maintenance Cancel Request Message", "b3.equities.binaryentrypoint.sbe.v7.0.positionmaintenancecancelrequestmessage", ftypes.STRING)
b3_equities_binaryentrypoint_sbe_v7_0.fields.position_maintenance_report_message = ProtoField.new("Position Maintenance Report Message", "b3.equities.binaryentrypoint.sbe.v7.0.positionmaintenancereportmessage", ftypes.STRING)
b3_equities_binaryentrypoint_sbe_v7_0.fields.position_maintenance_request_message = ProtoField.new("Position Maintenance Request Message", "b3.equities.binaryentrypoint.sbe.v7.0.positionmaintenancerequestmessage", ftypes.STRING)
b3_equities_binaryentrypoint_sbe_v7_0.fields.poss_resend = ProtoField.new("Poss Resend", "b3.equities.binaryentrypoint.sbe.v7.0.possresend", ftypes.UINT8)
b3_equities_binaryentrypoint_sbe_v7_0.fields.price = ProtoField.new("Price", "b3.equities.binaryentrypoint.sbe.v7.0.price", ftypes.DOUBLE)
b3_equities_binaryentrypoint_sbe_v7_0.fields.price_optional = ProtoField.new("Price Optional", "b3.equities.binaryentrypoint.sbe.v7.0.priceoptional", ftypes.DOUBLE)
b3_equities_binaryentrypoint_sbe_v7_0.fields.protection_price = ProtoField.new("Protection Price", "b3.equities.binaryentrypoint.sbe.v7.0.protectionprice", ftypes.DOUBLE)
b3_equities_binaryentrypoint_sbe_v7_0.fields.quantity = ProtoField.new("Quantity", "b3.equities.binaryentrypoint.sbe.v7.0.quantity", ftypes.UINT64)
b3_equities_binaryentrypoint_sbe_v7_0.fields.quote_cancel_message = ProtoField.new("Quote Cancel Message", "b3.equities.binaryentrypoint.sbe.v7.0.quotecancelmessage", ftypes.STRING)
b3_equities_binaryentrypoint_sbe_v7_0.fields.quote_id = ProtoField.new("Quote Id", "b3.equities.binaryentrypoint.sbe.v7.0.quoteid", ftypes.UINT64)
b3_equities_binaryentrypoint_sbe_v7_0.fields.quote_id_optional = ProtoField.new("Quote Id Optional", "b3.equities.binaryentrypoint.sbe.v7.0.quoteidoptional", ftypes.UINT64)
b3_equities_binaryentrypoint_sbe_v7_0.fields.quote_message = ProtoField.new("Quote Message", "b3.equities.binaryentrypoint.sbe.v7.0.quotemessage", ftypes.STRING)
b3_equities_binaryentrypoint_sbe_v7_0.fields.quote_reject_reason = ProtoField.new("Quote Reject Reason", "b3.equities.binaryentrypoint.sbe.v7.0.quoterejectreason", ftypes.UINT32)
b3_equities_binaryentrypoint_sbe_v7_0.fields.quote_req_id = ProtoField.new("Quote Req Id", "b3.equities.binaryentrypoint.sbe.v7.0.quotereqid", ftypes.STRING)
b3_equities_binaryentrypoint_sbe_v7_0.fields.quote_request_message = ProtoField.new("Quote Request Message", "b3.equities.binaryentrypoint.sbe.v7.0.quoterequestmessage", ftypes.STRING)
b3_equities_binaryentrypoint_sbe_v7_0.fields.quote_request_reject_message = ProtoField.new("Quote Request Reject Message", "b3.equities.binaryentrypoint.sbe.v7.0.quoterequestrejectmessage", ftypes.STRING)
b3_equities_binaryentrypoint_sbe_v7_0.fields.quote_request_reject_reason = ProtoField.new("Quote Request Reject Reason", "b3.equities.binaryentrypoint.sbe.v7.0.quoterequestrejectreason", ftypes.UINT32)
b3_equities_binaryentrypoint_sbe_v7_0.fields.quote_status = ProtoField.new("Quote Status", "b3.equities.binaryentrypoint.sbe.v7.0.quotestatus", ftypes.UINT8)
b3_equities_binaryentrypoint_sbe_v7_0.fields.quote_status_report_message = ProtoField.new("Quote Status Report Message", "b3.equities.binaryentrypoint.sbe.v7.0.quotestatusreportmessage", ftypes.STRING)
b3_equities_binaryentrypoint_sbe_v7_0.fields.quote_status_response_to = ProtoField.new("Quote Status Response To", "b3.equities.binaryentrypoint.sbe.v7.0.quotestatusresponseto", ftypes.STRING)
b3_equities_binaryentrypoint_sbe_v7_0.fields.ref_comp_id = ProtoField.new("Ref Comp Id", "b3.equities.binaryentrypoint.sbe.v7.0.refcompid", ftypes.UINT32)
b3_equities_binaryentrypoint_sbe_v7_0.fields.ref_msg_type = ProtoField.new("Ref Msg Type", "b3.equities.binaryentrypoint.sbe.v7.0.refmsgtype", ftypes.UINT8)
b3_equities_binaryentrypoint_sbe_v7_0.fields.ref_seq_num = ProtoField.new("Ref Seq Num", "b3.equities.binaryentrypoint.sbe.v7.0.refseqnum", ftypes.UINT32)
b3_equities_binaryentrypoint_sbe_v7_0.fields.request_timestamp = ProtoField.new("Request Timestamp", "b3.equities.binaryentrypoint.sbe.v7.0.requesttimestamp", ftypes.UINT64)
b3_equities_binaryentrypoint_sbe_v7_0.fields.retransmission_message = ProtoField.new("Retransmission Message", "b3.equities.binaryentrypoint.sbe.v7.0.retransmissionmessage", ftypes.STRING)
b3_equities_binaryentrypoint_sbe_v7_0.fields.retransmit_reject_code = ProtoField.new("Retransmit Reject Code", "b3.equities.binaryentrypoint.sbe.v7.0.retransmitrejectcode", ftypes.UINT8)
b3_equities_binaryentrypoint_sbe_v7_0.fields.retransmit_reject_message = ProtoField.new("Retransmit Reject Message", "b3.equities.binaryentrypoint.sbe.v7.0.retransmitrejectmessage", ftypes.STRING)
b3_equities_binaryentrypoint_sbe_v7_0.fields.retransmit_request_message = ProtoField.new("Retransmit Request Message", "b3.equities.binaryentrypoint.sbe.v7.0.retransmitrequestmessage", ftypes.STRING)
b3_equities_binaryentrypoint_sbe_v7_0.fields.routing_instruction = ProtoField.new("Routing Instruction", "b3.equities.binaryentrypoint.sbe.v7.0.routinginstruction", ftypes.UINT8)
b3_equities_binaryentrypoint_sbe_v7_0.fields.schema_id = ProtoField.new("Schema Id", "b3.equities.binaryentrypoint.sbe.v7.0.schemaid", ftypes.UINT16)
b3_equities_binaryentrypoint_sbe_v7_0.fields.secondary_exec_id = ProtoField.new("Secondary Exec Id", "b3.equities.binaryentrypoint.sbe.v7.0.secondaryexecid", ftypes.UINT64)
b3_equities_binaryentrypoint_sbe_v7_0.fields.secondary_order_id = ProtoField.new("Secondary Order Id", "b3.equities.binaryentrypoint.sbe.v7.0.secondaryorderid", ftypes.UINT64)
b3_equities_binaryentrypoint_sbe_v7_0.fields.secondary_order_id_optional = ProtoField.new("Secondary Order Id Optional", "b3.equities.binaryentrypoint.sbe.v7.0.secondaryorderidoptional", ftypes.UINT64)
b3_equities_binaryentrypoint_sbe_v7_0.fields.security_definition_request_message = ProtoField.new("Security Definition Request Message", "b3.equities.binaryentrypoint.sbe.v7.0.securitydefinitionrequestmessage", ftypes.STRING)
b3_equities_binaryentrypoint_sbe_v7_0.fields.security_definition_response_message = ProtoField.new("Security Definition Response Message", "b3.equities.binaryentrypoint.sbe.v7.0.securitydefinitionresponsemessage", ftypes.STRING)
b3_equities_binaryentrypoint_sbe_v7_0.fields.security_exchange = ProtoField.new("Security Exchange", "b3.equities.binaryentrypoint.sbe.v7.0.securityexchange", ftypes.STRING)
b3_equities_binaryentrypoint_sbe_v7_0.fields.security_id = ProtoField.new("Security Id", "b3.equities.binaryentrypoint.sbe.v7.0.securityid", ftypes.UINT64)
b3_equities_binaryentrypoint_sbe_v7_0.fields.security_id_optional = ProtoField.new("Security Id Optional", "b3.equities.binaryentrypoint.sbe.v7.0.securityidoptional", ftypes.UINT64)
b3_equities_binaryentrypoint_sbe_v7_0.fields.security_req_id = ProtoField.new("Security Req Id", "b3.equities.binaryentrypoint.sbe.v7.0.securityreqid", ftypes.UINT64)
b3_equities_binaryentrypoint_sbe_v7_0.fields.security_response_id = ProtoField.new("Security Response Id", "b3.equities.binaryentrypoint.sbe.v7.0.securityresponseid", ftypes.UINT64)
b3_equities_binaryentrypoint_sbe_v7_0.fields.security_response_type = ProtoField.new("Security Response Type", "b3.equities.binaryentrypoint.sbe.v7.0.securityresponsetype", ftypes.UINT8)
b3_equities_binaryentrypoint_sbe_v7_0.fields.security_strategy_type = ProtoField.new("Security Strategy Type", "b3.equities.binaryentrypoint.sbe.v7.0.securitystrategytype", ftypes.STRING)
b3_equities_binaryentrypoint_sbe_v7_0.fields.self_trade_prevention_instruction = ProtoField.new("Self Trade Prevention Instruction", "b3.equities.binaryentrypoint.sbe.v7.0.selftradepreventioninstruction", ftypes.UINT8)
b3_equities_binaryentrypoint_sbe_v7_0.fields.sender_location = ProtoField.new("Sender Location", "b3.equities.binaryentrypoint.sbe.v7.0.senderlocation", ftypes.STRING)
b3_equities_binaryentrypoint_sbe_v7_0.fields.sending_time = ProtoField.new("Sending Time", "b3.equities.binaryentrypoint.sbe.v7.0.sendingtime", ftypes.UINT64)
b3_equities_binaryentrypoint_sbe_v7_0.fields.sequence_message = ProtoField.new("Sequence Message", "b3.equities.binaryentrypoint.sbe.v7.0.sequencemessage", ftypes.STRING)
b3_equities_binaryentrypoint_sbe_v7_0.fields.session_id = ProtoField.new("Session Id", "b3.equities.binaryentrypoint.sbe.v7.0.sessionid", ftypes.UINT32)
b3_equities_binaryentrypoint_sbe_v7_0.fields.session_ver_id = ProtoField.new("Session Ver Id", "b3.equities.binaryentrypoint.sbe.v7.0.sessionverid", ftypes.UINT64)
b3_equities_binaryentrypoint_sbe_v7_0.fields.settltype = ProtoField.new("SettlType", "b3.equities.binaryentrypoint.sbe.v7.0.settltype", ftypes.STRING)
b3_equities_binaryentrypoint_sbe_v7_0.fields.settltype_optional = ProtoField.new("SettlType Optional", "b3.equities.binaryentrypoint.sbe.v7.0.settltypeoptional", ftypes.STRING)
b3_equities_binaryentrypoint_sbe_v7_0.fields.short_qty = ProtoField.new("Short Qty", "b3.equities.binaryentrypoint.sbe.v7.0.shortqty", ftypes.UINT64)
b3_equities_binaryentrypoint_sbe_v7_0.fields.side = ProtoField.new("Side", "b3.equities.binaryentrypoint.sbe.v7.0.side", ftypes.STRING)
b3_equities_binaryentrypoint_sbe_v7_0.fields.side_optional = ProtoField.new("Side Optional", "b3.equities.binaryentrypoint.sbe.v7.0.sideoptional", ftypes.STRING)
b3_equities_binaryentrypoint_sbe_v7_0.fields.simple_modify_order_message = ProtoField.new("Simple Modify Order Message", "b3.equities.binaryentrypoint.sbe.v7.0.simplemodifyordermessage", ftypes.STRING)
b3_equities_binaryentrypoint_sbe_v7_0.fields.simple_new_order_message = ProtoField.new("Simple New Order Message", "b3.equities.binaryentrypoint.sbe.v7.0.simplenewordermessage", ftypes.STRING)
b3_equities_binaryentrypoint_sbe_v7_0.fields.simple_open_frame = ProtoField.new("Simple Open Frame", "b3.equities.binaryentrypoint.sbe.v7.0.simpleopenframe", ftypes.STRING)
b3_equities_binaryentrypoint_sbe_v7_0.fields.simple_open_framing_header = ProtoField.new("Simple Open Framing Header", "b3.equities.binaryentrypoint.sbe.v7.0.simpleopenframingheader", ftypes.STRING)
b3_equities_binaryentrypoint_sbe_v7_0.fields.simple_ordtype = ProtoField.new("Simple OrdType", "b3.equities.binaryentrypoint.sbe.v7.0.simpleordtype", ftypes.STRING)
b3_equities_binaryentrypoint_sbe_v7_0.fields.single_cancel_restatement_reason = ProtoField.new("Single Cancel Restatement Reason", "b3.equities.binaryentrypoint.sbe.v7.0.singlecancelrestatementreason", ftypes.UINT8)
b3_equities_binaryentrypoint_sbe_v7_0.fields.stop_px = ProtoField.new("Stop Px", "b3.equities.binaryentrypoint.sbe.v7.0.stoppx", ftypes.DOUBLE)
b3_equities_binaryentrypoint_sbe_v7_0.fields.symbol = ProtoField.new("Symbol", "b3.equities.binaryentrypoint.sbe.v7.0.symbol", ftypes.STRING)
b3_equities_binaryentrypoint_sbe_v7_0.fields.template_id = ProtoField.new("Template Id", "b3.equities.binaryentrypoint.sbe.v7.0.templateid", ftypes.UINT16)
b3_equities_binaryentrypoint_sbe_v7_0.fields.terminate_message = ProtoField.new("Terminate Message", "b3.equities.binaryentrypoint.sbe.v7.0.terminatemessage", ftypes.STRING)
b3_equities_binaryentrypoint_sbe_v7_0.fields.termination_code = ProtoField.new("Termination Code", "b3.equities.binaryentrypoint.sbe.v7.0.terminationcode", ftypes.UINT8)
b3_equities_binaryentrypoint_sbe_v7_0.fields.text = ProtoField.new("Text", "b3.equities.binaryentrypoint.sbe.v7.0.text", ftypes.STRING)
b3_equities_binaryentrypoint_sbe_v7_0.fields.threshold_amount = ProtoField.new("Threshold Amount", "b3.equities.binaryentrypoint.sbe.v7.0.thresholdamount", ftypes.DOUBLE)
b3_equities_binaryentrypoint_sbe_v7_0.fields.time_in_force = ProtoField.new("Time In Force", "b3.equities.binaryentrypoint.sbe.v7.0.timeinforce", ftypes.STRING)
b3_equities_binaryentrypoint_sbe_v7_0.fields.time_in_force_optional = ProtoField.new("Time In Force Optional", "b3.equities.binaryentrypoint.sbe.v7.0.timeinforceoptional", ftypes.STRING)
b3_equities_binaryentrypoint_sbe_v7_0.fields.time_in_force_simple = ProtoField.new("Time In Force Simple", "b3.equities.binaryentrypoint.sbe.v7.0.timeinforcesimple", ftypes.STRING)
b3_equities_binaryentrypoint_sbe_v7_0.fields.timestamp = ProtoField.new("Timestamp", "b3.equities.binaryentrypoint.sbe.v7.0.timestamp", ftypes.UINT64)
b3_equities_binaryentrypoint_sbe_v7_0.fields.tot_no_related_sym = ProtoField.new("Tot No Related Sym", "b3.equities.binaryentrypoint.sbe.v7.0.totnorelatedsym", ftypes.UINT8)
b3_equities_binaryentrypoint_sbe_v7_0.fields.trade_date = ProtoField.new("Trade Date", "b3.equities.binaryentrypoint.sbe.v7.0.tradedate", ftypes.UINT16)
b3_equities_binaryentrypoint_sbe_v7_0.fields.trade_date_optional = ProtoField.new("Trade Date Optional", "b3.equities.binaryentrypoint.sbe.v7.0.tradedateoptional", ftypes.UINT16)
b3_equities_binaryentrypoint_sbe_v7_0.fields.trade_id = ProtoField.new("Trade Id", "b3.equities.binaryentrypoint.sbe.v7.0.tradeid", ftypes.UINT32)
b3_equities_binaryentrypoint_sbe_v7_0.fields.trade_id_optional = ProtoField.new("Trade Id Optional", "b3.equities.binaryentrypoint.sbe.v7.0.tradeidoptional", ftypes.UINT32)
b3_equities_binaryentrypoint_sbe_v7_0.fields.transact_time = ProtoField.new("Transact Time", "b3.equities.binaryentrypoint.sbe.v7.0.transacttime", ftypes.UINT64)
b3_equities_binaryentrypoint_sbe_v7_0.fields.var_data = ProtoField.new("Var Data", "b3.equities.binaryentrypoint.sbe.v7.0.vardata", ftypes.BYTES)
b3_equities_binaryentrypoint_sbe_v7_0.fields.version = ProtoField.new("Version", "b3.equities.binaryentrypoint.sbe.v7.0.version", ftypes.UINT16)
b3_equities_binaryentrypoint_sbe_v7_0.fields.working_indicator = ProtoField.new("Working Indicator", "b3.equities.binaryentrypoint.sbe.v7.0.workingindicator", ftypes.UINT8)

-----------------------------------------------------------------------
-- Declare Dissection Options
-----------------------------------------------------------------------

-- B3 Equities BinaryEntryPoint Sbe 7.0 Element Dissection Options
show.allocation_instruction_message = true
show.allocation_report_message = true
show.bidirectional_business_header = true
show.business_message_reject = true
show.client_app_name = true
show.client_app_version = true
show.client_ip = true
show.credentials = true
show.custodian_info = true
show.desk_id = true
show.establish_ack_message = true
show.establish_message = true
show.establish_reject_message = true
show.execution_report_cancel_message = true
show.execution_report_forward_message = true
show.execution_report_modify_message = true
show.execution_report_new_message = true
show.execution_report_reject_message = true
show.execution_report_trade_message = true
show.framing_header = true
show.group_size_encoding = true
show.header_message = true
show.inbound_business_header = true
show.investor_id = true
show.memo = true
show.message_header = true
show.negotiate_message = true
show.negotiate_reject_message = true
show.negotiate_response_message = true
show.new_order_cross_message = true
show.new_order_single_message = true
show.no_comp_i_ds_group = true
show.no_comp_i_ds_groups = true
show.no_legs_group = true
show.no_legs_groups = true
show.no_positions_group = true
show.no_positions_groups = true
show.no_sides_group = true
show.no_sides_groups = true
show.not_applied_message = true
show.order_cancel_replace_request_message = true
show.order_cancel_request_message = true
show.order_mass_action_report_message = true
show.order_mass_action_request_message = true
show.outbound_business_header = true
show.packet = true
show.position_maintenance_cancel_request_message = true
show.position_maintenance_report_message = true
show.position_maintenance_request_message = true
show.quote_cancel_message = true
show.quote_message = true
show.quote_req_id = true
show.quote_request_message = true
show.quote_request_reject_message = true
show.quote_status_report_message = true
show.retransmission_message = true
show.retransmit_reject_message = true
show.retransmit_request_message = true
show.security_definition_request_message = true
show.security_definition_response_message = true
show.sequence_message = true
show.simple_modify_order_message = true
show.simple_new_order_message = true
show.simple_open_frame = true
show.simple_open_framing_header = true
show.terminate_message = true
show.text = true
show.payload = false

-- Register B3 Equities BinaryEntryPoint Sbe 7.0 Show Options
b3_equities_binaryentrypoint_sbe_v7_0.prefs.show_allocation_instruction_message = Pref.bool("Show Allocation Instruction Message", show.allocation_instruction_message, "Parse and add Allocation Instruction Message to protocol tree")
b3_equities_binaryentrypoint_sbe_v7_0.prefs.show_allocation_report_message = Pref.bool("Show Allocation Report Message", show.allocation_report_message, "Parse and add Allocation Report Message to protocol tree")
b3_equities_binaryentrypoint_sbe_v7_0.prefs.show_bidirectional_business_header = Pref.bool("Show Bidirectional Business Header", show.bidirectional_business_header, "Parse and add Bidirectional Business Header to protocol tree")
b3_equities_binaryentrypoint_sbe_v7_0.prefs.show_business_message_reject = Pref.bool("Show Business Message Reject", show.business_message_reject, "Parse and add Business Message Reject to protocol tree")
b3_equities_binaryentrypoint_sbe_v7_0.prefs.show_client_app_name = Pref.bool("Show Client App Name", show.client_app_name, "Parse and add Client App Name to protocol tree")
b3_equities_binaryentrypoint_sbe_v7_0.prefs.show_client_app_version = Pref.bool("Show Client App Version", show.client_app_version, "Parse and add Client App Version to protocol tree")
b3_equities_binaryentrypoint_sbe_v7_0.prefs.show_client_ip = Pref.bool("Show Client Ip", show.client_ip, "Parse and add Client Ip to protocol tree")
b3_equities_binaryentrypoint_sbe_v7_0.prefs.show_credentials = Pref.bool("Show Credentials", show.credentials, "Parse and add Credentials to protocol tree")
b3_equities_binaryentrypoint_sbe_v7_0.prefs.show_custodian_info = Pref.bool("Show Custodian Info", show.custodian_info, "Parse and add Custodian Info to protocol tree")
b3_equities_binaryentrypoint_sbe_v7_0.prefs.show_desk_id = Pref.bool("Show Desk Id", show.desk_id, "Parse and add Desk Id to protocol tree")
b3_equities_binaryentrypoint_sbe_v7_0.prefs.show_establish_ack_message = Pref.bool("Show Establish Ack Message", show.establish_ack_message, "Parse and add Establish Ack Message to protocol tree")
b3_equities_binaryentrypoint_sbe_v7_0.prefs.show_establish_message = Pref.bool("Show Establish Message", show.establish_message, "Parse and add Establish Message to protocol tree")
b3_equities_binaryentrypoint_sbe_v7_0.prefs.show_establish_reject_message = Pref.bool("Show Establish Reject Message", show.establish_reject_message, "Parse and add Establish Reject Message to protocol tree")
b3_equities_binaryentrypoint_sbe_v7_0.prefs.show_execution_report_cancel_message = Pref.bool("Show Execution Report Cancel Message", show.execution_report_cancel_message, "Parse and add Execution Report Cancel Message to protocol tree")
b3_equities_binaryentrypoint_sbe_v7_0.prefs.show_execution_report_forward_message = Pref.bool("Show Execution Report Forward Message", show.execution_report_forward_message, "Parse and add Execution Report Forward Message to protocol tree")
b3_equities_binaryentrypoint_sbe_v7_0.prefs.show_execution_report_modify_message = Pref.bool("Show Execution Report Modify Message", show.execution_report_modify_message, "Parse and add Execution Report Modify Message to protocol tree")
b3_equities_binaryentrypoint_sbe_v7_0.prefs.show_execution_report_new_message = Pref.bool("Show Execution Report New Message", show.execution_report_new_message, "Parse and add Execution Report New Message to protocol tree")
b3_equities_binaryentrypoint_sbe_v7_0.prefs.show_execution_report_reject_message = Pref.bool("Show Execution Report Reject Message", show.execution_report_reject_message, "Parse and add Execution Report Reject Message to protocol tree")
b3_equities_binaryentrypoint_sbe_v7_0.prefs.show_execution_report_trade_message = Pref.bool("Show Execution Report Trade Message", show.execution_report_trade_message, "Parse and add Execution Report Trade Message to protocol tree")
b3_equities_binaryentrypoint_sbe_v7_0.prefs.show_framing_header = Pref.bool("Show Framing Header", show.framing_header, "Parse and add Framing Header to protocol tree")
b3_equities_binaryentrypoint_sbe_v7_0.prefs.show_group_size_encoding = Pref.bool("Show Group Size Encoding", show.group_size_encoding, "Parse and add Group Size Encoding to protocol tree")
b3_equities_binaryentrypoint_sbe_v7_0.prefs.show_header_message = Pref.bool("Show Header Message", show.header_message, "Parse and add Header Message to protocol tree")
b3_equities_binaryentrypoint_sbe_v7_0.prefs.show_inbound_business_header = Pref.bool("Show Inbound Business Header", show.inbound_business_header, "Parse and add Inbound Business Header to protocol tree")
b3_equities_binaryentrypoint_sbe_v7_0.prefs.show_investor_id = Pref.bool("Show Investor Id", show.investor_id, "Parse and add Investor Id to protocol tree")
b3_equities_binaryentrypoint_sbe_v7_0.prefs.show_memo = Pref.bool("Show Memo", show.memo, "Parse and add Memo to protocol tree")
b3_equities_binaryentrypoint_sbe_v7_0.prefs.show_message_header = Pref.bool("Show Message Header", show.message_header, "Parse and add Message Header to protocol tree")
b3_equities_binaryentrypoint_sbe_v7_0.prefs.show_negotiate_message = Pref.bool("Show Negotiate Message", show.negotiate_message, "Parse and add Negotiate Message to protocol tree")
b3_equities_binaryentrypoint_sbe_v7_0.prefs.show_negotiate_reject_message = Pref.bool("Show Negotiate Reject Message", show.negotiate_reject_message, "Parse and add Negotiate Reject Message to protocol tree")
b3_equities_binaryentrypoint_sbe_v7_0.prefs.show_negotiate_response_message = Pref.bool("Show Negotiate Response Message", show.negotiate_response_message, "Parse and add Negotiate Response Message to protocol tree")
b3_equities_binaryentrypoint_sbe_v7_0.prefs.show_new_order_cross_message = Pref.bool("Show New Order Cross Message", show.new_order_cross_message, "Parse and add New Order Cross Message to protocol tree")
b3_equities_binaryentrypoint_sbe_v7_0.prefs.show_new_order_single_message = Pref.bool("Show New Order Single Message", show.new_order_single_message, "Parse and add New Order Single Message to protocol tree")
b3_equities_binaryentrypoint_sbe_v7_0.prefs.show_no_comp_i_ds_group = Pref.bool("Show No Comp I Ds Group", show.no_comp_i_ds_group, "Parse and add No Comp I Ds Group to protocol tree")
b3_equities_binaryentrypoint_sbe_v7_0.prefs.show_no_comp_i_ds_groups = Pref.bool("Show No Comp I Ds Groups", show.no_comp_i_ds_groups, "Parse and add No Comp I Ds Groups to protocol tree")
b3_equities_binaryentrypoint_sbe_v7_0.prefs.show_no_legs_group = Pref.bool("Show No Legs Group", show.no_legs_group, "Parse and add No Legs Group to protocol tree")
b3_equities_binaryentrypoint_sbe_v7_0.prefs.show_no_legs_groups = Pref.bool("Show No Legs Groups", show.no_legs_groups, "Parse and add No Legs Groups to protocol tree")
b3_equities_binaryentrypoint_sbe_v7_0.prefs.show_no_positions_group = Pref.bool("Show No Positions Group", show.no_positions_group, "Parse and add No Positions Group to protocol tree")
b3_equities_binaryentrypoint_sbe_v7_0.prefs.show_no_positions_groups = Pref.bool("Show No Positions Groups", show.no_positions_groups, "Parse and add No Positions Groups to protocol tree")
b3_equities_binaryentrypoint_sbe_v7_0.prefs.show_no_sides_group = Pref.bool("Show No Sides Group", show.no_sides_group, "Parse and add No Sides Group to protocol tree")
b3_equities_binaryentrypoint_sbe_v7_0.prefs.show_no_sides_groups = Pref.bool("Show No Sides Groups", show.no_sides_groups, "Parse and add No Sides Groups to protocol tree")
b3_equities_binaryentrypoint_sbe_v7_0.prefs.show_not_applied_message = Pref.bool("Show Not Applied Message", show.not_applied_message, "Parse and add Not Applied Message to protocol tree")
b3_equities_binaryentrypoint_sbe_v7_0.prefs.show_order_cancel_replace_request_message = Pref.bool("Show Order Cancel Replace Request Message", show.order_cancel_replace_request_message, "Parse and add Order Cancel Replace Request Message to protocol tree")
b3_equities_binaryentrypoint_sbe_v7_0.prefs.show_order_cancel_request_message = Pref.bool("Show Order Cancel Request Message", show.order_cancel_request_message, "Parse and add Order Cancel Request Message to protocol tree")
b3_equities_binaryentrypoint_sbe_v7_0.prefs.show_order_mass_action_report_message = Pref.bool("Show Order Mass Action Report Message", show.order_mass_action_report_message, "Parse and add Order Mass Action Report Message to protocol tree")
b3_equities_binaryentrypoint_sbe_v7_0.prefs.show_order_mass_action_request_message = Pref.bool("Show Order Mass Action Request Message", show.order_mass_action_request_message, "Parse and add Order Mass Action Request Message to protocol tree")
b3_equities_binaryentrypoint_sbe_v7_0.prefs.show_outbound_business_header = Pref.bool("Show Outbound Business Header", show.outbound_business_header, "Parse and add Outbound Business Header to protocol tree")
b3_equities_binaryentrypoint_sbe_v7_0.prefs.show_packet = Pref.bool("Show Packet", show.packet, "Parse and add Packet to protocol tree")
b3_equities_binaryentrypoint_sbe_v7_0.prefs.show_position_maintenance_cancel_request_message = Pref.bool("Show Position Maintenance Cancel Request Message", show.position_maintenance_cancel_request_message, "Parse and add Position Maintenance Cancel Request Message to protocol tree")
b3_equities_binaryentrypoint_sbe_v7_0.prefs.show_position_maintenance_report_message = Pref.bool("Show Position Maintenance Report Message", show.position_maintenance_report_message, "Parse and add Position Maintenance Report Message to protocol tree")
b3_equities_binaryentrypoint_sbe_v7_0.prefs.show_position_maintenance_request_message = Pref.bool("Show Position Maintenance Request Message", show.position_maintenance_request_message, "Parse and add Position Maintenance Request Message to protocol tree")
b3_equities_binaryentrypoint_sbe_v7_0.prefs.show_quote_cancel_message = Pref.bool("Show Quote Cancel Message", show.quote_cancel_message, "Parse and add Quote Cancel Message to protocol tree")
b3_equities_binaryentrypoint_sbe_v7_0.prefs.show_quote_message = Pref.bool("Show Quote Message", show.quote_message, "Parse and add Quote Message to protocol tree")
b3_equities_binaryentrypoint_sbe_v7_0.prefs.show_quote_req_id = Pref.bool("Show Quote Req Id", show.quote_req_id, "Parse and add Quote Req Id to protocol tree")
b3_equities_binaryentrypoint_sbe_v7_0.prefs.show_quote_request_message = Pref.bool("Show Quote Request Message", show.quote_request_message, "Parse and add Quote Request Message to protocol tree")
b3_equities_binaryentrypoint_sbe_v7_0.prefs.show_quote_request_reject_message = Pref.bool("Show Quote Request Reject Message", show.quote_request_reject_message, "Parse and add Quote Request Reject Message to protocol tree")
b3_equities_binaryentrypoint_sbe_v7_0.prefs.show_quote_status_report_message = Pref.bool("Show Quote Status Report Message", show.quote_status_report_message, "Parse and add Quote Status Report Message to protocol tree")
b3_equities_binaryentrypoint_sbe_v7_0.prefs.show_retransmission_message = Pref.bool("Show Retransmission Message", show.retransmission_message, "Parse and add Retransmission Message to protocol tree")
b3_equities_binaryentrypoint_sbe_v7_0.prefs.show_retransmit_reject_message = Pref.bool("Show Retransmit Reject Message", show.retransmit_reject_message, "Parse and add Retransmit Reject Message to protocol tree")
b3_equities_binaryentrypoint_sbe_v7_0.prefs.show_retransmit_request_message = Pref.bool("Show Retransmit Request Message", show.retransmit_request_message, "Parse and add Retransmit Request Message to protocol tree")
b3_equities_binaryentrypoint_sbe_v7_0.prefs.show_security_definition_request_message = Pref.bool("Show Security Definition Request Message", show.security_definition_request_message, "Parse and add Security Definition Request Message to protocol tree")
b3_equities_binaryentrypoint_sbe_v7_0.prefs.show_security_definition_response_message = Pref.bool("Show Security Definition Response Message", show.security_definition_response_message, "Parse and add Security Definition Response Message to protocol tree")
b3_equities_binaryentrypoint_sbe_v7_0.prefs.show_sequence_message = Pref.bool("Show Sequence Message", show.sequence_message, "Parse and add Sequence Message to protocol tree")
b3_equities_binaryentrypoint_sbe_v7_0.prefs.show_simple_modify_order_message = Pref.bool("Show Simple Modify Order Message", show.simple_modify_order_message, "Parse and add Simple Modify Order Message to protocol tree")
b3_equities_binaryentrypoint_sbe_v7_0.prefs.show_simple_new_order_message = Pref.bool("Show Simple New Order Message", show.simple_new_order_message, "Parse and add Simple New Order Message to protocol tree")
b3_equities_binaryentrypoint_sbe_v7_0.prefs.show_simple_open_frame = Pref.bool("Show Simple Open Frame", show.simple_open_frame, "Parse and add Simple Open Frame to protocol tree")
b3_equities_binaryentrypoint_sbe_v7_0.prefs.show_simple_open_framing_header = Pref.bool("Show Simple Open Framing Header", show.simple_open_framing_header, "Parse and add Simple Open Framing Header to protocol tree")
b3_equities_binaryentrypoint_sbe_v7_0.prefs.show_terminate_message = Pref.bool("Show Terminate Message", show.terminate_message, "Parse and add Terminate Message to protocol tree")
b3_equities_binaryentrypoint_sbe_v7_0.prefs.show_text = Pref.bool("Show Text", show.text, "Parse and add Text to protocol tree")
b3_equities_binaryentrypoint_sbe_v7_0.prefs.show_payload = Pref.bool("Show Payload", show.payload, "Parse and add Payload to protocol tree")

-- Handle changed preferences
function b3_equities_binaryentrypoint_sbe_v7_0.prefs_changed()
  local changed = false

  -- Check if show options have changed
  if show.allocation_instruction_message ~= b3_equities_binaryentrypoint_sbe_v7_0.prefs.show_allocation_instruction_message then
    show.allocation_instruction_message = b3_equities_binaryentrypoint_sbe_v7_0.prefs.show_allocation_instruction_message
    changed = true
  end
  if show.allocation_report_message ~= b3_equities_binaryentrypoint_sbe_v7_0.prefs.show_allocation_report_message then
    show.allocation_report_message = b3_equities_binaryentrypoint_sbe_v7_0.prefs.show_allocation_report_message
    changed = true
  end
  if show.bidirectional_business_header ~= b3_equities_binaryentrypoint_sbe_v7_0.prefs.show_bidirectional_business_header then
    show.bidirectional_business_header = b3_equities_binaryentrypoint_sbe_v7_0.prefs.show_bidirectional_business_header
    changed = true
  end
  if show.business_message_reject ~= b3_equities_binaryentrypoint_sbe_v7_0.prefs.show_business_message_reject then
    show.business_message_reject = b3_equities_binaryentrypoint_sbe_v7_0.prefs.show_business_message_reject
    changed = true
  end
  if show.client_app_name ~= b3_equities_binaryentrypoint_sbe_v7_0.prefs.show_client_app_name then
    show.client_app_name = b3_equities_binaryentrypoint_sbe_v7_0.prefs.show_client_app_name
    changed = true
  end
  if show.client_app_version ~= b3_equities_binaryentrypoint_sbe_v7_0.prefs.show_client_app_version then
    show.client_app_version = b3_equities_binaryentrypoint_sbe_v7_0.prefs.show_client_app_version
    changed = true
  end
  if show.client_ip ~= b3_equities_binaryentrypoint_sbe_v7_0.prefs.show_client_ip then
    show.client_ip = b3_equities_binaryentrypoint_sbe_v7_0.prefs.show_client_ip
    changed = true
  end
  if show.credentials ~= b3_equities_binaryentrypoint_sbe_v7_0.prefs.show_credentials then
    show.credentials = b3_equities_binaryentrypoint_sbe_v7_0.prefs.show_credentials
    changed = true
  end
  if show.custodian_info ~= b3_equities_binaryentrypoint_sbe_v7_0.prefs.show_custodian_info then
    show.custodian_info = b3_equities_binaryentrypoint_sbe_v7_0.prefs.show_custodian_info
    changed = true
  end
  if show.desk_id ~= b3_equities_binaryentrypoint_sbe_v7_0.prefs.show_desk_id then
    show.desk_id = b3_equities_binaryentrypoint_sbe_v7_0.prefs.show_desk_id
    changed = true
  end
  if show.establish_ack_message ~= b3_equities_binaryentrypoint_sbe_v7_0.prefs.show_establish_ack_message then
    show.establish_ack_message = b3_equities_binaryentrypoint_sbe_v7_0.prefs.show_establish_ack_message
    changed = true
  end
  if show.establish_message ~= b3_equities_binaryentrypoint_sbe_v7_0.prefs.show_establish_message then
    show.establish_message = b3_equities_binaryentrypoint_sbe_v7_0.prefs.show_establish_message
    changed = true
  end
  if show.establish_reject_message ~= b3_equities_binaryentrypoint_sbe_v7_0.prefs.show_establish_reject_message then
    show.establish_reject_message = b3_equities_binaryentrypoint_sbe_v7_0.prefs.show_establish_reject_message
    changed = true
  end
  if show.execution_report_cancel_message ~= b3_equities_binaryentrypoint_sbe_v7_0.prefs.show_execution_report_cancel_message then
    show.execution_report_cancel_message = b3_equities_binaryentrypoint_sbe_v7_0.prefs.show_execution_report_cancel_message
    changed = true
  end
  if show.execution_report_forward_message ~= b3_equities_binaryentrypoint_sbe_v7_0.prefs.show_execution_report_forward_message then
    show.execution_report_forward_message = b3_equities_binaryentrypoint_sbe_v7_0.prefs.show_execution_report_forward_message
    changed = true
  end
  if show.execution_report_modify_message ~= b3_equities_binaryentrypoint_sbe_v7_0.prefs.show_execution_report_modify_message then
    show.execution_report_modify_message = b3_equities_binaryentrypoint_sbe_v7_0.prefs.show_execution_report_modify_message
    changed = true
  end
  if show.execution_report_new_message ~= b3_equities_binaryentrypoint_sbe_v7_0.prefs.show_execution_report_new_message then
    show.execution_report_new_message = b3_equities_binaryentrypoint_sbe_v7_0.prefs.show_execution_report_new_message
    changed = true
  end
  if show.execution_report_reject_message ~= b3_equities_binaryentrypoint_sbe_v7_0.prefs.show_execution_report_reject_message then
    show.execution_report_reject_message = b3_equities_binaryentrypoint_sbe_v7_0.prefs.show_execution_report_reject_message
    changed = true
  end
  if show.execution_report_trade_message ~= b3_equities_binaryentrypoint_sbe_v7_0.prefs.show_execution_report_trade_message then
    show.execution_report_trade_message = b3_equities_binaryentrypoint_sbe_v7_0.prefs.show_execution_report_trade_message
    changed = true
  end
  if show.framing_header ~= b3_equities_binaryentrypoint_sbe_v7_0.prefs.show_framing_header then
    show.framing_header = b3_equities_binaryentrypoint_sbe_v7_0.prefs.show_framing_header
    changed = true
  end
  if show.group_size_encoding ~= b3_equities_binaryentrypoint_sbe_v7_0.prefs.show_group_size_encoding then
    show.group_size_encoding = b3_equities_binaryentrypoint_sbe_v7_0.prefs.show_group_size_encoding
    changed = true
  end
  if show.header_message ~= b3_equities_binaryentrypoint_sbe_v7_0.prefs.show_header_message then
    show.header_message = b3_equities_binaryentrypoint_sbe_v7_0.prefs.show_header_message
    changed = true
  end
  if show.inbound_business_header ~= b3_equities_binaryentrypoint_sbe_v7_0.prefs.show_inbound_business_header then
    show.inbound_business_header = b3_equities_binaryentrypoint_sbe_v7_0.prefs.show_inbound_business_header
    changed = true
  end
  if show.investor_id ~= b3_equities_binaryentrypoint_sbe_v7_0.prefs.show_investor_id then
    show.investor_id = b3_equities_binaryentrypoint_sbe_v7_0.prefs.show_investor_id
    changed = true
  end
  if show.memo ~= b3_equities_binaryentrypoint_sbe_v7_0.prefs.show_memo then
    show.memo = b3_equities_binaryentrypoint_sbe_v7_0.prefs.show_memo
    changed = true
  end
  if show.message_header ~= b3_equities_binaryentrypoint_sbe_v7_0.prefs.show_message_header then
    show.message_header = b3_equities_binaryentrypoint_sbe_v7_0.prefs.show_message_header
    changed = true
  end
  if show.negotiate_message ~= b3_equities_binaryentrypoint_sbe_v7_0.prefs.show_negotiate_message then
    show.negotiate_message = b3_equities_binaryentrypoint_sbe_v7_0.prefs.show_negotiate_message
    changed = true
  end
  if show.negotiate_reject_message ~= b3_equities_binaryentrypoint_sbe_v7_0.prefs.show_negotiate_reject_message then
    show.negotiate_reject_message = b3_equities_binaryentrypoint_sbe_v7_0.prefs.show_negotiate_reject_message
    changed = true
  end
  if show.negotiate_response_message ~= b3_equities_binaryentrypoint_sbe_v7_0.prefs.show_negotiate_response_message then
    show.negotiate_response_message = b3_equities_binaryentrypoint_sbe_v7_0.prefs.show_negotiate_response_message
    changed = true
  end
  if show.new_order_cross_message ~= b3_equities_binaryentrypoint_sbe_v7_0.prefs.show_new_order_cross_message then
    show.new_order_cross_message = b3_equities_binaryentrypoint_sbe_v7_0.prefs.show_new_order_cross_message
    changed = true
  end
  if show.new_order_single_message ~= b3_equities_binaryentrypoint_sbe_v7_0.prefs.show_new_order_single_message then
    show.new_order_single_message = b3_equities_binaryentrypoint_sbe_v7_0.prefs.show_new_order_single_message
    changed = true
  end
  if show.no_comp_i_ds_group ~= b3_equities_binaryentrypoint_sbe_v7_0.prefs.show_no_comp_i_ds_group then
    show.no_comp_i_ds_group = b3_equities_binaryentrypoint_sbe_v7_0.prefs.show_no_comp_i_ds_group
    changed = true
  end
  if show.no_comp_i_ds_groups ~= b3_equities_binaryentrypoint_sbe_v7_0.prefs.show_no_comp_i_ds_groups then
    show.no_comp_i_ds_groups = b3_equities_binaryentrypoint_sbe_v7_0.prefs.show_no_comp_i_ds_groups
    changed = true
  end
  if show.no_legs_group ~= b3_equities_binaryentrypoint_sbe_v7_0.prefs.show_no_legs_group then
    show.no_legs_group = b3_equities_binaryentrypoint_sbe_v7_0.prefs.show_no_legs_group
    changed = true
  end
  if show.no_legs_groups ~= b3_equities_binaryentrypoint_sbe_v7_0.prefs.show_no_legs_groups then
    show.no_legs_groups = b3_equities_binaryentrypoint_sbe_v7_0.prefs.show_no_legs_groups
    changed = true
  end
  if show.no_positions_group ~= b3_equities_binaryentrypoint_sbe_v7_0.prefs.show_no_positions_group then
    show.no_positions_group = b3_equities_binaryentrypoint_sbe_v7_0.prefs.show_no_positions_group
    changed = true
  end
  if show.no_positions_groups ~= b3_equities_binaryentrypoint_sbe_v7_0.prefs.show_no_positions_groups then
    show.no_positions_groups = b3_equities_binaryentrypoint_sbe_v7_0.prefs.show_no_positions_groups
    changed = true
  end
  if show.no_sides_group ~= b3_equities_binaryentrypoint_sbe_v7_0.prefs.show_no_sides_group then
    show.no_sides_group = b3_equities_binaryentrypoint_sbe_v7_0.prefs.show_no_sides_group
    changed = true
  end
  if show.no_sides_groups ~= b3_equities_binaryentrypoint_sbe_v7_0.prefs.show_no_sides_groups then
    show.no_sides_groups = b3_equities_binaryentrypoint_sbe_v7_0.prefs.show_no_sides_groups
    changed = true
  end
  if show.not_applied_message ~= b3_equities_binaryentrypoint_sbe_v7_0.prefs.show_not_applied_message then
    show.not_applied_message = b3_equities_binaryentrypoint_sbe_v7_0.prefs.show_not_applied_message
    changed = true
  end
  if show.order_cancel_replace_request_message ~= b3_equities_binaryentrypoint_sbe_v7_0.prefs.show_order_cancel_replace_request_message then
    show.order_cancel_replace_request_message = b3_equities_binaryentrypoint_sbe_v7_0.prefs.show_order_cancel_replace_request_message
    changed = true
  end
  if show.order_cancel_request_message ~= b3_equities_binaryentrypoint_sbe_v7_0.prefs.show_order_cancel_request_message then
    show.order_cancel_request_message = b3_equities_binaryentrypoint_sbe_v7_0.prefs.show_order_cancel_request_message
    changed = true
  end
  if show.order_mass_action_report_message ~= b3_equities_binaryentrypoint_sbe_v7_0.prefs.show_order_mass_action_report_message then
    show.order_mass_action_report_message = b3_equities_binaryentrypoint_sbe_v7_0.prefs.show_order_mass_action_report_message
    changed = true
  end
  if show.order_mass_action_request_message ~= b3_equities_binaryentrypoint_sbe_v7_0.prefs.show_order_mass_action_request_message then
    show.order_mass_action_request_message = b3_equities_binaryentrypoint_sbe_v7_0.prefs.show_order_mass_action_request_message
    changed = true
  end
  if show.outbound_business_header ~= b3_equities_binaryentrypoint_sbe_v7_0.prefs.show_outbound_business_header then
    show.outbound_business_header = b3_equities_binaryentrypoint_sbe_v7_0.prefs.show_outbound_business_header
    changed = true
  end
  if show.packet ~= b3_equities_binaryentrypoint_sbe_v7_0.prefs.show_packet then
    show.packet = b3_equities_binaryentrypoint_sbe_v7_0.prefs.show_packet
    changed = true
  end
  if show.position_maintenance_cancel_request_message ~= b3_equities_binaryentrypoint_sbe_v7_0.prefs.show_position_maintenance_cancel_request_message then
    show.position_maintenance_cancel_request_message = b3_equities_binaryentrypoint_sbe_v7_0.prefs.show_position_maintenance_cancel_request_message
    changed = true
  end
  if show.position_maintenance_report_message ~= b3_equities_binaryentrypoint_sbe_v7_0.prefs.show_position_maintenance_report_message then
    show.position_maintenance_report_message = b3_equities_binaryentrypoint_sbe_v7_0.prefs.show_position_maintenance_report_message
    changed = true
  end
  if show.position_maintenance_request_message ~= b3_equities_binaryentrypoint_sbe_v7_0.prefs.show_position_maintenance_request_message then
    show.position_maintenance_request_message = b3_equities_binaryentrypoint_sbe_v7_0.prefs.show_position_maintenance_request_message
    changed = true
  end
  if show.quote_cancel_message ~= b3_equities_binaryentrypoint_sbe_v7_0.prefs.show_quote_cancel_message then
    show.quote_cancel_message = b3_equities_binaryentrypoint_sbe_v7_0.prefs.show_quote_cancel_message
    changed = true
  end
  if show.quote_message ~= b3_equities_binaryentrypoint_sbe_v7_0.prefs.show_quote_message then
    show.quote_message = b3_equities_binaryentrypoint_sbe_v7_0.prefs.show_quote_message
    changed = true
  end
  if show.quote_req_id ~= b3_equities_binaryentrypoint_sbe_v7_0.prefs.show_quote_req_id then
    show.quote_req_id = b3_equities_binaryentrypoint_sbe_v7_0.prefs.show_quote_req_id
    changed = true
  end
  if show.quote_request_message ~= b3_equities_binaryentrypoint_sbe_v7_0.prefs.show_quote_request_message then
    show.quote_request_message = b3_equities_binaryentrypoint_sbe_v7_0.prefs.show_quote_request_message
    changed = true
  end
  if show.quote_request_reject_message ~= b3_equities_binaryentrypoint_sbe_v7_0.prefs.show_quote_request_reject_message then
    show.quote_request_reject_message = b3_equities_binaryentrypoint_sbe_v7_0.prefs.show_quote_request_reject_message
    changed = true
  end
  if show.quote_status_report_message ~= b3_equities_binaryentrypoint_sbe_v7_0.prefs.show_quote_status_report_message then
    show.quote_status_report_message = b3_equities_binaryentrypoint_sbe_v7_0.prefs.show_quote_status_report_message
    changed = true
  end
  if show.retransmission_message ~= b3_equities_binaryentrypoint_sbe_v7_0.prefs.show_retransmission_message then
    show.retransmission_message = b3_equities_binaryentrypoint_sbe_v7_0.prefs.show_retransmission_message
    changed = true
  end
  if show.retransmit_reject_message ~= b3_equities_binaryentrypoint_sbe_v7_0.prefs.show_retransmit_reject_message then
    show.retransmit_reject_message = b3_equities_binaryentrypoint_sbe_v7_0.prefs.show_retransmit_reject_message
    changed = true
  end
  if show.retransmit_request_message ~= b3_equities_binaryentrypoint_sbe_v7_0.prefs.show_retransmit_request_message then
    show.retransmit_request_message = b3_equities_binaryentrypoint_sbe_v7_0.prefs.show_retransmit_request_message
    changed = true
  end
  if show.security_definition_request_message ~= b3_equities_binaryentrypoint_sbe_v7_0.prefs.show_security_definition_request_message then
    show.security_definition_request_message = b3_equities_binaryentrypoint_sbe_v7_0.prefs.show_security_definition_request_message
    changed = true
  end
  if show.security_definition_response_message ~= b3_equities_binaryentrypoint_sbe_v7_0.prefs.show_security_definition_response_message then
    show.security_definition_response_message = b3_equities_binaryentrypoint_sbe_v7_0.prefs.show_security_definition_response_message
    changed = true
  end
  if show.sequence_message ~= b3_equities_binaryentrypoint_sbe_v7_0.prefs.show_sequence_message then
    show.sequence_message = b3_equities_binaryentrypoint_sbe_v7_0.prefs.show_sequence_message
    changed = true
  end
  if show.simple_modify_order_message ~= b3_equities_binaryentrypoint_sbe_v7_0.prefs.show_simple_modify_order_message then
    show.simple_modify_order_message = b3_equities_binaryentrypoint_sbe_v7_0.prefs.show_simple_modify_order_message
    changed = true
  end
  if show.simple_new_order_message ~= b3_equities_binaryentrypoint_sbe_v7_0.prefs.show_simple_new_order_message then
    show.simple_new_order_message = b3_equities_binaryentrypoint_sbe_v7_0.prefs.show_simple_new_order_message
    changed = true
  end
  if show.simple_open_frame ~= b3_equities_binaryentrypoint_sbe_v7_0.prefs.show_simple_open_frame then
    show.simple_open_frame = b3_equities_binaryentrypoint_sbe_v7_0.prefs.show_simple_open_frame
    changed = true
  end
  if show.simple_open_framing_header ~= b3_equities_binaryentrypoint_sbe_v7_0.prefs.show_simple_open_framing_header then
    show.simple_open_framing_header = b3_equities_binaryentrypoint_sbe_v7_0.prefs.show_simple_open_framing_header
    changed = true
  end
  if show.terminate_message ~= b3_equities_binaryentrypoint_sbe_v7_0.prefs.show_terminate_message then
    show.terminate_message = b3_equities_binaryentrypoint_sbe_v7_0.prefs.show_terminate_message
    changed = true
  end
  if show.text ~= b3_equities_binaryentrypoint_sbe_v7_0.prefs.show_text then
    show.text = b3_equities_binaryentrypoint_sbe_v7_0.prefs.show_text
    changed = true
  end
  if show.payload ~= b3_equities_binaryentrypoint_sbe_v7_0.prefs.show_payload then
    show.payload = b3_equities_binaryentrypoint_sbe_v7_0.prefs.show_payload
    changed = true
  end

  -- Reload on changed preference
  if changed then
    reload()
  end
end


-----------------------------------------------------------------------
-- Dissect B3 Equities BinaryEntryPoint Sbe 7.0
-----------------------------------------------------------------------

-- Size: Encoding Type
b3_equities_binaryentrypoint_sbe_v7_0_size_of.encoding_type = 2

-- Display: Encoding Type
b3_equities_binaryentrypoint_sbe_v7_0_display.encoding_type = function(value)
  return "Encoding Type: "..value
end

-- Dissect: Encoding Type
b3_equities_binaryentrypoint_sbe_v7_0_dissect.encoding_type = function(buffer, offset, packet, parent)
  local length = b3_equities_binaryentrypoint_sbe_v7_0_size_of.encoding_type
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = b3_equities_binaryentrypoint_sbe_v7_0_display.encoding_type(value, buffer, offset, packet, parent)

  parent:add(b3_equities_binaryentrypoint_sbe_v7_0.fields.encoding_type, range, value, display)

  return offset + length, value
end

-- Size: Message Length
b3_equities_binaryentrypoint_sbe_v7_0_size_of.message_length = 2

-- Display: Message Length
b3_equities_binaryentrypoint_sbe_v7_0_display.message_length = function(value)
  return "Message Length: "..value
end

-- Dissect: Message Length
b3_equities_binaryentrypoint_sbe_v7_0_dissect.message_length = function(buffer, offset, packet, parent)
  local length = b3_equities_binaryentrypoint_sbe_v7_0_size_of.message_length
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = b3_equities_binaryentrypoint_sbe_v7_0_display.message_length(value, buffer, offset, packet, parent)

  parent:add(b3_equities_binaryentrypoint_sbe_v7_0.fields.message_length, range, value, display)

  return offset + length, value
end

-- Calculate size of: Framing Header
b3_equities_binaryentrypoint_sbe_v7_0_size_of.framing_header = function(buffer, offset)
  local index = 0

  index = index + b3_equities_binaryentrypoint_sbe_v7_0_size_of.message_length

  index = index + b3_equities_binaryentrypoint_sbe_v7_0_size_of.encoding_type

  return index
end

-- Display: Framing Header
b3_equities_binaryentrypoint_sbe_v7_0_display.framing_header = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Framing Header
b3_equities_binaryentrypoint_sbe_v7_0_dissect.framing_header_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Message Length: 2 Byte Unsigned Fixed Width Integer
  index, message_length = b3_equities_binaryentrypoint_sbe_v7_0_dissect.message_length(buffer, index, packet, parent)

  -- Encoding Type: 2 Byte Unsigned Fixed Width Integer
  index, encoding_type = b3_equities_binaryentrypoint_sbe_v7_0_dissect.encoding_type(buffer, index, packet, parent)

  return index
end

-- Dissect: Framing Header
b3_equities_binaryentrypoint_sbe_v7_0_dissect.framing_header = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.framing_header then
    local length = b3_equities_binaryentrypoint_sbe_v7_0_size_of.framing_header(buffer, offset)
    local range = buffer(offset, length)
    local display = b3_equities_binaryentrypoint_sbe_v7_0_display.framing_header(buffer, packet, parent)
    parent = parent:add(b3_equities_binaryentrypoint_sbe_v7_0.fields.framing_header, range, display)
  end

  return b3_equities_binaryentrypoint_sbe_v7_0_dissect.framing_header_fields(buffer, offset, packet, parent)
end

-- Calculate size of: Header Message
b3_equities_binaryentrypoint_sbe_v7_0_size_of.header_message = function(buffer, offset)
  local index = 0

  index = index + b3_equities_binaryentrypoint_sbe_v7_0_size_of.framing_header(buffer, offset + index)

  return index
end

-- Display: Header Message
b3_equities_binaryentrypoint_sbe_v7_0_display.header_message = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Header Message
b3_equities_binaryentrypoint_sbe_v7_0_dissect.header_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Framing Header: Struct of 2 fields
  index, framing_header = b3_equities_binaryentrypoint_sbe_v7_0_dissect.framing_header(buffer, index, packet, parent)

  return index
end

-- Dissect: Header Message
b3_equities_binaryentrypoint_sbe_v7_0_dissect.header_message = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.header_message then
    local length = b3_equities_binaryentrypoint_sbe_v7_0_size_of.header_message(buffer, offset)
    local range = buffer(offset, length)
    local display = b3_equities_binaryentrypoint_sbe_v7_0_display.header_message(buffer, packet, parent)
    parent = parent:add(b3_equities_binaryentrypoint_sbe_v7_0.fields.header_message, range, display)
  end

  return b3_equities_binaryentrypoint_sbe_v7_0_dissect.header_message_fields(buffer, offset, packet, parent)
end

-- Size: Length
b3_equities_binaryentrypoint_sbe_v7_0_size_of.length = 1

-- Display: Length
b3_equities_binaryentrypoint_sbe_v7_0_display.length = function(value)
  return "Length: "..value
end

-- Dissect: Length
b3_equities_binaryentrypoint_sbe_v7_0_dissect.length = function(buffer, offset, packet, parent)
  local length = b3_equities_binaryentrypoint_sbe_v7_0_size_of.length
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = b3_equities_binaryentrypoint_sbe_v7_0_display.length(value, buffer, offset, packet, parent)

  parent:add(b3_equities_binaryentrypoint_sbe_v7_0.fields.length, range, value, display)

  return offset + length, value
end

-- Calculate size of: Text
b3_equities_binaryentrypoint_sbe_v7_0_size_of.text = function(buffer, offset)
  local index = 0

  index = index + b3_equities_binaryentrypoint_sbe_v7_0_size_of.length

  index = index + b3_equities_binaryentrypoint_sbe_v7_0_size_of.var_data_char

  return index
end

-- Display: Text
b3_equities_binaryentrypoint_sbe_v7_0_display.text = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Text
b3_equities_binaryentrypoint_sbe_v7_0_dissect.text_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Length: 1 Byte Unsigned Fixed Width Integer
  index, length = b3_equities_binaryentrypoint_sbe_v7_0_dissect.length(buffer, index, packet, parent)

  -- Var Data char
  index, var_data_char = b3_equities_binaryentrypoint_sbe_v7_0_dissect.var_data_char(buffer, index, packet, parent)

  return index
end

-- Dissect: Text
b3_equities_binaryentrypoint_sbe_v7_0_dissect.text = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.text then
    local length = b3_equities_binaryentrypoint_sbe_v7_0_size_of.text(buffer, offset)
    local range = buffer(offset, length)
    local display = b3_equities_binaryentrypoint_sbe_v7_0_display.text(buffer, packet, parent)
    parent = parent:add(b3_equities_binaryentrypoint_sbe_v7_0.fields.text, range, display)
  end

  return b3_equities_binaryentrypoint_sbe_v7_0_dissect.text_fields(buffer, offset, packet, parent)
end

-- Size: Ref Comp Id
b3_equities_binaryentrypoint_sbe_v7_0_size_of.ref_comp_id = 4

-- Display: Ref Comp Id
b3_equities_binaryentrypoint_sbe_v7_0_display.ref_comp_id = function(value)
  return "Ref Comp Id: "..value
end

-- Dissect: Ref Comp Id
b3_equities_binaryentrypoint_sbe_v7_0_dissect.ref_comp_id = function(buffer, offset, packet, parent)
  local length = b3_equities_binaryentrypoint_sbe_v7_0_size_of.ref_comp_id
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = b3_equities_binaryentrypoint_sbe_v7_0_display.ref_comp_id(value, buffer, offset, packet, parent)

  parent:add(b3_equities_binaryentrypoint_sbe_v7_0.fields.ref_comp_id, range, value, display)

  return offset + length, value
end

-- Calculate size of: No Comp I Ds Group
b3_equities_binaryentrypoint_sbe_v7_0_size_of.no_comp_i_ds_group = function(buffer, offset)
  local index = 0

  index = index + b3_equities_binaryentrypoint_sbe_v7_0_size_of.ref_comp_id

  return index
end

-- Display: No Comp I Ds Group
b3_equities_binaryentrypoint_sbe_v7_0_display.no_comp_i_ds_group = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: No Comp I Ds Group
b3_equities_binaryentrypoint_sbe_v7_0_dissect.no_comp_i_ds_group_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Ref Comp Id: 4 Byte Unsigned Fixed Width Integer
  index, ref_comp_id = b3_equities_binaryentrypoint_sbe_v7_0_dissect.ref_comp_id(buffer, index, packet, parent)

  return index
end

-- Dissect: No Comp I Ds Group
b3_equities_binaryentrypoint_sbe_v7_0_dissect.no_comp_i_ds_group = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.no_comp_i_ds_group then
    local length = b3_equities_binaryentrypoint_sbe_v7_0_size_of.no_comp_i_ds_group(buffer, offset)
    local range = buffer(offset, length)
    local display = b3_equities_binaryentrypoint_sbe_v7_0_display.no_comp_i_ds_group(buffer, packet, parent)
    parent = parent:add(b3_equities_binaryentrypoint_sbe_v7_0.fields.no_comp_i_ds_group, range, display)
  end

  return b3_equities_binaryentrypoint_sbe_v7_0_dissect.no_comp_i_ds_group_fields(buffer, offset, packet, parent)
end

-- Size: Num In Group
b3_equities_binaryentrypoint_sbe_v7_0_size_of.num_in_group = 1

-- Display: Num In Group
b3_equities_binaryentrypoint_sbe_v7_0_display.num_in_group = function(value)
  return "Num In Group: "..value
end

-- Dissect: Num In Group
b3_equities_binaryentrypoint_sbe_v7_0_dissect.num_in_group = function(buffer, offset, packet, parent)
  local length = b3_equities_binaryentrypoint_sbe_v7_0_size_of.num_in_group
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = b3_equities_binaryentrypoint_sbe_v7_0_display.num_in_group(value, buffer, offset, packet, parent)

  parent:add(b3_equities_binaryentrypoint_sbe_v7_0.fields.num_in_group, range, value, display)

  return offset + length, value
end

-- Size: Block Length
b3_equities_binaryentrypoint_sbe_v7_0_size_of.block_length = 2

-- Display: Block Length
b3_equities_binaryentrypoint_sbe_v7_0_display.block_length = function(value)
  return "Block Length: "..value
end

-- Dissect: Block Length
b3_equities_binaryentrypoint_sbe_v7_0_dissect.block_length = function(buffer, offset, packet, parent)
  local length = b3_equities_binaryentrypoint_sbe_v7_0_size_of.block_length
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = b3_equities_binaryentrypoint_sbe_v7_0_display.block_length(value, buffer, offset, packet, parent)

  parent:add(b3_equities_binaryentrypoint_sbe_v7_0.fields.block_length, range, value, display)

  return offset + length, value
end

-- Calculate size of: Group Size Encoding
b3_equities_binaryentrypoint_sbe_v7_0_size_of.group_size_encoding = function(buffer, offset)
  local index = 0

  index = index + b3_equities_binaryentrypoint_sbe_v7_0_size_of.block_length

  index = index + b3_equities_binaryentrypoint_sbe_v7_0_size_of.num_in_group

  return index
end

-- Display: Group Size Encoding
b3_equities_binaryentrypoint_sbe_v7_0_display.group_size_encoding = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Group Size Encoding
b3_equities_binaryentrypoint_sbe_v7_0_dissect.group_size_encoding_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Block Length: 2 Byte Unsigned Fixed Width Integer
  index, block_length = b3_equities_binaryentrypoint_sbe_v7_0_dissect.block_length(buffer, index, packet, parent)

  -- Num In Group: 1 Byte Unsigned Fixed Width Integer
  index, num_in_group = b3_equities_binaryentrypoint_sbe_v7_0_dissect.num_in_group(buffer, index, packet, parent)

  return index
end

-- Dissect: Group Size Encoding
b3_equities_binaryentrypoint_sbe_v7_0_dissect.group_size_encoding = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.group_size_encoding then
    local length = b3_equities_binaryentrypoint_sbe_v7_0_size_of.group_size_encoding(buffer, offset)
    local range = buffer(offset, length)
    local display = b3_equities_binaryentrypoint_sbe_v7_0_display.group_size_encoding(buffer, packet, parent)
    parent = parent:add(b3_equities_binaryentrypoint_sbe_v7_0.fields.group_size_encoding, range, display)
  end

  return b3_equities_binaryentrypoint_sbe_v7_0_dissect.group_size_encoding_fields(buffer, offset, packet, parent)
end

-- Calculate size of: No Comp I Ds Groups
b3_equities_binaryentrypoint_sbe_v7_0_size_of.no_comp_i_ds_groups = function(buffer, offset)
  local index = 0

  index = index + b3_equities_binaryentrypoint_sbe_v7_0_size_of.group_size_encoding(buffer, offset + index)

  -- Calculate field size from count
  local no_comp_i_ds_group_count = buffer(offset + index - 1, 1):le_uint()
  index = index + no_comp_i_ds_group_count * 4

  return index
end

-- Display: No Comp I Ds Groups
b3_equities_binaryentrypoint_sbe_v7_0_display.no_comp_i_ds_groups = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: No Comp I Ds Groups
b3_equities_binaryentrypoint_sbe_v7_0_dissect.no_comp_i_ds_groups_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Group Size Encoding: Struct of 2 fields
  index, group_size_encoding = b3_equities_binaryentrypoint_sbe_v7_0_dissect.group_size_encoding(buffer, index, packet, parent)

  -- Dependency element: Num In Group
  local num_in_group = buffer(index - 1, 1):le_uint()

  -- No Comp I Ds Group: Struct of 1 fields
  for i = 1, num_in_group do
    index = b3_equities_binaryentrypoint_sbe_v7_0_dissect.no_comp_i_ds_group(buffer, index, packet, parent)
  end

  return index
end

-- Dissect: No Comp I Ds Groups
b3_equities_binaryentrypoint_sbe_v7_0_dissect.no_comp_i_ds_groups = function(buffer, offset, packet, parent)
  -- Optionally add dynamic struct element to protocol tree
  if show.no_comp_i_ds_groups then
    local length = b3_equities_binaryentrypoint_sbe_v7_0_size_of.no_comp_i_ds_groups(buffer, offset)
    local range = buffer(offset, length)
    local display = b3_equities_binaryentrypoint_sbe_v7_0_display.no_comp_i_ds_groups(buffer, packet, parent)
    parent = parent:add(b3_equities_binaryentrypoint_sbe_v7_0.fields.no_comp_i_ds_groups, range, display)
  end

  return b3_equities_binaryentrypoint_sbe_v7_0_dissect.no_comp_i_ds_groups_fields(buffer, offset, packet, parent)
end

-- Size: Action Target Group Id
b3_equities_binaryentrypoint_sbe_v7_0_size_of.action_target_group_id = 4

-- Display: Action Target Group Id
b3_equities_binaryentrypoint_sbe_v7_0_display.action_target_group_id = function(value)
  return "Action Target Group Id: "..value
end

-- Dissect: Action Target Group Id
b3_equities_binaryentrypoint_sbe_v7_0_dissect.action_target_group_id = function(buffer, offset, packet, parent)
  local length = b3_equities_binaryentrypoint_sbe_v7_0_size_of.action_target_group_id
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = b3_equities_binaryentrypoint_sbe_v7_0_display.action_target_group_id(value, buffer, offset, packet, parent)

  parent:add(b3_equities_binaryentrypoint_sbe_v7_0.fields.action_target_group_id, range, value, display)

  return offset + length, value
end

-- Size: Action Target Session Id
b3_equities_binaryentrypoint_sbe_v7_0_size_of.action_target_session_id = 4

-- Display: Action Target Session Id
b3_equities_binaryentrypoint_sbe_v7_0_display.action_target_session_id = function(value)
  return "Action Target Session Id: "..value
end

-- Dissect: Action Target Session Id
b3_equities_binaryentrypoint_sbe_v7_0_dissect.action_target_session_id = function(buffer, offset, packet, parent)
  local length = b3_equities_binaryentrypoint_sbe_v7_0_size_of.action_target_session_id
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = b3_equities_binaryentrypoint_sbe_v7_0_display.action_target_session_id(value, buffer, offset, packet, parent)

  parent:add(b3_equities_binaryentrypoint_sbe_v7_0.fields.action_target_session_id, range, value, display)

  return offset + length, value
end

-- Size: Security Exchange
b3_equities_binaryentrypoint_sbe_v7_0_size_of.security_exchange = 4

-- Display: Security Exchange
b3_equities_binaryentrypoint_sbe_v7_0_display.security_exchange = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Security Exchange: No Value"
  end

  return "Security Exchange: "..value
end

-- Dissect: Security Exchange
b3_equities_binaryentrypoint_sbe_v7_0_dissect.security_exchange = function(buffer, offset, packet, parent)
  local length = b3_equities_binaryentrypoint_sbe_v7_0_size_of.security_exchange
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

  local display = b3_equities_binaryentrypoint_sbe_v7_0_display.security_exchange(value, buffer, offset, packet, parent)

  parent:add(b3_equities_binaryentrypoint_sbe_v7_0.fields.security_exchange, range, value, display)

  return offset + length, value
end

-- Size: Security Id Optional
b3_equities_binaryentrypoint_sbe_v7_0_size_of.security_id_optional = 8

-- Display: Security Id Optional
b3_equities_binaryentrypoint_sbe_v7_0_display.security_id_optional = function(value)
  return "Security Id Optional: "..value
end

-- Dissect: Security Id Optional
b3_equities_binaryentrypoint_sbe_v7_0_dissect.security_id_optional = function(buffer, offset, packet, parent)
  local length = b3_equities_binaryentrypoint_sbe_v7_0_size_of.security_id_optional
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = b3_equities_binaryentrypoint_sbe_v7_0_display.security_id_optional(value, buffer, offset, packet, parent)

  parent:add(b3_equities_binaryentrypoint_sbe_v7_0.fields.security_id_optional, range, value, display)

  return offset + length, value
end

-- Size: Asset
b3_equities_binaryentrypoint_sbe_v7_0_size_of.asset = 6

-- Display: Asset
b3_equities_binaryentrypoint_sbe_v7_0_display.asset = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Asset: No Value"
  end

  return "Asset: "..value
end

-- Dissect: Asset
b3_equities_binaryentrypoint_sbe_v7_0_dissect.asset = function(buffer, offset, packet, parent)
  local length = b3_equities_binaryentrypoint_sbe_v7_0_size_of.asset
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

  local display = b3_equities_binaryentrypoint_sbe_v7_0_display.asset(value, buffer, offset, packet, parent)

  parent:add(b3_equities_binaryentrypoint_sbe_v7_0.fields.asset, range, value, display)

  return offset + length, value
end

-- Size: Side Optional
b3_equities_binaryentrypoint_sbe_v7_0_size_of.side_optional = 1

-- Display: Side Optional
b3_equities_binaryentrypoint_sbe_v7_0_display.side_optional = function(value)
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
  if value == 0 then
    return "Side Optional: No Value"
  end

  return "Side Optional: Unknown("..value..")"
end

-- Dissect: Side Optional
b3_equities_binaryentrypoint_sbe_v7_0_dissect.side_optional = function(buffer, offset, packet, parent)
  local length = b3_equities_binaryentrypoint_sbe_v7_0_size_of.side_optional
  local range = buffer(offset, length)

  -- parse as byte
  local value = range:uint()

  -- check if value is non zero
  if value ~= 0 then
    value = range:string()
  end

  local display = b3_equities_binaryentrypoint_sbe_v7_0_display.side_optional(value, buffer, offset, packet, parent)

  parent:add(b3_equities_binaryentrypoint_sbe_v7_0.fields.side_optional, range, value, display)

  return offset + length, value
end

-- Size: Ord Tag Id
b3_equities_binaryentrypoint_sbe_v7_0_size_of.ord_tag_id = 1

-- Display: Ord Tag Id
b3_equities_binaryentrypoint_sbe_v7_0_display.ord_tag_id = function(value)
  return "Ord Tag Id: "..value
end

-- Dissect: Ord Tag Id
b3_equities_binaryentrypoint_sbe_v7_0_dissect.ord_tag_id = function(buffer, offset, packet, parent)
  local length = b3_equities_binaryentrypoint_sbe_v7_0_size_of.ord_tag_id
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = b3_equities_binaryentrypoint_sbe_v7_0_display.ord_tag_id(value, buffer, offset, packet, parent)

  parent:add(b3_equities_binaryentrypoint_sbe_v7_0.fields.ord_tag_id, range, value, display)

  return offset + length, value
end

-- Size: Mass Cancel Restatement Reason
b3_equities_binaryentrypoint_sbe_v7_0_size_of.mass_cancel_restatement_reason = 1

-- Display: Mass Cancel Restatement Reason
b3_equities_binaryentrypoint_sbe_v7_0_display.mass_cancel_restatement_reason = function(value)
  if value == 202 then
    return "Mass Cancel Restatement Reason: Ordermassactionfromclientrequest (202)"
  end
  if value == 207 then
    return "Mass Cancel Restatement Reason: Masscancelorderduetooperationalerrorrequest (207)"
  end
  if value == 0 then
    return "Mass Cancel Restatement Reason: No Value"
  end

  return "Mass Cancel Restatement Reason: Unknown("..value..")"
end

-- Dissect: Mass Cancel Restatement Reason
b3_equities_binaryentrypoint_sbe_v7_0_dissect.mass_cancel_restatement_reason = function(buffer, offset, packet, parent)
  local length = b3_equities_binaryentrypoint_sbe_v7_0_size_of.mass_cancel_restatement_reason
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = b3_equities_binaryentrypoint_sbe_v7_0_display.mass_cancel_restatement_reason(value, buffer, offset, packet, parent)

  parent:add(b3_equities_binaryentrypoint_sbe_v7_0.fields.mass_cancel_restatement_reason, range, value, display)

  return offset + length, value
end

-- Size: Mass Action Reject Reason
b3_equities_binaryentrypoint_sbe_v7_0_size_of.mass_action_reject_reason = 1

-- Display: Mass Action Reject Reason
b3_equities_binaryentrypoint_sbe_v7_0_display.mass_action_reject_reason = function(value)
  if value == 0 then
    return "Mass Action Reject Reason: Massactionnotsupported (0)"
  end
  if value == 8 then
    return "Mass Action Reject Reason: Invalidorunknownmarketsegment (8)"
  end
  if value == 99 then
    return "Mass Action Reject Reason: Other (99)"
  end
  if value == 255 then
    return "Mass Action Reject Reason: No Value"
  end

  return "Mass Action Reject Reason: Unknown("..value..")"
end

-- Dissect: Mass Action Reject Reason
b3_equities_binaryentrypoint_sbe_v7_0_dissect.mass_action_reject_reason = function(buffer, offset, packet, parent)
  local length = b3_equities_binaryentrypoint_sbe_v7_0_size_of.mass_action_reject_reason
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = b3_equities_binaryentrypoint_sbe_v7_0_display.mass_action_reject_reason(value, buffer, offset, packet, parent)

  parent:add(b3_equities_binaryentrypoint_sbe_v7_0.fields.mass_action_reject_reason, range, value, display)

  return offset + length, value
end

-- Size: Mass Action Response
b3_equities_binaryentrypoint_sbe_v7_0_size_of.mass_action_response = 1

-- Display: Mass Action Response
b3_equities_binaryentrypoint_sbe_v7_0_display.mass_action_response = function(value)
  -- Check if field has value
  if value == nil or value == 0 then
    return "Mass Action Response: No Value"
  end

  if value == "0" then
    return "Mass Action Response: Rejected (0)"
  end
  if value == "1" then
    return "Mass Action Response: Accepted (1)"
  end

  return "Mass Action Response: Unknown("..value..")"
end

-- Dissect: Mass Action Response
b3_equities_binaryentrypoint_sbe_v7_0_dissect.mass_action_response = function(buffer, offset, packet, parent)
  local length = b3_equities_binaryentrypoint_sbe_v7_0_size_of.mass_action_response
  local range = buffer(offset, length)

  -- parse as byte
  local value = range:uint()

  -- check if value is non zero
  if value ~= 0 then
    value = range:string()
  end

  local display = b3_equities_binaryentrypoint_sbe_v7_0_display.mass_action_response(value, buffer, offset, packet, parent)

  parent:add(b3_equities_binaryentrypoint_sbe_v7_0.fields.mass_action_response, range, value, display)

  return offset + length, value
end

-- Size: Transact Time
b3_equities_binaryentrypoint_sbe_v7_0_size_of.transact_time = 8

-- Display: Transact Time
b3_equities_binaryentrypoint_sbe_v7_0_display.transact_time = function(value)
  return "Transact Time: "..value
end

-- Dissect: Transact Time
b3_equities_binaryentrypoint_sbe_v7_0_dissect.transact_time = function(buffer, offset, packet, parent)
  local length = b3_equities_binaryentrypoint_sbe_v7_0_size_of.transact_time
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = b3_equities_binaryentrypoint_sbe_v7_0_display.transact_time(value, buffer, offset, packet, parent)

  parent:add(b3_equities_binaryentrypoint_sbe_v7_0.fields.transact_time, range, value, display)

  return offset + length, value
end

-- Size: Mass Action Report Id
b3_equities_binaryentrypoint_sbe_v7_0_size_of.mass_action_report_id = 8

-- Display: Mass Action Report Id
b3_equities_binaryentrypoint_sbe_v7_0_display.mass_action_report_id = function(value)
  return "Mass Action Report Id: "..value
end

-- Dissect: Mass Action Report Id
b3_equities_binaryentrypoint_sbe_v7_0_dissect.mass_action_report_id = function(buffer, offset, packet, parent)
  local length = b3_equities_binaryentrypoint_sbe_v7_0_size_of.mass_action_report_id
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = b3_equities_binaryentrypoint_sbe_v7_0_display.mass_action_report_id(value, buffer, offset, packet, parent)

  parent:add(b3_equities_binaryentrypoint_sbe_v7_0.fields.mass_action_report_id, range, value, display)

  return offset + length, value
end

-- Size: ClOrdId
b3_equities_binaryentrypoint_sbe_v7_0_size_of.clordid = 8

-- Display: ClOrdId
b3_equities_binaryentrypoint_sbe_v7_0_display.clordid = function(value)
  return "ClOrdId: "..value
end

-- Dissect: ClOrdId
b3_equities_binaryentrypoint_sbe_v7_0_dissect.clordid = function(buffer, offset, packet, parent)
  local length = b3_equities_binaryentrypoint_sbe_v7_0_size_of.clordid
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = b3_equities_binaryentrypoint_sbe_v7_0_display.clordid(value, buffer, offset, packet, parent)

  parent:add(b3_equities_binaryentrypoint_sbe_v7_0.fields.clordid, range, value, display)

  return offset + length, value
end

-- Size: Mass Action Scope
b3_equities_binaryentrypoint_sbe_v7_0_size_of.mass_action_scope = 1

-- Display: Mass Action Scope
b3_equities_binaryentrypoint_sbe_v7_0_display.mass_action_scope = function(value)
  if value == 6 then
    return "Mass Action Scope: Allordersforatradingsession (6)"
  end
  if value == 0 then
    return "Mass Action Scope: No Value"
  end

  return "Mass Action Scope: Unknown("..value..")"
end

-- Dissect: Mass Action Scope
b3_equities_binaryentrypoint_sbe_v7_0_dissect.mass_action_scope = function(buffer, offset, packet, parent)
  local length = b3_equities_binaryentrypoint_sbe_v7_0_size_of.mass_action_scope
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = b3_equities_binaryentrypoint_sbe_v7_0_display.mass_action_scope(value, buffer, offset, packet, parent)

  parent:add(b3_equities_binaryentrypoint_sbe_v7_0.fields.mass_action_scope, range, value, display)

  return offset + length, value
end

-- Size: Mass Action Type
b3_equities_binaryentrypoint_sbe_v7_0_size_of.mass_action_type = 1

-- Display: Mass Action Type
b3_equities_binaryentrypoint_sbe_v7_0_display.mass_action_type = function(value)
  if value == 2 then
    return "Mass Action Type: Releaseordersfromsuspension (2)"
  end
  if value == 3 then
    return "Mass Action Type: Cancelorders (3)"
  end
  if value == 4 then
    return "Mass Action Type: Cancelandsuspendorders (4)"
  end
  if value == 5 then
    return "Mass Action Type: Sessiongroupquery (5)"
  end

  return "Mass Action Type: Unknown("..value..")"
end

-- Dissect: Mass Action Type
b3_equities_binaryentrypoint_sbe_v7_0_dissect.mass_action_type = function(buffer, offset, packet, parent)
  local length = b3_equities_binaryentrypoint_sbe_v7_0_size_of.mass_action_type
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = b3_equities_binaryentrypoint_sbe_v7_0_display.mass_action_type(value, buffer, offset, packet, parent)

  parent:add(b3_equities_binaryentrypoint_sbe_v7_0.fields.mass_action_type, range, value, display)

  return offset + length, value
end

-- Size: Padding
b3_equities_binaryentrypoint_sbe_v7_0_size_of.padding = 1

-- Display: Padding
b3_equities_binaryentrypoint_sbe_v7_0_display.padding = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Padding: No Value"
  end

  return "Padding: "..value
end

-- Dissect: Padding
b3_equities_binaryentrypoint_sbe_v7_0_dissect.padding = function(buffer, offset, packet, parent)
  local length = b3_equities_binaryentrypoint_sbe_v7_0_size_of.padding
  local range = buffer(offset, length)

  -- parse as byte
  local value = range:uint()

  -- check if value is non zero
  if value ~= 0 then
    value = range:string()
  end

  local display = b3_equities_binaryentrypoint_sbe_v7_0_display.padding(value, buffer, offset, packet, parent)

  parent:add(b3_equities_binaryentrypoint_sbe_v7_0.fields.padding, range, value, display)

  return offset + length, value
end

-- Size: Poss Resend
b3_equities_binaryentrypoint_sbe_v7_0_size_of.poss_resend = 1

-- Display: Poss Resend
b3_equities_binaryentrypoint_sbe_v7_0_display.poss_resend = function(value)
  return "Poss Resend: "..value
end

-- Dissect: Poss Resend
b3_equities_binaryentrypoint_sbe_v7_0_dissect.poss_resend = function(buffer, offset, packet, parent)
  local length = b3_equities_binaryentrypoint_sbe_v7_0_size_of.poss_resend
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = b3_equities_binaryentrypoint_sbe_v7_0_display.poss_resend(value, buffer, offset, packet, parent)

  parent:add(b3_equities_binaryentrypoint_sbe_v7_0.fields.poss_resend, range, value, display)

  return offset + length, value
end

-- Size: Sending Time
b3_equities_binaryentrypoint_sbe_v7_0_size_of.sending_time = 8

-- Display: Sending Time
b3_equities_binaryentrypoint_sbe_v7_0_display.sending_time = function(value)
  return "Sending Time: "..value
end

-- Dissect: Sending Time
b3_equities_binaryentrypoint_sbe_v7_0_dissect.sending_time = function(buffer, offset, packet, parent)
  local length = b3_equities_binaryentrypoint_sbe_v7_0_size_of.sending_time
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = b3_equities_binaryentrypoint_sbe_v7_0_display.sending_time(value, buffer, offset, packet, parent)

  parent:add(b3_equities_binaryentrypoint_sbe_v7_0.fields.sending_time, range, value, display)

  return offset + length, value
end

-- Size: Msg Seq Num
b3_equities_binaryentrypoint_sbe_v7_0_size_of.msg_seq_num = 4

-- Display: Msg Seq Num
b3_equities_binaryentrypoint_sbe_v7_0_display.msg_seq_num = function(value)
  return "Msg Seq Num: "..value
end

-- Dissect: Msg Seq Num
b3_equities_binaryentrypoint_sbe_v7_0_dissect.msg_seq_num = function(buffer, offset, packet, parent)
  local length = b3_equities_binaryentrypoint_sbe_v7_0_size_of.msg_seq_num
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = b3_equities_binaryentrypoint_sbe_v7_0_display.msg_seq_num(value, buffer, offset, packet, parent)

  parent:add(b3_equities_binaryentrypoint_sbe_v7_0.fields.msg_seq_num, range, value, display)

  return offset + length, value
end

-- Size: Session Id
b3_equities_binaryentrypoint_sbe_v7_0_size_of.session_id = 4

-- Display: Session Id
b3_equities_binaryentrypoint_sbe_v7_0_display.session_id = function(value)
  return "Session Id: "..value
end

-- Dissect: Session Id
b3_equities_binaryentrypoint_sbe_v7_0_dissect.session_id = function(buffer, offset, packet, parent)
  local length = b3_equities_binaryentrypoint_sbe_v7_0_size_of.session_id
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = b3_equities_binaryentrypoint_sbe_v7_0_display.session_id(value, buffer, offset, packet, parent)

  parent:add(b3_equities_binaryentrypoint_sbe_v7_0.fields.session_id, range, value, display)

  return offset + length, value
end

-- Calculate size of: Outbound Business Header
b3_equities_binaryentrypoint_sbe_v7_0_size_of.outbound_business_header = function(buffer, offset)
  local index = 0

  index = index + b3_equities_binaryentrypoint_sbe_v7_0_size_of.session_id

  index = index + b3_equities_binaryentrypoint_sbe_v7_0_size_of.msg_seq_num

  index = index + b3_equities_binaryentrypoint_sbe_v7_0_size_of.sending_time

  index = index + b3_equities_binaryentrypoint_sbe_v7_0_size_of.poss_resend

  index = index + b3_equities_binaryentrypoint_sbe_v7_0_size_of.padding

  return index
end

-- Display: Outbound Business Header
b3_equities_binaryentrypoint_sbe_v7_0_display.outbound_business_header = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Outbound Business Header
b3_equities_binaryentrypoint_sbe_v7_0_dissect.outbound_business_header_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Session Id: 4 Byte Unsigned Fixed Width Integer
  index, session_id = b3_equities_binaryentrypoint_sbe_v7_0_dissect.session_id(buffer, index, packet, parent)

  -- Msg Seq Num: 4 Byte Unsigned Fixed Width Integer
  index, msg_seq_num = b3_equities_binaryentrypoint_sbe_v7_0_dissect.msg_seq_num(buffer, index, packet, parent)

  -- Sending Time: 8 Byte Unsigned Fixed Width Integer
  index, sending_time = b3_equities_binaryentrypoint_sbe_v7_0_dissect.sending_time(buffer, index, packet, parent)

  -- Poss Resend: 1 Byte Unsigned Fixed Width Integer
  index, poss_resend = b3_equities_binaryentrypoint_sbe_v7_0_dissect.poss_resend(buffer, index, packet, parent)

  -- Padding: 1 Byte Ascii String
  index, padding = b3_equities_binaryentrypoint_sbe_v7_0_dissect.padding(buffer, index, packet, parent)

  return index
end

-- Dissect: Outbound Business Header
b3_equities_binaryentrypoint_sbe_v7_0_dissect.outbound_business_header = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.outbound_business_header then
    local length = b3_equities_binaryentrypoint_sbe_v7_0_size_of.outbound_business_header(buffer, offset)
    local range = buffer(offset, length)
    local display = b3_equities_binaryentrypoint_sbe_v7_0_display.outbound_business_header(buffer, packet, parent)
    parent = parent:add(b3_equities_binaryentrypoint_sbe_v7_0.fields.outbound_business_header, range, display)
  end

  return b3_equities_binaryentrypoint_sbe_v7_0_dissect.outbound_business_header_fields(buffer, offset, packet, parent)
end

-- Calculate size of: Order Mass Action Report Message
b3_equities_binaryentrypoint_sbe_v7_0_size_of.order_mass_action_report_message = function(buffer, offset)
  local index = 0

  index = index + b3_equities_binaryentrypoint_sbe_v7_0_size_of.outbound_business_header(buffer, offset + index)

  index = index + b3_equities_binaryentrypoint_sbe_v7_0_size_of.mass_action_type

  index = index + b3_equities_binaryentrypoint_sbe_v7_0_size_of.mass_action_scope

  index = index + b3_equities_binaryentrypoint_sbe_v7_0_size_of.clordid

  index = index + b3_equities_binaryentrypoint_sbe_v7_0_size_of.mass_action_report_id

  index = index + b3_equities_binaryentrypoint_sbe_v7_0_size_of.transact_time

  index = index + b3_equities_binaryentrypoint_sbe_v7_0_size_of.mass_action_response

  index = index + b3_equities_binaryentrypoint_sbe_v7_0_size_of.mass_action_reject_reason

  index = index + b3_equities_binaryentrypoint_sbe_v7_0_size_of.mass_cancel_restatement_reason

  index = index + b3_equities_binaryentrypoint_sbe_v7_0_size_of.ord_tag_id

  index = index + b3_equities_binaryentrypoint_sbe_v7_0_size_of.side_optional

  index = index + b3_equities_binaryentrypoint_sbe_v7_0_size_of.asset

  index = index + b3_equities_binaryentrypoint_sbe_v7_0_size_of.security_id_optional

  index = index + b3_equities_binaryentrypoint_sbe_v7_0_size_of.security_exchange

  index = index + b3_equities_binaryentrypoint_sbe_v7_0_size_of.action_target_session_id

  index = index + b3_equities_binaryentrypoint_sbe_v7_0_size_of.action_target_group_id

  index = index + b3_equities_binaryentrypoint_sbe_v7_0_size_of.no_comp_i_ds_groups(buffer, offset + index)

  index = index + b3_equities_binaryentrypoint_sbe_v7_0_size_of.text(buffer, offset + index)

  return index
end

-- Display: Order Mass Action Report Message
b3_equities_binaryentrypoint_sbe_v7_0_display.order_mass_action_report_message = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Order Mass Action Report Message
b3_equities_binaryentrypoint_sbe_v7_0_dissect.order_mass_action_report_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Outbound Business Header: Struct of 5 fields
  index, outbound_business_header = b3_equities_binaryentrypoint_sbe_v7_0_dissect.outbound_business_header(buffer, index, packet, parent)

  -- Mass Action Type: 1 Byte Unsigned Fixed Width Integer Enum with 4 values
  index, mass_action_type = b3_equities_binaryentrypoint_sbe_v7_0_dissect.mass_action_type(buffer, index, packet, parent)

  -- Mass Action Scope: 1 Byte Unsigned Fixed Width Integer Enum with 2 values
  index, mass_action_scope = b3_equities_binaryentrypoint_sbe_v7_0_dissect.mass_action_scope(buffer, index, packet, parent)

  -- ClOrdId: 8 Byte Unsigned Fixed Width Integer
  index, clordid = b3_equities_binaryentrypoint_sbe_v7_0_dissect.clordid(buffer, index, packet, parent)

  -- Mass Action Report Id: 8 Byte Unsigned Fixed Width Integer
  index, mass_action_report_id = b3_equities_binaryentrypoint_sbe_v7_0_dissect.mass_action_report_id(buffer, index, packet, parent)

  -- Transact Time: 8 Byte Unsigned Fixed Width Integer
  index, transact_time = b3_equities_binaryentrypoint_sbe_v7_0_dissect.transact_time(buffer, index, packet, parent)

  -- Mass Action Response: 1 Byte Ascii String Enum with 2 values
  index, mass_action_response = b3_equities_binaryentrypoint_sbe_v7_0_dissect.mass_action_response(buffer, index, packet, parent)

  -- Mass Action Reject Reason: 1 Byte Unsigned Fixed Width Integer Enum with 4 values
  index, mass_action_reject_reason = b3_equities_binaryentrypoint_sbe_v7_0_dissect.mass_action_reject_reason(buffer, index, packet, parent)

  -- Mass Cancel Restatement Reason: 1 Byte Unsigned Fixed Width Integer Enum with 3 values
  index, mass_cancel_restatement_reason = b3_equities_binaryentrypoint_sbe_v7_0_dissect.mass_cancel_restatement_reason(buffer, index, packet, parent)

  -- Ord Tag Id: 1 Byte Unsigned Fixed Width Integer
  index, ord_tag_id = b3_equities_binaryentrypoint_sbe_v7_0_dissect.ord_tag_id(buffer, index, packet, parent)

  -- Side Optional: 1 Byte Ascii String Enum with 3 values
  index, side_optional = b3_equities_binaryentrypoint_sbe_v7_0_dissect.side_optional(buffer, index, packet, parent)

  -- Asset: 6 Byte Ascii String
  index, asset = b3_equities_binaryentrypoint_sbe_v7_0_dissect.asset(buffer, index, packet, parent)

  -- Security Id Optional: 8 Byte Unsigned Fixed Width Integer
  index, security_id_optional = b3_equities_binaryentrypoint_sbe_v7_0_dissect.security_id_optional(buffer, index, packet, parent)

  -- Security Exchange: 4 Byte Ascii String
  index, security_exchange = b3_equities_binaryentrypoint_sbe_v7_0_dissect.security_exchange(buffer, index, packet, parent)

  -- Action Target Session Id: 4 Byte Unsigned Fixed Width Integer
  index, action_target_session_id = b3_equities_binaryentrypoint_sbe_v7_0_dissect.action_target_session_id(buffer, index, packet, parent)

  -- Action Target Group Id: 4 Byte Unsigned Fixed Width Integer
  index, action_target_group_id = b3_equities_binaryentrypoint_sbe_v7_0_dissect.action_target_group_id(buffer, index, packet, parent)

  -- No Comp I Ds Groups: Struct of 2 fields
  index, no_comp_i_ds_groups = b3_equities_binaryentrypoint_sbe_v7_0_dissect.no_comp_i_ds_groups(buffer, index, packet, parent)

  -- Text: Struct of 2 fields
  index, text = b3_equities_binaryentrypoint_sbe_v7_0_dissect.text(buffer, index, packet, parent)

  return index
end

-- Dissect: Order Mass Action Report Message
b3_equities_binaryentrypoint_sbe_v7_0_dissect.order_mass_action_report_message = function(buffer, offset, packet, parent)
  -- Optionally add dynamic struct element to protocol tree
  if show.order_mass_action_report_message then
    local length = b3_equities_binaryentrypoint_sbe_v7_0_size_of.order_mass_action_report_message(buffer, offset)
    local range = buffer(offset, length)
    local display = b3_equities_binaryentrypoint_sbe_v7_0_display.order_mass_action_report_message(buffer, packet, parent)
    parent = parent:add(b3_equities_binaryentrypoint_sbe_v7_0.fields.order_mass_action_report_message, range, display)
  end

  return b3_equities_binaryentrypoint_sbe_v7_0_dissect.order_mass_action_report_message_fields(buffer, offset, packet, parent)
end

-- Size: Market Segment I D Market Segment Id
b3_equities_binaryentrypoint_sbe_v7_0_size_of.market_segment_i_d_market_segment_id = 1

-- Display: Market Segment I D Market Segment Id
b3_equities_binaryentrypoint_sbe_v7_0_display.market_segment_i_d_market_segment_id = function(value)
  return "Market Segment I D Market Segment Id: "..value
end

-- Dissect: Market Segment I D Market Segment Id
b3_equities_binaryentrypoint_sbe_v7_0_dissect.market_segment_i_d_market_segment_id = function(buffer, offset, packet, parent)
  local length = b3_equities_binaryentrypoint_sbe_v7_0_size_of.market_segment_i_d_market_segment_id
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = b3_equities_binaryentrypoint_sbe_v7_0_display.market_segment_i_d_market_segment_id(value, buffer, offset, packet, parent)

  parent:add(b3_equities_binaryentrypoint_sbe_v7_0.fields.market_segment_i_d_market_segment_id, range, value, display)

  return offset + length, value
end

-- Calculate size of: Inbound Business Header
b3_equities_binaryentrypoint_sbe_v7_0_size_of.inbound_business_header = function(buffer, offset)
  local index = 0

  index = index + b3_equities_binaryentrypoint_sbe_v7_0_size_of.session_id

  index = index + b3_equities_binaryentrypoint_sbe_v7_0_size_of.msg_seq_num

  index = index + b3_equities_binaryentrypoint_sbe_v7_0_size_of.sending_time

  index = index + b3_equities_binaryentrypoint_sbe_v7_0_size_of.market_segment_i_d_market_segment_id

  index = index + b3_equities_binaryentrypoint_sbe_v7_0_size_of.padding

  return index
end

-- Display: Inbound Business Header
b3_equities_binaryentrypoint_sbe_v7_0_display.inbound_business_header = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Inbound Business Header
b3_equities_binaryentrypoint_sbe_v7_0_dissect.inbound_business_header_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Session Id: 4 Byte Unsigned Fixed Width Integer
  index, session_id = b3_equities_binaryentrypoint_sbe_v7_0_dissect.session_id(buffer, index, packet, parent)

  -- Msg Seq Num: 4 Byte Unsigned Fixed Width Integer
  index, msg_seq_num = b3_equities_binaryentrypoint_sbe_v7_0_dissect.msg_seq_num(buffer, index, packet, parent)

  -- Sending Time: 8 Byte Unsigned Fixed Width Integer
  index, sending_time = b3_equities_binaryentrypoint_sbe_v7_0_dissect.sending_time(buffer, index, packet, parent)

  -- Market Segment I D Market Segment Id: 1 Byte Unsigned Fixed Width Integer
  index, market_segment_i_d_market_segment_id = b3_equities_binaryentrypoint_sbe_v7_0_dissect.market_segment_i_d_market_segment_id(buffer, index, packet, parent)

  -- Padding: 1 Byte Ascii String
  index, padding = b3_equities_binaryentrypoint_sbe_v7_0_dissect.padding(buffer, index, packet, parent)

  return index
end

-- Dissect: Inbound Business Header
b3_equities_binaryentrypoint_sbe_v7_0_dissect.inbound_business_header = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.inbound_business_header then
    local length = b3_equities_binaryentrypoint_sbe_v7_0_size_of.inbound_business_header(buffer, offset)
    local range = buffer(offset, length)
    local display = b3_equities_binaryentrypoint_sbe_v7_0_display.inbound_business_header(buffer, packet, parent)
    parent = parent:add(b3_equities_binaryentrypoint_sbe_v7_0.fields.inbound_business_header, range, display)
  end

  return b3_equities_binaryentrypoint_sbe_v7_0_dissect.inbound_business_header_fields(buffer, offset, packet, parent)
end

-- Calculate size of: Order Mass Action Request Message
b3_equities_binaryentrypoint_sbe_v7_0_size_of.order_mass_action_request_message = function(buffer, offset)
  local index = 0

  index = index + b3_equities_binaryentrypoint_sbe_v7_0_size_of.inbound_business_header(buffer, offset + index)

  index = index + b3_equities_binaryentrypoint_sbe_v7_0_size_of.mass_action_type

  index = index + b3_equities_binaryentrypoint_sbe_v7_0_size_of.mass_action_scope

  index = index + b3_equities_binaryentrypoint_sbe_v7_0_size_of.clordid

  index = index + b3_equities_binaryentrypoint_sbe_v7_0_size_of.mass_cancel_restatement_reason

  index = index + b3_equities_binaryentrypoint_sbe_v7_0_size_of.ord_tag_id

  index = index + b3_equities_binaryentrypoint_sbe_v7_0_size_of.side_optional

  index = index + b3_equities_binaryentrypoint_sbe_v7_0_size_of.asset

  index = index + b3_equities_binaryentrypoint_sbe_v7_0_size_of.security_id_optional

  index = index + b3_equities_binaryentrypoint_sbe_v7_0_size_of.security_exchange

  index = index + b3_equities_binaryentrypoint_sbe_v7_0_size_of.action_target_session_id

  index = index + b3_equities_binaryentrypoint_sbe_v7_0_size_of.action_target_group_id

  return index
end

-- Display: Order Mass Action Request Message
b3_equities_binaryentrypoint_sbe_v7_0_display.order_mass_action_request_message = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Order Mass Action Request Message
b3_equities_binaryentrypoint_sbe_v7_0_dissect.order_mass_action_request_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Inbound Business Header: Struct of 5 fields
  index, inbound_business_header = b3_equities_binaryentrypoint_sbe_v7_0_dissect.inbound_business_header(buffer, index, packet, parent)

  -- Mass Action Type: 1 Byte Unsigned Fixed Width Integer Enum with 4 values
  index, mass_action_type = b3_equities_binaryentrypoint_sbe_v7_0_dissect.mass_action_type(buffer, index, packet, parent)

  -- Mass Action Scope: 1 Byte Unsigned Fixed Width Integer Enum with 2 values
  index, mass_action_scope = b3_equities_binaryentrypoint_sbe_v7_0_dissect.mass_action_scope(buffer, index, packet, parent)

  -- ClOrdId: 8 Byte Unsigned Fixed Width Integer
  index, clordid = b3_equities_binaryentrypoint_sbe_v7_0_dissect.clordid(buffer, index, packet, parent)

  -- Mass Cancel Restatement Reason: 1 Byte Unsigned Fixed Width Integer Enum with 3 values
  index, mass_cancel_restatement_reason = b3_equities_binaryentrypoint_sbe_v7_0_dissect.mass_cancel_restatement_reason(buffer, index, packet, parent)

  -- Ord Tag Id: 1 Byte Unsigned Fixed Width Integer
  index, ord_tag_id = b3_equities_binaryentrypoint_sbe_v7_0_dissect.ord_tag_id(buffer, index, packet, parent)

  -- Side Optional: 1 Byte Ascii String Enum with 3 values
  index, side_optional = b3_equities_binaryentrypoint_sbe_v7_0_dissect.side_optional(buffer, index, packet, parent)

  -- Asset: 6 Byte Ascii String
  index, asset = b3_equities_binaryentrypoint_sbe_v7_0_dissect.asset(buffer, index, packet, parent)

  -- Security Id Optional: 8 Byte Unsigned Fixed Width Integer
  index, security_id_optional = b3_equities_binaryentrypoint_sbe_v7_0_dissect.security_id_optional(buffer, index, packet, parent)

  -- Security Exchange: 4 Byte Ascii String
  index, security_exchange = b3_equities_binaryentrypoint_sbe_v7_0_dissect.security_exchange(buffer, index, packet, parent)

  -- Action Target Session Id: 4 Byte Unsigned Fixed Width Integer
  index, action_target_session_id = b3_equities_binaryentrypoint_sbe_v7_0_dissect.action_target_session_id(buffer, index, packet, parent)

  -- Action Target Group Id: 4 Byte Unsigned Fixed Width Integer
  index, action_target_group_id = b3_equities_binaryentrypoint_sbe_v7_0_dissect.action_target_group_id(buffer, index, packet, parent)

  return index
end

-- Dissect: Order Mass Action Request Message
b3_equities_binaryentrypoint_sbe_v7_0_dissect.order_mass_action_request_message = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.order_mass_action_request_message then
    local length = b3_equities_binaryentrypoint_sbe_v7_0_size_of.order_mass_action_request_message(buffer, offset)
    local range = buffer(offset, length)
    local display = b3_equities_binaryentrypoint_sbe_v7_0_display.order_mass_action_request_message(buffer, packet, parent)
    parent = parent:add(b3_equities_binaryentrypoint_sbe_v7_0.fields.order_mass_action_request_message, range, display)
  end

  return b3_equities_binaryentrypoint_sbe_v7_0_dissect.order_mass_action_request_message_fields(buffer, offset, packet, parent)
end

-- Size: Entering Trader
b3_equities_binaryentrypoint_sbe_v7_0_size_of.entering_trader = 5

-- Display: Entering Trader
b3_equities_binaryentrypoint_sbe_v7_0_display.entering_trader = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Entering Trader: No Value"
  end

  return "Entering Trader: "..value
end

-- Dissect: Entering Trader
b3_equities_binaryentrypoint_sbe_v7_0_dissect.entering_trader = function(buffer, offset, packet, parent)
  local length = b3_equities_binaryentrypoint_sbe_v7_0_size_of.entering_trader
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

  local display = b3_equities_binaryentrypoint_sbe_v7_0_display.entering_trader(value, buffer, offset, packet, parent)

  parent:add(b3_equities_binaryentrypoint_sbe_v7_0.fields.entering_trader, range, value, display)

  return offset + length, value
end

-- Size: Sender Location
b3_equities_binaryentrypoint_sbe_v7_0_size_of.sender_location = 10

-- Display: Sender Location
b3_equities_binaryentrypoint_sbe_v7_0_display.sender_location = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Sender Location: No Value"
  end

  return "Sender Location: "..value
end

-- Dissect: Sender Location
b3_equities_binaryentrypoint_sbe_v7_0_dissect.sender_location = function(buffer, offset, packet, parent)
  local length = b3_equities_binaryentrypoint_sbe_v7_0_size_of.sender_location
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

  local display = b3_equities_binaryentrypoint_sbe_v7_0_display.sender_location(value, buffer, offset, packet, parent)

  parent:add(b3_equities_binaryentrypoint_sbe_v7_0.fields.sender_location, range, value, display)

  return offset + length, value
end

-- Size: Side
b3_equities_binaryentrypoint_sbe_v7_0_size_of.side = 1

-- Display: Side
b3_equities_binaryentrypoint_sbe_v7_0_display.side = function(value)
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

  return "Side: Unknown("..value..")"
end

-- Dissect: Side
b3_equities_binaryentrypoint_sbe_v7_0_dissect.side = function(buffer, offset, packet, parent)
  local length = b3_equities_binaryentrypoint_sbe_v7_0_size_of.side
  local range = buffer(offset, length)

  -- parse as byte
  local value = range:uint()

  -- check if value is non zero
  if value ~= 0 then
    value = range:string()
  end

  local display = b3_equities_binaryentrypoint_sbe_v7_0_display.side(value, buffer, offset, packet, parent)

  parent:add(b3_equities_binaryentrypoint_sbe_v7_0.fields.side, range, value, display)

  return offset + length, value
end

-- Size: Trade Date Optional
b3_equities_binaryentrypoint_sbe_v7_0_size_of.trade_date_optional = 2

-- Display: Trade Date Optional
b3_equities_binaryentrypoint_sbe_v7_0_display.trade_date_optional = function(value)
  return "Trade Date Optional: "..value
end

-- Dissect: Trade Date Optional
b3_equities_binaryentrypoint_sbe_v7_0_dissect.trade_date_optional = function(buffer, offset, packet, parent)
  local length = b3_equities_binaryentrypoint_sbe_v7_0_size_of.trade_date_optional
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = b3_equities_binaryentrypoint_sbe_v7_0_display.trade_date_optional(value, buffer, offset, packet, parent)

  parent:add(b3_equities_binaryentrypoint_sbe_v7_0.fields.trade_date_optional, range, value, display)

  return offset + length, value
end

-- Size: Alloc Status
b3_equities_binaryentrypoint_sbe_v7_0_size_of.alloc_status = 1

-- Display: Alloc Status
b3_equities_binaryentrypoint_sbe_v7_0_display.alloc_status = function(value)
  -- Check if field has value
  if value == nil or value == 0 then
    return "Alloc Status: No Value"
  end

  if value == "0" then
    return "Alloc Status: Accepted (0)"
  end
  if value == "5" then
    return "Alloc Status: Rejectedbyintermediary (5)"
  end

  return "Alloc Status: Unknown("..value..")"
end

-- Dissect: Alloc Status
b3_equities_binaryentrypoint_sbe_v7_0_dissect.alloc_status = function(buffer, offset, packet, parent)
  local length = b3_equities_binaryentrypoint_sbe_v7_0_size_of.alloc_status
  local range = buffer(offset, length)

  -- parse as byte
  local value = range:uint()

  -- check if value is non zero
  if value ~= 0 then
    value = range:string()
  end

  local display = b3_equities_binaryentrypoint_sbe_v7_0_display.alloc_status(value, buffer, offset, packet, parent)

  parent:add(b3_equities_binaryentrypoint_sbe_v7_0.fields.alloc_status, range, value, display)

  return offset + length, value
end

-- Size: Quantity
b3_equities_binaryentrypoint_sbe_v7_0_size_of.quantity = 8

-- Display: Quantity
b3_equities_binaryentrypoint_sbe_v7_0_display.quantity = function(value)
  return "Quantity: "..value
end

-- Dissect: Quantity
b3_equities_binaryentrypoint_sbe_v7_0_dissect.quantity = function(buffer, offset, packet, parent)
  local length = b3_equities_binaryentrypoint_sbe_v7_0_size_of.quantity
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = b3_equities_binaryentrypoint_sbe_v7_0_display.quantity(value, buffer, offset, packet, parent)

  parent:add(b3_equities_binaryentrypoint_sbe_v7_0.fields.quantity, range, value, display)

  return offset + length, value
end

-- Size: Alloc Rej Code
b3_equities_binaryentrypoint_sbe_v7_0_size_of.alloc_rej_code = 4

-- Display: Alloc Rej Code
b3_equities_binaryentrypoint_sbe_v7_0_display.alloc_rej_code = function(value)
  return "Alloc Rej Code: "..value
end

-- Dissect: Alloc Rej Code
b3_equities_binaryentrypoint_sbe_v7_0_dissect.alloc_rej_code = function(buffer, offset, packet, parent)
  local length = b3_equities_binaryentrypoint_sbe_v7_0_size_of.alloc_rej_code
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = b3_equities_binaryentrypoint_sbe_v7_0_display.alloc_rej_code(value, buffer, offset, packet, parent)

  parent:add(b3_equities_binaryentrypoint_sbe_v7_0.fields.alloc_rej_code, range, value, display)

  return offset + length, value
end

-- Size: Alloc No Orders Type
b3_equities_binaryentrypoint_sbe_v7_0_size_of.alloc_no_orders_type = 1

-- Display: Alloc No Orders Type
b3_equities_binaryentrypoint_sbe_v7_0_display.alloc_no_orders_type = function(value)
  -- Check if field has value
  if value == nil or value == 0 then
    return "Alloc No Orders Type: No Value"
  end

  if value == "0" then
    return "Alloc No Orders Type: Notspecified (0)"
  end

  return "Alloc No Orders Type: Unknown("..value..")"
end

-- Dissect: Alloc No Orders Type
b3_equities_binaryentrypoint_sbe_v7_0_dissect.alloc_no_orders_type = function(buffer, offset, packet, parent)
  local length = b3_equities_binaryentrypoint_sbe_v7_0_size_of.alloc_no_orders_type
  local range = buffer(offset, length)

  -- parse as byte
  local value = range:uint()

  -- check if value is non zero
  if value ~= 0 then
    value = range:string()
  end

  local display = b3_equities_binaryentrypoint_sbe_v7_0_display.alloc_no_orders_type(value, buffer, offset, packet, parent)

  parent:add(b3_equities_binaryentrypoint_sbe_v7_0.fields.alloc_no_orders_type, range, value, display)

  return offset + length, value
end

-- Size: Alloc Report Type
b3_equities_binaryentrypoint_sbe_v7_0_size_of.alloc_report_type = 1

-- Display: Alloc Report Type
b3_equities_binaryentrypoint_sbe_v7_0_display.alloc_report_type = function(value)
  -- Check if field has value
  if value == nil or value == 0 then
    return "Alloc Report Type: No Value"
  end

  if value == "8" then
    return "Alloc Report Type: Requesttointermediary (8)"
  end

  return "Alloc Report Type: Unknown("..value..")"
end

-- Dissect: Alloc Report Type
b3_equities_binaryentrypoint_sbe_v7_0_dissect.alloc_report_type = function(buffer, offset, packet, parent)
  local length = b3_equities_binaryentrypoint_sbe_v7_0_size_of.alloc_report_type
  local range = buffer(offset, length)

  -- parse as byte
  local value = range:uint()

  -- check if value is non zero
  if value ~= 0 then
    value = range:string()
  end

  local display = b3_equities_binaryentrypoint_sbe_v7_0_display.alloc_report_type(value, buffer, offset, packet, parent)

  parent:add(b3_equities_binaryentrypoint_sbe_v7_0.fields.alloc_report_type, range, value, display)

  return offset + length, value
end

-- Size: Alloc Trans Type
b3_equities_binaryentrypoint_sbe_v7_0_size_of.alloc_trans_type = 1

-- Display: Alloc Trans Type
b3_equities_binaryentrypoint_sbe_v7_0_display.alloc_trans_type = function(value)
  -- Check if field has value
  if value == nil or value == 0 then
    return "Alloc Trans Type: No Value"
  end

  if value == "0" then
    return "Alloc Trans Type: New (0)"
  end
  if value == "2" then
    return "Alloc Trans Type: Cancel (2)"
  end

  return "Alloc Trans Type: Unknown("..value..")"
end

-- Dissect: Alloc Trans Type
b3_equities_binaryentrypoint_sbe_v7_0_dissect.alloc_trans_type = function(buffer, offset, packet, parent)
  local length = b3_equities_binaryentrypoint_sbe_v7_0_size_of.alloc_trans_type
  local range = buffer(offset, length)

  -- parse as byte
  local value = range:uint()

  -- check if value is non zero
  if value ~= 0 then
    value = range:string()
  end

  local display = b3_equities_binaryentrypoint_sbe_v7_0_display.alloc_trans_type(value, buffer, offset, packet, parent)

  parent:add(b3_equities_binaryentrypoint_sbe_v7_0.fields.alloc_trans_type, range, value, display)

  return offset + length, value
end

-- Size: Alloc Report Id
b3_equities_binaryentrypoint_sbe_v7_0_size_of.alloc_report_id = 8

-- Display: Alloc Report Id
b3_equities_binaryentrypoint_sbe_v7_0_display.alloc_report_id = function(value)
  return "Alloc Report Id: "..value
end

-- Dissect: Alloc Report Id
b3_equities_binaryentrypoint_sbe_v7_0_dissect.alloc_report_id = function(buffer, offset, packet, parent)
  local length = b3_equities_binaryentrypoint_sbe_v7_0_size_of.alloc_report_id
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = b3_equities_binaryentrypoint_sbe_v7_0_display.alloc_report_id(value, buffer, offset, packet, parent)

  parent:add(b3_equities_binaryentrypoint_sbe_v7_0.fields.alloc_report_id, range, value, display)

  return offset + length, value
end

-- Size: Security Id
b3_equities_binaryentrypoint_sbe_v7_0_size_of.security_id = 8

-- Display: Security Id
b3_equities_binaryentrypoint_sbe_v7_0_display.security_id = function(value)
  return "Security Id: "..value
end

-- Dissect: Security Id
b3_equities_binaryentrypoint_sbe_v7_0_dissect.security_id = function(buffer, offset, packet, parent)
  local length = b3_equities_binaryentrypoint_sbe_v7_0_size_of.security_id
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = b3_equities_binaryentrypoint_sbe_v7_0_display.security_id(value, buffer, offset, packet, parent)

  parent:add(b3_equities_binaryentrypoint_sbe_v7_0.fields.security_id, range, value, display)

  return offset + length, value
end

-- Size: Alloc Id
b3_equities_binaryentrypoint_sbe_v7_0_size_of.alloc_id = 8

-- Display: Alloc Id
b3_equities_binaryentrypoint_sbe_v7_0_display.alloc_id = function(value)
  return "Alloc Id: "..value
end

-- Dissect: Alloc Id
b3_equities_binaryentrypoint_sbe_v7_0_dissect.alloc_id = function(buffer, offset, packet, parent)
  local length = b3_equities_binaryentrypoint_sbe_v7_0_size_of.alloc_id
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = b3_equities_binaryentrypoint_sbe_v7_0_display.alloc_id(value, buffer, offset, packet, parent)

  parent:add(b3_equities_binaryentrypoint_sbe_v7_0.fields.alloc_id, range, value, display)

  return offset + length, value
end

-- Calculate size of: Allocation Report Message
b3_equities_binaryentrypoint_sbe_v7_0_size_of.allocation_report_message = function(buffer, offset)
  local index = 0

  index = index + b3_equities_binaryentrypoint_sbe_v7_0_size_of.outbound_business_header(buffer, offset + index)

  index = index + b3_equities_binaryentrypoint_sbe_v7_0_size_of.alloc_id

  index = index + b3_equities_binaryentrypoint_sbe_v7_0_size_of.security_id

  index = index + b3_equities_binaryentrypoint_sbe_v7_0_size_of.security_exchange

  index = index + b3_equities_binaryentrypoint_sbe_v7_0_size_of.alloc_report_id

  index = index + b3_equities_binaryentrypoint_sbe_v7_0_size_of.alloc_trans_type

  index = index + b3_equities_binaryentrypoint_sbe_v7_0_size_of.alloc_report_type

  index = index + b3_equities_binaryentrypoint_sbe_v7_0_size_of.alloc_no_orders_type

  index = index + b3_equities_binaryentrypoint_sbe_v7_0_size_of.alloc_rej_code

  index = index + b3_equities_binaryentrypoint_sbe_v7_0_size_of.quantity

  index = index + b3_equities_binaryentrypoint_sbe_v7_0_size_of.alloc_status

  index = index + b3_equities_binaryentrypoint_sbe_v7_0_size_of.trade_date_optional

  index = index + b3_equities_binaryentrypoint_sbe_v7_0_size_of.transact_time

  index = index + b3_equities_binaryentrypoint_sbe_v7_0_size_of.side

  index = index + b3_equities_binaryentrypoint_sbe_v7_0_size_of.sender_location

  index = index + b3_equities_binaryentrypoint_sbe_v7_0_size_of.entering_trader

  return index
end

-- Display: Allocation Report Message
b3_equities_binaryentrypoint_sbe_v7_0_display.allocation_report_message = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Allocation Report Message
b3_equities_binaryentrypoint_sbe_v7_0_dissect.allocation_report_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Outbound Business Header: Struct of 5 fields
  index, outbound_business_header = b3_equities_binaryentrypoint_sbe_v7_0_dissect.outbound_business_header(buffer, index, packet, parent)

  -- Alloc Id: 8 Byte Unsigned Fixed Width Integer
  index, alloc_id = b3_equities_binaryentrypoint_sbe_v7_0_dissect.alloc_id(buffer, index, packet, parent)

  -- Security Id: 8 Byte Unsigned Fixed Width Integer
  index, security_id = b3_equities_binaryentrypoint_sbe_v7_0_dissect.security_id(buffer, index, packet, parent)

  -- Security Exchange: 4 Byte Ascii String
  index, security_exchange = b3_equities_binaryentrypoint_sbe_v7_0_dissect.security_exchange(buffer, index, packet, parent)

  -- Alloc Report Id: 8 Byte Unsigned Fixed Width Integer
  index, alloc_report_id = b3_equities_binaryentrypoint_sbe_v7_0_dissect.alloc_report_id(buffer, index, packet, parent)

  -- Alloc Trans Type: 1 Byte Ascii String Enum with 2 values
  index, alloc_trans_type = b3_equities_binaryentrypoint_sbe_v7_0_dissect.alloc_trans_type(buffer, index, packet, parent)

  -- Alloc Report Type: 1 Byte Ascii String Enum with 1 values
  index, alloc_report_type = b3_equities_binaryentrypoint_sbe_v7_0_dissect.alloc_report_type(buffer, index, packet, parent)

  -- Alloc No Orders Type: 1 Byte Ascii String Enum with 1 values
  index, alloc_no_orders_type = b3_equities_binaryentrypoint_sbe_v7_0_dissect.alloc_no_orders_type(buffer, index, packet, parent)

  -- Alloc Rej Code: 4 Byte Unsigned Fixed Width Integer
  index, alloc_rej_code = b3_equities_binaryentrypoint_sbe_v7_0_dissect.alloc_rej_code(buffer, index, packet, parent)

  -- Quantity: 8 Byte Unsigned Fixed Width Integer
  index, quantity = b3_equities_binaryentrypoint_sbe_v7_0_dissect.quantity(buffer, index, packet, parent)

  -- Alloc Status: 1 Byte Ascii String Enum with 2 values
  index, alloc_status = b3_equities_binaryentrypoint_sbe_v7_0_dissect.alloc_status(buffer, index, packet, parent)

  -- Trade Date Optional: 2 Byte Unsigned Fixed Width Integer
  index, trade_date_optional = b3_equities_binaryentrypoint_sbe_v7_0_dissect.trade_date_optional(buffer, index, packet, parent)

  -- Transact Time: 8 Byte Unsigned Fixed Width Integer
  index, transact_time = b3_equities_binaryentrypoint_sbe_v7_0_dissect.transact_time(buffer, index, packet, parent)

  -- Side: 1 Byte Ascii String Enum with 2 values
  index, side = b3_equities_binaryentrypoint_sbe_v7_0_dissect.side(buffer, index, packet, parent)

  -- Sender Location: 10 Byte Ascii String
  index, sender_location = b3_equities_binaryentrypoint_sbe_v7_0_dissect.sender_location(buffer, index, packet, parent)

  -- Entering Trader: 5 Byte Ascii String
  index, entering_trader = b3_equities_binaryentrypoint_sbe_v7_0_dissect.entering_trader(buffer, index, packet, parent)

  return index
end

-- Dissect: Allocation Report Message
b3_equities_binaryentrypoint_sbe_v7_0_dissect.allocation_report_message = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.allocation_report_message then
    local length = b3_equities_binaryentrypoint_sbe_v7_0_size_of.allocation_report_message(buffer, offset)
    local range = buffer(offset, length)
    local display = b3_equities_binaryentrypoint_sbe_v7_0_display.allocation_report_message(buffer, packet, parent)
    parent = parent:add(b3_equities_binaryentrypoint_sbe_v7_0.fields.allocation_report_message, range, display)
  end

  return b3_equities_binaryentrypoint_sbe_v7_0_dissect.allocation_report_message_fields(buffer, offset, packet, parent)
end

-- Calculate size of: Memo
b3_equities_binaryentrypoint_sbe_v7_0_size_of.memo = function(buffer, offset)
  local index = 0

  index = index + b3_equities_binaryentrypoint_sbe_v7_0_size_of.length

  index = index + b3_equities_binaryentrypoint_sbe_v7_0_size_of.var_data_char

  return index
end

-- Display: Memo
b3_equities_binaryentrypoint_sbe_v7_0_display.memo = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Memo
b3_equities_binaryentrypoint_sbe_v7_0_dissect.memo_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Length: 1 Byte Unsigned Fixed Width Integer
  index, length = b3_equities_binaryentrypoint_sbe_v7_0_dissect.length(buffer, index, packet, parent)

  -- Var Data char
  index, var_data_char = b3_equities_binaryentrypoint_sbe_v7_0_dissect.var_data_char(buffer, index, packet, parent)

  return index
end

-- Dissect: Memo
b3_equities_binaryentrypoint_sbe_v7_0_dissect.memo = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.memo then
    local length = b3_equities_binaryentrypoint_sbe_v7_0_size_of.memo(buffer, offset)
    local range = buffer(offset, length)
    local display = b3_equities_binaryentrypoint_sbe_v7_0_display.memo(buffer, packet, parent)
    parent = parent:add(b3_equities_binaryentrypoint_sbe_v7_0.fields.memo, range, display)
  end

  return b3_equities_binaryentrypoint_sbe_v7_0_dissect.memo_fields(buffer, offset, packet, parent)
end

-- Calculate size of: Desk Id
b3_equities_binaryentrypoint_sbe_v7_0_size_of.desk_id = function(buffer, offset)
  local index = 0

  index = index + b3_equities_binaryentrypoint_sbe_v7_0_size_of.length

  index = index + b3_equities_binaryentrypoint_sbe_v7_0_size_of.var_data_char

  return index
end

-- Display: Desk Id
b3_equities_binaryentrypoint_sbe_v7_0_display.desk_id = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Desk Id
b3_equities_binaryentrypoint_sbe_v7_0_dissect.desk_id_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Length: 1 Byte Unsigned Fixed Width Integer
  index, length = b3_equities_binaryentrypoint_sbe_v7_0_dissect.length(buffer, index, packet, parent)

  -- Var Data char
  index, var_data_char = b3_equities_binaryentrypoint_sbe_v7_0_dissect.var_data_char(buffer, index, packet, parent)

  return index
end

-- Dissect: Desk Id
b3_equities_binaryentrypoint_sbe_v7_0_dissect.desk_id = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.desk_id then
    local length = b3_equities_binaryentrypoint_sbe_v7_0_size_of.desk_id(buffer, offset)
    local range = buffer(offset, length)
    local display = b3_equities_binaryentrypoint_sbe_v7_0_display.desk_id(buffer, packet, parent)
    parent = parent:add(b3_equities_binaryentrypoint_sbe_v7_0.fields.desk_id, range, display)
  end

  return b3_equities_binaryentrypoint_sbe_v7_0_dissect.desk_id_fields(buffer, offset, packet, parent)
end

-- Size: Alloc Qty
b3_equities_binaryentrypoint_sbe_v7_0_size_of.alloc_qty = 8

-- Display: Alloc Qty
b3_equities_binaryentrypoint_sbe_v7_0_display.alloc_qty = function(value)
  return "Alloc Qty: "..value
end

-- Dissect: Alloc Qty
b3_equities_binaryentrypoint_sbe_v7_0_dissect.alloc_qty = function(buffer, offset, packet, parent)
  local length = b3_equities_binaryentrypoint_sbe_v7_0_size_of.alloc_qty
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = b3_equities_binaryentrypoint_sbe_v7_0_display.alloc_qty(value, buffer, offset, packet, parent)

  parent:add(b3_equities_binaryentrypoint_sbe_v7_0.fields.alloc_qty, range, value, display)

  return offset + length, value
end

-- Size: Alloc Account
b3_equities_binaryentrypoint_sbe_v7_0_size_of.alloc_account = 4

-- Display: Alloc Account
b3_equities_binaryentrypoint_sbe_v7_0_display.alloc_account = function(value)
  return "Alloc Account: "..value
end

-- Dissect: Alloc Account
b3_equities_binaryentrypoint_sbe_v7_0_dissect.alloc_account = function(buffer, offset, packet, parent)
  local length = b3_equities_binaryentrypoint_sbe_v7_0_size_of.alloc_account
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = b3_equities_binaryentrypoint_sbe_v7_0_display.alloc_account(value, buffer, offset, packet, parent)

  parent:add(b3_equities_binaryentrypoint_sbe_v7_0.fields.alloc_account, range, value, display)

  return offset + length, value
end

-- Size: Individual Alloc Id
b3_equities_binaryentrypoint_sbe_v7_0_size_of.individual_alloc_id = 8

-- Display: Individual Alloc Id
b3_equities_binaryentrypoint_sbe_v7_0_display.individual_alloc_id = function(value)
  return "Individual Alloc Id: "..value
end

-- Dissect: Individual Alloc Id
b3_equities_binaryentrypoint_sbe_v7_0_dissect.individual_alloc_id = function(buffer, offset, packet, parent)
  local length = b3_equities_binaryentrypoint_sbe_v7_0_size_of.individual_alloc_id
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = b3_equities_binaryentrypoint_sbe_v7_0_display.individual_alloc_id(value, buffer, offset, packet, parent)

  parent:add(b3_equities_binaryentrypoint_sbe_v7_0.fields.individual_alloc_id, range, value, display)

  return offset + length, value
end

-- Size: Trade Id
b3_equities_binaryentrypoint_sbe_v7_0_size_of.trade_id = 4

-- Display: Trade Id
b3_equities_binaryentrypoint_sbe_v7_0_display.trade_id = function(value)
  return "Trade Id: "..value
end

-- Dissect: Trade Id
b3_equities_binaryentrypoint_sbe_v7_0_dissect.trade_id = function(buffer, offset, packet, parent)
  local length = b3_equities_binaryentrypoint_sbe_v7_0_size_of.trade_id
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = b3_equities_binaryentrypoint_sbe_v7_0_display.trade_id(value, buffer, offset, packet, parent)

  parent:add(b3_equities_binaryentrypoint_sbe_v7_0.fields.trade_id, range, value, display)

  return offset + length, value
end

-- Size: Alloc Type
b3_equities_binaryentrypoint_sbe_v7_0_size_of.alloc_type = 1

-- Display: Alloc Type
b3_equities_binaryentrypoint_sbe_v7_0_display.alloc_type = function(value)
  -- Check if field has value
  if value == nil or value == 0 then
    return "Alloc Type: No Value"
  end

  if value == "8" then
    return "Alloc Type: Requesttointermediary (8)"
  end

  return "Alloc Type: Unknown("..value..")"
end

-- Dissect: Alloc Type
b3_equities_binaryentrypoint_sbe_v7_0_dissect.alloc_type = function(buffer, offset, packet, parent)
  local length = b3_equities_binaryentrypoint_sbe_v7_0_size_of.alloc_type
  local range = buffer(offset, length)

  -- parse as byte
  local value = range:uint()

  -- check if value is non zero
  if value ~= 0 then
    value = range:string()
  end

  local display = b3_equities_binaryentrypoint_sbe_v7_0_display.alloc_type(value, buffer, offset, packet, parent)

  parent:add(b3_equities_binaryentrypoint_sbe_v7_0.fields.alloc_type, range, value, display)

  return offset + length, value
end

-- Calculate size of: Allocation Instruction Message
b3_equities_binaryentrypoint_sbe_v7_0_size_of.allocation_instruction_message = function(buffer, offset)
  local index = 0

  index = index + b3_equities_binaryentrypoint_sbe_v7_0_size_of.inbound_business_header(buffer, offset + index)

  index = index + b3_equities_binaryentrypoint_sbe_v7_0_size_of.alloc_id

  index = index + b3_equities_binaryentrypoint_sbe_v7_0_size_of.security_id

  index = index + b3_equities_binaryentrypoint_sbe_v7_0_size_of.security_exchange

  index = index + b3_equities_binaryentrypoint_sbe_v7_0_size_of.alloc_trans_type

  index = index + b3_equities_binaryentrypoint_sbe_v7_0_size_of.alloc_type

  index = index + b3_equities_binaryentrypoint_sbe_v7_0_size_of.alloc_no_orders_type

  index = index + b3_equities_binaryentrypoint_sbe_v7_0_size_of.quantity

  index = index + b3_equities_binaryentrypoint_sbe_v7_0_size_of.sender_location

  index = index + b3_equities_binaryentrypoint_sbe_v7_0_size_of.entering_trader

  index = index + b3_equities_binaryentrypoint_sbe_v7_0_size_of.trade_id

  index = index + b3_equities_binaryentrypoint_sbe_v7_0_size_of.trade_date_optional

  index = index + b3_equities_binaryentrypoint_sbe_v7_0_size_of.individual_alloc_id

  index = index + b3_equities_binaryentrypoint_sbe_v7_0_size_of.alloc_account

  index = index + b3_equities_binaryentrypoint_sbe_v7_0_size_of.alloc_qty

  index = index + b3_equities_binaryentrypoint_sbe_v7_0_size_of.desk_id(buffer, offset + index)

  index = index + b3_equities_binaryentrypoint_sbe_v7_0_size_of.memo(buffer, offset + index)

  return index
end

-- Display: Allocation Instruction Message
b3_equities_binaryentrypoint_sbe_v7_0_display.allocation_instruction_message = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Allocation Instruction Message
b3_equities_binaryentrypoint_sbe_v7_0_dissect.allocation_instruction_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Inbound Business Header: Struct of 5 fields
  index, inbound_business_header = b3_equities_binaryentrypoint_sbe_v7_0_dissect.inbound_business_header(buffer, index, packet, parent)

  -- Alloc Id: 8 Byte Unsigned Fixed Width Integer
  index, alloc_id = b3_equities_binaryentrypoint_sbe_v7_0_dissect.alloc_id(buffer, index, packet, parent)

  -- Security Id: 8 Byte Unsigned Fixed Width Integer
  index, security_id = b3_equities_binaryentrypoint_sbe_v7_0_dissect.security_id(buffer, index, packet, parent)

  -- Security Exchange: 4 Byte Ascii String
  index, security_exchange = b3_equities_binaryentrypoint_sbe_v7_0_dissect.security_exchange(buffer, index, packet, parent)

  -- Alloc Trans Type: 1 Byte Ascii String Enum with 2 values
  index, alloc_trans_type = b3_equities_binaryentrypoint_sbe_v7_0_dissect.alloc_trans_type(buffer, index, packet, parent)

  -- Alloc Type: 1 Byte Ascii String Enum with 1 values
  index, alloc_type = b3_equities_binaryentrypoint_sbe_v7_0_dissect.alloc_type(buffer, index, packet, parent)

  -- Alloc No Orders Type: 1 Byte Ascii String Enum with 1 values
  index, alloc_no_orders_type = b3_equities_binaryentrypoint_sbe_v7_0_dissect.alloc_no_orders_type(buffer, index, packet, parent)

  -- Quantity: 8 Byte Unsigned Fixed Width Integer
  index, quantity = b3_equities_binaryentrypoint_sbe_v7_0_dissect.quantity(buffer, index, packet, parent)

  -- Sender Location: 10 Byte Ascii String
  index, sender_location = b3_equities_binaryentrypoint_sbe_v7_0_dissect.sender_location(buffer, index, packet, parent)

  -- Entering Trader: 5 Byte Ascii String
  index, entering_trader = b3_equities_binaryentrypoint_sbe_v7_0_dissect.entering_trader(buffer, index, packet, parent)

  -- Trade Id: 4 Byte Unsigned Fixed Width Integer
  index, trade_id = b3_equities_binaryentrypoint_sbe_v7_0_dissect.trade_id(buffer, index, packet, parent)

  -- Trade Date Optional: 2 Byte Unsigned Fixed Width Integer
  index, trade_date_optional = b3_equities_binaryentrypoint_sbe_v7_0_dissect.trade_date_optional(buffer, index, packet, parent)

  -- Individual Alloc Id: 8 Byte Unsigned Fixed Width Integer
  index, individual_alloc_id = b3_equities_binaryentrypoint_sbe_v7_0_dissect.individual_alloc_id(buffer, index, packet, parent)

  -- Alloc Account: 4 Byte Unsigned Fixed Width Integer
  index, alloc_account = b3_equities_binaryentrypoint_sbe_v7_0_dissect.alloc_account(buffer, index, packet, parent)

  -- Alloc Qty: 8 Byte Unsigned Fixed Width Integer
  index, alloc_qty = b3_equities_binaryentrypoint_sbe_v7_0_dissect.alloc_qty(buffer, index, packet, parent)

  -- Desk Id: Struct of 2 fields
  index, desk_id = b3_equities_binaryentrypoint_sbe_v7_0_dissect.desk_id(buffer, index, packet, parent)

  -- Memo: Struct of 2 fields
  index, memo = b3_equities_binaryentrypoint_sbe_v7_0_dissect.memo(buffer, index, packet, parent)

  return index
end

-- Dissect: Allocation Instruction Message
b3_equities_binaryentrypoint_sbe_v7_0_dissect.allocation_instruction_message = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.allocation_instruction_message then
    local length = b3_equities_binaryentrypoint_sbe_v7_0_size_of.allocation_instruction_message(buffer, offset)
    local range = buffer(offset, length)
    local display = b3_equities_binaryentrypoint_sbe_v7_0_display.allocation_instruction_message(buffer, packet, parent)
    parent = parent:add(b3_equities_binaryentrypoint_sbe_v7_0.fields.allocation_instruction_message, range, display)
  end

  return b3_equities_binaryentrypoint_sbe_v7_0_dissect.allocation_instruction_message_fields(buffer, offset, packet, parent)
end

-- Size: Short Qty
b3_equities_binaryentrypoint_sbe_v7_0_size_of.short_qty = 8

-- Display: Short Qty
b3_equities_binaryentrypoint_sbe_v7_0_display.short_qty = function(value)
  return "Short Qty: "..value
end

-- Dissect: Short Qty
b3_equities_binaryentrypoint_sbe_v7_0_dissect.short_qty = function(buffer, offset, packet, parent)
  local length = b3_equities_binaryentrypoint_sbe_v7_0_size_of.short_qty
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = b3_equities_binaryentrypoint_sbe_v7_0_display.short_qty(value, buffer, offset, packet, parent)

  parent:add(b3_equities_binaryentrypoint_sbe_v7_0.fields.short_qty, range, value, display)

  return offset + length, value
end

-- Size: Long Qty Optional
b3_equities_binaryentrypoint_sbe_v7_0_size_of.long_qty_optional = 8

-- Display: Long Qty Optional
b3_equities_binaryentrypoint_sbe_v7_0_display.long_qty_optional = function(value)
  return "Long Qty Optional: "..value
end

-- Dissect: Long Qty Optional
b3_equities_binaryentrypoint_sbe_v7_0_dissect.long_qty_optional = function(buffer, offset, packet, parent)
  local length = b3_equities_binaryentrypoint_sbe_v7_0_size_of.long_qty_optional
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = b3_equities_binaryentrypoint_sbe_v7_0_display.long_qty_optional(value, buffer, offset, packet, parent)

  parent:add(b3_equities_binaryentrypoint_sbe_v7_0.fields.long_qty_optional, range, value, display)

  return offset + length, value
end

-- Size: Pos Type
b3_equities_binaryentrypoint_sbe_v7_0_size_of.pos_type = 1

-- Display: Pos Type
b3_equities_binaryentrypoint_sbe_v7_0_display.pos_type = function(value)
  -- Check if field has value
  if value == nil or value == 0 then
    return "Pos Type: No Value"
  end

  if value == "T" then
    return "Pos Type: Transactionquantity (T)"
  end
  if value == "S" then
    return "Pos Type: Startofdayqty (S)"
  end
  if value == "E" then
    return "Pos Type: Optionexerciseqty (E)"
  end
  if value == "B" then
    return "Pos Type: Blockedqty (B)"
  end
  if value == "U" then
    return "Pos Type: Uncoveredqty (U)"
  end
  if value == "C" then
    return "Pos Type: Coveredqty (C)"
  end

  return "Pos Type: Unknown("..value..")"
end

-- Dissect: Pos Type
b3_equities_binaryentrypoint_sbe_v7_0_dissect.pos_type = function(buffer, offset, packet, parent)
  local length = b3_equities_binaryentrypoint_sbe_v7_0_size_of.pos_type
  local range = buffer(offset, length)

  -- parse as byte
  local value = range:uint()

  -- check if value is non zero
  if value ~= 0 then
    value = range:string()
  end

  local display = b3_equities_binaryentrypoint_sbe_v7_0_display.pos_type(value, buffer, offset, packet, parent)

  parent:add(b3_equities_binaryentrypoint_sbe_v7_0.fields.pos_type, range, value, display)

  return offset + length, value
end

-- Calculate size of: No Positions Group
b3_equities_binaryentrypoint_sbe_v7_0_size_of.no_positions_group = function(buffer, offset)
  local index = 0

  index = index + b3_equities_binaryentrypoint_sbe_v7_0_size_of.pos_type

  index = index + b3_equities_binaryentrypoint_sbe_v7_0_size_of.long_qty_optional

  index = index + b3_equities_binaryentrypoint_sbe_v7_0_size_of.short_qty

  return index
end

-- Display: No Positions Group
b3_equities_binaryentrypoint_sbe_v7_0_display.no_positions_group = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: No Positions Group
b3_equities_binaryentrypoint_sbe_v7_0_dissect.no_positions_group_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Pos Type: 1 Byte Ascii String Enum with 6 values
  index, pos_type = b3_equities_binaryentrypoint_sbe_v7_0_dissect.pos_type(buffer, index, packet, parent)

  -- Long Qty Optional: 8 Byte Unsigned Fixed Width Integer
  index, long_qty_optional = b3_equities_binaryentrypoint_sbe_v7_0_dissect.long_qty_optional(buffer, index, packet, parent)

  -- Short Qty: 8 Byte Unsigned Fixed Width Integer
  index, short_qty = b3_equities_binaryentrypoint_sbe_v7_0_dissect.short_qty(buffer, index, packet, parent)

  return index
end

-- Dissect: No Positions Group
b3_equities_binaryentrypoint_sbe_v7_0_dissect.no_positions_group = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.no_positions_group then
    local length = b3_equities_binaryentrypoint_sbe_v7_0_size_of.no_positions_group(buffer, offset)
    local range = buffer(offset, length)
    local display = b3_equities_binaryentrypoint_sbe_v7_0_display.no_positions_group(buffer, packet, parent)
    parent = parent:add(b3_equities_binaryentrypoint_sbe_v7_0.fields.no_positions_group, range, display)
  end

  return b3_equities_binaryentrypoint_sbe_v7_0_dissect.no_positions_group_fields(buffer, offset, packet, parent)
end

-- Calculate size of: No Positions Groups
b3_equities_binaryentrypoint_sbe_v7_0_size_of.no_positions_groups = function(buffer, offset)
  local index = 0

  index = index + b3_equities_binaryentrypoint_sbe_v7_0_size_of.group_size_encoding(buffer, offset + index)

  -- Calculate field size from count
  local no_positions_group_count = buffer(offset + index - 1, 1):le_uint()
  index = index + no_positions_group_count * 17

  return index
end

-- Display: No Positions Groups
b3_equities_binaryentrypoint_sbe_v7_0_display.no_positions_groups = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: No Positions Groups
b3_equities_binaryentrypoint_sbe_v7_0_dissect.no_positions_groups_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Group Size Encoding: Struct of 2 fields
  index, group_size_encoding = b3_equities_binaryentrypoint_sbe_v7_0_dissect.group_size_encoding(buffer, index, packet, parent)

  -- Dependency element: Num In Group
  local num_in_group = buffer(index - 1, 1):le_uint()

  -- No Positions Group: Struct of 3 fields
  for i = 1, num_in_group do
    index = b3_equities_binaryentrypoint_sbe_v7_0_dissect.no_positions_group(buffer, index, packet, parent)
  end

  return index
end

-- Dissect: No Positions Groups
b3_equities_binaryentrypoint_sbe_v7_0_dissect.no_positions_groups = function(buffer, offset, packet, parent)
  -- Optionally add dynamic struct element to protocol tree
  if show.no_positions_groups then
    local length = b3_equities_binaryentrypoint_sbe_v7_0_size_of.no_positions_groups(buffer, offset)
    local range = buffer(offset, length)
    local display = b3_equities_binaryentrypoint_sbe_v7_0_display.no_positions_groups(buffer, packet, parent)
    parent = parent:add(b3_equities_binaryentrypoint_sbe_v7_0.fields.no_positions_groups, range, display)
  end

  return b3_equities_binaryentrypoint_sbe_v7_0_dissect.no_positions_groups_fields(buffer, offset, packet, parent)
end

-- Size: Contrary Instruction Indicator
b3_equities_binaryentrypoint_sbe_v7_0_size_of.contrary_instruction_indicator = 1

-- Display: Contrary Instruction Indicator
b3_equities_binaryentrypoint_sbe_v7_0_display.contrary_instruction_indicator = function(value)
  if value == 0 then
    return "Contrary Instruction Indicator: Falsevalue (0)"
  end
  if value == 1 then
    return "Contrary Instruction Indicator: Truevalue (1)"
  end

  return "Contrary Instruction Indicator: Unknown("..value..")"
end

-- Dissect: Contrary Instruction Indicator
b3_equities_binaryentrypoint_sbe_v7_0_dissect.contrary_instruction_indicator = function(buffer, offset, packet, parent)
  local length = b3_equities_binaryentrypoint_sbe_v7_0_size_of.contrary_instruction_indicator
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = b3_equities_binaryentrypoint_sbe_v7_0_display.contrary_instruction_indicator(value, buffer, offset, packet, parent)

  parent:add(b3_equities_binaryentrypoint_sbe_v7_0.fields.contrary_instruction_indicator, range, value, display)

  return offset + length, value
end

-- Size: Pos Maint Result
b3_equities_binaryentrypoint_sbe_v7_0_size_of.pos_maint_result = 4

-- Display: Pos Maint Result
b3_equities_binaryentrypoint_sbe_v7_0_display.pos_maint_result = function(value)
  return "Pos Maint Result: "..value
end

-- Dissect: Pos Maint Result
b3_equities_binaryentrypoint_sbe_v7_0_dissect.pos_maint_result = function(buffer, offset, packet, parent)
  local length = b3_equities_binaryentrypoint_sbe_v7_0_size_of.pos_maint_result
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = b3_equities_binaryentrypoint_sbe_v7_0_display.pos_maint_result(value, buffer, offset, packet, parent)

  parent:add(b3_equities_binaryentrypoint_sbe_v7_0.fields.pos_maint_result, range, value, display)

  return offset + length, value
end

-- Size: Account
b3_equities_binaryentrypoint_sbe_v7_0_size_of.account = 4

-- Display: Account
b3_equities_binaryentrypoint_sbe_v7_0_display.account = function(value)
  return "Account: "..value
end

-- Dissect: Account
b3_equities_binaryentrypoint_sbe_v7_0_dissect.account = function(buffer, offset, packet, parent)
  local length = b3_equities_binaryentrypoint_sbe_v7_0_size_of.account
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = b3_equities_binaryentrypoint_sbe_v7_0_display.account(value, buffer, offset, packet, parent)

  parent:add(b3_equities_binaryentrypoint_sbe_v7_0.fields.account, range, value, display)

  return offset + length, value
end

-- Size: Threshold Amount
b3_equities_binaryentrypoint_sbe_v7_0_size_of.threshold_amount = 8

-- Display: Threshold Amount
b3_equities_binaryentrypoint_sbe_v7_0_display.threshold_amount = function(raw, value)
  -- Check null sentinel value
  if raw == Int64(0x00000000, 0x80000000) then
    return "Threshold Amount: No Value"
  end

  return "Threshold Amount: "..value
end

-- Translate: Threshold Amount
translate.threshold_amount = function(raw)
  -- Check null sentinel value
  if raw == Int64(0x00000000, 0x80000000) then
    return 0/0
  end

  return raw:tonumber()/10000
end

-- Dissect: Threshold Amount
b3_equities_binaryentrypoint_sbe_v7_0_dissect.threshold_amount = function(buffer, offset, packet, parent)
  local length = b3_equities_binaryentrypoint_sbe_v7_0_size_of.threshold_amount
  local range = buffer(offset, length)
  local raw = range:le_int64()
  local value = translate.threshold_amount(raw)
  local display = b3_equities_binaryentrypoint_sbe_v7_0_display.threshold_amount(raw, value, buffer, offset, packet, parent)

  parent:add(b3_equities_binaryentrypoint_sbe_v7_0.fields.threshold_amount, range, value, display)

  return offset + length, value
end

-- Size: Clearing Business Date
b3_equities_binaryentrypoint_sbe_v7_0_size_of.clearing_business_date = 2

-- Display: Clearing Business Date
b3_equities_binaryentrypoint_sbe_v7_0_display.clearing_business_date = function(value)
  return "Clearing Business Date: "..value
end

-- Dissect: Clearing Business Date
b3_equities_binaryentrypoint_sbe_v7_0_dissect.clearing_business_date = function(buffer, offset, packet, parent)
  local length = b3_equities_binaryentrypoint_sbe_v7_0_size_of.clearing_business_date
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = b3_equities_binaryentrypoint_sbe_v7_0_display.clearing_business_date(value, buffer, offset, packet, parent)

  parent:add(b3_equities_binaryentrypoint_sbe_v7_0.fields.clearing_business_date, range, value, display)

  return offset + length, value
end

-- Size: Account Type
b3_equities_binaryentrypoint_sbe_v7_0_size_of.account_type = 1

-- Display: Account Type
b3_equities_binaryentrypoint_sbe_v7_0_display.account_type = function(value)
  if value == 38 then
    return "Account Type: Removeaccountinformation (38)"
  end
  if value == 39 then
    return "Account Type: Regularaccount (39)"
  end
  if value == 0 then
    return "Account Type: No Value"
  end

  return "Account Type: Unknown("..value..")"
end

-- Dissect: Account Type
b3_equities_binaryentrypoint_sbe_v7_0_dissect.account_type = function(buffer, offset, packet, parent)
  local length = b3_equities_binaryentrypoint_sbe_v7_0_size_of.account_type
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = b3_equities_binaryentrypoint_sbe_v7_0_display.account_type(value, buffer, offset, packet, parent)

  parent:add(b3_equities_binaryentrypoint_sbe_v7_0.fields.account_type, range, value, display)

  return offset + length, value
end

-- Size: Orig Pos Req Ref Id
b3_equities_binaryentrypoint_sbe_v7_0_size_of.orig_pos_req_ref_id = 8

-- Display: Orig Pos Req Ref Id
b3_equities_binaryentrypoint_sbe_v7_0_display.orig_pos_req_ref_id = function(value)
  return "Orig Pos Req Ref Id: "..value
end

-- Dissect: Orig Pos Req Ref Id
b3_equities_binaryentrypoint_sbe_v7_0_dissect.orig_pos_req_ref_id = function(buffer, offset, packet, parent)
  local length = b3_equities_binaryentrypoint_sbe_v7_0_size_of.orig_pos_req_ref_id
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = b3_equities_binaryentrypoint_sbe_v7_0_display.orig_pos_req_ref_id(value, buffer, offset, packet, parent)

  parent:add(b3_equities_binaryentrypoint_sbe_v7_0.fields.orig_pos_req_ref_id, range, value, display)

  return offset + length, value
end

-- Size: Trade Id Optional
b3_equities_binaryentrypoint_sbe_v7_0_size_of.trade_id_optional = 4

-- Display: Trade Id Optional
b3_equities_binaryentrypoint_sbe_v7_0_display.trade_id_optional = function(value)
  return "Trade Id Optional: "..value
end

-- Dissect: Trade Id Optional
b3_equities_binaryentrypoint_sbe_v7_0_dissect.trade_id_optional = function(buffer, offset, packet, parent)
  local length = b3_equities_binaryentrypoint_sbe_v7_0_size_of.trade_id_optional
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = b3_equities_binaryentrypoint_sbe_v7_0_display.trade_id_optional(value, buffer, offset, packet, parent)

  parent:add(b3_equities_binaryentrypoint_sbe_v7_0.fields.trade_id_optional, range, value, display)

  return offset + length, value
end

-- Size: Pos Maint Status
b3_equities_binaryentrypoint_sbe_v7_0_size_of.pos_maint_status = 1

-- Display: Pos Maint Status
b3_equities_binaryentrypoint_sbe_v7_0_display.pos_maint_status = function(value)
  -- Check if field has value
  if value == nil or value == 0 then
    return "Pos Maint Status: No Value"
  end

  if value == "0" then
    return "Pos Maint Status: Accepted (0)"
  end
  if value == "2" then
    return "Pos Maint Status: Rejected (2)"
  end
  if value == "3" then
    return "Pos Maint Status: Completed (3)"
  end
  if value == "9" then
    return "Pos Maint Status: Notexecuted (9)"
  end

  return "Pos Maint Status: Unknown("..value..")"
end

-- Dissect: Pos Maint Status
b3_equities_binaryentrypoint_sbe_v7_0_dissect.pos_maint_status = function(buffer, offset, packet, parent)
  local length = b3_equities_binaryentrypoint_sbe_v7_0_size_of.pos_maint_status
  local range = buffer(offset, length)

  -- parse as byte
  local value = range:uint()

  -- check if value is non zero
  if value ~= 0 then
    value = range:string()
  end

  local display = b3_equities_binaryentrypoint_sbe_v7_0_display.pos_maint_status(value, buffer, offset, packet, parent)

  parent:add(b3_equities_binaryentrypoint_sbe_v7_0.fields.pos_maint_status, range, value, display)

  return offset + length, value
end

-- Size: Pos Maint Action
b3_equities_binaryentrypoint_sbe_v7_0_size_of.pos_maint_action = 1

-- Display: Pos Maint Action
b3_equities_binaryentrypoint_sbe_v7_0_display.pos_maint_action = function(value)
  -- Check if field has value
  if value == nil or value == 0 then
    return "Pos Maint Action: No Value"
  end

  if value == "1" then
    return "Pos Maint Action: New (1)"
  end
  if value == "3" then
    return "Pos Maint Action: Cancel (3)"
  end

  return "Pos Maint Action: Unknown("..value..")"
end

-- Dissect: Pos Maint Action
b3_equities_binaryentrypoint_sbe_v7_0_dissect.pos_maint_action = function(buffer, offset, packet, parent)
  local length = b3_equities_binaryentrypoint_sbe_v7_0_size_of.pos_maint_action
  local range = buffer(offset, length)

  -- parse as byte
  local value = range:uint()

  -- check if value is non zero
  if value ~= 0 then
    value = range:string()
  end

  local display = b3_equities_binaryentrypoint_sbe_v7_0_display.pos_maint_action(value, buffer, offset, packet, parent)

  parent:add(b3_equities_binaryentrypoint_sbe_v7_0.fields.pos_maint_action, range, value, display)

  return offset + length, value
end

-- Size: Pos Trans Type
b3_equities_binaryentrypoint_sbe_v7_0_size_of.pos_trans_type = 1

-- Display: Pos Trans Type
b3_equities_binaryentrypoint_sbe_v7_0_display.pos_trans_type = function(value)
  if value == 1 then
    return "Pos Trans Type: Exercise (1)"
  end
  if value == 105 then
    return "Pos Trans Type: Automaticexercise (105)"
  end
  if value == 106 then
    return "Pos Trans Type: Exercisenotautomatic (106)"
  end

  return "Pos Trans Type: Unknown("..value..")"
end

-- Dissect: Pos Trans Type
b3_equities_binaryentrypoint_sbe_v7_0_dissect.pos_trans_type = function(buffer, offset, packet, parent)
  local length = b3_equities_binaryentrypoint_sbe_v7_0_size_of.pos_trans_type
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = b3_equities_binaryentrypoint_sbe_v7_0_display.pos_trans_type(value, buffer, offset, packet, parent)

  parent:add(b3_equities_binaryentrypoint_sbe_v7_0.fields.pos_trans_type, range, value, display)

  return offset + length, value
end

-- Size: Pos Maint Rpt Id
b3_equities_binaryentrypoint_sbe_v7_0_size_of.pos_maint_rpt_id = 8

-- Display: Pos Maint Rpt Id
b3_equities_binaryentrypoint_sbe_v7_0_display.pos_maint_rpt_id = function(value)
  return "Pos Maint Rpt Id: "..value
end

-- Dissect: Pos Maint Rpt Id
b3_equities_binaryentrypoint_sbe_v7_0_dissect.pos_maint_rpt_id = function(buffer, offset, packet, parent)
  local length = b3_equities_binaryentrypoint_sbe_v7_0_size_of.pos_maint_rpt_id
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = b3_equities_binaryentrypoint_sbe_v7_0_display.pos_maint_rpt_id(value, buffer, offset, packet, parent)

  parent:add(b3_equities_binaryentrypoint_sbe_v7_0.fields.pos_maint_rpt_id, range, value, display)

  return offset + length, value
end

-- Size: Pos Req Id Optional
b3_equities_binaryentrypoint_sbe_v7_0_size_of.pos_req_id_optional = 8

-- Display: Pos Req Id Optional
b3_equities_binaryentrypoint_sbe_v7_0_display.pos_req_id_optional = function(value)
  return "Pos Req Id Optional: "..value
end

-- Dissect: Pos Req Id Optional
b3_equities_binaryentrypoint_sbe_v7_0_dissect.pos_req_id_optional = function(buffer, offset, packet, parent)
  local length = b3_equities_binaryentrypoint_sbe_v7_0_size_of.pos_req_id_optional
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = b3_equities_binaryentrypoint_sbe_v7_0_display.pos_req_id_optional(value, buffer, offset, packet, parent)

  parent:add(b3_equities_binaryentrypoint_sbe_v7_0.fields.pos_req_id_optional, range, value, display)

  return offset + length, value
end

-- Calculate size of: Position Maintenance Report Message
b3_equities_binaryentrypoint_sbe_v7_0_size_of.position_maintenance_report_message = function(buffer, offset)
  local index = 0

  index = index + b3_equities_binaryentrypoint_sbe_v7_0_size_of.outbound_business_header(buffer, offset + index)

  index = index + b3_equities_binaryentrypoint_sbe_v7_0_size_of.pos_req_id_optional

  index = index + b3_equities_binaryentrypoint_sbe_v7_0_size_of.security_id

  index = index + b3_equities_binaryentrypoint_sbe_v7_0_size_of.security_exchange

  index = index + b3_equities_binaryentrypoint_sbe_v7_0_size_of.pos_maint_rpt_id

  index = index + b3_equities_binaryentrypoint_sbe_v7_0_size_of.pos_trans_type

  index = index + b3_equities_binaryentrypoint_sbe_v7_0_size_of.pos_maint_action

  index = index + b3_equities_binaryentrypoint_sbe_v7_0_size_of.pos_maint_status

  index = index + b3_equities_binaryentrypoint_sbe_v7_0_size_of.trade_id_optional

  index = index + b3_equities_binaryentrypoint_sbe_v7_0_size_of.orig_pos_req_ref_id

  index = index + b3_equities_binaryentrypoint_sbe_v7_0_size_of.account_type

  index = index + b3_equities_binaryentrypoint_sbe_v7_0_size_of.clearing_business_date

  index = index + b3_equities_binaryentrypoint_sbe_v7_0_size_of.threshold_amount

  index = index + b3_equities_binaryentrypoint_sbe_v7_0_size_of.transact_time

  index = index + b3_equities_binaryentrypoint_sbe_v7_0_size_of.account

  index = index + b3_equities_binaryentrypoint_sbe_v7_0_size_of.sender_location

  index = index + b3_equities_binaryentrypoint_sbe_v7_0_size_of.pos_maint_result

  index = index + b3_equities_binaryentrypoint_sbe_v7_0_size_of.contrary_instruction_indicator

  index = index + b3_equities_binaryentrypoint_sbe_v7_0_size_of.no_positions_groups(buffer, offset + index)

  index = index + b3_equities_binaryentrypoint_sbe_v7_0_size_of.desk_id(buffer, offset + index)

  index = index + b3_equities_binaryentrypoint_sbe_v7_0_size_of.memo(buffer, offset + index)

  index = index + b3_equities_binaryentrypoint_sbe_v7_0_size_of.text(buffer, offset + index)

  return index
end

-- Display: Position Maintenance Report Message
b3_equities_binaryentrypoint_sbe_v7_0_display.position_maintenance_report_message = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Position Maintenance Report Message
b3_equities_binaryentrypoint_sbe_v7_0_dissect.position_maintenance_report_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Outbound Business Header: Struct of 5 fields
  index, outbound_business_header = b3_equities_binaryentrypoint_sbe_v7_0_dissect.outbound_business_header(buffer, index, packet, parent)

  -- Pos Req Id Optional: 8 Byte Unsigned Fixed Width Integer
  index, pos_req_id_optional = b3_equities_binaryentrypoint_sbe_v7_0_dissect.pos_req_id_optional(buffer, index, packet, parent)

  -- Security Id: 8 Byte Unsigned Fixed Width Integer
  index, security_id = b3_equities_binaryentrypoint_sbe_v7_0_dissect.security_id(buffer, index, packet, parent)

  -- Security Exchange: 4 Byte Ascii String
  index, security_exchange = b3_equities_binaryentrypoint_sbe_v7_0_dissect.security_exchange(buffer, index, packet, parent)

  -- Pos Maint Rpt Id: 8 Byte Unsigned Fixed Width Integer
  index, pos_maint_rpt_id = b3_equities_binaryentrypoint_sbe_v7_0_dissect.pos_maint_rpt_id(buffer, index, packet, parent)

  -- Pos Trans Type: 1 Byte Unsigned Fixed Width Integer Enum with 3 values
  index, pos_trans_type = b3_equities_binaryentrypoint_sbe_v7_0_dissect.pos_trans_type(buffer, index, packet, parent)

  -- Pos Maint Action: 1 Byte Ascii String Enum with 2 values
  index, pos_maint_action = b3_equities_binaryentrypoint_sbe_v7_0_dissect.pos_maint_action(buffer, index, packet, parent)

  -- Pos Maint Status: 1 Byte Ascii String Enum with 4 values
  index, pos_maint_status = b3_equities_binaryentrypoint_sbe_v7_0_dissect.pos_maint_status(buffer, index, packet, parent)

  -- Trade Id Optional: 4 Byte Unsigned Fixed Width Integer
  index, trade_id_optional = b3_equities_binaryentrypoint_sbe_v7_0_dissect.trade_id_optional(buffer, index, packet, parent)

  -- Orig Pos Req Ref Id: 8 Byte Unsigned Fixed Width Integer
  index, orig_pos_req_ref_id = b3_equities_binaryentrypoint_sbe_v7_0_dissect.orig_pos_req_ref_id(buffer, index, packet, parent)

  -- Account Type: 1 Byte Unsigned Fixed Width Integer Enum with 3 values
  index, account_type = b3_equities_binaryentrypoint_sbe_v7_0_dissect.account_type(buffer, index, packet, parent)

  -- Clearing Business Date: 2 Byte Unsigned Fixed Width Integer
  index, clearing_business_date = b3_equities_binaryentrypoint_sbe_v7_0_dissect.clearing_business_date(buffer, index, packet, parent)

  -- Threshold Amount: 8 Byte Signed Fixed Width Integer Nullable
  index, threshold_amount = b3_equities_binaryentrypoint_sbe_v7_0_dissect.threshold_amount(buffer, index, packet, parent)

  -- Transact Time: 8 Byte Unsigned Fixed Width Integer
  index, transact_time = b3_equities_binaryentrypoint_sbe_v7_0_dissect.transact_time(buffer, index, packet, parent)

  -- Account: 4 Byte Unsigned Fixed Width Integer
  index, account = b3_equities_binaryentrypoint_sbe_v7_0_dissect.account(buffer, index, packet, parent)

  -- Sender Location: 10 Byte Ascii String
  index, sender_location = b3_equities_binaryentrypoint_sbe_v7_0_dissect.sender_location(buffer, index, packet, parent)

  -- Pos Maint Result: 4 Byte Unsigned Fixed Width Integer
  index, pos_maint_result = b3_equities_binaryentrypoint_sbe_v7_0_dissect.pos_maint_result(buffer, index, packet, parent)

  -- Contrary Instruction Indicator: 1 Byte Unsigned Fixed Width Integer Enum with 2 values
  index, contrary_instruction_indicator = b3_equities_binaryentrypoint_sbe_v7_0_dissect.contrary_instruction_indicator(buffer, index, packet, parent)

  -- No Positions Groups: Struct of 2 fields
  index, no_positions_groups = b3_equities_binaryentrypoint_sbe_v7_0_dissect.no_positions_groups(buffer, index, packet, parent)

  -- Desk Id: Struct of 2 fields
  index, desk_id = b3_equities_binaryentrypoint_sbe_v7_0_dissect.desk_id(buffer, index, packet, parent)

  -- Memo: Struct of 2 fields
  index, memo = b3_equities_binaryentrypoint_sbe_v7_0_dissect.memo(buffer, index, packet, parent)

  -- Text: Struct of 2 fields
  index, text = b3_equities_binaryentrypoint_sbe_v7_0_dissect.text(buffer, index, packet, parent)

  return index
end

-- Dissect: Position Maintenance Report Message
b3_equities_binaryentrypoint_sbe_v7_0_dissect.position_maintenance_report_message = function(buffer, offset, packet, parent)
  -- Optionally add dynamic struct element to protocol tree
  if show.position_maintenance_report_message then
    local length = b3_equities_binaryentrypoint_sbe_v7_0_size_of.position_maintenance_report_message(buffer, offset)
    local range = buffer(offset, length)
    local display = b3_equities_binaryentrypoint_sbe_v7_0_display.position_maintenance_report_message(buffer, packet, parent)
    parent = parent:add(b3_equities_binaryentrypoint_sbe_v7_0.fields.position_maintenance_report_message, range, display)
  end

  return b3_equities_binaryentrypoint_sbe_v7_0_dissect.position_maintenance_report_message_fields(buffer, offset, packet, parent)
end

-- Size: Long Qty
b3_equities_binaryentrypoint_sbe_v7_0_size_of.long_qty = 8

-- Display: Long Qty
b3_equities_binaryentrypoint_sbe_v7_0_display.long_qty = function(value)
  return "Long Qty: "..value
end

-- Dissect: Long Qty
b3_equities_binaryentrypoint_sbe_v7_0_dissect.long_qty = function(buffer, offset, packet, parent)
  local length = b3_equities_binaryentrypoint_sbe_v7_0_size_of.long_qty
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = b3_equities_binaryentrypoint_sbe_v7_0_display.long_qty(value, buffer, offset, packet, parent)

  parent:add(b3_equities_binaryentrypoint_sbe_v7_0.fields.long_qty, range, value, display)

  return offset + length, value
end

-- Size: Pos Req Id
b3_equities_binaryentrypoint_sbe_v7_0_size_of.pos_req_id = 8

-- Display: Pos Req Id
b3_equities_binaryentrypoint_sbe_v7_0_display.pos_req_id = function(value)
  return "Pos Req Id: "..value
end

-- Dissect: Pos Req Id
b3_equities_binaryentrypoint_sbe_v7_0_dissect.pos_req_id = function(buffer, offset, packet, parent)
  local length = b3_equities_binaryentrypoint_sbe_v7_0_size_of.pos_req_id
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = b3_equities_binaryentrypoint_sbe_v7_0_display.pos_req_id(value, buffer, offset, packet, parent)

  parent:add(b3_equities_binaryentrypoint_sbe_v7_0.fields.pos_req_id, range, value, display)

  return offset + length, value
end

-- Calculate size of: Position Maintenance Request Message
b3_equities_binaryentrypoint_sbe_v7_0_size_of.position_maintenance_request_message = function(buffer, offset)
  local index = 0

  index = index + b3_equities_binaryentrypoint_sbe_v7_0_size_of.inbound_business_header(buffer, offset + index)

  index = index + b3_equities_binaryentrypoint_sbe_v7_0_size_of.pos_req_id

  index = index + b3_equities_binaryentrypoint_sbe_v7_0_size_of.security_id

  index = index + b3_equities_binaryentrypoint_sbe_v7_0_size_of.security_exchange

  index = index + b3_equities_binaryentrypoint_sbe_v7_0_size_of.threshold_amount

  index = index + b3_equities_binaryentrypoint_sbe_v7_0_size_of.account

  index = index + b3_equities_binaryentrypoint_sbe_v7_0_size_of.sender_location

  index = index + b3_equities_binaryentrypoint_sbe_v7_0_size_of.pos_trans_type

  index = index + b3_equities_binaryentrypoint_sbe_v7_0_size_of.clearing_business_date

  index = index + b3_equities_binaryentrypoint_sbe_v7_0_size_of.contrary_instruction_indicator

  index = index + b3_equities_binaryentrypoint_sbe_v7_0_size_of.entering_trader

  index = index + b3_equities_binaryentrypoint_sbe_v7_0_size_of.long_qty

  index = index + b3_equities_binaryentrypoint_sbe_v7_0_size_of.desk_id(buffer, offset + index)

  index = index + b3_equities_binaryentrypoint_sbe_v7_0_size_of.memo(buffer, offset + index)

  return index
end

-- Display: Position Maintenance Request Message
b3_equities_binaryentrypoint_sbe_v7_0_display.position_maintenance_request_message = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Position Maintenance Request Message
b3_equities_binaryentrypoint_sbe_v7_0_dissect.position_maintenance_request_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Inbound Business Header: Struct of 5 fields
  index, inbound_business_header = b3_equities_binaryentrypoint_sbe_v7_0_dissect.inbound_business_header(buffer, index, packet, parent)

  -- Pos Req Id: 8 Byte Unsigned Fixed Width Integer
  index, pos_req_id = b3_equities_binaryentrypoint_sbe_v7_0_dissect.pos_req_id(buffer, index, packet, parent)

  -- Security Id: 8 Byte Unsigned Fixed Width Integer
  index, security_id = b3_equities_binaryentrypoint_sbe_v7_0_dissect.security_id(buffer, index, packet, parent)

  -- Security Exchange: 4 Byte Ascii String
  index, security_exchange = b3_equities_binaryentrypoint_sbe_v7_0_dissect.security_exchange(buffer, index, packet, parent)

  -- Threshold Amount: 8 Byte Signed Fixed Width Integer Nullable
  index, threshold_amount = b3_equities_binaryentrypoint_sbe_v7_0_dissect.threshold_amount(buffer, index, packet, parent)

  -- Account: 4 Byte Unsigned Fixed Width Integer
  index, account = b3_equities_binaryentrypoint_sbe_v7_0_dissect.account(buffer, index, packet, parent)

  -- Sender Location: 10 Byte Ascii String
  index, sender_location = b3_equities_binaryentrypoint_sbe_v7_0_dissect.sender_location(buffer, index, packet, parent)

  -- Pos Trans Type: 1 Byte Unsigned Fixed Width Integer Enum with 3 values
  index, pos_trans_type = b3_equities_binaryentrypoint_sbe_v7_0_dissect.pos_trans_type(buffer, index, packet, parent)

  -- Clearing Business Date: 2 Byte Unsigned Fixed Width Integer
  index, clearing_business_date = b3_equities_binaryentrypoint_sbe_v7_0_dissect.clearing_business_date(buffer, index, packet, parent)

  -- Contrary Instruction Indicator: 1 Byte Unsigned Fixed Width Integer Enum with 2 values
  index, contrary_instruction_indicator = b3_equities_binaryentrypoint_sbe_v7_0_dissect.contrary_instruction_indicator(buffer, index, packet, parent)

  -- Entering Trader: 5 Byte Ascii String
  index, entering_trader = b3_equities_binaryentrypoint_sbe_v7_0_dissect.entering_trader(buffer, index, packet, parent)

  -- Long Qty: 8 Byte Unsigned Fixed Width Integer
  index, long_qty = b3_equities_binaryentrypoint_sbe_v7_0_dissect.long_qty(buffer, index, packet, parent)

  -- Desk Id: Struct of 2 fields
  index, desk_id = b3_equities_binaryentrypoint_sbe_v7_0_dissect.desk_id(buffer, index, packet, parent)

  -- Memo: Struct of 2 fields
  index, memo = b3_equities_binaryentrypoint_sbe_v7_0_dissect.memo(buffer, index, packet, parent)

  return index
end

-- Dissect: Position Maintenance Request Message
b3_equities_binaryentrypoint_sbe_v7_0_dissect.position_maintenance_request_message = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.position_maintenance_request_message then
    local length = b3_equities_binaryentrypoint_sbe_v7_0_size_of.position_maintenance_request_message(buffer, offset)
    local range = buffer(offset, length)
    local display = b3_equities_binaryentrypoint_sbe_v7_0_display.position_maintenance_request_message(buffer, packet, parent)
    parent = parent:add(b3_equities_binaryentrypoint_sbe_v7_0.fields.position_maintenance_request_message, range, display)
  end

  return b3_equities_binaryentrypoint_sbe_v7_0_dissect.position_maintenance_request_message_fields(buffer, offset, packet, parent)
end

-- Size: Pos Maint Rpt Ref Id
b3_equities_binaryentrypoint_sbe_v7_0_size_of.pos_maint_rpt_ref_id = 8

-- Display: Pos Maint Rpt Ref Id
b3_equities_binaryentrypoint_sbe_v7_0_display.pos_maint_rpt_ref_id = function(value)
  return "Pos Maint Rpt Ref Id: "..value
end

-- Dissect: Pos Maint Rpt Ref Id
b3_equities_binaryentrypoint_sbe_v7_0_dissect.pos_maint_rpt_ref_id = function(buffer, offset, packet, parent)
  local length = b3_equities_binaryentrypoint_sbe_v7_0_size_of.pos_maint_rpt_ref_id
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = b3_equities_binaryentrypoint_sbe_v7_0_display.pos_maint_rpt_ref_id(value, buffer, offset, packet, parent)

  parent:add(b3_equities_binaryentrypoint_sbe_v7_0.fields.pos_maint_rpt_ref_id, range, value, display)

  return offset + length, value
end

-- Calculate size of: Position Maintenance Cancel Request Message
b3_equities_binaryentrypoint_sbe_v7_0_size_of.position_maintenance_cancel_request_message = function(buffer, offset)
  local index = 0

  index = index + b3_equities_binaryentrypoint_sbe_v7_0_size_of.inbound_business_header(buffer, offset + index)

  index = index + b3_equities_binaryentrypoint_sbe_v7_0_size_of.pos_req_id

  index = index + b3_equities_binaryentrypoint_sbe_v7_0_size_of.security_id

  index = index + b3_equities_binaryentrypoint_sbe_v7_0_size_of.security_exchange

  index = index + b3_equities_binaryentrypoint_sbe_v7_0_size_of.orig_pos_req_ref_id

  index = index + b3_equities_binaryentrypoint_sbe_v7_0_size_of.pos_maint_rpt_ref_id

  index = index + b3_equities_binaryentrypoint_sbe_v7_0_size_of.sender_location

  index = index + b3_equities_binaryentrypoint_sbe_v7_0_size_of.entering_trader

  return index
end

-- Display: Position Maintenance Cancel Request Message
b3_equities_binaryentrypoint_sbe_v7_0_display.position_maintenance_cancel_request_message = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Position Maintenance Cancel Request Message
b3_equities_binaryentrypoint_sbe_v7_0_dissect.position_maintenance_cancel_request_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Inbound Business Header: Struct of 5 fields
  index, inbound_business_header = b3_equities_binaryentrypoint_sbe_v7_0_dissect.inbound_business_header(buffer, index, packet, parent)

  -- Pos Req Id: 8 Byte Unsigned Fixed Width Integer
  index, pos_req_id = b3_equities_binaryentrypoint_sbe_v7_0_dissect.pos_req_id(buffer, index, packet, parent)

  -- Security Id: 8 Byte Unsigned Fixed Width Integer
  index, security_id = b3_equities_binaryentrypoint_sbe_v7_0_dissect.security_id(buffer, index, packet, parent)

  -- Security Exchange: 4 Byte Ascii String
  index, security_exchange = b3_equities_binaryentrypoint_sbe_v7_0_dissect.security_exchange(buffer, index, packet, parent)

  -- Orig Pos Req Ref Id: 8 Byte Unsigned Fixed Width Integer
  index, orig_pos_req_ref_id = b3_equities_binaryentrypoint_sbe_v7_0_dissect.orig_pos_req_ref_id(buffer, index, packet, parent)

  -- Pos Maint Rpt Ref Id: 8 Byte Unsigned Fixed Width Integer
  index, pos_maint_rpt_ref_id = b3_equities_binaryentrypoint_sbe_v7_0_dissect.pos_maint_rpt_ref_id(buffer, index, packet, parent)

  -- Sender Location: 10 Byte Ascii String
  index, sender_location = b3_equities_binaryentrypoint_sbe_v7_0_dissect.sender_location(buffer, index, packet, parent)

  -- Entering Trader: 5 Byte Ascii String
  index, entering_trader = b3_equities_binaryentrypoint_sbe_v7_0_dissect.entering_trader(buffer, index, packet, parent)

  return index
end

-- Dissect: Position Maintenance Cancel Request Message
b3_equities_binaryentrypoint_sbe_v7_0_dissect.position_maintenance_cancel_request_message = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.position_maintenance_cancel_request_message then
    local length = b3_equities_binaryentrypoint_sbe_v7_0_size_of.position_maintenance_cancel_request_message(buffer, offset)
    local range = buffer(offset, length)
    local display = b3_equities_binaryentrypoint_sbe_v7_0_display.position_maintenance_cancel_request_message(buffer, packet, parent)
    parent = parent:add(b3_equities_binaryentrypoint_sbe_v7_0.fields.position_maintenance_cancel_request_message, range, display)
  end

  return b3_equities_binaryentrypoint_sbe_v7_0_dissect.position_maintenance_cancel_request_message_fields(buffer, offset, packet, parent)
end

-- Display: Var Data
b3_equities_binaryentrypoint_sbe_v7_0_display.var_data = function(value)
  return "Var Data: "..value
end

-- Dissect runtime sized field: Var Data
b3_equities_binaryentrypoint_sbe_v7_0_dissect.var_data = function(buffer, offset, packet, parent, size)
  local range = buffer(offset, size)
  local value = range:bytes():tohex(false, " ")
  local display = b3_equities_binaryentrypoint_sbe_v7_0_display.var_data(value, buffer, offset, packet, parent, size)

  parent:add(b3_equities_binaryentrypoint_sbe_v7_0.fields.var_data, range, value, display)

  return offset + size
end

-- Calculate size of: Quote Req Id
b3_equities_binaryentrypoint_sbe_v7_0_size_of.quote_req_id = function(buffer, offset)
  local index = 0

  index = index + b3_equities_binaryentrypoint_sbe_v7_0_size_of.length

  -- Parse runtime size of: Var Data
  index = index + buffer(offset + index - 1, 1):le_uint()

  return index
end

-- Display: Quote Req Id
b3_equities_binaryentrypoint_sbe_v7_0_display.quote_req_id = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Quote Req Id
b3_equities_binaryentrypoint_sbe_v7_0_dissect.quote_req_id_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Length: 1 Byte Unsigned Fixed Width Integer
  index, length = b3_equities_binaryentrypoint_sbe_v7_0_dissect.length(buffer, index, packet, parent)

  -- Var Data: 0 Byte
  index = b3_equities_binaryentrypoint_sbe_v7_0_dissect.var_data(buffer, index, packet, parent, length)

  return index
end

-- Dissect: Quote Req Id
b3_equities_binaryentrypoint_sbe_v7_0_dissect.quote_req_id = function(buffer, offset, packet, parent)
  -- Optionally add dynamic struct element to protocol tree
  if show.quote_req_id then
    local length = b3_equities_binaryentrypoint_sbe_v7_0_size_of.quote_req_id(buffer, offset)
    local range = buffer(offset, length)
    local display = b3_equities_binaryentrypoint_sbe_v7_0_display.quote_req_id(buffer, packet, parent)
    parent = parent:add(b3_equities_binaryentrypoint_sbe_v7_0.fields.quote_req_id, range, display)
  end

  return b3_equities_binaryentrypoint_sbe_v7_0_dissect.quote_req_id_fields(buffer, offset, packet, parent)
end

-- Size: Entering Firm Optional
b3_equities_binaryentrypoint_sbe_v7_0_size_of.entering_firm_optional = 4

-- Display: Entering Firm Optional
b3_equities_binaryentrypoint_sbe_v7_0_display.entering_firm_optional = function(value)
  return "Entering Firm Optional: "..value
end

-- Dissect: Entering Firm Optional
b3_equities_binaryentrypoint_sbe_v7_0_dissect.entering_firm_optional = function(buffer, offset, packet, parent)
  local length = b3_equities_binaryentrypoint_sbe_v7_0_size_of.entering_firm_optional
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = b3_equities_binaryentrypoint_sbe_v7_0_display.entering_firm_optional(value, buffer, offset, packet, parent)

  parent:add(b3_equities_binaryentrypoint_sbe_v7_0.fields.entering_firm_optional, range, value, display)

  return offset + length, value
end

-- Calculate size of: No Sides Group
b3_equities_binaryentrypoint_sbe_v7_0_size_of.no_sides_group = function(buffer, offset)
  local index = 0

  index = index + b3_equities_binaryentrypoint_sbe_v7_0_size_of.side

  index = index + b3_equities_binaryentrypoint_sbe_v7_0_size_of.account

  index = index + b3_equities_binaryentrypoint_sbe_v7_0_size_of.entering_firm_optional

  index = index + b3_equities_binaryentrypoint_sbe_v7_0_size_of.clordid

  return index
end

-- Display: No Sides Group
b3_equities_binaryentrypoint_sbe_v7_0_display.no_sides_group = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: No Sides Group
b3_equities_binaryentrypoint_sbe_v7_0_dissect.no_sides_group_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Side: 1 Byte Ascii String Enum with 2 values
  index, side = b3_equities_binaryentrypoint_sbe_v7_0_dissect.side(buffer, index, packet, parent)

  -- Account: 4 Byte Unsigned Fixed Width Integer
  index, account = b3_equities_binaryentrypoint_sbe_v7_0_dissect.account(buffer, index, packet, parent)

  -- Entering Firm Optional: 4 Byte Unsigned Fixed Width Integer
  index, entering_firm_optional = b3_equities_binaryentrypoint_sbe_v7_0_dissect.entering_firm_optional(buffer, index, packet, parent)

  -- ClOrdId: 8 Byte Unsigned Fixed Width Integer
  index, clordid = b3_equities_binaryentrypoint_sbe_v7_0_dissect.clordid(buffer, index, packet, parent)

  return index
end

-- Dissect: No Sides Group
b3_equities_binaryentrypoint_sbe_v7_0_dissect.no_sides_group = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.no_sides_group then
    local length = b3_equities_binaryentrypoint_sbe_v7_0_size_of.no_sides_group(buffer, offset)
    local range = buffer(offset, length)
    local display = b3_equities_binaryentrypoint_sbe_v7_0_display.no_sides_group(buffer, packet, parent)
    parent = parent:add(b3_equities_binaryentrypoint_sbe_v7_0.fields.no_sides_group, range, display)
  end

  return b3_equities_binaryentrypoint_sbe_v7_0_dissect.no_sides_group_fields(buffer, offset, packet, parent)
end

-- Calculate size of: No Sides Groups
b3_equities_binaryentrypoint_sbe_v7_0_size_of.no_sides_groups = function(buffer, offset)
  local index = 0

  index = index + b3_equities_binaryentrypoint_sbe_v7_0_size_of.group_size_encoding(buffer, offset + index)

  -- Calculate field size from count
  local no_sides_group_count = buffer(offset + index - 1, 1):le_uint()
  index = index + no_sides_group_count * 17

  return index
end

-- Display: No Sides Groups
b3_equities_binaryentrypoint_sbe_v7_0_display.no_sides_groups = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: No Sides Groups
b3_equities_binaryentrypoint_sbe_v7_0_dissect.no_sides_groups_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Group Size Encoding: Struct of 2 fields
  index, group_size_encoding = b3_equities_binaryentrypoint_sbe_v7_0_dissect.group_size_encoding(buffer, index, packet, parent)

  -- Dependency element: Num In Group
  local num_in_group = buffer(index - 1, 1):le_uint()

  -- No Sides Group: Struct of 4 fields
  for i = 1, num_in_group do
    index = b3_equities_binaryentrypoint_sbe_v7_0_dissect.no_sides_group(buffer, index, packet, parent)
  end

  return index
end

-- Dissect: No Sides Groups
b3_equities_binaryentrypoint_sbe_v7_0_dissect.no_sides_groups = function(buffer, offset, packet, parent)
  -- Optionally add dynamic struct element to protocol tree
  if show.no_sides_groups then
    local length = b3_equities_binaryentrypoint_sbe_v7_0_size_of.no_sides_groups(buffer, offset)
    local range = buffer(offset, length)
    local display = b3_equities_binaryentrypoint_sbe_v7_0_display.no_sides_groups(buffer, packet, parent)
    parent = parent:add(b3_equities_binaryentrypoint_sbe_v7_0.fields.no_sides_groups, range, display)
  end

  return b3_equities_binaryentrypoint_sbe_v7_0_dissect.no_sides_groups_fields(buffer, offset, packet, parent)
end

-- Size: Days To Settlement Optional
b3_equities_binaryentrypoint_sbe_v7_0_size_of.days_to_settlement_optional = 2

-- Display: Days To Settlement Optional
b3_equities_binaryentrypoint_sbe_v7_0_display.days_to_settlement_optional = function(value)
  return "Days To Settlement Optional: "..value
end

-- Dissect: Days To Settlement Optional
b3_equities_binaryentrypoint_sbe_v7_0_dissect.days_to_settlement_optional = function(buffer, offset, packet, parent)
  local length = b3_equities_binaryentrypoint_sbe_v7_0_size_of.days_to_settlement_optional
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = b3_equities_binaryentrypoint_sbe_v7_0_display.days_to_settlement_optional(value, buffer, offset, packet, parent)

  parent:add(b3_equities_binaryentrypoint_sbe_v7_0.fields.days_to_settlement_optional, range, value, display)

  return offset + length, value
end

-- Size: Fixed Rate Optional
b3_equities_binaryentrypoint_sbe_v7_0_size_of.fixed_rate_optional = 8

-- Display: Fixed Rate Optional
b3_equities_binaryentrypoint_sbe_v7_0_display.fixed_rate_optional = function(raw, value)
  -- Check null sentinel value
  if raw == Int64(0x00000000, 0x80000000) then
    return "Fixed Rate Optional: No Value"
  end

  return "Fixed Rate Optional: "..value
end

-- Translate: Fixed Rate Optional
translate.fixed_rate_optional = function(raw)
  -- Check null sentinel value
  if raw == Int64(0x00000000, 0x80000000) then
    return 0/0
  end

  return raw:tonumber()/10000
end

-- Dissect: Fixed Rate Optional
b3_equities_binaryentrypoint_sbe_v7_0_dissect.fixed_rate_optional = function(buffer, offset, packet, parent)
  local length = b3_equities_binaryentrypoint_sbe_v7_0_size_of.fixed_rate_optional
  local range = buffer(offset, length)
  local raw = range:le_int64()
  local value = translate.fixed_rate_optional(raw)
  local display = b3_equities_binaryentrypoint_sbe_v7_0_display.fixed_rate_optional(raw, value, buffer, offset, packet, parent)

  parent:add(b3_equities_binaryentrypoint_sbe_v7_0.fields.fixed_rate_optional, range, value, display)

  return offset + length, value
end

-- Size: Executing Trader
b3_equities_binaryentrypoint_sbe_v7_0_size_of.executing_trader = 5

-- Display: Executing Trader
b3_equities_binaryentrypoint_sbe_v7_0_display.executing_trader = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Executing Trader: No Value"
  end

  return "Executing Trader: "..value
end

-- Dissect: Executing Trader
b3_equities_binaryentrypoint_sbe_v7_0_dissect.executing_trader = function(buffer, offset, packet, parent)
  local length = b3_equities_binaryentrypoint_sbe_v7_0_size_of.executing_trader
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

  local display = b3_equities_binaryentrypoint_sbe_v7_0_display.executing_trader(value, buffer, offset, packet, parent)

  parent:add(b3_equities_binaryentrypoint_sbe_v7_0.fields.executing_trader, range, value, display)

  return offset + length, value
end

-- Size: Order Qty Optional
b3_equities_binaryentrypoint_sbe_v7_0_size_of.order_qty_optional = 8

-- Display: Order Qty Optional
b3_equities_binaryentrypoint_sbe_v7_0_display.order_qty_optional = function(value)
  return "Order Qty Optional: "..value
end

-- Dissect: Order Qty Optional
b3_equities_binaryentrypoint_sbe_v7_0_dissect.order_qty_optional = function(buffer, offset, packet, parent)
  local length = b3_equities_binaryentrypoint_sbe_v7_0_size_of.order_qty_optional
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = b3_equities_binaryentrypoint_sbe_v7_0_display.order_qty_optional(value, buffer, offset, packet, parent)

  parent:add(b3_equities_binaryentrypoint_sbe_v7_0.fields.order_qty_optional, range, value, display)

  return offset + length, value
end

-- Size: Price Optional
b3_equities_binaryentrypoint_sbe_v7_0_size_of.price_optional = 8

-- Display: Price Optional
b3_equities_binaryentrypoint_sbe_v7_0_display.price_optional = function(raw, value)
  -- Check null sentinel value
  if raw == Int64(0x00000000, 0x80000000) then
    return "Price Optional: No Value"
  end

  return "Price Optional: "..value
end

-- Translate: Price Optional
translate.price_optional = function(raw)
  -- Check null sentinel value
  if raw == Int64(0x00000000, 0x80000000) then
    return 0/0
  end

  return raw:tonumber()/10000
end

-- Dissect: Price Optional
b3_equities_binaryentrypoint_sbe_v7_0_dissect.price_optional = function(buffer, offset, packet, parent)
  local length = b3_equities_binaryentrypoint_sbe_v7_0_size_of.price_optional
  local range = buffer(offset, length)
  local raw = range:le_int64()
  local value = translate.price_optional(raw)
  local display = b3_equities_binaryentrypoint_sbe_v7_0_display.price_optional(raw, value, buffer, offset, packet, parent)

  parent:add(b3_equities_binaryentrypoint_sbe_v7_0.fields.price_optional, range, value, display)

  return offset + length, value
end

-- Size: SettlType Optional
b3_equities_binaryentrypoint_sbe_v7_0_size_of.settltype_optional = 1

-- Display: SettlType Optional
b3_equities_binaryentrypoint_sbe_v7_0_display.settltype_optional = function(value)
  -- Check if field has value
  if value == nil or value == 0 then
    return "SettlType Optional: No Value"
  end

  if value == "0" then
    return "SettlType Optional: Buyersdiscretion (0)"
  end
  if value == "8" then
    return "SettlType Optional: Sellersdiscretion (8)"
  end
  if value == "X" then
    return "SettlType Optional: Mutual (X)"
  end
  if value == 0 then
    return "SettlType Optional: No Value"
  end

  return "SettlType Optional: Unknown("..value..")"
end

-- Dissect: SettlType Optional
b3_equities_binaryentrypoint_sbe_v7_0_dissect.settltype_optional = function(buffer, offset, packet, parent)
  local length = b3_equities_binaryentrypoint_sbe_v7_0_size_of.settltype_optional
  local range = buffer(offset, length)

  -- parse as byte
  local value = range:uint()

  -- check if value is non zero
  if value ~= 0 then
    value = range:string()
  end

  local display = b3_equities_binaryentrypoint_sbe_v7_0_display.settltype_optional(value, buffer, offset, packet, parent)

  parent:add(b3_equities_binaryentrypoint_sbe_v7_0.fields.settltype_optional, range, value, display)

  return offset + length, value
end

-- Size: Contra Broker
b3_equities_binaryentrypoint_sbe_v7_0_size_of.contra_broker = 4

-- Display: Contra Broker
b3_equities_binaryentrypoint_sbe_v7_0_display.contra_broker = function(value)
  return "Contra Broker: "..value
end

-- Dissect: Contra Broker
b3_equities_binaryentrypoint_sbe_v7_0_dissect.contra_broker = function(buffer, offset, packet, parent)
  local length = b3_equities_binaryentrypoint_sbe_v7_0_size_of.contra_broker
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = b3_equities_binaryentrypoint_sbe_v7_0_display.contra_broker(value, buffer, offset, packet, parent)

  parent:add(b3_equities_binaryentrypoint_sbe_v7_0.fields.contra_broker, range, value, display)

  return offset + length, value
end

-- Size: Quote Id Optional
b3_equities_binaryentrypoint_sbe_v7_0_size_of.quote_id_optional = 8

-- Display: Quote Id Optional
b3_equities_binaryentrypoint_sbe_v7_0_display.quote_id_optional = function(value)
  return "Quote Id Optional: "..value
end

-- Dissect: Quote Id Optional
b3_equities_binaryentrypoint_sbe_v7_0_dissect.quote_id_optional = function(buffer, offset, packet, parent)
  local length = b3_equities_binaryentrypoint_sbe_v7_0_size_of.quote_id_optional
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = b3_equities_binaryentrypoint_sbe_v7_0_display.quote_id_optional(value, buffer, offset, packet, parent)

  parent:add(b3_equities_binaryentrypoint_sbe_v7_0.fields.quote_id_optional, range, value, display)

  return offset + length, value
end

-- Size: Quote Request Reject Reason
b3_equities_binaryentrypoint_sbe_v7_0_size_of.quote_request_reject_reason = 4

-- Display: Quote Request Reject Reason
b3_equities_binaryentrypoint_sbe_v7_0_display.quote_request_reject_reason = function(value)
  return "Quote Request Reject Reason: "..value
end

-- Dissect: Quote Request Reject Reason
b3_equities_binaryentrypoint_sbe_v7_0_dissect.quote_request_reject_reason = function(buffer, offset, packet, parent)
  local length = b3_equities_binaryentrypoint_sbe_v7_0_size_of.quote_request_reject_reason
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = b3_equities_binaryentrypoint_sbe_v7_0_display.quote_request_reject_reason(value, buffer, offset, packet, parent)

  parent:add(b3_equities_binaryentrypoint_sbe_v7_0.fields.quote_request_reject_reason, range, value, display)

  return offset + length, value
end

-- Size: Market Segment I D Market Segment Id Optional
b3_equities_binaryentrypoint_sbe_v7_0_size_of.market_segment_i_d_market_segment_id_optional = 1

-- Display: Market Segment I D Market Segment Id Optional
b3_equities_binaryentrypoint_sbe_v7_0_display.market_segment_i_d_market_segment_id_optional = function(value)
  return "Market Segment I D Market Segment Id Optional: "..value
end

-- Dissect: Market Segment I D Market Segment Id Optional
b3_equities_binaryentrypoint_sbe_v7_0_dissect.market_segment_i_d_market_segment_id_optional = function(buffer, offset, packet, parent)
  local length = b3_equities_binaryentrypoint_sbe_v7_0_size_of.market_segment_i_d_market_segment_id_optional
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = b3_equities_binaryentrypoint_sbe_v7_0_display.market_segment_i_d_market_segment_id_optional(value, buffer, offset, packet, parent)

  parent:add(b3_equities_binaryentrypoint_sbe_v7_0.fields.market_segment_i_d_market_segment_id_optional, range, value, display)

  return offset + length, value
end

-- Calculate size of: Bidirectional Business Header
b3_equities_binaryentrypoint_sbe_v7_0_size_of.bidirectional_business_header = function(buffer, offset)
  local index = 0

  index = index + b3_equities_binaryentrypoint_sbe_v7_0_size_of.session_id

  index = index + b3_equities_binaryentrypoint_sbe_v7_0_size_of.msg_seq_num

  index = index + b3_equities_binaryentrypoint_sbe_v7_0_size_of.sending_time

  index = index + b3_equities_binaryentrypoint_sbe_v7_0_size_of.poss_resend

  index = index + b3_equities_binaryentrypoint_sbe_v7_0_size_of.market_segment_i_d_market_segment_id_optional

  index = index + b3_equities_binaryentrypoint_sbe_v7_0_size_of.padding

  return index
end

-- Display: Bidirectional Business Header
b3_equities_binaryentrypoint_sbe_v7_0_display.bidirectional_business_header = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Bidirectional Business Header
b3_equities_binaryentrypoint_sbe_v7_0_dissect.bidirectional_business_header_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Session Id: 4 Byte Unsigned Fixed Width Integer
  index, session_id = b3_equities_binaryentrypoint_sbe_v7_0_dissect.session_id(buffer, index, packet, parent)

  -- Msg Seq Num: 4 Byte Unsigned Fixed Width Integer
  index, msg_seq_num = b3_equities_binaryentrypoint_sbe_v7_0_dissect.msg_seq_num(buffer, index, packet, parent)

  -- Sending Time: 8 Byte Unsigned Fixed Width Integer
  index, sending_time = b3_equities_binaryentrypoint_sbe_v7_0_dissect.sending_time(buffer, index, packet, parent)

  -- Poss Resend: 1 Byte Unsigned Fixed Width Integer
  index, poss_resend = b3_equities_binaryentrypoint_sbe_v7_0_dissect.poss_resend(buffer, index, packet, parent)

  -- Market Segment I D Market Segment Id Optional: 1 Byte Unsigned Fixed Width Integer
  index, market_segment_i_d_market_segment_id_optional = b3_equities_binaryentrypoint_sbe_v7_0_dissect.market_segment_i_d_market_segment_id_optional(buffer, index, packet, parent)

  -- Padding: 1 Byte Ascii String
  index, padding = b3_equities_binaryentrypoint_sbe_v7_0_dissect.padding(buffer, index, packet, parent)

  return index
end

-- Dissect: Bidirectional Business Header
b3_equities_binaryentrypoint_sbe_v7_0_dissect.bidirectional_business_header = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.bidirectional_business_header then
    local length = b3_equities_binaryentrypoint_sbe_v7_0_size_of.bidirectional_business_header(buffer, offset)
    local range = buffer(offset, length)
    local display = b3_equities_binaryentrypoint_sbe_v7_0_display.bidirectional_business_header(buffer, packet, parent)
    parent = parent:add(b3_equities_binaryentrypoint_sbe_v7_0.fields.bidirectional_business_header, range, display)
  end

  return b3_equities_binaryentrypoint_sbe_v7_0_dissect.bidirectional_business_header_fields(buffer, offset, packet, parent)
end

-- Calculate size of: Quote Request Reject Message
b3_equities_binaryentrypoint_sbe_v7_0_size_of.quote_request_reject_message = function(buffer, offset)
  local index = 0

  index = index + b3_equities_binaryentrypoint_sbe_v7_0_size_of.bidirectional_business_header(buffer, offset + index)

  index = index + b3_equities_binaryentrypoint_sbe_v7_0_size_of.quote_request_reject_reason

  index = index + b3_equities_binaryentrypoint_sbe_v7_0_size_of.security_id

  index = index + b3_equities_binaryentrypoint_sbe_v7_0_size_of.security_exchange

  index = index + b3_equities_binaryentrypoint_sbe_v7_0_size_of.quote_id_optional

  index = index + b3_equities_binaryentrypoint_sbe_v7_0_size_of.trade_id_optional

  index = index + b3_equities_binaryentrypoint_sbe_v7_0_size_of.contra_broker

  index = index + b3_equities_binaryentrypoint_sbe_v7_0_size_of.transact_time

  index = index + b3_equities_binaryentrypoint_sbe_v7_0_size_of.entering_trader

  index = index + b3_equities_binaryentrypoint_sbe_v7_0_size_of.settltype_optional

  index = index + b3_equities_binaryentrypoint_sbe_v7_0_size_of.price_optional

  index = index + b3_equities_binaryentrypoint_sbe_v7_0_size_of.order_qty_optional

  index = index + b3_equities_binaryentrypoint_sbe_v7_0_size_of.sender_location

  index = index + b3_equities_binaryentrypoint_sbe_v7_0_size_of.executing_trader

  index = index + b3_equities_binaryentrypoint_sbe_v7_0_size_of.fixed_rate_optional

  index = index + b3_equities_binaryentrypoint_sbe_v7_0_size_of.days_to_settlement_optional

  index = index + b3_equities_binaryentrypoint_sbe_v7_0_size_of.no_sides_groups(buffer, offset + index)

  index = index + b3_equities_binaryentrypoint_sbe_v7_0_size_of.quote_req_id(buffer, offset + index)

  index = index + b3_equities_binaryentrypoint_sbe_v7_0_size_of.desk_id(buffer, offset + index)

  index = index + b3_equities_binaryentrypoint_sbe_v7_0_size_of.memo(buffer, offset + index)

  index = index + b3_equities_binaryentrypoint_sbe_v7_0_size_of.text(buffer, offset + index)

  return index
end

-- Display: Quote Request Reject Message
b3_equities_binaryentrypoint_sbe_v7_0_display.quote_request_reject_message = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Quote Request Reject Message
b3_equities_binaryentrypoint_sbe_v7_0_dissect.quote_request_reject_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Bidirectional Business Header: Struct of 6 fields
  index, bidirectional_business_header = b3_equities_binaryentrypoint_sbe_v7_0_dissect.bidirectional_business_header(buffer, index, packet, parent)

  -- Quote Request Reject Reason: 4 Byte Unsigned Fixed Width Integer
  index, quote_request_reject_reason = b3_equities_binaryentrypoint_sbe_v7_0_dissect.quote_request_reject_reason(buffer, index, packet, parent)

  -- Security Id: 8 Byte Unsigned Fixed Width Integer
  index, security_id = b3_equities_binaryentrypoint_sbe_v7_0_dissect.security_id(buffer, index, packet, parent)

  -- Security Exchange: 4 Byte Ascii String
  index, security_exchange = b3_equities_binaryentrypoint_sbe_v7_0_dissect.security_exchange(buffer, index, packet, parent)

  -- Quote Id Optional: 8 Byte Unsigned Fixed Width Integer
  index, quote_id_optional = b3_equities_binaryentrypoint_sbe_v7_0_dissect.quote_id_optional(buffer, index, packet, parent)

  -- Trade Id Optional: 4 Byte Unsigned Fixed Width Integer
  index, trade_id_optional = b3_equities_binaryentrypoint_sbe_v7_0_dissect.trade_id_optional(buffer, index, packet, parent)

  -- Contra Broker: 4 Byte Unsigned Fixed Width Integer
  index, contra_broker = b3_equities_binaryentrypoint_sbe_v7_0_dissect.contra_broker(buffer, index, packet, parent)

  -- Transact Time: 8 Byte Unsigned Fixed Width Integer
  index, transact_time = b3_equities_binaryentrypoint_sbe_v7_0_dissect.transact_time(buffer, index, packet, parent)

  -- Entering Trader: 5 Byte Ascii String
  index, entering_trader = b3_equities_binaryentrypoint_sbe_v7_0_dissect.entering_trader(buffer, index, packet, parent)

  -- SettlType Optional: 1 Byte Ascii String Enum with 4 values
  index, settltype_optional = b3_equities_binaryentrypoint_sbe_v7_0_dissect.settltype_optional(buffer, index, packet, parent)

  -- Price Optional: 8 Byte Signed Fixed Width Integer Nullable
  index, price_optional = b3_equities_binaryentrypoint_sbe_v7_0_dissect.price_optional(buffer, index, packet, parent)

  -- Order Qty Optional: 8 Byte Unsigned Fixed Width Integer
  index, order_qty_optional = b3_equities_binaryentrypoint_sbe_v7_0_dissect.order_qty_optional(buffer, index, packet, parent)

  -- Sender Location: 10 Byte Ascii String
  index, sender_location = b3_equities_binaryentrypoint_sbe_v7_0_dissect.sender_location(buffer, index, packet, parent)

  -- Executing Trader: 5 Byte Ascii String
  index, executing_trader = b3_equities_binaryentrypoint_sbe_v7_0_dissect.executing_trader(buffer, index, packet, parent)

  -- Fixed Rate Optional: 8 Byte Signed Fixed Width Integer Nullable
  index, fixed_rate_optional = b3_equities_binaryentrypoint_sbe_v7_0_dissect.fixed_rate_optional(buffer, index, packet, parent)

  -- Days To Settlement Optional: 2 Byte Unsigned Fixed Width Integer
  index, days_to_settlement_optional = b3_equities_binaryentrypoint_sbe_v7_0_dissect.days_to_settlement_optional(buffer, index, packet, parent)

  -- No Sides Groups: Struct of 2 fields
  index, no_sides_groups = b3_equities_binaryentrypoint_sbe_v7_0_dissect.no_sides_groups(buffer, index, packet, parent)

  -- Quote Req Id: Struct of 2 fields
  index, quote_req_id = b3_equities_binaryentrypoint_sbe_v7_0_dissect.quote_req_id(buffer, index, packet, parent)

  -- Desk Id: Struct of 2 fields
  index, desk_id = b3_equities_binaryentrypoint_sbe_v7_0_dissect.desk_id(buffer, index, packet, parent)

  -- Memo: Struct of 2 fields
  index, memo = b3_equities_binaryentrypoint_sbe_v7_0_dissect.memo(buffer, index, packet, parent)

  -- Text: Struct of 2 fields
  index, text = b3_equities_binaryentrypoint_sbe_v7_0_dissect.text(buffer, index, packet, parent)

  return index
end

-- Dissect: Quote Request Reject Message
b3_equities_binaryentrypoint_sbe_v7_0_dissect.quote_request_reject_message = function(buffer, offset, packet, parent)
  -- Optionally add dynamic struct element to protocol tree
  if show.quote_request_reject_message then
    local length = b3_equities_binaryentrypoint_sbe_v7_0_size_of.quote_request_reject_message(buffer, offset)
    local range = buffer(offset, length)
    local display = b3_equities_binaryentrypoint_sbe_v7_0_display.quote_request_reject_message(buffer, packet, parent)
    parent = parent:add(b3_equities_binaryentrypoint_sbe_v7_0.fields.quote_request_reject_message, range, display)
  end

  return b3_equities_binaryentrypoint_sbe_v7_0_dissect.quote_request_reject_message_fields(buffer, offset, packet, parent)
end

-- Calculate size of: Quote Cancel Message
b3_equities_binaryentrypoint_sbe_v7_0_size_of.quote_cancel_message = function(buffer, offset)
  local index = 0

  index = index + b3_equities_binaryentrypoint_sbe_v7_0_size_of.bidirectional_business_header(buffer, offset + index)

  index = index + b3_equities_binaryentrypoint_sbe_v7_0_size_of.security_id

  index = index + b3_equities_binaryentrypoint_sbe_v7_0_size_of.security_exchange

  index = index + b3_equities_binaryentrypoint_sbe_v7_0_size_of.quote_id_optional

  index = index + b3_equities_binaryentrypoint_sbe_v7_0_size_of.account

  index = index + b3_equities_binaryentrypoint_sbe_v7_0_size_of.sender_location

  index = index + b3_equities_binaryentrypoint_sbe_v7_0_size_of.entering_trader

  index = index + b3_equities_binaryentrypoint_sbe_v7_0_size_of.executing_trader

  index = index + b3_equities_binaryentrypoint_sbe_v7_0_size_of.quote_req_id(buffer, offset + index)

  index = index + b3_equities_binaryentrypoint_sbe_v7_0_size_of.desk_id(buffer, offset + index)

  index = index + b3_equities_binaryentrypoint_sbe_v7_0_size_of.memo(buffer, offset + index)

  return index
end

-- Display: Quote Cancel Message
b3_equities_binaryentrypoint_sbe_v7_0_display.quote_cancel_message = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Quote Cancel Message
b3_equities_binaryentrypoint_sbe_v7_0_dissect.quote_cancel_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Bidirectional Business Header: Struct of 6 fields
  index, bidirectional_business_header = b3_equities_binaryentrypoint_sbe_v7_0_dissect.bidirectional_business_header(buffer, index, packet, parent)

  -- Security Id: 8 Byte Unsigned Fixed Width Integer
  index, security_id = b3_equities_binaryentrypoint_sbe_v7_0_dissect.security_id(buffer, index, packet, parent)

  -- Security Exchange: 4 Byte Ascii String
  index, security_exchange = b3_equities_binaryentrypoint_sbe_v7_0_dissect.security_exchange(buffer, index, packet, parent)

  -- Quote Id Optional: 8 Byte Unsigned Fixed Width Integer
  index, quote_id_optional = b3_equities_binaryentrypoint_sbe_v7_0_dissect.quote_id_optional(buffer, index, packet, parent)

  -- Account: 4 Byte Unsigned Fixed Width Integer
  index, account = b3_equities_binaryentrypoint_sbe_v7_0_dissect.account(buffer, index, packet, parent)

  -- Sender Location: 10 Byte Ascii String
  index, sender_location = b3_equities_binaryentrypoint_sbe_v7_0_dissect.sender_location(buffer, index, packet, parent)

  -- Entering Trader: 5 Byte Ascii String
  index, entering_trader = b3_equities_binaryentrypoint_sbe_v7_0_dissect.entering_trader(buffer, index, packet, parent)

  -- Executing Trader: 5 Byte Ascii String
  index, executing_trader = b3_equities_binaryentrypoint_sbe_v7_0_dissect.executing_trader(buffer, index, packet, parent)

  -- Quote Req Id: Struct of 2 fields
  index, quote_req_id = b3_equities_binaryentrypoint_sbe_v7_0_dissect.quote_req_id(buffer, index, packet, parent)

  -- Desk Id: Struct of 2 fields
  index, desk_id = b3_equities_binaryentrypoint_sbe_v7_0_dissect.desk_id(buffer, index, packet, parent)

  -- Memo: Struct of 2 fields
  index, memo = b3_equities_binaryentrypoint_sbe_v7_0_dissect.memo(buffer, index, packet, parent)

  return index
end

-- Dissect: Quote Cancel Message
b3_equities_binaryentrypoint_sbe_v7_0_dissect.quote_cancel_message = function(buffer, offset, packet, parent)
  -- Optionally add dynamic struct element to protocol tree
  if show.quote_cancel_message then
    local length = b3_equities_binaryentrypoint_sbe_v7_0_size_of.quote_cancel_message(buffer, offset)
    local range = buffer(offset, length)
    local display = b3_equities_binaryentrypoint_sbe_v7_0_display.quote_cancel_message(buffer, packet, parent)
    parent = parent:add(b3_equities_binaryentrypoint_sbe_v7_0.fields.quote_cancel_message, range, display)
  end

  return b3_equities_binaryentrypoint_sbe_v7_0_dissect.quote_cancel_message_fields(buffer, offset, packet, parent)
end

-- Size: Days To Settlement
b3_equities_binaryentrypoint_sbe_v7_0_size_of.days_to_settlement = 2

-- Display: Days To Settlement
b3_equities_binaryentrypoint_sbe_v7_0_display.days_to_settlement = function(value)
  return "Days To Settlement: "..value
end

-- Dissect: Days To Settlement
b3_equities_binaryentrypoint_sbe_v7_0_dissect.days_to_settlement = function(buffer, offset, packet, parent)
  local length = b3_equities_binaryentrypoint_sbe_v7_0_size_of.days_to_settlement
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = b3_equities_binaryentrypoint_sbe_v7_0_display.days_to_settlement(value, buffer, offset, packet, parent)

  parent:add(b3_equities_binaryentrypoint_sbe_v7_0.fields.days_to_settlement, range, value, display)

  return offset + length, value
end

-- Size: Execute Underlying Trade
b3_equities_binaryentrypoint_sbe_v7_0_size_of.execute_underlying_trade = 1

-- Display: Execute Underlying Trade
b3_equities_binaryentrypoint_sbe_v7_0_display.execute_underlying_trade = function(value)
  -- Check if field has value
  if value == nil or value == 0 then
    return "Execute Underlying Trade: No Value"
  end

  if value == "0" then
    return "Execute Underlying Trade: Nounderlyingtrade (0)"
  end
  if value == "1" then
    return "Execute Underlying Trade: Underlyingopposingtrade (1)"
  end
  if value == 0 then
    return "Execute Underlying Trade: No Value"
  end

  return "Execute Underlying Trade: Unknown("..value..")"
end

-- Dissect: Execute Underlying Trade
b3_equities_binaryentrypoint_sbe_v7_0_dissect.execute_underlying_trade = function(buffer, offset, packet, parent)
  local length = b3_equities_binaryentrypoint_sbe_v7_0_size_of.execute_underlying_trade
  local range = buffer(offset, length)

  -- parse as byte
  local value = range:uint()

  -- check if value is non zero
  if value ~= 0 then
    value = range:string()
  end

  local display = b3_equities_binaryentrypoint_sbe_v7_0_display.execute_underlying_trade(value, buffer, offset, packet, parent)

  parent:add(b3_equities_binaryentrypoint_sbe_v7_0.fields.execute_underlying_trade, range, value, display)

  return offset + length, value
end

-- Size: Fixed Rate
b3_equities_binaryentrypoint_sbe_v7_0_size_of.fixed_rate = 8

-- Display: Fixed Rate
b3_equities_binaryentrypoint_sbe_v7_0_display.fixed_rate = function(value)
  return "Fixed Rate: "..value
end

-- Translate: Fixed Rate
translate.fixed_rate = function(raw)
  return raw:tonumber()/10000
end

-- Dissect: Fixed Rate
b3_equities_binaryentrypoint_sbe_v7_0_dissect.fixed_rate = function(buffer, offset, packet, parent)
  local length = b3_equities_binaryentrypoint_sbe_v7_0_size_of.fixed_rate
  local range = buffer(offset, length)
  local raw = range:le_int64()
  local value = translate.fixed_rate(raw)
  local display = b3_equities_binaryentrypoint_sbe_v7_0_display.fixed_rate(value, buffer, offset, packet, parent)

  parent:add(b3_equities_binaryentrypoint_sbe_v7_0.fields.fixed_rate, range, value, display)

  return offset + length, value
end

-- Size: SettlType
b3_equities_binaryentrypoint_sbe_v7_0_size_of.settltype = 1

-- Display: SettlType
b3_equities_binaryentrypoint_sbe_v7_0_display.settltype = function(value)
  -- Check if field has value
  if value == nil or value == 0 then
    return "SettlType: No Value"
  end

  if value == "0" then
    return "SettlType: Buyersdiscretion (0)"
  end
  if value == "8" then
    return "SettlType: Sellersdiscretion (8)"
  end
  if value == "X" then
    return "SettlType: Mutual (X)"
  end

  return "SettlType: Unknown("..value..")"
end

-- Dissect: SettlType
b3_equities_binaryentrypoint_sbe_v7_0_dissect.settltype = function(buffer, offset, packet, parent)
  local length = b3_equities_binaryentrypoint_sbe_v7_0_size_of.settltype
  local range = buffer(offset, length)

  -- parse as byte
  local value = range:uint()

  -- check if value is non zero
  if value ~= 0 then
    value = range:string()
  end

  local display = b3_equities_binaryentrypoint_sbe_v7_0_display.settltype(value, buffer, offset, packet, parent)

  parent:add(b3_equities_binaryentrypoint_sbe_v7_0.fields.settltype, range, value, display)

  return offset + length, value
end

-- Size: Order Qty
b3_equities_binaryentrypoint_sbe_v7_0_size_of.order_qty = 8

-- Display: Order Qty
b3_equities_binaryentrypoint_sbe_v7_0_display.order_qty = function(value)
  return "Order Qty: "..value
end

-- Dissect: Order Qty
b3_equities_binaryentrypoint_sbe_v7_0_dissect.order_qty = function(buffer, offset, packet, parent)
  local length = b3_equities_binaryentrypoint_sbe_v7_0_size_of.order_qty
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = b3_equities_binaryentrypoint_sbe_v7_0_display.order_qty(value, buffer, offset, packet, parent)

  parent:add(b3_equities_binaryentrypoint_sbe_v7_0.fields.order_qty, range, value, display)

  return offset + length, value
end

-- Size: Quote Id
b3_equities_binaryentrypoint_sbe_v7_0_size_of.quote_id = 8

-- Display: Quote Id
b3_equities_binaryentrypoint_sbe_v7_0_display.quote_id = function(value)
  return "Quote Id: "..value
end

-- Dissect: Quote Id
b3_equities_binaryentrypoint_sbe_v7_0_dissect.quote_id = function(buffer, offset, packet, parent)
  local length = b3_equities_binaryentrypoint_sbe_v7_0_size_of.quote_id
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = b3_equities_binaryentrypoint_sbe_v7_0_display.quote_id(value, buffer, offset, packet, parent)

  parent:add(b3_equities_binaryentrypoint_sbe_v7_0.fields.quote_id, range, value, display)

  return offset + length, value
end

-- Calculate size of: Quote Message
b3_equities_binaryentrypoint_sbe_v7_0_size_of.quote_message = function(buffer, offset)
  local index = 0

  index = index + b3_equities_binaryentrypoint_sbe_v7_0_size_of.bidirectional_business_header(buffer, offset + index)

  index = index + b3_equities_binaryentrypoint_sbe_v7_0_size_of.security_id

  index = index + b3_equities_binaryentrypoint_sbe_v7_0_size_of.security_exchange

  index = index + b3_equities_binaryentrypoint_sbe_v7_0_size_of.quote_id

  index = index + b3_equities_binaryentrypoint_sbe_v7_0_size_of.transact_time

  index = index + b3_equities_binaryentrypoint_sbe_v7_0_size_of.price_optional

  index = index + b3_equities_binaryentrypoint_sbe_v7_0_size_of.order_qty

  index = index + b3_equities_binaryentrypoint_sbe_v7_0_size_of.side

  index = index + b3_equities_binaryentrypoint_sbe_v7_0_size_of.settltype

  index = index + b3_equities_binaryentrypoint_sbe_v7_0_size_of.account

  index = index + b3_equities_binaryentrypoint_sbe_v7_0_size_of.sender_location

  index = index + b3_equities_binaryentrypoint_sbe_v7_0_size_of.entering_trader

  index = index + b3_equities_binaryentrypoint_sbe_v7_0_size_of.executing_trader

  index = index + b3_equities_binaryentrypoint_sbe_v7_0_size_of.fixed_rate

  index = index + b3_equities_binaryentrypoint_sbe_v7_0_size_of.execute_underlying_trade

  index = index + b3_equities_binaryentrypoint_sbe_v7_0_size_of.days_to_settlement

  index = index + b3_equities_binaryentrypoint_sbe_v7_0_size_of.quote_req_id(buffer, offset + index)

  index = index + b3_equities_binaryentrypoint_sbe_v7_0_size_of.desk_id(buffer, offset + index)

  index = index + b3_equities_binaryentrypoint_sbe_v7_0_size_of.memo(buffer, offset + index)

  return index
end

-- Display: Quote Message
b3_equities_binaryentrypoint_sbe_v7_0_display.quote_message = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Quote Message
b3_equities_binaryentrypoint_sbe_v7_0_dissect.quote_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Bidirectional Business Header: Struct of 6 fields
  index, bidirectional_business_header = b3_equities_binaryentrypoint_sbe_v7_0_dissect.bidirectional_business_header(buffer, index, packet, parent)

  -- Security Id: 8 Byte Unsigned Fixed Width Integer
  index, security_id = b3_equities_binaryentrypoint_sbe_v7_0_dissect.security_id(buffer, index, packet, parent)

  -- Security Exchange: 4 Byte Ascii String
  index, security_exchange = b3_equities_binaryentrypoint_sbe_v7_0_dissect.security_exchange(buffer, index, packet, parent)

  -- Quote Id: 8 Byte Unsigned Fixed Width Integer
  index, quote_id = b3_equities_binaryentrypoint_sbe_v7_0_dissect.quote_id(buffer, index, packet, parent)

  -- Transact Time: 8 Byte Unsigned Fixed Width Integer
  index, transact_time = b3_equities_binaryentrypoint_sbe_v7_0_dissect.transact_time(buffer, index, packet, parent)

  -- Price Optional: 8 Byte Signed Fixed Width Integer Nullable
  index, price_optional = b3_equities_binaryentrypoint_sbe_v7_0_dissect.price_optional(buffer, index, packet, parent)

  -- Order Qty: 8 Byte Unsigned Fixed Width Integer
  index, order_qty = b3_equities_binaryentrypoint_sbe_v7_0_dissect.order_qty(buffer, index, packet, parent)

  -- Side: 1 Byte Ascii String Enum with 2 values
  index, side = b3_equities_binaryentrypoint_sbe_v7_0_dissect.side(buffer, index, packet, parent)

  -- SettlType: 1 Byte Ascii String Enum with 3 values
  index, settltype = b3_equities_binaryentrypoint_sbe_v7_0_dissect.settltype(buffer, index, packet, parent)

  -- Account: 4 Byte Unsigned Fixed Width Integer
  index, account = b3_equities_binaryentrypoint_sbe_v7_0_dissect.account(buffer, index, packet, parent)

  -- Sender Location: 10 Byte Ascii String
  index, sender_location = b3_equities_binaryentrypoint_sbe_v7_0_dissect.sender_location(buffer, index, packet, parent)

  -- Entering Trader: 5 Byte Ascii String
  index, entering_trader = b3_equities_binaryentrypoint_sbe_v7_0_dissect.entering_trader(buffer, index, packet, parent)

  -- Executing Trader: 5 Byte Ascii String
  index, executing_trader = b3_equities_binaryentrypoint_sbe_v7_0_dissect.executing_trader(buffer, index, packet, parent)

  -- Fixed Rate: 8 Byte Signed Fixed Width Integer
  index, fixed_rate = b3_equities_binaryentrypoint_sbe_v7_0_dissect.fixed_rate(buffer, index, packet, parent)

  -- Execute Underlying Trade: 1 Byte Ascii String Enum with 3 values
  index, execute_underlying_trade = b3_equities_binaryentrypoint_sbe_v7_0_dissect.execute_underlying_trade(buffer, index, packet, parent)

  -- Days To Settlement: 2 Byte Unsigned Fixed Width Integer
  index, days_to_settlement = b3_equities_binaryentrypoint_sbe_v7_0_dissect.days_to_settlement(buffer, index, packet, parent)

  -- Quote Req Id: Struct of 2 fields
  index, quote_req_id = b3_equities_binaryentrypoint_sbe_v7_0_dissect.quote_req_id(buffer, index, packet, parent)

  -- Desk Id: Struct of 2 fields
  index, desk_id = b3_equities_binaryentrypoint_sbe_v7_0_dissect.desk_id(buffer, index, packet, parent)

  -- Memo: Struct of 2 fields
  index, memo = b3_equities_binaryentrypoint_sbe_v7_0_dissect.memo(buffer, index, packet, parent)

  return index
end

-- Dissect: Quote Message
b3_equities_binaryentrypoint_sbe_v7_0_dissect.quote_message = function(buffer, offset, packet, parent)
  -- Optionally add dynamic struct element to protocol tree
  if show.quote_message then
    local length = b3_equities_binaryentrypoint_sbe_v7_0_size_of.quote_message(buffer, offset)
    local range = buffer(offset, length)
    local display = b3_equities_binaryentrypoint_sbe_v7_0_display.quote_message(buffer, packet, parent)
    parent = parent:add(b3_equities_binaryentrypoint_sbe_v7_0.fields.quote_message, range, display)
  end

  return b3_equities_binaryentrypoint_sbe_v7_0_dissect.quote_message_fields(buffer, offset, packet, parent)
end

-- Size: Quote Status Response To
b3_equities_binaryentrypoint_sbe_v7_0_size_of.quote_status_response_to = 1

-- Display: Quote Status Response To
b3_equities_binaryentrypoint_sbe_v7_0_display.quote_status_response_to = function(value)
  -- Check if field has value
  if value == nil or value == 0 then
    return "Quote Status Response To: No Value"
  end

  if value == "0" then
    return "Quote Status Response To: Quote (0)"
  end
  if value == "1" then
    return "Quote Status Response To: Quoterequest (1)"
  end
  if value == "2" then
    return "Quote Status Response To: Quotecancel (2)"
  end
  if value == "3" then
    return "Quote Status Response To: Quoterequestreject (3)"
  end
  if value == 0 then
    return "Quote Status Response To: No Value"
  end

  return "Quote Status Response To: Unknown("..value..")"
end

-- Dissect: Quote Status Response To
b3_equities_binaryentrypoint_sbe_v7_0_dissect.quote_status_response_to = function(buffer, offset, packet, parent)
  local length = b3_equities_binaryentrypoint_sbe_v7_0_size_of.quote_status_response_to
  local range = buffer(offset, length)

  -- parse as byte
  local value = range:uint()

  -- check if value is non zero
  if value ~= 0 then
    value = range:string()
  end

  local display = b3_equities_binaryentrypoint_sbe_v7_0_display.quote_status_response_to(value, buffer, offset, packet, parent)

  parent:add(b3_equities_binaryentrypoint_sbe_v7_0.fields.quote_status_response_to, range, value, display)

  return offset + length, value
end

-- Size: Quote Status
b3_equities_binaryentrypoint_sbe_v7_0_size_of.quote_status = 1

-- Display: Quote Status
b3_equities_binaryentrypoint_sbe_v7_0_display.quote_status = function(value)
  if value == 7 then
    return "Quote Status: Expired (7)"
  end
  if value == 0 then
    return "Quote Status: Accepted (0)"
  end
  if value == 5 then
    return "Quote Status: Rejected (5)"
  end
  if value == 9 then
    return "Quote Status: Quotenotfound (9)"
  end
  if value == 10 then
    return "Quote Status: Pending (10)"
  end
  if value == 11 then
    return "Quote Status: Pass (11)"
  end
  if value == 17 then
    return "Quote Status: Canceled (17)"
  end

  return "Quote Status: Unknown("..value..")"
end

-- Dissect: Quote Status
b3_equities_binaryentrypoint_sbe_v7_0_dissect.quote_status = function(buffer, offset, packet, parent)
  local length = b3_equities_binaryentrypoint_sbe_v7_0_size_of.quote_status
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = b3_equities_binaryentrypoint_sbe_v7_0_display.quote_status(value, buffer, offset, packet, parent)

  parent:add(b3_equities_binaryentrypoint_sbe_v7_0.fields.quote_status, range, value, display)

  return offset + length, value
end

-- Size: Quote Reject Reason
b3_equities_binaryentrypoint_sbe_v7_0_size_of.quote_reject_reason = 4

-- Display: Quote Reject Reason
b3_equities_binaryentrypoint_sbe_v7_0_display.quote_reject_reason = function(value)
  return "Quote Reject Reason: "..value
end

-- Dissect: Quote Reject Reason
b3_equities_binaryentrypoint_sbe_v7_0_dissect.quote_reject_reason = function(buffer, offset, packet, parent)
  local length = b3_equities_binaryentrypoint_sbe_v7_0_size_of.quote_reject_reason
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = b3_equities_binaryentrypoint_sbe_v7_0_display.quote_reject_reason(value, buffer, offset, packet, parent)

  parent:add(b3_equities_binaryentrypoint_sbe_v7_0.fields.quote_reject_reason, range, value, display)

  return offset + length, value
end

-- Calculate size of: Quote Status Report Message
b3_equities_binaryentrypoint_sbe_v7_0_size_of.quote_status_report_message = function(buffer, offset)
  local index = 0

  index = index + b3_equities_binaryentrypoint_sbe_v7_0_size_of.bidirectional_business_header(buffer, offset + index)

  index = index + b3_equities_binaryentrypoint_sbe_v7_0_size_of.quote_reject_reason

  index = index + b3_equities_binaryentrypoint_sbe_v7_0_size_of.security_id

  index = index + b3_equities_binaryentrypoint_sbe_v7_0_size_of.security_exchange

  index = index + b3_equities_binaryentrypoint_sbe_v7_0_size_of.quote_id

  index = index + b3_equities_binaryentrypoint_sbe_v7_0_size_of.trade_id_optional

  index = index + b3_equities_binaryentrypoint_sbe_v7_0_size_of.contra_broker

  index = index + b3_equities_binaryentrypoint_sbe_v7_0_size_of.transact_time

  index = index + b3_equities_binaryentrypoint_sbe_v7_0_size_of.quote_status

  index = index + b3_equities_binaryentrypoint_sbe_v7_0_size_of.quote_status_response_to

  index = index + b3_equities_binaryentrypoint_sbe_v7_0_size_of.account

  index = index + b3_equities_binaryentrypoint_sbe_v7_0_size_of.side_optional

  index = index + b3_equities_binaryentrypoint_sbe_v7_0_size_of.settltype_optional

  index = index + b3_equities_binaryentrypoint_sbe_v7_0_size_of.price_optional

  index = index + b3_equities_binaryentrypoint_sbe_v7_0_size_of.order_qty

  index = index + b3_equities_binaryentrypoint_sbe_v7_0_size_of.sender_location

  index = index + b3_equities_binaryentrypoint_sbe_v7_0_size_of.entering_trader

  index = index + b3_equities_binaryentrypoint_sbe_v7_0_size_of.executing_trader

  index = index + b3_equities_binaryentrypoint_sbe_v7_0_size_of.fixed_rate_optional

  index = index + b3_equities_binaryentrypoint_sbe_v7_0_size_of.execute_underlying_trade

  index = index + b3_equities_binaryentrypoint_sbe_v7_0_size_of.days_to_settlement_optional

  index = index + b3_equities_binaryentrypoint_sbe_v7_0_size_of.quote_req_id(buffer, offset + index)

  index = index + b3_equities_binaryentrypoint_sbe_v7_0_size_of.desk_id(buffer, offset + index)

  index = index + b3_equities_binaryentrypoint_sbe_v7_0_size_of.memo(buffer, offset + index)

  index = index + b3_equities_binaryentrypoint_sbe_v7_0_size_of.text(buffer, offset + index)

  return index
end

-- Display: Quote Status Report Message
b3_equities_binaryentrypoint_sbe_v7_0_display.quote_status_report_message = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Quote Status Report Message
b3_equities_binaryentrypoint_sbe_v7_0_dissect.quote_status_report_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Bidirectional Business Header: Struct of 6 fields
  index, bidirectional_business_header = b3_equities_binaryentrypoint_sbe_v7_0_dissect.bidirectional_business_header(buffer, index, packet, parent)

  -- Quote Reject Reason: 4 Byte Unsigned Fixed Width Integer
  index, quote_reject_reason = b3_equities_binaryentrypoint_sbe_v7_0_dissect.quote_reject_reason(buffer, index, packet, parent)

  -- Security Id: 8 Byte Unsigned Fixed Width Integer
  index, security_id = b3_equities_binaryentrypoint_sbe_v7_0_dissect.security_id(buffer, index, packet, parent)

  -- Security Exchange: 4 Byte Ascii String
  index, security_exchange = b3_equities_binaryentrypoint_sbe_v7_0_dissect.security_exchange(buffer, index, packet, parent)

  -- Quote Id: 8 Byte Unsigned Fixed Width Integer
  index, quote_id = b3_equities_binaryentrypoint_sbe_v7_0_dissect.quote_id(buffer, index, packet, parent)

  -- Trade Id Optional: 4 Byte Unsigned Fixed Width Integer
  index, trade_id_optional = b3_equities_binaryentrypoint_sbe_v7_0_dissect.trade_id_optional(buffer, index, packet, parent)

  -- Contra Broker: 4 Byte Unsigned Fixed Width Integer
  index, contra_broker = b3_equities_binaryentrypoint_sbe_v7_0_dissect.contra_broker(buffer, index, packet, parent)

  -- Transact Time: 8 Byte Unsigned Fixed Width Integer
  index, transact_time = b3_equities_binaryentrypoint_sbe_v7_0_dissect.transact_time(buffer, index, packet, parent)

  -- Quote Status: 1 Byte Unsigned Fixed Width Integer Enum with 7 values
  index, quote_status = b3_equities_binaryentrypoint_sbe_v7_0_dissect.quote_status(buffer, index, packet, parent)

  -- Quote Status Response To: 1 Byte Ascii String Enum with 5 values
  index, quote_status_response_to = b3_equities_binaryentrypoint_sbe_v7_0_dissect.quote_status_response_to(buffer, index, packet, parent)

  -- Account: 4 Byte Unsigned Fixed Width Integer
  index, account = b3_equities_binaryentrypoint_sbe_v7_0_dissect.account(buffer, index, packet, parent)

  -- Side Optional: 1 Byte Ascii String Enum with 3 values
  index, side_optional = b3_equities_binaryentrypoint_sbe_v7_0_dissect.side_optional(buffer, index, packet, parent)

  -- SettlType Optional: 1 Byte Ascii String Enum with 4 values
  index, settltype_optional = b3_equities_binaryentrypoint_sbe_v7_0_dissect.settltype_optional(buffer, index, packet, parent)

  -- Price Optional: 8 Byte Signed Fixed Width Integer Nullable
  index, price_optional = b3_equities_binaryentrypoint_sbe_v7_0_dissect.price_optional(buffer, index, packet, parent)

  -- Order Qty: 8 Byte Unsigned Fixed Width Integer
  index, order_qty = b3_equities_binaryentrypoint_sbe_v7_0_dissect.order_qty(buffer, index, packet, parent)

  -- Sender Location: 10 Byte Ascii String
  index, sender_location = b3_equities_binaryentrypoint_sbe_v7_0_dissect.sender_location(buffer, index, packet, parent)

  -- Entering Trader: 5 Byte Ascii String
  index, entering_trader = b3_equities_binaryentrypoint_sbe_v7_0_dissect.entering_trader(buffer, index, packet, parent)

  -- Executing Trader: 5 Byte Ascii String
  index, executing_trader = b3_equities_binaryentrypoint_sbe_v7_0_dissect.executing_trader(buffer, index, packet, parent)

  -- Fixed Rate Optional: 8 Byte Signed Fixed Width Integer Nullable
  index, fixed_rate_optional = b3_equities_binaryentrypoint_sbe_v7_0_dissect.fixed_rate_optional(buffer, index, packet, parent)

  -- Execute Underlying Trade: 1 Byte Ascii String Enum with 3 values
  index, execute_underlying_trade = b3_equities_binaryentrypoint_sbe_v7_0_dissect.execute_underlying_trade(buffer, index, packet, parent)

  -- Days To Settlement Optional: 2 Byte Unsigned Fixed Width Integer
  index, days_to_settlement_optional = b3_equities_binaryentrypoint_sbe_v7_0_dissect.days_to_settlement_optional(buffer, index, packet, parent)

  -- Quote Req Id: Struct of 2 fields
  index, quote_req_id = b3_equities_binaryentrypoint_sbe_v7_0_dissect.quote_req_id(buffer, index, packet, parent)

  -- Desk Id: Struct of 2 fields
  index, desk_id = b3_equities_binaryentrypoint_sbe_v7_0_dissect.desk_id(buffer, index, packet, parent)

  -- Memo: Struct of 2 fields
  index, memo = b3_equities_binaryentrypoint_sbe_v7_0_dissect.memo(buffer, index, packet, parent)

  -- Text: Struct of 2 fields
  index, text = b3_equities_binaryentrypoint_sbe_v7_0_dissect.text(buffer, index, packet, parent)

  return index
end

-- Dissect: Quote Status Report Message
b3_equities_binaryentrypoint_sbe_v7_0_dissect.quote_status_report_message = function(buffer, offset, packet, parent)
  -- Optionally add dynamic struct element to protocol tree
  if show.quote_status_report_message then
    local length = b3_equities_binaryentrypoint_sbe_v7_0_size_of.quote_status_report_message(buffer, offset)
    local range = buffer(offset, length)
    local display = b3_equities_binaryentrypoint_sbe_v7_0_display.quote_status_report_message(buffer, packet, parent)
    parent = parent:add(b3_equities_binaryentrypoint_sbe_v7_0.fields.quote_status_report_message, range, display)
  end

  return b3_equities_binaryentrypoint_sbe_v7_0_dissect.quote_status_report_message_fields(buffer, offset, packet, parent)
end

-- Size: Price
b3_equities_binaryentrypoint_sbe_v7_0_size_of.price = 8

-- Display: Price
b3_equities_binaryentrypoint_sbe_v7_0_display.price = function(value)
  return "Price: "..value
end

-- Translate: Price
translate.price = function(raw)
  return raw:tonumber()/10000
end

-- Dissect: Price
b3_equities_binaryentrypoint_sbe_v7_0_dissect.price = function(buffer, offset, packet, parent)
  local length = b3_equities_binaryentrypoint_sbe_v7_0_size_of.price
  local range = buffer(offset, length)
  local raw = range:le_int64()
  local value = translate.price(raw)
  local display = b3_equities_binaryentrypoint_sbe_v7_0_display.price(value, buffer, offset, packet, parent)

  parent:add(b3_equities_binaryentrypoint_sbe_v7_0.fields.price, range, value, display)

  return offset + length, value
end

-- Calculate size of: Quote Request Message
b3_equities_binaryentrypoint_sbe_v7_0_size_of.quote_request_message = function(buffer, offset)
  local index = 0

  index = index + b3_equities_binaryentrypoint_sbe_v7_0_size_of.bidirectional_business_header(buffer, offset + index)

  index = index + b3_equities_binaryentrypoint_sbe_v7_0_size_of.security_id

  index = index + b3_equities_binaryentrypoint_sbe_v7_0_size_of.security_exchange

  index = index + b3_equities_binaryentrypoint_sbe_v7_0_size_of.quote_id_optional

  index = index + b3_equities_binaryentrypoint_sbe_v7_0_size_of.trade_id_optional

  index = index + b3_equities_binaryentrypoint_sbe_v7_0_size_of.contra_broker

  index = index + b3_equities_binaryentrypoint_sbe_v7_0_size_of.transact_time

  index = index + b3_equities_binaryentrypoint_sbe_v7_0_size_of.price

  index = index + b3_equities_binaryentrypoint_sbe_v7_0_size_of.settltype

  index = index + b3_equities_binaryentrypoint_sbe_v7_0_size_of.execute_underlying_trade

  index = index + b3_equities_binaryentrypoint_sbe_v7_0_size_of.order_qty

  index = index + b3_equities_binaryentrypoint_sbe_v7_0_size_of.sender_location

  index = index + b3_equities_binaryentrypoint_sbe_v7_0_size_of.entering_trader

  index = index + b3_equities_binaryentrypoint_sbe_v7_0_size_of.executing_trader

  index = index + b3_equities_binaryentrypoint_sbe_v7_0_size_of.fixed_rate

  index = index + b3_equities_binaryentrypoint_sbe_v7_0_size_of.days_to_settlement

  index = index + b3_equities_binaryentrypoint_sbe_v7_0_size_of.no_sides_groups(buffer, offset + index)

  index = index + b3_equities_binaryentrypoint_sbe_v7_0_size_of.quote_req_id(buffer, offset + index)

  index = index + b3_equities_binaryentrypoint_sbe_v7_0_size_of.desk_id(buffer, offset + index)

  index = index + b3_equities_binaryentrypoint_sbe_v7_0_size_of.memo(buffer, offset + index)

  return index
end

-- Display: Quote Request Message
b3_equities_binaryentrypoint_sbe_v7_0_display.quote_request_message = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Quote Request Message
b3_equities_binaryentrypoint_sbe_v7_0_dissect.quote_request_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Bidirectional Business Header: Struct of 6 fields
  index, bidirectional_business_header = b3_equities_binaryentrypoint_sbe_v7_0_dissect.bidirectional_business_header(buffer, index, packet, parent)

  -- Security Id: 8 Byte Unsigned Fixed Width Integer
  index, security_id = b3_equities_binaryentrypoint_sbe_v7_0_dissect.security_id(buffer, index, packet, parent)

  -- Security Exchange: 4 Byte Ascii String
  index, security_exchange = b3_equities_binaryentrypoint_sbe_v7_0_dissect.security_exchange(buffer, index, packet, parent)

  -- Quote Id Optional: 8 Byte Unsigned Fixed Width Integer
  index, quote_id_optional = b3_equities_binaryentrypoint_sbe_v7_0_dissect.quote_id_optional(buffer, index, packet, parent)

  -- Trade Id Optional: 4 Byte Unsigned Fixed Width Integer
  index, trade_id_optional = b3_equities_binaryentrypoint_sbe_v7_0_dissect.trade_id_optional(buffer, index, packet, parent)

  -- Contra Broker: 4 Byte Unsigned Fixed Width Integer
  index, contra_broker = b3_equities_binaryentrypoint_sbe_v7_0_dissect.contra_broker(buffer, index, packet, parent)

  -- Transact Time: 8 Byte Unsigned Fixed Width Integer
  index, transact_time = b3_equities_binaryentrypoint_sbe_v7_0_dissect.transact_time(buffer, index, packet, parent)

  -- Price: 8 Byte Signed Fixed Width Integer
  index, price = b3_equities_binaryentrypoint_sbe_v7_0_dissect.price(buffer, index, packet, parent)

  -- SettlType: 1 Byte Ascii String Enum with 3 values
  index, settltype = b3_equities_binaryentrypoint_sbe_v7_0_dissect.settltype(buffer, index, packet, parent)

  -- Execute Underlying Trade: 1 Byte Ascii String Enum with 3 values
  index, execute_underlying_trade = b3_equities_binaryentrypoint_sbe_v7_0_dissect.execute_underlying_trade(buffer, index, packet, parent)

  -- Order Qty: 8 Byte Unsigned Fixed Width Integer
  index, order_qty = b3_equities_binaryentrypoint_sbe_v7_0_dissect.order_qty(buffer, index, packet, parent)

  -- Sender Location: 10 Byte Ascii String
  index, sender_location = b3_equities_binaryentrypoint_sbe_v7_0_dissect.sender_location(buffer, index, packet, parent)

  -- Entering Trader: 5 Byte Ascii String
  index, entering_trader = b3_equities_binaryentrypoint_sbe_v7_0_dissect.entering_trader(buffer, index, packet, parent)

  -- Executing Trader: 5 Byte Ascii String
  index, executing_trader = b3_equities_binaryentrypoint_sbe_v7_0_dissect.executing_trader(buffer, index, packet, parent)

  -- Fixed Rate: 8 Byte Signed Fixed Width Integer
  index, fixed_rate = b3_equities_binaryentrypoint_sbe_v7_0_dissect.fixed_rate(buffer, index, packet, parent)

  -- Days To Settlement: 2 Byte Unsigned Fixed Width Integer
  index, days_to_settlement = b3_equities_binaryentrypoint_sbe_v7_0_dissect.days_to_settlement(buffer, index, packet, parent)

  -- No Sides Groups: Struct of 2 fields
  index, no_sides_groups = b3_equities_binaryentrypoint_sbe_v7_0_dissect.no_sides_groups(buffer, index, packet, parent)

  -- Quote Req Id: Struct of 2 fields
  index, quote_req_id = b3_equities_binaryentrypoint_sbe_v7_0_dissect.quote_req_id(buffer, index, packet, parent)

  -- Desk Id: Struct of 2 fields
  index, desk_id = b3_equities_binaryentrypoint_sbe_v7_0_dissect.desk_id(buffer, index, packet, parent)

  -- Memo: Struct of 2 fields
  index, memo = b3_equities_binaryentrypoint_sbe_v7_0_dissect.memo(buffer, index, packet, parent)

  return index
end

-- Dissect: Quote Request Message
b3_equities_binaryentrypoint_sbe_v7_0_dissect.quote_request_message = function(buffer, offset, packet, parent)
  -- Optionally add dynamic struct element to protocol tree
  if show.quote_request_message then
    local length = b3_equities_binaryentrypoint_sbe_v7_0_size_of.quote_request_message(buffer, offset)
    local range = buffer(offset, length)
    local display = b3_equities_binaryentrypoint_sbe_v7_0_display.quote_request_message(buffer, packet, parent)
    parent = parent:add(b3_equities_binaryentrypoint_sbe_v7_0.fields.quote_request_message, range, display)
  end

  return b3_equities_binaryentrypoint_sbe_v7_0_dissect.quote_request_message_fields(buffer, offset, packet, parent)
end

-- Size: Security Response Id
b3_equities_binaryentrypoint_sbe_v7_0_size_of.security_response_id = 8

-- Display: Security Response Id
b3_equities_binaryentrypoint_sbe_v7_0_display.security_response_id = function(value)
  return "Security Response Id: "..value
end

-- Dissect: Security Response Id
b3_equities_binaryentrypoint_sbe_v7_0_dissect.security_response_id = function(buffer, offset, packet, parent)
  local length = b3_equities_binaryentrypoint_sbe_v7_0_size_of.security_response_id
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = b3_equities_binaryentrypoint_sbe_v7_0_display.security_response_id(value, buffer, offset, packet, parent)

  parent:add(b3_equities_binaryentrypoint_sbe_v7_0.fields.security_response_id, range, value, display)

  return offset + length, value
end

-- Size: Symbol
b3_equities_binaryentrypoint_sbe_v7_0_size_of.symbol = 20

-- Display: Symbol
b3_equities_binaryentrypoint_sbe_v7_0_display.symbol = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Symbol: No Value"
  end

  return "Symbol: "..value
end

-- Dissect: Symbol
b3_equities_binaryentrypoint_sbe_v7_0_dissect.symbol = function(buffer, offset, packet, parent)
  local length = b3_equities_binaryentrypoint_sbe_v7_0_size_of.symbol
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

  local display = b3_equities_binaryentrypoint_sbe_v7_0_display.symbol(value, buffer, offset, packet, parent)

  parent:add(b3_equities_binaryentrypoint_sbe_v7_0.fields.symbol, range, value, display)

  return offset + length, value
end

-- Size: Security Strategy Type
b3_equities_binaryentrypoint_sbe_v7_0_size_of.security_strategy_type = 3

-- Display: Security Strategy Type
b3_equities_binaryentrypoint_sbe_v7_0_display.security_strategy_type = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Security Strategy Type: No Value"
  end

  return "Security Strategy Type: "..value
end

-- Dissect: Security Strategy Type
b3_equities_binaryentrypoint_sbe_v7_0_dissect.security_strategy_type = function(buffer, offset, packet, parent)
  local length = b3_equities_binaryentrypoint_sbe_v7_0_size_of.security_strategy_type
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

  local display = b3_equities_binaryentrypoint_sbe_v7_0_display.security_strategy_type(value, buffer, offset, packet, parent)

  parent:add(b3_equities_binaryentrypoint_sbe_v7_0.fields.security_strategy_type, range, value, display)

  return offset + length, value
end

-- Size: Security Response Type
b3_equities_binaryentrypoint_sbe_v7_0_size_of.security_response_type = 1

-- Display: Security Response Type
b3_equities_binaryentrypoint_sbe_v7_0_display.security_response_type = function(value)
  if value == 1 then
    return "Security Response Type: Acceptsecurityproposalasis (1)"
  end
  if value == 5 then
    return "Security Response Type: Rejectsecurityproposal (5)"
  end
  if value == 2 then
    return "Security Response Type: Acceptsecurityasproposalwithrevisions (2)"
  end

  return "Security Response Type: Unknown("..value..")"
end

-- Dissect: Security Response Type
b3_equities_binaryentrypoint_sbe_v7_0_dissect.security_response_type = function(buffer, offset, packet, parent)
  local length = b3_equities_binaryentrypoint_sbe_v7_0_size_of.security_response_type
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = b3_equities_binaryentrypoint_sbe_v7_0_display.security_response_type(value, buffer, offset, packet, parent)

  parent:add(b3_equities_binaryentrypoint_sbe_v7_0.fields.security_response_type, range, value, display)

  return offset + length, value
end

-- Size: Security Req Id
b3_equities_binaryentrypoint_sbe_v7_0_size_of.security_req_id = 8

-- Display: Security Req Id
b3_equities_binaryentrypoint_sbe_v7_0_display.security_req_id = function(value)
  return "Security Req Id: "..value
end

-- Dissect: Security Req Id
b3_equities_binaryentrypoint_sbe_v7_0_dissect.security_req_id = function(buffer, offset, packet, parent)
  local length = b3_equities_binaryentrypoint_sbe_v7_0_size_of.security_req_id
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = b3_equities_binaryentrypoint_sbe_v7_0_display.security_req_id(value, buffer, offset, packet, parent)

  parent:add(b3_equities_binaryentrypoint_sbe_v7_0.fields.security_req_id, range, value, display)

  return offset + length, value
end

-- Calculate size of: Security Definition Response Message
b3_equities_binaryentrypoint_sbe_v7_0_size_of.security_definition_response_message = function(buffer, offset)
  local index = 0

  index = index + b3_equities_binaryentrypoint_sbe_v7_0_size_of.outbound_business_header(buffer, offset + index)

  index = index + b3_equities_binaryentrypoint_sbe_v7_0_size_of.security_req_id

  index = index + b3_equities_binaryentrypoint_sbe_v7_0_size_of.security_id

  index = index + b3_equities_binaryentrypoint_sbe_v7_0_size_of.security_exchange

  index = index + b3_equities_binaryentrypoint_sbe_v7_0_size_of.security_response_type

  index = index + b3_equities_binaryentrypoint_sbe_v7_0_size_of.security_strategy_type

  index = index + b3_equities_binaryentrypoint_sbe_v7_0_size_of.symbol

  index = index + b3_equities_binaryentrypoint_sbe_v7_0_size_of.security_response_id

  index = index + b3_equities_binaryentrypoint_sbe_v7_0_size_of.sender_location

  index = index + b3_equities_binaryentrypoint_sbe_v7_0_size_of.entering_trader

  return index
end

-- Display: Security Definition Response Message
b3_equities_binaryentrypoint_sbe_v7_0_display.security_definition_response_message = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Security Definition Response Message
b3_equities_binaryentrypoint_sbe_v7_0_dissect.security_definition_response_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Outbound Business Header: Struct of 5 fields
  index, outbound_business_header = b3_equities_binaryentrypoint_sbe_v7_0_dissect.outbound_business_header(buffer, index, packet, parent)

  -- Security Req Id: 8 Byte Unsigned Fixed Width Integer
  index, security_req_id = b3_equities_binaryentrypoint_sbe_v7_0_dissect.security_req_id(buffer, index, packet, parent)

  -- Security Id: 8 Byte Unsigned Fixed Width Integer
  index, security_id = b3_equities_binaryentrypoint_sbe_v7_0_dissect.security_id(buffer, index, packet, parent)

  -- Security Exchange: 4 Byte Ascii String
  index, security_exchange = b3_equities_binaryentrypoint_sbe_v7_0_dissect.security_exchange(buffer, index, packet, parent)

  -- Security Response Type: 1 Byte Unsigned Fixed Width Integer Enum with 3 values
  index, security_response_type = b3_equities_binaryentrypoint_sbe_v7_0_dissect.security_response_type(buffer, index, packet, parent)

  -- Security Strategy Type: 3 Byte Ascii String
  index, security_strategy_type = b3_equities_binaryentrypoint_sbe_v7_0_dissect.security_strategy_type(buffer, index, packet, parent)

  -- Symbol: 20 Byte Ascii String
  index, symbol = b3_equities_binaryentrypoint_sbe_v7_0_dissect.symbol(buffer, index, packet, parent)

  -- Security Response Id: 8 Byte Unsigned Fixed Width Integer
  index, security_response_id = b3_equities_binaryentrypoint_sbe_v7_0_dissect.security_response_id(buffer, index, packet, parent)

  -- Sender Location: 10 Byte Ascii String
  index, sender_location = b3_equities_binaryentrypoint_sbe_v7_0_dissect.sender_location(buffer, index, packet, parent)

  -- Entering Trader: 5 Byte Ascii String
  index, entering_trader = b3_equities_binaryentrypoint_sbe_v7_0_dissect.entering_trader(buffer, index, packet, parent)

  return index
end

-- Dissect: Security Definition Response Message
b3_equities_binaryentrypoint_sbe_v7_0_dissect.security_definition_response_message = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.security_definition_response_message then
    local length = b3_equities_binaryentrypoint_sbe_v7_0_size_of.security_definition_response_message(buffer, offset)
    local range = buffer(offset, length)
    local display = b3_equities_binaryentrypoint_sbe_v7_0_display.security_definition_response_message(buffer, packet, parent)
    parent = parent:add(b3_equities_binaryentrypoint_sbe_v7_0.fields.security_definition_response_message, range, display)
  end

  return b3_equities_binaryentrypoint_sbe_v7_0_dissect.security_definition_response_message_fields(buffer, offset, packet, parent)
end

-- Size: Leg Side
b3_equities_binaryentrypoint_sbe_v7_0_size_of.leg_side = 1

-- Display: Leg Side
b3_equities_binaryentrypoint_sbe_v7_0_display.leg_side = function(value)
  -- Check if field has value
  if value == nil or value == 0 then
    return "Leg Side: No Value"
  end

  if value == "1" then
    return "Leg Side: Buy (1)"
  end
  if value == "2" then
    return "Leg Side: Sell (2)"
  end
  if value == 0 then
    return "Leg Side: No Value"
  end

  return "Leg Side: Unknown("..value..")"
end

-- Dissect: Leg Side
b3_equities_binaryentrypoint_sbe_v7_0_dissect.leg_side = function(buffer, offset, packet, parent)
  local length = b3_equities_binaryentrypoint_sbe_v7_0_size_of.leg_side
  local range = buffer(offset, length)

  -- parse as byte
  local value = range:uint()

  -- check if value is non zero
  if value ~= 0 then
    value = range:string()
  end

  local display = b3_equities_binaryentrypoint_sbe_v7_0_display.leg_side(value, buffer, offset, packet, parent)

  parent:add(b3_equities_binaryentrypoint_sbe_v7_0.fields.leg_side, range, value, display)

  return offset + length, value
end

-- Size: Leg Ratio Qty
b3_equities_binaryentrypoint_sbe_v7_0_size_of.leg_ratio_qty = 8

-- Display: Leg Ratio Qty
b3_equities_binaryentrypoint_sbe_v7_0_display.leg_ratio_qty = function(value)
  return "Leg Ratio Qty: "..value
end

-- Translate: Leg Ratio Qty
translate.leg_ratio_qty = function(raw)
  return raw:tonumber()/10000000
end

-- Dissect: Leg Ratio Qty
b3_equities_binaryentrypoint_sbe_v7_0_dissect.leg_ratio_qty = function(buffer, offset, packet, parent)
  local length = b3_equities_binaryentrypoint_sbe_v7_0_size_of.leg_ratio_qty
  local range = buffer(offset, length)
  local raw = range:le_int64()
  local value = translate.leg_ratio_qty(raw)
  local display = b3_equities_binaryentrypoint_sbe_v7_0_display.leg_ratio_qty(value, buffer, offset, packet, parent)

  parent:add(b3_equities_binaryentrypoint_sbe_v7_0.fields.leg_ratio_qty, range, value, display)

  return offset + length, value
end

-- Size: Leg Security Exchange
b3_equities_binaryentrypoint_sbe_v7_0_size_of.leg_security_exchange = 4

-- Display: Leg Security Exchange
b3_equities_binaryentrypoint_sbe_v7_0_display.leg_security_exchange = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Leg Security Exchange: No Value"
  end

  return "Leg Security Exchange: "..value
end

-- Dissect: Leg Security Exchange
b3_equities_binaryentrypoint_sbe_v7_0_dissect.leg_security_exchange = function(buffer, offset, packet, parent)
  local length = b3_equities_binaryentrypoint_sbe_v7_0_size_of.leg_security_exchange
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

  local display = b3_equities_binaryentrypoint_sbe_v7_0_display.leg_security_exchange(value, buffer, offset, packet, parent)

  parent:add(b3_equities_binaryentrypoint_sbe_v7_0.fields.leg_security_exchange, range, value, display)

  return offset + length, value
end

-- Size: Leg Symbol
b3_equities_binaryentrypoint_sbe_v7_0_size_of.leg_symbol = 20

-- Display: Leg Symbol
b3_equities_binaryentrypoint_sbe_v7_0_display.leg_symbol = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Leg Symbol: No Value"
  end

  return "Leg Symbol: "..value
end

-- Dissect: Leg Symbol
b3_equities_binaryentrypoint_sbe_v7_0_dissect.leg_symbol = function(buffer, offset, packet, parent)
  local length = b3_equities_binaryentrypoint_sbe_v7_0_size_of.leg_symbol
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

  local display = b3_equities_binaryentrypoint_sbe_v7_0_display.leg_symbol(value, buffer, offset, packet, parent)

  parent:add(b3_equities_binaryentrypoint_sbe_v7_0.fields.leg_symbol, range, value, display)

  return offset + length, value
end

-- Calculate size of: No Legs Group
b3_equities_binaryentrypoint_sbe_v7_0_size_of.no_legs_group = function(buffer, offset)
  local index = 0

  index = index + b3_equities_binaryentrypoint_sbe_v7_0_size_of.leg_symbol

  index = index + b3_equities_binaryentrypoint_sbe_v7_0_size_of.leg_security_exchange

  index = index + b3_equities_binaryentrypoint_sbe_v7_0_size_of.leg_ratio_qty

  index = index + b3_equities_binaryentrypoint_sbe_v7_0_size_of.leg_side

  return index
end

-- Display: No Legs Group
b3_equities_binaryentrypoint_sbe_v7_0_display.no_legs_group = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: No Legs Group
b3_equities_binaryentrypoint_sbe_v7_0_dissect.no_legs_group_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Leg Symbol: 20 Byte Ascii String
  index, leg_symbol = b3_equities_binaryentrypoint_sbe_v7_0_dissect.leg_symbol(buffer, index, packet, parent)

  -- Leg Security Exchange: 4 Byte Ascii String
  index, leg_security_exchange = b3_equities_binaryentrypoint_sbe_v7_0_dissect.leg_security_exchange(buffer, index, packet, parent)

  -- Leg Ratio Qty: 8 Byte Signed Fixed Width Integer
  index, leg_ratio_qty = b3_equities_binaryentrypoint_sbe_v7_0_dissect.leg_ratio_qty(buffer, index, packet, parent)

  -- Leg Side: 1 Byte Ascii String Enum with 3 values
  index, leg_side = b3_equities_binaryentrypoint_sbe_v7_0_dissect.leg_side(buffer, index, packet, parent)

  return index
end

-- Dissect: No Legs Group
b3_equities_binaryentrypoint_sbe_v7_0_dissect.no_legs_group = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.no_legs_group then
    local length = b3_equities_binaryentrypoint_sbe_v7_0_size_of.no_legs_group(buffer, offset)
    local range = buffer(offset, length)
    local display = b3_equities_binaryentrypoint_sbe_v7_0_display.no_legs_group(buffer, packet, parent)
    parent = parent:add(b3_equities_binaryentrypoint_sbe_v7_0.fields.no_legs_group, range, display)
  end

  return b3_equities_binaryentrypoint_sbe_v7_0_dissect.no_legs_group_fields(buffer, offset, packet, parent)
end

-- Calculate size of: No Legs Groups
b3_equities_binaryentrypoint_sbe_v7_0_size_of.no_legs_groups = function(buffer, offset)
  local index = 0

  index = index + b3_equities_binaryentrypoint_sbe_v7_0_size_of.group_size_encoding(buffer, offset + index)

  -- Calculate field size from count
  local no_legs_group_count = buffer(offset + index - 1, 1):le_uint()
  index = index + no_legs_group_count * 33

  return index
end

-- Display: No Legs Groups
b3_equities_binaryentrypoint_sbe_v7_0_display.no_legs_groups = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: No Legs Groups
b3_equities_binaryentrypoint_sbe_v7_0_dissect.no_legs_groups_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Group Size Encoding: Struct of 2 fields
  index, group_size_encoding = b3_equities_binaryentrypoint_sbe_v7_0_dissect.group_size_encoding(buffer, index, packet, parent)

  -- Dependency element: Num In Group
  local num_in_group = buffer(index - 1, 1):le_uint()

  -- No Legs Group: Struct of 4 fields
  for i = 1, num_in_group do
    index = b3_equities_binaryentrypoint_sbe_v7_0_dissect.no_legs_group(buffer, index, packet, parent)
  end

  return index
end

-- Dissect: No Legs Groups
b3_equities_binaryentrypoint_sbe_v7_0_dissect.no_legs_groups = function(buffer, offset, packet, parent)
  -- Optionally add dynamic struct element to protocol tree
  if show.no_legs_groups then
    local length = b3_equities_binaryentrypoint_sbe_v7_0_size_of.no_legs_groups(buffer, offset)
    local range = buffer(offset, length)
    local display = b3_equities_binaryentrypoint_sbe_v7_0_display.no_legs_groups(buffer, packet, parent)
    parent = parent:add(b3_equities_binaryentrypoint_sbe_v7_0.fields.no_legs_groups, range, display)
  end

  return b3_equities_binaryentrypoint_sbe_v7_0_dissect.no_legs_groups_fields(buffer, offset, packet, parent)
end

-- Calculate size of: Security Definition Request Message
b3_equities_binaryentrypoint_sbe_v7_0_size_of.security_definition_request_message = function(buffer, offset)
  local index = 0

  index = index + b3_equities_binaryentrypoint_sbe_v7_0_size_of.inbound_business_header(buffer, offset + index)

  index = index + b3_equities_binaryentrypoint_sbe_v7_0_size_of.security_req_id

  index = index + b3_equities_binaryentrypoint_sbe_v7_0_size_of.sender_location

  index = index + b3_equities_binaryentrypoint_sbe_v7_0_size_of.entering_trader

  index = index + b3_equities_binaryentrypoint_sbe_v7_0_size_of.no_legs_groups(buffer, offset + index)

  return index
end

-- Display: Security Definition Request Message
b3_equities_binaryentrypoint_sbe_v7_0_display.security_definition_request_message = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Security Definition Request Message
b3_equities_binaryentrypoint_sbe_v7_0_dissect.security_definition_request_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Inbound Business Header: Struct of 5 fields
  index, inbound_business_header = b3_equities_binaryentrypoint_sbe_v7_0_dissect.inbound_business_header(buffer, index, packet, parent)

  -- Security Req Id: 8 Byte Unsigned Fixed Width Integer
  index, security_req_id = b3_equities_binaryentrypoint_sbe_v7_0_dissect.security_req_id(buffer, index, packet, parent)

  -- Sender Location: 10 Byte Ascii String
  index, sender_location = b3_equities_binaryentrypoint_sbe_v7_0_dissect.sender_location(buffer, index, packet, parent)

  -- Entering Trader: 5 Byte Ascii String
  index, entering_trader = b3_equities_binaryentrypoint_sbe_v7_0_dissect.entering_trader(buffer, index, packet, parent)

  -- No Legs Groups: Struct of 2 fields
  index, no_legs_groups = b3_equities_binaryentrypoint_sbe_v7_0_dissect.no_legs_groups(buffer, index, packet, parent)

  return index
end

-- Dissect: Security Definition Request Message
b3_equities_binaryentrypoint_sbe_v7_0_dissect.security_definition_request_message = function(buffer, offset, packet, parent)
  -- Optionally add dynamic struct element to protocol tree
  if show.security_definition_request_message then
    local length = b3_equities_binaryentrypoint_sbe_v7_0_size_of.security_definition_request_message(buffer, offset)
    local range = buffer(offset, length)
    local display = b3_equities_binaryentrypoint_sbe_v7_0_display.security_definition_request_message(buffer, packet, parent)
    parent = parent:add(b3_equities_binaryentrypoint_sbe_v7_0.fields.security_definition_request_message, range, display)
  end

  return b3_equities_binaryentrypoint_sbe_v7_0_dissect.security_definition_request_message_fields(buffer, offset, packet, parent)
end

-- Size: Business Reject Reason
b3_equities_binaryentrypoint_sbe_v7_0_size_of.business_reject_reason = 4

-- Display: Business Reject Reason
b3_equities_binaryentrypoint_sbe_v7_0_display.business_reject_reason = function(value)
  return "Business Reject Reason: "..value
end

-- Dissect: Business Reject Reason
b3_equities_binaryentrypoint_sbe_v7_0_dissect.business_reject_reason = function(buffer, offset, packet, parent)
  local length = b3_equities_binaryentrypoint_sbe_v7_0_size_of.business_reject_reason
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = b3_equities_binaryentrypoint_sbe_v7_0_display.business_reject_reason(value, buffer, offset, packet, parent)

  parent:add(b3_equities_binaryentrypoint_sbe_v7_0.fields.business_reject_reason, range, value, display)

  return offset + length, value
end

-- Size: Business Reject Ref Id
b3_equities_binaryentrypoint_sbe_v7_0_size_of.business_reject_ref_id = 8

-- Display: Business Reject Ref Id
b3_equities_binaryentrypoint_sbe_v7_0_display.business_reject_ref_id = function(value)
  return "Business Reject Ref Id: "..value
end

-- Dissect: Business Reject Ref Id
b3_equities_binaryentrypoint_sbe_v7_0_dissect.business_reject_ref_id = function(buffer, offset, packet, parent)
  local length = b3_equities_binaryentrypoint_sbe_v7_0_size_of.business_reject_ref_id
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = b3_equities_binaryentrypoint_sbe_v7_0_display.business_reject_ref_id(value, buffer, offset, packet, parent)

  parent:add(b3_equities_binaryentrypoint_sbe_v7_0.fields.business_reject_ref_id, range, value, display)

  return offset + length, value
end

-- Size: Ref Seq Num
b3_equities_binaryentrypoint_sbe_v7_0_size_of.ref_seq_num = 4

-- Display: Ref Seq Num
b3_equities_binaryentrypoint_sbe_v7_0_display.ref_seq_num = function(value)
  return "Ref Seq Num: "..value
end

-- Dissect: Ref Seq Num
b3_equities_binaryentrypoint_sbe_v7_0_dissect.ref_seq_num = function(buffer, offset, packet, parent)
  local length = b3_equities_binaryentrypoint_sbe_v7_0_size_of.ref_seq_num
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = b3_equities_binaryentrypoint_sbe_v7_0_display.ref_seq_num(value, buffer, offset, packet, parent)

  parent:add(b3_equities_binaryentrypoint_sbe_v7_0.fields.ref_seq_num, range, value, display)

  return offset + length, value
end

-- Size: Ref Msg Type
b3_equities_binaryentrypoint_sbe_v7_0_size_of.ref_msg_type = 1

-- Display: Ref Msg Type
b3_equities_binaryentrypoint_sbe_v7_0_display.ref_msg_type = function(value)
  if value == 0 then
    return "Ref Msg Type: Negotiate (0)"
  end
  if value == 1 then
    return "Ref Msg Type: Negotiate Response (1)"
  end
  if value == 2 then
    return "Ref Msg Type: Negotiate Reject (2)"
  end
  if value == 3 then
    return "Ref Msg Type: Establish (3)"
  end
  if value == 4 then
    return "Ref Msg Type: Establish Ack (4)"
  end
  if value == 5 then
    return "Ref Msg Type: Establish Reject (5)"
  end
  if value == 6 then
    return "Ref Msg Type: Terminate (6)"
  end
  if value == 9 then
    return "Ref Msg Type: Not Applied (9)"
  end
  if value == 10 then
    return "Ref Msg Type: Retransmit Request (10)"
  end
  if value == 11 then
    return "Ref Msg Type: Retransmission (11)"
  end
  if value == 12 then
    return "Ref Msg Type: Retransmit Reject (12)"
  end
  if value == 13 then
    return "Ref Msg Type: Sequence (13)"
  end
  if value == 14 then
    return "Ref Msg Type: Business Message Reject (14)"
  end
  if value == 15 then
    return "Ref Msg Type: Simple New Order (15)"
  end
  if value == 16 then
    return "Ref Msg Type: Simple Modify Order (16)"
  end
  if value == 17 then
    return "Ref Msg Type: New Order Single (17)"
  end
  if value == 18 then
    return "Ref Msg Type: Order Cancel Replace Request (18)"
  end
  if value == 19 then
    return "Ref Msg Type: Order Cancel Request (19)"
  end
  if value == 20 then
    return "Ref Msg Type: New Order Cross (20)"
  end
  if value == 21 then
    return "Ref Msg Type: Execution Report New (21)"
  end
  if value == 22 then
    return "Ref Msg Type: Execution Report Modify (22)"
  end
  if value == 23 then
    return "Ref Msg Type: Execution Report Cancel (23)"
  end
  if value == 24 then
    return "Ref Msg Type: Execution Report Trade (24)"
  end
  if value == 25 then
    return "Ref Msg Type: Execution Report Reject (25)"
  end
  if value == 26 then
    return "Ref Msg Type: Execution Report Forward (26)"
  end
  if value == 27 then
    return "Ref Msg Type: Security Definition Request (27)"
  end
  if value == 28 then
    return "Ref Msg Type: Security Definition Response (28)"
  end
  if value == 29 then
    return "Ref Msg Type: Order Mass Action Request (29)"
  end
  if value == 30 then
    return "Ref Msg Type: Order Mass Action Report (30)"
  end
  if value == 31 then
    return "Ref Msg Type: Quote Request (31)"
  end
  if value == 32 then
    return "Ref Msg Type: Quote Status Report (32)"
  end
  if value == 33 then
    return "Ref Msg Type: Quote (33)"
  end
  if value == 34 then
    return "Ref Msg Type: Quote Cancel (34)"
  end
  if value == 35 then
    return "Ref Msg Type: Quote Request Reject (35)"
  end
  if value == 36 then
    return "Ref Msg Type: Position Maintenance Cancel Request (36)"
  end
  if value == 37 then
    return "Ref Msg Type: Position Maintenance Request (37)"
  end
  if value == 38 then
    return "Ref Msg Type: Position Maintenance Report (38)"
  end
  if value == 39 then
    return "Ref Msg Type: Allocation Instruction (39)"
  end
  if value == 40 then
    return "Ref Msg Type: Allocation Report (40)"
  end

  return "Ref Msg Type: Unknown("..value..")"
end

-- Dissect: Ref Msg Type
b3_equities_binaryentrypoint_sbe_v7_0_dissect.ref_msg_type = function(buffer, offset, packet, parent)
  local length = b3_equities_binaryentrypoint_sbe_v7_0_size_of.ref_msg_type
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = b3_equities_binaryentrypoint_sbe_v7_0_display.ref_msg_type(value, buffer, offset, packet, parent)

  parent:add(b3_equities_binaryentrypoint_sbe_v7_0.fields.ref_msg_type, range, value, display)

  return offset + length, value
end

-- Calculate size of: Business Message Reject
b3_equities_binaryentrypoint_sbe_v7_0_size_of.business_message_reject = function(buffer, offset)
  local index = 0

  index = index + b3_equities_binaryentrypoint_sbe_v7_0_size_of.outbound_business_header(buffer, offset + index)

  index = index + b3_equities_binaryentrypoint_sbe_v7_0_size_of.ref_msg_type

  index = index + b3_equities_binaryentrypoint_sbe_v7_0_size_of.ref_seq_num

  index = index + b3_equities_binaryentrypoint_sbe_v7_0_size_of.business_reject_ref_id

  index = index + b3_equities_binaryentrypoint_sbe_v7_0_size_of.business_reject_reason

  index = index + b3_equities_binaryentrypoint_sbe_v7_0_size_of.memo(buffer, offset + index)

  index = index + b3_equities_binaryentrypoint_sbe_v7_0_size_of.text(buffer, offset + index)

  return index
end

-- Display: Business Message Reject
b3_equities_binaryentrypoint_sbe_v7_0_display.business_message_reject = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Business Message Reject
b3_equities_binaryentrypoint_sbe_v7_0_dissect.business_message_reject_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Outbound Business Header: Struct of 5 fields
  index, outbound_business_header = b3_equities_binaryentrypoint_sbe_v7_0_dissect.outbound_business_header(buffer, index, packet, parent)

  -- Ref Msg Type: 1 Byte Unsigned Fixed Width Integer Enum with 39 values
  index, ref_msg_type = b3_equities_binaryentrypoint_sbe_v7_0_dissect.ref_msg_type(buffer, index, packet, parent)

  -- Ref Seq Num: 4 Byte Unsigned Fixed Width Integer
  index, ref_seq_num = b3_equities_binaryentrypoint_sbe_v7_0_dissect.ref_seq_num(buffer, index, packet, parent)

  -- Business Reject Ref Id: 8 Byte Unsigned Fixed Width Integer
  index, business_reject_ref_id = b3_equities_binaryentrypoint_sbe_v7_0_dissect.business_reject_ref_id(buffer, index, packet, parent)

  -- Business Reject Reason: 4 Byte Unsigned Fixed Width Integer
  index, business_reject_reason = b3_equities_binaryentrypoint_sbe_v7_0_dissect.business_reject_reason(buffer, index, packet, parent)

  -- Memo: Struct of 2 fields
  index, memo = b3_equities_binaryentrypoint_sbe_v7_0_dissect.memo(buffer, index, packet, parent)

  -- Text: Struct of 2 fields
  index, text = b3_equities_binaryentrypoint_sbe_v7_0_dissect.text(buffer, index, packet, parent)

  return index
end

-- Dissect: Business Message Reject
b3_equities_binaryentrypoint_sbe_v7_0_dissect.business_message_reject = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.business_message_reject then
    local length = b3_equities_binaryentrypoint_sbe_v7_0_size_of.business_message_reject(buffer, offset)
    local range = buffer(offset, length)
    local display = b3_equities_binaryentrypoint_sbe_v7_0_display.business_message_reject(buffer, packet, parent)
    parent = parent:add(b3_equities_binaryentrypoint_sbe_v7_0.fields.business_message_reject, range, display)
  end

  return b3_equities_binaryentrypoint_sbe_v7_0_dissect.business_message_reject_fields(buffer, offset, packet, parent)
end

-- Size: Exec Ref Id
b3_equities_binaryentrypoint_sbe_v7_0_size_of.exec_ref_id = 8

-- Display: Exec Ref Id
b3_equities_binaryentrypoint_sbe_v7_0_display.exec_ref_id = function(value)
  return "Exec Ref Id: "..value
end

-- Dissect: Exec Ref Id
b3_equities_binaryentrypoint_sbe_v7_0_dissect.exec_ref_id = function(buffer, offset, packet, parent)
  local length = b3_equities_binaryentrypoint_sbe_v7_0_size_of.exec_ref_id
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = b3_equities_binaryentrypoint_sbe_v7_0_display.exec_ref_id(value, buffer, offset, packet, parent)

  parent:add(b3_equities_binaryentrypoint_sbe_v7_0.fields.exec_ref_id, range, value, display)

  return offset + length, value
end

-- Size: Secondary Exec Id
b3_equities_binaryentrypoint_sbe_v7_0_size_of.secondary_exec_id = 8

-- Display: Secondary Exec Id
b3_equities_binaryentrypoint_sbe_v7_0_display.secondary_exec_id = function(value)
  return "Secondary Exec Id: "..value
end

-- Dissect: Secondary Exec Id
b3_equities_binaryentrypoint_sbe_v7_0_dissect.secondary_exec_id = function(buffer, offset, packet, parent)
  local length = b3_equities_binaryentrypoint_sbe_v7_0_size_of.secondary_exec_id
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = b3_equities_binaryentrypoint_sbe_v7_0_display.secondary_exec_id(value, buffer, offset, packet, parent)

  parent:add(b3_equities_binaryentrypoint_sbe_v7_0.fields.secondary_exec_id, range, value, display)

  return offset + length, value
end

-- Size: Trade Date
b3_equities_binaryentrypoint_sbe_v7_0_size_of.trade_date = 2

-- Display: Trade Date
b3_equities_binaryentrypoint_sbe_v7_0_display.trade_date = function(value)
  return "Trade Date: "..value
end

-- Dissect: Trade Date
b3_equities_binaryentrypoint_sbe_v7_0_dissect.trade_date = function(buffer, offset, packet, parent)
  local length = b3_equities_binaryentrypoint_sbe_v7_0_size_of.trade_date
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = b3_equities_binaryentrypoint_sbe_v7_0_display.trade_date(value, buffer, offset, packet, parent)

  parent:add(b3_equities_binaryentrypoint_sbe_v7_0.fields.trade_date, range, value, display)

  return offset + length, value
end

-- Size: Aggressor Indicator
b3_equities_binaryentrypoint_sbe_v7_0_size_of.aggressor_indicator = 1

-- Display: Aggressor Indicator
b3_equities_binaryentrypoint_sbe_v7_0_display.aggressor_indicator = function(value)
  if value == 0 then
    return "Aggressor Indicator: Falsevalue (0)"
  end
  if value == 1 then
    return "Aggressor Indicator: Truevalue (1)"
  end

  return "Aggressor Indicator: Unknown("..value..")"
end

-- Dissect: Aggressor Indicator
b3_equities_binaryentrypoint_sbe_v7_0_dissect.aggressor_indicator = function(buffer, offset, packet, parent)
  local length = b3_equities_binaryentrypoint_sbe_v7_0_size_of.aggressor_indicator
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = b3_equities_binaryentrypoint_sbe_v7_0_display.aggressor_indicator(value, buffer, offset, packet, parent)

  parent:add(b3_equities_binaryentrypoint_sbe_v7_0.fields.aggressor_indicator, range, value, display)

  return offset + length, value
end

-- Size: Order Id
b3_equities_binaryentrypoint_sbe_v7_0_size_of.order_id = 8

-- Display: Order Id
b3_equities_binaryentrypoint_sbe_v7_0_display.order_id = function(value)
  return "Order Id: "..value
end

-- Dissect: Order Id
b3_equities_binaryentrypoint_sbe_v7_0_dissect.order_id = function(buffer, offset, packet, parent)
  local length = b3_equities_binaryentrypoint_sbe_v7_0_size_of.order_id
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = b3_equities_binaryentrypoint_sbe_v7_0_display.order_id(value, buffer, offset, packet, parent)

  parent:add(b3_equities_binaryentrypoint_sbe_v7_0.fields.order_id, range, value, display)

  return offset + length, value
end

-- Size: Cum Qty
b3_equities_binaryentrypoint_sbe_v7_0_size_of.cum_qty = 8

-- Display: Cum Qty
b3_equities_binaryentrypoint_sbe_v7_0_display.cum_qty = function(value)
  return "Cum Qty: "..value
end

-- Dissect: Cum Qty
b3_equities_binaryentrypoint_sbe_v7_0_dissect.cum_qty = function(buffer, offset, packet, parent)
  local length = b3_equities_binaryentrypoint_sbe_v7_0_size_of.cum_qty
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = b3_equities_binaryentrypoint_sbe_v7_0_display.cum_qty(value, buffer, offset, packet, parent)

  parent:add(b3_equities_binaryentrypoint_sbe_v7_0.fields.cum_qty, range, value, display)

  return offset + length, value
end

-- Size: Leaves Qty
b3_equities_binaryentrypoint_sbe_v7_0_size_of.leaves_qty = 8

-- Display: Leaves Qty
b3_equities_binaryentrypoint_sbe_v7_0_display.leaves_qty = function(value)
  return "Leaves Qty: "..value
end

-- Dissect: Leaves Qty
b3_equities_binaryentrypoint_sbe_v7_0_dissect.leaves_qty = function(buffer, offset, packet, parent)
  local length = b3_equities_binaryentrypoint_sbe_v7_0_size_of.leaves_qty
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = b3_equities_binaryentrypoint_sbe_v7_0_display.leaves_qty(value, buffer, offset, packet, parent)

  parent:add(b3_equities_binaryentrypoint_sbe_v7_0.fields.leaves_qty, range, value, display)

  return offset + length, value
end

-- Size: Exec Id
b3_equities_binaryentrypoint_sbe_v7_0_size_of.exec_id = 8

-- Display: Exec Id
b3_equities_binaryentrypoint_sbe_v7_0_display.exec_id = function(value)
  return "Exec Id: "..value
end

-- Dissect: Exec Id
b3_equities_binaryentrypoint_sbe_v7_0_dissect.exec_id = function(buffer, offset, packet, parent)
  local length = b3_equities_binaryentrypoint_sbe_v7_0_size_of.exec_id
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = b3_equities_binaryentrypoint_sbe_v7_0_display.exec_id(value, buffer, offset, packet, parent)

  parent:add(b3_equities_binaryentrypoint_sbe_v7_0.fields.exec_id, range, value, display)

  return offset + length, value
end

-- Size: Last Px
b3_equities_binaryentrypoint_sbe_v7_0_size_of.last_px = 8

-- Display: Last Px
b3_equities_binaryentrypoint_sbe_v7_0_display.last_px = function(value)
  return "Last Px: "..value
end

-- Translate: Last Px
translate.last_px = function(raw)
  return raw:tonumber()/10000
end

-- Dissect: Last Px
b3_equities_binaryentrypoint_sbe_v7_0_dissect.last_px = function(buffer, offset, packet, parent)
  local length = b3_equities_binaryentrypoint_sbe_v7_0_size_of.last_px
  local range = buffer(offset, length)
  local raw = range:le_int64()
  local value = translate.last_px(raw)
  local display = b3_equities_binaryentrypoint_sbe_v7_0_display.last_px(value, buffer, offset, packet, parent)

  parent:add(b3_equities_binaryentrypoint_sbe_v7_0.fields.last_px, range, value, display)

  return offset + length, value
end

-- Size: Last Qty
b3_equities_binaryentrypoint_sbe_v7_0_size_of.last_qty = 8

-- Display: Last Qty
b3_equities_binaryentrypoint_sbe_v7_0_display.last_qty = function(value)
  return "Last Qty: "..value
end

-- Dissect: Last Qty
b3_equities_binaryentrypoint_sbe_v7_0_dissect.last_qty = function(buffer, offset, packet, parent)
  local length = b3_equities_binaryentrypoint_sbe_v7_0_size_of.last_qty
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = b3_equities_binaryentrypoint_sbe_v7_0_display.last_qty(value, buffer, offset, packet, parent)

  parent:add(b3_equities_binaryentrypoint_sbe_v7_0.fields.last_qty, range, value, display)

  return offset + length, value
end

-- Size: Secondary Order Id
b3_equities_binaryentrypoint_sbe_v7_0_size_of.secondary_order_id = 8

-- Display: Secondary Order Id
b3_equities_binaryentrypoint_sbe_v7_0_display.secondary_order_id = function(value)
  return "Secondary Order Id: "..value
end

-- Dissect: Secondary Order Id
b3_equities_binaryentrypoint_sbe_v7_0_dissect.secondary_order_id = function(buffer, offset, packet, parent)
  local length = b3_equities_binaryentrypoint_sbe_v7_0_size_of.secondary_order_id
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = b3_equities_binaryentrypoint_sbe_v7_0_display.secondary_order_id(value, buffer, offset, packet, parent)

  parent:add(b3_equities_binaryentrypoint_sbe_v7_0.fields.secondary_order_id, range, value, display)

  return offset + length, value
end

-- Size: ClOrdId Optional
b3_equities_binaryentrypoint_sbe_v7_0_size_of.clordid_optional = 8

-- Display: ClOrdId Optional
b3_equities_binaryentrypoint_sbe_v7_0_display.clordid_optional = function(value)
  return "ClOrdId Optional: "..value
end

-- Dissect: ClOrdId Optional
b3_equities_binaryentrypoint_sbe_v7_0_dissect.clordid_optional = function(buffer, offset, packet, parent)
  local length = b3_equities_binaryentrypoint_sbe_v7_0_size_of.clordid_optional
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = b3_equities_binaryentrypoint_sbe_v7_0_display.clordid_optional(value, buffer, offset, packet, parent)

  parent:add(b3_equities_binaryentrypoint_sbe_v7_0.fields.clordid_optional, range, value, display)

  return offset + length, value
end

-- Size: Ord Status
b3_equities_binaryentrypoint_sbe_v7_0_size_of.ord_status = 1

-- Display: Ord Status
b3_equities_binaryentrypoint_sbe_v7_0_display.ord_status = function(value)
  -- Check if field has value
  if value == nil or value == 0 then
    return "Ord Status: No Value"
  end

  if value == "0" then
    return "Ord Status: New (0)"
  end
  if value == "1" then
    return "Ord Status: Partiallyfilled (1)"
  end
  if value == "2" then
    return "Ord Status: Filled (2)"
  end
  if value == "4" then
    return "Ord Status: Canceled (4)"
  end
  if value == "5" then
    return "Ord Status: Replaced (5)"
  end
  if value == "8" then
    return "Ord Status: Rejected (8)"
  end
  if value == "C" then
    return "Ord Status: Expired (C)"
  end
  if value == "R" then
    return "Ord Status: Restated (R)"
  end
  if value == "Z" then
    return "Ord Status: Previousfinalstate (Z)"
  end

  return "Ord Status: Unknown("..value..")"
end

-- Dissect: Ord Status
b3_equities_binaryentrypoint_sbe_v7_0_dissect.ord_status = function(buffer, offset, packet, parent)
  local length = b3_equities_binaryentrypoint_sbe_v7_0_size_of.ord_status
  local range = buffer(offset, length)

  -- parse as byte
  local value = range:uint()

  -- check if value is non zero
  if value ~= 0 then
    value = range:string()
  end

  local display = b3_equities_binaryentrypoint_sbe_v7_0_display.ord_status(value, buffer, offset, packet, parent)

  parent:add(b3_equities_binaryentrypoint_sbe_v7_0.fields.ord_status, range, value, display)

  return offset + length, value
end

-- Calculate size of: Execution Report Forward Message
b3_equities_binaryentrypoint_sbe_v7_0_size_of.execution_report_forward_message = function(buffer, offset)
  local index = 0

  index = index + b3_equities_binaryentrypoint_sbe_v7_0_size_of.outbound_business_header(buffer, offset + index)

  index = index + b3_equities_binaryentrypoint_sbe_v7_0_size_of.side

  index = index + b3_equities_binaryentrypoint_sbe_v7_0_size_of.ord_status

  index = index + b3_equities_binaryentrypoint_sbe_v7_0_size_of.clordid_optional

  index = index + b3_equities_binaryentrypoint_sbe_v7_0_size_of.secondary_order_id

  index = index + b3_equities_binaryentrypoint_sbe_v7_0_size_of.security_id

  index = index + b3_equities_binaryentrypoint_sbe_v7_0_size_of.security_exchange

  index = index + b3_equities_binaryentrypoint_sbe_v7_0_size_of.account

  index = index + b3_equities_binaryentrypoint_sbe_v7_0_size_of.last_qty

  index = index + b3_equities_binaryentrypoint_sbe_v7_0_size_of.last_px

  index = index + b3_equities_binaryentrypoint_sbe_v7_0_size_of.exec_id

  index = index + b3_equities_binaryentrypoint_sbe_v7_0_size_of.transact_time

  index = index + b3_equities_binaryentrypoint_sbe_v7_0_size_of.leaves_qty

  index = index + b3_equities_binaryentrypoint_sbe_v7_0_size_of.cum_qty

  index = index + b3_equities_binaryentrypoint_sbe_v7_0_size_of.trade_id

  index = index + b3_equities_binaryentrypoint_sbe_v7_0_size_of.contra_broker

  index = index + b3_equities_binaryentrypoint_sbe_v7_0_size_of.order_id

  index = index + b3_equities_binaryentrypoint_sbe_v7_0_size_of.aggressor_indicator

  index = index + b3_equities_binaryentrypoint_sbe_v7_0_size_of.settltype_optional

  index = index + b3_equities_binaryentrypoint_sbe_v7_0_size_of.trade_date

  index = index + b3_equities_binaryentrypoint_sbe_v7_0_size_of.days_to_settlement_optional

  index = index + b3_equities_binaryentrypoint_sbe_v7_0_size_of.secondary_exec_id

  index = index + b3_equities_binaryentrypoint_sbe_v7_0_size_of.exec_ref_id

  index = index + b3_equities_binaryentrypoint_sbe_v7_0_size_of.fixed_rate_optional

  index = index + b3_equities_binaryentrypoint_sbe_v7_0_size_of.order_qty

  index = index + b3_equities_binaryentrypoint_sbe_v7_0_size_of.desk_id(buffer, offset + index)

  index = index + b3_equities_binaryentrypoint_sbe_v7_0_size_of.memo(buffer, offset + index)

  return index
end

-- Display: Execution Report Forward Message
b3_equities_binaryentrypoint_sbe_v7_0_display.execution_report_forward_message = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Execution Report Forward Message
b3_equities_binaryentrypoint_sbe_v7_0_dissect.execution_report_forward_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Outbound Business Header: Struct of 5 fields
  index, outbound_business_header = b3_equities_binaryentrypoint_sbe_v7_0_dissect.outbound_business_header(buffer, index, packet, parent)

  -- Side: 1 Byte Ascii String Enum with 2 values
  index, side = b3_equities_binaryentrypoint_sbe_v7_0_dissect.side(buffer, index, packet, parent)

  -- Ord Status: 1 Byte Ascii String Enum with 9 values
  index, ord_status = b3_equities_binaryentrypoint_sbe_v7_0_dissect.ord_status(buffer, index, packet, parent)

  -- ClOrdId Optional: 8 Byte Unsigned Fixed Width Integer
  index, clordid_optional = b3_equities_binaryentrypoint_sbe_v7_0_dissect.clordid_optional(buffer, index, packet, parent)

  -- Secondary Order Id: 8 Byte Unsigned Fixed Width Integer
  index, secondary_order_id = b3_equities_binaryentrypoint_sbe_v7_0_dissect.secondary_order_id(buffer, index, packet, parent)

  -- Security Id: 8 Byte Unsigned Fixed Width Integer
  index, security_id = b3_equities_binaryentrypoint_sbe_v7_0_dissect.security_id(buffer, index, packet, parent)

  -- Security Exchange: 4 Byte Ascii String
  index, security_exchange = b3_equities_binaryentrypoint_sbe_v7_0_dissect.security_exchange(buffer, index, packet, parent)

  -- Account: 4 Byte Unsigned Fixed Width Integer
  index, account = b3_equities_binaryentrypoint_sbe_v7_0_dissect.account(buffer, index, packet, parent)

  -- Last Qty: 8 Byte Unsigned Fixed Width Integer
  index, last_qty = b3_equities_binaryentrypoint_sbe_v7_0_dissect.last_qty(buffer, index, packet, parent)

  -- Last Px: 8 Byte Signed Fixed Width Integer
  index, last_px = b3_equities_binaryentrypoint_sbe_v7_0_dissect.last_px(buffer, index, packet, parent)

  -- Exec Id: 8 Byte Unsigned Fixed Width Integer
  index, exec_id = b3_equities_binaryentrypoint_sbe_v7_0_dissect.exec_id(buffer, index, packet, parent)

  -- Transact Time: 8 Byte Unsigned Fixed Width Integer
  index, transact_time = b3_equities_binaryentrypoint_sbe_v7_0_dissect.transact_time(buffer, index, packet, parent)

  -- Leaves Qty: 8 Byte Unsigned Fixed Width Integer
  index, leaves_qty = b3_equities_binaryentrypoint_sbe_v7_0_dissect.leaves_qty(buffer, index, packet, parent)

  -- Cum Qty: 8 Byte Unsigned Fixed Width Integer
  index, cum_qty = b3_equities_binaryentrypoint_sbe_v7_0_dissect.cum_qty(buffer, index, packet, parent)

  -- Trade Id: 4 Byte Unsigned Fixed Width Integer
  index, trade_id = b3_equities_binaryentrypoint_sbe_v7_0_dissect.trade_id(buffer, index, packet, parent)

  -- Contra Broker: 4 Byte Unsigned Fixed Width Integer
  index, contra_broker = b3_equities_binaryentrypoint_sbe_v7_0_dissect.contra_broker(buffer, index, packet, parent)

  -- Order Id: 8 Byte Unsigned Fixed Width Integer
  index, order_id = b3_equities_binaryentrypoint_sbe_v7_0_dissect.order_id(buffer, index, packet, parent)

  -- Aggressor Indicator: 1 Byte Unsigned Fixed Width Integer Enum with 2 values
  index, aggressor_indicator = b3_equities_binaryentrypoint_sbe_v7_0_dissect.aggressor_indicator(buffer, index, packet, parent)

  -- SettlType Optional: 1 Byte Ascii String Enum with 4 values
  index, settltype_optional = b3_equities_binaryentrypoint_sbe_v7_0_dissect.settltype_optional(buffer, index, packet, parent)

  -- Trade Date: 2 Byte Unsigned Fixed Width Integer
  index, trade_date = b3_equities_binaryentrypoint_sbe_v7_0_dissect.trade_date(buffer, index, packet, parent)

  -- Days To Settlement Optional: 2 Byte Unsigned Fixed Width Integer
  index, days_to_settlement_optional = b3_equities_binaryentrypoint_sbe_v7_0_dissect.days_to_settlement_optional(buffer, index, packet, parent)

  -- Secondary Exec Id: 8 Byte Unsigned Fixed Width Integer
  index, secondary_exec_id = b3_equities_binaryentrypoint_sbe_v7_0_dissect.secondary_exec_id(buffer, index, packet, parent)

  -- Exec Ref Id: 8 Byte Unsigned Fixed Width Integer
  index, exec_ref_id = b3_equities_binaryentrypoint_sbe_v7_0_dissect.exec_ref_id(buffer, index, packet, parent)

  -- Fixed Rate Optional: 8 Byte Signed Fixed Width Integer Nullable
  index, fixed_rate_optional = b3_equities_binaryentrypoint_sbe_v7_0_dissect.fixed_rate_optional(buffer, index, packet, parent)

  -- Order Qty: 8 Byte Unsigned Fixed Width Integer
  index, order_qty = b3_equities_binaryentrypoint_sbe_v7_0_dissect.order_qty(buffer, index, packet, parent)

  -- Desk Id: Struct of 2 fields
  index, desk_id = b3_equities_binaryentrypoint_sbe_v7_0_dissect.desk_id(buffer, index, packet, parent)

  -- Memo: Struct of 2 fields
  index, memo = b3_equities_binaryentrypoint_sbe_v7_0_dissect.memo(buffer, index, packet, parent)

  return index
end

-- Dissect: Execution Report Forward Message
b3_equities_binaryentrypoint_sbe_v7_0_dissect.execution_report_forward_message = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.execution_report_forward_message then
    local length = b3_equities_binaryentrypoint_sbe_v7_0_size_of.execution_report_forward_message(buffer, offset)
    local range = buffer(offset, length)
    local display = b3_equities_binaryentrypoint_sbe_v7_0_display.execution_report_forward_message(buffer, packet, parent)
    parent = parent:add(b3_equities_binaryentrypoint_sbe_v7_0.fields.execution_report_forward_message, range, display)
  end

  return b3_equities_binaryentrypoint_sbe_v7_0_dissect.execution_report_forward_message_fields(buffer, offset, packet, parent)
end

-- Size: Crossed Indicator
b3_equities_binaryentrypoint_sbe_v7_0_size_of.crossed_indicator = 2

-- Display: Crossed Indicator
b3_equities_binaryentrypoint_sbe_v7_0_display.crossed_indicator = function(value)
  if value == 1001 then
    return "Crossed Indicator: Structuredtransaction (1001)"
  end
  if value == 1002 then
    return "Crossed Indicator: Operationalerror (1002)"
  end
  if value == 1003 then
    return "Crossed Indicator: Twapvwap (1003)"
  end
  if value == 0 then
    return "Crossed Indicator: No Value"
  end

  return "Crossed Indicator: Unknown("..value..")"
end

-- Dissect: Crossed Indicator
b3_equities_binaryentrypoint_sbe_v7_0_dissect.crossed_indicator = function(buffer, offset, packet, parent)
  local length = b3_equities_binaryentrypoint_sbe_v7_0_size_of.crossed_indicator
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = b3_equities_binaryentrypoint_sbe_v7_0_display.crossed_indicator(value, buffer, offset, packet, parent)

  parent:add(b3_equities_binaryentrypoint_sbe_v7_0.fields.crossed_indicator, range, value, display)

  return offset + length, value
end

-- Size: CrossId Optional
b3_equities_binaryentrypoint_sbe_v7_0_size_of.crossid_optional = 8

-- Display: CrossId Optional
b3_equities_binaryentrypoint_sbe_v7_0_display.crossid_optional = function(value)
  return "CrossId Optional: "..value
end

-- Dissect: CrossId Optional
b3_equities_binaryentrypoint_sbe_v7_0_dissect.crossid_optional = function(buffer, offset, packet, parent)
  local length = b3_equities_binaryentrypoint_sbe_v7_0_size_of.crossid_optional
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = b3_equities_binaryentrypoint_sbe_v7_0_display.crossid_optional(value, buffer, offset, packet, parent)

  parent:add(b3_equities_binaryentrypoint_sbe_v7_0.fields.crossid_optional, range, value, display)

  return offset + length, value
end

-- Size: Max Floor
b3_equities_binaryentrypoint_sbe_v7_0_size_of.max_floor = 8

-- Display: Max Floor
b3_equities_binaryentrypoint_sbe_v7_0_display.max_floor = function(value)
  return "Max Floor: "..value
end

-- Dissect: Max Floor
b3_equities_binaryentrypoint_sbe_v7_0_dissect.max_floor = function(buffer, offset, packet, parent)
  local length = b3_equities_binaryentrypoint_sbe_v7_0_size_of.max_floor
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = b3_equities_binaryentrypoint_sbe_v7_0_display.max_floor(value, buffer, offset, packet, parent)

  parent:add(b3_equities_binaryentrypoint_sbe_v7_0.fields.max_floor, range, value, display)

  return offset + length, value
end

-- Size: Min Qty
b3_equities_binaryentrypoint_sbe_v7_0_size_of.min_qty = 8

-- Display: Min Qty
b3_equities_binaryentrypoint_sbe_v7_0_display.min_qty = function(value)
  return "Min Qty: "..value
end

-- Dissect: Min Qty
b3_equities_binaryentrypoint_sbe_v7_0_dissect.min_qty = function(buffer, offset, packet, parent)
  local length = b3_equities_binaryentrypoint_sbe_v7_0_size_of.min_qty
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = b3_equities_binaryentrypoint_sbe_v7_0_display.min_qty(value, buffer, offset, packet, parent)

  parent:add(b3_equities_binaryentrypoint_sbe_v7_0.fields.min_qty, range, value, display)

  return offset + length, value
end

-- Size: Stop Px
b3_equities_binaryentrypoint_sbe_v7_0_size_of.stop_px = 8

-- Display: Stop Px
b3_equities_binaryentrypoint_sbe_v7_0_display.stop_px = function(raw, value)
  -- Check null sentinel value
  if raw == Int64(0x00000000, 0x80000000) then
    return "Stop Px: No Value"
  end

  return "Stop Px: "..value
end

-- Translate: Stop Px
translate.stop_px = function(raw)
  -- Check null sentinel value
  if raw == Int64(0x00000000, 0x80000000) then
    return 0/0
  end

  return raw:tonumber()/10000
end

-- Dissect: Stop Px
b3_equities_binaryentrypoint_sbe_v7_0_dissect.stop_px = function(buffer, offset, packet, parent)
  local length = b3_equities_binaryentrypoint_sbe_v7_0_size_of.stop_px
  local range = buffer(offset, length)
  local raw = range:le_int64()
  local value = translate.stop_px(raw)
  local display = b3_equities_binaryentrypoint_sbe_v7_0_display.stop_px(raw, value, buffer, offset, packet, parent)

  parent:add(b3_equities_binaryentrypoint_sbe_v7_0.fields.stop_px, range, value, display)

  return offset + length, value
end

-- Size: Expire Date
b3_equities_binaryentrypoint_sbe_v7_0_size_of.expire_date = 2

-- Display: Expire Date
b3_equities_binaryentrypoint_sbe_v7_0_display.expire_date = function(value)
  return "Expire Date: "..value
end

-- Dissect: Expire Date
b3_equities_binaryentrypoint_sbe_v7_0_dissect.expire_date = function(buffer, offset, packet, parent)
  local length = b3_equities_binaryentrypoint_sbe_v7_0_size_of.expire_date
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = b3_equities_binaryentrypoint_sbe_v7_0_display.expire_date(value, buffer, offset, packet, parent)

  parent:add(b3_equities_binaryentrypoint_sbe_v7_0.fields.expire_date, range, value, display)

  return offset + length, value
end

-- Size: Time In Force
b3_equities_binaryentrypoint_sbe_v7_0_size_of.time_in_force = 1

-- Display: Time In Force
b3_equities_binaryentrypoint_sbe_v7_0_display.time_in_force = function(value)
  -- Check if field has value
  if value == nil or value == 0 then
    return "Time In Force: No Value"
  end

  if value == "0" then
    return "Time In Force: Day (0)"
  end
  if value == "1" then
    return "Time In Force: Goodtillcancel (1)"
  end
  if value == "3" then
    return "Time In Force: Immediateorcancel (3)"
  end
  if value == "4" then
    return "Time In Force: Fillorkill (4)"
  end
  if value == "6" then
    return "Time In Force: Goodtilldate (6)"
  end
  if value == "7" then
    return "Time In Force: Attheclose (7)"
  end
  if value == "A" then
    return "Time In Force: Goodforauction (A)"
  end

  return "Time In Force: Unknown("..value..")"
end

-- Dissect: Time In Force
b3_equities_binaryentrypoint_sbe_v7_0_dissect.time_in_force = function(buffer, offset, packet, parent)
  local length = b3_equities_binaryentrypoint_sbe_v7_0_size_of.time_in_force
  local range = buffer(offset, length)

  -- parse as byte
  local value = range:uint()

  -- check if value is non zero
  if value ~= 0 then
    value = range:string()
  end

  local display = b3_equities_binaryentrypoint_sbe_v7_0_display.time_in_force(value, buffer, offset, packet, parent)

  parent:add(b3_equities_binaryentrypoint_sbe_v7_0.fields.time_in_force, range, value, display)

  return offset + length, value
end

-- Size: OrdType
b3_equities_binaryentrypoint_sbe_v7_0_size_of.ordtype = 1

-- Display: OrdType
b3_equities_binaryentrypoint_sbe_v7_0_display.ordtype = function(value)
  -- Check if field has value
  if value == nil or value == 0 then
    return "OrdType: No Value"
  end

  if value == "1" then
    return "OrdType: Market (1)"
  end
  if value == "2" then
    return "OrdType: Limit (2)"
  end
  if value == "3" then
    return "OrdType: Stoploss (3)"
  end
  if value == "4" then
    return "OrdType: Stoplimit (4)"
  end
  if value == "K" then
    return "OrdType: Marketwithleftoveraslimit (K)"
  end
  if value == "W" then
    return "OrdType: Rlp (W)"
  end
  if value == "P" then
    return "OrdType: Peggedmidpoint (P)"
  end

  return "OrdType: Unknown("..value..")"
end

-- Dissect: OrdType
b3_equities_binaryentrypoint_sbe_v7_0_dissect.ordtype = function(buffer, offset, packet, parent)
  local length = b3_equities_binaryentrypoint_sbe_v7_0_size_of.ordtype
  local range = buffer(offset, length)

  -- parse as byte
  local value = range:uint()

  -- check if value is non zero
  if value ~= 0 then
    value = range:string()
  end

  local display = b3_equities_binaryentrypoint_sbe_v7_0_display.ordtype(value, buffer, offset, packet, parent)

  parent:add(b3_equities_binaryentrypoint_sbe_v7_0.fields.ordtype, range, value, display)

  return offset + length, value
end

-- Size: OrigClOrdId
b3_equities_binaryentrypoint_sbe_v7_0_size_of.origclordid = 8

-- Display: OrigClOrdId
b3_equities_binaryentrypoint_sbe_v7_0_display.origclordid = function(value)
  return "OrigClOrdId: "..value
end

-- Dissect: OrigClOrdId
b3_equities_binaryentrypoint_sbe_v7_0_dissect.origclordid = function(buffer, offset, packet, parent)
  local length = b3_equities_binaryentrypoint_sbe_v7_0_size_of.origclordid
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = b3_equities_binaryentrypoint_sbe_v7_0_display.origclordid(value, buffer, offset, packet, parent)

  parent:add(b3_equities_binaryentrypoint_sbe_v7_0.fields.origclordid, range, value, display)

  return offset + length, value
end

-- Size: Order Id Optional
b3_equities_binaryentrypoint_sbe_v7_0_size_of.order_id_optional = 8

-- Display: Order Id Optional
b3_equities_binaryentrypoint_sbe_v7_0_display.order_id_optional = function(value)
  return "Order Id Optional: "..value
end

-- Dissect: Order Id Optional
b3_equities_binaryentrypoint_sbe_v7_0_dissect.order_id_optional = function(buffer, offset, packet, parent)
  local length = b3_equities_binaryentrypoint_sbe_v7_0_size_of.order_id_optional
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = b3_equities_binaryentrypoint_sbe_v7_0_display.order_id_optional(value, buffer, offset, packet, parent)

  parent:add(b3_equities_binaryentrypoint_sbe_v7_0.fields.order_id_optional, range, value, display)

  return offset + length, value
end

-- Size: Ord Rej Reason
b3_equities_binaryentrypoint_sbe_v7_0_size_of.ord_rej_reason = 4

-- Display: Ord Rej Reason
b3_equities_binaryentrypoint_sbe_v7_0_display.ord_rej_reason = function(value)
  return "Ord Rej Reason: "..value
end

-- Dissect: Ord Rej Reason
b3_equities_binaryentrypoint_sbe_v7_0_dissect.ord_rej_reason = function(buffer, offset, packet, parent)
  local length = b3_equities_binaryentrypoint_sbe_v7_0_size_of.ord_rej_reason
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = b3_equities_binaryentrypoint_sbe_v7_0_display.ord_rej_reason(value, buffer, offset, packet, parent)

  parent:add(b3_equities_binaryentrypoint_sbe_v7_0.fields.ord_rej_reason, range, value, display)

  return offset + length, value
end

-- Size: Secondary Order Id Optional
b3_equities_binaryentrypoint_sbe_v7_0_size_of.secondary_order_id_optional = 8

-- Display: Secondary Order Id Optional
b3_equities_binaryentrypoint_sbe_v7_0_display.secondary_order_id_optional = function(value)
  return "Secondary Order Id Optional: "..value
end

-- Dissect: Secondary Order Id Optional
b3_equities_binaryentrypoint_sbe_v7_0_dissect.secondary_order_id_optional = function(buffer, offset, packet, parent)
  local length = b3_equities_binaryentrypoint_sbe_v7_0_size_of.secondary_order_id_optional
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = b3_equities_binaryentrypoint_sbe_v7_0_display.secondary_order_id_optional(value, buffer, offset, packet, parent)

  parent:add(b3_equities_binaryentrypoint_sbe_v7_0.fields.secondary_order_id_optional, range, value, display)

  return offset + length, value
end

-- Size: Cxl Rej Response To
b3_equities_binaryentrypoint_sbe_v7_0_size_of.cxl_rej_response_to = 1

-- Display: Cxl Rej Response To
b3_equities_binaryentrypoint_sbe_v7_0_display.cxl_rej_response_to = function(value)
  if value == 0 then
    return "Cxl Rej Response To: New (0)"
  end
  if value == 1 then
    return "Cxl Rej Response To: Cancel (1)"
  end
  if value == 2 then
    return "Cxl Rej Response To: Replace (2)"
  end

  return "Cxl Rej Response To: Unknown("..value..")"
end

-- Dissect: Cxl Rej Response To
b3_equities_binaryentrypoint_sbe_v7_0_dissect.cxl_rej_response_to = function(buffer, offset, packet, parent)
  local length = b3_equities_binaryentrypoint_sbe_v7_0_size_of.cxl_rej_response_to
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = b3_equities_binaryentrypoint_sbe_v7_0_display.cxl_rej_response_to(value, buffer, offset, packet, parent)

  parent:add(b3_equities_binaryentrypoint_sbe_v7_0.fields.cxl_rej_response_to, range, value, display)

  return offset + length, value
end

-- Calculate size of: Execution Report Reject Message
b3_equities_binaryentrypoint_sbe_v7_0_size_of.execution_report_reject_message = function(buffer, offset)
  local index = 0

  index = index + b3_equities_binaryentrypoint_sbe_v7_0_size_of.outbound_business_header(buffer, offset + index)

  index = index + b3_equities_binaryentrypoint_sbe_v7_0_size_of.side

  index = index + b3_equities_binaryentrypoint_sbe_v7_0_size_of.cxl_rej_response_to

  index = index + b3_equities_binaryentrypoint_sbe_v7_0_size_of.clordid

  index = index + b3_equities_binaryentrypoint_sbe_v7_0_size_of.secondary_order_id_optional

  index = index + b3_equities_binaryentrypoint_sbe_v7_0_size_of.security_id

  index = index + b3_equities_binaryentrypoint_sbe_v7_0_size_of.security_exchange

  index = index + b3_equities_binaryentrypoint_sbe_v7_0_size_of.ord_rej_reason

  index = index + b3_equities_binaryentrypoint_sbe_v7_0_size_of.transact_time

  index = index + b3_equities_binaryentrypoint_sbe_v7_0_size_of.exec_id

  index = index + b3_equities_binaryentrypoint_sbe_v7_0_size_of.order_id_optional

  index = index + b3_equities_binaryentrypoint_sbe_v7_0_size_of.origclordid

  index = index + b3_equities_binaryentrypoint_sbe_v7_0_size_of.account

  index = index + b3_equities_binaryentrypoint_sbe_v7_0_size_of.ordtype

  index = index + b3_equities_binaryentrypoint_sbe_v7_0_size_of.time_in_force

  index = index + b3_equities_binaryentrypoint_sbe_v7_0_size_of.expire_date

  index = index + b3_equities_binaryentrypoint_sbe_v7_0_size_of.order_qty

  index = index + b3_equities_binaryentrypoint_sbe_v7_0_size_of.price_optional

  index = index + b3_equities_binaryentrypoint_sbe_v7_0_size_of.stop_px

  index = index + b3_equities_binaryentrypoint_sbe_v7_0_size_of.min_qty

  index = index + b3_equities_binaryentrypoint_sbe_v7_0_size_of.max_floor

  index = index + b3_equities_binaryentrypoint_sbe_v7_0_size_of.crossid_optional

  index = index + b3_equities_binaryentrypoint_sbe_v7_0_size_of.crossed_indicator

  index = index + b3_equities_binaryentrypoint_sbe_v7_0_size_of.desk_id(buffer, offset + index)

  index = index + b3_equities_binaryentrypoint_sbe_v7_0_size_of.memo(buffer, offset + index)

  index = index + b3_equities_binaryentrypoint_sbe_v7_0_size_of.text(buffer, offset + index)

  return index
end

-- Display: Execution Report Reject Message
b3_equities_binaryentrypoint_sbe_v7_0_display.execution_report_reject_message = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Execution Report Reject Message
b3_equities_binaryentrypoint_sbe_v7_0_dissect.execution_report_reject_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Outbound Business Header: Struct of 5 fields
  index, outbound_business_header = b3_equities_binaryentrypoint_sbe_v7_0_dissect.outbound_business_header(buffer, index, packet, parent)

  -- Side: 1 Byte Ascii String Enum with 2 values
  index, side = b3_equities_binaryentrypoint_sbe_v7_0_dissect.side(buffer, index, packet, parent)

  -- Cxl Rej Response To: 1 Byte Unsigned Fixed Width Integer Enum with 3 values
  index, cxl_rej_response_to = b3_equities_binaryentrypoint_sbe_v7_0_dissect.cxl_rej_response_to(buffer, index, packet, parent)

  -- ClOrdId: 8 Byte Unsigned Fixed Width Integer
  index, clordid = b3_equities_binaryentrypoint_sbe_v7_0_dissect.clordid(buffer, index, packet, parent)

  -- Secondary Order Id Optional: 8 Byte Unsigned Fixed Width Integer
  index, secondary_order_id_optional = b3_equities_binaryentrypoint_sbe_v7_0_dissect.secondary_order_id_optional(buffer, index, packet, parent)

  -- Security Id: 8 Byte Unsigned Fixed Width Integer
  index, security_id = b3_equities_binaryentrypoint_sbe_v7_0_dissect.security_id(buffer, index, packet, parent)

  -- Security Exchange: 4 Byte Ascii String
  index, security_exchange = b3_equities_binaryentrypoint_sbe_v7_0_dissect.security_exchange(buffer, index, packet, parent)

  -- Ord Rej Reason: 4 Byte Unsigned Fixed Width Integer
  index, ord_rej_reason = b3_equities_binaryentrypoint_sbe_v7_0_dissect.ord_rej_reason(buffer, index, packet, parent)

  -- Transact Time: 8 Byte Unsigned Fixed Width Integer
  index, transact_time = b3_equities_binaryentrypoint_sbe_v7_0_dissect.transact_time(buffer, index, packet, parent)

  -- Exec Id: 8 Byte Unsigned Fixed Width Integer
  index, exec_id = b3_equities_binaryentrypoint_sbe_v7_0_dissect.exec_id(buffer, index, packet, parent)

  -- Order Id Optional: 8 Byte Unsigned Fixed Width Integer
  index, order_id_optional = b3_equities_binaryentrypoint_sbe_v7_0_dissect.order_id_optional(buffer, index, packet, parent)

  -- OrigClOrdId: 8 Byte Unsigned Fixed Width Integer
  index, origclordid = b3_equities_binaryentrypoint_sbe_v7_0_dissect.origclordid(buffer, index, packet, parent)

  -- Account: 4 Byte Unsigned Fixed Width Integer
  index, account = b3_equities_binaryentrypoint_sbe_v7_0_dissect.account(buffer, index, packet, parent)

  -- OrdType: 1 Byte Ascii String Enum with 7 values
  index, ordtype = b3_equities_binaryentrypoint_sbe_v7_0_dissect.ordtype(buffer, index, packet, parent)

  -- Time In Force: 1 Byte Ascii String Enum with 7 values
  index, time_in_force = b3_equities_binaryentrypoint_sbe_v7_0_dissect.time_in_force(buffer, index, packet, parent)

  -- Expire Date: 2 Byte Unsigned Fixed Width Integer
  index, expire_date = b3_equities_binaryentrypoint_sbe_v7_0_dissect.expire_date(buffer, index, packet, parent)

  -- Order Qty: 8 Byte Unsigned Fixed Width Integer
  index, order_qty = b3_equities_binaryentrypoint_sbe_v7_0_dissect.order_qty(buffer, index, packet, parent)

  -- Price Optional: 8 Byte Signed Fixed Width Integer Nullable
  index, price_optional = b3_equities_binaryentrypoint_sbe_v7_0_dissect.price_optional(buffer, index, packet, parent)

  -- Stop Px: 8 Byte Signed Fixed Width Integer Nullable
  index, stop_px = b3_equities_binaryentrypoint_sbe_v7_0_dissect.stop_px(buffer, index, packet, parent)

  -- Min Qty: 8 Byte Unsigned Fixed Width Integer
  index, min_qty = b3_equities_binaryentrypoint_sbe_v7_0_dissect.min_qty(buffer, index, packet, parent)

  -- Max Floor: 8 Byte Unsigned Fixed Width Integer
  index, max_floor = b3_equities_binaryentrypoint_sbe_v7_0_dissect.max_floor(buffer, index, packet, parent)

  -- CrossId Optional: 8 Byte Unsigned Fixed Width Integer
  index, crossid_optional = b3_equities_binaryentrypoint_sbe_v7_0_dissect.crossid_optional(buffer, index, packet, parent)

  -- Crossed Indicator: 2 Byte Unsigned Fixed Width Integer Enum with 4 values
  index, crossed_indicator = b3_equities_binaryentrypoint_sbe_v7_0_dissect.crossed_indicator(buffer, index, packet, parent)

  -- Desk Id: Struct of 2 fields
  index, desk_id = b3_equities_binaryentrypoint_sbe_v7_0_dissect.desk_id(buffer, index, packet, parent)

  -- Memo: Struct of 2 fields
  index, memo = b3_equities_binaryentrypoint_sbe_v7_0_dissect.memo(buffer, index, packet, parent)

  -- Text: Struct of 2 fields
  index, text = b3_equities_binaryentrypoint_sbe_v7_0_dissect.text(buffer, index, packet, parent)

  return index
end

-- Dissect: Execution Report Reject Message
b3_equities_binaryentrypoint_sbe_v7_0_dissect.execution_report_reject_message = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.execution_report_reject_message then
    local length = b3_equities_binaryentrypoint_sbe_v7_0_size_of.execution_report_reject_message(buffer, offset)
    local range = buffer(offset, length)
    local display = b3_equities_binaryentrypoint_sbe_v7_0_display.execution_report_reject_message(buffer, packet, parent)
    parent = parent:add(b3_equities_binaryentrypoint_sbe_v7_0.fields.execution_report_reject_message, range, display)
  end

  return b3_equities_binaryentrypoint_sbe_v7_0_dissect.execution_report_reject_message_fields(buffer, offset, packet, parent)
end

-- Size: Tot No Related Sym
b3_equities_binaryentrypoint_sbe_v7_0_size_of.tot_no_related_sym = 1

-- Display: Tot No Related Sym
b3_equities_binaryentrypoint_sbe_v7_0_display.tot_no_related_sym = function(value)
  return "Tot No Related Sym: "..value
end

-- Dissect: Tot No Related Sym
b3_equities_binaryentrypoint_sbe_v7_0_dissect.tot_no_related_sym = function(buffer, offset, packet, parent)
  local length = b3_equities_binaryentrypoint_sbe_v7_0_size_of.tot_no_related_sym
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = b3_equities_binaryentrypoint_sbe_v7_0_display.tot_no_related_sym(value, buffer, offset, packet, parent)

  parent:add(b3_equities_binaryentrypoint_sbe_v7_0.fields.tot_no_related_sym, range, value, display)

  return offset + length, value
end

-- Size: Multi Leg Reporting Type
b3_equities_binaryentrypoint_sbe_v7_0_size_of.multi_leg_reporting_type = 1

-- Display: Multi Leg Reporting Type
b3_equities_binaryentrypoint_sbe_v7_0_display.multi_leg_reporting_type = function(value)
  -- Check if field has value
  if value == nil or value == 0 then
    return "Multi Leg Reporting Type: No Value"
  end

  if value == "1" then
    return "Multi Leg Reporting Type: Singlesecurity (1)"
  end
  if value == "2" then
    return "Multi Leg Reporting Type: Individuallegofmultilegsecurity (2)"
  end
  if value == "3" then
    return "Multi Leg Reporting Type: Multilegsecurity (3)"
  end
  if value == 0 then
    return "Multi Leg Reporting Type: No Value"
  end

  return "Multi Leg Reporting Type: Unknown("..value..")"
end

-- Dissect: Multi Leg Reporting Type
b3_equities_binaryentrypoint_sbe_v7_0_dissect.multi_leg_reporting_type = function(buffer, offset, packet, parent)
  local length = b3_equities_binaryentrypoint_sbe_v7_0_size_of.multi_leg_reporting_type
  local range = buffer(offset, length)

  -- parse as byte
  local value = range:uint()

  -- check if value is non zero
  if value ~= 0 then
    value = range:string()
  end

  local display = b3_equities_binaryentrypoint_sbe_v7_0_display.multi_leg_reporting_type(value, buffer, offset, packet, parent)

  parent:add(b3_equities_binaryentrypoint_sbe_v7_0.fields.multi_leg_reporting_type, range, value, display)

  return offset + length, value
end

-- Size: Order Category
b3_equities_binaryentrypoint_sbe_v7_0_size_of.order_category = 1

-- Display: Order Category
b3_equities_binaryentrypoint_sbe_v7_0_display.order_category = function(value)
  -- Check if field has value
  if value == nil or value == 0 then
    return "Order Category: No Value"
  end

  if value == "B" then
    return "Order Category: Resultofoptionsexercise (B)"
  end
  if value == "C" then
    return "Order Category: Resultofassignmentfromanoptionsexercise (C)"
  end
  if value == "D" then
    return "Order Category: Resultofautomaticoptionsexercise (D)"
  end
  if value == "E" then
    return "Order Category: Resultofmidpointorder (E)"
  end
  if value == "F" then
    return "Order Category: Resultofblockbooktrade (F)"
  end
  if value == "G" then
    return "Order Category: Resultoftradeatclose (G)"
  end
  if value == "H" then
    return "Order Category: Resultoftradeataverage (H)"
  end
  if value == 0 then
    return "Order Category: No Value"
  end

  return "Order Category: Unknown("..value..")"
end

-- Dissect: Order Category
b3_equities_binaryentrypoint_sbe_v7_0_dissect.order_category = function(buffer, offset, packet, parent)
  local length = b3_equities_binaryentrypoint_sbe_v7_0_size_of.order_category
  local range = buffer(offset, length)

  -- parse as byte
  local value = range:uint()

  -- check if value is non zero
  if value ~= 0 then
    value = range:string()
  end

  local display = b3_equities_binaryentrypoint_sbe_v7_0_display.order_category(value, buffer, offset, packet, parent)

  parent:add(b3_equities_binaryentrypoint_sbe_v7_0.fields.order_category, range, value, display)

  return offset + length, value
end

-- Size: Exec Type
b3_equities_binaryentrypoint_sbe_v7_0_size_of.exec_type = 1

-- Display: Exec Type
b3_equities_binaryentrypoint_sbe_v7_0_display.exec_type = function(value)
  -- Check if field has value
  if value == nil or value == 0 then
    return "Exec Type: No Value"
  end

  if value == "F" then
    return "Exec Type: Trade (F)"
  end
  if value == "H" then
    return "Exec Type: Tradecancel (H)"
  end

  return "Exec Type: Unknown("..value..")"
end

-- Dissect: Exec Type
b3_equities_binaryentrypoint_sbe_v7_0_dissect.exec_type = function(buffer, offset, packet, parent)
  local length = b3_equities_binaryentrypoint_sbe_v7_0_size_of.exec_type
  local range = buffer(offset, length)

  -- parse as byte
  local value = range:uint()

  -- check if value is non zero
  if value ~= 0 then
    value = range:string()
  end

  local display = b3_equities_binaryentrypoint_sbe_v7_0_display.exec_type(value, buffer, offset, packet, parent)

  parent:add(b3_equities_binaryentrypoint_sbe_v7_0.fields.exec_type, range, value, display)

  return offset + length, value
end

-- Calculate size of: Execution Report Trade Message
b3_equities_binaryentrypoint_sbe_v7_0_size_of.execution_report_trade_message = function(buffer, offset)
  local index = 0

  index = index + b3_equities_binaryentrypoint_sbe_v7_0_size_of.outbound_business_header(buffer, offset + index)

  index = index + b3_equities_binaryentrypoint_sbe_v7_0_size_of.side

  index = index + b3_equities_binaryentrypoint_sbe_v7_0_size_of.ord_status

  index = index + b3_equities_binaryentrypoint_sbe_v7_0_size_of.clordid_optional

  index = index + b3_equities_binaryentrypoint_sbe_v7_0_size_of.secondary_order_id

  index = index + b3_equities_binaryentrypoint_sbe_v7_0_size_of.security_id

  index = index + b3_equities_binaryentrypoint_sbe_v7_0_size_of.security_exchange

  index = index + b3_equities_binaryentrypoint_sbe_v7_0_size_of.account

  index = index + b3_equities_binaryentrypoint_sbe_v7_0_size_of.last_qty

  index = index + b3_equities_binaryentrypoint_sbe_v7_0_size_of.last_px

  index = index + b3_equities_binaryentrypoint_sbe_v7_0_size_of.exec_id

  index = index + b3_equities_binaryentrypoint_sbe_v7_0_size_of.transact_time

  index = index + b3_equities_binaryentrypoint_sbe_v7_0_size_of.leaves_qty

  index = index + b3_equities_binaryentrypoint_sbe_v7_0_size_of.cum_qty

  index = index + b3_equities_binaryentrypoint_sbe_v7_0_size_of.aggressor_indicator

  index = index + b3_equities_binaryentrypoint_sbe_v7_0_size_of.exec_type

  index = index + b3_equities_binaryentrypoint_sbe_v7_0_size_of.order_category

  index = index + b3_equities_binaryentrypoint_sbe_v7_0_size_of.multi_leg_reporting_type

  index = index + b3_equities_binaryentrypoint_sbe_v7_0_size_of.trade_id

  index = index + b3_equities_binaryentrypoint_sbe_v7_0_size_of.contra_broker

  index = index + b3_equities_binaryentrypoint_sbe_v7_0_size_of.order_id

  index = index + b3_equities_binaryentrypoint_sbe_v7_0_size_of.trade_date

  index = index + b3_equities_binaryentrypoint_sbe_v7_0_size_of.tot_no_related_sym

  index = index + b3_equities_binaryentrypoint_sbe_v7_0_size_of.secondary_exec_id

  index = index + b3_equities_binaryentrypoint_sbe_v7_0_size_of.exec_ref_id

  index = index + b3_equities_binaryentrypoint_sbe_v7_0_size_of.crossid_optional

  index = index + b3_equities_binaryentrypoint_sbe_v7_0_size_of.crossed_indicator

  index = index + b3_equities_binaryentrypoint_sbe_v7_0_size_of.order_qty

  index = index + b3_equities_binaryentrypoint_sbe_v7_0_size_of.desk_id(buffer, offset + index)

  index = index + b3_equities_binaryentrypoint_sbe_v7_0_size_of.memo(buffer, offset + index)

  return index
end

-- Display: Execution Report Trade Message
b3_equities_binaryentrypoint_sbe_v7_0_display.execution_report_trade_message = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Execution Report Trade Message
b3_equities_binaryentrypoint_sbe_v7_0_dissect.execution_report_trade_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Outbound Business Header: Struct of 5 fields
  index, outbound_business_header = b3_equities_binaryentrypoint_sbe_v7_0_dissect.outbound_business_header(buffer, index, packet, parent)

  -- Side: 1 Byte Ascii String Enum with 2 values
  index, side = b3_equities_binaryentrypoint_sbe_v7_0_dissect.side(buffer, index, packet, parent)

  -- Ord Status: 1 Byte Ascii String Enum with 9 values
  index, ord_status = b3_equities_binaryentrypoint_sbe_v7_0_dissect.ord_status(buffer, index, packet, parent)

  -- ClOrdId Optional: 8 Byte Unsigned Fixed Width Integer
  index, clordid_optional = b3_equities_binaryentrypoint_sbe_v7_0_dissect.clordid_optional(buffer, index, packet, parent)

  -- Secondary Order Id: 8 Byte Unsigned Fixed Width Integer
  index, secondary_order_id = b3_equities_binaryentrypoint_sbe_v7_0_dissect.secondary_order_id(buffer, index, packet, parent)

  -- Security Id: 8 Byte Unsigned Fixed Width Integer
  index, security_id = b3_equities_binaryentrypoint_sbe_v7_0_dissect.security_id(buffer, index, packet, parent)

  -- Security Exchange: 4 Byte Ascii String
  index, security_exchange = b3_equities_binaryentrypoint_sbe_v7_0_dissect.security_exchange(buffer, index, packet, parent)

  -- Account: 4 Byte Unsigned Fixed Width Integer
  index, account = b3_equities_binaryentrypoint_sbe_v7_0_dissect.account(buffer, index, packet, parent)

  -- Last Qty: 8 Byte Unsigned Fixed Width Integer
  index, last_qty = b3_equities_binaryentrypoint_sbe_v7_0_dissect.last_qty(buffer, index, packet, parent)

  -- Last Px: 8 Byte Signed Fixed Width Integer
  index, last_px = b3_equities_binaryentrypoint_sbe_v7_0_dissect.last_px(buffer, index, packet, parent)

  -- Exec Id: 8 Byte Unsigned Fixed Width Integer
  index, exec_id = b3_equities_binaryentrypoint_sbe_v7_0_dissect.exec_id(buffer, index, packet, parent)

  -- Transact Time: 8 Byte Unsigned Fixed Width Integer
  index, transact_time = b3_equities_binaryentrypoint_sbe_v7_0_dissect.transact_time(buffer, index, packet, parent)

  -- Leaves Qty: 8 Byte Unsigned Fixed Width Integer
  index, leaves_qty = b3_equities_binaryentrypoint_sbe_v7_0_dissect.leaves_qty(buffer, index, packet, parent)

  -- Cum Qty: 8 Byte Unsigned Fixed Width Integer
  index, cum_qty = b3_equities_binaryentrypoint_sbe_v7_0_dissect.cum_qty(buffer, index, packet, parent)

  -- Aggressor Indicator: 1 Byte Unsigned Fixed Width Integer Enum with 2 values
  index, aggressor_indicator = b3_equities_binaryentrypoint_sbe_v7_0_dissect.aggressor_indicator(buffer, index, packet, parent)

  -- Exec Type: 1 Byte Ascii String Enum with 2 values
  index, exec_type = b3_equities_binaryentrypoint_sbe_v7_0_dissect.exec_type(buffer, index, packet, parent)

  -- Order Category: 1 Byte Ascii String Enum with 8 values
  index, order_category = b3_equities_binaryentrypoint_sbe_v7_0_dissect.order_category(buffer, index, packet, parent)

  -- Multi Leg Reporting Type: 1 Byte Ascii String Enum with 4 values
  index, multi_leg_reporting_type = b3_equities_binaryentrypoint_sbe_v7_0_dissect.multi_leg_reporting_type(buffer, index, packet, parent)

  -- Trade Id: 4 Byte Unsigned Fixed Width Integer
  index, trade_id = b3_equities_binaryentrypoint_sbe_v7_0_dissect.trade_id(buffer, index, packet, parent)

  -- Contra Broker: 4 Byte Unsigned Fixed Width Integer
  index, contra_broker = b3_equities_binaryentrypoint_sbe_v7_0_dissect.contra_broker(buffer, index, packet, parent)

  -- Order Id: 8 Byte Unsigned Fixed Width Integer
  index, order_id = b3_equities_binaryentrypoint_sbe_v7_0_dissect.order_id(buffer, index, packet, parent)

  -- Trade Date: 2 Byte Unsigned Fixed Width Integer
  index, trade_date = b3_equities_binaryentrypoint_sbe_v7_0_dissect.trade_date(buffer, index, packet, parent)

  -- Tot No Related Sym: 1 Byte Unsigned Fixed Width Integer
  index, tot_no_related_sym = b3_equities_binaryentrypoint_sbe_v7_0_dissect.tot_no_related_sym(buffer, index, packet, parent)

  -- Secondary Exec Id: 8 Byte Unsigned Fixed Width Integer
  index, secondary_exec_id = b3_equities_binaryentrypoint_sbe_v7_0_dissect.secondary_exec_id(buffer, index, packet, parent)

  -- Exec Ref Id: 8 Byte Unsigned Fixed Width Integer
  index, exec_ref_id = b3_equities_binaryentrypoint_sbe_v7_0_dissect.exec_ref_id(buffer, index, packet, parent)

  -- CrossId Optional: 8 Byte Unsigned Fixed Width Integer
  index, crossid_optional = b3_equities_binaryentrypoint_sbe_v7_0_dissect.crossid_optional(buffer, index, packet, parent)

  -- Crossed Indicator: 2 Byte Unsigned Fixed Width Integer Enum with 4 values
  index, crossed_indicator = b3_equities_binaryentrypoint_sbe_v7_0_dissect.crossed_indicator(buffer, index, packet, parent)

  -- Order Qty: 8 Byte Unsigned Fixed Width Integer
  index, order_qty = b3_equities_binaryentrypoint_sbe_v7_0_dissect.order_qty(buffer, index, packet, parent)

  -- Desk Id: Struct of 2 fields
  index, desk_id = b3_equities_binaryentrypoint_sbe_v7_0_dissect.desk_id(buffer, index, packet, parent)

  -- Memo: Struct of 2 fields
  index, memo = b3_equities_binaryentrypoint_sbe_v7_0_dissect.memo(buffer, index, packet, parent)

  return index
end

-- Dissect: Execution Report Trade Message
b3_equities_binaryentrypoint_sbe_v7_0_dissect.execution_report_trade_message = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.execution_report_trade_message then
    local length = b3_equities_binaryentrypoint_sbe_v7_0_size_of.execution_report_trade_message(buffer, offset)
    local range = buffer(offset, length)
    local display = b3_equities_binaryentrypoint_sbe_v7_0_display.execution_report_trade_message(buffer, packet, parent)
    parent = parent:add(b3_equities_binaryentrypoint_sbe_v7_0.fields.execution_report_trade_message, range, display)
  end

  return b3_equities_binaryentrypoint_sbe_v7_0_dissect.execution_report_trade_message_fields(buffer, offset, packet, parent)
end

-- Size: Mass Action Report Id Optional
b3_equities_binaryentrypoint_sbe_v7_0_size_of.mass_action_report_id_optional = 8

-- Display: Mass Action Report Id Optional
b3_equities_binaryentrypoint_sbe_v7_0_display.mass_action_report_id_optional = function(value)
  return "Mass Action Report Id Optional: "..value
end

-- Dissect: Mass Action Report Id Optional
b3_equities_binaryentrypoint_sbe_v7_0_dissect.mass_action_report_id_optional = function(buffer, offset, packet, parent)
  local length = b3_equities_binaryentrypoint_sbe_v7_0_size_of.mass_action_report_id_optional
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = b3_equities_binaryentrypoint_sbe_v7_0_display.mass_action_report_id_optional(value, buffer, offset, packet, parent)

  parent:add(b3_equities_binaryentrypoint_sbe_v7_0.fields.mass_action_report_id_optional, range, value, display)

  return offset + length, value
end

-- Size: Action Requested From Session Id
b3_equities_binaryentrypoint_sbe_v7_0_size_of.action_requested_from_session_id = 4

-- Display: Action Requested From Session Id
b3_equities_binaryentrypoint_sbe_v7_0_display.action_requested_from_session_id = function(value)
  return "Action Requested From Session Id: "..value
end

-- Dissect: Action Requested From Session Id
b3_equities_binaryentrypoint_sbe_v7_0_dissect.action_requested_from_session_id = function(buffer, offset, packet, parent)
  local length = b3_equities_binaryentrypoint_sbe_v7_0_size_of.action_requested_from_session_id
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = b3_equities_binaryentrypoint_sbe_v7_0_display.action_requested_from_session_id(value, buffer, offset, packet, parent)

  parent:add(b3_equities_binaryentrypoint_sbe_v7_0.fields.action_requested_from_session_id, range, value, display)

  return offset + length, value
end

-- Size: Exec Restatement Reason
b3_equities_binaryentrypoint_sbe_v7_0_size_of.exec_restatement_reason = 1

-- Display: Exec Restatement Reason
b3_equities_binaryentrypoint_sbe_v7_0_display.exec_restatement_reason = function(value)
  if value == 8 then
    return "Exec Restatement Reason: Marketoption (8)"
  end
  if value == 100 then
    return "Exec Restatement Reason: Cancelonharddisconnection (100)"
  end
  if value == 101 then
    return "Exec Restatement Reason: Cancelonterminate (101)"
  end
  if value == 102 then
    return "Exec Restatement Reason: Cancelondisconnectandterminate (102)"
  end
  if value == 103 then
    return "Exec Restatement Reason: Selftradingprevention (103)"
  end
  if value == 105 then
    return "Exec Restatement Reason: Cancelfromfirmsoft (105)"
  end
  if value == 107 then
    return "Exec Restatement Reason: Cancelrestingorderonselftrade (107)"
  end
  if value == 200 then
    return "Exec Restatement Reason: Marketmakerprotection (200)"
  end
  if value == 201 then
    return "Exec Restatement Reason: Riskmanagementcancellation (201)"
  end
  if value == 202 then
    return "Exec Restatement Reason: Ordermassactionfromclientrequest (202)"
  end
  if value == 203 then
    return "Exec Restatement Reason: Cancelorderduetooperationalerror (203)"
  end
  if value == 204 then
    return "Exec Restatement Reason: Ordercancelledduetooperationalerror (204)"
  end
  if value == 205 then
    return "Exec Restatement Reason: Cancelorderfirmsoftduetooperationalerror (205)"
  end
  if value == 206 then
    return "Exec Restatement Reason: Ordercancelledfirmsoftduetooperationalerror (206)"
  end
  if value == 207 then
    return "Exec Restatement Reason: Masscancelorderduetooperationalerrorrequest (207)"
  end
  if value == 208 then
    return "Exec Restatement Reason: Masscancelorderduetooperationalerroreffective (208)"
  end
  if value == 209 then
    return "Exec Restatement Reason: Cancelonmidpointbrokeronlyremoval (209)"
  end
  if value == 0 then
    return "Exec Restatement Reason: No Value"
  end

  return "Exec Restatement Reason: Unknown("..value..")"
end

-- Dissect: Exec Restatement Reason
b3_equities_binaryentrypoint_sbe_v7_0_dissect.exec_restatement_reason = function(buffer, offset, packet, parent)
  local length = b3_equities_binaryentrypoint_sbe_v7_0_size_of.exec_restatement_reason
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = b3_equities_binaryentrypoint_sbe_v7_0_display.exec_restatement_reason(value, buffer, offset, packet, parent)

  parent:add(b3_equities_binaryentrypoint_sbe_v7_0.fields.exec_restatement_reason, range, value, display)

  return offset + length, value
end

-- Size: Working Indicator
b3_equities_binaryentrypoint_sbe_v7_0_size_of.working_indicator = 1

-- Display: Working Indicator
b3_equities_binaryentrypoint_sbe_v7_0_display.working_indicator = function(value)
  if value == 0 then
    return "Working Indicator: Falsevalue (0)"
  end
  if value == 1 then
    return "Working Indicator: Truevalue (1)"
  end

  return "Working Indicator: Unknown("..value..")"
end

-- Dissect: Working Indicator
b3_equities_binaryentrypoint_sbe_v7_0_dissect.working_indicator = function(buffer, offset, packet, parent)
  local length = b3_equities_binaryentrypoint_sbe_v7_0_size_of.working_indicator
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = b3_equities_binaryentrypoint_sbe_v7_0_display.working_indicator(value, buffer, offset, packet, parent)

  parent:add(b3_equities_binaryentrypoint_sbe_v7_0.fields.working_indicator, range, value, display)

  return offset + length, value
end

-- Size: Market Segment Received Time
b3_equities_binaryentrypoint_sbe_v7_0_size_of.market_segment_received_time = 8

-- Display: Market Segment Received Time
b3_equities_binaryentrypoint_sbe_v7_0_display.market_segment_received_time = function(value)
  -- Check if field has value
  if value == UInt64(0xFFFFFFFF, 0xFFFFFFFF) then
    return "Market Segment Received Time: No Value"
  end

  return "Market Segment Received Time: "..value
end

-- Dissect: Market Segment Received Time
b3_equities_binaryentrypoint_sbe_v7_0_dissect.market_segment_received_time = function(buffer, offset, packet, parent)
  local length = b3_equities_binaryentrypoint_sbe_v7_0_size_of.market_segment_received_time
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = b3_equities_binaryentrypoint_sbe_v7_0_display.market_segment_received_time(value, buffer, offset, packet, parent)

  parent:add(b3_equities_binaryentrypoint_sbe_v7_0.fields.market_segment_received_time, range, value, display)

  return offset + length, value
end

-- Calculate size of: Execution Report Cancel Message
b3_equities_binaryentrypoint_sbe_v7_0_size_of.execution_report_cancel_message = function(buffer, offset)
  local index = 0

  index = index + b3_equities_binaryentrypoint_sbe_v7_0_size_of.outbound_business_header(buffer, offset + index)

  index = index + b3_equities_binaryentrypoint_sbe_v7_0_size_of.side

  index = index + b3_equities_binaryentrypoint_sbe_v7_0_size_of.ord_status

  index = index + b3_equities_binaryentrypoint_sbe_v7_0_size_of.clordid

  index = index + b3_equities_binaryentrypoint_sbe_v7_0_size_of.secondary_order_id

  index = index + b3_equities_binaryentrypoint_sbe_v7_0_size_of.security_id

  index = index + b3_equities_binaryentrypoint_sbe_v7_0_size_of.security_exchange

  index = index + b3_equities_binaryentrypoint_sbe_v7_0_size_of.cum_qty

  index = index + b3_equities_binaryentrypoint_sbe_v7_0_size_of.account

  index = index + b3_equities_binaryentrypoint_sbe_v7_0_size_of.exec_id

  index = index + b3_equities_binaryentrypoint_sbe_v7_0_size_of.transact_time

  index = index + b3_equities_binaryentrypoint_sbe_v7_0_size_of.market_segment_received_time

  index = index + b3_equities_binaryentrypoint_sbe_v7_0_size_of.order_id

  index = index + b3_equities_binaryentrypoint_sbe_v7_0_size_of.origclordid

  index = index + b3_equities_binaryentrypoint_sbe_v7_0_size_of.trade_date

  index = index + b3_equities_binaryentrypoint_sbe_v7_0_size_of.working_indicator

  index = index + b3_equities_binaryentrypoint_sbe_v7_0_size_of.exec_restatement_reason

  index = index + b3_equities_binaryentrypoint_sbe_v7_0_size_of.action_requested_from_session_id

  index = index + b3_equities_binaryentrypoint_sbe_v7_0_size_of.mass_action_report_id_optional

  index = index + b3_equities_binaryentrypoint_sbe_v7_0_size_of.ordtype

  index = index + b3_equities_binaryentrypoint_sbe_v7_0_size_of.time_in_force

  index = index + b3_equities_binaryentrypoint_sbe_v7_0_size_of.expire_date

  index = index + b3_equities_binaryentrypoint_sbe_v7_0_size_of.order_qty

  index = index + b3_equities_binaryentrypoint_sbe_v7_0_size_of.price_optional

  index = index + b3_equities_binaryentrypoint_sbe_v7_0_size_of.stop_px

  index = index + b3_equities_binaryentrypoint_sbe_v7_0_size_of.min_qty

  index = index + b3_equities_binaryentrypoint_sbe_v7_0_size_of.max_floor

  index = index + b3_equities_binaryentrypoint_sbe_v7_0_size_of.desk_id(buffer, offset + index)

  index = index + b3_equities_binaryentrypoint_sbe_v7_0_size_of.memo(buffer, offset + index)

  return index
end

-- Display: Execution Report Cancel Message
b3_equities_binaryentrypoint_sbe_v7_0_display.execution_report_cancel_message = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Execution Report Cancel Message
b3_equities_binaryentrypoint_sbe_v7_0_dissect.execution_report_cancel_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Outbound Business Header: Struct of 5 fields
  index, outbound_business_header = b3_equities_binaryentrypoint_sbe_v7_0_dissect.outbound_business_header(buffer, index, packet, parent)

  -- Side: 1 Byte Ascii String Enum with 2 values
  index, side = b3_equities_binaryentrypoint_sbe_v7_0_dissect.side(buffer, index, packet, parent)

  -- Ord Status: 1 Byte Ascii String Enum with 9 values
  index, ord_status = b3_equities_binaryentrypoint_sbe_v7_0_dissect.ord_status(buffer, index, packet, parent)

  -- ClOrdId: 8 Byte Unsigned Fixed Width Integer
  index, clordid = b3_equities_binaryentrypoint_sbe_v7_0_dissect.clordid(buffer, index, packet, parent)

  -- Secondary Order Id: 8 Byte Unsigned Fixed Width Integer
  index, secondary_order_id = b3_equities_binaryentrypoint_sbe_v7_0_dissect.secondary_order_id(buffer, index, packet, parent)

  -- Security Id: 8 Byte Unsigned Fixed Width Integer
  index, security_id = b3_equities_binaryentrypoint_sbe_v7_0_dissect.security_id(buffer, index, packet, parent)

  -- Security Exchange: 4 Byte Ascii String
  index, security_exchange = b3_equities_binaryentrypoint_sbe_v7_0_dissect.security_exchange(buffer, index, packet, parent)

  -- Cum Qty: 8 Byte Unsigned Fixed Width Integer
  index, cum_qty = b3_equities_binaryentrypoint_sbe_v7_0_dissect.cum_qty(buffer, index, packet, parent)

  -- Account: 4 Byte Unsigned Fixed Width Integer
  index, account = b3_equities_binaryentrypoint_sbe_v7_0_dissect.account(buffer, index, packet, parent)

  -- Exec Id: 8 Byte Unsigned Fixed Width Integer
  index, exec_id = b3_equities_binaryentrypoint_sbe_v7_0_dissect.exec_id(buffer, index, packet, parent)

  -- Transact Time: 8 Byte Unsigned Fixed Width Integer
  index, transact_time = b3_equities_binaryentrypoint_sbe_v7_0_dissect.transact_time(buffer, index, packet, parent)

  -- Market Segment Received Time: 8 Byte Unsigned Fixed Width Integer Nullable
  index, market_segment_received_time = b3_equities_binaryentrypoint_sbe_v7_0_dissect.market_segment_received_time(buffer, index, packet, parent)

  -- Order Id: 8 Byte Unsigned Fixed Width Integer
  index, order_id = b3_equities_binaryentrypoint_sbe_v7_0_dissect.order_id(buffer, index, packet, parent)

  -- OrigClOrdId: 8 Byte Unsigned Fixed Width Integer
  index, origclordid = b3_equities_binaryentrypoint_sbe_v7_0_dissect.origclordid(buffer, index, packet, parent)

  -- Trade Date: 2 Byte Unsigned Fixed Width Integer
  index, trade_date = b3_equities_binaryentrypoint_sbe_v7_0_dissect.trade_date(buffer, index, packet, parent)

  -- Working Indicator: 1 Byte Unsigned Fixed Width Integer Enum with 2 values
  index, working_indicator = b3_equities_binaryentrypoint_sbe_v7_0_dissect.working_indicator(buffer, index, packet, parent)

  -- Exec Restatement Reason: 1 Byte Unsigned Fixed Width Integer Enum with 18 values
  index, exec_restatement_reason = b3_equities_binaryentrypoint_sbe_v7_0_dissect.exec_restatement_reason(buffer, index, packet, parent)

  -- Action Requested From Session Id: 4 Byte Unsigned Fixed Width Integer
  index, action_requested_from_session_id = b3_equities_binaryentrypoint_sbe_v7_0_dissect.action_requested_from_session_id(buffer, index, packet, parent)

  -- Mass Action Report Id Optional: 8 Byte Unsigned Fixed Width Integer
  index, mass_action_report_id_optional = b3_equities_binaryentrypoint_sbe_v7_0_dissect.mass_action_report_id_optional(buffer, index, packet, parent)

  -- OrdType: 1 Byte Ascii String Enum with 7 values
  index, ordtype = b3_equities_binaryentrypoint_sbe_v7_0_dissect.ordtype(buffer, index, packet, parent)

  -- Time In Force: 1 Byte Ascii String Enum with 7 values
  index, time_in_force = b3_equities_binaryentrypoint_sbe_v7_0_dissect.time_in_force(buffer, index, packet, parent)

  -- Expire Date: 2 Byte Unsigned Fixed Width Integer
  index, expire_date = b3_equities_binaryentrypoint_sbe_v7_0_dissect.expire_date(buffer, index, packet, parent)

  -- Order Qty: 8 Byte Unsigned Fixed Width Integer
  index, order_qty = b3_equities_binaryentrypoint_sbe_v7_0_dissect.order_qty(buffer, index, packet, parent)

  -- Price Optional: 8 Byte Signed Fixed Width Integer Nullable
  index, price_optional = b3_equities_binaryentrypoint_sbe_v7_0_dissect.price_optional(buffer, index, packet, parent)

  -- Stop Px: 8 Byte Signed Fixed Width Integer Nullable
  index, stop_px = b3_equities_binaryentrypoint_sbe_v7_0_dissect.stop_px(buffer, index, packet, parent)

  -- Min Qty: 8 Byte Unsigned Fixed Width Integer
  index, min_qty = b3_equities_binaryentrypoint_sbe_v7_0_dissect.min_qty(buffer, index, packet, parent)

  -- Max Floor: 8 Byte Unsigned Fixed Width Integer
  index, max_floor = b3_equities_binaryentrypoint_sbe_v7_0_dissect.max_floor(buffer, index, packet, parent)

  -- Desk Id: Struct of 2 fields
  index, desk_id = b3_equities_binaryentrypoint_sbe_v7_0_dissect.desk_id(buffer, index, packet, parent)

  -- Memo: Struct of 2 fields
  index, memo = b3_equities_binaryentrypoint_sbe_v7_0_dissect.memo(buffer, index, packet, parent)

  return index
end

-- Dissect: Execution Report Cancel Message
b3_equities_binaryentrypoint_sbe_v7_0_dissect.execution_report_cancel_message = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.execution_report_cancel_message then
    local length = b3_equities_binaryentrypoint_sbe_v7_0_size_of.execution_report_cancel_message(buffer, offset)
    local range = buffer(offset, length)
    local display = b3_equities_binaryentrypoint_sbe_v7_0_display.execution_report_cancel_message(buffer, packet, parent)
    parent = parent:add(b3_equities_binaryentrypoint_sbe_v7_0.fields.execution_report_cancel_message, range, display)
  end

  return b3_equities_binaryentrypoint_sbe_v7_0_dissect.execution_report_cancel_message_fields(buffer, offset, packet, parent)
end

-- Size: Protection Price
b3_equities_binaryentrypoint_sbe_v7_0_size_of.protection_price = 8

-- Display: Protection Price
b3_equities_binaryentrypoint_sbe_v7_0_display.protection_price = function(raw, value)
  -- Check null sentinel value
  if raw == Int64(0x00000000, 0x80000000) then
    return "Protection Price: No Value"
  end

  return "Protection Price: "..value
end

-- Translate: Protection Price
translate.protection_price = function(raw)
  -- Check null sentinel value
  if raw == Int64(0x00000000, 0x80000000) then
    return 0/0
  end

  return raw:tonumber()/10000
end

-- Dissect: Protection Price
b3_equities_binaryentrypoint_sbe_v7_0_dissect.protection_price = function(buffer, offset, packet, parent)
  local length = b3_equities_binaryentrypoint_sbe_v7_0_size_of.protection_price
  local range = buffer(offset, length)
  local raw = range:le_int64()
  local value = translate.protection_price(raw)
  local display = b3_equities_binaryentrypoint_sbe_v7_0_display.protection_price(raw, value, buffer, offset, packet, parent)

  parent:add(b3_equities_binaryentrypoint_sbe_v7_0.fields.protection_price, range, value, display)

  return offset + length, value
end

-- Calculate size of: Execution Report Modify Message
b3_equities_binaryentrypoint_sbe_v7_0_size_of.execution_report_modify_message = function(buffer, offset)
  local index = 0

  index = index + b3_equities_binaryentrypoint_sbe_v7_0_size_of.outbound_business_header(buffer, offset + index)

  index = index + b3_equities_binaryentrypoint_sbe_v7_0_size_of.side

  index = index + b3_equities_binaryentrypoint_sbe_v7_0_size_of.ord_status

  index = index + b3_equities_binaryentrypoint_sbe_v7_0_size_of.clordid

  index = index + b3_equities_binaryentrypoint_sbe_v7_0_size_of.secondary_order_id

  index = index + b3_equities_binaryentrypoint_sbe_v7_0_size_of.security_id

  index = index + b3_equities_binaryentrypoint_sbe_v7_0_size_of.security_exchange

  index = index + b3_equities_binaryentrypoint_sbe_v7_0_size_of.leaves_qty

  index = index + b3_equities_binaryentrypoint_sbe_v7_0_size_of.account

  index = index + b3_equities_binaryentrypoint_sbe_v7_0_size_of.exec_id

  index = index + b3_equities_binaryentrypoint_sbe_v7_0_size_of.transact_time

  index = index + b3_equities_binaryentrypoint_sbe_v7_0_size_of.cum_qty

  index = index + b3_equities_binaryentrypoint_sbe_v7_0_size_of.market_segment_received_time

  index = index + b3_equities_binaryentrypoint_sbe_v7_0_size_of.order_id

  index = index + b3_equities_binaryentrypoint_sbe_v7_0_size_of.origclordid

  index = index + b3_equities_binaryentrypoint_sbe_v7_0_size_of.protection_price

  index = index + b3_equities_binaryentrypoint_sbe_v7_0_size_of.trade_date

  index = index + b3_equities_binaryentrypoint_sbe_v7_0_size_of.working_indicator

  index = index + b3_equities_binaryentrypoint_sbe_v7_0_size_of.multi_leg_reporting_type

  index = index + b3_equities_binaryentrypoint_sbe_v7_0_size_of.ordtype

  index = index + b3_equities_binaryentrypoint_sbe_v7_0_size_of.time_in_force

  index = index + b3_equities_binaryentrypoint_sbe_v7_0_size_of.expire_date

  index = index + b3_equities_binaryentrypoint_sbe_v7_0_size_of.order_qty

  index = index + b3_equities_binaryentrypoint_sbe_v7_0_size_of.price_optional

  index = index + b3_equities_binaryentrypoint_sbe_v7_0_size_of.stop_px

  index = index + b3_equities_binaryentrypoint_sbe_v7_0_size_of.min_qty

  index = index + b3_equities_binaryentrypoint_sbe_v7_0_size_of.max_floor

  index = index + b3_equities_binaryentrypoint_sbe_v7_0_size_of.desk_id(buffer, offset + index)

  index = index + b3_equities_binaryentrypoint_sbe_v7_0_size_of.memo(buffer, offset + index)

  return index
end

-- Display: Execution Report Modify Message
b3_equities_binaryentrypoint_sbe_v7_0_display.execution_report_modify_message = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Execution Report Modify Message
b3_equities_binaryentrypoint_sbe_v7_0_dissect.execution_report_modify_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Outbound Business Header: Struct of 5 fields
  index, outbound_business_header = b3_equities_binaryentrypoint_sbe_v7_0_dissect.outbound_business_header(buffer, index, packet, parent)

  -- Side: 1 Byte Ascii String Enum with 2 values
  index, side = b3_equities_binaryentrypoint_sbe_v7_0_dissect.side(buffer, index, packet, parent)

  -- Ord Status: 1 Byte Ascii String Enum with 9 values
  index, ord_status = b3_equities_binaryentrypoint_sbe_v7_0_dissect.ord_status(buffer, index, packet, parent)

  -- ClOrdId: 8 Byte Unsigned Fixed Width Integer
  index, clordid = b3_equities_binaryentrypoint_sbe_v7_0_dissect.clordid(buffer, index, packet, parent)

  -- Secondary Order Id: 8 Byte Unsigned Fixed Width Integer
  index, secondary_order_id = b3_equities_binaryentrypoint_sbe_v7_0_dissect.secondary_order_id(buffer, index, packet, parent)

  -- Security Id: 8 Byte Unsigned Fixed Width Integer
  index, security_id = b3_equities_binaryentrypoint_sbe_v7_0_dissect.security_id(buffer, index, packet, parent)

  -- Security Exchange: 4 Byte Ascii String
  index, security_exchange = b3_equities_binaryentrypoint_sbe_v7_0_dissect.security_exchange(buffer, index, packet, parent)

  -- Leaves Qty: 8 Byte Unsigned Fixed Width Integer
  index, leaves_qty = b3_equities_binaryentrypoint_sbe_v7_0_dissect.leaves_qty(buffer, index, packet, parent)

  -- Account: 4 Byte Unsigned Fixed Width Integer
  index, account = b3_equities_binaryentrypoint_sbe_v7_0_dissect.account(buffer, index, packet, parent)

  -- Exec Id: 8 Byte Unsigned Fixed Width Integer
  index, exec_id = b3_equities_binaryentrypoint_sbe_v7_0_dissect.exec_id(buffer, index, packet, parent)

  -- Transact Time: 8 Byte Unsigned Fixed Width Integer
  index, transact_time = b3_equities_binaryentrypoint_sbe_v7_0_dissect.transact_time(buffer, index, packet, parent)

  -- Cum Qty: 8 Byte Unsigned Fixed Width Integer
  index, cum_qty = b3_equities_binaryentrypoint_sbe_v7_0_dissect.cum_qty(buffer, index, packet, parent)

  -- Market Segment Received Time: 8 Byte Unsigned Fixed Width Integer Nullable
  index, market_segment_received_time = b3_equities_binaryentrypoint_sbe_v7_0_dissect.market_segment_received_time(buffer, index, packet, parent)

  -- Order Id: 8 Byte Unsigned Fixed Width Integer
  index, order_id = b3_equities_binaryentrypoint_sbe_v7_0_dissect.order_id(buffer, index, packet, parent)

  -- OrigClOrdId: 8 Byte Unsigned Fixed Width Integer
  index, origclordid = b3_equities_binaryentrypoint_sbe_v7_0_dissect.origclordid(buffer, index, packet, parent)

  -- Protection Price: 8 Byte Signed Fixed Width Integer Nullable
  index, protection_price = b3_equities_binaryentrypoint_sbe_v7_0_dissect.protection_price(buffer, index, packet, parent)

  -- Trade Date: 2 Byte Unsigned Fixed Width Integer
  index, trade_date = b3_equities_binaryentrypoint_sbe_v7_0_dissect.trade_date(buffer, index, packet, parent)

  -- Working Indicator: 1 Byte Unsigned Fixed Width Integer Enum with 2 values
  index, working_indicator = b3_equities_binaryentrypoint_sbe_v7_0_dissect.working_indicator(buffer, index, packet, parent)

  -- Multi Leg Reporting Type: 1 Byte Ascii String Enum with 4 values
  index, multi_leg_reporting_type = b3_equities_binaryentrypoint_sbe_v7_0_dissect.multi_leg_reporting_type(buffer, index, packet, parent)

  -- OrdType: 1 Byte Ascii String Enum with 7 values
  index, ordtype = b3_equities_binaryentrypoint_sbe_v7_0_dissect.ordtype(buffer, index, packet, parent)

  -- Time In Force: 1 Byte Ascii String Enum with 7 values
  index, time_in_force = b3_equities_binaryentrypoint_sbe_v7_0_dissect.time_in_force(buffer, index, packet, parent)

  -- Expire Date: 2 Byte Unsigned Fixed Width Integer
  index, expire_date = b3_equities_binaryentrypoint_sbe_v7_0_dissect.expire_date(buffer, index, packet, parent)

  -- Order Qty: 8 Byte Unsigned Fixed Width Integer
  index, order_qty = b3_equities_binaryentrypoint_sbe_v7_0_dissect.order_qty(buffer, index, packet, parent)

  -- Price Optional: 8 Byte Signed Fixed Width Integer Nullable
  index, price_optional = b3_equities_binaryentrypoint_sbe_v7_0_dissect.price_optional(buffer, index, packet, parent)

  -- Stop Px: 8 Byte Signed Fixed Width Integer Nullable
  index, stop_px = b3_equities_binaryentrypoint_sbe_v7_0_dissect.stop_px(buffer, index, packet, parent)

  -- Min Qty: 8 Byte Unsigned Fixed Width Integer
  index, min_qty = b3_equities_binaryentrypoint_sbe_v7_0_dissect.min_qty(buffer, index, packet, parent)

  -- Max Floor: 8 Byte Unsigned Fixed Width Integer
  index, max_floor = b3_equities_binaryentrypoint_sbe_v7_0_dissect.max_floor(buffer, index, packet, parent)

  -- Desk Id: Struct of 2 fields
  index, desk_id = b3_equities_binaryentrypoint_sbe_v7_0_dissect.desk_id(buffer, index, packet, parent)

  -- Memo: Struct of 2 fields
  index, memo = b3_equities_binaryentrypoint_sbe_v7_0_dissect.memo(buffer, index, packet, parent)

  return index
end

-- Dissect: Execution Report Modify Message
b3_equities_binaryentrypoint_sbe_v7_0_dissect.execution_report_modify_message = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.execution_report_modify_message then
    local length = b3_equities_binaryentrypoint_sbe_v7_0_size_of.execution_report_modify_message(buffer, offset)
    local range = buffer(offset, length)
    local display = b3_equities_binaryentrypoint_sbe_v7_0_display.execution_report_modify_message(buffer, packet, parent)
    parent = parent:add(b3_equities_binaryentrypoint_sbe_v7_0.fields.execution_report_modify_message, range, display)
  end

  return b3_equities_binaryentrypoint_sbe_v7_0_dissect.execution_report_modify_message_fields(buffer, offset, packet, parent)
end

-- Calculate size of: Execution Report New Message
b3_equities_binaryentrypoint_sbe_v7_0_size_of.execution_report_new_message = function(buffer, offset)
  local index = 0

  index = index + b3_equities_binaryentrypoint_sbe_v7_0_size_of.outbound_business_header(buffer, offset + index)

  index = index + b3_equities_binaryentrypoint_sbe_v7_0_size_of.side

  index = index + b3_equities_binaryentrypoint_sbe_v7_0_size_of.ord_status

  index = index + b3_equities_binaryentrypoint_sbe_v7_0_size_of.clordid

  index = index + b3_equities_binaryentrypoint_sbe_v7_0_size_of.secondary_order_id

  index = index + b3_equities_binaryentrypoint_sbe_v7_0_size_of.security_id

  index = index + b3_equities_binaryentrypoint_sbe_v7_0_size_of.security_exchange

  index = index + b3_equities_binaryentrypoint_sbe_v7_0_size_of.order_id

  index = index + b3_equities_binaryentrypoint_sbe_v7_0_size_of.account

  index = index + b3_equities_binaryentrypoint_sbe_v7_0_size_of.exec_id

  index = index + b3_equities_binaryentrypoint_sbe_v7_0_size_of.transact_time

  index = index + b3_equities_binaryentrypoint_sbe_v7_0_size_of.market_segment_received_time

  index = index + b3_equities_binaryentrypoint_sbe_v7_0_size_of.protection_price

  index = index + b3_equities_binaryentrypoint_sbe_v7_0_size_of.trade_date

  index = index + b3_equities_binaryentrypoint_sbe_v7_0_size_of.working_indicator

  index = index + b3_equities_binaryentrypoint_sbe_v7_0_size_of.multi_leg_reporting_type

  index = index + b3_equities_binaryentrypoint_sbe_v7_0_size_of.ordtype

  index = index + b3_equities_binaryentrypoint_sbe_v7_0_size_of.time_in_force

  index = index + b3_equities_binaryentrypoint_sbe_v7_0_size_of.expire_date

  index = index + b3_equities_binaryentrypoint_sbe_v7_0_size_of.order_qty

  index = index + b3_equities_binaryentrypoint_sbe_v7_0_size_of.price_optional

  index = index + b3_equities_binaryentrypoint_sbe_v7_0_size_of.stop_px

  index = index + b3_equities_binaryentrypoint_sbe_v7_0_size_of.min_qty

  index = index + b3_equities_binaryentrypoint_sbe_v7_0_size_of.max_floor

  index = index + b3_equities_binaryentrypoint_sbe_v7_0_size_of.crossid_optional

  index = index + b3_equities_binaryentrypoint_sbe_v7_0_size_of.desk_id(buffer, offset + index)

  index = index + b3_equities_binaryentrypoint_sbe_v7_0_size_of.memo(buffer, offset + index)

  return index
end

-- Display: Execution Report New Message
b3_equities_binaryentrypoint_sbe_v7_0_display.execution_report_new_message = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Execution Report New Message
b3_equities_binaryentrypoint_sbe_v7_0_dissect.execution_report_new_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Outbound Business Header: Struct of 5 fields
  index, outbound_business_header = b3_equities_binaryentrypoint_sbe_v7_0_dissect.outbound_business_header(buffer, index, packet, parent)

  -- Side: 1 Byte Ascii String Enum with 2 values
  index, side = b3_equities_binaryentrypoint_sbe_v7_0_dissect.side(buffer, index, packet, parent)

  -- Ord Status: 1 Byte Ascii String Enum with 9 values
  index, ord_status = b3_equities_binaryentrypoint_sbe_v7_0_dissect.ord_status(buffer, index, packet, parent)

  -- ClOrdId: 8 Byte Unsigned Fixed Width Integer
  index, clordid = b3_equities_binaryentrypoint_sbe_v7_0_dissect.clordid(buffer, index, packet, parent)

  -- Secondary Order Id: 8 Byte Unsigned Fixed Width Integer
  index, secondary_order_id = b3_equities_binaryentrypoint_sbe_v7_0_dissect.secondary_order_id(buffer, index, packet, parent)

  -- Security Id: 8 Byte Unsigned Fixed Width Integer
  index, security_id = b3_equities_binaryentrypoint_sbe_v7_0_dissect.security_id(buffer, index, packet, parent)

  -- Security Exchange: 4 Byte Ascii String
  index, security_exchange = b3_equities_binaryentrypoint_sbe_v7_0_dissect.security_exchange(buffer, index, packet, parent)

  -- Order Id: 8 Byte Unsigned Fixed Width Integer
  index, order_id = b3_equities_binaryentrypoint_sbe_v7_0_dissect.order_id(buffer, index, packet, parent)

  -- Account: 4 Byte Unsigned Fixed Width Integer
  index, account = b3_equities_binaryentrypoint_sbe_v7_0_dissect.account(buffer, index, packet, parent)

  -- Exec Id: 8 Byte Unsigned Fixed Width Integer
  index, exec_id = b3_equities_binaryentrypoint_sbe_v7_0_dissect.exec_id(buffer, index, packet, parent)

  -- Transact Time: 8 Byte Unsigned Fixed Width Integer
  index, transact_time = b3_equities_binaryentrypoint_sbe_v7_0_dissect.transact_time(buffer, index, packet, parent)

  -- Market Segment Received Time: 8 Byte Unsigned Fixed Width Integer Nullable
  index, market_segment_received_time = b3_equities_binaryentrypoint_sbe_v7_0_dissect.market_segment_received_time(buffer, index, packet, parent)

  -- Protection Price: 8 Byte Signed Fixed Width Integer Nullable
  index, protection_price = b3_equities_binaryentrypoint_sbe_v7_0_dissect.protection_price(buffer, index, packet, parent)

  -- Trade Date: 2 Byte Unsigned Fixed Width Integer
  index, trade_date = b3_equities_binaryentrypoint_sbe_v7_0_dissect.trade_date(buffer, index, packet, parent)

  -- Working Indicator: 1 Byte Unsigned Fixed Width Integer Enum with 2 values
  index, working_indicator = b3_equities_binaryentrypoint_sbe_v7_0_dissect.working_indicator(buffer, index, packet, parent)

  -- Multi Leg Reporting Type: 1 Byte Ascii String Enum with 4 values
  index, multi_leg_reporting_type = b3_equities_binaryentrypoint_sbe_v7_0_dissect.multi_leg_reporting_type(buffer, index, packet, parent)

  -- OrdType: 1 Byte Ascii String Enum with 7 values
  index, ordtype = b3_equities_binaryentrypoint_sbe_v7_0_dissect.ordtype(buffer, index, packet, parent)

  -- Time In Force: 1 Byte Ascii String Enum with 7 values
  index, time_in_force = b3_equities_binaryentrypoint_sbe_v7_0_dissect.time_in_force(buffer, index, packet, parent)

  -- Expire Date: 2 Byte Unsigned Fixed Width Integer
  index, expire_date = b3_equities_binaryentrypoint_sbe_v7_0_dissect.expire_date(buffer, index, packet, parent)

  -- Order Qty: 8 Byte Unsigned Fixed Width Integer
  index, order_qty = b3_equities_binaryentrypoint_sbe_v7_0_dissect.order_qty(buffer, index, packet, parent)

  -- Price Optional: 8 Byte Signed Fixed Width Integer Nullable
  index, price_optional = b3_equities_binaryentrypoint_sbe_v7_0_dissect.price_optional(buffer, index, packet, parent)

  -- Stop Px: 8 Byte Signed Fixed Width Integer Nullable
  index, stop_px = b3_equities_binaryentrypoint_sbe_v7_0_dissect.stop_px(buffer, index, packet, parent)

  -- Min Qty: 8 Byte Unsigned Fixed Width Integer
  index, min_qty = b3_equities_binaryentrypoint_sbe_v7_0_dissect.min_qty(buffer, index, packet, parent)

  -- Max Floor: 8 Byte Unsigned Fixed Width Integer
  index, max_floor = b3_equities_binaryentrypoint_sbe_v7_0_dissect.max_floor(buffer, index, packet, parent)

  -- CrossId Optional: 8 Byte Unsigned Fixed Width Integer
  index, crossid_optional = b3_equities_binaryentrypoint_sbe_v7_0_dissect.crossid_optional(buffer, index, packet, parent)

  -- Desk Id: Struct of 2 fields
  index, desk_id = b3_equities_binaryentrypoint_sbe_v7_0_dissect.desk_id(buffer, index, packet, parent)

  -- Memo: Struct of 2 fields
  index, memo = b3_equities_binaryentrypoint_sbe_v7_0_dissect.memo(buffer, index, packet, parent)

  return index
end

-- Dissect: Execution Report New Message
b3_equities_binaryentrypoint_sbe_v7_0_dissect.execution_report_new_message = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.execution_report_new_message then
    local length = b3_equities_binaryentrypoint_sbe_v7_0_size_of.execution_report_new_message(buffer, offset)
    local range = buffer(offset, length)
    local display = b3_equities_binaryentrypoint_sbe_v7_0_display.execution_report_new_message(buffer, packet, parent)
    parent = parent:add(b3_equities_binaryentrypoint_sbe_v7_0.fields.execution_report_new_message, range, display)
  end

  return b3_equities_binaryentrypoint_sbe_v7_0_dissect.execution_report_new_message_fields(buffer, offset, packet, parent)
end

-- Size: Executing Trader Optional
b3_equities_binaryentrypoint_sbe_v7_0_size_of.executing_trader_optional = 5

-- Display: Executing Trader Optional
b3_equities_binaryentrypoint_sbe_v7_0_display.executing_trader_optional = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Executing Trader Optional: No Value"
  end

  return "Executing Trader Optional: "..value
end

-- Dissect: Executing Trader Optional
b3_equities_binaryentrypoint_sbe_v7_0_dissect.executing_trader_optional = function(buffer, offset, packet, parent)
  local length = b3_equities_binaryentrypoint_sbe_v7_0_size_of.executing_trader_optional
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

  local display = b3_equities_binaryentrypoint_sbe_v7_0_display.executing_trader_optional(value, buffer, offset, packet, parent)

  parent:add(b3_equities_binaryentrypoint_sbe_v7_0.fields.executing_trader_optional, range, value, display)

  return offset + length, value
end

-- Size: CrossId
b3_equities_binaryentrypoint_sbe_v7_0_size_of.crossid = 8

-- Display: CrossId
b3_equities_binaryentrypoint_sbe_v7_0_display.crossid = function(value)
  return "CrossId: "..value
end

-- Dissect: CrossId
b3_equities_binaryentrypoint_sbe_v7_0_dissect.crossid = function(buffer, offset, packet, parent)
  local length = b3_equities_binaryentrypoint_sbe_v7_0_size_of.crossid
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = b3_equities_binaryentrypoint_sbe_v7_0_display.crossid(value, buffer, offset, packet, parent)

  parent:add(b3_equities_binaryentrypoint_sbe_v7_0.fields.crossid, range, value, display)

  return offset + length, value
end

-- Calculate size of: New Order Cross Message
b3_equities_binaryentrypoint_sbe_v7_0_size_of.new_order_cross_message = function(buffer, offset)
  local index = 0

  index = index + b3_equities_binaryentrypoint_sbe_v7_0_size_of.inbound_business_header(buffer, offset + index)

  index = index + b3_equities_binaryentrypoint_sbe_v7_0_size_of.crossid

  index = index + b3_equities_binaryentrypoint_sbe_v7_0_size_of.sender_location

  index = index + b3_equities_binaryentrypoint_sbe_v7_0_size_of.entering_trader

  index = index + b3_equities_binaryentrypoint_sbe_v7_0_size_of.executing_trader_optional

  index = index + b3_equities_binaryentrypoint_sbe_v7_0_size_of.security_id

  index = index + b3_equities_binaryentrypoint_sbe_v7_0_size_of.security_exchange

  index = index + b3_equities_binaryentrypoint_sbe_v7_0_size_of.order_qty

  index = index + b3_equities_binaryentrypoint_sbe_v7_0_size_of.price

  index = index + b3_equities_binaryentrypoint_sbe_v7_0_size_of.crossed_indicator

  index = index + b3_equities_binaryentrypoint_sbe_v7_0_size_of.no_sides_groups(buffer, offset + index)

  index = index + b3_equities_binaryentrypoint_sbe_v7_0_size_of.desk_id(buffer, offset + index)

  index = index + b3_equities_binaryentrypoint_sbe_v7_0_size_of.memo(buffer, offset + index)

  return index
end

-- Display: New Order Cross Message
b3_equities_binaryentrypoint_sbe_v7_0_display.new_order_cross_message = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: New Order Cross Message
b3_equities_binaryentrypoint_sbe_v7_0_dissect.new_order_cross_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Inbound Business Header: Struct of 5 fields
  index, inbound_business_header = b3_equities_binaryentrypoint_sbe_v7_0_dissect.inbound_business_header(buffer, index, packet, parent)

  -- CrossId: 8 Byte Unsigned Fixed Width Integer
  index, crossid = b3_equities_binaryentrypoint_sbe_v7_0_dissect.crossid(buffer, index, packet, parent)

  -- Sender Location: 10 Byte Ascii String
  index, sender_location = b3_equities_binaryentrypoint_sbe_v7_0_dissect.sender_location(buffer, index, packet, parent)

  -- Entering Trader: 5 Byte Ascii String
  index, entering_trader = b3_equities_binaryentrypoint_sbe_v7_0_dissect.entering_trader(buffer, index, packet, parent)

  -- Executing Trader Optional: 5 Byte Ascii String
  index, executing_trader_optional = b3_equities_binaryentrypoint_sbe_v7_0_dissect.executing_trader_optional(buffer, index, packet, parent)

  -- Security Id: 8 Byte Unsigned Fixed Width Integer
  index, security_id = b3_equities_binaryentrypoint_sbe_v7_0_dissect.security_id(buffer, index, packet, parent)

  -- Security Exchange: 4 Byte Ascii String
  index, security_exchange = b3_equities_binaryentrypoint_sbe_v7_0_dissect.security_exchange(buffer, index, packet, parent)

  -- Order Qty: 8 Byte Unsigned Fixed Width Integer
  index, order_qty = b3_equities_binaryentrypoint_sbe_v7_0_dissect.order_qty(buffer, index, packet, parent)

  -- Price: 8 Byte Signed Fixed Width Integer
  index, price = b3_equities_binaryentrypoint_sbe_v7_0_dissect.price(buffer, index, packet, parent)

  -- Crossed Indicator: 2 Byte Unsigned Fixed Width Integer Enum with 4 values
  index, crossed_indicator = b3_equities_binaryentrypoint_sbe_v7_0_dissect.crossed_indicator(buffer, index, packet, parent)

  -- No Sides Groups: Struct of 2 fields
  index, no_sides_groups = b3_equities_binaryentrypoint_sbe_v7_0_dissect.no_sides_groups(buffer, index, packet, parent)

  -- Desk Id: Struct of 2 fields
  index, desk_id = b3_equities_binaryentrypoint_sbe_v7_0_dissect.desk_id(buffer, index, packet, parent)

  -- Memo: Struct of 2 fields
  index, memo = b3_equities_binaryentrypoint_sbe_v7_0_dissect.memo(buffer, index, packet, parent)

  return index
end

-- Dissect: New Order Cross Message
b3_equities_binaryentrypoint_sbe_v7_0_dissect.new_order_cross_message = function(buffer, offset, packet, parent)
  -- Optionally add dynamic struct element to protocol tree
  if show.new_order_cross_message then
    local length = b3_equities_binaryentrypoint_sbe_v7_0_size_of.new_order_cross_message(buffer, offset)
    local range = buffer(offset, length)
    local display = b3_equities_binaryentrypoint_sbe_v7_0_display.new_order_cross_message(buffer, packet, parent)
    parent = parent:add(b3_equities_binaryentrypoint_sbe_v7_0.fields.new_order_cross_message, range, display)
  end

  return b3_equities_binaryentrypoint_sbe_v7_0_dissect.new_order_cross_message_fields(buffer, offset, packet, parent)
end

-- Size: Single Cancel Restatement Reason
b3_equities_binaryentrypoint_sbe_v7_0_size_of.single_cancel_restatement_reason = 1

-- Display: Single Cancel Restatement Reason
b3_equities_binaryentrypoint_sbe_v7_0_display.single_cancel_restatement_reason = function(value)
  if value == 203 then
    return "Single Cancel Restatement Reason: Cancelorderduetooperationalerror (203)"
  end
  if value == 0 then
    return "Single Cancel Restatement Reason: No Value"
  end

  return "Single Cancel Restatement Reason: Unknown("..value..")"
end

-- Dissect: Single Cancel Restatement Reason
b3_equities_binaryentrypoint_sbe_v7_0_dissect.single_cancel_restatement_reason = function(buffer, offset, packet, parent)
  local length = b3_equities_binaryentrypoint_sbe_v7_0_size_of.single_cancel_restatement_reason
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = b3_equities_binaryentrypoint_sbe_v7_0_display.single_cancel_restatement_reason(value, buffer, offset, packet, parent)

  parent:add(b3_equities_binaryentrypoint_sbe_v7_0.fields.single_cancel_restatement_reason, range, value, display)

  return offset + length, value
end

-- Calculate size of: Order Cancel Request Message
b3_equities_binaryentrypoint_sbe_v7_0_size_of.order_cancel_request_message = function(buffer, offset)
  local index = 0

  index = index + b3_equities_binaryentrypoint_sbe_v7_0_size_of.inbound_business_header(buffer, offset + index)

  index = index + b3_equities_binaryentrypoint_sbe_v7_0_size_of.clordid

  index = index + b3_equities_binaryentrypoint_sbe_v7_0_size_of.security_id

  index = index + b3_equities_binaryentrypoint_sbe_v7_0_size_of.security_exchange

  index = index + b3_equities_binaryentrypoint_sbe_v7_0_size_of.order_id_optional

  index = index + b3_equities_binaryentrypoint_sbe_v7_0_size_of.origclordid

  index = index + b3_equities_binaryentrypoint_sbe_v7_0_size_of.side

  index = index + b3_equities_binaryentrypoint_sbe_v7_0_size_of.single_cancel_restatement_reason

  index = index + b3_equities_binaryentrypoint_sbe_v7_0_size_of.sender_location

  index = index + b3_equities_binaryentrypoint_sbe_v7_0_size_of.entering_trader

  index = index + b3_equities_binaryentrypoint_sbe_v7_0_size_of.executing_trader_optional

  index = index + b3_equities_binaryentrypoint_sbe_v7_0_size_of.desk_id(buffer, offset + index)

  index = index + b3_equities_binaryentrypoint_sbe_v7_0_size_of.memo(buffer, offset + index)

  return index
end

-- Display: Order Cancel Request Message
b3_equities_binaryentrypoint_sbe_v7_0_display.order_cancel_request_message = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Order Cancel Request Message
b3_equities_binaryentrypoint_sbe_v7_0_dissect.order_cancel_request_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Inbound Business Header: Struct of 5 fields
  index, inbound_business_header = b3_equities_binaryentrypoint_sbe_v7_0_dissect.inbound_business_header(buffer, index, packet, parent)

  -- ClOrdId: 8 Byte Unsigned Fixed Width Integer
  index, clordid = b3_equities_binaryentrypoint_sbe_v7_0_dissect.clordid(buffer, index, packet, parent)

  -- Security Id: 8 Byte Unsigned Fixed Width Integer
  index, security_id = b3_equities_binaryentrypoint_sbe_v7_0_dissect.security_id(buffer, index, packet, parent)

  -- Security Exchange: 4 Byte Ascii String
  index, security_exchange = b3_equities_binaryentrypoint_sbe_v7_0_dissect.security_exchange(buffer, index, packet, parent)

  -- Order Id Optional: 8 Byte Unsigned Fixed Width Integer
  index, order_id_optional = b3_equities_binaryentrypoint_sbe_v7_0_dissect.order_id_optional(buffer, index, packet, parent)

  -- OrigClOrdId: 8 Byte Unsigned Fixed Width Integer
  index, origclordid = b3_equities_binaryentrypoint_sbe_v7_0_dissect.origclordid(buffer, index, packet, parent)

  -- Side: 1 Byte Ascii String Enum with 2 values
  index, side = b3_equities_binaryentrypoint_sbe_v7_0_dissect.side(buffer, index, packet, parent)

  -- Single Cancel Restatement Reason: 1 Byte Unsigned Fixed Width Integer Enum with 2 values
  index, single_cancel_restatement_reason = b3_equities_binaryentrypoint_sbe_v7_0_dissect.single_cancel_restatement_reason(buffer, index, packet, parent)

  -- Sender Location: 10 Byte Ascii String
  index, sender_location = b3_equities_binaryentrypoint_sbe_v7_0_dissect.sender_location(buffer, index, packet, parent)

  -- Entering Trader: 5 Byte Ascii String
  index, entering_trader = b3_equities_binaryentrypoint_sbe_v7_0_dissect.entering_trader(buffer, index, packet, parent)

  -- Executing Trader Optional: 5 Byte Ascii String
  index, executing_trader_optional = b3_equities_binaryentrypoint_sbe_v7_0_dissect.executing_trader_optional(buffer, index, packet, parent)

  -- Desk Id: Struct of 2 fields
  index, desk_id = b3_equities_binaryentrypoint_sbe_v7_0_dissect.desk_id(buffer, index, packet, parent)

  -- Memo: Struct of 2 fields
  index, memo = b3_equities_binaryentrypoint_sbe_v7_0_dissect.memo(buffer, index, packet, parent)

  return index
end

-- Dissect: Order Cancel Request Message
b3_equities_binaryentrypoint_sbe_v7_0_dissect.order_cancel_request_message = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.order_cancel_request_message then
    local length = b3_equities_binaryentrypoint_sbe_v7_0_size_of.order_cancel_request_message(buffer, offset)
    local range = buffer(offset, length)
    local display = b3_equities_binaryentrypoint_sbe_v7_0_display.order_cancel_request_message(buffer, packet, parent)
    parent = parent:add(b3_equities_binaryentrypoint_sbe_v7_0.fields.order_cancel_request_message, range, display)
  end

  return b3_equities_binaryentrypoint_sbe_v7_0_dissect.order_cancel_request_message_fields(buffer, offset, packet, parent)
end

-- Calculate size of: Investor Id
b3_equities_binaryentrypoint_sbe_v7_0_size_of.investor_id = function(buffer, offset)
  local index = 0

  index = index + b3_equities_binaryentrypoint_sbe_v7_0_size_of.length

  -- Parse runtime size of: Var Data
  index = index + buffer(offset + index - 1, 1):le_uint()

  return index
end

-- Display: Investor Id
b3_equities_binaryentrypoint_sbe_v7_0_display.investor_id = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Investor Id
b3_equities_binaryentrypoint_sbe_v7_0_dissect.investor_id_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Length: 1 Byte Unsigned Fixed Width Integer
  index, length = b3_equities_binaryentrypoint_sbe_v7_0_dissect.length(buffer, index, packet, parent)

  -- Var Data: 0 Byte
  index = b3_equities_binaryentrypoint_sbe_v7_0_dissect.var_data(buffer, index, packet, parent, length)

  return index
end

-- Dissect: Investor Id
b3_equities_binaryentrypoint_sbe_v7_0_dissect.investor_id = function(buffer, offset, packet, parent)
  -- Optionally add dynamic struct element to protocol tree
  if show.investor_id then
    local length = b3_equities_binaryentrypoint_sbe_v7_0_size_of.investor_id(buffer, offset)
    local range = buffer(offset, length)
    local display = b3_equities_binaryentrypoint_sbe_v7_0_display.investor_id(buffer, packet, parent)
    parent = parent:add(b3_equities_binaryentrypoint_sbe_v7_0.fields.investor_id, range, display)
  end

  return b3_equities_binaryentrypoint_sbe_v7_0_dissect.investor_id_fields(buffer, offset, packet, parent)
end

-- Size: Custody Allocation Type
b3_equities_binaryentrypoint_sbe_v7_0_size_of.custody_allocation_type = 4

-- Display: Custody Allocation Type
b3_equities_binaryentrypoint_sbe_v7_0_display.custody_allocation_type = function(value)
  return "Custody Allocation Type: "..value
end

-- Dissect: Custody Allocation Type
b3_equities_binaryentrypoint_sbe_v7_0_dissect.custody_allocation_type = function(buffer, offset, packet, parent)
  local length = b3_equities_binaryentrypoint_sbe_v7_0_size_of.custody_allocation_type
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = b3_equities_binaryentrypoint_sbe_v7_0_display.custody_allocation_type(value, buffer, offset, packet, parent)

  parent:add(b3_equities_binaryentrypoint_sbe_v7_0.fields.custody_allocation_type, range, value, display)

  return offset + length, value
end

-- Size: Custody Account
b3_equities_binaryentrypoint_sbe_v7_0_size_of.custody_account = 4

-- Display: Custody Account
b3_equities_binaryentrypoint_sbe_v7_0_display.custody_account = function(value)
  return "Custody Account: "..value
end

-- Dissect: Custody Account
b3_equities_binaryentrypoint_sbe_v7_0_dissect.custody_account = function(buffer, offset, packet, parent)
  local length = b3_equities_binaryentrypoint_sbe_v7_0_size_of.custody_account
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = b3_equities_binaryentrypoint_sbe_v7_0_display.custody_account(value, buffer, offset, packet, parent)

  parent:add(b3_equities_binaryentrypoint_sbe_v7_0.fields.custody_account, range, value, display)

  return offset + length, value
end

-- Size: Custodian
b3_equities_binaryentrypoint_sbe_v7_0_size_of.custodian = 4

-- Display: Custodian
b3_equities_binaryentrypoint_sbe_v7_0_display.custodian = function(value)
  return "Custodian: "..value
end

-- Dissect: Custodian
b3_equities_binaryentrypoint_sbe_v7_0_dissect.custodian = function(buffer, offset, packet, parent)
  local length = b3_equities_binaryentrypoint_sbe_v7_0_size_of.custodian
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = b3_equities_binaryentrypoint_sbe_v7_0_display.custodian(value, buffer, offset, packet, parent)

  parent:add(b3_equities_binaryentrypoint_sbe_v7_0.fields.custodian, range, value, display)

  return offset + length, value
end

-- Calculate size of: Custodian Info
b3_equities_binaryentrypoint_sbe_v7_0_size_of.custodian_info = function(buffer, offset)
  local index = 0

  index = index + b3_equities_binaryentrypoint_sbe_v7_0_size_of.custodian

  index = index + b3_equities_binaryentrypoint_sbe_v7_0_size_of.custody_account

  index = index + b3_equities_binaryentrypoint_sbe_v7_0_size_of.custody_allocation_type

  return index
end

-- Display: Custodian Info
b3_equities_binaryentrypoint_sbe_v7_0_display.custodian_info = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Custodian Info
b3_equities_binaryentrypoint_sbe_v7_0_dissect.custodian_info_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Custodian: 4 Byte Unsigned Fixed Width Integer
  index, custodian = b3_equities_binaryentrypoint_sbe_v7_0_dissect.custodian(buffer, index, packet, parent)

  -- Custody Account: 4 Byte Unsigned Fixed Width Integer
  index, custody_account = b3_equities_binaryentrypoint_sbe_v7_0_dissect.custody_account(buffer, index, packet, parent)

  -- Custody Allocation Type: 4 Byte Unsigned Fixed Width Integer
  index, custody_allocation_type = b3_equities_binaryentrypoint_sbe_v7_0_dissect.custody_allocation_type(buffer, index, packet, parent)

  return index
end

-- Dissect: Custodian Info
b3_equities_binaryentrypoint_sbe_v7_0_dissect.custodian_info = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.custodian_info then
    local length = b3_equities_binaryentrypoint_sbe_v7_0_size_of.custodian_info(buffer, offset)
    local range = buffer(offset, length)
    local display = b3_equities_binaryentrypoint_sbe_v7_0_display.custodian_info(buffer, packet, parent)
    parent = parent:add(b3_equities_binaryentrypoint_sbe_v7_0.fields.custodian_info, range, display)
  end

  return b3_equities_binaryentrypoint_sbe_v7_0_dissect.custodian_info_fields(buffer, offset, packet, parent)
end

-- Size: Routing Instruction
b3_equities_binaryentrypoint_sbe_v7_0_size_of.routing_instruction = 1

-- Display: Routing Instruction
b3_equities_binaryentrypoint_sbe_v7_0_display.routing_instruction = function(value)
  if value == 1 then
    return "Routing Instruction: Retailliquiditytaker (1)"
  end
  if value == 2 then
    return "Routing Instruction: Waivedpriority (2)"
  end
  if value == 3 then
    return "Routing Instruction: Brokeronly (3)"
  end
  if value == 4 then
    return "Routing Instruction: Brokeronlyremoval (4)"
  end
  if value == 0 then
    return "Routing Instruction: No Value"
  end

  return "Routing Instruction: Unknown("..value..")"
end

-- Dissect: Routing Instruction
b3_equities_binaryentrypoint_sbe_v7_0_dissect.routing_instruction = function(buffer, offset, packet, parent)
  local length = b3_equities_binaryentrypoint_sbe_v7_0_size_of.routing_instruction
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = b3_equities_binaryentrypoint_sbe_v7_0_display.routing_instruction(value, buffer, offset, packet, parent)

  parent:add(b3_equities_binaryentrypoint_sbe_v7_0.fields.routing_instruction, range, value, display)

  return offset + length, value
end

-- Size: Time In Force Optional
b3_equities_binaryentrypoint_sbe_v7_0_size_of.time_in_force_optional = 1

-- Display: Time In Force Optional
b3_equities_binaryentrypoint_sbe_v7_0_display.time_in_force_optional = function(value)
  -- Check if field has value
  if value == nil or value == 0 then
    return "Time In Force Optional: No Value"
  end

  if value == "0" then
    return "Time In Force Optional: Day (0)"
  end
  if value == "1" then
    return "Time In Force Optional: Goodtillcancel (1)"
  end
  if value == "3" then
    return "Time In Force Optional: Immediateorcancel (3)"
  end
  if value == "4" then
    return "Time In Force Optional: Fillorkill (4)"
  end
  if value == "6" then
    return "Time In Force Optional: Goodtilldate (6)"
  end
  if value == "7" then
    return "Time In Force Optional: Attheclose (7)"
  end
  if value == "A" then
    return "Time In Force Optional: Goodforauction (A)"
  end
  if value == 0 then
    return "Time In Force Optional: No Value"
  end

  return "Time In Force Optional: Unknown("..value..")"
end

-- Dissect: Time In Force Optional
b3_equities_binaryentrypoint_sbe_v7_0_dissect.time_in_force_optional = function(buffer, offset, packet, parent)
  local length = b3_equities_binaryentrypoint_sbe_v7_0_size_of.time_in_force_optional
  local range = buffer(offset, length)

  -- parse as byte
  local value = range:uint()

  -- check if value is non zero
  if value ~= 0 then
    value = range:string()
  end

  local display = b3_equities_binaryentrypoint_sbe_v7_0_display.time_in_force_optional(value, buffer, offset, packet, parent)

  parent:add(b3_equities_binaryentrypoint_sbe_v7_0.fields.time_in_force_optional, range, value, display)

  return offset + length, value
end

-- Size: Self Trade Prevention Instruction
b3_equities_binaryentrypoint_sbe_v7_0_size_of.self_trade_prevention_instruction = 1

-- Display: Self Trade Prevention Instruction
b3_equities_binaryentrypoint_sbe_v7_0_display.self_trade_prevention_instruction = function(value)
  if value == 1 then
    return "Self Trade Prevention Instruction: Cancelaggressororder (1)"
  end
  if value == 2 then
    return "Self Trade Prevention Instruction: Cancelrestingorder (2)"
  end
  if value == 3 then
    return "Self Trade Prevention Instruction: Cancelbothorders (3)"
  end
  if value == 0 then
    return "Self Trade Prevention Instruction: No Value"
  end

  return "Self Trade Prevention Instruction: Unknown("..value..")"
end

-- Dissect: Self Trade Prevention Instruction
b3_equities_binaryentrypoint_sbe_v7_0_dissect.self_trade_prevention_instruction = function(buffer, offset, packet, parent)
  local length = b3_equities_binaryentrypoint_sbe_v7_0_size_of.self_trade_prevention_instruction
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = b3_equities_binaryentrypoint_sbe_v7_0_display.self_trade_prevention_instruction(value, buffer, offset, packet, parent)

  parent:add(b3_equities_binaryentrypoint_sbe_v7_0.fields.self_trade_prevention_instruction, range, value, display)

  return offset + length, value
end

-- Size: Mm Protection Reset
b3_equities_binaryentrypoint_sbe_v7_0_size_of.mm_protection_reset = 1

-- Display: Mm Protection Reset
b3_equities_binaryentrypoint_sbe_v7_0_display.mm_protection_reset = function(value)
  if value == 0 then
    return "Mm Protection Reset: Falsevalue (0)"
  end
  if value == 1 then
    return "Mm Protection Reset: Truevalue (1)"
  end

  return "Mm Protection Reset: Unknown("..value..")"
end

-- Dissect: Mm Protection Reset
b3_equities_binaryentrypoint_sbe_v7_0_dissect.mm_protection_reset = function(buffer, offset, packet, parent)
  local length = b3_equities_binaryentrypoint_sbe_v7_0_size_of.mm_protection_reset
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = b3_equities_binaryentrypoint_sbe_v7_0_display.mm_protection_reset(value, buffer, offset, packet, parent)

  parent:add(b3_equities_binaryentrypoint_sbe_v7_0.fields.mm_protection_reset, range, value, display)

  return offset + length, value
end

-- Calculate size of: Order Cancel Replace Request Message
b3_equities_binaryentrypoint_sbe_v7_0_size_of.order_cancel_replace_request_message = function(buffer, offset)
  local index = 0

  index = index + b3_equities_binaryentrypoint_sbe_v7_0_size_of.inbound_business_header(buffer, offset + index)

  index = index + b3_equities_binaryentrypoint_sbe_v7_0_size_of.ord_tag_id

  index = index + b3_equities_binaryentrypoint_sbe_v7_0_size_of.mm_protection_reset

  index = index + b3_equities_binaryentrypoint_sbe_v7_0_size_of.clordid

  index = index + b3_equities_binaryentrypoint_sbe_v7_0_size_of.account

  index = index + b3_equities_binaryentrypoint_sbe_v7_0_size_of.sender_location

  index = index + b3_equities_binaryentrypoint_sbe_v7_0_size_of.entering_trader

  index = index + b3_equities_binaryentrypoint_sbe_v7_0_size_of.self_trade_prevention_instruction

  index = index + b3_equities_binaryentrypoint_sbe_v7_0_size_of.security_id

  index = index + b3_equities_binaryentrypoint_sbe_v7_0_size_of.security_exchange

  index = index + b3_equities_binaryentrypoint_sbe_v7_0_size_of.side

  index = index + b3_equities_binaryentrypoint_sbe_v7_0_size_of.ordtype

  index = index + b3_equities_binaryentrypoint_sbe_v7_0_size_of.time_in_force_optional

  index = index + b3_equities_binaryentrypoint_sbe_v7_0_size_of.account_type

  index = index + b3_equities_binaryentrypoint_sbe_v7_0_size_of.order_qty

  index = index + b3_equities_binaryentrypoint_sbe_v7_0_size_of.price_optional

  index = index + b3_equities_binaryentrypoint_sbe_v7_0_size_of.order_id_optional

  index = index + b3_equities_binaryentrypoint_sbe_v7_0_size_of.origclordid

  index = index + b3_equities_binaryentrypoint_sbe_v7_0_size_of.stop_px

  index = index + b3_equities_binaryentrypoint_sbe_v7_0_size_of.min_qty

  index = index + b3_equities_binaryentrypoint_sbe_v7_0_size_of.max_floor

  index = index + b3_equities_binaryentrypoint_sbe_v7_0_size_of.executing_trader_optional

  index = index + b3_equities_binaryentrypoint_sbe_v7_0_size_of.routing_instruction

  index = index + b3_equities_binaryentrypoint_sbe_v7_0_size_of.expire_date

  index = index + b3_equities_binaryentrypoint_sbe_v7_0_size_of.custodian_info(buffer, offset + index)

  index = index + b3_equities_binaryentrypoint_sbe_v7_0_size_of.investor_id(buffer, offset + index)

  index = index + b3_equities_binaryentrypoint_sbe_v7_0_size_of.desk_id(buffer, offset + index)

  index = index + b3_equities_binaryentrypoint_sbe_v7_0_size_of.memo(buffer, offset + index)

  return index
end

-- Display: Order Cancel Replace Request Message
b3_equities_binaryentrypoint_sbe_v7_0_display.order_cancel_replace_request_message = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Order Cancel Replace Request Message
b3_equities_binaryentrypoint_sbe_v7_0_dissect.order_cancel_replace_request_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Inbound Business Header: Struct of 5 fields
  index, inbound_business_header = b3_equities_binaryentrypoint_sbe_v7_0_dissect.inbound_business_header(buffer, index, packet, parent)

  -- Ord Tag Id: 1 Byte Unsigned Fixed Width Integer
  index, ord_tag_id = b3_equities_binaryentrypoint_sbe_v7_0_dissect.ord_tag_id(buffer, index, packet, parent)

  -- Mm Protection Reset: 1 Byte Unsigned Fixed Width Integer Enum with 2 values
  index, mm_protection_reset = b3_equities_binaryentrypoint_sbe_v7_0_dissect.mm_protection_reset(buffer, index, packet, parent)

  -- ClOrdId: 8 Byte Unsigned Fixed Width Integer
  index, clordid = b3_equities_binaryentrypoint_sbe_v7_0_dissect.clordid(buffer, index, packet, parent)

  -- Account: 4 Byte Unsigned Fixed Width Integer
  index, account = b3_equities_binaryentrypoint_sbe_v7_0_dissect.account(buffer, index, packet, parent)

  -- Sender Location: 10 Byte Ascii String
  index, sender_location = b3_equities_binaryentrypoint_sbe_v7_0_dissect.sender_location(buffer, index, packet, parent)

  -- Entering Trader: 5 Byte Ascii String
  index, entering_trader = b3_equities_binaryentrypoint_sbe_v7_0_dissect.entering_trader(buffer, index, packet, parent)

  -- Self Trade Prevention Instruction: 1 Byte Unsigned Fixed Width Integer Enum with 4 values
  index, self_trade_prevention_instruction = b3_equities_binaryentrypoint_sbe_v7_0_dissect.self_trade_prevention_instruction(buffer, index, packet, parent)

  -- Security Id: 8 Byte Unsigned Fixed Width Integer
  index, security_id = b3_equities_binaryentrypoint_sbe_v7_0_dissect.security_id(buffer, index, packet, parent)

  -- Security Exchange: 4 Byte Ascii String
  index, security_exchange = b3_equities_binaryentrypoint_sbe_v7_0_dissect.security_exchange(buffer, index, packet, parent)

  -- Side: 1 Byte Ascii String Enum with 2 values
  index, side = b3_equities_binaryentrypoint_sbe_v7_0_dissect.side(buffer, index, packet, parent)

  -- OrdType: 1 Byte Ascii String Enum with 7 values
  index, ordtype = b3_equities_binaryentrypoint_sbe_v7_0_dissect.ordtype(buffer, index, packet, parent)

  -- Time In Force Optional: 1 Byte Ascii String Enum with 8 values
  index, time_in_force_optional = b3_equities_binaryentrypoint_sbe_v7_0_dissect.time_in_force_optional(buffer, index, packet, parent)

  -- Account Type: 1 Byte Unsigned Fixed Width Integer Enum with 3 values
  index, account_type = b3_equities_binaryentrypoint_sbe_v7_0_dissect.account_type(buffer, index, packet, parent)

  -- Order Qty: 8 Byte Unsigned Fixed Width Integer
  index, order_qty = b3_equities_binaryentrypoint_sbe_v7_0_dissect.order_qty(buffer, index, packet, parent)

  -- Price Optional: 8 Byte Signed Fixed Width Integer Nullable
  index, price_optional = b3_equities_binaryentrypoint_sbe_v7_0_dissect.price_optional(buffer, index, packet, parent)

  -- Order Id Optional: 8 Byte Unsigned Fixed Width Integer
  index, order_id_optional = b3_equities_binaryentrypoint_sbe_v7_0_dissect.order_id_optional(buffer, index, packet, parent)

  -- OrigClOrdId: 8 Byte Unsigned Fixed Width Integer
  index, origclordid = b3_equities_binaryentrypoint_sbe_v7_0_dissect.origclordid(buffer, index, packet, parent)

  -- Stop Px: 8 Byte Signed Fixed Width Integer Nullable
  index, stop_px = b3_equities_binaryentrypoint_sbe_v7_0_dissect.stop_px(buffer, index, packet, parent)

  -- Min Qty: 8 Byte Unsigned Fixed Width Integer
  index, min_qty = b3_equities_binaryentrypoint_sbe_v7_0_dissect.min_qty(buffer, index, packet, parent)

  -- Max Floor: 8 Byte Unsigned Fixed Width Integer
  index, max_floor = b3_equities_binaryentrypoint_sbe_v7_0_dissect.max_floor(buffer, index, packet, parent)

  -- Executing Trader Optional: 5 Byte Ascii String
  index, executing_trader_optional = b3_equities_binaryentrypoint_sbe_v7_0_dissect.executing_trader_optional(buffer, index, packet, parent)

  -- Routing Instruction: 1 Byte Unsigned Fixed Width Integer Enum with 5 values
  index, routing_instruction = b3_equities_binaryentrypoint_sbe_v7_0_dissect.routing_instruction(buffer, index, packet, parent)

  -- Expire Date: 2 Byte Unsigned Fixed Width Integer
  index, expire_date = b3_equities_binaryentrypoint_sbe_v7_0_dissect.expire_date(buffer, index, packet, parent)

  -- Custodian Info: Struct of 3 fields
  index, custodian_info = b3_equities_binaryentrypoint_sbe_v7_0_dissect.custodian_info(buffer, index, packet, parent)

  -- Investor Id: Struct of 2 fields
  index, investor_id = b3_equities_binaryentrypoint_sbe_v7_0_dissect.investor_id(buffer, index, packet, parent)

  -- Desk Id: Struct of 2 fields
  index, desk_id = b3_equities_binaryentrypoint_sbe_v7_0_dissect.desk_id(buffer, index, packet, parent)

  -- Memo: Struct of 2 fields
  index, memo = b3_equities_binaryentrypoint_sbe_v7_0_dissect.memo(buffer, index, packet, parent)

  return index
end

-- Dissect: Order Cancel Replace Request Message
b3_equities_binaryentrypoint_sbe_v7_0_dissect.order_cancel_replace_request_message = function(buffer, offset, packet, parent)
  -- Optionally add dynamic struct element to protocol tree
  if show.order_cancel_replace_request_message then
    local length = b3_equities_binaryentrypoint_sbe_v7_0_size_of.order_cancel_replace_request_message(buffer, offset)
    local range = buffer(offset, length)
    local display = b3_equities_binaryentrypoint_sbe_v7_0_display.order_cancel_replace_request_message(buffer, packet, parent)
    parent = parent:add(b3_equities_binaryentrypoint_sbe_v7_0.fields.order_cancel_replace_request_message, range, display)
  end

  return b3_equities_binaryentrypoint_sbe_v7_0_dissect.order_cancel_replace_request_message_fields(buffer, offset, packet, parent)
end

-- Calculate size of: New Order Single Message
b3_equities_binaryentrypoint_sbe_v7_0_size_of.new_order_single_message = function(buffer, offset)
  local index = 0

  index = index + b3_equities_binaryentrypoint_sbe_v7_0_size_of.inbound_business_header(buffer, offset + index)

  index = index + b3_equities_binaryentrypoint_sbe_v7_0_size_of.ord_tag_id

  index = index + b3_equities_binaryentrypoint_sbe_v7_0_size_of.mm_protection_reset

  index = index + b3_equities_binaryentrypoint_sbe_v7_0_size_of.clordid

  index = index + b3_equities_binaryentrypoint_sbe_v7_0_size_of.account

  index = index + b3_equities_binaryentrypoint_sbe_v7_0_size_of.sender_location

  index = index + b3_equities_binaryentrypoint_sbe_v7_0_size_of.entering_trader

  index = index + b3_equities_binaryentrypoint_sbe_v7_0_size_of.self_trade_prevention_instruction

  index = index + b3_equities_binaryentrypoint_sbe_v7_0_size_of.security_id

  index = index + b3_equities_binaryentrypoint_sbe_v7_0_size_of.security_exchange

  index = index + b3_equities_binaryentrypoint_sbe_v7_0_size_of.side

  index = index + b3_equities_binaryentrypoint_sbe_v7_0_size_of.ordtype

  index = index + b3_equities_binaryentrypoint_sbe_v7_0_size_of.time_in_force

  index = index + b3_equities_binaryentrypoint_sbe_v7_0_size_of.order_qty

  index = index + b3_equities_binaryentrypoint_sbe_v7_0_size_of.price_optional

  index = index + b3_equities_binaryentrypoint_sbe_v7_0_size_of.stop_px

  index = index + b3_equities_binaryentrypoint_sbe_v7_0_size_of.min_qty

  index = index + b3_equities_binaryentrypoint_sbe_v7_0_size_of.max_floor

  index = index + b3_equities_binaryentrypoint_sbe_v7_0_size_of.executing_trader_optional

  index = index + b3_equities_binaryentrypoint_sbe_v7_0_size_of.routing_instruction

  index = index + b3_equities_binaryentrypoint_sbe_v7_0_size_of.expire_date

  index = index + b3_equities_binaryentrypoint_sbe_v7_0_size_of.custodian_info(buffer, offset + index)

  index = index + b3_equities_binaryentrypoint_sbe_v7_0_size_of.investor_id(buffer, offset + index)

  index = index + b3_equities_binaryentrypoint_sbe_v7_0_size_of.desk_id(buffer, offset + index)

  index = index + b3_equities_binaryentrypoint_sbe_v7_0_size_of.memo(buffer, offset + index)

  return index
end

-- Display: New Order Single Message
b3_equities_binaryentrypoint_sbe_v7_0_display.new_order_single_message = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: New Order Single Message
b3_equities_binaryentrypoint_sbe_v7_0_dissect.new_order_single_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Inbound Business Header: Struct of 5 fields
  index, inbound_business_header = b3_equities_binaryentrypoint_sbe_v7_0_dissect.inbound_business_header(buffer, index, packet, parent)

  -- Ord Tag Id: 1 Byte Unsigned Fixed Width Integer
  index, ord_tag_id = b3_equities_binaryentrypoint_sbe_v7_0_dissect.ord_tag_id(buffer, index, packet, parent)

  -- Mm Protection Reset: 1 Byte Unsigned Fixed Width Integer Enum with 2 values
  index, mm_protection_reset = b3_equities_binaryentrypoint_sbe_v7_0_dissect.mm_protection_reset(buffer, index, packet, parent)

  -- ClOrdId: 8 Byte Unsigned Fixed Width Integer
  index, clordid = b3_equities_binaryentrypoint_sbe_v7_0_dissect.clordid(buffer, index, packet, parent)

  -- Account: 4 Byte Unsigned Fixed Width Integer
  index, account = b3_equities_binaryentrypoint_sbe_v7_0_dissect.account(buffer, index, packet, parent)

  -- Sender Location: 10 Byte Ascii String
  index, sender_location = b3_equities_binaryentrypoint_sbe_v7_0_dissect.sender_location(buffer, index, packet, parent)

  -- Entering Trader: 5 Byte Ascii String
  index, entering_trader = b3_equities_binaryentrypoint_sbe_v7_0_dissect.entering_trader(buffer, index, packet, parent)

  -- Self Trade Prevention Instruction: 1 Byte Unsigned Fixed Width Integer Enum with 4 values
  index, self_trade_prevention_instruction = b3_equities_binaryentrypoint_sbe_v7_0_dissect.self_trade_prevention_instruction(buffer, index, packet, parent)

  -- Security Id: 8 Byte Unsigned Fixed Width Integer
  index, security_id = b3_equities_binaryentrypoint_sbe_v7_0_dissect.security_id(buffer, index, packet, parent)

  -- Security Exchange: 4 Byte Ascii String
  index, security_exchange = b3_equities_binaryentrypoint_sbe_v7_0_dissect.security_exchange(buffer, index, packet, parent)

  -- Side: 1 Byte Ascii String Enum with 2 values
  index, side = b3_equities_binaryentrypoint_sbe_v7_0_dissect.side(buffer, index, packet, parent)

  -- OrdType: 1 Byte Ascii String Enum with 7 values
  index, ordtype = b3_equities_binaryentrypoint_sbe_v7_0_dissect.ordtype(buffer, index, packet, parent)

  -- Time In Force: 1 Byte Ascii String Enum with 7 values
  index, time_in_force = b3_equities_binaryentrypoint_sbe_v7_0_dissect.time_in_force(buffer, index, packet, parent)

  -- Order Qty: 8 Byte Unsigned Fixed Width Integer
  index, order_qty = b3_equities_binaryentrypoint_sbe_v7_0_dissect.order_qty(buffer, index, packet, parent)

  -- Price Optional: 8 Byte Signed Fixed Width Integer Nullable
  index, price_optional = b3_equities_binaryentrypoint_sbe_v7_0_dissect.price_optional(buffer, index, packet, parent)

  -- Stop Px: 8 Byte Signed Fixed Width Integer Nullable
  index, stop_px = b3_equities_binaryentrypoint_sbe_v7_0_dissect.stop_px(buffer, index, packet, parent)

  -- Min Qty: 8 Byte Unsigned Fixed Width Integer
  index, min_qty = b3_equities_binaryentrypoint_sbe_v7_0_dissect.min_qty(buffer, index, packet, parent)

  -- Max Floor: 8 Byte Unsigned Fixed Width Integer
  index, max_floor = b3_equities_binaryentrypoint_sbe_v7_0_dissect.max_floor(buffer, index, packet, parent)

  -- Executing Trader Optional: 5 Byte Ascii String
  index, executing_trader_optional = b3_equities_binaryentrypoint_sbe_v7_0_dissect.executing_trader_optional(buffer, index, packet, parent)

  -- Routing Instruction: 1 Byte Unsigned Fixed Width Integer Enum with 5 values
  index, routing_instruction = b3_equities_binaryentrypoint_sbe_v7_0_dissect.routing_instruction(buffer, index, packet, parent)

  -- Expire Date: 2 Byte Unsigned Fixed Width Integer
  index, expire_date = b3_equities_binaryentrypoint_sbe_v7_0_dissect.expire_date(buffer, index, packet, parent)

  -- Custodian Info: Struct of 3 fields
  index, custodian_info = b3_equities_binaryentrypoint_sbe_v7_0_dissect.custodian_info(buffer, index, packet, parent)

  -- Investor Id: Struct of 2 fields
  index, investor_id = b3_equities_binaryentrypoint_sbe_v7_0_dissect.investor_id(buffer, index, packet, parent)

  -- Desk Id: Struct of 2 fields
  index, desk_id = b3_equities_binaryentrypoint_sbe_v7_0_dissect.desk_id(buffer, index, packet, parent)

  -- Memo: Struct of 2 fields
  index, memo = b3_equities_binaryentrypoint_sbe_v7_0_dissect.memo(buffer, index, packet, parent)

  return index
end

-- Dissect: New Order Single Message
b3_equities_binaryentrypoint_sbe_v7_0_dissect.new_order_single_message = function(buffer, offset, packet, parent)
  -- Optionally add dynamic struct element to protocol tree
  if show.new_order_single_message then
    local length = b3_equities_binaryentrypoint_sbe_v7_0_size_of.new_order_single_message(buffer, offset)
    local range = buffer(offset, length)
    local display = b3_equities_binaryentrypoint_sbe_v7_0_display.new_order_single_message(buffer, packet, parent)
    parent = parent:add(b3_equities_binaryentrypoint_sbe_v7_0.fields.new_order_single_message, range, display)
  end

  return b3_equities_binaryentrypoint_sbe_v7_0_dissect.new_order_single_message_fields(buffer, offset, packet, parent)
end

-- Size: Time In Force Simple
b3_equities_binaryentrypoint_sbe_v7_0_size_of.time_in_force_simple = 1

-- Display: Time In Force Simple
b3_equities_binaryentrypoint_sbe_v7_0_display.time_in_force_simple = function(value)
  -- Check if field has value
  if value == nil or value == 0 then
    return "Time In Force Simple: No Value"
  end

  if value == "0" then
    return "Time In Force Simple: Day (0)"
  end
  if value == "3" then
    return "Time In Force Simple: Immediateorcancel (3)"
  end
  if value == "4" then
    return "Time In Force Simple: Fillorkill (4)"
  end

  return "Time In Force Simple: Unknown("..value..")"
end

-- Dissect: Time In Force Simple
b3_equities_binaryentrypoint_sbe_v7_0_dissect.time_in_force_simple = function(buffer, offset, packet, parent)
  local length = b3_equities_binaryentrypoint_sbe_v7_0_size_of.time_in_force_simple
  local range = buffer(offset, length)

  -- parse as byte
  local value = range:uint()

  -- check if value is non zero
  if value ~= 0 then
    value = range:string()
  end

  local display = b3_equities_binaryentrypoint_sbe_v7_0_display.time_in_force_simple(value, buffer, offset, packet, parent)

  parent:add(b3_equities_binaryentrypoint_sbe_v7_0.fields.time_in_force_simple, range, value, display)

  return offset + length, value
end

-- Size: Simple OrdType
b3_equities_binaryentrypoint_sbe_v7_0_size_of.simple_ordtype = 1

-- Display: Simple OrdType
b3_equities_binaryentrypoint_sbe_v7_0_display.simple_ordtype = function(value)
  -- Check if field has value
  if value == nil or value == 0 then
    return "Simple OrdType: No Value"
  end

  if value == "1" then
    return "Simple OrdType: Market (1)"
  end
  if value == "2" then
    return "Simple OrdType: Limit (2)"
  end

  return "Simple OrdType: Unknown("..value..")"
end

-- Dissect: Simple OrdType
b3_equities_binaryentrypoint_sbe_v7_0_dissect.simple_ordtype = function(buffer, offset, packet, parent)
  local length = b3_equities_binaryentrypoint_sbe_v7_0_size_of.simple_ordtype
  local range = buffer(offset, length)

  -- parse as byte
  local value = range:uint()

  -- check if value is non zero
  if value ~= 0 then
    value = range:string()
  end

  local display = b3_equities_binaryentrypoint_sbe_v7_0_display.simple_ordtype(value, buffer, offset, packet, parent)

  parent:add(b3_equities_binaryentrypoint_sbe_v7_0.fields.simple_ordtype, range, value, display)

  return offset + length, value
end

-- Calculate size of: Simple Modify Order Message
b3_equities_binaryentrypoint_sbe_v7_0_size_of.simple_modify_order_message = function(buffer, offset)
  local index = 0

  index = index + b3_equities_binaryentrypoint_sbe_v7_0_size_of.inbound_business_header(buffer, offset + index)

  index = index + b3_equities_binaryentrypoint_sbe_v7_0_size_of.ord_tag_id

  index = index + b3_equities_binaryentrypoint_sbe_v7_0_size_of.mm_protection_reset

  index = index + b3_equities_binaryentrypoint_sbe_v7_0_size_of.clordid

  index = index + b3_equities_binaryentrypoint_sbe_v7_0_size_of.account

  index = index + b3_equities_binaryentrypoint_sbe_v7_0_size_of.sender_location

  index = index + b3_equities_binaryentrypoint_sbe_v7_0_size_of.entering_trader

  index = index + b3_equities_binaryentrypoint_sbe_v7_0_size_of.self_trade_prevention_instruction

  index = index + b3_equities_binaryentrypoint_sbe_v7_0_size_of.security_id

  index = index + b3_equities_binaryentrypoint_sbe_v7_0_size_of.security_exchange

  index = index + b3_equities_binaryentrypoint_sbe_v7_0_size_of.side

  index = index + b3_equities_binaryentrypoint_sbe_v7_0_size_of.simple_ordtype

  index = index + b3_equities_binaryentrypoint_sbe_v7_0_size_of.time_in_force_simple

  index = index + b3_equities_binaryentrypoint_sbe_v7_0_size_of.order_qty

  index = index + b3_equities_binaryentrypoint_sbe_v7_0_size_of.price_optional

  index = index + b3_equities_binaryentrypoint_sbe_v7_0_size_of.order_id_optional

  index = index + b3_equities_binaryentrypoint_sbe_v7_0_size_of.origclordid

  index = index + b3_equities_binaryentrypoint_sbe_v7_0_size_of.investor_id(buffer, offset + index)

  index = index + b3_equities_binaryentrypoint_sbe_v7_0_size_of.memo(buffer, offset + index)

  return index
end

-- Display: Simple Modify Order Message
b3_equities_binaryentrypoint_sbe_v7_0_display.simple_modify_order_message = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Simple Modify Order Message
b3_equities_binaryentrypoint_sbe_v7_0_dissect.simple_modify_order_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Inbound Business Header: Struct of 5 fields
  index, inbound_business_header = b3_equities_binaryentrypoint_sbe_v7_0_dissect.inbound_business_header(buffer, index, packet, parent)

  -- Ord Tag Id: 1 Byte Unsigned Fixed Width Integer
  index, ord_tag_id = b3_equities_binaryentrypoint_sbe_v7_0_dissect.ord_tag_id(buffer, index, packet, parent)

  -- Mm Protection Reset: 1 Byte Unsigned Fixed Width Integer Enum with 2 values
  index, mm_protection_reset = b3_equities_binaryentrypoint_sbe_v7_0_dissect.mm_protection_reset(buffer, index, packet, parent)

  -- ClOrdId: 8 Byte Unsigned Fixed Width Integer
  index, clordid = b3_equities_binaryentrypoint_sbe_v7_0_dissect.clordid(buffer, index, packet, parent)

  -- Account: 4 Byte Unsigned Fixed Width Integer
  index, account = b3_equities_binaryentrypoint_sbe_v7_0_dissect.account(buffer, index, packet, parent)

  -- Sender Location: 10 Byte Ascii String
  index, sender_location = b3_equities_binaryentrypoint_sbe_v7_0_dissect.sender_location(buffer, index, packet, parent)

  -- Entering Trader: 5 Byte Ascii String
  index, entering_trader = b3_equities_binaryentrypoint_sbe_v7_0_dissect.entering_trader(buffer, index, packet, parent)

  -- Self Trade Prevention Instruction: 1 Byte Unsigned Fixed Width Integer Enum with 4 values
  index, self_trade_prevention_instruction = b3_equities_binaryentrypoint_sbe_v7_0_dissect.self_trade_prevention_instruction(buffer, index, packet, parent)

  -- Security Id: 8 Byte Unsigned Fixed Width Integer
  index, security_id = b3_equities_binaryentrypoint_sbe_v7_0_dissect.security_id(buffer, index, packet, parent)

  -- Security Exchange: 4 Byte Ascii String
  index, security_exchange = b3_equities_binaryentrypoint_sbe_v7_0_dissect.security_exchange(buffer, index, packet, parent)

  -- Side: 1 Byte Ascii String Enum with 2 values
  index, side = b3_equities_binaryentrypoint_sbe_v7_0_dissect.side(buffer, index, packet, parent)

  -- Simple OrdType: 1 Byte Ascii String Enum with 2 values
  index, simple_ordtype = b3_equities_binaryentrypoint_sbe_v7_0_dissect.simple_ordtype(buffer, index, packet, parent)

  -- Time In Force Simple: 1 Byte Ascii String Enum with 3 values
  index, time_in_force_simple = b3_equities_binaryentrypoint_sbe_v7_0_dissect.time_in_force_simple(buffer, index, packet, parent)

  -- Order Qty: 8 Byte Unsigned Fixed Width Integer
  index, order_qty = b3_equities_binaryentrypoint_sbe_v7_0_dissect.order_qty(buffer, index, packet, parent)

  -- Price Optional: 8 Byte Signed Fixed Width Integer Nullable
  index, price_optional = b3_equities_binaryentrypoint_sbe_v7_0_dissect.price_optional(buffer, index, packet, parent)

  -- Order Id Optional: 8 Byte Unsigned Fixed Width Integer
  index, order_id_optional = b3_equities_binaryentrypoint_sbe_v7_0_dissect.order_id_optional(buffer, index, packet, parent)

  -- OrigClOrdId: 8 Byte Unsigned Fixed Width Integer
  index, origclordid = b3_equities_binaryentrypoint_sbe_v7_0_dissect.origclordid(buffer, index, packet, parent)

  -- Investor Id: Struct of 2 fields
  index, investor_id = b3_equities_binaryentrypoint_sbe_v7_0_dissect.investor_id(buffer, index, packet, parent)

  -- Memo: Struct of 2 fields
  index, memo = b3_equities_binaryentrypoint_sbe_v7_0_dissect.memo(buffer, index, packet, parent)

  return index
end

-- Dissect: Simple Modify Order Message
b3_equities_binaryentrypoint_sbe_v7_0_dissect.simple_modify_order_message = function(buffer, offset, packet, parent)
  -- Optionally add dynamic struct element to protocol tree
  if show.simple_modify_order_message then
    local length = b3_equities_binaryentrypoint_sbe_v7_0_size_of.simple_modify_order_message(buffer, offset)
    local range = buffer(offset, length)
    local display = b3_equities_binaryentrypoint_sbe_v7_0_display.simple_modify_order_message(buffer, packet, parent)
    parent = parent:add(b3_equities_binaryentrypoint_sbe_v7_0.fields.simple_modify_order_message, range, display)
  end

  return b3_equities_binaryentrypoint_sbe_v7_0_dissect.simple_modify_order_message_fields(buffer, offset, packet, parent)
end

-- Calculate size of: Simple New Order Message
b3_equities_binaryentrypoint_sbe_v7_0_size_of.simple_new_order_message = function(buffer, offset)
  local index = 0

  index = index + b3_equities_binaryentrypoint_sbe_v7_0_size_of.inbound_business_header(buffer, offset + index)

  index = index + b3_equities_binaryentrypoint_sbe_v7_0_size_of.ord_tag_id

  index = index + b3_equities_binaryentrypoint_sbe_v7_0_size_of.mm_protection_reset

  index = index + b3_equities_binaryentrypoint_sbe_v7_0_size_of.clordid

  index = index + b3_equities_binaryentrypoint_sbe_v7_0_size_of.account

  index = index + b3_equities_binaryentrypoint_sbe_v7_0_size_of.sender_location

  index = index + b3_equities_binaryentrypoint_sbe_v7_0_size_of.entering_trader

  index = index + b3_equities_binaryentrypoint_sbe_v7_0_size_of.self_trade_prevention_instruction

  index = index + b3_equities_binaryentrypoint_sbe_v7_0_size_of.security_id

  index = index + b3_equities_binaryentrypoint_sbe_v7_0_size_of.security_exchange

  index = index + b3_equities_binaryentrypoint_sbe_v7_0_size_of.side

  index = index + b3_equities_binaryentrypoint_sbe_v7_0_size_of.simple_ordtype

  index = index + b3_equities_binaryentrypoint_sbe_v7_0_size_of.time_in_force_simple

  index = index + b3_equities_binaryentrypoint_sbe_v7_0_size_of.order_qty

  index = index + b3_equities_binaryentrypoint_sbe_v7_0_size_of.price_optional

  index = index + b3_equities_binaryentrypoint_sbe_v7_0_size_of.investor_id(buffer, offset + index)

  index = index + b3_equities_binaryentrypoint_sbe_v7_0_size_of.memo(buffer, offset + index)

  return index
end

-- Display: Simple New Order Message
b3_equities_binaryentrypoint_sbe_v7_0_display.simple_new_order_message = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Simple New Order Message
b3_equities_binaryentrypoint_sbe_v7_0_dissect.simple_new_order_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Inbound Business Header: Struct of 5 fields
  index, inbound_business_header = b3_equities_binaryentrypoint_sbe_v7_0_dissect.inbound_business_header(buffer, index, packet, parent)

  -- Ord Tag Id: 1 Byte Unsigned Fixed Width Integer
  index, ord_tag_id = b3_equities_binaryentrypoint_sbe_v7_0_dissect.ord_tag_id(buffer, index, packet, parent)

  -- Mm Protection Reset: 1 Byte Unsigned Fixed Width Integer Enum with 2 values
  index, mm_protection_reset = b3_equities_binaryentrypoint_sbe_v7_0_dissect.mm_protection_reset(buffer, index, packet, parent)

  -- ClOrdId: 8 Byte Unsigned Fixed Width Integer
  index, clordid = b3_equities_binaryentrypoint_sbe_v7_0_dissect.clordid(buffer, index, packet, parent)

  -- Account: 4 Byte Unsigned Fixed Width Integer
  index, account = b3_equities_binaryentrypoint_sbe_v7_0_dissect.account(buffer, index, packet, parent)

  -- Sender Location: 10 Byte Ascii String
  index, sender_location = b3_equities_binaryentrypoint_sbe_v7_0_dissect.sender_location(buffer, index, packet, parent)

  -- Entering Trader: 5 Byte Ascii String
  index, entering_trader = b3_equities_binaryentrypoint_sbe_v7_0_dissect.entering_trader(buffer, index, packet, parent)

  -- Self Trade Prevention Instruction: 1 Byte Unsigned Fixed Width Integer Enum with 4 values
  index, self_trade_prevention_instruction = b3_equities_binaryentrypoint_sbe_v7_0_dissect.self_trade_prevention_instruction(buffer, index, packet, parent)

  -- Security Id: 8 Byte Unsigned Fixed Width Integer
  index, security_id = b3_equities_binaryentrypoint_sbe_v7_0_dissect.security_id(buffer, index, packet, parent)

  -- Security Exchange: 4 Byte Ascii String
  index, security_exchange = b3_equities_binaryentrypoint_sbe_v7_0_dissect.security_exchange(buffer, index, packet, parent)

  -- Side: 1 Byte Ascii String Enum with 2 values
  index, side = b3_equities_binaryentrypoint_sbe_v7_0_dissect.side(buffer, index, packet, parent)

  -- Simple OrdType: 1 Byte Ascii String Enum with 2 values
  index, simple_ordtype = b3_equities_binaryentrypoint_sbe_v7_0_dissect.simple_ordtype(buffer, index, packet, parent)

  -- Time In Force Simple: 1 Byte Ascii String Enum with 3 values
  index, time_in_force_simple = b3_equities_binaryentrypoint_sbe_v7_0_dissect.time_in_force_simple(buffer, index, packet, parent)

  -- Order Qty: 8 Byte Unsigned Fixed Width Integer
  index, order_qty = b3_equities_binaryentrypoint_sbe_v7_0_dissect.order_qty(buffer, index, packet, parent)

  -- Price Optional: 8 Byte Signed Fixed Width Integer Nullable
  index, price_optional = b3_equities_binaryentrypoint_sbe_v7_0_dissect.price_optional(buffer, index, packet, parent)

  -- Investor Id: Struct of 2 fields
  index, investor_id = b3_equities_binaryentrypoint_sbe_v7_0_dissect.investor_id(buffer, index, packet, parent)

  -- Memo: Struct of 2 fields
  index, memo = b3_equities_binaryentrypoint_sbe_v7_0_dissect.memo(buffer, index, packet, parent)

  return index
end

-- Dissect: Simple New Order Message
b3_equities_binaryentrypoint_sbe_v7_0_dissect.simple_new_order_message = function(buffer, offset, packet, parent)
  -- Optionally add dynamic struct element to protocol tree
  if show.simple_new_order_message then
    local length = b3_equities_binaryentrypoint_sbe_v7_0_size_of.simple_new_order_message(buffer, offset)
    local range = buffer(offset, length)
    local display = b3_equities_binaryentrypoint_sbe_v7_0_display.simple_new_order_message(buffer, packet, parent)
    parent = parent:add(b3_equities_binaryentrypoint_sbe_v7_0.fields.simple_new_order_message, range, display)
  end

  return b3_equities_binaryentrypoint_sbe_v7_0_dissect.simple_new_order_message_fields(buffer, offset, packet, parent)
end

-- Size: Retransmit Reject Code
b3_equities_binaryentrypoint_sbe_v7_0_size_of.retransmit_reject_code = 1

-- Display: Retransmit Reject Code
b3_equities_binaryentrypoint_sbe_v7_0_display.retransmit_reject_code = function(value)
  if value == 0 then
    return "Retransmit Reject Code: Outofrange (0)"
  end
  if value == 1 then
    return "Retransmit Reject Code: Invalidsession (1)"
  end
  if value == 2 then
    return "Retransmit Reject Code: Requestlimitexceeded (2)"
  end
  if value == 3 then
    return "Retransmit Reject Code: Retransmitinprogress (3)"
  end
  if value == 4 then
    return "Retransmit Reject Code: Invalidtimestamp (4)"
  end
  if value == 5 then
    return "Retransmit Reject Code: Invalidfromseqno (5)"
  end
  if value == 9 then
    return "Retransmit Reject Code: Invalidcount (9)"
  end
  if value == 10 then
    return "Retransmit Reject Code: Throttlereject (10)"
  end

  return "Retransmit Reject Code: Unknown("..value..")"
end

-- Dissect: Retransmit Reject Code
b3_equities_binaryentrypoint_sbe_v7_0_dissect.retransmit_reject_code = function(buffer, offset, packet, parent)
  local length = b3_equities_binaryentrypoint_sbe_v7_0_size_of.retransmit_reject_code
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = b3_equities_binaryentrypoint_sbe_v7_0_display.retransmit_reject_code(value, buffer, offset, packet, parent)

  parent:add(b3_equities_binaryentrypoint_sbe_v7_0.fields.retransmit_reject_code, range, value, display)

  return offset + length, value
end

-- Size: Request Timestamp
b3_equities_binaryentrypoint_sbe_v7_0_size_of.request_timestamp = 8

-- Display: Request Timestamp
b3_equities_binaryentrypoint_sbe_v7_0_display.request_timestamp = function(value)
  return "Request Timestamp: "..value
end

-- Dissect: Request Timestamp
b3_equities_binaryentrypoint_sbe_v7_0_dissect.request_timestamp = function(buffer, offset, packet, parent)
  local length = b3_equities_binaryentrypoint_sbe_v7_0_size_of.request_timestamp
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = b3_equities_binaryentrypoint_sbe_v7_0_display.request_timestamp(value, buffer, offset, packet, parent)

  parent:add(b3_equities_binaryentrypoint_sbe_v7_0.fields.request_timestamp, range, value, display)

  return offset + length, value
end

-- Calculate size of: Retransmit Reject Message
b3_equities_binaryentrypoint_sbe_v7_0_size_of.retransmit_reject_message = function(buffer, offset)
  local index = 0

  index = index + b3_equities_binaryentrypoint_sbe_v7_0_size_of.session_id

  index = index + b3_equities_binaryentrypoint_sbe_v7_0_size_of.request_timestamp

  index = index + b3_equities_binaryentrypoint_sbe_v7_0_size_of.retransmit_reject_code

  return index
end

-- Display: Retransmit Reject Message
b3_equities_binaryentrypoint_sbe_v7_0_display.retransmit_reject_message = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Retransmit Reject Message
b3_equities_binaryentrypoint_sbe_v7_0_dissect.retransmit_reject_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Session Id: 4 Byte Unsigned Fixed Width Integer
  index, session_id = b3_equities_binaryentrypoint_sbe_v7_0_dissect.session_id(buffer, index, packet, parent)

  -- Request Timestamp: 8 Byte Unsigned Fixed Width Integer
  index, request_timestamp = b3_equities_binaryentrypoint_sbe_v7_0_dissect.request_timestamp(buffer, index, packet, parent)

  -- Retransmit Reject Code: 1 Byte Unsigned Fixed Width Integer Enum with 8 values
  index, retransmit_reject_code = b3_equities_binaryentrypoint_sbe_v7_0_dissect.retransmit_reject_code(buffer, index, packet, parent)

  return index
end

-- Dissect: Retransmit Reject Message
b3_equities_binaryentrypoint_sbe_v7_0_dissect.retransmit_reject_message = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.retransmit_reject_message then
    local length = b3_equities_binaryentrypoint_sbe_v7_0_size_of.retransmit_reject_message(buffer, offset)
    local range = buffer(offset, length)
    local display = b3_equities_binaryentrypoint_sbe_v7_0_display.retransmit_reject_message(buffer, packet, parent)
    parent = parent:add(b3_equities_binaryentrypoint_sbe_v7_0.fields.retransmit_reject_message, range, display)
  end

  return b3_equities_binaryentrypoint_sbe_v7_0_dissect.retransmit_reject_message_fields(buffer, offset, packet, parent)
end

-- Size: Count
b3_equities_binaryentrypoint_sbe_v7_0_size_of.count = 4

-- Display: Count
b3_equities_binaryentrypoint_sbe_v7_0_display.count = function(value)
  return "Count: "..value
end

-- Dissect: Count
b3_equities_binaryentrypoint_sbe_v7_0_dissect.count = function(buffer, offset, packet, parent)
  local length = b3_equities_binaryentrypoint_sbe_v7_0_size_of.count
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = b3_equities_binaryentrypoint_sbe_v7_0_display.count(value, buffer, offset, packet, parent)

  parent:add(b3_equities_binaryentrypoint_sbe_v7_0.fields.count, range, value, display)

  return offset + length, value
end

-- Size: Next Seq No
b3_equities_binaryentrypoint_sbe_v7_0_size_of.next_seq_no = 4

-- Display: Next Seq No
b3_equities_binaryentrypoint_sbe_v7_0_display.next_seq_no = function(value)
  return "Next Seq No: "..value
end

-- Dissect: Next Seq No
b3_equities_binaryentrypoint_sbe_v7_0_dissect.next_seq_no = function(buffer, offset, packet, parent)
  local length = b3_equities_binaryentrypoint_sbe_v7_0_size_of.next_seq_no
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = b3_equities_binaryentrypoint_sbe_v7_0_display.next_seq_no(value, buffer, offset, packet, parent)

  parent:add(b3_equities_binaryentrypoint_sbe_v7_0.fields.next_seq_no, range, value, display)

  return offset + length, value
end

-- Calculate size of: Retransmission Message
b3_equities_binaryentrypoint_sbe_v7_0_size_of.retransmission_message = function(buffer, offset)
  local index = 0

  index = index + b3_equities_binaryentrypoint_sbe_v7_0_size_of.session_id

  index = index + b3_equities_binaryentrypoint_sbe_v7_0_size_of.request_timestamp

  index = index + b3_equities_binaryentrypoint_sbe_v7_0_size_of.next_seq_no

  index = index + b3_equities_binaryentrypoint_sbe_v7_0_size_of.count

  return index
end

-- Display: Retransmission Message
b3_equities_binaryentrypoint_sbe_v7_0_display.retransmission_message = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Retransmission Message
b3_equities_binaryentrypoint_sbe_v7_0_dissect.retransmission_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Session Id: 4 Byte Unsigned Fixed Width Integer
  index, session_id = b3_equities_binaryentrypoint_sbe_v7_0_dissect.session_id(buffer, index, packet, parent)

  -- Request Timestamp: 8 Byte Unsigned Fixed Width Integer
  index, request_timestamp = b3_equities_binaryentrypoint_sbe_v7_0_dissect.request_timestamp(buffer, index, packet, parent)

  -- Next Seq No: 4 Byte Unsigned Fixed Width Integer
  index, next_seq_no = b3_equities_binaryentrypoint_sbe_v7_0_dissect.next_seq_no(buffer, index, packet, parent)

  -- Count: 4 Byte Unsigned Fixed Width Integer
  index, count = b3_equities_binaryentrypoint_sbe_v7_0_dissect.count(buffer, index, packet, parent)

  return index
end

-- Dissect: Retransmission Message
b3_equities_binaryentrypoint_sbe_v7_0_dissect.retransmission_message = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.retransmission_message then
    local length = b3_equities_binaryentrypoint_sbe_v7_0_size_of.retransmission_message(buffer, offset)
    local range = buffer(offset, length)
    local display = b3_equities_binaryentrypoint_sbe_v7_0_display.retransmission_message(buffer, packet, parent)
    parent = parent:add(b3_equities_binaryentrypoint_sbe_v7_0.fields.retransmission_message, range, display)
  end

  return b3_equities_binaryentrypoint_sbe_v7_0_dissect.retransmission_message_fields(buffer, offset, packet, parent)
end

-- Size: From Seq No
b3_equities_binaryentrypoint_sbe_v7_0_size_of.from_seq_no = 4

-- Display: From Seq No
b3_equities_binaryentrypoint_sbe_v7_0_display.from_seq_no = function(value)
  return "From Seq No: "..value
end

-- Dissect: From Seq No
b3_equities_binaryentrypoint_sbe_v7_0_dissect.from_seq_no = function(buffer, offset, packet, parent)
  local length = b3_equities_binaryentrypoint_sbe_v7_0_size_of.from_seq_no
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = b3_equities_binaryentrypoint_sbe_v7_0_display.from_seq_no(value, buffer, offset, packet, parent)

  parent:add(b3_equities_binaryentrypoint_sbe_v7_0.fields.from_seq_no, range, value, display)

  return offset + length, value
end

-- Size: Timestamp
b3_equities_binaryentrypoint_sbe_v7_0_size_of.timestamp = 8

-- Display: Timestamp
b3_equities_binaryentrypoint_sbe_v7_0_display.timestamp = function(value)
  return "Timestamp: "..value
end

-- Dissect: Timestamp
b3_equities_binaryentrypoint_sbe_v7_0_dissect.timestamp = function(buffer, offset, packet, parent)
  local length = b3_equities_binaryentrypoint_sbe_v7_0_size_of.timestamp
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = b3_equities_binaryentrypoint_sbe_v7_0_display.timestamp(value, buffer, offset, packet, parent)

  parent:add(b3_equities_binaryentrypoint_sbe_v7_0.fields.timestamp, range, value, display)

  return offset + length, value
end

-- Calculate size of: Retransmit Request Message
b3_equities_binaryentrypoint_sbe_v7_0_size_of.retransmit_request_message = function(buffer, offset)
  local index = 0

  index = index + b3_equities_binaryentrypoint_sbe_v7_0_size_of.session_id

  index = index + b3_equities_binaryentrypoint_sbe_v7_0_size_of.timestamp

  index = index + b3_equities_binaryentrypoint_sbe_v7_0_size_of.from_seq_no

  index = index + b3_equities_binaryentrypoint_sbe_v7_0_size_of.count

  return index
end

-- Display: Retransmit Request Message
b3_equities_binaryentrypoint_sbe_v7_0_display.retransmit_request_message = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Retransmit Request Message
b3_equities_binaryentrypoint_sbe_v7_0_dissect.retransmit_request_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Session Id: 4 Byte Unsigned Fixed Width Integer
  index, session_id = b3_equities_binaryentrypoint_sbe_v7_0_dissect.session_id(buffer, index, packet, parent)

  -- Timestamp: 8 Byte Unsigned Fixed Width Integer
  index, timestamp = b3_equities_binaryentrypoint_sbe_v7_0_dissect.timestamp(buffer, index, packet, parent)

  -- From Seq No: 4 Byte Unsigned Fixed Width Integer
  index, from_seq_no = b3_equities_binaryentrypoint_sbe_v7_0_dissect.from_seq_no(buffer, index, packet, parent)

  -- Count: 4 Byte Unsigned Fixed Width Integer
  index, count = b3_equities_binaryentrypoint_sbe_v7_0_dissect.count(buffer, index, packet, parent)

  return index
end

-- Dissect: Retransmit Request Message
b3_equities_binaryentrypoint_sbe_v7_0_dissect.retransmit_request_message = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.retransmit_request_message then
    local length = b3_equities_binaryentrypoint_sbe_v7_0_size_of.retransmit_request_message(buffer, offset)
    local range = buffer(offset, length)
    local display = b3_equities_binaryentrypoint_sbe_v7_0_display.retransmit_request_message(buffer, packet, parent)
    parent = parent:add(b3_equities_binaryentrypoint_sbe_v7_0.fields.retransmit_request_message, range, display)
  end

  return b3_equities_binaryentrypoint_sbe_v7_0_dissect.retransmit_request_message_fields(buffer, offset, packet, parent)
end

-- Calculate size of: Sequence Message
b3_equities_binaryentrypoint_sbe_v7_0_size_of.sequence_message = function(buffer, offset)
  local index = 0

  index = index + b3_equities_binaryentrypoint_sbe_v7_0_size_of.next_seq_no

  return index
end

-- Display: Sequence Message
b3_equities_binaryentrypoint_sbe_v7_0_display.sequence_message = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Sequence Message
b3_equities_binaryentrypoint_sbe_v7_0_dissect.sequence_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Next Seq No: 4 Byte Unsigned Fixed Width Integer
  index, next_seq_no = b3_equities_binaryentrypoint_sbe_v7_0_dissect.next_seq_no(buffer, index, packet, parent)

  return index
end

-- Dissect: Sequence Message
b3_equities_binaryentrypoint_sbe_v7_0_dissect.sequence_message = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.sequence_message then
    local length = b3_equities_binaryentrypoint_sbe_v7_0_size_of.sequence_message(buffer, offset)
    local range = buffer(offset, length)
    local display = b3_equities_binaryentrypoint_sbe_v7_0_display.sequence_message(buffer, packet, parent)
    parent = parent:add(b3_equities_binaryentrypoint_sbe_v7_0.fields.sequence_message, range, display)
  end

  return b3_equities_binaryentrypoint_sbe_v7_0_dissect.sequence_message_fields(buffer, offset, packet, parent)
end

-- Calculate size of: Not Applied Message
b3_equities_binaryentrypoint_sbe_v7_0_size_of.not_applied_message = function(buffer, offset)
  local index = 0

  index = index + b3_equities_binaryentrypoint_sbe_v7_0_size_of.from_seq_no

  index = index + b3_equities_binaryentrypoint_sbe_v7_0_size_of.count

  return index
end

-- Display: Not Applied Message
b3_equities_binaryentrypoint_sbe_v7_0_display.not_applied_message = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Not Applied Message
b3_equities_binaryentrypoint_sbe_v7_0_dissect.not_applied_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- From Seq No: 4 Byte Unsigned Fixed Width Integer
  index, from_seq_no = b3_equities_binaryentrypoint_sbe_v7_0_dissect.from_seq_no(buffer, index, packet, parent)

  -- Count: 4 Byte Unsigned Fixed Width Integer
  index, count = b3_equities_binaryentrypoint_sbe_v7_0_dissect.count(buffer, index, packet, parent)

  return index
end

-- Dissect: Not Applied Message
b3_equities_binaryentrypoint_sbe_v7_0_dissect.not_applied_message = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.not_applied_message then
    local length = b3_equities_binaryentrypoint_sbe_v7_0_size_of.not_applied_message(buffer, offset)
    local range = buffer(offset, length)
    local display = b3_equities_binaryentrypoint_sbe_v7_0_display.not_applied_message(buffer, packet, parent)
    parent = parent:add(b3_equities_binaryentrypoint_sbe_v7_0.fields.not_applied_message, range, display)
  end

  return b3_equities_binaryentrypoint_sbe_v7_0_dissect.not_applied_message_fields(buffer, offset, packet, parent)
end

-- Size: Termination Code
b3_equities_binaryentrypoint_sbe_v7_0_size_of.termination_code = 1

-- Display: Termination Code
b3_equities_binaryentrypoint_sbe_v7_0_display.termination_code = function(value)
  if value == 0 then
    return "Termination Code: Unspecified (0)"
  end
  if value == 1 then
    return "Termination Code: Finished (1)"
  end
  if value == 2 then
    return "Termination Code: Unnegotiated (2)"
  end
  if value == 3 then
    return "Termination Code: Notestablished (3)"
  end
  if value == 4 then
    return "Termination Code: Sessionblocked (4)"
  end
  if value == 5 then
    return "Termination Code: Negotiationinprogress (5)"
  end
  if value == 6 then
    return "Termination Code: Establishinprogress (6)"
  end
  if value == 10 then
    return "Termination Code: Keepaliveintervallapsed (10)"
  end
  if value == 11 then
    return "Termination Code: Invalidsessionid (11)"
  end
  if value == 12 then
    return "Termination Code: Invalidsessionverid (12)"
  end
  if value == 13 then
    return "Termination Code: Invalidtimestamp (13)"
  end
  if value == 14 then
    return "Termination Code: Invalidnextseqno (14)"
  end
  if value == 15 then
    return "Termination Code: Unrecognizedmessage (15)"
  end
  if value == 16 then
    return "Termination Code: Invalidsofh (16)"
  end
  if value == 17 then
    return "Termination Code: Decodingerror (17)"
  end
  if value == 20 then
    return "Termination Code: Terminatenotallowed (20)"
  end
  if value == 21 then
    return "Termination Code: Terminateinprogress (21)"
  end
  if value == 30 then
    return "Termination Code: Backuptakeoverinprogress (30)"
  end

  return "Termination Code: Unknown("..value..")"
end

-- Dissect: Termination Code
b3_equities_binaryentrypoint_sbe_v7_0_dissect.termination_code = function(buffer, offset, packet, parent)
  local length = b3_equities_binaryentrypoint_sbe_v7_0_size_of.termination_code
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = b3_equities_binaryentrypoint_sbe_v7_0_display.termination_code(value, buffer, offset, packet, parent)

  parent:add(b3_equities_binaryentrypoint_sbe_v7_0.fields.termination_code, range, value, display)

  return offset + length, value
end

-- Size: Session Ver Id
b3_equities_binaryentrypoint_sbe_v7_0_size_of.session_ver_id = 8

-- Display: Session Ver Id
b3_equities_binaryentrypoint_sbe_v7_0_display.session_ver_id = function(value)
  return "Session Ver Id: "..value
end

-- Dissect: Session Ver Id
b3_equities_binaryentrypoint_sbe_v7_0_dissect.session_ver_id = function(buffer, offset, packet, parent)
  local length = b3_equities_binaryentrypoint_sbe_v7_0_size_of.session_ver_id
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = b3_equities_binaryentrypoint_sbe_v7_0_display.session_ver_id(value, buffer, offset, packet, parent)

  parent:add(b3_equities_binaryentrypoint_sbe_v7_0.fields.session_ver_id, range, value, display)

  return offset + length, value
end

-- Calculate size of: Terminate Message
b3_equities_binaryentrypoint_sbe_v7_0_size_of.terminate_message = function(buffer, offset)
  local index = 0

  index = index + b3_equities_binaryentrypoint_sbe_v7_0_size_of.session_id

  index = index + b3_equities_binaryentrypoint_sbe_v7_0_size_of.session_ver_id

  index = index + b3_equities_binaryentrypoint_sbe_v7_0_size_of.termination_code

  return index
end

-- Display: Terminate Message
b3_equities_binaryentrypoint_sbe_v7_0_display.terminate_message = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Terminate Message
b3_equities_binaryentrypoint_sbe_v7_0_dissect.terminate_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Session Id: 4 Byte Unsigned Fixed Width Integer
  index, session_id = b3_equities_binaryentrypoint_sbe_v7_0_dissect.session_id(buffer, index, packet, parent)

  -- Session Ver Id: 8 Byte Unsigned Fixed Width Integer
  index, session_ver_id = b3_equities_binaryentrypoint_sbe_v7_0_dissect.session_ver_id(buffer, index, packet, parent)

  -- Termination Code: 1 Byte Unsigned Fixed Width Integer Enum with 18 values
  index, termination_code = b3_equities_binaryentrypoint_sbe_v7_0_dissect.termination_code(buffer, index, packet, parent)

  return index
end

-- Dissect: Terminate Message
b3_equities_binaryentrypoint_sbe_v7_0_dissect.terminate_message = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.terminate_message then
    local length = b3_equities_binaryentrypoint_sbe_v7_0_size_of.terminate_message(buffer, offset)
    local range = buffer(offset, length)
    local display = b3_equities_binaryentrypoint_sbe_v7_0_display.terminate_message(buffer, packet, parent)
    parent = parent:add(b3_equities_binaryentrypoint_sbe_v7_0.fields.terminate_message, range, display)
  end

  return b3_equities_binaryentrypoint_sbe_v7_0_dissect.terminate_message_fields(buffer, offset, packet, parent)
end

-- Size: Last Incoming Seq No Optional
b3_equities_binaryentrypoint_sbe_v7_0_size_of.last_incoming_seq_no_optional = 4

-- Display: Last Incoming Seq No Optional
b3_equities_binaryentrypoint_sbe_v7_0_display.last_incoming_seq_no_optional = function(value)
  return "Last Incoming Seq No Optional: "..value
end

-- Dissect: Last Incoming Seq No Optional
b3_equities_binaryentrypoint_sbe_v7_0_dissect.last_incoming_seq_no_optional = function(buffer, offset, packet, parent)
  local length = b3_equities_binaryentrypoint_sbe_v7_0_size_of.last_incoming_seq_no_optional
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = b3_equities_binaryentrypoint_sbe_v7_0_display.last_incoming_seq_no_optional(value, buffer, offset, packet, parent)

  parent:add(b3_equities_binaryentrypoint_sbe_v7_0.fields.last_incoming_seq_no_optional, range, value, display)

  return offset + length, value
end

-- Size: Establishment Reject Code
b3_equities_binaryentrypoint_sbe_v7_0_size_of.establishment_reject_code = 1

-- Display: Establishment Reject Code
b3_equities_binaryentrypoint_sbe_v7_0_display.establishment_reject_code = function(value)
  if value == 0 then
    return "Establishment Reject Code: Unspecified (0)"
  end
  if value == 1 then
    return "Establishment Reject Code: Credentials (1)"
  end
  if value == 2 then
    return "Establishment Reject Code: Unnegotiated (2)"
  end
  if value == 3 then
    return "Establishment Reject Code: Alreadyestablished (3)"
  end
  if value == 4 then
    return "Establishment Reject Code: Sessionblocked (4)"
  end
  if value == 5 then
    return "Establishment Reject Code: Invalidsessionid (5)"
  end
  if value == 6 then
    return "Establishment Reject Code: Invalidsessionverid (6)"
  end
  if value == 7 then
    return "Establishment Reject Code: Invalidtimestamp (7)"
  end
  if value == 8 then
    return "Establishment Reject Code: Invalidkeepaliveinterval (8)"
  end
  if value == 9 then
    return "Establishment Reject Code: Invalidnextseqno (9)"
  end
  if value == 10 then
    return "Establishment Reject Code: Establishattemptsexceeded (10)"
  end
  if value == 20 then
    return "Establishment Reject Code: Establishnotallowed (20)"
  end
  if value == 21 then
    return "Establishment Reject Code: Duplicatesessionconnection (21)"
  end
  if value == 22 then
    return "Establishment Reject Code: Authenticationinprogress (22)"
  end

  return "Establishment Reject Code: Unknown("..value..")"
end

-- Dissect: Establishment Reject Code
b3_equities_binaryentrypoint_sbe_v7_0_dissect.establishment_reject_code = function(buffer, offset, packet, parent)
  local length = b3_equities_binaryentrypoint_sbe_v7_0_size_of.establishment_reject_code
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = b3_equities_binaryentrypoint_sbe_v7_0_display.establishment_reject_code(value, buffer, offset, packet, parent)

  parent:add(b3_equities_binaryentrypoint_sbe_v7_0.fields.establishment_reject_code, range, value, display)

  return offset + length, value
end

-- Calculate size of: Establish Reject Message
b3_equities_binaryentrypoint_sbe_v7_0_size_of.establish_reject_message = function(buffer, offset)
  local index = 0

  index = index + b3_equities_binaryentrypoint_sbe_v7_0_size_of.session_id

  index = index + b3_equities_binaryentrypoint_sbe_v7_0_size_of.session_ver_id

  index = index + b3_equities_binaryentrypoint_sbe_v7_0_size_of.request_timestamp

  index = index + b3_equities_binaryentrypoint_sbe_v7_0_size_of.establishment_reject_code

  index = index + b3_equities_binaryentrypoint_sbe_v7_0_size_of.last_incoming_seq_no_optional

  return index
end

-- Display: Establish Reject Message
b3_equities_binaryentrypoint_sbe_v7_0_display.establish_reject_message = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Establish Reject Message
b3_equities_binaryentrypoint_sbe_v7_0_dissect.establish_reject_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Session Id: 4 Byte Unsigned Fixed Width Integer
  index, session_id = b3_equities_binaryentrypoint_sbe_v7_0_dissect.session_id(buffer, index, packet, parent)

  -- Session Ver Id: 8 Byte Unsigned Fixed Width Integer
  index, session_ver_id = b3_equities_binaryentrypoint_sbe_v7_0_dissect.session_ver_id(buffer, index, packet, parent)

  -- Request Timestamp: 8 Byte Unsigned Fixed Width Integer
  index, request_timestamp = b3_equities_binaryentrypoint_sbe_v7_0_dissect.request_timestamp(buffer, index, packet, parent)

  -- Establishment Reject Code: 1 Byte Unsigned Fixed Width Integer Enum with 14 values
  index, establishment_reject_code = b3_equities_binaryentrypoint_sbe_v7_0_dissect.establishment_reject_code(buffer, index, packet, parent)

  -- Last Incoming Seq No Optional: 4 Byte Unsigned Fixed Width Integer
  index, last_incoming_seq_no_optional = b3_equities_binaryentrypoint_sbe_v7_0_dissect.last_incoming_seq_no_optional(buffer, index, packet, parent)

  return index
end

-- Dissect: Establish Reject Message
b3_equities_binaryentrypoint_sbe_v7_0_dissect.establish_reject_message = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.establish_reject_message then
    local length = b3_equities_binaryentrypoint_sbe_v7_0_size_of.establish_reject_message(buffer, offset)
    local range = buffer(offset, length)
    local display = b3_equities_binaryentrypoint_sbe_v7_0_display.establish_reject_message(buffer, packet, parent)
    parent = parent:add(b3_equities_binaryentrypoint_sbe_v7_0.fields.establish_reject_message, range, display)
  end

  return b3_equities_binaryentrypoint_sbe_v7_0_dissect.establish_reject_message_fields(buffer, offset, packet, parent)
end

-- Size: Last Incoming Seq No
b3_equities_binaryentrypoint_sbe_v7_0_size_of.last_incoming_seq_no = 4

-- Display: Last Incoming Seq No
b3_equities_binaryentrypoint_sbe_v7_0_display.last_incoming_seq_no = function(value)
  return "Last Incoming Seq No: "..value
end

-- Dissect: Last Incoming Seq No
b3_equities_binaryentrypoint_sbe_v7_0_dissect.last_incoming_seq_no = function(buffer, offset, packet, parent)
  local length = b3_equities_binaryentrypoint_sbe_v7_0_size_of.last_incoming_seq_no
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = b3_equities_binaryentrypoint_sbe_v7_0_display.last_incoming_seq_no(value, buffer, offset, packet, parent)

  parent:add(b3_equities_binaryentrypoint_sbe_v7_0.fields.last_incoming_seq_no, range, value, display)

  return offset + length, value
end

-- Size: Keep Alive Interval
b3_equities_binaryentrypoint_sbe_v7_0_size_of.keep_alive_interval = 8

-- Display: Keep Alive Interval
b3_equities_binaryentrypoint_sbe_v7_0_display.keep_alive_interval = function(value)
  return "Keep Alive Interval: "..value
end

-- Dissect: Keep Alive Interval
b3_equities_binaryentrypoint_sbe_v7_0_dissect.keep_alive_interval = function(buffer, offset, packet, parent)
  local length = b3_equities_binaryentrypoint_sbe_v7_0_size_of.keep_alive_interval
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = b3_equities_binaryentrypoint_sbe_v7_0_display.keep_alive_interval(value, buffer, offset, packet, parent)

  parent:add(b3_equities_binaryentrypoint_sbe_v7_0.fields.keep_alive_interval, range, value, display)

  return offset + length, value
end

-- Calculate size of: Establish Ack Message
b3_equities_binaryentrypoint_sbe_v7_0_size_of.establish_ack_message = function(buffer, offset)
  local index = 0

  index = index + b3_equities_binaryentrypoint_sbe_v7_0_size_of.session_id

  index = index + b3_equities_binaryentrypoint_sbe_v7_0_size_of.session_ver_id

  index = index + b3_equities_binaryentrypoint_sbe_v7_0_size_of.request_timestamp

  index = index + b3_equities_binaryentrypoint_sbe_v7_0_size_of.keep_alive_interval

  index = index + b3_equities_binaryentrypoint_sbe_v7_0_size_of.next_seq_no

  index = index + b3_equities_binaryentrypoint_sbe_v7_0_size_of.last_incoming_seq_no

  return index
end

-- Display: Establish Ack Message
b3_equities_binaryentrypoint_sbe_v7_0_display.establish_ack_message = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Establish Ack Message
b3_equities_binaryentrypoint_sbe_v7_0_dissect.establish_ack_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Session Id: 4 Byte Unsigned Fixed Width Integer
  index, session_id = b3_equities_binaryentrypoint_sbe_v7_0_dissect.session_id(buffer, index, packet, parent)

  -- Session Ver Id: 8 Byte Unsigned Fixed Width Integer
  index, session_ver_id = b3_equities_binaryentrypoint_sbe_v7_0_dissect.session_ver_id(buffer, index, packet, parent)

  -- Request Timestamp: 8 Byte Unsigned Fixed Width Integer
  index, request_timestamp = b3_equities_binaryentrypoint_sbe_v7_0_dissect.request_timestamp(buffer, index, packet, parent)

  -- Keep Alive Interval: 8 Byte Unsigned Fixed Width Integer
  index, keep_alive_interval = b3_equities_binaryentrypoint_sbe_v7_0_dissect.keep_alive_interval(buffer, index, packet, parent)

  -- Next Seq No: 4 Byte Unsigned Fixed Width Integer
  index, next_seq_no = b3_equities_binaryentrypoint_sbe_v7_0_dissect.next_seq_no(buffer, index, packet, parent)

  -- Last Incoming Seq No: 4 Byte Unsigned Fixed Width Integer
  index, last_incoming_seq_no = b3_equities_binaryentrypoint_sbe_v7_0_dissect.last_incoming_seq_no(buffer, index, packet, parent)

  return index
end

-- Dissect: Establish Ack Message
b3_equities_binaryentrypoint_sbe_v7_0_dissect.establish_ack_message = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.establish_ack_message then
    local length = b3_equities_binaryentrypoint_sbe_v7_0_size_of.establish_ack_message(buffer, offset)
    local range = buffer(offset, length)
    local display = b3_equities_binaryentrypoint_sbe_v7_0_display.establish_ack_message(buffer, packet, parent)
    parent = parent:add(b3_equities_binaryentrypoint_sbe_v7_0.fields.establish_ack_message, range, display)
  end

  return b3_equities_binaryentrypoint_sbe_v7_0_dissect.establish_ack_message_fields(buffer, offset, packet, parent)
end

-- Calculate size of: Credentials
b3_equities_binaryentrypoint_sbe_v7_0_size_of.credentials = function(buffer, offset)
  local index = 0

  index = index + b3_equities_binaryentrypoint_sbe_v7_0_size_of.length

  index = index + b3_equities_binaryentrypoint_sbe_v7_0_size_of.var_data_char

  return index
end

-- Display: Credentials
b3_equities_binaryentrypoint_sbe_v7_0_display.credentials = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Credentials
b3_equities_binaryentrypoint_sbe_v7_0_dissect.credentials_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Length: 1 Byte Unsigned Fixed Width Integer
  index, length = b3_equities_binaryentrypoint_sbe_v7_0_dissect.length(buffer, index, packet, parent)

  -- Var Data char
  index, var_data_char = b3_equities_binaryentrypoint_sbe_v7_0_dissect.var_data_char(buffer, index, packet, parent)

  return index
end

-- Dissect: Credentials
b3_equities_binaryentrypoint_sbe_v7_0_dissect.credentials = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.credentials then
    local length = b3_equities_binaryentrypoint_sbe_v7_0_size_of.credentials(buffer, offset)
    local range = buffer(offset, length)
    local display = b3_equities_binaryentrypoint_sbe_v7_0_display.credentials(buffer, packet, parent)
    parent = parent:add(b3_equities_binaryentrypoint_sbe_v7_0.fields.credentials, range, display)
  end

  return b3_equities_binaryentrypoint_sbe_v7_0_dissect.credentials_fields(buffer, offset, packet, parent)
end

-- Size: Cod Timeout Window
b3_equities_binaryentrypoint_sbe_v7_0_size_of.cod_timeout_window = 8

-- Display: Cod Timeout Window
b3_equities_binaryentrypoint_sbe_v7_0_display.cod_timeout_window = function(value)
  return "Cod Timeout Window: "..value
end

-- Dissect: Cod Timeout Window
b3_equities_binaryentrypoint_sbe_v7_0_dissect.cod_timeout_window = function(buffer, offset, packet, parent)
  local length = b3_equities_binaryentrypoint_sbe_v7_0_size_of.cod_timeout_window
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = b3_equities_binaryentrypoint_sbe_v7_0_display.cod_timeout_window(value, buffer, offset, packet, parent)

  parent:add(b3_equities_binaryentrypoint_sbe_v7_0.fields.cod_timeout_window, range, value, display)

  return offset + length, value
end

-- Size: Cancel On Disconnect Type
b3_equities_binaryentrypoint_sbe_v7_0_size_of.cancel_on_disconnect_type = 1

-- Display: Cancel On Disconnect Type
b3_equities_binaryentrypoint_sbe_v7_0_display.cancel_on_disconnect_type = function(value)
  if value == 0 then
    return "Cancel On Disconnect Type: Donotcancelondisconnectorterminate (0)"
  end
  if value == 1 then
    return "Cancel On Disconnect Type: Cancelondisconnectonly (1)"
  end
  if value == 2 then
    return "Cancel On Disconnect Type: Cancelonterminateonly (2)"
  end
  if value == 3 then
    return "Cancel On Disconnect Type: Cancelondisconnectorterminate (3)"
  end

  return "Cancel On Disconnect Type: Unknown("..value..")"
end

-- Dissect: Cancel On Disconnect Type
b3_equities_binaryentrypoint_sbe_v7_0_dissect.cancel_on_disconnect_type = function(buffer, offset, packet, parent)
  local length = b3_equities_binaryentrypoint_sbe_v7_0_size_of.cancel_on_disconnect_type
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = b3_equities_binaryentrypoint_sbe_v7_0_display.cancel_on_disconnect_type(value, buffer, offset, packet, parent)

  parent:add(b3_equities_binaryentrypoint_sbe_v7_0.fields.cancel_on_disconnect_type, range, value, display)

  return offset + length, value
end

-- Calculate size of: Establish Message
b3_equities_binaryentrypoint_sbe_v7_0_size_of.establish_message = function(buffer, offset)
  local index = 0

  index = index + b3_equities_binaryentrypoint_sbe_v7_0_size_of.session_id

  index = index + b3_equities_binaryentrypoint_sbe_v7_0_size_of.session_ver_id

  index = index + b3_equities_binaryentrypoint_sbe_v7_0_size_of.timestamp

  index = index + b3_equities_binaryentrypoint_sbe_v7_0_size_of.keep_alive_interval

  index = index + b3_equities_binaryentrypoint_sbe_v7_0_size_of.next_seq_no

  index = index + b3_equities_binaryentrypoint_sbe_v7_0_size_of.cancel_on_disconnect_type

  index = index + b3_equities_binaryentrypoint_sbe_v7_0_size_of.cod_timeout_window

  index = index + b3_equities_binaryentrypoint_sbe_v7_0_size_of.credentials(buffer, offset + index)

  return index
end

-- Display: Establish Message
b3_equities_binaryentrypoint_sbe_v7_0_display.establish_message = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Establish Message
b3_equities_binaryentrypoint_sbe_v7_0_dissect.establish_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Session Id: 4 Byte Unsigned Fixed Width Integer
  index, session_id = b3_equities_binaryentrypoint_sbe_v7_0_dissect.session_id(buffer, index, packet, parent)

  -- Session Ver Id: 8 Byte Unsigned Fixed Width Integer
  index, session_ver_id = b3_equities_binaryentrypoint_sbe_v7_0_dissect.session_ver_id(buffer, index, packet, parent)

  -- Timestamp: 8 Byte Unsigned Fixed Width Integer
  index, timestamp = b3_equities_binaryentrypoint_sbe_v7_0_dissect.timestamp(buffer, index, packet, parent)

  -- Keep Alive Interval: 8 Byte Unsigned Fixed Width Integer
  index, keep_alive_interval = b3_equities_binaryentrypoint_sbe_v7_0_dissect.keep_alive_interval(buffer, index, packet, parent)

  -- Next Seq No: 4 Byte Unsigned Fixed Width Integer
  index, next_seq_no = b3_equities_binaryentrypoint_sbe_v7_0_dissect.next_seq_no(buffer, index, packet, parent)

  -- Cancel On Disconnect Type: 1 Byte Unsigned Fixed Width Integer Enum with 4 values
  index, cancel_on_disconnect_type = b3_equities_binaryentrypoint_sbe_v7_0_dissect.cancel_on_disconnect_type(buffer, index, packet, parent)

  -- Cod Timeout Window: 8 Byte Unsigned Fixed Width Integer
  index, cod_timeout_window = b3_equities_binaryentrypoint_sbe_v7_0_dissect.cod_timeout_window(buffer, index, packet, parent)

  -- Credentials: Struct of 2 fields
  index, credentials = b3_equities_binaryentrypoint_sbe_v7_0_dissect.credentials(buffer, index, packet, parent)

  return index
end

-- Dissect: Establish Message
b3_equities_binaryentrypoint_sbe_v7_0_dissect.establish_message = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.establish_message then
    local length = b3_equities_binaryentrypoint_sbe_v7_0_size_of.establish_message(buffer, offset)
    local range = buffer(offset, length)
    local display = b3_equities_binaryentrypoint_sbe_v7_0_display.establish_message(buffer, packet, parent)
    parent = parent:add(b3_equities_binaryentrypoint_sbe_v7_0.fields.establish_message, range, display)
  end

  return b3_equities_binaryentrypoint_sbe_v7_0_dissect.establish_message_fields(buffer, offset, packet, parent)
end

-- Size: Current Session Ver Id
b3_equities_binaryentrypoint_sbe_v7_0_size_of.current_session_ver_id = 8

-- Display: Current Session Ver Id
b3_equities_binaryentrypoint_sbe_v7_0_display.current_session_ver_id = function(value)
  return "Current Session Ver Id: "..value
end

-- Dissect: Current Session Ver Id
b3_equities_binaryentrypoint_sbe_v7_0_dissect.current_session_ver_id = function(buffer, offset, packet, parent)
  local length = b3_equities_binaryentrypoint_sbe_v7_0_size_of.current_session_ver_id
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = b3_equities_binaryentrypoint_sbe_v7_0_display.current_session_ver_id(value, buffer, offset, packet, parent)

  parent:add(b3_equities_binaryentrypoint_sbe_v7_0.fields.current_session_ver_id, range, value, display)

  return offset + length, value
end

-- Size: Negotiation Reject Code
b3_equities_binaryentrypoint_sbe_v7_0_size_of.negotiation_reject_code = 1

-- Display: Negotiation Reject Code
b3_equities_binaryentrypoint_sbe_v7_0_display.negotiation_reject_code = function(value)
  if value == 0 then
    return "Negotiation Reject Code: Unspecified (0)"
  end
  if value == 1 then
    return "Negotiation Reject Code: Credentials (1)"
  end
  if value == 2 then
    return "Negotiation Reject Code: Flowtypenotsupported (2)"
  end
  if value == 3 then
    return "Negotiation Reject Code: Alreadynegotiated (3)"
  end
  if value == 4 then
    return "Negotiation Reject Code: Sessionblocked (4)"
  end
  if value == 5 then
    return "Negotiation Reject Code: Invalidsessionid (5)"
  end
  if value == 6 then
    return "Negotiation Reject Code: Invalidsessionverid (6)"
  end
  if value == 7 then
    return "Negotiation Reject Code: Invalidtimestamp (7)"
  end
  if value == 8 then
    return "Negotiation Reject Code: Invalidfirm (8)"
  end
  if value == 20 then
    return "Negotiation Reject Code: Negotiatenotallowed (20)"
  end
  if value == 21 then
    return "Negotiation Reject Code: Duplicatesessionconnection (21)"
  end
  if value == 22 then
    return "Negotiation Reject Code: Authenticationinprogress (22)"
  end

  return "Negotiation Reject Code: Unknown("..value..")"
end

-- Dissect: Negotiation Reject Code
b3_equities_binaryentrypoint_sbe_v7_0_dissect.negotiation_reject_code = function(buffer, offset, packet, parent)
  local length = b3_equities_binaryentrypoint_sbe_v7_0_size_of.negotiation_reject_code
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = b3_equities_binaryentrypoint_sbe_v7_0_display.negotiation_reject_code(value, buffer, offset, packet, parent)

  parent:add(b3_equities_binaryentrypoint_sbe_v7_0.fields.negotiation_reject_code, range, value, display)

  return offset + length, value
end

-- Calculate size of: Negotiate Reject Message
b3_equities_binaryentrypoint_sbe_v7_0_size_of.negotiate_reject_message = function(buffer, offset)
  local index = 0

  index = index + b3_equities_binaryentrypoint_sbe_v7_0_size_of.session_id

  index = index + b3_equities_binaryentrypoint_sbe_v7_0_size_of.session_ver_id

  index = index + b3_equities_binaryentrypoint_sbe_v7_0_size_of.request_timestamp

  index = index + b3_equities_binaryentrypoint_sbe_v7_0_size_of.entering_firm_optional

  index = index + b3_equities_binaryentrypoint_sbe_v7_0_size_of.negotiation_reject_code

  index = index + b3_equities_binaryentrypoint_sbe_v7_0_size_of.current_session_ver_id

  return index
end

-- Display: Negotiate Reject Message
b3_equities_binaryentrypoint_sbe_v7_0_display.negotiate_reject_message = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Negotiate Reject Message
b3_equities_binaryentrypoint_sbe_v7_0_dissect.negotiate_reject_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Session Id: 4 Byte Unsigned Fixed Width Integer
  index, session_id = b3_equities_binaryentrypoint_sbe_v7_0_dissect.session_id(buffer, index, packet, parent)

  -- Session Ver Id: 8 Byte Unsigned Fixed Width Integer
  index, session_ver_id = b3_equities_binaryentrypoint_sbe_v7_0_dissect.session_ver_id(buffer, index, packet, parent)

  -- Request Timestamp: 8 Byte Unsigned Fixed Width Integer
  index, request_timestamp = b3_equities_binaryentrypoint_sbe_v7_0_dissect.request_timestamp(buffer, index, packet, parent)

  -- Entering Firm Optional: 4 Byte Unsigned Fixed Width Integer
  index, entering_firm_optional = b3_equities_binaryentrypoint_sbe_v7_0_dissect.entering_firm_optional(buffer, index, packet, parent)

  -- Negotiation Reject Code: 1 Byte Unsigned Fixed Width Integer Enum with 12 values
  index, negotiation_reject_code = b3_equities_binaryentrypoint_sbe_v7_0_dissect.negotiation_reject_code(buffer, index, packet, parent)

  -- Current Session Ver Id: 8 Byte Unsigned Fixed Width Integer
  index, current_session_ver_id = b3_equities_binaryentrypoint_sbe_v7_0_dissect.current_session_ver_id(buffer, index, packet, parent)

  return index
end

-- Dissect: Negotiate Reject Message
b3_equities_binaryentrypoint_sbe_v7_0_dissect.negotiate_reject_message = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.negotiate_reject_message then
    local length = b3_equities_binaryentrypoint_sbe_v7_0_size_of.negotiate_reject_message(buffer, offset)
    local range = buffer(offset, length)
    local display = b3_equities_binaryentrypoint_sbe_v7_0_display.negotiate_reject_message(buffer, packet, parent)
    parent = parent:add(b3_equities_binaryentrypoint_sbe_v7_0.fields.negotiate_reject_message, range, display)
  end

  return b3_equities_binaryentrypoint_sbe_v7_0_dissect.negotiate_reject_message_fields(buffer, offset, packet, parent)
end

-- Size: Entering Firm
b3_equities_binaryentrypoint_sbe_v7_0_size_of.entering_firm = 4

-- Display: Entering Firm
b3_equities_binaryentrypoint_sbe_v7_0_display.entering_firm = function(value)
  return "Entering Firm: "..value
end

-- Dissect: Entering Firm
b3_equities_binaryentrypoint_sbe_v7_0_dissect.entering_firm = function(buffer, offset, packet, parent)
  local length = b3_equities_binaryentrypoint_sbe_v7_0_size_of.entering_firm
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = b3_equities_binaryentrypoint_sbe_v7_0_display.entering_firm(value, buffer, offset, packet, parent)

  parent:add(b3_equities_binaryentrypoint_sbe_v7_0.fields.entering_firm, range, value, display)

  return offset + length, value
end

-- Calculate size of: Negotiate Response Message
b3_equities_binaryentrypoint_sbe_v7_0_size_of.negotiate_response_message = function(buffer, offset)
  local index = 0

  index = index + b3_equities_binaryentrypoint_sbe_v7_0_size_of.session_id

  index = index + b3_equities_binaryentrypoint_sbe_v7_0_size_of.session_ver_id

  index = index + b3_equities_binaryentrypoint_sbe_v7_0_size_of.request_timestamp

  index = index + b3_equities_binaryentrypoint_sbe_v7_0_size_of.entering_firm

  return index
end

-- Display: Negotiate Response Message
b3_equities_binaryentrypoint_sbe_v7_0_display.negotiate_response_message = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Negotiate Response Message
b3_equities_binaryentrypoint_sbe_v7_0_dissect.negotiate_response_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Session Id: 4 Byte Unsigned Fixed Width Integer
  index, session_id = b3_equities_binaryentrypoint_sbe_v7_0_dissect.session_id(buffer, index, packet, parent)

  -- Session Ver Id: 8 Byte Unsigned Fixed Width Integer
  index, session_ver_id = b3_equities_binaryentrypoint_sbe_v7_0_dissect.session_ver_id(buffer, index, packet, parent)

  -- Request Timestamp: 8 Byte Unsigned Fixed Width Integer
  index, request_timestamp = b3_equities_binaryentrypoint_sbe_v7_0_dissect.request_timestamp(buffer, index, packet, parent)

  -- Entering Firm: 4 Byte Unsigned Fixed Width Integer
  index, entering_firm = b3_equities_binaryentrypoint_sbe_v7_0_dissect.entering_firm(buffer, index, packet, parent)

  return index
end

-- Dissect: Negotiate Response Message
b3_equities_binaryentrypoint_sbe_v7_0_dissect.negotiate_response_message = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.negotiate_response_message then
    local length = b3_equities_binaryentrypoint_sbe_v7_0_size_of.negotiate_response_message(buffer, offset)
    local range = buffer(offset, length)
    local display = b3_equities_binaryentrypoint_sbe_v7_0_display.negotiate_response_message(buffer, packet, parent)
    parent = parent:add(b3_equities_binaryentrypoint_sbe_v7_0.fields.negotiate_response_message, range, display)
  end

  return b3_equities_binaryentrypoint_sbe_v7_0_dissect.negotiate_response_message_fields(buffer, offset, packet, parent)
end

-- Calculate size of: Client App Version
b3_equities_binaryentrypoint_sbe_v7_0_size_of.client_app_version = function(buffer, offset)
  local index = 0

  index = index + b3_equities_binaryentrypoint_sbe_v7_0_size_of.length

  index = index + b3_equities_binaryentrypoint_sbe_v7_0_size_of.var_data_char

  return index
end

-- Display: Client App Version
b3_equities_binaryentrypoint_sbe_v7_0_display.client_app_version = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Client App Version
b3_equities_binaryentrypoint_sbe_v7_0_dissect.client_app_version_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Length: 1 Byte Unsigned Fixed Width Integer
  index, length = b3_equities_binaryentrypoint_sbe_v7_0_dissect.length(buffer, index, packet, parent)

  -- Var Data char
  index, var_data_char = b3_equities_binaryentrypoint_sbe_v7_0_dissect.var_data_char(buffer, index, packet, parent)

  return index
end

-- Dissect: Client App Version
b3_equities_binaryentrypoint_sbe_v7_0_dissect.client_app_version = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.client_app_version then
    local length = b3_equities_binaryentrypoint_sbe_v7_0_size_of.client_app_version(buffer, offset)
    local range = buffer(offset, length)
    local display = b3_equities_binaryentrypoint_sbe_v7_0_display.client_app_version(buffer, packet, parent)
    parent = parent:add(b3_equities_binaryentrypoint_sbe_v7_0.fields.client_app_version, range, display)
  end

  return b3_equities_binaryentrypoint_sbe_v7_0_dissect.client_app_version_fields(buffer, offset, packet, parent)
end

-- Calculate size of: Client App Name
b3_equities_binaryentrypoint_sbe_v7_0_size_of.client_app_name = function(buffer, offset)
  local index = 0

  index = index + b3_equities_binaryentrypoint_sbe_v7_0_size_of.length

  index = index + b3_equities_binaryentrypoint_sbe_v7_0_size_of.var_data_char

  return index
end

-- Display: Client App Name
b3_equities_binaryentrypoint_sbe_v7_0_display.client_app_name = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Client App Name
b3_equities_binaryentrypoint_sbe_v7_0_dissect.client_app_name_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Length: 1 Byte Unsigned Fixed Width Integer
  index, length = b3_equities_binaryentrypoint_sbe_v7_0_dissect.length(buffer, index, packet, parent)

  -- Var Data char
  index, var_data_char = b3_equities_binaryentrypoint_sbe_v7_0_dissect.var_data_char(buffer, index, packet, parent)

  return index
end

-- Dissect: Client App Name
b3_equities_binaryentrypoint_sbe_v7_0_dissect.client_app_name = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.client_app_name then
    local length = b3_equities_binaryentrypoint_sbe_v7_0_size_of.client_app_name(buffer, offset)
    local range = buffer(offset, length)
    local display = b3_equities_binaryentrypoint_sbe_v7_0_display.client_app_name(buffer, packet, parent)
    parent = parent:add(b3_equities_binaryentrypoint_sbe_v7_0.fields.client_app_name, range, display)
  end

  return b3_equities_binaryentrypoint_sbe_v7_0_dissect.client_app_name_fields(buffer, offset, packet, parent)
end

-- Calculate size of: Client Ip
b3_equities_binaryentrypoint_sbe_v7_0_size_of.client_ip = function(buffer, offset)
  local index = 0

  index = index + b3_equities_binaryentrypoint_sbe_v7_0_size_of.length

  index = index + b3_equities_binaryentrypoint_sbe_v7_0_size_of.var_data_char

  return index
end

-- Display: Client Ip
b3_equities_binaryentrypoint_sbe_v7_0_display.client_ip = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Client Ip
b3_equities_binaryentrypoint_sbe_v7_0_dissect.client_ip_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Length: 1 Byte Unsigned Fixed Width Integer
  index, length = b3_equities_binaryentrypoint_sbe_v7_0_dissect.length(buffer, index, packet, parent)

  -- Var Data char
  index, var_data_char = b3_equities_binaryentrypoint_sbe_v7_0_dissect.var_data_char(buffer, index, packet, parent)

  return index
end

-- Dissect: Client Ip
b3_equities_binaryentrypoint_sbe_v7_0_dissect.client_ip = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.client_ip then
    local length = b3_equities_binaryentrypoint_sbe_v7_0_size_of.client_ip(buffer, offset)
    local range = buffer(offset, length)
    local display = b3_equities_binaryentrypoint_sbe_v7_0_display.client_ip(buffer, packet, parent)
    parent = parent:add(b3_equities_binaryentrypoint_sbe_v7_0.fields.client_ip, range, display)
  end

  return b3_equities_binaryentrypoint_sbe_v7_0_dissect.client_ip_fields(buffer, offset, packet, parent)
end

-- Size: Onbehalf Firm
b3_equities_binaryentrypoint_sbe_v7_0_size_of.onbehalf_firm = 4

-- Display: Onbehalf Firm
b3_equities_binaryentrypoint_sbe_v7_0_display.onbehalf_firm = function(value)
  return "Onbehalf Firm: "..value
end

-- Dissect: Onbehalf Firm
b3_equities_binaryentrypoint_sbe_v7_0_dissect.onbehalf_firm = function(buffer, offset, packet, parent)
  local length = b3_equities_binaryentrypoint_sbe_v7_0_size_of.onbehalf_firm
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = b3_equities_binaryentrypoint_sbe_v7_0_display.onbehalf_firm(value, buffer, offset, packet, parent)

  parent:add(b3_equities_binaryentrypoint_sbe_v7_0.fields.onbehalf_firm, range, value, display)

  return offset + length, value
end

-- Calculate size of: Negotiate Message
b3_equities_binaryentrypoint_sbe_v7_0_size_of.negotiate_message = function(buffer, offset)
  local index = 0

  index = index + b3_equities_binaryentrypoint_sbe_v7_0_size_of.session_id

  index = index + b3_equities_binaryentrypoint_sbe_v7_0_size_of.session_ver_id

  index = index + b3_equities_binaryentrypoint_sbe_v7_0_size_of.timestamp

  index = index + b3_equities_binaryentrypoint_sbe_v7_0_size_of.entering_firm

  index = index + b3_equities_binaryentrypoint_sbe_v7_0_size_of.onbehalf_firm

  index = index + b3_equities_binaryentrypoint_sbe_v7_0_size_of.credentials(buffer, offset + index)

  index = index + b3_equities_binaryentrypoint_sbe_v7_0_size_of.client_ip(buffer, offset + index)

  index = index + b3_equities_binaryentrypoint_sbe_v7_0_size_of.client_app_name(buffer, offset + index)

  index = index + b3_equities_binaryentrypoint_sbe_v7_0_size_of.client_app_version(buffer, offset + index)

  return index
end

-- Display: Negotiate Message
b3_equities_binaryentrypoint_sbe_v7_0_display.negotiate_message = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Negotiate Message
b3_equities_binaryentrypoint_sbe_v7_0_dissect.negotiate_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Session Id: 4 Byte Unsigned Fixed Width Integer
  index, session_id = b3_equities_binaryentrypoint_sbe_v7_0_dissect.session_id(buffer, index, packet, parent)

  -- Session Ver Id: 8 Byte Unsigned Fixed Width Integer
  index, session_ver_id = b3_equities_binaryentrypoint_sbe_v7_0_dissect.session_ver_id(buffer, index, packet, parent)

  -- Timestamp: 8 Byte Unsigned Fixed Width Integer
  index, timestamp = b3_equities_binaryentrypoint_sbe_v7_0_dissect.timestamp(buffer, index, packet, parent)

  -- Entering Firm: 4 Byte Unsigned Fixed Width Integer
  index, entering_firm = b3_equities_binaryentrypoint_sbe_v7_0_dissect.entering_firm(buffer, index, packet, parent)

  -- Onbehalf Firm: 4 Byte Unsigned Fixed Width Integer
  index, onbehalf_firm = b3_equities_binaryentrypoint_sbe_v7_0_dissect.onbehalf_firm(buffer, index, packet, parent)

  -- Credentials: Struct of 2 fields
  index, credentials = b3_equities_binaryentrypoint_sbe_v7_0_dissect.credentials(buffer, index, packet, parent)

  -- Client Ip: Struct of 2 fields
  index, client_ip = b3_equities_binaryentrypoint_sbe_v7_0_dissect.client_ip(buffer, index, packet, parent)

  -- Client App Name: Struct of 2 fields
  index, client_app_name = b3_equities_binaryentrypoint_sbe_v7_0_dissect.client_app_name(buffer, index, packet, parent)

  -- Client App Version: Struct of 2 fields
  index, client_app_version = b3_equities_binaryentrypoint_sbe_v7_0_dissect.client_app_version(buffer, index, packet, parent)

  return index
end

-- Dissect: Negotiate Message
b3_equities_binaryentrypoint_sbe_v7_0_dissect.negotiate_message = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.negotiate_message then
    local length = b3_equities_binaryentrypoint_sbe_v7_0_size_of.negotiate_message(buffer, offset)
    local range = buffer(offset, length)
    local display = b3_equities_binaryentrypoint_sbe_v7_0_display.negotiate_message(buffer, packet, parent)
    parent = parent:add(b3_equities_binaryentrypoint_sbe_v7_0.fields.negotiate_message, range, display)
  end

  return b3_equities_binaryentrypoint_sbe_v7_0_dissect.negotiate_message_fields(buffer, offset, packet, parent)
end

-- Calculate runtime size of: Payload
b3_equities_binaryentrypoint_sbe_v7_0_size_of.payload = function(buffer, offset, template_id)
  -- Size of Negotiate Message
  if template_id == 1 then
    return b3_equities_binaryentrypoint_sbe_v7_0_size_of.negotiate_message(buffer, offset)
  end
  -- Size of Negotiate Response Message
  if template_id == 2 then
    return b3_equities_binaryentrypoint_sbe_v7_0_size_of.negotiate_response_message(buffer, offset)
  end
  -- Size of Negotiate Reject Message
  if template_id == 3 then
    return b3_equities_binaryentrypoint_sbe_v7_0_size_of.negotiate_reject_message(buffer, offset)
  end
  -- Size of Establish Message
  if template_id == 4 then
    return b3_equities_binaryentrypoint_sbe_v7_0_size_of.establish_message(buffer, offset)
  end
  -- Size of Establish Ack Message
  if template_id == 5 then
    return b3_equities_binaryentrypoint_sbe_v7_0_size_of.establish_ack_message(buffer, offset)
  end
  -- Size of Establish Reject Message
  if template_id == 6 then
    return b3_equities_binaryentrypoint_sbe_v7_0_size_of.establish_reject_message(buffer, offset)
  end
  -- Size of Terminate Message
  if template_id == 7 then
    return b3_equities_binaryentrypoint_sbe_v7_0_size_of.terminate_message(buffer, offset)
  end
  -- Size of Not Applied Message
  if template_id == 8 then
    return b3_equities_binaryentrypoint_sbe_v7_0_size_of.not_applied_message(buffer, offset)
  end
  -- Size of Sequence Message
  if template_id == 9 then
    return b3_equities_binaryentrypoint_sbe_v7_0_size_of.sequence_message(buffer, offset)
  end
  -- Size of Retransmit Request Message
  if template_id == 12 then
    return b3_equities_binaryentrypoint_sbe_v7_0_size_of.retransmit_request_message(buffer, offset)
  end
  -- Size of Retransmission Message
  if template_id == 13 then
    return b3_equities_binaryentrypoint_sbe_v7_0_size_of.retransmission_message(buffer, offset)
  end
  -- Size of Retransmit Reject Message
  if template_id == 14 then
    return b3_equities_binaryentrypoint_sbe_v7_0_size_of.retransmit_reject_message(buffer, offset)
  end
  -- Size of Simple New Order Message
  if template_id == 100 then
    return b3_equities_binaryentrypoint_sbe_v7_0_size_of.simple_new_order_message(buffer, offset)
  end
  -- Size of Simple Modify Order Message
  if template_id == 101 then
    return b3_equities_binaryentrypoint_sbe_v7_0_size_of.simple_modify_order_message(buffer, offset)
  end
  -- Size of New Order Single Message
  if template_id == 102 then
    return b3_equities_binaryentrypoint_sbe_v7_0_size_of.new_order_single_message(buffer, offset)
  end
  -- Size of Order Cancel Replace Request Message
  if template_id == 104 then
    return b3_equities_binaryentrypoint_sbe_v7_0_size_of.order_cancel_replace_request_message(buffer, offset)
  end
  -- Size of Order Cancel Request Message
  if template_id == 105 then
    return b3_equities_binaryentrypoint_sbe_v7_0_size_of.order_cancel_request_message(buffer, offset)
  end
  -- Size of New Order Cross Message
  if template_id == 106 then
    return b3_equities_binaryentrypoint_sbe_v7_0_size_of.new_order_cross_message(buffer, offset)
  end
  -- Size of Execution Report New Message
  if template_id == 200 then
    return b3_equities_binaryentrypoint_sbe_v7_0_size_of.execution_report_new_message(buffer, offset)
  end
  -- Size of Execution Report Modify Message
  if template_id == 201 then
    return b3_equities_binaryentrypoint_sbe_v7_0_size_of.execution_report_modify_message(buffer, offset)
  end
  -- Size of Execution Report Cancel Message
  if template_id == 202 then
    return b3_equities_binaryentrypoint_sbe_v7_0_size_of.execution_report_cancel_message(buffer, offset)
  end
  -- Size of Execution Report Trade Message
  if template_id == 203 then
    return b3_equities_binaryentrypoint_sbe_v7_0_size_of.execution_report_trade_message(buffer, offset)
  end
  -- Size of Execution Report Reject Message
  if template_id == 204 then
    return b3_equities_binaryentrypoint_sbe_v7_0_size_of.execution_report_reject_message(buffer, offset)
  end
  -- Size of Execution Report Forward Message
  if template_id == 205 then
    return b3_equities_binaryentrypoint_sbe_v7_0_size_of.execution_report_forward_message(buffer, offset)
  end
  -- Size of Business Message Reject
  if template_id == 206 then
    return b3_equities_binaryentrypoint_sbe_v7_0_size_of.business_message_reject(buffer, offset)
  end
  -- Size of Security Definition Request Message
  if template_id == 300 then
    return b3_equities_binaryentrypoint_sbe_v7_0_size_of.security_definition_request_message(buffer, offset)
  end
  -- Size of Security Definition Response Message
  if template_id == 301 then
    return b3_equities_binaryentrypoint_sbe_v7_0_size_of.security_definition_response_message(buffer, offset)
  end
  -- Size of Quote Request Message
  if template_id == 401 then
    return b3_equities_binaryentrypoint_sbe_v7_0_size_of.quote_request_message(buffer, offset)
  end
  -- Size of Quote Status Report Message
  if template_id == 402 then
    return b3_equities_binaryentrypoint_sbe_v7_0_size_of.quote_status_report_message(buffer, offset)
  end
  -- Size of Quote Message
  if template_id == 403 then
    return b3_equities_binaryentrypoint_sbe_v7_0_size_of.quote_message(buffer, offset)
  end
  -- Size of Quote Cancel Message
  if template_id == 404 then
    return b3_equities_binaryentrypoint_sbe_v7_0_size_of.quote_cancel_message(buffer, offset)
  end
  -- Size of Quote Request Reject Message
  if template_id == 405 then
    return b3_equities_binaryentrypoint_sbe_v7_0_size_of.quote_request_reject_message(buffer, offset)
  end
  -- Size of Position Maintenance Cancel Request Message
  if template_id == 501 then
    return b3_equities_binaryentrypoint_sbe_v7_0_size_of.position_maintenance_cancel_request_message(buffer, offset)
  end
  -- Size of Position Maintenance Request Message
  if template_id == 502 then
    return b3_equities_binaryentrypoint_sbe_v7_0_size_of.position_maintenance_request_message(buffer, offset)
  end
  -- Size of Position Maintenance Report Message
  if template_id == 503 then
    return b3_equities_binaryentrypoint_sbe_v7_0_size_of.position_maintenance_report_message(buffer, offset)
  end
  -- Size of Allocation Instruction Message
  if template_id == 601 then
    return b3_equities_binaryentrypoint_sbe_v7_0_size_of.allocation_instruction_message(buffer, offset)
  end
  -- Size of Allocation Report Message
  if template_id == 602 then
    return b3_equities_binaryentrypoint_sbe_v7_0_size_of.allocation_report_message(buffer, offset)
  end
  -- Size of Order Mass Action Request Message
  if template_id == 701 then
    return b3_equities_binaryentrypoint_sbe_v7_0_size_of.order_mass_action_request_message(buffer, offset)
  end
  -- Size of Order Mass Action Report Message
  if template_id == 702 then
    return b3_equities_binaryentrypoint_sbe_v7_0_size_of.order_mass_action_report_message(buffer, offset)
  end
  -- Size of Header Message
  if template_id == 0 then
    return b3_equities_binaryentrypoint_sbe_v7_0_size_of.header_message(buffer, offset)
  end

  return 0
end

-- Display: Payload
b3_equities_binaryentrypoint_sbe_v7_0_display.payload = function(buffer, offset, packet, parent)
  return ""
end

-- Dissect Branches: Payload
b3_equities_binaryentrypoint_sbe_v7_0_dissect.payload_branches = function(buffer, offset, packet, parent, template_id)
  -- Dissect Negotiate Message
  if template_id == 1 then
    return b3_equities_binaryentrypoint_sbe_v7_0_dissect.negotiate_message(buffer, offset, packet, parent)
  end
  -- Dissect Negotiate Response Message
  if template_id == 2 then
    return b3_equities_binaryentrypoint_sbe_v7_0_dissect.negotiate_response_message(buffer, offset, packet, parent)
  end
  -- Dissect Negotiate Reject Message
  if template_id == 3 then
    return b3_equities_binaryentrypoint_sbe_v7_0_dissect.negotiate_reject_message(buffer, offset, packet, parent)
  end
  -- Dissect Establish Message
  if template_id == 4 then
    return b3_equities_binaryentrypoint_sbe_v7_0_dissect.establish_message(buffer, offset, packet, parent)
  end
  -- Dissect Establish Ack Message
  if template_id == 5 then
    return b3_equities_binaryentrypoint_sbe_v7_0_dissect.establish_ack_message(buffer, offset, packet, parent)
  end
  -- Dissect Establish Reject Message
  if template_id == 6 then
    return b3_equities_binaryentrypoint_sbe_v7_0_dissect.establish_reject_message(buffer, offset, packet, parent)
  end
  -- Dissect Terminate Message
  if template_id == 7 then
    return b3_equities_binaryentrypoint_sbe_v7_0_dissect.terminate_message(buffer, offset, packet, parent)
  end
  -- Dissect Not Applied Message
  if template_id == 8 then
    return b3_equities_binaryentrypoint_sbe_v7_0_dissect.not_applied_message(buffer, offset, packet, parent)
  end
  -- Dissect Sequence Message
  if template_id == 9 then
    return b3_equities_binaryentrypoint_sbe_v7_0_dissect.sequence_message(buffer, offset, packet, parent)
  end
  -- Dissect Retransmit Request Message
  if template_id == 12 then
    return b3_equities_binaryentrypoint_sbe_v7_0_dissect.retransmit_request_message(buffer, offset, packet, parent)
  end
  -- Dissect Retransmission Message
  if template_id == 13 then
    return b3_equities_binaryentrypoint_sbe_v7_0_dissect.retransmission_message(buffer, offset, packet, parent)
  end
  -- Dissect Retransmit Reject Message
  if template_id == 14 then
    return b3_equities_binaryentrypoint_sbe_v7_0_dissect.retransmit_reject_message(buffer, offset, packet, parent)
  end
  -- Dissect Simple New Order Message
  if template_id == 100 then
    return b3_equities_binaryentrypoint_sbe_v7_0_dissect.simple_new_order_message(buffer, offset, packet, parent)
  end
  -- Dissect Simple Modify Order Message
  if template_id == 101 then
    return b3_equities_binaryentrypoint_sbe_v7_0_dissect.simple_modify_order_message(buffer, offset, packet, parent)
  end
  -- Dissect New Order Single Message
  if template_id == 102 then
    return b3_equities_binaryentrypoint_sbe_v7_0_dissect.new_order_single_message(buffer, offset, packet, parent)
  end
  -- Dissect Order Cancel Replace Request Message
  if template_id == 104 then
    return b3_equities_binaryentrypoint_sbe_v7_0_dissect.order_cancel_replace_request_message(buffer, offset, packet, parent)
  end
  -- Dissect Order Cancel Request Message
  if template_id == 105 then
    return b3_equities_binaryentrypoint_sbe_v7_0_dissect.order_cancel_request_message(buffer, offset, packet, parent)
  end
  -- Dissect New Order Cross Message
  if template_id == 106 then
    return b3_equities_binaryentrypoint_sbe_v7_0_dissect.new_order_cross_message(buffer, offset, packet, parent)
  end
  -- Dissect Execution Report New Message
  if template_id == 200 then
    return b3_equities_binaryentrypoint_sbe_v7_0_dissect.execution_report_new_message(buffer, offset, packet, parent)
  end
  -- Dissect Execution Report Modify Message
  if template_id == 201 then
    return b3_equities_binaryentrypoint_sbe_v7_0_dissect.execution_report_modify_message(buffer, offset, packet, parent)
  end
  -- Dissect Execution Report Cancel Message
  if template_id == 202 then
    return b3_equities_binaryentrypoint_sbe_v7_0_dissect.execution_report_cancel_message(buffer, offset, packet, parent)
  end
  -- Dissect Execution Report Trade Message
  if template_id == 203 then
    return b3_equities_binaryentrypoint_sbe_v7_0_dissect.execution_report_trade_message(buffer, offset, packet, parent)
  end
  -- Dissect Execution Report Reject Message
  if template_id == 204 then
    return b3_equities_binaryentrypoint_sbe_v7_0_dissect.execution_report_reject_message(buffer, offset, packet, parent)
  end
  -- Dissect Execution Report Forward Message
  if template_id == 205 then
    return b3_equities_binaryentrypoint_sbe_v7_0_dissect.execution_report_forward_message(buffer, offset, packet, parent)
  end
  -- Dissect Business Message Reject
  if template_id == 206 then
    return b3_equities_binaryentrypoint_sbe_v7_0_dissect.business_message_reject(buffer, offset, packet, parent)
  end
  -- Dissect Security Definition Request Message
  if template_id == 300 then
    return b3_equities_binaryentrypoint_sbe_v7_0_dissect.security_definition_request_message(buffer, offset, packet, parent)
  end
  -- Dissect Security Definition Response Message
  if template_id == 301 then
    return b3_equities_binaryentrypoint_sbe_v7_0_dissect.security_definition_response_message(buffer, offset, packet, parent)
  end
  -- Dissect Quote Request Message
  if template_id == 401 then
    return b3_equities_binaryentrypoint_sbe_v7_0_dissect.quote_request_message(buffer, offset, packet, parent)
  end
  -- Dissect Quote Status Report Message
  if template_id == 402 then
    return b3_equities_binaryentrypoint_sbe_v7_0_dissect.quote_status_report_message(buffer, offset, packet, parent)
  end
  -- Dissect Quote Message
  if template_id == 403 then
    return b3_equities_binaryentrypoint_sbe_v7_0_dissect.quote_message(buffer, offset, packet, parent)
  end
  -- Dissect Quote Cancel Message
  if template_id == 404 then
    return b3_equities_binaryentrypoint_sbe_v7_0_dissect.quote_cancel_message(buffer, offset, packet, parent)
  end
  -- Dissect Quote Request Reject Message
  if template_id == 405 then
    return b3_equities_binaryentrypoint_sbe_v7_0_dissect.quote_request_reject_message(buffer, offset, packet, parent)
  end
  -- Dissect Position Maintenance Cancel Request Message
  if template_id == 501 then
    return b3_equities_binaryentrypoint_sbe_v7_0_dissect.position_maintenance_cancel_request_message(buffer, offset, packet, parent)
  end
  -- Dissect Position Maintenance Request Message
  if template_id == 502 then
    return b3_equities_binaryentrypoint_sbe_v7_0_dissect.position_maintenance_request_message(buffer, offset, packet, parent)
  end
  -- Dissect Position Maintenance Report Message
  if template_id == 503 then
    return b3_equities_binaryentrypoint_sbe_v7_0_dissect.position_maintenance_report_message(buffer, offset, packet, parent)
  end
  -- Dissect Allocation Instruction Message
  if template_id == 601 then
    return b3_equities_binaryentrypoint_sbe_v7_0_dissect.allocation_instruction_message(buffer, offset, packet, parent)
  end
  -- Dissect Allocation Report Message
  if template_id == 602 then
    return b3_equities_binaryentrypoint_sbe_v7_0_dissect.allocation_report_message(buffer, offset, packet, parent)
  end
  -- Dissect Order Mass Action Request Message
  if template_id == 701 then
    return b3_equities_binaryentrypoint_sbe_v7_0_dissect.order_mass_action_request_message(buffer, offset, packet, parent)
  end
  -- Dissect Order Mass Action Report Message
  if template_id == 702 then
    return b3_equities_binaryentrypoint_sbe_v7_0_dissect.order_mass_action_report_message(buffer, offset, packet, parent)
  end
  -- Dissect Header Message
  if template_id == 0 then
    return b3_equities_binaryentrypoint_sbe_v7_0_dissect.header_message(buffer, offset, packet, parent)
  end

  return offset
end

-- Dissect: Payload
b3_equities_binaryentrypoint_sbe_v7_0_dissect.payload = function(buffer, offset, packet, parent, template_id)
  if not show.payload then
    return b3_equities_binaryentrypoint_sbe_v7_0_dissect.payload_branches(buffer, offset, packet, parent, template_id)
  end

  -- Calculate size and check that branch is not empty
  local size = b3_equities_binaryentrypoint_sbe_v7_0_size_of.payload(buffer, offset, template_id)
  if size == 0 then
    return offset
  end

  -- Dissect Element
  local range = buffer(offset, size)
  local display = b3_equities_binaryentrypoint_sbe_v7_0_display.payload(buffer, packet, parent)
  local element = parent:add(b3_equities_binaryentrypoint_sbe_v7_0.fields.payload, range, display)

  return b3_equities_binaryentrypoint_sbe_v7_0_dissect.payload_branches(buffer, offset, packet, parent, template_id)
end

-- Size: Version
b3_equities_binaryentrypoint_sbe_v7_0_size_of.version = 2

-- Display: Version
b3_equities_binaryentrypoint_sbe_v7_0_display.version = function(value)
  return "Version: "..value
end

-- Dissect: Version
b3_equities_binaryentrypoint_sbe_v7_0_dissect.version = function(buffer, offset, packet, parent)
  local length = b3_equities_binaryentrypoint_sbe_v7_0_size_of.version
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = b3_equities_binaryentrypoint_sbe_v7_0_display.version(value, buffer, offset, packet, parent)

  parent:add(b3_equities_binaryentrypoint_sbe_v7_0.fields.version, range, value, display)

  return offset + length, value
end

-- Size: Schema Id
b3_equities_binaryentrypoint_sbe_v7_0_size_of.schema_id = 2

-- Display: Schema Id
b3_equities_binaryentrypoint_sbe_v7_0_display.schema_id = function(value)
  return "Schema Id: "..value
end

-- Dissect: Schema Id
b3_equities_binaryentrypoint_sbe_v7_0_dissect.schema_id = function(buffer, offset, packet, parent)
  local length = b3_equities_binaryentrypoint_sbe_v7_0_size_of.schema_id
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = b3_equities_binaryentrypoint_sbe_v7_0_display.schema_id(value, buffer, offset, packet, parent)

  parent:add(b3_equities_binaryentrypoint_sbe_v7_0.fields.schema_id, range, value, display)

  return offset + length, value
end

-- Size: Template Id
b3_equities_binaryentrypoint_sbe_v7_0_size_of.template_id = 2

-- Display: Template Id
b3_equities_binaryentrypoint_sbe_v7_0_display.template_id = function(value)
  if value == 1 then
    return "Template Id: Negotiate Message (1)"
  end
  if value == 2 then
    return "Template Id: Negotiate Response Message (2)"
  end
  if value == 3 then
    return "Template Id: Negotiate Reject Message (3)"
  end
  if value == 4 then
    return "Template Id: Establish Message (4)"
  end
  if value == 5 then
    return "Template Id: Establish Ack Message (5)"
  end
  if value == 6 then
    return "Template Id: Establish Reject Message (6)"
  end
  if value == 7 then
    return "Template Id: Terminate Message (7)"
  end
  if value == 8 then
    return "Template Id: Not Applied Message (8)"
  end
  if value == 9 then
    return "Template Id: Sequence Message (9)"
  end
  if value == 12 then
    return "Template Id: Retransmit Request Message (12)"
  end
  if value == 13 then
    return "Template Id: Retransmission Message (13)"
  end
  if value == 14 then
    return "Template Id: Retransmit Reject Message (14)"
  end
  if value == 100 then
    return "Template Id: Simple New Order Message (100)"
  end
  if value == 101 then
    return "Template Id: Simple Modify Order Message (101)"
  end
  if value == 102 then
    return "Template Id: New Order Single Message (102)"
  end
  if value == 104 then
    return "Template Id: Order Cancel Replace Request Message (104)"
  end
  if value == 105 then
    return "Template Id: Order Cancel Request Message (105)"
  end
  if value == 106 then
    return "Template Id: New Order Cross Message (106)"
  end
  if value == 200 then
    return "Template Id: Execution Report New Message (200)"
  end
  if value == 201 then
    return "Template Id: Execution Report Modify Message (201)"
  end
  if value == 202 then
    return "Template Id: Execution Report Cancel Message (202)"
  end
  if value == 203 then
    return "Template Id: Execution Report Trade Message (203)"
  end
  if value == 204 then
    return "Template Id: Execution Report Reject Message (204)"
  end
  if value == 205 then
    return "Template Id: Execution Report Forward Message (205)"
  end
  if value == 206 then
    return "Template Id: Business Message Reject (206)"
  end
  if value == 300 then
    return "Template Id: Security Definition Request Message (300)"
  end
  if value == 301 then
    return "Template Id: Security Definition Response Message (301)"
  end
  if value == 401 then
    return "Template Id: Quote Request Message (401)"
  end
  if value == 402 then
    return "Template Id: Quote Status Report Message (402)"
  end
  if value == 403 then
    return "Template Id: Quote Message (403)"
  end
  if value == 404 then
    return "Template Id: Quote Cancel Message (404)"
  end
  if value == 405 then
    return "Template Id: Quote Request Reject Message (405)"
  end
  if value == 501 then
    return "Template Id: Position Maintenance Cancel Request Message (501)"
  end
  if value == 502 then
    return "Template Id: Position Maintenance Request Message (502)"
  end
  if value == 503 then
    return "Template Id: Position Maintenance Report Message (503)"
  end
  if value == 601 then
    return "Template Id: Allocation Instruction Message (601)"
  end
  if value == 602 then
    return "Template Id: Allocation Report Message (602)"
  end
  if value == 701 then
    return "Template Id: Order Mass Action Request Message (701)"
  end
  if value == 702 then
    return "Template Id: Order Mass Action Report Message (702)"
  end
  if value == 0 then
    return "Template Id: Header Message (0)"
  end

  return "Template Id: Unknown("..value..")"
end

-- Dissect: Template Id
b3_equities_binaryentrypoint_sbe_v7_0_dissect.template_id = function(buffer, offset, packet, parent)
  local length = b3_equities_binaryentrypoint_sbe_v7_0_size_of.template_id
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = b3_equities_binaryentrypoint_sbe_v7_0_display.template_id(value, buffer, offset, packet, parent)

  parent:add(b3_equities_binaryentrypoint_sbe_v7_0.fields.template_id, range, value, display)

  return offset + length, value
end

-- Calculate size of: Message Header
b3_equities_binaryentrypoint_sbe_v7_0_size_of.message_header = function(buffer, offset)
  local index = 0

  index = index + b3_equities_binaryentrypoint_sbe_v7_0_size_of.block_length

  index = index + b3_equities_binaryentrypoint_sbe_v7_0_size_of.template_id

  index = index + b3_equities_binaryentrypoint_sbe_v7_0_size_of.schema_id

  index = index + b3_equities_binaryentrypoint_sbe_v7_0_size_of.version

  return index
end

-- Display: Message Header
b3_equities_binaryentrypoint_sbe_v7_0_display.message_header = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Message Header
b3_equities_binaryentrypoint_sbe_v7_0_dissect.message_header_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Block Length: 2 Byte Unsigned Fixed Width Integer
  index, block_length = b3_equities_binaryentrypoint_sbe_v7_0_dissect.block_length(buffer, index, packet, parent)

  -- Template Id: 2 Byte Unsigned Fixed Width Integer Enum with 40 values
  index, template_id = b3_equities_binaryentrypoint_sbe_v7_0_dissect.template_id(buffer, index, packet, parent)

  -- Schema Id: 2 Byte Unsigned Fixed Width Integer Static
  index, schema_id = b3_equities_binaryentrypoint_sbe_v7_0_dissect.schema_id(buffer, index, packet, parent)

  -- Version: 2 Byte Unsigned Fixed Width Integer Static
  index, version = b3_equities_binaryentrypoint_sbe_v7_0_dissect.version(buffer, index, packet, parent)

  return index
end

-- Dissect: Message Header
b3_equities_binaryentrypoint_sbe_v7_0_dissect.message_header = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.message_header then
    local length = b3_equities_binaryentrypoint_sbe_v7_0_size_of.message_header(buffer, offset)
    local range = buffer(offset, length)
    local display = b3_equities_binaryentrypoint_sbe_v7_0_display.message_header(buffer, packet, parent)
    parent = parent:add(b3_equities_binaryentrypoint_sbe_v7_0.fields.message_header, range, display)
  end

  return b3_equities_binaryentrypoint_sbe_v7_0_dissect.message_header_fields(buffer, offset, packet, parent)
end

-- Calculate size of: Simple Open Framing Header
b3_equities_binaryentrypoint_sbe_v7_0_size_of.simple_open_framing_header = function(buffer, offset)
  local index = 0

  index = index + b3_equities_binaryentrypoint_sbe_v7_0_size_of.message_length

  index = index + b3_equities_binaryentrypoint_sbe_v7_0_size_of.encoding_type

  return index
end

-- Display: Simple Open Framing Header
b3_equities_binaryentrypoint_sbe_v7_0_display.simple_open_framing_header = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Simple Open Framing Header
b3_equities_binaryentrypoint_sbe_v7_0_dissect.simple_open_framing_header_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Message Length: 2 Byte Unsigned Fixed Width Integer
  index, message_length = b3_equities_binaryentrypoint_sbe_v7_0_dissect.message_length(buffer, index, packet, parent)

  -- Encoding Type: 2 Byte Unsigned Fixed Width Integer
  index, encoding_type = b3_equities_binaryentrypoint_sbe_v7_0_dissect.encoding_type(buffer, index, packet, parent)

  return index
end

-- Dissect: Simple Open Framing Header
b3_equities_binaryentrypoint_sbe_v7_0_dissect.simple_open_framing_header = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.simple_open_framing_header then
    local length = b3_equities_binaryentrypoint_sbe_v7_0_size_of.simple_open_framing_header(buffer, offset)
    local range = buffer(offset, length)
    local display = b3_equities_binaryentrypoint_sbe_v7_0_display.simple_open_framing_header(buffer, packet, parent)
    parent = parent:add(b3_equities_binaryentrypoint_sbe_v7_0.fields.simple_open_framing_header, range, display)
  end

  return b3_equities_binaryentrypoint_sbe_v7_0_dissect.simple_open_framing_header_fields(buffer, offset, packet, parent)
end

-- Display: Simple Open Frame
b3_equities_binaryentrypoint_sbe_v7_0_display.simple_open_frame = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Simple Open Frame
b3_equities_binaryentrypoint_sbe_v7_0_dissect.simple_open_frame_fields = function(buffer, offset, packet, parent, size_of_simple_open_frame)
  local index = offset

  -- Simple Open Framing Header: Struct of 2 fields
  index, simple_open_framing_header = b3_equities_binaryentrypoint_sbe_v7_0_dissect.simple_open_framing_header(buffer, index, packet, parent)

  -- Message Header: Struct of 4 fields
  index, message_header = b3_equities_binaryentrypoint_sbe_v7_0_dissect.message_header(buffer, index, packet, parent)

  -- Dependency element: Template Id
  local template_id = buffer(index - 6, 2):le_uint()

  -- Payload: Runtime Type with 40 branches
  index = b3_equities_binaryentrypoint_sbe_v7_0_dissect.payload(buffer, index, packet, parent, template_id)

  return index
end

-- Dissect: Simple Open Frame
b3_equities_binaryentrypoint_sbe_v7_0_dissect.simple_open_frame = function(buffer, offset, packet, parent, size_of_simple_open_frame)
  -- Optionally add struct element to protocol tree
  if show.simple_open_frame then
    local range = buffer(offset, size_of_simple_open_frame)
    local display = b3_equities_binaryentrypoint_sbe_v7_0_display.simple_open_frame(buffer, packet, parent)
    parent = parent:add(b3_equities_binaryentrypoint_sbe_v7_0.fields.simple_open_frame, range, display)
  end

  b3_equities_binaryentrypoint_sbe_v7_0_dissect.simple_open_frame_fields(buffer, offset, packet, parent, size_of_simple_open_frame)

  return offset + size_of_simple_open_frame
end

-- Remaining Bytes For: Simple Open Frame
local simple_open_frame_bytes_remaining = function(buffer, index, available)
  -- Calculate the number of bytes remaining
  local remaining = available - index

  -- Check if packet size can be read
  if remaining < b3_equities_binaryentrypoint_sbe_v7_0_size_of.simple_open_framing_header(buffer, index) then
    return -DESEGMENT_ONE_MORE_SEGMENT
  end

  -- Parse runtime size
  local current = buffer(index, 2):le_uint()

  -- Check if enough bytes remain
  if remaining < current then
    return -(current - remaining)
  end

  return remaining, current
end

-- Dissect Packet
b3_equities_binaryentrypoint_sbe_v7_0_dissect.packet = function(buffer, packet, parent)
  local index = 0

  -- Dependency for Simple Open Frame
  local end_of_payload = buffer:len()

  -- Simple Open Frame: Struct of 3 fields
  while index < end_of_payload do

    -- Are minimum number of bytes are available?
    local available, size_of_simple_open_frame = simple_open_frame_bytes_remaining(buffer, index, end_of_payload)

    if available > 0 then
      index = b3_equities_binaryentrypoint_sbe_v7_0_dissect.simple_open_frame(buffer, index, packet, parent, size_of_simple_open_frame)
    else
      -- More bytes needed, so set packet information
      packet.desegment_offset = index
      packet.desegment_len = -(available)

      break
    end
  end

  return index
end


-----------------------------------------------------------------------
-- Protocol Dissector and Components
-----------------------------------------------------------------------

-- Initialize Dissector
function b3_equities_binaryentrypoint_sbe_v7_0.init()
end

-- Dissector for B3 Equities BinaryEntryPoint Sbe 7.0
function b3_equities_binaryentrypoint_sbe_v7_0.dissector(buffer, packet, parent)

  -- Set protocol name
  packet.cols.protocol = b3_equities_binaryentrypoint_sbe_v7_0.name

  -- Dissect protocol
  local protocol = parent:add(b3_equities_binaryentrypoint_sbe_v7_0, buffer(), b3_equities_binaryentrypoint_sbe_v7_0.description, "("..buffer:len().." Bytes)")
  return b3_equities_binaryentrypoint_sbe_v7_0_dissect.packet(buffer, packet, protocol)
end

-- Register With Tcp Table
local tcp_table = DissectorTable.get("tcp.port")
tcp_table:add(65333, b3_equities_binaryentrypoint_sbe_v7_0)


-----------------------------------------------------------------------
-- Protocol Heuristics
-----------------------------------------------------------------------

-- Verify size of packet
verify.b3_equities_binaryentrypoint_sbe_v7_0_packet_size = function(buffer)

  return true
end

-- Verify Schema Id Field
verify.schema_id = function(buffer)
  -- Attempt to read field
  local value = buffer(8, 2):le_uint()

  if value == 1 then
    return true
  end

  return false
end

-- Verify Version Field
verify.version = function(buffer)
  -- Attempt to read field
  local value = buffer(10, 2):le_uint()

  if value == 0 then
    return true
  end

  return false
end

-- Dissector Heuristic for B3 Equities BinaryEntryPoint Sbe 7.0
local function b3_equities_binaryentrypoint_sbe_v7_0_heuristic(buffer, packet, parent)
  -- Verify packet length
  if not verify.b3_equities_binaryentrypoint_sbe_v7_0_packet_size(buffer) then return false end

  -- Verify Schema Id
  if not verify.schema_id(buffer) then return false end

  -- Verify Version
  if not verify.version(buffer) then return false end

  -- Protocol is valid, set conversation and dissect this packet
  packet.conversation = b3_equities_binaryentrypoint_sbe_v7_0
  b3_equities_binaryentrypoint_sbe_v7_0.dissector(buffer, packet, parent)

  return true
end

-- Register Heuristic for B3 Equities BinaryEntryPoint Sbe 7.0
b3_equities_binaryentrypoint_sbe_v7_0:register_heuristic("tcp", b3_equities_binaryentrypoint_sbe_v7_0_heuristic)

-----------------------------------------------------------------------
-- Lua dissectors are an easily edited and modified cross platform dissection solution.
-- Feel free to modify. Enjoy.
-----------------------------------------------------------------------
-- 
-- Protocol:
--   Organization: B3
--   Version: 7.0
--   Date: Wednesday, July 5, 2023
--   Specification: BinaryEntryPoint-MessageReference-7.0.1-enUS_.pdf
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
