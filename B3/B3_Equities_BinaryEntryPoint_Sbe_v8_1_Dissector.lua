-----------------------------------------------------------------------
-- Lua Script Wireshark Dissector
-- 
-- Please see end of file for rules and regulations
-----------------------------------------------------------------------

-- B3 Equities BinaryEntryPoint Sbe 8.1 Protocol
local omi_b3_equities_binaryentrypoint_sbe_v8_1 = Proto("B3.Equities.BinaryEntryPoint.Sbe.v8.1.Lua", "B3 Equities BinaryEntryPoint Sbe 8.1")

-- Protocol table
local b3_equities_binaryentrypoint_sbe_v8_1 = {}

-- Component Tables
local show = {}
local format = {}
local verify = {}
local translate = {}

-----------------------------------------------------------------------
-- Declare Protocol Fields
-----------------------------------------------------------------------

-- B3 Equities BinaryEntryPoint Sbe 8.1 Fields
omi_b3_equities_binaryentrypoint_sbe_v8_1.fields.account = ProtoField.new("Account", "b3.equities.binaryentrypoint.sbe.v8.1.account", ftypes.UINT32)
omi_b3_equities_binaryentrypoint_sbe_v8_1.fields.account_type = ProtoField.new("Account Type", "b3.equities.binaryentrypoint.sbe.v8.1.accounttype", ftypes.UINT8)
omi_b3_equities_binaryentrypoint_sbe_v8_1.fields.action_requested_from_session_id = ProtoField.new("Action Requested From Session Id", "b3.equities.binaryentrypoint.sbe.v8.1.actionrequestedfromsessionid", ftypes.UINT32)
omi_b3_equities_binaryentrypoint_sbe_v8_1.fields.aggressor_indicator = ProtoField.new("Aggressor Indicator", "b3.equities.binaryentrypoint.sbe.v8.1.aggressorindicator", ftypes.UINT8)
omi_b3_equities_binaryentrypoint_sbe_v8_1.fields.alloc_account = ProtoField.new("Alloc Account", "b3.equities.binaryentrypoint.sbe.v8.1.allocaccount", ftypes.UINT32)
omi_b3_equities_binaryentrypoint_sbe_v8_1.fields.alloc_id = ProtoField.new("Alloc Id", "b3.equities.binaryentrypoint.sbe.v8.1.allocid", ftypes.UINT64)
omi_b3_equities_binaryentrypoint_sbe_v8_1.fields.alloc_no_orders_type = ProtoField.new("Alloc No Orders Type", "b3.equities.binaryentrypoint.sbe.v8.1.allocnoorderstype", ftypes.STRING)
omi_b3_equities_binaryentrypoint_sbe_v8_1.fields.alloc_qty = ProtoField.new("Alloc Qty", "b3.equities.binaryentrypoint.sbe.v8.1.allocqty", ftypes.UINT64)
omi_b3_equities_binaryentrypoint_sbe_v8_1.fields.alloc_rej_code = ProtoField.new("Alloc Rej Code", "b3.equities.binaryentrypoint.sbe.v8.1.allocrejcode", ftypes.UINT32)
omi_b3_equities_binaryentrypoint_sbe_v8_1.fields.alloc_report_id = ProtoField.new("Alloc Report Id", "b3.equities.binaryentrypoint.sbe.v8.1.allocreportid", ftypes.UINT64)
omi_b3_equities_binaryentrypoint_sbe_v8_1.fields.alloc_report_type = ProtoField.new("Alloc Report Type", "b3.equities.binaryentrypoint.sbe.v8.1.allocreporttype", ftypes.STRING)
omi_b3_equities_binaryentrypoint_sbe_v8_1.fields.alloc_status = ProtoField.new("Alloc Status", "b3.equities.binaryentrypoint.sbe.v8.1.allocstatus", ftypes.STRING)
omi_b3_equities_binaryentrypoint_sbe_v8_1.fields.alloc_trans_type = ProtoField.new("Alloc Trans Type", "b3.equities.binaryentrypoint.sbe.v8.1.alloctranstype", ftypes.STRING)
omi_b3_equities_binaryentrypoint_sbe_v8_1.fields.alloc_type = ProtoField.new("Alloc Type", "b3.equities.binaryentrypoint.sbe.v8.1.alloctype", ftypes.STRING)
omi_b3_equities_binaryentrypoint_sbe_v8_1.fields.asset = ProtoField.new("Asset", "b3.equities.binaryentrypoint.sbe.v8.1.asset", ftypes.STRING)
omi_b3_equities_binaryentrypoint_sbe_v8_1.fields.bidirectional_business_header = ProtoField.new("Bidirectional Business Header", "b3.equities.binaryentrypoint.sbe.v8.1.bidirectionalbusinessheader", ftypes.STRING)
omi_b3_equities_binaryentrypoint_sbe_v8_1.fields.block_length = ProtoField.new("Block Length", "b3.equities.binaryentrypoint.sbe.v8.1.blocklength", ftypes.UINT16)
omi_b3_equities_binaryentrypoint_sbe_v8_1.fields.business_reject_reason = ProtoField.new("Business Reject Reason", "b3.equities.binaryentrypoint.sbe.v8.1.businessrejectreason", ftypes.UINT32)
omi_b3_equities_binaryentrypoint_sbe_v8_1.fields.business_reject_ref_id = ProtoField.new("Business Reject Ref Id", "b3.equities.binaryentrypoint.sbe.v8.1.businessrejectrefid", ftypes.UINT64)
omi_b3_equities_binaryentrypoint_sbe_v8_1.fields.cancel_on_disconnect_type = ProtoField.new("Cancel On Disconnect Type", "b3.equities.binaryentrypoint.sbe.v8.1.cancelondisconnecttype", ftypes.UINT8)
omi_b3_equities_binaryentrypoint_sbe_v8_1.fields.clearing_business_date = ProtoField.new("Clearing Business Date", "b3.equities.binaryentrypoint.sbe.v8.1.clearingbusinessdate", ftypes.UINT16)
omi_b3_equities_binaryentrypoint_sbe_v8_1.fields.client_app_name = ProtoField.new("Client App Name", "b3.equities.binaryentrypoint.sbe.v8.1.clientappname", ftypes.STRING)
omi_b3_equities_binaryentrypoint_sbe_v8_1.fields.client_app_name_data = ProtoField.new("Client App Name Data", "b3.equities.binaryentrypoint.sbe.v8.1.clientappnamedata", ftypes.STRING)
omi_b3_equities_binaryentrypoint_sbe_v8_1.fields.client_app_name_length = ProtoField.new("Client App Name Length", "b3.equities.binaryentrypoint.sbe.v8.1.clientappnamelength", ftypes.UINT8)
omi_b3_equities_binaryentrypoint_sbe_v8_1.fields.client_app_version = ProtoField.new("Client App Version", "b3.equities.binaryentrypoint.sbe.v8.1.clientappversion", ftypes.STRING)
omi_b3_equities_binaryentrypoint_sbe_v8_1.fields.client_app_version_data = ProtoField.new("Client App Version Data", "b3.equities.binaryentrypoint.sbe.v8.1.clientappversiondata", ftypes.STRING)
omi_b3_equities_binaryentrypoint_sbe_v8_1.fields.client_app_version_length = ProtoField.new("Client App Version Length", "b3.equities.binaryentrypoint.sbe.v8.1.clientappversionlength", ftypes.UINT8)
omi_b3_equities_binaryentrypoint_sbe_v8_1.fields.client_ip = ProtoField.new("Client Ip", "b3.equities.binaryentrypoint.sbe.v8.1.clientip", ftypes.STRING)
omi_b3_equities_binaryentrypoint_sbe_v8_1.fields.client_ip_data = ProtoField.new("Client Ip Data", "b3.equities.binaryentrypoint.sbe.v8.1.clientipdata", ftypes.STRING)
omi_b3_equities_binaryentrypoint_sbe_v8_1.fields.client_ip_length = ProtoField.new("Client Ip Length", "b3.equities.binaryentrypoint.sbe.v8.1.clientiplength", ftypes.UINT8)
omi_b3_equities_binaryentrypoint_sbe_v8_1.fields.clordid = ProtoField.new("ClOrdId", "b3.equities.binaryentrypoint.sbe.v8.1.clordid", ftypes.UINT64)
omi_b3_equities_binaryentrypoint_sbe_v8_1.fields.clordid_optional = ProtoField.new("ClOrdId Optional", "b3.equities.binaryentrypoint.sbe.v8.1.clordidoptional", ftypes.UINT64)
omi_b3_equities_binaryentrypoint_sbe_v8_1.fields.cod_timeout_window = ProtoField.new("Cod Timeout Window", "b3.equities.binaryentrypoint.sbe.v8.1.codtimeoutwindow", ftypes.UINT64)
omi_b3_equities_binaryentrypoint_sbe_v8_1.fields.contra_broker = ProtoField.new("Contra Broker", "b3.equities.binaryentrypoint.sbe.v8.1.contrabroker", ftypes.UINT32)
omi_b3_equities_binaryentrypoint_sbe_v8_1.fields.contrary_instruction_indicator = ProtoField.new("Contrary Instruction Indicator", "b3.equities.binaryentrypoint.sbe.v8.1.contraryinstructionindicator", ftypes.UINT8)
omi_b3_equities_binaryentrypoint_sbe_v8_1.fields.count = ProtoField.new("Count", "b3.equities.binaryentrypoint.sbe.v8.1.count", ftypes.UINT32)
omi_b3_equities_binaryentrypoint_sbe_v8_1.fields.credentials = ProtoField.new("Credentials", "b3.equities.binaryentrypoint.sbe.v8.1.credentials", ftypes.STRING)
omi_b3_equities_binaryentrypoint_sbe_v8_1.fields.credentials_data = ProtoField.new("Credentials Data", "b3.equities.binaryentrypoint.sbe.v8.1.credentialsdata", ftypes.STRING)
omi_b3_equities_binaryentrypoint_sbe_v8_1.fields.credentials_length = ProtoField.new("Credentials Length", "b3.equities.binaryentrypoint.sbe.v8.1.credentialslength", ftypes.UINT8)
omi_b3_equities_binaryentrypoint_sbe_v8_1.fields.cross_prioritization = ProtoField.new("Cross Prioritization", "b3.equities.binaryentrypoint.sbe.v8.1.crossprioritization", ftypes.UINT8)
omi_b3_equities_binaryentrypoint_sbe_v8_1.fields.cross_type = ProtoField.new("Cross Type", "b3.equities.binaryentrypoint.sbe.v8.1.crosstype", ftypes.UINT8)
omi_b3_equities_binaryentrypoint_sbe_v8_1.fields.crossed_indicator = ProtoField.new("Crossed Indicator", "b3.equities.binaryentrypoint.sbe.v8.1.crossedindicator", ftypes.UINT16)
omi_b3_equities_binaryentrypoint_sbe_v8_1.fields.crossid = ProtoField.new("CrossId", "b3.equities.binaryentrypoint.sbe.v8.1.crossid", ftypes.UINT64)
omi_b3_equities_binaryentrypoint_sbe_v8_1.fields.crossid_optional = ProtoField.new("CrossId Optional", "b3.equities.binaryentrypoint.sbe.v8.1.crossidoptional", ftypes.UINT64)
omi_b3_equities_binaryentrypoint_sbe_v8_1.fields.cum_qty = ProtoField.new("Cum Qty", "b3.equities.binaryentrypoint.sbe.v8.1.cumqty", ftypes.UINT64)
omi_b3_equities_binaryentrypoint_sbe_v8_1.fields.current_session_ver_id = ProtoField.new("Current Session Ver Id", "b3.equities.binaryentrypoint.sbe.v8.1.currentsessionverid", ftypes.UINT64)
omi_b3_equities_binaryentrypoint_sbe_v8_1.fields.custodian = ProtoField.new("Custodian", "b3.equities.binaryentrypoint.sbe.v8.1.custodian", ftypes.UINT32)
omi_b3_equities_binaryentrypoint_sbe_v8_1.fields.custodian_info = ProtoField.new("Custodian Info", "b3.equities.binaryentrypoint.sbe.v8.1.custodianinfo", ftypes.STRING)
omi_b3_equities_binaryentrypoint_sbe_v8_1.fields.custody_account = ProtoField.new("Custody Account", "b3.equities.binaryentrypoint.sbe.v8.1.custodyaccount", ftypes.UINT32)
omi_b3_equities_binaryentrypoint_sbe_v8_1.fields.custody_allocation_type = ProtoField.new("Custody Allocation Type", "b3.equities.binaryentrypoint.sbe.v8.1.custodyallocationtype", ftypes.UINT32)
omi_b3_equities_binaryentrypoint_sbe_v8_1.fields.cxl_rej_response_to = ProtoField.new("Cxl Rej Response To", "b3.equities.binaryentrypoint.sbe.v8.1.cxlrejresponseto", ftypes.UINT8)
omi_b3_equities_binaryentrypoint_sbe_v8_1.fields.days_to_settlement = ProtoField.new("Days To Settlement", "b3.equities.binaryentrypoint.sbe.v8.1.daystosettlement", ftypes.UINT16)
omi_b3_equities_binaryentrypoint_sbe_v8_1.fields.days_to_settlement_optional = ProtoField.new("Days To Settlement Optional", "b3.equities.binaryentrypoint.sbe.v8.1.daystosettlementoptional", ftypes.UINT16)
omi_b3_equities_binaryentrypoint_sbe_v8_1.fields.desk_id = ProtoField.new("Desk Id", "b3.equities.binaryentrypoint.sbe.v8.1.deskid", ftypes.STRING)
omi_b3_equities_binaryentrypoint_sbe_v8_1.fields.desk_id_data = ProtoField.new("Desk Id Data", "b3.equities.binaryentrypoint.sbe.v8.1.deskiddata", ftypes.STRING)
omi_b3_equities_binaryentrypoint_sbe_v8_1.fields.desk_id_length = ProtoField.new("Desk Id Length", "b3.equities.binaryentrypoint.sbe.v8.1.deskidlength", ftypes.UINT8)
omi_b3_equities_binaryentrypoint_sbe_v8_1.fields.document = ProtoField.new("Document", "b3.equities.binaryentrypoint.sbe.v8.1.document", ftypes.UINT32)
omi_b3_equities_binaryentrypoint_sbe_v8_1.fields.encoding_type = ProtoField.new("Encoding Type", "b3.equities.binaryentrypoint.sbe.v8.1.encodingtype", ftypes.UINT16)
omi_b3_equities_binaryentrypoint_sbe_v8_1.fields.entering_firm = ProtoField.new("Entering Firm", "b3.equities.binaryentrypoint.sbe.v8.1.enteringfirm", ftypes.UINT32)
omi_b3_equities_binaryentrypoint_sbe_v8_1.fields.entering_firm_optional = ProtoField.new("Entering Firm Optional", "b3.equities.binaryentrypoint.sbe.v8.1.enteringfirmoptional", ftypes.UINT32)
omi_b3_equities_binaryentrypoint_sbe_v8_1.fields.entering_trader = ProtoField.new("Entering Trader", "b3.equities.binaryentrypoint.sbe.v8.1.enteringtrader", ftypes.STRING)
omi_b3_equities_binaryentrypoint_sbe_v8_1.fields.establishment_reject_code = ProtoField.new("Establishment Reject Code", "b3.equities.binaryentrypoint.sbe.v8.1.establishmentrejectcode", ftypes.UINT8)
omi_b3_equities_binaryentrypoint_sbe_v8_1.fields.exec_id = ProtoField.new("Exec Id", "b3.equities.binaryentrypoint.sbe.v8.1.execid", ftypes.UINT64)
omi_b3_equities_binaryentrypoint_sbe_v8_1.fields.exec_ref_id = ProtoField.new("Exec Ref Id", "b3.equities.binaryentrypoint.sbe.v8.1.execrefid", ftypes.UINT64)
omi_b3_equities_binaryentrypoint_sbe_v8_1.fields.exec_restatement_reason = ProtoField.new("Exec Restatement Reason", "b3.equities.binaryentrypoint.sbe.v8.1.execrestatementreason", ftypes.UINT8)
omi_b3_equities_binaryentrypoint_sbe_v8_1.fields.exec_type = ProtoField.new("Exec Type", "b3.equities.binaryentrypoint.sbe.v8.1.exectype", ftypes.STRING)
omi_b3_equities_binaryentrypoint_sbe_v8_1.fields.execute_underlying_trade = ProtoField.new("Execute Underlying Trade", "b3.equities.binaryentrypoint.sbe.v8.1.executeunderlyingtrade", ftypes.STRING)
omi_b3_equities_binaryentrypoint_sbe_v8_1.fields.executing_trader = ProtoField.new("Executing Trader", "b3.equities.binaryentrypoint.sbe.v8.1.executingtrader", ftypes.STRING)
omi_b3_equities_binaryentrypoint_sbe_v8_1.fields.executing_trader_optional = ProtoField.new("Executing Trader Optional", "b3.equities.binaryentrypoint.sbe.v8.1.executingtraderoptional", ftypes.STRING)
omi_b3_equities_binaryentrypoint_sbe_v8_1.fields.expire_date = ProtoField.new("Expire Date", "b3.equities.binaryentrypoint.sbe.v8.1.expiredate", ftypes.UINT16)
omi_b3_equities_binaryentrypoint_sbe_v8_1.fields.fixed_rate_percentage_8 = ProtoField.new("Fixed Rate Percentage 8", "b3.equities.binaryentrypoint.sbe.v8.1.fixedratepercentage8", ftypes.DOUBLE)
omi_b3_equities_binaryentrypoint_sbe_v8_1.fields.fixed_rate_percentage_8_optional = ProtoField.new("Fixed Rate Percentage 8 Optional", "b3.equities.binaryentrypoint.sbe.v8.1.fixedratepercentage8optional", ftypes.DOUBLE)
omi_b3_equities_binaryentrypoint_sbe_v8_1.fields.from_seq_no = ProtoField.new("From Seq No", "b3.equities.binaryentrypoint.sbe.v8.1.fromseqno", ftypes.UINT32)
omi_b3_equities_binaryentrypoint_sbe_v8_1.fields.group_size_encoding = ProtoField.new("Group Size Encoding", "b3.equities.binaryentrypoint.sbe.v8.1.groupsizeencoding", ftypes.STRING)
omi_b3_equities_binaryentrypoint_sbe_v8_1.fields.inbound_business_header = ProtoField.new("Inbound Business Header", "b3.equities.binaryentrypoint.sbe.v8.1.inboundbusinessheader", ftypes.STRING)
omi_b3_equities_binaryentrypoint_sbe_v8_1.fields.individual_alloc_id = ProtoField.new("Individual Alloc Id", "b3.equities.binaryentrypoint.sbe.v8.1.individualallocid", ftypes.UINT64)
omi_b3_equities_binaryentrypoint_sbe_v8_1.fields.investor_id = ProtoField.new("Investor Id", "b3.equities.binaryentrypoint.sbe.v8.1.investorid", ftypes.STRING)
omi_b3_equities_binaryentrypoint_sbe_v8_1.fields.keep_alive_interval = ProtoField.new("Keep Alive Interval", "b3.equities.binaryentrypoint.sbe.v8.1.keepaliveinterval", ftypes.UINT64)
omi_b3_equities_binaryentrypoint_sbe_v8_1.fields.last_incoming_seq_no = ProtoField.new("Last Incoming Seq No", "b3.equities.binaryentrypoint.sbe.v8.1.lastincomingseqno", ftypes.UINT32)
omi_b3_equities_binaryentrypoint_sbe_v8_1.fields.last_incoming_seq_no_optional = ProtoField.new("Last Incoming Seq No Optional", "b3.equities.binaryentrypoint.sbe.v8.1.lastincomingseqnooptional", ftypes.UINT32)
omi_b3_equities_binaryentrypoint_sbe_v8_1.fields.last_px = ProtoField.new("Last Px", "b3.equities.binaryentrypoint.sbe.v8.1.lastpx", ftypes.DOUBLE)
omi_b3_equities_binaryentrypoint_sbe_v8_1.fields.last_qty = ProtoField.new("Last Qty", "b3.equities.binaryentrypoint.sbe.v8.1.lastqty", ftypes.UINT64)
omi_b3_equities_binaryentrypoint_sbe_v8_1.fields.leaves_qty = ProtoField.new("Leaves Qty", "b3.equities.binaryentrypoint.sbe.v8.1.leavesqty", ftypes.UINT64)
omi_b3_equities_binaryentrypoint_sbe_v8_1.fields.leg_ratio_qty = ProtoField.new("Leg Ratio Qty", "b3.equities.binaryentrypoint.sbe.v8.1.legratioqty", ftypes.DOUBLE)
omi_b3_equities_binaryentrypoint_sbe_v8_1.fields.leg_side = ProtoField.new("Leg Side", "b3.equities.binaryentrypoint.sbe.v8.1.legside", ftypes.STRING)
omi_b3_equities_binaryentrypoint_sbe_v8_1.fields.leg_symbol = ProtoField.new("Leg Symbol", "b3.equities.binaryentrypoint.sbe.v8.1.legsymbol", ftypes.STRING)
omi_b3_equities_binaryentrypoint_sbe_v8_1.fields.long_qty = ProtoField.new("Long Qty", "b3.equities.binaryentrypoint.sbe.v8.1.longqty", ftypes.UINT64)
omi_b3_equities_binaryentrypoint_sbe_v8_1.fields.long_qty_optional = ProtoField.new("Long Qty Optional", "b3.equities.binaryentrypoint.sbe.v8.1.longqtyoptional", ftypes.UINT64)
omi_b3_equities_binaryentrypoint_sbe_v8_1.fields.market_segment_id = ProtoField.new("Market Segment Id", "b3.equities.binaryentrypoint.sbe.v8.1.marketsegmentid", ftypes.UINT8)
omi_b3_equities_binaryentrypoint_sbe_v8_1.fields.market_segment_id_optional = ProtoField.new("Market Segment Id Optional", "b3.equities.binaryentrypoint.sbe.v8.1.marketsegmentidoptional", ftypes.UINT8)
omi_b3_equities_binaryentrypoint_sbe_v8_1.fields.market_segment_received_time = ProtoField.new("Market Segment Received Time", "b3.equities.binaryentrypoint.sbe.v8.1.marketsegmentreceivedtime", ftypes.UINT64)
omi_b3_equities_binaryentrypoint_sbe_v8_1.fields.mass_action_reject_reason = ProtoField.new("Mass Action Reject Reason", "b3.equities.binaryentrypoint.sbe.v8.1.massactionrejectreason", ftypes.UINT8)
omi_b3_equities_binaryentrypoint_sbe_v8_1.fields.mass_action_report_id = ProtoField.new("Mass Action Report Id", "b3.equities.binaryentrypoint.sbe.v8.1.massactionreportid", ftypes.UINT64)
omi_b3_equities_binaryentrypoint_sbe_v8_1.fields.mass_action_report_id_optional = ProtoField.new("Mass Action Report Id Optional", "b3.equities.binaryentrypoint.sbe.v8.1.massactionreportidoptional", ftypes.UINT64)
omi_b3_equities_binaryentrypoint_sbe_v8_1.fields.mass_action_response = ProtoField.new("Mass Action Response", "b3.equities.binaryentrypoint.sbe.v8.1.massactionresponse", ftypes.STRING)
omi_b3_equities_binaryentrypoint_sbe_v8_1.fields.mass_action_scope = ProtoField.new("Mass Action Scope", "b3.equities.binaryentrypoint.sbe.v8.1.massactionscope", ftypes.UINT8)
omi_b3_equities_binaryentrypoint_sbe_v8_1.fields.mass_action_type = ProtoField.new("Mass Action Type", "b3.equities.binaryentrypoint.sbe.v8.1.massactiontype", ftypes.UINT8)
omi_b3_equities_binaryentrypoint_sbe_v8_1.fields.mass_cancel_restatement_reason = ProtoField.new("Mass Cancel Restatement Reason", "b3.equities.binaryentrypoint.sbe.v8.1.masscancelrestatementreason", ftypes.UINT8)
omi_b3_equities_binaryentrypoint_sbe_v8_1.fields.max_floor = ProtoField.new("Max Floor", "b3.equities.binaryentrypoint.sbe.v8.1.maxfloor", ftypes.UINT64)
omi_b3_equities_binaryentrypoint_sbe_v8_1.fields.max_sweep_qty = ProtoField.new("Max Sweep Qty", "b3.equities.binaryentrypoint.sbe.v8.1.maxsweepqty", ftypes.UINT64)
omi_b3_equities_binaryentrypoint_sbe_v8_1.fields.memo = ProtoField.new("Memo", "b3.equities.binaryentrypoint.sbe.v8.1.memo", ftypes.STRING)
omi_b3_equities_binaryentrypoint_sbe_v8_1.fields.memo_data = ProtoField.new("Memo Data", "b3.equities.binaryentrypoint.sbe.v8.1.memodata", ftypes.STRING)
omi_b3_equities_binaryentrypoint_sbe_v8_1.fields.memo_length = ProtoField.new("Memo Length", "b3.equities.binaryentrypoint.sbe.v8.1.memolength", ftypes.UINT8)
omi_b3_equities_binaryentrypoint_sbe_v8_1.fields.message_header = ProtoField.new("Message Header", "b3.equities.binaryentrypoint.sbe.v8.1.messageheader", ftypes.STRING)
omi_b3_equities_binaryentrypoint_sbe_v8_1.fields.message_length = ProtoField.new("Message Length", "b3.equities.binaryentrypoint.sbe.v8.1.messagelength", ftypes.UINT16)
omi_b3_equities_binaryentrypoint_sbe_v8_1.fields.min_qty = ProtoField.new("Min Qty", "b3.equities.binaryentrypoint.sbe.v8.1.minqty", ftypes.UINT64)
omi_b3_equities_binaryentrypoint_sbe_v8_1.fields.mm_protection_reset_boolean = ProtoField.new("Mm Protection Reset Boolean", "b3.equities.binaryentrypoint.sbe.v8.1.mmprotectionresetboolean", ftypes.UINT8)
omi_b3_equities_binaryentrypoint_sbe_v8_1.fields.mm_protection_reset_boolean_optional = ProtoField.new("Mm Protection Reset Boolean optional", "b3.equities.binaryentrypoint.sbe.v8.1.mmprotectionresetbooleanoptional", ftypes.UINT8)
omi_b3_equities_binaryentrypoint_sbe_v8_1.fields.msg_seq_num = ProtoField.new("Msg Seq Num", "b3.equities.binaryentrypoint.sbe.v8.1.msgseqnum", ftypes.UINT32)
omi_b3_equities_binaryentrypoint_sbe_v8_1.fields.multi_leg_reporting_type = ProtoField.new("Multi Leg Reporting Type", "b3.equities.binaryentrypoint.sbe.v8.1.multilegreportingtype", ftypes.STRING)
omi_b3_equities_binaryentrypoint_sbe_v8_1.fields.negotiation_reject_code = ProtoField.new("Negotiation Reject Code", "b3.equities.binaryentrypoint.sbe.v8.1.negotiationrejectcode", ftypes.UINT8)
omi_b3_equities_binaryentrypoint_sbe_v8_1.fields.next_seq_no = ProtoField.new("Next Seq No", "b3.equities.binaryentrypoint.sbe.v8.1.nextseqno", ftypes.UINT32)
omi_b3_equities_binaryentrypoint_sbe_v8_1.fields.no_legs_group = ProtoField.new("No Legs Group", "b3.equities.binaryentrypoint.sbe.v8.1.nolegsgroup", ftypes.STRING)
omi_b3_equities_binaryentrypoint_sbe_v8_1.fields.no_legs_groups = ProtoField.new("No Legs Groups", "b3.equities.binaryentrypoint.sbe.v8.1.nolegsgroups", ftypes.STRING)
omi_b3_equities_binaryentrypoint_sbe_v8_1.fields.no_positions_group = ProtoField.new("No Positions Group", "b3.equities.binaryentrypoint.sbe.v8.1.nopositionsgroup", ftypes.STRING)
omi_b3_equities_binaryentrypoint_sbe_v8_1.fields.no_positions_groups = ProtoField.new("No Positions Groups", "b3.equities.binaryentrypoint.sbe.v8.1.nopositionsgroups", ftypes.STRING)
omi_b3_equities_binaryentrypoint_sbe_v8_1.fields.no_sides_group = ProtoField.new("No Sides Group", "b3.equities.binaryentrypoint.sbe.v8.1.nosidesgroup", ftypes.STRING)
omi_b3_equities_binaryentrypoint_sbe_v8_1.fields.no_sides_groups = ProtoField.new("No Sides Groups", "b3.equities.binaryentrypoint.sbe.v8.1.nosidesgroups", ftypes.STRING)
omi_b3_equities_binaryentrypoint_sbe_v8_1.fields.num_in_group = ProtoField.new("Num In Group", "b3.equities.binaryentrypoint.sbe.v8.1.numingroup", ftypes.UINT8)
omi_b3_equities_binaryentrypoint_sbe_v8_1.fields.offset_1_padding_1 = ProtoField.new("Offset 1 Padding 1", "b3.equities.binaryentrypoint.sbe.v8.1.offset1padding1", ftypes.BYTES)
omi_b3_equities_binaryentrypoint_sbe_v8_1.fields.offset_100_padding_4 = ProtoField.new("Offset 100 Padding 4", "b3.equities.binaryentrypoint.sbe.v8.1.offset100padding4", ftypes.BYTES)
omi_b3_equities_binaryentrypoint_sbe_v8_1.fields.offset_118_padding_2 = ProtoField.new("Offset 118 Padding 2", "b3.equities.binaryentrypoint.sbe.v8.1.offset118padding2", ftypes.BYTES)
omi_b3_equities_binaryentrypoint_sbe_v8_1.fields.offset_119_padding_1 = ProtoField.new("Offset 119 Padding 1", "b3.equities.binaryentrypoint.sbe.v8.1.offset119padding1", ftypes.BYTES)
omi_b3_equities_binaryentrypoint_sbe_v8_1.fields.offset_146_padding_3 = ProtoField.new("Offset 146 Padding 3", "b3.equities.binaryentrypoint.sbe.v8.1.offset146padding3", ftypes.BYTES)
omi_b3_equities_binaryentrypoint_sbe_v8_1.fields.offset_152_padding_3 = ProtoField.new("Offset 152 Padding 3", "b3.equities.binaryentrypoint.sbe.v8.1.offset152padding3", ftypes.BYTES)
omi_b3_equities_binaryentrypoint_sbe_v8_1.fields.offset_159_padding_1 = ProtoField.new("Offset 159 Padding 1", "b3.equities.binaryentrypoint.sbe.v8.1.offset159padding1", ftypes.BYTES)
omi_b3_equities_binaryentrypoint_sbe_v8_1.fields.offset_164_padding_3 = ProtoField.new("Offset 164 Padding 3", "b3.equities.binaryentrypoint.sbe.v8.1.offset164padding3", ftypes.BYTES)
omi_b3_equities_binaryentrypoint_sbe_v8_1.fields.offset_165_padding_3 = ProtoField.new("Offset 165 Padding 3", "b3.equities.binaryentrypoint.sbe.v8.1.offset165padding3", ftypes.BYTES)
omi_b3_equities_binaryentrypoint_sbe_v8_1.fields.offset_168_padding_3 = ProtoField.new("Offset 168 Padding 3", "b3.equities.binaryentrypoint.sbe.v8.1.offset168padding3", ftypes.BYTES)
omi_b3_equities_binaryentrypoint_sbe_v8_1.fields.offset_179_padding_3 = ProtoField.new("Offset 179 Padding 3", "b3.equities.binaryentrypoint.sbe.v8.1.offset179padding3", ftypes.BYTES)
omi_b3_equities_binaryentrypoint_sbe_v8_1.fields.offset_18_padding_2 = ProtoField.new("Offset 18 Padding 2", "b3.equities.binaryentrypoint.sbe.v8.1.offset18padding2", ftypes.BYTES)
omi_b3_equities_binaryentrypoint_sbe_v8_1.fields.offset_19_padding_1 = ProtoField.new("Offset 19 Padding 1", "b3.equities.binaryentrypoint.sbe.v8.1.offset19padding1", ftypes.BYTES)
omi_b3_equities_binaryentrypoint_sbe_v8_1.fields.offset_21_padding_1 = ProtoField.new("Offset 21 Padding 1", "b3.equities.binaryentrypoint.sbe.v8.1.offset21padding1", ftypes.BYTES)
omi_b3_equities_binaryentrypoint_sbe_v8_1.fields.offset_25_padding_3 = ProtoField.new("Offset 25 Padding 3", "b3.equities.binaryentrypoint.sbe.v8.1.offset25padding3", ftypes.BYTES)
omi_b3_equities_binaryentrypoint_sbe_v8_1.fields.offset_31_padding_1 = ProtoField.new("Offset 31 Padding 1", "b3.equities.binaryentrypoint.sbe.v8.1.offset31padding1", ftypes.BYTES)
omi_b3_equities_binaryentrypoint_sbe_v8_1.fields.offset_33_padding_1 = ProtoField.new("Offset 33 Padding 1", "b3.equities.binaryentrypoint.sbe.v8.1.offset33padding1", ftypes.BYTES)
omi_b3_equities_binaryentrypoint_sbe_v8_1.fields.offset_49_padding_1 = ProtoField.new("Offset 49 Padding 1", "b3.equities.binaryentrypoint.sbe.v8.1.offset49padding1", ftypes.BYTES)
omi_b3_equities_binaryentrypoint_sbe_v8_1.fields.offset_54_padding_2 = ProtoField.new("Offset 54 Padding 2", "b3.equities.binaryentrypoint.sbe.v8.1.offset54padding2", ftypes.BYTES)
omi_b3_equities_binaryentrypoint_sbe_v8_1.fields.onbehalf_firm = ProtoField.new("Onbehalf Firm", "b3.equities.binaryentrypoint.sbe.v8.1.onbehalffirm", ftypes.UINT32)
omi_b3_equities_binaryentrypoint_sbe_v8_1.fields.ord_rej_reason = ProtoField.new("Ord Rej Reason", "b3.equities.binaryentrypoint.sbe.v8.1.ordrejreason", ftypes.UINT32)
omi_b3_equities_binaryentrypoint_sbe_v8_1.fields.ord_status = ProtoField.new("Ord Status", "b3.equities.binaryentrypoint.sbe.v8.1.ordstatus", ftypes.STRING)
omi_b3_equities_binaryentrypoint_sbe_v8_1.fields.order_category = ProtoField.new("Order Category", "b3.equities.binaryentrypoint.sbe.v8.1.ordercategory", ftypes.STRING)
omi_b3_equities_binaryentrypoint_sbe_v8_1.fields.order_id = ProtoField.new("Order Id", "b3.equities.binaryentrypoint.sbe.v8.1.orderid", ftypes.UINT64)
omi_b3_equities_binaryentrypoint_sbe_v8_1.fields.order_id_optional = ProtoField.new("Order Id Optional", "b3.equities.binaryentrypoint.sbe.v8.1.orderidoptional", ftypes.UINT64)
omi_b3_equities_binaryentrypoint_sbe_v8_1.fields.order_qty = ProtoField.new("Order Qty", "b3.equities.binaryentrypoint.sbe.v8.1.orderqty", ftypes.UINT64)
omi_b3_equities_binaryentrypoint_sbe_v8_1.fields.order_qty_optional = ProtoField.new("Order Qty Optional", "b3.equities.binaryentrypoint.sbe.v8.1.orderqtyoptional", ftypes.UINT64)
omi_b3_equities_binaryentrypoint_sbe_v8_1.fields.ordtagid = ProtoField.new("OrdTagId", "b3.equities.binaryentrypoint.sbe.v8.1.ordtagid", ftypes.UINT8)
omi_b3_equities_binaryentrypoint_sbe_v8_1.fields.ordtagid_optional = ProtoField.new("OrdTagId Optional", "b3.equities.binaryentrypoint.sbe.v8.1.ordtagidoptional", ftypes.UINT8)
omi_b3_equities_binaryentrypoint_sbe_v8_1.fields.ordtype = ProtoField.new("OrdType", "b3.equities.binaryentrypoint.sbe.v8.1.ordtype", ftypes.STRING)
omi_b3_equities_binaryentrypoint_sbe_v8_1.fields.orig_pos_req_ref_id = ProtoField.new("Orig Pos Req Ref Id", "b3.equities.binaryentrypoint.sbe.v8.1.origposreqrefid", ftypes.UINT64)
omi_b3_equities_binaryentrypoint_sbe_v8_1.fields.origclordid = ProtoField.new("OrigClOrdId", "b3.equities.binaryentrypoint.sbe.v8.1.origclordid", ftypes.UINT64)
omi_b3_equities_binaryentrypoint_sbe_v8_1.fields.outbound_business_header = ProtoField.new("Outbound Business Header", "b3.equities.binaryentrypoint.sbe.v8.1.outboundbusinessheader", ftypes.STRING)
omi_b3_equities_binaryentrypoint_sbe_v8_1.fields.packet = ProtoField.new("Packet", "b3.equities.binaryentrypoint.sbe.v8.1.packet", ftypes.STRING)
omi_b3_equities_binaryentrypoint_sbe_v8_1.fields.padding = ProtoField.new("Padding", "b3.equities.binaryentrypoint.sbe.v8.1.padding", ftypes.STRING)
omi_b3_equities_binaryentrypoint_sbe_v8_1.fields.padding_1 = ProtoField.new("Padding 1", "b3.equities.binaryentrypoint.sbe.v8.1.padding1", ftypes.BYTES)
omi_b3_equities_binaryentrypoint_sbe_v8_1.fields.payload = ProtoField.new("Payload", "b3.equities.binaryentrypoint.sbe.v8.1.payload", ftypes.STRING)
omi_b3_equities_binaryentrypoint_sbe_v8_1.fields.pos_maint_action = ProtoField.new("Pos Maint Action", "b3.equities.binaryentrypoint.sbe.v8.1.posmaintaction", ftypes.STRING)
omi_b3_equities_binaryentrypoint_sbe_v8_1.fields.pos_maint_result = ProtoField.new("Pos Maint Result", "b3.equities.binaryentrypoint.sbe.v8.1.posmaintresult", ftypes.UINT32)
omi_b3_equities_binaryentrypoint_sbe_v8_1.fields.pos_maint_rpt_id = ProtoField.new("Pos Maint Rpt Id", "b3.equities.binaryentrypoint.sbe.v8.1.posmaintrptid", ftypes.UINT64)
omi_b3_equities_binaryentrypoint_sbe_v8_1.fields.pos_maint_rpt_ref_id = ProtoField.new("Pos Maint Rpt Ref Id", "b3.equities.binaryentrypoint.sbe.v8.1.posmaintrptrefid", ftypes.UINT64)
omi_b3_equities_binaryentrypoint_sbe_v8_1.fields.pos_maint_status = ProtoField.new("Pos Maint Status", "b3.equities.binaryentrypoint.sbe.v8.1.posmaintstatus", ftypes.STRING)
omi_b3_equities_binaryentrypoint_sbe_v8_1.fields.pos_req_id = ProtoField.new("Pos Req Id", "b3.equities.binaryentrypoint.sbe.v8.1.posreqid", ftypes.UINT64)
omi_b3_equities_binaryentrypoint_sbe_v8_1.fields.pos_req_id_optional = ProtoField.new("Pos Req Id Optional", "b3.equities.binaryentrypoint.sbe.v8.1.posreqidoptional", ftypes.UINT64)
omi_b3_equities_binaryentrypoint_sbe_v8_1.fields.pos_trans_type = ProtoField.new("Pos Trans Type", "b3.equities.binaryentrypoint.sbe.v8.1.postranstype", ftypes.UINT8)
omi_b3_equities_binaryentrypoint_sbe_v8_1.fields.pos_type = ProtoField.new("Pos Type", "b3.equities.binaryentrypoint.sbe.v8.1.postype", ftypes.STRING)
omi_b3_equities_binaryentrypoint_sbe_v8_1.fields.poss_resend = ProtoField.new("Poss Resend", "b3.equities.binaryentrypoint.sbe.v8.1.possresend", ftypes.UINT8)
omi_b3_equities_binaryentrypoint_sbe_v8_1.fields.prefix = ProtoField.new("Prefix", "b3.equities.binaryentrypoint.sbe.v8.1.prefix", ftypes.UINT16)
omi_b3_equities_binaryentrypoint_sbe_v8_1.fields.price = ProtoField.new("Price", "b3.equities.binaryentrypoint.sbe.v8.1.price", ftypes.DOUBLE)
omi_b3_equities_binaryentrypoint_sbe_v8_1.fields.price_8 = ProtoField.new("Price 8", "b3.equities.binaryentrypoint.sbe.v8.1.price8", ftypes.DOUBLE)
omi_b3_equities_binaryentrypoint_sbe_v8_1.fields.price_8_optional = ProtoField.new("Price 8 Optional", "b3.equities.binaryentrypoint.sbe.v8.1.price8optional", ftypes.DOUBLE)
omi_b3_equities_binaryentrypoint_sbe_v8_1.fields.price_optional = ProtoField.new("Price Optional", "b3.equities.binaryentrypoint.sbe.v8.1.priceoptional", ftypes.DOUBLE)
omi_b3_equities_binaryentrypoint_sbe_v8_1.fields.protection_price = ProtoField.new("Protection Price", "b3.equities.binaryentrypoint.sbe.v8.1.protectionprice", ftypes.DOUBLE)
omi_b3_equities_binaryentrypoint_sbe_v8_1.fields.quantity = ProtoField.new("Quantity", "b3.equities.binaryentrypoint.sbe.v8.1.quantity", ftypes.UINT64)
omi_b3_equities_binaryentrypoint_sbe_v8_1.fields.quote_id = ProtoField.new("Quote Id", "b3.equities.binaryentrypoint.sbe.v8.1.quoteid", ftypes.UINT64)
omi_b3_equities_binaryentrypoint_sbe_v8_1.fields.quote_id_optional = ProtoField.new("Quote Id Optional", "b3.equities.binaryentrypoint.sbe.v8.1.quoteidoptional", ftypes.UINT64)
omi_b3_equities_binaryentrypoint_sbe_v8_1.fields.quote_reject_reason = ProtoField.new("Quote Reject Reason", "b3.equities.binaryentrypoint.sbe.v8.1.quoterejectreason", ftypes.UINT32)
omi_b3_equities_binaryentrypoint_sbe_v8_1.fields.quote_req_id = ProtoField.new("Quote Req Id", "b3.equities.binaryentrypoint.sbe.v8.1.quotereqid", ftypes.UINT64)
omi_b3_equities_binaryentrypoint_sbe_v8_1.fields.quote_req_id_optional = ProtoField.new("Quote Req Id Optional", "b3.equities.binaryentrypoint.sbe.v8.1.quotereqidoptional", ftypes.UINT64)
omi_b3_equities_binaryentrypoint_sbe_v8_1.fields.quote_request_reject_reason = ProtoField.new("Quote Request Reject Reason", "b3.equities.binaryentrypoint.sbe.v8.1.quoterequestrejectreason", ftypes.UINT32)
omi_b3_equities_binaryentrypoint_sbe_v8_1.fields.quote_status = ProtoField.new("Quote Status", "b3.equities.binaryentrypoint.sbe.v8.1.quotestatus", ftypes.UINT8)
omi_b3_equities_binaryentrypoint_sbe_v8_1.fields.quote_status_response_to = ProtoField.new("Quote Status Response To", "b3.equities.binaryentrypoint.sbe.v8.1.quotestatusresponseto", ftypes.STRING)
omi_b3_equities_binaryentrypoint_sbe_v8_1.fields.received_time = ProtoField.new("Received Time", "b3.equities.binaryentrypoint.sbe.v8.1.receivedtime", ftypes.UINT64)
omi_b3_equities_binaryentrypoint_sbe_v8_1.fields.ref_msg_type = ProtoField.new("Ref Msg Type", "b3.equities.binaryentrypoint.sbe.v8.1.refmsgtype", ftypes.UINT8)
omi_b3_equities_binaryentrypoint_sbe_v8_1.fields.ref_seq_num = ProtoField.new("Ref Seq Num", "b3.equities.binaryentrypoint.sbe.v8.1.refseqnum", ftypes.UINT32)
omi_b3_equities_binaryentrypoint_sbe_v8_1.fields.request_timestamp = ProtoField.new("Request Timestamp", "b3.equities.binaryentrypoint.sbe.v8.1.requesttimestamp", ftypes.UINT64)
omi_b3_equities_binaryentrypoint_sbe_v8_1.fields.retransmit_reject_code = ProtoField.new("Retransmit Reject Code", "b3.equities.binaryentrypoint.sbe.v8.1.retransmitrejectcode", ftypes.UINT8)
omi_b3_equities_binaryentrypoint_sbe_v8_1.fields.routing_instruction = ProtoField.new("Routing Instruction", "b3.equities.binaryentrypoint.sbe.v8.1.routinginstruction", ftypes.UINT8)
omi_b3_equities_binaryentrypoint_sbe_v8_1.fields.schema_id = ProtoField.new("Schema Id", "b3.equities.binaryentrypoint.sbe.v8.1.schemaid", ftypes.UINT16)
omi_b3_equities_binaryentrypoint_sbe_v8_1.fields.secondary_exec_id = ProtoField.new("Secondary Exec Id", "b3.equities.binaryentrypoint.sbe.v8.1.secondaryexecid", ftypes.UINT64)
omi_b3_equities_binaryentrypoint_sbe_v8_1.fields.secondary_order_id = ProtoField.new("Secondary Order Id", "b3.equities.binaryentrypoint.sbe.v8.1.secondaryorderid", ftypes.UINT64)
omi_b3_equities_binaryentrypoint_sbe_v8_1.fields.secondary_order_id_optional = ProtoField.new("Secondary Order Id Optional", "b3.equities.binaryentrypoint.sbe.v8.1.secondaryorderidoptional", ftypes.UINT64)
omi_b3_equities_binaryentrypoint_sbe_v8_1.fields.security_id = ProtoField.new("Security Id", "b3.equities.binaryentrypoint.sbe.v8.1.securityid", ftypes.UINT64)
omi_b3_equities_binaryentrypoint_sbe_v8_1.fields.security_id_optional = ProtoField.new("Security Id Optional", "b3.equities.binaryentrypoint.sbe.v8.1.securityidoptional", ftypes.UINT64)
omi_b3_equities_binaryentrypoint_sbe_v8_1.fields.security_req_id = ProtoField.new("Security Req Id", "b3.equities.binaryentrypoint.sbe.v8.1.securityreqid", ftypes.UINT64)
omi_b3_equities_binaryentrypoint_sbe_v8_1.fields.security_response_id = ProtoField.new("Security Response Id", "b3.equities.binaryentrypoint.sbe.v8.1.securityresponseid", ftypes.UINT64)
omi_b3_equities_binaryentrypoint_sbe_v8_1.fields.security_response_type = ProtoField.new("Security Response Type", "b3.equities.binaryentrypoint.sbe.v8.1.securityresponsetype", ftypes.UINT8)
omi_b3_equities_binaryentrypoint_sbe_v8_1.fields.security_strategy_type = ProtoField.new("Security Strategy Type", "b3.equities.binaryentrypoint.sbe.v8.1.securitystrategytype", ftypes.STRING)
omi_b3_equities_binaryentrypoint_sbe_v8_1.fields.security_trading_status = ProtoField.new("Security Trading Status", "b3.equities.binaryentrypoint.sbe.v8.1.securitytradingstatus", ftypes.UINT8)
omi_b3_equities_binaryentrypoint_sbe_v8_1.fields.self_trade_prevention_instruction = ProtoField.new("Self Trade Prevention Instruction", "b3.equities.binaryentrypoint.sbe.v8.1.selftradepreventioninstruction", ftypes.UINT8)
omi_b3_equities_binaryentrypoint_sbe_v8_1.fields.sender_location = ProtoField.new("Sender Location", "b3.equities.binaryentrypoint.sbe.v8.1.senderlocation", ftypes.STRING)
omi_b3_equities_binaryentrypoint_sbe_v8_1.fields.sending_time = ProtoField.new("Sending Time", "b3.equities.binaryentrypoint.sbe.v8.1.sendingtime", ftypes.UINT64)
omi_b3_equities_binaryentrypoint_sbe_v8_1.fields.session_id = ProtoField.new("Session Id", "b3.equities.binaryentrypoint.sbe.v8.1.sessionid", ftypes.UINT32)
omi_b3_equities_binaryentrypoint_sbe_v8_1.fields.session_ver_id = ProtoField.new("Session Ver Id", "b3.equities.binaryentrypoint.sbe.v8.1.sessionverid", ftypes.UINT64)
omi_b3_equities_binaryentrypoint_sbe_v8_1.fields.settltype = ProtoField.new("SettlType", "b3.equities.binaryentrypoint.sbe.v8.1.settltype", ftypes.STRING)
omi_b3_equities_binaryentrypoint_sbe_v8_1.fields.settltype_optional = ProtoField.new("SettlType Optional", "b3.equities.binaryentrypoint.sbe.v8.1.settltypeoptional", ftypes.STRING)
omi_b3_equities_binaryentrypoint_sbe_v8_1.fields.short_qty = ProtoField.new("Short Qty", "b3.equities.binaryentrypoint.sbe.v8.1.shortqty", ftypes.UINT64)
omi_b3_equities_binaryentrypoint_sbe_v8_1.fields.side = ProtoField.new("Side", "b3.equities.binaryentrypoint.sbe.v8.1.side", ftypes.STRING)
omi_b3_equities_binaryentrypoint_sbe_v8_1.fields.side_optional = ProtoField.new("Side Optional", "b3.equities.binaryentrypoint.sbe.v8.1.sideoptional", ftypes.STRING)
omi_b3_equities_binaryentrypoint_sbe_v8_1.fields.simple_open_frame = ProtoField.new("Simple Open Frame", "b3.equities.binaryentrypoint.sbe.v8.1.simpleopenframe", ftypes.STRING)
omi_b3_equities_binaryentrypoint_sbe_v8_1.fields.simple_open_framing_header = ProtoField.new("Simple Open Framing Header", "b3.equities.binaryentrypoint.sbe.v8.1.simpleopenframingheader", ftypes.STRING)
omi_b3_equities_binaryentrypoint_sbe_v8_1.fields.simple_ordtype = ProtoField.new("Simple OrdType", "b3.equities.binaryentrypoint.sbe.v8.1.simpleordtype", ftypes.STRING)
omi_b3_equities_binaryentrypoint_sbe_v8_1.fields.single_cancel_restatement_reason = ProtoField.new("Single Cancel Restatement Reason", "b3.equities.binaryentrypoint.sbe.v8.1.singlecancelrestatementreason", ftypes.UINT8)
omi_b3_equities_binaryentrypoint_sbe_v8_1.fields.stop_px = ProtoField.new("Stop Px", "b3.equities.binaryentrypoint.sbe.v8.1.stoppx", ftypes.DOUBLE)
omi_b3_equities_binaryentrypoint_sbe_v8_1.fields.strategy_id = ProtoField.new("Strategy Id", "b3.equities.binaryentrypoint.sbe.v8.1.strategyid", ftypes.INT32)
omi_b3_equities_binaryentrypoint_sbe_v8_1.fields.symbol = ProtoField.new("Symbol", "b3.equities.binaryentrypoint.sbe.v8.1.symbol", ftypes.STRING)
omi_b3_equities_binaryentrypoint_sbe_v8_1.fields.template_id = ProtoField.new("Template Id", "b3.equities.binaryentrypoint.sbe.v8.1.templateid", ftypes.UINT16)
omi_b3_equities_binaryentrypoint_sbe_v8_1.fields.termination_code = ProtoField.new("Termination Code", "b3.equities.binaryentrypoint.sbe.v8.1.terminationcode", ftypes.UINT8)
omi_b3_equities_binaryentrypoint_sbe_v8_1.fields.text = ProtoField.new("Text", "b3.equities.binaryentrypoint.sbe.v8.1.text", ftypes.STRING)
omi_b3_equities_binaryentrypoint_sbe_v8_1.fields.text_data = ProtoField.new("Text Data", "b3.equities.binaryentrypoint.sbe.v8.1.textdata", ftypes.STRING)
omi_b3_equities_binaryentrypoint_sbe_v8_1.fields.text_length = ProtoField.new("Text Length", "b3.equities.binaryentrypoint.sbe.v8.1.textlength", ftypes.UINT8)
omi_b3_equities_binaryentrypoint_sbe_v8_1.fields.threshold_amount = ProtoField.new("Threshold Amount", "b3.equities.binaryentrypoint.sbe.v8.1.thresholdamount", ftypes.DOUBLE)
omi_b3_equities_binaryentrypoint_sbe_v8_1.fields.time_in_force = ProtoField.new("Time In Force", "b3.equities.binaryentrypoint.sbe.v8.1.timeinforce", ftypes.STRING)
omi_b3_equities_binaryentrypoint_sbe_v8_1.fields.time_in_force_optional = ProtoField.new("Time In Force Optional", "b3.equities.binaryentrypoint.sbe.v8.1.timeinforceoptional", ftypes.STRING)
omi_b3_equities_binaryentrypoint_sbe_v8_1.fields.time_in_force_simple = ProtoField.new("Time In Force Simple", "b3.equities.binaryentrypoint.sbe.v8.1.timeinforcesimple", ftypes.STRING)
omi_b3_equities_binaryentrypoint_sbe_v8_1.fields.timestamp = ProtoField.new("Timestamp", "b3.equities.binaryentrypoint.sbe.v8.1.timestamp", ftypes.UINT64)
omi_b3_equities_binaryentrypoint_sbe_v8_1.fields.tot_no_related_sym = ProtoField.new("Tot No Related Sym", "b3.equities.binaryentrypoint.sbe.v8.1.totnorelatedsym", ftypes.UINT8)
omi_b3_equities_binaryentrypoint_sbe_v8_1.fields.trade_date = ProtoField.new("Trade Date", "b3.equities.binaryentrypoint.sbe.v8.1.tradedate", ftypes.UINT16)
omi_b3_equities_binaryentrypoint_sbe_v8_1.fields.trade_date_optional = ProtoField.new("Trade Date Optional", "b3.equities.binaryentrypoint.sbe.v8.1.tradedateoptional", ftypes.UINT16)
omi_b3_equities_binaryentrypoint_sbe_v8_1.fields.trade_id = ProtoField.new("Trade Id", "b3.equities.binaryentrypoint.sbe.v8.1.tradeid", ftypes.UINT32)
omi_b3_equities_binaryentrypoint_sbe_v8_1.fields.trade_id_optional = ProtoField.new("Trade Id Optional", "b3.equities.binaryentrypoint.sbe.v8.1.tradeidoptional", ftypes.UINT32)
omi_b3_equities_binaryentrypoint_sbe_v8_1.fields.trading_session_id = ProtoField.new("Trading Session Id", "b3.equities.binaryentrypoint.sbe.v8.1.tradingsessionid", ftypes.UINT8)
omi_b3_equities_binaryentrypoint_sbe_v8_1.fields.trading_session_sub_id = ProtoField.new("Trading Session Sub Id", "b3.equities.binaryentrypoint.sbe.v8.1.tradingsessionsubid", ftypes.UINT8)
omi_b3_equities_binaryentrypoint_sbe_v8_1.fields.transact_time = ProtoField.new("Transact Time", "b3.equities.binaryentrypoint.sbe.v8.1.transacttime", ftypes.UINT64)
omi_b3_equities_binaryentrypoint_sbe_v8_1.fields.version = ProtoField.new("Version", "b3.equities.binaryentrypoint.sbe.v8.1.version", ftypes.UINT16)
omi_b3_equities_binaryentrypoint_sbe_v8_1.fields.working_indicator = ProtoField.new("Working Indicator", "b3.equities.binaryentrypoint.sbe.v8.1.workingindicator", ftypes.UINT8)

-- B3 Equities BinaryEntryPoint Sbe 8.1 messages
omi_b3_equities_binaryentrypoint_sbe_v8_1.fields.allocation_instruction_message = ProtoField.new("Allocation Instruction Message", "b3.equities.binaryentrypoint.sbe.v8.1.allocationinstructionmessage", ftypes.STRING)
omi_b3_equities_binaryentrypoint_sbe_v8_1.fields.allocation_report_message = ProtoField.new("Allocation Report Message", "b3.equities.binaryentrypoint.sbe.v8.1.allocationreportmessage", ftypes.STRING)
omi_b3_equities_binaryentrypoint_sbe_v8_1.fields.business_message_reject_message = ProtoField.new("Business Message Reject Message", "b3.equities.binaryentrypoint.sbe.v8.1.businessmessagerejectmessage", ftypes.STRING)
omi_b3_equities_binaryentrypoint_sbe_v8_1.fields.establish_ack_message = ProtoField.new("Establish Ack Message", "b3.equities.binaryentrypoint.sbe.v8.1.establishackmessage", ftypes.STRING)
omi_b3_equities_binaryentrypoint_sbe_v8_1.fields.establish_message = ProtoField.new("Establish Message", "b3.equities.binaryentrypoint.sbe.v8.1.establishmessage", ftypes.STRING)
omi_b3_equities_binaryentrypoint_sbe_v8_1.fields.establish_reject_message = ProtoField.new("Establish Reject Message", "b3.equities.binaryentrypoint.sbe.v8.1.establishrejectmessage", ftypes.STRING)
omi_b3_equities_binaryentrypoint_sbe_v8_1.fields.execution_report_cancel_message = ProtoField.new("Execution Report Cancel Message", "b3.equities.binaryentrypoint.sbe.v8.1.executionreportcancelmessage", ftypes.STRING)
omi_b3_equities_binaryentrypoint_sbe_v8_1.fields.execution_report_forward_message = ProtoField.new("Execution Report Forward Message", "b3.equities.binaryentrypoint.sbe.v8.1.executionreportforwardmessage", ftypes.STRING)
omi_b3_equities_binaryentrypoint_sbe_v8_1.fields.execution_report_modify_message = ProtoField.new("Execution Report Modify Message", "b3.equities.binaryentrypoint.sbe.v8.1.executionreportmodifymessage", ftypes.STRING)
omi_b3_equities_binaryentrypoint_sbe_v8_1.fields.execution_report_new_message = ProtoField.new("Execution Report New Message", "b3.equities.binaryentrypoint.sbe.v8.1.executionreportnewmessage", ftypes.STRING)
omi_b3_equities_binaryentrypoint_sbe_v8_1.fields.execution_report_reject_message = ProtoField.new("Execution Report Reject Message", "b3.equities.binaryentrypoint.sbe.v8.1.executionreportrejectmessage", ftypes.STRING)
omi_b3_equities_binaryentrypoint_sbe_v8_1.fields.execution_report_trade_message = ProtoField.new("Execution Report Trade Message", "b3.equities.binaryentrypoint.sbe.v8.1.executionreporttrademessage", ftypes.STRING)
omi_b3_equities_binaryentrypoint_sbe_v8_1.fields.negotiate_message = ProtoField.new("Negotiate Message", "b3.equities.binaryentrypoint.sbe.v8.1.negotiatemessage", ftypes.STRING)
omi_b3_equities_binaryentrypoint_sbe_v8_1.fields.negotiate_reject_message = ProtoField.new("Negotiate Reject Message", "b3.equities.binaryentrypoint.sbe.v8.1.negotiaterejectmessage", ftypes.STRING)
omi_b3_equities_binaryentrypoint_sbe_v8_1.fields.negotiate_response_message = ProtoField.new("Negotiate Response Message", "b3.equities.binaryentrypoint.sbe.v8.1.negotiateresponsemessage", ftypes.STRING)
omi_b3_equities_binaryentrypoint_sbe_v8_1.fields.new_order_cross_message = ProtoField.new("New Order Cross Message", "b3.equities.binaryentrypoint.sbe.v8.1.newordercrossmessage", ftypes.STRING)
omi_b3_equities_binaryentrypoint_sbe_v8_1.fields.new_order_single_message = ProtoField.new("New Order Single Message", "b3.equities.binaryentrypoint.sbe.v8.1.newordersinglemessage", ftypes.STRING)
omi_b3_equities_binaryentrypoint_sbe_v8_1.fields.not_applied_message = ProtoField.new("Not Applied Message", "b3.equities.binaryentrypoint.sbe.v8.1.notappliedmessage", ftypes.STRING)
omi_b3_equities_binaryentrypoint_sbe_v8_1.fields.order_cancel_replace_request_message = ProtoField.new("Order Cancel Replace Request Message", "b3.equities.binaryentrypoint.sbe.v8.1.ordercancelreplacerequestmessage", ftypes.STRING)
omi_b3_equities_binaryentrypoint_sbe_v8_1.fields.order_cancel_request_message = ProtoField.new("Order Cancel Request Message", "b3.equities.binaryentrypoint.sbe.v8.1.ordercancelrequestmessage", ftypes.STRING)
omi_b3_equities_binaryentrypoint_sbe_v8_1.fields.order_mass_action_report_message = ProtoField.new("Order Mass Action Report Message", "b3.equities.binaryentrypoint.sbe.v8.1.ordermassactionreportmessage", ftypes.STRING)
omi_b3_equities_binaryentrypoint_sbe_v8_1.fields.order_mass_action_request_message = ProtoField.new("Order Mass Action Request Message", "b3.equities.binaryentrypoint.sbe.v8.1.ordermassactionrequestmessage", ftypes.STRING)
omi_b3_equities_binaryentrypoint_sbe_v8_1.fields.position_maintenance_cancel_request_message = ProtoField.new("Position Maintenance Cancel Request Message", "b3.equities.binaryentrypoint.sbe.v8.1.positionmaintenancecancelrequestmessage", ftypes.STRING)
omi_b3_equities_binaryentrypoint_sbe_v8_1.fields.position_maintenance_report_message = ProtoField.new("Position Maintenance Report Message", "b3.equities.binaryentrypoint.sbe.v8.1.positionmaintenancereportmessage", ftypes.STRING)
omi_b3_equities_binaryentrypoint_sbe_v8_1.fields.position_maintenance_request_message = ProtoField.new("Position Maintenance Request Message", "b3.equities.binaryentrypoint.sbe.v8.1.positionmaintenancerequestmessage", ftypes.STRING)
omi_b3_equities_binaryentrypoint_sbe_v8_1.fields.quote_cancel_message = ProtoField.new("Quote Cancel Message", "b3.equities.binaryentrypoint.sbe.v8.1.quotecancelmessage", ftypes.STRING)
omi_b3_equities_binaryentrypoint_sbe_v8_1.fields.quote_message = ProtoField.new("Quote Message", "b3.equities.binaryentrypoint.sbe.v8.1.quotemessage", ftypes.STRING)
omi_b3_equities_binaryentrypoint_sbe_v8_1.fields.quote_request_message = ProtoField.new("Quote Request Message", "b3.equities.binaryentrypoint.sbe.v8.1.quoterequestmessage", ftypes.STRING)
omi_b3_equities_binaryentrypoint_sbe_v8_1.fields.quote_request_reject_message = ProtoField.new("Quote Request Reject Message", "b3.equities.binaryentrypoint.sbe.v8.1.quoterequestrejectmessage", ftypes.STRING)
omi_b3_equities_binaryentrypoint_sbe_v8_1.fields.quote_status_report_message = ProtoField.new("Quote Status Report Message", "b3.equities.binaryentrypoint.sbe.v8.1.quotestatusreportmessage", ftypes.STRING)
omi_b3_equities_binaryentrypoint_sbe_v8_1.fields.retransmission_message = ProtoField.new("Retransmission Message", "b3.equities.binaryentrypoint.sbe.v8.1.retransmissionmessage", ftypes.STRING)
omi_b3_equities_binaryentrypoint_sbe_v8_1.fields.retransmit_reject_message = ProtoField.new("Retransmit Reject Message", "b3.equities.binaryentrypoint.sbe.v8.1.retransmitrejectmessage", ftypes.STRING)
omi_b3_equities_binaryentrypoint_sbe_v8_1.fields.retransmit_request_message = ProtoField.new("Retransmit Request Message", "b3.equities.binaryentrypoint.sbe.v8.1.retransmitrequestmessage", ftypes.STRING)
omi_b3_equities_binaryentrypoint_sbe_v8_1.fields.security_definition_request_message = ProtoField.new("Security Definition Request Message", "b3.equities.binaryentrypoint.sbe.v8.1.securitydefinitionrequestmessage", ftypes.STRING)
omi_b3_equities_binaryentrypoint_sbe_v8_1.fields.security_definition_response_message = ProtoField.new("Security Definition Response Message", "b3.equities.binaryentrypoint.sbe.v8.1.securitydefinitionresponsemessage", ftypes.STRING)
omi_b3_equities_binaryentrypoint_sbe_v8_1.fields.sequence_message = ProtoField.new("Sequence Message", "b3.equities.binaryentrypoint.sbe.v8.1.sequencemessage", ftypes.STRING)
omi_b3_equities_binaryentrypoint_sbe_v8_1.fields.simple_modify_order_message = ProtoField.new("Simple Modify Order Message", "b3.equities.binaryentrypoint.sbe.v8.1.simplemodifyordermessage", ftypes.STRING)
omi_b3_equities_binaryentrypoint_sbe_v8_1.fields.simple_new_order_message = ProtoField.new("Simple New Order Message", "b3.equities.binaryentrypoint.sbe.v8.1.simplenewordermessage", ftypes.STRING)
omi_b3_equities_binaryentrypoint_sbe_v8_1.fields.terminate_message = ProtoField.new("Terminate Message", "b3.equities.binaryentrypoint.sbe.v8.1.terminatemessage", ftypes.STRING)

-- B3 Equities BinaryEntryPoint Sbe 8.1 generated fields
omi_b3_equities_binaryentrypoint_sbe_v8_1.fields.no_legs_group_index = ProtoField.new("No Legs Group Index", "b3.equities.binaryentrypoint.sbe.v8.1.nolegsgroupindex", ftypes.UINT16)
omi_b3_equities_binaryentrypoint_sbe_v8_1.fields.no_positions_group_index = ProtoField.new("No Positions Group Index", "b3.equities.binaryentrypoint.sbe.v8.1.nopositionsgroupindex", ftypes.UINT16)
omi_b3_equities_binaryentrypoint_sbe_v8_1.fields.no_sides_group_index = ProtoField.new("No Sides Group Index", "b3.equities.binaryentrypoint.sbe.v8.1.nosidesgroupindex", ftypes.UINT16)

-----------------------------------------------------------------------
-- Declare Dissection Options
-----------------------------------------------------------------------

-- B3 Equities BinaryEntryPoint Sbe 8.1 Element Dissection Options
show.allocation_instruction_message = true
show.allocation_report_message = true
show.bidirectional_business_header = true
show.business_message_reject_message = true
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
show.group_size_encoding = true
show.inbound_business_header = true
show.investor_id = true
show.memo = true
show.message_header = true
show.negotiate_message = true
show.negotiate_reject_message = true
show.negotiate_response_message = true
show.new_order_cross_message = true
show.new_order_single_message = true
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

-- Register B3 Equities BinaryEntryPoint Sbe 8.1 Show Options
omi_b3_equities_binaryentrypoint_sbe_v8_1.prefs.show_allocation_instruction_message = Pref.bool("Show Allocation Instruction Message", show.allocation_instruction_message, "Parse and add Allocation Instruction Message to protocol tree")
omi_b3_equities_binaryentrypoint_sbe_v8_1.prefs.show_allocation_report_message = Pref.bool("Show Allocation Report Message", show.allocation_report_message, "Parse and add Allocation Report Message to protocol tree")
omi_b3_equities_binaryentrypoint_sbe_v8_1.prefs.show_bidirectional_business_header = Pref.bool("Show Bidirectional Business Header", show.bidirectional_business_header, "Parse and add Bidirectional Business Header to protocol tree")
omi_b3_equities_binaryentrypoint_sbe_v8_1.prefs.show_business_message_reject_message = Pref.bool("Show Business Message Reject Message", show.business_message_reject_message, "Parse and add Business Message Reject Message to protocol tree")
omi_b3_equities_binaryentrypoint_sbe_v8_1.prefs.show_client_app_name = Pref.bool("Show Client App Name", show.client_app_name, "Parse and add Client App Name to protocol tree")
omi_b3_equities_binaryentrypoint_sbe_v8_1.prefs.show_client_app_version = Pref.bool("Show Client App Version", show.client_app_version, "Parse and add Client App Version to protocol tree")
omi_b3_equities_binaryentrypoint_sbe_v8_1.prefs.show_client_ip = Pref.bool("Show Client Ip", show.client_ip, "Parse and add Client Ip to protocol tree")
omi_b3_equities_binaryentrypoint_sbe_v8_1.prefs.show_credentials = Pref.bool("Show Credentials", show.credentials, "Parse and add Credentials to protocol tree")
omi_b3_equities_binaryentrypoint_sbe_v8_1.prefs.show_custodian_info = Pref.bool("Show Custodian Info", show.custodian_info, "Parse and add Custodian Info to protocol tree")
omi_b3_equities_binaryentrypoint_sbe_v8_1.prefs.show_desk_id = Pref.bool("Show Desk Id", show.desk_id, "Parse and add Desk Id to protocol tree")
omi_b3_equities_binaryentrypoint_sbe_v8_1.prefs.show_establish_ack_message = Pref.bool("Show Establish Ack Message", show.establish_ack_message, "Parse and add Establish Ack Message to protocol tree")
omi_b3_equities_binaryentrypoint_sbe_v8_1.prefs.show_establish_message = Pref.bool("Show Establish Message", show.establish_message, "Parse and add Establish Message to protocol tree")
omi_b3_equities_binaryentrypoint_sbe_v8_1.prefs.show_establish_reject_message = Pref.bool("Show Establish Reject Message", show.establish_reject_message, "Parse and add Establish Reject Message to protocol tree")
omi_b3_equities_binaryentrypoint_sbe_v8_1.prefs.show_execution_report_cancel_message = Pref.bool("Show Execution Report Cancel Message", show.execution_report_cancel_message, "Parse and add Execution Report Cancel Message to protocol tree")
omi_b3_equities_binaryentrypoint_sbe_v8_1.prefs.show_execution_report_forward_message = Pref.bool("Show Execution Report Forward Message", show.execution_report_forward_message, "Parse and add Execution Report Forward Message to protocol tree")
omi_b3_equities_binaryentrypoint_sbe_v8_1.prefs.show_execution_report_modify_message = Pref.bool("Show Execution Report Modify Message", show.execution_report_modify_message, "Parse and add Execution Report Modify Message to protocol tree")
omi_b3_equities_binaryentrypoint_sbe_v8_1.prefs.show_execution_report_new_message = Pref.bool("Show Execution Report New Message", show.execution_report_new_message, "Parse and add Execution Report New Message to protocol tree")
omi_b3_equities_binaryentrypoint_sbe_v8_1.prefs.show_execution_report_reject_message = Pref.bool("Show Execution Report Reject Message", show.execution_report_reject_message, "Parse and add Execution Report Reject Message to protocol tree")
omi_b3_equities_binaryentrypoint_sbe_v8_1.prefs.show_execution_report_trade_message = Pref.bool("Show Execution Report Trade Message", show.execution_report_trade_message, "Parse and add Execution Report Trade Message to protocol tree")
omi_b3_equities_binaryentrypoint_sbe_v8_1.prefs.show_group_size_encoding = Pref.bool("Show Group Size Encoding", show.group_size_encoding, "Parse and add Group Size Encoding to protocol tree")
omi_b3_equities_binaryentrypoint_sbe_v8_1.prefs.show_inbound_business_header = Pref.bool("Show Inbound Business Header", show.inbound_business_header, "Parse and add Inbound Business Header to protocol tree")
omi_b3_equities_binaryentrypoint_sbe_v8_1.prefs.show_investor_id = Pref.bool("Show Investor Id", show.investor_id, "Parse and add Investor Id to protocol tree")
omi_b3_equities_binaryentrypoint_sbe_v8_1.prefs.show_memo = Pref.bool("Show Memo", show.memo, "Parse and add Memo to protocol tree")
omi_b3_equities_binaryentrypoint_sbe_v8_1.prefs.show_message_header = Pref.bool("Show Message Header", show.message_header, "Parse and add Message Header to protocol tree")
omi_b3_equities_binaryentrypoint_sbe_v8_1.prefs.show_negotiate_message = Pref.bool("Show Negotiate Message", show.negotiate_message, "Parse and add Negotiate Message to protocol tree")
omi_b3_equities_binaryentrypoint_sbe_v8_1.prefs.show_negotiate_reject_message = Pref.bool("Show Negotiate Reject Message", show.negotiate_reject_message, "Parse and add Negotiate Reject Message to protocol tree")
omi_b3_equities_binaryentrypoint_sbe_v8_1.prefs.show_negotiate_response_message = Pref.bool("Show Negotiate Response Message", show.negotiate_response_message, "Parse and add Negotiate Response Message to protocol tree")
omi_b3_equities_binaryentrypoint_sbe_v8_1.prefs.show_new_order_cross_message = Pref.bool("Show New Order Cross Message", show.new_order_cross_message, "Parse and add New Order Cross Message to protocol tree")
omi_b3_equities_binaryentrypoint_sbe_v8_1.prefs.show_new_order_single_message = Pref.bool("Show New Order Single Message", show.new_order_single_message, "Parse and add New Order Single Message to protocol tree")
omi_b3_equities_binaryentrypoint_sbe_v8_1.prefs.show_no_legs_group = Pref.bool("Show No Legs Group", show.no_legs_group, "Parse and add No Legs Group to protocol tree")
omi_b3_equities_binaryentrypoint_sbe_v8_1.prefs.show_no_legs_groups = Pref.bool("Show No Legs Groups", show.no_legs_groups, "Parse and add No Legs Groups to protocol tree")
omi_b3_equities_binaryentrypoint_sbe_v8_1.prefs.show_no_positions_group = Pref.bool("Show No Positions Group", show.no_positions_group, "Parse and add No Positions Group to protocol tree")
omi_b3_equities_binaryentrypoint_sbe_v8_1.prefs.show_no_positions_groups = Pref.bool("Show No Positions Groups", show.no_positions_groups, "Parse and add No Positions Groups to protocol tree")
omi_b3_equities_binaryentrypoint_sbe_v8_1.prefs.show_no_sides_group = Pref.bool("Show No Sides Group", show.no_sides_group, "Parse and add No Sides Group to protocol tree")
omi_b3_equities_binaryentrypoint_sbe_v8_1.prefs.show_no_sides_groups = Pref.bool("Show No Sides Groups", show.no_sides_groups, "Parse and add No Sides Groups to protocol tree")
omi_b3_equities_binaryentrypoint_sbe_v8_1.prefs.show_not_applied_message = Pref.bool("Show Not Applied Message", show.not_applied_message, "Parse and add Not Applied Message to protocol tree")
omi_b3_equities_binaryentrypoint_sbe_v8_1.prefs.show_order_cancel_replace_request_message = Pref.bool("Show Order Cancel Replace Request Message", show.order_cancel_replace_request_message, "Parse and add Order Cancel Replace Request Message to protocol tree")
omi_b3_equities_binaryentrypoint_sbe_v8_1.prefs.show_order_cancel_request_message = Pref.bool("Show Order Cancel Request Message", show.order_cancel_request_message, "Parse and add Order Cancel Request Message to protocol tree")
omi_b3_equities_binaryentrypoint_sbe_v8_1.prefs.show_order_mass_action_report_message = Pref.bool("Show Order Mass Action Report Message", show.order_mass_action_report_message, "Parse and add Order Mass Action Report Message to protocol tree")
omi_b3_equities_binaryentrypoint_sbe_v8_1.prefs.show_order_mass_action_request_message = Pref.bool("Show Order Mass Action Request Message", show.order_mass_action_request_message, "Parse and add Order Mass Action Request Message to protocol tree")
omi_b3_equities_binaryentrypoint_sbe_v8_1.prefs.show_outbound_business_header = Pref.bool("Show Outbound Business Header", show.outbound_business_header, "Parse and add Outbound Business Header to protocol tree")
omi_b3_equities_binaryentrypoint_sbe_v8_1.prefs.show_packet = Pref.bool("Show Packet", show.packet, "Parse and add Packet to protocol tree")
omi_b3_equities_binaryentrypoint_sbe_v8_1.prefs.show_position_maintenance_cancel_request_message = Pref.bool("Show Position Maintenance Cancel Request Message", show.position_maintenance_cancel_request_message, "Parse and add Position Maintenance Cancel Request Message to protocol tree")
omi_b3_equities_binaryentrypoint_sbe_v8_1.prefs.show_position_maintenance_report_message = Pref.bool("Show Position Maintenance Report Message", show.position_maintenance_report_message, "Parse and add Position Maintenance Report Message to protocol tree")
omi_b3_equities_binaryentrypoint_sbe_v8_1.prefs.show_position_maintenance_request_message = Pref.bool("Show Position Maintenance Request Message", show.position_maintenance_request_message, "Parse and add Position Maintenance Request Message to protocol tree")
omi_b3_equities_binaryentrypoint_sbe_v8_1.prefs.show_quote_cancel_message = Pref.bool("Show Quote Cancel Message", show.quote_cancel_message, "Parse and add Quote Cancel Message to protocol tree")
omi_b3_equities_binaryentrypoint_sbe_v8_1.prefs.show_quote_message = Pref.bool("Show Quote Message", show.quote_message, "Parse and add Quote Message to protocol tree")
omi_b3_equities_binaryentrypoint_sbe_v8_1.prefs.show_quote_request_message = Pref.bool("Show Quote Request Message", show.quote_request_message, "Parse and add Quote Request Message to protocol tree")
omi_b3_equities_binaryentrypoint_sbe_v8_1.prefs.show_quote_request_reject_message = Pref.bool("Show Quote Request Reject Message", show.quote_request_reject_message, "Parse and add Quote Request Reject Message to protocol tree")
omi_b3_equities_binaryentrypoint_sbe_v8_1.prefs.show_quote_status_report_message = Pref.bool("Show Quote Status Report Message", show.quote_status_report_message, "Parse and add Quote Status Report Message to protocol tree")
omi_b3_equities_binaryentrypoint_sbe_v8_1.prefs.show_retransmission_message = Pref.bool("Show Retransmission Message", show.retransmission_message, "Parse and add Retransmission Message to protocol tree")
omi_b3_equities_binaryentrypoint_sbe_v8_1.prefs.show_retransmit_reject_message = Pref.bool("Show Retransmit Reject Message", show.retransmit_reject_message, "Parse and add Retransmit Reject Message to protocol tree")
omi_b3_equities_binaryentrypoint_sbe_v8_1.prefs.show_retransmit_request_message = Pref.bool("Show Retransmit Request Message", show.retransmit_request_message, "Parse and add Retransmit Request Message to protocol tree")
omi_b3_equities_binaryentrypoint_sbe_v8_1.prefs.show_security_definition_request_message = Pref.bool("Show Security Definition Request Message", show.security_definition_request_message, "Parse and add Security Definition Request Message to protocol tree")
omi_b3_equities_binaryentrypoint_sbe_v8_1.prefs.show_security_definition_response_message = Pref.bool("Show Security Definition Response Message", show.security_definition_response_message, "Parse and add Security Definition Response Message to protocol tree")
omi_b3_equities_binaryentrypoint_sbe_v8_1.prefs.show_sequence_message = Pref.bool("Show Sequence Message", show.sequence_message, "Parse and add Sequence Message to protocol tree")
omi_b3_equities_binaryentrypoint_sbe_v8_1.prefs.show_simple_modify_order_message = Pref.bool("Show Simple Modify Order Message", show.simple_modify_order_message, "Parse and add Simple Modify Order Message to protocol tree")
omi_b3_equities_binaryentrypoint_sbe_v8_1.prefs.show_simple_new_order_message = Pref.bool("Show Simple New Order Message", show.simple_new_order_message, "Parse and add Simple New Order Message to protocol tree")
omi_b3_equities_binaryentrypoint_sbe_v8_1.prefs.show_simple_open_frame = Pref.bool("Show Simple Open Frame", show.simple_open_frame, "Parse and add Simple Open Frame to protocol tree")
omi_b3_equities_binaryentrypoint_sbe_v8_1.prefs.show_simple_open_framing_header = Pref.bool("Show Simple Open Framing Header", show.simple_open_framing_header, "Parse and add Simple Open Framing Header to protocol tree")
omi_b3_equities_binaryentrypoint_sbe_v8_1.prefs.show_terminate_message = Pref.bool("Show Terminate Message", show.terminate_message, "Parse and add Terminate Message to protocol tree")
omi_b3_equities_binaryentrypoint_sbe_v8_1.prefs.show_text = Pref.bool("Show Text", show.text, "Parse and add Text to protocol tree")
omi_b3_equities_binaryentrypoint_sbe_v8_1.prefs.show_payload = Pref.bool("Show Payload", show.payload, "Parse and add Payload to protocol tree")

-- Handle changed preferences
function omi_b3_equities_binaryentrypoint_sbe_v8_1.prefs_changed()
  local changed = false

  -- Check if show options have changed
  if show.allocation_instruction_message ~= omi_b3_equities_binaryentrypoint_sbe_v8_1.prefs.show_allocation_instruction_message then
    show.allocation_instruction_message = omi_b3_equities_binaryentrypoint_sbe_v8_1.prefs.show_allocation_instruction_message
    changed = true
  end
  if show.allocation_report_message ~= omi_b3_equities_binaryentrypoint_sbe_v8_1.prefs.show_allocation_report_message then
    show.allocation_report_message = omi_b3_equities_binaryentrypoint_sbe_v8_1.prefs.show_allocation_report_message
    changed = true
  end
  if show.bidirectional_business_header ~= omi_b3_equities_binaryentrypoint_sbe_v8_1.prefs.show_bidirectional_business_header then
    show.bidirectional_business_header = omi_b3_equities_binaryentrypoint_sbe_v8_1.prefs.show_bidirectional_business_header
    changed = true
  end
  if show.business_message_reject_message ~= omi_b3_equities_binaryentrypoint_sbe_v8_1.prefs.show_business_message_reject_message then
    show.business_message_reject_message = omi_b3_equities_binaryentrypoint_sbe_v8_1.prefs.show_business_message_reject_message
    changed = true
  end
  if show.client_app_name ~= omi_b3_equities_binaryentrypoint_sbe_v8_1.prefs.show_client_app_name then
    show.client_app_name = omi_b3_equities_binaryentrypoint_sbe_v8_1.prefs.show_client_app_name
    changed = true
  end
  if show.client_app_version ~= omi_b3_equities_binaryentrypoint_sbe_v8_1.prefs.show_client_app_version then
    show.client_app_version = omi_b3_equities_binaryentrypoint_sbe_v8_1.prefs.show_client_app_version
    changed = true
  end
  if show.client_ip ~= omi_b3_equities_binaryentrypoint_sbe_v8_1.prefs.show_client_ip then
    show.client_ip = omi_b3_equities_binaryentrypoint_sbe_v8_1.prefs.show_client_ip
    changed = true
  end
  if show.credentials ~= omi_b3_equities_binaryentrypoint_sbe_v8_1.prefs.show_credentials then
    show.credentials = omi_b3_equities_binaryentrypoint_sbe_v8_1.prefs.show_credentials
    changed = true
  end
  if show.custodian_info ~= omi_b3_equities_binaryentrypoint_sbe_v8_1.prefs.show_custodian_info then
    show.custodian_info = omi_b3_equities_binaryentrypoint_sbe_v8_1.prefs.show_custodian_info
    changed = true
  end
  if show.desk_id ~= omi_b3_equities_binaryentrypoint_sbe_v8_1.prefs.show_desk_id then
    show.desk_id = omi_b3_equities_binaryentrypoint_sbe_v8_1.prefs.show_desk_id
    changed = true
  end
  if show.establish_ack_message ~= omi_b3_equities_binaryentrypoint_sbe_v8_1.prefs.show_establish_ack_message then
    show.establish_ack_message = omi_b3_equities_binaryentrypoint_sbe_v8_1.prefs.show_establish_ack_message
    changed = true
  end
  if show.establish_message ~= omi_b3_equities_binaryentrypoint_sbe_v8_1.prefs.show_establish_message then
    show.establish_message = omi_b3_equities_binaryentrypoint_sbe_v8_1.prefs.show_establish_message
    changed = true
  end
  if show.establish_reject_message ~= omi_b3_equities_binaryentrypoint_sbe_v8_1.prefs.show_establish_reject_message then
    show.establish_reject_message = omi_b3_equities_binaryentrypoint_sbe_v8_1.prefs.show_establish_reject_message
    changed = true
  end
  if show.execution_report_cancel_message ~= omi_b3_equities_binaryentrypoint_sbe_v8_1.prefs.show_execution_report_cancel_message then
    show.execution_report_cancel_message = omi_b3_equities_binaryentrypoint_sbe_v8_1.prefs.show_execution_report_cancel_message
    changed = true
  end
  if show.execution_report_forward_message ~= omi_b3_equities_binaryentrypoint_sbe_v8_1.prefs.show_execution_report_forward_message then
    show.execution_report_forward_message = omi_b3_equities_binaryentrypoint_sbe_v8_1.prefs.show_execution_report_forward_message
    changed = true
  end
  if show.execution_report_modify_message ~= omi_b3_equities_binaryentrypoint_sbe_v8_1.prefs.show_execution_report_modify_message then
    show.execution_report_modify_message = omi_b3_equities_binaryentrypoint_sbe_v8_1.prefs.show_execution_report_modify_message
    changed = true
  end
  if show.execution_report_new_message ~= omi_b3_equities_binaryentrypoint_sbe_v8_1.prefs.show_execution_report_new_message then
    show.execution_report_new_message = omi_b3_equities_binaryentrypoint_sbe_v8_1.prefs.show_execution_report_new_message
    changed = true
  end
  if show.execution_report_reject_message ~= omi_b3_equities_binaryentrypoint_sbe_v8_1.prefs.show_execution_report_reject_message then
    show.execution_report_reject_message = omi_b3_equities_binaryentrypoint_sbe_v8_1.prefs.show_execution_report_reject_message
    changed = true
  end
  if show.execution_report_trade_message ~= omi_b3_equities_binaryentrypoint_sbe_v8_1.prefs.show_execution_report_trade_message then
    show.execution_report_trade_message = omi_b3_equities_binaryentrypoint_sbe_v8_1.prefs.show_execution_report_trade_message
    changed = true
  end
  if show.group_size_encoding ~= omi_b3_equities_binaryentrypoint_sbe_v8_1.prefs.show_group_size_encoding then
    show.group_size_encoding = omi_b3_equities_binaryentrypoint_sbe_v8_1.prefs.show_group_size_encoding
    changed = true
  end
  if show.inbound_business_header ~= omi_b3_equities_binaryentrypoint_sbe_v8_1.prefs.show_inbound_business_header then
    show.inbound_business_header = omi_b3_equities_binaryentrypoint_sbe_v8_1.prefs.show_inbound_business_header
    changed = true
  end
  if show.investor_id ~= omi_b3_equities_binaryentrypoint_sbe_v8_1.prefs.show_investor_id then
    show.investor_id = omi_b3_equities_binaryentrypoint_sbe_v8_1.prefs.show_investor_id
    changed = true
  end
  if show.memo ~= omi_b3_equities_binaryentrypoint_sbe_v8_1.prefs.show_memo then
    show.memo = omi_b3_equities_binaryentrypoint_sbe_v8_1.prefs.show_memo
    changed = true
  end
  if show.message_header ~= omi_b3_equities_binaryentrypoint_sbe_v8_1.prefs.show_message_header then
    show.message_header = omi_b3_equities_binaryentrypoint_sbe_v8_1.prefs.show_message_header
    changed = true
  end
  if show.negotiate_message ~= omi_b3_equities_binaryentrypoint_sbe_v8_1.prefs.show_negotiate_message then
    show.negotiate_message = omi_b3_equities_binaryentrypoint_sbe_v8_1.prefs.show_negotiate_message
    changed = true
  end
  if show.negotiate_reject_message ~= omi_b3_equities_binaryentrypoint_sbe_v8_1.prefs.show_negotiate_reject_message then
    show.negotiate_reject_message = omi_b3_equities_binaryentrypoint_sbe_v8_1.prefs.show_negotiate_reject_message
    changed = true
  end
  if show.negotiate_response_message ~= omi_b3_equities_binaryentrypoint_sbe_v8_1.prefs.show_negotiate_response_message then
    show.negotiate_response_message = omi_b3_equities_binaryentrypoint_sbe_v8_1.prefs.show_negotiate_response_message
    changed = true
  end
  if show.new_order_cross_message ~= omi_b3_equities_binaryentrypoint_sbe_v8_1.prefs.show_new_order_cross_message then
    show.new_order_cross_message = omi_b3_equities_binaryentrypoint_sbe_v8_1.prefs.show_new_order_cross_message
    changed = true
  end
  if show.new_order_single_message ~= omi_b3_equities_binaryentrypoint_sbe_v8_1.prefs.show_new_order_single_message then
    show.new_order_single_message = omi_b3_equities_binaryentrypoint_sbe_v8_1.prefs.show_new_order_single_message
    changed = true
  end
  if show.no_legs_group ~= omi_b3_equities_binaryentrypoint_sbe_v8_1.prefs.show_no_legs_group then
    show.no_legs_group = omi_b3_equities_binaryentrypoint_sbe_v8_1.prefs.show_no_legs_group
    changed = true
  end
  if show.no_legs_groups ~= omi_b3_equities_binaryentrypoint_sbe_v8_1.prefs.show_no_legs_groups then
    show.no_legs_groups = omi_b3_equities_binaryentrypoint_sbe_v8_1.prefs.show_no_legs_groups
    changed = true
  end
  if show.no_positions_group ~= omi_b3_equities_binaryentrypoint_sbe_v8_1.prefs.show_no_positions_group then
    show.no_positions_group = omi_b3_equities_binaryentrypoint_sbe_v8_1.prefs.show_no_positions_group
    changed = true
  end
  if show.no_positions_groups ~= omi_b3_equities_binaryentrypoint_sbe_v8_1.prefs.show_no_positions_groups then
    show.no_positions_groups = omi_b3_equities_binaryentrypoint_sbe_v8_1.prefs.show_no_positions_groups
    changed = true
  end
  if show.no_sides_group ~= omi_b3_equities_binaryentrypoint_sbe_v8_1.prefs.show_no_sides_group then
    show.no_sides_group = omi_b3_equities_binaryentrypoint_sbe_v8_1.prefs.show_no_sides_group
    changed = true
  end
  if show.no_sides_groups ~= omi_b3_equities_binaryentrypoint_sbe_v8_1.prefs.show_no_sides_groups then
    show.no_sides_groups = omi_b3_equities_binaryentrypoint_sbe_v8_1.prefs.show_no_sides_groups
    changed = true
  end
  if show.not_applied_message ~= omi_b3_equities_binaryentrypoint_sbe_v8_1.prefs.show_not_applied_message then
    show.not_applied_message = omi_b3_equities_binaryentrypoint_sbe_v8_1.prefs.show_not_applied_message
    changed = true
  end
  if show.order_cancel_replace_request_message ~= omi_b3_equities_binaryentrypoint_sbe_v8_1.prefs.show_order_cancel_replace_request_message then
    show.order_cancel_replace_request_message = omi_b3_equities_binaryentrypoint_sbe_v8_1.prefs.show_order_cancel_replace_request_message
    changed = true
  end
  if show.order_cancel_request_message ~= omi_b3_equities_binaryentrypoint_sbe_v8_1.prefs.show_order_cancel_request_message then
    show.order_cancel_request_message = omi_b3_equities_binaryentrypoint_sbe_v8_1.prefs.show_order_cancel_request_message
    changed = true
  end
  if show.order_mass_action_report_message ~= omi_b3_equities_binaryentrypoint_sbe_v8_1.prefs.show_order_mass_action_report_message then
    show.order_mass_action_report_message = omi_b3_equities_binaryentrypoint_sbe_v8_1.prefs.show_order_mass_action_report_message
    changed = true
  end
  if show.order_mass_action_request_message ~= omi_b3_equities_binaryentrypoint_sbe_v8_1.prefs.show_order_mass_action_request_message then
    show.order_mass_action_request_message = omi_b3_equities_binaryentrypoint_sbe_v8_1.prefs.show_order_mass_action_request_message
    changed = true
  end
  if show.outbound_business_header ~= omi_b3_equities_binaryentrypoint_sbe_v8_1.prefs.show_outbound_business_header then
    show.outbound_business_header = omi_b3_equities_binaryentrypoint_sbe_v8_1.prefs.show_outbound_business_header
    changed = true
  end
  if show.packet ~= omi_b3_equities_binaryentrypoint_sbe_v8_1.prefs.show_packet then
    show.packet = omi_b3_equities_binaryentrypoint_sbe_v8_1.prefs.show_packet
    changed = true
  end
  if show.position_maintenance_cancel_request_message ~= omi_b3_equities_binaryentrypoint_sbe_v8_1.prefs.show_position_maintenance_cancel_request_message then
    show.position_maintenance_cancel_request_message = omi_b3_equities_binaryentrypoint_sbe_v8_1.prefs.show_position_maintenance_cancel_request_message
    changed = true
  end
  if show.position_maintenance_report_message ~= omi_b3_equities_binaryentrypoint_sbe_v8_1.prefs.show_position_maintenance_report_message then
    show.position_maintenance_report_message = omi_b3_equities_binaryentrypoint_sbe_v8_1.prefs.show_position_maintenance_report_message
    changed = true
  end
  if show.position_maintenance_request_message ~= omi_b3_equities_binaryentrypoint_sbe_v8_1.prefs.show_position_maintenance_request_message then
    show.position_maintenance_request_message = omi_b3_equities_binaryentrypoint_sbe_v8_1.prefs.show_position_maintenance_request_message
    changed = true
  end
  if show.quote_cancel_message ~= omi_b3_equities_binaryentrypoint_sbe_v8_1.prefs.show_quote_cancel_message then
    show.quote_cancel_message = omi_b3_equities_binaryentrypoint_sbe_v8_1.prefs.show_quote_cancel_message
    changed = true
  end
  if show.quote_message ~= omi_b3_equities_binaryentrypoint_sbe_v8_1.prefs.show_quote_message then
    show.quote_message = omi_b3_equities_binaryentrypoint_sbe_v8_1.prefs.show_quote_message
    changed = true
  end
  if show.quote_request_message ~= omi_b3_equities_binaryentrypoint_sbe_v8_1.prefs.show_quote_request_message then
    show.quote_request_message = omi_b3_equities_binaryentrypoint_sbe_v8_1.prefs.show_quote_request_message
    changed = true
  end
  if show.quote_request_reject_message ~= omi_b3_equities_binaryentrypoint_sbe_v8_1.prefs.show_quote_request_reject_message then
    show.quote_request_reject_message = omi_b3_equities_binaryentrypoint_sbe_v8_1.prefs.show_quote_request_reject_message
    changed = true
  end
  if show.quote_status_report_message ~= omi_b3_equities_binaryentrypoint_sbe_v8_1.prefs.show_quote_status_report_message then
    show.quote_status_report_message = omi_b3_equities_binaryentrypoint_sbe_v8_1.prefs.show_quote_status_report_message
    changed = true
  end
  if show.retransmission_message ~= omi_b3_equities_binaryentrypoint_sbe_v8_1.prefs.show_retransmission_message then
    show.retransmission_message = omi_b3_equities_binaryentrypoint_sbe_v8_1.prefs.show_retransmission_message
    changed = true
  end
  if show.retransmit_reject_message ~= omi_b3_equities_binaryentrypoint_sbe_v8_1.prefs.show_retransmit_reject_message then
    show.retransmit_reject_message = omi_b3_equities_binaryentrypoint_sbe_v8_1.prefs.show_retransmit_reject_message
    changed = true
  end
  if show.retransmit_request_message ~= omi_b3_equities_binaryentrypoint_sbe_v8_1.prefs.show_retransmit_request_message then
    show.retransmit_request_message = omi_b3_equities_binaryentrypoint_sbe_v8_1.prefs.show_retransmit_request_message
    changed = true
  end
  if show.security_definition_request_message ~= omi_b3_equities_binaryentrypoint_sbe_v8_1.prefs.show_security_definition_request_message then
    show.security_definition_request_message = omi_b3_equities_binaryentrypoint_sbe_v8_1.prefs.show_security_definition_request_message
    changed = true
  end
  if show.security_definition_response_message ~= omi_b3_equities_binaryentrypoint_sbe_v8_1.prefs.show_security_definition_response_message then
    show.security_definition_response_message = omi_b3_equities_binaryentrypoint_sbe_v8_1.prefs.show_security_definition_response_message
    changed = true
  end
  if show.sequence_message ~= omi_b3_equities_binaryentrypoint_sbe_v8_1.prefs.show_sequence_message then
    show.sequence_message = omi_b3_equities_binaryentrypoint_sbe_v8_1.prefs.show_sequence_message
    changed = true
  end
  if show.simple_modify_order_message ~= omi_b3_equities_binaryentrypoint_sbe_v8_1.prefs.show_simple_modify_order_message then
    show.simple_modify_order_message = omi_b3_equities_binaryentrypoint_sbe_v8_1.prefs.show_simple_modify_order_message
    changed = true
  end
  if show.simple_new_order_message ~= omi_b3_equities_binaryentrypoint_sbe_v8_1.prefs.show_simple_new_order_message then
    show.simple_new_order_message = omi_b3_equities_binaryentrypoint_sbe_v8_1.prefs.show_simple_new_order_message
    changed = true
  end
  if show.simple_open_frame ~= omi_b3_equities_binaryentrypoint_sbe_v8_1.prefs.show_simple_open_frame then
    show.simple_open_frame = omi_b3_equities_binaryentrypoint_sbe_v8_1.prefs.show_simple_open_frame
    changed = true
  end
  if show.simple_open_framing_header ~= omi_b3_equities_binaryentrypoint_sbe_v8_1.prefs.show_simple_open_framing_header then
    show.simple_open_framing_header = omi_b3_equities_binaryentrypoint_sbe_v8_1.prefs.show_simple_open_framing_header
    changed = true
  end
  if show.terminate_message ~= omi_b3_equities_binaryentrypoint_sbe_v8_1.prefs.show_terminate_message then
    show.terminate_message = omi_b3_equities_binaryentrypoint_sbe_v8_1.prefs.show_terminate_message
    changed = true
  end
  if show.text ~= omi_b3_equities_binaryentrypoint_sbe_v8_1.prefs.show_text then
    show.text = omi_b3_equities_binaryentrypoint_sbe_v8_1.prefs.show_text
    changed = true
  end
  if show.payload ~= omi_b3_equities_binaryentrypoint_sbe_v8_1.prefs.show_payload then
    show.payload = omi_b3_equities_binaryentrypoint_sbe_v8_1.prefs.show_payload
    changed = true
  end

  -- Reload on changed preference
  if changed then
    reload()
  end
end


-----------------------------------------------------------------------
-- Dissect B3 Equities BinaryEntryPoint Sbe 8.1
-----------------------------------------------------------------------

-- Text Data
b3_equities_binaryentrypoint_sbe_v8_1.text_data = {}

-- Display: Text Data
b3_equities_binaryentrypoint_sbe_v8_1.text_data.display = function(value)
  return "Text Data: "..value
end

-- Dissect runtime sized field: Text Data
b3_equities_binaryentrypoint_sbe_v8_1.text_data.dissect = function(buffer, offset, packet, parent, size)
  local range = buffer(offset, size)
  local value = range:string()
  local display = b3_equities_binaryentrypoint_sbe_v8_1.text_data.display(value, buffer, offset, packet, parent, size)

  parent:add(omi_b3_equities_binaryentrypoint_sbe_v8_1.fields.text_data, range, value, display)

  return offset + size
end

-- Text Length
b3_equities_binaryentrypoint_sbe_v8_1.text_length = {}

-- Size: Text Length
b3_equities_binaryentrypoint_sbe_v8_1.text_length.size = 1

-- Display: Text Length
b3_equities_binaryentrypoint_sbe_v8_1.text_length.display = function(value)
  return "Text Length: "..value
end

-- Dissect: Text Length
b3_equities_binaryentrypoint_sbe_v8_1.text_length.dissect = function(buffer, offset, packet, parent)
  local length = b3_equities_binaryentrypoint_sbe_v8_1.text_length.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = b3_equities_binaryentrypoint_sbe_v8_1.text_length.display(value, buffer, offset, packet, parent)

  parent:add(omi_b3_equities_binaryentrypoint_sbe_v8_1.fields.text_length, range, value, display)

  return offset + length, value
end

-- Text
b3_equities_binaryentrypoint_sbe_v8_1.text = {}

-- Calculate size of: Text
b3_equities_binaryentrypoint_sbe_v8_1.text.size = function(buffer, offset)
  local index = 0

  index = index + b3_equities_binaryentrypoint_sbe_v8_1.text_length.size

  -- Parse runtime size of: Text Data
  index = index + buffer(offset + index - 1, 1):le_uint()

  return index
end

-- Display: Text
b3_equities_binaryentrypoint_sbe_v8_1.text.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Text
b3_equities_binaryentrypoint_sbe_v8_1.text.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Text Length: 1 Byte Unsigned Fixed Width Integer
  index, text_length = b3_equities_binaryentrypoint_sbe_v8_1.text_length.dissect(buffer, index, packet, parent)

  -- Runtime Size Of: Text Data
  index, text_data = b3_equities_binaryentrypoint_sbe_v8_1.text_data.dissect(buffer, index, packet, parent, text_length)

  return index
end

-- Dissect: Text
b3_equities_binaryentrypoint_sbe_v8_1.text.dissect = function(buffer, offset, packet, parent)
  -- Optionally add dynamic struct element to protocol tree
  if show.text then
    local length = b3_equities_binaryentrypoint_sbe_v8_1.text.size(buffer, offset)
    local range = buffer(offset, length)
    local display = b3_equities_binaryentrypoint_sbe_v8_1.text.display(buffer, packet, parent)
    parent = parent:add(omi_b3_equities_binaryentrypoint_sbe_v8_1.fields.text, range, display)
  end

  return b3_equities_binaryentrypoint_sbe_v8_1.text.fields(buffer, offset, packet, parent)
end

-- Document
b3_equities_binaryentrypoint_sbe_v8_1.document = {}

-- Size: Document
b3_equities_binaryentrypoint_sbe_v8_1.document.size = 4

-- Display: Document
b3_equities_binaryentrypoint_sbe_v8_1.document.display = function(value)
  return "Document: "..value
end

-- Dissect: Document
b3_equities_binaryentrypoint_sbe_v8_1.document.dissect = function(buffer, offset, packet, parent)
  local length = b3_equities_binaryentrypoint_sbe_v8_1.document.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = b3_equities_binaryentrypoint_sbe_v8_1.document.display(value, buffer, offset, packet, parent)

  parent:add(omi_b3_equities_binaryentrypoint_sbe_v8_1.fields.document, range, value, display)

  return offset + length, value
end

-- Prefix
b3_equities_binaryentrypoint_sbe_v8_1.prefix = {}

-- Size: Prefix
b3_equities_binaryentrypoint_sbe_v8_1.prefix.size = 2

-- Display: Prefix
b3_equities_binaryentrypoint_sbe_v8_1.prefix.display = function(value)
  return "Prefix: "..value
end

-- Dissect: Prefix
b3_equities_binaryentrypoint_sbe_v8_1.prefix.dissect = function(buffer, offset, packet, parent)
  local length = b3_equities_binaryentrypoint_sbe_v8_1.prefix.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = b3_equities_binaryentrypoint_sbe_v8_1.prefix.display(value, buffer, offset, packet, parent)

  parent:add(omi_b3_equities_binaryentrypoint_sbe_v8_1.fields.prefix, range, value, display)

  return offset + length, value
end

-- Investor Id
b3_equities_binaryentrypoint_sbe_v8_1.investor_id = {}

-- Calculate size of: Investor Id
b3_equities_binaryentrypoint_sbe_v8_1.investor_id.size = function(buffer, offset)
  local index = 0

  index = index + b3_equities_binaryentrypoint_sbe_v8_1.prefix.size

  index = index + b3_equities_binaryentrypoint_sbe_v8_1.document.size

  return index
end

-- Display: Investor Id
b3_equities_binaryentrypoint_sbe_v8_1.investor_id.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Investor Id
b3_equities_binaryentrypoint_sbe_v8_1.investor_id.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Prefix: 2 Byte Unsigned Fixed Width Integer
  index, prefix = b3_equities_binaryentrypoint_sbe_v8_1.prefix.dissect(buffer, index, packet, parent)

  -- Document: 4 Byte Unsigned Fixed Width Integer
  index, document = b3_equities_binaryentrypoint_sbe_v8_1.document.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Investor Id
b3_equities_binaryentrypoint_sbe_v8_1.investor_id.dissect = function(buffer, offset, packet, parent)
  if show.investor_id then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_b3_equities_binaryentrypoint_sbe_v8_1.fields.investor_id, buffer(offset, 0))
    local index = b3_equities_binaryentrypoint_sbe_v8_1.investor_id.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = b3_equities_binaryentrypoint_sbe_v8_1.investor_id.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return b3_equities_binaryentrypoint_sbe_v8_1.investor_id.fields(buffer, offset, packet, parent)
  end
end

-- Security Id Optional
b3_equities_binaryentrypoint_sbe_v8_1.security_id_optional = {}

-- Size: Security Id Optional
b3_equities_binaryentrypoint_sbe_v8_1.security_id_optional.size = 8

-- Display: Security Id Optional
b3_equities_binaryentrypoint_sbe_v8_1.security_id_optional.display = function(value)
  -- Check if field has value
  if value == UInt64(0x00000000, 0x00000000) then
    return "Security Id Optional: No Value"
  end

  return "Security Id Optional: "..value
end

-- Dissect: Security Id Optional
b3_equities_binaryentrypoint_sbe_v8_1.security_id_optional.dissect = function(buffer, offset, packet, parent)
  local length = b3_equities_binaryentrypoint_sbe_v8_1.security_id_optional.size
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = b3_equities_binaryentrypoint_sbe_v8_1.security_id_optional.display(value, buffer, offset, packet, parent)

  parent:add(omi_b3_equities_binaryentrypoint_sbe_v8_1.fields.security_id_optional, range, value, display)

  return offset + length, value
end

-- Asset
b3_equities_binaryentrypoint_sbe_v8_1.asset = {}

-- Size: Asset
b3_equities_binaryentrypoint_sbe_v8_1.asset.size = 6

-- Display: Asset
b3_equities_binaryentrypoint_sbe_v8_1.asset.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Asset: No Value"
  end

  return "Asset: "..value
end

-- Dissect: Asset
b3_equities_binaryentrypoint_sbe_v8_1.asset.dissect = function(buffer, offset, packet, parent)
  local length = b3_equities_binaryentrypoint_sbe_v8_1.asset.size
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

  local display = b3_equities_binaryentrypoint_sbe_v8_1.asset.display(value, buffer, offset, packet, parent)

  parent:add(omi_b3_equities_binaryentrypoint_sbe_v8_1.fields.asset, range, value, display)

  return offset + length, value
end

-- Offset 49 Padding 1
b3_equities_binaryentrypoint_sbe_v8_1.offset_49_padding_1 = {}

-- Size: Offset 49 Padding 1
b3_equities_binaryentrypoint_sbe_v8_1.offset_49_padding_1.size = 1

-- Display: Offset 49 Padding 1
b3_equities_binaryentrypoint_sbe_v8_1.offset_49_padding_1.display = function(value)
  return "Offset 49 Padding 1: "..value
end

-- Dissect: Offset 49 Padding 1
b3_equities_binaryentrypoint_sbe_v8_1.offset_49_padding_1.dissect = function(buffer, offset, packet, parent)
  local length = b3_equities_binaryentrypoint_sbe_v8_1.offset_49_padding_1.size
  local range = buffer(offset, length)
  local value = range:bytes():tohex(false, " ")
  local display = b3_equities_binaryentrypoint_sbe_v8_1.offset_49_padding_1.display(value, buffer, offset, packet, parent)

  parent:add(omi_b3_equities_binaryentrypoint_sbe_v8_1.fields.offset_49_padding_1, range, value, display)

  return offset + length, value
end

-- Side Optional
b3_equities_binaryentrypoint_sbe_v8_1.side_optional = {}

-- Size: Side Optional
b3_equities_binaryentrypoint_sbe_v8_1.side_optional.size = 1

-- Display: Side Optional
b3_equities_binaryentrypoint_sbe_v8_1.side_optional.display = function(value)
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
b3_equities_binaryentrypoint_sbe_v8_1.side_optional.dissect = function(buffer, offset, packet, parent)
  local length = b3_equities_binaryentrypoint_sbe_v8_1.side_optional.size
  local range = buffer(offset, length)

  -- parse as byte
  local value = range:uint()

  -- check if value is non zero
  if value ~= 0 then
    value = range:string()
  end

  local display = b3_equities_binaryentrypoint_sbe_v8_1.side_optional.display(value, buffer, offset, packet, parent)

  parent:add(omi_b3_equities_binaryentrypoint_sbe_v8_1.fields.side_optional, range, value, display)

  return offset + length, value
end

-- OrdTagId
b3_equities_binaryentrypoint_sbe_v8_1.ordtagid = {}

-- Size: OrdTagId
b3_equities_binaryentrypoint_sbe_v8_1.ordtagid.size = 1

-- Display: OrdTagId
b3_equities_binaryentrypoint_sbe_v8_1.ordtagid.display = function(value)
  return "OrdTagId: "..value
end

-- Dissect: OrdTagId
b3_equities_binaryentrypoint_sbe_v8_1.ordtagid.dissect = function(buffer, offset, packet, parent)
  local length = b3_equities_binaryentrypoint_sbe_v8_1.ordtagid.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = b3_equities_binaryentrypoint_sbe_v8_1.ordtagid.display(value, buffer, offset, packet, parent)

  parent:add(omi_b3_equities_binaryentrypoint_sbe_v8_1.fields.ordtagid, range, value, display)

  return offset + length, value
end

-- Mass Cancel Restatement Reason
b3_equities_binaryentrypoint_sbe_v8_1.mass_cancel_restatement_reason = {}

-- Size: Mass Cancel Restatement Reason
b3_equities_binaryentrypoint_sbe_v8_1.mass_cancel_restatement_reason.size = 1

-- Display: Mass Cancel Restatement Reason
b3_equities_binaryentrypoint_sbe_v8_1.mass_cancel_restatement_reason.display = function(value)
  if value == 202 then
    return "Mass Cancel Restatement Reason: Order Mass Action From Client Request (202)"
  end
  if value == 207 then
    return "Mass Cancel Restatement Reason: Mass Cancel Order Due To Operational Error Request (207)"
  end
  if value == 0 then
    return "Mass Cancel Restatement Reason: No Value"
  end

  return "Mass Cancel Restatement Reason: Unknown("..value..")"
end

-- Dissect: Mass Cancel Restatement Reason
b3_equities_binaryentrypoint_sbe_v8_1.mass_cancel_restatement_reason.dissect = function(buffer, offset, packet, parent)
  local length = b3_equities_binaryentrypoint_sbe_v8_1.mass_cancel_restatement_reason.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = b3_equities_binaryentrypoint_sbe_v8_1.mass_cancel_restatement_reason.display(value, buffer, offset, packet, parent)

  parent:add(omi_b3_equities_binaryentrypoint_sbe_v8_1.fields.mass_cancel_restatement_reason, range, value, display)

  return offset + length, value
end

-- Mass Action Reject Reason
b3_equities_binaryentrypoint_sbe_v8_1.mass_action_reject_reason = {}

-- Size: Mass Action Reject Reason
b3_equities_binaryentrypoint_sbe_v8_1.mass_action_reject_reason.size = 1

-- Display: Mass Action Reject Reason
b3_equities_binaryentrypoint_sbe_v8_1.mass_action_reject_reason.display = function(value)
  if value == 0 then
    return "Mass Action Reject Reason: Mass Action Not Supported (0)"
  end
  if value == 8 then
    return "Mass Action Reject Reason: Invalid Or Unknown Market Segment (8)"
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
b3_equities_binaryentrypoint_sbe_v8_1.mass_action_reject_reason.dissect = function(buffer, offset, packet, parent)
  local length = b3_equities_binaryentrypoint_sbe_v8_1.mass_action_reject_reason.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = b3_equities_binaryentrypoint_sbe_v8_1.mass_action_reject_reason.display(value, buffer, offset, packet, parent)

  parent:add(omi_b3_equities_binaryentrypoint_sbe_v8_1.fields.mass_action_reject_reason, range, value, display)

  return offset + length, value
end

-- Mass Action Response
b3_equities_binaryentrypoint_sbe_v8_1.mass_action_response = {}

-- Size: Mass Action Response
b3_equities_binaryentrypoint_sbe_v8_1.mass_action_response.size = 1

-- Display: Mass Action Response
b3_equities_binaryentrypoint_sbe_v8_1.mass_action_response.display = function(value)
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
b3_equities_binaryentrypoint_sbe_v8_1.mass_action_response.dissect = function(buffer, offset, packet, parent)
  local length = b3_equities_binaryentrypoint_sbe_v8_1.mass_action_response.size
  local range = buffer(offset, length)

  -- parse as byte
  local value = range:uint()

  -- check if value is non zero
  if value ~= 0 then
    value = range:string()
  end

  local display = b3_equities_binaryentrypoint_sbe_v8_1.mass_action_response.display(value, buffer, offset, packet, parent)

  parent:add(omi_b3_equities_binaryentrypoint_sbe_v8_1.fields.mass_action_response, range, value, display)

  return offset + length, value
end

-- Transact Time
b3_equities_binaryentrypoint_sbe_v8_1.transact_time = {}

-- Size: Transact Time
b3_equities_binaryentrypoint_sbe_v8_1.transact_time.size = 8

-- Display: Transact Time
b3_equities_binaryentrypoint_sbe_v8_1.transact_time.display = function(value)
  -- Parse unix timestamp
  local seconds = math.floor(value:tonumber()/1000000000)
  local nanoseconds = value:tonumber()%1000000000

  return "Transact Time: "..os.date("%x %H:%M:%S.", seconds)..string.format("%09d", nanoseconds)
end

-- Dissect: Transact Time
b3_equities_binaryentrypoint_sbe_v8_1.transact_time.dissect = function(buffer, offset, packet, parent)
  local length = b3_equities_binaryentrypoint_sbe_v8_1.transact_time.size
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = b3_equities_binaryentrypoint_sbe_v8_1.transact_time.display(value, buffer, offset, packet, parent)

  parent:add(omi_b3_equities_binaryentrypoint_sbe_v8_1.fields.transact_time, range, value, display)

  return offset + length, value
end

-- Mass Action Report Id
b3_equities_binaryentrypoint_sbe_v8_1.mass_action_report_id = {}

-- Size: Mass Action Report Id
b3_equities_binaryentrypoint_sbe_v8_1.mass_action_report_id.size = 8

-- Display: Mass Action Report Id
b3_equities_binaryentrypoint_sbe_v8_1.mass_action_report_id.display = function(value)
  return "Mass Action Report Id: "..value
end

-- Dissect: Mass Action Report Id
b3_equities_binaryentrypoint_sbe_v8_1.mass_action_report_id.dissect = function(buffer, offset, packet, parent)
  local length = b3_equities_binaryentrypoint_sbe_v8_1.mass_action_report_id.size
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = b3_equities_binaryentrypoint_sbe_v8_1.mass_action_report_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_b3_equities_binaryentrypoint_sbe_v8_1.fields.mass_action_report_id, range, value, display)

  return offset + length, value
end

-- ClOrdId
b3_equities_binaryentrypoint_sbe_v8_1.clordid = {}

-- Size: ClOrdId
b3_equities_binaryentrypoint_sbe_v8_1.clordid.size = 8

-- Display: ClOrdId
b3_equities_binaryentrypoint_sbe_v8_1.clordid.display = function(value)
  return "ClOrdId: "..value
end

-- Dissect: ClOrdId
b3_equities_binaryentrypoint_sbe_v8_1.clordid.dissect = function(buffer, offset, packet, parent)
  local length = b3_equities_binaryentrypoint_sbe_v8_1.clordid.size
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = b3_equities_binaryentrypoint_sbe_v8_1.clordid.display(value, buffer, offset, packet, parent)

  parent:add(omi_b3_equities_binaryentrypoint_sbe_v8_1.fields.clordid, range, value, display)

  return offset + length, value
end

-- Mass Action Scope
b3_equities_binaryentrypoint_sbe_v8_1.mass_action_scope = {}

-- Size: Mass Action Scope
b3_equities_binaryentrypoint_sbe_v8_1.mass_action_scope.size = 1

-- Display: Mass Action Scope
b3_equities_binaryentrypoint_sbe_v8_1.mass_action_scope.display = function(value)
  if value == 6 then
    return "Mass Action Scope: All Orders For A Trading Session (6)"
  end
  if value == 0 then
    return "Mass Action Scope: No Value"
  end

  return "Mass Action Scope: Unknown("..value..")"
end

-- Dissect: Mass Action Scope
b3_equities_binaryentrypoint_sbe_v8_1.mass_action_scope.dissect = function(buffer, offset, packet, parent)
  local length = b3_equities_binaryentrypoint_sbe_v8_1.mass_action_scope.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = b3_equities_binaryentrypoint_sbe_v8_1.mass_action_scope.display(value, buffer, offset, packet, parent)

  parent:add(omi_b3_equities_binaryentrypoint_sbe_v8_1.fields.mass_action_scope, range, value, display)

  return offset + length, value
end

-- Mass Action Type
b3_equities_binaryentrypoint_sbe_v8_1.mass_action_type = {}

-- Size: Mass Action Type
b3_equities_binaryentrypoint_sbe_v8_1.mass_action_type.size = 1

-- Display: Mass Action Type
b3_equities_binaryentrypoint_sbe_v8_1.mass_action_type.display = function(value)
  if value == 2 then
    return "Mass Action Type: Release Orders From Suspension (2)"
  end
  if value == 3 then
    return "Mass Action Type: Cancel Orders (3)"
  end
  if value == 4 then
    return "Mass Action Type: Cancel And Suspend Orders (4)"
  end

  return "Mass Action Type: Unknown("..value..")"
end

-- Dissect: Mass Action Type
b3_equities_binaryentrypoint_sbe_v8_1.mass_action_type.dissect = function(buffer, offset, packet, parent)
  local length = b3_equities_binaryentrypoint_sbe_v8_1.mass_action_type.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = b3_equities_binaryentrypoint_sbe_v8_1.mass_action_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_b3_equities_binaryentrypoint_sbe_v8_1.fields.mass_action_type, range, value, display)

  return offset + length, value
end

-- Padding
b3_equities_binaryentrypoint_sbe_v8_1.padding = {}

-- Size: Padding
b3_equities_binaryentrypoint_sbe_v8_1.padding.size = 1

-- Display: Padding
b3_equities_binaryentrypoint_sbe_v8_1.padding.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Padding: No Value"
  end

  return "Padding: "..value
end

-- Dissect: Padding
b3_equities_binaryentrypoint_sbe_v8_1.padding.dissect = function(buffer, offset, packet, parent)
  local length = b3_equities_binaryentrypoint_sbe_v8_1.padding.size
  local range = buffer(offset, length)

  -- parse as byte
  local value = range:uint()

  -- check if value is non zero
  if value ~= 0 then
    value = range:string()
  end

  local display = b3_equities_binaryentrypoint_sbe_v8_1.padding.display(value, buffer, offset, packet, parent)

  parent:add(omi_b3_equities_binaryentrypoint_sbe_v8_1.fields.padding, range, value, display)

  return offset + length, value
end

-- Poss Resend
b3_equities_binaryentrypoint_sbe_v8_1.poss_resend = {}

-- Size: Poss Resend
b3_equities_binaryentrypoint_sbe_v8_1.poss_resend.size = 1

-- Display: Poss Resend
b3_equities_binaryentrypoint_sbe_v8_1.poss_resend.display = function(value)
  return "Poss Resend: "..value
end

-- Dissect: Poss Resend
b3_equities_binaryentrypoint_sbe_v8_1.poss_resend.dissect = function(buffer, offset, packet, parent)
  local length = b3_equities_binaryentrypoint_sbe_v8_1.poss_resend.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = b3_equities_binaryentrypoint_sbe_v8_1.poss_resend.display(value, buffer, offset, packet, parent)

  parent:add(omi_b3_equities_binaryentrypoint_sbe_v8_1.fields.poss_resend, range, value, display)

  return offset + length, value
end

-- Sending Time
b3_equities_binaryentrypoint_sbe_v8_1.sending_time = {}

-- Size: Sending Time
b3_equities_binaryentrypoint_sbe_v8_1.sending_time.size = 8

-- Display: Sending Time
b3_equities_binaryentrypoint_sbe_v8_1.sending_time.display = function(value)
  -- Check null sentinel value
  if value == UInt64(0x00000000, 0x00000000) then
    return "Sending Time: No Value"
  end
  -- Parse unix timestamp
  local seconds = math.floor(value:tonumber()/1000000000)
  local nanoseconds = value:tonumber()%1000000000

  return "Sending Time: "..os.date("%x %H:%M:%S.", seconds)..string.format("%09d", nanoseconds)
end

-- Dissect: Sending Time
b3_equities_binaryentrypoint_sbe_v8_1.sending_time.dissect = function(buffer, offset, packet, parent)
  local length = b3_equities_binaryentrypoint_sbe_v8_1.sending_time.size
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = b3_equities_binaryentrypoint_sbe_v8_1.sending_time.display(value, buffer, offset, packet, parent)

  parent:add(omi_b3_equities_binaryentrypoint_sbe_v8_1.fields.sending_time, range, value, display)

  return offset + length, value
end

-- Msg Seq Num
b3_equities_binaryentrypoint_sbe_v8_1.msg_seq_num = {}

-- Size: Msg Seq Num
b3_equities_binaryentrypoint_sbe_v8_1.msg_seq_num.size = 4

-- Display: Msg Seq Num
b3_equities_binaryentrypoint_sbe_v8_1.msg_seq_num.display = function(value)
  return "Msg Seq Num: "..value
end

-- Dissect: Msg Seq Num
b3_equities_binaryentrypoint_sbe_v8_1.msg_seq_num.dissect = function(buffer, offset, packet, parent)
  local length = b3_equities_binaryentrypoint_sbe_v8_1.msg_seq_num.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = b3_equities_binaryentrypoint_sbe_v8_1.msg_seq_num.display(value, buffer, offset, packet, parent)

  parent:add(omi_b3_equities_binaryentrypoint_sbe_v8_1.fields.msg_seq_num, range, value, display)

  return offset + length, value
end

-- Session Id
b3_equities_binaryentrypoint_sbe_v8_1.session_id = {}

-- Size: Session Id
b3_equities_binaryentrypoint_sbe_v8_1.session_id.size = 4

-- Display: Session Id
b3_equities_binaryentrypoint_sbe_v8_1.session_id.display = function(value)
  return "Session Id: "..value
end

-- Dissect: Session Id
b3_equities_binaryentrypoint_sbe_v8_1.session_id.dissect = function(buffer, offset, packet, parent)
  local length = b3_equities_binaryentrypoint_sbe_v8_1.session_id.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = b3_equities_binaryentrypoint_sbe_v8_1.session_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_b3_equities_binaryentrypoint_sbe_v8_1.fields.session_id, range, value, display)

  return offset + length, value
end

-- Outbound Business Header
b3_equities_binaryentrypoint_sbe_v8_1.outbound_business_header = {}

-- Calculate size of: Outbound Business Header
b3_equities_binaryentrypoint_sbe_v8_1.outbound_business_header.size = function(buffer, offset)
  local index = 0

  index = index + b3_equities_binaryentrypoint_sbe_v8_1.session_id.size

  index = index + b3_equities_binaryentrypoint_sbe_v8_1.msg_seq_num.size

  index = index + b3_equities_binaryentrypoint_sbe_v8_1.sending_time.size

  index = index + b3_equities_binaryentrypoint_sbe_v8_1.poss_resend.size

  index = index + b3_equities_binaryentrypoint_sbe_v8_1.padding.size

  return index
end

-- Display: Outbound Business Header
b3_equities_binaryentrypoint_sbe_v8_1.outbound_business_header.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Outbound Business Header
b3_equities_binaryentrypoint_sbe_v8_1.outbound_business_header.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Session Id: 4 Byte Unsigned Fixed Width Integer
  index, session_id = b3_equities_binaryentrypoint_sbe_v8_1.session_id.dissect(buffer, index, packet, parent)

  -- Msg Seq Num: 4 Byte Unsigned Fixed Width Integer
  index, msg_seq_num = b3_equities_binaryentrypoint_sbe_v8_1.msg_seq_num.dissect(buffer, index, packet, parent)

  -- Sending Time: 8 Byte Unsigned Fixed Width Integer Nullable
  index, sending_time = b3_equities_binaryentrypoint_sbe_v8_1.sending_time.dissect(buffer, index, packet, parent)

  -- Poss Resend: 1 Byte Unsigned Fixed Width Integer
  index, poss_resend = b3_equities_binaryentrypoint_sbe_v8_1.poss_resend.dissect(buffer, index, packet, parent)

  -- Padding: 1 Byte Ascii String
  index, padding = b3_equities_binaryentrypoint_sbe_v8_1.padding.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Outbound Business Header
b3_equities_binaryentrypoint_sbe_v8_1.outbound_business_header.dissect = function(buffer, offset, packet, parent)
  if show.outbound_business_header then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_b3_equities_binaryentrypoint_sbe_v8_1.fields.outbound_business_header, buffer(offset, 0))
    local index = b3_equities_binaryentrypoint_sbe_v8_1.outbound_business_header.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = b3_equities_binaryentrypoint_sbe_v8_1.outbound_business_header.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return b3_equities_binaryentrypoint_sbe_v8_1.outbound_business_header.fields(buffer, offset, packet, parent)
  end
end

-- Order Mass Action Report Message
b3_equities_binaryentrypoint_sbe_v8_1.order_mass_action_report_message = {}

-- Calculate size of: Order Mass Action Report Message
b3_equities_binaryentrypoint_sbe_v8_1.order_mass_action_report_message.size = function(buffer, offset)
  local index = 0

  index = index + b3_equities_binaryentrypoint_sbe_v8_1.outbound_business_header.size(buffer, offset + index)

  index = index + b3_equities_binaryentrypoint_sbe_v8_1.mass_action_type.size

  index = index + b3_equities_binaryentrypoint_sbe_v8_1.mass_action_scope.size

  index = index + b3_equities_binaryentrypoint_sbe_v8_1.clordid.size

  index = index + b3_equities_binaryentrypoint_sbe_v8_1.mass_action_report_id.size

  index = index + b3_equities_binaryentrypoint_sbe_v8_1.transact_time.size

  index = index + b3_equities_binaryentrypoint_sbe_v8_1.mass_action_response.size

  index = index + b3_equities_binaryentrypoint_sbe_v8_1.mass_action_reject_reason.size

  index = index + b3_equities_binaryentrypoint_sbe_v8_1.mass_cancel_restatement_reason.size

  index = index + b3_equities_binaryentrypoint_sbe_v8_1.ordtagid.size

  index = index + b3_equities_binaryentrypoint_sbe_v8_1.side_optional.size

  index = index + b3_equities_binaryentrypoint_sbe_v8_1.offset_49_padding_1.size

  index = index + b3_equities_binaryentrypoint_sbe_v8_1.asset.size

  index = index + b3_equities_binaryentrypoint_sbe_v8_1.security_id_optional.size

  index = index + b3_equities_binaryentrypoint_sbe_v8_1.investor_id.size(buffer, offset + index)

  index = index + b3_equities_binaryentrypoint_sbe_v8_1.text.size(buffer, offset + index)

  return index
end

-- Display: Order Mass Action Report Message
b3_equities_binaryentrypoint_sbe_v8_1.order_mass_action_report_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Order Mass Action Report Message
b3_equities_binaryentrypoint_sbe_v8_1.order_mass_action_report_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Outbound Business Header: Struct of 5 fields
  index, outbound_business_header = b3_equities_binaryentrypoint_sbe_v8_1.outbound_business_header.dissect(buffer, index, packet, parent)

  -- Mass Action Type: 1 Byte Unsigned Fixed Width Integer Enum with 3 values
  index, mass_action_type = b3_equities_binaryentrypoint_sbe_v8_1.mass_action_type.dissect(buffer, index, packet, parent)

  -- Mass Action Scope: 1 Byte Unsigned Fixed Width Integer Enum with 2 values
  index, mass_action_scope = b3_equities_binaryentrypoint_sbe_v8_1.mass_action_scope.dissect(buffer, index, packet, parent)

  -- ClOrdId: 8 Byte Unsigned Fixed Width Integer
  index, clordid = b3_equities_binaryentrypoint_sbe_v8_1.clordid.dissect(buffer, index, packet, parent)

  -- Mass Action Report Id: 8 Byte Unsigned Fixed Width Integer
  index, mass_action_report_id = b3_equities_binaryentrypoint_sbe_v8_1.mass_action_report_id.dissect(buffer, index, packet, parent)

  -- Transact Time: 8 Byte Unsigned Fixed Width Integer
  index, transact_time = b3_equities_binaryentrypoint_sbe_v8_1.transact_time.dissect(buffer, index, packet, parent)

  -- Mass Action Response: 1 Byte Ascii String Enum with 2 values
  index, mass_action_response = b3_equities_binaryentrypoint_sbe_v8_1.mass_action_response.dissect(buffer, index, packet, parent)

  -- Mass Action Reject Reason: 1 Byte Unsigned Fixed Width Integer Enum with 4 values
  index, mass_action_reject_reason = b3_equities_binaryentrypoint_sbe_v8_1.mass_action_reject_reason.dissect(buffer, index, packet, parent)

  -- Mass Cancel Restatement Reason: 1 Byte Unsigned Fixed Width Integer Enum with 3 values
  index, mass_cancel_restatement_reason = b3_equities_binaryentrypoint_sbe_v8_1.mass_cancel_restatement_reason.dissect(buffer, index, packet, parent)

  -- OrdTagId: 1 Byte Unsigned Fixed Width Integer
  index, ordtagid = b3_equities_binaryentrypoint_sbe_v8_1.ordtagid.dissect(buffer, index, packet, parent)

  -- Side Optional: 1 Byte Ascii String Enum with 3 values
  index, side_optional = b3_equities_binaryentrypoint_sbe_v8_1.side_optional.dissect(buffer, index, packet, parent)

  -- Offset 49 Padding 1: 1 Byte
  index, offset_49_padding_1 = b3_equities_binaryentrypoint_sbe_v8_1.offset_49_padding_1.dissect(buffer, index, packet, parent)

  -- Asset: 6 Byte Ascii String
  index, asset = b3_equities_binaryentrypoint_sbe_v8_1.asset.dissect(buffer, index, packet, parent)

  -- Security Id Optional: 8 Byte Unsigned Fixed Width Integer Nullable
  index, security_id_optional = b3_equities_binaryentrypoint_sbe_v8_1.security_id_optional.dissect(buffer, index, packet, parent)

  -- Investor Id: Struct of 2 fields
  index, investor_id = b3_equities_binaryentrypoint_sbe_v8_1.investor_id.dissect(buffer, index, packet, parent)

  -- Text: Struct of 2 fields
  index, text = b3_equities_binaryentrypoint_sbe_v8_1.text.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Order Mass Action Report Message
b3_equities_binaryentrypoint_sbe_v8_1.order_mass_action_report_message.dissect = function(buffer, offset, packet, parent)
  -- Optionally add dynamic struct element to protocol tree
  if show.order_mass_action_report_message then
    local length = b3_equities_binaryentrypoint_sbe_v8_1.order_mass_action_report_message.size(buffer, offset)
    local range = buffer(offset, length)
    local display = b3_equities_binaryentrypoint_sbe_v8_1.order_mass_action_report_message.display(buffer, packet, parent)
    parent = parent:add(omi_b3_equities_binaryentrypoint_sbe_v8_1.fields.order_mass_action_report_message, range, display)
  end

  return b3_equities_binaryentrypoint_sbe_v8_1.order_mass_action_report_message.fields(buffer, offset, packet, parent)
end

-- Offset 31 Padding 1
b3_equities_binaryentrypoint_sbe_v8_1.offset_31_padding_1 = {}

-- Size: Offset 31 Padding 1
b3_equities_binaryentrypoint_sbe_v8_1.offset_31_padding_1.size = 1

-- Display: Offset 31 Padding 1
b3_equities_binaryentrypoint_sbe_v8_1.offset_31_padding_1.display = function(value)
  return "Offset 31 Padding 1: "..value
end

-- Dissect: Offset 31 Padding 1
b3_equities_binaryentrypoint_sbe_v8_1.offset_31_padding_1.dissect = function(buffer, offset, packet, parent)
  local length = b3_equities_binaryentrypoint_sbe_v8_1.offset_31_padding_1.size
  local range = buffer(offset, length)
  local value = range:bytes():tohex(false, " ")
  local display = b3_equities_binaryentrypoint_sbe_v8_1.offset_31_padding_1.display(value, buffer, offset, packet, parent)

  parent:add(omi_b3_equities_binaryentrypoint_sbe_v8_1.fields.offset_31_padding_1, range, value, display)

  return offset + length, value
end

-- Market Segment Id
b3_equities_binaryentrypoint_sbe_v8_1.market_segment_id = {}

-- Size: Market Segment Id
b3_equities_binaryentrypoint_sbe_v8_1.market_segment_id.size = 1

-- Display: Market Segment Id
b3_equities_binaryentrypoint_sbe_v8_1.market_segment_id.display = function(value)
  return "Market Segment Id: "..value
end

-- Dissect: Market Segment Id
b3_equities_binaryentrypoint_sbe_v8_1.market_segment_id.dissect = function(buffer, offset, packet, parent)
  local length = b3_equities_binaryentrypoint_sbe_v8_1.market_segment_id.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = b3_equities_binaryentrypoint_sbe_v8_1.market_segment_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_b3_equities_binaryentrypoint_sbe_v8_1.fields.market_segment_id, range, value, display)

  return offset + length, value
end

-- Inbound Business Header
b3_equities_binaryentrypoint_sbe_v8_1.inbound_business_header = {}

-- Calculate size of: Inbound Business Header
b3_equities_binaryentrypoint_sbe_v8_1.inbound_business_header.size = function(buffer, offset)
  local index = 0

  index = index + b3_equities_binaryentrypoint_sbe_v8_1.session_id.size

  index = index + b3_equities_binaryentrypoint_sbe_v8_1.msg_seq_num.size

  index = index + b3_equities_binaryentrypoint_sbe_v8_1.sending_time.size

  index = index + b3_equities_binaryentrypoint_sbe_v8_1.market_segment_id.size

  index = index + b3_equities_binaryentrypoint_sbe_v8_1.padding.size

  return index
end

-- Display: Inbound Business Header
b3_equities_binaryentrypoint_sbe_v8_1.inbound_business_header.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Inbound Business Header
b3_equities_binaryentrypoint_sbe_v8_1.inbound_business_header.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Session Id: 4 Byte Unsigned Fixed Width Integer
  index, session_id = b3_equities_binaryentrypoint_sbe_v8_1.session_id.dissect(buffer, index, packet, parent)

  -- Msg Seq Num: 4 Byte Unsigned Fixed Width Integer
  index, msg_seq_num = b3_equities_binaryentrypoint_sbe_v8_1.msg_seq_num.dissect(buffer, index, packet, parent)

  -- Sending Time: 8 Byte Unsigned Fixed Width Integer Nullable
  index, sending_time = b3_equities_binaryentrypoint_sbe_v8_1.sending_time.dissect(buffer, index, packet, parent)

  -- Market Segment Id: 1 Byte Unsigned Fixed Width Integer
  index, market_segment_id = b3_equities_binaryentrypoint_sbe_v8_1.market_segment_id.dissect(buffer, index, packet, parent)

  -- Padding: 1 Byte Ascii String
  index, padding = b3_equities_binaryentrypoint_sbe_v8_1.padding.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Inbound Business Header
b3_equities_binaryentrypoint_sbe_v8_1.inbound_business_header.dissect = function(buffer, offset, packet, parent)
  if show.inbound_business_header then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_b3_equities_binaryentrypoint_sbe_v8_1.fields.inbound_business_header, buffer(offset, 0))
    local index = b3_equities_binaryentrypoint_sbe_v8_1.inbound_business_header.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = b3_equities_binaryentrypoint_sbe_v8_1.inbound_business_header.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return b3_equities_binaryentrypoint_sbe_v8_1.inbound_business_header.fields(buffer, offset, packet, parent)
  end
end

-- Order Mass Action Request Message
b3_equities_binaryentrypoint_sbe_v8_1.order_mass_action_request_message = {}

-- Calculate size of: Order Mass Action Request Message
b3_equities_binaryentrypoint_sbe_v8_1.order_mass_action_request_message.size = function(buffer, offset)
  local index = 0

  index = index + b3_equities_binaryentrypoint_sbe_v8_1.inbound_business_header.size(buffer, offset + index)

  index = index + b3_equities_binaryentrypoint_sbe_v8_1.mass_action_type.size

  index = index + b3_equities_binaryentrypoint_sbe_v8_1.mass_action_scope.size

  index = index + b3_equities_binaryentrypoint_sbe_v8_1.clordid.size

  index = index + b3_equities_binaryentrypoint_sbe_v8_1.mass_cancel_restatement_reason.size

  index = index + b3_equities_binaryentrypoint_sbe_v8_1.ordtagid.size

  index = index + b3_equities_binaryentrypoint_sbe_v8_1.side_optional.size

  index = index + b3_equities_binaryentrypoint_sbe_v8_1.offset_31_padding_1.size

  index = index + b3_equities_binaryentrypoint_sbe_v8_1.asset.size

  index = index + b3_equities_binaryentrypoint_sbe_v8_1.security_id_optional.size

  index = index + b3_equities_binaryentrypoint_sbe_v8_1.investor_id.size(buffer, offset + index)

  return index
end

-- Display: Order Mass Action Request Message
b3_equities_binaryentrypoint_sbe_v8_1.order_mass_action_request_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Order Mass Action Request Message
b3_equities_binaryentrypoint_sbe_v8_1.order_mass_action_request_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Inbound Business Header: Struct of 5 fields
  index, inbound_business_header = b3_equities_binaryentrypoint_sbe_v8_1.inbound_business_header.dissect(buffer, index, packet, parent)

  -- Mass Action Type: 1 Byte Unsigned Fixed Width Integer Enum with 3 values
  index, mass_action_type = b3_equities_binaryentrypoint_sbe_v8_1.mass_action_type.dissect(buffer, index, packet, parent)

  -- Mass Action Scope: 1 Byte Unsigned Fixed Width Integer Enum with 2 values
  index, mass_action_scope = b3_equities_binaryentrypoint_sbe_v8_1.mass_action_scope.dissect(buffer, index, packet, parent)

  -- ClOrdId: 8 Byte Unsigned Fixed Width Integer
  index, clordid = b3_equities_binaryentrypoint_sbe_v8_1.clordid.dissect(buffer, index, packet, parent)

  -- Mass Cancel Restatement Reason: 1 Byte Unsigned Fixed Width Integer Enum with 3 values
  index, mass_cancel_restatement_reason = b3_equities_binaryentrypoint_sbe_v8_1.mass_cancel_restatement_reason.dissect(buffer, index, packet, parent)

  -- OrdTagId: 1 Byte Unsigned Fixed Width Integer
  index, ordtagid = b3_equities_binaryentrypoint_sbe_v8_1.ordtagid.dissect(buffer, index, packet, parent)

  -- Side Optional: 1 Byte Ascii String Enum with 3 values
  index, side_optional = b3_equities_binaryentrypoint_sbe_v8_1.side_optional.dissect(buffer, index, packet, parent)

  -- Offset 31 Padding 1: 1 Byte
  index, offset_31_padding_1 = b3_equities_binaryentrypoint_sbe_v8_1.offset_31_padding_1.dissect(buffer, index, packet, parent)

  -- Asset: 6 Byte Ascii String
  index, asset = b3_equities_binaryentrypoint_sbe_v8_1.asset.dissect(buffer, index, packet, parent)

  -- Security Id Optional: 8 Byte Unsigned Fixed Width Integer Nullable
  index, security_id_optional = b3_equities_binaryentrypoint_sbe_v8_1.security_id_optional.dissect(buffer, index, packet, parent)

  -- Investor Id: Struct of 2 fields
  index, investor_id = b3_equities_binaryentrypoint_sbe_v8_1.investor_id.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Order Mass Action Request Message
b3_equities_binaryentrypoint_sbe_v8_1.order_mass_action_request_message.dissect = function(buffer, offset, packet, parent)
  if show.order_mass_action_request_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_b3_equities_binaryentrypoint_sbe_v8_1.fields.order_mass_action_request_message, buffer(offset, 0))
    local index = b3_equities_binaryentrypoint_sbe_v8_1.order_mass_action_request_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = b3_equities_binaryentrypoint_sbe_v8_1.order_mass_action_request_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return b3_equities_binaryentrypoint_sbe_v8_1.order_mass_action_request_message.fields(buffer, offset, packet, parent)
  end
end

-- Entering Trader
b3_equities_binaryentrypoint_sbe_v8_1.entering_trader = {}

-- Size: Entering Trader
b3_equities_binaryentrypoint_sbe_v8_1.entering_trader.size = 5

-- Display: Entering Trader
b3_equities_binaryentrypoint_sbe_v8_1.entering_trader.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Entering Trader: No Value"
  end

  return "Entering Trader: "..value
end

-- Dissect: Entering Trader
b3_equities_binaryentrypoint_sbe_v8_1.entering_trader.dissect = function(buffer, offset, packet, parent)
  local length = b3_equities_binaryentrypoint_sbe_v8_1.entering_trader.size
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

  local display = b3_equities_binaryentrypoint_sbe_v8_1.entering_trader.display(value, buffer, offset, packet, parent)

  parent:add(omi_b3_equities_binaryentrypoint_sbe_v8_1.fields.entering_trader, range, value, display)

  return offset + length, value
end

-- Sender Location
b3_equities_binaryentrypoint_sbe_v8_1.sender_location = {}

-- Size: Sender Location
b3_equities_binaryentrypoint_sbe_v8_1.sender_location.size = 10

-- Display: Sender Location
b3_equities_binaryentrypoint_sbe_v8_1.sender_location.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Sender Location: No Value"
  end

  return "Sender Location: "..value
end

-- Dissect: Sender Location
b3_equities_binaryentrypoint_sbe_v8_1.sender_location.dissect = function(buffer, offset, packet, parent)
  local length = b3_equities_binaryentrypoint_sbe_v8_1.sender_location.size
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

  local display = b3_equities_binaryentrypoint_sbe_v8_1.sender_location.display(value, buffer, offset, packet, parent)

  parent:add(omi_b3_equities_binaryentrypoint_sbe_v8_1.fields.sender_location, range, value, display)

  return offset + length, value
end

-- Side
b3_equities_binaryentrypoint_sbe_v8_1.side = {}

-- Size: Side
b3_equities_binaryentrypoint_sbe_v8_1.side.size = 1

-- Display: Side
b3_equities_binaryentrypoint_sbe_v8_1.side.display = function(value)
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
b3_equities_binaryentrypoint_sbe_v8_1.side.dissect = function(buffer, offset, packet, parent)
  local length = b3_equities_binaryentrypoint_sbe_v8_1.side.size
  local range = buffer(offset, length)

  -- parse as byte
  local value = range:uint()

  -- check if value is non zero
  if value ~= 0 then
    value = range:string()
  end

  local display = b3_equities_binaryentrypoint_sbe_v8_1.side.display(value, buffer, offset, packet, parent)

  parent:add(omi_b3_equities_binaryentrypoint_sbe_v8_1.fields.side, range, value, display)

  return offset + length, value
end

-- Trade Date Optional
b3_equities_binaryentrypoint_sbe_v8_1.trade_date_optional = {}

-- Size: Trade Date Optional
b3_equities_binaryentrypoint_sbe_v8_1.trade_date_optional.size = 2

-- Display: Trade Date Optional
b3_equities_binaryentrypoint_sbe_v8_1.trade_date_optional.display = function(value)
  return "Trade Date Optional: "..value
end

-- Dissect: Trade Date Optional
b3_equities_binaryentrypoint_sbe_v8_1.trade_date_optional.dissect = function(buffer, offset, packet, parent)
  local length = b3_equities_binaryentrypoint_sbe_v8_1.trade_date_optional.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = b3_equities_binaryentrypoint_sbe_v8_1.trade_date_optional.display(value, buffer, offset, packet, parent)

  parent:add(omi_b3_equities_binaryentrypoint_sbe_v8_1.fields.trade_date_optional, range, value, display)

  return offset + length, value
end

-- Alloc Status
b3_equities_binaryentrypoint_sbe_v8_1.alloc_status = {}

-- Size: Alloc Status
b3_equities_binaryentrypoint_sbe_v8_1.alloc_status.size = 1

-- Display: Alloc Status
b3_equities_binaryentrypoint_sbe_v8_1.alloc_status.display = function(value)
  -- Check if field has value
  if value == nil or value == 0 then
    return "Alloc Status: No Value"
  end

  if value == "0" then
    return "Alloc Status: Accepted (0)"
  end
  if value == "5" then
    return "Alloc Status: Rejected By Intermediary (5)"
  end

  return "Alloc Status: Unknown("..value..")"
end

-- Dissect: Alloc Status
b3_equities_binaryentrypoint_sbe_v8_1.alloc_status.dissect = function(buffer, offset, packet, parent)
  local length = b3_equities_binaryentrypoint_sbe_v8_1.alloc_status.size
  local range = buffer(offset, length)

  -- parse as byte
  local value = range:uint()

  -- check if value is non zero
  if value ~= 0 then
    value = range:string()
  end

  local display = b3_equities_binaryentrypoint_sbe_v8_1.alloc_status.display(value, buffer, offset, packet, parent)

  parent:add(omi_b3_equities_binaryentrypoint_sbe_v8_1.fields.alloc_status, range, value, display)

  return offset + length, value
end

-- Quantity
b3_equities_binaryentrypoint_sbe_v8_1.quantity = {}

-- Size: Quantity
b3_equities_binaryentrypoint_sbe_v8_1.quantity.size = 8

-- Display: Quantity
b3_equities_binaryentrypoint_sbe_v8_1.quantity.display = function(value)
  return "Quantity: "..value
end

-- Dissect: Quantity
b3_equities_binaryentrypoint_sbe_v8_1.quantity.dissect = function(buffer, offset, packet, parent)
  local length = b3_equities_binaryentrypoint_sbe_v8_1.quantity.size
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = b3_equities_binaryentrypoint_sbe_v8_1.quantity.display(value, buffer, offset, packet, parent)

  parent:add(omi_b3_equities_binaryentrypoint_sbe_v8_1.fields.quantity, range, value, display)

  return offset + length, value
end

-- Alloc Rej Code
b3_equities_binaryentrypoint_sbe_v8_1.alloc_rej_code = {}

-- Size: Alloc Rej Code
b3_equities_binaryentrypoint_sbe_v8_1.alloc_rej_code.size = 4

-- Display: Alloc Rej Code
b3_equities_binaryentrypoint_sbe_v8_1.alloc_rej_code.display = function(value)
  return "Alloc Rej Code: "..value
end

-- Dissect: Alloc Rej Code
b3_equities_binaryentrypoint_sbe_v8_1.alloc_rej_code.dissect = function(buffer, offset, packet, parent)
  local length = b3_equities_binaryentrypoint_sbe_v8_1.alloc_rej_code.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = b3_equities_binaryentrypoint_sbe_v8_1.alloc_rej_code.display(value, buffer, offset, packet, parent)

  parent:add(omi_b3_equities_binaryentrypoint_sbe_v8_1.fields.alloc_rej_code, range, value, display)

  return offset + length, value
end

-- Alloc No Orders Type
b3_equities_binaryentrypoint_sbe_v8_1.alloc_no_orders_type = {}

-- Size: Alloc No Orders Type
b3_equities_binaryentrypoint_sbe_v8_1.alloc_no_orders_type.size = 1

-- Display: Alloc No Orders Type
b3_equities_binaryentrypoint_sbe_v8_1.alloc_no_orders_type.display = function(value)
  -- Check if field has value
  if value == nil or value == 0 then
    return "Alloc No Orders Type: No Value"
  end

  if value == "0" then
    return "Alloc No Orders Type: Not Specified (0)"
  end

  return "Alloc No Orders Type: Unknown("..value..")"
end

-- Dissect: Alloc No Orders Type
b3_equities_binaryentrypoint_sbe_v8_1.alloc_no_orders_type.dissect = function(buffer, offset, packet, parent)
  local length = b3_equities_binaryentrypoint_sbe_v8_1.alloc_no_orders_type.size
  local range = buffer(offset, length)

  -- parse as byte
  local value = range:uint()

  -- check if value is non zero
  if value ~= 0 then
    value = range:string()
  end

  local display = b3_equities_binaryentrypoint_sbe_v8_1.alloc_no_orders_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_b3_equities_binaryentrypoint_sbe_v8_1.fields.alloc_no_orders_type, range, value, display)

  return offset + length, value
end

-- Alloc Report Type
b3_equities_binaryentrypoint_sbe_v8_1.alloc_report_type = {}

-- Size: Alloc Report Type
b3_equities_binaryentrypoint_sbe_v8_1.alloc_report_type.size = 1

-- Display: Alloc Report Type
b3_equities_binaryentrypoint_sbe_v8_1.alloc_report_type.display = function(value)
  -- Check if field has value
  if value == nil or value == 0 then
    return "Alloc Report Type: No Value"
  end

  if value == "8" then
    return "Alloc Report Type: Request To Intermediary (8)"
  end

  return "Alloc Report Type: Unknown("..value..")"
end

-- Dissect: Alloc Report Type
b3_equities_binaryentrypoint_sbe_v8_1.alloc_report_type.dissect = function(buffer, offset, packet, parent)
  local length = b3_equities_binaryentrypoint_sbe_v8_1.alloc_report_type.size
  local range = buffer(offset, length)

  -- parse as byte
  local value = range:uint()

  -- check if value is non zero
  if value ~= 0 then
    value = range:string()
  end

  local display = b3_equities_binaryentrypoint_sbe_v8_1.alloc_report_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_b3_equities_binaryentrypoint_sbe_v8_1.fields.alloc_report_type, range, value, display)

  return offset + length, value
end

-- Alloc Trans Type
b3_equities_binaryentrypoint_sbe_v8_1.alloc_trans_type = {}

-- Size: Alloc Trans Type
b3_equities_binaryentrypoint_sbe_v8_1.alloc_trans_type.size = 1

-- Display: Alloc Trans Type
b3_equities_binaryentrypoint_sbe_v8_1.alloc_trans_type.display = function(value)
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
b3_equities_binaryentrypoint_sbe_v8_1.alloc_trans_type.dissect = function(buffer, offset, packet, parent)
  local length = b3_equities_binaryentrypoint_sbe_v8_1.alloc_trans_type.size
  local range = buffer(offset, length)

  -- parse as byte
  local value = range:uint()

  -- check if value is non zero
  if value ~= 0 then
    value = range:string()
  end

  local display = b3_equities_binaryentrypoint_sbe_v8_1.alloc_trans_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_b3_equities_binaryentrypoint_sbe_v8_1.fields.alloc_trans_type, range, value, display)

  return offset + length, value
end

-- Alloc Report Id
b3_equities_binaryentrypoint_sbe_v8_1.alloc_report_id = {}

-- Size: Alloc Report Id
b3_equities_binaryentrypoint_sbe_v8_1.alloc_report_id.size = 8

-- Display: Alloc Report Id
b3_equities_binaryentrypoint_sbe_v8_1.alloc_report_id.display = function(value)
  return "Alloc Report Id: "..value
end

-- Dissect: Alloc Report Id
b3_equities_binaryentrypoint_sbe_v8_1.alloc_report_id.dissect = function(buffer, offset, packet, parent)
  local length = b3_equities_binaryentrypoint_sbe_v8_1.alloc_report_id.size
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = b3_equities_binaryentrypoint_sbe_v8_1.alloc_report_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_b3_equities_binaryentrypoint_sbe_v8_1.fields.alloc_report_id, range, value, display)

  return offset + length, value
end

-- Security Id
b3_equities_binaryentrypoint_sbe_v8_1.security_id = {}

-- Size: Security Id
b3_equities_binaryentrypoint_sbe_v8_1.security_id.size = 8

-- Display: Security Id
b3_equities_binaryentrypoint_sbe_v8_1.security_id.display = function(value)
  return "Security Id: "..value
end

-- Dissect: Security Id
b3_equities_binaryentrypoint_sbe_v8_1.security_id.dissect = function(buffer, offset, packet, parent)
  local length = b3_equities_binaryentrypoint_sbe_v8_1.security_id.size
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = b3_equities_binaryentrypoint_sbe_v8_1.security_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_b3_equities_binaryentrypoint_sbe_v8_1.fields.security_id, range, value, display)

  return offset + length, value
end

-- Alloc Id
b3_equities_binaryentrypoint_sbe_v8_1.alloc_id = {}

-- Size: Alloc Id
b3_equities_binaryentrypoint_sbe_v8_1.alloc_id.size = 8

-- Display: Alloc Id
b3_equities_binaryentrypoint_sbe_v8_1.alloc_id.display = function(value)
  return "Alloc Id: "..value
end

-- Dissect: Alloc Id
b3_equities_binaryentrypoint_sbe_v8_1.alloc_id.dissect = function(buffer, offset, packet, parent)
  local length = b3_equities_binaryentrypoint_sbe_v8_1.alloc_id.size
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = b3_equities_binaryentrypoint_sbe_v8_1.alloc_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_b3_equities_binaryentrypoint_sbe_v8_1.fields.alloc_id, range, value, display)

  return offset + length, value
end

-- Allocation Report Message
b3_equities_binaryentrypoint_sbe_v8_1.allocation_report_message = {}

-- Calculate size of: Allocation Report Message
b3_equities_binaryentrypoint_sbe_v8_1.allocation_report_message.size = function(buffer, offset)
  local index = 0

  index = index + b3_equities_binaryentrypoint_sbe_v8_1.outbound_business_header.size(buffer, offset + index)

  index = index + b3_equities_binaryentrypoint_sbe_v8_1.alloc_id.size

  index = index + b3_equities_binaryentrypoint_sbe_v8_1.security_id.size

  index = index + b3_equities_binaryentrypoint_sbe_v8_1.alloc_report_id.size

  index = index + b3_equities_binaryentrypoint_sbe_v8_1.alloc_trans_type.size

  index = index + b3_equities_binaryentrypoint_sbe_v8_1.alloc_report_type.size

  index = index + b3_equities_binaryentrypoint_sbe_v8_1.alloc_no_orders_type.size

  index = index + b3_equities_binaryentrypoint_sbe_v8_1.alloc_rej_code.size

  index = index + b3_equities_binaryentrypoint_sbe_v8_1.quantity.size

  index = index + b3_equities_binaryentrypoint_sbe_v8_1.alloc_status.size

  index = index + b3_equities_binaryentrypoint_sbe_v8_1.trade_date_optional.size

  index = index + b3_equities_binaryentrypoint_sbe_v8_1.transact_time.size

  index = index + b3_equities_binaryentrypoint_sbe_v8_1.side.size

  index = index + b3_equities_binaryentrypoint_sbe_v8_1.sender_location.size

  index = index + b3_equities_binaryentrypoint_sbe_v8_1.entering_trader.size

  return index
end

-- Display: Allocation Report Message
b3_equities_binaryentrypoint_sbe_v8_1.allocation_report_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Allocation Report Message
b3_equities_binaryentrypoint_sbe_v8_1.allocation_report_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Outbound Business Header: Struct of 5 fields
  index, outbound_business_header = b3_equities_binaryentrypoint_sbe_v8_1.outbound_business_header.dissect(buffer, index, packet, parent)

  -- Alloc Id: 8 Byte Unsigned Fixed Width Integer
  index, alloc_id = b3_equities_binaryentrypoint_sbe_v8_1.alloc_id.dissect(buffer, index, packet, parent)

  -- Security Id: 8 Byte Unsigned Fixed Width Integer
  index, security_id = b3_equities_binaryentrypoint_sbe_v8_1.security_id.dissect(buffer, index, packet, parent)

  -- Alloc Report Id: 8 Byte Unsigned Fixed Width Integer
  index, alloc_report_id = b3_equities_binaryentrypoint_sbe_v8_1.alloc_report_id.dissect(buffer, index, packet, parent)

  -- Alloc Trans Type: 1 Byte Ascii String Enum with 2 values
  index, alloc_trans_type = b3_equities_binaryentrypoint_sbe_v8_1.alloc_trans_type.dissect(buffer, index, packet, parent)

  -- Alloc Report Type: 1 Byte Ascii String Enum with 1 values
  index, alloc_report_type = b3_equities_binaryentrypoint_sbe_v8_1.alloc_report_type.dissect(buffer, index, packet, parent)

  -- Alloc No Orders Type: 1 Byte Ascii String Enum with 1 values
  index, alloc_no_orders_type = b3_equities_binaryentrypoint_sbe_v8_1.alloc_no_orders_type.dissect(buffer, index, packet, parent)

  -- Alloc Rej Code: 4 Byte Unsigned Fixed Width Integer
  index, alloc_rej_code = b3_equities_binaryentrypoint_sbe_v8_1.alloc_rej_code.dissect(buffer, index, packet, parent)

  -- Quantity: 8 Byte Unsigned Fixed Width Integer
  index, quantity = b3_equities_binaryentrypoint_sbe_v8_1.quantity.dissect(buffer, index, packet, parent)

  -- Alloc Status: 1 Byte Ascii String Enum with 2 values
  index, alloc_status = b3_equities_binaryentrypoint_sbe_v8_1.alloc_status.dissect(buffer, index, packet, parent)

  -- Trade Date Optional: 2 Byte Unsigned Fixed Width Integer
  index, trade_date_optional = b3_equities_binaryentrypoint_sbe_v8_1.trade_date_optional.dissect(buffer, index, packet, parent)

  -- Transact Time: 8 Byte Unsigned Fixed Width Integer
  index, transact_time = b3_equities_binaryentrypoint_sbe_v8_1.transact_time.dissect(buffer, index, packet, parent)

  -- Side: 1 Byte Ascii String Enum with 2 values
  index, side = b3_equities_binaryentrypoint_sbe_v8_1.side.dissect(buffer, index, packet, parent)

  -- Sender Location: 10 Byte Ascii String
  index, sender_location = b3_equities_binaryentrypoint_sbe_v8_1.sender_location.dissect(buffer, index, packet, parent)

  -- Entering Trader: 5 Byte Ascii String
  index, entering_trader = b3_equities_binaryentrypoint_sbe_v8_1.entering_trader.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Allocation Report Message
b3_equities_binaryentrypoint_sbe_v8_1.allocation_report_message.dissect = function(buffer, offset, packet, parent)
  if show.allocation_report_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_b3_equities_binaryentrypoint_sbe_v8_1.fields.allocation_report_message, buffer(offset, 0))
    local index = b3_equities_binaryentrypoint_sbe_v8_1.allocation_report_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = b3_equities_binaryentrypoint_sbe_v8_1.allocation_report_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return b3_equities_binaryentrypoint_sbe_v8_1.allocation_report_message.fields(buffer, offset, packet, parent)
  end
end

-- Memo Data
b3_equities_binaryentrypoint_sbe_v8_1.memo_data = {}

-- Display: Memo Data
b3_equities_binaryentrypoint_sbe_v8_1.memo_data.display = function(value)
  return "Memo Data: "..value
end

-- Dissect runtime sized field: Memo Data
b3_equities_binaryentrypoint_sbe_v8_1.memo_data.dissect = function(buffer, offset, packet, parent, size)
  local range = buffer(offset, size)
  local value = range:string()
  local display = b3_equities_binaryentrypoint_sbe_v8_1.memo_data.display(value, buffer, offset, packet, parent, size)

  parent:add(omi_b3_equities_binaryentrypoint_sbe_v8_1.fields.memo_data, range, value, display)

  return offset + size
end

-- Memo Length
b3_equities_binaryentrypoint_sbe_v8_1.memo_length = {}

-- Size: Memo Length
b3_equities_binaryentrypoint_sbe_v8_1.memo_length.size = 1

-- Display: Memo Length
b3_equities_binaryentrypoint_sbe_v8_1.memo_length.display = function(value)
  return "Memo Length: "..value
end

-- Dissect: Memo Length
b3_equities_binaryentrypoint_sbe_v8_1.memo_length.dissect = function(buffer, offset, packet, parent)
  local length = b3_equities_binaryentrypoint_sbe_v8_1.memo_length.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = b3_equities_binaryentrypoint_sbe_v8_1.memo_length.display(value, buffer, offset, packet, parent)

  parent:add(omi_b3_equities_binaryentrypoint_sbe_v8_1.fields.memo_length, range, value, display)

  return offset + length, value
end

-- Memo
b3_equities_binaryentrypoint_sbe_v8_1.memo = {}

-- Calculate size of: Memo
b3_equities_binaryentrypoint_sbe_v8_1.memo.size = function(buffer, offset)
  local index = 0

  index = index + b3_equities_binaryentrypoint_sbe_v8_1.memo_length.size

  -- Parse runtime size of: Memo Data
  index = index + buffer(offset + index - 1, 1):le_uint()

  return index
end

-- Display: Memo
b3_equities_binaryentrypoint_sbe_v8_1.memo.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Memo
b3_equities_binaryentrypoint_sbe_v8_1.memo.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Memo Length: 1 Byte Unsigned Fixed Width Integer
  index, memo_length = b3_equities_binaryentrypoint_sbe_v8_1.memo_length.dissect(buffer, index, packet, parent)

  -- Runtime Size Of: Memo Data
  index, memo_data = b3_equities_binaryentrypoint_sbe_v8_1.memo_data.dissect(buffer, index, packet, parent, memo_length)

  return index
end

-- Dissect: Memo
b3_equities_binaryentrypoint_sbe_v8_1.memo.dissect = function(buffer, offset, packet, parent)
  -- Optionally add dynamic struct element to protocol tree
  if show.memo then
    local length = b3_equities_binaryentrypoint_sbe_v8_1.memo.size(buffer, offset)
    local range = buffer(offset, length)
    local display = b3_equities_binaryentrypoint_sbe_v8_1.memo.display(buffer, packet, parent)
    parent = parent:add(omi_b3_equities_binaryentrypoint_sbe_v8_1.fields.memo, range, display)
  end

  return b3_equities_binaryentrypoint_sbe_v8_1.memo.fields(buffer, offset, packet, parent)
end

-- Desk Id Data
b3_equities_binaryentrypoint_sbe_v8_1.desk_id_data = {}

-- Display: Desk Id Data
b3_equities_binaryentrypoint_sbe_v8_1.desk_id_data.display = function(value)
  return "Desk Id Data: "..value
end

-- Dissect runtime sized field: Desk Id Data
b3_equities_binaryentrypoint_sbe_v8_1.desk_id_data.dissect = function(buffer, offset, packet, parent, size)
  local range = buffer(offset, size)
  local value = range:string()
  local display = b3_equities_binaryentrypoint_sbe_v8_1.desk_id_data.display(value, buffer, offset, packet, parent, size)

  parent:add(omi_b3_equities_binaryentrypoint_sbe_v8_1.fields.desk_id_data, range, value, display)

  return offset + size
end

-- Desk Id Length
b3_equities_binaryentrypoint_sbe_v8_1.desk_id_length = {}

-- Size: Desk Id Length
b3_equities_binaryentrypoint_sbe_v8_1.desk_id_length.size = 1

-- Display: Desk Id Length
b3_equities_binaryentrypoint_sbe_v8_1.desk_id_length.display = function(value)
  return "Desk Id Length: "..value
end

-- Dissect: Desk Id Length
b3_equities_binaryentrypoint_sbe_v8_1.desk_id_length.dissect = function(buffer, offset, packet, parent)
  local length = b3_equities_binaryentrypoint_sbe_v8_1.desk_id_length.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = b3_equities_binaryentrypoint_sbe_v8_1.desk_id_length.display(value, buffer, offset, packet, parent)

  parent:add(omi_b3_equities_binaryentrypoint_sbe_v8_1.fields.desk_id_length, range, value, display)

  return offset + length, value
end

-- Desk Id
b3_equities_binaryentrypoint_sbe_v8_1.desk_id = {}

-- Calculate size of: Desk Id
b3_equities_binaryentrypoint_sbe_v8_1.desk_id.size = function(buffer, offset)
  local index = 0

  index = index + b3_equities_binaryentrypoint_sbe_v8_1.desk_id_length.size

  -- Parse runtime size of: Desk Id Data
  index = index + buffer(offset + index - 1, 1):le_uint()

  return index
end

-- Display: Desk Id
b3_equities_binaryentrypoint_sbe_v8_1.desk_id.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Desk Id
b3_equities_binaryentrypoint_sbe_v8_1.desk_id.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Desk Id Length: 1 Byte Unsigned Fixed Width Integer
  index, desk_id_length = b3_equities_binaryentrypoint_sbe_v8_1.desk_id_length.dissect(buffer, index, packet, parent)

  -- Runtime Size Of: Desk Id Data
  index, desk_id_data = b3_equities_binaryentrypoint_sbe_v8_1.desk_id_data.dissect(buffer, index, packet, parent, desk_id_length)

  return index
end

-- Dissect: Desk Id
b3_equities_binaryentrypoint_sbe_v8_1.desk_id.dissect = function(buffer, offset, packet, parent)
  -- Optionally add dynamic struct element to protocol tree
  if show.desk_id then
    local length = b3_equities_binaryentrypoint_sbe_v8_1.desk_id.size(buffer, offset)
    local range = buffer(offset, length)
    local display = b3_equities_binaryentrypoint_sbe_v8_1.desk_id.display(buffer, packet, parent)
    parent = parent:add(omi_b3_equities_binaryentrypoint_sbe_v8_1.fields.desk_id, range, display)
  end

  return b3_equities_binaryentrypoint_sbe_v8_1.desk_id.fields(buffer, offset, packet, parent)
end

-- Alloc Qty
b3_equities_binaryentrypoint_sbe_v8_1.alloc_qty = {}

-- Size: Alloc Qty
b3_equities_binaryentrypoint_sbe_v8_1.alloc_qty.size = 8

-- Display: Alloc Qty
b3_equities_binaryentrypoint_sbe_v8_1.alloc_qty.display = function(value)
  return "Alloc Qty: "..value
end

-- Dissect: Alloc Qty
b3_equities_binaryentrypoint_sbe_v8_1.alloc_qty.dissect = function(buffer, offset, packet, parent)
  local length = b3_equities_binaryentrypoint_sbe_v8_1.alloc_qty.size
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = b3_equities_binaryentrypoint_sbe_v8_1.alloc_qty.display(value, buffer, offset, packet, parent)

  parent:add(omi_b3_equities_binaryentrypoint_sbe_v8_1.fields.alloc_qty, range, value, display)

  return offset + length, value
end

-- Alloc Account
b3_equities_binaryentrypoint_sbe_v8_1.alloc_account = {}

-- Size: Alloc Account
b3_equities_binaryentrypoint_sbe_v8_1.alloc_account.size = 4

-- Display: Alloc Account
b3_equities_binaryentrypoint_sbe_v8_1.alloc_account.display = function(value)
  return "Alloc Account: "..value
end

-- Dissect: Alloc Account
b3_equities_binaryentrypoint_sbe_v8_1.alloc_account.dissect = function(buffer, offset, packet, parent)
  local length = b3_equities_binaryentrypoint_sbe_v8_1.alloc_account.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = b3_equities_binaryentrypoint_sbe_v8_1.alloc_account.display(value, buffer, offset, packet, parent)

  parent:add(omi_b3_equities_binaryentrypoint_sbe_v8_1.fields.alloc_account, range, value, display)

  return offset + length, value
end

-- Individual Alloc Id
b3_equities_binaryentrypoint_sbe_v8_1.individual_alloc_id = {}

-- Size: Individual Alloc Id
b3_equities_binaryentrypoint_sbe_v8_1.individual_alloc_id.size = 8

-- Display: Individual Alloc Id
b3_equities_binaryentrypoint_sbe_v8_1.individual_alloc_id.display = function(value)
  return "Individual Alloc Id: "..value
end

-- Dissect: Individual Alloc Id
b3_equities_binaryentrypoint_sbe_v8_1.individual_alloc_id.dissect = function(buffer, offset, packet, parent)
  local length = b3_equities_binaryentrypoint_sbe_v8_1.individual_alloc_id.size
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = b3_equities_binaryentrypoint_sbe_v8_1.individual_alloc_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_b3_equities_binaryentrypoint_sbe_v8_1.fields.individual_alloc_id, range, value, display)

  return offset + length, value
end

-- Trade Id
b3_equities_binaryentrypoint_sbe_v8_1.trade_id = {}

-- Size: Trade Id
b3_equities_binaryentrypoint_sbe_v8_1.trade_id.size = 4

-- Display: Trade Id
b3_equities_binaryentrypoint_sbe_v8_1.trade_id.display = function(value)
  return "Trade Id: "..value
end

-- Dissect: Trade Id
b3_equities_binaryentrypoint_sbe_v8_1.trade_id.dissect = function(buffer, offset, packet, parent)
  local length = b3_equities_binaryentrypoint_sbe_v8_1.trade_id.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = b3_equities_binaryentrypoint_sbe_v8_1.trade_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_b3_equities_binaryentrypoint_sbe_v8_1.fields.trade_id, range, value, display)

  return offset + length, value
end

-- Alloc Type
b3_equities_binaryentrypoint_sbe_v8_1.alloc_type = {}

-- Size: Alloc Type
b3_equities_binaryentrypoint_sbe_v8_1.alloc_type.size = 1

-- Display: Alloc Type
b3_equities_binaryentrypoint_sbe_v8_1.alloc_type.display = function(value)
  -- Check if field has value
  if value == nil or value == 0 then
    return "Alloc Type: No Value"
  end

  if value == "8" then
    return "Alloc Type: Request To Intermediary (8)"
  end

  return "Alloc Type: Unknown("..value..")"
end

-- Dissect: Alloc Type
b3_equities_binaryentrypoint_sbe_v8_1.alloc_type.dissect = function(buffer, offset, packet, parent)
  local length = b3_equities_binaryentrypoint_sbe_v8_1.alloc_type.size
  local range = buffer(offset, length)

  -- parse as byte
  local value = range:uint()

  -- check if value is non zero
  if value ~= 0 then
    value = range:string()
  end

  local display = b3_equities_binaryentrypoint_sbe_v8_1.alloc_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_b3_equities_binaryentrypoint_sbe_v8_1.fields.alloc_type, range, value, display)

  return offset + length, value
end

-- Allocation Instruction Message
b3_equities_binaryentrypoint_sbe_v8_1.allocation_instruction_message = {}

-- Calculate size of: Allocation Instruction Message
b3_equities_binaryentrypoint_sbe_v8_1.allocation_instruction_message.size = function(buffer, offset)
  local index = 0

  index = index + b3_equities_binaryentrypoint_sbe_v8_1.inbound_business_header.size(buffer, offset + index)

  index = index + b3_equities_binaryentrypoint_sbe_v8_1.alloc_id.size

  index = index + b3_equities_binaryentrypoint_sbe_v8_1.security_id.size

  index = index + b3_equities_binaryentrypoint_sbe_v8_1.alloc_trans_type.size

  index = index + b3_equities_binaryentrypoint_sbe_v8_1.alloc_type.size

  index = index + b3_equities_binaryentrypoint_sbe_v8_1.alloc_no_orders_type.size

  index = index + b3_equities_binaryentrypoint_sbe_v8_1.quantity.size

  index = index + b3_equities_binaryentrypoint_sbe_v8_1.sender_location.size

  index = index + b3_equities_binaryentrypoint_sbe_v8_1.entering_trader.size

  index = index + b3_equities_binaryentrypoint_sbe_v8_1.trade_id.size

  index = index + b3_equities_binaryentrypoint_sbe_v8_1.trade_date_optional.size

  index = index + b3_equities_binaryentrypoint_sbe_v8_1.individual_alloc_id.size

  index = index + b3_equities_binaryentrypoint_sbe_v8_1.alloc_account.size

  index = index + b3_equities_binaryentrypoint_sbe_v8_1.alloc_qty.size

  index = index + b3_equities_binaryentrypoint_sbe_v8_1.desk_id.size(buffer, offset + index)

  index = index + b3_equities_binaryentrypoint_sbe_v8_1.memo.size(buffer, offset + index)

  return index
end

-- Display: Allocation Instruction Message
b3_equities_binaryentrypoint_sbe_v8_1.allocation_instruction_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Allocation Instruction Message
b3_equities_binaryentrypoint_sbe_v8_1.allocation_instruction_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Inbound Business Header: Struct of 5 fields
  index, inbound_business_header = b3_equities_binaryentrypoint_sbe_v8_1.inbound_business_header.dissect(buffer, index, packet, parent)

  -- Alloc Id: 8 Byte Unsigned Fixed Width Integer
  index, alloc_id = b3_equities_binaryentrypoint_sbe_v8_1.alloc_id.dissect(buffer, index, packet, parent)

  -- Security Id: 8 Byte Unsigned Fixed Width Integer
  index, security_id = b3_equities_binaryentrypoint_sbe_v8_1.security_id.dissect(buffer, index, packet, parent)

  -- Alloc Trans Type: 1 Byte Ascii String Enum with 2 values
  index, alloc_trans_type = b3_equities_binaryentrypoint_sbe_v8_1.alloc_trans_type.dissect(buffer, index, packet, parent)

  -- Alloc Type: 1 Byte Ascii String Enum with 1 values
  index, alloc_type = b3_equities_binaryentrypoint_sbe_v8_1.alloc_type.dissect(buffer, index, packet, parent)

  -- Alloc No Orders Type: 1 Byte Ascii String Enum with 1 values
  index, alloc_no_orders_type = b3_equities_binaryentrypoint_sbe_v8_1.alloc_no_orders_type.dissect(buffer, index, packet, parent)

  -- Quantity: 8 Byte Unsigned Fixed Width Integer
  index, quantity = b3_equities_binaryentrypoint_sbe_v8_1.quantity.dissect(buffer, index, packet, parent)

  -- Sender Location: 10 Byte Ascii String
  index, sender_location = b3_equities_binaryentrypoint_sbe_v8_1.sender_location.dissect(buffer, index, packet, parent)

  -- Entering Trader: 5 Byte Ascii String
  index, entering_trader = b3_equities_binaryentrypoint_sbe_v8_1.entering_trader.dissect(buffer, index, packet, parent)

  -- Trade Id: 4 Byte Unsigned Fixed Width Integer
  index, trade_id = b3_equities_binaryentrypoint_sbe_v8_1.trade_id.dissect(buffer, index, packet, parent)

  -- Trade Date Optional: 2 Byte Unsigned Fixed Width Integer
  index, trade_date_optional = b3_equities_binaryentrypoint_sbe_v8_1.trade_date_optional.dissect(buffer, index, packet, parent)

  -- Individual Alloc Id: 8 Byte Unsigned Fixed Width Integer
  index, individual_alloc_id = b3_equities_binaryentrypoint_sbe_v8_1.individual_alloc_id.dissect(buffer, index, packet, parent)

  -- Alloc Account: 4 Byte Unsigned Fixed Width Integer
  index, alloc_account = b3_equities_binaryentrypoint_sbe_v8_1.alloc_account.dissect(buffer, index, packet, parent)

  -- Alloc Qty: 8 Byte Unsigned Fixed Width Integer
  index, alloc_qty = b3_equities_binaryentrypoint_sbe_v8_1.alloc_qty.dissect(buffer, index, packet, parent)

  -- Desk Id: Struct of 2 fields
  index, desk_id = b3_equities_binaryentrypoint_sbe_v8_1.desk_id.dissect(buffer, index, packet, parent)

  -- Memo: Struct of 2 fields
  index, memo = b3_equities_binaryentrypoint_sbe_v8_1.memo.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Allocation Instruction Message
b3_equities_binaryentrypoint_sbe_v8_1.allocation_instruction_message.dissect = function(buffer, offset, packet, parent)
  -- Optionally add dynamic struct element to protocol tree
  if show.allocation_instruction_message then
    local length = b3_equities_binaryentrypoint_sbe_v8_1.allocation_instruction_message.size(buffer, offset)
    local range = buffer(offset, length)
    local display = b3_equities_binaryentrypoint_sbe_v8_1.allocation_instruction_message.display(buffer, packet, parent)
    parent = parent:add(omi_b3_equities_binaryentrypoint_sbe_v8_1.fields.allocation_instruction_message, range, display)
  end

  return b3_equities_binaryentrypoint_sbe_v8_1.allocation_instruction_message.fields(buffer, offset, packet, parent)
end

-- Short Qty
b3_equities_binaryentrypoint_sbe_v8_1.short_qty = {}

-- Size: Short Qty
b3_equities_binaryentrypoint_sbe_v8_1.short_qty.size = 8

-- Display: Short Qty
b3_equities_binaryentrypoint_sbe_v8_1.short_qty.display = function(value)
  return "Short Qty: "..value
end

-- Dissect: Short Qty
b3_equities_binaryentrypoint_sbe_v8_1.short_qty.dissect = function(buffer, offset, packet, parent)
  local length = b3_equities_binaryentrypoint_sbe_v8_1.short_qty.size
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = b3_equities_binaryentrypoint_sbe_v8_1.short_qty.display(value, buffer, offset, packet, parent)

  parent:add(omi_b3_equities_binaryentrypoint_sbe_v8_1.fields.short_qty, range, value, display)

  return offset + length, value
end

-- Long Qty Optional
b3_equities_binaryentrypoint_sbe_v8_1.long_qty_optional = {}

-- Size: Long Qty Optional
b3_equities_binaryentrypoint_sbe_v8_1.long_qty_optional.size = 8

-- Display: Long Qty Optional
b3_equities_binaryentrypoint_sbe_v8_1.long_qty_optional.display = function(value)
  return "Long Qty Optional: "..value
end

-- Dissect: Long Qty Optional
b3_equities_binaryentrypoint_sbe_v8_1.long_qty_optional.dissect = function(buffer, offset, packet, parent)
  local length = b3_equities_binaryentrypoint_sbe_v8_1.long_qty_optional.size
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = b3_equities_binaryentrypoint_sbe_v8_1.long_qty_optional.display(value, buffer, offset, packet, parent)

  parent:add(omi_b3_equities_binaryentrypoint_sbe_v8_1.fields.long_qty_optional, range, value, display)

  return offset + length, value
end

-- Pos Type
b3_equities_binaryentrypoint_sbe_v8_1.pos_type = {}

-- Size: Pos Type
b3_equities_binaryentrypoint_sbe_v8_1.pos_type.size = 1

-- Display: Pos Type
b3_equities_binaryentrypoint_sbe_v8_1.pos_type.display = function(value)
  -- Check if field has value
  if value == nil or value == 0 then
    return "Pos Type: No Value"
  end

  if value == "T" then
    return "Pos Type: Transaction Quantity (T)"
  end
  if value == "S" then
    return "Pos Type: Start Of Day Qty (S)"
  end
  if value == "E" then
    return "Pos Type: Option Exercise Qty (E)"
  end
  if value == "B" then
    return "Pos Type: Blocked Qty (B)"
  end
  if value == "U" then
    return "Pos Type: Uncovered Qty (U)"
  end
  if value == "C" then
    return "Pos Type: Covered Qty (C)"
  end

  return "Pos Type: Unknown("..value..")"
end

-- Dissect: Pos Type
b3_equities_binaryentrypoint_sbe_v8_1.pos_type.dissect = function(buffer, offset, packet, parent)
  local length = b3_equities_binaryentrypoint_sbe_v8_1.pos_type.size
  local range = buffer(offset, length)

  -- parse as byte
  local value = range:uint()

  -- check if value is non zero
  if value ~= 0 then
    value = range:string()
  end

  local display = b3_equities_binaryentrypoint_sbe_v8_1.pos_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_b3_equities_binaryentrypoint_sbe_v8_1.fields.pos_type, range, value, display)

  return offset + length, value
end

-- No Positions Group
b3_equities_binaryentrypoint_sbe_v8_1.no_positions_group = {}

-- Calculate size of: No Positions Group
b3_equities_binaryentrypoint_sbe_v8_1.no_positions_group.size = function(buffer, offset)
  local index = 0

  index = index + b3_equities_binaryentrypoint_sbe_v8_1.pos_type.size

  index = index + b3_equities_binaryentrypoint_sbe_v8_1.long_qty_optional.size

  index = index + b3_equities_binaryentrypoint_sbe_v8_1.short_qty.size

  return index
end

-- Display: No Positions Group
b3_equities_binaryentrypoint_sbe_v8_1.no_positions_group.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: No Positions Group
b3_equities_binaryentrypoint_sbe_v8_1.no_positions_group.fields = function(buffer, offset, packet, parent, no_positions_group_index)
  local index = offset

  -- Implicit No Positions Group Index
  if no_positions_group_index ~= nil then
    local iteration = parent:add(omi_b3_equities_binaryentrypoint_sbe_v8_1.fields.no_positions_group_index, no_positions_group_index)
    iteration:set_generated()
  end

  -- Pos Type: 1 Byte Ascii String Enum with 6 values
  index, pos_type = b3_equities_binaryentrypoint_sbe_v8_1.pos_type.dissect(buffer, index, packet, parent)

  -- Long Qty Optional: 8 Byte Unsigned Fixed Width Integer
  index, long_qty_optional = b3_equities_binaryentrypoint_sbe_v8_1.long_qty_optional.dissect(buffer, index, packet, parent)

  -- Short Qty: 8 Byte Unsigned Fixed Width Integer
  index, short_qty = b3_equities_binaryentrypoint_sbe_v8_1.short_qty.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: No Positions Group
b3_equities_binaryentrypoint_sbe_v8_1.no_positions_group.dissect = function(buffer, offset, packet, parent, no_positions_group_index)
  if show.no_positions_group then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_b3_equities_binaryentrypoint_sbe_v8_1.fields.no_positions_group, buffer(offset, 0))
    local index = b3_equities_binaryentrypoint_sbe_v8_1.no_positions_group.fields(buffer, offset, packet, parent, no_positions_group_index)
    local length = index - offset
    parent:set_len(length)
    local display = b3_equities_binaryentrypoint_sbe_v8_1.no_positions_group.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return b3_equities_binaryentrypoint_sbe_v8_1.no_positions_group.fields(buffer, offset, packet, parent, no_positions_group_index)
  end
end

-- Num In Group
b3_equities_binaryentrypoint_sbe_v8_1.num_in_group = {}

-- Size: Num In Group
b3_equities_binaryentrypoint_sbe_v8_1.num_in_group.size = 1

-- Display: Num In Group
b3_equities_binaryentrypoint_sbe_v8_1.num_in_group.display = function(value)
  return "Num In Group: "..value
end

-- Dissect: Num In Group
b3_equities_binaryentrypoint_sbe_v8_1.num_in_group.dissect = function(buffer, offset, packet, parent)
  local length = b3_equities_binaryentrypoint_sbe_v8_1.num_in_group.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = b3_equities_binaryentrypoint_sbe_v8_1.num_in_group.display(value, buffer, offset, packet, parent)

  parent:add(omi_b3_equities_binaryentrypoint_sbe_v8_1.fields.num_in_group, range, value, display)

  return offset + length, value
end

-- Block Length
b3_equities_binaryentrypoint_sbe_v8_1.block_length = {}

-- Size: Block Length
b3_equities_binaryentrypoint_sbe_v8_1.block_length.size = 2

-- Display: Block Length
b3_equities_binaryentrypoint_sbe_v8_1.block_length.display = function(value)
  return "Block Length: "..value
end

-- Dissect: Block Length
b3_equities_binaryentrypoint_sbe_v8_1.block_length.dissect = function(buffer, offset, packet, parent)
  local length = b3_equities_binaryentrypoint_sbe_v8_1.block_length.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = b3_equities_binaryentrypoint_sbe_v8_1.block_length.display(value, buffer, offset, packet, parent)

  parent:add(omi_b3_equities_binaryentrypoint_sbe_v8_1.fields.block_length, range, value, display)

  return offset + length, value
end

-- Group Size Encoding
b3_equities_binaryentrypoint_sbe_v8_1.group_size_encoding = {}

-- Calculate size of: Group Size Encoding
b3_equities_binaryentrypoint_sbe_v8_1.group_size_encoding.size = function(buffer, offset)
  local index = 0

  index = index + b3_equities_binaryentrypoint_sbe_v8_1.block_length.size

  index = index + b3_equities_binaryentrypoint_sbe_v8_1.num_in_group.size

  return index
end

-- Display: Group Size Encoding
b3_equities_binaryentrypoint_sbe_v8_1.group_size_encoding.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Group Size Encoding
b3_equities_binaryentrypoint_sbe_v8_1.group_size_encoding.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Block Length: 2 Byte Unsigned Fixed Width Integer
  index, block_length = b3_equities_binaryentrypoint_sbe_v8_1.block_length.dissect(buffer, index, packet, parent)

  -- Num In Group: 1 Byte Unsigned Fixed Width Integer
  index, num_in_group = b3_equities_binaryentrypoint_sbe_v8_1.num_in_group.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Group Size Encoding
b3_equities_binaryentrypoint_sbe_v8_1.group_size_encoding.dissect = function(buffer, offset, packet, parent)
  if show.group_size_encoding then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_b3_equities_binaryentrypoint_sbe_v8_1.fields.group_size_encoding, buffer(offset, 0))
    local index = b3_equities_binaryentrypoint_sbe_v8_1.group_size_encoding.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = b3_equities_binaryentrypoint_sbe_v8_1.group_size_encoding.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return b3_equities_binaryentrypoint_sbe_v8_1.group_size_encoding.fields(buffer, offset, packet, parent)
  end
end

-- No Positions Groups
b3_equities_binaryentrypoint_sbe_v8_1.no_positions_groups = {}

-- Calculate size of: No Positions Groups
b3_equities_binaryentrypoint_sbe_v8_1.no_positions_groups.size = function(buffer, offset)
  local index = 0

  index = index + b3_equities_binaryentrypoint_sbe_v8_1.group_size_encoding.size(buffer, offset + index)

  -- Calculate field size from count
  local no_positions_group_count = buffer(offset + index - 1, 1):le_uint()
  index = index + no_positions_group_count * 17

  return index
end

-- Display: No Positions Groups
b3_equities_binaryentrypoint_sbe_v8_1.no_positions_groups.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: No Positions Groups
b3_equities_binaryentrypoint_sbe_v8_1.no_positions_groups.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Group Size Encoding: Struct of 2 fields
  index, group_size_encoding = b3_equities_binaryentrypoint_sbe_v8_1.group_size_encoding.dissect(buffer, index, packet, parent)

  -- Dependency element: Num In Group
  local num_in_group = buffer(index - 1, 1):le_uint()

  -- Repeating: No Positions Group
  for no_positions_group_index = 1, num_in_group do
    index, no_positions_group = b3_equities_binaryentrypoint_sbe_v8_1.no_positions_group.dissect(buffer, index, packet, parent, no_positions_group_index)
  end

  return index
end

-- Dissect: No Positions Groups
b3_equities_binaryentrypoint_sbe_v8_1.no_positions_groups.dissect = function(buffer, offset, packet, parent)
  -- Optionally add dynamic struct element to protocol tree
  if show.no_positions_groups then
    local length = b3_equities_binaryentrypoint_sbe_v8_1.no_positions_groups.size(buffer, offset)
    local range = buffer(offset, length)
    local display = b3_equities_binaryentrypoint_sbe_v8_1.no_positions_groups.display(buffer, packet, parent)
    parent = parent:add(omi_b3_equities_binaryentrypoint_sbe_v8_1.fields.no_positions_groups, range, display)
  end

  return b3_equities_binaryentrypoint_sbe_v8_1.no_positions_groups.fields(buffer, offset, packet, parent)
end

-- Contrary Instruction Indicator
b3_equities_binaryentrypoint_sbe_v8_1.contrary_instruction_indicator = {}

-- Size: Contrary Instruction Indicator
b3_equities_binaryentrypoint_sbe_v8_1.contrary_instruction_indicator.size = 1

-- Display: Contrary Instruction Indicator
b3_equities_binaryentrypoint_sbe_v8_1.contrary_instruction_indicator.display = function(value)
  if value == 0 then
    return "Contrary Instruction Indicator: False Value (0)"
  end
  if value == 1 then
    return "Contrary Instruction Indicator: True Value (1)"
  end

  return "Contrary Instruction Indicator: Unknown("..value..")"
end

-- Dissect: Contrary Instruction Indicator
b3_equities_binaryentrypoint_sbe_v8_1.contrary_instruction_indicator.dissect = function(buffer, offset, packet, parent)
  local length = b3_equities_binaryentrypoint_sbe_v8_1.contrary_instruction_indicator.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = b3_equities_binaryentrypoint_sbe_v8_1.contrary_instruction_indicator.display(value, buffer, offset, packet, parent)

  parent:add(omi_b3_equities_binaryentrypoint_sbe_v8_1.fields.contrary_instruction_indicator, range, value, display)

  return offset + length, value
end

-- Pos Maint Result
b3_equities_binaryentrypoint_sbe_v8_1.pos_maint_result = {}

-- Size: Pos Maint Result
b3_equities_binaryentrypoint_sbe_v8_1.pos_maint_result.size = 4

-- Display: Pos Maint Result
b3_equities_binaryentrypoint_sbe_v8_1.pos_maint_result.display = function(value)
  return "Pos Maint Result: "..value
end

-- Dissect: Pos Maint Result
b3_equities_binaryentrypoint_sbe_v8_1.pos_maint_result.dissect = function(buffer, offset, packet, parent)
  local length = b3_equities_binaryentrypoint_sbe_v8_1.pos_maint_result.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = b3_equities_binaryentrypoint_sbe_v8_1.pos_maint_result.display(value, buffer, offset, packet, parent)

  parent:add(omi_b3_equities_binaryentrypoint_sbe_v8_1.fields.pos_maint_result, range, value, display)

  return offset + length, value
end

-- Account
b3_equities_binaryentrypoint_sbe_v8_1.account = {}

-- Size: Account
b3_equities_binaryentrypoint_sbe_v8_1.account.size = 4

-- Display: Account
b3_equities_binaryentrypoint_sbe_v8_1.account.display = function(value)
  return "Account: "..value
end

-- Dissect: Account
b3_equities_binaryentrypoint_sbe_v8_1.account.dissect = function(buffer, offset, packet, parent)
  local length = b3_equities_binaryentrypoint_sbe_v8_1.account.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = b3_equities_binaryentrypoint_sbe_v8_1.account.display(value, buffer, offset, packet, parent)

  parent:add(omi_b3_equities_binaryentrypoint_sbe_v8_1.fields.account, range, value, display)

  return offset + length, value
end

-- Threshold Amount
b3_equities_binaryentrypoint_sbe_v8_1.threshold_amount = {}

-- Size: Threshold Amount
b3_equities_binaryentrypoint_sbe_v8_1.threshold_amount.size = 8

-- Display: Threshold Amount
b3_equities_binaryentrypoint_sbe_v8_1.threshold_amount.display = function(raw, value)
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
b3_equities_binaryentrypoint_sbe_v8_1.threshold_amount.dissect = function(buffer, offset, packet, parent)
  local length = b3_equities_binaryentrypoint_sbe_v8_1.threshold_amount.size
  local range = buffer(offset, length)
  local raw = range:le_int64()
  local value = translate.threshold_amount(raw)
  local display = b3_equities_binaryentrypoint_sbe_v8_1.threshold_amount.display(raw, value, buffer, offset, packet, parent)

  parent:add(omi_b3_equities_binaryentrypoint_sbe_v8_1.fields.threshold_amount, range, value, display)

  return offset + length, value
end

-- Clearing Business Date
b3_equities_binaryentrypoint_sbe_v8_1.clearing_business_date = {}

-- Size: Clearing Business Date
b3_equities_binaryentrypoint_sbe_v8_1.clearing_business_date.size = 2

-- Display: Clearing Business Date
b3_equities_binaryentrypoint_sbe_v8_1.clearing_business_date.display = function(value)
  return "Clearing Business Date: "..value
end

-- Dissect: Clearing Business Date
b3_equities_binaryentrypoint_sbe_v8_1.clearing_business_date.dissect = function(buffer, offset, packet, parent)
  local length = b3_equities_binaryentrypoint_sbe_v8_1.clearing_business_date.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = b3_equities_binaryentrypoint_sbe_v8_1.clearing_business_date.display(value, buffer, offset, packet, parent)

  parent:add(omi_b3_equities_binaryentrypoint_sbe_v8_1.fields.clearing_business_date, range, value, display)

  return offset + length, value
end

-- Account Type
b3_equities_binaryentrypoint_sbe_v8_1.account_type = {}

-- Size: Account Type
b3_equities_binaryentrypoint_sbe_v8_1.account_type.size = 1

-- Display: Account Type
b3_equities_binaryentrypoint_sbe_v8_1.account_type.display = function(value)
  if value == 38 then
    return "Account Type: Remove Account Information (38)"
  end
  if value == 39 then
    return "Account Type: Regular Account (39)"
  end
  if value == 0 then
    return "Account Type: No Value"
  end

  return "Account Type: Unknown("..value..")"
end

-- Dissect: Account Type
b3_equities_binaryentrypoint_sbe_v8_1.account_type.dissect = function(buffer, offset, packet, parent)
  local length = b3_equities_binaryentrypoint_sbe_v8_1.account_type.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = b3_equities_binaryentrypoint_sbe_v8_1.account_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_b3_equities_binaryentrypoint_sbe_v8_1.fields.account_type, range, value, display)

  return offset + length, value
end

-- Orig Pos Req Ref Id
b3_equities_binaryentrypoint_sbe_v8_1.orig_pos_req_ref_id = {}

-- Size: Orig Pos Req Ref Id
b3_equities_binaryentrypoint_sbe_v8_1.orig_pos_req_ref_id.size = 8

-- Display: Orig Pos Req Ref Id
b3_equities_binaryentrypoint_sbe_v8_1.orig_pos_req_ref_id.display = function(value)
  return "Orig Pos Req Ref Id: "..value
end

-- Dissect: Orig Pos Req Ref Id
b3_equities_binaryentrypoint_sbe_v8_1.orig_pos_req_ref_id.dissect = function(buffer, offset, packet, parent)
  local length = b3_equities_binaryentrypoint_sbe_v8_1.orig_pos_req_ref_id.size
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = b3_equities_binaryentrypoint_sbe_v8_1.orig_pos_req_ref_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_b3_equities_binaryentrypoint_sbe_v8_1.fields.orig_pos_req_ref_id, range, value, display)

  return offset + length, value
end

-- Trade Id Optional
b3_equities_binaryentrypoint_sbe_v8_1.trade_id_optional = {}

-- Size: Trade Id Optional
b3_equities_binaryentrypoint_sbe_v8_1.trade_id_optional.size = 4

-- Display: Trade Id Optional
b3_equities_binaryentrypoint_sbe_v8_1.trade_id_optional.display = function(value)
  return "Trade Id Optional: "..value
end

-- Dissect: Trade Id Optional
b3_equities_binaryentrypoint_sbe_v8_1.trade_id_optional.dissect = function(buffer, offset, packet, parent)
  local length = b3_equities_binaryentrypoint_sbe_v8_1.trade_id_optional.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = b3_equities_binaryentrypoint_sbe_v8_1.trade_id_optional.display(value, buffer, offset, packet, parent)

  parent:add(omi_b3_equities_binaryentrypoint_sbe_v8_1.fields.trade_id_optional, range, value, display)

  return offset + length, value
end

-- Pos Maint Status
b3_equities_binaryentrypoint_sbe_v8_1.pos_maint_status = {}

-- Size: Pos Maint Status
b3_equities_binaryentrypoint_sbe_v8_1.pos_maint_status.size = 1

-- Display: Pos Maint Status
b3_equities_binaryentrypoint_sbe_v8_1.pos_maint_status.display = function(value)
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
    return "Pos Maint Status: Not Executed (9)"
  end

  return "Pos Maint Status: Unknown("..value..")"
end

-- Dissect: Pos Maint Status
b3_equities_binaryentrypoint_sbe_v8_1.pos_maint_status.dissect = function(buffer, offset, packet, parent)
  local length = b3_equities_binaryentrypoint_sbe_v8_1.pos_maint_status.size
  local range = buffer(offset, length)

  -- parse as byte
  local value = range:uint()

  -- check if value is non zero
  if value ~= 0 then
    value = range:string()
  end

  local display = b3_equities_binaryentrypoint_sbe_v8_1.pos_maint_status.display(value, buffer, offset, packet, parent)

  parent:add(omi_b3_equities_binaryentrypoint_sbe_v8_1.fields.pos_maint_status, range, value, display)

  return offset + length, value
end

-- Pos Maint Action
b3_equities_binaryentrypoint_sbe_v8_1.pos_maint_action = {}

-- Size: Pos Maint Action
b3_equities_binaryentrypoint_sbe_v8_1.pos_maint_action.size = 1

-- Display: Pos Maint Action
b3_equities_binaryentrypoint_sbe_v8_1.pos_maint_action.display = function(value)
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
b3_equities_binaryentrypoint_sbe_v8_1.pos_maint_action.dissect = function(buffer, offset, packet, parent)
  local length = b3_equities_binaryentrypoint_sbe_v8_1.pos_maint_action.size
  local range = buffer(offset, length)

  -- parse as byte
  local value = range:uint()

  -- check if value is non zero
  if value ~= 0 then
    value = range:string()
  end

  local display = b3_equities_binaryentrypoint_sbe_v8_1.pos_maint_action.display(value, buffer, offset, packet, parent)

  parent:add(omi_b3_equities_binaryentrypoint_sbe_v8_1.fields.pos_maint_action, range, value, display)

  return offset + length, value
end

-- Pos Trans Type
b3_equities_binaryentrypoint_sbe_v8_1.pos_trans_type = {}

-- Size: Pos Trans Type
b3_equities_binaryentrypoint_sbe_v8_1.pos_trans_type.size = 1

-- Display: Pos Trans Type
b3_equities_binaryentrypoint_sbe_v8_1.pos_trans_type.display = function(value)
  if value == 1 then
    return "Pos Trans Type: Exercise (1)"
  end
  if value == 105 then
    return "Pos Trans Type: Automatic Exercise (105)"
  end
  if value == 106 then
    return "Pos Trans Type: Exercise Not Automatic (106)"
  end

  return "Pos Trans Type: Unknown("..value..")"
end

-- Dissect: Pos Trans Type
b3_equities_binaryentrypoint_sbe_v8_1.pos_trans_type.dissect = function(buffer, offset, packet, parent)
  local length = b3_equities_binaryentrypoint_sbe_v8_1.pos_trans_type.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = b3_equities_binaryentrypoint_sbe_v8_1.pos_trans_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_b3_equities_binaryentrypoint_sbe_v8_1.fields.pos_trans_type, range, value, display)

  return offset + length, value
end

-- Pos Maint Rpt Id
b3_equities_binaryentrypoint_sbe_v8_1.pos_maint_rpt_id = {}

-- Size: Pos Maint Rpt Id
b3_equities_binaryentrypoint_sbe_v8_1.pos_maint_rpt_id.size = 8

-- Display: Pos Maint Rpt Id
b3_equities_binaryentrypoint_sbe_v8_1.pos_maint_rpt_id.display = function(value)
  return "Pos Maint Rpt Id: "..value
end

-- Dissect: Pos Maint Rpt Id
b3_equities_binaryentrypoint_sbe_v8_1.pos_maint_rpt_id.dissect = function(buffer, offset, packet, parent)
  local length = b3_equities_binaryentrypoint_sbe_v8_1.pos_maint_rpt_id.size
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = b3_equities_binaryentrypoint_sbe_v8_1.pos_maint_rpt_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_b3_equities_binaryentrypoint_sbe_v8_1.fields.pos_maint_rpt_id, range, value, display)

  return offset + length, value
end

-- Pos Req Id Optional
b3_equities_binaryentrypoint_sbe_v8_1.pos_req_id_optional = {}

-- Size: Pos Req Id Optional
b3_equities_binaryentrypoint_sbe_v8_1.pos_req_id_optional.size = 8

-- Display: Pos Req Id Optional
b3_equities_binaryentrypoint_sbe_v8_1.pos_req_id_optional.display = function(value)
  return "Pos Req Id Optional: "..value
end

-- Dissect: Pos Req Id Optional
b3_equities_binaryentrypoint_sbe_v8_1.pos_req_id_optional.dissect = function(buffer, offset, packet, parent)
  local length = b3_equities_binaryentrypoint_sbe_v8_1.pos_req_id_optional.size
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = b3_equities_binaryentrypoint_sbe_v8_1.pos_req_id_optional.display(value, buffer, offset, packet, parent)

  parent:add(omi_b3_equities_binaryentrypoint_sbe_v8_1.fields.pos_req_id_optional, range, value, display)

  return offset + length, value
end

-- Position Maintenance Report Message
b3_equities_binaryentrypoint_sbe_v8_1.position_maintenance_report_message = {}

-- Calculate size of: Position Maintenance Report Message
b3_equities_binaryentrypoint_sbe_v8_1.position_maintenance_report_message.size = function(buffer, offset)
  local index = 0

  index = index + b3_equities_binaryentrypoint_sbe_v8_1.outbound_business_header.size(buffer, offset + index)

  index = index + b3_equities_binaryentrypoint_sbe_v8_1.pos_req_id_optional.size

  index = index + b3_equities_binaryentrypoint_sbe_v8_1.security_id.size

  index = index + b3_equities_binaryentrypoint_sbe_v8_1.pos_maint_rpt_id.size

  index = index + b3_equities_binaryentrypoint_sbe_v8_1.pos_trans_type.size

  index = index + b3_equities_binaryentrypoint_sbe_v8_1.pos_maint_action.size

  index = index + b3_equities_binaryentrypoint_sbe_v8_1.pos_maint_status.size

  index = index + b3_equities_binaryentrypoint_sbe_v8_1.trade_id_optional.size

  index = index + b3_equities_binaryentrypoint_sbe_v8_1.orig_pos_req_ref_id.size

  index = index + b3_equities_binaryentrypoint_sbe_v8_1.account_type.size

  index = index + b3_equities_binaryentrypoint_sbe_v8_1.clearing_business_date.size

  index = index + b3_equities_binaryentrypoint_sbe_v8_1.threshold_amount.size

  index = index + b3_equities_binaryentrypoint_sbe_v8_1.transact_time.size

  index = index + b3_equities_binaryentrypoint_sbe_v8_1.account.size

  index = index + b3_equities_binaryentrypoint_sbe_v8_1.sender_location.size

  index = index + b3_equities_binaryentrypoint_sbe_v8_1.pos_maint_result.size

  index = index + b3_equities_binaryentrypoint_sbe_v8_1.contrary_instruction_indicator.size

  index = index + b3_equities_binaryentrypoint_sbe_v8_1.no_positions_groups.size(buffer, offset + index)

  index = index + b3_equities_binaryentrypoint_sbe_v8_1.desk_id.size(buffer, offset + index)

  index = index + b3_equities_binaryentrypoint_sbe_v8_1.memo.size(buffer, offset + index)

  index = index + b3_equities_binaryentrypoint_sbe_v8_1.text.size(buffer, offset + index)

  return index
end

-- Display: Position Maintenance Report Message
b3_equities_binaryentrypoint_sbe_v8_1.position_maintenance_report_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Position Maintenance Report Message
b3_equities_binaryentrypoint_sbe_v8_1.position_maintenance_report_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Outbound Business Header: Struct of 5 fields
  index, outbound_business_header = b3_equities_binaryentrypoint_sbe_v8_1.outbound_business_header.dissect(buffer, index, packet, parent)

  -- Pos Req Id Optional: 8 Byte Unsigned Fixed Width Integer
  index, pos_req_id_optional = b3_equities_binaryentrypoint_sbe_v8_1.pos_req_id_optional.dissect(buffer, index, packet, parent)

  -- Security Id: 8 Byte Unsigned Fixed Width Integer
  index, security_id = b3_equities_binaryentrypoint_sbe_v8_1.security_id.dissect(buffer, index, packet, parent)

  -- Pos Maint Rpt Id: 8 Byte Unsigned Fixed Width Integer
  index, pos_maint_rpt_id = b3_equities_binaryentrypoint_sbe_v8_1.pos_maint_rpt_id.dissect(buffer, index, packet, parent)

  -- Pos Trans Type: 1 Byte Unsigned Fixed Width Integer Enum with 3 values
  index, pos_trans_type = b3_equities_binaryentrypoint_sbe_v8_1.pos_trans_type.dissect(buffer, index, packet, parent)

  -- Pos Maint Action: 1 Byte Ascii String Enum with 2 values
  index, pos_maint_action = b3_equities_binaryentrypoint_sbe_v8_1.pos_maint_action.dissect(buffer, index, packet, parent)

  -- Pos Maint Status: 1 Byte Ascii String Enum with 4 values
  index, pos_maint_status = b3_equities_binaryentrypoint_sbe_v8_1.pos_maint_status.dissect(buffer, index, packet, parent)

  -- Trade Id Optional: 4 Byte Unsigned Fixed Width Integer
  index, trade_id_optional = b3_equities_binaryentrypoint_sbe_v8_1.trade_id_optional.dissect(buffer, index, packet, parent)

  -- Orig Pos Req Ref Id: 8 Byte Unsigned Fixed Width Integer
  index, orig_pos_req_ref_id = b3_equities_binaryentrypoint_sbe_v8_1.orig_pos_req_ref_id.dissect(buffer, index, packet, parent)

  -- Account Type: 1 Byte Unsigned Fixed Width Integer Enum with 3 values
  index, account_type = b3_equities_binaryentrypoint_sbe_v8_1.account_type.dissect(buffer, index, packet, parent)

  -- Clearing Business Date: 2 Byte Unsigned Fixed Width Integer
  index, clearing_business_date = b3_equities_binaryentrypoint_sbe_v8_1.clearing_business_date.dissect(buffer, index, packet, parent)

  -- Threshold Amount: 8 Byte Signed Fixed Width Integer Nullable
  index, threshold_amount = b3_equities_binaryentrypoint_sbe_v8_1.threshold_amount.dissect(buffer, index, packet, parent)

  -- Transact Time: 8 Byte Unsigned Fixed Width Integer
  index, transact_time = b3_equities_binaryentrypoint_sbe_v8_1.transact_time.dissect(buffer, index, packet, parent)

  -- Account: 4 Byte Unsigned Fixed Width Integer
  index, account = b3_equities_binaryentrypoint_sbe_v8_1.account.dissect(buffer, index, packet, parent)

  -- Sender Location: 10 Byte Ascii String
  index, sender_location = b3_equities_binaryentrypoint_sbe_v8_1.sender_location.dissect(buffer, index, packet, parent)

  -- Pos Maint Result: 4 Byte Unsigned Fixed Width Integer
  index, pos_maint_result = b3_equities_binaryentrypoint_sbe_v8_1.pos_maint_result.dissect(buffer, index, packet, parent)

  -- Contrary Instruction Indicator: 1 Byte Unsigned Fixed Width Integer Enum with 2 values
  index, contrary_instruction_indicator = b3_equities_binaryentrypoint_sbe_v8_1.contrary_instruction_indicator.dissect(buffer, index, packet, parent)

  -- No Positions Groups: Struct of 2 fields
  index, no_positions_groups = b3_equities_binaryentrypoint_sbe_v8_1.no_positions_groups.dissect(buffer, index, packet, parent)

  -- Desk Id: Struct of 2 fields
  index, desk_id = b3_equities_binaryentrypoint_sbe_v8_1.desk_id.dissect(buffer, index, packet, parent)

  -- Memo: Struct of 2 fields
  index, memo = b3_equities_binaryentrypoint_sbe_v8_1.memo.dissect(buffer, index, packet, parent)

  -- Text: Struct of 2 fields
  index, text = b3_equities_binaryentrypoint_sbe_v8_1.text.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Position Maintenance Report Message
b3_equities_binaryentrypoint_sbe_v8_1.position_maintenance_report_message.dissect = function(buffer, offset, packet, parent)
  -- Optionally add dynamic struct element to protocol tree
  if show.position_maintenance_report_message then
    local length = b3_equities_binaryentrypoint_sbe_v8_1.position_maintenance_report_message.size(buffer, offset)
    local range = buffer(offset, length)
    local display = b3_equities_binaryentrypoint_sbe_v8_1.position_maintenance_report_message.display(buffer, packet, parent)
    parent = parent:add(omi_b3_equities_binaryentrypoint_sbe_v8_1.fields.position_maintenance_report_message, range, display)
  end

  return b3_equities_binaryentrypoint_sbe_v8_1.position_maintenance_report_message.fields(buffer, offset, packet, parent)
end

-- Long Qty
b3_equities_binaryentrypoint_sbe_v8_1.long_qty = {}

-- Size: Long Qty
b3_equities_binaryentrypoint_sbe_v8_1.long_qty.size = 8

-- Display: Long Qty
b3_equities_binaryentrypoint_sbe_v8_1.long_qty.display = function(value)
  return "Long Qty: "..value
end

-- Dissect: Long Qty
b3_equities_binaryentrypoint_sbe_v8_1.long_qty.dissect = function(buffer, offset, packet, parent)
  local length = b3_equities_binaryentrypoint_sbe_v8_1.long_qty.size
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = b3_equities_binaryentrypoint_sbe_v8_1.long_qty.display(value, buffer, offset, packet, parent)

  parent:add(omi_b3_equities_binaryentrypoint_sbe_v8_1.fields.long_qty, range, value, display)

  return offset + length, value
end

-- Pos Req Id
b3_equities_binaryentrypoint_sbe_v8_1.pos_req_id = {}

-- Size: Pos Req Id
b3_equities_binaryentrypoint_sbe_v8_1.pos_req_id.size = 8

-- Display: Pos Req Id
b3_equities_binaryentrypoint_sbe_v8_1.pos_req_id.display = function(value)
  return "Pos Req Id: "..value
end

-- Dissect: Pos Req Id
b3_equities_binaryentrypoint_sbe_v8_1.pos_req_id.dissect = function(buffer, offset, packet, parent)
  local length = b3_equities_binaryentrypoint_sbe_v8_1.pos_req_id.size
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = b3_equities_binaryentrypoint_sbe_v8_1.pos_req_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_b3_equities_binaryentrypoint_sbe_v8_1.fields.pos_req_id, range, value, display)

  return offset + length, value
end

-- Position Maintenance Request Message
b3_equities_binaryentrypoint_sbe_v8_1.position_maintenance_request_message = {}

-- Calculate size of: Position Maintenance Request Message
b3_equities_binaryentrypoint_sbe_v8_1.position_maintenance_request_message.size = function(buffer, offset)
  local index = 0

  index = index + b3_equities_binaryentrypoint_sbe_v8_1.inbound_business_header.size(buffer, offset + index)

  index = index + b3_equities_binaryentrypoint_sbe_v8_1.pos_req_id.size

  index = index + b3_equities_binaryentrypoint_sbe_v8_1.security_id.size

  index = index + b3_equities_binaryentrypoint_sbe_v8_1.threshold_amount.size

  index = index + b3_equities_binaryentrypoint_sbe_v8_1.account.size

  index = index + b3_equities_binaryentrypoint_sbe_v8_1.sender_location.size

  index = index + b3_equities_binaryentrypoint_sbe_v8_1.pos_trans_type.size

  index = index + b3_equities_binaryentrypoint_sbe_v8_1.clearing_business_date.size

  index = index + b3_equities_binaryentrypoint_sbe_v8_1.contrary_instruction_indicator.size

  index = index + b3_equities_binaryentrypoint_sbe_v8_1.entering_trader.size

  index = index + b3_equities_binaryentrypoint_sbe_v8_1.long_qty.size

  index = index + b3_equities_binaryentrypoint_sbe_v8_1.desk_id.size(buffer, offset + index)

  index = index + b3_equities_binaryentrypoint_sbe_v8_1.memo.size(buffer, offset + index)

  return index
end

-- Display: Position Maintenance Request Message
b3_equities_binaryentrypoint_sbe_v8_1.position_maintenance_request_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Position Maintenance Request Message
b3_equities_binaryentrypoint_sbe_v8_1.position_maintenance_request_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Inbound Business Header: Struct of 5 fields
  index, inbound_business_header = b3_equities_binaryentrypoint_sbe_v8_1.inbound_business_header.dissect(buffer, index, packet, parent)

  -- Pos Req Id: 8 Byte Unsigned Fixed Width Integer
  index, pos_req_id = b3_equities_binaryentrypoint_sbe_v8_1.pos_req_id.dissect(buffer, index, packet, parent)

  -- Security Id: 8 Byte Unsigned Fixed Width Integer
  index, security_id = b3_equities_binaryentrypoint_sbe_v8_1.security_id.dissect(buffer, index, packet, parent)

  -- Threshold Amount: 8 Byte Signed Fixed Width Integer Nullable
  index, threshold_amount = b3_equities_binaryentrypoint_sbe_v8_1.threshold_amount.dissect(buffer, index, packet, parent)

  -- Account: 4 Byte Unsigned Fixed Width Integer
  index, account = b3_equities_binaryentrypoint_sbe_v8_1.account.dissect(buffer, index, packet, parent)

  -- Sender Location: 10 Byte Ascii String
  index, sender_location = b3_equities_binaryentrypoint_sbe_v8_1.sender_location.dissect(buffer, index, packet, parent)

  -- Pos Trans Type: 1 Byte Unsigned Fixed Width Integer Enum with 3 values
  index, pos_trans_type = b3_equities_binaryentrypoint_sbe_v8_1.pos_trans_type.dissect(buffer, index, packet, parent)

  -- Clearing Business Date: 2 Byte Unsigned Fixed Width Integer
  index, clearing_business_date = b3_equities_binaryentrypoint_sbe_v8_1.clearing_business_date.dissect(buffer, index, packet, parent)

  -- Contrary Instruction Indicator: 1 Byte Unsigned Fixed Width Integer Enum with 2 values
  index, contrary_instruction_indicator = b3_equities_binaryentrypoint_sbe_v8_1.contrary_instruction_indicator.dissect(buffer, index, packet, parent)

  -- Entering Trader: 5 Byte Ascii String
  index, entering_trader = b3_equities_binaryentrypoint_sbe_v8_1.entering_trader.dissect(buffer, index, packet, parent)

  -- Long Qty: 8 Byte Unsigned Fixed Width Integer
  index, long_qty = b3_equities_binaryentrypoint_sbe_v8_1.long_qty.dissect(buffer, index, packet, parent)

  -- Desk Id: Struct of 2 fields
  index, desk_id = b3_equities_binaryentrypoint_sbe_v8_1.desk_id.dissect(buffer, index, packet, parent)

  -- Memo: Struct of 2 fields
  index, memo = b3_equities_binaryentrypoint_sbe_v8_1.memo.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Position Maintenance Request Message
b3_equities_binaryentrypoint_sbe_v8_1.position_maintenance_request_message.dissect = function(buffer, offset, packet, parent)
  -- Optionally add dynamic struct element to protocol tree
  if show.position_maintenance_request_message then
    local length = b3_equities_binaryentrypoint_sbe_v8_1.position_maintenance_request_message.size(buffer, offset)
    local range = buffer(offset, length)
    local display = b3_equities_binaryentrypoint_sbe_v8_1.position_maintenance_request_message.display(buffer, packet, parent)
    parent = parent:add(omi_b3_equities_binaryentrypoint_sbe_v8_1.fields.position_maintenance_request_message, range, display)
  end

  return b3_equities_binaryentrypoint_sbe_v8_1.position_maintenance_request_message.fields(buffer, offset, packet, parent)
end

-- Pos Maint Rpt Ref Id
b3_equities_binaryentrypoint_sbe_v8_1.pos_maint_rpt_ref_id = {}

-- Size: Pos Maint Rpt Ref Id
b3_equities_binaryentrypoint_sbe_v8_1.pos_maint_rpt_ref_id.size = 8

-- Display: Pos Maint Rpt Ref Id
b3_equities_binaryentrypoint_sbe_v8_1.pos_maint_rpt_ref_id.display = function(value)
  return "Pos Maint Rpt Ref Id: "..value
end

-- Dissect: Pos Maint Rpt Ref Id
b3_equities_binaryentrypoint_sbe_v8_1.pos_maint_rpt_ref_id.dissect = function(buffer, offset, packet, parent)
  local length = b3_equities_binaryentrypoint_sbe_v8_1.pos_maint_rpt_ref_id.size
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = b3_equities_binaryentrypoint_sbe_v8_1.pos_maint_rpt_ref_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_b3_equities_binaryentrypoint_sbe_v8_1.fields.pos_maint_rpt_ref_id, range, value, display)

  return offset + length, value
end

-- Position Maintenance Cancel Request Message
b3_equities_binaryentrypoint_sbe_v8_1.position_maintenance_cancel_request_message = {}

-- Calculate size of: Position Maintenance Cancel Request Message
b3_equities_binaryentrypoint_sbe_v8_1.position_maintenance_cancel_request_message.size = function(buffer, offset)
  local index = 0

  index = index + b3_equities_binaryentrypoint_sbe_v8_1.inbound_business_header.size(buffer, offset + index)

  index = index + b3_equities_binaryentrypoint_sbe_v8_1.pos_req_id.size

  index = index + b3_equities_binaryentrypoint_sbe_v8_1.security_id.size

  index = index + b3_equities_binaryentrypoint_sbe_v8_1.orig_pos_req_ref_id.size

  index = index + b3_equities_binaryentrypoint_sbe_v8_1.pos_maint_rpt_ref_id.size

  index = index + b3_equities_binaryentrypoint_sbe_v8_1.sender_location.size

  index = index + b3_equities_binaryentrypoint_sbe_v8_1.entering_trader.size

  return index
end

-- Display: Position Maintenance Cancel Request Message
b3_equities_binaryentrypoint_sbe_v8_1.position_maintenance_cancel_request_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Position Maintenance Cancel Request Message
b3_equities_binaryentrypoint_sbe_v8_1.position_maintenance_cancel_request_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Inbound Business Header: Struct of 5 fields
  index, inbound_business_header = b3_equities_binaryentrypoint_sbe_v8_1.inbound_business_header.dissect(buffer, index, packet, parent)

  -- Pos Req Id: 8 Byte Unsigned Fixed Width Integer
  index, pos_req_id = b3_equities_binaryentrypoint_sbe_v8_1.pos_req_id.dissect(buffer, index, packet, parent)

  -- Security Id: 8 Byte Unsigned Fixed Width Integer
  index, security_id = b3_equities_binaryentrypoint_sbe_v8_1.security_id.dissect(buffer, index, packet, parent)

  -- Orig Pos Req Ref Id: 8 Byte Unsigned Fixed Width Integer
  index, orig_pos_req_ref_id = b3_equities_binaryentrypoint_sbe_v8_1.orig_pos_req_ref_id.dissect(buffer, index, packet, parent)

  -- Pos Maint Rpt Ref Id: 8 Byte Unsigned Fixed Width Integer
  index, pos_maint_rpt_ref_id = b3_equities_binaryentrypoint_sbe_v8_1.pos_maint_rpt_ref_id.dissect(buffer, index, packet, parent)

  -- Sender Location: 10 Byte Ascii String
  index, sender_location = b3_equities_binaryentrypoint_sbe_v8_1.sender_location.dissect(buffer, index, packet, parent)

  -- Entering Trader: 5 Byte Ascii String
  index, entering_trader = b3_equities_binaryentrypoint_sbe_v8_1.entering_trader.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Position Maintenance Cancel Request Message
b3_equities_binaryentrypoint_sbe_v8_1.position_maintenance_cancel_request_message.dissect = function(buffer, offset, packet, parent)
  if show.position_maintenance_cancel_request_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_b3_equities_binaryentrypoint_sbe_v8_1.fields.position_maintenance_cancel_request_message, buffer(offset, 0))
    local index = b3_equities_binaryentrypoint_sbe_v8_1.position_maintenance_cancel_request_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = b3_equities_binaryentrypoint_sbe_v8_1.position_maintenance_cancel_request_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return b3_equities_binaryentrypoint_sbe_v8_1.position_maintenance_cancel_request_message.fields(buffer, offset, packet, parent)
  end
end

-- Entering Firm Optional
b3_equities_binaryentrypoint_sbe_v8_1.entering_firm_optional = {}

-- Size: Entering Firm Optional
b3_equities_binaryentrypoint_sbe_v8_1.entering_firm_optional.size = 4

-- Display: Entering Firm Optional
b3_equities_binaryentrypoint_sbe_v8_1.entering_firm_optional.display = function(value)
  return "Entering Firm Optional: "..value
end

-- Dissect: Entering Firm Optional
b3_equities_binaryentrypoint_sbe_v8_1.entering_firm_optional.dissect = function(buffer, offset, packet, parent)
  local length = b3_equities_binaryentrypoint_sbe_v8_1.entering_firm_optional.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = b3_equities_binaryentrypoint_sbe_v8_1.entering_firm_optional.display(value, buffer, offset, packet, parent)

  parent:add(omi_b3_equities_binaryentrypoint_sbe_v8_1.fields.entering_firm_optional, range, value, display)

  return offset + length, value
end

-- Offset 1 Padding 1
b3_equities_binaryentrypoint_sbe_v8_1.offset_1_padding_1 = {}

-- Size: Offset 1 Padding 1
b3_equities_binaryentrypoint_sbe_v8_1.offset_1_padding_1.size = 1

-- Display: Offset 1 Padding 1
b3_equities_binaryentrypoint_sbe_v8_1.offset_1_padding_1.display = function(value)
  return "Offset 1 Padding 1: "..value
end

-- Dissect: Offset 1 Padding 1
b3_equities_binaryentrypoint_sbe_v8_1.offset_1_padding_1.dissect = function(buffer, offset, packet, parent)
  local length = b3_equities_binaryentrypoint_sbe_v8_1.offset_1_padding_1.size
  local range = buffer(offset, length)
  local value = range:bytes():tohex(false, " ")
  local display = b3_equities_binaryentrypoint_sbe_v8_1.offset_1_padding_1.display(value, buffer, offset, packet, parent)

  parent:add(omi_b3_equities_binaryentrypoint_sbe_v8_1.fields.offset_1_padding_1, range, value, display)

  return offset + length, value
end

-- No Sides Group
b3_equities_binaryentrypoint_sbe_v8_1.no_sides_group = {}

-- Calculate size of: No Sides Group
b3_equities_binaryentrypoint_sbe_v8_1.no_sides_group.size = function(buffer, offset)
  local index = 0

  index = index + b3_equities_binaryentrypoint_sbe_v8_1.side.size

  index = index + b3_equities_binaryentrypoint_sbe_v8_1.offset_1_padding_1.size

  index = index + b3_equities_binaryentrypoint_sbe_v8_1.account.size

  index = index + b3_equities_binaryentrypoint_sbe_v8_1.entering_firm_optional.size

  index = index + b3_equities_binaryentrypoint_sbe_v8_1.clordid.size

  return index
end

-- Display: No Sides Group
b3_equities_binaryentrypoint_sbe_v8_1.no_sides_group.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: No Sides Group
b3_equities_binaryentrypoint_sbe_v8_1.no_sides_group.fields = function(buffer, offset, packet, parent, no_sides_group_index)
  local index = offset

  -- Implicit No Sides Group Index
  if no_sides_group_index ~= nil then
    local iteration = parent:add(omi_b3_equities_binaryentrypoint_sbe_v8_1.fields.no_sides_group_index, no_sides_group_index)
    iteration:set_generated()
  end

  -- Side: 1 Byte Ascii String Enum with 2 values
  index, side = b3_equities_binaryentrypoint_sbe_v8_1.side.dissect(buffer, index, packet, parent)

  -- Offset 1 Padding 1: 1 Byte
  index, offset_1_padding_1 = b3_equities_binaryentrypoint_sbe_v8_1.offset_1_padding_1.dissect(buffer, index, packet, parent)

  -- Account: 4 Byte Unsigned Fixed Width Integer
  index, account = b3_equities_binaryentrypoint_sbe_v8_1.account.dissect(buffer, index, packet, parent)

  -- Entering Firm Optional: 4 Byte Unsigned Fixed Width Integer
  index, entering_firm_optional = b3_equities_binaryentrypoint_sbe_v8_1.entering_firm_optional.dissect(buffer, index, packet, parent)

  -- ClOrdId: 8 Byte Unsigned Fixed Width Integer
  index, clordid = b3_equities_binaryentrypoint_sbe_v8_1.clordid.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: No Sides Group
b3_equities_binaryentrypoint_sbe_v8_1.no_sides_group.dissect = function(buffer, offset, packet, parent, no_sides_group_index)
  if show.no_sides_group then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_b3_equities_binaryentrypoint_sbe_v8_1.fields.no_sides_group, buffer(offset, 0))
    local index = b3_equities_binaryentrypoint_sbe_v8_1.no_sides_group.fields(buffer, offset, packet, parent, no_sides_group_index)
    local length = index - offset
    parent:set_len(length)
    local display = b3_equities_binaryentrypoint_sbe_v8_1.no_sides_group.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return b3_equities_binaryentrypoint_sbe_v8_1.no_sides_group.fields(buffer, offset, packet, parent, no_sides_group_index)
  end
end

-- No Sides Groups
b3_equities_binaryentrypoint_sbe_v8_1.no_sides_groups = {}

-- Calculate size of: No Sides Groups
b3_equities_binaryentrypoint_sbe_v8_1.no_sides_groups.size = function(buffer, offset)
  local index = 0

  index = index + b3_equities_binaryentrypoint_sbe_v8_1.group_size_encoding.size(buffer, offset + index)

  -- Calculate field size from count
  local no_sides_group_count = buffer(offset + index - 1, 1):le_uint()
  index = index + no_sides_group_count * 18

  return index
end

-- Display: No Sides Groups
b3_equities_binaryentrypoint_sbe_v8_1.no_sides_groups.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: No Sides Groups
b3_equities_binaryentrypoint_sbe_v8_1.no_sides_groups.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Group Size Encoding: Struct of 2 fields
  index, group_size_encoding = b3_equities_binaryentrypoint_sbe_v8_1.group_size_encoding.dissect(buffer, index, packet, parent)

  -- Dependency element: Num In Group
  local num_in_group = buffer(index - 1, 1):le_uint()

  -- Repeating: No Sides Group
  for no_sides_group_index = 1, num_in_group do
    index, no_sides_group = b3_equities_binaryentrypoint_sbe_v8_1.no_sides_group.dissect(buffer, index, packet, parent, no_sides_group_index)
  end

  return index
end

-- Dissect: No Sides Groups
b3_equities_binaryentrypoint_sbe_v8_1.no_sides_groups.dissect = function(buffer, offset, packet, parent)
  -- Optionally add dynamic struct element to protocol tree
  if show.no_sides_groups then
    local length = b3_equities_binaryentrypoint_sbe_v8_1.no_sides_groups.size(buffer, offset)
    local range = buffer(offset, length)
    local display = b3_equities_binaryentrypoint_sbe_v8_1.no_sides_groups.display(buffer, packet, parent)
    parent = parent:add(omi_b3_equities_binaryentrypoint_sbe_v8_1.fields.no_sides_groups, range, display)
  end

  return b3_equities_binaryentrypoint_sbe_v8_1.no_sides_groups.fields(buffer, offset, packet, parent)
end

-- Days To Settlement Optional
b3_equities_binaryentrypoint_sbe_v8_1.days_to_settlement_optional = {}

-- Size: Days To Settlement Optional
b3_equities_binaryentrypoint_sbe_v8_1.days_to_settlement_optional.size = 2

-- Display: Days To Settlement Optional
b3_equities_binaryentrypoint_sbe_v8_1.days_to_settlement_optional.display = function(value)
  return "Days To Settlement Optional: "..value
end

-- Dissect: Days To Settlement Optional
b3_equities_binaryentrypoint_sbe_v8_1.days_to_settlement_optional.dissect = function(buffer, offset, packet, parent)
  local length = b3_equities_binaryentrypoint_sbe_v8_1.days_to_settlement_optional.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = b3_equities_binaryentrypoint_sbe_v8_1.days_to_settlement_optional.display(value, buffer, offset, packet, parent)

  parent:add(omi_b3_equities_binaryentrypoint_sbe_v8_1.fields.days_to_settlement_optional, range, value, display)

  return offset + length, value
end

-- Fixed Rate Percentage 8 Optional
b3_equities_binaryentrypoint_sbe_v8_1.fixed_rate_percentage_8_optional = {}

-- Size: Fixed Rate Percentage 8 Optional
b3_equities_binaryentrypoint_sbe_v8_1.fixed_rate_percentage_8_optional.size = 8

-- Display: Fixed Rate Percentage 8 Optional
b3_equities_binaryentrypoint_sbe_v8_1.fixed_rate_percentage_8_optional.display = function(raw, value)
  -- Check null sentinel value
  if raw == Int64(0x00000000, 0x80000000) then
    return "Fixed Rate Percentage 8 Optional: No Value"
  end

  return "Fixed Rate Percentage 8 Optional: "..value
end

-- Translate: Fixed Rate Percentage 8 Optional
translate.fixed_rate_percentage_8_optional = function(raw)
  -- Check null sentinel value
  if raw == Int64(0x00000000, 0x80000000) then
    return 0/0
  end

  return raw:tonumber()/100000000
end

-- Dissect: Fixed Rate Percentage 8 Optional
b3_equities_binaryentrypoint_sbe_v8_1.fixed_rate_percentage_8_optional.dissect = function(buffer, offset, packet, parent)
  local length = b3_equities_binaryentrypoint_sbe_v8_1.fixed_rate_percentage_8_optional.size
  local range = buffer(offset, length)
  local raw = range:le_int64()
  local value = translate.fixed_rate_percentage_8_optional(raw)
  local display = b3_equities_binaryentrypoint_sbe_v8_1.fixed_rate_percentage_8_optional.display(raw, value, buffer, offset, packet, parent)

  parent:add(omi_b3_equities_binaryentrypoint_sbe_v8_1.fields.fixed_rate_percentage_8_optional, range, value, display)

  return offset + length, value
end

-- Executing Trader
b3_equities_binaryentrypoint_sbe_v8_1.executing_trader = {}

-- Size: Executing Trader
b3_equities_binaryentrypoint_sbe_v8_1.executing_trader.size = 5

-- Display: Executing Trader
b3_equities_binaryentrypoint_sbe_v8_1.executing_trader.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Executing Trader: No Value"
  end

  return "Executing Trader: "..value
end

-- Dissect: Executing Trader
b3_equities_binaryentrypoint_sbe_v8_1.executing_trader.dissect = function(buffer, offset, packet, parent)
  local length = b3_equities_binaryentrypoint_sbe_v8_1.executing_trader.size
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

  local display = b3_equities_binaryentrypoint_sbe_v8_1.executing_trader.display(value, buffer, offset, packet, parent)

  parent:add(omi_b3_equities_binaryentrypoint_sbe_v8_1.fields.executing_trader, range, value, display)

  return offset + length, value
end

-- Order Qty Optional
b3_equities_binaryentrypoint_sbe_v8_1.order_qty_optional = {}

-- Size: Order Qty Optional
b3_equities_binaryentrypoint_sbe_v8_1.order_qty_optional.size = 8

-- Display: Order Qty Optional
b3_equities_binaryentrypoint_sbe_v8_1.order_qty_optional.display = function(value)
  return "Order Qty Optional: "..value
end

-- Dissect: Order Qty Optional
b3_equities_binaryentrypoint_sbe_v8_1.order_qty_optional.dissect = function(buffer, offset, packet, parent)
  local length = b3_equities_binaryentrypoint_sbe_v8_1.order_qty_optional.size
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = b3_equities_binaryentrypoint_sbe_v8_1.order_qty_optional.display(value, buffer, offset, packet, parent)

  parent:add(omi_b3_equities_binaryentrypoint_sbe_v8_1.fields.order_qty_optional, range, value, display)

  return offset + length, value
end

-- Price 8 Optional
b3_equities_binaryentrypoint_sbe_v8_1.price_8_optional = {}

-- Size: Price 8 Optional
b3_equities_binaryentrypoint_sbe_v8_1.price_8_optional.size = 8

-- Display: Price 8 Optional
b3_equities_binaryentrypoint_sbe_v8_1.price_8_optional.display = function(raw, value)
  -- Check null sentinel value
  if raw == Int64(0x00000000, 0x80000000) then
    return "Price 8 Optional: No Value"
  end

  return "Price 8 Optional: "..value
end

-- Translate: Price 8 Optional
translate.price_8_optional = function(raw)
  -- Check null sentinel value
  if raw == Int64(0x00000000, 0x80000000) then
    return 0/0
  end

  return raw:tonumber()/100000000
end

-- Dissect: Price 8 Optional
b3_equities_binaryentrypoint_sbe_v8_1.price_8_optional.dissect = function(buffer, offset, packet, parent)
  local length = b3_equities_binaryentrypoint_sbe_v8_1.price_8_optional.size
  local range = buffer(offset, length)
  local raw = range:le_int64()
  local value = translate.price_8_optional(raw)
  local display = b3_equities_binaryentrypoint_sbe_v8_1.price_8_optional.display(raw, value, buffer, offset, packet, parent)

  parent:add(omi_b3_equities_binaryentrypoint_sbe_v8_1.fields.price_8_optional, range, value, display)

  return offset + length, value
end

-- SettlType Optional
b3_equities_binaryentrypoint_sbe_v8_1.settltype_optional = {}

-- Size: SettlType Optional
b3_equities_binaryentrypoint_sbe_v8_1.settltype_optional.size = 1

-- Display: SettlType Optional
b3_equities_binaryentrypoint_sbe_v8_1.settltype_optional.display = function(value)
  -- Check if field has value
  if value == nil or value == 0 then
    return "SettlType Optional: No Value"
  end

  if value == "0" then
    return "SettlType Optional: Buyers Discretion (0)"
  end
  if value == "8" then
    return "SettlType Optional: Sellers Discretion (8)"
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
b3_equities_binaryentrypoint_sbe_v8_1.settltype_optional.dissect = function(buffer, offset, packet, parent)
  local length = b3_equities_binaryentrypoint_sbe_v8_1.settltype_optional.size
  local range = buffer(offset, length)

  -- parse as byte
  local value = range:uint()

  -- check if value is non zero
  if value ~= 0 then
    value = range:string()
  end

  local display = b3_equities_binaryentrypoint_sbe_v8_1.settltype_optional.display(value, buffer, offset, packet, parent)

  parent:add(omi_b3_equities_binaryentrypoint_sbe_v8_1.fields.settltype_optional, range, value, display)

  return offset + length, value
end

-- Contra Broker
b3_equities_binaryentrypoint_sbe_v8_1.contra_broker = {}

-- Size: Contra Broker
b3_equities_binaryentrypoint_sbe_v8_1.contra_broker.size = 4

-- Display: Contra Broker
b3_equities_binaryentrypoint_sbe_v8_1.contra_broker.display = function(value)
  return "Contra Broker: "..value
end

-- Dissect: Contra Broker
b3_equities_binaryentrypoint_sbe_v8_1.contra_broker.dissect = function(buffer, offset, packet, parent)
  local length = b3_equities_binaryentrypoint_sbe_v8_1.contra_broker.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = b3_equities_binaryentrypoint_sbe_v8_1.contra_broker.display(value, buffer, offset, packet, parent)

  parent:add(omi_b3_equities_binaryentrypoint_sbe_v8_1.fields.contra_broker, range, value, display)

  return offset + length, value
end

-- Quote Id Optional
b3_equities_binaryentrypoint_sbe_v8_1.quote_id_optional = {}

-- Size: Quote Id Optional
b3_equities_binaryentrypoint_sbe_v8_1.quote_id_optional.size = 8

-- Display: Quote Id Optional
b3_equities_binaryentrypoint_sbe_v8_1.quote_id_optional.display = function(value)
  return "Quote Id Optional: "..value
end

-- Dissect: Quote Id Optional
b3_equities_binaryentrypoint_sbe_v8_1.quote_id_optional.dissect = function(buffer, offset, packet, parent)
  local length = b3_equities_binaryentrypoint_sbe_v8_1.quote_id_optional.size
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = b3_equities_binaryentrypoint_sbe_v8_1.quote_id_optional.display(value, buffer, offset, packet, parent)

  parent:add(omi_b3_equities_binaryentrypoint_sbe_v8_1.fields.quote_id_optional, range, value, display)

  return offset + length, value
end

-- Quote Req Id
b3_equities_binaryentrypoint_sbe_v8_1.quote_req_id = {}

-- Size: Quote Req Id
b3_equities_binaryentrypoint_sbe_v8_1.quote_req_id.size = 8

-- Display: Quote Req Id
b3_equities_binaryentrypoint_sbe_v8_1.quote_req_id.display = function(value)
  return "Quote Req Id: "..value
end

-- Dissect: Quote Req Id
b3_equities_binaryentrypoint_sbe_v8_1.quote_req_id.dissect = function(buffer, offset, packet, parent)
  local length = b3_equities_binaryentrypoint_sbe_v8_1.quote_req_id.size
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = b3_equities_binaryentrypoint_sbe_v8_1.quote_req_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_b3_equities_binaryentrypoint_sbe_v8_1.fields.quote_req_id, range, value, display)

  return offset + length, value
end

-- Quote Request Reject Reason
b3_equities_binaryentrypoint_sbe_v8_1.quote_request_reject_reason = {}

-- Size: Quote Request Reject Reason
b3_equities_binaryentrypoint_sbe_v8_1.quote_request_reject_reason.size = 4

-- Display: Quote Request Reject Reason
b3_equities_binaryentrypoint_sbe_v8_1.quote_request_reject_reason.display = function(value)
  return "Quote Request Reject Reason: "..value
end

-- Dissect: Quote Request Reject Reason
b3_equities_binaryentrypoint_sbe_v8_1.quote_request_reject_reason.dissect = function(buffer, offset, packet, parent)
  local length = b3_equities_binaryentrypoint_sbe_v8_1.quote_request_reject_reason.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = b3_equities_binaryentrypoint_sbe_v8_1.quote_request_reject_reason.display(value, buffer, offset, packet, parent)

  parent:add(omi_b3_equities_binaryentrypoint_sbe_v8_1.fields.quote_request_reject_reason, range, value, display)

  return offset + length, value
end

-- Market Segment Id Optional
b3_equities_binaryentrypoint_sbe_v8_1.market_segment_id_optional = {}

-- Size: Market Segment Id Optional
b3_equities_binaryentrypoint_sbe_v8_1.market_segment_id_optional.size = 1

-- Display: Market Segment Id Optional
b3_equities_binaryentrypoint_sbe_v8_1.market_segment_id_optional.display = function(value)
  return "Market Segment Id Optional: "..value
end

-- Dissect: Market Segment Id Optional
b3_equities_binaryentrypoint_sbe_v8_1.market_segment_id_optional.dissect = function(buffer, offset, packet, parent)
  local length = b3_equities_binaryentrypoint_sbe_v8_1.market_segment_id_optional.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = b3_equities_binaryentrypoint_sbe_v8_1.market_segment_id_optional.display(value, buffer, offset, packet, parent)

  parent:add(omi_b3_equities_binaryentrypoint_sbe_v8_1.fields.market_segment_id_optional, range, value, display)

  return offset + length, value
end

-- Bidirectional Business Header
b3_equities_binaryentrypoint_sbe_v8_1.bidirectional_business_header = {}

-- Calculate size of: Bidirectional Business Header
b3_equities_binaryentrypoint_sbe_v8_1.bidirectional_business_header.size = function(buffer, offset)
  local index = 0

  index = index + b3_equities_binaryentrypoint_sbe_v8_1.session_id.size

  index = index + b3_equities_binaryentrypoint_sbe_v8_1.msg_seq_num.size

  index = index + b3_equities_binaryentrypoint_sbe_v8_1.sending_time.size

  index = index + b3_equities_binaryentrypoint_sbe_v8_1.poss_resend.size

  index = index + b3_equities_binaryentrypoint_sbe_v8_1.market_segment_id_optional.size

  index = index + b3_equities_binaryentrypoint_sbe_v8_1.padding.size

  return index
end

-- Display: Bidirectional Business Header
b3_equities_binaryentrypoint_sbe_v8_1.bidirectional_business_header.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Bidirectional Business Header
b3_equities_binaryentrypoint_sbe_v8_1.bidirectional_business_header.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Session Id: 4 Byte Unsigned Fixed Width Integer
  index, session_id = b3_equities_binaryentrypoint_sbe_v8_1.session_id.dissect(buffer, index, packet, parent)

  -- Msg Seq Num: 4 Byte Unsigned Fixed Width Integer
  index, msg_seq_num = b3_equities_binaryentrypoint_sbe_v8_1.msg_seq_num.dissect(buffer, index, packet, parent)

  -- Sending Time: 8 Byte Unsigned Fixed Width Integer Nullable
  index, sending_time = b3_equities_binaryentrypoint_sbe_v8_1.sending_time.dissect(buffer, index, packet, parent)

  -- Poss Resend: 1 Byte Unsigned Fixed Width Integer
  index, poss_resend = b3_equities_binaryentrypoint_sbe_v8_1.poss_resend.dissect(buffer, index, packet, parent)

  -- Market Segment Id Optional: 1 Byte Unsigned Fixed Width Integer
  index, market_segment_id_optional = b3_equities_binaryentrypoint_sbe_v8_1.market_segment_id_optional.dissect(buffer, index, packet, parent)

  -- Padding: 1 Byte Ascii String
  index, padding = b3_equities_binaryentrypoint_sbe_v8_1.padding.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Bidirectional Business Header
b3_equities_binaryentrypoint_sbe_v8_1.bidirectional_business_header.dissect = function(buffer, offset, packet, parent)
  if show.bidirectional_business_header then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_b3_equities_binaryentrypoint_sbe_v8_1.fields.bidirectional_business_header, buffer(offset, 0))
    local index = b3_equities_binaryentrypoint_sbe_v8_1.bidirectional_business_header.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = b3_equities_binaryentrypoint_sbe_v8_1.bidirectional_business_header.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return b3_equities_binaryentrypoint_sbe_v8_1.bidirectional_business_header.fields(buffer, offset, packet, parent)
  end
end

-- Quote Request Reject Message
b3_equities_binaryentrypoint_sbe_v8_1.quote_request_reject_message = {}

-- Calculate size of: Quote Request Reject Message
b3_equities_binaryentrypoint_sbe_v8_1.quote_request_reject_message.size = function(buffer, offset)
  local index = 0

  index = index + b3_equities_binaryentrypoint_sbe_v8_1.bidirectional_business_header.size(buffer, offset + index)

  index = index + b3_equities_binaryentrypoint_sbe_v8_1.quote_request_reject_reason.size

  index = index + b3_equities_binaryentrypoint_sbe_v8_1.security_id.size

  index = index + b3_equities_binaryentrypoint_sbe_v8_1.quote_req_id.size

  index = index + b3_equities_binaryentrypoint_sbe_v8_1.quote_id_optional.size

  index = index + b3_equities_binaryentrypoint_sbe_v8_1.trade_id_optional.size

  index = index + b3_equities_binaryentrypoint_sbe_v8_1.contra_broker.size

  index = index + b3_equities_binaryentrypoint_sbe_v8_1.transact_time.size

  index = index + b3_equities_binaryentrypoint_sbe_v8_1.entering_trader.size

  index = index + b3_equities_binaryentrypoint_sbe_v8_1.settltype_optional.size

  index = index + b3_equities_binaryentrypoint_sbe_v8_1.price_8_optional.size

  index = index + b3_equities_binaryentrypoint_sbe_v8_1.order_qty_optional.size

  index = index + b3_equities_binaryentrypoint_sbe_v8_1.sender_location.size

  index = index + b3_equities_binaryentrypoint_sbe_v8_1.executing_trader.size

  index = index + b3_equities_binaryentrypoint_sbe_v8_1.fixed_rate_percentage_8_optional.size

  index = index + b3_equities_binaryentrypoint_sbe_v8_1.days_to_settlement_optional.size

  index = index + b3_equities_binaryentrypoint_sbe_v8_1.no_sides_groups.size(buffer, offset + index)

  index = index + b3_equities_binaryentrypoint_sbe_v8_1.desk_id.size(buffer, offset + index)

  index = index + b3_equities_binaryentrypoint_sbe_v8_1.memo.size(buffer, offset + index)

  index = index + b3_equities_binaryentrypoint_sbe_v8_1.text.size(buffer, offset + index)

  return index
end

-- Display: Quote Request Reject Message
b3_equities_binaryentrypoint_sbe_v8_1.quote_request_reject_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Quote Request Reject Message
b3_equities_binaryentrypoint_sbe_v8_1.quote_request_reject_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Bidirectional Business Header: Struct of 6 fields
  index, bidirectional_business_header = b3_equities_binaryentrypoint_sbe_v8_1.bidirectional_business_header.dissect(buffer, index, packet, parent)

  -- Quote Request Reject Reason: 4 Byte Unsigned Fixed Width Integer
  index, quote_request_reject_reason = b3_equities_binaryentrypoint_sbe_v8_1.quote_request_reject_reason.dissect(buffer, index, packet, parent)

  -- Security Id: 8 Byte Unsigned Fixed Width Integer
  index, security_id = b3_equities_binaryentrypoint_sbe_v8_1.security_id.dissect(buffer, index, packet, parent)

  -- Quote Req Id: 8 Byte Unsigned Fixed Width Integer
  index, quote_req_id = b3_equities_binaryentrypoint_sbe_v8_1.quote_req_id.dissect(buffer, index, packet, parent)

  -- Quote Id Optional: 8 Byte Unsigned Fixed Width Integer
  index, quote_id_optional = b3_equities_binaryentrypoint_sbe_v8_1.quote_id_optional.dissect(buffer, index, packet, parent)

  -- Trade Id Optional: 4 Byte Unsigned Fixed Width Integer
  index, trade_id_optional = b3_equities_binaryentrypoint_sbe_v8_1.trade_id_optional.dissect(buffer, index, packet, parent)

  -- Contra Broker: 4 Byte Unsigned Fixed Width Integer
  index, contra_broker = b3_equities_binaryentrypoint_sbe_v8_1.contra_broker.dissect(buffer, index, packet, parent)

  -- Transact Time: 8 Byte Unsigned Fixed Width Integer
  index, transact_time = b3_equities_binaryentrypoint_sbe_v8_1.transact_time.dissect(buffer, index, packet, parent)

  -- Entering Trader: 5 Byte Ascii String
  index, entering_trader = b3_equities_binaryentrypoint_sbe_v8_1.entering_trader.dissect(buffer, index, packet, parent)

  -- SettlType Optional: 1 Byte Ascii String Enum with 4 values
  index, settltype_optional = b3_equities_binaryentrypoint_sbe_v8_1.settltype_optional.dissect(buffer, index, packet, parent)

  -- Price 8 Optional: 8 Byte Signed Fixed Width Integer Nullable
  index, price_8_optional = b3_equities_binaryentrypoint_sbe_v8_1.price_8_optional.dissect(buffer, index, packet, parent)

  -- Order Qty Optional: 8 Byte Unsigned Fixed Width Integer
  index, order_qty_optional = b3_equities_binaryentrypoint_sbe_v8_1.order_qty_optional.dissect(buffer, index, packet, parent)

  -- Sender Location: 10 Byte Ascii String
  index, sender_location = b3_equities_binaryentrypoint_sbe_v8_1.sender_location.dissect(buffer, index, packet, parent)

  -- Executing Trader: 5 Byte Ascii String
  index, executing_trader = b3_equities_binaryentrypoint_sbe_v8_1.executing_trader.dissect(buffer, index, packet, parent)

  -- Fixed Rate Percentage 8 Optional: 8 Byte Signed Fixed Width Integer Nullable
  index, fixed_rate_percentage_8_optional = b3_equities_binaryentrypoint_sbe_v8_1.fixed_rate_percentage_8_optional.dissect(buffer, index, packet, parent)

  -- Days To Settlement Optional: 2 Byte Unsigned Fixed Width Integer
  index, days_to_settlement_optional = b3_equities_binaryentrypoint_sbe_v8_1.days_to_settlement_optional.dissect(buffer, index, packet, parent)

  -- No Sides Groups: Struct of 2 fields
  index, no_sides_groups = b3_equities_binaryentrypoint_sbe_v8_1.no_sides_groups.dissect(buffer, index, packet, parent)

  -- Desk Id: Struct of 2 fields
  index, desk_id = b3_equities_binaryentrypoint_sbe_v8_1.desk_id.dissect(buffer, index, packet, parent)

  -- Memo: Struct of 2 fields
  index, memo = b3_equities_binaryentrypoint_sbe_v8_1.memo.dissect(buffer, index, packet, parent)

  -- Text: Struct of 2 fields
  index, text = b3_equities_binaryentrypoint_sbe_v8_1.text.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Quote Request Reject Message
b3_equities_binaryentrypoint_sbe_v8_1.quote_request_reject_message.dissect = function(buffer, offset, packet, parent)
  -- Optionally add dynamic struct element to protocol tree
  if show.quote_request_reject_message then
    local length = b3_equities_binaryentrypoint_sbe_v8_1.quote_request_reject_message.size(buffer, offset)
    local range = buffer(offset, length)
    local display = b3_equities_binaryentrypoint_sbe_v8_1.quote_request_reject_message.display(buffer, packet, parent)
    parent = parent:add(omi_b3_equities_binaryentrypoint_sbe_v8_1.fields.quote_request_reject_message, range, display)
  end

  return b3_equities_binaryentrypoint_sbe_v8_1.quote_request_reject_message.fields(buffer, offset, packet, parent)
end

-- Quote Req Id Optional
b3_equities_binaryentrypoint_sbe_v8_1.quote_req_id_optional = {}

-- Size: Quote Req Id Optional
b3_equities_binaryentrypoint_sbe_v8_1.quote_req_id_optional.size = 8

-- Display: Quote Req Id Optional
b3_equities_binaryentrypoint_sbe_v8_1.quote_req_id_optional.display = function(value)
  return "Quote Req Id Optional: "..value
end

-- Dissect: Quote Req Id Optional
b3_equities_binaryentrypoint_sbe_v8_1.quote_req_id_optional.dissect = function(buffer, offset, packet, parent)
  local length = b3_equities_binaryentrypoint_sbe_v8_1.quote_req_id_optional.size
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = b3_equities_binaryentrypoint_sbe_v8_1.quote_req_id_optional.display(value, buffer, offset, packet, parent)

  parent:add(omi_b3_equities_binaryentrypoint_sbe_v8_1.fields.quote_req_id_optional, range, value, display)

  return offset + length, value
end

-- Quote Cancel Message
b3_equities_binaryentrypoint_sbe_v8_1.quote_cancel_message = {}

-- Calculate size of: Quote Cancel Message
b3_equities_binaryentrypoint_sbe_v8_1.quote_cancel_message.size = function(buffer, offset)
  local index = 0

  index = index + b3_equities_binaryentrypoint_sbe_v8_1.bidirectional_business_header.size(buffer, offset + index)

  index = index + b3_equities_binaryentrypoint_sbe_v8_1.security_id.size

  index = index + b3_equities_binaryentrypoint_sbe_v8_1.quote_req_id_optional.size

  index = index + b3_equities_binaryentrypoint_sbe_v8_1.quote_id_optional.size

  index = index + b3_equities_binaryentrypoint_sbe_v8_1.account.size

  index = index + b3_equities_binaryentrypoint_sbe_v8_1.sender_location.size

  index = index + b3_equities_binaryentrypoint_sbe_v8_1.entering_trader.size

  index = index + b3_equities_binaryentrypoint_sbe_v8_1.executing_trader.size

  index = index + b3_equities_binaryentrypoint_sbe_v8_1.desk_id.size(buffer, offset + index)

  index = index + b3_equities_binaryentrypoint_sbe_v8_1.memo.size(buffer, offset + index)

  return index
end

-- Display: Quote Cancel Message
b3_equities_binaryentrypoint_sbe_v8_1.quote_cancel_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Quote Cancel Message
b3_equities_binaryentrypoint_sbe_v8_1.quote_cancel_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Bidirectional Business Header: Struct of 6 fields
  index, bidirectional_business_header = b3_equities_binaryentrypoint_sbe_v8_1.bidirectional_business_header.dissect(buffer, index, packet, parent)

  -- Security Id: 8 Byte Unsigned Fixed Width Integer
  index, security_id = b3_equities_binaryentrypoint_sbe_v8_1.security_id.dissect(buffer, index, packet, parent)

  -- Quote Req Id Optional: 8 Byte Unsigned Fixed Width Integer
  index, quote_req_id_optional = b3_equities_binaryentrypoint_sbe_v8_1.quote_req_id_optional.dissect(buffer, index, packet, parent)

  -- Quote Id Optional: 8 Byte Unsigned Fixed Width Integer
  index, quote_id_optional = b3_equities_binaryentrypoint_sbe_v8_1.quote_id_optional.dissect(buffer, index, packet, parent)

  -- Account: 4 Byte Unsigned Fixed Width Integer
  index, account = b3_equities_binaryentrypoint_sbe_v8_1.account.dissect(buffer, index, packet, parent)

  -- Sender Location: 10 Byte Ascii String
  index, sender_location = b3_equities_binaryentrypoint_sbe_v8_1.sender_location.dissect(buffer, index, packet, parent)

  -- Entering Trader: 5 Byte Ascii String
  index, entering_trader = b3_equities_binaryentrypoint_sbe_v8_1.entering_trader.dissect(buffer, index, packet, parent)

  -- Executing Trader: 5 Byte Ascii String
  index, executing_trader = b3_equities_binaryentrypoint_sbe_v8_1.executing_trader.dissect(buffer, index, packet, parent)

  -- Desk Id: Struct of 2 fields
  index, desk_id = b3_equities_binaryentrypoint_sbe_v8_1.desk_id.dissect(buffer, index, packet, parent)

  -- Memo: Struct of 2 fields
  index, memo = b3_equities_binaryentrypoint_sbe_v8_1.memo.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Quote Cancel Message
b3_equities_binaryentrypoint_sbe_v8_1.quote_cancel_message.dissect = function(buffer, offset, packet, parent)
  -- Optionally add dynamic struct element to protocol tree
  if show.quote_cancel_message then
    local length = b3_equities_binaryentrypoint_sbe_v8_1.quote_cancel_message.size(buffer, offset)
    local range = buffer(offset, length)
    local display = b3_equities_binaryentrypoint_sbe_v8_1.quote_cancel_message.display(buffer, packet, parent)
    parent = parent:add(omi_b3_equities_binaryentrypoint_sbe_v8_1.fields.quote_cancel_message, range, display)
  end

  return b3_equities_binaryentrypoint_sbe_v8_1.quote_cancel_message.fields(buffer, offset, packet, parent)
end

-- Days To Settlement
b3_equities_binaryentrypoint_sbe_v8_1.days_to_settlement = {}

-- Size: Days To Settlement
b3_equities_binaryentrypoint_sbe_v8_1.days_to_settlement.size = 2

-- Display: Days To Settlement
b3_equities_binaryentrypoint_sbe_v8_1.days_to_settlement.display = function(value)
  return "Days To Settlement: "..value
end

-- Dissect: Days To Settlement
b3_equities_binaryentrypoint_sbe_v8_1.days_to_settlement.dissect = function(buffer, offset, packet, parent)
  local length = b3_equities_binaryentrypoint_sbe_v8_1.days_to_settlement.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = b3_equities_binaryentrypoint_sbe_v8_1.days_to_settlement.display(value, buffer, offset, packet, parent)

  parent:add(omi_b3_equities_binaryentrypoint_sbe_v8_1.fields.days_to_settlement, range, value, display)

  return offset + length, value
end

-- Execute Underlying Trade
b3_equities_binaryentrypoint_sbe_v8_1.execute_underlying_trade = {}

-- Size: Execute Underlying Trade
b3_equities_binaryentrypoint_sbe_v8_1.execute_underlying_trade.size = 1

-- Display: Execute Underlying Trade
b3_equities_binaryentrypoint_sbe_v8_1.execute_underlying_trade.display = function(value)
  -- Check if field has value
  if value == nil or value == 0 then
    return "Execute Underlying Trade: No Value"
  end

  if value == "0" then
    return "Execute Underlying Trade: No Underlying Trade (0)"
  end
  if value == "1" then
    return "Execute Underlying Trade: Underlying Opposing Trade (1)"
  end
  if value == 0 then
    return "Execute Underlying Trade: No Value"
  end

  return "Execute Underlying Trade: Unknown("..value..")"
end

-- Dissect: Execute Underlying Trade
b3_equities_binaryentrypoint_sbe_v8_1.execute_underlying_trade.dissect = function(buffer, offset, packet, parent)
  local length = b3_equities_binaryentrypoint_sbe_v8_1.execute_underlying_trade.size
  local range = buffer(offset, length)

  -- parse as byte
  local value = range:uint()

  -- check if value is non zero
  if value ~= 0 then
    value = range:string()
  end

  local display = b3_equities_binaryentrypoint_sbe_v8_1.execute_underlying_trade.display(value, buffer, offset, packet, parent)

  parent:add(omi_b3_equities_binaryentrypoint_sbe_v8_1.fields.execute_underlying_trade, range, value, display)

  return offset + length, value
end

-- Fixed Rate Percentage 8
b3_equities_binaryentrypoint_sbe_v8_1.fixed_rate_percentage_8 = {}

-- Size: Fixed Rate Percentage 8
b3_equities_binaryentrypoint_sbe_v8_1.fixed_rate_percentage_8.size = 8

-- Display: Fixed Rate Percentage 8
b3_equities_binaryentrypoint_sbe_v8_1.fixed_rate_percentage_8.display = function(value)
  return "Fixed Rate Percentage 8: "..value
end

-- Translate: Fixed Rate Percentage 8
translate.fixed_rate_percentage_8 = function(raw)
  return raw:tonumber()/100000000
end

-- Dissect: Fixed Rate Percentage 8
b3_equities_binaryentrypoint_sbe_v8_1.fixed_rate_percentage_8.dissect = function(buffer, offset, packet, parent)
  local length = b3_equities_binaryentrypoint_sbe_v8_1.fixed_rate_percentage_8.size
  local range = buffer(offset, length)
  local raw = range:le_int64()
  local value = translate.fixed_rate_percentage_8(raw)
  local display = b3_equities_binaryentrypoint_sbe_v8_1.fixed_rate_percentage_8.display(value, buffer, offset, packet, parent)

  parent:add(omi_b3_equities_binaryentrypoint_sbe_v8_1.fields.fixed_rate_percentage_8, range, value, display)

  return offset + length, value
end

-- SettlType
b3_equities_binaryentrypoint_sbe_v8_1.settltype = {}

-- Size: SettlType
b3_equities_binaryentrypoint_sbe_v8_1.settltype.size = 1

-- Display: SettlType
b3_equities_binaryentrypoint_sbe_v8_1.settltype.display = function(value)
  -- Check if field has value
  if value == nil or value == 0 then
    return "SettlType: No Value"
  end

  if value == "0" then
    return "SettlType: Buyers Discretion (0)"
  end
  if value == "8" then
    return "SettlType: Sellers Discretion (8)"
  end
  if value == "X" then
    return "SettlType: Mutual (X)"
  end

  return "SettlType: Unknown("..value..")"
end

-- Dissect: SettlType
b3_equities_binaryentrypoint_sbe_v8_1.settltype.dissect = function(buffer, offset, packet, parent)
  local length = b3_equities_binaryentrypoint_sbe_v8_1.settltype.size
  local range = buffer(offset, length)

  -- parse as byte
  local value = range:uint()

  -- check if value is non zero
  if value ~= 0 then
    value = range:string()
  end

  local display = b3_equities_binaryentrypoint_sbe_v8_1.settltype.display(value, buffer, offset, packet, parent)

  parent:add(omi_b3_equities_binaryentrypoint_sbe_v8_1.fields.settltype, range, value, display)

  return offset + length, value
end

-- Order Qty
b3_equities_binaryentrypoint_sbe_v8_1.order_qty = {}

-- Size: Order Qty
b3_equities_binaryentrypoint_sbe_v8_1.order_qty.size = 8

-- Display: Order Qty
b3_equities_binaryentrypoint_sbe_v8_1.order_qty.display = function(value)
  return "Order Qty: "..value
end

-- Dissect: Order Qty
b3_equities_binaryentrypoint_sbe_v8_1.order_qty.dissect = function(buffer, offset, packet, parent)
  local length = b3_equities_binaryentrypoint_sbe_v8_1.order_qty.size
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = b3_equities_binaryentrypoint_sbe_v8_1.order_qty.display(value, buffer, offset, packet, parent)

  parent:add(omi_b3_equities_binaryentrypoint_sbe_v8_1.fields.order_qty, range, value, display)

  return offset + length, value
end

-- Quote Id
b3_equities_binaryentrypoint_sbe_v8_1.quote_id = {}

-- Size: Quote Id
b3_equities_binaryentrypoint_sbe_v8_1.quote_id.size = 8

-- Display: Quote Id
b3_equities_binaryentrypoint_sbe_v8_1.quote_id.display = function(value)
  return "Quote Id: "..value
end

-- Dissect: Quote Id
b3_equities_binaryentrypoint_sbe_v8_1.quote_id.dissect = function(buffer, offset, packet, parent)
  local length = b3_equities_binaryentrypoint_sbe_v8_1.quote_id.size
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = b3_equities_binaryentrypoint_sbe_v8_1.quote_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_b3_equities_binaryentrypoint_sbe_v8_1.fields.quote_id, range, value, display)

  return offset + length, value
end

-- Quote Message
b3_equities_binaryentrypoint_sbe_v8_1.quote_message = {}

-- Calculate size of: Quote Message
b3_equities_binaryentrypoint_sbe_v8_1.quote_message.size = function(buffer, offset)
  local index = 0

  index = index + b3_equities_binaryentrypoint_sbe_v8_1.bidirectional_business_header.size(buffer, offset + index)

  index = index + b3_equities_binaryentrypoint_sbe_v8_1.security_id.size

  index = index + b3_equities_binaryentrypoint_sbe_v8_1.quote_req_id.size

  index = index + b3_equities_binaryentrypoint_sbe_v8_1.quote_id.size

  index = index + b3_equities_binaryentrypoint_sbe_v8_1.transact_time.size

  index = index + b3_equities_binaryentrypoint_sbe_v8_1.price_8_optional.size

  index = index + b3_equities_binaryentrypoint_sbe_v8_1.order_qty.size

  index = index + b3_equities_binaryentrypoint_sbe_v8_1.side.size

  index = index + b3_equities_binaryentrypoint_sbe_v8_1.settltype.size

  index = index + b3_equities_binaryentrypoint_sbe_v8_1.account.size

  index = index + b3_equities_binaryentrypoint_sbe_v8_1.sender_location.size

  index = index + b3_equities_binaryentrypoint_sbe_v8_1.entering_trader.size

  index = index + b3_equities_binaryentrypoint_sbe_v8_1.executing_trader.size

  index = index + b3_equities_binaryentrypoint_sbe_v8_1.fixed_rate_percentage_8.size

  index = index + b3_equities_binaryentrypoint_sbe_v8_1.execute_underlying_trade.size

  index = index + b3_equities_binaryentrypoint_sbe_v8_1.days_to_settlement.size

  index = index + b3_equities_binaryentrypoint_sbe_v8_1.desk_id.size(buffer, offset + index)

  index = index + b3_equities_binaryentrypoint_sbe_v8_1.memo.size(buffer, offset + index)

  return index
end

-- Display: Quote Message
b3_equities_binaryentrypoint_sbe_v8_1.quote_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Quote Message
b3_equities_binaryentrypoint_sbe_v8_1.quote_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Bidirectional Business Header: Struct of 6 fields
  index, bidirectional_business_header = b3_equities_binaryentrypoint_sbe_v8_1.bidirectional_business_header.dissect(buffer, index, packet, parent)

  -- Security Id: 8 Byte Unsigned Fixed Width Integer
  index, security_id = b3_equities_binaryentrypoint_sbe_v8_1.security_id.dissect(buffer, index, packet, parent)

  -- Quote Req Id: 8 Byte Unsigned Fixed Width Integer
  index, quote_req_id = b3_equities_binaryentrypoint_sbe_v8_1.quote_req_id.dissect(buffer, index, packet, parent)

  -- Quote Id: 8 Byte Unsigned Fixed Width Integer
  index, quote_id = b3_equities_binaryentrypoint_sbe_v8_1.quote_id.dissect(buffer, index, packet, parent)

  -- Transact Time: 8 Byte Unsigned Fixed Width Integer
  index, transact_time = b3_equities_binaryentrypoint_sbe_v8_1.transact_time.dissect(buffer, index, packet, parent)

  -- Price 8 Optional: 8 Byte Signed Fixed Width Integer Nullable
  index, price_8_optional = b3_equities_binaryentrypoint_sbe_v8_1.price_8_optional.dissect(buffer, index, packet, parent)

  -- Order Qty: 8 Byte Unsigned Fixed Width Integer
  index, order_qty = b3_equities_binaryentrypoint_sbe_v8_1.order_qty.dissect(buffer, index, packet, parent)

  -- Side: 1 Byte Ascii String Enum with 2 values
  index, side = b3_equities_binaryentrypoint_sbe_v8_1.side.dissect(buffer, index, packet, parent)

  -- SettlType: 1 Byte Ascii String Enum with 3 values
  index, settltype = b3_equities_binaryentrypoint_sbe_v8_1.settltype.dissect(buffer, index, packet, parent)

  -- Account: 4 Byte Unsigned Fixed Width Integer
  index, account = b3_equities_binaryentrypoint_sbe_v8_1.account.dissect(buffer, index, packet, parent)

  -- Sender Location: 10 Byte Ascii String
  index, sender_location = b3_equities_binaryentrypoint_sbe_v8_1.sender_location.dissect(buffer, index, packet, parent)

  -- Entering Trader: 5 Byte Ascii String
  index, entering_trader = b3_equities_binaryentrypoint_sbe_v8_1.entering_trader.dissect(buffer, index, packet, parent)

  -- Executing Trader: 5 Byte Ascii String
  index, executing_trader = b3_equities_binaryentrypoint_sbe_v8_1.executing_trader.dissect(buffer, index, packet, parent)

  -- Fixed Rate Percentage 8: 8 Byte Signed Fixed Width Integer
  index, fixed_rate_percentage_8 = b3_equities_binaryentrypoint_sbe_v8_1.fixed_rate_percentage_8.dissect(buffer, index, packet, parent)

  -- Execute Underlying Trade: 1 Byte Ascii String Enum with 3 values
  index, execute_underlying_trade = b3_equities_binaryentrypoint_sbe_v8_1.execute_underlying_trade.dissect(buffer, index, packet, parent)

  -- Days To Settlement: 2 Byte Unsigned Fixed Width Integer
  index, days_to_settlement = b3_equities_binaryentrypoint_sbe_v8_1.days_to_settlement.dissect(buffer, index, packet, parent)

  -- Desk Id: Struct of 2 fields
  index, desk_id = b3_equities_binaryentrypoint_sbe_v8_1.desk_id.dissect(buffer, index, packet, parent)

  -- Memo: Struct of 2 fields
  index, memo = b3_equities_binaryentrypoint_sbe_v8_1.memo.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Quote Message
b3_equities_binaryentrypoint_sbe_v8_1.quote_message.dissect = function(buffer, offset, packet, parent)
  -- Optionally add dynamic struct element to protocol tree
  if show.quote_message then
    local length = b3_equities_binaryentrypoint_sbe_v8_1.quote_message.size(buffer, offset)
    local range = buffer(offset, length)
    local display = b3_equities_binaryentrypoint_sbe_v8_1.quote_message.display(buffer, packet, parent)
    parent = parent:add(omi_b3_equities_binaryentrypoint_sbe_v8_1.fields.quote_message, range, display)
  end

  return b3_equities_binaryentrypoint_sbe_v8_1.quote_message.fields(buffer, offset, packet, parent)
end

-- Quote Status Response To
b3_equities_binaryentrypoint_sbe_v8_1.quote_status_response_to = {}

-- Size: Quote Status Response To
b3_equities_binaryentrypoint_sbe_v8_1.quote_status_response_to.size = 1

-- Display: Quote Status Response To
b3_equities_binaryentrypoint_sbe_v8_1.quote_status_response_to.display = function(value)
  -- Check if field has value
  if value == nil or value == 0 then
    return "Quote Status Response To: No Value"
  end

  if value == "0" then
    return "Quote Status Response To: Quote (0)"
  end
  if value == "1" then
    return "Quote Status Response To: Quote Request (1)"
  end
  if value == "2" then
    return "Quote Status Response To: Quote Cancel (2)"
  end
  if value == "3" then
    return "Quote Status Response To: Quote Request Reject (3)"
  end
  if value == 0 then
    return "Quote Status Response To: No Value"
  end

  return "Quote Status Response To: Unknown("..value..")"
end

-- Dissect: Quote Status Response To
b3_equities_binaryentrypoint_sbe_v8_1.quote_status_response_to.dissect = function(buffer, offset, packet, parent)
  local length = b3_equities_binaryentrypoint_sbe_v8_1.quote_status_response_to.size
  local range = buffer(offset, length)

  -- parse as byte
  local value = range:uint()

  -- check if value is non zero
  if value ~= 0 then
    value = range:string()
  end

  local display = b3_equities_binaryentrypoint_sbe_v8_1.quote_status_response_to.display(value, buffer, offset, packet, parent)

  parent:add(omi_b3_equities_binaryentrypoint_sbe_v8_1.fields.quote_status_response_to, range, value, display)

  return offset + length, value
end

-- Quote Status
b3_equities_binaryentrypoint_sbe_v8_1.quote_status = {}

-- Size: Quote Status
b3_equities_binaryentrypoint_sbe_v8_1.quote_status.size = 1

-- Display: Quote Status
b3_equities_binaryentrypoint_sbe_v8_1.quote_status.display = function(value)
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
    return "Quote Status: Quote Not Found (9)"
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
b3_equities_binaryentrypoint_sbe_v8_1.quote_status.dissect = function(buffer, offset, packet, parent)
  local length = b3_equities_binaryentrypoint_sbe_v8_1.quote_status.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = b3_equities_binaryentrypoint_sbe_v8_1.quote_status.display(value, buffer, offset, packet, parent)

  parent:add(omi_b3_equities_binaryentrypoint_sbe_v8_1.fields.quote_status, range, value, display)

  return offset + length, value
end

-- Quote Reject Reason
b3_equities_binaryentrypoint_sbe_v8_1.quote_reject_reason = {}

-- Size: Quote Reject Reason
b3_equities_binaryentrypoint_sbe_v8_1.quote_reject_reason.size = 4

-- Display: Quote Reject Reason
b3_equities_binaryentrypoint_sbe_v8_1.quote_reject_reason.display = function(value)
  if value == 009999 then
    return "Quote Reject Reason: Technical Error: Function not performed  (009999)"
  end
  if value == 008006 then
    return "Quote Reject Reason: Exercise price not allowed  (008006)"
  end
  if value == 008007 then
    return "Quote Reject Reason: No positions blocked  (008007)"
  end
  if value == 008008 then
    return "Quote Reject Reason: Quantity doesn't match with the original request [Quantity on original request: <quantity on original request>]  (008008)"
  end
  if value == 008011 then
    return "Quote Reject Reason: Exercise must be on maturity date.  (008011)"
  end
  if value == 008014 then
    return "Quote Reject Reason: Function not available this time  (008014)"
  end
  if value == 008015 then
    return "Quote Reject Reason: Blocking quantity more than 999999999  (008015)"
  end
  if value == 008020 then
    return "Quote Reject Reason: Trade does not belong to the specified firm ‘Firm Id: <XXX>’  (008020)"
  end
  if value == 008021 then
    return "Quote Reject Reason: Blocking qty more than available quantity  (008021)"
  end
  if value == 008022 then
    return "Quote Reject Reason: There aren't positions available to exercise  (008022)"
  end
  if value == 008023 then
    return "Quote Reject Reason: Total qty must be the sum of all AllocQty  (008023)"
  end
  if value == 008024 then
    return "Quote Reject Reason: Trade already cancelled or does not exist ‘Trade Id: <XXX>’  (008024)"
  end
  if value == 008027 then
    return "Quote Reject Reason: Available quantity to block is zero  (008027)"
  end
  if value == 008028 then
    return "Quote Reject Reason: Invalid Operation for contract type.  (008028)"
  end
  if value == 008036 then
    return "Quote Reject Reason: Function closed or suspended.  (008036)"
  end
  if value == 008039 then
    return "Quote Reject Reason: Exercise price outside required moneyness.  (008039)"
  end
  if value == 008040 then
    return "Quote Reject Reason: Invalid exercise request id to cancel  (008040)"
  end
  if value == 008059 then
    return "Quote Reject Reason: Invalid blocking Id to unblock  (008059)"
  end
  if value == 008062 then
    return "Quote Reject Reason: Invalid quantity to unblock  (008062)"
  end
  if value == 008063 then
    return "Quote Reject Reason: On Behalf Operation not allowed during CCR recovery  (008063)"
  end
  if value == 008065 then
    return "Quote Reject Reason: Problem parsing incoming message  (008065)"
  end
  if value == 008066 then
    return "Quote Reject Reason: Exercise quantity should be greater than zero  (008066)"
  end
  if value == 008069 then
    return "Quote Reject Reason: Contrary Exercise already registered for this position  (008069)"
  end
  if value == 008070 then
    return "Quote Reject Reason: In-the-money contract allows Contrary Exercise to not exercise automatically only  (008070)"
  end
  if value == 008071 then
    return "Quote Reject Reason: At/Out-the-money contract allows Contrary Exercise to exercise automatically only  (008071)"
  end
  if value == 008072 then
    return "Quote Reject Reason: DMA is not allowed to request Contrary Exercise  (008072)"
  end
  if value == 008073 then
    return "Quote Reject Reason: Contrary Exercises can only be requested by default link or position owner with direct access on absence of default link  (008073)"
  end
  if value == 008074 then
    return "Quote Reject Reason: Contrary Exercise invalid operation. (008074)"
  end
  if value == 008075 then
    return "Quote Reject Reason: Threshold must not be informed  (008075)"
  end

  return "Quote Reject Reason: Unknown("..value..")"
end

-- Dissect: Quote Reject Reason
b3_equities_binaryentrypoint_sbe_v8_1.quote_reject_reason.dissect = function(buffer, offset, packet, parent)
  local length = b3_equities_binaryentrypoint_sbe_v8_1.quote_reject_reason.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = b3_equities_binaryentrypoint_sbe_v8_1.quote_reject_reason.display(value, buffer, offset, packet, parent)

  parent:add(omi_b3_equities_binaryentrypoint_sbe_v8_1.fields.quote_reject_reason, range, value, display)

  return offset + length, value
end

-- Quote Status Report Message
b3_equities_binaryentrypoint_sbe_v8_1.quote_status_report_message = {}

-- Calculate size of: Quote Status Report Message
b3_equities_binaryentrypoint_sbe_v8_1.quote_status_report_message.size = function(buffer, offset)
  local index = 0

  index = index + b3_equities_binaryentrypoint_sbe_v8_1.bidirectional_business_header.size(buffer, offset + index)

  index = index + b3_equities_binaryentrypoint_sbe_v8_1.quote_reject_reason.size

  index = index + b3_equities_binaryentrypoint_sbe_v8_1.security_id.size

  index = index + b3_equities_binaryentrypoint_sbe_v8_1.quote_req_id.size

  index = index + b3_equities_binaryentrypoint_sbe_v8_1.quote_id.size

  index = index + b3_equities_binaryentrypoint_sbe_v8_1.trade_id_optional.size

  index = index + b3_equities_binaryentrypoint_sbe_v8_1.contra_broker.size

  index = index + b3_equities_binaryentrypoint_sbe_v8_1.transact_time.size

  index = index + b3_equities_binaryentrypoint_sbe_v8_1.quote_status.size

  index = index + b3_equities_binaryentrypoint_sbe_v8_1.quote_status_response_to.size

  index = index + b3_equities_binaryentrypoint_sbe_v8_1.account.size

  index = index + b3_equities_binaryentrypoint_sbe_v8_1.side_optional.size

  index = index + b3_equities_binaryentrypoint_sbe_v8_1.settltype_optional.size

  index = index + b3_equities_binaryentrypoint_sbe_v8_1.price_8_optional.size

  index = index + b3_equities_binaryentrypoint_sbe_v8_1.order_qty.size

  index = index + b3_equities_binaryentrypoint_sbe_v8_1.sender_location.size

  index = index + b3_equities_binaryentrypoint_sbe_v8_1.entering_trader.size

  index = index + b3_equities_binaryentrypoint_sbe_v8_1.executing_trader.size

  index = index + b3_equities_binaryentrypoint_sbe_v8_1.fixed_rate_percentage_8_optional.size

  index = index + b3_equities_binaryentrypoint_sbe_v8_1.execute_underlying_trade.size

  index = index + b3_equities_binaryentrypoint_sbe_v8_1.days_to_settlement_optional.size

  index = index + b3_equities_binaryentrypoint_sbe_v8_1.desk_id.size(buffer, offset + index)

  index = index + b3_equities_binaryentrypoint_sbe_v8_1.memo.size(buffer, offset + index)

  index = index + b3_equities_binaryentrypoint_sbe_v8_1.text.size(buffer, offset + index)

  return index
end

-- Display: Quote Status Report Message
b3_equities_binaryentrypoint_sbe_v8_1.quote_status_report_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Quote Status Report Message
b3_equities_binaryentrypoint_sbe_v8_1.quote_status_report_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Bidirectional Business Header: Struct of 6 fields
  index, bidirectional_business_header = b3_equities_binaryentrypoint_sbe_v8_1.bidirectional_business_header.dissect(buffer, index, packet, parent)

  -- Quote Reject Reason: 4 Byte Unsigned Fixed Width Integer Enum with 29 values
  index, quote_reject_reason = b3_equities_binaryentrypoint_sbe_v8_1.quote_reject_reason.dissect(buffer, index, packet, parent)

  -- Security Id: 8 Byte Unsigned Fixed Width Integer
  index, security_id = b3_equities_binaryentrypoint_sbe_v8_1.security_id.dissect(buffer, index, packet, parent)

  -- Quote Req Id: 8 Byte Unsigned Fixed Width Integer
  index, quote_req_id = b3_equities_binaryentrypoint_sbe_v8_1.quote_req_id.dissect(buffer, index, packet, parent)

  -- Quote Id: 8 Byte Unsigned Fixed Width Integer
  index, quote_id = b3_equities_binaryentrypoint_sbe_v8_1.quote_id.dissect(buffer, index, packet, parent)

  -- Trade Id Optional: 4 Byte Unsigned Fixed Width Integer
  index, trade_id_optional = b3_equities_binaryentrypoint_sbe_v8_1.trade_id_optional.dissect(buffer, index, packet, parent)

  -- Contra Broker: 4 Byte Unsigned Fixed Width Integer
  index, contra_broker = b3_equities_binaryentrypoint_sbe_v8_1.contra_broker.dissect(buffer, index, packet, parent)

  -- Transact Time: 8 Byte Unsigned Fixed Width Integer
  index, transact_time = b3_equities_binaryentrypoint_sbe_v8_1.transact_time.dissect(buffer, index, packet, parent)

  -- Quote Status: 1 Byte Unsigned Fixed Width Integer Enum with 7 values
  index, quote_status = b3_equities_binaryentrypoint_sbe_v8_1.quote_status.dissect(buffer, index, packet, parent)

  -- Quote Status Response To: 1 Byte Ascii String Enum with 5 values
  index, quote_status_response_to = b3_equities_binaryentrypoint_sbe_v8_1.quote_status_response_to.dissect(buffer, index, packet, parent)

  -- Account: 4 Byte Unsigned Fixed Width Integer
  index, account = b3_equities_binaryentrypoint_sbe_v8_1.account.dissect(buffer, index, packet, parent)

  -- Side Optional: 1 Byte Ascii String Enum with 3 values
  index, side_optional = b3_equities_binaryentrypoint_sbe_v8_1.side_optional.dissect(buffer, index, packet, parent)

  -- SettlType Optional: 1 Byte Ascii String Enum with 4 values
  index, settltype_optional = b3_equities_binaryentrypoint_sbe_v8_1.settltype_optional.dissect(buffer, index, packet, parent)

  -- Price 8 Optional: 8 Byte Signed Fixed Width Integer Nullable
  index, price_8_optional = b3_equities_binaryentrypoint_sbe_v8_1.price_8_optional.dissect(buffer, index, packet, parent)

  -- Order Qty: 8 Byte Unsigned Fixed Width Integer
  index, order_qty = b3_equities_binaryentrypoint_sbe_v8_1.order_qty.dissect(buffer, index, packet, parent)

  -- Sender Location: 10 Byte Ascii String
  index, sender_location = b3_equities_binaryentrypoint_sbe_v8_1.sender_location.dissect(buffer, index, packet, parent)

  -- Entering Trader: 5 Byte Ascii String
  index, entering_trader = b3_equities_binaryentrypoint_sbe_v8_1.entering_trader.dissect(buffer, index, packet, parent)

  -- Executing Trader: 5 Byte Ascii String
  index, executing_trader = b3_equities_binaryentrypoint_sbe_v8_1.executing_trader.dissect(buffer, index, packet, parent)

  -- Fixed Rate Percentage 8 Optional: 8 Byte Signed Fixed Width Integer Nullable
  index, fixed_rate_percentage_8_optional = b3_equities_binaryentrypoint_sbe_v8_1.fixed_rate_percentage_8_optional.dissect(buffer, index, packet, parent)

  -- Execute Underlying Trade: 1 Byte Ascii String Enum with 3 values
  index, execute_underlying_trade = b3_equities_binaryentrypoint_sbe_v8_1.execute_underlying_trade.dissect(buffer, index, packet, parent)

  -- Days To Settlement Optional: 2 Byte Unsigned Fixed Width Integer
  index, days_to_settlement_optional = b3_equities_binaryentrypoint_sbe_v8_1.days_to_settlement_optional.dissect(buffer, index, packet, parent)

  -- Desk Id: Struct of 2 fields
  index, desk_id = b3_equities_binaryentrypoint_sbe_v8_1.desk_id.dissect(buffer, index, packet, parent)

  -- Memo: Struct of 2 fields
  index, memo = b3_equities_binaryentrypoint_sbe_v8_1.memo.dissect(buffer, index, packet, parent)

  -- Text: Struct of 2 fields
  index, text = b3_equities_binaryentrypoint_sbe_v8_1.text.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Quote Status Report Message
b3_equities_binaryentrypoint_sbe_v8_1.quote_status_report_message.dissect = function(buffer, offset, packet, parent)
  -- Optionally add dynamic struct element to protocol tree
  if show.quote_status_report_message then
    local length = b3_equities_binaryentrypoint_sbe_v8_1.quote_status_report_message.size(buffer, offset)
    local range = buffer(offset, length)
    local display = b3_equities_binaryentrypoint_sbe_v8_1.quote_status_report_message.display(buffer, packet, parent)
    parent = parent:add(omi_b3_equities_binaryentrypoint_sbe_v8_1.fields.quote_status_report_message, range, display)
  end

  return b3_equities_binaryentrypoint_sbe_v8_1.quote_status_report_message.fields(buffer, offset, packet, parent)
end

-- Price 8
b3_equities_binaryentrypoint_sbe_v8_1.price_8 = {}

-- Size: Price 8
b3_equities_binaryentrypoint_sbe_v8_1.price_8.size = 8

-- Display: Price 8
b3_equities_binaryentrypoint_sbe_v8_1.price_8.display = function(value)
  return "Price 8: "..value
end

-- Translate: Price 8
translate.price_8 = function(raw)
  return raw:tonumber()/100000000
end

-- Dissect: Price 8
b3_equities_binaryentrypoint_sbe_v8_1.price_8.dissect = function(buffer, offset, packet, parent)
  local length = b3_equities_binaryentrypoint_sbe_v8_1.price_8.size
  local range = buffer(offset, length)
  local raw = range:le_int64()
  local value = translate.price_8(raw)
  local display = b3_equities_binaryentrypoint_sbe_v8_1.price_8.display(value, buffer, offset, packet, parent)

  parent:add(omi_b3_equities_binaryentrypoint_sbe_v8_1.fields.price_8, range, value, display)

  return offset + length, value
end

-- Quote Request Message
b3_equities_binaryentrypoint_sbe_v8_1.quote_request_message = {}

-- Calculate size of: Quote Request Message
b3_equities_binaryentrypoint_sbe_v8_1.quote_request_message.size = function(buffer, offset)
  local index = 0

  index = index + b3_equities_binaryentrypoint_sbe_v8_1.bidirectional_business_header.size(buffer, offset + index)

  index = index + b3_equities_binaryentrypoint_sbe_v8_1.security_id.size

  index = index + b3_equities_binaryentrypoint_sbe_v8_1.quote_req_id.size

  index = index + b3_equities_binaryentrypoint_sbe_v8_1.quote_id_optional.size

  index = index + b3_equities_binaryentrypoint_sbe_v8_1.trade_id_optional.size

  index = index + b3_equities_binaryentrypoint_sbe_v8_1.contra_broker.size

  index = index + b3_equities_binaryentrypoint_sbe_v8_1.transact_time.size

  index = index + b3_equities_binaryentrypoint_sbe_v8_1.price_8.size

  index = index + b3_equities_binaryentrypoint_sbe_v8_1.settltype.size

  index = index + b3_equities_binaryentrypoint_sbe_v8_1.execute_underlying_trade.size

  index = index + b3_equities_binaryentrypoint_sbe_v8_1.order_qty.size

  index = index + b3_equities_binaryentrypoint_sbe_v8_1.sender_location.size

  index = index + b3_equities_binaryentrypoint_sbe_v8_1.entering_trader.size

  index = index + b3_equities_binaryentrypoint_sbe_v8_1.executing_trader.size

  index = index + b3_equities_binaryentrypoint_sbe_v8_1.fixed_rate_percentage_8.size

  index = index + b3_equities_binaryentrypoint_sbe_v8_1.days_to_settlement.size

  index = index + b3_equities_binaryentrypoint_sbe_v8_1.no_sides_groups.size(buffer, offset + index)

  index = index + b3_equities_binaryentrypoint_sbe_v8_1.desk_id.size(buffer, offset + index)

  index = index + b3_equities_binaryentrypoint_sbe_v8_1.memo.size(buffer, offset + index)

  return index
end

-- Display: Quote Request Message
b3_equities_binaryentrypoint_sbe_v8_1.quote_request_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Quote Request Message
b3_equities_binaryentrypoint_sbe_v8_1.quote_request_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Bidirectional Business Header: Struct of 6 fields
  index, bidirectional_business_header = b3_equities_binaryentrypoint_sbe_v8_1.bidirectional_business_header.dissect(buffer, index, packet, parent)

  -- Security Id: 8 Byte Unsigned Fixed Width Integer
  index, security_id = b3_equities_binaryentrypoint_sbe_v8_1.security_id.dissect(buffer, index, packet, parent)

  -- Quote Req Id: 8 Byte Unsigned Fixed Width Integer
  index, quote_req_id = b3_equities_binaryentrypoint_sbe_v8_1.quote_req_id.dissect(buffer, index, packet, parent)

  -- Quote Id Optional: 8 Byte Unsigned Fixed Width Integer
  index, quote_id_optional = b3_equities_binaryentrypoint_sbe_v8_1.quote_id_optional.dissect(buffer, index, packet, parent)

  -- Trade Id Optional: 4 Byte Unsigned Fixed Width Integer
  index, trade_id_optional = b3_equities_binaryentrypoint_sbe_v8_1.trade_id_optional.dissect(buffer, index, packet, parent)

  -- Contra Broker: 4 Byte Unsigned Fixed Width Integer
  index, contra_broker = b3_equities_binaryentrypoint_sbe_v8_1.contra_broker.dissect(buffer, index, packet, parent)

  -- Transact Time: 8 Byte Unsigned Fixed Width Integer
  index, transact_time = b3_equities_binaryentrypoint_sbe_v8_1.transact_time.dissect(buffer, index, packet, parent)

  -- Price 8: 8 Byte Signed Fixed Width Integer
  index, price_8 = b3_equities_binaryentrypoint_sbe_v8_1.price_8.dissect(buffer, index, packet, parent)

  -- SettlType: 1 Byte Ascii String Enum with 3 values
  index, settltype = b3_equities_binaryentrypoint_sbe_v8_1.settltype.dissect(buffer, index, packet, parent)

  -- Execute Underlying Trade: 1 Byte Ascii String Enum with 3 values
  index, execute_underlying_trade = b3_equities_binaryentrypoint_sbe_v8_1.execute_underlying_trade.dissect(buffer, index, packet, parent)

  -- Order Qty: 8 Byte Unsigned Fixed Width Integer
  index, order_qty = b3_equities_binaryentrypoint_sbe_v8_1.order_qty.dissect(buffer, index, packet, parent)

  -- Sender Location: 10 Byte Ascii String
  index, sender_location = b3_equities_binaryentrypoint_sbe_v8_1.sender_location.dissect(buffer, index, packet, parent)

  -- Entering Trader: 5 Byte Ascii String
  index, entering_trader = b3_equities_binaryentrypoint_sbe_v8_1.entering_trader.dissect(buffer, index, packet, parent)

  -- Executing Trader: 5 Byte Ascii String
  index, executing_trader = b3_equities_binaryentrypoint_sbe_v8_1.executing_trader.dissect(buffer, index, packet, parent)

  -- Fixed Rate Percentage 8: 8 Byte Signed Fixed Width Integer
  index, fixed_rate_percentage_8 = b3_equities_binaryentrypoint_sbe_v8_1.fixed_rate_percentage_8.dissect(buffer, index, packet, parent)

  -- Days To Settlement: 2 Byte Unsigned Fixed Width Integer
  index, days_to_settlement = b3_equities_binaryentrypoint_sbe_v8_1.days_to_settlement.dissect(buffer, index, packet, parent)

  -- No Sides Groups: Struct of 2 fields
  index, no_sides_groups = b3_equities_binaryentrypoint_sbe_v8_1.no_sides_groups.dissect(buffer, index, packet, parent)

  -- Desk Id: Struct of 2 fields
  index, desk_id = b3_equities_binaryentrypoint_sbe_v8_1.desk_id.dissect(buffer, index, packet, parent)

  -- Memo: Struct of 2 fields
  index, memo = b3_equities_binaryentrypoint_sbe_v8_1.memo.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Quote Request Message
b3_equities_binaryentrypoint_sbe_v8_1.quote_request_message.dissect = function(buffer, offset, packet, parent)
  -- Optionally add dynamic struct element to protocol tree
  if show.quote_request_message then
    local length = b3_equities_binaryentrypoint_sbe_v8_1.quote_request_message.size(buffer, offset)
    local range = buffer(offset, length)
    local display = b3_equities_binaryentrypoint_sbe_v8_1.quote_request_message.display(buffer, packet, parent)
    parent = parent:add(omi_b3_equities_binaryentrypoint_sbe_v8_1.fields.quote_request_message, range, display)
  end

  return b3_equities_binaryentrypoint_sbe_v8_1.quote_request_message.fields(buffer, offset, packet, parent)
end

-- Security Response Id
b3_equities_binaryentrypoint_sbe_v8_1.security_response_id = {}

-- Size: Security Response Id
b3_equities_binaryentrypoint_sbe_v8_1.security_response_id.size = 8

-- Display: Security Response Id
b3_equities_binaryentrypoint_sbe_v8_1.security_response_id.display = function(value)
  return "Security Response Id: "..value
end

-- Dissect: Security Response Id
b3_equities_binaryentrypoint_sbe_v8_1.security_response_id.dissect = function(buffer, offset, packet, parent)
  local length = b3_equities_binaryentrypoint_sbe_v8_1.security_response_id.size
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = b3_equities_binaryentrypoint_sbe_v8_1.security_response_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_b3_equities_binaryentrypoint_sbe_v8_1.fields.security_response_id, range, value, display)

  return offset + length, value
end

-- Symbol
b3_equities_binaryentrypoint_sbe_v8_1.symbol = {}

-- Size: Symbol
b3_equities_binaryentrypoint_sbe_v8_1.symbol.size = 20

-- Display: Symbol
b3_equities_binaryentrypoint_sbe_v8_1.symbol.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Symbol: No Value"
  end

  return "Symbol: "..value
end

-- Dissect: Symbol
b3_equities_binaryentrypoint_sbe_v8_1.symbol.dissect = function(buffer, offset, packet, parent)
  local length = b3_equities_binaryentrypoint_sbe_v8_1.symbol.size
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

  local display = b3_equities_binaryentrypoint_sbe_v8_1.symbol.display(value, buffer, offset, packet, parent)

  parent:add(omi_b3_equities_binaryentrypoint_sbe_v8_1.fields.symbol, range, value, display)

  return offset + length, value
end

-- Security Strategy Type
b3_equities_binaryentrypoint_sbe_v8_1.security_strategy_type = {}

-- Size: Security Strategy Type
b3_equities_binaryentrypoint_sbe_v8_1.security_strategy_type.size = 3

-- Display: Security Strategy Type
b3_equities_binaryentrypoint_sbe_v8_1.security_strategy_type.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Security Strategy Type: No Value"
  end

  return "Security Strategy Type: "..value
end

-- Dissect: Security Strategy Type
b3_equities_binaryentrypoint_sbe_v8_1.security_strategy_type.dissect = function(buffer, offset, packet, parent)
  local length = b3_equities_binaryentrypoint_sbe_v8_1.security_strategy_type.size
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

  local display = b3_equities_binaryentrypoint_sbe_v8_1.security_strategy_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_b3_equities_binaryentrypoint_sbe_v8_1.fields.security_strategy_type, range, value, display)

  return offset + length, value
end

-- Security Response Type
b3_equities_binaryentrypoint_sbe_v8_1.security_response_type = {}

-- Size: Security Response Type
b3_equities_binaryentrypoint_sbe_v8_1.security_response_type.size = 1

-- Display: Security Response Type
b3_equities_binaryentrypoint_sbe_v8_1.security_response_type.display = function(value)
  if value == 1 then
    return "Security Response Type: Accept Security Proposal As Is (1)"
  end
  if value == 5 then
    return "Security Response Type: Reject Security Proposal (5)"
  end
  if value == 2 then
    return "Security Response Type: Accept Security As Proposal With Revisions (2)"
  end

  return "Security Response Type: Unknown("..value..")"
end

-- Dissect: Security Response Type
b3_equities_binaryentrypoint_sbe_v8_1.security_response_type.dissect = function(buffer, offset, packet, parent)
  local length = b3_equities_binaryentrypoint_sbe_v8_1.security_response_type.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = b3_equities_binaryentrypoint_sbe_v8_1.security_response_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_b3_equities_binaryentrypoint_sbe_v8_1.fields.security_response_type, range, value, display)

  return offset + length, value
end

-- Security Req Id
b3_equities_binaryentrypoint_sbe_v8_1.security_req_id = {}

-- Size: Security Req Id
b3_equities_binaryentrypoint_sbe_v8_1.security_req_id.size = 8

-- Display: Security Req Id
b3_equities_binaryentrypoint_sbe_v8_1.security_req_id.display = function(value)
  return "Security Req Id: "..value
end

-- Dissect: Security Req Id
b3_equities_binaryentrypoint_sbe_v8_1.security_req_id.dissect = function(buffer, offset, packet, parent)
  local length = b3_equities_binaryentrypoint_sbe_v8_1.security_req_id.size
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = b3_equities_binaryentrypoint_sbe_v8_1.security_req_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_b3_equities_binaryentrypoint_sbe_v8_1.fields.security_req_id, range, value, display)

  return offset + length, value
end

-- Offset 18 Padding 2
b3_equities_binaryentrypoint_sbe_v8_1.offset_18_padding_2 = {}

-- Size: Offset 18 Padding 2
b3_equities_binaryentrypoint_sbe_v8_1.offset_18_padding_2.size = 2

-- Display: Offset 18 Padding 2
b3_equities_binaryentrypoint_sbe_v8_1.offset_18_padding_2.display = function(value)
  return "Offset 18 Padding 2: "..value
end

-- Dissect: Offset 18 Padding 2
b3_equities_binaryentrypoint_sbe_v8_1.offset_18_padding_2.dissect = function(buffer, offset, packet, parent)
  local length = b3_equities_binaryentrypoint_sbe_v8_1.offset_18_padding_2.size
  local range = buffer(offset, length)
  local value = range:bytes():tohex(false, " ")
  local display = b3_equities_binaryentrypoint_sbe_v8_1.offset_18_padding_2.display(value, buffer, offset, packet, parent)

  parent:add(omi_b3_equities_binaryentrypoint_sbe_v8_1.fields.offset_18_padding_2, range, value, display)

  return offset + length, value
end

-- Security Definition Response Message
b3_equities_binaryentrypoint_sbe_v8_1.security_definition_response_message = {}

-- Calculate size of: Security Definition Response Message
b3_equities_binaryentrypoint_sbe_v8_1.security_definition_response_message.size = function(buffer, offset)
  local index = 0

  index = index + b3_equities_binaryentrypoint_sbe_v8_1.outbound_business_header.size(buffer, offset + index)

  index = index + b3_equities_binaryentrypoint_sbe_v8_1.offset_18_padding_2.size

  index = index + b3_equities_binaryentrypoint_sbe_v8_1.security_req_id.size

  index = index + b3_equities_binaryentrypoint_sbe_v8_1.security_id_optional.size

  index = index + b3_equities_binaryentrypoint_sbe_v8_1.security_response_type.size

  index = index + b3_equities_binaryentrypoint_sbe_v8_1.security_strategy_type.size

  index = index + b3_equities_binaryentrypoint_sbe_v8_1.symbol.size

  index = index + b3_equities_binaryentrypoint_sbe_v8_1.security_response_id.size

  index = index + b3_equities_binaryentrypoint_sbe_v8_1.sender_location.size

  index = index + b3_equities_binaryentrypoint_sbe_v8_1.entering_trader.size

  return index
end

-- Display: Security Definition Response Message
b3_equities_binaryentrypoint_sbe_v8_1.security_definition_response_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Security Definition Response Message
b3_equities_binaryentrypoint_sbe_v8_1.security_definition_response_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Outbound Business Header: Struct of 5 fields
  index, outbound_business_header = b3_equities_binaryentrypoint_sbe_v8_1.outbound_business_header.dissect(buffer, index, packet, parent)

  -- Offset 18 Padding 2: 2 Byte
  index, offset_18_padding_2 = b3_equities_binaryentrypoint_sbe_v8_1.offset_18_padding_2.dissect(buffer, index, packet, parent)

  -- Security Req Id: 8 Byte Unsigned Fixed Width Integer
  index, security_req_id = b3_equities_binaryentrypoint_sbe_v8_1.security_req_id.dissect(buffer, index, packet, parent)

  -- Security Id Optional: 8 Byte Unsigned Fixed Width Integer Nullable
  index, security_id_optional = b3_equities_binaryentrypoint_sbe_v8_1.security_id_optional.dissect(buffer, index, packet, parent)

  -- Security Response Type: 1 Byte Unsigned Fixed Width Integer Enum with 3 values
  index, security_response_type = b3_equities_binaryentrypoint_sbe_v8_1.security_response_type.dissect(buffer, index, packet, parent)

  -- Security Strategy Type: 3 Byte Ascii String
  index, security_strategy_type = b3_equities_binaryentrypoint_sbe_v8_1.security_strategy_type.dissect(buffer, index, packet, parent)

  -- Symbol: 20 Byte Ascii String
  index, symbol = b3_equities_binaryentrypoint_sbe_v8_1.symbol.dissect(buffer, index, packet, parent)

  -- Security Response Id: 8 Byte Unsigned Fixed Width Integer
  index, security_response_id = b3_equities_binaryentrypoint_sbe_v8_1.security_response_id.dissect(buffer, index, packet, parent)

  -- Sender Location: 10 Byte Ascii String
  index, sender_location = b3_equities_binaryentrypoint_sbe_v8_1.sender_location.dissect(buffer, index, packet, parent)

  -- Entering Trader: 5 Byte Ascii String
  index, entering_trader = b3_equities_binaryentrypoint_sbe_v8_1.entering_trader.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Security Definition Response Message
b3_equities_binaryentrypoint_sbe_v8_1.security_definition_response_message.dissect = function(buffer, offset, packet, parent)
  if show.security_definition_response_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_b3_equities_binaryentrypoint_sbe_v8_1.fields.security_definition_response_message, buffer(offset, 0))
    local index = b3_equities_binaryentrypoint_sbe_v8_1.security_definition_response_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = b3_equities_binaryentrypoint_sbe_v8_1.security_definition_response_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return b3_equities_binaryentrypoint_sbe_v8_1.security_definition_response_message.fields(buffer, offset, packet, parent)
  end
end

-- Padding 1
b3_equities_binaryentrypoint_sbe_v8_1.padding_1 = {}

-- Size: Padding 1
b3_equities_binaryentrypoint_sbe_v8_1.padding_1.size = 1

-- Display: Padding 1
b3_equities_binaryentrypoint_sbe_v8_1.padding_1.display = function(value)
  return "Padding 1: "..value
end

-- Dissect: Padding 1
b3_equities_binaryentrypoint_sbe_v8_1.padding_1.dissect = function(buffer, offset, packet, parent)
  local length = b3_equities_binaryentrypoint_sbe_v8_1.padding_1.size
  local range = buffer(offset, length)
  local value = range:bytes():tohex(false, " ")
  local display = b3_equities_binaryentrypoint_sbe_v8_1.padding_1.display(value, buffer, offset, packet, parent)

  parent:add(omi_b3_equities_binaryentrypoint_sbe_v8_1.fields.padding_1, range, value, display)

  return offset + length, value
end

-- Leg Side
b3_equities_binaryentrypoint_sbe_v8_1.leg_side = {}

-- Size: Leg Side
b3_equities_binaryentrypoint_sbe_v8_1.leg_side.size = 1

-- Display: Leg Side
b3_equities_binaryentrypoint_sbe_v8_1.leg_side.display = function(value)
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
b3_equities_binaryentrypoint_sbe_v8_1.leg_side.dissect = function(buffer, offset, packet, parent)
  local length = b3_equities_binaryentrypoint_sbe_v8_1.leg_side.size
  local range = buffer(offset, length)

  -- parse as byte
  local value = range:uint()

  -- check if value is non zero
  if value ~= 0 then
    value = range:string()
  end

  local display = b3_equities_binaryentrypoint_sbe_v8_1.leg_side.display(value, buffer, offset, packet, parent)

  parent:add(omi_b3_equities_binaryentrypoint_sbe_v8_1.fields.leg_side, range, value, display)

  return offset + length, value
end

-- Leg Ratio Qty
b3_equities_binaryentrypoint_sbe_v8_1.leg_ratio_qty = {}

-- Size: Leg Ratio Qty
b3_equities_binaryentrypoint_sbe_v8_1.leg_ratio_qty.size = 8

-- Display: Leg Ratio Qty
b3_equities_binaryentrypoint_sbe_v8_1.leg_ratio_qty.display = function(value)
  return "Leg Ratio Qty: "..value
end

-- Translate: Leg Ratio Qty
translate.leg_ratio_qty = function(raw)
  return raw:tonumber()/10000000
end

-- Dissect: Leg Ratio Qty
b3_equities_binaryentrypoint_sbe_v8_1.leg_ratio_qty.dissect = function(buffer, offset, packet, parent)
  local length = b3_equities_binaryentrypoint_sbe_v8_1.leg_ratio_qty.size
  local range = buffer(offset, length)
  local raw = range:le_int64()
  local value = translate.leg_ratio_qty(raw)
  local display = b3_equities_binaryentrypoint_sbe_v8_1.leg_ratio_qty.display(value, buffer, offset, packet, parent)

  parent:add(omi_b3_equities_binaryentrypoint_sbe_v8_1.fields.leg_ratio_qty, range, value, display)

  return offset + length, value
end

-- Leg Symbol
b3_equities_binaryentrypoint_sbe_v8_1.leg_symbol = {}

-- Size: Leg Symbol
b3_equities_binaryentrypoint_sbe_v8_1.leg_symbol.size = 20

-- Display: Leg Symbol
b3_equities_binaryentrypoint_sbe_v8_1.leg_symbol.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Leg Symbol: No Value"
  end

  return "Leg Symbol: "..value
end

-- Dissect: Leg Symbol
b3_equities_binaryentrypoint_sbe_v8_1.leg_symbol.dissect = function(buffer, offset, packet, parent)
  local length = b3_equities_binaryentrypoint_sbe_v8_1.leg_symbol.size
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

  local display = b3_equities_binaryentrypoint_sbe_v8_1.leg_symbol.display(value, buffer, offset, packet, parent)

  parent:add(omi_b3_equities_binaryentrypoint_sbe_v8_1.fields.leg_symbol, range, value, display)

  return offset + length, value
end

-- No Legs Group
b3_equities_binaryentrypoint_sbe_v8_1.no_legs_group = {}

-- Calculate size of: No Legs Group
b3_equities_binaryentrypoint_sbe_v8_1.no_legs_group.size = function(buffer, offset)
  local index = 0

  index = index + b3_equities_binaryentrypoint_sbe_v8_1.leg_symbol.size

  index = index + b3_equities_binaryentrypoint_sbe_v8_1.leg_ratio_qty.size

  index = index + b3_equities_binaryentrypoint_sbe_v8_1.leg_side.size

  index = index + b3_equities_binaryentrypoint_sbe_v8_1.padding_1.size

  return index
end

-- Display: No Legs Group
b3_equities_binaryentrypoint_sbe_v8_1.no_legs_group.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: No Legs Group
b3_equities_binaryentrypoint_sbe_v8_1.no_legs_group.fields = function(buffer, offset, packet, parent, no_legs_group_index)
  local index = offset

  -- Implicit No Legs Group Index
  if no_legs_group_index ~= nil then
    local iteration = parent:add(omi_b3_equities_binaryentrypoint_sbe_v8_1.fields.no_legs_group_index, no_legs_group_index)
    iteration:set_generated()
  end

  -- Leg Symbol: 20 Byte Ascii String
  index, leg_symbol = b3_equities_binaryentrypoint_sbe_v8_1.leg_symbol.dissect(buffer, index, packet, parent)

  -- Leg Ratio Qty: 8 Byte Signed Fixed Width Integer
  index, leg_ratio_qty = b3_equities_binaryentrypoint_sbe_v8_1.leg_ratio_qty.dissect(buffer, index, packet, parent)

  -- Leg Side: 1 Byte Ascii String Enum with 3 values
  index, leg_side = b3_equities_binaryentrypoint_sbe_v8_1.leg_side.dissect(buffer, index, packet, parent)

  -- Padding 1: 1 Byte
  index, padding_1 = b3_equities_binaryentrypoint_sbe_v8_1.padding_1.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: No Legs Group
b3_equities_binaryentrypoint_sbe_v8_1.no_legs_group.dissect = function(buffer, offset, packet, parent, no_legs_group_index)
  if show.no_legs_group then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_b3_equities_binaryentrypoint_sbe_v8_1.fields.no_legs_group, buffer(offset, 0))
    local index = b3_equities_binaryentrypoint_sbe_v8_1.no_legs_group.fields(buffer, offset, packet, parent, no_legs_group_index)
    local length = index - offset
    parent:set_len(length)
    local display = b3_equities_binaryentrypoint_sbe_v8_1.no_legs_group.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return b3_equities_binaryentrypoint_sbe_v8_1.no_legs_group.fields(buffer, offset, packet, parent, no_legs_group_index)
  end
end

-- No Legs Groups
b3_equities_binaryentrypoint_sbe_v8_1.no_legs_groups = {}

-- Calculate size of: No Legs Groups
b3_equities_binaryentrypoint_sbe_v8_1.no_legs_groups.size = function(buffer, offset)
  local index = 0

  index = index + b3_equities_binaryentrypoint_sbe_v8_1.group_size_encoding.size(buffer, offset + index)

  -- Calculate field size from count
  local no_legs_group_count = buffer(offset + index - 1, 1):le_uint()
  index = index + no_legs_group_count * 30

  return index
end

-- Display: No Legs Groups
b3_equities_binaryentrypoint_sbe_v8_1.no_legs_groups.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: No Legs Groups
b3_equities_binaryentrypoint_sbe_v8_1.no_legs_groups.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Group Size Encoding: Struct of 2 fields
  index, group_size_encoding = b3_equities_binaryentrypoint_sbe_v8_1.group_size_encoding.dissect(buffer, index, packet, parent)

  -- Dependency element: Num In Group
  local num_in_group = buffer(index - 1, 1):le_uint()

  -- Repeating: No Legs Group
  for no_legs_group_index = 1, num_in_group do
    index, no_legs_group = b3_equities_binaryentrypoint_sbe_v8_1.no_legs_group.dissect(buffer, index, packet, parent, no_legs_group_index)
  end

  return index
end

-- Dissect: No Legs Groups
b3_equities_binaryentrypoint_sbe_v8_1.no_legs_groups.dissect = function(buffer, offset, packet, parent)
  -- Optionally add dynamic struct element to protocol tree
  if show.no_legs_groups then
    local length = b3_equities_binaryentrypoint_sbe_v8_1.no_legs_groups.size(buffer, offset)
    local range = buffer(offset, length)
    local display = b3_equities_binaryentrypoint_sbe_v8_1.no_legs_groups.display(buffer, packet, parent)
    parent = parent:add(omi_b3_equities_binaryentrypoint_sbe_v8_1.fields.no_legs_groups, range, display)
  end

  return b3_equities_binaryentrypoint_sbe_v8_1.no_legs_groups.fields(buffer, offset, packet, parent)
end

-- Security Definition Request Message
b3_equities_binaryentrypoint_sbe_v8_1.security_definition_request_message = {}

-- Calculate size of: Security Definition Request Message
b3_equities_binaryentrypoint_sbe_v8_1.security_definition_request_message.size = function(buffer, offset)
  local index = 0

  index = index + b3_equities_binaryentrypoint_sbe_v8_1.inbound_business_header.size(buffer, offset + index)

  index = index + b3_equities_binaryentrypoint_sbe_v8_1.security_req_id.size

  index = index + b3_equities_binaryentrypoint_sbe_v8_1.sender_location.size

  index = index + b3_equities_binaryentrypoint_sbe_v8_1.entering_trader.size

  index = index + b3_equities_binaryentrypoint_sbe_v8_1.no_legs_groups.size(buffer, offset + index)

  return index
end

-- Display: Security Definition Request Message
b3_equities_binaryentrypoint_sbe_v8_1.security_definition_request_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Security Definition Request Message
b3_equities_binaryentrypoint_sbe_v8_1.security_definition_request_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Inbound Business Header: Struct of 5 fields
  index, inbound_business_header = b3_equities_binaryentrypoint_sbe_v8_1.inbound_business_header.dissect(buffer, index, packet, parent)

  -- Security Req Id: 8 Byte Unsigned Fixed Width Integer
  index, security_req_id = b3_equities_binaryentrypoint_sbe_v8_1.security_req_id.dissect(buffer, index, packet, parent)

  -- Sender Location: 10 Byte Ascii String
  index, sender_location = b3_equities_binaryentrypoint_sbe_v8_1.sender_location.dissect(buffer, index, packet, parent)

  -- Entering Trader: 5 Byte Ascii String
  index, entering_trader = b3_equities_binaryentrypoint_sbe_v8_1.entering_trader.dissect(buffer, index, packet, parent)

  -- No Legs Groups: Struct of 2 fields
  index, no_legs_groups = b3_equities_binaryentrypoint_sbe_v8_1.no_legs_groups.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Security Definition Request Message
b3_equities_binaryentrypoint_sbe_v8_1.security_definition_request_message.dissect = function(buffer, offset, packet, parent)
  -- Optionally add dynamic struct element to protocol tree
  if show.security_definition_request_message then
    local length = b3_equities_binaryentrypoint_sbe_v8_1.security_definition_request_message.size(buffer, offset)
    local range = buffer(offset, length)
    local display = b3_equities_binaryentrypoint_sbe_v8_1.security_definition_request_message.display(buffer, packet, parent)
    parent = parent:add(omi_b3_equities_binaryentrypoint_sbe_v8_1.fields.security_definition_request_message, range, display)
  end

  return b3_equities_binaryentrypoint_sbe_v8_1.security_definition_request_message.fields(buffer, offset, packet, parent)
end

-- Business Reject Reason
b3_equities_binaryentrypoint_sbe_v8_1.business_reject_reason = {}

-- Size: Business Reject Reason
b3_equities_binaryentrypoint_sbe_v8_1.business_reject_reason.size = 4

-- Display: Business Reject Reason
b3_equities_binaryentrypoint_sbe_v8_1.business_reject_reason.display = function(value)
  return "Business Reject Reason: "..value
end

-- Dissect: Business Reject Reason
b3_equities_binaryentrypoint_sbe_v8_1.business_reject_reason.dissect = function(buffer, offset, packet, parent)
  local length = b3_equities_binaryentrypoint_sbe_v8_1.business_reject_reason.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = b3_equities_binaryentrypoint_sbe_v8_1.business_reject_reason.display(value, buffer, offset, packet, parent)

  parent:add(omi_b3_equities_binaryentrypoint_sbe_v8_1.fields.business_reject_reason, range, value, display)

  return offset + length, value
end

-- Business Reject Ref Id
b3_equities_binaryentrypoint_sbe_v8_1.business_reject_ref_id = {}

-- Size: Business Reject Ref Id
b3_equities_binaryentrypoint_sbe_v8_1.business_reject_ref_id.size = 8

-- Display: Business Reject Ref Id
b3_equities_binaryentrypoint_sbe_v8_1.business_reject_ref_id.display = function(value)
  return "Business Reject Ref Id: "..value
end

-- Dissect: Business Reject Ref Id
b3_equities_binaryentrypoint_sbe_v8_1.business_reject_ref_id.dissect = function(buffer, offset, packet, parent)
  local length = b3_equities_binaryentrypoint_sbe_v8_1.business_reject_ref_id.size
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = b3_equities_binaryentrypoint_sbe_v8_1.business_reject_ref_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_b3_equities_binaryentrypoint_sbe_v8_1.fields.business_reject_ref_id, range, value, display)

  return offset + length, value
end

-- Ref Seq Num
b3_equities_binaryentrypoint_sbe_v8_1.ref_seq_num = {}

-- Size: Ref Seq Num
b3_equities_binaryentrypoint_sbe_v8_1.ref_seq_num.size = 4

-- Display: Ref Seq Num
b3_equities_binaryentrypoint_sbe_v8_1.ref_seq_num.display = function(value)
  return "Ref Seq Num: "..value
end

-- Dissect: Ref Seq Num
b3_equities_binaryentrypoint_sbe_v8_1.ref_seq_num.dissect = function(buffer, offset, packet, parent)
  local length = b3_equities_binaryentrypoint_sbe_v8_1.ref_seq_num.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = b3_equities_binaryentrypoint_sbe_v8_1.ref_seq_num.display(value, buffer, offset, packet, parent)

  parent:add(omi_b3_equities_binaryentrypoint_sbe_v8_1.fields.ref_seq_num, range, value, display)

  return offset + length, value
end

-- Offset 19 Padding 1
b3_equities_binaryentrypoint_sbe_v8_1.offset_19_padding_1 = {}

-- Size: Offset 19 Padding 1
b3_equities_binaryentrypoint_sbe_v8_1.offset_19_padding_1.size = 1

-- Display: Offset 19 Padding 1
b3_equities_binaryentrypoint_sbe_v8_1.offset_19_padding_1.display = function(value)
  return "Offset 19 Padding 1: "..value
end

-- Dissect: Offset 19 Padding 1
b3_equities_binaryentrypoint_sbe_v8_1.offset_19_padding_1.dissect = function(buffer, offset, packet, parent)
  local length = b3_equities_binaryentrypoint_sbe_v8_1.offset_19_padding_1.size
  local range = buffer(offset, length)
  local value = range:bytes():tohex(false, " ")
  local display = b3_equities_binaryentrypoint_sbe_v8_1.offset_19_padding_1.display(value, buffer, offset, packet, parent)

  parent:add(omi_b3_equities_binaryentrypoint_sbe_v8_1.fields.offset_19_padding_1, range, value, display)

  return offset + length, value
end

-- Ref Msg Type
b3_equities_binaryentrypoint_sbe_v8_1.ref_msg_type = {}

-- Size: Ref Msg Type
b3_equities_binaryentrypoint_sbe_v8_1.ref_msg_type.size = 1

-- Display: Ref Msg Type
b3_equities_binaryentrypoint_sbe_v8_1.ref_msg_type.display = function(value)
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
b3_equities_binaryentrypoint_sbe_v8_1.ref_msg_type.dissect = function(buffer, offset, packet, parent)
  local length = b3_equities_binaryentrypoint_sbe_v8_1.ref_msg_type.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = b3_equities_binaryentrypoint_sbe_v8_1.ref_msg_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_b3_equities_binaryentrypoint_sbe_v8_1.fields.ref_msg_type, range, value, display)

  return offset + length, value
end

-- Business Message Reject Message
b3_equities_binaryentrypoint_sbe_v8_1.business_message_reject_message = {}

-- Calculate size of: Business Message Reject Message
b3_equities_binaryentrypoint_sbe_v8_1.business_message_reject_message.size = function(buffer, offset)
  local index = 0

  index = index + b3_equities_binaryentrypoint_sbe_v8_1.outbound_business_header.size(buffer, offset + index)

  index = index + b3_equities_binaryentrypoint_sbe_v8_1.ref_msg_type.size

  index = index + b3_equities_binaryentrypoint_sbe_v8_1.offset_19_padding_1.size

  index = index + b3_equities_binaryentrypoint_sbe_v8_1.ref_seq_num.size

  index = index + b3_equities_binaryentrypoint_sbe_v8_1.business_reject_ref_id.size

  index = index + b3_equities_binaryentrypoint_sbe_v8_1.business_reject_reason.size

  index = index + b3_equities_binaryentrypoint_sbe_v8_1.memo.size(buffer, offset + index)

  index = index + b3_equities_binaryentrypoint_sbe_v8_1.text.size(buffer, offset + index)

  return index
end

-- Display: Business Message Reject Message
b3_equities_binaryentrypoint_sbe_v8_1.business_message_reject_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Business Message Reject Message
b3_equities_binaryentrypoint_sbe_v8_1.business_message_reject_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Outbound Business Header: Struct of 5 fields
  index, outbound_business_header = b3_equities_binaryentrypoint_sbe_v8_1.outbound_business_header.dissect(buffer, index, packet, parent)

  -- Ref Msg Type: 1 Byte Unsigned Fixed Width Integer Enum with 39 values
  index, ref_msg_type = b3_equities_binaryentrypoint_sbe_v8_1.ref_msg_type.dissect(buffer, index, packet, parent)

  -- Offset 19 Padding 1: 1 Byte
  index, offset_19_padding_1 = b3_equities_binaryentrypoint_sbe_v8_1.offset_19_padding_1.dissect(buffer, index, packet, parent)

  -- Ref Seq Num: 4 Byte Unsigned Fixed Width Integer
  index, ref_seq_num = b3_equities_binaryentrypoint_sbe_v8_1.ref_seq_num.dissect(buffer, index, packet, parent)

  -- Business Reject Ref Id: 8 Byte Unsigned Fixed Width Integer
  index, business_reject_ref_id = b3_equities_binaryentrypoint_sbe_v8_1.business_reject_ref_id.dissect(buffer, index, packet, parent)

  -- Business Reject Reason: 4 Byte Unsigned Fixed Width Integer
  index, business_reject_reason = b3_equities_binaryentrypoint_sbe_v8_1.business_reject_reason.dissect(buffer, index, packet, parent)

  -- Memo: Struct of 2 fields
  index, memo = b3_equities_binaryentrypoint_sbe_v8_1.memo.dissect(buffer, index, packet, parent)

  -- Text: Struct of 2 fields
  index, text = b3_equities_binaryentrypoint_sbe_v8_1.text.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Business Message Reject Message
b3_equities_binaryentrypoint_sbe_v8_1.business_message_reject_message.dissect = function(buffer, offset, packet, parent)
  -- Optionally add dynamic struct element to protocol tree
  if show.business_message_reject_message then
    local length = b3_equities_binaryentrypoint_sbe_v8_1.business_message_reject_message.size(buffer, offset)
    local range = buffer(offset, length)
    local display = b3_equities_binaryentrypoint_sbe_v8_1.business_message_reject_message.display(buffer, packet, parent)
    parent = parent:add(omi_b3_equities_binaryentrypoint_sbe_v8_1.fields.business_message_reject_message, range, display)
  end

  return b3_equities_binaryentrypoint_sbe_v8_1.business_message_reject_message.fields(buffer, offset, packet, parent)
end

-- Security Trading Status
b3_equities_binaryentrypoint_sbe_v8_1.security_trading_status = {}

-- Size: Security Trading Status
b3_equities_binaryentrypoint_sbe_v8_1.security_trading_status.size = 1

-- Display: Security Trading Status
b3_equities_binaryentrypoint_sbe_v8_1.security_trading_status.display = function(value)
  if value == 2 then
    return "Security Trading Status: Trading Halt (2)"
  end
  if value == 4 then
    return "Security Trading Status: No Open (4)"
  end
  if value == 17 then
    return "Security Trading Status: Ready To Trade (17)"
  end
  if value == 18 then
    return "Security Trading Status: Forbidden (18)"
  end
  if value == 20 then
    return "Security Trading Status: Unknown Or Invalid (20)"
  end
  if value == 21 then
    return "Security Trading Status: Pre Open (21)"
  end
  if value == 101 then
    return "Security Trading Status: Final Closing Call (101)"
  end
  if value == 110 then
    return "Security Trading Status: Reserved (110)"
  end
  if value == 0 then
    return "Security Trading Status: No Value"
  end

  return "Security Trading Status: Unknown("..value..")"
end

-- Dissect: Security Trading Status
b3_equities_binaryentrypoint_sbe_v8_1.security_trading_status.dissect = function(buffer, offset, packet, parent)
  local length = b3_equities_binaryentrypoint_sbe_v8_1.security_trading_status.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = b3_equities_binaryentrypoint_sbe_v8_1.security_trading_status.display(value, buffer, offset, packet, parent)

  parent:add(omi_b3_equities_binaryentrypoint_sbe_v8_1.fields.security_trading_status, range, value, display)

  return offset + length, value
end

-- Trading Session Sub Id
b3_equities_binaryentrypoint_sbe_v8_1.trading_session_sub_id = {}

-- Size: Trading Session Sub Id
b3_equities_binaryentrypoint_sbe_v8_1.trading_session_sub_id.size = 1

-- Display: Trading Session Sub Id
b3_equities_binaryentrypoint_sbe_v8_1.trading_session_sub_id.display = function(value)
  if value == 2 then
    return "Trading Session Sub Id: Pause (2)"
  end
  if value == 4 then
    return "Trading Session Sub Id: Close (4)"
  end
  if value == 17 then
    return "Trading Session Sub Id: Open (17)"
  end
  if value == 18 then
    return "Trading Session Sub Id: Pre Close (18)"
  end
  if value == 21 then
    return "Trading Session Sub Id: Pre Open (21)"
  end
  if value == 101 then
    return "Trading Session Sub Id: Final Closing Call (101)"
  end
  if value == 0 then
    return "Trading Session Sub Id: No Value"
  end

  return "Trading Session Sub Id: Unknown("..value..")"
end

-- Dissect: Trading Session Sub Id
b3_equities_binaryentrypoint_sbe_v8_1.trading_session_sub_id.dissect = function(buffer, offset, packet, parent)
  local length = b3_equities_binaryentrypoint_sbe_v8_1.trading_session_sub_id.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = b3_equities_binaryentrypoint_sbe_v8_1.trading_session_sub_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_b3_equities_binaryentrypoint_sbe_v8_1.fields.trading_session_sub_id, range, value, display)

  return offset + length, value
end

-- Trading Session Id
b3_equities_binaryentrypoint_sbe_v8_1.trading_session_id = {}

-- Size: Trading Session Id
b3_equities_binaryentrypoint_sbe_v8_1.trading_session_id.size = 1

-- Display: Trading Session Id
b3_equities_binaryentrypoint_sbe_v8_1.trading_session_id.display = function(value)
  if value == 1 then
    return "Trading Session Id: Regular Day Session (1)"
  end
  if value == 6 then
    return "Trading Session Id: Non Regular Session (6)"
  end
  if value == 0 then
    return "Trading Session Id: No Value"
  end

  return "Trading Session Id: Unknown("..value..")"
end

-- Dissect: Trading Session Id
b3_equities_binaryentrypoint_sbe_v8_1.trading_session_id.dissect = function(buffer, offset, packet, parent)
  local length = b3_equities_binaryentrypoint_sbe_v8_1.trading_session_id.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = b3_equities_binaryentrypoint_sbe_v8_1.trading_session_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_b3_equities_binaryentrypoint_sbe_v8_1.fields.trading_session_id, range, value, display)

  return offset + length, value
end

-- Exec Ref Id
b3_equities_binaryentrypoint_sbe_v8_1.exec_ref_id = {}

-- Size: Exec Ref Id
b3_equities_binaryentrypoint_sbe_v8_1.exec_ref_id.size = 8

-- Display: Exec Ref Id
b3_equities_binaryentrypoint_sbe_v8_1.exec_ref_id.display = function(value)
  return "Exec Ref Id: "..value
end

-- Dissect: Exec Ref Id
b3_equities_binaryentrypoint_sbe_v8_1.exec_ref_id.dissect = function(buffer, offset, packet, parent)
  local length = b3_equities_binaryentrypoint_sbe_v8_1.exec_ref_id.size
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = b3_equities_binaryentrypoint_sbe_v8_1.exec_ref_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_b3_equities_binaryentrypoint_sbe_v8_1.fields.exec_ref_id, range, value, display)

  return offset + length, value
end

-- Secondary Exec Id
b3_equities_binaryentrypoint_sbe_v8_1.secondary_exec_id = {}

-- Size: Secondary Exec Id
b3_equities_binaryentrypoint_sbe_v8_1.secondary_exec_id.size = 8

-- Display: Secondary Exec Id
b3_equities_binaryentrypoint_sbe_v8_1.secondary_exec_id.display = function(value)
  return "Secondary Exec Id: "..value
end

-- Dissect: Secondary Exec Id
b3_equities_binaryentrypoint_sbe_v8_1.secondary_exec_id.dissect = function(buffer, offset, packet, parent)
  local length = b3_equities_binaryentrypoint_sbe_v8_1.secondary_exec_id.size
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = b3_equities_binaryentrypoint_sbe_v8_1.secondary_exec_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_b3_equities_binaryentrypoint_sbe_v8_1.fields.secondary_exec_id, range, value, display)

  return offset + length, value
end

-- Offset 118 Padding 2
b3_equities_binaryentrypoint_sbe_v8_1.offset_118_padding_2 = {}

-- Size: Offset 118 Padding 2
b3_equities_binaryentrypoint_sbe_v8_1.offset_118_padding_2.size = 2

-- Display: Offset 118 Padding 2
b3_equities_binaryentrypoint_sbe_v8_1.offset_118_padding_2.display = function(value)
  return "Offset 118 Padding 2: "..value
end

-- Dissect: Offset 118 Padding 2
b3_equities_binaryentrypoint_sbe_v8_1.offset_118_padding_2.dissect = function(buffer, offset, packet, parent)
  local length = b3_equities_binaryentrypoint_sbe_v8_1.offset_118_padding_2.size
  local range = buffer(offset, length)
  local value = range:bytes():tohex(false, " ")
  local display = b3_equities_binaryentrypoint_sbe_v8_1.offset_118_padding_2.display(value, buffer, offset, packet, parent)

  parent:add(omi_b3_equities_binaryentrypoint_sbe_v8_1.fields.offset_118_padding_2, range, value, display)

  return offset + length, value
end

-- Trade Date
b3_equities_binaryentrypoint_sbe_v8_1.trade_date = {}

-- Size: Trade Date
b3_equities_binaryentrypoint_sbe_v8_1.trade_date.size = 2

-- Display: Trade Date
b3_equities_binaryentrypoint_sbe_v8_1.trade_date.display = function(value)
  return "Trade Date: "..value
end

-- Dissect: Trade Date
b3_equities_binaryentrypoint_sbe_v8_1.trade_date.dissect = function(buffer, offset, packet, parent)
  local length = b3_equities_binaryentrypoint_sbe_v8_1.trade_date.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = b3_equities_binaryentrypoint_sbe_v8_1.trade_date.display(value, buffer, offset, packet, parent)

  parent:add(omi_b3_equities_binaryentrypoint_sbe_v8_1.fields.trade_date, range, value, display)

  return offset + length, value
end

-- Aggressor Indicator
b3_equities_binaryentrypoint_sbe_v8_1.aggressor_indicator = {}

-- Size: Aggressor Indicator
b3_equities_binaryentrypoint_sbe_v8_1.aggressor_indicator.size = 1

-- Display: Aggressor Indicator
b3_equities_binaryentrypoint_sbe_v8_1.aggressor_indicator.display = function(value)
  if value == 0 then
    return "Aggressor Indicator: False Value (0)"
  end
  if value == 1 then
    return "Aggressor Indicator: True Value (1)"
  end

  return "Aggressor Indicator: Unknown("..value..")"
end

-- Dissect: Aggressor Indicator
b3_equities_binaryentrypoint_sbe_v8_1.aggressor_indicator.dissect = function(buffer, offset, packet, parent)
  local length = b3_equities_binaryentrypoint_sbe_v8_1.aggressor_indicator.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = b3_equities_binaryentrypoint_sbe_v8_1.aggressor_indicator.display(value, buffer, offset, packet, parent)

  parent:add(omi_b3_equities_binaryentrypoint_sbe_v8_1.fields.aggressor_indicator, range, value, display)

  return offset + length, value
end

-- Order Id
b3_equities_binaryentrypoint_sbe_v8_1.order_id = {}

-- Size: Order Id
b3_equities_binaryentrypoint_sbe_v8_1.order_id.size = 8

-- Display: Order Id
b3_equities_binaryentrypoint_sbe_v8_1.order_id.display = function(value)
  return "Order Id: "..value
end

-- Dissect: Order Id
b3_equities_binaryentrypoint_sbe_v8_1.order_id.dissect = function(buffer, offset, packet, parent)
  local length = b3_equities_binaryentrypoint_sbe_v8_1.order_id.size
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = b3_equities_binaryentrypoint_sbe_v8_1.order_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_b3_equities_binaryentrypoint_sbe_v8_1.fields.order_id, range, value, display)

  return offset + length, value
end

-- Cum Qty
b3_equities_binaryentrypoint_sbe_v8_1.cum_qty = {}

-- Size: Cum Qty
b3_equities_binaryentrypoint_sbe_v8_1.cum_qty.size = 8

-- Display: Cum Qty
b3_equities_binaryentrypoint_sbe_v8_1.cum_qty.display = function(value)
  return "Cum Qty: "..value
end

-- Dissect: Cum Qty
b3_equities_binaryentrypoint_sbe_v8_1.cum_qty.dissect = function(buffer, offset, packet, parent)
  local length = b3_equities_binaryentrypoint_sbe_v8_1.cum_qty.size
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = b3_equities_binaryentrypoint_sbe_v8_1.cum_qty.display(value, buffer, offset, packet, parent)

  parent:add(omi_b3_equities_binaryentrypoint_sbe_v8_1.fields.cum_qty, range, value, display)

  return offset + length, value
end

-- Leaves Qty
b3_equities_binaryentrypoint_sbe_v8_1.leaves_qty = {}

-- Size: Leaves Qty
b3_equities_binaryentrypoint_sbe_v8_1.leaves_qty.size = 8

-- Display: Leaves Qty
b3_equities_binaryentrypoint_sbe_v8_1.leaves_qty.display = function(value)
  return "Leaves Qty: "..value
end

-- Dissect: Leaves Qty
b3_equities_binaryentrypoint_sbe_v8_1.leaves_qty.dissect = function(buffer, offset, packet, parent)
  local length = b3_equities_binaryentrypoint_sbe_v8_1.leaves_qty.size
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = b3_equities_binaryentrypoint_sbe_v8_1.leaves_qty.display(value, buffer, offset, packet, parent)

  parent:add(omi_b3_equities_binaryentrypoint_sbe_v8_1.fields.leaves_qty, range, value, display)

  return offset + length, value
end

-- Exec Id
b3_equities_binaryentrypoint_sbe_v8_1.exec_id = {}

-- Size: Exec Id
b3_equities_binaryentrypoint_sbe_v8_1.exec_id.size = 8

-- Display: Exec Id
b3_equities_binaryentrypoint_sbe_v8_1.exec_id.display = function(value)
  return "Exec Id: "..value
end

-- Dissect: Exec Id
b3_equities_binaryentrypoint_sbe_v8_1.exec_id.dissect = function(buffer, offset, packet, parent)
  local length = b3_equities_binaryentrypoint_sbe_v8_1.exec_id.size
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = b3_equities_binaryentrypoint_sbe_v8_1.exec_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_b3_equities_binaryentrypoint_sbe_v8_1.fields.exec_id, range, value, display)

  return offset + length, value
end

-- Last Px
b3_equities_binaryentrypoint_sbe_v8_1.last_px = {}

-- Size: Last Px
b3_equities_binaryentrypoint_sbe_v8_1.last_px.size = 8

-- Display: Last Px
b3_equities_binaryentrypoint_sbe_v8_1.last_px.display = function(value)
  return "Last Px: "..value
end

-- Translate: Last Px
translate.last_px = function(raw)
  return raw:tonumber()/10000
end

-- Dissect: Last Px
b3_equities_binaryentrypoint_sbe_v8_1.last_px.dissect = function(buffer, offset, packet, parent)
  local length = b3_equities_binaryentrypoint_sbe_v8_1.last_px.size
  local range = buffer(offset, length)
  local raw = range:le_int64()
  local value = translate.last_px(raw)
  local display = b3_equities_binaryentrypoint_sbe_v8_1.last_px.display(value, buffer, offset, packet, parent)

  parent:add(omi_b3_equities_binaryentrypoint_sbe_v8_1.fields.last_px, range, value, display)

  return offset + length, value
end

-- Last Qty
b3_equities_binaryentrypoint_sbe_v8_1.last_qty = {}

-- Size: Last Qty
b3_equities_binaryentrypoint_sbe_v8_1.last_qty.size = 8

-- Display: Last Qty
b3_equities_binaryentrypoint_sbe_v8_1.last_qty.display = function(value)
  return "Last Qty: "..value
end

-- Dissect: Last Qty
b3_equities_binaryentrypoint_sbe_v8_1.last_qty.dissect = function(buffer, offset, packet, parent)
  local length = b3_equities_binaryentrypoint_sbe_v8_1.last_qty.size
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = b3_equities_binaryentrypoint_sbe_v8_1.last_qty.display(value, buffer, offset, packet, parent)

  parent:add(omi_b3_equities_binaryentrypoint_sbe_v8_1.fields.last_qty, range, value, display)

  return offset + length, value
end

-- Secondary Order Id
b3_equities_binaryentrypoint_sbe_v8_1.secondary_order_id = {}

-- Size: Secondary Order Id
b3_equities_binaryentrypoint_sbe_v8_1.secondary_order_id.size = 8

-- Display: Secondary Order Id
b3_equities_binaryentrypoint_sbe_v8_1.secondary_order_id.display = function(value)
  return "Secondary Order Id: "..value
end

-- Dissect: Secondary Order Id
b3_equities_binaryentrypoint_sbe_v8_1.secondary_order_id.dissect = function(buffer, offset, packet, parent)
  local length = b3_equities_binaryentrypoint_sbe_v8_1.secondary_order_id.size
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = b3_equities_binaryentrypoint_sbe_v8_1.secondary_order_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_b3_equities_binaryentrypoint_sbe_v8_1.fields.secondary_order_id, range, value, display)

  return offset + length, value
end

-- ClOrdId Optional
b3_equities_binaryentrypoint_sbe_v8_1.clordid_optional = {}

-- Size: ClOrdId Optional
b3_equities_binaryentrypoint_sbe_v8_1.clordid_optional.size = 8

-- Display: ClOrdId Optional
b3_equities_binaryentrypoint_sbe_v8_1.clordid_optional.display = function(value)
  return "ClOrdId Optional: "..value
end

-- Dissect: ClOrdId Optional
b3_equities_binaryentrypoint_sbe_v8_1.clordid_optional.dissect = function(buffer, offset, packet, parent)
  local length = b3_equities_binaryentrypoint_sbe_v8_1.clordid_optional.size
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = b3_equities_binaryentrypoint_sbe_v8_1.clordid_optional.display(value, buffer, offset, packet, parent)

  parent:add(omi_b3_equities_binaryentrypoint_sbe_v8_1.fields.clordid_optional, range, value, display)

  return offset + length, value
end

-- Ord Status
b3_equities_binaryentrypoint_sbe_v8_1.ord_status = {}

-- Size: Ord Status
b3_equities_binaryentrypoint_sbe_v8_1.ord_status.size = 1

-- Display: Ord Status
b3_equities_binaryentrypoint_sbe_v8_1.ord_status.display = function(value)
  -- Check if field has value
  if value == nil or value == 0 then
    return "Ord Status: No Value"
  end

  if value == "0" then
    return "Ord Status: New (0)"
  end
  if value == "1" then
    return "Ord Status: Partially Filled (1)"
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
    return "Ord Status: Previous Final State (Z)"
  end

  return "Ord Status: Unknown("..value..")"
end

-- Dissect: Ord Status
b3_equities_binaryentrypoint_sbe_v8_1.ord_status.dissect = function(buffer, offset, packet, parent)
  local length = b3_equities_binaryentrypoint_sbe_v8_1.ord_status.size
  local range = buffer(offset, length)

  -- parse as byte
  local value = range:uint()

  -- check if value is non zero
  if value ~= 0 then
    value = range:string()
  end

  local display = b3_equities_binaryentrypoint_sbe_v8_1.ord_status.display(value, buffer, offset, packet, parent)

  parent:add(omi_b3_equities_binaryentrypoint_sbe_v8_1.fields.ord_status, range, value, display)

  return offset + length, value
end

-- Execution Report Forward Message
b3_equities_binaryentrypoint_sbe_v8_1.execution_report_forward_message = {}

-- Calculate size of: Execution Report Forward Message
b3_equities_binaryentrypoint_sbe_v8_1.execution_report_forward_message.size = function(buffer, offset)
  local index = 0

  index = index + b3_equities_binaryentrypoint_sbe_v8_1.outbound_business_header.size(buffer, offset + index)

  index = index + b3_equities_binaryentrypoint_sbe_v8_1.side.size

  index = index + b3_equities_binaryentrypoint_sbe_v8_1.ord_status.size

  index = index + b3_equities_binaryentrypoint_sbe_v8_1.clordid_optional.size

  index = index + b3_equities_binaryentrypoint_sbe_v8_1.secondary_order_id.size

  index = index + b3_equities_binaryentrypoint_sbe_v8_1.security_id.size

  index = index + b3_equities_binaryentrypoint_sbe_v8_1.account.size

  index = index + b3_equities_binaryentrypoint_sbe_v8_1.last_qty.size

  index = index + b3_equities_binaryentrypoint_sbe_v8_1.last_px.size

  index = index + b3_equities_binaryentrypoint_sbe_v8_1.exec_id.size

  index = index + b3_equities_binaryentrypoint_sbe_v8_1.transact_time.size

  index = index + b3_equities_binaryentrypoint_sbe_v8_1.leaves_qty.size

  index = index + b3_equities_binaryentrypoint_sbe_v8_1.cum_qty.size

  index = index + b3_equities_binaryentrypoint_sbe_v8_1.trade_id.size

  index = index + b3_equities_binaryentrypoint_sbe_v8_1.contra_broker.size

  index = index + b3_equities_binaryentrypoint_sbe_v8_1.order_id.size

  index = index + b3_equities_binaryentrypoint_sbe_v8_1.aggressor_indicator.size

  index = index + b3_equities_binaryentrypoint_sbe_v8_1.settltype_optional.size

  index = index + b3_equities_binaryentrypoint_sbe_v8_1.trade_date.size

  index = index + b3_equities_binaryentrypoint_sbe_v8_1.days_to_settlement_optional.size

  index = index + b3_equities_binaryentrypoint_sbe_v8_1.offset_118_padding_2.size

  index = index + b3_equities_binaryentrypoint_sbe_v8_1.secondary_exec_id.size

  index = index + b3_equities_binaryentrypoint_sbe_v8_1.exec_ref_id.size

  index = index + b3_equities_binaryentrypoint_sbe_v8_1.fixed_rate_percentage_8_optional.size

  index = index + b3_equities_binaryentrypoint_sbe_v8_1.order_qty.size

  index = index + b3_equities_binaryentrypoint_sbe_v8_1.trading_session_id.size

  index = index + b3_equities_binaryentrypoint_sbe_v8_1.trading_session_sub_id.size

  index = index + b3_equities_binaryentrypoint_sbe_v8_1.security_trading_status.size

  index = index + b3_equities_binaryentrypoint_sbe_v8_1.desk_id.size(buffer, offset + index)

  index = index + b3_equities_binaryentrypoint_sbe_v8_1.memo.size(buffer, offset + index)

  return index
end

-- Display: Execution Report Forward Message
b3_equities_binaryentrypoint_sbe_v8_1.execution_report_forward_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Execution Report Forward Message
b3_equities_binaryentrypoint_sbe_v8_1.execution_report_forward_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Outbound Business Header: Struct of 5 fields
  index, outbound_business_header = b3_equities_binaryentrypoint_sbe_v8_1.outbound_business_header.dissect(buffer, index, packet, parent)

  -- Side: 1 Byte Ascii String Enum with 2 values
  index, side = b3_equities_binaryentrypoint_sbe_v8_1.side.dissect(buffer, index, packet, parent)

  -- Ord Status: 1 Byte Ascii String Enum with 9 values
  index, ord_status = b3_equities_binaryentrypoint_sbe_v8_1.ord_status.dissect(buffer, index, packet, parent)

  -- ClOrdId Optional: 8 Byte Unsigned Fixed Width Integer
  index, clordid_optional = b3_equities_binaryentrypoint_sbe_v8_1.clordid_optional.dissect(buffer, index, packet, parent)

  -- Secondary Order Id: 8 Byte Unsigned Fixed Width Integer
  index, secondary_order_id = b3_equities_binaryentrypoint_sbe_v8_1.secondary_order_id.dissect(buffer, index, packet, parent)

  -- Security Id: 8 Byte Unsigned Fixed Width Integer
  index, security_id = b3_equities_binaryentrypoint_sbe_v8_1.security_id.dissect(buffer, index, packet, parent)

  -- Account: 4 Byte Unsigned Fixed Width Integer
  index, account = b3_equities_binaryentrypoint_sbe_v8_1.account.dissect(buffer, index, packet, parent)

  -- Last Qty: 8 Byte Unsigned Fixed Width Integer
  index, last_qty = b3_equities_binaryentrypoint_sbe_v8_1.last_qty.dissect(buffer, index, packet, parent)

  -- Last Px: 8 Byte Signed Fixed Width Integer
  index, last_px = b3_equities_binaryentrypoint_sbe_v8_1.last_px.dissect(buffer, index, packet, parent)

  -- Exec Id: 8 Byte Unsigned Fixed Width Integer
  index, exec_id = b3_equities_binaryentrypoint_sbe_v8_1.exec_id.dissect(buffer, index, packet, parent)

  -- Transact Time: 8 Byte Unsigned Fixed Width Integer
  index, transact_time = b3_equities_binaryentrypoint_sbe_v8_1.transact_time.dissect(buffer, index, packet, parent)

  -- Leaves Qty: 8 Byte Unsigned Fixed Width Integer
  index, leaves_qty = b3_equities_binaryentrypoint_sbe_v8_1.leaves_qty.dissect(buffer, index, packet, parent)

  -- Cum Qty: 8 Byte Unsigned Fixed Width Integer
  index, cum_qty = b3_equities_binaryentrypoint_sbe_v8_1.cum_qty.dissect(buffer, index, packet, parent)

  -- Trade Id: 4 Byte Unsigned Fixed Width Integer
  index, trade_id = b3_equities_binaryentrypoint_sbe_v8_1.trade_id.dissect(buffer, index, packet, parent)

  -- Contra Broker: 4 Byte Unsigned Fixed Width Integer
  index, contra_broker = b3_equities_binaryentrypoint_sbe_v8_1.contra_broker.dissect(buffer, index, packet, parent)

  -- Order Id: 8 Byte Unsigned Fixed Width Integer
  index, order_id = b3_equities_binaryentrypoint_sbe_v8_1.order_id.dissect(buffer, index, packet, parent)

  -- Aggressor Indicator: 1 Byte Unsigned Fixed Width Integer Enum with 2 values
  index, aggressor_indicator = b3_equities_binaryentrypoint_sbe_v8_1.aggressor_indicator.dissect(buffer, index, packet, parent)

  -- SettlType Optional: 1 Byte Ascii String Enum with 4 values
  index, settltype_optional = b3_equities_binaryentrypoint_sbe_v8_1.settltype_optional.dissect(buffer, index, packet, parent)

  -- Trade Date: 2 Byte Unsigned Fixed Width Integer
  index, trade_date = b3_equities_binaryentrypoint_sbe_v8_1.trade_date.dissect(buffer, index, packet, parent)

  -- Days To Settlement Optional: 2 Byte Unsigned Fixed Width Integer
  index, days_to_settlement_optional = b3_equities_binaryentrypoint_sbe_v8_1.days_to_settlement_optional.dissect(buffer, index, packet, parent)

  -- Offset 118 Padding 2: 2 Byte
  index, offset_118_padding_2 = b3_equities_binaryentrypoint_sbe_v8_1.offset_118_padding_2.dissect(buffer, index, packet, parent)

  -- Secondary Exec Id: 8 Byte Unsigned Fixed Width Integer
  index, secondary_exec_id = b3_equities_binaryentrypoint_sbe_v8_1.secondary_exec_id.dissect(buffer, index, packet, parent)

  -- Exec Ref Id: 8 Byte Unsigned Fixed Width Integer
  index, exec_ref_id = b3_equities_binaryentrypoint_sbe_v8_1.exec_ref_id.dissect(buffer, index, packet, parent)

  -- Fixed Rate Percentage 8 Optional: 8 Byte Signed Fixed Width Integer Nullable
  index, fixed_rate_percentage_8_optional = b3_equities_binaryentrypoint_sbe_v8_1.fixed_rate_percentage_8_optional.dissect(buffer, index, packet, parent)

  -- Order Qty: 8 Byte Unsigned Fixed Width Integer
  index, order_qty = b3_equities_binaryentrypoint_sbe_v8_1.order_qty.dissect(buffer, index, packet, parent)

  -- Trading Session Id: 1 Byte Unsigned Fixed Width Integer Enum with 3 values
  index, trading_session_id = b3_equities_binaryentrypoint_sbe_v8_1.trading_session_id.dissect(buffer, index, packet, parent)

  -- Trading Session Sub Id: 1 Byte Unsigned Fixed Width Integer Enum with 7 values
  index, trading_session_sub_id = b3_equities_binaryentrypoint_sbe_v8_1.trading_session_sub_id.dissect(buffer, index, packet, parent)

  -- Security Trading Status: 1 Byte Unsigned Fixed Width Integer Enum with 9 values
  index, security_trading_status = b3_equities_binaryentrypoint_sbe_v8_1.security_trading_status.dissect(buffer, index, packet, parent)

  -- Desk Id: Struct of 2 fields
  index, desk_id = b3_equities_binaryentrypoint_sbe_v8_1.desk_id.dissect(buffer, index, packet, parent)

  -- Memo: Struct of 2 fields
  index, memo = b3_equities_binaryentrypoint_sbe_v8_1.memo.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Execution Report Forward Message
b3_equities_binaryentrypoint_sbe_v8_1.execution_report_forward_message.dissect = function(buffer, offset, packet, parent)
  -- Optionally add dynamic struct element to protocol tree
  if show.execution_report_forward_message then
    local length = b3_equities_binaryentrypoint_sbe_v8_1.execution_report_forward_message.size(buffer, offset)
    local range = buffer(offset, length)
    local display = b3_equities_binaryentrypoint_sbe_v8_1.execution_report_forward_message.display(buffer, packet, parent)
    parent = parent:add(omi_b3_equities_binaryentrypoint_sbe_v8_1.fields.execution_report_forward_message, range, display)
  end

  return b3_equities_binaryentrypoint_sbe_v8_1.execution_report_forward_message.fields(buffer, offset, packet, parent)
end

-- Strategy Id
b3_equities_binaryentrypoint_sbe_v8_1.strategy_id = {}

-- Size: Strategy Id
b3_equities_binaryentrypoint_sbe_v8_1.strategy_id.size = 4

-- Display: Strategy Id
b3_equities_binaryentrypoint_sbe_v8_1.strategy_id.display = function(value)
  -- Check if field has value
  if value == 0 then
    return "Strategy Id: No Value"
  end

  return "Strategy Id: "..value
end

-- Dissect: Strategy Id
b3_equities_binaryentrypoint_sbe_v8_1.strategy_id.dissect = function(buffer, offset, packet, parent)
  local length = b3_equities_binaryentrypoint_sbe_v8_1.strategy_id.size
  local range = buffer(offset, length)
  local value = range:le_int()
  local display = b3_equities_binaryentrypoint_sbe_v8_1.strategy_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_b3_equities_binaryentrypoint_sbe_v8_1.fields.strategy_id, range, value, display)

  return offset + length, value
end

-- OrdTagId Optional
b3_equities_binaryentrypoint_sbe_v8_1.ordtagid_optional = {}

-- Size: OrdTagId Optional
b3_equities_binaryentrypoint_sbe_v8_1.ordtagid_optional.size = 1

-- Display: OrdTagId Optional
b3_equities_binaryentrypoint_sbe_v8_1.ordtagid_optional.display = function(value)
  -- Check if field has value
  if value == 0 then
    return "OrdTagId Optional: No Value"
  end

  return "OrdTagId Optional: "..value
end

-- Dissect: OrdTagId Optional
b3_equities_binaryentrypoint_sbe_v8_1.ordtagid_optional.dissect = function(buffer, offset, packet, parent)
  local length = b3_equities_binaryentrypoint_sbe_v8_1.ordtagid_optional.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = b3_equities_binaryentrypoint_sbe_v8_1.ordtagid_optional.display(value, buffer, offset, packet, parent)

  parent:add(omi_b3_equities_binaryentrypoint_sbe_v8_1.fields.ordtagid_optional, range, value, display)

  return offset + length, value
end

-- Offset 146 Padding 3
b3_equities_binaryentrypoint_sbe_v8_1.offset_146_padding_3 = {}

-- Size: Offset 146 Padding 3
b3_equities_binaryentrypoint_sbe_v8_1.offset_146_padding_3.size = 3

-- Display: Offset 146 Padding 3
b3_equities_binaryentrypoint_sbe_v8_1.offset_146_padding_3.display = function(value)
  return "Offset 146 Padding 3: "..value
end

-- Dissect: Offset 146 Padding 3
b3_equities_binaryentrypoint_sbe_v8_1.offset_146_padding_3.dissect = function(buffer, offset, packet, parent)
  local length = b3_equities_binaryentrypoint_sbe_v8_1.offset_146_padding_3.size
  local range = buffer(offset, length)
  local value = range:bytes():tohex(false, " ")
  local display = b3_equities_binaryentrypoint_sbe_v8_1.offset_146_padding_3.display(value, buffer, offset, packet, parent)

  parent:add(omi_b3_equities_binaryentrypoint_sbe_v8_1.fields.offset_146_padding_3, range, value, display)

  return offset + length, value
end

-- Received Time
b3_equities_binaryentrypoint_sbe_v8_1.received_time = {}

-- Size: Received Time
b3_equities_binaryentrypoint_sbe_v8_1.received_time.size = 8

-- Display: Received Time
b3_equities_binaryentrypoint_sbe_v8_1.received_time.display = function(value)
  -- Check null sentinel value
  if value == UInt64(0x00000000, 0x00000000) then
    return "Received Time: No Value"
  end
  -- Parse unix timestamp
  local seconds = math.floor(value:tonumber()/1000000000)
  local nanoseconds = value:tonumber()%1000000000

  return "Received Time: "..os.date("%x %H:%M:%S.", seconds)..string.format("%09d", nanoseconds)
end

-- Dissect: Received Time
b3_equities_binaryentrypoint_sbe_v8_1.received_time.dissect = function(buffer, offset, packet, parent)
  local length = b3_equities_binaryentrypoint_sbe_v8_1.received_time.size
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = b3_equities_binaryentrypoint_sbe_v8_1.received_time.display(value, buffer, offset, packet, parent)

  parent:add(omi_b3_equities_binaryentrypoint_sbe_v8_1.fields.received_time, range, value, display)

  return offset + length, value
end

-- Crossed Indicator
b3_equities_binaryentrypoint_sbe_v8_1.crossed_indicator = {}

-- Size: Crossed Indicator
b3_equities_binaryentrypoint_sbe_v8_1.crossed_indicator.size = 2

-- Display: Crossed Indicator
b3_equities_binaryentrypoint_sbe_v8_1.crossed_indicator.display = function(value)
  if value == 1001 then
    return "Crossed Indicator: Structured Transaction (1001)"
  end
  if value == 1002 then
    return "Crossed Indicator: Operational Error (1002)"
  end
  if value == 1003 then
    return "Crossed Indicator: Twap Vwap (1003)"
  end
  if value == 0 then
    return "Crossed Indicator: No Value"
  end

  return "Crossed Indicator: Unknown("..value..")"
end

-- Dissect: Crossed Indicator
b3_equities_binaryentrypoint_sbe_v8_1.crossed_indicator.dissect = function(buffer, offset, packet, parent)
  local length = b3_equities_binaryentrypoint_sbe_v8_1.crossed_indicator.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = b3_equities_binaryentrypoint_sbe_v8_1.crossed_indicator.display(value, buffer, offset, packet, parent)

  parent:add(omi_b3_equities_binaryentrypoint_sbe_v8_1.fields.crossed_indicator, range, value, display)

  return offset + length, value
end

-- CrossId Optional
b3_equities_binaryentrypoint_sbe_v8_1.crossid_optional = {}

-- Size: CrossId Optional
b3_equities_binaryentrypoint_sbe_v8_1.crossid_optional.size = 8

-- Display: CrossId Optional
b3_equities_binaryentrypoint_sbe_v8_1.crossid_optional.display = function(value)
  return "CrossId Optional: "..value
end

-- Dissect: CrossId Optional
b3_equities_binaryentrypoint_sbe_v8_1.crossid_optional.dissect = function(buffer, offset, packet, parent)
  local length = b3_equities_binaryentrypoint_sbe_v8_1.crossid_optional.size
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = b3_equities_binaryentrypoint_sbe_v8_1.crossid_optional.display(value, buffer, offset, packet, parent)

  parent:add(omi_b3_equities_binaryentrypoint_sbe_v8_1.fields.crossid_optional, range, value, display)

  return offset + length, value
end

-- Max Floor
b3_equities_binaryentrypoint_sbe_v8_1.max_floor = {}

-- Size: Max Floor
b3_equities_binaryentrypoint_sbe_v8_1.max_floor.size = 8

-- Display: Max Floor
b3_equities_binaryentrypoint_sbe_v8_1.max_floor.display = function(value)
  return "Max Floor: "..value
end

-- Dissect: Max Floor
b3_equities_binaryentrypoint_sbe_v8_1.max_floor.dissect = function(buffer, offset, packet, parent)
  local length = b3_equities_binaryentrypoint_sbe_v8_1.max_floor.size
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = b3_equities_binaryentrypoint_sbe_v8_1.max_floor.display(value, buffer, offset, packet, parent)

  parent:add(omi_b3_equities_binaryentrypoint_sbe_v8_1.fields.max_floor, range, value, display)

  return offset + length, value
end

-- Min Qty
b3_equities_binaryentrypoint_sbe_v8_1.min_qty = {}

-- Size: Min Qty
b3_equities_binaryentrypoint_sbe_v8_1.min_qty.size = 8

-- Display: Min Qty
b3_equities_binaryentrypoint_sbe_v8_1.min_qty.display = function(value)
  return "Min Qty: "..value
end

-- Dissect: Min Qty
b3_equities_binaryentrypoint_sbe_v8_1.min_qty.dissect = function(buffer, offset, packet, parent)
  local length = b3_equities_binaryentrypoint_sbe_v8_1.min_qty.size
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = b3_equities_binaryentrypoint_sbe_v8_1.min_qty.display(value, buffer, offset, packet, parent)

  parent:add(omi_b3_equities_binaryentrypoint_sbe_v8_1.fields.min_qty, range, value, display)

  return offset + length, value
end

-- Stop Px
b3_equities_binaryentrypoint_sbe_v8_1.stop_px = {}

-- Size: Stop Px
b3_equities_binaryentrypoint_sbe_v8_1.stop_px.size = 8

-- Display: Stop Px
b3_equities_binaryentrypoint_sbe_v8_1.stop_px.display = function(raw, value)
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
b3_equities_binaryentrypoint_sbe_v8_1.stop_px.dissect = function(buffer, offset, packet, parent)
  local length = b3_equities_binaryentrypoint_sbe_v8_1.stop_px.size
  local range = buffer(offset, length)
  local raw = range:le_int64()
  local value = translate.stop_px(raw)
  local display = b3_equities_binaryentrypoint_sbe_v8_1.stop_px.display(raw, value, buffer, offset, packet, parent)

  parent:add(omi_b3_equities_binaryentrypoint_sbe_v8_1.fields.stop_px, range, value, display)

  return offset + length, value
end

-- Price Optional
b3_equities_binaryentrypoint_sbe_v8_1.price_optional = {}

-- Size: Price Optional
b3_equities_binaryentrypoint_sbe_v8_1.price_optional.size = 8

-- Display: Price Optional
b3_equities_binaryentrypoint_sbe_v8_1.price_optional.display = function(raw, value)
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
b3_equities_binaryentrypoint_sbe_v8_1.price_optional.dissect = function(buffer, offset, packet, parent)
  local length = b3_equities_binaryentrypoint_sbe_v8_1.price_optional.size
  local range = buffer(offset, length)
  local raw = range:le_int64()
  local value = translate.price_optional(raw)
  local display = b3_equities_binaryentrypoint_sbe_v8_1.price_optional.display(raw, value, buffer, offset, packet, parent)

  parent:add(omi_b3_equities_binaryentrypoint_sbe_v8_1.fields.price_optional, range, value, display)

  return offset + length, value
end

-- Expire Date
b3_equities_binaryentrypoint_sbe_v8_1.expire_date = {}

-- Size: Expire Date
b3_equities_binaryentrypoint_sbe_v8_1.expire_date.size = 2

-- Display: Expire Date
b3_equities_binaryentrypoint_sbe_v8_1.expire_date.display = function(value)
  return "Expire Date: "..value
end

-- Dissect: Expire Date
b3_equities_binaryentrypoint_sbe_v8_1.expire_date.dissect = function(buffer, offset, packet, parent)
  local length = b3_equities_binaryentrypoint_sbe_v8_1.expire_date.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = b3_equities_binaryentrypoint_sbe_v8_1.expire_date.display(value, buffer, offset, packet, parent)

  parent:add(omi_b3_equities_binaryentrypoint_sbe_v8_1.fields.expire_date, range, value, display)

  return offset + length, value
end

-- Time In Force
b3_equities_binaryentrypoint_sbe_v8_1.time_in_force = {}

-- Size: Time In Force
b3_equities_binaryentrypoint_sbe_v8_1.time_in_force.size = 1

-- Display: Time In Force
b3_equities_binaryentrypoint_sbe_v8_1.time_in_force.display = function(value)
  -- Check if field has value
  if value == nil or value == 0 then
    return "Time In Force: No Value"
  end

  if value == "0" then
    return "Time In Force: Day (0)"
  end
  if value == "1" then
    return "Time In Force: Good Till Cancel (1)"
  end
  if value == "3" then
    return "Time In Force: Immediate Or Cancel (3)"
  end
  if value == "4" then
    return "Time In Force: Fill Or Kill (4)"
  end
  if value == "6" then
    return "Time In Force: Good Till Date (6)"
  end
  if value == "7" then
    return "Time In Force: At The Close (7)"
  end
  if value == "A" then
    return "Time In Force: Good For Auction (A)"
  end

  return "Time In Force: Unknown("..value..")"
end

-- Dissect: Time In Force
b3_equities_binaryentrypoint_sbe_v8_1.time_in_force.dissect = function(buffer, offset, packet, parent)
  local length = b3_equities_binaryentrypoint_sbe_v8_1.time_in_force.size
  local range = buffer(offset, length)

  -- parse as byte
  local value = range:uint()

  -- check if value is non zero
  if value ~= 0 then
    value = range:string()
  end

  local display = b3_equities_binaryentrypoint_sbe_v8_1.time_in_force.display(value, buffer, offset, packet, parent)

  parent:add(omi_b3_equities_binaryentrypoint_sbe_v8_1.fields.time_in_force, range, value, display)

  return offset + length, value
end

-- OrdType
b3_equities_binaryentrypoint_sbe_v8_1.ordtype = {}

-- Size: OrdType
b3_equities_binaryentrypoint_sbe_v8_1.ordtype.size = 1

-- Display: OrdType
b3_equities_binaryentrypoint_sbe_v8_1.ordtype.display = function(value)
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
    return "OrdType: Stop Loss (3)"
  end
  if value == "4" then
    return "OrdType: Stop Limit (4)"
  end
  if value == "K" then
    return "OrdType: Market With Leftover As Limit (K)"
  end
  if value == "W" then
    return "OrdType: Rlp (W)"
  end
  if value == "P" then
    return "OrdType: Pegged Midpoint (P)"
  end

  return "OrdType: Unknown("..value..")"
end

-- Dissect: OrdType
b3_equities_binaryentrypoint_sbe_v8_1.ordtype.dissect = function(buffer, offset, packet, parent)
  local length = b3_equities_binaryentrypoint_sbe_v8_1.ordtype.size
  local range = buffer(offset, length)

  -- parse as byte
  local value = range:uint()

  -- check if value is non zero
  if value ~= 0 then
    value = range:string()
  end

  local display = b3_equities_binaryentrypoint_sbe_v8_1.ordtype.display(value, buffer, offset, packet, parent)

  parent:add(omi_b3_equities_binaryentrypoint_sbe_v8_1.fields.ordtype, range, value, display)

  return offset + length, value
end

-- OrigClOrdId
b3_equities_binaryentrypoint_sbe_v8_1.origclordid = {}

-- Size: OrigClOrdId
b3_equities_binaryentrypoint_sbe_v8_1.origclordid.size = 8

-- Display: OrigClOrdId
b3_equities_binaryentrypoint_sbe_v8_1.origclordid.display = function(value)
  return "OrigClOrdId: "..value
end

-- Dissect: OrigClOrdId
b3_equities_binaryentrypoint_sbe_v8_1.origclordid.dissect = function(buffer, offset, packet, parent)
  local length = b3_equities_binaryentrypoint_sbe_v8_1.origclordid.size
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = b3_equities_binaryentrypoint_sbe_v8_1.origclordid.display(value, buffer, offset, packet, parent)

  parent:add(omi_b3_equities_binaryentrypoint_sbe_v8_1.fields.origclordid, range, value, display)

  return offset + length, value
end

-- Order Id Optional
b3_equities_binaryentrypoint_sbe_v8_1.order_id_optional = {}

-- Size: Order Id Optional
b3_equities_binaryentrypoint_sbe_v8_1.order_id_optional.size = 8

-- Display: Order Id Optional
b3_equities_binaryentrypoint_sbe_v8_1.order_id_optional.display = function(value)
  return "Order Id Optional: "..value
end

-- Dissect: Order Id Optional
b3_equities_binaryentrypoint_sbe_v8_1.order_id_optional.dissect = function(buffer, offset, packet, parent)
  local length = b3_equities_binaryentrypoint_sbe_v8_1.order_id_optional.size
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = b3_equities_binaryentrypoint_sbe_v8_1.order_id_optional.display(value, buffer, offset, packet, parent)

  parent:add(omi_b3_equities_binaryentrypoint_sbe_v8_1.fields.order_id_optional, range, value, display)

  return offset + length, value
end

-- Ord Rej Reason
b3_equities_binaryentrypoint_sbe_v8_1.ord_rej_reason = {}

-- Size: Ord Rej Reason
b3_equities_binaryentrypoint_sbe_v8_1.ord_rej_reason.size = 4

-- Display: Ord Rej Reason
b3_equities_binaryentrypoint_sbe_v8_1.ord_rej_reason.display = function(value)
  if value == 009999 then
    return "Ord Rej Reason: Unable to create FIX from VolatilityUpdate message  (009999)"
  end
  if value == 000908 then
    return "Ord Rej Reason: Unable to send FIX from VolatilityUpdate message  (000908)"
  end
  if value == 001003 then
    return "Ord Rej Reason: Orders may not be entered while the market is closed/paused  (001003)"
  end
  if value == 001007 then
    return "Ord Rej Reason: FIX field missing or incorrect  (001007)"
  end
  if value == 001010 then
    return "Ord Rej Reason: Required field missing  (001010)"
  end
  if value == 001011 then
    return "Ord Rej Reason: FIX field incorrect  (001011)"
  end
  if value == 001012 then
    return "Ord Rej Reason: Price must be greater than zero  (001012)"
  end
  if value == 001013 then
    return "Ord Rej Reason: Invalid order qualifier  (001013)"
  end
  if value == 001014 then
    return "Ord Rej Reason: User not authorized to trade  (001014)"
  end
  if value == 001016 then
    return "Ord Rej Reason: Required field missing 'Stop orders cannot be IOC/FAK'  (001016)"
  end
  if value == 001017 then
    return "Ord Rej Reason: Required field missing 'Display Quantity orders cannot be IOC/FOK'  (001017)"
  end
  if value == 001018 then
    return "Ord Rej Reason: Required field missing 'Stop orders cannot be IOC/FOK'  (001018)"
  end
  if value == 002013 then
    return "Ord Rej Reason: Market price orders not supported by opposite limit  (002013)"
  end
  if value == 002019 then
    return "Ord Rej Reason: Order GTD Expire Date is before the current (or next, if not currently in a session) trading session end date  (002019)"
  end
  if value == 002045 then
    return "Ord Rej Reason: Cannot modify order because order does not exist  (002045)"
  end
  if value == 002045 then
    return "Ord Rej Reason: Order not in book  (002045)"
  end
  if value == 002046 then
    return "Ord Rej Reason: Disclosed Quantity cannot be greater than total or remaining quantity  (002046)"
  end
  if value == 002047 then
    return "Ord Rej Reason: Order contract is unknown   (002047)"
  end
  if value == 002048 then
    return "Ord Rej Reason: The Order was submitted with a different SenderCompID than the requesting Cancel   (002048)"
  end
  if value == 002049 then
    return "Ord Rej Reason: The Order was submitted with a different CLOrderID than the CorrelationClOrderID of the requesting Cancel   (002049)"
  end
  if value == 002050 then
    return "Ord Rej Reason: The Order was submitted with a different CLOrderID than the OriginalClOrderID of the requesting Cancel   (002050)"
  end
  if value == 002051 then
    return "Ord Rej Reason: The Order was submitted with a different side than the requesting Cancel   (002051)"
  end
  if value == 002052 then
    return "Ord Rej Reason: The Order was submitted with a different group (tag 55) than the requesting Cancel   (002052)"
  end
  if value == 002053 then
    return "Ord Rej Reason: The Order was submitted with a different security type than the requesting Cancel   (002053)"
  end
  if value == 002054 then
    return "Ord Rej Reason: The Order was submitted with a different account than the requesting Cancel   (002054)"
  end
  if value == 002055 then
    return "Ord Rej Reason: The Order was submitted with a different quantity than the requesting Cancel   (002055)"
  end
  if value == 002056 then
    return "Ord Rej Reason: The Order was submitted with a different TraderID than the requesting Cancel   (002056)"
  end
  if value == 002057 then
    return "Ord Rej Reason: Attempt to cancel an order with a different FirmID than the original order  (002057)"
  end
  if value == 002058 then
    return "Ord Rej Reason: Attempt to cancel an order with a different SenderLocationID than the original order  (002058)"
  end
  if value == 002058 then
    return "Ord Rej Reason: Stop price maxi-mini must be greater than or equal to trigger price   (002058)"
  end
  if value == 002059 then
    return "Ord Rej Reason: Stop price maxi-mini must be smaller than or equal to trigger price  (002059)"
  end
  if value == 002060 then
    return "Ord Rej Reason: Sell order stop price must be below last trade price  (002060)"
  end
  if value == 002061 then
    return "Ord Rej Reason: Buy order stop price must be above last trade price  (002061)"
  end
  if value == 002100 then
    return "Ord Rej Reason: The modify was submitted on a different product than the original order  (002100)"
  end
  if value == 002101 then
    return "Ord Rej Reason: Attempt to modify an order with a different in-flight-fill mitigation status than first modification  (002101)"
  end
  if value == 002101 then
    return "Ord Rej Reason: Attempt to modify an order currently taking part in an RFC process  (002101)"
  end
  if value == 002102 then
    return "Ord Rej Reason: Attempt to modify an order with a different SenderCompID than the original order  (002102)"
  end
  if value == 002103 then
    return "Ord Rej Reason: Attempt to modify an order with a different TraderID than the original order  (002103)"
  end
  if value == 002104 then
    return "Ord Rej Reason: Attempt to modify an order with a different AccountID than the original order  (002104)"
  end
  if value == 002105 then
    return "Ord Rej Reason: Attempt to modify an order with a different FirmID than the original order  (002105)"
  end
  if value == 002106 then
    return "Ord Rej Reason: Attempt to modify an order with a different SenderLocationID than the original order  (002106)"
  end
  if value == 002107 then
    return "Ord Rej Reason: Disclosed Quantity is not allowed  (002107)"
  end
  if value == 002108 then
    return "Ord Rej Reason: Account or Give Up firm required for DMA customers  (002108)"
  end
  if value == 002109 then
    return "Ord Rej Reason: Disclosed Qty cannot be less than Disclosed Qty Min  (002109)"
  end
  if value == 002110 then
    return "Ord Rej Reason: Acct Type(38) not valid for Tag 581 for DMA customers  (002110)"
  end
  if value == 002111 then
    return "Ord Rej Reason: Give Up not valid for FX Spot contract  (002111)"
  end
  if value == 002112 then
    return "Ord Rej Reason: Visibility Permission Not granted for Executing Trader/Entering Trader   (002112)"
  end
  if value == 002113 then
    return "Ord Rej Reason: Executing Trader doesn't have access to Product Group   (002113)"
  end
  if value == 002114 then
    return "Ord Rej Reason: Attempt to modify market order to some other type   (002114)"
  end
  if value == 002115 then
    return "Ord Rej Reason: Order quantity is outside of the allowable range  (002115)"
  end
  if value == 002116 then
    return "Ord Rej Reason: Account is mandatory for FX SPOT  (002116)"
  end
  if value == 002117 then
    return "Ord Rej Reason: Order On Behalf by DMA customer is not allowed  (002117)"
  end
  if value == 002118 then
    return "Ord Rej Reason: Attempt to modify an order with a different AccountType than the original order  (002118)"
  end
  if value == 002123 then
    return "Ord Rej Reason: Account or Give Up firm required for equities  (002123)"
  end
  if value == 002130 then
    return "Ord Rej Reason: Order type not permitted while the market is in pre open  (002130)"
  end
  if value == 002130 then
    return "Ord Rej Reason: Order type not permitted while the market is in PCP  (002130)"
  end
  if value == 002137 then
    return "Ord Rej Reason: Order price is outside limits  (002137)"
  end
  if value == 002138 then
    return "Ord Rej Reason: Qty is not multiple of Round Lot  (002138)"
  end
  if value == 002139 then
    return "Ord Rej Reason: Qty is greater or equal than Maximum Trade Volume  (002139)"
  end
  if value == 002179 then
    return "Ord Rej Reason: Order price is outside bands  (002179)"
  end
  if value == 002180 then
    return "Ord Rej Reason: Order price is outside auction bands  (002180)"
  end
  if value == 002181 then
    return "Ord Rej Reason: Trade outside of short term volatility bands  (002181)"
  end
  if value == 002182 then
    return "Ord Rej Reason: All Legs must have same Lot Types  (002182)"
  end
  if value == 002183 then
    return "Ord Rej Reason: All Legs must have same Tick Increment  (002183)"
  end
  if value == 002184 then
    return "Ord Rej Reason: All Legs must have same Step of Quotation  (002184)"
  end
  if value == 002185 then
    return "Ord Rej Reason: Trade price is outside of static limits  (002185)"
  end
  if value == 002186 then
    return "Ord Rej Reason: COD Not Supported for GTC/ GTD Orders  (002186)"
  end
  if value == 002187 then
    return "Ord Rej Reason: Order not bookable at this time  (002187)"
  end
  if value == 002188 then
    return "Ord Rej Reason: Minimum Quantity was not Filled  (002188)"
  end
  if value == 002189 then
    return "Ord Rej Reason: Order Attributes Not Allowed to Trip an Auction  (002189)"
  end
  if value == 002311 then
    return "Ord Rej Reason: Order type not permitted for group  (002311)"
  end
  if value == 002500 then
    return "Ord Rej Reason: Instrument has an request for cross in progress  (002500)"
  end
  if value == 002501 then
    return "Ord Rej Reason: Order Quantity too low  (002501)"
  end
  if value == 002502 then
    return "Ord Rej Reason: CrossType ineligible for instrument  (002502)"
  end
  if value == 002503 then
    return "Ord Rej Reason: RFQ for Cross is not allowed since contract is not RFQ for Cross eligible  (002503)"
  end
  if value == 002504 then
    return "Ord Rej Reason: DMA CrossOrder Not allowed  (002504)"
  end
  if value == 002505 then
    return "Ord Rej Reason: Cross Order Rejected due to Auction Trigger Validation  (002505)"
  end
  if value == 002506 then
    return "Ord Rej Reason: Trade on Behalf Rejected.  (002506)"
  end
  if value == 002600 then
    return "Ord Rej Reason: Market Maker Protection in effect for user <XXXXXXXX> and group <XXXXXX>  (002600)"
  end
  if value == 003000 then
    return "Ord Rej Reason: RFQ rejected, instrument/exchange not tradable  (003000)"
  end
  if value == 003001 then
    return "Ord Rej Reason: RFQ rejected, instrument/exchange not known  (003001)"
  end
  if value == 003002 then
    return "Ord Rej Reason: Error creating contract  (003002)"
  end
  if value == 003010 then
    return "Ord Rej Reason: Business reject: Other  (003010)"
  end
  if value == 003011 then
    return "Ord Rej Reason: Business reject: Unknown ID  (003011)"
  end
  if value == 003012 then
    return "Ord Rej Reason: Business reject: Unknown security  (003012)"
  end
  if value == 003013 then
    return "Ord Rej Reason: Business reject: Unsupported message type  (003013)"
  end
  if value == 003014 then
    return "Ord Rej Reason: Business reject: Application Not Available  (003014)"
  end
  if value == 003015 then
    return "Ord Rej Reason: Business reject: Required field missing  (003015)"
  end
  if value == 003016 then
    return "Ord Rej Reason: Contract claims to be a spread but is missing one or more legs  (003016)"
  end
  if value == 003017 then
    return "Ord Rej Reason: Fix Field Length Exceeds Max Length  (003017)"
  end
  if value == 003020 then
    return "Ord Rej Reason: Special Auction Permissions: 'Order entry not allowed.'  (003020)"
  end
  if value == 004000 then
    return "Ord Rej Reason: Engine did not respond to FAS request  (004000)"
  end
  if value == 006001 then
    return "Ord Rej Reason: Termo message rejected : Unknown instrument  (006001)"
  end
  if value == 006002 then
    return "Ord Rej Reason: Termo message rejected : Exchange (security) closed  (006002)"
  end
  if value == 006003 then
    return "Ord Rej Reason: Termo rejected, instrument/exchange not tradable  (006003)"
  end
  if value == 006004 then
    return "Ord Rej Reason: Termo message rejected: Limits exceeded  (006004)"
  end
  if value == 006005 then
    return "Ord Rej Reason: Termo message rejected: Too late to enter  (006005)"
  end
  if value == 006006 then
    return "Ord Rej Reason: Termo message rejected: Unknown Termo Quote  (006006)"
  end
  if value == 006007 then
    return "Ord Rej Reason: Termo message rejected: Duplicate Termo Quote  (006007)"
  end
  if value == 006008 then
    return "Ord Rej Reason: Termo message rejected: Invalid bid/ask spread  (006008)"
  end
  if value == 006009 then
    return "Ord Rej Reason: Termo message rejected: Invalid price  (006009)"
  end
  if value == 006010 then
    return "Ord Rej Reason: Termo message rejected: Not authorized to termo quote this instrument  (006010)"
  end
  if value == 006011 then
    return "Ord Rej Reason: Termo message rejected: Pass  (006011)"
  end
  if value == 006012 then
    return "Ord Rej Reason: Fix field incorrect  (006012)"
  end
  if value == 006013 then
    return "Ord Rej Reason: Not a valid termo instrument  (006013)"
  end
  if value == 006014 then
    return "Ord Rej Reason: Values don`t match with the original request  (006014)"
  end
  if value == 006015 then
    return "Ord Rej Reason: Current termo request status does not allow rejection  (006015)"
  end
  if value == 006016 then
    return "Ord Rej Reason: Current termo request status does not allow acceptance  (006016)"
  end
  if value == 006017 then
    return "Ord Rej Reason: Wrong type of order book for Termo.  (006017)"
  end
  if value == 006018 then
    return "Ord Rej Reason: Wrong type of request for Termo.  (006018)"
  end
  if value == 006019 then
    return "Ord Rej Reason: Days to Settlement must be between 16 and 999.  (006019)"
  end
  if value == 006020 then
    return "Ord Rej Reason: Days to Settlement must be between 16 and 90  (006020)"
  end
  if value == 006021 then
    return "Ord Rej Reason: Instrument not allowed to this market.  (006021)"
  end
  if value == 006022 then
    return "Ord Rej Reason: Instrument not allowed to this market.  (006022)"
  end
  if value == 006023 then
    return "Ord Rej Reason: Termo Price should be greater than zero.  (006023)"
  end
  if value == 006024 then
    return "Ord Rej Reason: Termo messages should not be entered when market is paused  (006024)"
  end
  if value == 006025 then
    return "Ord Rej Reason: Termo messages should not be entered when market is pre open  (006025)"
  end
  if value == 006026 then
    return "Ord Rej Reason: Termo messages should not be entered when market is PCP  (006026)"
  end
  if value == 006027 then
    return "Ord Rej Reason: Termo messages should not be entered when market is no cancel  (006027)"
  end
  if value == 006028 then
    return "Ord Rej Reason: Termo messages should not be entered when market is reserved  (006028)"
  end
  if value == 006029 then
    return "Ord Rej Reason: Termo messages should not be entered when market is forbidden  (006029)"
  end
  if value == 006030 then
    return "Ord Rej Reason: Termo messages should not be entered when market is pre close  (006030)"
  end
  if value == 006031 then
    return "Ord Rej Reason: Termo messages should not be entered when market is pre open  (006031)"
  end
  if value == 006032 then
    return "Ord Rej Reason: Not a valid Termo Underlying Instrument.  (006032)"
  end
  if value == 006033 then
    return "Ord Rej Reason: Received a null AdminOperation  (006033)"
  end
  if value == 006034 then
    return "Ord Rej Reason: First trade of day for underlying termo instrument  (006034)"
  end
  if value == 006035 then
    return "Ord Rej Reason: Termo messages should not be entered when market is in final closing call  (006035)"
  end
  if value == 006036 then
    return "Ord Rej Reason: Invalid Cash Trade in TVR  (006036)"
  end
  if value == 006037 then
    return "Ord Rej Reason: Only Buy Entry Request for TVR is accepted  (006037)"
  end
  if value == 006038 then
    return "Ord Rej Reason: There is no bid and ask for underlying contract  (006038)"
  end
  if value == 006039 then
    return "Ord Rej Reason: Invalid price  (006039)"
  end
  if value == 006040 then
    return "Ord Rej Reason: Invalid Cash Trade in TVR  (006040)"
  end
  if value == 006041 then
    return "Ord Rej Reason: Invalid Cash Trade in TVR  (006041)"
  end
  if value == 006042 then
    return "Ord Rej Reason: Invalid Cash Trade in TVR  (006042)"
  end
  if value == 006043 then
    return "Ord Rej Reason: Invalid Cash Trade in TVR  (006043)"
  end
  if value == 006044 then
    return "Ord Rej Reason: Invalid Cash Trade in TVR  (006044)"
  end
  if value == 007000 then
    return "Ord Rej Reason: Order rejected  (007000)"
  end
  if value == 007001 then
    return "Ord Rej Reason: FOK order unmatchable in market  (007001)"
  end
  if value == 007002 then
    return "Ord Rej Reason: Orders may not be entered while the market is closed  (007002)"
  end
  if value == 007005 then
    return "Ord Rej Reason: Order contract is unknown  (007005)"
  end
  if value == 007006 then
    return "Ord Rej Reason: No partial match found for this FAK order  (007006)"
  end
  if value == 007008 then
    return "Ord Rej Reason: Maximum quantity depth for any one price group max may not exceed + Integer.MAX_VALUE  (007008)"
  end
  if value == 007009 then
    return "Ord Rej Reason: Contract for this order contract is past expiration date and may no longer be traded  (007009)"
  end
  if value == 007009 then
    return "Ord Rej Reason: Contract for this order has a future activation date and cannot yet be traded  (007009)"
  end
  if value == 007010 then
    return "Ord Rej Reason: Invalid spread price  (007010)"
  end
  if value == 007011 then
    return "Ord Rej Reason: Maximum number of working orders for this contract has been exceeded  (007011)"
  end
  if value == 007012 then
    return "Ord Rej Reason: Order would overwrite existing order on book  (007012)"
  end
  if value == 007013 then
    return "Ord Rej Reason: Order group does not match group of contract  (007013)"
  end
  if value == 007014 then
    return "Ord Rej Reason: Order security type does not match security type of contract  (007014)"
  end
  if value == 007015 then
    return "Ord Rej Reason: Order modify has different side than existing order  (007015)"
  end
  if value == 007017 then
    return "Ord Rej Reason: Contract is not eligible for electronic matching  (007017)"
  end
  if value == 007018 then
    return "Ord Rej Reason: Order contract is not GTC or GTD eligible  (007018)"
  end
  if value == 007020 then
    return "Ord Rej Reason: No Trading Calendar found on or after order GTD Expire Date  (007020)"
  end
  if value == 007021 then
    return "Ord Rej Reason: Tag ExpireDate (432) beyond instrument expiration.  (007021)"
  end
  if value == 007022 then
    return "Ord Rej Reason: Tag ExpireDate (432) beyond UDS COMBO earliest leg expiration.  (007022)"
  end
  if value == 007024 then
    return "Ord Rej Reason: Order cannot be modified or cancelled while the market is in no cancel  (007024)"
  end
  if value == 007027 then
    return "Ord Rej Reason: Order type not permitted while the market is reserved  (007027)"
  end
  if value == 007028 then
    return "Ord Rej Reason: Order session date is in the past  (007028)"
  end
  if value == 007029 then
    return "Ord Rej Reason: Orders may not be entered while the market is forbidden  (007029)"
  end
  if value == 007030 then
    return "Ord Rej Reason: Quote rejected: Exchange (security) is forbidden   (007030)"
  end
  if value == 007031 then
    return "Ord Rej Reason: Orders may not be entered while the market is preclosed   (007031)"
  end
  if value == 007032 then
    return "Ord Rej Reason: Quote rejected: Exchange (security) is preclosed   (007032)"
  end
  if value == 007033 then
    return "Ord Rej Reason: Orders may not be entered while the market is open   (007033)"
  end
  if value == 007034 then
    return "Ord Rej Reason: Quote rejected: Exchange (security) is forbidden   (007034)"
  end
  if value == 007035 then
    return "Ord Rej Reason: RFQ rejected: Instrument / exchange is open  (007035)"
  end
  if value == 007036 then
    return "Ord Rej Reason: Time in Force (59) not valid for Order Type (40).  (007036)"
  end
  if value == 007037 then
    return "Ord Rej Reason: Good for auction order not allowed.  (007037)"
  end
  if value == 007038 then
    return "Ord Rej Reason: On close order not allowed.  (007038)"
  end
  if value == 007039 then
    return "Ord Rej Reason: Duplicate Client Order Id for this Session/Contract.  (007039)"
  end
  if value == 007040 then
    return "Ord Rej Reason: Good for auction order cancel not allowed.  (007040)"
  end
  if value == 007041 then
    return "Ord Rej Reason: On close order cancel not allowed.  (007041)"
  end
  if value == 007042 then
    return "Ord Rej Reason: Good for auction order modify not allowed.  (007042)"
  end
  if value == 007043 then
    return "Ord Rej Reason: On close order modify not allowed.  (007043)"
  end
  if value == 007044 then
    return "Ord Rej Reason: Modify of Order Participating in TOP not allowed.  (007044)"
  end
  if value == 007045 then
    return "Ord Rej Reason: Cancel of Order Participating in TOP not allowed.  (007045)"
  end
  if value == 007046 then
    return "Ord Rej Reason: Order Type/ Duration combination invalid for auction  (007046)"
  end
  if value == 007047 then
    return "Ord Rej Reason: Order Type / Duration combination invalid  (007047)"
  end
  if value == 007048 then
    return "Ord Rej Reason: Quantity Attribute Not Allowed On Order During Auction.  (007048)"
  end
  if value == 007049 then
    return "Ord Rej Reason: Order Entry was unsuccessful. Error Message: Is not possible to send orders with Validity Type 'Market on Auction' with Minimum quantity.  (007049)"
  end
  if value == 007050 then
    return "Ord Rej Reason: Max Floor (111) not valid for Time in Force (59).  (007050)"
  end
  if value == 007055 then
    return "Ord Rej Reason: Spread orders may not be entered while the underlying leg market is in non trading state  (007055)"
  end
  if value == 007056 then
    return "Ord Rej Reason: Orders may not be entered while the market is in final closing call  (007056)"
  end
  if value == 007101 then
    return "Ord Rej Reason: Quote rejected: Unknown instrument   (007101)"
  end
  if value == 007102 then
    return "Ord Rej Reason: Quote rejected: Exchange (security) closed  (007102)"
  end
  if value == 007103 then
    return "Ord Rej Reason: Quote rejected: Quote exceeds limit   (007103)"
  end
  if value == 007104 then
    return "Ord Rej Reason: Quote rejected: Too late to enter   (007104)"
  end
  if value == 007105 then
    return "Ord Rej Reason: Quote rejected: Unknown Quote  (007105)"
  end
  if value == 007106 then
    return "Ord Rej Reason: Quote rejected: Duplicate Quote in same message   (007106)"
  end
  if value == 007107 then
    return "Ord Rej Reason: Quote rejected: Invalid bid/ask spread  (007107)"
  end
  if value == 007108 then
    return "Ord Rej Reason: Quote rejected: Invalid price   (007108)"
  end
  if value == 007109 then
    return "Ord Rej Reason: Quote rejected: Not authorized to quote this instrument   (007109)"
  end
  if value == 007110 then
    return "Ord Rej Reason: Quote rejected, resting cancelled: Too many rejects   (007110)"
  end
  if value == 007111 then
    return "Ord Rej Reason: Quote rejected: Duplicate Quote, different ID;  (007111)"
  end
  if value == 007112 then
    return "Ord Rej Reason: Quote rejected, resting cancelled: Quote exceeds limit  (007112)"
  end
  if value == 007113 then
    return "Ord Rej Reason: Quote rejected, resting cancelled: Duplicate Quote  (007113)"
  end
  if value == 007114 then
    return "Ord Rej Reason: Quote rejected, resting cancelled: Invalid bid/ask spread   (007114)"
  end
  if value == 007115 then
    return "Ord Rej Reason: Quote rejected, resting cancelled: Invalid price   (007115)"
  end
  if value == 007116 then
    return "Ord Rej Reason: Quote rejected, resting cancelled: Not authorized to quote this instrument   (007116)"
  end
  if value == 007117 then
    return "Ord Rej Reason: Quote rejected: Unspecified reason   (007117)"
  end
  if value == 007118 then
    return "Ord Rej Reason: Quote rejected: Exchange (security) is in pre open   (007118)"
  end
  if value == 007118 then
    return "Ord Rej Reason: Group state does not allow this function  (007118)"
  end
  if value == 007119 then
    return "Ord Rej Reason: Quote rejected: Exchange (security) is in no cancel   (007119)"
  end
  if value == 007120 then
    return "Ord Rej Reason: Quote rejected: Exchange (security) is reserved   (007120)"
  end
  if value == 007121 then
    return "Ord Rej Reason: Contract not eligible for negotiated quote  (007121)"
  end
  if value == 007122 then
    return "Ord Rej Reason: RLP Order rejected – Participant not authorized  (007122)"
  end
  if value == 007123 then
    return "Ord Rej Reason: Attempt to modify the order type from/to RLP  (007123)"
  end
  if value == 007124 then
    return "Ord Rej Reason: Invalid field for Order with Order Type (tag 40) equals W (RLP)  (007124)"
  end
  if value == 007125 then
    return "Ord Rej Reason: RLP Order rejected - Only one order is allowed by firm and side  (007125)"
  end
  if value == 007126 then
    return "Ord Rej Reason: Invalid field for Order with Routing Instruction (tag 35487) equals 1 (RETAIL_LIQUIDITY_TAKER)  (007126)"
  end
  if value == 007127 then
    return "Ord Rej Reason: Invalid field for Order with Order Type (tag 40) equals P (PEGGED)  (007127)"
  end
  if value == 007128 then
    return "Ord Rej Reason: Qty is not multiple of minimum execution quantity for Pegged order  (007128)"
  end
  if value == 007129 then
    return "Ord Rej Reason: Account is mandatory for Pegged Order  (007129)"
  end
  if value == 007130 then
    return "Ord Rej Reason: Pegged order can not be sent in Non Regular Session  (007130)"
  end
  if value == 007131 then
    return "Ord Rej Reason: Attempt to modify the order type from/to Pegged  (007131)"
  end
  if value == 007132 then
    return "Ord Rej Reason: Order rejected: pegged orders are not allowed for this contract  (007132)"
  end
  if value == 007133 then
    return "Ord Rej Reason: Order rejected: ROUTING_INSTRUCTION (tag 35487) equals BROKER_ONLY (3) not allowed for this group.  (007133)"
  end
  if value == 007134 then
    return "Ord Rej Reason: Order rejected: Only Pegged Order with ROUTING_INSTRUCTION (tag 35487) equals BROKER_ONLY (3) is allowed for this group.  (007134)"
  end
  if value == 007135 then
    return "Ord Rej Reason: Cross order suspended for the participant or session  (007135)"
  end
  if value == 007136 then
    return "Ord Rej Reason: Order quantity is outside of the allowable range “Order Quantity: [OrderQty] / Contract Minimum Quantity for Cross : [MinCrossQty]  (007136)"
  end
  if value == 007137 then
    return "Ord Rej Reason: BBT messages should not be entered when market is paused  (007137)"
  end
  if value == 007138 then
    return "Ord Rej Reason: BBT messages should not be entered when market is pre open  (007138)"
  end
  if value == 007139 then
    return "Ord Rej Reason: BBT messages should not be entered when market is PCP  (007139)"
  end
  if value == 007140 then
    return "Ord Rej Reason: BBT messages should not be entered when market is no cancel  (007140)"
  end
  if value == 007141 then
    return "Ord Rej Reason: BBT messages should not be entered when market is reserved  (007141)"
  end
  if value == 007142 then
    return "Ord Rej Reason: BBT messages should not be entered when market is forbidden  (007142)"
  end
  if value == 007143 then
    return "Ord Rej Reason: BBT messages should not be entered when market is pre close  (007143)"
  end
  if value == 007144 then
    return "Ord Rej Reason: Invalid field for BBT Order  (007144)"
  end
  if value == 007145 then
    return "Ord Rej Reason: For Cancel On Behalf  must be informed only the ActionTargetSessionID  OR the ActionTargetGroupID  (007145)"
  end
  if value == 007146 then
    return "Ord Rej Reason: ActionTargetGroupID  invalid . It doesn't exist or it is disabled  (007146)"
  end
  if value == 007147 then
    return "Ord Rej Reason: Fix Session is blocked due to Mass Cancel  (007147)"
  end
  if value == 007148 then
    return "Ord Rej Reason: ActionTargetGroupID must be informed  (007148)"
  end
  if value == 007149 then
    return "Ord Rej Reason: Fix Session doesn't belong to the ActionTargetGroupID  (007149)"
  end
  if value == 009999 then
    return "Ord Rej Reason: Technical Error: Function not performed  (009999)"
  end
  if value == 008006 then
    return "Ord Rej Reason: Exercise price not allowed  (008006)"
  end
  if value == 008007 then
    return "Ord Rej Reason: No positions blocked  (008007)"
  end
  if value == 008008 then
    return "Ord Rej Reason: Quantity doesn't match with the original request [Quantity on original request: <quantity on original request>]  (008008)"
  end
  if value == 008011 then
    return "Ord Rej Reason: Exercise must be on maturity date.  (008011)"
  end
  if value == 008014 then
    return "Ord Rej Reason: Function not available this time  (008014)"
  end
  if value == 008015 then
    return "Ord Rej Reason: Blocking quantity more than 999999999  (008015)"
  end
  if value == 008020 then
    return "Ord Rej Reason: Trade does not belong to the specified firm ‘Firm Id: <XXX>’  (008020)"
  end
  if value == 008021 then
    return "Ord Rej Reason: Blocking qty more than available quantity  (008021)"
  end
  if value == 008022 then
    return "Ord Rej Reason: There aren't positions available to exercise  (008022)"
  end
  if value == 008023 then
    return "Ord Rej Reason: Total qty must be the sum of all AllocQty  (008023)"
  end
  if value == 008024 then
    return "Ord Rej Reason: Trade already cancelled or does not exist ‘Trade Id: <XXX>’  (008024)"
  end
  if value == 008027 then
    return "Ord Rej Reason: Available quantity to block is zero  (008027)"
  end
  if value == 008028 then
    return "Ord Rej Reason: Invalid Operation for contract type.  (008028)"
  end
  if value == 008036 then
    return "Ord Rej Reason: Function closed or suspended.  (008036)"
  end
  if value == 008039 then
    return "Ord Rej Reason: Exercise price outside required moneyness.  (008039)"
  end
  if value == 008040 then
    return "Ord Rej Reason: Invalid exercise request id to cancel  (008040)"
  end
  if value == 008059 then
    return "Ord Rej Reason: Invalid blocking Id to unblock  (008059)"
  end
  if value == 008062 then
    return "Ord Rej Reason: Invalid quantity to unblock  (008062)"
  end
  if value == 008063 then
    return "Ord Rej Reason: On Behalf Operation not allowed during CCR recovery  (008063)"
  end
  if value == 008065 then
    return "Ord Rej Reason: Problem parsing incoming message  (008065)"
  end
  if value == 008066 then
    return "Ord Rej Reason: Exercise quantity should be greater than zero  (008066)"
  end
  if value == 030002 then
    return "Ord Rej Reason: System initialization  (030002)"
  end
  if value == 030003 then
    return "Ord Rej Reason: Line busy  (030003)"
  end
  if value == 030004 then
    return "Ord Rej Reason: Message or atributes are invalid  (030004)"
  end
  if value == 030005 then
    return "Ord Rej Reason: Internal error  (030005)"
  end
  if value == 030006 then
    return "Ord Rej Reason: Timeout waiting risk evaluation  (030006)"
  end
  if value == 030007 then
    return "Ord Rej Reason: Timeout waiting risk evaluation (low priority)  (030007)"
  end
  if value == 030011 then
    return "Ord Rej Reason: Broker negotiation blocked  (030011)"
  end
  if value == 030012 then
    return "Ord Rej Reason: Broker not available  (030012)"
  end
  if value == 030013 then
    return "Ord Rej Reason: Broker's capture account not found  (030013)"
  end
  if value == 030014 then
    return "Ord Rej Reason: Broker's segment negotiation blocked  (030014)"
  end
  if value == 030015 then
    return "Ord Rej Reason: Broker segment not available  (030015)"
  end
  if value == 030016 then
    return "Ord Rej Reason: Broker's segment protected mode under activation  (030016)"
  end
  if value == 030017 then
    return "Ord Rej Reason: Broker PN negotiation blocked  (030017)"
  end
  if value == 030018 then
    return "Ord Rej Reason: Broker PN not available  (030018)"
  end
  if value == 030019 then
    return "Ord Rej Reason: Broker PN protected mode under activation  (030019)"
  end
  if value == 030021 then
    return "Ord Rej Reason: Account negotiation blocked  (030021)"
  end
  if value == 030022 then
    return "Ord Rej Reason: Account not available  (030022)"
  end
  if value == 030023 then
    return "Ord Rej Reason: Account's protected mode under activation  (030023)"
  end
  if value == 030024 then
    return "Ord Rej Reason: Account mandatory on DMA orders  (030024)"
  end
  if value == 030025 then
    return "Ord Rej Reason: Transient Account is hierarchically blocked on protected mode  (030025)"
  end
  if value == 030026 then
    return "Ord Rej Reason: Cross-orders or cross-forward not allowed while account in protected mode  (030026)"
  end
  if value == 030027 then
    return "Ord Rej Reason: Transient Account not allowed in Extended Hours  (030027)"
  end
  if value == 030031 then
    return "Ord Rej Reason: Document negotiation blocked  (030031)"
  end
  if value == 030032 then
    return "Ord Rej Reason: Document not available  (030032)"
  end
  if value == 030033 then
    return "Ord Rej Reason: Document's protected mode under activation  (030033)"
  end
  if value == 030034 then
    return "Ord Rej Reason: Executor document cannot use default broker profile  (030034)"
  end
  if value == 030035 then
    return "Ord Rej Reason: Document in blocked profile  (030035)"
  end
  if value == 030036 then
    return "Ord Rej Reason: Cross-orders or cross-forward not allowed while document in protected mode  (030036)"
  end
  if value == 030041 then
    return "Ord Rej Reason: Entering Trader negotiation blocked  (030041)"
  end
  if value == 030042 then
    return "Ord Rej Reason: Entering Trader not available  (030042)"
  end
  if value == 030043 then
    return "Ord Rej Reason: Entering Trader blocked by SFD overflow  (030043)"
  end
  if value == 030044 then
    return "Ord Rej Reason: Non DMA orders must provide account while in broker's protected mode  (030044)"
  end
  if value == 030045 then
    return "Ord Rej Reason: Entering Trader not authorized to trade accountless orders  (030045)"
  end
  if value == 030046 then
    return "Ord Rej Reason: Entering Trader cannot trade on behalf of other firm's account  (030046)"
  end
  if value == 030050 then
    return "Ord Rej Reason: Symbol not available  (030050)"
  end
  if value == 030051 then
    return "Ord Rej Reason: Symbol internal data corrupted  (030051)"
  end
  if value == 030052 then
    return "Ord Rej Reason: FIX Message Type does not support operations on such symbol  (030052)"
  end
  if value == 030053 then
    return "Ord Rej Reason: Symbol's underlying not found for risk aggregation  (030053)"
  end
  if value == 030054 then
    return "Ord Rej Reason: Symbol's risk unit matrix not available  (030054)"
  end
  if value == 030055 then
    return "Ord Rej Reason: Symbol's reference price missing, market orders not allowed  (030055)"
  end
  if value == 032056 then
    return "Ord Rej Reason: Symbol's calculated price invalid  (032056)"
  end
  if value == 030060 then
    return "Ord Rej Reason: Spread's leg not available  (030060)"
  end
  if value == 030061 then
    return "Ord Rej Reason: Spread's leg internal data corrupted  (030061)"
  end
  if value == 030070 then
    return "Ord Rej Reason: Unexpected internal error during risk evaluation  (030070)"
  end
  if value == 030113 then
    return "Ord Rej Reason: [SFD] Broker PN <pn> document aggregation: Day trade cash balance (stop loss) not configured  (030113)"
  end
  if value == 030114 then
    return "Ord Rej Reason: [SDP] Broker PN <pn> document aggregation: Order exceeded cash settlement exposure  (030114)"
  end
  if value == 030115 then
    return "Ord Rej Reason: [RMKT] Broker PN <pn> document aggregation: Order quantity exceeded risk increase  (030115)"
  end
  if value == 030116 then
    return "Ord Rej Reason: [SDP] Broker PN <pn> trader aggregation: Order exceeded cash settlement exposure  (030116)"
  end
  if value == 030117 then
    return "Ord Rej Reason: [SPVD] Broker PN <pn> document aggregation: Order exceeded potential short uncovered balance.  (030117)"
  end
  if value == 030118 then
    return "Ord Rej Reason: [SPVD] Broker PN <pn> trader aggregation: Order exceeded potential short uncovered balance.  (030118)"
  end
  if value == 030119 then
    return "Ord Rej Reason: [RMSE] Broker PN <pn> document aggregation: Order exceeded risk increase at extended session  (030119)"
  end
  if value == 030166 then
    return "Ord Rej Reason: [RMSE] Broker: Order exceeded risk increase at extended session  (030166)"
  end
  if value == 030201 then
    return "Ord Rej Reason: [MKTA] Account: Buy not allowed for symbol's market  (030201)"
  end
  if value == 030202 then
    return "Ord Rej Reason: [MKTA] Account: Sell not allowed for symbol's market  (030202)"
  end
  if value == 030204 then
    return "Ord Rej Reason: [TMOC] Account: Maximum order size exceeded for single order  (030204)"
  end
  if value == 030205 then
    return "Ord Rej Reason: [TMOV] Account: Maximum order size exceeded for single order  (030205)"
  end
  if value == 030206 then
    return "Ord Rej Reason: [SPCI] Account: Order quantity exceeded short position per instrument  (030206)"
  end
  if value == 030207 then
    return "Ord Rej Reason: [SPVI] Account: Order quantity exceeded long position per instrument  (030207)"
  end
  if value == 030208 then
    return "Ord Rej Reason: [SDP] Account: Order exceeded cash settlement exposure  (030208)"
  end
  if value == 030210 then
    return "Ord Rej Reason: [RMKT] Account: Order quantity exceeded risk increase  (030210)"
  end
  if value == 030211 then
    return "Ord Rej Reason: [IRMKT] Account: Order quantity exceeded risk increase - reducing mode  (030211)"
  end
  if value == 030212 then
    return "Ord Rej Reason: [SPI] Account: Order quantity exceeded long and short position - reducing mode  (030212)"
  end
  if value == 030213 then
    return "Ord Rej Reason: [STD] Account: Termo not allowed, protected mode enabled  (030213)"
  end
  if value == 030215 then
    return "Ord Rej Reason: [SPVD] Account: Order exceeded potential short uncovered balance.  (030215)"
  end
  if value == 030300 then
    return "Ord Rej Reason: [MKTA] Document: Buy/Sell symbol's market not configured  (030300)"
  end
  if value == 030301 then
    return "Ord Rej Reason: [MKTA] Document: Buy not allowed for symbol's market  (030301)"
  end
  if value == 030302 then
    return "Ord Rej Reason: [MKTA] Document: Sell not allowed for symbol's market  (030302)"
  end
  if value == 030303 then
    return "Ord Rej Reason: [TMOX] Document: Max  (030303)"
  end
  if value == 030304 then
    return "Ord Rej Reason: [TMOC] Document: Max Bid quantity exceeded for single order  (030304)"
  end
  if value == 030305 then
    return "Ord Rej Reason: [TMOV] Document: Max Offer quantity exceeded for single order  (030305)"
  end
  if value == 030306 then
    return "Ord Rej Reason: [SPCI] Document: Order quantity exceeded Max Bid Potential Balance  (030306)"
  end
  if value == 030307 then
    return "Ord Rej Reason: [SPVI] Document: Order quantity exceeded Max Offer Potential Balance  (030307)"
  end
  if value == 030308 then
    return "Ord Rej Reason: [SDP] Document: Order exceeded Max Financial Potential Balance Due  (030308)"
  end
  if value == 030309 then
    return "Ord Rej Reason: [STD] Document: Order quantity exceeded Max Operations Forward Balance  (030309)"
  end
  if value == 030310 then
    return "Ord Rej Reason: [RMKT]  (030310)"
  end
  if value == 030311 then
    return "Ord Rej Reason: [IRMKT] Document: Order quantity exceeded Max Incremental Market Risk  (030311)"
  end
  if value == 030312 then
    return "Ord Rej Reason: [SPI] Document: Order quantity exceeded Previous Potencial Balance  (030312)"
  end
  if value == 030313 then
    return "Ord Rej Reason: [STD] Document: Termo not allowed,  (030313)"
  end
  if value == 030314 then
    return "Ord Rej Reason: [SFD] Document: Day trade cash balance (stop loss) not configured  (030314)"
  end
  if value == 030315 then
    return "Ord Rej Reason: [SPVD] Document: Order exceeded potential short uncovered balance  (030315)"
  end
  if value == 030316 then
    return "Ord Rej Reason: [RMSE] Document: Order exceeded risk increase at extended session  (030316)"
  end
  if value == 030317 then
    return "Ord Rej Reason: [RMSE] Document: Order exceeded risk increase of broker at extended session  (030317)"
  end
  if value == 030400 then
    return "Ord Rej Reason: [MKTA] Entering trader: Buy/Sell symbol's market not configured  (030400)"
  end
  if value == 030401 then
    return "Ord Rej Reason: [MKTA] Entering trader: Buy not allowed for symbol's market  (030401)"
  end
  if value == 030402 then
    return "Ord Rej Reason: [MKTA] Entering  (030402)"
  end
  if value == 030403 then
    return "Ord Rej Reason: [TMOX] Entering trader: Max Bid/Offer quantity not configured  (030403)"
  end
  if value == 030404 then
    return "Ord Rej Reason: [TMOC] Entering trader: Max Bid quantity exceeded for single order  (030404)"
  end
  if value == 030405 then
    return "Ord Rej Reason: [TMOV] Entering trader: Max Offer quantity exceeded for si (030405)"
  end
  if value == 030406 then
    return "Ord Rej Reason: [SPCI] Entering trader: Order quantity exceeded Max Bid Potential Balance  (030406)"
  end
  if value == 030407 then
    return "Ord Rej Reason: [SPVI] Entering trader: Order quantity exceeded Max Offer Potential Balance  (030407)"
  end
  if value == 030408 then
    return "Ord Rej Reason: [SDP] Entering trader: Order exceeded Max Financial Potential  (030408)"
  end
  if value == 030415 then
    return "Ord Rej Reason: [SPVD] Trader: Order exceeded potential short uncovered balance.   (030415)"
  end
  if value == 030500 then
    return "Ord Rej Reason: [OMS] Unexpected internal error  (030500)"
  end
  if value == 030501 then
    return "Ord Rej Reason: [OMS] Invalid session or symbol  (030501)"
  end
  if value == 030502 then
    return "Ord Rej Reason: [OMS] ClOrdID cannot be empty  (030502)"
  end
  if value == 030503 then
    return "Ord Rej Reason: [OMS] ClOrdID is duplicated  (030503)"
  end
  if value == 030504 then
    return "Ord Rej Reason: [OMS] ClOrdID not found  (030504)"
  end
  if value == 030505 then
    return "Ord Rej Reason: [OMS] OrigClOrdID cannot be empty  (030505)"
  end
  if value == 030506 then
    return "Ord Rej Reason: [OMS] CrossID cannot be empty  (030506)"
  end
  if value == 030507 then
    return "Ord Rej Reason: [OMS] ClOrdID is duplicated within Cross Order  (030507)"
  end
  if value == 030508 then
    return "Ord Rej Reason: [OMS] Cross Order modification is not allowed  (030508)"
  end
  if value == 030509 then
    return "Ord Rej Reason: [OMS] OrderID not found  (030509)"
  end
  if value == 030510 then
    return "Ord Rej Reason: [OMS] OrderID cannot be empty  (030510)"
  end
  if value == 030511 then
    return "Ord Rej Reason: [OMS] QuoteReqID cannot be empty  (030511)"
  end
  if value == 030512 then
    return "Ord Rej Reason: [OMS] QuoteReqID is duplicated  (030512)"
  end
  if value == 030513 then
    return "Ord Rej Reason: [OMS] QuoteReqID not found  (030513)"
  end
  if value == 030514 then
    return "Ord Rej Reason: [OMS] QuoteID cannot be empty  (030514)"
  end
  if value == 030521 then
    return "Ord Rej Reason: [OMS] In (030521)"
  end
  if value == 030522 then
    return "Ord Rej Reason: [OMS]  (030522)"
  end
  if value == 030523 then
    return "Ord Rej Reason: [OMS] Entering firm modification is not allowed  (030523)"
  end
  if value == 030524 then
    return "Ord Rej Reason: [OMS] Account modification on DMA order is not allowed  (030524)"
  end
  if value == 030525 then
    return "Ord Rej Reason: [OMS] Account information missing on non (030525)"
  end
  if value == 030526 then
    return "Ord Rej Reason: [OMS] Entering trader  (030526)"
  end
  if value == 030527 then
    return "Ord Rej Reason: [OMS] Received Execution Report Rejection for an active order  (030527)"
  end
  if value == 031011 then
    return "Ord Rej Reason: Broker negotiation blocked  (031011)"
  end
  if value == 031012 then
    return "Ord Rej Reason: Broker not available  (031012)"
  end
  if value == 031013 then
    return "Ord Rej Reason: Broker's capture account not found  (031013)"
  end
  if value == 031014 then
    return "Ord Rej Reason: Broker's segment negotiation blocked  (031014)"
  end
  if value == 031015 then
    return "Ord Rej Reason: Broker segment not available  (031015)"
  end
  if value == 031016 then
    return "Ord Rej Reason: Broker's segment protected mode under activation  (031016)"
  end
  if value == 031021 then
    return "Ord Rej Reason: Account negotiation blocked  (031021)"
  end
  if value == 031022 then
    return "Ord Rej Reason: Account not available  (031022)"
  end
  if value == 031023 then
    return "Ord Rej Reason: Account's protected mode under activation  (031023)"
  end
  if value == 031024 then
    return "Ord Rej Reason: Account mandatory on DMA orders  (031024)"
  end
  if value == 031025 then
    return "Ord Rej Reason: Transient Account is hierarchically blocked on protected mode  (031025)"
  end
  if value == 031026 then
    return "Ord Rej Reason: Cross-orders or cross-forward not allowed while account in protected mode  (031026)"
  end
  if value == 031027 then
    return "Ord Rej Reason: Transient Account not allowed in Extended Hours  (031027)"
  end
  if value == 031031 then
    return "Ord Rej Reason: Document negotiation blocked  (031031)"
  end
  if value == 031032 then
    return "Ord Rej Reason: Document not available  (031032)"
  end
  if value == 031033 then
    return "Ord Rej Reason: Document's protected mode under activation  (031033)"
  end
  if value == 031034 then
    return "Ord Rej Reason: Executor document cannot use default broker profile  (031034)"
  end
  if value == 031035 then
    return "Ord Rej Reason: Document in blocked profile  (031035)"
  end
  if value == 031036 then
    return "Ord Rej Reason: Cross-orders or cross-forward not allowed while document in protected mode  (031036)"
  end
  if value == 031041 then
    return "Ord Rej Reason: Entering Trader negotiation blocked  (031041)"
  end
  if value == 031042 then
    return "Ord Rej Reason: Entering Trader not available  (031042)"
  end
  if value == 031043 then
    return "Ord Rej Reason: Entering Trader blocked by SFD overflow  (031043)"
  end
  if value == 031044 then
    return "Ord Rej Reason: Non DMA orders must provide account while in broker's protected mode  (031044)"
  end
  if value == 031045 then
    return "Ord Rej Reason: Entering Trader not authorized to trade accountless orders  (031045)"
  end
  if value == 031046 then
    return "Ord Rej Reason: Entering Trader cannot trade on behalf of other firm's account  (031046)"
  end
  if value == 031050 then
    return "Ord Rej Reason: Symbol not available  (031050)"
  end
  if value == 031051 then
    return "Ord Rej Reason: Symbol internal data corrupted  (031051)"
  end
  if value == 031052 then
    return "Ord Rej Reason: FIX Message Type does not support operations on such symbol  (031052)"
  end
  if value == 031053 then
    return "Ord Rej Reason: Symbol's underlying not found for risk aggregation  (031053)"
  end
  if value == 031054 then
    return "Ord Rej Reason: Symbol's risk unit matrix not available  (031054)"
  end
  if value == 031055 then
    return "Ord Rej Reason: Symbol's reference price missing, market orders not allowed  (031055)"
  end
  if value == 031056 then
    return "Ord Rej Reason: Symbol's calculated price invalid  (031056)"
  end
  if value == 031060 then
    return "Ord Rej Reason: Spread's leg not available  (031060)"
  end
  if value == 031061 then
    return "Ord Rej Reason: Spread's leg internal data corrupted  (031061)"
  end
  if value == 031070 then
    return "Ord Rej Reason: Unexpected internal error during risk evaluation  (031070)"
  end
  if value == 031201 then
    return "Ord Rej Reason: [MKTA] Account: Buy not allowed for symbol's market  (031201)"
  end
  if value == 031202 then
    return "Ord Rej Reason: [MKTA] Account: Sell not allowed for symbol's market  (031202)"
  end
  if value == 031204 then
    return "Ord Rej Reason: [TMOC] Account: Max Bid quantity exceeded for single order  (031204)"
  end
  if value == 031205 then
    return "Ord Rej Reason: [TMOV] Account: Max Offer quantity exceeded for single order  (031205)"
  end
  if value == 031206 then
    return "Ord Rej Reason: [SPCI] Account: Order quantity exceeded Max Bid Potential Balance  (031206)"
  end
  if value == 031207 then
    return "Ord Rej Reason: [SPVI] Account: Order quantity exceeded Max Offer Potential Balance  (031207)"
  end
  if value == 031208 then
    return "Ord Rej Reason: [SDP] Account: Order exceeded Max Financial Potential Balance Due  (031208)"
  end
  if value == 031210 then
    return "Ord Rej Reason: [RMKT] Account: Order quantity exceeded Max Market Risk  (031210)"
  end
  if value == 031211 then
    return "Ord Rej Reason: [IRMKT] Account: Order quantity exceeded Max Incremental Market Risk  (031211)"
  end
  if value == 031212 then
    return "Ord Rej Reason: [SPI] Account: Order quantity exceeded Previous Potencial Balance  (031212)"
  end
  if value == 031213 then
    return "Ord Rej Reason: [STD] Account: Termo not allowed, protected mode enabled  (031213)"
  end
  if value == 031215 then
    return "Ord Rej Reason: [SPVD] Account: Order exceeded potential short uncovered balance.  (031215)"
  end
  if value == 031300 then
    return "Ord Rej Reason: [MKTA] Document: Buy/Sell symbol's market not configured  (031300)"
  end
  if value == 031301 then
    return "Ord Rej Reason: [MKTA] Document: Buy not allowed for symbol's market  (031301)"
  end
  if value == 031302 then
    return "Ord Rej Reason: [MKTA] Document: Sell not allowed for symbol's market  (031302)"
  end
  if value == 031303 then
    return "Ord Rej Reason: [TMOX] Document: Maximum order size not configured  (031303)"
  end
  if value == 031304 then
    return "Ord Rej Reason: [TMOC] Document: Maximum order size exceeded for single order  (031304)"
  end
  if value == 031305 then
    return "Ord Rej Reason: [TMOV] Document: Maximum order size exceeded for single order  (031305)"
  end
  if value == 031306 then
    return "Ord Rej Reason: [SPCI] Document: Order quantity exceeded short position per instrument  (031306)"
  end
  if value == 031307 then
    return "Ord Rej Reason: [SPVI] Document: Order quantity exceeded long position per instrument  (031307)"
  end
  if value == 031308 then
    return "Ord Rej Reason: [SDP] Document: Order exceeded cash settlement exposure  (031308)"
  end
  if value == 031309 then
    return "Ord Rej Reason: [STD] Document: Order quantity exceeded forward contracts exposure  (031309)"
  end
  if value == 031310 then
    return "Ord Rej Reason: [RMKT] Document: Order quantity exceeded risk increase  (031310)"
  end
  if value == 031311 then
    return "Ord Rej Reason: [IRMKT] Document: Order quantity exceeded risk increase - reducing mode  (031311)"
  end
  if value == 031312 then
    return "Ord Rej Reason: [SPI] Document: Order quantity exceeded long and short position - reducing mode  (031312)"
  end
  if value == 031313 then
    return "Ord Rej Reason: [STD] Document: Termo not allowed, protected mode enabled  (031313)"
  end
  if value == 031314 then
    return "Ord Rej Reason: [SFD] Document: Day trade cash balance (stop loss) not configured  (031314)"
  end
  if value == 031315 then
    return "Ord Rej Reason: [SPVD] Document: Order exceeded potential short uncovered balance.  (031315)"
  end
  if value == 031316 then
    return "Ord Rej Reason: [RMSE] Document: Order exceeded risk increase at extended session  (031316)"
  end
  if value == 031317 then
    return "Ord Rej Reason: [RMSE] Document: Order exceeded risk increase of broker at extended session  (031317)"
  end
  if value == 031400 then
    return "Ord Rej Reason: [MKTA] Entering trader: Buy/Sell symbol's market not configured  (031400)"
  end
  if value == 031401 then
    return "Ord Rej Reason: [MKTA] Entering trader: Buy not allowed for symbol's market  (031401)"
  end
  if value == 031402 then
    return "Ord Rej Reason: [MKTA] Entering trader: Sell not allowed for symbol's market  (031402)"
  end
  if value == 031403 then
    return "Ord Rej Reason: [TMOX] Entering trader: Maximum order size not configured  (031403)"
  end
  if value == 031404 then
    return "Ord Rej Reason: [TMOC] Entering trader: Maximum order size exceeded for single order  (031404)"
  end
  if value == 031405 then
    return "Ord Rej Reason: [TMOV] Entering trader: Maximum order size exceeded for single order  (031405)"
  end
  if value == 031406 then
    return "Ord Rej Reason: [SPCI] Entering trader: Order quantity exceeded short position per instrument  (031406)"
  end
  if value == 031407 then
    return "Ord Rej Reason: [SPVI] Entering trader: Order quantity exceeded long position per instrument  (031407)"
  end
  if value == 031408 then
    return "Ord Rej Reason: [SDP] Entering trader: Order exceeded cash settlement exposure  (031408)"
  end
  if value == 031500 then
    return "Ord Rej Reason: [OMS] Unexpected internal error  (031500)"
  end
  if value == 031501 then
    return "Ord Rej Reason: [OMS] Invalid session or symbol  (031501)"
  end
  if value == 031502 then
    return "Ord Rej Reason: [OMS] ClOrdID cannot be empty  (031502)"
  end
  if value == 031503 then
    return "Ord Rej Reason: [OMS] ClOrdID is duplicated  (031503)"
  end
  if value == 031504 then
    return "Ord Rej Reason: [OMS] ClOrdID not found  (031504)"
  end
  if value == 031505 then
    return "Ord Rej Reason: [OMS] OrigClOrdID cannot be empty  (031505)"
  end
  if value == 031506 then
    return "Ord Rej Reason: [OMS] CrossID cannot be empty  (031506)"
  end
  if value == 031507 then
    return "Ord Rej Reason: [OMS] ClOrdID is duplicated within Cross Order  (031507)"
  end
  if value == 031508 then
    return "Ord Rej Reason: [OMS] Cross Order modification is not allowed  (031508)"
  end
  if value == 031509 then
    return "Ord Rej Reason: [OMS] OrderID not found  (031509)"
  end
  if value == 031510 then
    return "Ord Rej Reason: [OMS] OrderID cannot be empty  (031510)"
  end
  if value == 031511 then
    return "Ord Rej Reason: [OMS] QuoteReqID cannot be empty  (031511)"
  end
  if value == 031512 then
    return "Ord Rej Reason: [OMS] QuoteReqID is duplicated  (031512)"
  end
  if value == 031513 then
    return "Ord Rej Reason: [OMS] QuoteReqID not found  (031513)"
  end
  if value == 031514 then
    return "Ord Rej Reason: [OMS] QuoteID cannot be empty  (031514)"
  end
  if value == 031521 then
    return "Ord Rej Reason: [OMS] In-Flight modification is not allowed  (031521)"
  end
  if value == 031522 then
    return "Ord Rej Reason: [OMS] Side modification is not allowed  (031522)"
  end
  if value == 031523 then
    return "Ord Rej Reason: [OMS] Entering firm modification is not allowed  (031523)"
  end
  if value == 031524 then
    return "Ord Rej Reason: [OMS] Account modification on DMA order is not allowed  (031524)"
  end
  if value == 031525 then
    return "Ord Rej Reason: [OMS] Account information missing on non-DMA order  (031525)"
  end
  if value == 031526 then
    return "Ord Rej Reason: [OMS] Entering trader modification on non-DMA order is not allowed  (031526)"
  end
  if value == 031527 then
    return "Ord Rej Reason: [OMS] Received Execution Report Rejection for an active order  (031527)"
  end
  if value == 032000 then
    return "Ord Rej Reason: Field missing or incorrect  (032000)"
  end
  if value == 032001 then
    return "Ord Rej Reason: LiNe not available or busy  (032001)"
  end
  if value == 032002 then
    return "Ord Rej Reason: LiNe internal error  (032002)"
  end
  if value == 032003 then
    return "Ord Rej Reason: LiNe recovering or starting up  (032003)"
  end
  if value == 032004 then
    return "Ord Rej Reason: Internal gateway error (message forwarding failure)  (032004)"
  end
  if value == 032005 then
    return "Ord Rej Reason: Invalid Quantity  (032005)"
  end
  if value == 032006 then
    return "Ord Rej Reason: Duplicate Order  (032006)"
  end
  if value == 032007 then
    return "Ord Rej Reason: Missing Account Field  (032007)"
  end
  if value == 032008 then
    return "Ord Rej Reason: Unknown Account  (032008)"
  end
  if value == 032009 then
    return "Ord Rej Reason: Unknown FirmID (for routing)  (032009)"
  end
  if value == 032010 then
    return "Ord Rej Reason: Duplicate FirmID  (032010)"
  end
  if value == 032011 then
    return "Ord Rej Reason: Duplicate Sender Location  (032011)"
  end
  if value == 032012 then
    return "Ord Rej Reason: Duplicate Entering Trader  (032012)"
  end
  if value == 032013 then
    return "Ord Rej Reason: Firm or Trader is missing in non-DMA order  (032013)"
  end
  if value == 032014 then
    return "Ord Rej Reason: Firm or Account is missing in DMA order  (032014)"
  end
  if value == 032015 then
    return "Ord Rej Reason: Same Participants on both sides or invalid sides  (032015)"
  end
  if value == 032016 then
    return "Ord Rej Reason: BUY side and SELL side having different FirmIDs  (032016)"
  end
  if value == 032017 then
    return "Ord Rej Reason: BUY side and SELL side trading different assets  (032017)"
  end
  if value == 032018 then
    return "Ord Rej Reason: Invalid Price  (032018)"
  end
  if value == 032019 then
    return "Ord Rej Reason: LiNe overloaded  (032019)"
  end
  if value == 032020 then
    return "Ord Rej Reason: LiNe administratively blocked  (032020)"
  end
  if value == 032021 then
    return "Ord Rej Reason: Invalid Price  (032021)"
  end
  if value == 032022 then
    return "Ord Rej Reason: System Overloaded  (032022)"
  end
  if value == 032023 then
    return "Ord Rej Reason: System Error  (032023)"
  end
  if value == 033000 then
    return "Ord Rej Reason: Throttle limit reached  (033000)"
  end
  if value == 033001 then
    return "Ord Rej Reason: Invalid Security ID  (033001)"
  end
  if value == 033002 then
    return "Ord Rej Reason: Unknown Market Segment ID  (033002)"
  end
  if value == 033003 then
    return "Ord Rej Reason: Field missing or incorrect  (033003)"
  end
  if value == 033050 then
    return "Ord Rej Reason: System Error  (033050)"
  end

  return "Ord Rej Reason: Unknown("..value..")"
end

-- Dissect: Ord Rej Reason
b3_equities_binaryentrypoint_sbe_v8_1.ord_rej_reason.dissect = function(buffer, offset, packet, parent)
  local length = b3_equities_binaryentrypoint_sbe_v8_1.ord_rej_reason.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = b3_equities_binaryentrypoint_sbe_v8_1.ord_rej_reason.display(value, buffer, offset, packet, parent)

  parent:add(omi_b3_equities_binaryentrypoint_sbe_v8_1.fields.ord_rej_reason, range, value, display)

  return offset + length, value
end

-- Secondary Order Id Optional
b3_equities_binaryentrypoint_sbe_v8_1.secondary_order_id_optional = {}

-- Size: Secondary Order Id Optional
b3_equities_binaryentrypoint_sbe_v8_1.secondary_order_id_optional.size = 8

-- Display: Secondary Order Id Optional
b3_equities_binaryentrypoint_sbe_v8_1.secondary_order_id_optional.display = function(value)
  return "Secondary Order Id Optional: "..value
end

-- Dissect: Secondary Order Id Optional
b3_equities_binaryentrypoint_sbe_v8_1.secondary_order_id_optional.dissect = function(buffer, offset, packet, parent)
  local length = b3_equities_binaryentrypoint_sbe_v8_1.secondary_order_id_optional.size
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = b3_equities_binaryentrypoint_sbe_v8_1.secondary_order_id_optional.display(value, buffer, offset, packet, parent)

  parent:add(omi_b3_equities_binaryentrypoint_sbe_v8_1.fields.secondary_order_id_optional, range, value, display)

  return offset + length, value
end

-- Cxl Rej Response To
b3_equities_binaryentrypoint_sbe_v8_1.cxl_rej_response_to = {}

-- Size: Cxl Rej Response To
b3_equities_binaryentrypoint_sbe_v8_1.cxl_rej_response_to.size = 1

-- Display: Cxl Rej Response To
b3_equities_binaryentrypoint_sbe_v8_1.cxl_rej_response_to.display = function(value)
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
b3_equities_binaryentrypoint_sbe_v8_1.cxl_rej_response_to.dissect = function(buffer, offset, packet, parent)
  local length = b3_equities_binaryentrypoint_sbe_v8_1.cxl_rej_response_to.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = b3_equities_binaryentrypoint_sbe_v8_1.cxl_rej_response_to.display(value, buffer, offset, packet, parent)

  parent:add(omi_b3_equities_binaryentrypoint_sbe_v8_1.fields.cxl_rej_response_to, range, value, display)

  return offset + length, value
end

-- Execution Report Reject Message
b3_equities_binaryentrypoint_sbe_v8_1.execution_report_reject_message = {}

-- Calculate size of: Execution Report Reject Message
b3_equities_binaryentrypoint_sbe_v8_1.execution_report_reject_message.size = function(buffer, offset)
  local index = 0

  index = index + b3_equities_binaryentrypoint_sbe_v8_1.outbound_business_header.size(buffer, offset + index)

  index = index + b3_equities_binaryentrypoint_sbe_v8_1.side.size

  index = index + b3_equities_binaryentrypoint_sbe_v8_1.cxl_rej_response_to.size

  index = index + b3_equities_binaryentrypoint_sbe_v8_1.clordid.size

  index = index + b3_equities_binaryentrypoint_sbe_v8_1.secondary_order_id_optional.size

  index = index + b3_equities_binaryentrypoint_sbe_v8_1.security_id.size

  index = index + b3_equities_binaryentrypoint_sbe_v8_1.ord_rej_reason.size

  index = index + b3_equities_binaryentrypoint_sbe_v8_1.transact_time.size

  index = index + b3_equities_binaryentrypoint_sbe_v8_1.exec_id.size

  index = index + b3_equities_binaryentrypoint_sbe_v8_1.order_id_optional.size

  index = index + b3_equities_binaryentrypoint_sbe_v8_1.origclordid.size

  index = index + b3_equities_binaryentrypoint_sbe_v8_1.account.size

  index = index + b3_equities_binaryentrypoint_sbe_v8_1.ordtype.size

  index = index + b3_equities_binaryentrypoint_sbe_v8_1.time_in_force.size

  index = index + b3_equities_binaryentrypoint_sbe_v8_1.expire_date.size

  index = index + b3_equities_binaryentrypoint_sbe_v8_1.order_qty.size

  index = index + b3_equities_binaryentrypoint_sbe_v8_1.price_optional.size

  index = index + b3_equities_binaryentrypoint_sbe_v8_1.stop_px.size

  index = index + b3_equities_binaryentrypoint_sbe_v8_1.min_qty.size

  index = index + b3_equities_binaryentrypoint_sbe_v8_1.max_floor.size

  index = index + b3_equities_binaryentrypoint_sbe_v8_1.crossid_optional.size

  index = index + b3_equities_binaryentrypoint_sbe_v8_1.crossed_indicator.size

  index = index + b3_equities_binaryentrypoint_sbe_v8_1.received_time.size

  index = index + b3_equities_binaryentrypoint_sbe_v8_1.offset_146_padding_3.size

  index = index + b3_equities_binaryentrypoint_sbe_v8_1.ordtagid_optional.size

  index = index + b3_equities_binaryentrypoint_sbe_v8_1.investor_id.size(buffer, offset + index)

  index = index + b3_equities_binaryentrypoint_sbe_v8_1.strategy_id.size

  index = index + b3_equities_binaryentrypoint_sbe_v8_1.desk_id.size(buffer, offset + index)

  index = index + b3_equities_binaryentrypoint_sbe_v8_1.memo.size(buffer, offset + index)

  index = index + b3_equities_binaryentrypoint_sbe_v8_1.text.size(buffer, offset + index)

  return index
end

-- Display: Execution Report Reject Message
b3_equities_binaryentrypoint_sbe_v8_1.execution_report_reject_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Execution Report Reject Message
b3_equities_binaryentrypoint_sbe_v8_1.execution_report_reject_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Outbound Business Header: Struct of 5 fields
  index, outbound_business_header = b3_equities_binaryentrypoint_sbe_v8_1.outbound_business_header.dissect(buffer, index, packet, parent)

  -- Side: 1 Byte Ascii String Enum with 2 values
  index, side = b3_equities_binaryentrypoint_sbe_v8_1.side.dissect(buffer, index, packet, parent)

  -- Cxl Rej Response To: 1 Byte Unsigned Fixed Width Integer Enum with 3 values
  index, cxl_rej_response_to = b3_equities_binaryentrypoint_sbe_v8_1.cxl_rej_response_to.dissect(buffer, index, packet, parent)

  -- ClOrdId: 8 Byte Unsigned Fixed Width Integer
  index, clordid = b3_equities_binaryentrypoint_sbe_v8_1.clordid.dissect(buffer, index, packet, parent)

  -- Secondary Order Id Optional: 8 Byte Unsigned Fixed Width Integer
  index, secondary_order_id_optional = b3_equities_binaryentrypoint_sbe_v8_1.secondary_order_id_optional.dissect(buffer, index, packet, parent)

  -- Security Id: 8 Byte Unsigned Fixed Width Integer
  index, security_id = b3_equities_binaryentrypoint_sbe_v8_1.security_id.dissect(buffer, index, packet, parent)

  -- Ord Rej Reason: 4 Byte Unsigned Fixed Width Integer Enum with 493 values
  index, ord_rej_reason = b3_equities_binaryentrypoint_sbe_v8_1.ord_rej_reason.dissect(buffer, index, packet, parent)

  -- Transact Time: 8 Byte Unsigned Fixed Width Integer
  index, transact_time = b3_equities_binaryentrypoint_sbe_v8_1.transact_time.dissect(buffer, index, packet, parent)

  -- Exec Id: 8 Byte Unsigned Fixed Width Integer
  index, exec_id = b3_equities_binaryentrypoint_sbe_v8_1.exec_id.dissect(buffer, index, packet, parent)

  -- Order Id Optional: 8 Byte Unsigned Fixed Width Integer
  index, order_id_optional = b3_equities_binaryentrypoint_sbe_v8_1.order_id_optional.dissect(buffer, index, packet, parent)

  -- OrigClOrdId: 8 Byte Unsigned Fixed Width Integer
  index, origclordid = b3_equities_binaryentrypoint_sbe_v8_1.origclordid.dissect(buffer, index, packet, parent)

  -- Account: 4 Byte Unsigned Fixed Width Integer
  index, account = b3_equities_binaryentrypoint_sbe_v8_1.account.dissect(buffer, index, packet, parent)

  -- OrdType: 1 Byte Ascii String Enum with 7 values
  index, ordtype = b3_equities_binaryentrypoint_sbe_v8_1.ordtype.dissect(buffer, index, packet, parent)

  -- Time In Force: 1 Byte Ascii String Enum with 7 values
  index, time_in_force = b3_equities_binaryentrypoint_sbe_v8_1.time_in_force.dissect(buffer, index, packet, parent)

  -- Expire Date: 2 Byte Unsigned Fixed Width Integer
  index, expire_date = b3_equities_binaryentrypoint_sbe_v8_1.expire_date.dissect(buffer, index, packet, parent)

  -- Order Qty: 8 Byte Unsigned Fixed Width Integer
  index, order_qty = b3_equities_binaryentrypoint_sbe_v8_1.order_qty.dissect(buffer, index, packet, parent)

  -- Price Optional: 8 Byte Signed Fixed Width Integer Nullable
  index, price_optional = b3_equities_binaryentrypoint_sbe_v8_1.price_optional.dissect(buffer, index, packet, parent)

  -- Stop Px: 8 Byte Signed Fixed Width Integer Nullable
  index, stop_px = b3_equities_binaryentrypoint_sbe_v8_1.stop_px.dissect(buffer, index, packet, parent)

  -- Min Qty: 8 Byte Unsigned Fixed Width Integer
  index, min_qty = b3_equities_binaryentrypoint_sbe_v8_1.min_qty.dissect(buffer, index, packet, parent)

  -- Max Floor: 8 Byte Unsigned Fixed Width Integer
  index, max_floor = b3_equities_binaryentrypoint_sbe_v8_1.max_floor.dissect(buffer, index, packet, parent)

  -- CrossId Optional: 8 Byte Unsigned Fixed Width Integer
  index, crossid_optional = b3_equities_binaryentrypoint_sbe_v8_1.crossid_optional.dissect(buffer, index, packet, parent)

  -- Crossed Indicator: 2 Byte Unsigned Fixed Width Integer Enum with 4 values
  index, crossed_indicator = b3_equities_binaryentrypoint_sbe_v8_1.crossed_indicator.dissect(buffer, index, packet, parent)

  -- Received Time: 8 Byte Unsigned Fixed Width Integer Nullable
  index, received_time = b3_equities_binaryentrypoint_sbe_v8_1.received_time.dissect(buffer, index, packet, parent)

  -- Offset 146 Padding 3: 3 Byte
  index, offset_146_padding_3 = b3_equities_binaryentrypoint_sbe_v8_1.offset_146_padding_3.dissect(buffer, index, packet, parent)

  -- OrdTagId Optional: 1 Byte Unsigned Fixed Width Integer Nullable
  index, ordtagid_optional = b3_equities_binaryentrypoint_sbe_v8_1.ordtagid_optional.dissect(buffer, index, packet, parent)

  -- Investor Id: Struct of 2 fields
  index, investor_id = b3_equities_binaryentrypoint_sbe_v8_1.investor_id.dissect(buffer, index, packet, parent)

  -- Strategy Id: 4 Byte Signed Fixed Width Integer Nullable
  index, strategy_id = b3_equities_binaryentrypoint_sbe_v8_1.strategy_id.dissect(buffer, index, packet, parent)

  -- Desk Id: Struct of 2 fields
  index, desk_id = b3_equities_binaryentrypoint_sbe_v8_1.desk_id.dissect(buffer, index, packet, parent)

  -- Memo: Struct of 2 fields
  index, memo = b3_equities_binaryentrypoint_sbe_v8_1.memo.dissect(buffer, index, packet, parent)

  -- Text: Struct of 2 fields
  index, text = b3_equities_binaryentrypoint_sbe_v8_1.text.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Execution Report Reject Message
b3_equities_binaryentrypoint_sbe_v8_1.execution_report_reject_message.dissect = function(buffer, offset, packet, parent)
  -- Optionally add dynamic struct element to protocol tree
  if show.execution_report_reject_message then
    local length = b3_equities_binaryentrypoint_sbe_v8_1.execution_report_reject_message.size(buffer, offset)
    local range = buffer(offset, length)
    local display = b3_equities_binaryentrypoint_sbe_v8_1.execution_report_reject_message.display(buffer, packet, parent)
    parent = parent:add(omi_b3_equities_binaryentrypoint_sbe_v8_1.fields.execution_report_reject_message, range, display)
  end

  return b3_equities_binaryentrypoint_sbe_v8_1.execution_report_reject_message.fields(buffer, offset, packet, parent)
end

-- Offset 159 Padding 1
b3_equities_binaryentrypoint_sbe_v8_1.offset_159_padding_1 = {}

-- Size: Offset 159 Padding 1
b3_equities_binaryentrypoint_sbe_v8_1.offset_159_padding_1.size = 1

-- Display: Offset 159 Padding 1
b3_equities_binaryentrypoint_sbe_v8_1.offset_159_padding_1.display = function(value)
  return "Offset 159 Padding 1: "..value
end

-- Dissect: Offset 159 Padding 1
b3_equities_binaryentrypoint_sbe_v8_1.offset_159_padding_1.dissect = function(buffer, offset, packet, parent)
  local length = b3_equities_binaryentrypoint_sbe_v8_1.offset_159_padding_1.size
  local range = buffer(offset, length)
  local value = range:bytes():tohex(false, " ")
  local display = b3_equities_binaryentrypoint_sbe_v8_1.offset_159_padding_1.display(value, buffer, offset, packet, parent)

  parent:add(omi_b3_equities_binaryentrypoint_sbe_v8_1.fields.offset_159_padding_1, range, value, display)

  return offset + length, value
end

-- Cross Prioritization
b3_equities_binaryentrypoint_sbe_v8_1.cross_prioritization = {}

-- Size: Cross Prioritization
b3_equities_binaryentrypoint_sbe_v8_1.cross_prioritization.size = 1

-- Display: Cross Prioritization
b3_equities_binaryentrypoint_sbe_v8_1.cross_prioritization.display = function(value)
  if value == 0 then
    return "Cross Prioritization: None (0)"
  end
  if value == 1 then
    return "Cross Prioritization: Buy Side Is Prioritized (1)"
  end
  if value == 2 then
    return "Cross Prioritization: Sell Side Is Prioritized (2)"
  end
  if value == 255 then
    return "Cross Prioritization: No Value"
  end

  return "Cross Prioritization: Unknown("..value..")"
end

-- Dissect: Cross Prioritization
b3_equities_binaryentrypoint_sbe_v8_1.cross_prioritization.dissect = function(buffer, offset, packet, parent)
  local length = b3_equities_binaryentrypoint_sbe_v8_1.cross_prioritization.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = b3_equities_binaryentrypoint_sbe_v8_1.cross_prioritization.display(value, buffer, offset, packet, parent)

  parent:add(omi_b3_equities_binaryentrypoint_sbe_v8_1.fields.cross_prioritization, range, value, display)

  return offset + length, value
end

-- Cross Type
b3_equities_binaryentrypoint_sbe_v8_1.cross_type = {}

-- Size: Cross Type
b3_equities_binaryentrypoint_sbe_v8_1.cross_type.size = 1

-- Display: Cross Type
b3_equities_binaryentrypoint_sbe_v8_1.cross_type.display = function(value)
  if value == 1 then
    return "Cross Type: All Or None Cross (1)"
  end
  if value == 4 then
    return "Cross Type: Cross Executed Against Book From Client (4)"
  end
  if value == 0 then
    return "Cross Type: No Value"
  end

  return "Cross Type: Unknown("..value..")"
end

-- Dissect: Cross Type
b3_equities_binaryentrypoint_sbe_v8_1.cross_type.dissect = function(buffer, offset, packet, parent)
  local length = b3_equities_binaryentrypoint_sbe_v8_1.cross_type.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = b3_equities_binaryentrypoint_sbe_v8_1.cross_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_b3_equities_binaryentrypoint_sbe_v8_1.fields.cross_type, range, value, display)

  return offset + length, value
end

-- Offset 119 Padding 1
b3_equities_binaryentrypoint_sbe_v8_1.offset_119_padding_1 = {}

-- Size: Offset 119 Padding 1
b3_equities_binaryentrypoint_sbe_v8_1.offset_119_padding_1.size = 1

-- Display: Offset 119 Padding 1
b3_equities_binaryentrypoint_sbe_v8_1.offset_119_padding_1.display = function(value)
  return "Offset 119 Padding 1: "..value
end

-- Dissect: Offset 119 Padding 1
b3_equities_binaryentrypoint_sbe_v8_1.offset_119_padding_1.dissect = function(buffer, offset, packet, parent)
  local length = b3_equities_binaryentrypoint_sbe_v8_1.offset_119_padding_1.size
  local range = buffer(offset, length)
  local value = range:bytes():tohex(false, " ")
  local display = b3_equities_binaryentrypoint_sbe_v8_1.offset_119_padding_1.display(value, buffer, offset, packet, parent)

  parent:add(omi_b3_equities_binaryentrypoint_sbe_v8_1.fields.offset_119_padding_1, range, value, display)

  return offset + length, value
end

-- Tot No Related Sym
b3_equities_binaryentrypoint_sbe_v8_1.tot_no_related_sym = {}

-- Size: Tot No Related Sym
b3_equities_binaryentrypoint_sbe_v8_1.tot_no_related_sym.size = 1

-- Display: Tot No Related Sym
b3_equities_binaryentrypoint_sbe_v8_1.tot_no_related_sym.display = function(value)
  return "Tot No Related Sym: "..value
end

-- Dissect: Tot No Related Sym
b3_equities_binaryentrypoint_sbe_v8_1.tot_no_related_sym.dissect = function(buffer, offset, packet, parent)
  local length = b3_equities_binaryentrypoint_sbe_v8_1.tot_no_related_sym.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = b3_equities_binaryentrypoint_sbe_v8_1.tot_no_related_sym.display(value, buffer, offset, packet, parent)

  parent:add(omi_b3_equities_binaryentrypoint_sbe_v8_1.fields.tot_no_related_sym, range, value, display)

  return offset + length, value
end

-- Multi Leg Reporting Type
b3_equities_binaryentrypoint_sbe_v8_1.multi_leg_reporting_type = {}

-- Size: Multi Leg Reporting Type
b3_equities_binaryentrypoint_sbe_v8_1.multi_leg_reporting_type.size = 1

-- Display: Multi Leg Reporting Type
b3_equities_binaryentrypoint_sbe_v8_1.multi_leg_reporting_type.display = function(value)
  -- Check if field has value
  if value == nil or value == 0 then
    return "Multi Leg Reporting Type: No Value"
  end

  if value == "1" then
    return "Multi Leg Reporting Type: Single Security (1)"
  end
  if value == "2" then
    return "Multi Leg Reporting Type: Individualleg Of Multileg Security (2)"
  end
  if value == "3" then
    return "Multi Leg Reporting Type: Multileg Security (3)"
  end
  if value == 0 then
    return "Multi Leg Reporting Type: No Value"
  end

  return "Multi Leg Reporting Type: Unknown("..value..")"
end

-- Dissect: Multi Leg Reporting Type
b3_equities_binaryentrypoint_sbe_v8_1.multi_leg_reporting_type.dissect = function(buffer, offset, packet, parent)
  local length = b3_equities_binaryentrypoint_sbe_v8_1.multi_leg_reporting_type.size
  local range = buffer(offset, length)

  -- parse as byte
  local value = range:uint()

  -- check if value is non zero
  if value ~= 0 then
    value = range:string()
  end

  local display = b3_equities_binaryentrypoint_sbe_v8_1.multi_leg_reporting_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_b3_equities_binaryentrypoint_sbe_v8_1.fields.multi_leg_reporting_type, range, value, display)

  return offset + length, value
end

-- Order Category
b3_equities_binaryentrypoint_sbe_v8_1.order_category = {}

-- Size: Order Category
b3_equities_binaryentrypoint_sbe_v8_1.order_category.size = 1

-- Display: Order Category
b3_equities_binaryentrypoint_sbe_v8_1.order_category.display = function(value)
  -- Check if field has value
  if value == nil or value == 0 then
    return "Order Category: No Value"
  end

  if value == "B" then
    return "Order Category: Result Of Options Exercise (B)"
  end
  if value == "C" then
    return "Order Category: Result Of Assignment From An Options Exercise (C)"
  end
  if value == "D" then
    return "Order Category: Result Of Automatic Options Exercise (D)"
  end
  if value == "E" then
    return "Order Category: Result Of Midpoint Order (E)"
  end
  if value == "F" then
    return "Order Category: Result Of Block Book Trade (F)"
  end
  if value == "G" then
    return "Order Category: Result Of Trade At Close (G)"
  end
  if value == "H" then
    return "Order Category: Result Of Trade At Average (H)"
  end
  if value == 0 then
    return "Order Category: No Value"
  end

  return "Order Category: Unknown("..value..")"
end

-- Dissect: Order Category
b3_equities_binaryentrypoint_sbe_v8_1.order_category.dissect = function(buffer, offset, packet, parent)
  local length = b3_equities_binaryentrypoint_sbe_v8_1.order_category.size
  local range = buffer(offset, length)

  -- parse as byte
  local value = range:uint()

  -- check if value is non zero
  if value ~= 0 then
    value = range:string()
  end

  local display = b3_equities_binaryentrypoint_sbe_v8_1.order_category.display(value, buffer, offset, packet, parent)

  parent:add(omi_b3_equities_binaryentrypoint_sbe_v8_1.fields.order_category, range, value, display)

  return offset + length, value
end

-- Exec Type
b3_equities_binaryentrypoint_sbe_v8_1.exec_type = {}

-- Size: Exec Type
b3_equities_binaryentrypoint_sbe_v8_1.exec_type.size = 1

-- Display: Exec Type
b3_equities_binaryentrypoint_sbe_v8_1.exec_type.display = function(value)
  -- Check if field has value
  if value == nil or value == 0 then
    return "Exec Type: No Value"
  end

  if value == "F" then
    return "Exec Type: Trade (F)"
  end
  if value == "H" then
    return "Exec Type: Trade Cancel (H)"
  end

  return "Exec Type: Unknown("..value..")"
end

-- Dissect: Exec Type
b3_equities_binaryentrypoint_sbe_v8_1.exec_type.dissect = function(buffer, offset, packet, parent)
  local length = b3_equities_binaryentrypoint_sbe_v8_1.exec_type.size
  local range = buffer(offset, length)

  -- parse as byte
  local value = range:uint()

  -- check if value is non zero
  if value ~= 0 then
    value = range:string()
  end

  local display = b3_equities_binaryentrypoint_sbe_v8_1.exec_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_b3_equities_binaryentrypoint_sbe_v8_1.fields.exec_type, range, value, display)

  return offset + length, value
end

-- Execution Report Trade Message
b3_equities_binaryentrypoint_sbe_v8_1.execution_report_trade_message = {}

-- Calculate size of: Execution Report Trade Message
b3_equities_binaryentrypoint_sbe_v8_1.execution_report_trade_message.size = function(buffer, offset)
  local index = 0

  index = index + b3_equities_binaryentrypoint_sbe_v8_1.outbound_business_header.size(buffer, offset + index)

  index = index + b3_equities_binaryentrypoint_sbe_v8_1.side.size

  index = index + b3_equities_binaryentrypoint_sbe_v8_1.ord_status.size

  index = index + b3_equities_binaryentrypoint_sbe_v8_1.clordid_optional.size

  index = index + b3_equities_binaryentrypoint_sbe_v8_1.secondary_order_id.size

  index = index + b3_equities_binaryentrypoint_sbe_v8_1.security_id.size

  index = index + b3_equities_binaryentrypoint_sbe_v8_1.account.size

  index = index + b3_equities_binaryentrypoint_sbe_v8_1.last_qty.size

  index = index + b3_equities_binaryentrypoint_sbe_v8_1.last_px.size

  index = index + b3_equities_binaryentrypoint_sbe_v8_1.exec_id.size

  index = index + b3_equities_binaryentrypoint_sbe_v8_1.transact_time.size

  index = index + b3_equities_binaryentrypoint_sbe_v8_1.leaves_qty.size

  index = index + b3_equities_binaryentrypoint_sbe_v8_1.cum_qty.size

  index = index + b3_equities_binaryentrypoint_sbe_v8_1.aggressor_indicator.size

  index = index + b3_equities_binaryentrypoint_sbe_v8_1.exec_type.size

  index = index + b3_equities_binaryentrypoint_sbe_v8_1.order_category.size

  index = index + b3_equities_binaryentrypoint_sbe_v8_1.multi_leg_reporting_type.size

  index = index + b3_equities_binaryentrypoint_sbe_v8_1.trade_id.size

  index = index + b3_equities_binaryentrypoint_sbe_v8_1.contra_broker.size

  index = index + b3_equities_binaryentrypoint_sbe_v8_1.order_id.size

  index = index + b3_equities_binaryentrypoint_sbe_v8_1.trade_date.size

  index = index + b3_equities_binaryentrypoint_sbe_v8_1.tot_no_related_sym.size

  index = index + b3_equities_binaryentrypoint_sbe_v8_1.offset_119_padding_1.size

  index = index + b3_equities_binaryentrypoint_sbe_v8_1.secondary_exec_id.size

  index = index + b3_equities_binaryentrypoint_sbe_v8_1.exec_ref_id.size

  index = index + b3_equities_binaryentrypoint_sbe_v8_1.crossid_optional.size

  index = index + b3_equities_binaryentrypoint_sbe_v8_1.crossed_indicator.size

  index = index + b3_equities_binaryentrypoint_sbe_v8_1.order_qty.size

  index = index + b3_equities_binaryentrypoint_sbe_v8_1.trading_session_id.size

  index = index + b3_equities_binaryentrypoint_sbe_v8_1.trading_session_sub_id.size

  index = index + b3_equities_binaryentrypoint_sbe_v8_1.security_trading_status.size

  index = index + b3_equities_binaryentrypoint_sbe_v8_1.cross_type.size

  index = index + b3_equities_binaryentrypoint_sbe_v8_1.cross_prioritization.size

  index = index + b3_equities_binaryentrypoint_sbe_v8_1.offset_159_padding_1.size

  index = index + b3_equities_binaryentrypoint_sbe_v8_1.strategy_id.size

  index = index + b3_equities_binaryentrypoint_sbe_v8_1.desk_id.size(buffer, offset + index)

  index = index + b3_equities_binaryentrypoint_sbe_v8_1.memo.size(buffer, offset + index)

  return index
end

-- Display: Execution Report Trade Message
b3_equities_binaryentrypoint_sbe_v8_1.execution_report_trade_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Execution Report Trade Message
b3_equities_binaryentrypoint_sbe_v8_1.execution_report_trade_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Outbound Business Header: Struct of 5 fields
  index, outbound_business_header = b3_equities_binaryentrypoint_sbe_v8_1.outbound_business_header.dissect(buffer, index, packet, parent)

  -- Side: 1 Byte Ascii String Enum with 2 values
  index, side = b3_equities_binaryentrypoint_sbe_v8_1.side.dissect(buffer, index, packet, parent)

  -- Ord Status: 1 Byte Ascii String Enum with 9 values
  index, ord_status = b3_equities_binaryentrypoint_sbe_v8_1.ord_status.dissect(buffer, index, packet, parent)

  -- ClOrdId Optional: 8 Byte Unsigned Fixed Width Integer
  index, clordid_optional = b3_equities_binaryentrypoint_sbe_v8_1.clordid_optional.dissect(buffer, index, packet, parent)

  -- Secondary Order Id: 8 Byte Unsigned Fixed Width Integer
  index, secondary_order_id = b3_equities_binaryentrypoint_sbe_v8_1.secondary_order_id.dissect(buffer, index, packet, parent)

  -- Security Id: 8 Byte Unsigned Fixed Width Integer
  index, security_id = b3_equities_binaryentrypoint_sbe_v8_1.security_id.dissect(buffer, index, packet, parent)

  -- Account: 4 Byte Unsigned Fixed Width Integer
  index, account = b3_equities_binaryentrypoint_sbe_v8_1.account.dissect(buffer, index, packet, parent)

  -- Last Qty: 8 Byte Unsigned Fixed Width Integer
  index, last_qty = b3_equities_binaryentrypoint_sbe_v8_1.last_qty.dissect(buffer, index, packet, parent)

  -- Last Px: 8 Byte Signed Fixed Width Integer
  index, last_px = b3_equities_binaryentrypoint_sbe_v8_1.last_px.dissect(buffer, index, packet, parent)

  -- Exec Id: 8 Byte Unsigned Fixed Width Integer
  index, exec_id = b3_equities_binaryentrypoint_sbe_v8_1.exec_id.dissect(buffer, index, packet, parent)

  -- Transact Time: 8 Byte Unsigned Fixed Width Integer
  index, transact_time = b3_equities_binaryentrypoint_sbe_v8_1.transact_time.dissect(buffer, index, packet, parent)

  -- Leaves Qty: 8 Byte Unsigned Fixed Width Integer
  index, leaves_qty = b3_equities_binaryentrypoint_sbe_v8_1.leaves_qty.dissect(buffer, index, packet, parent)

  -- Cum Qty: 8 Byte Unsigned Fixed Width Integer
  index, cum_qty = b3_equities_binaryentrypoint_sbe_v8_1.cum_qty.dissect(buffer, index, packet, parent)

  -- Aggressor Indicator: 1 Byte Unsigned Fixed Width Integer Enum with 2 values
  index, aggressor_indicator = b3_equities_binaryentrypoint_sbe_v8_1.aggressor_indicator.dissect(buffer, index, packet, parent)

  -- Exec Type: 1 Byte Ascii String Enum with 2 values
  index, exec_type = b3_equities_binaryentrypoint_sbe_v8_1.exec_type.dissect(buffer, index, packet, parent)

  -- Order Category: 1 Byte Ascii String Enum with 8 values
  index, order_category = b3_equities_binaryentrypoint_sbe_v8_1.order_category.dissect(buffer, index, packet, parent)

  -- Multi Leg Reporting Type: 1 Byte Ascii String Enum with 4 values
  index, multi_leg_reporting_type = b3_equities_binaryentrypoint_sbe_v8_1.multi_leg_reporting_type.dissect(buffer, index, packet, parent)

  -- Trade Id: 4 Byte Unsigned Fixed Width Integer
  index, trade_id = b3_equities_binaryentrypoint_sbe_v8_1.trade_id.dissect(buffer, index, packet, parent)

  -- Contra Broker: 4 Byte Unsigned Fixed Width Integer
  index, contra_broker = b3_equities_binaryentrypoint_sbe_v8_1.contra_broker.dissect(buffer, index, packet, parent)

  -- Order Id: 8 Byte Unsigned Fixed Width Integer
  index, order_id = b3_equities_binaryentrypoint_sbe_v8_1.order_id.dissect(buffer, index, packet, parent)

  -- Trade Date: 2 Byte Unsigned Fixed Width Integer
  index, trade_date = b3_equities_binaryentrypoint_sbe_v8_1.trade_date.dissect(buffer, index, packet, parent)

  -- Tot No Related Sym: 1 Byte Unsigned Fixed Width Integer
  index, tot_no_related_sym = b3_equities_binaryentrypoint_sbe_v8_1.tot_no_related_sym.dissect(buffer, index, packet, parent)

  -- Offset 119 Padding 1: 1 Byte
  index, offset_119_padding_1 = b3_equities_binaryentrypoint_sbe_v8_1.offset_119_padding_1.dissect(buffer, index, packet, parent)

  -- Secondary Exec Id: 8 Byte Unsigned Fixed Width Integer
  index, secondary_exec_id = b3_equities_binaryentrypoint_sbe_v8_1.secondary_exec_id.dissect(buffer, index, packet, parent)

  -- Exec Ref Id: 8 Byte Unsigned Fixed Width Integer
  index, exec_ref_id = b3_equities_binaryentrypoint_sbe_v8_1.exec_ref_id.dissect(buffer, index, packet, parent)

  -- CrossId Optional: 8 Byte Unsigned Fixed Width Integer
  index, crossid_optional = b3_equities_binaryentrypoint_sbe_v8_1.crossid_optional.dissect(buffer, index, packet, parent)

  -- Crossed Indicator: 2 Byte Unsigned Fixed Width Integer Enum with 4 values
  index, crossed_indicator = b3_equities_binaryentrypoint_sbe_v8_1.crossed_indicator.dissect(buffer, index, packet, parent)

  -- Order Qty: 8 Byte Unsigned Fixed Width Integer
  index, order_qty = b3_equities_binaryentrypoint_sbe_v8_1.order_qty.dissect(buffer, index, packet, parent)

  -- Trading Session Id: 1 Byte Unsigned Fixed Width Integer Enum with 3 values
  index, trading_session_id = b3_equities_binaryentrypoint_sbe_v8_1.trading_session_id.dissect(buffer, index, packet, parent)

  -- Trading Session Sub Id: 1 Byte Unsigned Fixed Width Integer Enum with 7 values
  index, trading_session_sub_id = b3_equities_binaryentrypoint_sbe_v8_1.trading_session_sub_id.dissect(buffer, index, packet, parent)

  -- Security Trading Status: 1 Byte Unsigned Fixed Width Integer Enum with 9 values
  index, security_trading_status = b3_equities_binaryentrypoint_sbe_v8_1.security_trading_status.dissect(buffer, index, packet, parent)

  -- Cross Type: 1 Byte Unsigned Fixed Width Integer Enum with 3 values
  index, cross_type = b3_equities_binaryentrypoint_sbe_v8_1.cross_type.dissect(buffer, index, packet, parent)

  -- Cross Prioritization: 1 Byte Unsigned Fixed Width Integer Enum with 4 values
  index, cross_prioritization = b3_equities_binaryentrypoint_sbe_v8_1.cross_prioritization.dissect(buffer, index, packet, parent)

  -- Offset 159 Padding 1: 1 Byte
  index, offset_159_padding_1 = b3_equities_binaryentrypoint_sbe_v8_1.offset_159_padding_1.dissect(buffer, index, packet, parent)

  -- Strategy Id: 4 Byte Signed Fixed Width Integer Nullable
  index, strategy_id = b3_equities_binaryentrypoint_sbe_v8_1.strategy_id.dissect(buffer, index, packet, parent)

  -- Desk Id: Struct of 2 fields
  index, desk_id = b3_equities_binaryentrypoint_sbe_v8_1.desk_id.dissect(buffer, index, packet, parent)

  -- Memo: Struct of 2 fields
  index, memo = b3_equities_binaryentrypoint_sbe_v8_1.memo.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Execution Report Trade Message
b3_equities_binaryentrypoint_sbe_v8_1.execution_report_trade_message.dissect = function(buffer, offset, packet, parent)
  -- Optionally add dynamic struct element to protocol tree
  if show.execution_report_trade_message then
    local length = b3_equities_binaryentrypoint_sbe_v8_1.execution_report_trade_message.size(buffer, offset)
    local range = buffer(offset, length)
    local display = b3_equities_binaryentrypoint_sbe_v8_1.execution_report_trade_message.display(buffer, packet, parent)
    parent = parent:add(omi_b3_equities_binaryentrypoint_sbe_v8_1.fields.execution_report_trade_message, range, display)
  end

  return b3_equities_binaryentrypoint_sbe_v8_1.execution_report_trade_message.fields(buffer, offset, packet, parent)
end

-- Action Requested From Session Id
b3_equities_binaryentrypoint_sbe_v8_1.action_requested_from_session_id = {}

-- Size: Action Requested From Session Id
b3_equities_binaryentrypoint_sbe_v8_1.action_requested_from_session_id.size = 4

-- Display: Action Requested From Session Id
b3_equities_binaryentrypoint_sbe_v8_1.action_requested_from_session_id.display = function(value)
  return "Action Requested From Session Id: "..value
end

-- Dissect: Action Requested From Session Id
b3_equities_binaryentrypoint_sbe_v8_1.action_requested_from_session_id.dissect = function(buffer, offset, packet, parent)
  local length = b3_equities_binaryentrypoint_sbe_v8_1.action_requested_from_session_id.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = b3_equities_binaryentrypoint_sbe_v8_1.action_requested_from_session_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_b3_equities_binaryentrypoint_sbe_v8_1.fields.action_requested_from_session_id, range, value, display)

  return offset + length, value
end

-- Offset 164 Padding 3
b3_equities_binaryentrypoint_sbe_v8_1.offset_164_padding_3 = {}

-- Size: Offset 164 Padding 3
b3_equities_binaryentrypoint_sbe_v8_1.offset_164_padding_3.size = 3

-- Display: Offset 164 Padding 3
b3_equities_binaryentrypoint_sbe_v8_1.offset_164_padding_3.display = function(value)
  return "Offset 164 Padding 3: "..value
end

-- Dissect: Offset 164 Padding 3
b3_equities_binaryentrypoint_sbe_v8_1.offset_164_padding_3.dissect = function(buffer, offset, packet, parent)
  local length = b3_equities_binaryentrypoint_sbe_v8_1.offset_164_padding_3.size
  local range = buffer(offset, length)
  local value = range:bytes():tohex(false, " ")
  local display = b3_equities_binaryentrypoint_sbe_v8_1.offset_164_padding_3.display(value, buffer, offset, packet, parent)

  parent:add(omi_b3_equities_binaryentrypoint_sbe_v8_1.fields.offset_164_padding_3, range, value, display)

  return offset + length, value
end

-- Mass Action Report Id Optional
b3_equities_binaryentrypoint_sbe_v8_1.mass_action_report_id_optional = {}

-- Size: Mass Action Report Id Optional
b3_equities_binaryentrypoint_sbe_v8_1.mass_action_report_id_optional.size = 8

-- Display: Mass Action Report Id Optional
b3_equities_binaryentrypoint_sbe_v8_1.mass_action_report_id_optional.display = function(value)
  return "Mass Action Report Id Optional: "..value
end

-- Dissect: Mass Action Report Id Optional
b3_equities_binaryentrypoint_sbe_v8_1.mass_action_report_id_optional.dissect = function(buffer, offset, packet, parent)
  local length = b3_equities_binaryentrypoint_sbe_v8_1.mass_action_report_id_optional.size
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = b3_equities_binaryentrypoint_sbe_v8_1.mass_action_report_id_optional.display(value, buffer, offset, packet, parent)

  parent:add(omi_b3_equities_binaryentrypoint_sbe_v8_1.fields.mass_action_report_id_optional, range, value, display)

  return offset + length, value
end

-- Offset 100 Padding 4
b3_equities_binaryentrypoint_sbe_v8_1.offset_100_padding_4 = {}

-- Size: Offset 100 Padding 4
b3_equities_binaryentrypoint_sbe_v8_1.offset_100_padding_4.size = 4

-- Display: Offset 100 Padding 4
b3_equities_binaryentrypoint_sbe_v8_1.offset_100_padding_4.display = function(value)
  return "Offset 100 Padding 4: "..value
end

-- Dissect: Offset 100 Padding 4
b3_equities_binaryentrypoint_sbe_v8_1.offset_100_padding_4.dissect = function(buffer, offset, packet, parent)
  local length = b3_equities_binaryentrypoint_sbe_v8_1.offset_100_padding_4.size
  local range = buffer(offset, length)
  local value = range:bytes():tohex(false, " ")
  local display = b3_equities_binaryentrypoint_sbe_v8_1.offset_100_padding_4.display(value, buffer, offset, packet, parent)

  parent:add(omi_b3_equities_binaryentrypoint_sbe_v8_1.fields.offset_100_padding_4, range, value, display)

  return offset + length, value
end

-- Exec Restatement Reason
b3_equities_binaryentrypoint_sbe_v8_1.exec_restatement_reason = {}

-- Size: Exec Restatement Reason
b3_equities_binaryentrypoint_sbe_v8_1.exec_restatement_reason.size = 1

-- Display: Exec Restatement Reason
b3_equities_binaryentrypoint_sbe_v8_1.exec_restatement_reason.display = function(value)
  if value == 8 then
    return "Exec Restatement Reason: Market Option (8)"
  end
  if value == 100 then
    return "Exec Restatement Reason: Cancel On Hard Disconnection (100)"
  end
  if value == 101 then
    return "Exec Restatement Reason: Cancel On Terminate (101)"
  end
  if value == 102 then
    return "Exec Restatement Reason: Cancel On Disconnect And Terminate (102)"
  end
  if value == 103 then
    return "Exec Restatement Reason: Self Trading Prevention (103)"
  end
  if value == 105 then
    return "Exec Restatement Reason: Cancel From Firmsoft (105)"
  end
  if value == 107 then
    return "Exec Restatement Reason: Cancel Resting Order On Self Trade (107)"
  end
  if value == 200 then
    return "Exec Restatement Reason: Market Maker Protection (200)"
  end
  if value == 201 then
    return "Exec Restatement Reason: Risk Management Cancellation (201)"
  end
  if value == 202 then
    return "Exec Restatement Reason: Order Mass Action From Client Request (202)"
  end
  if value == 203 then
    return "Exec Restatement Reason: Cancel Order Due To Operational Error (203)"
  end
  if value == 204 then
    return "Exec Restatement Reason: Order Cancelled Due To Operational Error (204)"
  end
  if value == 205 then
    return "Exec Restatement Reason: Cancel Order Firmsoft Due To Operational Error (205)"
  end
  if value == 206 then
    return "Exec Restatement Reason: Order Cancelled Firmsoft Due To Operational Error (206)"
  end
  if value == 207 then
    return "Exec Restatement Reason: Mass Cancel Order Due To Operational Error Request (207)"
  end
  if value == 208 then
    return "Exec Restatement Reason: Mass Cancel Order Due To Operational Error Effective (208)"
  end
  if value == 209 then
    return "Exec Restatement Reason: Cancel On Midpoint Broker Only Removal (209)"
  end
  if value == 210 then
    return "Exec Restatement Reason: Cancel Remaining From Sweep Cross (210)"
  end
  if value == 211 then
    return "Exec Restatement Reason: Mass Cancel On Behalf (211)"
  end
  if value == 212 then
    return "Exec Restatement Reason: Mass Cancel On Behalf Due To Operational Error Effective (212)"
  end
  if value == 0 then
    return "Exec Restatement Reason: No Value"
  end

  return "Exec Restatement Reason: Unknown("..value..")"
end

-- Dissect: Exec Restatement Reason
b3_equities_binaryentrypoint_sbe_v8_1.exec_restatement_reason.dissect = function(buffer, offset, packet, parent)
  local length = b3_equities_binaryentrypoint_sbe_v8_1.exec_restatement_reason.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = b3_equities_binaryentrypoint_sbe_v8_1.exec_restatement_reason.display(value, buffer, offset, packet, parent)

  parent:add(omi_b3_equities_binaryentrypoint_sbe_v8_1.fields.exec_restatement_reason, range, value, display)

  return offset + length, value
end

-- Working Indicator
b3_equities_binaryentrypoint_sbe_v8_1.working_indicator = {}

-- Size: Working Indicator
b3_equities_binaryentrypoint_sbe_v8_1.working_indicator.size = 1

-- Display: Working Indicator
b3_equities_binaryentrypoint_sbe_v8_1.working_indicator.display = function(value)
  if value == 0 then
    return "Working Indicator: False Value (0)"
  end
  if value == 1 then
    return "Working Indicator: True Value (1)"
  end

  return "Working Indicator: Unknown("..value..")"
end

-- Dissect: Working Indicator
b3_equities_binaryentrypoint_sbe_v8_1.working_indicator.dissect = function(buffer, offset, packet, parent)
  local length = b3_equities_binaryentrypoint_sbe_v8_1.working_indicator.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = b3_equities_binaryentrypoint_sbe_v8_1.working_indicator.display(value, buffer, offset, packet, parent)

  parent:add(omi_b3_equities_binaryentrypoint_sbe_v8_1.fields.working_indicator, range, value, display)

  return offset + length, value
end

-- Market Segment Received Time
b3_equities_binaryentrypoint_sbe_v8_1.market_segment_received_time = {}

-- Size: Market Segment Received Time
b3_equities_binaryentrypoint_sbe_v8_1.market_segment_received_time.size = 8

-- Display: Market Segment Received Time
b3_equities_binaryentrypoint_sbe_v8_1.market_segment_received_time.display = function(value)
  -- Check null sentinel value
  if value == UInt64(0x00000000, 0x00000000) then
    return "Market Segment Received Time: No Value"
  end
  -- Parse unix timestamp
  local seconds = math.floor(value:tonumber()/1000000000)
  local nanoseconds = value:tonumber()%1000000000

  return "Market Segment Received Time: "..os.date("%x %H:%M:%S.", seconds)..string.format("%09d", nanoseconds)
end

-- Dissect: Market Segment Received Time
b3_equities_binaryentrypoint_sbe_v8_1.market_segment_received_time.dissect = function(buffer, offset, packet, parent)
  local length = b3_equities_binaryentrypoint_sbe_v8_1.market_segment_received_time.size
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = b3_equities_binaryentrypoint_sbe_v8_1.market_segment_received_time.display(value, buffer, offset, packet, parent)

  parent:add(omi_b3_equities_binaryentrypoint_sbe_v8_1.fields.market_segment_received_time, range, value, display)

  return offset + length, value
end

-- Execution Report Cancel Message
b3_equities_binaryentrypoint_sbe_v8_1.execution_report_cancel_message = {}

-- Calculate size of: Execution Report Cancel Message
b3_equities_binaryentrypoint_sbe_v8_1.execution_report_cancel_message.size = function(buffer, offset)
  local index = 0

  index = index + b3_equities_binaryentrypoint_sbe_v8_1.outbound_business_header.size(buffer, offset + index)

  index = index + b3_equities_binaryentrypoint_sbe_v8_1.side.size

  index = index + b3_equities_binaryentrypoint_sbe_v8_1.ord_status.size

  index = index + b3_equities_binaryentrypoint_sbe_v8_1.clordid.size

  index = index + b3_equities_binaryentrypoint_sbe_v8_1.secondary_order_id.size

  index = index + b3_equities_binaryentrypoint_sbe_v8_1.security_id.size

  index = index + b3_equities_binaryentrypoint_sbe_v8_1.cum_qty.size

  index = index + b3_equities_binaryentrypoint_sbe_v8_1.account.size

  index = index + b3_equities_binaryentrypoint_sbe_v8_1.exec_id.size

  index = index + b3_equities_binaryentrypoint_sbe_v8_1.transact_time.size

  index = index + b3_equities_binaryentrypoint_sbe_v8_1.market_segment_received_time.size

  index = index + b3_equities_binaryentrypoint_sbe_v8_1.order_id.size

  index = index + b3_equities_binaryentrypoint_sbe_v8_1.origclordid.size

  index = index + b3_equities_binaryentrypoint_sbe_v8_1.trade_date.size

  index = index + b3_equities_binaryentrypoint_sbe_v8_1.working_indicator.size

  index = index + b3_equities_binaryentrypoint_sbe_v8_1.exec_restatement_reason.size

  index = index + b3_equities_binaryentrypoint_sbe_v8_1.offset_100_padding_4.size

  index = index + b3_equities_binaryentrypoint_sbe_v8_1.mass_action_report_id_optional.size

  index = index + b3_equities_binaryentrypoint_sbe_v8_1.ordtype.size

  index = index + b3_equities_binaryentrypoint_sbe_v8_1.time_in_force.size

  index = index + b3_equities_binaryentrypoint_sbe_v8_1.expire_date.size

  index = index + b3_equities_binaryentrypoint_sbe_v8_1.order_qty.size

  index = index + b3_equities_binaryentrypoint_sbe_v8_1.price_optional.size

  index = index + b3_equities_binaryentrypoint_sbe_v8_1.stop_px.size

  index = index + b3_equities_binaryentrypoint_sbe_v8_1.min_qty.size

  index = index + b3_equities_binaryentrypoint_sbe_v8_1.max_floor.size

  index = index + b3_equities_binaryentrypoint_sbe_v8_1.received_time.size

  index = index + b3_equities_binaryentrypoint_sbe_v8_1.offset_164_padding_3.size

  index = index + b3_equities_binaryentrypoint_sbe_v8_1.ordtagid_optional.size

  index = index + b3_equities_binaryentrypoint_sbe_v8_1.investor_id.size(buffer, offset + index)

  index = index + b3_equities_binaryentrypoint_sbe_v8_1.strategy_id.size

  index = index + b3_equities_binaryentrypoint_sbe_v8_1.action_requested_from_session_id.size

  index = index + b3_equities_binaryentrypoint_sbe_v8_1.desk_id.size(buffer, offset + index)

  index = index + b3_equities_binaryentrypoint_sbe_v8_1.memo.size(buffer, offset + index)

  return index
end

-- Display: Execution Report Cancel Message
b3_equities_binaryentrypoint_sbe_v8_1.execution_report_cancel_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Execution Report Cancel Message
b3_equities_binaryentrypoint_sbe_v8_1.execution_report_cancel_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Outbound Business Header: Struct of 5 fields
  index, outbound_business_header = b3_equities_binaryentrypoint_sbe_v8_1.outbound_business_header.dissect(buffer, index, packet, parent)

  -- Side: 1 Byte Ascii String Enum with 2 values
  index, side = b3_equities_binaryentrypoint_sbe_v8_1.side.dissect(buffer, index, packet, parent)

  -- Ord Status: 1 Byte Ascii String Enum with 9 values
  index, ord_status = b3_equities_binaryentrypoint_sbe_v8_1.ord_status.dissect(buffer, index, packet, parent)

  -- ClOrdId: 8 Byte Unsigned Fixed Width Integer
  index, clordid = b3_equities_binaryentrypoint_sbe_v8_1.clordid.dissect(buffer, index, packet, parent)

  -- Secondary Order Id: 8 Byte Unsigned Fixed Width Integer
  index, secondary_order_id = b3_equities_binaryentrypoint_sbe_v8_1.secondary_order_id.dissect(buffer, index, packet, parent)

  -- Security Id: 8 Byte Unsigned Fixed Width Integer
  index, security_id = b3_equities_binaryentrypoint_sbe_v8_1.security_id.dissect(buffer, index, packet, parent)

  -- Cum Qty: 8 Byte Unsigned Fixed Width Integer
  index, cum_qty = b3_equities_binaryentrypoint_sbe_v8_1.cum_qty.dissect(buffer, index, packet, parent)

  -- Account: 4 Byte Unsigned Fixed Width Integer
  index, account = b3_equities_binaryentrypoint_sbe_v8_1.account.dissect(buffer, index, packet, parent)

  -- Exec Id: 8 Byte Unsigned Fixed Width Integer
  index, exec_id = b3_equities_binaryentrypoint_sbe_v8_1.exec_id.dissect(buffer, index, packet, parent)

  -- Transact Time: 8 Byte Unsigned Fixed Width Integer
  index, transact_time = b3_equities_binaryentrypoint_sbe_v8_1.transact_time.dissect(buffer, index, packet, parent)

  -- Market Segment Received Time: 8 Byte Unsigned Fixed Width Integer Nullable
  index, market_segment_received_time = b3_equities_binaryentrypoint_sbe_v8_1.market_segment_received_time.dissect(buffer, index, packet, parent)

  -- Order Id: 8 Byte Unsigned Fixed Width Integer
  index, order_id = b3_equities_binaryentrypoint_sbe_v8_1.order_id.dissect(buffer, index, packet, parent)

  -- OrigClOrdId: 8 Byte Unsigned Fixed Width Integer
  index, origclordid = b3_equities_binaryentrypoint_sbe_v8_1.origclordid.dissect(buffer, index, packet, parent)

  -- Trade Date: 2 Byte Unsigned Fixed Width Integer
  index, trade_date = b3_equities_binaryentrypoint_sbe_v8_1.trade_date.dissect(buffer, index, packet, parent)

  -- Working Indicator: 1 Byte Unsigned Fixed Width Integer Enum with 2 values
  index, working_indicator = b3_equities_binaryentrypoint_sbe_v8_1.working_indicator.dissect(buffer, index, packet, parent)

  -- Exec Restatement Reason: 1 Byte Unsigned Fixed Width Integer Enum with 21 values
  index, exec_restatement_reason = b3_equities_binaryentrypoint_sbe_v8_1.exec_restatement_reason.dissect(buffer, index, packet, parent)

  -- Offset 100 Padding 4: 4 Byte
  index, offset_100_padding_4 = b3_equities_binaryentrypoint_sbe_v8_1.offset_100_padding_4.dissect(buffer, index, packet, parent)

  -- Mass Action Report Id Optional: 8 Byte Unsigned Fixed Width Integer
  index, mass_action_report_id_optional = b3_equities_binaryentrypoint_sbe_v8_1.mass_action_report_id_optional.dissect(buffer, index, packet, parent)

  -- OrdType: 1 Byte Ascii String Enum with 7 values
  index, ordtype = b3_equities_binaryentrypoint_sbe_v8_1.ordtype.dissect(buffer, index, packet, parent)

  -- Time In Force: 1 Byte Ascii String Enum with 7 values
  index, time_in_force = b3_equities_binaryentrypoint_sbe_v8_1.time_in_force.dissect(buffer, index, packet, parent)

  -- Expire Date: 2 Byte Unsigned Fixed Width Integer
  index, expire_date = b3_equities_binaryentrypoint_sbe_v8_1.expire_date.dissect(buffer, index, packet, parent)

  -- Order Qty: 8 Byte Unsigned Fixed Width Integer
  index, order_qty = b3_equities_binaryentrypoint_sbe_v8_1.order_qty.dissect(buffer, index, packet, parent)

  -- Price Optional: 8 Byte Signed Fixed Width Integer Nullable
  index, price_optional = b3_equities_binaryentrypoint_sbe_v8_1.price_optional.dissect(buffer, index, packet, parent)

  -- Stop Px: 8 Byte Signed Fixed Width Integer Nullable
  index, stop_px = b3_equities_binaryentrypoint_sbe_v8_1.stop_px.dissect(buffer, index, packet, parent)

  -- Min Qty: 8 Byte Unsigned Fixed Width Integer
  index, min_qty = b3_equities_binaryentrypoint_sbe_v8_1.min_qty.dissect(buffer, index, packet, parent)

  -- Max Floor: 8 Byte Unsigned Fixed Width Integer
  index, max_floor = b3_equities_binaryentrypoint_sbe_v8_1.max_floor.dissect(buffer, index, packet, parent)

  -- Received Time: 8 Byte Unsigned Fixed Width Integer Nullable
  index, received_time = b3_equities_binaryentrypoint_sbe_v8_1.received_time.dissect(buffer, index, packet, parent)

  -- Offset 164 Padding 3: 3 Byte
  index, offset_164_padding_3 = b3_equities_binaryentrypoint_sbe_v8_1.offset_164_padding_3.dissect(buffer, index, packet, parent)

  -- OrdTagId Optional: 1 Byte Unsigned Fixed Width Integer Nullable
  index, ordtagid_optional = b3_equities_binaryentrypoint_sbe_v8_1.ordtagid_optional.dissect(buffer, index, packet, parent)

  -- Investor Id: Struct of 2 fields
  index, investor_id = b3_equities_binaryentrypoint_sbe_v8_1.investor_id.dissect(buffer, index, packet, parent)

  -- Strategy Id: 4 Byte Signed Fixed Width Integer Nullable
  index, strategy_id = b3_equities_binaryentrypoint_sbe_v8_1.strategy_id.dissect(buffer, index, packet, parent)

  -- Action Requested From Session Id: 4 Byte Unsigned Fixed Width Integer
  index, action_requested_from_session_id = b3_equities_binaryentrypoint_sbe_v8_1.action_requested_from_session_id.dissect(buffer, index, packet, parent)

  -- Desk Id: Struct of 2 fields
  index, desk_id = b3_equities_binaryentrypoint_sbe_v8_1.desk_id.dissect(buffer, index, packet, parent)

  -- Memo: Struct of 2 fields
  index, memo = b3_equities_binaryentrypoint_sbe_v8_1.memo.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Execution Report Cancel Message
b3_equities_binaryentrypoint_sbe_v8_1.execution_report_cancel_message.dissect = function(buffer, offset, packet, parent)
  -- Optionally add dynamic struct element to protocol tree
  if show.execution_report_cancel_message then
    local length = b3_equities_binaryentrypoint_sbe_v8_1.execution_report_cancel_message.size(buffer, offset)
    local range = buffer(offset, length)
    local display = b3_equities_binaryentrypoint_sbe_v8_1.execution_report_cancel_message.display(buffer, packet, parent)
    parent = parent:add(omi_b3_equities_binaryentrypoint_sbe_v8_1.fields.execution_report_cancel_message, range, display)
  end

  return b3_equities_binaryentrypoint_sbe_v8_1.execution_report_cancel_message.fields(buffer, offset, packet, parent)
end

-- Offset 179 Padding 3
b3_equities_binaryentrypoint_sbe_v8_1.offset_179_padding_3 = {}

-- Size: Offset 179 Padding 3
b3_equities_binaryentrypoint_sbe_v8_1.offset_179_padding_3.size = 3

-- Display: Offset 179 Padding 3
b3_equities_binaryentrypoint_sbe_v8_1.offset_179_padding_3.display = function(value)
  return "Offset 179 Padding 3: "..value
end

-- Dissect: Offset 179 Padding 3
b3_equities_binaryentrypoint_sbe_v8_1.offset_179_padding_3.dissect = function(buffer, offset, packet, parent)
  local length = b3_equities_binaryentrypoint_sbe_v8_1.offset_179_padding_3.size
  local range = buffer(offset, length)
  local value = range:bytes():tohex(false, " ")
  local display = b3_equities_binaryentrypoint_sbe_v8_1.offset_179_padding_3.display(value, buffer, offset, packet, parent)

  parent:add(omi_b3_equities_binaryentrypoint_sbe_v8_1.fields.offset_179_padding_3, range, value, display)

  return offset + length, value
end

-- Mm Protection Reset Boolean optional
b3_equities_binaryentrypoint_sbe_v8_1.mm_protection_reset_boolean_optional = {}

-- Size: Mm Protection Reset Boolean optional
b3_equities_binaryentrypoint_sbe_v8_1.mm_protection_reset_boolean_optional.size = 1

-- Display: Mm Protection Reset Boolean optional
b3_equities_binaryentrypoint_sbe_v8_1.mm_protection_reset_boolean_optional.display = function(value)
  if value == 0 then
    return "Mm Protection Reset Boolean optional: False Value (0)"
  end
  if value == 1 then
    return "Mm Protection Reset Boolean optional: True Value (1)"
  end
  if value == 255 then
    return "Mm Protection Reset Boolean optional: No Value"
  end

  return "Mm Protection Reset Boolean optional: Unknown("..value..")"
end

-- Dissect: Mm Protection Reset Boolean optional
b3_equities_binaryentrypoint_sbe_v8_1.mm_protection_reset_boolean_optional.dissect = function(buffer, offset, packet, parent)
  local length = b3_equities_binaryentrypoint_sbe_v8_1.mm_protection_reset_boolean_optional.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = b3_equities_binaryentrypoint_sbe_v8_1.mm_protection_reset_boolean_optional.display(value, buffer, offset, packet, parent)

  parent:add(omi_b3_equities_binaryentrypoint_sbe_v8_1.fields.mm_protection_reset_boolean_optional, range, value, display)

  return offset + length, value
end

-- Offset 168 Padding 3
b3_equities_binaryentrypoint_sbe_v8_1.offset_168_padding_3 = {}

-- Size: Offset 168 Padding 3
b3_equities_binaryentrypoint_sbe_v8_1.offset_168_padding_3.size = 3

-- Display: Offset 168 Padding 3
b3_equities_binaryentrypoint_sbe_v8_1.offset_168_padding_3.display = function(value)
  return "Offset 168 Padding 3: "..value
end

-- Dissect: Offset 168 Padding 3
b3_equities_binaryentrypoint_sbe_v8_1.offset_168_padding_3.dissect = function(buffer, offset, packet, parent)
  local length = b3_equities_binaryentrypoint_sbe_v8_1.offset_168_padding_3.size
  local range = buffer(offset, length)
  local value = range:bytes():tohex(false, " ")
  local display = b3_equities_binaryentrypoint_sbe_v8_1.offset_168_padding_3.display(value, buffer, offset, packet, parent)

  parent:add(omi_b3_equities_binaryentrypoint_sbe_v8_1.fields.offset_168_padding_3, range, value, display)

  return offset + length, value
end

-- Protection Price
b3_equities_binaryentrypoint_sbe_v8_1.protection_price = {}

-- Size: Protection Price
b3_equities_binaryentrypoint_sbe_v8_1.protection_price.size = 8

-- Display: Protection Price
b3_equities_binaryentrypoint_sbe_v8_1.protection_price.display = function(raw, value)
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
b3_equities_binaryentrypoint_sbe_v8_1.protection_price.dissect = function(buffer, offset, packet, parent)
  local length = b3_equities_binaryentrypoint_sbe_v8_1.protection_price.size
  local range = buffer(offset, length)
  local raw = range:le_int64()
  local value = translate.protection_price(raw)
  local display = b3_equities_binaryentrypoint_sbe_v8_1.protection_price.display(raw, value, buffer, offset, packet, parent)

  parent:add(omi_b3_equities_binaryentrypoint_sbe_v8_1.fields.protection_price, range, value, display)

  return offset + length, value
end

-- Execution Report Modify Message
b3_equities_binaryentrypoint_sbe_v8_1.execution_report_modify_message = {}

-- Calculate size of: Execution Report Modify Message
b3_equities_binaryentrypoint_sbe_v8_1.execution_report_modify_message.size = function(buffer, offset)
  local index = 0

  index = index + b3_equities_binaryentrypoint_sbe_v8_1.outbound_business_header.size(buffer, offset + index)

  index = index + b3_equities_binaryentrypoint_sbe_v8_1.side.size

  index = index + b3_equities_binaryentrypoint_sbe_v8_1.ord_status.size

  index = index + b3_equities_binaryentrypoint_sbe_v8_1.clordid.size

  index = index + b3_equities_binaryentrypoint_sbe_v8_1.secondary_order_id.size

  index = index + b3_equities_binaryentrypoint_sbe_v8_1.security_id.size

  index = index + b3_equities_binaryentrypoint_sbe_v8_1.leaves_qty.size

  index = index + b3_equities_binaryentrypoint_sbe_v8_1.account.size

  index = index + b3_equities_binaryentrypoint_sbe_v8_1.exec_id.size

  index = index + b3_equities_binaryentrypoint_sbe_v8_1.transact_time.size

  index = index + b3_equities_binaryentrypoint_sbe_v8_1.cum_qty.size

  index = index + b3_equities_binaryentrypoint_sbe_v8_1.market_segment_received_time.size

  index = index + b3_equities_binaryentrypoint_sbe_v8_1.order_id.size

  index = index + b3_equities_binaryentrypoint_sbe_v8_1.origclordid.size

  index = index + b3_equities_binaryentrypoint_sbe_v8_1.protection_price.size

  index = index + b3_equities_binaryentrypoint_sbe_v8_1.trade_date.size

  index = index + b3_equities_binaryentrypoint_sbe_v8_1.working_indicator.size

  index = index + b3_equities_binaryentrypoint_sbe_v8_1.multi_leg_reporting_type.size

  index = index + b3_equities_binaryentrypoint_sbe_v8_1.ordtype.size

  index = index + b3_equities_binaryentrypoint_sbe_v8_1.time_in_force.size

  index = index + b3_equities_binaryentrypoint_sbe_v8_1.expire_date.size

  index = index + b3_equities_binaryentrypoint_sbe_v8_1.order_qty.size

  index = index + b3_equities_binaryentrypoint_sbe_v8_1.price_optional.size

  index = index + b3_equities_binaryentrypoint_sbe_v8_1.stop_px.size

  index = index + b3_equities_binaryentrypoint_sbe_v8_1.min_qty.size

  index = index + b3_equities_binaryentrypoint_sbe_v8_1.max_floor.size

  index = index + b3_equities_binaryentrypoint_sbe_v8_1.received_time.size

  index = index + b3_equities_binaryentrypoint_sbe_v8_1.offset_168_padding_3.size

  index = index + b3_equities_binaryentrypoint_sbe_v8_1.ordtagid_optional.size

  index = index + b3_equities_binaryentrypoint_sbe_v8_1.investor_id.size(buffer, offset + index)

  index = index + b3_equities_binaryentrypoint_sbe_v8_1.mm_protection_reset_boolean_optional.size

  index = index + b3_equities_binaryentrypoint_sbe_v8_1.offset_179_padding_3.size

  index = index + b3_equities_binaryentrypoint_sbe_v8_1.strategy_id.size

  index = index + b3_equities_binaryentrypoint_sbe_v8_1.desk_id.size(buffer, offset + index)

  index = index + b3_equities_binaryentrypoint_sbe_v8_1.memo.size(buffer, offset + index)

  return index
end

-- Display: Execution Report Modify Message
b3_equities_binaryentrypoint_sbe_v8_1.execution_report_modify_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Execution Report Modify Message
b3_equities_binaryentrypoint_sbe_v8_1.execution_report_modify_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Outbound Business Header: Struct of 5 fields
  index, outbound_business_header = b3_equities_binaryentrypoint_sbe_v8_1.outbound_business_header.dissect(buffer, index, packet, parent)

  -- Side: 1 Byte Ascii String Enum with 2 values
  index, side = b3_equities_binaryentrypoint_sbe_v8_1.side.dissect(buffer, index, packet, parent)

  -- Ord Status: 1 Byte Ascii String Enum with 9 values
  index, ord_status = b3_equities_binaryentrypoint_sbe_v8_1.ord_status.dissect(buffer, index, packet, parent)

  -- ClOrdId: 8 Byte Unsigned Fixed Width Integer
  index, clordid = b3_equities_binaryentrypoint_sbe_v8_1.clordid.dissect(buffer, index, packet, parent)

  -- Secondary Order Id: 8 Byte Unsigned Fixed Width Integer
  index, secondary_order_id = b3_equities_binaryentrypoint_sbe_v8_1.secondary_order_id.dissect(buffer, index, packet, parent)

  -- Security Id: 8 Byte Unsigned Fixed Width Integer
  index, security_id = b3_equities_binaryentrypoint_sbe_v8_1.security_id.dissect(buffer, index, packet, parent)

  -- Leaves Qty: 8 Byte Unsigned Fixed Width Integer
  index, leaves_qty = b3_equities_binaryentrypoint_sbe_v8_1.leaves_qty.dissect(buffer, index, packet, parent)

  -- Account: 4 Byte Unsigned Fixed Width Integer
  index, account = b3_equities_binaryentrypoint_sbe_v8_1.account.dissect(buffer, index, packet, parent)

  -- Exec Id: 8 Byte Unsigned Fixed Width Integer
  index, exec_id = b3_equities_binaryentrypoint_sbe_v8_1.exec_id.dissect(buffer, index, packet, parent)

  -- Transact Time: 8 Byte Unsigned Fixed Width Integer
  index, transact_time = b3_equities_binaryentrypoint_sbe_v8_1.transact_time.dissect(buffer, index, packet, parent)

  -- Cum Qty: 8 Byte Unsigned Fixed Width Integer
  index, cum_qty = b3_equities_binaryentrypoint_sbe_v8_1.cum_qty.dissect(buffer, index, packet, parent)

  -- Market Segment Received Time: 8 Byte Unsigned Fixed Width Integer Nullable
  index, market_segment_received_time = b3_equities_binaryentrypoint_sbe_v8_1.market_segment_received_time.dissect(buffer, index, packet, parent)

  -- Order Id: 8 Byte Unsigned Fixed Width Integer
  index, order_id = b3_equities_binaryentrypoint_sbe_v8_1.order_id.dissect(buffer, index, packet, parent)

  -- OrigClOrdId: 8 Byte Unsigned Fixed Width Integer
  index, origclordid = b3_equities_binaryentrypoint_sbe_v8_1.origclordid.dissect(buffer, index, packet, parent)

  -- Protection Price: 8 Byte Signed Fixed Width Integer Nullable
  index, protection_price = b3_equities_binaryentrypoint_sbe_v8_1.protection_price.dissect(buffer, index, packet, parent)

  -- Trade Date: 2 Byte Unsigned Fixed Width Integer
  index, trade_date = b3_equities_binaryentrypoint_sbe_v8_1.trade_date.dissect(buffer, index, packet, parent)

  -- Working Indicator: 1 Byte Unsigned Fixed Width Integer Enum with 2 values
  index, working_indicator = b3_equities_binaryentrypoint_sbe_v8_1.working_indicator.dissect(buffer, index, packet, parent)

  -- Multi Leg Reporting Type: 1 Byte Ascii String Enum with 4 values
  index, multi_leg_reporting_type = b3_equities_binaryentrypoint_sbe_v8_1.multi_leg_reporting_type.dissect(buffer, index, packet, parent)

  -- OrdType: 1 Byte Ascii String Enum with 7 values
  index, ordtype = b3_equities_binaryentrypoint_sbe_v8_1.ordtype.dissect(buffer, index, packet, parent)

  -- Time In Force: 1 Byte Ascii String Enum with 7 values
  index, time_in_force = b3_equities_binaryentrypoint_sbe_v8_1.time_in_force.dissect(buffer, index, packet, parent)

  -- Expire Date: 2 Byte Unsigned Fixed Width Integer
  index, expire_date = b3_equities_binaryentrypoint_sbe_v8_1.expire_date.dissect(buffer, index, packet, parent)

  -- Order Qty: 8 Byte Unsigned Fixed Width Integer
  index, order_qty = b3_equities_binaryentrypoint_sbe_v8_1.order_qty.dissect(buffer, index, packet, parent)

  -- Price Optional: 8 Byte Signed Fixed Width Integer Nullable
  index, price_optional = b3_equities_binaryentrypoint_sbe_v8_1.price_optional.dissect(buffer, index, packet, parent)

  -- Stop Px: 8 Byte Signed Fixed Width Integer Nullable
  index, stop_px = b3_equities_binaryentrypoint_sbe_v8_1.stop_px.dissect(buffer, index, packet, parent)

  -- Min Qty: 8 Byte Unsigned Fixed Width Integer
  index, min_qty = b3_equities_binaryentrypoint_sbe_v8_1.min_qty.dissect(buffer, index, packet, parent)

  -- Max Floor: 8 Byte Unsigned Fixed Width Integer
  index, max_floor = b3_equities_binaryentrypoint_sbe_v8_1.max_floor.dissect(buffer, index, packet, parent)

  -- Received Time: 8 Byte Unsigned Fixed Width Integer Nullable
  index, received_time = b3_equities_binaryentrypoint_sbe_v8_1.received_time.dissect(buffer, index, packet, parent)

  -- Offset 168 Padding 3: 3 Byte
  index, offset_168_padding_3 = b3_equities_binaryentrypoint_sbe_v8_1.offset_168_padding_3.dissect(buffer, index, packet, parent)

  -- OrdTagId Optional: 1 Byte Unsigned Fixed Width Integer Nullable
  index, ordtagid_optional = b3_equities_binaryentrypoint_sbe_v8_1.ordtagid_optional.dissect(buffer, index, packet, parent)

  -- Investor Id: Struct of 2 fields
  index, investor_id = b3_equities_binaryentrypoint_sbe_v8_1.investor_id.dissect(buffer, index, packet, parent)

  -- Mm Protection Reset Boolean optional: 1 Byte Unsigned Fixed Width Integer Enum with 3 values
  index, mm_protection_reset_boolean_optional = b3_equities_binaryentrypoint_sbe_v8_1.mm_protection_reset_boolean_optional.dissect(buffer, index, packet, parent)

  -- Offset 179 Padding 3: 3 Byte
  index, offset_179_padding_3 = b3_equities_binaryentrypoint_sbe_v8_1.offset_179_padding_3.dissect(buffer, index, packet, parent)

  -- Strategy Id: 4 Byte Signed Fixed Width Integer Nullable
  index, strategy_id = b3_equities_binaryentrypoint_sbe_v8_1.strategy_id.dissect(buffer, index, packet, parent)

  -- Desk Id: Struct of 2 fields
  index, desk_id = b3_equities_binaryentrypoint_sbe_v8_1.desk_id.dissect(buffer, index, packet, parent)

  -- Memo: Struct of 2 fields
  index, memo = b3_equities_binaryentrypoint_sbe_v8_1.memo.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Execution Report Modify Message
b3_equities_binaryentrypoint_sbe_v8_1.execution_report_modify_message.dissect = function(buffer, offset, packet, parent)
  -- Optionally add dynamic struct element to protocol tree
  if show.execution_report_modify_message then
    local length = b3_equities_binaryentrypoint_sbe_v8_1.execution_report_modify_message.size(buffer, offset)
    local range = buffer(offset, length)
    local display = b3_equities_binaryentrypoint_sbe_v8_1.execution_report_modify_message.display(buffer, packet, parent)
    parent = parent:add(omi_b3_equities_binaryentrypoint_sbe_v8_1.fields.execution_report_modify_message, range, display)
  end

  return b3_equities_binaryentrypoint_sbe_v8_1.execution_report_modify_message.fields(buffer, offset, packet, parent)
end

-- Offset 165 Padding 3
b3_equities_binaryentrypoint_sbe_v8_1.offset_165_padding_3 = {}

-- Size: Offset 165 Padding 3
b3_equities_binaryentrypoint_sbe_v8_1.offset_165_padding_3.size = 3

-- Display: Offset 165 Padding 3
b3_equities_binaryentrypoint_sbe_v8_1.offset_165_padding_3.display = function(value)
  return "Offset 165 Padding 3: "..value
end

-- Dissect: Offset 165 Padding 3
b3_equities_binaryentrypoint_sbe_v8_1.offset_165_padding_3.dissect = function(buffer, offset, packet, parent)
  local length = b3_equities_binaryentrypoint_sbe_v8_1.offset_165_padding_3.size
  local range = buffer(offset, length)
  local value = range:bytes():tohex(false, " ")
  local display = b3_equities_binaryentrypoint_sbe_v8_1.offset_165_padding_3.display(value, buffer, offset, packet, parent)

  parent:add(omi_b3_equities_binaryentrypoint_sbe_v8_1.fields.offset_165_padding_3, range, value, display)

  return offset + length, value
end

-- Offset 152 Padding 3
b3_equities_binaryentrypoint_sbe_v8_1.offset_152_padding_3 = {}

-- Size: Offset 152 Padding 3
b3_equities_binaryentrypoint_sbe_v8_1.offset_152_padding_3.size = 3

-- Display: Offset 152 Padding 3
b3_equities_binaryentrypoint_sbe_v8_1.offset_152_padding_3.display = function(value)
  return "Offset 152 Padding 3: "..value
end

-- Dissect: Offset 152 Padding 3
b3_equities_binaryentrypoint_sbe_v8_1.offset_152_padding_3.dissect = function(buffer, offset, packet, parent)
  local length = b3_equities_binaryentrypoint_sbe_v8_1.offset_152_padding_3.size
  local range = buffer(offset, length)
  local value = range:bytes():tohex(false, " ")
  local display = b3_equities_binaryentrypoint_sbe_v8_1.offset_152_padding_3.display(value, buffer, offset, packet, parent)

  parent:add(omi_b3_equities_binaryentrypoint_sbe_v8_1.fields.offset_152_padding_3, range, value, display)

  return offset + length, value
end

-- Execution Report New Message
b3_equities_binaryentrypoint_sbe_v8_1.execution_report_new_message = {}

-- Calculate size of: Execution Report New Message
b3_equities_binaryentrypoint_sbe_v8_1.execution_report_new_message.size = function(buffer, offset)
  local index = 0

  index = index + b3_equities_binaryentrypoint_sbe_v8_1.outbound_business_header.size(buffer, offset + index)

  index = index + b3_equities_binaryentrypoint_sbe_v8_1.side.size

  index = index + b3_equities_binaryentrypoint_sbe_v8_1.ord_status.size

  index = index + b3_equities_binaryentrypoint_sbe_v8_1.clordid.size

  index = index + b3_equities_binaryentrypoint_sbe_v8_1.secondary_order_id.size

  index = index + b3_equities_binaryentrypoint_sbe_v8_1.security_id.size

  index = index + b3_equities_binaryentrypoint_sbe_v8_1.order_id.size

  index = index + b3_equities_binaryentrypoint_sbe_v8_1.account.size

  index = index + b3_equities_binaryentrypoint_sbe_v8_1.exec_id.size

  index = index + b3_equities_binaryentrypoint_sbe_v8_1.transact_time.size

  index = index + b3_equities_binaryentrypoint_sbe_v8_1.market_segment_received_time.size

  index = index + b3_equities_binaryentrypoint_sbe_v8_1.protection_price.size

  index = index + b3_equities_binaryentrypoint_sbe_v8_1.trade_date.size

  index = index + b3_equities_binaryentrypoint_sbe_v8_1.working_indicator.size

  index = index + b3_equities_binaryentrypoint_sbe_v8_1.multi_leg_reporting_type.size

  index = index + b3_equities_binaryentrypoint_sbe_v8_1.ordtype.size

  index = index + b3_equities_binaryentrypoint_sbe_v8_1.time_in_force.size

  index = index + b3_equities_binaryentrypoint_sbe_v8_1.expire_date.size

  index = index + b3_equities_binaryentrypoint_sbe_v8_1.order_qty.size

  index = index + b3_equities_binaryentrypoint_sbe_v8_1.price_optional.size

  index = index + b3_equities_binaryentrypoint_sbe_v8_1.stop_px.size

  index = index + b3_equities_binaryentrypoint_sbe_v8_1.min_qty.size

  index = index + b3_equities_binaryentrypoint_sbe_v8_1.max_floor.size

  index = index + b3_equities_binaryentrypoint_sbe_v8_1.crossid_optional.size

  index = index + b3_equities_binaryentrypoint_sbe_v8_1.received_time.size

  index = index + b3_equities_binaryentrypoint_sbe_v8_1.offset_152_padding_3.size

  index = index + b3_equities_binaryentrypoint_sbe_v8_1.ordtagid_optional.size

  index = index + b3_equities_binaryentrypoint_sbe_v8_1.investor_id.size(buffer, offset + index)

  index = index + b3_equities_binaryentrypoint_sbe_v8_1.cross_type.size

  index = index + b3_equities_binaryentrypoint_sbe_v8_1.cross_prioritization.size

  index = index + b3_equities_binaryentrypoint_sbe_v8_1.mm_protection_reset_boolean_optional.size

  index = index + b3_equities_binaryentrypoint_sbe_v8_1.offset_165_padding_3.size

  index = index + b3_equities_binaryentrypoint_sbe_v8_1.strategy_id.size

  index = index + b3_equities_binaryentrypoint_sbe_v8_1.desk_id.size(buffer, offset + index)

  index = index + b3_equities_binaryentrypoint_sbe_v8_1.memo.size(buffer, offset + index)

  return index
end

-- Display: Execution Report New Message
b3_equities_binaryentrypoint_sbe_v8_1.execution_report_new_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Execution Report New Message
b3_equities_binaryentrypoint_sbe_v8_1.execution_report_new_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Outbound Business Header: Struct of 5 fields
  index, outbound_business_header = b3_equities_binaryentrypoint_sbe_v8_1.outbound_business_header.dissect(buffer, index, packet, parent)

  -- Side: 1 Byte Ascii String Enum with 2 values
  index, side = b3_equities_binaryentrypoint_sbe_v8_1.side.dissect(buffer, index, packet, parent)

  -- Ord Status: 1 Byte Ascii String Enum with 9 values
  index, ord_status = b3_equities_binaryentrypoint_sbe_v8_1.ord_status.dissect(buffer, index, packet, parent)

  -- ClOrdId: 8 Byte Unsigned Fixed Width Integer
  index, clordid = b3_equities_binaryentrypoint_sbe_v8_1.clordid.dissect(buffer, index, packet, parent)

  -- Secondary Order Id: 8 Byte Unsigned Fixed Width Integer
  index, secondary_order_id = b3_equities_binaryentrypoint_sbe_v8_1.secondary_order_id.dissect(buffer, index, packet, parent)

  -- Security Id: 8 Byte Unsigned Fixed Width Integer
  index, security_id = b3_equities_binaryentrypoint_sbe_v8_1.security_id.dissect(buffer, index, packet, parent)

  -- Order Id: 8 Byte Unsigned Fixed Width Integer
  index, order_id = b3_equities_binaryentrypoint_sbe_v8_1.order_id.dissect(buffer, index, packet, parent)

  -- Account: 4 Byte Unsigned Fixed Width Integer
  index, account = b3_equities_binaryentrypoint_sbe_v8_1.account.dissect(buffer, index, packet, parent)

  -- Exec Id: 8 Byte Unsigned Fixed Width Integer
  index, exec_id = b3_equities_binaryentrypoint_sbe_v8_1.exec_id.dissect(buffer, index, packet, parent)

  -- Transact Time: 8 Byte Unsigned Fixed Width Integer
  index, transact_time = b3_equities_binaryentrypoint_sbe_v8_1.transact_time.dissect(buffer, index, packet, parent)

  -- Market Segment Received Time: 8 Byte Unsigned Fixed Width Integer Nullable
  index, market_segment_received_time = b3_equities_binaryentrypoint_sbe_v8_1.market_segment_received_time.dissect(buffer, index, packet, parent)

  -- Protection Price: 8 Byte Signed Fixed Width Integer Nullable
  index, protection_price = b3_equities_binaryentrypoint_sbe_v8_1.protection_price.dissect(buffer, index, packet, parent)

  -- Trade Date: 2 Byte Unsigned Fixed Width Integer
  index, trade_date = b3_equities_binaryentrypoint_sbe_v8_1.trade_date.dissect(buffer, index, packet, parent)

  -- Working Indicator: 1 Byte Unsigned Fixed Width Integer Enum with 2 values
  index, working_indicator = b3_equities_binaryentrypoint_sbe_v8_1.working_indicator.dissect(buffer, index, packet, parent)

  -- Multi Leg Reporting Type: 1 Byte Ascii String Enum with 4 values
  index, multi_leg_reporting_type = b3_equities_binaryentrypoint_sbe_v8_1.multi_leg_reporting_type.dissect(buffer, index, packet, parent)

  -- OrdType: 1 Byte Ascii String Enum with 7 values
  index, ordtype = b3_equities_binaryentrypoint_sbe_v8_1.ordtype.dissect(buffer, index, packet, parent)

  -- Time In Force: 1 Byte Ascii String Enum with 7 values
  index, time_in_force = b3_equities_binaryentrypoint_sbe_v8_1.time_in_force.dissect(buffer, index, packet, parent)

  -- Expire Date: 2 Byte Unsigned Fixed Width Integer
  index, expire_date = b3_equities_binaryentrypoint_sbe_v8_1.expire_date.dissect(buffer, index, packet, parent)

  -- Order Qty: 8 Byte Unsigned Fixed Width Integer
  index, order_qty = b3_equities_binaryentrypoint_sbe_v8_1.order_qty.dissect(buffer, index, packet, parent)

  -- Price Optional: 8 Byte Signed Fixed Width Integer Nullable
  index, price_optional = b3_equities_binaryentrypoint_sbe_v8_1.price_optional.dissect(buffer, index, packet, parent)

  -- Stop Px: 8 Byte Signed Fixed Width Integer Nullable
  index, stop_px = b3_equities_binaryentrypoint_sbe_v8_1.stop_px.dissect(buffer, index, packet, parent)

  -- Min Qty: 8 Byte Unsigned Fixed Width Integer
  index, min_qty = b3_equities_binaryentrypoint_sbe_v8_1.min_qty.dissect(buffer, index, packet, parent)

  -- Max Floor: 8 Byte Unsigned Fixed Width Integer
  index, max_floor = b3_equities_binaryentrypoint_sbe_v8_1.max_floor.dissect(buffer, index, packet, parent)

  -- CrossId Optional: 8 Byte Unsigned Fixed Width Integer
  index, crossid_optional = b3_equities_binaryentrypoint_sbe_v8_1.crossid_optional.dissect(buffer, index, packet, parent)

  -- Received Time: 8 Byte Unsigned Fixed Width Integer Nullable
  index, received_time = b3_equities_binaryentrypoint_sbe_v8_1.received_time.dissect(buffer, index, packet, parent)

  -- Offset 152 Padding 3: 3 Byte
  index, offset_152_padding_3 = b3_equities_binaryentrypoint_sbe_v8_1.offset_152_padding_3.dissect(buffer, index, packet, parent)

  -- OrdTagId Optional: 1 Byte Unsigned Fixed Width Integer Nullable
  index, ordtagid_optional = b3_equities_binaryentrypoint_sbe_v8_1.ordtagid_optional.dissect(buffer, index, packet, parent)

  -- Investor Id: Struct of 2 fields
  index, investor_id = b3_equities_binaryentrypoint_sbe_v8_1.investor_id.dissect(buffer, index, packet, parent)

  -- Cross Type: 1 Byte Unsigned Fixed Width Integer Enum with 3 values
  index, cross_type = b3_equities_binaryentrypoint_sbe_v8_1.cross_type.dissect(buffer, index, packet, parent)

  -- Cross Prioritization: 1 Byte Unsigned Fixed Width Integer Enum with 4 values
  index, cross_prioritization = b3_equities_binaryentrypoint_sbe_v8_1.cross_prioritization.dissect(buffer, index, packet, parent)

  -- Mm Protection Reset Boolean optional: 1 Byte Unsigned Fixed Width Integer Enum with 3 values
  index, mm_protection_reset_boolean_optional = b3_equities_binaryentrypoint_sbe_v8_1.mm_protection_reset_boolean_optional.dissect(buffer, index, packet, parent)

  -- Offset 165 Padding 3: 3 Byte
  index, offset_165_padding_3 = b3_equities_binaryentrypoint_sbe_v8_1.offset_165_padding_3.dissect(buffer, index, packet, parent)

  -- Strategy Id: 4 Byte Signed Fixed Width Integer Nullable
  index, strategy_id = b3_equities_binaryentrypoint_sbe_v8_1.strategy_id.dissect(buffer, index, packet, parent)

  -- Desk Id: Struct of 2 fields
  index, desk_id = b3_equities_binaryentrypoint_sbe_v8_1.desk_id.dissect(buffer, index, packet, parent)

  -- Memo: Struct of 2 fields
  index, memo = b3_equities_binaryentrypoint_sbe_v8_1.memo.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Execution Report New Message
b3_equities_binaryentrypoint_sbe_v8_1.execution_report_new_message.dissect = function(buffer, offset, packet, parent)
  -- Optionally add dynamic struct element to protocol tree
  if show.execution_report_new_message then
    local length = b3_equities_binaryentrypoint_sbe_v8_1.execution_report_new_message.size(buffer, offset)
    local range = buffer(offset, length)
    local display = b3_equities_binaryentrypoint_sbe_v8_1.execution_report_new_message.display(buffer, packet, parent)
    parent = parent:add(omi_b3_equities_binaryentrypoint_sbe_v8_1.fields.execution_report_new_message, range, display)
  end

  return b3_equities_binaryentrypoint_sbe_v8_1.execution_report_new_message.fields(buffer, offset, packet, parent)
end

-- Max Sweep Qty
b3_equities_binaryentrypoint_sbe_v8_1.max_sweep_qty = {}

-- Size: Max Sweep Qty
b3_equities_binaryentrypoint_sbe_v8_1.max_sweep_qty.size = 8

-- Display: Max Sweep Qty
b3_equities_binaryentrypoint_sbe_v8_1.max_sweep_qty.display = function(value)
  -- Check if field has value
  if value == UInt64(0x00000000, 0x00000000) then
    return "Max Sweep Qty: No Value"
  end

  return "Max Sweep Qty: "..value
end

-- Dissect: Max Sweep Qty
b3_equities_binaryentrypoint_sbe_v8_1.max_sweep_qty.dissect = function(buffer, offset, packet, parent)
  local length = b3_equities_binaryentrypoint_sbe_v8_1.max_sweep_qty.size
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = b3_equities_binaryentrypoint_sbe_v8_1.max_sweep_qty.display(value, buffer, offset, packet, parent)

  parent:add(omi_b3_equities_binaryentrypoint_sbe_v8_1.fields.max_sweep_qty, range, value, display)

  return offset + length, value
end

-- Price
b3_equities_binaryentrypoint_sbe_v8_1.price = {}

-- Size: Price
b3_equities_binaryentrypoint_sbe_v8_1.price.size = 8

-- Display: Price
b3_equities_binaryentrypoint_sbe_v8_1.price.display = function(value)
  return "Price: "..value
end

-- Translate: Price
translate.price = function(raw)
  return raw:tonumber()/10000
end

-- Dissect: Price
b3_equities_binaryentrypoint_sbe_v8_1.price.dissect = function(buffer, offset, packet, parent)
  local length = b3_equities_binaryentrypoint_sbe_v8_1.price.size
  local range = buffer(offset, length)
  local raw = range:le_int64()
  local value = translate.price(raw)
  local display = b3_equities_binaryentrypoint_sbe_v8_1.price.display(value, buffer, offset, packet, parent)

  parent:add(omi_b3_equities_binaryentrypoint_sbe_v8_1.fields.price, range, value, display)

  return offset + length, value
end

-- Executing Trader Optional
b3_equities_binaryentrypoint_sbe_v8_1.executing_trader_optional = {}

-- Size: Executing Trader Optional
b3_equities_binaryentrypoint_sbe_v8_1.executing_trader_optional.size = 5

-- Display: Executing Trader Optional
b3_equities_binaryentrypoint_sbe_v8_1.executing_trader_optional.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Executing Trader Optional: No Value"
  end

  return "Executing Trader Optional: "..value
end

-- Dissect: Executing Trader Optional
b3_equities_binaryentrypoint_sbe_v8_1.executing_trader_optional.dissect = function(buffer, offset, packet, parent)
  local length = b3_equities_binaryentrypoint_sbe_v8_1.executing_trader_optional.size
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

  local display = b3_equities_binaryentrypoint_sbe_v8_1.executing_trader_optional.display(value, buffer, offset, packet, parent)

  parent:add(omi_b3_equities_binaryentrypoint_sbe_v8_1.fields.executing_trader_optional, range, value, display)

  return offset + length, value
end

-- CrossId
b3_equities_binaryentrypoint_sbe_v8_1.crossid = {}

-- Size: CrossId
b3_equities_binaryentrypoint_sbe_v8_1.crossid.size = 8

-- Display: CrossId
b3_equities_binaryentrypoint_sbe_v8_1.crossid.display = function(value)
  return "CrossId: "..value
end

-- Dissect: CrossId
b3_equities_binaryentrypoint_sbe_v8_1.crossid.dissect = function(buffer, offset, packet, parent)
  local length = b3_equities_binaryentrypoint_sbe_v8_1.crossid.size
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = b3_equities_binaryentrypoint_sbe_v8_1.crossid.display(value, buffer, offset, packet, parent)

  parent:add(omi_b3_equities_binaryentrypoint_sbe_v8_1.fields.crossid, range, value, display)

  return offset + length, value
end

-- New Order Cross Message
b3_equities_binaryentrypoint_sbe_v8_1.new_order_cross_message = {}

-- Calculate size of: New Order Cross Message
b3_equities_binaryentrypoint_sbe_v8_1.new_order_cross_message.size = function(buffer, offset)
  local index = 0

  index = index + b3_equities_binaryentrypoint_sbe_v8_1.inbound_business_header.size(buffer, offset + index)

  index = index + b3_equities_binaryentrypoint_sbe_v8_1.offset_18_padding_2.size

  index = index + b3_equities_binaryentrypoint_sbe_v8_1.crossid.size

  index = index + b3_equities_binaryentrypoint_sbe_v8_1.sender_location.size

  index = index + b3_equities_binaryentrypoint_sbe_v8_1.entering_trader.size

  index = index + b3_equities_binaryentrypoint_sbe_v8_1.executing_trader_optional.size

  index = index + b3_equities_binaryentrypoint_sbe_v8_1.security_id.size

  index = index + b3_equities_binaryentrypoint_sbe_v8_1.order_qty.size

  index = index + b3_equities_binaryentrypoint_sbe_v8_1.price.size

  index = index + b3_equities_binaryentrypoint_sbe_v8_1.crossed_indicator.size

  index = index + b3_equities_binaryentrypoint_sbe_v8_1.cross_type.size

  index = index + b3_equities_binaryentrypoint_sbe_v8_1.cross_prioritization.size

  index = index + b3_equities_binaryentrypoint_sbe_v8_1.max_sweep_qty.size

  index = index + b3_equities_binaryentrypoint_sbe_v8_1.no_sides_groups.size(buffer, offset + index)

  index = index + b3_equities_binaryentrypoint_sbe_v8_1.desk_id.size(buffer, offset + index)

  index = index + b3_equities_binaryentrypoint_sbe_v8_1.memo.size(buffer, offset + index)

  return index
end

-- Display: New Order Cross Message
b3_equities_binaryentrypoint_sbe_v8_1.new_order_cross_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: New Order Cross Message
b3_equities_binaryentrypoint_sbe_v8_1.new_order_cross_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Inbound Business Header: Struct of 5 fields
  index, inbound_business_header = b3_equities_binaryentrypoint_sbe_v8_1.inbound_business_header.dissect(buffer, index, packet, parent)

  -- Offset 18 Padding 2: 2 Byte
  index, offset_18_padding_2 = b3_equities_binaryentrypoint_sbe_v8_1.offset_18_padding_2.dissect(buffer, index, packet, parent)

  -- CrossId: 8 Byte Unsigned Fixed Width Integer
  index, crossid = b3_equities_binaryentrypoint_sbe_v8_1.crossid.dissect(buffer, index, packet, parent)

  -- Sender Location: 10 Byte Ascii String
  index, sender_location = b3_equities_binaryentrypoint_sbe_v8_1.sender_location.dissect(buffer, index, packet, parent)

  -- Entering Trader: 5 Byte Ascii String
  index, entering_trader = b3_equities_binaryentrypoint_sbe_v8_1.entering_trader.dissect(buffer, index, packet, parent)

  -- Executing Trader Optional: 5 Byte Ascii String
  index, executing_trader_optional = b3_equities_binaryentrypoint_sbe_v8_1.executing_trader_optional.dissect(buffer, index, packet, parent)

  -- Security Id: 8 Byte Unsigned Fixed Width Integer
  index, security_id = b3_equities_binaryentrypoint_sbe_v8_1.security_id.dissect(buffer, index, packet, parent)

  -- Order Qty: 8 Byte Unsigned Fixed Width Integer
  index, order_qty = b3_equities_binaryentrypoint_sbe_v8_1.order_qty.dissect(buffer, index, packet, parent)

  -- Price: 8 Byte Signed Fixed Width Integer
  index, price = b3_equities_binaryentrypoint_sbe_v8_1.price.dissect(buffer, index, packet, parent)

  -- Crossed Indicator: 2 Byte Unsigned Fixed Width Integer Enum with 4 values
  index, crossed_indicator = b3_equities_binaryentrypoint_sbe_v8_1.crossed_indicator.dissect(buffer, index, packet, parent)

  -- Cross Type: 1 Byte Unsigned Fixed Width Integer Enum with 3 values
  index, cross_type = b3_equities_binaryentrypoint_sbe_v8_1.cross_type.dissect(buffer, index, packet, parent)

  -- Cross Prioritization: 1 Byte Unsigned Fixed Width Integer Enum with 4 values
  index, cross_prioritization = b3_equities_binaryentrypoint_sbe_v8_1.cross_prioritization.dissect(buffer, index, packet, parent)

  -- Max Sweep Qty: 8 Byte Unsigned Fixed Width Integer Nullable
  index, max_sweep_qty = b3_equities_binaryentrypoint_sbe_v8_1.max_sweep_qty.dissect(buffer, index, packet, parent)

  -- No Sides Groups: Struct of 2 fields
  index, no_sides_groups = b3_equities_binaryentrypoint_sbe_v8_1.no_sides_groups.dissect(buffer, index, packet, parent)

  -- Desk Id: Struct of 2 fields
  index, desk_id = b3_equities_binaryentrypoint_sbe_v8_1.desk_id.dissect(buffer, index, packet, parent)

  -- Memo: Struct of 2 fields
  index, memo = b3_equities_binaryentrypoint_sbe_v8_1.memo.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: New Order Cross Message
b3_equities_binaryentrypoint_sbe_v8_1.new_order_cross_message.dissect = function(buffer, offset, packet, parent)
  -- Optionally add dynamic struct element to protocol tree
  if show.new_order_cross_message then
    local length = b3_equities_binaryentrypoint_sbe_v8_1.new_order_cross_message.size(buffer, offset)
    local range = buffer(offset, length)
    local display = b3_equities_binaryentrypoint_sbe_v8_1.new_order_cross_message.display(buffer, packet, parent)
    parent = parent:add(omi_b3_equities_binaryentrypoint_sbe_v8_1.fields.new_order_cross_message, range, display)
  end

  return b3_equities_binaryentrypoint_sbe_v8_1.new_order_cross_message.fields(buffer, offset, packet, parent)
end

-- Offset 54 Padding 2
b3_equities_binaryentrypoint_sbe_v8_1.offset_54_padding_2 = {}

-- Size: Offset 54 Padding 2
b3_equities_binaryentrypoint_sbe_v8_1.offset_54_padding_2.size = 2

-- Display: Offset 54 Padding 2
b3_equities_binaryentrypoint_sbe_v8_1.offset_54_padding_2.display = function(value)
  return "Offset 54 Padding 2: "..value
end

-- Dissect: Offset 54 Padding 2
b3_equities_binaryentrypoint_sbe_v8_1.offset_54_padding_2.dissect = function(buffer, offset, packet, parent)
  local length = b3_equities_binaryentrypoint_sbe_v8_1.offset_54_padding_2.size
  local range = buffer(offset, length)
  local value = range:bytes():tohex(false, " ")
  local display = b3_equities_binaryentrypoint_sbe_v8_1.offset_54_padding_2.display(value, buffer, offset, packet, parent)

  parent:add(omi_b3_equities_binaryentrypoint_sbe_v8_1.fields.offset_54_padding_2, range, value, display)

  return offset + length, value
end

-- Single Cancel Restatement Reason
b3_equities_binaryentrypoint_sbe_v8_1.single_cancel_restatement_reason = {}

-- Size: Single Cancel Restatement Reason
b3_equities_binaryentrypoint_sbe_v8_1.single_cancel_restatement_reason.size = 1

-- Display: Single Cancel Restatement Reason
b3_equities_binaryentrypoint_sbe_v8_1.single_cancel_restatement_reason.display = function(value)
  if value == 203 then
    return "Single Cancel Restatement Reason: Cancel Order Due To Operational Error (203)"
  end
  if value == 0 then
    return "Single Cancel Restatement Reason: No Value"
  end

  return "Single Cancel Restatement Reason: Unknown("..value..")"
end

-- Dissect: Single Cancel Restatement Reason
b3_equities_binaryentrypoint_sbe_v8_1.single_cancel_restatement_reason.dissect = function(buffer, offset, packet, parent)
  local length = b3_equities_binaryentrypoint_sbe_v8_1.single_cancel_restatement_reason.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = b3_equities_binaryentrypoint_sbe_v8_1.single_cancel_restatement_reason.display(value, buffer, offset, packet, parent)

  parent:add(omi_b3_equities_binaryentrypoint_sbe_v8_1.fields.single_cancel_restatement_reason, range, value, display)

  return offset + length, value
end

-- Order Cancel Request Message
b3_equities_binaryentrypoint_sbe_v8_1.order_cancel_request_message = {}

-- Calculate size of: Order Cancel Request Message
b3_equities_binaryentrypoint_sbe_v8_1.order_cancel_request_message.size = function(buffer, offset)
  local index = 0

  index = index + b3_equities_binaryentrypoint_sbe_v8_1.inbound_business_header.size(buffer, offset + index)

  index = index + b3_equities_binaryentrypoint_sbe_v8_1.offset_18_padding_2.size

  index = index + b3_equities_binaryentrypoint_sbe_v8_1.clordid.size

  index = index + b3_equities_binaryentrypoint_sbe_v8_1.security_id.size

  index = index + b3_equities_binaryentrypoint_sbe_v8_1.order_id_optional.size

  index = index + b3_equities_binaryentrypoint_sbe_v8_1.origclordid.size

  index = index + b3_equities_binaryentrypoint_sbe_v8_1.side.size

  index = index + b3_equities_binaryentrypoint_sbe_v8_1.single_cancel_restatement_reason.size

  index = index + b3_equities_binaryentrypoint_sbe_v8_1.offset_54_padding_2.size

  index = index + b3_equities_binaryentrypoint_sbe_v8_1.sender_location.size

  index = index + b3_equities_binaryentrypoint_sbe_v8_1.entering_trader.size

  index = index + b3_equities_binaryentrypoint_sbe_v8_1.executing_trader_optional.size

  index = index + b3_equities_binaryentrypoint_sbe_v8_1.desk_id.size(buffer, offset + index)

  index = index + b3_equities_binaryentrypoint_sbe_v8_1.memo.size(buffer, offset + index)

  return index
end

-- Display: Order Cancel Request Message
b3_equities_binaryentrypoint_sbe_v8_1.order_cancel_request_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Order Cancel Request Message
b3_equities_binaryentrypoint_sbe_v8_1.order_cancel_request_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Inbound Business Header: Struct of 5 fields
  index, inbound_business_header = b3_equities_binaryentrypoint_sbe_v8_1.inbound_business_header.dissect(buffer, index, packet, parent)

  -- Offset 18 Padding 2: 2 Byte
  index, offset_18_padding_2 = b3_equities_binaryentrypoint_sbe_v8_1.offset_18_padding_2.dissect(buffer, index, packet, parent)

  -- ClOrdId: 8 Byte Unsigned Fixed Width Integer
  index, clordid = b3_equities_binaryentrypoint_sbe_v8_1.clordid.dissect(buffer, index, packet, parent)

  -- Security Id: 8 Byte Unsigned Fixed Width Integer
  index, security_id = b3_equities_binaryentrypoint_sbe_v8_1.security_id.dissect(buffer, index, packet, parent)

  -- Order Id Optional: 8 Byte Unsigned Fixed Width Integer
  index, order_id_optional = b3_equities_binaryentrypoint_sbe_v8_1.order_id_optional.dissect(buffer, index, packet, parent)

  -- OrigClOrdId: 8 Byte Unsigned Fixed Width Integer
  index, origclordid = b3_equities_binaryentrypoint_sbe_v8_1.origclordid.dissect(buffer, index, packet, parent)

  -- Side: 1 Byte Ascii String Enum with 2 values
  index, side = b3_equities_binaryentrypoint_sbe_v8_1.side.dissect(buffer, index, packet, parent)

  -- Single Cancel Restatement Reason: 1 Byte Unsigned Fixed Width Integer Enum with 2 values
  index, single_cancel_restatement_reason = b3_equities_binaryentrypoint_sbe_v8_1.single_cancel_restatement_reason.dissect(buffer, index, packet, parent)

  -- Offset 54 Padding 2: 2 Byte
  index, offset_54_padding_2 = b3_equities_binaryentrypoint_sbe_v8_1.offset_54_padding_2.dissect(buffer, index, packet, parent)

  -- Sender Location: 10 Byte Ascii String
  index, sender_location = b3_equities_binaryentrypoint_sbe_v8_1.sender_location.dissect(buffer, index, packet, parent)

  -- Entering Trader: 5 Byte Ascii String
  index, entering_trader = b3_equities_binaryentrypoint_sbe_v8_1.entering_trader.dissect(buffer, index, packet, parent)

  -- Executing Trader Optional: 5 Byte Ascii String
  index, executing_trader_optional = b3_equities_binaryentrypoint_sbe_v8_1.executing_trader_optional.dissect(buffer, index, packet, parent)

  -- Desk Id: Struct of 2 fields
  index, desk_id = b3_equities_binaryentrypoint_sbe_v8_1.desk_id.dissect(buffer, index, packet, parent)

  -- Memo: Struct of 2 fields
  index, memo = b3_equities_binaryentrypoint_sbe_v8_1.memo.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Order Cancel Request Message
b3_equities_binaryentrypoint_sbe_v8_1.order_cancel_request_message.dissect = function(buffer, offset, packet, parent)
  -- Optionally add dynamic struct element to protocol tree
  if show.order_cancel_request_message then
    local length = b3_equities_binaryentrypoint_sbe_v8_1.order_cancel_request_message.size(buffer, offset)
    local range = buffer(offset, length)
    local display = b3_equities_binaryentrypoint_sbe_v8_1.order_cancel_request_message.display(buffer, packet, parent)
    parent = parent:add(omi_b3_equities_binaryentrypoint_sbe_v8_1.fields.order_cancel_request_message, range, display)
  end

  return b3_equities_binaryentrypoint_sbe_v8_1.order_cancel_request_message.fields(buffer, offset, packet, parent)
end

-- Custody Allocation Type
b3_equities_binaryentrypoint_sbe_v8_1.custody_allocation_type = {}

-- Size: Custody Allocation Type
b3_equities_binaryentrypoint_sbe_v8_1.custody_allocation_type.size = 4

-- Display: Custody Allocation Type
b3_equities_binaryentrypoint_sbe_v8_1.custody_allocation_type.display = function(value)
  return "Custody Allocation Type: "..value
end

-- Dissect: Custody Allocation Type
b3_equities_binaryentrypoint_sbe_v8_1.custody_allocation_type.dissect = function(buffer, offset, packet, parent)
  local length = b3_equities_binaryentrypoint_sbe_v8_1.custody_allocation_type.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = b3_equities_binaryentrypoint_sbe_v8_1.custody_allocation_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_b3_equities_binaryentrypoint_sbe_v8_1.fields.custody_allocation_type, range, value, display)

  return offset + length, value
end

-- Custody Account
b3_equities_binaryentrypoint_sbe_v8_1.custody_account = {}

-- Size: Custody Account
b3_equities_binaryentrypoint_sbe_v8_1.custody_account.size = 4

-- Display: Custody Account
b3_equities_binaryentrypoint_sbe_v8_1.custody_account.display = function(value)
  return "Custody Account: "..value
end

-- Dissect: Custody Account
b3_equities_binaryentrypoint_sbe_v8_1.custody_account.dissect = function(buffer, offset, packet, parent)
  local length = b3_equities_binaryentrypoint_sbe_v8_1.custody_account.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = b3_equities_binaryentrypoint_sbe_v8_1.custody_account.display(value, buffer, offset, packet, parent)

  parent:add(omi_b3_equities_binaryentrypoint_sbe_v8_1.fields.custody_account, range, value, display)

  return offset + length, value
end

-- Custodian
b3_equities_binaryentrypoint_sbe_v8_1.custodian = {}

-- Size: Custodian
b3_equities_binaryentrypoint_sbe_v8_1.custodian.size = 4

-- Display: Custodian
b3_equities_binaryentrypoint_sbe_v8_1.custodian.display = function(value)
  return "Custodian: "..value
end

-- Dissect: Custodian
b3_equities_binaryentrypoint_sbe_v8_1.custodian.dissect = function(buffer, offset, packet, parent)
  local length = b3_equities_binaryentrypoint_sbe_v8_1.custodian.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = b3_equities_binaryentrypoint_sbe_v8_1.custodian.display(value, buffer, offset, packet, parent)

  parent:add(omi_b3_equities_binaryentrypoint_sbe_v8_1.fields.custodian, range, value, display)

  return offset + length, value
end

-- Custodian Info
b3_equities_binaryentrypoint_sbe_v8_1.custodian_info = {}

-- Calculate size of: Custodian Info
b3_equities_binaryentrypoint_sbe_v8_1.custodian_info.size = function(buffer, offset)
  local index = 0

  index = index + b3_equities_binaryentrypoint_sbe_v8_1.custodian.size

  index = index + b3_equities_binaryentrypoint_sbe_v8_1.custody_account.size

  index = index + b3_equities_binaryentrypoint_sbe_v8_1.custody_allocation_type.size

  return index
end

-- Display: Custodian Info
b3_equities_binaryentrypoint_sbe_v8_1.custodian_info.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Custodian Info
b3_equities_binaryentrypoint_sbe_v8_1.custodian_info.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Custodian: 4 Byte Unsigned Fixed Width Integer
  index, custodian = b3_equities_binaryentrypoint_sbe_v8_1.custodian.dissect(buffer, index, packet, parent)

  -- Custody Account: 4 Byte Unsigned Fixed Width Integer
  index, custody_account = b3_equities_binaryentrypoint_sbe_v8_1.custody_account.dissect(buffer, index, packet, parent)

  -- Custody Allocation Type: 4 Byte Unsigned Fixed Width Integer
  index, custody_allocation_type = b3_equities_binaryentrypoint_sbe_v8_1.custody_allocation_type.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Custodian Info
b3_equities_binaryentrypoint_sbe_v8_1.custodian_info.dissect = function(buffer, offset, packet, parent)
  if show.custodian_info then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_b3_equities_binaryentrypoint_sbe_v8_1.fields.custodian_info, buffer(offset, 0))
    local index = b3_equities_binaryentrypoint_sbe_v8_1.custodian_info.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = b3_equities_binaryentrypoint_sbe_v8_1.custodian_info.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return b3_equities_binaryentrypoint_sbe_v8_1.custodian_info.fields(buffer, offset, packet, parent)
  end
end

-- Routing Instruction
b3_equities_binaryentrypoint_sbe_v8_1.routing_instruction = {}

-- Size: Routing Instruction
b3_equities_binaryentrypoint_sbe_v8_1.routing_instruction.size = 1

-- Display: Routing Instruction
b3_equities_binaryentrypoint_sbe_v8_1.routing_instruction.display = function(value)
  if value == 1 then
    return "Routing Instruction: Retail Liquidity Taker (1)"
  end
  if value == 2 then
    return "Routing Instruction: Waived Priority (2)"
  end
  if value == 3 then
    return "Routing Instruction: Broker Only (3)"
  end
  if value == 4 then
    return "Routing Instruction: Broker Only Removal (4)"
  end
  if value == 0 then
    return "Routing Instruction: No Value"
  end

  return "Routing Instruction: Unknown("..value..")"
end

-- Dissect: Routing Instruction
b3_equities_binaryentrypoint_sbe_v8_1.routing_instruction.dissect = function(buffer, offset, packet, parent)
  local length = b3_equities_binaryentrypoint_sbe_v8_1.routing_instruction.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = b3_equities_binaryentrypoint_sbe_v8_1.routing_instruction.display(value, buffer, offset, packet, parent)

  parent:add(omi_b3_equities_binaryentrypoint_sbe_v8_1.fields.routing_instruction, range, value, display)

  return offset + length, value
end

-- Time In Force Optional
b3_equities_binaryentrypoint_sbe_v8_1.time_in_force_optional = {}

-- Size: Time In Force Optional
b3_equities_binaryentrypoint_sbe_v8_1.time_in_force_optional.size = 1

-- Display: Time In Force Optional
b3_equities_binaryentrypoint_sbe_v8_1.time_in_force_optional.display = function(value)
  -- Check if field has value
  if value == nil or value == 0 then
    return "Time In Force Optional: No Value"
  end

  if value == "0" then
    return "Time In Force Optional: Day (0)"
  end
  if value == "1" then
    return "Time In Force Optional: Good Till Cancel (1)"
  end
  if value == "3" then
    return "Time In Force Optional: Immediate Or Cancel (3)"
  end
  if value == "4" then
    return "Time In Force Optional: Fill Or Kill (4)"
  end
  if value == "6" then
    return "Time In Force Optional: Good Till Date (6)"
  end
  if value == "7" then
    return "Time In Force Optional: At The Close (7)"
  end
  if value == "A" then
    return "Time In Force Optional: Good For Auction (A)"
  end
  if value == 0 then
    return "Time In Force Optional: No Value"
  end

  return "Time In Force Optional: Unknown("..value..")"
end

-- Dissect: Time In Force Optional
b3_equities_binaryentrypoint_sbe_v8_1.time_in_force_optional.dissect = function(buffer, offset, packet, parent)
  local length = b3_equities_binaryentrypoint_sbe_v8_1.time_in_force_optional.size
  local range = buffer(offset, length)

  -- parse as byte
  local value = range:uint()

  -- check if value is non zero
  if value ~= 0 then
    value = range:string()
  end

  local display = b3_equities_binaryentrypoint_sbe_v8_1.time_in_force_optional.display(value, buffer, offset, packet, parent)

  parent:add(omi_b3_equities_binaryentrypoint_sbe_v8_1.fields.time_in_force_optional, range, value, display)

  return offset + length, value
end

-- Self Trade Prevention Instruction
b3_equities_binaryentrypoint_sbe_v8_1.self_trade_prevention_instruction = {}

-- Size: Self Trade Prevention Instruction
b3_equities_binaryentrypoint_sbe_v8_1.self_trade_prevention_instruction.size = 1

-- Display: Self Trade Prevention Instruction
b3_equities_binaryentrypoint_sbe_v8_1.self_trade_prevention_instruction.display = function(value)
  if value == 0 then
    return "Self Trade Prevention Instruction: None (0)"
  end
  if value == 1 then
    return "Self Trade Prevention Instruction: Cancel Aggressor Order (1)"
  end
  if value == 2 then
    return "Self Trade Prevention Instruction: Cancel Resting Order (2)"
  end
  if value == 3 then
    return "Self Trade Prevention Instruction: Cancel Both Orders (3)"
  end

  return "Self Trade Prevention Instruction: Unknown("..value..")"
end

-- Dissect: Self Trade Prevention Instruction
b3_equities_binaryentrypoint_sbe_v8_1.self_trade_prevention_instruction.dissect = function(buffer, offset, packet, parent)
  local length = b3_equities_binaryentrypoint_sbe_v8_1.self_trade_prevention_instruction.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = b3_equities_binaryentrypoint_sbe_v8_1.self_trade_prevention_instruction.display(value, buffer, offset, packet, parent)

  parent:add(omi_b3_equities_binaryentrypoint_sbe_v8_1.fields.self_trade_prevention_instruction, range, value, display)

  return offset + length, value
end

-- Mm Protection Reset Boolean
b3_equities_binaryentrypoint_sbe_v8_1.mm_protection_reset_boolean = {}

-- Size: Mm Protection Reset Boolean
b3_equities_binaryentrypoint_sbe_v8_1.mm_protection_reset_boolean.size = 1

-- Display: Mm Protection Reset Boolean
b3_equities_binaryentrypoint_sbe_v8_1.mm_protection_reset_boolean.display = function(value)
  if value == 0 then
    return "Mm Protection Reset Boolean: False Value (0)"
  end
  if value == 1 then
    return "Mm Protection Reset Boolean: True Value (1)"
  end

  return "Mm Protection Reset Boolean: Unknown("..value..")"
end

-- Dissect: Mm Protection Reset Boolean
b3_equities_binaryentrypoint_sbe_v8_1.mm_protection_reset_boolean.dissect = function(buffer, offset, packet, parent)
  local length = b3_equities_binaryentrypoint_sbe_v8_1.mm_protection_reset_boolean.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = b3_equities_binaryentrypoint_sbe_v8_1.mm_protection_reset_boolean.display(value, buffer, offset, packet, parent)

  parent:add(omi_b3_equities_binaryentrypoint_sbe_v8_1.fields.mm_protection_reset_boolean, range, value, display)

  return offset + length, value
end

-- Order Cancel Replace Request Message
b3_equities_binaryentrypoint_sbe_v8_1.order_cancel_replace_request_message = {}

-- Calculate size of: Order Cancel Replace Request Message
b3_equities_binaryentrypoint_sbe_v8_1.order_cancel_replace_request_message.size = function(buffer, offset)
  local index = 0

  index = index + b3_equities_binaryentrypoint_sbe_v8_1.inbound_business_header.size(buffer, offset + index)

  index = index + b3_equities_binaryentrypoint_sbe_v8_1.ordtagid.size

  index = index + b3_equities_binaryentrypoint_sbe_v8_1.mm_protection_reset_boolean.size

  index = index + b3_equities_binaryentrypoint_sbe_v8_1.clordid.size

  index = index + b3_equities_binaryentrypoint_sbe_v8_1.account.size

  index = index + b3_equities_binaryentrypoint_sbe_v8_1.sender_location.size

  index = index + b3_equities_binaryentrypoint_sbe_v8_1.entering_trader.size

  index = index + b3_equities_binaryentrypoint_sbe_v8_1.self_trade_prevention_instruction.size

  index = index + b3_equities_binaryentrypoint_sbe_v8_1.security_id.size

  index = index + b3_equities_binaryentrypoint_sbe_v8_1.side.size

  index = index + b3_equities_binaryentrypoint_sbe_v8_1.ordtype.size

  index = index + b3_equities_binaryentrypoint_sbe_v8_1.time_in_force_optional.size

  index = index + b3_equities_binaryentrypoint_sbe_v8_1.routing_instruction.size

  index = index + b3_equities_binaryentrypoint_sbe_v8_1.order_qty.size

  index = index + b3_equities_binaryentrypoint_sbe_v8_1.price_optional.size

  index = index + b3_equities_binaryentrypoint_sbe_v8_1.order_id_optional.size

  index = index + b3_equities_binaryentrypoint_sbe_v8_1.origclordid.size

  index = index + b3_equities_binaryentrypoint_sbe_v8_1.stop_px.size

  index = index + b3_equities_binaryentrypoint_sbe_v8_1.min_qty.size

  index = index + b3_equities_binaryentrypoint_sbe_v8_1.max_floor.size

  index = index + b3_equities_binaryentrypoint_sbe_v8_1.executing_trader_optional.size

  index = index + b3_equities_binaryentrypoint_sbe_v8_1.account_type.size

  index = index + b3_equities_binaryentrypoint_sbe_v8_1.expire_date.size

  index = index + b3_equities_binaryentrypoint_sbe_v8_1.custodian_info.size(buffer, offset + index)

  index = index + b3_equities_binaryentrypoint_sbe_v8_1.investor_id.size(buffer, offset + index)

  index = index + b3_equities_binaryentrypoint_sbe_v8_1.strategy_id.size

  index = index + b3_equities_binaryentrypoint_sbe_v8_1.desk_id.size(buffer, offset + index)

  index = index + b3_equities_binaryentrypoint_sbe_v8_1.memo.size(buffer, offset + index)

  return index
end

-- Display: Order Cancel Replace Request Message
b3_equities_binaryentrypoint_sbe_v8_1.order_cancel_replace_request_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Order Cancel Replace Request Message
b3_equities_binaryentrypoint_sbe_v8_1.order_cancel_replace_request_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Inbound Business Header: Struct of 5 fields
  index, inbound_business_header = b3_equities_binaryentrypoint_sbe_v8_1.inbound_business_header.dissect(buffer, index, packet, parent)

  -- OrdTagId: 1 Byte Unsigned Fixed Width Integer
  index, ordtagid = b3_equities_binaryentrypoint_sbe_v8_1.ordtagid.dissect(buffer, index, packet, parent)

  -- Mm Protection Reset Boolean: 1 Byte Unsigned Fixed Width Integer Enum with 2 values
  index, mm_protection_reset_boolean = b3_equities_binaryentrypoint_sbe_v8_1.mm_protection_reset_boolean.dissect(buffer, index, packet, parent)

  -- ClOrdId: 8 Byte Unsigned Fixed Width Integer
  index, clordid = b3_equities_binaryentrypoint_sbe_v8_1.clordid.dissect(buffer, index, packet, parent)

  -- Account: 4 Byte Unsigned Fixed Width Integer
  index, account = b3_equities_binaryentrypoint_sbe_v8_1.account.dissect(buffer, index, packet, parent)

  -- Sender Location: 10 Byte Ascii String
  index, sender_location = b3_equities_binaryentrypoint_sbe_v8_1.sender_location.dissect(buffer, index, packet, parent)

  -- Entering Trader: 5 Byte Ascii String
  index, entering_trader = b3_equities_binaryentrypoint_sbe_v8_1.entering_trader.dissect(buffer, index, packet, parent)

  -- Self Trade Prevention Instruction: 1 Byte Unsigned Fixed Width Integer Enum with 4 values
  index, self_trade_prevention_instruction = b3_equities_binaryentrypoint_sbe_v8_1.self_trade_prevention_instruction.dissect(buffer, index, packet, parent)

  -- Security Id: 8 Byte Unsigned Fixed Width Integer
  index, security_id = b3_equities_binaryentrypoint_sbe_v8_1.security_id.dissect(buffer, index, packet, parent)

  -- Side: 1 Byte Ascii String Enum with 2 values
  index, side = b3_equities_binaryentrypoint_sbe_v8_1.side.dissect(buffer, index, packet, parent)

  -- OrdType: 1 Byte Ascii String Enum with 7 values
  index, ordtype = b3_equities_binaryentrypoint_sbe_v8_1.ordtype.dissect(buffer, index, packet, parent)

  -- Time In Force Optional: 1 Byte Ascii String Enum with 8 values
  index, time_in_force_optional = b3_equities_binaryentrypoint_sbe_v8_1.time_in_force_optional.dissect(buffer, index, packet, parent)

  -- Routing Instruction: 1 Byte Unsigned Fixed Width Integer Enum with 5 values
  index, routing_instruction = b3_equities_binaryentrypoint_sbe_v8_1.routing_instruction.dissect(buffer, index, packet, parent)

  -- Order Qty: 8 Byte Unsigned Fixed Width Integer
  index, order_qty = b3_equities_binaryentrypoint_sbe_v8_1.order_qty.dissect(buffer, index, packet, parent)

  -- Price Optional: 8 Byte Signed Fixed Width Integer Nullable
  index, price_optional = b3_equities_binaryentrypoint_sbe_v8_1.price_optional.dissect(buffer, index, packet, parent)

  -- Order Id Optional: 8 Byte Unsigned Fixed Width Integer
  index, order_id_optional = b3_equities_binaryentrypoint_sbe_v8_1.order_id_optional.dissect(buffer, index, packet, parent)

  -- OrigClOrdId: 8 Byte Unsigned Fixed Width Integer
  index, origclordid = b3_equities_binaryentrypoint_sbe_v8_1.origclordid.dissect(buffer, index, packet, parent)

  -- Stop Px: 8 Byte Signed Fixed Width Integer Nullable
  index, stop_px = b3_equities_binaryentrypoint_sbe_v8_1.stop_px.dissect(buffer, index, packet, parent)

  -- Min Qty: 8 Byte Unsigned Fixed Width Integer
  index, min_qty = b3_equities_binaryentrypoint_sbe_v8_1.min_qty.dissect(buffer, index, packet, parent)

  -- Max Floor: 8 Byte Unsigned Fixed Width Integer
  index, max_floor = b3_equities_binaryentrypoint_sbe_v8_1.max_floor.dissect(buffer, index, packet, parent)

  -- Executing Trader Optional: 5 Byte Ascii String
  index, executing_trader_optional = b3_equities_binaryentrypoint_sbe_v8_1.executing_trader_optional.dissect(buffer, index, packet, parent)

  -- Account Type: 1 Byte Unsigned Fixed Width Integer Enum with 3 values
  index, account_type = b3_equities_binaryentrypoint_sbe_v8_1.account_type.dissect(buffer, index, packet, parent)

  -- Expire Date: 2 Byte Unsigned Fixed Width Integer
  index, expire_date = b3_equities_binaryentrypoint_sbe_v8_1.expire_date.dissect(buffer, index, packet, parent)

  -- Custodian Info: Struct of 3 fields
  index, custodian_info = b3_equities_binaryentrypoint_sbe_v8_1.custodian_info.dissect(buffer, index, packet, parent)

  -- Investor Id: Struct of 2 fields
  index, investor_id = b3_equities_binaryentrypoint_sbe_v8_1.investor_id.dissect(buffer, index, packet, parent)

  -- Strategy Id: 4 Byte Signed Fixed Width Integer Nullable
  index, strategy_id = b3_equities_binaryentrypoint_sbe_v8_1.strategy_id.dissect(buffer, index, packet, parent)

  -- Desk Id: Struct of 2 fields
  index, desk_id = b3_equities_binaryentrypoint_sbe_v8_1.desk_id.dissect(buffer, index, packet, parent)

  -- Memo: Struct of 2 fields
  index, memo = b3_equities_binaryentrypoint_sbe_v8_1.memo.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Order Cancel Replace Request Message
b3_equities_binaryentrypoint_sbe_v8_1.order_cancel_replace_request_message.dissect = function(buffer, offset, packet, parent)
  -- Optionally add dynamic struct element to protocol tree
  if show.order_cancel_replace_request_message then
    local length = b3_equities_binaryentrypoint_sbe_v8_1.order_cancel_replace_request_message.size(buffer, offset)
    local range = buffer(offset, length)
    local display = b3_equities_binaryentrypoint_sbe_v8_1.order_cancel_replace_request_message.display(buffer, packet, parent)
    parent = parent:add(omi_b3_equities_binaryentrypoint_sbe_v8_1.fields.order_cancel_replace_request_message, range, display)
  end

  return b3_equities_binaryentrypoint_sbe_v8_1.order_cancel_replace_request_message.fields(buffer, offset, packet, parent)
end

-- New Order Single Message
b3_equities_binaryentrypoint_sbe_v8_1.new_order_single_message = {}

-- Calculate size of: New Order Single Message
b3_equities_binaryentrypoint_sbe_v8_1.new_order_single_message.size = function(buffer, offset)
  local index = 0

  index = index + b3_equities_binaryentrypoint_sbe_v8_1.inbound_business_header.size(buffer, offset + index)

  index = index + b3_equities_binaryentrypoint_sbe_v8_1.ordtagid.size

  index = index + b3_equities_binaryentrypoint_sbe_v8_1.mm_protection_reset_boolean.size

  index = index + b3_equities_binaryentrypoint_sbe_v8_1.clordid.size

  index = index + b3_equities_binaryentrypoint_sbe_v8_1.account.size

  index = index + b3_equities_binaryentrypoint_sbe_v8_1.sender_location.size

  index = index + b3_equities_binaryentrypoint_sbe_v8_1.entering_trader.size

  index = index + b3_equities_binaryentrypoint_sbe_v8_1.self_trade_prevention_instruction.size

  index = index + b3_equities_binaryentrypoint_sbe_v8_1.security_id.size

  index = index + b3_equities_binaryentrypoint_sbe_v8_1.side.size

  index = index + b3_equities_binaryentrypoint_sbe_v8_1.ordtype.size

  index = index + b3_equities_binaryentrypoint_sbe_v8_1.time_in_force.size

  index = index + b3_equities_binaryentrypoint_sbe_v8_1.routing_instruction.size

  index = index + b3_equities_binaryentrypoint_sbe_v8_1.order_qty.size

  index = index + b3_equities_binaryentrypoint_sbe_v8_1.price_optional.size

  index = index + b3_equities_binaryentrypoint_sbe_v8_1.stop_px.size

  index = index + b3_equities_binaryentrypoint_sbe_v8_1.min_qty.size

  index = index + b3_equities_binaryentrypoint_sbe_v8_1.max_floor.size

  index = index + b3_equities_binaryentrypoint_sbe_v8_1.executing_trader_optional.size

  index = index + b3_equities_binaryentrypoint_sbe_v8_1.expire_date.size

  index = index + b3_equities_binaryentrypoint_sbe_v8_1.custodian_info.size(buffer, offset + index)

  index = index + b3_equities_binaryentrypoint_sbe_v8_1.investor_id.size(buffer, offset + index)

  index = index + b3_equities_binaryentrypoint_sbe_v8_1.strategy_id.size

  index = index + b3_equities_binaryentrypoint_sbe_v8_1.desk_id.size(buffer, offset + index)

  index = index + b3_equities_binaryentrypoint_sbe_v8_1.memo.size(buffer, offset + index)

  return index
end

-- Display: New Order Single Message
b3_equities_binaryentrypoint_sbe_v8_1.new_order_single_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: New Order Single Message
b3_equities_binaryentrypoint_sbe_v8_1.new_order_single_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Inbound Business Header: Struct of 5 fields
  index, inbound_business_header = b3_equities_binaryentrypoint_sbe_v8_1.inbound_business_header.dissect(buffer, index, packet, parent)

  -- OrdTagId: 1 Byte Unsigned Fixed Width Integer
  index, ordtagid = b3_equities_binaryentrypoint_sbe_v8_1.ordtagid.dissect(buffer, index, packet, parent)

  -- Mm Protection Reset Boolean: 1 Byte Unsigned Fixed Width Integer Enum with 2 values
  index, mm_protection_reset_boolean = b3_equities_binaryentrypoint_sbe_v8_1.mm_protection_reset_boolean.dissect(buffer, index, packet, parent)

  -- ClOrdId: 8 Byte Unsigned Fixed Width Integer
  index, clordid = b3_equities_binaryentrypoint_sbe_v8_1.clordid.dissect(buffer, index, packet, parent)

  -- Account: 4 Byte Unsigned Fixed Width Integer
  index, account = b3_equities_binaryentrypoint_sbe_v8_1.account.dissect(buffer, index, packet, parent)

  -- Sender Location: 10 Byte Ascii String
  index, sender_location = b3_equities_binaryentrypoint_sbe_v8_1.sender_location.dissect(buffer, index, packet, parent)

  -- Entering Trader: 5 Byte Ascii String
  index, entering_trader = b3_equities_binaryentrypoint_sbe_v8_1.entering_trader.dissect(buffer, index, packet, parent)

  -- Self Trade Prevention Instruction: 1 Byte Unsigned Fixed Width Integer Enum with 4 values
  index, self_trade_prevention_instruction = b3_equities_binaryentrypoint_sbe_v8_1.self_trade_prevention_instruction.dissect(buffer, index, packet, parent)

  -- Security Id: 8 Byte Unsigned Fixed Width Integer
  index, security_id = b3_equities_binaryentrypoint_sbe_v8_1.security_id.dissect(buffer, index, packet, parent)

  -- Side: 1 Byte Ascii String Enum with 2 values
  index, side = b3_equities_binaryentrypoint_sbe_v8_1.side.dissect(buffer, index, packet, parent)

  -- OrdType: 1 Byte Ascii String Enum with 7 values
  index, ordtype = b3_equities_binaryentrypoint_sbe_v8_1.ordtype.dissect(buffer, index, packet, parent)

  -- Time In Force: 1 Byte Ascii String Enum with 7 values
  index, time_in_force = b3_equities_binaryentrypoint_sbe_v8_1.time_in_force.dissect(buffer, index, packet, parent)

  -- Routing Instruction: 1 Byte Unsigned Fixed Width Integer Enum with 5 values
  index, routing_instruction = b3_equities_binaryentrypoint_sbe_v8_1.routing_instruction.dissect(buffer, index, packet, parent)

  -- Order Qty: 8 Byte Unsigned Fixed Width Integer
  index, order_qty = b3_equities_binaryentrypoint_sbe_v8_1.order_qty.dissect(buffer, index, packet, parent)

  -- Price Optional: 8 Byte Signed Fixed Width Integer Nullable
  index, price_optional = b3_equities_binaryentrypoint_sbe_v8_1.price_optional.dissect(buffer, index, packet, parent)

  -- Stop Px: 8 Byte Signed Fixed Width Integer Nullable
  index, stop_px = b3_equities_binaryentrypoint_sbe_v8_1.stop_px.dissect(buffer, index, packet, parent)

  -- Min Qty: 8 Byte Unsigned Fixed Width Integer
  index, min_qty = b3_equities_binaryentrypoint_sbe_v8_1.min_qty.dissect(buffer, index, packet, parent)

  -- Max Floor: 8 Byte Unsigned Fixed Width Integer
  index, max_floor = b3_equities_binaryentrypoint_sbe_v8_1.max_floor.dissect(buffer, index, packet, parent)

  -- Executing Trader Optional: 5 Byte Ascii String
  index, executing_trader_optional = b3_equities_binaryentrypoint_sbe_v8_1.executing_trader_optional.dissect(buffer, index, packet, parent)

  -- Expire Date: 2 Byte Unsigned Fixed Width Integer
  index, expire_date = b3_equities_binaryentrypoint_sbe_v8_1.expire_date.dissect(buffer, index, packet, parent)

  -- Custodian Info: Struct of 3 fields
  index, custodian_info = b3_equities_binaryentrypoint_sbe_v8_1.custodian_info.dissect(buffer, index, packet, parent)

  -- Investor Id: Struct of 2 fields
  index, investor_id = b3_equities_binaryentrypoint_sbe_v8_1.investor_id.dissect(buffer, index, packet, parent)

  -- Strategy Id: 4 Byte Signed Fixed Width Integer Nullable
  index, strategy_id = b3_equities_binaryentrypoint_sbe_v8_1.strategy_id.dissect(buffer, index, packet, parent)

  -- Desk Id: Struct of 2 fields
  index, desk_id = b3_equities_binaryentrypoint_sbe_v8_1.desk_id.dissect(buffer, index, packet, parent)

  -- Memo: Struct of 2 fields
  index, memo = b3_equities_binaryentrypoint_sbe_v8_1.memo.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: New Order Single Message
b3_equities_binaryentrypoint_sbe_v8_1.new_order_single_message.dissect = function(buffer, offset, packet, parent)
  -- Optionally add dynamic struct element to protocol tree
  if show.new_order_single_message then
    local length = b3_equities_binaryentrypoint_sbe_v8_1.new_order_single_message.size(buffer, offset)
    local range = buffer(offset, length)
    local display = b3_equities_binaryentrypoint_sbe_v8_1.new_order_single_message.display(buffer, packet, parent)
    parent = parent:add(omi_b3_equities_binaryentrypoint_sbe_v8_1.fields.new_order_single_message, range, display)
  end

  return b3_equities_binaryentrypoint_sbe_v8_1.new_order_single_message.fields(buffer, offset, packet, parent)
end

-- Time In Force Simple
b3_equities_binaryentrypoint_sbe_v8_1.time_in_force_simple = {}

-- Size: Time In Force Simple
b3_equities_binaryentrypoint_sbe_v8_1.time_in_force_simple.size = 1

-- Display: Time In Force Simple
b3_equities_binaryentrypoint_sbe_v8_1.time_in_force_simple.display = function(value)
  -- Check if field has value
  if value == nil or value == 0 then
    return "Time In Force Simple: No Value"
  end

  if value == "0" then
    return "Time In Force Simple: Day (0)"
  end
  if value == "3" then
    return "Time In Force Simple: Immediate Or Cancel (3)"
  end
  if value == "4" then
    return "Time In Force Simple: Fill Or Kill (4)"
  end

  return "Time In Force Simple: Unknown("..value..")"
end

-- Dissect: Time In Force Simple
b3_equities_binaryentrypoint_sbe_v8_1.time_in_force_simple.dissect = function(buffer, offset, packet, parent)
  local length = b3_equities_binaryentrypoint_sbe_v8_1.time_in_force_simple.size
  local range = buffer(offset, length)

  -- parse as byte
  local value = range:uint()

  -- check if value is non zero
  if value ~= 0 then
    value = range:string()
  end

  local display = b3_equities_binaryentrypoint_sbe_v8_1.time_in_force_simple.display(value, buffer, offset, packet, parent)

  parent:add(omi_b3_equities_binaryentrypoint_sbe_v8_1.fields.time_in_force_simple, range, value, display)

  return offset + length, value
end

-- Simple OrdType
b3_equities_binaryentrypoint_sbe_v8_1.simple_ordtype = {}

-- Size: Simple OrdType
b3_equities_binaryentrypoint_sbe_v8_1.simple_ordtype.size = 1

-- Display: Simple OrdType
b3_equities_binaryentrypoint_sbe_v8_1.simple_ordtype.display = function(value)
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
b3_equities_binaryentrypoint_sbe_v8_1.simple_ordtype.dissect = function(buffer, offset, packet, parent)
  local length = b3_equities_binaryentrypoint_sbe_v8_1.simple_ordtype.size
  local range = buffer(offset, length)

  -- parse as byte
  local value = range:uint()

  -- check if value is non zero
  if value ~= 0 then
    value = range:string()
  end

  local display = b3_equities_binaryentrypoint_sbe_v8_1.simple_ordtype.display(value, buffer, offset, packet, parent)

  parent:add(omi_b3_equities_binaryentrypoint_sbe_v8_1.fields.simple_ordtype, range, value, display)

  return offset + length, value
end

-- Simple Modify Order Message
b3_equities_binaryentrypoint_sbe_v8_1.simple_modify_order_message = {}

-- Calculate size of: Simple Modify Order Message
b3_equities_binaryentrypoint_sbe_v8_1.simple_modify_order_message.size = function(buffer, offset)
  local index = 0

  index = index + b3_equities_binaryentrypoint_sbe_v8_1.inbound_business_header.size(buffer, offset + index)

  index = index + b3_equities_binaryentrypoint_sbe_v8_1.ordtagid.size

  index = index + b3_equities_binaryentrypoint_sbe_v8_1.mm_protection_reset_boolean.size

  index = index + b3_equities_binaryentrypoint_sbe_v8_1.clordid.size

  index = index + b3_equities_binaryentrypoint_sbe_v8_1.account.size

  index = index + b3_equities_binaryentrypoint_sbe_v8_1.sender_location.size

  index = index + b3_equities_binaryentrypoint_sbe_v8_1.entering_trader.size

  index = index + b3_equities_binaryentrypoint_sbe_v8_1.self_trade_prevention_instruction.size

  index = index + b3_equities_binaryentrypoint_sbe_v8_1.security_id.size

  index = index + b3_equities_binaryentrypoint_sbe_v8_1.side.size

  index = index + b3_equities_binaryentrypoint_sbe_v8_1.simple_ordtype.size

  index = index + b3_equities_binaryentrypoint_sbe_v8_1.time_in_force_simple.size

  index = index + b3_equities_binaryentrypoint_sbe_v8_1.routing_instruction.size

  index = index + b3_equities_binaryentrypoint_sbe_v8_1.order_qty.size

  index = index + b3_equities_binaryentrypoint_sbe_v8_1.price_optional.size

  index = index + b3_equities_binaryentrypoint_sbe_v8_1.order_id_optional.size

  index = index + b3_equities_binaryentrypoint_sbe_v8_1.origclordid.size

  index = index + b3_equities_binaryentrypoint_sbe_v8_1.investor_id.size(buffer, offset + index)

  index = index + b3_equities_binaryentrypoint_sbe_v8_1.memo.size(buffer, offset + index)

  return index
end

-- Display: Simple Modify Order Message
b3_equities_binaryentrypoint_sbe_v8_1.simple_modify_order_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Simple Modify Order Message
b3_equities_binaryentrypoint_sbe_v8_1.simple_modify_order_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Inbound Business Header: Struct of 5 fields
  index, inbound_business_header = b3_equities_binaryentrypoint_sbe_v8_1.inbound_business_header.dissect(buffer, index, packet, parent)

  -- OrdTagId: 1 Byte Unsigned Fixed Width Integer
  index, ordtagid = b3_equities_binaryentrypoint_sbe_v8_1.ordtagid.dissect(buffer, index, packet, parent)

  -- Mm Protection Reset Boolean: 1 Byte Unsigned Fixed Width Integer Enum with 2 values
  index, mm_protection_reset_boolean = b3_equities_binaryentrypoint_sbe_v8_1.mm_protection_reset_boolean.dissect(buffer, index, packet, parent)

  -- ClOrdId: 8 Byte Unsigned Fixed Width Integer
  index, clordid = b3_equities_binaryentrypoint_sbe_v8_1.clordid.dissect(buffer, index, packet, parent)

  -- Account: 4 Byte Unsigned Fixed Width Integer
  index, account = b3_equities_binaryentrypoint_sbe_v8_1.account.dissect(buffer, index, packet, parent)

  -- Sender Location: 10 Byte Ascii String
  index, sender_location = b3_equities_binaryentrypoint_sbe_v8_1.sender_location.dissect(buffer, index, packet, parent)

  -- Entering Trader: 5 Byte Ascii String
  index, entering_trader = b3_equities_binaryentrypoint_sbe_v8_1.entering_trader.dissect(buffer, index, packet, parent)

  -- Self Trade Prevention Instruction: 1 Byte Unsigned Fixed Width Integer Enum with 4 values
  index, self_trade_prevention_instruction = b3_equities_binaryentrypoint_sbe_v8_1.self_trade_prevention_instruction.dissect(buffer, index, packet, parent)

  -- Security Id: 8 Byte Unsigned Fixed Width Integer
  index, security_id = b3_equities_binaryentrypoint_sbe_v8_1.security_id.dissect(buffer, index, packet, parent)

  -- Side: 1 Byte Ascii String Enum with 2 values
  index, side = b3_equities_binaryentrypoint_sbe_v8_1.side.dissect(buffer, index, packet, parent)

  -- Simple OrdType: 1 Byte Ascii String Enum with 2 values
  index, simple_ordtype = b3_equities_binaryentrypoint_sbe_v8_1.simple_ordtype.dissect(buffer, index, packet, parent)

  -- Time In Force Simple: 1 Byte Ascii String Enum with 3 values
  index, time_in_force_simple = b3_equities_binaryentrypoint_sbe_v8_1.time_in_force_simple.dissect(buffer, index, packet, parent)

  -- Routing Instruction: 1 Byte Unsigned Fixed Width Integer Enum with 5 values
  index, routing_instruction = b3_equities_binaryentrypoint_sbe_v8_1.routing_instruction.dissect(buffer, index, packet, parent)

  -- Order Qty: 8 Byte Unsigned Fixed Width Integer
  index, order_qty = b3_equities_binaryentrypoint_sbe_v8_1.order_qty.dissect(buffer, index, packet, parent)

  -- Price Optional: 8 Byte Signed Fixed Width Integer Nullable
  index, price_optional = b3_equities_binaryentrypoint_sbe_v8_1.price_optional.dissect(buffer, index, packet, parent)

  -- Order Id Optional: 8 Byte Unsigned Fixed Width Integer
  index, order_id_optional = b3_equities_binaryentrypoint_sbe_v8_1.order_id_optional.dissect(buffer, index, packet, parent)

  -- OrigClOrdId: 8 Byte Unsigned Fixed Width Integer
  index, origclordid = b3_equities_binaryentrypoint_sbe_v8_1.origclordid.dissect(buffer, index, packet, parent)

  -- Investor Id: Struct of 2 fields
  index, investor_id = b3_equities_binaryentrypoint_sbe_v8_1.investor_id.dissect(buffer, index, packet, parent)

  -- Memo: Struct of 2 fields
  index, memo = b3_equities_binaryentrypoint_sbe_v8_1.memo.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Simple Modify Order Message
b3_equities_binaryentrypoint_sbe_v8_1.simple_modify_order_message.dissect = function(buffer, offset, packet, parent)
  -- Optionally add dynamic struct element to protocol tree
  if show.simple_modify_order_message then
    local length = b3_equities_binaryentrypoint_sbe_v8_1.simple_modify_order_message.size(buffer, offset)
    local range = buffer(offset, length)
    local display = b3_equities_binaryentrypoint_sbe_v8_1.simple_modify_order_message.display(buffer, packet, parent)
    parent = parent:add(omi_b3_equities_binaryentrypoint_sbe_v8_1.fields.simple_modify_order_message, range, display)
  end

  return b3_equities_binaryentrypoint_sbe_v8_1.simple_modify_order_message.fields(buffer, offset, packet, parent)
end

-- Simple New Order Message
b3_equities_binaryentrypoint_sbe_v8_1.simple_new_order_message = {}

-- Calculate size of: Simple New Order Message
b3_equities_binaryentrypoint_sbe_v8_1.simple_new_order_message.size = function(buffer, offset)
  local index = 0

  index = index + b3_equities_binaryentrypoint_sbe_v8_1.inbound_business_header.size(buffer, offset + index)

  index = index + b3_equities_binaryentrypoint_sbe_v8_1.ordtagid.size

  index = index + b3_equities_binaryentrypoint_sbe_v8_1.mm_protection_reset_boolean.size

  index = index + b3_equities_binaryentrypoint_sbe_v8_1.clordid.size

  index = index + b3_equities_binaryentrypoint_sbe_v8_1.account.size

  index = index + b3_equities_binaryentrypoint_sbe_v8_1.sender_location.size

  index = index + b3_equities_binaryentrypoint_sbe_v8_1.entering_trader.size

  index = index + b3_equities_binaryentrypoint_sbe_v8_1.self_trade_prevention_instruction.size

  index = index + b3_equities_binaryentrypoint_sbe_v8_1.security_id.size

  index = index + b3_equities_binaryentrypoint_sbe_v8_1.side.size

  index = index + b3_equities_binaryentrypoint_sbe_v8_1.simple_ordtype.size

  index = index + b3_equities_binaryentrypoint_sbe_v8_1.time_in_force_simple.size

  index = index + b3_equities_binaryentrypoint_sbe_v8_1.routing_instruction.size

  index = index + b3_equities_binaryentrypoint_sbe_v8_1.order_qty.size

  index = index + b3_equities_binaryentrypoint_sbe_v8_1.price_optional.size

  index = index + b3_equities_binaryentrypoint_sbe_v8_1.investor_id.size(buffer, offset + index)

  index = index + b3_equities_binaryentrypoint_sbe_v8_1.memo.size(buffer, offset + index)

  return index
end

-- Display: Simple New Order Message
b3_equities_binaryentrypoint_sbe_v8_1.simple_new_order_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Simple New Order Message
b3_equities_binaryentrypoint_sbe_v8_1.simple_new_order_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Inbound Business Header: Struct of 5 fields
  index, inbound_business_header = b3_equities_binaryentrypoint_sbe_v8_1.inbound_business_header.dissect(buffer, index, packet, parent)

  -- OrdTagId: 1 Byte Unsigned Fixed Width Integer
  index, ordtagid = b3_equities_binaryentrypoint_sbe_v8_1.ordtagid.dissect(buffer, index, packet, parent)

  -- Mm Protection Reset Boolean: 1 Byte Unsigned Fixed Width Integer Enum with 2 values
  index, mm_protection_reset_boolean = b3_equities_binaryentrypoint_sbe_v8_1.mm_protection_reset_boolean.dissect(buffer, index, packet, parent)

  -- ClOrdId: 8 Byte Unsigned Fixed Width Integer
  index, clordid = b3_equities_binaryentrypoint_sbe_v8_1.clordid.dissect(buffer, index, packet, parent)

  -- Account: 4 Byte Unsigned Fixed Width Integer
  index, account = b3_equities_binaryentrypoint_sbe_v8_1.account.dissect(buffer, index, packet, parent)

  -- Sender Location: 10 Byte Ascii String
  index, sender_location = b3_equities_binaryentrypoint_sbe_v8_1.sender_location.dissect(buffer, index, packet, parent)

  -- Entering Trader: 5 Byte Ascii String
  index, entering_trader = b3_equities_binaryentrypoint_sbe_v8_1.entering_trader.dissect(buffer, index, packet, parent)

  -- Self Trade Prevention Instruction: 1 Byte Unsigned Fixed Width Integer Enum with 4 values
  index, self_trade_prevention_instruction = b3_equities_binaryentrypoint_sbe_v8_1.self_trade_prevention_instruction.dissect(buffer, index, packet, parent)

  -- Security Id: 8 Byte Unsigned Fixed Width Integer
  index, security_id = b3_equities_binaryentrypoint_sbe_v8_1.security_id.dissect(buffer, index, packet, parent)

  -- Side: 1 Byte Ascii String Enum with 2 values
  index, side = b3_equities_binaryentrypoint_sbe_v8_1.side.dissect(buffer, index, packet, parent)

  -- Simple OrdType: 1 Byte Ascii String Enum with 2 values
  index, simple_ordtype = b3_equities_binaryentrypoint_sbe_v8_1.simple_ordtype.dissect(buffer, index, packet, parent)

  -- Time In Force Simple: 1 Byte Ascii String Enum with 3 values
  index, time_in_force_simple = b3_equities_binaryentrypoint_sbe_v8_1.time_in_force_simple.dissect(buffer, index, packet, parent)

  -- Routing Instruction: 1 Byte Unsigned Fixed Width Integer Enum with 5 values
  index, routing_instruction = b3_equities_binaryentrypoint_sbe_v8_1.routing_instruction.dissect(buffer, index, packet, parent)

  -- Order Qty: 8 Byte Unsigned Fixed Width Integer
  index, order_qty = b3_equities_binaryentrypoint_sbe_v8_1.order_qty.dissect(buffer, index, packet, parent)

  -- Price Optional: 8 Byte Signed Fixed Width Integer Nullable
  index, price_optional = b3_equities_binaryentrypoint_sbe_v8_1.price_optional.dissect(buffer, index, packet, parent)

  -- Investor Id: Struct of 2 fields
  index, investor_id = b3_equities_binaryentrypoint_sbe_v8_1.investor_id.dissect(buffer, index, packet, parent)

  -- Memo: Struct of 2 fields
  index, memo = b3_equities_binaryentrypoint_sbe_v8_1.memo.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Simple New Order Message
b3_equities_binaryentrypoint_sbe_v8_1.simple_new_order_message.dissect = function(buffer, offset, packet, parent)
  -- Optionally add dynamic struct element to protocol tree
  if show.simple_new_order_message then
    local length = b3_equities_binaryentrypoint_sbe_v8_1.simple_new_order_message.size(buffer, offset)
    local range = buffer(offset, length)
    local display = b3_equities_binaryentrypoint_sbe_v8_1.simple_new_order_message.display(buffer, packet, parent)
    parent = parent:add(omi_b3_equities_binaryentrypoint_sbe_v8_1.fields.simple_new_order_message, range, display)
  end

  return b3_equities_binaryentrypoint_sbe_v8_1.simple_new_order_message.fields(buffer, offset, packet, parent)
end

-- Retransmit Reject Code
b3_equities_binaryentrypoint_sbe_v8_1.retransmit_reject_code = {}

-- Size: Retransmit Reject Code
b3_equities_binaryentrypoint_sbe_v8_1.retransmit_reject_code.size = 1

-- Display: Retransmit Reject Code
b3_equities_binaryentrypoint_sbe_v8_1.retransmit_reject_code.display = function(value)
  if value == 0 then
    return "Retransmit Reject Code: Out Of Range (0)"
  end
  if value == 1 then
    return "Retransmit Reject Code: Invalid Session (1)"
  end
  if value == 2 then
    return "Retransmit Reject Code: Request Limit Exceeded (2)"
  end
  if value == 3 then
    return "Retransmit Reject Code: Retransmit In Progress (3)"
  end
  if value == 4 then
    return "Retransmit Reject Code: Invalid Timestamp (4)"
  end
  if value == 5 then
    return "Retransmit Reject Code: Invalid Fromseqno (5)"
  end
  if value == 9 then
    return "Retransmit Reject Code: Invalid Count (9)"
  end
  if value == 10 then
    return "Retransmit Reject Code: Throttle Reject (10)"
  end
  if value == 11 then
    return "Retransmit Reject Code: System Busy (11)"
  end

  return "Retransmit Reject Code: Unknown("..value..")"
end

-- Dissect: Retransmit Reject Code
b3_equities_binaryentrypoint_sbe_v8_1.retransmit_reject_code.dissect = function(buffer, offset, packet, parent)
  local length = b3_equities_binaryentrypoint_sbe_v8_1.retransmit_reject_code.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = b3_equities_binaryentrypoint_sbe_v8_1.retransmit_reject_code.display(value, buffer, offset, packet, parent)

  parent:add(omi_b3_equities_binaryentrypoint_sbe_v8_1.fields.retransmit_reject_code, range, value, display)

  return offset + length, value
end

-- Request Timestamp
b3_equities_binaryentrypoint_sbe_v8_1.request_timestamp = {}

-- Size: Request Timestamp
b3_equities_binaryentrypoint_sbe_v8_1.request_timestamp.size = 8

-- Display: Request Timestamp
b3_equities_binaryentrypoint_sbe_v8_1.request_timestamp.display = function(value)
  return "Request Timestamp: "..value
end

-- Dissect: Request Timestamp
b3_equities_binaryentrypoint_sbe_v8_1.request_timestamp.dissect = function(buffer, offset, packet, parent)
  local length = b3_equities_binaryentrypoint_sbe_v8_1.request_timestamp.size
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = b3_equities_binaryentrypoint_sbe_v8_1.request_timestamp.display(value, buffer, offset, packet, parent)

  parent:add(omi_b3_equities_binaryentrypoint_sbe_v8_1.fields.request_timestamp, range, value, display)

  return offset + length, value
end

-- Retransmit Reject Message
b3_equities_binaryentrypoint_sbe_v8_1.retransmit_reject_message = {}

-- Calculate size of: Retransmit Reject Message
b3_equities_binaryentrypoint_sbe_v8_1.retransmit_reject_message.size = function(buffer, offset)
  local index = 0

  index = index + b3_equities_binaryentrypoint_sbe_v8_1.session_id.size

  index = index + b3_equities_binaryentrypoint_sbe_v8_1.request_timestamp.size

  index = index + b3_equities_binaryentrypoint_sbe_v8_1.retransmit_reject_code.size

  return index
end

-- Display: Retransmit Reject Message
b3_equities_binaryentrypoint_sbe_v8_1.retransmit_reject_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Retransmit Reject Message
b3_equities_binaryentrypoint_sbe_v8_1.retransmit_reject_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Session Id: 4 Byte Unsigned Fixed Width Integer
  index, session_id = b3_equities_binaryentrypoint_sbe_v8_1.session_id.dissect(buffer, index, packet, parent)

  -- Request Timestamp: 8 Byte Unsigned Fixed Width Integer
  index, request_timestamp = b3_equities_binaryentrypoint_sbe_v8_1.request_timestamp.dissect(buffer, index, packet, parent)

  -- Retransmit Reject Code: 1 Byte Unsigned Fixed Width Integer Enum with 9 values
  index, retransmit_reject_code = b3_equities_binaryentrypoint_sbe_v8_1.retransmit_reject_code.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Retransmit Reject Message
b3_equities_binaryentrypoint_sbe_v8_1.retransmit_reject_message.dissect = function(buffer, offset, packet, parent)
  if show.retransmit_reject_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_b3_equities_binaryentrypoint_sbe_v8_1.fields.retransmit_reject_message, buffer(offset, 0))
    local index = b3_equities_binaryentrypoint_sbe_v8_1.retransmit_reject_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = b3_equities_binaryentrypoint_sbe_v8_1.retransmit_reject_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return b3_equities_binaryentrypoint_sbe_v8_1.retransmit_reject_message.fields(buffer, offset, packet, parent)
  end
end

-- Count
b3_equities_binaryentrypoint_sbe_v8_1.count = {}

-- Size: Count
b3_equities_binaryentrypoint_sbe_v8_1.count.size = 4

-- Display: Count
b3_equities_binaryentrypoint_sbe_v8_1.count.display = function(value)
  return "Count: "..value
end

-- Dissect: Count
b3_equities_binaryentrypoint_sbe_v8_1.count.dissect = function(buffer, offset, packet, parent)
  local length = b3_equities_binaryentrypoint_sbe_v8_1.count.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = b3_equities_binaryentrypoint_sbe_v8_1.count.display(value, buffer, offset, packet, parent)

  parent:add(omi_b3_equities_binaryentrypoint_sbe_v8_1.fields.count, range, value, display)

  return offset + length, value
end

-- Next Seq No
b3_equities_binaryentrypoint_sbe_v8_1.next_seq_no = {}

-- Size: Next Seq No
b3_equities_binaryentrypoint_sbe_v8_1.next_seq_no.size = 4

-- Display: Next Seq No
b3_equities_binaryentrypoint_sbe_v8_1.next_seq_no.display = function(value)
  return "Next Seq No: "..value
end

-- Dissect: Next Seq No
b3_equities_binaryentrypoint_sbe_v8_1.next_seq_no.dissect = function(buffer, offset, packet, parent)
  local length = b3_equities_binaryentrypoint_sbe_v8_1.next_seq_no.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = b3_equities_binaryentrypoint_sbe_v8_1.next_seq_no.display(value, buffer, offset, packet, parent)

  parent:add(omi_b3_equities_binaryentrypoint_sbe_v8_1.fields.next_seq_no, range, value, display)

  return offset + length, value
end

-- Retransmission Message
b3_equities_binaryentrypoint_sbe_v8_1.retransmission_message = {}

-- Calculate size of: Retransmission Message
b3_equities_binaryentrypoint_sbe_v8_1.retransmission_message.size = function(buffer, offset)
  local index = 0

  index = index + b3_equities_binaryentrypoint_sbe_v8_1.session_id.size

  index = index + b3_equities_binaryentrypoint_sbe_v8_1.request_timestamp.size

  index = index + b3_equities_binaryentrypoint_sbe_v8_1.next_seq_no.size

  index = index + b3_equities_binaryentrypoint_sbe_v8_1.count.size

  return index
end

-- Display: Retransmission Message
b3_equities_binaryentrypoint_sbe_v8_1.retransmission_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Retransmission Message
b3_equities_binaryentrypoint_sbe_v8_1.retransmission_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Session Id: 4 Byte Unsigned Fixed Width Integer
  index, session_id = b3_equities_binaryentrypoint_sbe_v8_1.session_id.dissect(buffer, index, packet, parent)

  -- Request Timestamp: 8 Byte Unsigned Fixed Width Integer
  index, request_timestamp = b3_equities_binaryentrypoint_sbe_v8_1.request_timestamp.dissect(buffer, index, packet, parent)

  -- Next Seq No: 4 Byte Unsigned Fixed Width Integer
  index, next_seq_no = b3_equities_binaryentrypoint_sbe_v8_1.next_seq_no.dissect(buffer, index, packet, parent)

  -- Count: 4 Byte Unsigned Fixed Width Integer
  index, count = b3_equities_binaryentrypoint_sbe_v8_1.count.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Retransmission Message
b3_equities_binaryentrypoint_sbe_v8_1.retransmission_message.dissect = function(buffer, offset, packet, parent)
  if show.retransmission_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_b3_equities_binaryentrypoint_sbe_v8_1.fields.retransmission_message, buffer(offset, 0))
    local index = b3_equities_binaryentrypoint_sbe_v8_1.retransmission_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = b3_equities_binaryentrypoint_sbe_v8_1.retransmission_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return b3_equities_binaryentrypoint_sbe_v8_1.retransmission_message.fields(buffer, offset, packet, parent)
  end
end

-- From Seq No
b3_equities_binaryentrypoint_sbe_v8_1.from_seq_no = {}

-- Size: From Seq No
b3_equities_binaryentrypoint_sbe_v8_1.from_seq_no.size = 4

-- Display: From Seq No
b3_equities_binaryentrypoint_sbe_v8_1.from_seq_no.display = function(value)
  return "From Seq No: "..value
end

-- Dissect: From Seq No
b3_equities_binaryentrypoint_sbe_v8_1.from_seq_no.dissect = function(buffer, offset, packet, parent)
  local length = b3_equities_binaryentrypoint_sbe_v8_1.from_seq_no.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = b3_equities_binaryentrypoint_sbe_v8_1.from_seq_no.display(value, buffer, offset, packet, parent)

  parent:add(omi_b3_equities_binaryentrypoint_sbe_v8_1.fields.from_seq_no, range, value, display)

  return offset + length, value
end

-- Timestamp
b3_equities_binaryentrypoint_sbe_v8_1.timestamp = {}

-- Size: Timestamp
b3_equities_binaryentrypoint_sbe_v8_1.timestamp.size = 8

-- Display: Timestamp
b3_equities_binaryentrypoint_sbe_v8_1.timestamp.display = function(value)
  return "Timestamp: "..value
end

-- Dissect: Timestamp
b3_equities_binaryentrypoint_sbe_v8_1.timestamp.dissect = function(buffer, offset, packet, parent)
  local length = b3_equities_binaryentrypoint_sbe_v8_1.timestamp.size
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = b3_equities_binaryentrypoint_sbe_v8_1.timestamp.display(value, buffer, offset, packet, parent)

  parent:add(omi_b3_equities_binaryentrypoint_sbe_v8_1.fields.timestamp, range, value, display)

  return offset + length, value
end

-- Retransmit Request Message
b3_equities_binaryentrypoint_sbe_v8_1.retransmit_request_message = {}

-- Calculate size of: Retransmit Request Message
b3_equities_binaryentrypoint_sbe_v8_1.retransmit_request_message.size = function(buffer, offset)
  local index = 0

  index = index + b3_equities_binaryentrypoint_sbe_v8_1.session_id.size

  index = index + b3_equities_binaryentrypoint_sbe_v8_1.timestamp.size

  index = index + b3_equities_binaryentrypoint_sbe_v8_1.from_seq_no.size

  index = index + b3_equities_binaryentrypoint_sbe_v8_1.count.size

  return index
end

-- Display: Retransmit Request Message
b3_equities_binaryentrypoint_sbe_v8_1.retransmit_request_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Retransmit Request Message
b3_equities_binaryentrypoint_sbe_v8_1.retransmit_request_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Session Id: 4 Byte Unsigned Fixed Width Integer
  index, session_id = b3_equities_binaryentrypoint_sbe_v8_1.session_id.dissect(buffer, index, packet, parent)

  -- Timestamp: 8 Byte Unsigned Fixed Width Integer
  index, timestamp = b3_equities_binaryentrypoint_sbe_v8_1.timestamp.dissect(buffer, index, packet, parent)

  -- From Seq No: 4 Byte Unsigned Fixed Width Integer
  index, from_seq_no = b3_equities_binaryentrypoint_sbe_v8_1.from_seq_no.dissect(buffer, index, packet, parent)

  -- Count: 4 Byte Unsigned Fixed Width Integer
  index, count = b3_equities_binaryentrypoint_sbe_v8_1.count.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Retransmit Request Message
b3_equities_binaryentrypoint_sbe_v8_1.retransmit_request_message.dissect = function(buffer, offset, packet, parent)
  if show.retransmit_request_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_b3_equities_binaryentrypoint_sbe_v8_1.fields.retransmit_request_message, buffer(offset, 0))
    local index = b3_equities_binaryentrypoint_sbe_v8_1.retransmit_request_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = b3_equities_binaryentrypoint_sbe_v8_1.retransmit_request_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return b3_equities_binaryentrypoint_sbe_v8_1.retransmit_request_message.fields(buffer, offset, packet, parent)
  end
end

-- Sequence Message
b3_equities_binaryentrypoint_sbe_v8_1.sequence_message = {}

-- Calculate size of: Sequence Message
b3_equities_binaryentrypoint_sbe_v8_1.sequence_message.size = function(buffer, offset)
  local index = 0

  index = index + b3_equities_binaryentrypoint_sbe_v8_1.next_seq_no.size

  return index
end

-- Display: Sequence Message
b3_equities_binaryentrypoint_sbe_v8_1.sequence_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Sequence Message
b3_equities_binaryentrypoint_sbe_v8_1.sequence_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Next Seq No: 4 Byte Unsigned Fixed Width Integer
  index, next_seq_no = b3_equities_binaryentrypoint_sbe_v8_1.next_seq_no.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Sequence Message
b3_equities_binaryentrypoint_sbe_v8_1.sequence_message.dissect = function(buffer, offset, packet, parent)
  if show.sequence_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_b3_equities_binaryentrypoint_sbe_v8_1.fields.sequence_message, buffer(offset, 0))
    local index = b3_equities_binaryentrypoint_sbe_v8_1.sequence_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = b3_equities_binaryentrypoint_sbe_v8_1.sequence_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return b3_equities_binaryentrypoint_sbe_v8_1.sequence_message.fields(buffer, offset, packet, parent)
  end
end

-- Not Applied Message
b3_equities_binaryentrypoint_sbe_v8_1.not_applied_message = {}

-- Calculate size of: Not Applied Message
b3_equities_binaryentrypoint_sbe_v8_1.not_applied_message.size = function(buffer, offset)
  local index = 0

  index = index + b3_equities_binaryentrypoint_sbe_v8_1.from_seq_no.size

  index = index + b3_equities_binaryentrypoint_sbe_v8_1.count.size

  return index
end

-- Display: Not Applied Message
b3_equities_binaryentrypoint_sbe_v8_1.not_applied_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Not Applied Message
b3_equities_binaryentrypoint_sbe_v8_1.not_applied_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- From Seq No: 4 Byte Unsigned Fixed Width Integer
  index, from_seq_no = b3_equities_binaryentrypoint_sbe_v8_1.from_seq_no.dissect(buffer, index, packet, parent)

  -- Count: 4 Byte Unsigned Fixed Width Integer
  index, count = b3_equities_binaryentrypoint_sbe_v8_1.count.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Not Applied Message
b3_equities_binaryentrypoint_sbe_v8_1.not_applied_message.dissect = function(buffer, offset, packet, parent)
  if show.not_applied_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_b3_equities_binaryentrypoint_sbe_v8_1.fields.not_applied_message, buffer(offset, 0))
    local index = b3_equities_binaryentrypoint_sbe_v8_1.not_applied_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = b3_equities_binaryentrypoint_sbe_v8_1.not_applied_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return b3_equities_binaryentrypoint_sbe_v8_1.not_applied_message.fields(buffer, offset, packet, parent)
  end
end

-- Termination Code
b3_equities_binaryentrypoint_sbe_v8_1.termination_code = {}

-- Size: Termination Code
b3_equities_binaryentrypoint_sbe_v8_1.termination_code.size = 1

-- Display: Termination Code
b3_equities_binaryentrypoint_sbe_v8_1.termination_code.display = function(value)
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
    return "Termination Code: Not Established (3)"
  end
  if value == 4 then
    return "Termination Code: Session Blocked (4)"
  end
  if value == 5 then
    return "Termination Code: Negotiation In Progress (5)"
  end
  if value == 6 then
    return "Termination Code: Establish In Progress (6)"
  end
  if value == 10 then
    return "Termination Code: Keepalive Interval Lapsed (10)"
  end
  if value == 11 then
    return "Termination Code: Invalid Sessionid (11)"
  end
  if value == 12 then
    return "Termination Code: Invalid Sessionverid (12)"
  end
  if value == 13 then
    return "Termination Code: Invalid Timestamp (13)"
  end
  if value == 14 then
    return "Termination Code: Invalid Nextseqno (14)"
  end
  if value == 15 then
    return "Termination Code: Unrecognized Message (15)"
  end
  if value == 16 then
    return "Termination Code: Invalid Sofh (16)"
  end
  if value == 17 then
    return "Termination Code: Decoding Error (17)"
  end
  if value == 20 then
    return "Termination Code: Terminate Not Allowed (20)"
  end
  if value == 21 then
    return "Termination Code: Terminate In Progress (21)"
  end
  if value == 23 then
    return "Termination Code: Protocol Version Not Supported (23)"
  end
  if value == 30 then
    return "Termination Code: Backup Takeover In Progress (30)"
  end

  return "Termination Code: Unknown("..value..")"
end

-- Dissect: Termination Code
b3_equities_binaryentrypoint_sbe_v8_1.termination_code.dissect = function(buffer, offset, packet, parent)
  local length = b3_equities_binaryentrypoint_sbe_v8_1.termination_code.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = b3_equities_binaryentrypoint_sbe_v8_1.termination_code.display(value, buffer, offset, packet, parent)

  parent:add(omi_b3_equities_binaryentrypoint_sbe_v8_1.fields.termination_code, range, value, display)

  return offset + length, value
end

-- Session Ver Id
b3_equities_binaryentrypoint_sbe_v8_1.session_ver_id = {}

-- Size: Session Ver Id
b3_equities_binaryentrypoint_sbe_v8_1.session_ver_id.size = 8

-- Display: Session Ver Id
b3_equities_binaryentrypoint_sbe_v8_1.session_ver_id.display = function(value)
  return "Session Ver Id: "..value
end

-- Dissect: Session Ver Id
b3_equities_binaryentrypoint_sbe_v8_1.session_ver_id.dissect = function(buffer, offset, packet, parent)
  local length = b3_equities_binaryentrypoint_sbe_v8_1.session_ver_id.size
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = b3_equities_binaryentrypoint_sbe_v8_1.session_ver_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_b3_equities_binaryentrypoint_sbe_v8_1.fields.session_ver_id, range, value, display)

  return offset + length, value
end

-- Terminate Message
b3_equities_binaryentrypoint_sbe_v8_1.terminate_message = {}

-- Calculate size of: Terminate Message
b3_equities_binaryentrypoint_sbe_v8_1.terminate_message.size = function(buffer, offset)
  local index = 0

  index = index + b3_equities_binaryentrypoint_sbe_v8_1.session_id.size

  index = index + b3_equities_binaryentrypoint_sbe_v8_1.session_ver_id.size

  index = index + b3_equities_binaryentrypoint_sbe_v8_1.termination_code.size

  return index
end

-- Display: Terminate Message
b3_equities_binaryentrypoint_sbe_v8_1.terminate_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Terminate Message
b3_equities_binaryentrypoint_sbe_v8_1.terminate_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Session Id: 4 Byte Unsigned Fixed Width Integer
  index, session_id = b3_equities_binaryentrypoint_sbe_v8_1.session_id.dissect(buffer, index, packet, parent)

  -- Session Ver Id: 8 Byte Unsigned Fixed Width Integer
  index, session_ver_id = b3_equities_binaryentrypoint_sbe_v8_1.session_ver_id.dissect(buffer, index, packet, parent)

  -- Termination Code: 1 Byte Unsigned Fixed Width Integer Enum with 19 values
  index, termination_code = b3_equities_binaryentrypoint_sbe_v8_1.termination_code.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Terminate Message
b3_equities_binaryentrypoint_sbe_v8_1.terminate_message.dissect = function(buffer, offset, packet, parent)
  if show.terminate_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_b3_equities_binaryentrypoint_sbe_v8_1.fields.terminate_message, buffer(offset, 0))
    local index = b3_equities_binaryentrypoint_sbe_v8_1.terminate_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = b3_equities_binaryentrypoint_sbe_v8_1.terminate_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return b3_equities_binaryentrypoint_sbe_v8_1.terminate_message.fields(buffer, offset, packet, parent)
  end
end

-- Last Incoming Seq No Optional
b3_equities_binaryentrypoint_sbe_v8_1.last_incoming_seq_no_optional = {}

-- Size: Last Incoming Seq No Optional
b3_equities_binaryentrypoint_sbe_v8_1.last_incoming_seq_no_optional.size = 4

-- Display: Last Incoming Seq No Optional
b3_equities_binaryentrypoint_sbe_v8_1.last_incoming_seq_no_optional.display = function(value)
  return "Last Incoming Seq No Optional: "..value
end

-- Dissect: Last Incoming Seq No Optional
b3_equities_binaryentrypoint_sbe_v8_1.last_incoming_seq_no_optional.dissect = function(buffer, offset, packet, parent)
  local length = b3_equities_binaryentrypoint_sbe_v8_1.last_incoming_seq_no_optional.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = b3_equities_binaryentrypoint_sbe_v8_1.last_incoming_seq_no_optional.display(value, buffer, offset, packet, parent)

  parent:add(omi_b3_equities_binaryentrypoint_sbe_v8_1.fields.last_incoming_seq_no_optional, range, value, display)

  return offset + length, value
end

-- Offset 21 Padding 1
b3_equities_binaryentrypoint_sbe_v8_1.offset_21_padding_1 = {}

-- Size: Offset 21 Padding 1
b3_equities_binaryentrypoint_sbe_v8_1.offset_21_padding_1.size = 1

-- Display: Offset 21 Padding 1
b3_equities_binaryentrypoint_sbe_v8_1.offset_21_padding_1.display = function(value)
  return "Offset 21 Padding 1: "..value
end

-- Dissect: Offset 21 Padding 1
b3_equities_binaryentrypoint_sbe_v8_1.offset_21_padding_1.dissect = function(buffer, offset, packet, parent)
  local length = b3_equities_binaryentrypoint_sbe_v8_1.offset_21_padding_1.size
  local range = buffer(offset, length)
  local value = range:bytes():tohex(false, " ")
  local display = b3_equities_binaryentrypoint_sbe_v8_1.offset_21_padding_1.display(value, buffer, offset, packet, parent)

  parent:add(omi_b3_equities_binaryentrypoint_sbe_v8_1.fields.offset_21_padding_1, range, value, display)

  return offset + length, value
end

-- Establishment Reject Code
b3_equities_binaryentrypoint_sbe_v8_1.establishment_reject_code = {}

-- Size: Establishment Reject Code
b3_equities_binaryentrypoint_sbe_v8_1.establishment_reject_code.size = 1

-- Display: Establishment Reject Code
b3_equities_binaryentrypoint_sbe_v8_1.establishment_reject_code.display = function(value)
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
    return "Establishment Reject Code: Already Established (3)"
  end
  if value == 4 then
    return "Establishment Reject Code: Session Blocked (4)"
  end
  if value == 5 then
    return "Establishment Reject Code: Invalid Sessionid (5)"
  end
  if value == 6 then
    return "Establishment Reject Code: Invalid Sessionverid (6)"
  end
  if value == 7 then
    return "Establishment Reject Code: Invalid Timestamp (7)"
  end
  if value == 8 then
    return "Establishment Reject Code: Invalid Keepalive Interval (8)"
  end
  if value == 9 then
    return "Establishment Reject Code: Invalid Nextseqno (9)"
  end
  if value == 10 then
    return "Establishment Reject Code: Establish Attempts Exceeded (10)"
  end
  if value == 20 then
    return "Establishment Reject Code: Establish Not Allowed (20)"
  end
  if value == 21 then
    return "Establishment Reject Code: Duplicate Session Connection (21)"
  end
  if value == 22 then
    return "Establishment Reject Code: Authentication In Progress (22)"
  end
  if value == 23 then
    return "Establishment Reject Code: Protocol Version Not Supported (23)"
  end

  return "Establishment Reject Code: Unknown("..value..")"
end

-- Dissect: Establishment Reject Code
b3_equities_binaryentrypoint_sbe_v8_1.establishment_reject_code.dissect = function(buffer, offset, packet, parent)
  local length = b3_equities_binaryentrypoint_sbe_v8_1.establishment_reject_code.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = b3_equities_binaryentrypoint_sbe_v8_1.establishment_reject_code.display(value, buffer, offset, packet, parent)

  parent:add(omi_b3_equities_binaryentrypoint_sbe_v8_1.fields.establishment_reject_code, range, value, display)

  return offset + length, value
end

-- Establish Reject Message
b3_equities_binaryentrypoint_sbe_v8_1.establish_reject_message = {}

-- Calculate size of: Establish Reject Message
b3_equities_binaryentrypoint_sbe_v8_1.establish_reject_message.size = function(buffer, offset)
  local index = 0

  index = index + b3_equities_binaryentrypoint_sbe_v8_1.session_id.size

  index = index + b3_equities_binaryentrypoint_sbe_v8_1.session_ver_id.size

  index = index + b3_equities_binaryentrypoint_sbe_v8_1.request_timestamp.size

  index = index + b3_equities_binaryentrypoint_sbe_v8_1.establishment_reject_code.size

  index = index + b3_equities_binaryentrypoint_sbe_v8_1.offset_21_padding_1.size

  index = index + b3_equities_binaryentrypoint_sbe_v8_1.last_incoming_seq_no_optional.size

  return index
end

-- Display: Establish Reject Message
b3_equities_binaryentrypoint_sbe_v8_1.establish_reject_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Establish Reject Message
b3_equities_binaryentrypoint_sbe_v8_1.establish_reject_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Session Id: 4 Byte Unsigned Fixed Width Integer
  index, session_id = b3_equities_binaryentrypoint_sbe_v8_1.session_id.dissect(buffer, index, packet, parent)

  -- Session Ver Id: 8 Byte Unsigned Fixed Width Integer
  index, session_ver_id = b3_equities_binaryentrypoint_sbe_v8_1.session_ver_id.dissect(buffer, index, packet, parent)

  -- Request Timestamp: 8 Byte Unsigned Fixed Width Integer
  index, request_timestamp = b3_equities_binaryentrypoint_sbe_v8_1.request_timestamp.dissect(buffer, index, packet, parent)

  -- Establishment Reject Code: 1 Byte Unsigned Fixed Width Integer Enum with 15 values
  index, establishment_reject_code = b3_equities_binaryentrypoint_sbe_v8_1.establishment_reject_code.dissect(buffer, index, packet, parent)

  -- Offset 21 Padding 1: 1 Byte
  index, offset_21_padding_1 = b3_equities_binaryentrypoint_sbe_v8_1.offset_21_padding_1.dissect(buffer, index, packet, parent)

  -- Last Incoming Seq No Optional: 4 Byte Unsigned Fixed Width Integer
  index, last_incoming_seq_no_optional = b3_equities_binaryentrypoint_sbe_v8_1.last_incoming_seq_no_optional.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Establish Reject Message
b3_equities_binaryentrypoint_sbe_v8_1.establish_reject_message.dissect = function(buffer, offset, packet, parent)
  if show.establish_reject_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_b3_equities_binaryentrypoint_sbe_v8_1.fields.establish_reject_message, buffer(offset, 0))
    local index = b3_equities_binaryentrypoint_sbe_v8_1.establish_reject_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = b3_equities_binaryentrypoint_sbe_v8_1.establish_reject_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return b3_equities_binaryentrypoint_sbe_v8_1.establish_reject_message.fields(buffer, offset, packet, parent)
  end
end

-- Last Incoming Seq No
b3_equities_binaryentrypoint_sbe_v8_1.last_incoming_seq_no = {}

-- Size: Last Incoming Seq No
b3_equities_binaryentrypoint_sbe_v8_1.last_incoming_seq_no.size = 4

-- Display: Last Incoming Seq No
b3_equities_binaryentrypoint_sbe_v8_1.last_incoming_seq_no.display = function(value)
  return "Last Incoming Seq No: "..value
end

-- Dissect: Last Incoming Seq No
b3_equities_binaryentrypoint_sbe_v8_1.last_incoming_seq_no.dissect = function(buffer, offset, packet, parent)
  local length = b3_equities_binaryentrypoint_sbe_v8_1.last_incoming_seq_no.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = b3_equities_binaryentrypoint_sbe_v8_1.last_incoming_seq_no.display(value, buffer, offset, packet, parent)

  parent:add(omi_b3_equities_binaryentrypoint_sbe_v8_1.fields.last_incoming_seq_no, range, value, display)

  return offset + length, value
end

-- Keep Alive Interval
b3_equities_binaryentrypoint_sbe_v8_1.keep_alive_interval = {}

-- Size: Keep Alive Interval
b3_equities_binaryentrypoint_sbe_v8_1.keep_alive_interval.size = 8

-- Display: Keep Alive Interval
b3_equities_binaryentrypoint_sbe_v8_1.keep_alive_interval.display = function(value)
  return "Keep Alive Interval: "..value
end

-- Dissect: Keep Alive Interval
b3_equities_binaryentrypoint_sbe_v8_1.keep_alive_interval.dissect = function(buffer, offset, packet, parent)
  local length = b3_equities_binaryentrypoint_sbe_v8_1.keep_alive_interval.size
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = b3_equities_binaryentrypoint_sbe_v8_1.keep_alive_interval.display(value, buffer, offset, packet, parent)

  parent:add(omi_b3_equities_binaryentrypoint_sbe_v8_1.fields.keep_alive_interval, range, value, display)

  return offset + length, value
end

-- Establish Ack Message
b3_equities_binaryentrypoint_sbe_v8_1.establish_ack_message = {}

-- Calculate size of: Establish Ack Message
b3_equities_binaryentrypoint_sbe_v8_1.establish_ack_message.size = function(buffer, offset)
  local index = 0

  index = index + b3_equities_binaryentrypoint_sbe_v8_1.session_id.size

  index = index + b3_equities_binaryentrypoint_sbe_v8_1.session_ver_id.size

  index = index + b3_equities_binaryentrypoint_sbe_v8_1.request_timestamp.size

  index = index + b3_equities_binaryentrypoint_sbe_v8_1.keep_alive_interval.size

  index = index + b3_equities_binaryentrypoint_sbe_v8_1.next_seq_no.size

  index = index + b3_equities_binaryentrypoint_sbe_v8_1.last_incoming_seq_no.size

  return index
end

-- Display: Establish Ack Message
b3_equities_binaryentrypoint_sbe_v8_1.establish_ack_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Establish Ack Message
b3_equities_binaryentrypoint_sbe_v8_1.establish_ack_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Session Id: 4 Byte Unsigned Fixed Width Integer
  index, session_id = b3_equities_binaryentrypoint_sbe_v8_1.session_id.dissect(buffer, index, packet, parent)

  -- Session Ver Id: 8 Byte Unsigned Fixed Width Integer
  index, session_ver_id = b3_equities_binaryentrypoint_sbe_v8_1.session_ver_id.dissect(buffer, index, packet, parent)

  -- Request Timestamp: 8 Byte Unsigned Fixed Width Integer
  index, request_timestamp = b3_equities_binaryentrypoint_sbe_v8_1.request_timestamp.dissect(buffer, index, packet, parent)

  -- Keep Alive Interval: 8 Byte Unsigned Fixed Width Integer
  index, keep_alive_interval = b3_equities_binaryentrypoint_sbe_v8_1.keep_alive_interval.dissect(buffer, index, packet, parent)

  -- Next Seq No: 4 Byte Unsigned Fixed Width Integer
  index, next_seq_no = b3_equities_binaryentrypoint_sbe_v8_1.next_seq_no.dissect(buffer, index, packet, parent)

  -- Last Incoming Seq No: 4 Byte Unsigned Fixed Width Integer
  index, last_incoming_seq_no = b3_equities_binaryentrypoint_sbe_v8_1.last_incoming_seq_no.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Establish Ack Message
b3_equities_binaryentrypoint_sbe_v8_1.establish_ack_message.dissect = function(buffer, offset, packet, parent)
  if show.establish_ack_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_b3_equities_binaryentrypoint_sbe_v8_1.fields.establish_ack_message, buffer(offset, 0))
    local index = b3_equities_binaryentrypoint_sbe_v8_1.establish_ack_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = b3_equities_binaryentrypoint_sbe_v8_1.establish_ack_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return b3_equities_binaryentrypoint_sbe_v8_1.establish_ack_message.fields(buffer, offset, packet, parent)
  end
end

-- Credentials Data
b3_equities_binaryentrypoint_sbe_v8_1.credentials_data = {}

-- Display: Credentials Data
b3_equities_binaryentrypoint_sbe_v8_1.credentials_data.display = function(value)
  return "Credentials Data: "..value
end

-- Dissect runtime sized field: Credentials Data
b3_equities_binaryentrypoint_sbe_v8_1.credentials_data.dissect = function(buffer, offset, packet, parent, size)
  local range = buffer(offset, size)
  local value = range:string()
  local display = b3_equities_binaryentrypoint_sbe_v8_1.credentials_data.display(value, buffer, offset, packet, parent, size)

  parent:add(omi_b3_equities_binaryentrypoint_sbe_v8_1.fields.credentials_data, range, value, display)

  return offset + size
end

-- Credentials Length
b3_equities_binaryentrypoint_sbe_v8_1.credentials_length = {}

-- Size: Credentials Length
b3_equities_binaryentrypoint_sbe_v8_1.credentials_length.size = 1

-- Display: Credentials Length
b3_equities_binaryentrypoint_sbe_v8_1.credentials_length.display = function(value)
  return "Credentials Length: "..value
end

-- Dissect: Credentials Length
b3_equities_binaryentrypoint_sbe_v8_1.credentials_length.dissect = function(buffer, offset, packet, parent)
  local length = b3_equities_binaryentrypoint_sbe_v8_1.credentials_length.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = b3_equities_binaryentrypoint_sbe_v8_1.credentials_length.display(value, buffer, offset, packet, parent)

  parent:add(omi_b3_equities_binaryentrypoint_sbe_v8_1.fields.credentials_length, range, value, display)

  return offset + length, value
end

-- Credentials
b3_equities_binaryentrypoint_sbe_v8_1.credentials = {}

-- Calculate size of: Credentials
b3_equities_binaryentrypoint_sbe_v8_1.credentials.size = function(buffer, offset)
  local index = 0

  index = index + b3_equities_binaryentrypoint_sbe_v8_1.credentials_length.size

  -- Parse runtime size of: Credentials Data
  index = index + buffer(offset + index - 1, 1):le_uint()

  return index
end

-- Display: Credentials
b3_equities_binaryentrypoint_sbe_v8_1.credentials.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Credentials
b3_equities_binaryentrypoint_sbe_v8_1.credentials.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Credentials Length: 1 Byte Unsigned Fixed Width Integer
  index, credentials_length = b3_equities_binaryentrypoint_sbe_v8_1.credentials_length.dissect(buffer, index, packet, parent)

  -- Runtime Size Of: Credentials Data
  index, credentials_data = b3_equities_binaryentrypoint_sbe_v8_1.credentials_data.dissect(buffer, index, packet, parent, credentials_length)

  return index
end

-- Dissect: Credentials
b3_equities_binaryentrypoint_sbe_v8_1.credentials.dissect = function(buffer, offset, packet, parent)
  -- Optionally add dynamic struct element to protocol tree
  if show.credentials then
    local length = b3_equities_binaryentrypoint_sbe_v8_1.credentials.size(buffer, offset)
    local range = buffer(offset, length)
    local display = b3_equities_binaryentrypoint_sbe_v8_1.credentials.display(buffer, packet, parent)
    parent = parent:add(omi_b3_equities_binaryentrypoint_sbe_v8_1.fields.credentials, range, display)
  end

  return b3_equities_binaryentrypoint_sbe_v8_1.credentials.fields(buffer, offset, packet, parent)
end

-- Cod Timeout Window
b3_equities_binaryentrypoint_sbe_v8_1.cod_timeout_window = {}

-- Size: Cod Timeout Window
b3_equities_binaryentrypoint_sbe_v8_1.cod_timeout_window.size = 8

-- Display: Cod Timeout Window
b3_equities_binaryentrypoint_sbe_v8_1.cod_timeout_window.display = function(value)
  return "Cod Timeout Window: "..value
end

-- Dissect: Cod Timeout Window
b3_equities_binaryentrypoint_sbe_v8_1.cod_timeout_window.dissect = function(buffer, offset, packet, parent)
  local length = b3_equities_binaryentrypoint_sbe_v8_1.cod_timeout_window.size
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = b3_equities_binaryentrypoint_sbe_v8_1.cod_timeout_window.display(value, buffer, offset, packet, parent)

  parent:add(omi_b3_equities_binaryentrypoint_sbe_v8_1.fields.cod_timeout_window, range, value, display)

  return offset + length, value
end

-- Offset 33 Padding 1
b3_equities_binaryentrypoint_sbe_v8_1.offset_33_padding_1 = {}

-- Size: Offset 33 Padding 1
b3_equities_binaryentrypoint_sbe_v8_1.offset_33_padding_1.size = 1

-- Display: Offset 33 Padding 1
b3_equities_binaryentrypoint_sbe_v8_1.offset_33_padding_1.display = function(value)
  return "Offset 33 Padding 1: "..value
end

-- Dissect: Offset 33 Padding 1
b3_equities_binaryentrypoint_sbe_v8_1.offset_33_padding_1.dissect = function(buffer, offset, packet, parent)
  local length = b3_equities_binaryentrypoint_sbe_v8_1.offset_33_padding_1.size
  local range = buffer(offset, length)
  local value = range:bytes():tohex(false, " ")
  local display = b3_equities_binaryentrypoint_sbe_v8_1.offset_33_padding_1.display(value, buffer, offset, packet, parent)

  parent:add(omi_b3_equities_binaryentrypoint_sbe_v8_1.fields.offset_33_padding_1, range, value, display)

  return offset + length, value
end

-- Cancel On Disconnect Type
b3_equities_binaryentrypoint_sbe_v8_1.cancel_on_disconnect_type = {}

-- Size: Cancel On Disconnect Type
b3_equities_binaryentrypoint_sbe_v8_1.cancel_on_disconnect_type.size = 1

-- Display: Cancel On Disconnect Type
b3_equities_binaryentrypoint_sbe_v8_1.cancel_on_disconnect_type.display = function(value)
  if value == 0 then
    return "Cancel On Disconnect Type: Do Not Cancel On Disconnect Or Terminate (0)"
  end
  if value == 1 then
    return "Cancel On Disconnect Type: Cancel On Disconnect Only (1)"
  end
  if value == 2 then
    return "Cancel On Disconnect Type: Cancel On Terminate Only (2)"
  end
  if value == 3 then
    return "Cancel On Disconnect Type: Cancel On Disconnect Or Terminate (3)"
  end

  return "Cancel On Disconnect Type: Unknown("..value..")"
end

-- Dissect: Cancel On Disconnect Type
b3_equities_binaryentrypoint_sbe_v8_1.cancel_on_disconnect_type.dissect = function(buffer, offset, packet, parent)
  local length = b3_equities_binaryentrypoint_sbe_v8_1.cancel_on_disconnect_type.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = b3_equities_binaryentrypoint_sbe_v8_1.cancel_on_disconnect_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_b3_equities_binaryentrypoint_sbe_v8_1.fields.cancel_on_disconnect_type, range, value, display)

  return offset + length, value
end

-- Establish Message
b3_equities_binaryentrypoint_sbe_v8_1.establish_message = {}

-- Calculate size of: Establish Message
b3_equities_binaryentrypoint_sbe_v8_1.establish_message.size = function(buffer, offset)
  local index = 0

  index = index + b3_equities_binaryentrypoint_sbe_v8_1.session_id.size

  index = index + b3_equities_binaryentrypoint_sbe_v8_1.session_ver_id.size

  index = index + b3_equities_binaryentrypoint_sbe_v8_1.timestamp.size

  index = index + b3_equities_binaryentrypoint_sbe_v8_1.keep_alive_interval.size

  index = index + b3_equities_binaryentrypoint_sbe_v8_1.next_seq_no.size

  index = index + b3_equities_binaryentrypoint_sbe_v8_1.cancel_on_disconnect_type.size

  index = index + b3_equities_binaryentrypoint_sbe_v8_1.offset_33_padding_1.size

  index = index + b3_equities_binaryentrypoint_sbe_v8_1.cod_timeout_window.size

  index = index + b3_equities_binaryentrypoint_sbe_v8_1.credentials.size(buffer, offset + index)

  return index
end

-- Display: Establish Message
b3_equities_binaryentrypoint_sbe_v8_1.establish_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Establish Message
b3_equities_binaryentrypoint_sbe_v8_1.establish_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Session Id: 4 Byte Unsigned Fixed Width Integer
  index, session_id = b3_equities_binaryentrypoint_sbe_v8_1.session_id.dissect(buffer, index, packet, parent)

  -- Session Ver Id: 8 Byte Unsigned Fixed Width Integer
  index, session_ver_id = b3_equities_binaryentrypoint_sbe_v8_1.session_ver_id.dissect(buffer, index, packet, parent)

  -- Timestamp: 8 Byte Unsigned Fixed Width Integer
  index, timestamp = b3_equities_binaryentrypoint_sbe_v8_1.timestamp.dissect(buffer, index, packet, parent)

  -- Keep Alive Interval: 8 Byte Unsigned Fixed Width Integer
  index, keep_alive_interval = b3_equities_binaryentrypoint_sbe_v8_1.keep_alive_interval.dissect(buffer, index, packet, parent)

  -- Next Seq No: 4 Byte Unsigned Fixed Width Integer
  index, next_seq_no = b3_equities_binaryentrypoint_sbe_v8_1.next_seq_no.dissect(buffer, index, packet, parent)

  -- Cancel On Disconnect Type: 1 Byte Unsigned Fixed Width Integer Enum with 4 values
  index, cancel_on_disconnect_type = b3_equities_binaryentrypoint_sbe_v8_1.cancel_on_disconnect_type.dissect(buffer, index, packet, parent)

  -- Offset 33 Padding 1: 1 Byte
  index, offset_33_padding_1 = b3_equities_binaryentrypoint_sbe_v8_1.offset_33_padding_1.dissect(buffer, index, packet, parent)

  -- Cod Timeout Window: 8 Byte Unsigned Fixed Width Integer
  index, cod_timeout_window = b3_equities_binaryentrypoint_sbe_v8_1.cod_timeout_window.dissect(buffer, index, packet, parent)

  -- Credentials: Struct of 2 fields
  index, credentials = b3_equities_binaryentrypoint_sbe_v8_1.credentials.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Establish Message
b3_equities_binaryentrypoint_sbe_v8_1.establish_message.dissect = function(buffer, offset, packet, parent)
  -- Optionally add dynamic struct element to protocol tree
  if show.establish_message then
    local length = b3_equities_binaryentrypoint_sbe_v8_1.establish_message.size(buffer, offset)
    local range = buffer(offset, length)
    local display = b3_equities_binaryentrypoint_sbe_v8_1.establish_message.display(buffer, packet, parent)
    parent = parent:add(omi_b3_equities_binaryentrypoint_sbe_v8_1.fields.establish_message, range, display)
  end

  return b3_equities_binaryentrypoint_sbe_v8_1.establish_message.fields(buffer, offset, packet, parent)
end

-- Current Session Ver Id
b3_equities_binaryentrypoint_sbe_v8_1.current_session_ver_id = {}

-- Size: Current Session Ver Id
b3_equities_binaryentrypoint_sbe_v8_1.current_session_ver_id.size = 8

-- Display: Current Session Ver Id
b3_equities_binaryentrypoint_sbe_v8_1.current_session_ver_id.display = function(value)
  return "Current Session Ver Id: "..value
end

-- Dissect: Current Session Ver Id
b3_equities_binaryentrypoint_sbe_v8_1.current_session_ver_id.dissect = function(buffer, offset, packet, parent)
  local length = b3_equities_binaryentrypoint_sbe_v8_1.current_session_ver_id.size
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = b3_equities_binaryentrypoint_sbe_v8_1.current_session_ver_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_b3_equities_binaryentrypoint_sbe_v8_1.fields.current_session_ver_id, range, value, display)

  return offset + length, value
end

-- Offset 25 Padding 3
b3_equities_binaryentrypoint_sbe_v8_1.offset_25_padding_3 = {}

-- Size: Offset 25 Padding 3
b3_equities_binaryentrypoint_sbe_v8_1.offset_25_padding_3.size = 3

-- Display: Offset 25 Padding 3
b3_equities_binaryentrypoint_sbe_v8_1.offset_25_padding_3.display = function(value)
  return "Offset 25 Padding 3: "..value
end

-- Dissect: Offset 25 Padding 3
b3_equities_binaryentrypoint_sbe_v8_1.offset_25_padding_3.dissect = function(buffer, offset, packet, parent)
  local length = b3_equities_binaryentrypoint_sbe_v8_1.offset_25_padding_3.size
  local range = buffer(offset, length)
  local value = range:bytes():tohex(false, " ")
  local display = b3_equities_binaryentrypoint_sbe_v8_1.offset_25_padding_3.display(value, buffer, offset, packet, parent)

  parent:add(omi_b3_equities_binaryentrypoint_sbe_v8_1.fields.offset_25_padding_3, range, value, display)

  return offset + length, value
end

-- Negotiation Reject Code
b3_equities_binaryentrypoint_sbe_v8_1.negotiation_reject_code = {}

-- Size: Negotiation Reject Code
b3_equities_binaryentrypoint_sbe_v8_1.negotiation_reject_code.size = 1

-- Display: Negotiation Reject Code
b3_equities_binaryentrypoint_sbe_v8_1.negotiation_reject_code.display = function(value)
  if value == 0 then
    return "Negotiation Reject Code: Unspecified (0)"
  end
  if value == 1 then
    return "Negotiation Reject Code: Credentials (1)"
  end
  if value == 2 then
    return "Negotiation Reject Code: Flowtype Not Supported (2)"
  end
  if value == 3 then
    return "Negotiation Reject Code: Already Negotiated (3)"
  end
  if value == 4 then
    return "Negotiation Reject Code: Session Blocked (4)"
  end
  if value == 5 then
    return "Negotiation Reject Code: Invalid Sessionid (5)"
  end
  if value == 6 then
    return "Negotiation Reject Code: Invalid Sessionverid (6)"
  end
  if value == 7 then
    return "Negotiation Reject Code: Invalid Timestamp (7)"
  end
  if value == 8 then
    return "Negotiation Reject Code: Invalid Firm (8)"
  end
  if value == 20 then
    return "Negotiation Reject Code: Negotiate Not Allowed (20)"
  end
  if value == 21 then
    return "Negotiation Reject Code: Duplicate Session Connection (21)"
  end
  if value == 22 then
    return "Negotiation Reject Code: Authentication In Progress (22)"
  end
  if value == 23 then
    return "Negotiation Reject Code: Protocol Version Not Supported (23)"
  end

  return "Negotiation Reject Code: Unknown("..value..")"
end

-- Dissect: Negotiation Reject Code
b3_equities_binaryentrypoint_sbe_v8_1.negotiation_reject_code.dissect = function(buffer, offset, packet, parent)
  local length = b3_equities_binaryentrypoint_sbe_v8_1.negotiation_reject_code.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = b3_equities_binaryentrypoint_sbe_v8_1.negotiation_reject_code.display(value, buffer, offset, packet, parent)

  parent:add(omi_b3_equities_binaryentrypoint_sbe_v8_1.fields.negotiation_reject_code, range, value, display)

  return offset + length, value
end

-- Negotiate Reject Message
b3_equities_binaryentrypoint_sbe_v8_1.negotiate_reject_message = {}

-- Calculate size of: Negotiate Reject Message
b3_equities_binaryentrypoint_sbe_v8_1.negotiate_reject_message.size = function(buffer, offset)
  local index = 0

  index = index + b3_equities_binaryentrypoint_sbe_v8_1.session_id.size

  index = index + b3_equities_binaryentrypoint_sbe_v8_1.session_ver_id.size

  index = index + b3_equities_binaryentrypoint_sbe_v8_1.request_timestamp.size

  index = index + b3_equities_binaryentrypoint_sbe_v8_1.entering_firm_optional.size

  index = index + b3_equities_binaryentrypoint_sbe_v8_1.negotiation_reject_code.size

  index = index + b3_equities_binaryentrypoint_sbe_v8_1.offset_25_padding_3.size

  index = index + b3_equities_binaryentrypoint_sbe_v8_1.current_session_ver_id.size

  return index
end

-- Display: Negotiate Reject Message
b3_equities_binaryentrypoint_sbe_v8_1.negotiate_reject_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Negotiate Reject Message
b3_equities_binaryentrypoint_sbe_v8_1.negotiate_reject_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Session Id: 4 Byte Unsigned Fixed Width Integer
  index, session_id = b3_equities_binaryentrypoint_sbe_v8_1.session_id.dissect(buffer, index, packet, parent)

  -- Session Ver Id: 8 Byte Unsigned Fixed Width Integer
  index, session_ver_id = b3_equities_binaryentrypoint_sbe_v8_1.session_ver_id.dissect(buffer, index, packet, parent)

  -- Request Timestamp: 8 Byte Unsigned Fixed Width Integer
  index, request_timestamp = b3_equities_binaryentrypoint_sbe_v8_1.request_timestamp.dissect(buffer, index, packet, parent)

  -- Entering Firm Optional: 4 Byte Unsigned Fixed Width Integer
  index, entering_firm_optional = b3_equities_binaryentrypoint_sbe_v8_1.entering_firm_optional.dissect(buffer, index, packet, parent)

  -- Negotiation Reject Code: 1 Byte Unsigned Fixed Width Integer Enum with 13 values
  index, negotiation_reject_code = b3_equities_binaryentrypoint_sbe_v8_1.negotiation_reject_code.dissect(buffer, index, packet, parent)

  -- Offset 25 Padding 3: 3 Byte
  index, offset_25_padding_3 = b3_equities_binaryentrypoint_sbe_v8_1.offset_25_padding_3.dissect(buffer, index, packet, parent)

  -- Current Session Ver Id: 8 Byte Unsigned Fixed Width Integer
  index, current_session_ver_id = b3_equities_binaryentrypoint_sbe_v8_1.current_session_ver_id.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Negotiate Reject Message
b3_equities_binaryentrypoint_sbe_v8_1.negotiate_reject_message.dissect = function(buffer, offset, packet, parent)
  if show.negotiate_reject_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_b3_equities_binaryentrypoint_sbe_v8_1.fields.negotiate_reject_message, buffer(offset, 0))
    local index = b3_equities_binaryentrypoint_sbe_v8_1.negotiate_reject_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = b3_equities_binaryentrypoint_sbe_v8_1.negotiate_reject_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return b3_equities_binaryentrypoint_sbe_v8_1.negotiate_reject_message.fields(buffer, offset, packet, parent)
  end
end

-- Entering Firm
b3_equities_binaryentrypoint_sbe_v8_1.entering_firm = {}

-- Size: Entering Firm
b3_equities_binaryentrypoint_sbe_v8_1.entering_firm.size = 4

-- Display: Entering Firm
b3_equities_binaryentrypoint_sbe_v8_1.entering_firm.display = function(value)
  return "Entering Firm: "..value
end

-- Dissect: Entering Firm
b3_equities_binaryentrypoint_sbe_v8_1.entering_firm.dissect = function(buffer, offset, packet, parent)
  local length = b3_equities_binaryentrypoint_sbe_v8_1.entering_firm.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = b3_equities_binaryentrypoint_sbe_v8_1.entering_firm.display(value, buffer, offset, packet, parent)

  parent:add(omi_b3_equities_binaryentrypoint_sbe_v8_1.fields.entering_firm, range, value, display)

  return offset + length, value
end

-- Negotiate Response Message
b3_equities_binaryentrypoint_sbe_v8_1.negotiate_response_message = {}

-- Calculate size of: Negotiate Response Message
b3_equities_binaryentrypoint_sbe_v8_1.negotiate_response_message.size = function(buffer, offset)
  local index = 0

  index = index + b3_equities_binaryentrypoint_sbe_v8_1.session_id.size

  index = index + b3_equities_binaryentrypoint_sbe_v8_1.session_ver_id.size

  index = index + b3_equities_binaryentrypoint_sbe_v8_1.request_timestamp.size

  index = index + b3_equities_binaryentrypoint_sbe_v8_1.entering_firm.size

  return index
end

-- Display: Negotiate Response Message
b3_equities_binaryentrypoint_sbe_v8_1.negotiate_response_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Negotiate Response Message
b3_equities_binaryentrypoint_sbe_v8_1.negotiate_response_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Session Id: 4 Byte Unsigned Fixed Width Integer
  index, session_id = b3_equities_binaryentrypoint_sbe_v8_1.session_id.dissect(buffer, index, packet, parent)

  -- Session Ver Id: 8 Byte Unsigned Fixed Width Integer
  index, session_ver_id = b3_equities_binaryentrypoint_sbe_v8_1.session_ver_id.dissect(buffer, index, packet, parent)

  -- Request Timestamp: 8 Byte Unsigned Fixed Width Integer
  index, request_timestamp = b3_equities_binaryentrypoint_sbe_v8_1.request_timestamp.dissect(buffer, index, packet, parent)

  -- Entering Firm: 4 Byte Unsigned Fixed Width Integer
  index, entering_firm = b3_equities_binaryentrypoint_sbe_v8_1.entering_firm.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Negotiate Response Message
b3_equities_binaryentrypoint_sbe_v8_1.negotiate_response_message.dissect = function(buffer, offset, packet, parent)
  if show.negotiate_response_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_b3_equities_binaryentrypoint_sbe_v8_1.fields.negotiate_response_message, buffer(offset, 0))
    local index = b3_equities_binaryentrypoint_sbe_v8_1.negotiate_response_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = b3_equities_binaryentrypoint_sbe_v8_1.negotiate_response_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return b3_equities_binaryentrypoint_sbe_v8_1.negotiate_response_message.fields(buffer, offset, packet, parent)
  end
end

-- Client App Version Data
b3_equities_binaryentrypoint_sbe_v8_1.client_app_version_data = {}

-- Display: Client App Version Data
b3_equities_binaryentrypoint_sbe_v8_1.client_app_version_data.display = function(value)
  return "Client App Version Data: "..value
end

-- Dissect runtime sized field: Client App Version Data
b3_equities_binaryentrypoint_sbe_v8_1.client_app_version_data.dissect = function(buffer, offset, packet, parent, size)
  local range = buffer(offset, size)
  local value = range:string()
  local display = b3_equities_binaryentrypoint_sbe_v8_1.client_app_version_data.display(value, buffer, offset, packet, parent, size)

  parent:add(omi_b3_equities_binaryentrypoint_sbe_v8_1.fields.client_app_version_data, range, value, display)

  return offset + size
end

-- Client App Version Length
b3_equities_binaryentrypoint_sbe_v8_1.client_app_version_length = {}

-- Size: Client App Version Length
b3_equities_binaryentrypoint_sbe_v8_1.client_app_version_length.size = 1

-- Display: Client App Version Length
b3_equities_binaryentrypoint_sbe_v8_1.client_app_version_length.display = function(value)
  return "Client App Version Length: "..value
end

-- Dissect: Client App Version Length
b3_equities_binaryentrypoint_sbe_v8_1.client_app_version_length.dissect = function(buffer, offset, packet, parent)
  local length = b3_equities_binaryentrypoint_sbe_v8_1.client_app_version_length.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = b3_equities_binaryentrypoint_sbe_v8_1.client_app_version_length.display(value, buffer, offset, packet, parent)

  parent:add(omi_b3_equities_binaryentrypoint_sbe_v8_1.fields.client_app_version_length, range, value, display)

  return offset + length, value
end

-- Client App Version
b3_equities_binaryentrypoint_sbe_v8_1.client_app_version = {}

-- Calculate size of: Client App Version
b3_equities_binaryentrypoint_sbe_v8_1.client_app_version.size = function(buffer, offset)
  local index = 0

  index = index + b3_equities_binaryentrypoint_sbe_v8_1.client_app_version_length.size

  -- Parse runtime size of: Client App Version Data
  index = index + buffer(offset + index - 1, 1):le_uint()

  return index
end

-- Display: Client App Version
b3_equities_binaryentrypoint_sbe_v8_1.client_app_version.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Client App Version
b3_equities_binaryentrypoint_sbe_v8_1.client_app_version.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Client App Version Length: 1 Byte Unsigned Fixed Width Integer
  index, client_app_version_length = b3_equities_binaryentrypoint_sbe_v8_1.client_app_version_length.dissect(buffer, index, packet, parent)

  -- Runtime Size Of: Client App Version Data
  index, client_app_version_data = b3_equities_binaryentrypoint_sbe_v8_1.client_app_version_data.dissect(buffer, index, packet, parent, client_app_version_length)

  return index
end

-- Dissect: Client App Version
b3_equities_binaryentrypoint_sbe_v8_1.client_app_version.dissect = function(buffer, offset, packet, parent)
  -- Optionally add dynamic struct element to protocol tree
  if show.client_app_version then
    local length = b3_equities_binaryentrypoint_sbe_v8_1.client_app_version.size(buffer, offset)
    local range = buffer(offset, length)
    local display = b3_equities_binaryentrypoint_sbe_v8_1.client_app_version.display(buffer, packet, parent)
    parent = parent:add(omi_b3_equities_binaryentrypoint_sbe_v8_1.fields.client_app_version, range, display)
  end

  return b3_equities_binaryentrypoint_sbe_v8_1.client_app_version.fields(buffer, offset, packet, parent)
end

-- Client App Name Data
b3_equities_binaryentrypoint_sbe_v8_1.client_app_name_data = {}

-- Display: Client App Name Data
b3_equities_binaryentrypoint_sbe_v8_1.client_app_name_data.display = function(value)
  return "Client App Name Data: "..value
end

-- Dissect runtime sized field: Client App Name Data
b3_equities_binaryentrypoint_sbe_v8_1.client_app_name_data.dissect = function(buffer, offset, packet, parent, size)
  local range = buffer(offset, size)
  local value = range:string()
  local display = b3_equities_binaryentrypoint_sbe_v8_1.client_app_name_data.display(value, buffer, offset, packet, parent, size)

  parent:add(omi_b3_equities_binaryentrypoint_sbe_v8_1.fields.client_app_name_data, range, value, display)

  return offset + size
end

-- Client App Name Length
b3_equities_binaryentrypoint_sbe_v8_1.client_app_name_length = {}

-- Size: Client App Name Length
b3_equities_binaryentrypoint_sbe_v8_1.client_app_name_length.size = 1

-- Display: Client App Name Length
b3_equities_binaryentrypoint_sbe_v8_1.client_app_name_length.display = function(value)
  return "Client App Name Length: "..value
end

-- Dissect: Client App Name Length
b3_equities_binaryentrypoint_sbe_v8_1.client_app_name_length.dissect = function(buffer, offset, packet, parent)
  local length = b3_equities_binaryentrypoint_sbe_v8_1.client_app_name_length.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = b3_equities_binaryentrypoint_sbe_v8_1.client_app_name_length.display(value, buffer, offset, packet, parent)

  parent:add(omi_b3_equities_binaryentrypoint_sbe_v8_1.fields.client_app_name_length, range, value, display)

  return offset + length, value
end

-- Client App Name
b3_equities_binaryentrypoint_sbe_v8_1.client_app_name = {}

-- Calculate size of: Client App Name
b3_equities_binaryentrypoint_sbe_v8_1.client_app_name.size = function(buffer, offset)
  local index = 0

  index = index + b3_equities_binaryentrypoint_sbe_v8_1.client_app_name_length.size

  -- Parse runtime size of: Client App Name Data
  index = index + buffer(offset + index - 1, 1):le_uint()

  return index
end

-- Display: Client App Name
b3_equities_binaryentrypoint_sbe_v8_1.client_app_name.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Client App Name
b3_equities_binaryentrypoint_sbe_v8_1.client_app_name.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Client App Name Length: 1 Byte Unsigned Fixed Width Integer
  index, client_app_name_length = b3_equities_binaryentrypoint_sbe_v8_1.client_app_name_length.dissect(buffer, index, packet, parent)

  -- Runtime Size Of: Client App Name Data
  index, client_app_name_data = b3_equities_binaryentrypoint_sbe_v8_1.client_app_name_data.dissect(buffer, index, packet, parent, client_app_name_length)

  return index
end

-- Dissect: Client App Name
b3_equities_binaryentrypoint_sbe_v8_1.client_app_name.dissect = function(buffer, offset, packet, parent)
  -- Optionally add dynamic struct element to protocol tree
  if show.client_app_name then
    local length = b3_equities_binaryentrypoint_sbe_v8_1.client_app_name.size(buffer, offset)
    local range = buffer(offset, length)
    local display = b3_equities_binaryentrypoint_sbe_v8_1.client_app_name.display(buffer, packet, parent)
    parent = parent:add(omi_b3_equities_binaryentrypoint_sbe_v8_1.fields.client_app_name, range, display)
  end

  return b3_equities_binaryentrypoint_sbe_v8_1.client_app_name.fields(buffer, offset, packet, parent)
end

-- Client Ip Data
b3_equities_binaryentrypoint_sbe_v8_1.client_ip_data = {}

-- Display: Client Ip Data
b3_equities_binaryentrypoint_sbe_v8_1.client_ip_data.display = function(value)
  return "Client Ip Data: "..value
end

-- Dissect runtime sized field: Client Ip Data
b3_equities_binaryentrypoint_sbe_v8_1.client_ip_data.dissect = function(buffer, offset, packet, parent, size)
  local range = buffer(offset, size)
  local value = range:string()
  local display = b3_equities_binaryentrypoint_sbe_v8_1.client_ip_data.display(value, buffer, offset, packet, parent, size)

  parent:add(omi_b3_equities_binaryentrypoint_sbe_v8_1.fields.client_ip_data, range, value, display)

  return offset + size
end

-- Client Ip Length
b3_equities_binaryentrypoint_sbe_v8_1.client_ip_length = {}

-- Size: Client Ip Length
b3_equities_binaryentrypoint_sbe_v8_1.client_ip_length.size = 1

-- Display: Client Ip Length
b3_equities_binaryentrypoint_sbe_v8_1.client_ip_length.display = function(value)
  return "Client Ip Length: "..value
end

-- Dissect: Client Ip Length
b3_equities_binaryentrypoint_sbe_v8_1.client_ip_length.dissect = function(buffer, offset, packet, parent)
  local length = b3_equities_binaryentrypoint_sbe_v8_1.client_ip_length.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = b3_equities_binaryentrypoint_sbe_v8_1.client_ip_length.display(value, buffer, offset, packet, parent)

  parent:add(omi_b3_equities_binaryentrypoint_sbe_v8_1.fields.client_ip_length, range, value, display)

  return offset + length, value
end

-- Client Ip
b3_equities_binaryentrypoint_sbe_v8_1.client_ip = {}

-- Calculate size of: Client Ip
b3_equities_binaryentrypoint_sbe_v8_1.client_ip.size = function(buffer, offset)
  local index = 0

  index = index + b3_equities_binaryentrypoint_sbe_v8_1.client_ip_length.size

  -- Parse runtime size of: Client Ip Data
  index = index + buffer(offset + index - 1, 1):le_uint()

  return index
end

-- Display: Client Ip
b3_equities_binaryentrypoint_sbe_v8_1.client_ip.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Client Ip
b3_equities_binaryentrypoint_sbe_v8_1.client_ip.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Client Ip Length: 1 Byte Unsigned Fixed Width Integer
  index, client_ip_length = b3_equities_binaryentrypoint_sbe_v8_1.client_ip_length.dissect(buffer, index, packet, parent)

  -- Runtime Size Of: Client Ip Data
  index, client_ip_data = b3_equities_binaryentrypoint_sbe_v8_1.client_ip_data.dissect(buffer, index, packet, parent, client_ip_length)

  return index
end

-- Dissect: Client Ip
b3_equities_binaryentrypoint_sbe_v8_1.client_ip.dissect = function(buffer, offset, packet, parent)
  -- Optionally add dynamic struct element to protocol tree
  if show.client_ip then
    local length = b3_equities_binaryentrypoint_sbe_v8_1.client_ip.size(buffer, offset)
    local range = buffer(offset, length)
    local display = b3_equities_binaryentrypoint_sbe_v8_1.client_ip.display(buffer, packet, parent)
    parent = parent:add(omi_b3_equities_binaryentrypoint_sbe_v8_1.fields.client_ip, range, display)
  end

  return b3_equities_binaryentrypoint_sbe_v8_1.client_ip.fields(buffer, offset, packet, parent)
end

-- Onbehalf Firm
b3_equities_binaryentrypoint_sbe_v8_1.onbehalf_firm = {}

-- Size: Onbehalf Firm
b3_equities_binaryentrypoint_sbe_v8_1.onbehalf_firm.size = 4

-- Display: Onbehalf Firm
b3_equities_binaryentrypoint_sbe_v8_1.onbehalf_firm.display = function(value)
  return "Onbehalf Firm: "..value
end

-- Dissect: Onbehalf Firm
b3_equities_binaryentrypoint_sbe_v8_1.onbehalf_firm.dissect = function(buffer, offset, packet, parent)
  local length = b3_equities_binaryentrypoint_sbe_v8_1.onbehalf_firm.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = b3_equities_binaryentrypoint_sbe_v8_1.onbehalf_firm.display(value, buffer, offset, packet, parent)

  parent:add(omi_b3_equities_binaryentrypoint_sbe_v8_1.fields.onbehalf_firm, range, value, display)

  return offset + length, value
end

-- Negotiate Message
b3_equities_binaryentrypoint_sbe_v8_1.negotiate_message = {}

-- Calculate size of: Negotiate Message
b3_equities_binaryentrypoint_sbe_v8_1.negotiate_message.size = function(buffer, offset)
  local index = 0

  index = index + b3_equities_binaryentrypoint_sbe_v8_1.session_id.size

  index = index + b3_equities_binaryentrypoint_sbe_v8_1.session_ver_id.size

  index = index + b3_equities_binaryentrypoint_sbe_v8_1.timestamp.size

  index = index + b3_equities_binaryentrypoint_sbe_v8_1.entering_firm.size

  index = index + b3_equities_binaryentrypoint_sbe_v8_1.onbehalf_firm.size

  index = index + b3_equities_binaryentrypoint_sbe_v8_1.credentials.size(buffer, offset + index)

  index = index + b3_equities_binaryentrypoint_sbe_v8_1.client_ip.size(buffer, offset + index)

  index = index + b3_equities_binaryentrypoint_sbe_v8_1.client_app_name.size(buffer, offset + index)

  index = index + b3_equities_binaryentrypoint_sbe_v8_1.client_app_version.size(buffer, offset + index)

  return index
end

-- Display: Negotiate Message
b3_equities_binaryentrypoint_sbe_v8_1.negotiate_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Negotiate Message
b3_equities_binaryentrypoint_sbe_v8_1.negotiate_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Session Id: 4 Byte Unsigned Fixed Width Integer
  index, session_id = b3_equities_binaryentrypoint_sbe_v8_1.session_id.dissect(buffer, index, packet, parent)

  -- Session Ver Id: 8 Byte Unsigned Fixed Width Integer
  index, session_ver_id = b3_equities_binaryentrypoint_sbe_v8_1.session_ver_id.dissect(buffer, index, packet, parent)

  -- Timestamp: 8 Byte Unsigned Fixed Width Integer
  index, timestamp = b3_equities_binaryentrypoint_sbe_v8_1.timestamp.dissect(buffer, index, packet, parent)

  -- Entering Firm: 4 Byte Unsigned Fixed Width Integer
  index, entering_firm = b3_equities_binaryentrypoint_sbe_v8_1.entering_firm.dissect(buffer, index, packet, parent)

  -- Onbehalf Firm: 4 Byte Unsigned Fixed Width Integer
  index, onbehalf_firm = b3_equities_binaryentrypoint_sbe_v8_1.onbehalf_firm.dissect(buffer, index, packet, parent)

  -- Credentials: Struct of 2 fields
  index, credentials = b3_equities_binaryentrypoint_sbe_v8_1.credentials.dissect(buffer, index, packet, parent)

  -- Client Ip: Struct of 2 fields
  index, client_ip = b3_equities_binaryentrypoint_sbe_v8_1.client_ip.dissect(buffer, index, packet, parent)

  -- Client App Name: Struct of 2 fields
  index, client_app_name = b3_equities_binaryentrypoint_sbe_v8_1.client_app_name.dissect(buffer, index, packet, parent)

  -- Client App Version: Struct of 2 fields
  index, client_app_version = b3_equities_binaryentrypoint_sbe_v8_1.client_app_version.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Negotiate Message
b3_equities_binaryentrypoint_sbe_v8_1.negotiate_message.dissect = function(buffer, offset, packet, parent)
  -- Optionally add dynamic struct element to protocol tree
  if show.negotiate_message then
    local length = b3_equities_binaryentrypoint_sbe_v8_1.negotiate_message.size(buffer, offset)
    local range = buffer(offset, length)
    local display = b3_equities_binaryentrypoint_sbe_v8_1.negotiate_message.display(buffer, packet, parent)
    parent = parent:add(omi_b3_equities_binaryentrypoint_sbe_v8_1.fields.negotiate_message, range, display)
  end

  return b3_equities_binaryentrypoint_sbe_v8_1.negotiate_message.fields(buffer, offset, packet, parent)
end

-- Payload
b3_equities_binaryentrypoint_sbe_v8_1.payload = {}

-- Calculate runtime size of: Payload
b3_equities_binaryentrypoint_sbe_v8_1.payload.size = function(buffer, offset, template_id)
  -- Size of Negotiate Message
  if template_id == 1 then
    return b3_equities_binaryentrypoint_sbe_v8_1.negotiate_message.size(buffer, offset)
  end
  -- Size of Negotiate Response Message
  if template_id == 2 then
    return b3_equities_binaryentrypoint_sbe_v8_1.negotiate_response_message.size(buffer, offset)
  end
  -- Size of Negotiate Reject Message
  if template_id == 3 then
    return b3_equities_binaryentrypoint_sbe_v8_1.negotiate_reject_message.size(buffer, offset)
  end
  -- Size of Establish Message
  if template_id == 4 then
    return b3_equities_binaryentrypoint_sbe_v8_1.establish_message.size(buffer, offset)
  end
  -- Size of Establish Ack Message
  if template_id == 5 then
    return b3_equities_binaryentrypoint_sbe_v8_1.establish_ack_message.size(buffer, offset)
  end
  -- Size of Establish Reject Message
  if template_id == 6 then
    return b3_equities_binaryentrypoint_sbe_v8_1.establish_reject_message.size(buffer, offset)
  end
  -- Size of Terminate Message
  if template_id == 7 then
    return b3_equities_binaryentrypoint_sbe_v8_1.terminate_message.size(buffer, offset)
  end
  -- Size of Not Applied Message
  if template_id == 8 then
    return b3_equities_binaryentrypoint_sbe_v8_1.not_applied_message.size(buffer, offset)
  end
  -- Size of Sequence Message
  if template_id == 9 then
    return b3_equities_binaryentrypoint_sbe_v8_1.sequence_message.size(buffer, offset)
  end
  -- Size of Retransmit Request Message
  if template_id == 12 then
    return b3_equities_binaryentrypoint_sbe_v8_1.retransmit_request_message.size(buffer, offset)
  end
  -- Size of Retransmission Message
  if template_id == 13 then
    return b3_equities_binaryentrypoint_sbe_v8_1.retransmission_message.size(buffer, offset)
  end
  -- Size of Retransmit Reject Message
  if template_id == 14 then
    return b3_equities_binaryentrypoint_sbe_v8_1.retransmit_reject_message.size(buffer, offset)
  end
  -- Size of Simple New Order Message
  if template_id == 100 then
    return b3_equities_binaryentrypoint_sbe_v8_1.simple_new_order_message.size(buffer, offset)
  end
  -- Size of Simple Modify Order Message
  if template_id == 101 then
    return b3_equities_binaryentrypoint_sbe_v8_1.simple_modify_order_message.size(buffer, offset)
  end
  -- Size of New Order Single Message
  if template_id == 102 then
    return b3_equities_binaryentrypoint_sbe_v8_1.new_order_single_message.size(buffer, offset)
  end
  -- Size of Order Cancel Replace Request Message
  if template_id == 104 then
    return b3_equities_binaryentrypoint_sbe_v8_1.order_cancel_replace_request_message.size(buffer, offset)
  end
  -- Size of Order Cancel Request Message
  if template_id == 105 then
    return b3_equities_binaryentrypoint_sbe_v8_1.order_cancel_request_message.size(buffer, offset)
  end
  -- Size of New Order Cross Message
  if template_id == 106 then
    return b3_equities_binaryentrypoint_sbe_v8_1.new_order_cross_message.size(buffer, offset)
  end
  -- Size of Execution Report New Message
  if template_id == 200 then
    return b3_equities_binaryentrypoint_sbe_v8_1.execution_report_new_message.size(buffer, offset)
  end
  -- Size of Execution Report Modify Message
  if template_id == 201 then
    return b3_equities_binaryentrypoint_sbe_v8_1.execution_report_modify_message.size(buffer, offset)
  end
  -- Size of Execution Report Cancel Message
  if template_id == 202 then
    return b3_equities_binaryentrypoint_sbe_v8_1.execution_report_cancel_message.size(buffer, offset)
  end
  -- Size of Execution Report Trade Message
  if template_id == 203 then
    return b3_equities_binaryentrypoint_sbe_v8_1.execution_report_trade_message.size(buffer, offset)
  end
  -- Size of Execution Report Reject Message
  if template_id == 204 then
    return b3_equities_binaryentrypoint_sbe_v8_1.execution_report_reject_message.size(buffer, offset)
  end
  -- Size of Execution Report Forward Message
  if template_id == 205 then
    return b3_equities_binaryentrypoint_sbe_v8_1.execution_report_forward_message.size(buffer, offset)
  end
  -- Size of Business Message Reject Message
  if template_id == 206 then
    return b3_equities_binaryentrypoint_sbe_v8_1.business_message_reject_message.size(buffer, offset)
  end
  -- Size of Security Definition Request Message
  if template_id == 300 then
    return b3_equities_binaryentrypoint_sbe_v8_1.security_definition_request_message.size(buffer, offset)
  end
  -- Size of Security Definition Response Message
  if template_id == 301 then
    return b3_equities_binaryentrypoint_sbe_v8_1.security_definition_response_message.size(buffer, offset)
  end
  -- Size of Quote Request Message
  if template_id == 401 then
    return b3_equities_binaryentrypoint_sbe_v8_1.quote_request_message.size(buffer, offset)
  end
  -- Size of Quote Status Report Message
  if template_id == 402 then
    return b3_equities_binaryentrypoint_sbe_v8_1.quote_status_report_message.size(buffer, offset)
  end
  -- Size of Quote Message
  if template_id == 403 then
    return b3_equities_binaryentrypoint_sbe_v8_1.quote_message.size(buffer, offset)
  end
  -- Size of Quote Cancel Message
  if template_id == 404 then
    return b3_equities_binaryentrypoint_sbe_v8_1.quote_cancel_message.size(buffer, offset)
  end
  -- Size of Quote Request Reject Message
  if template_id == 405 then
    return b3_equities_binaryentrypoint_sbe_v8_1.quote_request_reject_message.size(buffer, offset)
  end
  -- Size of Position Maintenance Cancel Request Message
  if template_id == 501 then
    return b3_equities_binaryentrypoint_sbe_v8_1.position_maintenance_cancel_request_message.size(buffer, offset)
  end
  -- Size of Position Maintenance Request Message
  if template_id == 502 then
    return b3_equities_binaryentrypoint_sbe_v8_1.position_maintenance_request_message.size(buffer, offset)
  end
  -- Size of Position Maintenance Report Message
  if template_id == 503 then
    return b3_equities_binaryentrypoint_sbe_v8_1.position_maintenance_report_message.size(buffer, offset)
  end
  -- Size of Allocation Instruction Message
  if template_id == 601 then
    return b3_equities_binaryentrypoint_sbe_v8_1.allocation_instruction_message.size(buffer, offset)
  end
  -- Size of Allocation Report Message
  if template_id == 602 then
    return b3_equities_binaryentrypoint_sbe_v8_1.allocation_report_message.size(buffer, offset)
  end
  -- Size of Order Mass Action Request Message
  if template_id == 701 then
    return b3_equities_binaryentrypoint_sbe_v8_1.order_mass_action_request_message.size(buffer, offset)
  end
  -- Size of Order Mass Action Report Message
  if template_id == 702 then
    return b3_equities_binaryentrypoint_sbe_v8_1.order_mass_action_report_message.size(buffer, offset)
  end

  return 0
end

-- Display: Payload
b3_equities_binaryentrypoint_sbe_v8_1.payload.display = function(buffer, offset, packet, parent)
  return ""
end

-- Dissect Branches: Payload
b3_equities_binaryentrypoint_sbe_v8_1.payload.branches = function(buffer, offset, packet, parent, template_id)
  -- Dissect Negotiate Message
  if template_id == 1 then
    return b3_equities_binaryentrypoint_sbe_v8_1.negotiate_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Negotiate Response Message
  if template_id == 2 then
    return b3_equities_binaryentrypoint_sbe_v8_1.negotiate_response_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Negotiate Reject Message
  if template_id == 3 then
    return b3_equities_binaryentrypoint_sbe_v8_1.negotiate_reject_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Establish Message
  if template_id == 4 then
    return b3_equities_binaryentrypoint_sbe_v8_1.establish_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Establish Ack Message
  if template_id == 5 then
    return b3_equities_binaryentrypoint_sbe_v8_1.establish_ack_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Establish Reject Message
  if template_id == 6 then
    return b3_equities_binaryentrypoint_sbe_v8_1.establish_reject_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Terminate Message
  if template_id == 7 then
    return b3_equities_binaryentrypoint_sbe_v8_1.terminate_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Not Applied Message
  if template_id == 8 then
    return b3_equities_binaryentrypoint_sbe_v8_1.not_applied_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Sequence Message
  if template_id == 9 then
    return b3_equities_binaryentrypoint_sbe_v8_1.sequence_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Retransmit Request Message
  if template_id == 12 then
    return b3_equities_binaryentrypoint_sbe_v8_1.retransmit_request_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Retransmission Message
  if template_id == 13 then
    return b3_equities_binaryentrypoint_sbe_v8_1.retransmission_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Retransmit Reject Message
  if template_id == 14 then
    return b3_equities_binaryentrypoint_sbe_v8_1.retransmit_reject_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Simple New Order Message
  if template_id == 100 then
    return b3_equities_binaryentrypoint_sbe_v8_1.simple_new_order_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Simple Modify Order Message
  if template_id == 101 then
    return b3_equities_binaryentrypoint_sbe_v8_1.simple_modify_order_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect New Order Single Message
  if template_id == 102 then
    return b3_equities_binaryentrypoint_sbe_v8_1.new_order_single_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Order Cancel Replace Request Message
  if template_id == 104 then
    return b3_equities_binaryentrypoint_sbe_v8_1.order_cancel_replace_request_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Order Cancel Request Message
  if template_id == 105 then
    return b3_equities_binaryentrypoint_sbe_v8_1.order_cancel_request_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect New Order Cross Message
  if template_id == 106 then
    return b3_equities_binaryentrypoint_sbe_v8_1.new_order_cross_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Execution Report New Message
  if template_id == 200 then
    return b3_equities_binaryentrypoint_sbe_v8_1.execution_report_new_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Execution Report Modify Message
  if template_id == 201 then
    return b3_equities_binaryentrypoint_sbe_v8_1.execution_report_modify_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Execution Report Cancel Message
  if template_id == 202 then
    return b3_equities_binaryentrypoint_sbe_v8_1.execution_report_cancel_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Execution Report Trade Message
  if template_id == 203 then
    return b3_equities_binaryentrypoint_sbe_v8_1.execution_report_trade_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Execution Report Reject Message
  if template_id == 204 then
    return b3_equities_binaryentrypoint_sbe_v8_1.execution_report_reject_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Execution Report Forward Message
  if template_id == 205 then
    return b3_equities_binaryentrypoint_sbe_v8_1.execution_report_forward_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Business Message Reject Message
  if template_id == 206 then
    return b3_equities_binaryentrypoint_sbe_v8_1.business_message_reject_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Security Definition Request Message
  if template_id == 300 then
    return b3_equities_binaryentrypoint_sbe_v8_1.security_definition_request_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Security Definition Response Message
  if template_id == 301 then
    return b3_equities_binaryentrypoint_sbe_v8_1.security_definition_response_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Quote Request Message
  if template_id == 401 then
    return b3_equities_binaryentrypoint_sbe_v8_1.quote_request_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Quote Status Report Message
  if template_id == 402 then
    return b3_equities_binaryentrypoint_sbe_v8_1.quote_status_report_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Quote Message
  if template_id == 403 then
    return b3_equities_binaryentrypoint_sbe_v8_1.quote_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Quote Cancel Message
  if template_id == 404 then
    return b3_equities_binaryentrypoint_sbe_v8_1.quote_cancel_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Quote Request Reject Message
  if template_id == 405 then
    return b3_equities_binaryentrypoint_sbe_v8_1.quote_request_reject_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Position Maintenance Cancel Request Message
  if template_id == 501 then
    return b3_equities_binaryentrypoint_sbe_v8_1.position_maintenance_cancel_request_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Position Maintenance Request Message
  if template_id == 502 then
    return b3_equities_binaryentrypoint_sbe_v8_1.position_maintenance_request_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Position Maintenance Report Message
  if template_id == 503 then
    return b3_equities_binaryentrypoint_sbe_v8_1.position_maintenance_report_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Allocation Instruction Message
  if template_id == 601 then
    return b3_equities_binaryentrypoint_sbe_v8_1.allocation_instruction_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Allocation Report Message
  if template_id == 602 then
    return b3_equities_binaryentrypoint_sbe_v8_1.allocation_report_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Order Mass Action Request Message
  if template_id == 701 then
    return b3_equities_binaryentrypoint_sbe_v8_1.order_mass_action_request_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Order Mass Action Report Message
  if template_id == 702 then
    return b3_equities_binaryentrypoint_sbe_v8_1.order_mass_action_report_message.dissect(buffer, offset, packet, parent)
  end

  return offset
end

-- Dissect: Payload
b3_equities_binaryentrypoint_sbe_v8_1.payload.dissect = function(buffer, offset, packet, parent, template_id)
  if not show.payload then
    return b3_equities_binaryentrypoint_sbe_v8_1.payload.branches(buffer, offset, packet, parent, template_id)
  end

  -- Calculate size and check that branch is not empty
  local size = b3_equities_binaryentrypoint_sbe_v8_1.payload.size(buffer, offset, template_id)
  if size == 0 then
    return offset
  end

  -- Dissect Element
  local range = buffer(offset, size)
  local display = b3_equities_binaryentrypoint_sbe_v8_1.payload.display(buffer, packet, parent)
  local element = parent:add(omi_b3_equities_binaryentrypoint_sbe_v8_1.fields.payload, range, display)

  return b3_equities_binaryentrypoint_sbe_v8_1.payload.branches(buffer, offset, packet, parent, template_id)
end

-- Version
b3_equities_binaryentrypoint_sbe_v8_1.version = {}

-- Size: Version
b3_equities_binaryentrypoint_sbe_v8_1.version.size = 2

-- Display: Version
b3_equities_binaryentrypoint_sbe_v8_1.version.display = function(value)
  return "Version: "..value
end

-- Dissect: Version
b3_equities_binaryentrypoint_sbe_v8_1.version.dissect = function(buffer, offset, packet, parent)
  local length = b3_equities_binaryentrypoint_sbe_v8_1.version.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = b3_equities_binaryentrypoint_sbe_v8_1.version.display(value, buffer, offset, packet, parent)

  parent:add(omi_b3_equities_binaryentrypoint_sbe_v8_1.fields.version, range, value, display)

  return offset + length, value
end

-- Schema Id
b3_equities_binaryentrypoint_sbe_v8_1.schema_id = {}

-- Size: Schema Id
b3_equities_binaryentrypoint_sbe_v8_1.schema_id.size = 2

-- Display: Schema Id
b3_equities_binaryentrypoint_sbe_v8_1.schema_id.display = function(value)
  return "Schema Id: "..value
end

-- Dissect: Schema Id
b3_equities_binaryentrypoint_sbe_v8_1.schema_id.dissect = function(buffer, offset, packet, parent)
  local length = b3_equities_binaryentrypoint_sbe_v8_1.schema_id.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = b3_equities_binaryentrypoint_sbe_v8_1.schema_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_b3_equities_binaryentrypoint_sbe_v8_1.fields.schema_id, range, value, display)

  return offset + length, value
end

-- Template Id
b3_equities_binaryentrypoint_sbe_v8_1.template_id = {}

-- Size: Template Id
b3_equities_binaryentrypoint_sbe_v8_1.template_id.size = 2

-- Display: Template Id
b3_equities_binaryentrypoint_sbe_v8_1.template_id.display = function(value)
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
    return "Template Id: Business Message Reject Message (206)"
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

  return "Template Id: Unknown("..value..")"
end

-- Dissect: Template Id
b3_equities_binaryentrypoint_sbe_v8_1.template_id.dissect = function(buffer, offset, packet, parent)
  local length = b3_equities_binaryentrypoint_sbe_v8_1.template_id.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = b3_equities_binaryentrypoint_sbe_v8_1.template_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_b3_equities_binaryentrypoint_sbe_v8_1.fields.template_id, range, value, display)

  return offset + length, value
end

-- Message Header
b3_equities_binaryentrypoint_sbe_v8_1.message_header = {}

-- Calculate size of: Message Header
b3_equities_binaryentrypoint_sbe_v8_1.message_header.size = function(buffer, offset)
  local index = 0

  index = index + b3_equities_binaryentrypoint_sbe_v8_1.block_length.size

  index = index + b3_equities_binaryentrypoint_sbe_v8_1.template_id.size

  index = index + b3_equities_binaryentrypoint_sbe_v8_1.schema_id.size

  index = index + b3_equities_binaryentrypoint_sbe_v8_1.version.size

  return index
end

-- Display: Message Header
b3_equities_binaryentrypoint_sbe_v8_1.message_header.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Message Header
b3_equities_binaryentrypoint_sbe_v8_1.message_header.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Block Length: 2 Byte Unsigned Fixed Width Integer
  index, block_length = b3_equities_binaryentrypoint_sbe_v8_1.block_length.dissect(buffer, index, packet, parent)

  -- Template Id: 2 Byte Unsigned Fixed Width Integer Enum with 39 values
  index, template_id = b3_equities_binaryentrypoint_sbe_v8_1.template_id.dissect(buffer, index, packet, parent)

  -- Schema Id: 2 Byte Unsigned Fixed Width Integer Static
  index, schema_id = b3_equities_binaryentrypoint_sbe_v8_1.schema_id.dissect(buffer, index, packet, parent)

  -- Version: 2 Byte Unsigned Fixed Width Integer Static
  index, version = b3_equities_binaryentrypoint_sbe_v8_1.version.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Message Header
b3_equities_binaryentrypoint_sbe_v8_1.message_header.dissect = function(buffer, offset, packet, parent)
  if show.message_header then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_b3_equities_binaryentrypoint_sbe_v8_1.fields.message_header, buffer(offset, 0))
    local index = b3_equities_binaryentrypoint_sbe_v8_1.message_header.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = b3_equities_binaryentrypoint_sbe_v8_1.message_header.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return b3_equities_binaryentrypoint_sbe_v8_1.message_header.fields(buffer, offset, packet, parent)
  end
end

-- Encoding Type
b3_equities_binaryentrypoint_sbe_v8_1.encoding_type = {}

-- Size: Encoding Type
b3_equities_binaryentrypoint_sbe_v8_1.encoding_type.size = 2

-- Display: Encoding Type
b3_equities_binaryentrypoint_sbe_v8_1.encoding_type.display = function(value)
  return "Encoding Type: "..value
end

-- Dissect: Encoding Type
b3_equities_binaryentrypoint_sbe_v8_1.encoding_type.dissect = function(buffer, offset, packet, parent)
  local length = b3_equities_binaryentrypoint_sbe_v8_1.encoding_type.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = b3_equities_binaryentrypoint_sbe_v8_1.encoding_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_b3_equities_binaryentrypoint_sbe_v8_1.fields.encoding_type, range, value, display)

  return offset + length, value
end

-- Message Length
b3_equities_binaryentrypoint_sbe_v8_1.message_length = {}

-- Size: Message Length
b3_equities_binaryentrypoint_sbe_v8_1.message_length.size = 2

-- Display: Message Length
b3_equities_binaryentrypoint_sbe_v8_1.message_length.display = function(value)
  return "Message Length: "..value
end

-- Dissect: Message Length
b3_equities_binaryentrypoint_sbe_v8_1.message_length.dissect = function(buffer, offset, packet, parent)
  local length = b3_equities_binaryentrypoint_sbe_v8_1.message_length.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = b3_equities_binaryentrypoint_sbe_v8_1.message_length.display(value, buffer, offset, packet, parent)

  parent:add(omi_b3_equities_binaryentrypoint_sbe_v8_1.fields.message_length, range, value, display)

  return offset + length, value
end

-- Simple Open Framing Header
b3_equities_binaryentrypoint_sbe_v8_1.simple_open_framing_header = {}

-- Calculate size of: Simple Open Framing Header
b3_equities_binaryentrypoint_sbe_v8_1.simple_open_framing_header.size = function(buffer, offset)
  local index = 0

  index = index + b3_equities_binaryentrypoint_sbe_v8_1.message_length.size

  index = index + b3_equities_binaryentrypoint_sbe_v8_1.encoding_type.size

  return index
end

-- Display: Simple Open Framing Header
b3_equities_binaryentrypoint_sbe_v8_1.simple_open_framing_header.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Simple Open Framing Header
b3_equities_binaryentrypoint_sbe_v8_1.simple_open_framing_header.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Message Length: 2 Byte Unsigned Fixed Width Integer
  index, message_length = b3_equities_binaryentrypoint_sbe_v8_1.message_length.dissect(buffer, index, packet, parent)

  -- Encoding Type: 2 Byte Unsigned Fixed Width Integer
  index, encoding_type = b3_equities_binaryentrypoint_sbe_v8_1.encoding_type.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Simple Open Framing Header
b3_equities_binaryentrypoint_sbe_v8_1.simple_open_framing_header.dissect = function(buffer, offset, packet, parent)
  if show.simple_open_framing_header then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_b3_equities_binaryentrypoint_sbe_v8_1.fields.simple_open_framing_header, buffer(offset, 0))
    local index = b3_equities_binaryentrypoint_sbe_v8_1.simple_open_framing_header.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = b3_equities_binaryentrypoint_sbe_v8_1.simple_open_framing_header.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return b3_equities_binaryentrypoint_sbe_v8_1.simple_open_framing_header.fields(buffer, offset, packet, parent)
  end
end

-- Simple Open Frame
b3_equities_binaryentrypoint_sbe_v8_1.simple_open_frame = {}

-- Display: Simple Open Frame
b3_equities_binaryentrypoint_sbe_v8_1.simple_open_frame.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Simple Open Frame
b3_equities_binaryentrypoint_sbe_v8_1.simple_open_frame.fields = function(buffer, offset, packet, parent, size_of_simple_open_frame)
  local index = offset

  -- Simple Open Framing Header: Struct of 2 fields
  index, simple_open_framing_header = b3_equities_binaryentrypoint_sbe_v8_1.simple_open_framing_header.dissect(buffer, index, packet, parent)

  -- Message Header: Struct of 4 fields
  index, message_header = b3_equities_binaryentrypoint_sbe_v8_1.message_header.dissect(buffer, index, packet, parent)

  -- Dependency element: Template Id
  local template_id = buffer(index - 6, 2):le_uint()

  -- Payload: Runtime Type with 39 branches
  index = b3_equities_binaryentrypoint_sbe_v8_1.payload.dissect(buffer, index, packet, parent, template_id)

  return index
end

-- Dissect: Simple Open Frame
b3_equities_binaryentrypoint_sbe_v8_1.simple_open_frame.dissect = function(buffer, offset, packet, parent, size_of_simple_open_frame)
  local index = offset + size_of_simple_open_frame

  -- Optionally add group/struct element to protocol tree
  if show.simple_open_frame then
    parent = parent:add(omi_b3_equities_binaryentrypoint_sbe_v8_1.fields.simple_open_frame, buffer(offset, 0))
    local current = b3_equities_binaryentrypoint_sbe_v8_1.simple_open_frame.fields(buffer, offset, packet, parent, size_of_simple_open_frame)
    parent:set_len(size_of_simple_open_frame)
    local display = b3_equities_binaryentrypoint_sbe_v8_1.simple_open_frame.display(buffer, packet, parent)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    b3_equities_binaryentrypoint_sbe_v8_1.simple_open_frame.fields(buffer, offset, packet, parent, size_of_simple_open_frame)

    return index
  end
end

-- Remaining Bytes For: Simple Open Frame
local simple_open_frame_bytes_remaining = function(buffer, index, available)
  -- Calculate the number of bytes remaining
  local remaining = available - index

  -- Check if packet size can be read
  if remaining < b3_equities_binaryentrypoint_sbe_v8_1.simple_open_framing_header.size(buffer, index) then
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

-- Packet
b3_equities_binaryentrypoint_sbe_v8_1.packet = {}

-- Dissect Packet
b3_equities_binaryentrypoint_sbe_v8_1.packet.dissect = function(buffer, packet, parent)
  local index = 0

  -- Dependency for Simple Open Frame
  local end_of_payload = buffer:len()

  -- Simple Open Frame: Struct of 3 fields
  while index < end_of_payload do

    -- Are minimum number of bytes are available?
    local available, size_of_simple_open_frame = simple_open_frame_bytes_remaining(buffer, index, end_of_payload)

    if available > 0 then
      index = b3_equities_binaryentrypoint_sbe_v8_1.simple_open_frame.dissect(buffer, index, packet, parent, size_of_simple_open_frame)
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
function omi_b3_equities_binaryentrypoint_sbe_v8_1.init()
end

-- Dissector for B3 Equities BinaryEntryPoint Sbe 8.1
function omi_b3_equities_binaryentrypoint_sbe_v8_1.dissector(buffer, packet, parent)

  -- Set protocol name
  packet.cols.protocol = omi_b3_equities_binaryentrypoint_sbe_v8_1.name

  -- Dissect protocol
  local protocol = parent:add(omi_b3_equities_binaryentrypoint_sbe_v8_1, buffer(), omi_b3_equities_binaryentrypoint_sbe_v8_1.description, "("..buffer:len().." Bytes)")
  return b3_equities_binaryentrypoint_sbe_v8_1.packet.dissect(buffer, packet, protocol)
end

-- Register With Tcp Table
local tcp_table = DissectorTable.get("tcp.port")
tcp_table:add(65333, omi_b3_equities_binaryentrypoint_sbe_v8_1)


-----------------------------------------------------------------------
-- Protocol Heuristics
-----------------------------------------------------------------------

-- Verify size of packet
verify.omi_b3_equities_binaryentrypoint_sbe_v8_1_packet_size = function(buffer)

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

  if value == 3 then
    return true
  end

  return false
end

-- Dissector Heuristic for B3 Equities BinaryEntryPoint Sbe 8.1
local function omi_b3_equities_binaryentrypoint_sbe_v8_1_heuristic(buffer, packet, parent)
  -- Verify packet length
  if not verify.omi_b3_equities_binaryentrypoint_sbe_v8_1_packet_size(buffer) then return false end

  -- Verify Schema Id
  if not verify.schema_id(buffer) then return false end

  -- Verify Version
  if not verify.version(buffer) then return false end

  -- Protocol is valid, set conversation and dissect this packet
  packet.conversation = omi_b3_equities_binaryentrypoint_sbe_v8_1
  omi_b3_equities_binaryentrypoint_sbe_v8_1.dissector(buffer, packet, parent)

  return true
end

-- Register Heuristic for B3 Equities BinaryEntryPoint Sbe 8.1
omi_b3_equities_binaryentrypoint_sbe_v8_1:register_heuristic("tcp", omi_b3_equities_binaryentrypoint_sbe_v8_1_heuristic)

-----------------------------------------------------------------------
-- Lua dissectors are an easily edited and modified cross platform dissection solution.
-- Feel free to modify. Enjoy.
-----------------------------------------------------------------------
-- 
-- Protocol:
--   Organization: Brasil, Bolsa, Balcão
--   Version: 8.1
--   Date: Monday, June 10, 2024
--   Specification: BinaryEntryPoint-MessageReference-8.1.1.2-enUS.pdf
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
