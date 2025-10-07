-----------------------------------------------------------------------
-- Lua Script Wireshark Dissector
-- 
-- Please see end of file for rules and regulations
-----------------------------------------------------------------------

-- Memx Options RiskControl Sbe 1.6 Protocol
local omi_memx_options_riskcontrol_sbe_v1_6 = Proto("Memx.Options.RiskControl.Sbe.v1.6.Lua", "Memx Options RiskControl Sbe 1.6")

-- Protocol table
local memx_options_riskcontrol_sbe_v1_6 = {}

-----------------------------------------------------------------------
-- Declare Protocol Fields
-----------------------------------------------------------------------

-- Memx Options RiskControl Sbe 1.6 Fields
omi_memx_options_riskcontrol_sbe_v1_6.fields.allow_iso_orders = ProtoField.new("Allow Iso Orders", "memx.options.riskcontrol.sbe.v1.6.allowisoorders", ftypes.UINT8)
omi_memx_options_riskcontrol_sbe_v1_6.fields.allow_orders = ProtoField.new("Allow Orders", "memx.options.riskcontrol.sbe.v1.6.alloworders", ftypes.UINT8)
omi_memx_options_riskcontrol_sbe_v1_6.fields.block_length = ProtoField.new("Block Length", "memx.options.riskcontrol.sbe.v1.6.blocklength", ftypes.UINT16)
omi_memx_options_riskcontrol_sbe_v1_6.fields.breach_id = ProtoField.new("Breach Id", "memx.options.riskcontrol.sbe.v1.6.breachid", ftypes.UINT64)
omi_memx_options_riskcontrol_sbe_v1_6.fields.breach_id_optional = ProtoField.new("Breach Id Optional", "memx.options.riskcontrol.sbe.v1.6.breachidoptional", ftypes.UINT64)
omi_memx_options_riskcontrol_sbe_v1_6.fields.clordid = ProtoField.new("ClOrdId", "memx.options.riskcontrol.sbe.v1.6.clordid", ftypes.STRING)
omi_memx_options_riskcontrol_sbe_v1_6.fields.clordid_optional = ProtoField.new("ClOrdId Optional", "memx.options.riskcontrol.sbe.v1.6.clordidoptional", ftypes.STRING)
omi_memx_options_riskcontrol_sbe_v1_6.fields.common_header = ProtoField.new("Common Header", "memx.options.riskcontrol.sbe.v1.6.commonheader", ftypes.STRING)
omi_memx_options_riskcontrol_sbe_v1_6.fields.count = ProtoField.new("Count", "memx.options.riskcontrol.sbe.v1.6.count", ftypes.UINT32)
omi_memx_options_riskcontrol_sbe_v1_6.fields.data = ProtoField.new("Data", "memx.options.riskcontrol.sbe.v1.6.data", ftypes.STRING)
omi_memx_options_riskcontrol_sbe_v1_6.fields.efid = ProtoField.new("Efid", "memx.options.riskcontrol.sbe.v1.6.efid", ftypes.STRING)
omi_memx_options_riskcontrol_sbe_v1_6.fields.efid_optional = ProtoField.new("Efid Optional", "memx.options.riskcontrol.sbe.v1.6.efidoptional", ftypes.STRING)
omi_memx_options_riskcontrol_sbe_v1_6.fields.last_px = ProtoField.new("Last Px", "memx.options.riskcontrol.sbe.v1.6.lastpx", ftypes.DOUBLE)
omi_memx_options_riskcontrol_sbe_v1_6.fields.last_qty = ProtoField.new("Last Qty", "memx.options.riskcontrol.sbe.v1.6.lastqty", ftypes.UINT32)
omi_memx_options_riskcontrol_sbe_v1_6.fields.latest_percentage = ProtoField.new("Latest Percentage", "memx.options.riskcontrol.sbe.v1.6.latestpercentage", ftypes.UINT8)
omi_memx_options_riskcontrol_sbe_v1_6.fields.login_accepted_message = ProtoField.new("Login Accepted Message", "memx.options.riskcontrol.sbe.v1.6.loginacceptedmessage", ftypes.STRING)
omi_memx_options_riskcontrol_sbe_v1_6.fields.login_reject_code = ProtoField.new("Login Reject Code", "memx.options.riskcontrol.sbe.v1.6.loginrejectcode", ftypes.STRING)
omi_memx_options_riskcontrol_sbe_v1_6.fields.login_rejected_message = ProtoField.new("Login Rejected Message", "memx.options.riskcontrol.sbe.v1.6.loginrejectedmessage", ftypes.STRING)
omi_memx_options_riskcontrol_sbe_v1_6.fields.login_request_message = ProtoField.new("Login Request Message", "memx.options.riskcontrol.sbe.v1.6.loginrequestmessage", ftypes.STRING)
omi_memx_options_riskcontrol_sbe_v1_6.fields.max_contracts = ProtoField.new("Max Contracts", "memx.options.riskcontrol.sbe.v1.6.maxcontracts", ftypes.UINT32)
omi_memx_options_riskcontrol_sbe_v1_6.fields.max_dup_orders = ProtoField.new("Max Dup Orders", "memx.options.riskcontrol.sbe.v1.6.maxduporders", ftypes.UINT32)
omi_memx_options_riskcontrol_sbe_v1_6.fields.max_notional_in_dollars = ProtoField.new("Max Notional In Dollars", "memx.options.riskcontrol.sbe.v1.6.maxnotionalindollars", ftypes.UINT64)
omi_memx_options_riskcontrol_sbe_v1_6.fields.max_order_msgs = ProtoField.new("Max Order Msgs", "memx.options.riskcontrol.sbe.v1.6.maxordermsgs", ftypes.UINT32)
omi_memx_options_riskcontrol_sbe_v1_6.fields.max_sequence_number = ProtoField.new("Max Sequence Number", "memx.options.riskcontrol.sbe.v1.6.maxsequencenumber", ftypes.UINT64)
omi_memx_options_riskcontrol_sbe_v1_6.fields.message_count = ProtoField.new("Message Count", "memx.options.riskcontrol.sbe.v1.6.messagecount", ftypes.UINT64)
omi_memx_options_riskcontrol_sbe_v1_6.fields.message_length = ProtoField.new("Message Length", "memx.options.riskcontrol.sbe.v1.6.messagelength", ftypes.UINT16)
omi_memx_options_riskcontrol_sbe_v1_6.fields.message_type = ProtoField.new("Message Type", "memx.options.riskcontrol.sbe.v1.6.messagetype", ftypes.UINT8)
omi_memx_options_riskcontrol_sbe_v1_6.fields.next_sequence_number = ProtoField.new("Next Sequence Number", "memx.options.riskcontrol.sbe.v1.6.nextsequencenumber", ftypes.UINT64)
omi_memx_options_riskcontrol_sbe_v1_6.fields.number_msgs_sent = ProtoField.new("Number Msgs Sent", "memx.options.riskcontrol.sbe.v1.6.numbermsgssent", ftypes.UINT32)
omi_memx_options_riskcontrol_sbe_v1_6.fields.option_security_id = ProtoField.new("Option Security Id", "memx.options.riskcontrol.sbe.v1.6.optionsecurityid", ftypes.STRING)
omi_memx_options_riskcontrol_sbe_v1_6.fields.order_id = ProtoField.new("Order Id", "memx.options.riskcontrol.sbe.v1.6.orderid", ftypes.UINT64)
omi_memx_options_riskcontrol_sbe_v1_6.fields.packet = ProtoField.new("Packet", "memx.options.riskcontrol.sbe.v1.6.packet", ftypes.STRING)
omi_memx_options_riskcontrol_sbe_v1_6.fields.payload = ProtoField.new("Payload", "memx.options.riskcontrol.sbe.v1.6.payload", ftypes.STRING)
omi_memx_options_riskcontrol_sbe_v1_6.fields.pending_message_count = ProtoField.new("Pending Message Count", "memx.options.riskcontrol.sbe.v1.6.pendingmessagecount", ftypes.UINT32)
omi_memx_options_riskcontrol_sbe_v1_6.fields.percent = ProtoField.new("Percent", "memx.options.riskcontrol.sbe.v1.6.percent", ftypes.INT32)
omi_memx_options_riskcontrol_sbe_v1_6.fields.period_in_milli_seconds = ProtoField.new("Period In Milli Seconds", "memx.options.riskcontrol.sbe.v1.6.periodinmilliseconds", ftypes.UINT32)
omi_memx_options_riskcontrol_sbe_v1_6.fields.price_in_dollars = ProtoField.new("Price In Dollars", "memx.options.riskcontrol.sbe.v1.6.priceindollars", ftypes.UINT64)
omi_memx_options_riskcontrol_sbe_v1_6.fields.quantity = ProtoField.new("Quantity", "memx.options.riskcontrol.sbe.v1.6.quantity", ftypes.UINT32)
omi_memx_options_riskcontrol_sbe_v1_6.fields.reject_reason = ProtoField.new("Reject Reason", "memx.options.riskcontrol.sbe.v1.6.rejectreason", ftypes.UINT16)
omi_memx_options_riskcontrol_sbe_v1_6.fields.replay_all_request_message = ProtoField.new("Replay All Request Message", "memx.options.riskcontrol.sbe.v1.6.replayallrequestmessage", ftypes.STRING)
omi_memx_options_riskcontrol_sbe_v1_6.fields.replay_begin_message = ProtoField.new("Replay Begin Message", "memx.options.riskcontrol.sbe.v1.6.replaybeginmessage", ftypes.STRING)
omi_memx_options_riskcontrol_sbe_v1_6.fields.replay_complete_message = ProtoField.new("Replay Complete Message", "memx.options.riskcontrol.sbe.v1.6.replaycompletemessage", ftypes.STRING)
omi_memx_options_riskcontrol_sbe_v1_6.fields.replay_reject_code = ProtoField.new("Replay Reject Code", "memx.options.riskcontrol.sbe.v1.6.replayrejectcode", ftypes.STRING)
omi_memx_options_riskcontrol_sbe_v1_6.fields.replay_rejected_message = ProtoField.new("Replay Rejected Message", "memx.options.riskcontrol.sbe.v1.6.replayrejectedmessage", ftypes.STRING)
omi_memx_options_riskcontrol_sbe_v1_6.fields.replay_request_message = ProtoField.new("Replay Request Message", "memx.options.riskcontrol.sbe.v1.6.replayrequestmessage", ftypes.STRING)
omi_memx_options_riskcontrol_sbe_v1_6.fields.risk_group_id = ProtoField.new("Risk Group Id", "memx.options.riskcontrol.sbe.v1.6.riskgroupid", ftypes.UINT16)
omi_memx_options_riskcontrol_sbe_v1_6.fields.risk_type = ProtoField.new("Risk Type", "memx.options.riskcontrol.sbe.v1.6.risktype", ftypes.UINT8)
omi_memx_options_riskcontrol_sbe_v1_6.fields.rule_type = ProtoField.new("Rule Type", "memx.options.riskcontrol.sbe.v1.6.ruletype", ftypes.UINT8)
omi_memx_options_riskcontrol_sbe_v1_6.fields.sbe_header = ProtoField.new("Sbe Header", "memx.options.riskcontrol.sbe.v1.6.sbeheader", ftypes.STRING)
omi_memx_options_riskcontrol_sbe_v1_6.fields.sbe_message = ProtoField.new("Sbe Message", "memx.options.riskcontrol.sbe.v1.6.sbemessage", ftypes.STRING)
omi_memx_options_riskcontrol_sbe_v1_6.fields.schema_id = ProtoField.new("Schema Id", "memx.options.riskcontrol.sbe.v1.6.schemaid", ftypes.UINT8)
omi_memx_options_riskcontrol_sbe_v1_6.fields.send_cancels = ProtoField.new("Send Cancels", "memx.options.riskcontrol.sbe.v1.6.sendcancels", ftypes.UINT8)
omi_memx_options_riskcontrol_sbe_v1_6.fields.sending_time = ProtoField.new("Sending Time", "memx.options.riskcontrol.sbe.v1.6.sendingtime", ftypes.UINT64)
omi_memx_options_riskcontrol_sbe_v1_6.fields.sequenced_message = ProtoField.new("Sequenced Message", "memx.options.riskcontrol.sbe.v1.6.sequencedmessage", ftypes.STRING)
omi_memx_options_riskcontrol_sbe_v1_6.fields.session_id = ProtoField.new("Session Id", "memx.options.riskcontrol.sbe.v1.6.sessionid", ftypes.UINT64)
omi_memx_options_riskcontrol_sbe_v1_6.fields.side = ProtoField.new("Side", "memx.options.riskcontrol.sbe.v1.6.side", ftypes.STRING)
omi_memx_options_riskcontrol_sbe_v1_6.fields.start_of_session_message = ProtoField.new("Start Of Session Message", "memx.options.riskcontrol.sbe.v1.6.startofsessionmessage", ftypes.STRING)
omi_memx_options_riskcontrol_sbe_v1_6.fields.stream_begin_message = ProtoField.new("Stream Begin Message", "memx.options.riskcontrol.sbe.v1.6.streambeginmessage", ftypes.STRING)
omi_memx_options_riskcontrol_sbe_v1_6.fields.stream_complete_message = ProtoField.new("Stream Complete Message", "memx.options.riskcontrol.sbe.v1.6.streamcompletemessage", ftypes.STRING)
omi_memx_options_riskcontrol_sbe_v1_6.fields.stream_reject_code = ProtoField.new("Stream Reject Code", "memx.options.riskcontrol.sbe.v1.6.streamrejectcode", ftypes.STRING)
omi_memx_options_riskcontrol_sbe_v1_6.fields.stream_rejected_message = ProtoField.new("Stream Rejected Message", "memx.options.riskcontrol.sbe.v1.6.streamrejectedmessage", ftypes.STRING)
omi_memx_options_riskcontrol_sbe_v1_6.fields.stream_request_message = ProtoField.new("Stream Request Message", "memx.options.riskcontrol.sbe.v1.6.streamrequestmessage", ftypes.STRING)
omi_memx_options_riskcontrol_sbe_v1_6.fields.supported_request_mode = ProtoField.new("Supported Request Mode", "memx.options.riskcontrol.sbe.v1.6.supportedrequestmode", ftypes.STRING)
omi_memx_options_riskcontrol_sbe_v1_6.fields.template_id = ProtoField.new("Template Id", "memx.options.riskcontrol.sbe.v1.6.templateid", ftypes.UINT8)
omi_memx_options_riskcontrol_sbe_v1_6.fields.threshold_quantity = ProtoField.new("Threshold Quantity", "memx.options.riskcontrol.sbe.v1.6.thresholdquantity", ftypes.UINT32)
omi_memx_options_riskcontrol_sbe_v1_6.fields.token = ProtoField.new("Token", "memx.options.riskcontrol.sbe.v1.6.token", ftypes.STRING)
omi_memx_options_riskcontrol_sbe_v1_6.fields.token_type = ProtoField.new("Token Type", "memx.options.riskcontrol.sbe.v1.6.tokentype", ftypes.STRING)
omi_memx_options_riskcontrol_sbe_v1_6.fields.total_affected_orders = ProtoField.new("Total Affected Orders", "memx.options.riskcontrol.sbe.v1.6.totalaffectedorders", ftypes.UINT32)
omi_memx_options_riskcontrol_sbe_v1_6.fields.total_executions = ProtoField.new("Total Executions", "memx.options.riskcontrol.sbe.v1.6.totalexecutions", ftypes.UINT32)
omi_memx_options_riskcontrol_sbe_v1_6.fields.total_sequence_count = ProtoField.new("Total Sequence Count", "memx.options.riskcontrol.sbe.v1.6.totalsequencecount", ftypes.UINT64)
omi_memx_options_riskcontrol_sbe_v1_6.fields.transact_time = ProtoField.new("Transact Time", "memx.options.riskcontrol.sbe.v1.6.transacttime", ftypes.UINT64)
omi_memx_options_riskcontrol_sbe_v1_6.fields.trd_match_id = ProtoField.new("Trd Match Id", "memx.options.riskcontrol.sbe.v1.6.trdmatchid", ftypes.UINT64)
omi_memx_options_riskcontrol_sbe_v1_6.fields.unacked_quantity = ProtoField.new("Unacked Quantity", "memx.options.riskcontrol.sbe.v1.6.unackedquantity", ftypes.UINT32)
omi_memx_options_riskcontrol_sbe_v1_6.fields.underlier = ProtoField.new("Underlier", "memx.options.riskcontrol.sbe.v1.6.underlier", ftypes.STRING)
omi_memx_options_riskcontrol_sbe_v1_6.fields.underlier_optional = ProtoField.new("Underlier Optional", "memx.options.riskcontrol.sbe.v1.6.underlieroptional", ftypes.STRING)
omi_memx_options_riskcontrol_sbe_v1_6.fields.unsequenced_message = ProtoField.new("Unsequenced Message", "memx.options.riskcontrol.sbe.v1.6.unsequencedmessage", ftypes.STRING)
omi_memx_options_riskcontrol_sbe_v1_6.fields.use_order_price_in_dup_check = ProtoField.new("Use Order Price In Dup Check", "memx.options.riskcontrol.sbe.v1.6.useorderpriceindupcheck", ftypes.UINT8)
omi_memx_options_riskcontrol_sbe_v1_6.fields.use_order_price_in_dup_check_optional = ProtoField.new("Use Order Price In Dup Check Optional", "memx.options.riskcontrol.sbe.v1.6.useorderpriceindupcheckoptional", ftypes.UINT8)
omi_memx_options_riskcontrol_sbe_v1_6.fields.version = ProtoField.new("Version", "memx.options.riskcontrol.sbe.v1.6.version", ftypes.UINT16)
omi_memx_options_riskcontrol_sbe_v1_6.fields.volume = ProtoField.new("Volume", "memx.options.riskcontrol.sbe.v1.6.volume", ftypes.UINT64)

-- Memx Options RiskControl Sbe 1.6 messages
omi_memx_options_riskcontrol_sbe_v1_6.fields.active_risk_acknowledge_rej_message = ProtoField.new("Active Risk Acknowledge Rej Message", "memx.options.riskcontrol.sbe.v1.6.activeriskacknowledgerejmessage", ftypes.STRING)
omi_memx_options_riskcontrol_sbe_v1_6.fields.active_risk_acknowledged_message = ProtoField.new("Active Risk Acknowledged Message", "memx.options.riskcontrol.sbe.v1.6.activeriskacknowledgedmessage", ftypes.STRING)
omi_memx_options_riskcontrol_sbe_v1_6.fields.active_risk_acknowledgement_req_message = ProtoField.new("Active Risk Acknowledgement Req Message", "memx.options.riskcontrol.sbe.v1.6.activeriskacknowledgementreqmessage", ftypes.STRING)
omi_memx_options_riskcontrol_sbe_v1_6.fields.active_risk_quantity_update_notification_message = ProtoField.new("Active Risk Quantity Update Notification Message", "memx.options.riskcontrol.sbe.v1.6.activeriskquantityupdatenotificationmessage", ftypes.STRING)
omi_memx_options_riskcontrol_sbe_v1_6.fields.active_risk_threshold_change_rej_message = ProtoField.new("Active Risk Threshold Change Rej Message", "memx.options.riskcontrol.sbe.v1.6.activeriskthresholdchangerejmessage", ftypes.STRING)
omi_memx_options_riskcontrol_sbe_v1_6.fields.active_risk_threshold_change_req_message = ProtoField.new("Active Risk Threshold Change Req Message", "memx.options.riskcontrol.sbe.v1.6.activeriskthresholdchangereqmessage", ftypes.STRING)
omi_memx_options_riskcontrol_sbe_v1_6.fields.active_risk_threshold_state_message = ProtoField.new("Active Risk Threshold State Message", "memx.options.riskcontrol.sbe.v1.6.activeriskthresholdstatemessage", ftypes.STRING)
omi_memx_options_riskcontrol_sbe_v1_6.fields.breach_clear_rej_message = ProtoField.new("Breach Clear Rej Message", "memx.options.riskcontrol.sbe.v1.6.breachclearrejmessage", ftypes.STRING)
omi_memx_options_riskcontrol_sbe_v1_6.fields.breach_cleared_message = ProtoField.new("Breach Cleared Message", "memx.options.riskcontrol.sbe.v1.6.breachclearedmessage", ftypes.STRING)
omi_memx_options_riskcontrol_sbe_v1_6.fields.cp_breach_count_threshold_change_req_message = ProtoField.new("Cp Breach Count Threshold Change Req Message", "memx.options.riskcontrol.sbe.v1.6.cpbreachcountthresholdchangereqmessage", ftypes.STRING)
omi_memx_options_riskcontrol_sbe_v1_6.fields.cp_breach_count_threshold_state_message = ProtoField.new("Cp Breach Count Threshold State Message", "memx.options.riskcontrol.sbe.v1.6.cpbreachcountthresholdstatemessage", ftypes.STRING)
omi_memx_options_riskcontrol_sbe_v1_6.fields.cp_clear_breach_req_message = ProtoField.new("Cp Clear Breach Req Message", "memx.options.riskcontrol.sbe.v1.6.cpclearbreachreqmessage", ftypes.STRING)
omi_memx_options_riskcontrol_sbe_v1_6.fields.cp_duplicate_order_threshold_change_req_message = ProtoField.new("Cp Duplicate Order Threshold Change Req Message", "memx.options.riskcontrol.sbe.v1.6.cpduplicateorderthresholdchangereqmessage", ftypes.STRING)
omi_memx_options_riskcontrol_sbe_v1_6.fields.cp_duplicate_order_threshold_state_message = ProtoField.new("Cp Duplicate Order Threshold State Message", "memx.options.riskcontrol.sbe.v1.6.cpduplicateorderthresholdstatemessage", ftypes.STRING)
omi_memx_options_riskcontrol_sbe_v1_6.fields.cp_executed_notional_threshold_change_req_message = ProtoField.new("Cp Executed Notional Threshold Change Req Message", "memx.options.riskcontrol.sbe.v1.6.cpexecutednotionalthresholdchangereqmessage", ftypes.STRING)
omi_memx_options_riskcontrol_sbe_v1_6.fields.cp_executed_notional_threshold_state_message = ProtoField.new("Cp Executed Notional Threshold State Message", "memx.options.riskcontrol.sbe.v1.6.cpexecutednotionalthresholdstatemessage", ftypes.STRING)
omi_memx_options_riskcontrol_sbe_v1_6.fields.cp_gross_notional_threshold_change_req_message = ProtoField.new("Cp Gross Notional Threshold Change Req Message", "memx.options.riskcontrol.sbe.v1.6.cpgrossnotionalthresholdchangereqmessage", ftypes.STRING)
omi_memx_options_riskcontrol_sbe_v1_6.fields.cp_gross_notional_threshold_state_message = ProtoField.new("Cp Gross Notional Threshold State Message", "memx.options.riskcontrol.sbe.v1.6.cpgrossnotionalthresholdstatemessage", ftypes.STRING)
omi_memx_options_riskcontrol_sbe_v1_6.fields.cp_market_order_gross_notional_threshold_change_req_message = ProtoField.new("Cp Market Order Gross Notional Threshold Change Req Message", "memx.options.riskcontrol.sbe.v1.6.cpmarketordergrossnotionalthresholdchangereqmessage", ftypes.STRING)
omi_memx_options_riskcontrol_sbe_v1_6.fields.cp_market_order_gross_notional_threshold_state_message = ProtoField.new("Cp Market Order Gross Notional Threshold State Message", "memx.options.riskcontrol.sbe.v1.6.cpmarketordergrossnotionalthresholdstatemessage", ftypes.STRING)
omi_memx_options_riskcontrol_sbe_v1_6.fields.cp_market_order_net_notional_threshold_change_req_message = ProtoField.new("Cp Market Order Net Notional Threshold Change Req Message", "memx.options.riskcontrol.sbe.v1.6.cpmarketordernetnotionalthresholdchangereqmessage", ftypes.STRING)
omi_memx_options_riskcontrol_sbe_v1_6.fields.cp_market_order_net_notional_threshold_state_message = ProtoField.new("Cp Market Order Net Notional Threshold State Message", "memx.options.riskcontrol.sbe.v1.6.cpmarketordernetnotionalthresholdstatemessage", ftypes.STRING)
omi_memx_options_riskcontrol_sbe_v1_6.fields.cp_net_notional_threshold_change_req_message = ProtoField.new("Cp Net Notional Threshold Change Req Message", "memx.options.riskcontrol.sbe.v1.6.cpnetnotionalthresholdchangereqmessage", ftypes.STRING)
omi_memx_options_riskcontrol_sbe_v1_6.fields.cp_net_notional_threshold_state_message = ProtoField.new("Cp Net Notional Threshold State Message", "memx.options.riskcontrol.sbe.v1.6.cpnetnotionalthresholdstatemessage", ftypes.STRING)
omi_memx_options_riskcontrol_sbe_v1_6.fields.cp_order_rate_threshold_change_req_message = ProtoField.new("Cp Order Rate Threshold Change Req Message", "memx.options.riskcontrol.sbe.v1.6.cporderratethresholdchangereqmessage", ftypes.STRING)
omi_memx_options_riskcontrol_sbe_v1_6.fields.cp_order_rate_threshold_state_message = ProtoField.new("Cp Order Rate Threshold State Message", "memx.options.riskcontrol.sbe.v1.6.cporderratethresholdstatemessage", ftypes.STRING)
omi_memx_options_riskcontrol_sbe_v1_6.fields.cp_percent_outstanding_contracts_threshold_change_req_message = ProtoField.new("Cp Percent Outstanding Contracts Threshold Change Req Message", "memx.options.riskcontrol.sbe.v1.6.cppercentoutstandingcontractsthresholdchangereqmessage", ftypes.STRING)
omi_memx_options_riskcontrol_sbe_v1_6.fields.cp_percent_outstanding_contracts_threshold_state_message = ProtoField.new("Cp Percent Outstanding Contracts Threshold State Message", "memx.options.riskcontrol.sbe.v1.6.cppercentoutstandingcontractsthresholdstatemessage", ftypes.STRING)
omi_memx_options_riskcontrol_sbe_v1_6.fields.cp_total_executions_threshold_change_req_message = ProtoField.new("Cp Total Executions Threshold Change Req Message", "memx.options.riskcontrol.sbe.v1.6.cptotalexecutionsthresholdchangereqmessage", ftypes.STRING)
omi_memx_options_riskcontrol_sbe_v1_6.fields.cp_total_executions_threshold_state_message = ProtoField.new("Cp Total Executions Threshold State Message", "memx.options.riskcontrol.sbe.v1.6.cptotalexecutionsthresholdstatemessage", ftypes.STRING)
omi_memx_options_riskcontrol_sbe_v1_6.fields.cp_volume_threshold_change_req_message = ProtoField.new("Cp Volume Threshold Change Req Message", "memx.options.riskcontrol.sbe.v1.6.cpvolumethresholdchangereqmessage", ftypes.STRING)
omi_memx_options_riskcontrol_sbe_v1_6.fields.cp_volume_threshold_state_message = ProtoField.new("Cp Volume Threshold State Message", "memx.options.riskcontrol.sbe.v1.6.cpvolumethresholdstatemessage", ftypes.STRING)
omi_memx_options_riskcontrol_sbe_v1_6.fields.manual_cp_breach_trigger_done_message = ProtoField.new("Manual Cp Breach Trigger Done Message", "memx.options.riskcontrol.sbe.v1.6.manualcpbreachtriggerdonemessage", ftypes.STRING)
omi_memx_options_riskcontrol_sbe_v1_6.fields.manual_cp_breach_trigger_pending_message = ProtoField.new("Manual Cp Breach Trigger Pending Message", "memx.options.riskcontrol.sbe.v1.6.manualcpbreachtriggerpendingmessage", ftypes.STRING)
omi_memx_options_riskcontrol_sbe_v1_6.fields.manual_cp_breach_trigger_rej_message = ProtoField.new("Manual Cp Breach Trigger Rej Message", "memx.options.riskcontrol.sbe.v1.6.manualcpbreachtriggerrejmessage", ftypes.STRING)
omi_memx_options_riskcontrol_sbe_v1_6.fields.manual_cp_breach_trigger_req_message = ProtoField.new("Manual Cp Breach Trigger Req Message", "memx.options.riskcontrol.sbe.v1.6.manualcpbreachtriggerreqmessage", ftypes.STRING)
omi_memx_options_riskcontrol_sbe_v1_6.fields.passive_risk_threshold_notification_message = ProtoField.new("Passive Risk Threshold Notification Message", "memx.options.riskcontrol.sbe.v1.6.passiveriskthresholdnotificationmessage", ftypes.STRING)
omi_memx_options_riskcontrol_sbe_v1_6.fields.risk_settings_query_done_message = ProtoField.new("Risk Settings Query Done Message", "memx.options.riskcontrol.sbe.v1.6.risksettingsquerydonemessage", ftypes.STRING)
omi_memx_options_riskcontrol_sbe_v1_6.fields.risk_settings_query_message = ProtoField.new("Risk Settings Query Message", "memx.options.riskcontrol.sbe.v1.6.risksettingsquerymessage", ftypes.STRING)
omi_memx_options_riskcontrol_sbe_v1_6.fields.risk_settings_query_rej_message = ProtoField.new("Risk Settings Query Rej Message", "memx.options.riskcontrol.sbe.v1.6.risksettingsqueryrejmessage", ftypes.STRING)
omi_memx_options_riskcontrol_sbe_v1_6.fields.risk_threshold_update_rej_message = ProtoField.new("Risk Threshold Update Rej Message", "memx.options.riskcontrol.sbe.v1.6.riskthresholdupdaterejmessage", ftypes.STRING)
omi_memx_options_riskcontrol_sbe_v1_6.fields.single_order_allow_iso_orders_change_req_message = ProtoField.new("Single Order Allow Iso Orders Change Req Message", "memx.options.riskcontrol.sbe.v1.6.singleorderallowisoorderschangereqmessage", ftypes.STRING)
omi_memx_options_riskcontrol_sbe_v1_6.fields.single_order_allow_iso_orders_state_message = ProtoField.new("Single Order Allow Iso Orders State Message", "memx.options.riskcontrol.sbe.v1.6.singleorderallowisoordersstatemessage", ftypes.STRING)
omi_memx_options_riskcontrol_sbe_v1_6.fields.single_order_allow_orders_in_crossed_market_change_req_message = ProtoField.new("Single Order Allow Orders In Crossed Market Change Req Message", "memx.options.riskcontrol.sbe.v1.6.singleorderallowordersincrossedmarketchangereqmessage", ftypes.STRING)
omi_memx_options_riskcontrol_sbe_v1_6.fields.single_order_allow_orders_in_crossed_market_state_message = ProtoField.new("Single Order Allow Orders In Crossed Market State Message", "memx.options.riskcontrol.sbe.v1.6.singleorderallowordersincrossedmarketstatemessage", ftypes.STRING)
omi_memx_options_riskcontrol_sbe_v1_6.fields.single_order_max_contracts_change_req_message = ProtoField.new("Single Order Max Contracts Change Req Message", "memx.options.riskcontrol.sbe.v1.6.singleordermaxcontractschangereqmessage", ftypes.STRING)
omi_memx_options_riskcontrol_sbe_v1_6.fields.single_order_max_contracts_threshold_state_message = ProtoField.new("Single Order Max Contracts Threshold State Message", "memx.options.riskcontrol.sbe.v1.6.singleordermaxcontractsthresholdstatemessage", ftypes.STRING)
omi_memx_options_riskcontrol_sbe_v1_6.fields.single_order_max_notional_change_req_message = ProtoField.new("Single Order Max Notional Change Req Message", "memx.options.riskcontrol.sbe.v1.6.singleordermaxnotionalchangereqmessage", ftypes.STRING)
omi_memx_options_riskcontrol_sbe_v1_6.fields.single_order_max_notional_threshold_state_message = ProtoField.new("Single Order Max Notional Threshold State Message", "memx.options.riskcontrol.sbe.v1.6.singleordermaxnotionalthresholdstatemessage", ftypes.STRING)

-----------------------------------------------------------------------
-- Declare Dissection Options
-----------------------------------------------------------------------

local show = {}

-- Memx Options RiskControl Sbe 1.6 Element Dissection Options
show.active_risk_acknowledge_rej_message = true
show.active_risk_acknowledged_message = true
show.active_risk_acknowledgement_req_message = true
show.active_risk_quantity_update_notification_message = true
show.active_risk_threshold_change_rej_message = true
show.active_risk_threshold_change_req_message = true
show.active_risk_threshold_state_message = true
show.breach_clear_rej_message = true
show.breach_cleared_message = true
show.common_header = true
show.cp_breach_count_threshold_change_req_message = true
show.cp_breach_count_threshold_state_message = true
show.cp_clear_breach_req_message = true
show.cp_duplicate_order_threshold_change_req_message = true
show.cp_duplicate_order_threshold_state_message = true
show.cp_executed_notional_threshold_change_req_message = true
show.cp_executed_notional_threshold_state_message = true
show.cp_gross_notional_threshold_change_req_message = true
show.cp_gross_notional_threshold_state_message = true
show.cp_market_order_gross_notional_threshold_change_req_message = true
show.cp_market_order_gross_notional_threshold_state_message = true
show.cp_market_order_net_notional_threshold_change_req_message = true
show.cp_market_order_net_notional_threshold_state_message = true
show.cp_net_notional_threshold_change_req_message = true
show.cp_net_notional_threshold_state_message = true
show.cp_order_rate_threshold_change_req_message = true
show.cp_order_rate_threshold_state_message = true
show.cp_percent_outstanding_contracts_threshold_change_req_message = true
show.cp_percent_outstanding_contracts_threshold_state_message = true
show.cp_total_executions_threshold_change_req_message = true
show.cp_total_executions_threshold_state_message = true
show.cp_volume_threshold_change_req_message = true
show.cp_volume_threshold_state_message = true
show.login_accepted_message = true
show.login_rejected_message = true
show.login_request_message = true
show.manual_cp_breach_trigger_done_message = true
show.manual_cp_breach_trigger_pending_message = true
show.manual_cp_breach_trigger_rej_message = true
show.manual_cp_breach_trigger_req_message = true
show.packet = true
show.passive_risk_threshold_notification_message = true
show.replay_all_request_message = true
show.replay_begin_message = true
show.replay_complete_message = true
show.replay_rejected_message = true
show.replay_request_message = true
show.risk_settings_query_done_message = true
show.risk_settings_query_message = true
show.risk_settings_query_rej_message = true
show.risk_threshold_update_rej_message = true
show.sbe_header = true
show.sbe_message = true
show.sequenced_message = true
show.single_order_allow_iso_orders_change_req_message = true
show.single_order_allow_iso_orders_state_message = true
show.single_order_allow_orders_in_crossed_market_change_req_message = true
show.single_order_allow_orders_in_crossed_market_state_message = true
show.single_order_max_contracts_change_req_message = true
show.single_order_max_contracts_threshold_state_message = true
show.single_order_max_notional_change_req_message = true
show.single_order_max_notional_threshold_state_message = true
show.start_of_session_message = true
show.stream_begin_message = true
show.stream_complete_message = true
show.stream_rejected_message = true
show.stream_request_message = true
show.unsequenced_message = true
show.data = false
show.payload = false

-- Register Memx Options RiskControl Sbe 1.6 Show Options
omi_memx_options_riskcontrol_sbe_v1_6.prefs.show_active_risk_acknowledge_rej_message = Pref.bool("Show Active Risk Acknowledge Rej Message", show.active_risk_acknowledge_rej_message, "Parse and add Active Risk Acknowledge Rej Message to protocol tree")
omi_memx_options_riskcontrol_sbe_v1_6.prefs.show_active_risk_acknowledged_message = Pref.bool("Show Active Risk Acknowledged Message", show.active_risk_acknowledged_message, "Parse and add Active Risk Acknowledged Message to protocol tree")
omi_memx_options_riskcontrol_sbe_v1_6.prefs.show_active_risk_acknowledgement_req_message = Pref.bool("Show Active Risk Acknowledgement Req Message", show.active_risk_acknowledgement_req_message, "Parse and add Active Risk Acknowledgement Req Message to protocol tree")
omi_memx_options_riskcontrol_sbe_v1_6.prefs.show_active_risk_quantity_update_notification_message = Pref.bool("Show Active Risk Quantity Update Notification Message", show.active_risk_quantity_update_notification_message, "Parse and add Active Risk Quantity Update Notification Message to protocol tree")
omi_memx_options_riskcontrol_sbe_v1_6.prefs.show_active_risk_threshold_change_rej_message = Pref.bool("Show Active Risk Threshold Change Rej Message", show.active_risk_threshold_change_rej_message, "Parse and add Active Risk Threshold Change Rej Message to protocol tree")
omi_memx_options_riskcontrol_sbe_v1_6.prefs.show_active_risk_threshold_change_req_message = Pref.bool("Show Active Risk Threshold Change Req Message", show.active_risk_threshold_change_req_message, "Parse and add Active Risk Threshold Change Req Message to protocol tree")
omi_memx_options_riskcontrol_sbe_v1_6.prefs.show_active_risk_threshold_state_message = Pref.bool("Show Active Risk Threshold State Message", show.active_risk_threshold_state_message, "Parse and add Active Risk Threshold State Message to protocol tree")
omi_memx_options_riskcontrol_sbe_v1_6.prefs.show_breach_clear_rej_message = Pref.bool("Show Breach Clear Rej Message", show.breach_clear_rej_message, "Parse and add Breach Clear Rej Message to protocol tree")
omi_memx_options_riskcontrol_sbe_v1_6.prefs.show_breach_cleared_message = Pref.bool("Show Breach Cleared Message", show.breach_cleared_message, "Parse and add Breach Cleared Message to protocol tree")
omi_memx_options_riskcontrol_sbe_v1_6.prefs.show_common_header = Pref.bool("Show Common Header", show.common_header, "Parse and add Common Header to protocol tree")
omi_memx_options_riskcontrol_sbe_v1_6.prefs.show_cp_breach_count_threshold_change_req_message = Pref.bool("Show Cp Breach Count Threshold Change Req Message", show.cp_breach_count_threshold_change_req_message, "Parse and add Cp Breach Count Threshold Change Req Message to protocol tree")
omi_memx_options_riskcontrol_sbe_v1_6.prefs.show_cp_breach_count_threshold_state_message = Pref.bool("Show Cp Breach Count Threshold State Message", show.cp_breach_count_threshold_state_message, "Parse and add Cp Breach Count Threshold State Message to protocol tree")
omi_memx_options_riskcontrol_sbe_v1_6.prefs.show_cp_clear_breach_req_message = Pref.bool("Show Cp Clear Breach Req Message", show.cp_clear_breach_req_message, "Parse and add Cp Clear Breach Req Message to protocol tree")
omi_memx_options_riskcontrol_sbe_v1_6.prefs.show_cp_duplicate_order_threshold_change_req_message = Pref.bool("Show Cp Duplicate Order Threshold Change Req Message", show.cp_duplicate_order_threshold_change_req_message, "Parse and add Cp Duplicate Order Threshold Change Req Message to protocol tree")
omi_memx_options_riskcontrol_sbe_v1_6.prefs.show_cp_duplicate_order_threshold_state_message = Pref.bool("Show Cp Duplicate Order Threshold State Message", show.cp_duplicate_order_threshold_state_message, "Parse and add Cp Duplicate Order Threshold State Message to protocol tree")
omi_memx_options_riskcontrol_sbe_v1_6.prefs.show_cp_executed_notional_threshold_change_req_message = Pref.bool("Show Cp Executed Notional Threshold Change Req Message", show.cp_executed_notional_threshold_change_req_message, "Parse and add Cp Executed Notional Threshold Change Req Message to protocol tree")
omi_memx_options_riskcontrol_sbe_v1_6.prefs.show_cp_executed_notional_threshold_state_message = Pref.bool("Show Cp Executed Notional Threshold State Message", show.cp_executed_notional_threshold_state_message, "Parse and add Cp Executed Notional Threshold State Message to protocol tree")
omi_memx_options_riskcontrol_sbe_v1_6.prefs.show_cp_gross_notional_threshold_change_req_message = Pref.bool("Show Cp Gross Notional Threshold Change Req Message", show.cp_gross_notional_threshold_change_req_message, "Parse and add Cp Gross Notional Threshold Change Req Message to protocol tree")
omi_memx_options_riskcontrol_sbe_v1_6.prefs.show_cp_gross_notional_threshold_state_message = Pref.bool("Show Cp Gross Notional Threshold State Message", show.cp_gross_notional_threshold_state_message, "Parse and add Cp Gross Notional Threshold State Message to protocol tree")
omi_memx_options_riskcontrol_sbe_v1_6.prefs.show_cp_market_order_gross_notional_threshold_change_req_message = Pref.bool("Show Cp Market Order Gross Notional Threshold Change Req Message", show.cp_market_order_gross_notional_threshold_change_req_message, "Parse and add Cp Market Order Gross Notional Threshold Change Req Message to protocol tree")
omi_memx_options_riskcontrol_sbe_v1_6.prefs.show_cp_market_order_gross_notional_threshold_state_message = Pref.bool("Show Cp Market Order Gross Notional Threshold State Message", show.cp_market_order_gross_notional_threshold_state_message, "Parse and add Cp Market Order Gross Notional Threshold State Message to protocol tree")
omi_memx_options_riskcontrol_sbe_v1_6.prefs.show_cp_market_order_net_notional_threshold_change_req_message = Pref.bool("Show Cp Market Order Net Notional Threshold Change Req Message", show.cp_market_order_net_notional_threshold_change_req_message, "Parse and add Cp Market Order Net Notional Threshold Change Req Message to protocol tree")
omi_memx_options_riskcontrol_sbe_v1_6.prefs.show_cp_market_order_net_notional_threshold_state_message = Pref.bool("Show Cp Market Order Net Notional Threshold State Message", show.cp_market_order_net_notional_threshold_state_message, "Parse and add Cp Market Order Net Notional Threshold State Message to protocol tree")
omi_memx_options_riskcontrol_sbe_v1_6.prefs.show_cp_net_notional_threshold_change_req_message = Pref.bool("Show Cp Net Notional Threshold Change Req Message", show.cp_net_notional_threshold_change_req_message, "Parse and add Cp Net Notional Threshold Change Req Message to protocol tree")
omi_memx_options_riskcontrol_sbe_v1_6.prefs.show_cp_net_notional_threshold_state_message = Pref.bool("Show Cp Net Notional Threshold State Message", show.cp_net_notional_threshold_state_message, "Parse and add Cp Net Notional Threshold State Message to protocol tree")
omi_memx_options_riskcontrol_sbe_v1_6.prefs.show_cp_order_rate_threshold_change_req_message = Pref.bool("Show Cp Order Rate Threshold Change Req Message", show.cp_order_rate_threshold_change_req_message, "Parse and add Cp Order Rate Threshold Change Req Message to protocol tree")
omi_memx_options_riskcontrol_sbe_v1_6.prefs.show_cp_order_rate_threshold_state_message = Pref.bool("Show Cp Order Rate Threshold State Message", show.cp_order_rate_threshold_state_message, "Parse and add Cp Order Rate Threshold State Message to protocol tree")
omi_memx_options_riskcontrol_sbe_v1_6.prefs.show_cp_percent_outstanding_contracts_threshold_change_req_message = Pref.bool("Show Cp Percent Outstanding Contracts Threshold Change Req Message", show.cp_percent_outstanding_contracts_threshold_change_req_message, "Parse and add Cp Percent Outstanding Contracts Threshold Change Req Message to protocol tree")
omi_memx_options_riskcontrol_sbe_v1_6.prefs.show_cp_percent_outstanding_contracts_threshold_state_message = Pref.bool("Show Cp Percent Outstanding Contracts Threshold State Message", show.cp_percent_outstanding_contracts_threshold_state_message, "Parse and add Cp Percent Outstanding Contracts Threshold State Message to protocol tree")
omi_memx_options_riskcontrol_sbe_v1_6.prefs.show_cp_total_executions_threshold_change_req_message = Pref.bool("Show Cp Total Executions Threshold Change Req Message", show.cp_total_executions_threshold_change_req_message, "Parse and add Cp Total Executions Threshold Change Req Message to protocol tree")
omi_memx_options_riskcontrol_sbe_v1_6.prefs.show_cp_total_executions_threshold_state_message = Pref.bool("Show Cp Total Executions Threshold State Message", show.cp_total_executions_threshold_state_message, "Parse and add Cp Total Executions Threshold State Message to protocol tree")
omi_memx_options_riskcontrol_sbe_v1_6.prefs.show_cp_volume_threshold_change_req_message = Pref.bool("Show Cp Volume Threshold Change Req Message", show.cp_volume_threshold_change_req_message, "Parse and add Cp Volume Threshold Change Req Message to protocol tree")
omi_memx_options_riskcontrol_sbe_v1_6.prefs.show_cp_volume_threshold_state_message = Pref.bool("Show Cp Volume Threshold State Message", show.cp_volume_threshold_state_message, "Parse and add Cp Volume Threshold State Message to protocol tree")
omi_memx_options_riskcontrol_sbe_v1_6.prefs.show_login_accepted_message = Pref.bool("Show Login Accepted Message", show.login_accepted_message, "Parse and add Login Accepted Message to protocol tree")
omi_memx_options_riskcontrol_sbe_v1_6.prefs.show_login_rejected_message = Pref.bool("Show Login Rejected Message", show.login_rejected_message, "Parse and add Login Rejected Message to protocol tree")
omi_memx_options_riskcontrol_sbe_v1_6.prefs.show_login_request_message = Pref.bool("Show Login Request Message", show.login_request_message, "Parse and add Login Request Message to protocol tree")
omi_memx_options_riskcontrol_sbe_v1_6.prefs.show_manual_cp_breach_trigger_done_message = Pref.bool("Show Manual Cp Breach Trigger Done Message", show.manual_cp_breach_trigger_done_message, "Parse and add Manual Cp Breach Trigger Done Message to protocol tree")
omi_memx_options_riskcontrol_sbe_v1_6.prefs.show_manual_cp_breach_trigger_pending_message = Pref.bool("Show Manual Cp Breach Trigger Pending Message", show.manual_cp_breach_trigger_pending_message, "Parse and add Manual Cp Breach Trigger Pending Message to protocol tree")
omi_memx_options_riskcontrol_sbe_v1_6.prefs.show_manual_cp_breach_trigger_rej_message = Pref.bool("Show Manual Cp Breach Trigger Rej Message", show.manual_cp_breach_trigger_rej_message, "Parse and add Manual Cp Breach Trigger Rej Message to protocol tree")
omi_memx_options_riskcontrol_sbe_v1_6.prefs.show_manual_cp_breach_trigger_req_message = Pref.bool("Show Manual Cp Breach Trigger Req Message", show.manual_cp_breach_trigger_req_message, "Parse and add Manual Cp Breach Trigger Req Message to protocol tree")
omi_memx_options_riskcontrol_sbe_v1_6.prefs.show_packet = Pref.bool("Show Packet", show.packet, "Parse and add Packet to protocol tree")
omi_memx_options_riskcontrol_sbe_v1_6.prefs.show_passive_risk_threshold_notification_message = Pref.bool("Show Passive Risk Threshold Notification Message", show.passive_risk_threshold_notification_message, "Parse and add Passive Risk Threshold Notification Message to protocol tree")
omi_memx_options_riskcontrol_sbe_v1_6.prefs.show_replay_all_request_message = Pref.bool("Show Replay All Request Message", show.replay_all_request_message, "Parse and add Replay All Request Message to protocol tree")
omi_memx_options_riskcontrol_sbe_v1_6.prefs.show_replay_begin_message = Pref.bool("Show Replay Begin Message", show.replay_begin_message, "Parse and add Replay Begin Message to protocol tree")
omi_memx_options_riskcontrol_sbe_v1_6.prefs.show_replay_complete_message = Pref.bool("Show Replay Complete Message", show.replay_complete_message, "Parse and add Replay Complete Message to protocol tree")
omi_memx_options_riskcontrol_sbe_v1_6.prefs.show_replay_rejected_message = Pref.bool("Show Replay Rejected Message", show.replay_rejected_message, "Parse and add Replay Rejected Message to protocol tree")
omi_memx_options_riskcontrol_sbe_v1_6.prefs.show_replay_request_message = Pref.bool("Show Replay Request Message", show.replay_request_message, "Parse and add Replay Request Message to protocol tree")
omi_memx_options_riskcontrol_sbe_v1_6.prefs.show_risk_settings_query_done_message = Pref.bool("Show Risk Settings Query Done Message", show.risk_settings_query_done_message, "Parse and add Risk Settings Query Done Message to protocol tree")
omi_memx_options_riskcontrol_sbe_v1_6.prefs.show_risk_settings_query_message = Pref.bool("Show Risk Settings Query Message", show.risk_settings_query_message, "Parse and add Risk Settings Query Message to protocol tree")
omi_memx_options_riskcontrol_sbe_v1_6.prefs.show_risk_settings_query_rej_message = Pref.bool("Show Risk Settings Query Rej Message", show.risk_settings_query_rej_message, "Parse and add Risk Settings Query Rej Message to protocol tree")
omi_memx_options_riskcontrol_sbe_v1_6.prefs.show_risk_threshold_update_rej_message = Pref.bool("Show Risk Threshold Update Rej Message", show.risk_threshold_update_rej_message, "Parse and add Risk Threshold Update Rej Message to protocol tree")
omi_memx_options_riskcontrol_sbe_v1_6.prefs.show_sbe_header = Pref.bool("Show Sbe Header", show.sbe_header, "Parse and add Sbe Header to protocol tree")
omi_memx_options_riskcontrol_sbe_v1_6.prefs.show_sbe_message = Pref.bool("Show Sbe Message", show.sbe_message, "Parse and add Sbe Message to protocol tree")
omi_memx_options_riskcontrol_sbe_v1_6.prefs.show_sequenced_message = Pref.bool("Show Sequenced Message", show.sequenced_message, "Parse and add Sequenced Message to protocol tree")
omi_memx_options_riskcontrol_sbe_v1_6.prefs.show_single_order_allow_iso_orders_change_req_message = Pref.bool("Show Single Order Allow Iso Orders Change Req Message", show.single_order_allow_iso_orders_change_req_message, "Parse and add Single Order Allow Iso Orders Change Req Message to protocol tree")
omi_memx_options_riskcontrol_sbe_v1_6.prefs.show_single_order_allow_iso_orders_state_message = Pref.bool("Show Single Order Allow Iso Orders State Message", show.single_order_allow_iso_orders_state_message, "Parse and add Single Order Allow Iso Orders State Message to protocol tree")
omi_memx_options_riskcontrol_sbe_v1_6.prefs.show_single_order_allow_orders_in_crossed_market_change_req_message = Pref.bool("Show Single Order Allow Orders In Crossed Market Change Req Message", show.single_order_allow_orders_in_crossed_market_change_req_message, "Parse and add Single Order Allow Orders In Crossed Market Change Req Message to protocol tree")
omi_memx_options_riskcontrol_sbe_v1_6.prefs.show_single_order_allow_orders_in_crossed_market_state_message = Pref.bool("Show Single Order Allow Orders In Crossed Market State Message", show.single_order_allow_orders_in_crossed_market_state_message, "Parse and add Single Order Allow Orders In Crossed Market State Message to protocol tree")
omi_memx_options_riskcontrol_sbe_v1_6.prefs.show_single_order_max_contracts_change_req_message = Pref.bool("Show Single Order Max Contracts Change Req Message", show.single_order_max_contracts_change_req_message, "Parse and add Single Order Max Contracts Change Req Message to protocol tree")
omi_memx_options_riskcontrol_sbe_v1_6.prefs.show_single_order_max_contracts_threshold_state_message = Pref.bool("Show Single Order Max Contracts Threshold State Message", show.single_order_max_contracts_threshold_state_message, "Parse and add Single Order Max Contracts Threshold State Message to protocol tree")
omi_memx_options_riskcontrol_sbe_v1_6.prefs.show_single_order_max_notional_change_req_message = Pref.bool("Show Single Order Max Notional Change Req Message", show.single_order_max_notional_change_req_message, "Parse and add Single Order Max Notional Change Req Message to protocol tree")
omi_memx_options_riskcontrol_sbe_v1_6.prefs.show_single_order_max_notional_threshold_state_message = Pref.bool("Show Single Order Max Notional Threshold State Message", show.single_order_max_notional_threshold_state_message, "Parse and add Single Order Max Notional Threshold State Message to protocol tree")
omi_memx_options_riskcontrol_sbe_v1_6.prefs.show_start_of_session_message = Pref.bool("Show Start Of Session Message", show.start_of_session_message, "Parse and add Start Of Session Message to protocol tree")
omi_memx_options_riskcontrol_sbe_v1_6.prefs.show_stream_begin_message = Pref.bool("Show Stream Begin Message", show.stream_begin_message, "Parse and add Stream Begin Message to protocol tree")
omi_memx_options_riskcontrol_sbe_v1_6.prefs.show_stream_complete_message = Pref.bool("Show Stream Complete Message", show.stream_complete_message, "Parse and add Stream Complete Message to protocol tree")
omi_memx_options_riskcontrol_sbe_v1_6.prefs.show_stream_rejected_message = Pref.bool("Show Stream Rejected Message", show.stream_rejected_message, "Parse and add Stream Rejected Message to protocol tree")
omi_memx_options_riskcontrol_sbe_v1_6.prefs.show_stream_request_message = Pref.bool("Show Stream Request Message", show.stream_request_message, "Parse and add Stream Request Message to protocol tree")
omi_memx_options_riskcontrol_sbe_v1_6.prefs.show_unsequenced_message = Pref.bool("Show Unsequenced Message", show.unsequenced_message, "Parse and add Unsequenced Message to protocol tree")
omi_memx_options_riskcontrol_sbe_v1_6.prefs.show_data = Pref.bool("Show Data", show.data, "Parse and add Data to protocol tree")
omi_memx_options_riskcontrol_sbe_v1_6.prefs.show_payload = Pref.bool("Show Payload", show.payload, "Parse and add Payload to protocol tree")

-- Handle changed preferences
function omi_memx_options_riskcontrol_sbe_v1_6.prefs_changed()
  local changed = false

  -- Check if show options have changed
  if show.active_risk_acknowledge_rej_message ~= omi_memx_options_riskcontrol_sbe_v1_6.prefs.show_active_risk_acknowledge_rej_message then
    show.active_risk_acknowledge_rej_message = omi_memx_options_riskcontrol_sbe_v1_6.prefs.show_active_risk_acknowledge_rej_message
    changed = true
  end
  if show.active_risk_acknowledged_message ~= omi_memx_options_riskcontrol_sbe_v1_6.prefs.show_active_risk_acknowledged_message then
    show.active_risk_acknowledged_message = omi_memx_options_riskcontrol_sbe_v1_6.prefs.show_active_risk_acknowledged_message
    changed = true
  end
  if show.active_risk_acknowledgement_req_message ~= omi_memx_options_riskcontrol_sbe_v1_6.prefs.show_active_risk_acknowledgement_req_message then
    show.active_risk_acknowledgement_req_message = omi_memx_options_riskcontrol_sbe_v1_6.prefs.show_active_risk_acknowledgement_req_message
    changed = true
  end
  if show.active_risk_quantity_update_notification_message ~= omi_memx_options_riskcontrol_sbe_v1_6.prefs.show_active_risk_quantity_update_notification_message then
    show.active_risk_quantity_update_notification_message = omi_memx_options_riskcontrol_sbe_v1_6.prefs.show_active_risk_quantity_update_notification_message
    changed = true
  end
  if show.active_risk_threshold_change_rej_message ~= omi_memx_options_riskcontrol_sbe_v1_6.prefs.show_active_risk_threshold_change_rej_message then
    show.active_risk_threshold_change_rej_message = omi_memx_options_riskcontrol_sbe_v1_6.prefs.show_active_risk_threshold_change_rej_message
    changed = true
  end
  if show.active_risk_threshold_change_req_message ~= omi_memx_options_riskcontrol_sbe_v1_6.prefs.show_active_risk_threshold_change_req_message then
    show.active_risk_threshold_change_req_message = omi_memx_options_riskcontrol_sbe_v1_6.prefs.show_active_risk_threshold_change_req_message
    changed = true
  end
  if show.active_risk_threshold_state_message ~= omi_memx_options_riskcontrol_sbe_v1_6.prefs.show_active_risk_threshold_state_message then
    show.active_risk_threshold_state_message = omi_memx_options_riskcontrol_sbe_v1_6.prefs.show_active_risk_threshold_state_message
    changed = true
  end
  if show.breach_clear_rej_message ~= omi_memx_options_riskcontrol_sbe_v1_6.prefs.show_breach_clear_rej_message then
    show.breach_clear_rej_message = omi_memx_options_riskcontrol_sbe_v1_6.prefs.show_breach_clear_rej_message
    changed = true
  end
  if show.breach_cleared_message ~= omi_memx_options_riskcontrol_sbe_v1_6.prefs.show_breach_cleared_message then
    show.breach_cleared_message = omi_memx_options_riskcontrol_sbe_v1_6.prefs.show_breach_cleared_message
    changed = true
  end
  if show.common_header ~= omi_memx_options_riskcontrol_sbe_v1_6.prefs.show_common_header then
    show.common_header = omi_memx_options_riskcontrol_sbe_v1_6.prefs.show_common_header
    changed = true
  end
  if show.cp_breach_count_threshold_change_req_message ~= omi_memx_options_riskcontrol_sbe_v1_6.prefs.show_cp_breach_count_threshold_change_req_message then
    show.cp_breach_count_threshold_change_req_message = omi_memx_options_riskcontrol_sbe_v1_6.prefs.show_cp_breach_count_threshold_change_req_message
    changed = true
  end
  if show.cp_breach_count_threshold_state_message ~= omi_memx_options_riskcontrol_sbe_v1_6.prefs.show_cp_breach_count_threshold_state_message then
    show.cp_breach_count_threshold_state_message = omi_memx_options_riskcontrol_sbe_v1_6.prefs.show_cp_breach_count_threshold_state_message
    changed = true
  end
  if show.cp_clear_breach_req_message ~= omi_memx_options_riskcontrol_sbe_v1_6.prefs.show_cp_clear_breach_req_message then
    show.cp_clear_breach_req_message = omi_memx_options_riskcontrol_sbe_v1_6.prefs.show_cp_clear_breach_req_message
    changed = true
  end
  if show.cp_duplicate_order_threshold_change_req_message ~= omi_memx_options_riskcontrol_sbe_v1_6.prefs.show_cp_duplicate_order_threshold_change_req_message then
    show.cp_duplicate_order_threshold_change_req_message = omi_memx_options_riskcontrol_sbe_v1_6.prefs.show_cp_duplicate_order_threshold_change_req_message
    changed = true
  end
  if show.cp_duplicate_order_threshold_state_message ~= omi_memx_options_riskcontrol_sbe_v1_6.prefs.show_cp_duplicate_order_threshold_state_message then
    show.cp_duplicate_order_threshold_state_message = omi_memx_options_riskcontrol_sbe_v1_6.prefs.show_cp_duplicate_order_threshold_state_message
    changed = true
  end
  if show.cp_executed_notional_threshold_change_req_message ~= omi_memx_options_riskcontrol_sbe_v1_6.prefs.show_cp_executed_notional_threshold_change_req_message then
    show.cp_executed_notional_threshold_change_req_message = omi_memx_options_riskcontrol_sbe_v1_6.prefs.show_cp_executed_notional_threshold_change_req_message
    changed = true
  end
  if show.cp_executed_notional_threshold_state_message ~= omi_memx_options_riskcontrol_sbe_v1_6.prefs.show_cp_executed_notional_threshold_state_message then
    show.cp_executed_notional_threshold_state_message = omi_memx_options_riskcontrol_sbe_v1_6.prefs.show_cp_executed_notional_threshold_state_message
    changed = true
  end
  if show.cp_gross_notional_threshold_change_req_message ~= omi_memx_options_riskcontrol_sbe_v1_6.prefs.show_cp_gross_notional_threshold_change_req_message then
    show.cp_gross_notional_threshold_change_req_message = omi_memx_options_riskcontrol_sbe_v1_6.prefs.show_cp_gross_notional_threshold_change_req_message
    changed = true
  end
  if show.cp_gross_notional_threshold_state_message ~= omi_memx_options_riskcontrol_sbe_v1_6.prefs.show_cp_gross_notional_threshold_state_message then
    show.cp_gross_notional_threshold_state_message = omi_memx_options_riskcontrol_sbe_v1_6.prefs.show_cp_gross_notional_threshold_state_message
    changed = true
  end
  if show.cp_market_order_gross_notional_threshold_change_req_message ~= omi_memx_options_riskcontrol_sbe_v1_6.prefs.show_cp_market_order_gross_notional_threshold_change_req_message then
    show.cp_market_order_gross_notional_threshold_change_req_message = omi_memx_options_riskcontrol_sbe_v1_6.prefs.show_cp_market_order_gross_notional_threshold_change_req_message
    changed = true
  end
  if show.cp_market_order_gross_notional_threshold_state_message ~= omi_memx_options_riskcontrol_sbe_v1_6.prefs.show_cp_market_order_gross_notional_threshold_state_message then
    show.cp_market_order_gross_notional_threshold_state_message = omi_memx_options_riskcontrol_sbe_v1_6.prefs.show_cp_market_order_gross_notional_threshold_state_message
    changed = true
  end
  if show.cp_market_order_net_notional_threshold_change_req_message ~= omi_memx_options_riskcontrol_sbe_v1_6.prefs.show_cp_market_order_net_notional_threshold_change_req_message then
    show.cp_market_order_net_notional_threshold_change_req_message = omi_memx_options_riskcontrol_sbe_v1_6.prefs.show_cp_market_order_net_notional_threshold_change_req_message
    changed = true
  end
  if show.cp_market_order_net_notional_threshold_state_message ~= omi_memx_options_riskcontrol_sbe_v1_6.prefs.show_cp_market_order_net_notional_threshold_state_message then
    show.cp_market_order_net_notional_threshold_state_message = omi_memx_options_riskcontrol_sbe_v1_6.prefs.show_cp_market_order_net_notional_threshold_state_message
    changed = true
  end
  if show.cp_net_notional_threshold_change_req_message ~= omi_memx_options_riskcontrol_sbe_v1_6.prefs.show_cp_net_notional_threshold_change_req_message then
    show.cp_net_notional_threshold_change_req_message = omi_memx_options_riskcontrol_sbe_v1_6.prefs.show_cp_net_notional_threshold_change_req_message
    changed = true
  end
  if show.cp_net_notional_threshold_state_message ~= omi_memx_options_riskcontrol_sbe_v1_6.prefs.show_cp_net_notional_threshold_state_message then
    show.cp_net_notional_threshold_state_message = omi_memx_options_riskcontrol_sbe_v1_6.prefs.show_cp_net_notional_threshold_state_message
    changed = true
  end
  if show.cp_order_rate_threshold_change_req_message ~= omi_memx_options_riskcontrol_sbe_v1_6.prefs.show_cp_order_rate_threshold_change_req_message then
    show.cp_order_rate_threshold_change_req_message = omi_memx_options_riskcontrol_sbe_v1_6.prefs.show_cp_order_rate_threshold_change_req_message
    changed = true
  end
  if show.cp_order_rate_threshold_state_message ~= omi_memx_options_riskcontrol_sbe_v1_6.prefs.show_cp_order_rate_threshold_state_message then
    show.cp_order_rate_threshold_state_message = omi_memx_options_riskcontrol_sbe_v1_6.prefs.show_cp_order_rate_threshold_state_message
    changed = true
  end
  if show.cp_percent_outstanding_contracts_threshold_change_req_message ~= omi_memx_options_riskcontrol_sbe_v1_6.prefs.show_cp_percent_outstanding_contracts_threshold_change_req_message then
    show.cp_percent_outstanding_contracts_threshold_change_req_message = omi_memx_options_riskcontrol_sbe_v1_6.prefs.show_cp_percent_outstanding_contracts_threshold_change_req_message
    changed = true
  end
  if show.cp_percent_outstanding_contracts_threshold_state_message ~= omi_memx_options_riskcontrol_sbe_v1_6.prefs.show_cp_percent_outstanding_contracts_threshold_state_message then
    show.cp_percent_outstanding_contracts_threshold_state_message = omi_memx_options_riskcontrol_sbe_v1_6.prefs.show_cp_percent_outstanding_contracts_threshold_state_message
    changed = true
  end
  if show.cp_total_executions_threshold_change_req_message ~= omi_memx_options_riskcontrol_sbe_v1_6.prefs.show_cp_total_executions_threshold_change_req_message then
    show.cp_total_executions_threshold_change_req_message = omi_memx_options_riskcontrol_sbe_v1_6.prefs.show_cp_total_executions_threshold_change_req_message
    changed = true
  end
  if show.cp_total_executions_threshold_state_message ~= omi_memx_options_riskcontrol_sbe_v1_6.prefs.show_cp_total_executions_threshold_state_message then
    show.cp_total_executions_threshold_state_message = omi_memx_options_riskcontrol_sbe_v1_6.prefs.show_cp_total_executions_threshold_state_message
    changed = true
  end
  if show.cp_volume_threshold_change_req_message ~= omi_memx_options_riskcontrol_sbe_v1_6.prefs.show_cp_volume_threshold_change_req_message then
    show.cp_volume_threshold_change_req_message = omi_memx_options_riskcontrol_sbe_v1_6.prefs.show_cp_volume_threshold_change_req_message
    changed = true
  end
  if show.cp_volume_threshold_state_message ~= omi_memx_options_riskcontrol_sbe_v1_6.prefs.show_cp_volume_threshold_state_message then
    show.cp_volume_threshold_state_message = omi_memx_options_riskcontrol_sbe_v1_6.prefs.show_cp_volume_threshold_state_message
    changed = true
  end
  if show.login_accepted_message ~= omi_memx_options_riskcontrol_sbe_v1_6.prefs.show_login_accepted_message then
    show.login_accepted_message = omi_memx_options_riskcontrol_sbe_v1_6.prefs.show_login_accepted_message
    changed = true
  end
  if show.login_rejected_message ~= omi_memx_options_riskcontrol_sbe_v1_6.prefs.show_login_rejected_message then
    show.login_rejected_message = omi_memx_options_riskcontrol_sbe_v1_6.prefs.show_login_rejected_message
    changed = true
  end
  if show.login_request_message ~= omi_memx_options_riskcontrol_sbe_v1_6.prefs.show_login_request_message then
    show.login_request_message = omi_memx_options_riskcontrol_sbe_v1_6.prefs.show_login_request_message
    changed = true
  end
  if show.manual_cp_breach_trigger_done_message ~= omi_memx_options_riskcontrol_sbe_v1_6.prefs.show_manual_cp_breach_trigger_done_message then
    show.manual_cp_breach_trigger_done_message = omi_memx_options_riskcontrol_sbe_v1_6.prefs.show_manual_cp_breach_trigger_done_message
    changed = true
  end
  if show.manual_cp_breach_trigger_pending_message ~= omi_memx_options_riskcontrol_sbe_v1_6.prefs.show_manual_cp_breach_trigger_pending_message then
    show.manual_cp_breach_trigger_pending_message = omi_memx_options_riskcontrol_sbe_v1_6.prefs.show_manual_cp_breach_trigger_pending_message
    changed = true
  end
  if show.manual_cp_breach_trigger_rej_message ~= omi_memx_options_riskcontrol_sbe_v1_6.prefs.show_manual_cp_breach_trigger_rej_message then
    show.manual_cp_breach_trigger_rej_message = omi_memx_options_riskcontrol_sbe_v1_6.prefs.show_manual_cp_breach_trigger_rej_message
    changed = true
  end
  if show.manual_cp_breach_trigger_req_message ~= omi_memx_options_riskcontrol_sbe_v1_6.prefs.show_manual_cp_breach_trigger_req_message then
    show.manual_cp_breach_trigger_req_message = omi_memx_options_riskcontrol_sbe_v1_6.prefs.show_manual_cp_breach_trigger_req_message
    changed = true
  end
  if show.packet ~= omi_memx_options_riskcontrol_sbe_v1_6.prefs.show_packet then
    show.packet = omi_memx_options_riskcontrol_sbe_v1_6.prefs.show_packet
    changed = true
  end
  if show.passive_risk_threshold_notification_message ~= omi_memx_options_riskcontrol_sbe_v1_6.prefs.show_passive_risk_threshold_notification_message then
    show.passive_risk_threshold_notification_message = omi_memx_options_riskcontrol_sbe_v1_6.prefs.show_passive_risk_threshold_notification_message
    changed = true
  end
  if show.replay_all_request_message ~= omi_memx_options_riskcontrol_sbe_v1_6.prefs.show_replay_all_request_message then
    show.replay_all_request_message = omi_memx_options_riskcontrol_sbe_v1_6.prefs.show_replay_all_request_message
    changed = true
  end
  if show.replay_begin_message ~= omi_memx_options_riskcontrol_sbe_v1_6.prefs.show_replay_begin_message then
    show.replay_begin_message = omi_memx_options_riskcontrol_sbe_v1_6.prefs.show_replay_begin_message
    changed = true
  end
  if show.replay_complete_message ~= omi_memx_options_riskcontrol_sbe_v1_6.prefs.show_replay_complete_message then
    show.replay_complete_message = omi_memx_options_riskcontrol_sbe_v1_6.prefs.show_replay_complete_message
    changed = true
  end
  if show.replay_rejected_message ~= omi_memx_options_riskcontrol_sbe_v1_6.prefs.show_replay_rejected_message then
    show.replay_rejected_message = omi_memx_options_riskcontrol_sbe_v1_6.prefs.show_replay_rejected_message
    changed = true
  end
  if show.replay_request_message ~= omi_memx_options_riskcontrol_sbe_v1_6.prefs.show_replay_request_message then
    show.replay_request_message = omi_memx_options_riskcontrol_sbe_v1_6.prefs.show_replay_request_message
    changed = true
  end
  if show.risk_settings_query_done_message ~= omi_memx_options_riskcontrol_sbe_v1_6.prefs.show_risk_settings_query_done_message then
    show.risk_settings_query_done_message = omi_memx_options_riskcontrol_sbe_v1_6.prefs.show_risk_settings_query_done_message
    changed = true
  end
  if show.risk_settings_query_message ~= omi_memx_options_riskcontrol_sbe_v1_6.prefs.show_risk_settings_query_message then
    show.risk_settings_query_message = omi_memx_options_riskcontrol_sbe_v1_6.prefs.show_risk_settings_query_message
    changed = true
  end
  if show.risk_settings_query_rej_message ~= omi_memx_options_riskcontrol_sbe_v1_6.prefs.show_risk_settings_query_rej_message then
    show.risk_settings_query_rej_message = omi_memx_options_riskcontrol_sbe_v1_6.prefs.show_risk_settings_query_rej_message
    changed = true
  end
  if show.risk_threshold_update_rej_message ~= omi_memx_options_riskcontrol_sbe_v1_6.prefs.show_risk_threshold_update_rej_message then
    show.risk_threshold_update_rej_message = omi_memx_options_riskcontrol_sbe_v1_6.prefs.show_risk_threshold_update_rej_message
    changed = true
  end
  if show.sbe_header ~= omi_memx_options_riskcontrol_sbe_v1_6.prefs.show_sbe_header then
    show.sbe_header = omi_memx_options_riskcontrol_sbe_v1_6.prefs.show_sbe_header
    changed = true
  end
  if show.sbe_message ~= omi_memx_options_riskcontrol_sbe_v1_6.prefs.show_sbe_message then
    show.sbe_message = omi_memx_options_riskcontrol_sbe_v1_6.prefs.show_sbe_message
    changed = true
  end
  if show.sequenced_message ~= omi_memx_options_riskcontrol_sbe_v1_6.prefs.show_sequenced_message then
    show.sequenced_message = omi_memx_options_riskcontrol_sbe_v1_6.prefs.show_sequenced_message
    changed = true
  end
  if show.single_order_allow_iso_orders_change_req_message ~= omi_memx_options_riskcontrol_sbe_v1_6.prefs.show_single_order_allow_iso_orders_change_req_message then
    show.single_order_allow_iso_orders_change_req_message = omi_memx_options_riskcontrol_sbe_v1_6.prefs.show_single_order_allow_iso_orders_change_req_message
    changed = true
  end
  if show.single_order_allow_iso_orders_state_message ~= omi_memx_options_riskcontrol_sbe_v1_6.prefs.show_single_order_allow_iso_orders_state_message then
    show.single_order_allow_iso_orders_state_message = omi_memx_options_riskcontrol_sbe_v1_6.prefs.show_single_order_allow_iso_orders_state_message
    changed = true
  end
  if show.single_order_allow_orders_in_crossed_market_change_req_message ~= omi_memx_options_riskcontrol_sbe_v1_6.prefs.show_single_order_allow_orders_in_crossed_market_change_req_message then
    show.single_order_allow_orders_in_crossed_market_change_req_message = omi_memx_options_riskcontrol_sbe_v1_6.prefs.show_single_order_allow_orders_in_crossed_market_change_req_message
    changed = true
  end
  if show.single_order_allow_orders_in_crossed_market_state_message ~= omi_memx_options_riskcontrol_sbe_v1_6.prefs.show_single_order_allow_orders_in_crossed_market_state_message then
    show.single_order_allow_orders_in_crossed_market_state_message = omi_memx_options_riskcontrol_sbe_v1_6.prefs.show_single_order_allow_orders_in_crossed_market_state_message
    changed = true
  end
  if show.single_order_max_contracts_change_req_message ~= omi_memx_options_riskcontrol_sbe_v1_6.prefs.show_single_order_max_contracts_change_req_message then
    show.single_order_max_contracts_change_req_message = omi_memx_options_riskcontrol_sbe_v1_6.prefs.show_single_order_max_contracts_change_req_message
    changed = true
  end
  if show.single_order_max_contracts_threshold_state_message ~= omi_memx_options_riskcontrol_sbe_v1_6.prefs.show_single_order_max_contracts_threshold_state_message then
    show.single_order_max_contracts_threshold_state_message = omi_memx_options_riskcontrol_sbe_v1_6.prefs.show_single_order_max_contracts_threshold_state_message
    changed = true
  end
  if show.single_order_max_notional_change_req_message ~= omi_memx_options_riskcontrol_sbe_v1_6.prefs.show_single_order_max_notional_change_req_message then
    show.single_order_max_notional_change_req_message = omi_memx_options_riskcontrol_sbe_v1_6.prefs.show_single_order_max_notional_change_req_message
    changed = true
  end
  if show.single_order_max_notional_threshold_state_message ~= omi_memx_options_riskcontrol_sbe_v1_6.prefs.show_single_order_max_notional_threshold_state_message then
    show.single_order_max_notional_threshold_state_message = omi_memx_options_riskcontrol_sbe_v1_6.prefs.show_single_order_max_notional_threshold_state_message
    changed = true
  end
  if show.start_of_session_message ~= omi_memx_options_riskcontrol_sbe_v1_6.prefs.show_start_of_session_message then
    show.start_of_session_message = omi_memx_options_riskcontrol_sbe_v1_6.prefs.show_start_of_session_message
    changed = true
  end
  if show.stream_begin_message ~= omi_memx_options_riskcontrol_sbe_v1_6.prefs.show_stream_begin_message then
    show.stream_begin_message = omi_memx_options_riskcontrol_sbe_v1_6.prefs.show_stream_begin_message
    changed = true
  end
  if show.stream_complete_message ~= omi_memx_options_riskcontrol_sbe_v1_6.prefs.show_stream_complete_message then
    show.stream_complete_message = omi_memx_options_riskcontrol_sbe_v1_6.prefs.show_stream_complete_message
    changed = true
  end
  if show.stream_rejected_message ~= omi_memx_options_riskcontrol_sbe_v1_6.prefs.show_stream_rejected_message then
    show.stream_rejected_message = omi_memx_options_riskcontrol_sbe_v1_6.prefs.show_stream_rejected_message
    changed = true
  end
  if show.stream_request_message ~= omi_memx_options_riskcontrol_sbe_v1_6.prefs.show_stream_request_message then
    show.stream_request_message = omi_memx_options_riskcontrol_sbe_v1_6.prefs.show_stream_request_message
    changed = true
  end
  if show.unsequenced_message ~= omi_memx_options_riskcontrol_sbe_v1_6.prefs.show_unsequenced_message then
    show.unsequenced_message = omi_memx_options_riskcontrol_sbe_v1_6.prefs.show_unsequenced_message
    changed = true
  end
  if show.data ~= omi_memx_options_riskcontrol_sbe_v1_6.prefs.show_data then
    show.data = omi_memx_options_riskcontrol_sbe_v1_6.prefs.show_data
    changed = true
  end
  if show.payload ~= omi_memx_options_riskcontrol_sbe_v1_6.prefs.show_payload then
    show.payload = omi_memx_options_riskcontrol_sbe_v1_6.prefs.show_payload
    changed = true
  end

  -- Reload on changed preference
  if changed then
    reload()
  end
end


-----------------------------------------------------------------------
-- Dissect Memx Options RiskControl Sbe 1.6
-----------------------------------------------------------------------

-- Period In Milli Seconds
memx_options_riskcontrol_sbe_v1_6.period_in_milli_seconds = {}

-- Size: Period In Milli Seconds
memx_options_riskcontrol_sbe_v1_6.period_in_milli_seconds.size = 4

-- Display: Period In Milli Seconds
memx_options_riskcontrol_sbe_v1_6.period_in_milli_seconds.display = function(value)
  return "Period In Milli Seconds: "..value
end

-- Dissect: Period In Milli Seconds
memx_options_riskcontrol_sbe_v1_6.period_in_milli_seconds.dissect = function(buffer, offset, packet, parent)
  local length = memx_options_riskcontrol_sbe_v1_6.period_in_milli_seconds.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = memx_options_riskcontrol_sbe_v1_6.period_in_milli_seconds.display(value, buffer, offset, packet, parent)

  parent:add(omi_memx_options_riskcontrol_sbe_v1_6.fields.period_in_milli_seconds, range, value, display)

  return offset + length, value
end

-- Max Order Msgs
memx_options_riskcontrol_sbe_v1_6.max_order_msgs = {}

-- Size: Max Order Msgs
memx_options_riskcontrol_sbe_v1_6.max_order_msgs.size = 4

-- Display: Max Order Msgs
memx_options_riskcontrol_sbe_v1_6.max_order_msgs.display = function(value)
  return "Max Order Msgs: "..value
end

-- Dissect: Max Order Msgs
memx_options_riskcontrol_sbe_v1_6.max_order_msgs.dissect = function(buffer, offset, packet, parent)
  local length = memx_options_riskcontrol_sbe_v1_6.max_order_msgs.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = memx_options_riskcontrol_sbe_v1_6.max_order_msgs.display(value, buffer, offset, packet, parent)

  parent:add(omi_memx_options_riskcontrol_sbe_v1_6.fields.max_order_msgs, range, value, display)

  return offset + length, value
end

-- Risk Group Id
memx_options_riskcontrol_sbe_v1_6.risk_group_id = {}

-- Size: Risk Group Id
memx_options_riskcontrol_sbe_v1_6.risk_group_id.size = 2

-- Display: Risk Group Id
memx_options_riskcontrol_sbe_v1_6.risk_group_id.display = function(value)
  -- Check if field has value
  if value == 65535 then
    return "Risk Group Id: No Value"
  end

  return "Risk Group Id: "..value
end

-- Dissect: Risk Group Id
memx_options_riskcontrol_sbe_v1_6.risk_group_id.dissect = function(buffer, offset, packet, parent)
  local length = memx_options_riskcontrol_sbe_v1_6.risk_group_id.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = memx_options_riskcontrol_sbe_v1_6.risk_group_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_memx_options_riskcontrol_sbe_v1_6.fields.risk_group_id, range, value, display)

  return offset + length, value
end

-- Efid Optional
memx_options_riskcontrol_sbe_v1_6.efid_optional = {}

-- Size: Efid Optional
memx_options_riskcontrol_sbe_v1_6.efid_optional.size = 4

-- Display: Efid Optional
memx_options_riskcontrol_sbe_v1_6.efid_optional.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Efid Optional: No Value"
  end

  return "Efid Optional: "..value
end

-- Dissect: Efid Optional
memx_options_riskcontrol_sbe_v1_6.efid_optional.dissect = function(buffer, offset, packet, parent)
  local length = memx_options_riskcontrol_sbe_v1_6.efid_optional.size
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

  local display = memx_options_riskcontrol_sbe_v1_6.efid_optional.display(value, buffer, offset, packet, parent)

  parent:add(omi_memx_options_riskcontrol_sbe_v1_6.fields.efid_optional, range, value, display)

  return offset + length, value
end

-- Underlier Optional
memx_options_riskcontrol_sbe_v1_6.underlier_optional = {}

-- Size: Underlier Optional
memx_options_riskcontrol_sbe_v1_6.underlier_optional.size = 6

-- Display: Underlier Optional
memx_options_riskcontrol_sbe_v1_6.underlier_optional.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Underlier Optional: No Value"
  end

  return "Underlier Optional: "..value
end

-- Dissect: Underlier Optional
memx_options_riskcontrol_sbe_v1_6.underlier_optional.dissect = function(buffer, offset, packet, parent)
  local length = memx_options_riskcontrol_sbe_v1_6.underlier_optional.size
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

  local display = memx_options_riskcontrol_sbe_v1_6.underlier_optional.display(value, buffer, offset, packet, parent)

  parent:add(omi_memx_options_riskcontrol_sbe_v1_6.fields.underlier_optional, range, value, display)

  return offset + length, value
end

-- ClOrdId Optional
memx_options_riskcontrol_sbe_v1_6.clordid_optional = {}

-- Size: ClOrdId Optional
memx_options_riskcontrol_sbe_v1_6.clordid_optional.size = 20

-- Display: ClOrdId Optional
memx_options_riskcontrol_sbe_v1_6.clordid_optional.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "ClOrdId Optional: No Value"
  end

  return "ClOrdId Optional: "..value
end

-- Dissect: ClOrdId Optional
memx_options_riskcontrol_sbe_v1_6.clordid_optional.dissect = function(buffer, offset, packet, parent)
  local length = memx_options_riskcontrol_sbe_v1_6.clordid_optional.size
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

  local display = memx_options_riskcontrol_sbe_v1_6.clordid_optional.display(value, buffer, offset, packet, parent)

  parent:add(omi_memx_options_riskcontrol_sbe_v1_6.fields.clordid_optional, range, value, display)

  return offset + length, value
end

-- Cp Order Rate Threshold State Message
memx_options_riskcontrol_sbe_v1_6.cp_order_rate_threshold_state_message = {}

-- Size: Cp Order Rate Threshold State Message
memx_options_riskcontrol_sbe_v1_6.cp_order_rate_threshold_state_message.size =
  memx_options_riskcontrol_sbe_v1_6.clordid_optional.size + 
  memx_options_riskcontrol_sbe_v1_6.underlier_optional.size + 
  memx_options_riskcontrol_sbe_v1_6.efid_optional.size + 
  memx_options_riskcontrol_sbe_v1_6.risk_group_id.size + 
  memx_options_riskcontrol_sbe_v1_6.max_order_msgs.size + 
  memx_options_riskcontrol_sbe_v1_6.period_in_milli_seconds.size

-- Display: Cp Order Rate Threshold State Message
memx_options_riskcontrol_sbe_v1_6.cp_order_rate_threshold_state_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Cp Order Rate Threshold State Message
memx_options_riskcontrol_sbe_v1_6.cp_order_rate_threshold_state_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- ClOrdId Optional: 20 Byte Ascii String Nullable
  index, clordid_optional = memx_options_riskcontrol_sbe_v1_6.clordid_optional.dissect(buffer, index, packet, parent)

  -- Underlier Optional: 6 Byte Ascii String Nullable
  index, underlier_optional = memx_options_riskcontrol_sbe_v1_6.underlier_optional.dissect(buffer, index, packet, parent)

  -- Efid Optional: 4 Byte Ascii String Nullable
  index, efid_optional = memx_options_riskcontrol_sbe_v1_6.efid_optional.dissect(buffer, index, packet, parent)

  -- Risk Group Id: 2 Byte Unsigned Fixed Width Integer Nullable
  index, risk_group_id = memx_options_riskcontrol_sbe_v1_6.risk_group_id.dissect(buffer, index, packet, parent)

  -- Max Order Msgs: 4 Byte Unsigned Fixed Width Integer
  index, max_order_msgs = memx_options_riskcontrol_sbe_v1_6.max_order_msgs.dissect(buffer, index, packet, parent)

  -- Period In Milli Seconds: 4 Byte Unsigned Fixed Width Integer
  index, period_in_milli_seconds = memx_options_riskcontrol_sbe_v1_6.period_in_milli_seconds.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Cp Order Rate Threshold State Message
memx_options_riskcontrol_sbe_v1_6.cp_order_rate_threshold_state_message.dissect = function(buffer, offset, packet, parent)
  if show.cp_order_rate_threshold_state_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_memx_options_riskcontrol_sbe_v1_6.fields.cp_order_rate_threshold_state_message, buffer(offset, 0))
    local index = memx_options_riskcontrol_sbe_v1_6.cp_order_rate_threshold_state_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = memx_options_riskcontrol_sbe_v1_6.cp_order_rate_threshold_state_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return memx_options_riskcontrol_sbe_v1_6.cp_order_rate_threshold_state_message.fields(buffer, offset, packet, parent)
  end
end

-- Use Order Price In Dup Check
memx_options_riskcontrol_sbe_v1_6.use_order_price_in_dup_check = {}

-- Size: Use Order Price In Dup Check
memx_options_riskcontrol_sbe_v1_6.use_order_price_in_dup_check.size = 1

-- Display: Use Order Price In Dup Check
memx_options_riskcontrol_sbe_v1_6.use_order_price_in_dup_check.display = function(value)
  if value == 0 then
    return "Use Order Price In Dup Check: False (0)"
  end
  if value == 1 then
    return "Use Order Price In Dup Check: True (1)"
  end

  return "Use Order Price In Dup Check: Unknown("..value..")"
end

-- Dissect: Use Order Price In Dup Check
memx_options_riskcontrol_sbe_v1_6.use_order_price_in_dup_check.dissect = function(buffer, offset, packet, parent)
  local length = memx_options_riskcontrol_sbe_v1_6.use_order_price_in_dup_check.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = memx_options_riskcontrol_sbe_v1_6.use_order_price_in_dup_check.display(value, buffer, offset, packet, parent)

  parent:add(omi_memx_options_riskcontrol_sbe_v1_6.fields.use_order_price_in_dup_check, range, value, display)

  return offset + length, value
end

-- Max Dup Orders
memx_options_riskcontrol_sbe_v1_6.max_dup_orders = {}

-- Size: Max Dup Orders
memx_options_riskcontrol_sbe_v1_6.max_dup_orders.size = 4

-- Display: Max Dup Orders
memx_options_riskcontrol_sbe_v1_6.max_dup_orders.display = function(value)
  return "Max Dup Orders: "..value
end

-- Dissect: Max Dup Orders
memx_options_riskcontrol_sbe_v1_6.max_dup_orders.dissect = function(buffer, offset, packet, parent)
  local length = memx_options_riskcontrol_sbe_v1_6.max_dup_orders.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = memx_options_riskcontrol_sbe_v1_6.max_dup_orders.display(value, buffer, offset, packet, parent)

  parent:add(omi_memx_options_riskcontrol_sbe_v1_6.fields.max_dup_orders, range, value, display)

  return offset + length, value
end

-- Cp Duplicate Order Threshold State Message
memx_options_riskcontrol_sbe_v1_6.cp_duplicate_order_threshold_state_message = {}

-- Size: Cp Duplicate Order Threshold State Message
memx_options_riskcontrol_sbe_v1_6.cp_duplicate_order_threshold_state_message.size =
  memx_options_riskcontrol_sbe_v1_6.clordid_optional.size + 
  memx_options_riskcontrol_sbe_v1_6.underlier_optional.size + 
  memx_options_riskcontrol_sbe_v1_6.efid_optional.size + 
  memx_options_riskcontrol_sbe_v1_6.risk_group_id.size + 
  memx_options_riskcontrol_sbe_v1_6.max_dup_orders.size + 
  memx_options_riskcontrol_sbe_v1_6.use_order_price_in_dup_check.size + 
  memx_options_riskcontrol_sbe_v1_6.period_in_milli_seconds.size

-- Display: Cp Duplicate Order Threshold State Message
memx_options_riskcontrol_sbe_v1_6.cp_duplicate_order_threshold_state_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Cp Duplicate Order Threshold State Message
memx_options_riskcontrol_sbe_v1_6.cp_duplicate_order_threshold_state_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- ClOrdId Optional: 20 Byte Ascii String Nullable
  index, clordid_optional = memx_options_riskcontrol_sbe_v1_6.clordid_optional.dissect(buffer, index, packet, parent)

  -- Underlier Optional: 6 Byte Ascii String Nullable
  index, underlier_optional = memx_options_riskcontrol_sbe_v1_6.underlier_optional.dissect(buffer, index, packet, parent)

  -- Efid Optional: 4 Byte Ascii String Nullable
  index, efid_optional = memx_options_riskcontrol_sbe_v1_6.efid_optional.dissect(buffer, index, packet, parent)

  -- Risk Group Id: 2 Byte Unsigned Fixed Width Integer Nullable
  index, risk_group_id = memx_options_riskcontrol_sbe_v1_6.risk_group_id.dissect(buffer, index, packet, parent)

  -- Max Dup Orders: 4 Byte Unsigned Fixed Width Integer
  index, max_dup_orders = memx_options_riskcontrol_sbe_v1_6.max_dup_orders.dissect(buffer, index, packet, parent)

  -- Use Order Price In Dup Check: 1 Byte Unsigned Fixed Width Integer Enum with 2 values
  index, use_order_price_in_dup_check = memx_options_riskcontrol_sbe_v1_6.use_order_price_in_dup_check.dissect(buffer, index, packet, parent)

  -- Period In Milli Seconds: 4 Byte Unsigned Fixed Width Integer
  index, period_in_milli_seconds = memx_options_riskcontrol_sbe_v1_6.period_in_milli_seconds.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Cp Duplicate Order Threshold State Message
memx_options_riskcontrol_sbe_v1_6.cp_duplicate_order_threshold_state_message.dissect = function(buffer, offset, packet, parent)
  if show.cp_duplicate_order_threshold_state_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_memx_options_riskcontrol_sbe_v1_6.fields.cp_duplicate_order_threshold_state_message, buffer(offset, 0))
    local index = memx_options_riskcontrol_sbe_v1_6.cp_duplicate_order_threshold_state_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = memx_options_riskcontrol_sbe_v1_6.cp_duplicate_order_threshold_state_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return memx_options_riskcontrol_sbe_v1_6.cp_duplicate_order_threshold_state_message.fields(buffer, offset, packet, parent)
  end
end

-- Price In Dollars
memx_options_riskcontrol_sbe_v1_6.price_in_dollars = {}

-- Size: Price In Dollars
memx_options_riskcontrol_sbe_v1_6.price_in_dollars.size = 8

-- Display: Price In Dollars
memx_options_riskcontrol_sbe_v1_6.price_in_dollars.display = function(value)
  return "Price In Dollars: "..value
end

-- Dissect: Price In Dollars
memx_options_riskcontrol_sbe_v1_6.price_in_dollars.dissect = function(buffer, offset, packet, parent)
  local length = memx_options_riskcontrol_sbe_v1_6.price_in_dollars.size
  local range = buffer(offset, length)
  local value = range:uint64()
  local display = memx_options_riskcontrol_sbe_v1_6.price_in_dollars.display(value, buffer, offset, packet, parent)

  parent:add(omi_memx_options_riskcontrol_sbe_v1_6.fields.price_in_dollars, range, value, display)

  return offset + length, value
end

-- Cp Market Order Net Notional Threshold State Message
memx_options_riskcontrol_sbe_v1_6.cp_market_order_net_notional_threshold_state_message = {}

-- Size: Cp Market Order Net Notional Threshold State Message
memx_options_riskcontrol_sbe_v1_6.cp_market_order_net_notional_threshold_state_message.size =
  memx_options_riskcontrol_sbe_v1_6.clordid_optional.size + 
  memx_options_riskcontrol_sbe_v1_6.underlier_optional.size + 
  memx_options_riskcontrol_sbe_v1_6.efid_optional.size + 
  memx_options_riskcontrol_sbe_v1_6.risk_group_id.size + 
  memx_options_riskcontrol_sbe_v1_6.price_in_dollars.size

-- Display: Cp Market Order Net Notional Threshold State Message
memx_options_riskcontrol_sbe_v1_6.cp_market_order_net_notional_threshold_state_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Cp Market Order Net Notional Threshold State Message
memx_options_riskcontrol_sbe_v1_6.cp_market_order_net_notional_threshold_state_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- ClOrdId Optional: 20 Byte Ascii String Nullable
  index, clordid_optional = memx_options_riskcontrol_sbe_v1_6.clordid_optional.dissect(buffer, index, packet, parent)

  -- Underlier Optional: 6 Byte Ascii String Nullable
  index, underlier_optional = memx_options_riskcontrol_sbe_v1_6.underlier_optional.dissect(buffer, index, packet, parent)

  -- Efid Optional: 4 Byte Ascii String Nullable
  index, efid_optional = memx_options_riskcontrol_sbe_v1_6.efid_optional.dissect(buffer, index, packet, parent)

  -- Risk Group Id: 2 Byte Unsigned Fixed Width Integer Nullable
  index, risk_group_id = memx_options_riskcontrol_sbe_v1_6.risk_group_id.dissect(buffer, index, packet, parent)

  -- Price In Dollars: 8 Byte Unsigned Fixed Width Integer
  index, price_in_dollars = memx_options_riskcontrol_sbe_v1_6.price_in_dollars.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Cp Market Order Net Notional Threshold State Message
memx_options_riskcontrol_sbe_v1_6.cp_market_order_net_notional_threshold_state_message.dissect = function(buffer, offset, packet, parent)
  if show.cp_market_order_net_notional_threshold_state_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_memx_options_riskcontrol_sbe_v1_6.fields.cp_market_order_net_notional_threshold_state_message, buffer(offset, 0))
    local index = memx_options_riskcontrol_sbe_v1_6.cp_market_order_net_notional_threshold_state_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = memx_options_riskcontrol_sbe_v1_6.cp_market_order_net_notional_threshold_state_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return memx_options_riskcontrol_sbe_v1_6.cp_market_order_net_notional_threshold_state_message.fields(buffer, offset, packet, parent)
  end
end

-- Cp Net Notional Threshold State Message
memx_options_riskcontrol_sbe_v1_6.cp_net_notional_threshold_state_message = {}

-- Size: Cp Net Notional Threshold State Message
memx_options_riskcontrol_sbe_v1_6.cp_net_notional_threshold_state_message.size =
  memx_options_riskcontrol_sbe_v1_6.clordid_optional.size + 
  memx_options_riskcontrol_sbe_v1_6.underlier_optional.size + 
  memx_options_riskcontrol_sbe_v1_6.efid_optional.size + 
  memx_options_riskcontrol_sbe_v1_6.risk_group_id.size + 
  memx_options_riskcontrol_sbe_v1_6.price_in_dollars.size

-- Display: Cp Net Notional Threshold State Message
memx_options_riskcontrol_sbe_v1_6.cp_net_notional_threshold_state_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Cp Net Notional Threshold State Message
memx_options_riskcontrol_sbe_v1_6.cp_net_notional_threshold_state_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- ClOrdId Optional: 20 Byte Ascii String Nullable
  index, clordid_optional = memx_options_riskcontrol_sbe_v1_6.clordid_optional.dissect(buffer, index, packet, parent)

  -- Underlier Optional: 6 Byte Ascii String Nullable
  index, underlier_optional = memx_options_riskcontrol_sbe_v1_6.underlier_optional.dissect(buffer, index, packet, parent)

  -- Efid Optional: 4 Byte Ascii String Nullable
  index, efid_optional = memx_options_riskcontrol_sbe_v1_6.efid_optional.dissect(buffer, index, packet, parent)

  -- Risk Group Id: 2 Byte Unsigned Fixed Width Integer Nullable
  index, risk_group_id = memx_options_riskcontrol_sbe_v1_6.risk_group_id.dissect(buffer, index, packet, parent)

  -- Price In Dollars: 8 Byte Unsigned Fixed Width Integer
  index, price_in_dollars = memx_options_riskcontrol_sbe_v1_6.price_in_dollars.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Cp Net Notional Threshold State Message
memx_options_riskcontrol_sbe_v1_6.cp_net_notional_threshold_state_message.dissect = function(buffer, offset, packet, parent)
  if show.cp_net_notional_threshold_state_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_memx_options_riskcontrol_sbe_v1_6.fields.cp_net_notional_threshold_state_message, buffer(offset, 0))
    local index = memx_options_riskcontrol_sbe_v1_6.cp_net_notional_threshold_state_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = memx_options_riskcontrol_sbe_v1_6.cp_net_notional_threshold_state_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return memx_options_riskcontrol_sbe_v1_6.cp_net_notional_threshold_state_message.fields(buffer, offset, packet, parent)
  end
end

-- Cp Market Order Gross Notional Threshold State Message
memx_options_riskcontrol_sbe_v1_6.cp_market_order_gross_notional_threshold_state_message = {}

-- Size: Cp Market Order Gross Notional Threshold State Message
memx_options_riskcontrol_sbe_v1_6.cp_market_order_gross_notional_threshold_state_message.size =
  memx_options_riskcontrol_sbe_v1_6.clordid_optional.size + 
  memx_options_riskcontrol_sbe_v1_6.underlier_optional.size + 
  memx_options_riskcontrol_sbe_v1_6.efid_optional.size + 
  memx_options_riskcontrol_sbe_v1_6.risk_group_id.size + 
  memx_options_riskcontrol_sbe_v1_6.price_in_dollars.size

-- Display: Cp Market Order Gross Notional Threshold State Message
memx_options_riskcontrol_sbe_v1_6.cp_market_order_gross_notional_threshold_state_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Cp Market Order Gross Notional Threshold State Message
memx_options_riskcontrol_sbe_v1_6.cp_market_order_gross_notional_threshold_state_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- ClOrdId Optional: 20 Byte Ascii String Nullable
  index, clordid_optional = memx_options_riskcontrol_sbe_v1_6.clordid_optional.dissect(buffer, index, packet, parent)

  -- Underlier Optional: 6 Byte Ascii String Nullable
  index, underlier_optional = memx_options_riskcontrol_sbe_v1_6.underlier_optional.dissect(buffer, index, packet, parent)

  -- Efid Optional: 4 Byte Ascii String Nullable
  index, efid_optional = memx_options_riskcontrol_sbe_v1_6.efid_optional.dissect(buffer, index, packet, parent)

  -- Risk Group Id: 2 Byte Unsigned Fixed Width Integer Nullable
  index, risk_group_id = memx_options_riskcontrol_sbe_v1_6.risk_group_id.dissect(buffer, index, packet, parent)

  -- Price In Dollars: 8 Byte Unsigned Fixed Width Integer
  index, price_in_dollars = memx_options_riskcontrol_sbe_v1_6.price_in_dollars.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Cp Market Order Gross Notional Threshold State Message
memx_options_riskcontrol_sbe_v1_6.cp_market_order_gross_notional_threshold_state_message.dissect = function(buffer, offset, packet, parent)
  if show.cp_market_order_gross_notional_threshold_state_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_memx_options_riskcontrol_sbe_v1_6.fields.cp_market_order_gross_notional_threshold_state_message, buffer(offset, 0))
    local index = memx_options_riskcontrol_sbe_v1_6.cp_market_order_gross_notional_threshold_state_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = memx_options_riskcontrol_sbe_v1_6.cp_market_order_gross_notional_threshold_state_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return memx_options_riskcontrol_sbe_v1_6.cp_market_order_gross_notional_threshold_state_message.fields(buffer, offset, packet, parent)
  end
end

-- Cp Gross Notional Threshold State Message
memx_options_riskcontrol_sbe_v1_6.cp_gross_notional_threshold_state_message = {}

-- Size: Cp Gross Notional Threshold State Message
memx_options_riskcontrol_sbe_v1_6.cp_gross_notional_threshold_state_message.size =
  memx_options_riskcontrol_sbe_v1_6.clordid_optional.size + 
  memx_options_riskcontrol_sbe_v1_6.underlier_optional.size + 
  memx_options_riskcontrol_sbe_v1_6.efid_optional.size + 
  memx_options_riskcontrol_sbe_v1_6.risk_group_id.size + 
  memx_options_riskcontrol_sbe_v1_6.price_in_dollars.size

-- Display: Cp Gross Notional Threshold State Message
memx_options_riskcontrol_sbe_v1_6.cp_gross_notional_threshold_state_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Cp Gross Notional Threshold State Message
memx_options_riskcontrol_sbe_v1_6.cp_gross_notional_threshold_state_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- ClOrdId Optional: 20 Byte Ascii String Nullable
  index, clordid_optional = memx_options_riskcontrol_sbe_v1_6.clordid_optional.dissect(buffer, index, packet, parent)

  -- Underlier Optional: 6 Byte Ascii String Nullable
  index, underlier_optional = memx_options_riskcontrol_sbe_v1_6.underlier_optional.dissect(buffer, index, packet, parent)

  -- Efid Optional: 4 Byte Ascii String Nullable
  index, efid_optional = memx_options_riskcontrol_sbe_v1_6.efid_optional.dissect(buffer, index, packet, parent)

  -- Risk Group Id: 2 Byte Unsigned Fixed Width Integer Nullable
  index, risk_group_id = memx_options_riskcontrol_sbe_v1_6.risk_group_id.dissect(buffer, index, packet, parent)

  -- Price In Dollars: 8 Byte Unsigned Fixed Width Integer
  index, price_in_dollars = memx_options_riskcontrol_sbe_v1_6.price_in_dollars.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Cp Gross Notional Threshold State Message
memx_options_riskcontrol_sbe_v1_6.cp_gross_notional_threshold_state_message.dissect = function(buffer, offset, packet, parent)
  if show.cp_gross_notional_threshold_state_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_memx_options_riskcontrol_sbe_v1_6.fields.cp_gross_notional_threshold_state_message, buffer(offset, 0))
    local index = memx_options_riskcontrol_sbe_v1_6.cp_gross_notional_threshold_state_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = memx_options_riskcontrol_sbe_v1_6.cp_gross_notional_threshold_state_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return memx_options_riskcontrol_sbe_v1_6.cp_gross_notional_threshold_state_message.fields(buffer, offset, packet, parent)
  end
end

-- Breach Id Optional
memx_options_riskcontrol_sbe_v1_6.breach_id_optional = {}

-- Size: Breach Id Optional
memx_options_riskcontrol_sbe_v1_6.breach_id_optional.size = 8

-- Display: Breach Id Optional
memx_options_riskcontrol_sbe_v1_6.breach_id_optional.display = function(value)
  -- Check if field has value
  if value == UInt64(0xFFFFFFFF, 0xFFFFFFFF) then
    return "Breach Id Optional: No Value"
  end

  return "Breach Id Optional: "..value
end

-- Dissect: Breach Id Optional
memx_options_riskcontrol_sbe_v1_6.breach_id_optional.dissect = function(buffer, offset, packet, parent)
  local length = memx_options_riskcontrol_sbe_v1_6.breach_id_optional.size
  local range = buffer(offset, length)
  local value = range:uint64()
  local display = memx_options_riskcontrol_sbe_v1_6.breach_id_optional.display(value, buffer, offset, packet, parent)

  parent:add(omi_memx_options_riskcontrol_sbe_v1_6.fields.breach_id_optional, range, value, display)

  return offset + length, value
end

-- Breach Cleared Message
memx_options_riskcontrol_sbe_v1_6.breach_cleared_message = {}

-- Size: Breach Cleared Message
memx_options_riskcontrol_sbe_v1_6.breach_cleared_message.size =
  memx_options_riskcontrol_sbe_v1_6.clordid_optional.size + 
  memx_options_riskcontrol_sbe_v1_6.breach_id_optional.size

-- Display: Breach Cleared Message
memx_options_riskcontrol_sbe_v1_6.breach_cleared_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Breach Cleared Message
memx_options_riskcontrol_sbe_v1_6.breach_cleared_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- ClOrdId Optional: 20 Byte Ascii String Nullable
  index, clordid_optional = memx_options_riskcontrol_sbe_v1_6.clordid_optional.dissect(buffer, index, packet, parent)

  -- Breach Id Optional: 8 Byte Unsigned Fixed Width Integer Nullable
  index, breach_id_optional = memx_options_riskcontrol_sbe_v1_6.breach_id_optional.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Breach Cleared Message
memx_options_riskcontrol_sbe_v1_6.breach_cleared_message.dissect = function(buffer, offset, packet, parent)
  if show.breach_cleared_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_memx_options_riskcontrol_sbe_v1_6.fields.breach_cleared_message, buffer(offset, 0))
    local index = memx_options_riskcontrol_sbe_v1_6.breach_cleared_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = memx_options_riskcontrol_sbe_v1_6.breach_cleared_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return memx_options_riskcontrol_sbe_v1_6.breach_cleared_message.fields(buffer, offset, packet, parent)
  end
end

-- Reject Reason
memx_options_riskcontrol_sbe_v1_6.reject_reason = {}

-- Size: Reject Reason
memx_options_riskcontrol_sbe_v1_6.reject_reason.size = 2

-- Display: Reject Reason
memx_options_riskcontrol_sbe_v1_6.reject_reason.display = function(value)
  if value == 0 then
    return "Reject Reason: Other (0)"
  end
  if value == 1 then
    return "Reject Reason: Missing Cl Ord Id (1)"
  end
  if value == 2 then
    return "Reject Reason: Invalid Cl Ord Id (2)"
  end
  if value == 3 then
    return "Reject Reason: Duplicate Cl Ord Id (3)"
  end
  if value == 4 then
    return "Reject Reason: Missing Time Period (4)"
  end
  if value == 5 then
    return "Reject Reason: Invalid Time Period (5)"
  end
  if value == 6 then
    return "Reject Reason: Missing Risk Group Id (6)"
  end
  if value == 7 then
    return "Reject Reason: Invalid Risk Group Id (7)"
  end
  if value == 8 then
    return "Reject Reason: Missing Underlier (8)"
  end
  if value == 9 then
    return "Reject Reason: Invalid Underlier (9)"
  end
  if value == 10 then
    return "Reject Reason: Missing Efid (10)"
  end
  if value == 11 then
    return "Reject Reason: Invalid Efid (11)"
  end
  if value == 12 then
    return "Reject Reason: Missing Threshold (12)"
  end
  if value == 13 then
    return "Reject Reason: Invalid Threshold (13)"
  end
  if value == 14 then
    return "Reject Reason: Missing Quantity (14)"
  end
  if value == 15 then
    return "Reject Reason: Invalid Quantity (15)"
  end
  if value == 16 then
    return "Reject Reason: Missing Breach Id (16)"
  end
  if value == 17 then
    return "Reject Reason: Invalid Breach Id (17)"
  end
  if value == 18 then
    return "Reject Reason: Missing Volume (18)"
  end
  if value == 19 then
    return "Reject Reason: Invalid Volume (19)"
  end
  if value == 20 then
    return "Reject Reason: Missing Period In Milli Seconds (20)"
  end
  if value == 21 then
    return "Reject Reason: Invalid Period In Milli Seconds (21)"
  end
  if value == 22 then
    return "Reject Reason: Missing Price In Dollars (22)"
  end
  if value == 23 then
    return "Reject Reason: Invalid Price In Dollars (23)"
  end
  if value == 24 then
    return "Reject Reason: Missing Total Executions (24)"
  end
  if value == 25 then
    return "Reject Reason: Invalid Total Executions (25)"
  end
  if value == 26 then
    return "Reject Reason: Missing Percent (26)"
  end
  if value == 27 then
    return "Reject Reason: Invalid Percent (27)"
  end
  if value == 28 then
    return "Reject Reason: Missing Count (28)"
  end
  if value == 29 then
    return "Reject Reason: Invalid Count (29)"
  end
  if value == 30 then
    return "Reject Reason: Missing Allow Iso Orders (30)"
  end
  if value == 31 then
    return "Reject Reason: Invalid Allow Iso Orders (31)"
  end
  if value == 32 then
    return "Reject Reason: Missing Allow Orders (32)"
  end
  if value == 33 then
    return "Reject Reason: Invalid Allow Orders (33)"
  end
  if value == 34 then
    return "Reject Reason: Missing Max Notional In Dollars (34)"
  end
  if value == 35 then
    return "Reject Reason: Invalid Max Notional In Dollars (35)"
  end
  if value == 36 then
    return "Reject Reason: Missing Max Contracts (36)"
  end
  if value == 37 then
    return "Reject Reason: Invalid Max Contracts (37)"
  end
  if value == 38 then
    return "Reject Reason: Over Confirm (38)"
  end
  if value == 39 then
    return "Reject Reason: Invalid Risk Combination (39)"
  end
  if value == 40 then
    return "Reject Reason: Unknown Risk Rule (40)"
  end
  if value == 41 then
    return "Reject Reason: Missing Max Dup Orders (41)"
  end
  if value == 42 then
    return "Reject Reason: Invalid Max Dup Orders (42)"
  end
  if value == 43 then
    return "Reject Reason: Missing Max Order Msgs (43)"
  end
  if value == 44 then
    return "Reject Reason: Invalid Max Order Msgs (44)"
  end
  if value == 45 then
    return "Reject Reason: Breach In Progress (45)"
  end
  if value == 46 then
    return "Reject Reason: Number Of Breaches Forbid Clearing (46)"
  end
  if value == 47 then
    return "Reject Reason: No Active Breaches (47)"
  end
  if value == 100 then
    return "Reject Reason: Exchange Closed (100)"
  end
  if value == 65535 then
    return "Reject Reason: Null Value (65535)"
  end

  return "Reject Reason: Unknown("..value..")"
end

-- Dissect: Reject Reason
memx_options_riskcontrol_sbe_v1_6.reject_reason.dissect = function(buffer, offset, packet, parent)
  local length = memx_options_riskcontrol_sbe_v1_6.reject_reason.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = memx_options_riskcontrol_sbe_v1_6.reject_reason.display(value, buffer, offset, packet, parent)

  parent:add(omi_memx_options_riskcontrol_sbe_v1_6.fields.reject_reason, range, value, display)

  return offset + length, value
end

-- ClOrdId
memx_options_riskcontrol_sbe_v1_6.clordid = {}

-- Size: ClOrdId
memx_options_riskcontrol_sbe_v1_6.clordid.size = 20

-- Display: ClOrdId
memx_options_riskcontrol_sbe_v1_6.clordid.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "ClOrdId: No Value"
  end

  return "ClOrdId: "..value
end

-- Dissect: ClOrdId
memx_options_riskcontrol_sbe_v1_6.clordid.dissect = function(buffer, offset, packet, parent)
  local length = memx_options_riskcontrol_sbe_v1_6.clordid.size
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

  local display = memx_options_riskcontrol_sbe_v1_6.clordid.display(value, buffer, offset, packet, parent)

  parent:add(omi_memx_options_riskcontrol_sbe_v1_6.fields.clordid, range, value, display)

  return offset + length, value
end

-- Breach Clear Rej Message
memx_options_riskcontrol_sbe_v1_6.breach_clear_rej_message = {}

-- Size: Breach Clear Rej Message
memx_options_riskcontrol_sbe_v1_6.breach_clear_rej_message.size =
  memx_options_riskcontrol_sbe_v1_6.clordid.size + 
  memx_options_riskcontrol_sbe_v1_6.breach_id_optional.size + 
  memx_options_riskcontrol_sbe_v1_6.reject_reason.size

-- Display: Breach Clear Rej Message
memx_options_riskcontrol_sbe_v1_6.breach_clear_rej_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Breach Clear Rej Message
memx_options_riskcontrol_sbe_v1_6.breach_clear_rej_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- ClOrdId: 20 Byte Ascii String
  index, clordid = memx_options_riskcontrol_sbe_v1_6.clordid.dissect(buffer, index, packet, parent)

  -- Breach Id Optional: 8 Byte Unsigned Fixed Width Integer Nullable
  index, breach_id_optional = memx_options_riskcontrol_sbe_v1_6.breach_id_optional.dissect(buffer, index, packet, parent)

  -- Reject Reason: 2 Byte Unsigned Fixed Width Integer Enum with 50 values
  index, reject_reason = memx_options_riskcontrol_sbe_v1_6.reject_reason.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Breach Clear Rej Message
memx_options_riskcontrol_sbe_v1_6.breach_clear_rej_message.dissect = function(buffer, offset, packet, parent)
  if show.breach_clear_rej_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_memx_options_riskcontrol_sbe_v1_6.fields.breach_clear_rej_message, buffer(offset, 0))
    local index = memx_options_riskcontrol_sbe_v1_6.breach_clear_rej_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = memx_options_riskcontrol_sbe_v1_6.breach_clear_rej_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return memx_options_riskcontrol_sbe_v1_6.breach_clear_rej_message.fields(buffer, offset, packet, parent)
  end
end

-- Manual Cp Breach Trigger Rej Message
memx_options_riskcontrol_sbe_v1_6.manual_cp_breach_trigger_rej_message = {}

-- Size: Manual Cp Breach Trigger Rej Message
memx_options_riskcontrol_sbe_v1_6.manual_cp_breach_trigger_rej_message.size =
  memx_options_riskcontrol_sbe_v1_6.clordid.size + 
  memx_options_riskcontrol_sbe_v1_6.underlier_optional.size + 
  memx_options_riskcontrol_sbe_v1_6.efid_optional.size + 
  memx_options_riskcontrol_sbe_v1_6.risk_group_id.size + 
  memx_options_riskcontrol_sbe_v1_6.reject_reason.size

-- Display: Manual Cp Breach Trigger Rej Message
memx_options_riskcontrol_sbe_v1_6.manual_cp_breach_trigger_rej_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Manual Cp Breach Trigger Rej Message
memx_options_riskcontrol_sbe_v1_6.manual_cp_breach_trigger_rej_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- ClOrdId: 20 Byte Ascii String
  index, clordid = memx_options_riskcontrol_sbe_v1_6.clordid.dissect(buffer, index, packet, parent)

  -- Underlier Optional: 6 Byte Ascii String Nullable
  index, underlier_optional = memx_options_riskcontrol_sbe_v1_6.underlier_optional.dissect(buffer, index, packet, parent)

  -- Efid Optional: 4 Byte Ascii String Nullable
  index, efid_optional = memx_options_riskcontrol_sbe_v1_6.efid_optional.dissect(buffer, index, packet, parent)

  -- Risk Group Id: 2 Byte Unsigned Fixed Width Integer Nullable
  index, risk_group_id = memx_options_riskcontrol_sbe_v1_6.risk_group_id.dissect(buffer, index, packet, parent)

  -- Reject Reason: 2 Byte Unsigned Fixed Width Integer Enum with 50 values
  index, reject_reason = memx_options_riskcontrol_sbe_v1_6.reject_reason.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Manual Cp Breach Trigger Rej Message
memx_options_riskcontrol_sbe_v1_6.manual_cp_breach_trigger_rej_message.dissect = function(buffer, offset, packet, parent)
  if show.manual_cp_breach_trigger_rej_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_memx_options_riskcontrol_sbe_v1_6.fields.manual_cp_breach_trigger_rej_message, buffer(offset, 0))
    local index = memx_options_riskcontrol_sbe_v1_6.manual_cp_breach_trigger_rej_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = memx_options_riskcontrol_sbe_v1_6.manual_cp_breach_trigger_rej_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return memx_options_riskcontrol_sbe_v1_6.manual_cp_breach_trigger_rej_message.fields(buffer, offset, packet, parent)
  end
end

-- Risk Settings Query Rej Message
memx_options_riskcontrol_sbe_v1_6.risk_settings_query_rej_message = {}

-- Size: Risk Settings Query Rej Message
memx_options_riskcontrol_sbe_v1_6.risk_settings_query_rej_message.size =
  memx_options_riskcontrol_sbe_v1_6.clordid.size + 
  memx_options_riskcontrol_sbe_v1_6.reject_reason.size

-- Display: Risk Settings Query Rej Message
memx_options_riskcontrol_sbe_v1_6.risk_settings_query_rej_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Risk Settings Query Rej Message
memx_options_riskcontrol_sbe_v1_6.risk_settings_query_rej_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- ClOrdId: 20 Byte Ascii String
  index, clordid = memx_options_riskcontrol_sbe_v1_6.clordid.dissect(buffer, index, packet, parent)

  -- Reject Reason: 2 Byte Unsigned Fixed Width Integer Enum with 50 values
  index, reject_reason = memx_options_riskcontrol_sbe_v1_6.reject_reason.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Risk Settings Query Rej Message
memx_options_riskcontrol_sbe_v1_6.risk_settings_query_rej_message.dissect = function(buffer, offset, packet, parent)
  if show.risk_settings_query_rej_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_memx_options_riskcontrol_sbe_v1_6.fields.risk_settings_query_rej_message, buffer(offset, 0))
    local index = memx_options_riskcontrol_sbe_v1_6.risk_settings_query_rej_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = memx_options_riskcontrol_sbe_v1_6.risk_settings_query_rej_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return memx_options_riskcontrol_sbe_v1_6.risk_settings_query_rej_message.fields(buffer, offset, packet, parent)
  end
end

-- Number Msgs Sent
memx_options_riskcontrol_sbe_v1_6.number_msgs_sent = {}

-- Size: Number Msgs Sent
memx_options_riskcontrol_sbe_v1_6.number_msgs_sent.size = 4

-- Display: Number Msgs Sent
memx_options_riskcontrol_sbe_v1_6.number_msgs_sent.display = function(value)
  return "Number Msgs Sent: "..value
end

-- Dissect: Number Msgs Sent
memx_options_riskcontrol_sbe_v1_6.number_msgs_sent.dissect = function(buffer, offset, packet, parent)
  local length = memx_options_riskcontrol_sbe_v1_6.number_msgs_sent.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = memx_options_riskcontrol_sbe_v1_6.number_msgs_sent.display(value, buffer, offset, packet, parent)

  parent:add(omi_memx_options_riskcontrol_sbe_v1_6.fields.number_msgs_sent, range, value, display)

  return offset + length, value
end

-- Risk Settings Query Done Message
memx_options_riskcontrol_sbe_v1_6.risk_settings_query_done_message = {}

-- Size: Risk Settings Query Done Message
memx_options_riskcontrol_sbe_v1_6.risk_settings_query_done_message.size =
  memx_options_riskcontrol_sbe_v1_6.clordid.size + 
  memx_options_riskcontrol_sbe_v1_6.number_msgs_sent.size

-- Display: Risk Settings Query Done Message
memx_options_riskcontrol_sbe_v1_6.risk_settings_query_done_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Risk Settings Query Done Message
memx_options_riskcontrol_sbe_v1_6.risk_settings_query_done_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- ClOrdId: 20 Byte Ascii String
  index, clordid = memx_options_riskcontrol_sbe_v1_6.clordid.dissect(buffer, index, packet, parent)

  -- Number Msgs Sent: 4 Byte Unsigned Fixed Width Integer
  index, number_msgs_sent = memx_options_riskcontrol_sbe_v1_6.number_msgs_sent.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Risk Settings Query Done Message
memx_options_riskcontrol_sbe_v1_6.risk_settings_query_done_message.dissect = function(buffer, offset, packet, parent)
  if show.risk_settings_query_done_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_memx_options_riskcontrol_sbe_v1_6.fields.risk_settings_query_done_message, buffer(offset, 0))
    local index = memx_options_riskcontrol_sbe_v1_6.risk_settings_query_done_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = memx_options_riskcontrol_sbe_v1_6.risk_settings_query_done_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return memx_options_riskcontrol_sbe_v1_6.risk_settings_query_done_message.fields(buffer, offset, packet, parent)
  end
end

-- Max Contracts
memx_options_riskcontrol_sbe_v1_6.max_contracts = {}

-- Size: Max Contracts
memx_options_riskcontrol_sbe_v1_6.max_contracts.size = 4

-- Display: Max Contracts
memx_options_riskcontrol_sbe_v1_6.max_contracts.display = function(value)
  return "Max Contracts: "..value
end

-- Dissect: Max Contracts
memx_options_riskcontrol_sbe_v1_6.max_contracts.dissect = function(buffer, offset, packet, parent)
  local length = memx_options_riskcontrol_sbe_v1_6.max_contracts.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = memx_options_riskcontrol_sbe_v1_6.max_contracts.display(value, buffer, offset, packet, parent)

  parent:add(omi_memx_options_riskcontrol_sbe_v1_6.fields.max_contracts, range, value, display)

  return offset + length, value
end

-- Single Order Max Contracts Threshold State Message
memx_options_riskcontrol_sbe_v1_6.single_order_max_contracts_threshold_state_message = {}

-- Size: Single Order Max Contracts Threshold State Message
memx_options_riskcontrol_sbe_v1_6.single_order_max_contracts_threshold_state_message.size =
  memx_options_riskcontrol_sbe_v1_6.clordid_optional.size + 
  memx_options_riskcontrol_sbe_v1_6.underlier_optional.size + 
  memx_options_riskcontrol_sbe_v1_6.efid_optional.size + 
  memx_options_riskcontrol_sbe_v1_6.risk_group_id.size + 
  memx_options_riskcontrol_sbe_v1_6.max_contracts.size

-- Display: Single Order Max Contracts Threshold State Message
memx_options_riskcontrol_sbe_v1_6.single_order_max_contracts_threshold_state_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Single Order Max Contracts Threshold State Message
memx_options_riskcontrol_sbe_v1_6.single_order_max_contracts_threshold_state_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- ClOrdId Optional: 20 Byte Ascii String Nullable
  index, clordid_optional = memx_options_riskcontrol_sbe_v1_6.clordid_optional.dissect(buffer, index, packet, parent)

  -- Underlier Optional: 6 Byte Ascii String Nullable
  index, underlier_optional = memx_options_riskcontrol_sbe_v1_6.underlier_optional.dissect(buffer, index, packet, parent)

  -- Efid Optional: 4 Byte Ascii String Nullable
  index, efid_optional = memx_options_riskcontrol_sbe_v1_6.efid_optional.dissect(buffer, index, packet, parent)

  -- Risk Group Id: 2 Byte Unsigned Fixed Width Integer Nullable
  index, risk_group_id = memx_options_riskcontrol_sbe_v1_6.risk_group_id.dissect(buffer, index, packet, parent)

  -- Max Contracts: 4 Byte Unsigned Fixed Width Integer
  index, max_contracts = memx_options_riskcontrol_sbe_v1_6.max_contracts.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Single Order Max Contracts Threshold State Message
memx_options_riskcontrol_sbe_v1_6.single_order_max_contracts_threshold_state_message.dissect = function(buffer, offset, packet, parent)
  if show.single_order_max_contracts_threshold_state_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_memx_options_riskcontrol_sbe_v1_6.fields.single_order_max_contracts_threshold_state_message, buffer(offset, 0))
    local index = memx_options_riskcontrol_sbe_v1_6.single_order_max_contracts_threshold_state_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = memx_options_riskcontrol_sbe_v1_6.single_order_max_contracts_threshold_state_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return memx_options_riskcontrol_sbe_v1_6.single_order_max_contracts_threshold_state_message.fields(buffer, offset, packet, parent)
  end
end

-- Max Notional In Dollars
memx_options_riskcontrol_sbe_v1_6.max_notional_in_dollars = {}

-- Size: Max Notional In Dollars
memx_options_riskcontrol_sbe_v1_6.max_notional_in_dollars.size = 8

-- Display: Max Notional In Dollars
memx_options_riskcontrol_sbe_v1_6.max_notional_in_dollars.display = function(value)
  return "Max Notional In Dollars: "..value
end

-- Dissect: Max Notional In Dollars
memx_options_riskcontrol_sbe_v1_6.max_notional_in_dollars.dissect = function(buffer, offset, packet, parent)
  local length = memx_options_riskcontrol_sbe_v1_6.max_notional_in_dollars.size
  local range = buffer(offset, length)
  local value = range:uint64()
  local display = memx_options_riskcontrol_sbe_v1_6.max_notional_in_dollars.display(value, buffer, offset, packet, parent)

  parent:add(omi_memx_options_riskcontrol_sbe_v1_6.fields.max_notional_in_dollars, range, value, display)

  return offset + length, value
end

-- Single Order Max Notional Threshold State Message
memx_options_riskcontrol_sbe_v1_6.single_order_max_notional_threshold_state_message = {}

-- Size: Single Order Max Notional Threshold State Message
memx_options_riskcontrol_sbe_v1_6.single_order_max_notional_threshold_state_message.size =
  memx_options_riskcontrol_sbe_v1_6.clordid_optional.size + 
  memx_options_riskcontrol_sbe_v1_6.underlier_optional.size + 
  memx_options_riskcontrol_sbe_v1_6.efid_optional.size + 
  memx_options_riskcontrol_sbe_v1_6.risk_group_id.size + 
  memx_options_riskcontrol_sbe_v1_6.max_notional_in_dollars.size

-- Display: Single Order Max Notional Threshold State Message
memx_options_riskcontrol_sbe_v1_6.single_order_max_notional_threshold_state_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Single Order Max Notional Threshold State Message
memx_options_riskcontrol_sbe_v1_6.single_order_max_notional_threshold_state_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- ClOrdId Optional: 20 Byte Ascii String Nullable
  index, clordid_optional = memx_options_riskcontrol_sbe_v1_6.clordid_optional.dissect(buffer, index, packet, parent)

  -- Underlier Optional: 6 Byte Ascii String Nullable
  index, underlier_optional = memx_options_riskcontrol_sbe_v1_6.underlier_optional.dissect(buffer, index, packet, parent)

  -- Efid Optional: 4 Byte Ascii String Nullable
  index, efid_optional = memx_options_riskcontrol_sbe_v1_6.efid_optional.dissect(buffer, index, packet, parent)

  -- Risk Group Id: 2 Byte Unsigned Fixed Width Integer Nullable
  index, risk_group_id = memx_options_riskcontrol_sbe_v1_6.risk_group_id.dissect(buffer, index, packet, parent)

  -- Max Notional In Dollars: 8 Byte Unsigned Fixed Width Integer
  index, max_notional_in_dollars = memx_options_riskcontrol_sbe_v1_6.max_notional_in_dollars.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Single Order Max Notional Threshold State Message
memx_options_riskcontrol_sbe_v1_6.single_order_max_notional_threshold_state_message.dissect = function(buffer, offset, packet, parent)
  if show.single_order_max_notional_threshold_state_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_memx_options_riskcontrol_sbe_v1_6.fields.single_order_max_notional_threshold_state_message, buffer(offset, 0))
    local index = memx_options_riskcontrol_sbe_v1_6.single_order_max_notional_threshold_state_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = memx_options_riskcontrol_sbe_v1_6.single_order_max_notional_threshold_state_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return memx_options_riskcontrol_sbe_v1_6.single_order_max_notional_threshold_state_message.fields(buffer, offset, packet, parent)
  end
end

-- Allow Orders
memx_options_riskcontrol_sbe_v1_6.allow_orders = {}

-- Size: Allow Orders
memx_options_riskcontrol_sbe_v1_6.allow_orders.size = 1

-- Display: Allow Orders
memx_options_riskcontrol_sbe_v1_6.allow_orders.display = function(value)
  if value == 0 then
    return "Allow Orders: False (0)"
  end
  if value == 1 then
    return "Allow Orders: True (1)"
  end

  return "Allow Orders: Unknown("..value..")"
end

-- Dissect: Allow Orders
memx_options_riskcontrol_sbe_v1_6.allow_orders.dissect = function(buffer, offset, packet, parent)
  local length = memx_options_riskcontrol_sbe_v1_6.allow_orders.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = memx_options_riskcontrol_sbe_v1_6.allow_orders.display(value, buffer, offset, packet, parent)

  parent:add(omi_memx_options_riskcontrol_sbe_v1_6.fields.allow_orders, range, value, display)

  return offset + length, value
end

-- Single Order Allow Orders In Crossed Market State Message
memx_options_riskcontrol_sbe_v1_6.single_order_allow_orders_in_crossed_market_state_message = {}

-- Size: Single Order Allow Orders In Crossed Market State Message
memx_options_riskcontrol_sbe_v1_6.single_order_allow_orders_in_crossed_market_state_message.size =
  memx_options_riskcontrol_sbe_v1_6.clordid_optional.size + 
  memx_options_riskcontrol_sbe_v1_6.underlier_optional.size + 
  memx_options_riskcontrol_sbe_v1_6.efid_optional.size + 
  memx_options_riskcontrol_sbe_v1_6.risk_group_id.size + 
  memx_options_riskcontrol_sbe_v1_6.allow_orders.size

-- Display: Single Order Allow Orders In Crossed Market State Message
memx_options_riskcontrol_sbe_v1_6.single_order_allow_orders_in_crossed_market_state_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Single Order Allow Orders In Crossed Market State Message
memx_options_riskcontrol_sbe_v1_6.single_order_allow_orders_in_crossed_market_state_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- ClOrdId Optional: 20 Byte Ascii String Nullable
  index, clordid_optional = memx_options_riskcontrol_sbe_v1_6.clordid_optional.dissect(buffer, index, packet, parent)

  -- Underlier Optional: 6 Byte Ascii String Nullable
  index, underlier_optional = memx_options_riskcontrol_sbe_v1_6.underlier_optional.dissect(buffer, index, packet, parent)

  -- Efid Optional: 4 Byte Ascii String Nullable
  index, efid_optional = memx_options_riskcontrol_sbe_v1_6.efid_optional.dissect(buffer, index, packet, parent)

  -- Risk Group Id: 2 Byte Unsigned Fixed Width Integer Nullable
  index, risk_group_id = memx_options_riskcontrol_sbe_v1_6.risk_group_id.dissect(buffer, index, packet, parent)

  -- Allow Orders: 1 Byte Unsigned Fixed Width Integer Enum with 2 values
  index, allow_orders = memx_options_riskcontrol_sbe_v1_6.allow_orders.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Single Order Allow Orders In Crossed Market State Message
memx_options_riskcontrol_sbe_v1_6.single_order_allow_orders_in_crossed_market_state_message.dissect = function(buffer, offset, packet, parent)
  if show.single_order_allow_orders_in_crossed_market_state_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_memx_options_riskcontrol_sbe_v1_6.fields.single_order_allow_orders_in_crossed_market_state_message, buffer(offset, 0))
    local index = memx_options_riskcontrol_sbe_v1_6.single_order_allow_orders_in_crossed_market_state_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = memx_options_riskcontrol_sbe_v1_6.single_order_allow_orders_in_crossed_market_state_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return memx_options_riskcontrol_sbe_v1_6.single_order_allow_orders_in_crossed_market_state_message.fields(buffer, offset, packet, parent)
  end
end

-- Allow Iso Orders
memx_options_riskcontrol_sbe_v1_6.allow_iso_orders = {}

-- Size: Allow Iso Orders
memx_options_riskcontrol_sbe_v1_6.allow_iso_orders.size = 1

-- Display: Allow Iso Orders
memx_options_riskcontrol_sbe_v1_6.allow_iso_orders.display = function(value)
  if value == 0 then
    return "Allow Iso Orders: False (0)"
  end
  if value == 1 then
    return "Allow Iso Orders: True (1)"
  end

  return "Allow Iso Orders: Unknown("..value..")"
end

-- Dissect: Allow Iso Orders
memx_options_riskcontrol_sbe_v1_6.allow_iso_orders.dissect = function(buffer, offset, packet, parent)
  local length = memx_options_riskcontrol_sbe_v1_6.allow_iso_orders.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = memx_options_riskcontrol_sbe_v1_6.allow_iso_orders.display(value, buffer, offset, packet, parent)

  parent:add(omi_memx_options_riskcontrol_sbe_v1_6.fields.allow_iso_orders, range, value, display)

  return offset + length, value
end

-- Single Order Allow Iso Orders State Message
memx_options_riskcontrol_sbe_v1_6.single_order_allow_iso_orders_state_message = {}

-- Size: Single Order Allow Iso Orders State Message
memx_options_riskcontrol_sbe_v1_6.single_order_allow_iso_orders_state_message.size =
  memx_options_riskcontrol_sbe_v1_6.clordid_optional.size + 
  memx_options_riskcontrol_sbe_v1_6.underlier_optional.size + 
  memx_options_riskcontrol_sbe_v1_6.efid_optional.size + 
  memx_options_riskcontrol_sbe_v1_6.risk_group_id.size + 
  memx_options_riskcontrol_sbe_v1_6.allow_iso_orders.size

-- Display: Single Order Allow Iso Orders State Message
memx_options_riskcontrol_sbe_v1_6.single_order_allow_iso_orders_state_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Single Order Allow Iso Orders State Message
memx_options_riskcontrol_sbe_v1_6.single_order_allow_iso_orders_state_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- ClOrdId Optional: 20 Byte Ascii String Nullable
  index, clordid_optional = memx_options_riskcontrol_sbe_v1_6.clordid_optional.dissect(buffer, index, packet, parent)

  -- Underlier Optional: 6 Byte Ascii String Nullable
  index, underlier_optional = memx_options_riskcontrol_sbe_v1_6.underlier_optional.dissect(buffer, index, packet, parent)

  -- Efid Optional: 4 Byte Ascii String Nullable
  index, efid_optional = memx_options_riskcontrol_sbe_v1_6.efid_optional.dissect(buffer, index, packet, parent)

  -- Risk Group Id: 2 Byte Unsigned Fixed Width Integer Nullable
  index, risk_group_id = memx_options_riskcontrol_sbe_v1_6.risk_group_id.dissect(buffer, index, packet, parent)

  -- Allow Iso Orders: 1 Byte Unsigned Fixed Width Integer Enum with 2 values
  index, allow_iso_orders = memx_options_riskcontrol_sbe_v1_6.allow_iso_orders.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Single Order Allow Iso Orders State Message
memx_options_riskcontrol_sbe_v1_6.single_order_allow_iso_orders_state_message.dissect = function(buffer, offset, packet, parent)
  if show.single_order_allow_iso_orders_state_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_memx_options_riskcontrol_sbe_v1_6.fields.single_order_allow_iso_orders_state_message, buffer(offset, 0))
    local index = memx_options_riskcontrol_sbe_v1_6.single_order_allow_iso_orders_state_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = memx_options_riskcontrol_sbe_v1_6.single_order_allow_iso_orders_state_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return memx_options_riskcontrol_sbe_v1_6.single_order_allow_iso_orders_state_message.fields(buffer, offset, packet, parent)
  end
end

-- Transact Time
memx_options_riskcontrol_sbe_v1_6.transact_time = {}

-- Size: Transact Time
memx_options_riskcontrol_sbe_v1_6.transact_time.size = 8

-- Display: Transact Time
memx_options_riskcontrol_sbe_v1_6.transact_time.display = function(value)
  return "Transact Time: "..value
end

-- Dissect: Transact Time
memx_options_riskcontrol_sbe_v1_6.transact_time.dissect = function(buffer, offset, packet, parent)
  local length = memx_options_riskcontrol_sbe_v1_6.transact_time.size
  local range = buffer(offset, length)
  local value = range:uint64()
  local display = memx_options_riskcontrol_sbe_v1_6.transact_time.display(value, buffer, offset, packet, parent)

  parent:add(omi_memx_options_riskcontrol_sbe_v1_6.fields.transact_time, range, value, display)

  return offset + length, value
end

-- Latest Percentage
memx_options_riskcontrol_sbe_v1_6.latest_percentage = {}

-- Size: Latest Percentage
memx_options_riskcontrol_sbe_v1_6.latest_percentage.size = 1

-- Display: Latest Percentage
memx_options_riskcontrol_sbe_v1_6.latest_percentage.display = function(value)
  return "Latest Percentage: "..value
end

-- Dissect: Latest Percentage
memx_options_riskcontrol_sbe_v1_6.latest_percentage.dissect = function(buffer, offset, packet, parent)
  local length = memx_options_riskcontrol_sbe_v1_6.latest_percentage.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = memx_options_riskcontrol_sbe_v1_6.latest_percentage.display(value, buffer, offset, packet, parent)

  parent:add(omi_memx_options_riskcontrol_sbe_v1_6.fields.latest_percentage, range, value, display)

  return offset + length, value
end

-- Rule Type
memx_options_riskcontrol_sbe_v1_6.rule_type = {}

-- Size: Rule Type
memx_options_riskcontrol_sbe_v1_6.rule_type.size = 1

-- Display: Rule Type
memx_options_riskcontrol_sbe_v1_6.rule_type.display = function(value)
  if value == 1 then
    return "Rule Type: Contract Volume (1)"
  end
  if value == 2 then
    return "Rule Type: Notional Executed (2)"
  end
  if value == 3 then
    return "Rule Type: Total Trades Executed (3)"
  end
  if value == 4 then
    return "Rule Type: Percent Executed (4)"
  end
  if value == 5 then
    return "Rule Type: Number Of Breaches (5)"
  end
  if value == 6 then
    return "Rule Type: Allow Iso Orders (6)"
  end
  if value == 7 then
    return "Rule Type: Allow Orders In Crossed Market (7)"
  end
  if value == 8 then
    return "Rule Type: Max Notional (8)"
  end
  if value == 9 then
    return "Rule Type: Max Contracts (9)"
  end
  if value == 10 then
    return "Rule Type: Gross Notional (10)"
  end
  if value == 11 then
    return "Rule Type: Market Order Gross Notional (11)"
  end
  if value == 12 then
    return "Rule Type: Net Notional (12)"
  end
  if value == 13 then
    return "Rule Type: Market Order Net Notional (13)"
  end
  if value == 14 then
    return "Rule Type: Duplicate Order (14)"
  end
  if value == 15 then
    return "Rule Type: Order Rate (15)"
  end
  if value == 254 then
    return "Rule Type: Triggered Breach (254)"
  end

  return "Rule Type: Unknown("..value..")"
end

-- Dissect: Rule Type
memx_options_riskcontrol_sbe_v1_6.rule_type.dissect = function(buffer, offset, packet, parent)
  local length = memx_options_riskcontrol_sbe_v1_6.rule_type.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = memx_options_riskcontrol_sbe_v1_6.rule_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_memx_options_riskcontrol_sbe_v1_6.fields.rule_type, range, value, display)

  return offset + length, value
end

-- Passive Risk Threshold Notification Message
memx_options_riskcontrol_sbe_v1_6.passive_risk_threshold_notification_message = {}

-- Size: Passive Risk Threshold Notification Message
memx_options_riskcontrol_sbe_v1_6.passive_risk_threshold_notification_message.size =
  memx_options_riskcontrol_sbe_v1_6.underlier_optional.size + 
  memx_options_riskcontrol_sbe_v1_6.efid_optional.size + 
  memx_options_riskcontrol_sbe_v1_6.risk_group_id.size + 
  memx_options_riskcontrol_sbe_v1_6.rule_type.size + 
  memx_options_riskcontrol_sbe_v1_6.latest_percentage.size + 
  memx_options_riskcontrol_sbe_v1_6.breach_id_optional.size + 
  memx_options_riskcontrol_sbe_v1_6.transact_time.size

-- Display: Passive Risk Threshold Notification Message
memx_options_riskcontrol_sbe_v1_6.passive_risk_threshold_notification_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Passive Risk Threshold Notification Message
memx_options_riskcontrol_sbe_v1_6.passive_risk_threshold_notification_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Underlier Optional: 6 Byte Ascii String Nullable
  index, underlier_optional = memx_options_riskcontrol_sbe_v1_6.underlier_optional.dissect(buffer, index, packet, parent)

  -- Efid Optional: 4 Byte Ascii String Nullable
  index, efid_optional = memx_options_riskcontrol_sbe_v1_6.efid_optional.dissect(buffer, index, packet, parent)

  -- Risk Group Id: 2 Byte Unsigned Fixed Width Integer Nullable
  index, risk_group_id = memx_options_riskcontrol_sbe_v1_6.risk_group_id.dissect(buffer, index, packet, parent)

  -- Rule Type: 1 Byte Unsigned Fixed Width Integer Enum with 16 values
  index, rule_type = memx_options_riskcontrol_sbe_v1_6.rule_type.dissect(buffer, index, packet, parent)

  -- Latest Percentage: 1 Byte Unsigned Fixed Width Integer
  index, latest_percentage = memx_options_riskcontrol_sbe_v1_6.latest_percentage.dissect(buffer, index, packet, parent)

  -- Breach Id Optional: 8 Byte Unsigned Fixed Width Integer Nullable
  index, breach_id_optional = memx_options_riskcontrol_sbe_v1_6.breach_id_optional.dissect(buffer, index, packet, parent)

  -- Transact Time: 8 Byte Unsigned Fixed Width Integer
  index, transact_time = memx_options_riskcontrol_sbe_v1_6.transact_time.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Passive Risk Threshold Notification Message
memx_options_riskcontrol_sbe_v1_6.passive_risk_threshold_notification_message.dissect = function(buffer, offset, packet, parent)
  if show.passive_risk_threshold_notification_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_memx_options_riskcontrol_sbe_v1_6.fields.passive_risk_threshold_notification_message, buffer(offset, 0))
    local index = memx_options_riskcontrol_sbe_v1_6.passive_risk_threshold_notification_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = memx_options_riskcontrol_sbe_v1_6.passive_risk_threshold_notification_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return memx_options_riskcontrol_sbe_v1_6.passive_risk_threshold_notification_message.fields(buffer, offset, packet, parent)
  end
end

-- Risk Type
memx_options_riskcontrol_sbe_v1_6.risk_type = {}

-- Size: Risk Type
memx_options_riskcontrol_sbe_v1_6.risk_type.size = 1

-- Display: Risk Type
memx_options_riskcontrol_sbe_v1_6.risk_type.display = function(value)
  if value == 1 then
    return "Risk Type: Contract Volume (1)"
  end
  if value == 2 then
    return "Risk Type: Notional Executed (2)"
  end
  if value == 3 then
    return "Risk Type: Total Trades Executed (3)"
  end
  if value == 4 then
    return "Risk Type: Percent Executed (4)"
  end
  if value == 5 then
    return "Risk Type: Number Of Breaches (5)"
  end
  if value == 6 then
    return "Risk Type: Allow Iso Orders (6)"
  end
  if value == 7 then
    return "Risk Type: Allow Orders In Crossed Market (7)"
  end
  if value == 8 then
    return "Risk Type: Max Notional (8)"
  end
  if value == 9 then
    return "Risk Type: Max Contracts (9)"
  end
  if value == 10 then
    return "Risk Type: Gross Notional (10)"
  end
  if value == 11 then
    return "Risk Type: Market Order Gross Notional (11)"
  end
  if value == 12 then
    return "Risk Type: Net Notional (12)"
  end
  if value == 13 then
    return "Risk Type: Market Order Net Notional (13)"
  end
  if value == 14 then
    return "Risk Type: Duplicate Order (14)"
  end
  if value == 15 then
    return "Risk Type: Order Rate (15)"
  end
  if value == 254 then
    return "Risk Type: Triggered Breach (254)"
  end

  return "Risk Type: Unknown("..value..")"
end

-- Dissect: Risk Type
memx_options_riskcontrol_sbe_v1_6.risk_type.dissect = function(buffer, offset, packet, parent)
  local length = memx_options_riskcontrol_sbe_v1_6.risk_type.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = memx_options_riskcontrol_sbe_v1_6.risk_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_memx_options_riskcontrol_sbe_v1_6.fields.risk_type, range, value, display)

  return offset + length, value
end

-- Risk Threshold Update Rej Message
memx_options_riskcontrol_sbe_v1_6.risk_threshold_update_rej_message = {}

-- Size: Risk Threshold Update Rej Message
memx_options_riskcontrol_sbe_v1_6.risk_threshold_update_rej_message.size =
  memx_options_riskcontrol_sbe_v1_6.clordid.size + 
  memx_options_riskcontrol_sbe_v1_6.risk_type.size + 
  memx_options_riskcontrol_sbe_v1_6.reject_reason.size

-- Display: Risk Threshold Update Rej Message
memx_options_riskcontrol_sbe_v1_6.risk_threshold_update_rej_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Risk Threshold Update Rej Message
memx_options_riskcontrol_sbe_v1_6.risk_threshold_update_rej_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- ClOrdId: 20 Byte Ascii String
  index, clordid = memx_options_riskcontrol_sbe_v1_6.clordid.dissect(buffer, index, packet, parent)

  -- Risk Type: 1 Byte Unsigned Fixed Width Integer Enum with 16 values
  index, risk_type = memx_options_riskcontrol_sbe_v1_6.risk_type.dissect(buffer, index, packet, parent)

  -- Reject Reason: 2 Byte Unsigned Fixed Width Integer Enum with 50 values
  index, reject_reason = memx_options_riskcontrol_sbe_v1_6.reject_reason.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Risk Threshold Update Rej Message
memx_options_riskcontrol_sbe_v1_6.risk_threshold_update_rej_message.dissect = function(buffer, offset, packet, parent)
  if show.risk_threshold_update_rej_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_memx_options_riskcontrol_sbe_v1_6.fields.risk_threshold_update_rej_message, buffer(offset, 0))
    local index = memx_options_riskcontrol_sbe_v1_6.risk_threshold_update_rej_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = memx_options_riskcontrol_sbe_v1_6.risk_threshold_update_rej_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return memx_options_riskcontrol_sbe_v1_6.risk_threshold_update_rej_message.fields(buffer, offset, packet, parent)
  end
end

-- Total Affected Orders
memx_options_riskcontrol_sbe_v1_6.total_affected_orders = {}

-- Size: Total Affected Orders
memx_options_riskcontrol_sbe_v1_6.total_affected_orders.size = 4

-- Display: Total Affected Orders
memx_options_riskcontrol_sbe_v1_6.total_affected_orders.display = function(value)
  return "Total Affected Orders: "..value
end

-- Dissect: Total Affected Orders
memx_options_riskcontrol_sbe_v1_6.total_affected_orders.dissect = function(buffer, offset, packet, parent)
  local length = memx_options_riskcontrol_sbe_v1_6.total_affected_orders.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = memx_options_riskcontrol_sbe_v1_6.total_affected_orders.display(value, buffer, offset, packet, parent)

  parent:add(omi_memx_options_riskcontrol_sbe_v1_6.fields.total_affected_orders, range, value, display)

  return offset + length, value
end

-- Breach Id
memx_options_riskcontrol_sbe_v1_6.breach_id = {}

-- Size: Breach Id
memx_options_riskcontrol_sbe_v1_6.breach_id.size = 8

-- Display: Breach Id
memx_options_riskcontrol_sbe_v1_6.breach_id.display = function(value)
  return "Breach Id: "..value
end

-- Dissect: Breach Id
memx_options_riskcontrol_sbe_v1_6.breach_id.dissect = function(buffer, offset, packet, parent)
  local length = memx_options_riskcontrol_sbe_v1_6.breach_id.size
  local range = buffer(offset, length)
  local value = range:uint64()
  local display = memx_options_riskcontrol_sbe_v1_6.breach_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_memx_options_riskcontrol_sbe_v1_6.fields.breach_id, range, value, display)

  return offset + length, value
end

-- Manual Cp Breach Trigger Done Message
memx_options_riskcontrol_sbe_v1_6.manual_cp_breach_trigger_done_message = {}

-- Size: Manual Cp Breach Trigger Done Message
memx_options_riskcontrol_sbe_v1_6.manual_cp_breach_trigger_done_message.size =
  memx_options_riskcontrol_sbe_v1_6.clordid.size + 
  memx_options_riskcontrol_sbe_v1_6.underlier_optional.size + 
  memx_options_riskcontrol_sbe_v1_6.efid_optional.size + 
  memx_options_riskcontrol_sbe_v1_6.risk_group_id.size + 
  memx_options_riskcontrol_sbe_v1_6.breach_id.size + 
  memx_options_riskcontrol_sbe_v1_6.total_affected_orders.size

-- Display: Manual Cp Breach Trigger Done Message
memx_options_riskcontrol_sbe_v1_6.manual_cp_breach_trigger_done_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Manual Cp Breach Trigger Done Message
memx_options_riskcontrol_sbe_v1_6.manual_cp_breach_trigger_done_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- ClOrdId: 20 Byte Ascii String
  index, clordid = memx_options_riskcontrol_sbe_v1_6.clordid.dissect(buffer, index, packet, parent)

  -- Underlier Optional: 6 Byte Ascii String Nullable
  index, underlier_optional = memx_options_riskcontrol_sbe_v1_6.underlier_optional.dissect(buffer, index, packet, parent)

  -- Efid Optional: 4 Byte Ascii String Nullable
  index, efid_optional = memx_options_riskcontrol_sbe_v1_6.efid_optional.dissect(buffer, index, packet, parent)

  -- Risk Group Id: 2 Byte Unsigned Fixed Width Integer Nullable
  index, risk_group_id = memx_options_riskcontrol_sbe_v1_6.risk_group_id.dissect(buffer, index, packet, parent)

  -- Breach Id: 8 Byte Unsigned Fixed Width Integer
  index, breach_id = memx_options_riskcontrol_sbe_v1_6.breach_id.dissect(buffer, index, packet, parent)

  -- Total Affected Orders: 4 Byte Unsigned Fixed Width Integer
  index, total_affected_orders = memx_options_riskcontrol_sbe_v1_6.total_affected_orders.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Manual Cp Breach Trigger Done Message
memx_options_riskcontrol_sbe_v1_6.manual_cp_breach_trigger_done_message.dissect = function(buffer, offset, packet, parent)
  if show.manual_cp_breach_trigger_done_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_memx_options_riskcontrol_sbe_v1_6.fields.manual_cp_breach_trigger_done_message, buffer(offset, 0))
    local index = memx_options_riskcontrol_sbe_v1_6.manual_cp_breach_trigger_done_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = memx_options_riskcontrol_sbe_v1_6.manual_cp_breach_trigger_done_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return memx_options_riskcontrol_sbe_v1_6.manual_cp_breach_trigger_done_message.fields(buffer, offset, packet, parent)
  end
end

-- Manual Cp Breach Trigger Pending Message
memx_options_riskcontrol_sbe_v1_6.manual_cp_breach_trigger_pending_message = {}

-- Size: Manual Cp Breach Trigger Pending Message
memx_options_riskcontrol_sbe_v1_6.manual_cp_breach_trigger_pending_message.size =
  memx_options_riskcontrol_sbe_v1_6.clordid.size + 
  memx_options_riskcontrol_sbe_v1_6.underlier_optional.size + 
  memx_options_riskcontrol_sbe_v1_6.efid_optional.size + 
  memx_options_riskcontrol_sbe_v1_6.risk_group_id.size + 
  memx_options_riskcontrol_sbe_v1_6.breach_id.size

-- Display: Manual Cp Breach Trigger Pending Message
memx_options_riskcontrol_sbe_v1_6.manual_cp_breach_trigger_pending_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Manual Cp Breach Trigger Pending Message
memx_options_riskcontrol_sbe_v1_6.manual_cp_breach_trigger_pending_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- ClOrdId: 20 Byte Ascii String
  index, clordid = memx_options_riskcontrol_sbe_v1_6.clordid.dissect(buffer, index, packet, parent)

  -- Underlier Optional: 6 Byte Ascii String Nullable
  index, underlier_optional = memx_options_riskcontrol_sbe_v1_6.underlier_optional.dissect(buffer, index, packet, parent)

  -- Efid Optional: 4 Byte Ascii String Nullable
  index, efid_optional = memx_options_riskcontrol_sbe_v1_6.efid_optional.dissect(buffer, index, packet, parent)

  -- Risk Group Id: 2 Byte Unsigned Fixed Width Integer Nullable
  index, risk_group_id = memx_options_riskcontrol_sbe_v1_6.risk_group_id.dissect(buffer, index, packet, parent)

  -- Breach Id: 8 Byte Unsigned Fixed Width Integer
  index, breach_id = memx_options_riskcontrol_sbe_v1_6.breach_id.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Manual Cp Breach Trigger Pending Message
memx_options_riskcontrol_sbe_v1_6.manual_cp_breach_trigger_pending_message.dissect = function(buffer, offset, packet, parent)
  if show.manual_cp_breach_trigger_pending_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_memx_options_riskcontrol_sbe_v1_6.fields.manual_cp_breach_trigger_pending_message, buffer(offset, 0))
    local index = memx_options_riskcontrol_sbe_v1_6.manual_cp_breach_trigger_pending_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = memx_options_riskcontrol_sbe_v1_6.manual_cp_breach_trigger_pending_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return memx_options_riskcontrol_sbe_v1_6.manual_cp_breach_trigger_pending_message.fields(buffer, offset, packet, parent)
  end
end

-- Count
memx_options_riskcontrol_sbe_v1_6.count = {}

-- Size: Count
memx_options_riskcontrol_sbe_v1_6.count.size = 4

-- Display: Count
memx_options_riskcontrol_sbe_v1_6.count.display = function(value)
  return "Count: "..value
end

-- Dissect: Count
memx_options_riskcontrol_sbe_v1_6.count.dissect = function(buffer, offset, packet, parent)
  local length = memx_options_riskcontrol_sbe_v1_6.count.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = memx_options_riskcontrol_sbe_v1_6.count.display(value, buffer, offset, packet, parent)

  parent:add(omi_memx_options_riskcontrol_sbe_v1_6.fields.count, range, value, display)

  return offset + length, value
end

-- Cp Breach Count Threshold State Message
memx_options_riskcontrol_sbe_v1_6.cp_breach_count_threshold_state_message = {}

-- Size: Cp Breach Count Threshold State Message
memx_options_riskcontrol_sbe_v1_6.cp_breach_count_threshold_state_message.size =
  memx_options_riskcontrol_sbe_v1_6.clordid_optional.size + 
  memx_options_riskcontrol_sbe_v1_6.underlier_optional.size + 
  memx_options_riskcontrol_sbe_v1_6.efid_optional.size + 
  memx_options_riskcontrol_sbe_v1_6.risk_group_id.size + 
  memx_options_riskcontrol_sbe_v1_6.count.size + 
  memx_options_riskcontrol_sbe_v1_6.period_in_milli_seconds.size

-- Display: Cp Breach Count Threshold State Message
memx_options_riskcontrol_sbe_v1_6.cp_breach_count_threshold_state_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Cp Breach Count Threshold State Message
memx_options_riskcontrol_sbe_v1_6.cp_breach_count_threshold_state_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- ClOrdId Optional: 20 Byte Ascii String Nullable
  index, clordid_optional = memx_options_riskcontrol_sbe_v1_6.clordid_optional.dissect(buffer, index, packet, parent)

  -- Underlier Optional: 6 Byte Ascii String Nullable
  index, underlier_optional = memx_options_riskcontrol_sbe_v1_6.underlier_optional.dissect(buffer, index, packet, parent)

  -- Efid Optional: 4 Byte Ascii String Nullable
  index, efid_optional = memx_options_riskcontrol_sbe_v1_6.efid_optional.dissect(buffer, index, packet, parent)

  -- Risk Group Id: 2 Byte Unsigned Fixed Width Integer Nullable
  index, risk_group_id = memx_options_riskcontrol_sbe_v1_6.risk_group_id.dissect(buffer, index, packet, parent)

  -- Count: 4 Byte Unsigned Fixed Width Integer
  index, count = memx_options_riskcontrol_sbe_v1_6.count.dissect(buffer, index, packet, parent)

  -- Period In Milli Seconds: 4 Byte Unsigned Fixed Width Integer
  index, period_in_milli_seconds = memx_options_riskcontrol_sbe_v1_6.period_in_milli_seconds.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Cp Breach Count Threshold State Message
memx_options_riskcontrol_sbe_v1_6.cp_breach_count_threshold_state_message.dissect = function(buffer, offset, packet, parent)
  if show.cp_breach_count_threshold_state_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_memx_options_riskcontrol_sbe_v1_6.fields.cp_breach_count_threshold_state_message, buffer(offset, 0))
    local index = memx_options_riskcontrol_sbe_v1_6.cp_breach_count_threshold_state_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = memx_options_riskcontrol_sbe_v1_6.cp_breach_count_threshold_state_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return memx_options_riskcontrol_sbe_v1_6.cp_breach_count_threshold_state_message.fields(buffer, offset, packet, parent)
  end
end

-- Percent
memx_options_riskcontrol_sbe_v1_6.percent = {}

-- Size: Percent
memx_options_riskcontrol_sbe_v1_6.percent.size = 4

-- Display: Percent
memx_options_riskcontrol_sbe_v1_6.percent.display = function(value)
  return "Percent: "..value
end

-- Dissect: Percent
memx_options_riskcontrol_sbe_v1_6.percent.dissect = function(buffer, offset, packet, parent)
  local length = memx_options_riskcontrol_sbe_v1_6.percent.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = memx_options_riskcontrol_sbe_v1_6.percent.display(value, buffer, offset, packet, parent)

  parent:add(omi_memx_options_riskcontrol_sbe_v1_6.fields.percent, range, value, display)

  return offset + length, value
end

-- Cp Percent Outstanding Contracts Threshold State Message
memx_options_riskcontrol_sbe_v1_6.cp_percent_outstanding_contracts_threshold_state_message = {}

-- Size: Cp Percent Outstanding Contracts Threshold State Message
memx_options_riskcontrol_sbe_v1_6.cp_percent_outstanding_contracts_threshold_state_message.size =
  memx_options_riskcontrol_sbe_v1_6.clordid_optional.size + 
  memx_options_riskcontrol_sbe_v1_6.underlier_optional.size + 
  memx_options_riskcontrol_sbe_v1_6.efid_optional.size + 
  memx_options_riskcontrol_sbe_v1_6.percent.size + 
  memx_options_riskcontrol_sbe_v1_6.period_in_milli_seconds.size

-- Display: Cp Percent Outstanding Contracts Threshold State Message
memx_options_riskcontrol_sbe_v1_6.cp_percent_outstanding_contracts_threshold_state_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Cp Percent Outstanding Contracts Threshold State Message
memx_options_riskcontrol_sbe_v1_6.cp_percent_outstanding_contracts_threshold_state_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- ClOrdId Optional: 20 Byte Ascii String Nullable
  index, clordid_optional = memx_options_riskcontrol_sbe_v1_6.clordid_optional.dissect(buffer, index, packet, parent)

  -- Underlier Optional: 6 Byte Ascii String Nullable
  index, underlier_optional = memx_options_riskcontrol_sbe_v1_6.underlier_optional.dissect(buffer, index, packet, parent)

  -- Efid Optional: 4 Byte Ascii String Nullable
  index, efid_optional = memx_options_riskcontrol_sbe_v1_6.efid_optional.dissect(buffer, index, packet, parent)

  -- Percent: 4 Byte Signed Fixed Width Integer
  index, percent = memx_options_riskcontrol_sbe_v1_6.percent.dissect(buffer, index, packet, parent)

  -- Period In Milli Seconds: 4 Byte Unsigned Fixed Width Integer
  index, period_in_milli_seconds = memx_options_riskcontrol_sbe_v1_6.period_in_milli_seconds.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Cp Percent Outstanding Contracts Threshold State Message
memx_options_riskcontrol_sbe_v1_6.cp_percent_outstanding_contracts_threshold_state_message.dissect = function(buffer, offset, packet, parent)
  if show.cp_percent_outstanding_contracts_threshold_state_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_memx_options_riskcontrol_sbe_v1_6.fields.cp_percent_outstanding_contracts_threshold_state_message, buffer(offset, 0))
    local index = memx_options_riskcontrol_sbe_v1_6.cp_percent_outstanding_contracts_threshold_state_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = memx_options_riskcontrol_sbe_v1_6.cp_percent_outstanding_contracts_threshold_state_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return memx_options_riskcontrol_sbe_v1_6.cp_percent_outstanding_contracts_threshold_state_message.fields(buffer, offset, packet, parent)
  end
end

-- Total Executions
memx_options_riskcontrol_sbe_v1_6.total_executions = {}

-- Size: Total Executions
memx_options_riskcontrol_sbe_v1_6.total_executions.size = 4

-- Display: Total Executions
memx_options_riskcontrol_sbe_v1_6.total_executions.display = function(value)
  return "Total Executions: "..value
end

-- Dissect: Total Executions
memx_options_riskcontrol_sbe_v1_6.total_executions.dissect = function(buffer, offset, packet, parent)
  local length = memx_options_riskcontrol_sbe_v1_6.total_executions.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = memx_options_riskcontrol_sbe_v1_6.total_executions.display(value, buffer, offset, packet, parent)

  parent:add(omi_memx_options_riskcontrol_sbe_v1_6.fields.total_executions, range, value, display)

  return offset + length, value
end

-- Cp Total Executions Threshold State Message
memx_options_riskcontrol_sbe_v1_6.cp_total_executions_threshold_state_message = {}

-- Size: Cp Total Executions Threshold State Message
memx_options_riskcontrol_sbe_v1_6.cp_total_executions_threshold_state_message.size =
  memx_options_riskcontrol_sbe_v1_6.clordid_optional.size + 
  memx_options_riskcontrol_sbe_v1_6.underlier_optional.size + 
  memx_options_riskcontrol_sbe_v1_6.efid_optional.size + 
  memx_options_riskcontrol_sbe_v1_6.risk_group_id.size + 
  memx_options_riskcontrol_sbe_v1_6.total_executions.size + 
  memx_options_riskcontrol_sbe_v1_6.period_in_milli_seconds.size

-- Display: Cp Total Executions Threshold State Message
memx_options_riskcontrol_sbe_v1_6.cp_total_executions_threshold_state_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Cp Total Executions Threshold State Message
memx_options_riskcontrol_sbe_v1_6.cp_total_executions_threshold_state_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- ClOrdId Optional: 20 Byte Ascii String Nullable
  index, clordid_optional = memx_options_riskcontrol_sbe_v1_6.clordid_optional.dissect(buffer, index, packet, parent)

  -- Underlier Optional: 6 Byte Ascii String Nullable
  index, underlier_optional = memx_options_riskcontrol_sbe_v1_6.underlier_optional.dissect(buffer, index, packet, parent)

  -- Efid Optional: 4 Byte Ascii String Nullable
  index, efid_optional = memx_options_riskcontrol_sbe_v1_6.efid_optional.dissect(buffer, index, packet, parent)

  -- Risk Group Id: 2 Byte Unsigned Fixed Width Integer Nullable
  index, risk_group_id = memx_options_riskcontrol_sbe_v1_6.risk_group_id.dissect(buffer, index, packet, parent)

  -- Total Executions: 4 Byte Unsigned Fixed Width Integer
  index, total_executions = memx_options_riskcontrol_sbe_v1_6.total_executions.dissect(buffer, index, packet, parent)

  -- Period In Milli Seconds: 4 Byte Unsigned Fixed Width Integer
  index, period_in_milli_seconds = memx_options_riskcontrol_sbe_v1_6.period_in_milli_seconds.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Cp Total Executions Threshold State Message
memx_options_riskcontrol_sbe_v1_6.cp_total_executions_threshold_state_message.dissect = function(buffer, offset, packet, parent)
  if show.cp_total_executions_threshold_state_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_memx_options_riskcontrol_sbe_v1_6.fields.cp_total_executions_threshold_state_message, buffer(offset, 0))
    local index = memx_options_riskcontrol_sbe_v1_6.cp_total_executions_threshold_state_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = memx_options_riskcontrol_sbe_v1_6.cp_total_executions_threshold_state_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return memx_options_riskcontrol_sbe_v1_6.cp_total_executions_threshold_state_message.fields(buffer, offset, packet, parent)
  end
end

-- Cp Executed Notional Threshold State Message
memx_options_riskcontrol_sbe_v1_6.cp_executed_notional_threshold_state_message = {}

-- Size: Cp Executed Notional Threshold State Message
memx_options_riskcontrol_sbe_v1_6.cp_executed_notional_threshold_state_message.size =
  memx_options_riskcontrol_sbe_v1_6.clordid_optional.size + 
  memx_options_riskcontrol_sbe_v1_6.underlier_optional.size + 
  memx_options_riskcontrol_sbe_v1_6.efid_optional.size + 
  memx_options_riskcontrol_sbe_v1_6.risk_group_id.size + 
  memx_options_riskcontrol_sbe_v1_6.price_in_dollars.size + 
  memx_options_riskcontrol_sbe_v1_6.period_in_milli_seconds.size

-- Display: Cp Executed Notional Threshold State Message
memx_options_riskcontrol_sbe_v1_6.cp_executed_notional_threshold_state_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Cp Executed Notional Threshold State Message
memx_options_riskcontrol_sbe_v1_6.cp_executed_notional_threshold_state_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- ClOrdId Optional: 20 Byte Ascii String Nullable
  index, clordid_optional = memx_options_riskcontrol_sbe_v1_6.clordid_optional.dissect(buffer, index, packet, parent)

  -- Underlier Optional: 6 Byte Ascii String Nullable
  index, underlier_optional = memx_options_riskcontrol_sbe_v1_6.underlier_optional.dissect(buffer, index, packet, parent)

  -- Efid Optional: 4 Byte Ascii String Nullable
  index, efid_optional = memx_options_riskcontrol_sbe_v1_6.efid_optional.dissect(buffer, index, packet, parent)

  -- Risk Group Id: 2 Byte Unsigned Fixed Width Integer Nullable
  index, risk_group_id = memx_options_riskcontrol_sbe_v1_6.risk_group_id.dissect(buffer, index, packet, parent)

  -- Price In Dollars: 8 Byte Unsigned Fixed Width Integer
  index, price_in_dollars = memx_options_riskcontrol_sbe_v1_6.price_in_dollars.dissect(buffer, index, packet, parent)

  -- Period In Milli Seconds: 4 Byte Unsigned Fixed Width Integer
  index, period_in_milli_seconds = memx_options_riskcontrol_sbe_v1_6.period_in_milli_seconds.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Cp Executed Notional Threshold State Message
memx_options_riskcontrol_sbe_v1_6.cp_executed_notional_threshold_state_message.dissect = function(buffer, offset, packet, parent)
  if show.cp_executed_notional_threshold_state_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_memx_options_riskcontrol_sbe_v1_6.fields.cp_executed_notional_threshold_state_message, buffer(offset, 0))
    local index = memx_options_riskcontrol_sbe_v1_6.cp_executed_notional_threshold_state_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = memx_options_riskcontrol_sbe_v1_6.cp_executed_notional_threshold_state_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return memx_options_riskcontrol_sbe_v1_6.cp_executed_notional_threshold_state_message.fields(buffer, offset, packet, parent)
  end
end

-- Volume
memx_options_riskcontrol_sbe_v1_6.volume = {}

-- Size: Volume
memx_options_riskcontrol_sbe_v1_6.volume.size = 8

-- Display: Volume
memx_options_riskcontrol_sbe_v1_6.volume.display = function(value)
  return "Volume: "..value
end

-- Dissect: Volume
memx_options_riskcontrol_sbe_v1_6.volume.dissect = function(buffer, offset, packet, parent)
  local length = memx_options_riskcontrol_sbe_v1_6.volume.size
  local range = buffer(offset, length)
  local value = range:uint64()
  local display = memx_options_riskcontrol_sbe_v1_6.volume.display(value, buffer, offset, packet, parent)

  parent:add(omi_memx_options_riskcontrol_sbe_v1_6.fields.volume, range, value, display)

  return offset + length, value
end

-- Cp Volume Threshold State Message
memx_options_riskcontrol_sbe_v1_6.cp_volume_threshold_state_message = {}

-- Size: Cp Volume Threshold State Message
memx_options_riskcontrol_sbe_v1_6.cp_volume_threshold_state_message.size =
  memx_options_riskcontrol_sbe_v1_6.clordid_optional.size + 
  memx_options_riskcontrol_sbe_v1_6.underlier_optional.size + 
  memx_options_riskcontrol_sbe_v1_6.efid_optional.size + 
  memx_options_riskcontrol_sbe_v1_6.risk_group_id.size + 
  memx_options_riskcontrol_sbe_v1_6.volume.size + 
  memx_options_riskcontrol_sbe_v1_6.period_in_milli_seconds.size

-- Display: Cp Volume Threshold State Message
memx_options_riskcontrol_sbe_v1_6.cp_volume_threshold_state_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Cp Volume Threshold State Message
memx_options_riskcontrol_sbe_v1_6.cp_volume_threshold_state_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- ClOrdId Optional: 20 Byte Ascii String Nullable
  index, clordid_optional = memx_options_riskcontrol_sbe_v1_6.clordid_optional.dissect(buffer, index, packet, parent)

  -- Underlier Optional: 6 Byte Ascii String Nullable
  index, underlier_optional = memx_options_riskcontrol_sbe_v1_6.underlier_optional.dissect(buffer, index, packet, parent)

  -- Efid Optional: 4 Byte Ascii String Nullable
  index, efid_optional = memx_options_riskcontrol_sbe_v1_6.efid_optional.dissect(buffer, index, packet, parent)

  -- Risk Group Id: 2 Byte Unsigned Fixed Width Integer Nullable
  index, risk_group_id = memx_options_riskcontrol_sbe_v1_6.risk_group_id.dissect(buffer, index, packet, parent)

  -- Volume: 8 Byte Unsigned Fixed Width Integer
  index, volume = memx_options_riskcontrol_sbe_v1_6.volume.dissect(buffer, index, packet, parent)

  -- Period In Milli Seconds: 4 Byte Unsigned Fixed Width Integer
  index, period_in_milli_seconds = memx_options_riskcontrol_sbe_v1_6.period_in_milli_seconds.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Cp Volume Threshold State Message
memx_options_riskcontrol_sbe_v1_6.cp_volume_threshold_state_message.dissect = function(buffer, offset, packet, parent)
  if show.cp_volume_threshold_state_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_memx_options_riskcontrol_sbe_v1_6.fields.cp_volume_threshold_state_message, buffer(offset, 0))
    local index = memx_options_riskcontrol_sbe_v1_6.cp_volume_threshold_state_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = memx_options_riskcontrol_sbe_v1_6.cp_volume_threshold_state_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return memx_options_riskcontrol_sbe_v1_6.cp_volume_threshold_state_message.fields(buffer, offset, packet, parent)
  end
end

-- Unacked Quantity
memx_options_riskcontrol_sbe_v1_6.unacked_quantity = {}

-- Size: Unacked Quantity
memx_options_riskcontrol_sbe_v1_6.unacked_quantity.size = 4

-- Display: Unacked Quantity
memx_options_riskcontrol_sbe_v1_6.unacked_quantity.display = function(value)
  return "Unacked Quantity: "..value
end

-- Dissect: Unacked Quantity
memx_options_riskcontrol_sbe_v1_6.unacked_quantity.dissect = function(buffer, offset, packet, parent)
  local length = memx_options_riskcontrol_sbe_v1_6.unacked_quantity.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = memx_options_riskcontrol_sbe_v1_6.unacked_quantity.display(value, buffer, offset, packet, parent)

  parent:add(omi_memx_options_riskcontrol_sbe_v1_6.fields.unacked_quantity, range, value, display)

  return offset + length, value
end

-- Last Qty
memx_options_riskcontrol_sbe_v1_6.last_qty = {}

-- Size: Last Qty
memx_options_riskcontrol_sbe_v1_6.last_qty.size = 4

-- Display: Last Qty
memx_options_riskcontrol_sbe_v1_6.last_qty.display = function(value)
  return "Last Qty: "..value
end

-- Dissect: Last Qty
memx_options_riskcontrol_sbe_v1_6.last_qty.dissect = function(buffer, offset, packet, parent)
  local length = memx_options_riskcontrol_sbe_v1_6.last_qty.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = memx_options_riskcontrol_sbe_v1_6.last_qty.display(value, buffer, offset, packet, parent)

  parent:add(omi_memx_options_riskcontrol_sbe_v1_6.fields.last_qty, range, value, display)

  return offset + length, value
end

-- Last Px
memx_options_riskcontrol_sbe_v1_6.last_px = {}

-- Size: Last Px
memx_options_riskcontrol_sbe_v1_6.last_px.size = 8

-- Display: Last Px
memx_options_riskcontrol_sbe_v1_6.last_px.display = function(value)
  return "Last Px: "..value
end

-- Translate: Last Px
memx_options_riskcontrol_sbe_v1_6.last_px.translate = function(raw)
  return raw:tonumber()/100000000
end

-- Dissect: Last Px
memx_options_riskcontrol_sbe_v1_6.last_px.dissect = function(buffer, offset, packet, parent)
  local length = memx_options_riskcontrol_sbe_v1_6.last_px.size
  local range = buffer(offset, length)
  local raw = range:uint64()
  local value = memx_options_riskcontrol_sbe_v1_6.last_px.translate(raw)
  local display = memx_options_riskcontrol_sbe_v1_6.last_px.display(value, buffer, offset, packet, parent)

  parent:add(omi_memx_options_riskcontrol_sbe_v1_6.fields.last_px, range, value, display)

  return offset + length, value
end

-- Side
memx_options_riskcontrol_sbe_v1_6.side = {}

-- Size: Side
memx_options_riskcontrol_sbe_v1_6.side.size = 1

-- Display: Side
memx_options_riskcontrol_sbe_v1_6.side.display = function(value)
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
memx_options_riskcontrol_sbe_v1_6.side.dissect = function(buffer, offset, packet, parent)
  local length = memx_options_riskcontrol_sbe_v1_6.side.size
  local range = buffer(offset, length)

  -- parse as byte
  local value = range:uint()

  -- check if value is non zero
  if value ~= 0 then
    value = range:string()
  end

  local display = memx_options_riskcontrol_sbe_v1_6.side.display(value, buffer, offset, packet, parent)

  parent:add(omi_memx_options_riskcontrol_sbe_v1_6.fields.side, range, value, display)

  return offset + length, value
end

-- Option Security Id
memx_options_riskcontrol_sbe_v1_6.option_security_id = {}

-- Size: Option Security Id
memx_options_riskcontrol_sbe_v1_6.option_security_id.size = 8

-- Display: Option Security Id
memx_options_riskcontrol_sbe_v1_6.option_security_id.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Option Security Id: No Value"
  end

  return "Option Security Id: "..value
end

-- Dissect: Option Security Id
memx_options_riskcontrol_sbe_v1_6.option_security_id.dissect = function(buffer, offset, packet, parent)
  local length = memx_options_riskcontrol_sbe_v1_6.option_security_id.size
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

  local display = memx_options_riskcontrol_sbe_v1_6.option_security_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_memx_options_riskcontrol_sbe_v1_6.fields.option_security_id, range, value, display)

  return offset + length, value
end

-- Underlier
memx_options_riskcontrol_sbe_v1_6.underlier = {}

-- Size: Underlier
memx_options_riskcontrol_sbe_v1_6.underlier.size = 6

-- Display: Underlier
memx_options_riskcontrol_sbe_v1_6.underlier.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Underlier: No Value"
  end

  return "Underlier: "..value
end

-- Dissect: Underlier
memx_options_riskcontrol_sbe_v1_6.underlier.dissect = function(buffer, offset, packet, parent)
  local length = memx_options_riskcontrol_sbe_v1_6.underlier.size
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

  local display = memx_options_riskcontrol_sbe_v1_6.underlier.display(value, buffer, offset, packet, parent)

  parent:add(omi_memx_options_riskcontrol_sbe_v1_6.fields.underlier, range, value, display)

  return offset + length, value
end

-- Efid
memx_options_riskcontrol_sbe_v1_6.efid = {}

-- Size: Efid
memx_options_riskcontrol_sbe_v1_6.efid.size = 4

-- Display: Efid
memx_options_riskcontrol_sbe_v1_6.efid.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Efid: No Value"
  end

  return "Efid: "..value
end

-- Dissect: Efid
memx_options_riskcontrol_sbe_v1_6.efid.dissect = function(buffer, offset, packet, parent)
  local length = memx_options_riskcontrol_sbe_v1_6.efid.size
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

  local display = memx_options_riskcontrol_sbe_v1_6.efid.display(value, buffer, offset, packet, parent)

  parent:add(omi_memx_options_riskcontrol_sbe_v1_6.fields.efid, range, value, display)

  return offset + length, value
end

-- Trd Match Id
memx_options_riskcontrol_sbe_v1_6.trd_match_id = {}

-- Size: Trd Match Id
memx_options_riskcontrol_sbe_v1_6.trd_match_id.size = 8

-- Display: Trd Match Id
memx_options_riskcontrol_sbe_v1_6.trd_match_id.display = function(value)
  return "Trd Match Id: "..value
end

-- Dissect: Trd Match Id
memx_options_riskcontrol_sbe_v1_6.trd_match_id.dissect = function(buffer, offset, packet, parent)
  local length = memx_options_riskcontrol_sbe_v1_6.trd_match_id.size
  local range = buffer(offset, length)
  local value = range:uint64()
  local display = memx_options_riskcontrol_sbe_v1_6.trd_match_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_memx_options_riskcontrol_sbe_v1_6.fields.trd_match_id, range, value, display)

  return offset + length, value
end

-- Order Id
memx_options_riskcontrol_sbe_v1_6.order_id = {}

-- Size: Order Id
memx_options_riskcontrol_sbe_v1_6.order_id.size = 8

-- Display: Order Id
memx_options_riskcontrol_sbe_v1_6.order_id.display = function(value)
  return "Order Id: "..value
end

-- Dissect: Order Id
memx_options_riskcontrol_sbe_v1_6.order_id.dissect = function(buffer, offset, packet, parent)
  local length = memx_options_riskcontrol_sbe_v1_6.order_id.size
  local range = buffer(offset, length)
  local value = range:uint64()
  local display = memx_options_riskcontrol_sbe_v1_6.order_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_memx_options_riskcontrol_sbe_v1_6.fields.order_id, range, value, display)

  return offset + length, value
end

-- Sending Time
memx_options_riskcontrol_sbe_v1_6.sending_time = {}

-- Size: Sending Time
memx_options_riskcontrol_sbe_v1_6.sending_time.size = 8

-- Display: Sending Time
memx_options_riskcontrol_sbe_v1_6.sending_time.display = function(value)
  return "Sending Time: "..value
end

-- Dissect: Sending Time
memx_options_riskcontrol_sbe_v1_6.sending_time.dissect = function(buffer, offset, packet, parent)
  local length = memx_options_riskcontrol_sbe_v1_6.sending_time.size
  local range = buffer(offset, length)
  local value = range:uint64()
  local display = memx_options_riskcontrol_sbe_v1_6.sending_time.display(value, buffer, offset, packet, parent)

  parent:add(omi_memx_options_riskcontrol_sbe_v1_6.fields.sending_time, range, value, display)

  return offset + length, value
end

-- Active Risk Quantity Update Notification Message
memx_options_riskcontrol_sbe_v1_6.active_risk_quantity_update_notification_message = {}

-- Size: Active Risk Quantity Update Notification Message
memx_options_riskcontrol_sbe_v1_6.active_risk_quantity_update_notification_message.size =
  memx_options_riskcontrol_sbe_v1_6.sending_time.size + 
  memx_options_riskcontrol_sbe_v1_6.transact_time.size + 
  memx_options_riskcontrol_sbe_v1_6.order_id.size + 
  memx_options_riskcontrol_sbe_v1_6.trd_match_id.size + 
  memx_options_riskcontrol_sbe_v1_6.efid.size + 
  memx_options_riskcontrol_sbe_v1_6.underlier.size + 
  memx_options_riskcontrol_sbe_v1_6.option_security_id.size + 
  memx_options_riskcontrol_sbe_v1_6.side.size + 
  memx_options_riskcontrol_sbe_v1_6.last_px.size + 
  memx_options_riskcontrol_sbe_v1_6.last_qty.size + 
  memx_options_riskcontrol_sbe_v1_6.unacked_quantity.size

-- Display: Active Risk Quantity Update Notification Message
memx_options_riskcontrol_sbe_v1_6.active_risk_quantity_update_notification_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Active Risk Quantity Update Notification Message
memx_options_riskcontrol_sbe_v1_6.active_risk_quantity_update_notification_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Sending Time: 8 Byte Unsigned Fixed Width Integer
  index, sending_time = memx_options_riskcontrol_sbe_v1_6.sending_time.dissect(buffer, index, packet, parent)

  -- Transact Time: 8 Byte Unsigned Fixed Width Integer
  index, transact_time = memx_options_riskcontrol_sbe_v1_6.transact_time.dissect(buffer, index, packet, parent)

  -- Order Id: 8 Byte Unsigned Fixed Width Integer
  index, order_id = memx_options_riskcontrol_sbe_v1_6.order_id.dissect(buffer, index, packet, parent)

  -- Trd Match Id: 8 Byte Unsigned Fixed Width Integer
  index, trd_match_id = memx_options_riskcontrol_sbe_v1_6.trd_match_id.dissect(buffer, index, packet, parent)

  -- Efid: 4 Byte Ascii String
  index, efid = memx_options_riskcontrol_sbe_v1_6.efid.dissect(buffer, index, packet, parent)

  -- Underlier: 6 Byte Ascii String
  index, underlier = memx_options_riskcontrol_sbe_v1_6.underlier.dissect(buffer, index, packet, parent)

  -- Option Security Id: 8 Byte Ascii String
  index, option_security_id = memx_options_riskcontrol_sbe_v1_6.option_security_id.dissect(buffer, index, packet, parent)

  -- Side: 1 Byte Ascii String Enum with 2 values
  index, side = memx_options_riskcontrol_sbe_v1_6.side.dissect(buffer, index, packet, parent)

  -- Last Px: 8 Byte Unsigned Fixed Width Integer
  index, last_px = memx_options_riskcontrol_sbe_v1_6.last_px.dissect(buffer, index, packet, parent)

  -- Last Qty: 4 Byte Unsigned Fixed Width Integer
  index, last_qty = memx_options_riskcontrol_sbe_v1_6.last_qty.dissect(buffer, index, packet, parent)

  -- Unacked Quantity: 4 Byte Unsigned Fixed Width Integer
  index, unacked_quantity = memx_options_riskcontrol_sbe_v1_6.unacked_quantity.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Active Risk Quantity Update Notification Message
memx_options_riskcontrol_sbe_v1_6.active_risk_quantity_update_notification_message.dissect = function(buffer, offset, packet, parent)
  if show.active_risk_quantity_update_notification_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_memx_options_riskcontrol_sbe_v1_6.fields.active_risk_quantity_update_notification_message, buffer(offset, 0))
    local index = memx_options_riskcontrol_sbe_v1_6.active_risk_quantity_update_notification_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = memx_options_riskcontrol_sbe_v1_6.active_risk_quantity_update_notification_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return memx_options_riskcontrol_sbe_v1_6.active_risk_quantity_update_notification_message.fields(buffer, offset, packet, parent)
  end
end

-- Threshold Quantity
memx_options_riskcontrol_sbe_v1_6.threshold_quantity = {}

-- Size: Threshold Quantity
memx_options_riskcontrol_sbe_v1_6.threshold_quantity.size = 4

-- Display: Threshold Quantity
memx_options_riskcontrol_sbe_v1_6.threshold_quantity.display = function(value)
  return "Threshold Quantity: "..value
end

-- Dissect: Threshold Quantity
memx_options_riskcontrol_sbe_v1_6.threshold_quantity.dissect = function(buffer, offset, packet, parent)
  local length = memx_options_riskcontrol_sbe_v1_6.threshold_quantity.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = memx_options_riskcontrol_sbe_v1_6.threshold_quantity.display(value, buffer, offset, packet, parent)

  parent:add(omi_memx_options_riskcontrol_sbe_v1_6.fields.threshold_quantity, range, value, display)

  return offset + length, value
end

-- Active Risk Acknowledge Rej Message
memx_options_riskcontrol_sbe_v1_6.active_risk_acknowledge_rej_message = {}

-- Size: Active Risk Acknowledge Rej Message
memx_options_riskcontrol_sbe_v1_6.active_risk_acknowledge_rej_message.size =
  memx_options_riskcontrol_sbe_v1_6.clordid.size + 
  memx_options_riskcontrol_sbe_v1_6.underlier.size + 
  memx_options_riskcontrol_sbe_v1_6.efid.size + 
  memx_options_riskcontrol_sbe_v1_6.threshold_quantity.size + 
  memx_options_riskcontrol_sbe_v1_6.reject_reason.size

-- Display: Active Risk Acknowledge Rej Message
memx_options_riskcontrol_sbe_v1_6.active_risk_acknowledge_rej_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Active Risk Acknowledge Rej Message
memx_options_riskcontrol_sbe_v1_6.active_risk_acknowledge_rej_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- ClOrdId: 20 Byte Ascii String
  index, clordid = memx_options_riskcontrol_sbe_v1_6.clordid.dissect(buffer, index, packet, parent)

  -- Underlier: 6 Byte Ascii String
  index, underlier = memx_options_riskcontrol_sbe_v1_6.underlier.dissect(buffer, index, packet, parent)

  -- Efid: 4 Byte Ascii String
  index, efid = memx_options_riskcontrol_sbe_v1_6.efid.dissect(buffer, index, packet, parent)

  -- Threshold Quantity: 4 Byte Unsigned Fixed Width Integer
  index, threshold_quantity = memx_options_riskcontrol_sbe_v1_6.threshold_quantity.dissect(buffer, index, packet, parent)

  -- Reject Reason: 2 Byte Unsigned Fixed Width Integer Enum with 50 values
  index, reject_reason = memx_options_riskcontrol_sbe_v1_6.reject_reason.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Active Risk Acknowledge Rej Message
memx_options_riskcontrol_sbe_v1_6.active_risk_acknowledge_rej_message.dissect = function(buffer, offset, packet, parent)
  if show.active_risk_acknowledge_rej_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_memx_options_riskcontrol_sbe_v1_6.fields.active_risk_acknowledge_rej_message, buffer(offset, 0))
    local index = memx_options_riskcontrol_sbe_v1_6.active_risk_acknowledge_rej_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = memx_options_riskcontrol_sbe_v1_6.active_risk_acknowledge_rej_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return memx_options_riskcontrol_sbe_v1_6.active_risk_acknowledge_rej_message.fields(buffer, offset, packet, parent)
  end
end

-- Quantity
memx_options_riskcontrol_sbe_v1_6.quantity = {}

-- Size: Quantity
memx_options_riskcontrol_sbe_v1_6.quantity.size = 4

-- Display: Quantity
memx_options_riskcontrol_sbe_v1_6.quantity.display = function(value)
  return "Quantity: "..value
end

-- Dissect: Quantity
memx_options_riskcontrol_sbe_v1_6.quantity.dissect = function(buffer, offset, packet, parent)
  local length = memx_options_riskcontrol_sbe_v1_6.quantity.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = memx_options_riskcontrol_sbe_v1_6.quantity.display(value, buffer, offset, packet, parent)

  parent:add(omi_memx_options_riskcontrol_sbe_v1_6.fields.quantity, range, value, display)

  return offset + length, value
end

-- Active Risk Acknowledged Message
memx_options_riskcontrol_sbe_v1_6.active_risk_acknowledged_message = {}

-- Size: Active Risk Acknowledged Message
memx_options_riskcontrol_sbe_v1_6.active_risk_acknowledged_message.size =
  memx_options_riskcontrol_sbe_v1_6.clordid.size + 
  memx_options_riskcontrol_sbe_v1_6.underlier.size + 
  memx_options_riskcontrol_sbe_v1_6.efid.size + 
  memx_options_riskcontrol_sbe_v1_6.quantity.size + 
  memx_options_riskcontrol_sbe_v1_6.unacked_quantity.size

-- Display: Active Risk Acknowledged Message
memx_options_riskcontrol_sbe_v1_6.active_risk_acknowledged_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Active Risk Acknowledged Message
memx_options_riskcontrol_sbe_v1_6.active_risk_acknowledged_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- ClOrdId: 20 Byte Ascii String
  index, clordid = memx_options_riskcontrol_sbe_v1_6.clordid.dissect(buffer, index, packet, parent)

  -- Underlier: 6 Byte Ascii String
  index, underlier = memx_options_riskcontrol_sbe_v1_6.underlier.dissect(buffer, index, packet, parent)

  -- Efid: 4 Byte Ascii String
  index, efid = memx_options_riskcontrol_sbe_v1_6.efid.dissect(buffer, index, packet, parent)

  -- Quantity: 4 Byte Unsigned Fixed Width Integer
  index, quantity = memx_options_riskcontrol_sbe_v1_6.quantity.dissect(buffer, index, packet, parent)

  -- Unacked Quantity: 4 Byte Unsigned Fixed Width Integer
  index, unacked_quantity = memx_options_riskcontrol_sbe_v1_6.unacked_quantity.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Active Risk Acknowledged Message
memx_options_riskcontrol_sbe_v1_6.active_risk_acknowledged_message.dissect = function(buffer, offset, packet, parent)
  if show.active_risk_acknowledged_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_memx_options_riskcontrol_sbe_v1_6.fields.active_risk_acknowledged_message, buffer(offset, 0))
    local index = memx_options_riskcontrol_sbe_v1_6.active_risk_acknowledged_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = memx_options_riskcontrol_sbe_v1_6.active_risk_acknowledged_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return memx_options_riskcontrol_sbe_v1_6.active_risk_acknowledged_message.fields(buffer, offset, packet, parent)
  end
end

-- Active Risk Threshold Change Rej Message
memx_options_riskcontrol_sbe_v1_6.active_risk_threshold_change_rej_message = {}

-- Size: Active Risk Threshold Change Rej Message
memx_options_riskcontrol_sbe_v1_6.active_risk_threshold_change_rej_message.size =
  memx_options_riskcontrol_sbe_v1_6.clordid.size + 
  memx_options_riskcontrol_sbe_v1_6.underlier_optional.size + 
  memx_options_riskcontrol_sbe_v1_6.efid_optional.size + 
  memx_options_riskcontrol_sbe_v1_6.threshold_quantity.size + 
  memx_options_riskcontrol_sbe_v1_6.reject_reason.size

-- Display: Active Risk Threshold Change Rej Message
memx_options_riskcontrol_sbe_v1_6.active_risk_threshold_change_rej_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Active Risk Threshold Change Rej Message
memx_options_riskcontrol_sbe_v1_6.active_risk_threshold_change_rej_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- ClOrdId: 20 Byte Ascii String
  index, clordid = memx_options_riskcontrol_sbe_v1_6.clordid.dissect(buffer, index, packet, parent)

  -- Underlier Optional: 6 Byte Ascii String Nullable
  index, underlier_optional = memx_options_riskcontrol_sbe_v1_6.underlier_optional.dissect(buffer, index, packet, parent)

  -- Efid Optional: 4 Byte Ascii String Nullable
  index, efid_optional = memx_options_riskcontrol_sbe_v1_6.efid_optional.dissect(buffer, index, packet, parent)

  -- Threshold Quantity: 4 Byte Unsigned Fixed Width Integer
  index, threshold_quantity = memx_options_riskcontrol_sbe_v1_6.threshold_quantity.dissect(buffer, index, packet, parent)

  -- Reject Reason: 2 Byte Unsigned Fixed Width Integer Enum with 50 values
  index, reject_reason = memx_options_riskcontrol_sbe_v1_6.reject_reason.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Active Risk Threshold Change Rej Message
memx_options_riskcontrol_sbe_v1_6.active_risk_threshold_change_rej_message.dissect = function(buffer, offset, packet, parent)
  if show.active_risk_threshold_change_rej_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_memx_options_riskcontrol_sbe_v1_6.fields.active_risk_threshold_change_rej_message, buffer(offset, 0))
    local index = memx_options_riskcontrol_sbe_v1_6.active_risk_threshold_change_rej_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = memx_options_riskcontrol_sbe_v1_6.active_risk_threshold_change_rej_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return memx_options_riskcontrol_sbe_v1_6.active_risk_threshold_change_rej_message.fields(buffer, offset, packet, parent)
  end
end

-- Active Risk Threshold State Message
memx_options_riskcontrol_sbe_v1_6.active_risk_threshold_state_message = {}

-- Size: Active Risk Threshold State Message
memx_options_riskcontrol_sbe_v1_6.active_risk_threshold_state_message.size =
  memx_options_riskcontrol_sbe_v1_6.clordid_optional.size + 
  memx_options_riskcontrol_sbe_v1_6.underlier.size + 
  memx_options_riskcontrol_sbe_v1_6.efid.size + 
  memx_options_riskcontrol_sbe_v1_6.threshold_quantity.size + 
  memx_options_riskcontrol_sbe_v1_6.unacked_quantity.size

-- Display: Active Risk Threshold State Message
memx_options_riskcontrol_sbe_v1_6.active_risk_threshold_state_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Active Risk Threshold State Message
memx_options_riskcontrol_sbe_v1_6.active_risk_threshold_state_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- ClOrdId Optional: 20 Byte Ascii String Nullable
  index, clordid_optional = memx_options_riskcontrol_sbe_v1_6.clordid_optional.dissect(buffer, index, packet, parent)

  -- Underlier: 6 Byte Ascii String
  index, underlier = memx_options_riskcontrol_sbe_v1_6.underlier.dissect(buffer, index, packet, parent)

  -- Efid: 4 Byte Ascii String
  index, efid = memx_options_riskcontrol_sbe_v1_6.efid.dissect(buffer, index, packet, parent)

  -- Threshold Quantity: 4 Byte Unsigned Fixed Width Integer
  index, threshold_quantity = memx_options_riskcontrol_sbe_v1_6.threshold_quantity.dissect(buffer, index, packet, parent)

  -- Unacked Quantity: 4 Byte Unsigned Fixed Width Integer
  index, unacked_quantity = memx_options_riskcontrol_sbe_v1_6.unacked_quantity.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Active Risk Threshold State Message
memx_options_riskcontrol_sbe_v1_6.active_risk_threshold_state_message.dissect = function(buffer, offset, packet, parent)
  if show.active_risk_threshold_state_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_memx_options_riskcontrol_sbe_v1_6.fields.active_risk_threshold_state_message, buffer(offset, 0))
    local index = memx_options_riskcontrol_sbe_v1_6.active_risk_threshold_state_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = memx_options_riskcontrol_sbe_v1_6.active_risk_threshold_state_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return memx_options_riskcontrol_sbe_v1_6.active_risk_threshold_state_message.fields(buffer, offset, packet, parent)
  end
end

-- Cp Order Rate Threshold Change Req Message
memx_options_riskcontrol_sbe_v1_6.cp_order_rate_threshold_change_req_message = {}

-- Size: Cp Order Rate Threshold Change Req Message
memx_options_riskcontrol_sbe_v1_6.cp_order_rate_threshold_change_req_message.size =
  memx_options_riskcontrol_sbe_v1_6.clordid.size + 
  memx_options_riskcontrol_sbe_v1_6.underlier_optional.size + 
  memx_options_riskcontrol_sbe_v1_6.efid_optional.size + 
  memx_options_riskcontrol_sbe_v1_6.risk_group_id.size + 
  memx_options_riskcontrol_sbe_v1_6.max_order_msgs.size + 
  memx_options_riskcontrol_sbe_v1_6.period_in_milli_seconds.size

-- Display: Cp Order Rate Threshold Change Req Message
memx_options_riskcontrol_sbe_v1_6.cp_order_rate_threshold_change_req_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Cp Order Rate Threshold Change Req Message
memx_options_riskcontrol_sbe_v1_6.cp_order_rate_threshold_change_req_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- ClOrdId: 20 Byte Ascii String
  index, clordid = memx_options_riskcontrol_sbe_v1_6.clordid.dissect(buffer, index, packet, parent)

  -- Underlier Optional: 6 Byte Ascii String Nullable
  index, underlier_optional = memx_options_riskcontrol_sbe_v1_6.underlier_optional.dissect(buffer, index, packet, parent)

  -- Efid Optional: 4 Byte Ascii String Nullable
  index, efid_optional = memx_options_riskcontrol_sbe_v1_6.efid_optional.dissect(buffer, index, packet, parent)

  -- Risk Group Id: 2 Byte Unsigned Fixed Width Integer Nullable
  index, risk_group_id = memx_options_riskcontrol_sbe_v1_6.risk_group_id.dissect(buffer, index, packet, parent)

  -- Max Order Msgs: 4 Byte Unsigned Fixed Width Integer
  index, max_order_msgs = memx_options_riskcontrol_sbe_v1_6.max_order_msgs.dissect(buffer, index, packet, parent)

  -- Period In Milli Seconds: 4 Byte Unsigned Fixed Width Integer
  index, period_in_milli_seconds = memx_options_riskcontrol_sbe_v1_6.period_in_milli_seconds.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Cp Order Rate Threshold Change Req Message
memx_options_riskcontrol_sbe_v1_6.cp_order_rate_threshold_change_req_message.dissect = function(buffer, offset, packet, parent)
  if show.cp_order_rate_threshold_change_req_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_memx_options_riskcontrol_sbe_v1_6.fields.cp_order_rate_threshold_change_req_message, buffer(offset, 0))
    local index = memx_options_riskcontrol_sbe_v1_6.cp_order_rate_threshold_change_req_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = memx_options_riskcontrol_sbe_v1_6.cp_order_rate_threshold_change_req_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return memx_options_riskcontrol_sbe_v1_6.cp_order_rate_threshold_change_req_message.fields(buffer, offset, packet, parent)
  end
end

-- Use Order Price In Dup Check Optional
memx_options_riskcontrol_sbe_v1_6.use_order_price_in_dup_check_optional = {}

-- Size: Use Order Price In Dup Check Optional
memx_options_riskcontrol_sbe_v1_6.use_order_price_in_dup_check_optional.size = 1

-- Display: Use Order Price In Dup Check Optional
memx_options_riskcontrol_sbe_v1_6.use_order_price_in_dup_check_optional.display = function(value)
  if value == 0 then
    return "Use Order Price In Dup Check Optional: False (0)"
  end
  if value == 1 then
    return "Use Order Price In Dup Check Optional: True (1)"
  end
  if value == 255 then
    return "Use Order Price In Dup Check Optional: No Value"
  end

  return "Use Order Price In Dup Check Optional: Unknown("..value..")"
end

-- Dissect: Use Order Price In Dup Check Optional
memx_options_riskcontrol_sbe_v1_6.use_order_price_in_dup_check_optional.dissect = function(buffer, offset, packet, parent)
  local length = memx_options_riskcontrol_sbe_v1_6.use_order_price_in_dup_check_optional.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = memx_options_riskcontrol_sbe_v1_6.use_order_price_in_dup_check_optional.display(value, buffer, offset, packet, parent)

  parent:add(omi_memx_options_riskcontrol_sbe_v1_6.fields.use_order_price_in_dup_check_optional, range, value, display)

  return offset + length, value
end

-- Cp Duplicate Order Threshold Change Req Message
memx_options_riskcontrol_sbe_v1_6.cp_duplicate_order_threshold_change_req_message = {}

-- Size: Cp Duplicate Order Threshold Change Req Message
memx_options_riskcontrol_sbe_v1_6.cp_duplicate_order_threshold_change_req_message.size =
  memx_options_riskcontrol_sbe_v1_6.clordid.size + 
  memx_options_riskcontrol_sbe_v1_6.underlier_optional.size + 
  memx_options_riskcontrol_sbe_v1_6.efid_optional.size + 
  memx_options_riskcontrol_sbe_v1_6.risk_group_id.size + 
  memx_options_riskcontrol_sbe_v1_6.max_dup_orders.size + 
  memx_options_riskcontrol_sbe_v1_6.use_order_price_in_dup_check_optional.size + 
  memx_options_riskcontrol_sbe_v1_6.period_in_milli_seconds.size

-- Display: Cp Duplicate Order Threshold Change Req Message
memx_options_riskcontrol_sbe_v1_6.cp_duplicate_order_threshold_change_req_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Cp Duplicate Order Threshold Change Req Message
memx_options_riskcontrol_sbe_v1_6.cp_duplicate_order_threshold_change_req_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- ClOrdId: 20 Byte Ascii String
  index, clordid = memx_options_riskcontrol_sbe_v1_6.clordid.dissect(buffer, index, packet, parent)

  -- Underlier Optional: 6 Byte Ascii String Nullable
  index, underlier_optional = memx_options_riskcontrol_sbe_v1_6.underlier_optional.dissect(buffer, index, packet, parent)

  -- Efid Optional: 4 Byte Ascii String Nullable
  index, efid_optional = memx_options_riskcontrol_sbe_v1_6.efid_optional.dissect(buffer, index, packet, parent)

  -- Risk Group Id: 2 Byte Unsigned Fixed Width Integer Nullable
  index, risk_group_id = memx_options_riskcontrol_sbe_v1_6.risk_group_id.dissect(buffer, index, packet, parent)

  -- Max Dup Orders: 4 Byte Unsigned Fixed Width Integer
  index, max_dup_orders = memx_options_riskcontrol_sbe_v1_6.max_dup_orders.dissect(buffer, index, packet, parent)

  -- Use Order Price In Dup Check Optional: 1 Byte Unsigned Fixed Width Integer Enum with 3 values
  index, use_order_price_in_dup_check_optional = memx_options_riskcontrol_sbe_v1_6.use_order_price_in_dup_check_optional.dissect(buffer, index, packet, parent)

  -- Period In Milli Seconds: 4 Byte Unsigned Fixed Width Integer
  index, period_in_milli_seconds = memx_options_riskcontrol_sbe_v1_6.period_in_milli_seconds.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Cp Duplicate Order Threshold Change Req Message
memx_options_riskcontrol_sbe_v1_6.cp_duplicate_order_threshold_change_req_message.dissect = function(buffer, offset, packet, parent)
  if show.cp_duplicate_order_threshold_change_req_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_memx_options_riskcontrol_sbe_v1_6.fields.cp_duplicate_order_threshold_change_req_message, buffer(offset, 0))
    local index = memx_options_riskcontrol_sbe_v1_6.cp_duplicate_order_threshold_change_req_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = memx_options_riskcontrol_sbe_v1_6.cp_duplicate_order_threshold_change_req_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return memx_options_riskcontrol_sbe_v1_6.cp_duplicate_order_threshold_change_req_message.fields(buffer, offset, packet, parent)
  end
end

-- Cp Market Order Net Notional Threshold Change Req Message
memx_options_riskcontrol_sbe_v1_6.cp_market_order_net_notional_threshold_change_req_message = {}

-- Size: Cp Market Order Net Notional Threshold Change Req Message
memx_options_riskcontrol_sbe_v1_6.cp_market_order_net_notional_threshold_change_req_message.size =
  memx_options_riskcontrol_sbe_v1_6.clordid.size + 
  memx_options_riskcontrol_sbe_v1_6.underlier_optional.size + 
  memx_options_riskcontrol_sbe_v1_6.efid_optional.size + 
  memx_options_riskcontrol_sbe_v1_6.risk_group_id.size + 
  memx_options_riskcontrol_sbe_v1_6.price_in_dollars.size

-- Display: Cp Market Order Net Notional Threshold Change Req Message
memx_options_riskcontrol_sbe_v1_6.cp_market_order_net_notional_threshold_change_req_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Cp Market Order Net Notional Threshold Change Req Message
memx_options_riskcontrol_sbe_v1_6.cp_market_order_net_notional_threshold_change_req_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- ClOrdId: 20 Byte Ascii String
  index, clordid = memx_options_riskcontrol_sbe_v1_6.clordid.dissect(buffer, index, packet, parent)

  -- Underlier Optional: 6 Byte Ascii String Nullable
  index, underlier_optional = memx_options_riskcontrol_sbe_v1_6.underlier_optional.dissect(buffer, index, packet, parent)

  -- Efid Optional: 4 Byte Ascii String Nullable
  index, efid_optional = memx_options_riskcontrol_sbe_v1_6.efid_optional.dissect(buffer, index, packet, parent)

  -- Risk Group Id: 2 Byte Unsigned Fixed Width Integer Nullable
  index, risk_group_id = memx_options_riskcontrol_sbe_v1_6.risk_group_id.dissect(buffer, index, packet, parent)

  -- Price In Dollars: 8 Byte Unsigned Fixed Width Integer
  index, price_in_dollars = memx_options_riskcontrol_sbe_v1_6.price_in_dollars.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Cp Market Order Net Notional Threshold Change Req Message
memx_options_riskcontrol_sbe_v1_6.cp_market_order_net_notional_threshold_change_req_message.dissect = function(buffer, offset, packet, parent)
  if show.cp_market_order_net_notional_threshold_change_req_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_memx_options_riskcontrol_sbe_v1_6.fields.cp_market_order_net_notional_threshold_change_req_message, buffer(offset, 0))
    local index = memx_options_riskcontrol_sbe_v1_6.cp_market_order_net_notional_threshold_change_req_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = memx_options_riskcontrol_sbe_v1_6.cp_market_order_net_notional_threshold_change_req_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return memx_options_riskcontrol_sbe_v1_6.cp_market_order_net_notional_threshold_change_req_message.fields(buffer, offset, packet, parent)
  end
end

-- Cp Net Notional Threshold Change Req Message
memx_options_riskcontrol_sbe_v1_6.cp_net_notional_threshold_change_req_message = {}

-- Size: Cp Net Notional Threshold Change Req Message
memx_options_riskcontrol_sbe_v1_6.cp_net_notional_threshold_change_req_message.size =
  memx_options_riskcontrol_sbe_v1_6.clordid.size + 
  memx_options_riskcontrol_sbe_v1_6.underlier_optional.size + 
  memx_options_riskcontrol_sbe_v1_6.efid_optional.size + 
  memx_options_riskcontrol_sbe_v1_6.risk_group_id.size + 
  memx_options_riskcontrol_sbe_v1_6.price_in_dollars.size

-- Display: Cp Net Notional Threshold Change Req Message
memx_options_riskcontrol_sbe_v1_6.cp_net_notional_threshold_change_req_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Cp Net Notional Threshold Change Req Message
memx_options_riskcontrol_sbe_v1_6.cp_net_notional_threshold_change_req_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- ClOrdId: 20 Byte Ascii String
  index, clordid = memx_options_riskcontrol_sbe_v1_6.clordid.dissect(buffer, index, packet, parent)

  -- Underlier Optional: 6 Byte Ascii String Nullable
  index, underlier_optional = memx_options_riskcontrol_sbe_v1_6.underlier_optional.dissect(buffer, index, packet, parent)

  -- Efid Optional: 4 Byte Ascii String Nullable
  index, efid_optional = memx_options_riskcontrol_sbe_v1_6.efid_optional.dissect(buffer, index, packet, parent)

  -- Risk Group Id: 2 Byte Unsigned Fixed Width Integer Nullable
  index, risk_group_id = memx_options_riskcontrol_sbe_v1_6.risk_group_id.dissect(buffer, index, packet, parent)

  -- Price In Dollars: 8 Byte Unsigned Fixed Width Integer
  index, price_in_dollars = memx_options_riskcontrol_sbe_v1_6.price_in_dollars.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Cp Net Notional Threshold Change Req Message
memx_options_riskcontrol_sbe_v1_6.cp_net_notional_threshold_change_req_message.dissect = function(buffer, offset, packet, parent)
  if show.cp_net_notional_threshold_change_req_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_memx_options_riskcontrol_sbe_v1_6.fields.cp_net_notional_threshold_change_req_message, buffer(offset, 0))
    local index = memx_options_riskcontrol_sbe_v1_6.cp_net_notional_threshold_change_req_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = memx_options_riskcontrol_sbe_v1_6.cp_net_notional_threshold_change_req_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return memx_options_riskcontrol_sbe_v1_6.cp_net_notional_threshold_change_req_message.fields(buffer, offset, packet, parent)
  end
end

-- Cp Market Order Gross Notional Threshold Change Req Message
memx_options_riskcontrol_sbe_v1_6.cp_market_order_gross_notional_threshold_change_req_message = {}

-- Size: Cp Market Order Gross Notional Threshold Change Req Message
memx_options_riskcontrol_sbe_v1_6.cp_market_order_gross_notional_threshold_change_req_message.size =
  memx_options_riskcontrol_sbe_v1_6.clordid.size + 
  memx_options_riskcontrol_sbe_v1_6.underlier_optional.size + 
  memx_options_riskcontrol_sbe_v1_6.efid_optional.size + 
  memx_options_riskcontrol_sbe_v1_6.risk_group_id.size + 
  memx_options_riskcontrol_sbe_v1_6.price_in_dollars.size

-- Display: Cp Market Order Gross Notional Threshold Change Req Message
memx_options_riskcontrol_sbe_v1_6.cp_market_order_gross_notional_threshold_change_req_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Cp Market Order Gross Notional Threshold Change Req Message
memx_options_riskcontrol_sbe_v1_6.cp_market_order_gross_notional_threshold_change_req_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- ClOrdId: 20 Byte Ascii String
  index, clordid = memx_options_riskcontrol_sbe_v1_6.clordid.dissect(buffer, index, packet, parent)

  -- Underlier Optional: 6 Byte Ascii String Nullable
  index, underlier_optional = memx_options_riskcontrol_sbe_v1_6.underlier_optional.dissect(buffer, index, packet, parent)

  -- Efid Optional: 4 Byte Ascii String Nullable
  index, efid_optional = memx_options_riskcontrol_sbe_v1_6.efid_optional.dissect(buffer, index, packet, parent)

  -- Risk Group Id: 2 Byte Unsigned Fixed Width Integer Nullable
  index, risk_group_id = memx_options_riskcontrol_sbe_v1_6.risk_group_id.dissect(buffer, index, packet, parent)

  -- Price In Dollars: 8 Byte Unsigned Fixed Width Integer
  index, price_in_dollars = memx_options_riskcontrol_sbe_v1_6.price_in_dollars.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Cp Market Order Gross Notional Threshold Change Req Message
memx_options_riskcontrol_sbe_v1_6.cp_market_order_gross_notional_threshold_change_req_message.dissect = function(buffer, offset, packet, parent)
  if show.cp_market_order_gross_notional_threshold_change_req_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_memx_options_riskcontrol_sbe_v1_6.fields.cp_market_order_gross_notional_threshold_change_req_message, buffer(offset, 0))
    local index = memx_options_riskcontrol_sbe_v1_6.cp_market_order_gross_notional_threshold_change_req_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = memx_options_riskcontrol_sbe_v1_6.cp_market_order_gross_notional_threshold_change_req_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return memx_options_riskcontrol_sbe_v1_6.cp_market_order_gross_notional_threshold_change_req_message.fields(buffer, offset, packet, parent)
  end
end

-- Cp Gross Notional Threshold Change Req Message
memx_options_riskcontrol_sbe_v1_6.cp_gross_notional_threshold_change_req_message = {}

-- Size: Cp Gross Notional Threshold Change Req Message
memx_options_riskcontrol_sbe_v1_6.cp_gross_notional_threshold_change_req_message.size =
  memx_options_riskcontrol_sbe_v1_6.clordid.size + 
  memx_options_riskcontrol_sbe_v1_6.underlier_optional.size + 
  memx_options_riskcontrol_sbe_v1_6.efid_optional.size + 
  memx_options_riskcontrol_sbe_v1_6.risk_group_id.size + 
  memx_options_riskcontrol_sbe_v1_6.price_in_dollars.size

-- Display: Cp Gross Notional Threshold Change Req Message
memx_options_riskcontrol_sbe_v1_6.cp_gross_notional_threshold_change_req_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Cp Gross Notional Threshold Change Req Message
memx_options_riskcontrol_sbe_v1_6.cp_gross_notional_threshold_change_req_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- ClOrdId: 20 Byte Ascii String
  index, clordid = memx_options_riskcontrol_sbe_v1_6.clordid.dissect(buffer, index, packet, parent)

  -- Underlier Optional: 6 Byte Ascii String Nullable
  index, underlier_optional = memx_options_riskcontrol_sbe_v1_6.underlier_optional.dissect(buffer, index, packet, parent)

  -- Efid Optional: 4 Byte Ascii String Nullable
  index, efid_optional = memx_options_riskcontrol_sbe_v1_6.efid_optional.dissect(buffer, index, packet, parent)

  -- Risk Group Id: 2 Byte Unsigned Fixed Width Integer Nullable
  index, risk_group_id = memx_options_riskcontrol_sbe_v1_6.risk_group_id.dissect(buffer, index, packet, parent)

  -- Price In Dollars: 8 Byte Unsigned Fixed Width Integer
  index, price_in_dollars = memx_options_riskcontrol_sbe_v1_6.price_in_dollars.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Cp Gross Notional Threshold Change Req Message
memx_options_riskcontrol_sbe_v1_6.cp_gross_notional_threshold_change_req_message.dissect = function(buffer, offset, packet, parent)
  if show.cp_gross_notional_threshold_change_req_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_memx_options_riskcontrol_sbe_v1_6.fields.cp_gross_notional_threshold_change_req_message, buffer(offset, 0))
    local index = memx_options_riskcontrol_sbe_v1_6.cp_gross_notional_threshold_change_req_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = memx_options_riskcontrol_sbe_v1_6.cp_gross_notional_threshold_change_req_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return memx_options_riskcontrol_sbe_v1_6.cp_gross_notional_threshold_change_req_message.fields(buffer, offset, packet, parent)
  end
end

-- Single Order Max Contracts Change Req Message
memx_options_riskcontrol_sbe_v1_6.single_order_max_contracts_change_req_message = {}

-- Size: Single Order Max Contracts Change Req Message
memx_options_riskcontrol_sbe_v1_6.single_order_max_contracts_change_req_message.size =
  memx_options_riskcontrol_sbe_v1_6.clordid.size + 
  memx_options_riskcontrol_sbe_v1_6.underlier_optional.size + 
  memx_options_riskcontrol_sbe_v1_6.efid_optional.size + 
  memx_options_riskcontrol_sbe_v1_6.risk_group_id.size + 
  memx_options_riskcontrol_sbe_v1_6.max_contracts.size

-- Display: Single Order Max Contracts Change Req Message
memx_options_riskcontrol_sbe_v1_6.single_order_max_contracts_change_req_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Single Order Max Contracts Change Req Message
memx_options_riskcontrol_sbe_v1_6.single_order_max_contracts_change_req_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- ClOrdId: 20 Byte Ascii String
  index, clordid = memx_options_riskcontrol_sbe_v1_6.clordid.dissect(buffer, index, packet, parent)

  -- Underlier Optional: 6 Byte Ascii String Nullable
  index, underlier_optional = memx_options_riskcontrol_sbe_v1_6.underlier_optional.dissect(buffer, index, packet, parent)

  -- Efid Optional: 4 Byte Ascii String Nullable
  index, efid_optional = memx_options_riskcontrol_sbe_v1_6.efid_optional.dissect(buffer, index, packet, parent)

  -- Risk Group Id: 2 Byte Unsigned Fixed Width Integer Nullable
  index, risk_group_id = memx_options_riskcontrol_sbe_v1_6.risk_group_id.dissect(buffer, index, packet, parent)

  -- Max Contracts: 4 Byte Unsigned Fixed Width Integer
  index, max_contracts = memx_options_riskcontrol_sbe_v1_6.max_contracts.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Single Order Max Contracts Change Req Message
memx_options_riskcontrol_sbe_v1_6.single_order_max_contracts_change_req_message.dissect = function(buffer, offset, packet, parent)
  if show.single_order_max_contracts_change_req_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_memx_options_riskcontrol_sbe_v1_6.fields.single_order_max_contracts_change_req_message, buffer(offset, 0))
    local index = memx_options_riskcontrol_sbe_v1_6.single_order_max_contracts_change_req_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = memx_options_riskcontrol_sbe_v1_6.single_order_max_contracts_change_req_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return memx_options_riskcontrol_sbe_v1_6.single_order_max_contracts_change_req_message.fields(buffer, offset, packet, parent)
  end
end

-- Single Order Max Notional Change Req Message
memx_options_riskcontrol_sbe_v1_6.single_order_max_notional_change_req_message = {}

-- Size: Single Order Max Notional Change Req Message
memx_options_riskcontrol_sbe_v1_6.single_order_max_notional_change_req_message.size =
  memx_options_riskcontrol_sbe_v1_6.clordid.size + 
  memx_options_riskcontrol_sbe_v1_6.underlier_optional.size + 
  memx_options_riskcontrol_sbe_v1_6.efid_optional.size + 
  memx_options_riskcontrol_sbe_v1_6.risk_group_id.size + 
  memx_options_riskcontrol_sbe_v1_6.max_notional_in_dollars.size

-- Display: Single Order Max Notional Change Req Message
memx_options_riskcontrol_sbe_v1_6.single_order_max_notional_change_req_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Single Order Max Notional Change Req Message
memx_options_riskcontrol_sbe_v1_6.single_order_max_notional_change_req_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- ClOrdId: 20 Byte Ascii String
  index, clordid = memx_options_riskcontrol_sbe_v1_6.clordid.dissect(buffer, index, packet, parent)

  -- Underlier Optional: 6 Byte Ascii String Nullable
  index, underlier_optional = memx_options_riskcontrol_sbe_v1_6.underlier_optional.dissect(buffer, index, packet, parent)

  -- Efid Optional: 4 Byte Ascii String Nullable
  index, efid_optional = memx_options_riskcontrol_sbe_v1_6.efid_optional.dissect(buffer, index, packet, parent)

  -- Risk Group Id: 2 Byte Unsigned Fixed Width Integer Nullable
  index, risk_group_id = memx_options_riskcontrol_sbe_v1_6.risk_group_id.dissect(buffer, index, packet, parent)

  -- Max Notional In Dollars: 8 Byte Unsigned Fixed Width Integer
  index, max_notional_in_dollars = memx_options_riskcontrol_sbe_v1_6.max_notional_in_dollars.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Single Order Max Notional Change Req Message
memx_options_riskcontrol_sbe_v1_6.single_order_max_notional_change_req_message.dissect = function(buffer, offset, packet, parent)
  if show.single_order_max_notional_change_req_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_memx_options_riskcontrol_sbe_v1_6.fields.single_order_max_notional_change_req_message, buffer(offset, 0))
    local index = memx_options_riskcontrol_sbe_v1_6.single_order_max_notional_change_req_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = memx_options_riskcontrol_sbe_v1_6.single_order_max_notional_change_req_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return memx_options_riskcontrol_sbe_v1_6.single_order_max_notional_change_req_message.fields(buffer, offset, packet, parent)
  end
end

-- Single Order Allow Orders In Crossed Market Change Req Message
memx_options_riskcontrol_sbe_v1_6.single_order_allow_orders_in_crossed_market_change_req_message = {}

-- Size: Single Order Allow Orders In Crossed Market Change Req Message
memx_options_riskcontrol_sbe_v1_6.single_order_allow_orders_in_crossed_market_change_req_message.size =
  memx_options_riskcontrol_sbe_v1_6.clordid.size + 
  memx_options_riskcontrol_sbe_v1_6.underlier_optional.size + 
  memx_options_riskcontrol_sbe_v1_6.efid_optional.size + 
  memx_options_riskcontrol_sbe_v1_6.risk_group_id.size + 
  memx_options_riskcontrol_sbe_v1_6.allow_orders.size

-- Display: Single Order Allow Orders In Crossed Market Change Req Message
memx_options_riskcontrol_sbe_v1_6.single_order_allow_orders_in_crossed_market_change_req_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Single Order Allow Orders In Crossed Market Change Req Message
memx_options_riskcontrol_sbe_v1_6.single_order_allow_orders_in_crossed_market_change_req_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- ClOrdId: 20 Byte Ascii String
  index, clordid = memx_options_riskcontrol_sbe_v1_6.clordid.dissect(buffer, index, packet, parent)

  -- Underlier Optional: 6 Byte Ascii String Nullable
  index, underlier_optional = memx_options_riskcontrol_sbe_v1_6.underlier_optional.dissect(buffer, index, packet, parent)

  -- Efid Optional: 4 Byte Ascii String Nullable
  index, efid_optional = memx_options_riskcontrol_sbe_v1_6.efid_optional.dissect(buffer, index, packet, parent)

  -- Risk Group Id: 2 Byte Unsigned Fixed Width Integer Nullable
  index, risk_group_id = memx_options_riskcontrol_sbe_v1_6.risk_group_id.dissect(buffer, index, packet, parent)

  -- Allow Orders: 1 Byte Unsigned Fixed Width Integer Enum with 2 values
  index, allow_orders = memx_options_riskcontrol_sbe_v1_6.allow_orders.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Single Order Allow Orders In Crossed Market Change Req Message
memx_options_riskcontrol_sbe_v1_6.single_order_allow_orders_in_crossed_market_change_req_message.dissect = function(buffer, offset, packet, parent)
  if show.single_order_allow_orders_in_crossed_market_change_req_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_memx_options_riskcontrol_sbe_v1_6.fields.single_order_allow_orders_in_crossed_market_change_req_message, buffer(offset, 0))
    local index = memx_options_riskcontrol_sbe_v1_6.single_order_allow_orders_in_crossed_market_change_req_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = memx_options_riskcontrol_sbe_v1_6.single_order_allow_orders_in_crossed_market_change_req_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return memx_options_riskcontrol_sbe_v1_6.single_order_allow_orders_in_crossed_market_change_req_message.fields(buffer, offset, packet, parent)
  end
end

-- Single Order Allow Iso Orders Change Req Message
memx_options_riskcontrol_sbe_v1_6.single_order_allow_iso_orders_change_req_message = {}

-- Size: Single Order Allow Iso Orders Change Req Message
memx_options_riskcontrol_sbe_v1_6.single_order_allow_iso_orders_change_req_message.size =
  memx_options_riskcontrol_sbe_v1_6.clordid.size + 
  memx_options_riskcontrol_sbe_v1_6.underlier_optional.size + 
  memx_options_riskcontrol_sbe_v1_6.efid_optional.size + 
  memx_options_riskcontrol_sbe_v1_6.risk_group_id.size + 
  memx_options_riskcontrol_sbe_v1_6.allow_iso_orders.size

-- Display: Single Order Allow Iso Orders Change Req Message
memx_options_riskcontrol_sbe_v1_6.single_order_allow_iso_orders_change_req_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Single Order Allow Iso Orders Change Req Message
memx_options_riskcontrol_sbe_v1_6.single_order_allow_iso_orders_change_req_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- ClOrdId: 20 Byte Ascii String
  index, clordid = memx_options_riskcontrol_sbe_v1_6.clordid.dissect(buffer, index, packet, parent)

  -- Underlier Optional: 6 Byte Ascii String Nullable
  index, underlier_optional = memx_options_riskcontrol_sbe_v1_6.underlier_optional.dissect(buffer, index, packet, parent)

  -- Efid Optional: 4 Byte Ascii String Nullable
  index, efid_optional = memx_options_riskcontrol_sbe_v1_6.efid_optional.dissect(buffer, index, packet, parent)

  -- Risk Group Id: 2 Byte Unsigned Fixed Width Integer Nullable
  index, risk_group_id = memx_options_riskcontrol_sbe_v1_6.risk_group_id.dissect(buffer, index, packet, parent)

  -- Allow Iso Orders: 1 Byte Unsigned Fixed Width Integer Enum with 2 values
  index, allow_iso_orders = memx_options_riskcontrol_sbe_v1_6.allow_iso_orders.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Single Order Allow Iso Orders Change Req Message
memx_options_riskcontrol_sbe_v1_6.single_order_allow_iso_orders_change_req_message.dissect = function(buffer, offset, packet, parent)
  if show.single_order_allow_iso_orders_change_req_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_memx_options_riskcontrol_sbe_v1_6.fields.single_order_allow_iso_orders_change_req_message, buffer(offset, 0))
    local index = memx_options_riskcontrol_sbe_v1_6.single_order_allow_iso_orders_change_req_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = memx_options_riskcontrol_sbe_v1_6.single_order_allow_iso_orders_change_req_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return memx_options_riskcontrol_sbe_v1_6.single_order_allow_iso_orders_change_req_message.fields(buffer, offset, packet, parent)
  end
end

-- Cp Clear Breach Req Message
memx_options_riskcontrol_sbe_v1_6.cp_clear_breach_req_message = {}

-- Size: Cp Clear Breach Req Message
memx_options_riskcontrol_sbe_v1_6.cp_clear_breach_req_message.size =
  memx_options_riskcontrol_sbe_v1_6.clordid.size + 
  memx_options_riskcontrol_sbe_v1_6.breach_id_optional.size

-- Display: Cp Clear Breach Req Message
memx_options_riskcontrol_sbe_v1_6.cp_clear_breach_req_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Cp Clear Breach Req Message
memx_options_riskcontrol_sbe_v1_6.cp_clear_breach_req_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- ClOrdId: 20 Byte Ascii String
  index, clordid = memx_options_riskcontrol_sbe_v1_6.clordid.dissect(buffer, index, packet, parent)

  -- Breach Id Optional: 8 Byte Unsigned Fixed Width Integer Nullable
  index, breach_id_optional = memx_options_riskcontrol_sbe_v1_6.breach_id_optional.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Cp Clear Breach Req Message
memx_options_riskcontrol_sbe_v1_6.cp_clear_breach_req_message.dissect = function(buffer, offset, packet, parent)
  if show.cp_clear_breach_req_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_memx_options_riskcontrol_sbe_v1_6.fields.cp_clear_breach_req_message, buffer(offset, 0))
    local index = memx_options_riskcontrol_sbe_v1_6.cp_clear_breach_req_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = memx_options_riskcontrol_sbe_v1_6.cp_clear_breach_req_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return memx_options_riskcontrol_sbe_v1_6.cp_clear_breach_req_message.fields(buffer, offset, packet, parent)
  end
end

-- Send Cancels
memx_options_riskcontrol_sbe_v1_6.send_cancels = {}

-- Size: Send Cancels
memx_options_riskcontrol_sbe_v1_6.send_cancels.size = 1

-- Display: Send Cancels
memx_options_riskcontrol_sbe_v1_6.send_cancels.display = function(value)
  if value == 0 then
    return "Send Cancels: False (0)"
  end
  if value == 1 then
    return "Send Cancels: True (1)"
  end
  if value == 255 then
    return "Send Cancels: No Value"
  end

  return "Send Cancels: Unknown("..value..")"
end

-- Dissect: Send Cancels
memx_options_riskcontrol_sbe_v1_6.send_cancels.dissect = function(buffer, offset, packet, parent)
  local length = memx_options_riskcontrol_sbe_v1_6.send_cancels.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = memx_options_riskcontrol_sbe_v1_6.send_cancels.display(value, buffer, offset, packet, parent)

  parent:add(omi_memx_options_riskcontrol_sbe_v1_6.fields.send_cancels, range, value, display)

  return offset + length, value
end

-- Manual Cp Breach Trigger Req Message
memx_options_riskcontrol_sbe_v1_6.manual_cp_breach_trigger_req_message = {}

-- Size: Manual Cp Breach Trigger Req Message
memx_options_riskcontrol_sbe_v1_6.manual_cp_breach_trigger_req_message.size =
  memx_options_riskcontrol_sbe_v1_6.clordid.size + 
  memx_options_riskcontrol_sbe_v1_6.underlier_optional.size + 
  memx_options_riskcontrol_sbe_v1_6.efid_optional.size + 
  memx_options_riskcontrol_sbe_v1_6.risk_group_id.size + 
  memx_options_riskcontrol_sbe_v1_6.send_cancels.size

-- Display: Manual Cp Breach Trigger Req Message
memx_options_riskcontrol_sbe_v1_6.manual_cp_breach_trigger_req_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Manual Cp Breach Trigger Req Message
memx_options_riskcontrol_sbe_v1_6.manual_cp_breach_trigger_req_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- ClOrdId: 20 Byte Ascii String
  index, clordid = memx_options_riskcontrol_sbe_v1_6.clordid.dissect(buffer, index, packet, parent)

  -- Underlier Optional: 6 Byte Ascii String Nullable
  index, underlier_optional = memx_options_riskcontrol_sbe_v1_6.underlier_optional.dissect(buffer, index, packet, parent)

  -- Efid Optional: 4 Byte Ascii String Nullable
  index, efid_optional = memx_options_riskcontrol_sbe_v1_6.efid_optional.dissect(buffer, index, packet, parent)

  -- Risk Group Id: 2 Byte Unsigned Fixed Width Integer Nullable
  index, risk_group_id = memx_options_riskcontrol_sbe_v1_6.risk_group_id.dissect(buffer, index, packet, parent)

  -- Send Cancels: 1 Byte Unsigned Fixed Width Integer Enum with 3 values
  index, send_cancels = memx_options_riskcontrol_sbe_v1_6.send_cancels.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Manual Cp Breach Trigger Req Message
memx_options_riskcontrol_sbe_v1_6.manual_cp_breach_trigger_req_message.dissect = function(buffer, offset, packet, parent)
  if show.manual_cp_breach_trigger_req_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_memx_options_riskcontrol_sbe_v1_6.fields.manual_cp_breach_trigger_req_message, buffer(offset, 0))
    local index = memx_options_riskcontrol_sbe_v1_6.manual_cp_breach_trigger_req_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = memx_options_riskcontrol_sbe_v1_6.manual_cp_breach_trigger_req_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return memx_options_riskcontrol_sbe_v1_6.manual_cp_breach_trigger_req_message.fields(buffer, offset, packet, parent)
  end
end

-- Cp Breach Count Threshold Change Req Message
memx_options_riskcontrol_sbe_v1_6.cp_breach_count_threshold_change_req_message = {}

-- Size: Cp Breach Count Threshold Change Req Message
memx_options_riskcontrol_sbe_v1_6.cp_breach_count_threshold_change_req_message.size =
  memx_options_riskcontrol_sbe_v1_6.clordid.size + 
  memx_options_riskcontrol_sbe_v1_6.underlier_optional.size + 
  memx_options_riskcontrol_sbe_v1_6.efid_optional.size + 
  memx_options_riskcontrol_sbe_v1_6.risk_group_id.size + 
  memx_options_riskcontrol_sbe_v1_6.count.size + 
  memx_options_riskcontrol_sbe_v1_6.period_in_milli_seconds.size

-- Display: Cp Breach Count Threshold Change Req Message
memx_options_riskcontrol_sbe_v1_6.cp_breach_count_threshold_change_req_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Cp Breach Count Threshold Change Req Message
memx_options_riskcontrol_sbe_v1_6.cp_breach_count_threshold_change_req_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- ClOrdId: 20 Byte Ascii String
  index, clordid = memx_options_riskcontrol_sbe_v1_6.clordid.dissect(buffer, index, packet, parent)

  -- Underlier Optional: 6 Byte Ascii String Nullable
  index, underlier_optional = memx_options_riskcontrol_sbe_v1_6.underlier_optional.dissect(buffer, index, packet, parent)

  -- Efid Optional: 4 Byte Ascii String Nullable
  index, efid_optional = memx_options_riskcontrol_sbe_v1_6.efid_optional.dissect(buffer, index, packet, parent)

  -- Risk Group Id: 2 Byte Unsigned Fixed Width Integer Nullable
  index, risk_group_id = memx_options_riskcontrol_sbe_v1_6.risk_group_id.dissect(buffer, index, packet, parent)

  -- Count: 4 Byte Unsigned Fixed Width Integer
  index, count = memx_options_riskcontrol_sbe_v1_6.count.dissect(buffer, index, packet, parent)

  -- Period In Milli Seconds: 4 Byte Unsigned Fixed Width Integer
  index, period_in_milli_seconds = memx_options_riskcontrol_sbe_v1_6.period_in_milli_seconds.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Cp Breach Count Threshold Change Req Message
memx_options_riskcontrol_sbe_v1_6.cp_breach_count_threshold_change_req_message.dissect = function(buffer, offset, packet, parent)
  if show.cp_breach_count_threshold_change_req_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_memx_options_riskcontrol_sbe_v1_6.fields.cp_breach_count_threshold_change_req_message, buffer(offset, 0))
    local index = memx_options_riskcontrol_sbe_v1_6.cp_breach_count_threshold_change_req_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = memx_options_riskcontrol_sbe_v1_6.cp_breach_count_threshold_change_req_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return memx_options_riskcontrol_sbe_v1_6.cp_breach_count_threshold_change_req_message.fields(buffer, offset, packet, parent)
  end
end

-- Cp Percent Outstanding Contracts Threshold Change Req Message
memx_options_riskcontrol_sbe_v1_6.cp_percent_outstanding_contracts_threshold_change_req_message = {}

-- Size: Cp Percent Outstanding Contracts Threshold Change Req Message
memx_options_riskcontrol_sbe_v1_6.cp_percent_outstanding_contracts_threshold_change_req_message.size =
  memx_options_riskcontrol_sbe_v1_6.clordid.size + 
  memx_options_riskcontrol_sbe_v1_6.underlier_optional.size + 
  memx_options_riskcontrol_sbe_v1_6.efid_optional.size + 
  memx_options_riskcontrol_sbe_v1_6.percent.size + 
  memx_options_riskcontrol_sbe_v1_6.period_in_milli_seconds.size

-- Display: Cp Percent Outstanding Contracts Threshold Change Req Message
memx_options_riskcontrol_sbe_v1_6.cp_percent_outstanding_contracts_threshold_change_req_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Cp Percent Outstanding Contracts Threshold Change Req Message
memx_options_riskcontrol_sbe_v1_6.cp_percent_outstanding_contracts_threshold_change_req_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- ClOrdId: 20 Byte Ascii String
  index, clordid = memx_options_riskcontrol_sbe_v1_6.clordid.dissect(buffer, index, packet, parent)

  -- Underlier Optional: 6 Byte Ascii String Nullable
  index, underlier_optional = memx_options_riskcontrol_sbe_v1_6.underlier_optional.dissect(buffer, index, packet, parent)

  -- Efid Optional: 4 Byte Ascii String Nullable
  index, efid_optional = memx_options_riskcontrol_sbe_v1_6.efid_optional.dissect(buffer, index, packet, parent)

  -- Percent: 4 Byte Signed Fixed Width Integer
  index, percent = memx_options_riskcontrol_sbe_v1_6.percent.dissect(buffer, index, packet, parent)

  -- Period In Milli Seconds: 4 Byte Unsigned Fixed Width Integer
  index, period_in_milli_seconds = memx_options_riskcontrol_sbe_v1_6.period_in_milli_seconds.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Cp Percent Outstanding Contracts Threshold Change Req Message
memx_options_riskcontrol_sbe_v1_6.cp_percent_outstanding_contracts_threshold_change_req_message.dissect = function(buffer, offset, packet, parent)
  if show.cp_percent_outstanding_contracts_threshold_change_req_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_memx_options_riskcontrol_sbe_v1_6.fields.cp_percent_outstanding_contracts_threshold_change_req_message, buffer(offset, 0))
    local index = memx_options_riskcontrol_sbe_v1_6.cp_percent_outstanding_contracts_threshold_change_req_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = memx_options_riskcontrol_sbe_v1_6.cp_percent_outstanding_contracts_threshold_change_req_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return memx_options_riskcontrol_sbe_v1_6.cp_percent_outstanding_contracts_threshold_change_req_message.fields(buffer, offset, packet, parent)
  end
end

-- Cp Total Executions Threshold Change Req Message
memx_options_riskcontrol_sbe_v1_6.cp_total_executions_threshold_change_req_message = {}

-- Size: Cp Total Executions Threshold Change Req Message
memx_options_riskcontrol_sbe_v1_6.cp_total_executions_threshold_change_req_message.size =
  memx_options_riskcontrol_sbe_v1_6.clordid.size + 
  memx_options_riskcontrol_sbe_v1_6.underlier_optional.size + 
  memx_options_riskcontrol_sbe_v1_6.efid_optional.size + 
  memx_options_riskcontrol_sbe_v1_6.risk_group_id.size + 
  memx_options_riskcontrol_sbe_v1_6.total_executions.size + 
  memx_options_riskcontrol_sbe_v1_6.period_in_milli_seconds.size

-- Display: Cp Total Executions Threshold Change Req Message
memx_options_riskcontrol_sbe_v1_6.cp_total_executions_threshold_change_req_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Cp Total Executions Threshold Change Req Message
memx_options_riskcontrol_sbe_v1_6.cp_total_executions_threshold_change_req_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- ClOrdId: 20 Byte Ascii String
  index, clordid = memx_options_riskcontrol_sbe_v1_6.clordid.dissect(buffer, index, packet, parent)

  -- Underlier Optional: 6 Byte Ascii String Nullable
  index, underlier_optional = memx_options_riskcontrol_sbe_v1_6.underlier_optional.dissect(buffer, index, packet, parent)

  -- Efid Optional: 4 Byte Ascii String Nullable
  index, efid_optional = memx_options_riskcontrol_sbe_v1_6.efid_optional.dissect(buffer, index, packet, parent)

  -- Risk Group Id: 2 Byte Unsigned Fixed Width Integer Nullable
  index, risk_group_id = memx_options_riskcontrol_sbe_v1_6.risk_group_id.dissect(buffer, index, packet, parent)

  -- Total Executions: 4 Byte Unsigned Fixed Width Integer
  index, total_executions = memx_options_riskcontrol_sbe_v1_6.total_executions.dissect(buffer, index, packet, parent)

  -- Period In Milli Seconds: 4 Byte Unsigned Fixed Width Integer
  index, period_in_milli_seconds = memx_options_riskcontrol_sbe_v1_6.period_in_milli_seconds.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Cp Total Executions Threshold Change Req Message
memx_options_riskcontrol_sbe_v1_6.cp_total_executions_threshold_change_req_message.dissect = function(buffer, offset, packet, parent)
  if show.cp_total_executions_threshold_change_req_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_memx_options_riskcontrol_sbe_v1_6.fields.cp_total_executions_threshold_change_req_message, buffer(offset, 0))
    local index = memx_options_riskcontrol_sbe_v1_6.cp_total_executions_threshold_change_req_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = memx_options_riskcontrol_sbe_v1_6.cp_total_executions_threshold_change_req_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return memx_options_riskcontrol_sbe_v1_6.cp_total_executions_threshold_change_req_message.fields(buffer, offset, packet, parent)
  end
end

-- Cp Executed Notional Threshold Change Req Message
memx_options_riskcontrol_sbe_v1_6.cp_executed_notional_threshold_change_req_message = {}

-- Size: Cp Executed Notional Threshold Change Req Message
memx_options_riskcontrol_sbe_v1_6.cp_executed_notional_threshold_change_req_message.size =
  memx_options_riskcontrol_sbe_v1_6.clordid.size + 
  memx_options_riskcontrol_sbe_v1_6.underlier_optional.size + 
  memx_options_riskcontrol_sbe_v1_6.efid_optional.size + 
  memx_options_riskcontrol_sbe_v1_6.risk_group_id.size + 
  memx_options_riskcontrol_sbe_v1_6.price_in_dollars.size + 
  memx_options_riskcontrol_sbe_v1_6.period_in_milli_seconds.size

-- Display: Cp Executed Notional Threshold Change Req Message
memx_options_riskcontrol_sbe_v1_6.cp_executed_notional_threshold_change_req_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Cp Executed Notional Threshold Change Req Message
memx_options_riskcontrol_sbe_v1_6.cp_executed_notional_threshold_change_req_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- ClOrdId: 20 Byte Ascii String
  index, clordid = memx_options_riskcontrol_sbe_v1_6.clordid.dissect(buffer, index, packet, parent)

  -- Underlier Optional: 6 Byte Ascii String Nullable
  index, underlier_optional = memx_options_riskcontrol_sbe_v1_6.underlier_optional.dissect(buffer, index, packet, parent)

  -- Efid Optional: 4 Byte Ascii String Nullable
  index, efid_optional = memx_options_riskcontrol_sbe_v1_6.efid_optional.dissect(buffer, index, packet, parent)

  -- Risk Group Id: 2 Byte Unsigned Fixed Width Integer Nullable
  index, risk_group_id = memx_options_riskcontrol_sbe_v1_6.risk_group_id.dissect(buffer, index, packet, parent)

  -- Price In Dollars: 8 Byte Unsigned Fixed Width Integer
  index, price_in_dollars = memx_options_riskcontrol_sbe_v1_6.price_in_dollars.dissect(buffer, index, packet, parent)

  -- Period In Milli Seconds: 4 Byte Unsigned Fixed Width Integer
  index, period_in_milli_seconds = memx_options_riskcontrol_sbe_v1_6.period_in_milli_seconds.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Cp Executed Notional Threshold Change Req Message
memx_options_riskcontrol_sbe_v1_6.cp_executed_notional_threshold_change_req_message.dissect = function(buffer, offset, packet, parent)
  if show.cp_executed_notional_threshold_change_req_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_memx_options_riskcontrol_sbe_v1_6.fields.cp_executed_notional_threshold_change_req_message, buffer(offset, 0))
    local index = memx_options_riskcontrol_sbe_v1_6.cp_executed_notional_threshold_change_req_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = memx_options_riskcontrol_sbe_v1_6.cp_executed_notional_threshold_change_req_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return memx_options_riskcontrol_sbe_v1_6.cp_executed_notional_threshold_change_req_message.fields(buffer, offset, packet, parent)
  end
end

-- Cp Volume Threshold Change Req Message
memx_options_riskcontrol_sbe_v1_6.cp_volume_threshold_change_req_message = {}

-- Size: Cp Volume Threshold Change Req Message
memx_options_riskcontrol_sbe_v1_6.cp_volume_threshold_change_req_message.size =
  memx_options_riskcontrol_sbe_v1_6.clordid.size + 
  memx_options_riskcontrol_sbe_v1_6.underlier_optional.size + 
  memx_options_riskcontrol_sbe_v1_6.efid_optional.size + 
  memx_options_riskcontrol_sbe_v1_6.risk_group_id.size + 
  memx_options_riskcontrol_sbe_v1_6.volume.size + 
  memx_options_riskcontrol_sbe_v1_6.period_in_milli_seconds.size

-- Display: Cp Volume Threshold Change Req Message
memx_options_riskcontrol_sbe_v1_6.cp_volume_threshold_change_req_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Cp Volume Threshold Change Req Message
memx_options_riskcontrol_sbe_v1_6.cp_volume_threshold_change_req_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- ClOrdId: 20 Byte Ascii String
  index, clordid = memx_options_riskcontrol_sbe_v1_6.clordid.dissect(buffer, index, packet, parent)

  -- Underlier Optional: 6 Byte Ascii String Nullable
  index, underlier_optional = memx_options_riskcontrol_sbe_v1_6.underlier_optional.dissect(buffer, index, packet, parent)

  -- Efid Optional: 4 Byte Ascii String Nullable
  index, efid_optional = memx_options_riskcontrol_sbe_v1_6.efid_optional.dissect(buffer, index, packet, parent)

  -- Risk Group Id: 2 Byte Unsigned Fixed Width Integer Nullable
  index, risk_group_id = memx_options_riskcontrol_sbe_v1_6.risk_group_id.dissect(buffer, index, packet, parent)

  -- Volume: 8 Byte Unsigned Fixed Width Integer
  index, volume = memx_options_riskcontrol_sbe_v1_6.volume.dissect(buffer, index, packet, parent)

  -- Period In Milli Seconds: 4 Byte Unsigned Fixed Width Integer
  index, period_in_milli_seconds = memx_options_riskcontrol_sbe_v1_6.period_in_milli_seconds.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Cp Volume Threshold Change Req Message
memx_options_riskcontrol_sbe_v1_6.cp_volume_threshold_change_req_message.dissect = function(buffer, offset, packet, parent)
  if show.cp_volume_threshold_change_req_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_memx_options_riskcontrol_sbe_v1_6.fields.cp_volume_threshold_change_req_message, buffer(offset, 0))
    local index = memx_options_riskcontrol_sbe_v1_6.cp_volume_threshold_change_req_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = memx_options_riskcontrol_sbe_v1_6.cp_volume_threshold_change_req_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return memx_options_riskcontrol_sbe_v1_6.cp_volume_threshold_change_req_message.fields(buffer, offset, packet, parent)
  end
end

-- Active Risk Acknowledgement Req Message
memx_options_riskcontrol_sbe_v1_6.active_risk_acknowledgement_req_message = {}

-- Size: Active Risk Acknowledgement Req Message
memx_options_riskcontrol_sbe_v1_6.active_risk_acknowledgement_req_message.size =
  memx_options_riskcontrol_sbe_v1_6.clordid.size + 
  memx_options_riskcontrol_sbe_v1_6.underlier.size + 
  memx_options_riskcontrol_sbe_v1_6.efid.size + 
  memx_options_riskcontrol_sbe_v1_6.quantity.size

-- Display: Active Risk Acknowledgement Req Message
memx_options_riskcontrol_sbe_v1_6.active_risk_acknowledgement_req_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Active Risk Acknowledgement Req Message
memx_options_riskcontrol_sbe_v1_6.active_risk_acknowledgement_req_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- ClOrdId: 20 Byte Ascii String
  index, clordid = memx_options_riskcontrol_sbe_v1_6.clordid.dissect(buffer, index, packet, parent)

  -- Underlier: 6 Byte Ascii String
  index, underlier = memx_options_riskcontrol_sbe_v1_6.underlier.dissect(buffer, index, packet, parent)

  -- Efid: 4 Byte Ascii String
  index, efid = memx_options_riskcontrol_sbe_v1_6.efid.dissect(buffer, index, packet, parent)

  -- Quantity: 4 Byte Unsigned Fixed Width Integer
  index, quantity = memx_options_riskcontrol_sbe_v1_6.quantity.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Active Risk Acknowledgement Req Message
memx_options_riskcontrol_sbe_v1_6.active_risk_acknowledgement_req_message.dissect = function(buffer, offset, packet, parent)
  if show.active_risk_acknowledgement_req_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_memx_options_riskcontrol_sbe_v1_6.fields.active_risk_acknowledgement_req_message, buffer(offset, 0))
    local index = memx_options_riskcontrol_sbe_v1_6.active_risk_acknowledgement_req_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = memx_options_riskcontrol_sbe_v1_6.active_risk_acknowledgement_req_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return memx_options_riskcontrol_sbe_v1_6.active_risk_acknowledgement_req_message.fields(buffer, offset, packet, parent)
  end
end

-- Active Risk Threshold Change Req Message
memx_options_riskcontrol_sbe_v1_6.active_risk_threshold_change_req_message = {}

-- Size: Active Risk Threshold Change Req Message
memx_options_riskcontrol_sbe_v1_6.active_risk_threshold_change_req_message.size =
  memx_options_riskcontrol_sbe_v1_6.clordid.size + 
  memx_options_riskcontrol_sbe_v1_6.underlier_optional.size + 
  memx_options_riskcontrol_sbe_v1_6.efid_optional.size + 
  memx_options_riskcontrol_sbe_v1_6.threshold_quantity.size

-- Display: Active Risk Threshold Change Req Message
memx_options_riskcontrol_sbe_v1_6.active_risk_threshold_change_req_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Active Risk Threshold Change Req Message
memx_options_riskcontrol_sbe_v1_6.active_risk_threshold_change_req_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- ClOrdId: 20 Byte Ascii String
  index, clordid = memx_options_riskcontrol_sbe_v1_6.clordid.dissect(buffer, index, packet, parent)

  -- Underlier Optional: 6 Byte Ascii String Nullable
  index, underlier_optional = memx_options_riskcontrol_sbe_v1_6.underlier_optional.dissect(buffer, index, packet, parent)

  -- Efid Optional: 4 Byte Ascii String Nullable
  index, efid_optional = memx_options_riskcontrol_sbe_v1_6.efid_optional.dissect(buffer, index, packet, parent)

  -- Threshold Quantity: 4 Byte Unsigned Fixed Width Integer
  index, threshold_quantity = memx_options_riskcontrol_sbe_v1_6.threshold_quantity.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Active Risk Threshold Change Req Message
memx_options_riskcontrol_sbe_v1_6.active_risk_threshold_change_req_message.dissect = function(buffer, offset, packet, parent)
  if show.active_risk_threshold_change_req_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_memx_options_riskcontrol_sbe_v1_6.fields.active_risk_threshold_change_req_message, buffer(offset, 0))
    local index = memx_options_riskcontrol_sbe_v1_6.active_risk_threshold_change_req_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = memx_options_riskcontrol_sbe_v1_6.active_risk_threshold_change_req_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return memx_options_riskcontrol_sbe_v1_6.active_risk_threshold_change_req_message.fields(buffer, offset, packet, parent)
  end
end

-- Risk Settings Query Message
memx_options_riskcontrol_sbe_v1_6.risk_settings_query_message = {}

-- Size: Risk Settings Query Message
memx_options_riskcontrol_sbe_v1_6.risk_settings_query_message.size =
  memx_options_riskcontrol_sbe_v1_6.clordid.size

-- Display: Risk Settings Query Message
memx_options_riskcontrol_sbe_v1_6.risk_settings_query_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Risk Settings Query Message
memx_options_riskcontrol_sbe_v1_6.risk_settings_query_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- ClOrdId: 20 Byte Ascii String
  index, clordid = memx_options_riskcontrol_sbe_v1_6.clordid.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Risk Settings Query Message
memx_options_riskcontrol_sbe_v1_6.risk_settings_query_message.dissect = function(buffer, offset, packet, parent)
  if show.risk_settings_query_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_memx_options_riskcontrol_sbe_v1_6.fields.risk_settings_query_message, buffer(offset, 0))
    local index = memx_options_riskcontrol_sbe_v1_6.risk_settings_query_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = memx_options_riskcontrol_sbe_v1_6.risk_settings_query_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return memx_options_riskcontrol_sbe_v1_6.risk_settings_query_message.fields(buffer, offset, packet, parent)
  end
end

-- Payload
memx_options_riskcontrol_sbe_v1_6.payload = {}

-- Size: Payload
memx_options_riskcontrol_sbe_v1_6.payload.size = function(buffer, offset, template_id)
  -- Size of Risk Settings Query Message
  if template_id == 1 then
    return memx_options_riskcontrol_sbe_v1_6.risk_settings_query_message.size
  end
  -- Size of Active Risk Threshold Change Req Message
  if template_id == 2 then
    return memx_options_riskcontrol_sbe_v1_6.active_risk_threshold_change_req_message.size
  end
  -- Size of Active Risk Acknowledgement Req Message
  if template_id == 3 then
    return memx_options_riskcontrol_sbe_v1_6.active_risk_acknowledgement_req_message.size
  end
  -- Size of Cp Volume Threshold Change Req Message
  if template_id == 4 then
    return memx_options_riskcontrol_sbe_v1_6.cp_volume_threshold_change_req_message.size
  end
  -- Size of Cp Executed Notional Threshold Change Req Message
  if template_id == 5 then
    return memx_options_riskcontrol_sbe_v1_6.cp_executed_notional_threshold_change_req_message.size
  end
  -- Size of Cp Total Executions Threshold Change Req Message
  if template_id == 6 then
    return memx_options_riskcontrol_sbe_v1_6.cp_total_executions_threshold_change_req_message.size
  end
  -- Size of Cp Percent Outstanding Contracts Threshold Change Req Message
  if template_id == 7 then
    return memx_options_riskcontrol_sbe_v1_6.cp_percent_outstanding_contracts_threshold_change_req_message.size
  end
  -- Size of Cp Breach Count Threshold Change Req Message
  if template_id == 8 then
    return memx_options_riskcontrol_sbe_v1_6.cp_breach_count_threshold_change_req_message.size
  end
  -- Size of Manual Cp Breach Trigger Req Message
  if template_id == 9 then
    return memx_options_riskcontrol_sbe_v1_6.manual_cp_breach_trigger_req_message.size
  end
  -- Size of Cp Clear Breach Req Message
  if template_id == 10 then
    return memx_options_riskcontrol_sbe_v1_6.cp_clear_breach_req_message.size
  end
  -- Size of Single Order Allow Iso Orders Change Req Message
  if template_id == 11 then
    return memx_options_riskcontrol_sbe_v1_6.single_order_allow_iso_orders_change_req_message.size
  end
  -- Size of Single Order Allow Orders In Crossed Market Change Req Message
  if template_id == 12 then
    return memx_options_riskcontrol_sbe_v1_6.single_order_allow_orders_in_crossed_market_change_req_message.size
  end
  -- Size of Single Order Max Notional Change Req Message
  if template_id == 13 then
    return memx_options_riskcontrol_sbe_v1_6.single_order_max_notional_change_req_message.size
  end
  -- Size of Single Order Max Contracts Change Req Message
  if template_id == 14 then
    return memx_options_riskcontrol_sbe_v1_6.single_order_max_contracts_change_req_message.size
  end
  -- Size of Cp Gross Notional Threshold Change Req Message
  if template_id == 18 then
    return memx_options_riskcontrol_sbe_v1_6.cp_gross_notional_threshold_change_req_message.size
  end
  -- Size of Cp Market Order Gross Notional Threshold Change Req Message
  if template_id == 19 then
    return memx_options_riskcontrol_sbe_v1_6.cp_market_order_gross_notional_threshold_change_req_message.size
  end
  -- Size of Cp Net Notional Threshold Change Req Message
  if template_id == 20 then
    return memx_options_riskcontrol_sbe_v1_6.cp_net_notional_threshold_change_req_message.size
  end
  -- Size of Cp Market Order Net Notional Threshold Change Req Message
  if template_id == 21 then
    return memx_options_riskcontrol_sbe_v1_6.cp_market_order_net_notional_threshold_change_req_message.size
  end
  -- Size of Cp Duplicate Order Threshold Change Req Message
  if template_id == 22 then
    return memx_options_riskcontrol_sbe_v1_6.cp_duplicate_order_threshold_change_req_message.size
  end
  -- Size of Cp Order Rate Threshold Change Req Message
  if template_id == 23 then
    return memx_options_riskcontrol_sbe_v1_6.cp_order_rate_threshold_change_req_message.size
  end
  -- Size of Active Risk Threshold State Message
  if template_id == 30 then
    return memx_options_riskcontrol_sbe_v1_6.active_risk_threshold_state_message.size
  end
  -- Size of Active Risk Threshold Change Rej Message
  if template_id == 31 then
    return memx_options_riskcontrol_sbe_v1_6.active_risk_threshold_change_rej_message.size
  end
  -- Size of Active Risk Acknowledged Message
  if template_id == 32 then
    return memx_options_riskcontrol_sbe_v1_6.active_risk_acknowledged_message.size
  end
  -- Size of Active Risk Acknowledge Rej Message
  if template_id == 33 then
    return memx_options_riskcontrol_sbe_v1_6.active_risk_acknowledge_rej_message.size
  end
  -- Size of Active Risk Quantity Update Notification Message
  if template_id == 34 then
    return memx_options_riskcontrol_sbe_v1_6.active_risk_quantity_update_notification_message.size
  end
  -- Size of Cp Volume Threshold State Message
  if template_id == 35 then
    return memx_options_riskcontrol_sbe_v1_6.cp_volume_threshold_state_message.size
  end
  -- Size of Cp Executed Notional Threshold State Message
  if template_id == 36 then
    return memx_options_riskcontrol_sbe_v1_6.cp_executed_notional_threshold_state_message.size
  end
  -- Size of Cp Total Executions Threshold State Message
  if template_id == 37 then
    return memx_options_riskcontrol_sbe_v1_6.cp_total_executions_threshold_state_message.size
  end
  -- Size of Cp Percent Outstanding Contracts Threshold State Message
  if template_id == 38 then
    return memx_options_riskcontrol_sbe_v1_6.cp_percent_outstanding_contracts_threshold_state_message.size
  end
  -- Size of Cp Breach Count Threshold State Message
  if template_id == 39 then
    return memx_options_riskcontrol_sbe_v1_6.cp_breach_count_threshold_state_message.size
  end
  -- Size of Manual Cp Breach Trigger Pending Message
  if template_id == 40 then
    return memx_options_riskcontrol_sbe_v1_6.manual_cp_breach_trigger_pending_message.size
  end
  -- Size of Manual Cp Breach Trigger Done Message
  if template_id == 41 then
    return memx_options_riskcontrol_sbe_v1_6.manual_cp_breach_trigger_done_message.size
  end
  -- Size of Risk Threshold Update Rej Message
  if template_id == 42 then
    return memx_options_riskcontrol_sbe_v1_6.risk_threshold_update_rej_message.size
  end
  -- Size of Passive Risk Threshold Notification Message
  if template_id == 43 then
    return memx_options_riskcontrol_sbe_v1_6.passive_risk_threshold_notification_message.size
  end
  -- Size of Single Order Allow Iso Orders State Message
  if template_id == 44 then
    return memx_options_riskcontrol_sbe_v1_6.single_order_allow_iso_orders_state_message.size
  end
  -- Size of Single Order Allow Orders In Crossed Market State Message
  if template_id == 45 then
    return memx_options_riskcontrol_sbe_v1_6.single_order_allow_orders_in_crossed_market_state_message.size
  end
  -- Size of Single Order Max Notional Threshold State Message
  if template_id == 46 then
    return memx_options_riskcontrol_sbe_v1_6.single_order_max_notional_threshold_state_message.size
  end
  -- Size of Single Order Max Contracts Threshold State Message
  if template_id == 47 then
    return memx_options_riskcontrol_sbe_v1_6.single_order_max_contracts_threshold_state_message.size
  end
  -- Size of Risk Settings Query Done Message
  if template_id == 48 then
    return memx_options_riskcontrol_sbe_v1_6.risk_settings_query_done_message.size
  end
  -- Size of Risk Settings Query Rej Message
  if template_id == 49 then
    return memx_options_riskcontrol_sbe_v1_6.risk_settings_query_rej_message.size
  end
  -- Size of Manual Cp Breach Trigger Rej Message
  if template_id == 50 then
    return memx_options_riskcontrol_sbe_v1_6.manual_cp_breach_trigger_rej_message.size
  end
  -- Size of Breach Clear Rej Message
  if template_id == 51 then
    return memx_options_riskcontrol_sbe_v1_6.breach_clear_rej_message.size
  end
  -- Size of Breach Cleared Message
  if template_id == 52 then
    return memx_options_riskcontrol_sbe_v1_6.breach_cleared_message.size
  end
  -- Size of Cp Gross Notional Threshold State Message
  if template_id == 60 then
    return memx_options_riskcontrol_sbe_v1_6.cp_gross_notional_threshold_state_message.size
  end
  -- Size of Cp Market Order Gross Notional Threshold State Message
  if template_id == 61 then
    return memx_options_riskcontrol_sbe_v1_6.cp_market_order_gross_notional_threshold_state_message.size
  end
  -- Size of Cp Net Notional Threshold State Message
  if template_id == 62 then
    return memx_options_riskcontrol_sbe_v1_6.cp_net_notional_threshold_state_message.size
  end
  -- Size of Cp Market Order Net Notional Threshold State Message
  if template_id == 63 then
    return memx_options_riskcontrol_sbe_v1_6.cp_market_order_net_notional_threshold_state_message.size
  end
  -- Size of Cp Duplicate Order Threshold State Message
  if template_id == 64 then
    return memx_options_riskcontrol_sbe_v1_6.cp_duplicate_order_threshold_state_message.size
  end
  -- Size of Cp Order Rate Threshold State Message
  if template_id == 65 then
    return memx_options_riskcontrol_sbe_v1_6.cp_order_rate_threshold_state_message.size
  end

  return 0
end

-- Display: Payload
memx_options_riskcontrol_sbe_v1_6.payload.display = function(buffer, offset, packet, parent)
  return ""
end

-- Dissect Branches: Payload
memx_options_riskcontrol_sbe_v1_6.payload.branches = function(buffer, offset, packet, parent, template_id)
  -- Dissect Risk Settings Query Message
  if template_id == 1 then
    return memx_options_riskcontrol_sbe_v1_6.risk_settings_query_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Active Risk Threshold Change Req Message
  if template_id == 2 then
    return memx_options_riskcontrol_sbe_v1_6.active_risk_threshold_change_req_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Active Risk Acknowledgement Req Message
  if template_id == 3 then
    return memx_options_riskcontrol_sbe_v1_6.active_risk_acknowledgement_req_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Cp Volume Threshold Change Req Message
  if template_id == 4 then
    return memx_options_riskcontrol_sbe_v1_6.cp_volume_threshold_change_req_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Cp Executed Notional Threshold Change Req Message
  if template_id == 5 then
    return memx_options_riskcontrol_sbe_v1_6.cp_executed_notional_threshold_change_req_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Cp Total Executions Threshold Change Req Message
  if template_id == 6 then
    return memx_options_riskcontrol_sbe_v1_6.cp_total_executions_threshold_change_req_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Cp Percent Outstanding Contracts Threshold Change Req Message
  if template_id == 7 then
    return memx_options_riskcontrol_sbe_v1_6.cp_percent_outstanding_contracts_threshold_change_req_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Cp Breach Count Threshold Change Req Message
  if template_id == 8 then
    return memx_options_riskcontrol_sbe_v1_6.cp_breach_count_threshold_change_req_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Manual Cp Breach Trigger Req Message
  if template_id == 9 then
    return memx_options_riskcontrol_sbe_v1_6.manual_cp_breach_trigger_req_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Cp Clear Breach Req Message
  if template_id == 10 then
    return memx_options_riskcontrol_sbe_v1_6.cp_clear_breach_req_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Single Order Allow Iso Orders Change Req Message
  if template_id == 11 then
    return memx_options_riskcontrol_sbe_v1_6.single_order_allow_iso_orders_change_req_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Single Order Allow Orders In Crossed Market Change Req Message
  if template_id == 12 then
    return memx_options_riskcontrol_sbe_v1_6.single_order_allow_orders_in_crossed_market_change_req_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Single Order Max Notional Change Req Message
  if template_id == 13 then
    return memx_options_riskcontrol_sbe_v1_6.single_order_max_notional_change_req_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Single Order Max Contracts Change Req Message
  if template_id == 14 then
    return memx_options_riskcontrol_sbe_v1_6.single_order_max_contracts_change_req_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Cp Gross Notional Threshold Change Req Message
  if template_id == 18 then
    return memx_options_riskcontrol_sbe_v1_6.cp_gross_notional_threshold_change_req_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Cp Market Order Gross Notional Threshold Change Req Message
  if template_id == 19 then
    return memx_options_riskcontrol_sbe_v1_6.cp_market_order_gross_notional_threshold_change_req_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Cp Net Notional Threshold Change Req Message
  if template_id == 20 then
    return memx_options_riskcontrol_sbe_v1_6.cp_net_notional_threshold_change_req_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Cp Market Order Net Notional Threshold Change Req Message
  if template_id == 21 then
    return memx_options_riskcontrol_sbe_v1_6.cp_market_order_net_notional_threshold_change_req_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Cp Duplicate Order Threshold Change Req Message
  if template_id == 22 then
    return memx_options_riskcontrol_sbe_v1_6.cp_duplicate_order_threshold_change_req_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Cp Order Rate Threshold Change Req Message
  if template_id == 23 then
    return memx_options_riskcontrol_sbe_v1_6.cp_order_rate_threshold_change_req_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Active Risk Threshold State Message
  if template_id == 30 then
    return memx_options_riskcontrol_sbe_v1_6.active_risk_threshold_state_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Active Risk Threshold Change Rej Message
  if template_id == 31 then
    return memx_options_riskcontrol_sbe_v1_6.active_risk_threshold_change_rej_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Active Risk Acknowledged Message
  if template_id == 32 then
    return memx_options_riskcontrol_sbe_v1_6.active_risk_acknowledged_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Active Risk Acknowledge Rej Message
  if template_id == 33 then
    return memx_options_riskcontrol_sbe_v1_6.active_risk_acknowledge_rej_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Active Risk Quantity Update Notification Message
  if template_id == 34 then
    return memx_options_riskcontrol_sbe_v1_6.active_risk_quantity_update_notification_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Cp Volume Threshold State Message
  if template_id == 35 then
    return memx_options_riskcontrol_sbe_v1_6.cp_volume_threshold_state_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Cp Executed Notional Threshold State Message
  if template_id == 36 then
    return memx_options_riskcontrol_sbe_v1_6.cp_executed_notional_threshold_state_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Cp Total Executions Threshold State Message
  if template_id == 37 then
    return memx_options_riskcontrol_sbe_v1_6.cp_total_executions_threshold_state_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Cp Percent Outstanding Contracts Threshold State Message
  if template_id == 38 then
    return memx_options_riskcontrol_sbe_v1_6.cp_percent_outstanding_contracts_threshold_state_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Cp Breach Count Threshold State Message
  if template_id == 39 then
    return memx_options_riskcontrol_sbe_v1_6.cp_breach_count_threshold_state_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Manual Cp Breach Trigger Pending Message
  if template_id == 40 then
    return memx_options_riskcontrol_sbe_v1_6.manual_cp_breach_trigger_pending_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Manual Cp Breach Trigger Done Message
  if template_id == 41 then
    return memx_options_riskcontrol_sbe_v1_6.manual_cp_breach_trigger_done_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Risk Threshold Update Rej Message
  if template_id == 42 then
    return memx_options_riskcontrol_sbe_v1_6.risk_threshold_update_rej_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Passive Risk Threshold Notification Message
  if template_id == 43 then
    return memx_options_riskcontrol_sbe_v1_6.passive_risk_threshold_notification_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Single Order Allow Iso Orders State Message
  if template_id == 44 then
    return memx_options_riskcontrol_sbe_v1_6.single_order_allow_iso_orders_state_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Single Order Allow Orders In Crossed Market State Message
  if template_id == 45 then
    return memx_options_riskcontrol_sbe_v1_6.single_order_allow_orders_in_crossed_market_state_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Single Order Max Notional Threshold State Message
  if template_id == 46 then
    return memx_options_riskcontrol_sbe_v1_6.single_order_max_notional_threshold_state_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Single Order Max Contracts Threshold State Message
  if template_id == 47 then
    return memx_options_riskcontrol_sbe_v1_6.single_order_max_contracts_threshold_state_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Risk Settings Query Done Message
  if template_id == 48 then
    return memx_options_riskcontrol_sbe_v1_6.risk_settings_query_done_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Risk Settings Query Rej Message
  if template_id == 49 then
    return memx_options_riskcontrol_sbe_v1_6.risk_settings_query_rej_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Manual Cp Breach Trigger Rej Message
  if template_id == 50 then
    return memx_options_riskcontrol_sbe_v1_6.manual_cp_breach_trigger_rej_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Breach Clear Rej Message
  if template_id == 51 then
    return memx_options_riskcontrol_sbe_v1_6.breach_clear_rej_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Breach Cleared Message
  if template_id == 52 then
    return memx_options_riskcontrol_sbe_v1_6.breach_cleared_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Cp Gross Notional Threshold State Message
  if template_id == 60 then
    return memx_options_riskcontrol_sbe_v1_6.cp_gross_notional_threshold_state_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Cp Market Order Gross Notional Threshold State Message
  if template_id == 61 then
    return memx_options_riskcontrol_sbe_v1_6.cp_market_order_gross_notional_threshold_state_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Cp Net Notional Threshold State Message
  if template_id == 62 then
    return memx_options_riskcontrol_sbe_v1_6.cp_net_notional_threshold_state_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Cp Market Order Net Notional Threshold State Message
  if template_id == 63 then
    return memx_options_riskcontrol_sbe_v1_6.cp_market_order_net_notional_threshold_state_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Cp Duplicate Order Threshold State Message
  if template_id == 64 then
    return memx_options_riskcontrol_sbe_v1_6.cp_duplicate_order_threshold_state_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Cp Order Rate Threshold State Message
  if template_id == 65 then
    return memx_options_riskcontrol_sbe_v1_6.cp_order_rate_threshold_state_message.dissect(buffer, offset, packet, parent)
  end

  return offset
end

-- Dissect: Payload
memx_options_riskcontrol_sbe_v1_6.payload.dissect = function(buffer, offset, packet, parent, template_id)
  if not show.payload then
    return memx_options_riskcontrol_sbe_v1_6.payload.branches(buffer, offset, packet, parent, template_id)
  end

  -- Calculate size and check that branch is not empty
  local size = memx_options_riskcontrol_sbe_v1_6.payload.size(buffer, offset, template_id)
  if size == 0 then
    return offset
  end

  -- Dissect Element
  local range = buffer(offset, size)
  local display = memx_options_riskcontrol_sbe_v1_6.payload.display(buffer, packet, parent)
  local element = parent:add(omi_memx_options_riskcontrol_sbe_v1_6.fields.payload, range, display)

  return memx_options_riskcontrol_sbe_v1_6.payload.branches(buffer, offset, packet, parent, template_id)
end

-- Version
memx_options_riskcontrol_sbe_v1_6.version = {}

-- Size: Version
memx_options_riskcontrol_sbe_v1_6.version.size = 2

-- Display: Version
memx_options_riskcontrol_sbe_v1_6.version.display = function(value)
  return "Version: "..value
end

-- Dissect: Version
memx_options_riskcontrol_sbe_v1_6.version.dissect = function(buffer, offset, packet, parent)
  local length = memx_options_riskcontrol_sbe_v1_6.version.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = memx_options_riskcontrol_sbe_v1_6.version.display(value, buffer, offset, packet, parent)

  parent:add(omi_memx_options_riskcontrol_sbe_v1_6.fields.version, range, value, display)

  return offset + length, value
end

-- Schema Id
memx_options_riskcontrol_sbe_v1_6.schema_id = {}

-- Size: Schema Id
memx_options_riskcontrol_sbe_v1_6.schema_id.size = 1

-- Display: Schema Id
memx_options_riskcontrol_sbe_v1_6.schema_id.display = function(value)
  return "Schema Id: "..value
end

-- Dissect: Schema Id
memx_options_riskcontrol_sbe_v1_6.schema_id.dissect = function(buffer, offset, packet, parent)
  local length = memx_options_riskcontrol_sbe_v1_6.schema_id.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = memx_options_riskcontrol_sbe_v1_6.schema_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_memx_options_riskcontrol_sbe_v1_6.fields.schema_id, range, value, display)

  return offset + length, value
end

-- Template Id
memx_options_riskcontrol_sbe_v1_6.template_id = {}

-- Size: Template Id
memx_options_riskcontrol_sbe_v1_6.template_id.size = 1

-- Display: Template Id
memx_options_riskcontrol_sbe_v1_6.template_id.display = function(value)
  if value == 1 then
    return "Template Id: Risk Settings Query Message (1)"
  end
  if value == 2 then
    return "Template Id: Active Risk Threshold Change Req Message (2)"
  end
  if value == 3 then
    return "Template Id: Active Risk Acknowledgement Req Message (3)"
  end
  if value == 4 then
    return "Template Id: Cp Volume Threshold Change Req Message (4)"
  end
  if value == 5 then
    return "Template Id: Cp Executed Notional Threshold Change Req Message (5)"
  end
  if value == 6 then
    return "Template Id: Cp Total Executions Threshold Change Req Message (6)"
  end
  if value == 7 then
    return "Template Id: Cp Percent Outstanding Contracts Threshold Change Req Message (7)"
  end
  if value == 8 then
    return "Template Id: Cp Breach Count Threshold Change Req Message (8)"
  end
  if value == 9 then
    return "Template Id: Manual Cp Breach Trigger Req Message (9)"
  end
  if value == 10 then
    return "Template Id: Cp Clear Breach Req Message (10)"
  end
  if value == 11 then
    return "Template Id: Single Order Allow Iso Orders Change Req Message (11)"
  end
  if value == 12 then
    return "Template Id: Single Order Allow Orders In Crossed Market Change Req Message (12)"
  end
  if value == 13 then
    return "Template Id: Single Order Max Notional Change Req Message (13)"
  end
  if value == 14 then
    return "Template Id: Single Order Max Contracts Change Req Message (14)"
  end
  if value == 18 then
    return "Template Id: Cp Gross Notional Threshold Change Req Message (18)"
  end
  if value == 19 then
    return "Template Id: Cp Market Order Gross Notional Threshold Change Req Message (19)"
  end
  if value == 20 then
    return "Template Id: Cp Net Notional Threshold Change Req Message (20)"
  end
  if value == 21 then
    return "Template Id: Cp Market Order Net Notional Threshold Change Req Message (21)"
  end
  if value == 22 then
    return "Template Id: Cp Duplicate Order Threshold Change Req Message (22)"
  end
  if value == 23 then
    return "Template Id: Cp Order Rate Threshold Change Req Message (23)"
  end
  if value == 30 then
    return "Template Id: Active Risk Threshold State Message (30)"
  end
  if value == 31 then
    return "Template Id: Active Risk Threshold Change Rej Message (31)"
  end
  if value == 32 then
    return "Template Id: Active Risk Acknowledged Message (32)"
  end
  if value == 33 then
    return "Template Id: Active Risk Acknowledge Rej Message (33)"
  end
  if value == 34 then
    return "Template Id: Active Risk Quantity Update Notification Message (34)"
  end
  if value == 35 then
    return "Template Id: Cp Volume Threshold State Message (35)"
  end
  if value == 36 then
    return "Template Id: Cp Executed Notional Threshold State Message (36)"
  end
  if value == 37 then
    return "Template Id: Cp Total Executions Threshold State Message (37)"
  end
  if value == 38 then
    return "Template Id: Cp Percent Outstanding Contracts Threshold State Message (38)"
  end
  if value == 39 then
    return "Template Id: Cp Breach Count Threshold State Message (39)"
  end
  if value == 40 then
    return "Template Id: Manual Cp Breach Trigger Pending Message (40)"
  end
  if value == 41 then
    return "Template Id: Manual Cp Breach Trigger Done Message (41)"
  end
  if value == 42 then
    return "Template Id: Risk Threshold Update Rej Message (42)"
  end
  if value == 43 then
    return "Template Id: Passive Risk Threshold Notification Message (43)"
  end
  if value == 44 then
    return "Template Id: Single Order Allow Iso Orders State Message (44)"
  end
  if value == 45 then
    return "Template Id: Single Order Allow Orders In Crossed Market State Message (45)"
  end
  if value == 46 then
    return "Template Id: Single Order Max Notional Threshold State Message (46)"
  end
  if value == 47 then
    return "Template Id: Single Order Max Contracts Threshold State Message (47)"
  end
  if value == 48 then
    return "Template Id: Risk Settings Query Done Message (48)"
  end
  if value == 49 then
    return "Template Id: Risk Settings Query Rej Message (49)"
  end
  if value == 50 then
    return "Template Id: Manual Cp Breach Trigger Rej Message (50)"
  end
  if value == 51 then
    return "Template Id: Breach Clear Rej Message (51)"
  end
  if value == 52 then
    return "Template Id: Breach Cleared Message (52)"
  end
  if value == 60 then
    return "Template Id: Cp Gross Notional Threshold State Message (60)"
  end
  if value == 61 then
    return "Template Id: Cp Market Order Gross Notional Threshold State Message (61)"
  end
  if value == 62 then
    return "Template Id: Cp Net Notional Threshold State Message (62)"
  end
  if value == 63 then
    return "Template Id: Cp Market Order Net Notional Threshold State Message (63)"
  end
  if value == 64 then
    return "Template Id: Cp Duplicate Order Threshold State Message (64)"
  end
  if value == 65 then
    return "Template Id: Cp Order Rate Threshold State Message (65)"
  end

  return "Template Id: Unknown("..value..")"
end

-- Dissect: Template Id
memx_options_riskcontrol_sbe_v1_6.template_id.dissect = function(buffer, offset, packet, parent)
  local length = memx_options_riskcontrol_sbe_v1_6.template_id.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = memx_options_riskcontrol_sbe_v1_6.template_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_memx_options_riskcontrol_sbe_v1_6.fields.template_id, range, value, display)

  return offset + length, value
end

-- Block Length
memx_options_riskcontrol_sbe_v1_6.block_length = {}

-- Size: Block Length
memx_options_riskcontrol_sbe_v1_6.block_length.size = 2

-- Display: Block Length
memx_options_riskcontrol_sbe_v1_6.block_length.display = function(value)
  return "Block Length: "..value
end

-- Dissect: Block Length
memx_options_riskcontrol_sbe_v1_6.block_length.dissect = function(buffer, offset, packet, parent)
  local length = memx_options_riskcontrol_sbe_v1_6.block_length.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = memx_options_riskcontrol_sbe_v1_6.block_length.display(value, buffer, offset, packet, parent)

  parent:add(omi_memx_options_riskcontrol_sbe_v1_6.fields.block_length, range, value, display)

  return offset + length, value
end

-- Sbe Header
memx_options_riskcontrol_sbe_v1_6.sbe_header = {}

-- Size: Sbe Header
memx_options_riskcontrol_sbe_v1_6.sbe_header.size =
  memx_options_riskcontrol_sbe_v1_6.block_length.size + 
  memx_options_riskcontrol_sbe_v1_6.template_id.size + 
  memx_options_riskcontrol_sbe_v1_6.schema_id.size + 
  memx_options_riskcontrol_sbe_v1_6.version.size

-- Display: Sbe Header
memx_options_riskcontrol_sbe_v1_6.sbe_header.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Sbe Header
memx_options_riskcontrol_sbe_v1_6.sbe_header.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Block Length: 2 Byte Unsigned Fixed Width Integer
  index, block_length = memx_options_riskcontrol_sbe_v1_6.block_length.dissect(buffer, index, packet, parent)

  -- Template Id: 1 Byte Unsigned Fixed Width Integer Enum with 49 values
  index, template_id = memx_options_riskcontrol_sbe_v1_6.template_id.dissect(buffer, index, packet, parent)

  -- Schema Id: 1 Byte Unsigned Fixed Width Integer Static
  index, schema_id = memx_options_riskcontrol_sbe_v1_6.schema_id.dissect(buffer, index, packet, parent)

  -- Version: 2 Byte Unsigned Fixed Width Integer Static
  index, version = memx_options_riskcontrol_sbe_v1_6.version.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Sbe Header
memx_options_riskcontrol_sbe_v1_6.sbe_header.dissect = function(buffer, offset, packet, parent)
  if show.sbe_header then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_memx_options_riskcontrol_sbe_v1_6.fields.sbe_header, buffer(offset, 0))
    local index = memx_options_riskcontrol_sbe_v1_6.sbe_header.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = memx_options_riskcontrol_sbe_v1_6.sbe_header.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return memx_options_riskcontrol_sbe_v1_6.sbe_header.fields(buffer, offset, packet, parent)
  end
end

-- Sbe Message
memx_options_riskcontrol_sbe_v1_6.sbe_message = {}

-- Calculate size of: Sbe Message
memx_options_riskcontrol_sbe_v1_6.sbe_message.size = function(buffer, offset)
  local index = 0

  index = index + memx_options_riskcontrol_sbe_v1_6.sbe_header.size

  -- Calculate runtime size of Payload field
  local payload_offset = offset + index
  local payload_type = buffer(payload_offset - 4, 1):uint()
  index = index + memx_options_riskcontrol_sbe_v1_6.payload.size(buffer, payload_offset, payload_type)

  return index
end

-- Display: Sbe Message
memx_options_riskcontrol_sbe_v1_6.sbe_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Sbe Message
memx_options_riskcontrol_sbe_v1_6.sbe_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Sbe Header: Struct of 4 fields
  index, sbe_header = memx_options_riskcontrol_sbe_v1_6.sbe_header.dissect(buffer, index, packet, parent)

  -- Dependency element: Template Id
  local template_id = buffer(index - 4, 1):uint()

  -- Payload: Runtime Type with 49 branches
  index = memx_options_riskcontrol_sbe_v1_6.payload.dissect(buffer, index, packet, parent, template_id)

  return index
end

-- Dissect: Sbe Message
memx_options_riskcontrol_sbe_v1_6.sbe_message.dissect = function(buffer, offset, packet, parent)
  -- Optionally add dynamic struct element to protocol tree
  if show.sbe_message then
    local length = memx_options_riskcontrol_sbe_v1_6.sbe_message.size(buffer, offset)
    local range = buffer(offset, length)
    local display = memx_options_riskcontrol_sbe_v1_6.sbe_message.display(buffer, packet, parent)
    parent = parent:add(omi_memx_options_riskcontrol_sbe_v1_6.fields.sbe_message, range, display)
  end

  return memx_options_riskcontrol_sbe_v1_6.sbe_message.fields(buffer, offset, packet, parent)
end

-- Sequenced Message
memx_options_riskcontrol_sbe_v1_6.sequenced_message = {}

-- Calculate size of: Sequenced Message
memx_options_riskcontrol_sbe_v1_6.sequenced_message.size = function(buffer, offset)
  local index = 0

  index = index + memx_options_riskcontrol_sbe_v1_6.sbe_message.size(buffer, offset + index)

  return index
end

-- Display: Sequenced Message
memx_options_riskcontrol_sbe_v1_6.sequenced_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Sequenced Message
memx_options_riskcontrol_sbe_v1_6.sequenced_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Sbe Message: Struct of 2 fields
  index, sbe_message = memx_options_riskcontrol_sbe_v1_6.sbe_message.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Sequenced Message
memx_options_riskcontrol_sbe_v1_6.sequenced_message.dissect = function(buffer, offset, packet, parent)
  -- Optionally add dynamic struct element to protocol tree
  if show.sequenced_message then
    local length = memx_options_riskcontrol_sbe_v1_6.sequenced_message.size(buffer, offset)
    local range = buffer(offset, length)
    local display = memx_options_riskcontrol_sbe_v1_6.sequenced_message.display(buffer, packet, parent)
    parent = parent:add(omi_memx_options_riskcontrol_sbe_v1_6.fields.sequenced_message, range, display)
  end

  return memx_options_riskcontrol_sbe_v1_6.sequenced_message.fields(buffer, offset, packet, parent)
end

-- Total Sequence Count
memx_options_riskcontrol_sbe_v1_6.total_sequence_count = {}

-- Size: Total Sequence Count
memx_options_riskcontrol_sbe_v1_6.total_sequence_count.size = 8

-- Display: Total Sequence Count
memx_options_riskcontrol_sbe_v1_6.total_sequence_count.display = function(value)
  return "Total Sequence Count: "..value
end

-- Dissect: Total Sequence Count
memx_options_riskcontrol_sbe_v1_6.total_sequence_count.dissect = function(buffer, offset, packet, parent)
  local length = memx_options_riskcontrol_sbe_v1_6.total_sequence_count.size
  local range = buffer(offset, length)
  local value = range:uint64()
  local display = memx_options_riskcontrol_sbe_v1_6.total_sequence_count.display(value, buffer, offset, packet, parent)

  parent:add(omi_memx_options_riskcontrol_sbe_v1_6.fields.total_sequence_count, range, value, display)

  return offset + length, value
end

-- Stream Complete Message
memx_options_riskcontrol_sbe_v1_6.stream_complete_message = {}

-- Size: Stream Complete Message
memx_options_riskcontrol_sbe_v1_6.stream_complete_message.size =
  memx_options_riskcontrol_sbe_v1_6.total_sequence_count.size

-- Display: Stream Complete Message
memx_options_riskcontrol_sbe_v1_6.stream_complete_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Stream Complete Message
memx_options_riskcontrol_sbe_v1_6.stream_complete_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Total Sequence Count: 8 Byte Unsigned Fixed Width Integer
  index, total_sequence_count = memx_options_riskcontrol_sbe_v1_6.total_sequence_count.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Stream Complete Message
memx_options_riskcontrol_sbe_v1_6.stream_complete_message.dissect = function(buffer, offset, packet, parent)
  if show.stream_complete_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_memx_options_riskcontrol_sbe_v1_6.fields.stream_complete_message, buffer(offset, 0))
    local index = memx_options_riskcontrol_sbe_v1_6.stream_complete_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = memx_options_riskcontrol_sbe_v1_6.stream_complete_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return memx_options_riskcontrol_sbe_v1_6.stream_complete_message.fields(buffer, offset, packet, parent)
  end
end

-- Stream Reject Code
memx_options_riskcontrol_sbe_v1_6.stream_reject_code = {}

-- Size: Stream Reject Code
memx_options_riskcontrol_sbe_v1_6.stream_reject_code.size = 1

-- Display: Stream Reject Code
memx_options_riskcontrol_sbe_v1_6.stream_reject_code.display = function(value)
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
memx_options_riskcontrol_sbe_v1_6.stream_reject_code.dissect = function(buffer, offset, packet, parent)
  local length = memx_options_riskcontrol_sbe_v1_6.stream_reject_code.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = memx_options_riskcontrol_sbe_v1_6.stream_reject_code.display(value, buffer, offset, packet, parent)

  parent:add(omi_memx_options_riskcontrol_sbe_v1_6.fields.stream_reject_code, range, value, display)

  return offset + length, value
end

-- Stream Rejected Message
memx_options_riskcontrol_sbe_v1_6.stream_rejected_message = {}

-- Size: Stream Rejected Message
memx_options_riskcontrol_sbe_v1_6.stream_rejected_message.size =
  memx_options_riskcontrol_sbe_v1_6.stream_reject_code.size

-- Display: Stream Rejected Message
memx_options_riskcontrol_sbe_v1_6.stream_rejected_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Stream Rejected Message
memx_options_riskcontrol_sbe_v1_6.stream_rejected_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Stream Reject Code: 1 Byte Ascii String Enum with 3 values
  index, stream_reject_code = memx_options_riskcontrol_sbe_v1_6.stream_reject_code.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Stream Rejected Message
memx_options_riskcontrol_sbe_v1_6.stream_rejected_message.dissect = function(buffer, offset, packet, parent)
  if show.stream_rejected_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_memx_options_riskcontrol_sbe_v1_6.fields.stream_rejected_message, buffer(offset, 0))
    local index = memx_options_riskcontrol_sbe_v1_6.stream_rejected_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = memx_options_riskcontrol_sbe_v1_6.stream_rejected_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return memx_options_riskcontrol_sbe_v1_6.stream_rejected_message.fields(buffer, offset, packet, parent)
  end
end

-- Max Sequence Number
memx_options_riskcontrol_sbe_v1_6.max_sequence_number = {}

-- Size: Max Sequence Number
memx_options_riskcontrol_sbe_v1_6.max_sequence_number.size = 8

-- Display: Max Sequence Number
memx_options_riskcontrol_sbe_v1_6.max_sequence_number.display = function(value)
  return "Max Sequence Number: "..value
end

-- Dissect: Max Sequence Number
memx_options_riskcontrol_sbe_v1_6.max_sequence_number.dissect = function(buffer, offset, packet, parent)
  local length = memx_options_riskcontrol_sbe_v1_6.max_sequence_number.size
  local range = buffer(offset, length)
  local value = range:uint64()
  local display = memx_options_riskcontrol_sbe_v1_6.max_sequence_number.display(value, buffer, offset, packet, parent)

  parent:add(omi_memx_options_riskcontrol_sbe_v1_6.fields.max_sequence_number, range, value, display)

  return offset + length, value
end

-- Next Sequence Number
memx_options_riskcontrol_sbe_v1_6.next_sequence_number = {}

-- Size: Next Sequence Number
memx_options_riskcontrol_sbe_v1_6.next_sequence_number.size = 8

-- Display: Next Sequence Number
memx_options_riskcontrol_sbe_v1_6.next_sequence_number.display = function(value)
  return "Next Sequence Number: "..value
end

-- Dissect: Next Sequence Number
memx_options_riskcontrol_sbe_v1_6.next_sequence_number.dissect = function(buffer, offset, packet, parent)
  local length = memx_options_riskcontrol_sbe_v1_6.next_sequence_number.size
  local range = buffer(offset, length)
  local value = range:uint64()
  local display = memx_options_riskcontrol_sbe_v1_6.next_sequence_number.display(value, buffer, offset, packet, parent)

  parent:add(omi_memx_options_riskcontrol_sbe_v1_6.fields.next_sequence_number, range, value, display)

  return offset + length, value
end

-- Stream Begin Message
memx_options_riskcontrol_sbe_v1_6.stream_begin_message = {}

-- Size: Stream Begin Message
memx_options_riskcontrol_sbe_v1_6.stream_begin_message.size =
  memx_options_riskcontrol_sbe_v1_6.next_sequence_number.size + 
  memx_options_riskcontrol_sbe_v1_6.max_sequence_number.size

-- Display: Stream Begin Message
memx_options_riskcontrol_sbe_v1_6.stream_begin_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Stream Begin Message
memx_options_riskcontrol_sbe_v1_6.stream_begin_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Next Sequence Number: 8 Byte Unsigned Fixed Width Integer
  index, next_sequence_number = memx_options_riskcontrol_sbe_v1_6.next_sequence_number.dissect(buffer, index, packet, parent)

  -- Max Sequence Number: 8 Byte Unsigned Fixed Width Integer
  index, max_sequence_number = memx_options_riskcontrol_sbe_v1_6.max_sequence_number.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Stream Begin Message
memx_options_riskcontrol_sbe_v1_6.stream_begin_message.dissect = function(buffer, offset, packet, parent)
  if show.stream_begin_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_memx_options_riskcontrol_sbe_v1_6.fields.stream_begin_message, buffer(offset, 0))
    local index = memx_options_riskcontrol_sbe_v1_6.stream_begin_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = memx_options_riskcontrol_sbe_v1_6.stream_begin_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return memx_options_riskcontrol_sbe_v1_6.stream_begin_message.fields(buffer, offset, packet, parent)
  end
end

-- Message Count
memx_options_riskcontrol_sbe_v1_6.message_count = {}

-- Size: Message Count
memx_options_riskcontrol_sbe_v1_6.message_count.size = 8

-- Display: Message Count
memx_options_riskcontrol_sbe_v1_6.message_count.display = function(value)
  return "Message Count: "..value
end

-- Dissect: Message Count
memx_options_riskcontrol_sbe_v1_6.message_count.dissect = function(buffer, offset, packet, parent)
  local length = memx_options_riskcontrol_sbe_v1_6.message_count.size
  local range = buffer(offset, length)
  local value = range:uint64()
  local display = memx_options_riskcontrol_sbe_v1_6.message_count.display(value, buffer, offset, packet, parent)

  parent:add(omi_memx_options_riskcontrol_sbe_v1_6.fields.message_count, range, value, display)

  return offset + length, value
end

-- Replay Complete Message
memx_options_riskcontrol_sbe_v1_6.replay_complete_message = {}

-- Size: Replay Complete Message
memx_options_riskcontrol_sbe_v1_6.replay_complete_message.size =
  memx_options_riskcontrol_sbe_v1_6.message_count.size

-- Display: Replay Complete Message
memx_options_riskcontrol_sbe_v1_6.replay_complete_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Replay Complete Message
memx_options_riskcontrol_sbe_v1_6.replay_complete_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Message Count: 8 Byte Unsigned Fixed Width Integer
  index, message_count = memx_options_riskcontrol_sbe_v1_6.message_count.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Replay Complete Message
memx_options_riskcontrol_sbe_v1_6.replay_complete_message.dissect = function(buffer, offset, packet, parent)
  if show.replay_complete_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_memx_options_riskcontrol_sbe_v1_6.fields.replay_complete_message, buffer(offset, 0))
    local index = memx_options_riskcontrol_sbe_v1_6.replay_complete_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = memx_options_riskcontrol_sbe_v1_6.replay_complete_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return memx_options_riskcontrol_sbe_v1_6.replay_complete_message.fields(buffer, offset, packet, parent)
  end
end

-- Replay Reject Code
memx_options_riskcontrol_sbe_v1_6.replay_reject_code = {}

-- Size: Replay Reject Code
memx_options_riskcontrol_sbe_v1_6.replay_reject_code.size = 1

-- Display: Replay Reject Code
memx_options_riskcontrol_sbe_v1_6.replay_reject_code.display = function(value)
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
memx_options_riskcontrol_sbe_v1_6.replay_reject_code.dissect = function(buffer, offset, packet, parent)
  local length = memx_options_riskcontrol_sbe_v1_6.replay_reject_code.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = memx_options_riskcontrol_sbe_v1_6.replay_reject_code.display(value, buffer, offset, packet, parent)

  parent:add(omi_memx_options_riskcontrol_sbe_v1_6.fields.replay_reject_code, range, value, display)

  return offset + length, value
end

-- Replay Rejected Message
memx_options_riskcontrol_sbe_v1_6.replay_rejected_message = {}

-- Size: Replay Rejected Message
memx_options_riskcontrol_sbe_v1_6.replay_rejected_message.size =
  memx_options_riskcontrol_sbe_v1_6.replay_reject_code.size

-- Display: Replay Rejected Message
memx_options_riskcontrol_sbe_v1_6.replay_rejected_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Replay Rejected Message
memx_options_riskcontrol_sbe_v1_6.replay_rejected_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Replay Reject Code: 1 Byte Ascii String Enum with 4 values
  index, replay_reject_code = memx_options_riskcontrol_sbe_v1_6.replay_reject_code.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Replay Rejected Message
memx_options_riskcontrol_sbe_v1_6.replay_rejected_message.dissect = function(buffer, offset, packet, parent)
  if show.replay_rejected_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_memx_options_riskcontrol_sbe_v1_6.fields.replay_rejected_message, buffer(offset, 0))
    local index = memx_options_riskcontrol_sbe_v1_6.replay_rejected_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = memx_options_riskcontrol_sbe_v1_6.replay_rejected_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return memx_options_riskcontrol_sbe_v1_6.replay_rejected_message.fields(buffer, offset, packet, parent)
  end
end

-- Pending Message Count
memx_options_riskcontrol_sbe_v1_6.pending_message_count = {}

-- Size: Pending Message Count
memx_options_riskcontrol_sbe_v1_6.pending_message_count.size = 4

-- Display: Pending Message Count
memx_options_riskcontrol_sbe_v1_6.pending_message_count.display = function(value)
  return "Pending Message Count: "..value
end

-- Dissect: Pending Message Count
memx_options_riskcontrol_sbe_v1_6.pending_message_count.dissect = function(buffer, offset, packet, parent)
  local length = memx_options_riskcontrol_sbe_v1_6.pending_message_count.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = memx_options_riskcontrol_sbe_v1_6.pending_message_count.display(value, buffer, offset, packet, parent)

  parent:add(omi_memx_options_riskcontrol_sbe_v1_6.fields.pending_message_count, range, value, display)

  return offset + length, value
end

-- Replay Begin Message
memx_options_riskcontrol_sbe_v1_6.replay_begin_message = {}

-- Size: Replay Begin Message
memx_options_riskcontrol_sbe_v1_6.replay_begin_message.size =
  memx_options_riskcontrol_sbe_v1_6.next_sequence_number.size + 
  memx_options_riskcontrol_sbe_v1_6.pending_message_count.size

-- Display: Replay Begin Message
memx_options_riskcontrol_sbe_v1_6.replay_begin_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Replay Begin Message
memx_options_riskcontrol_sbe_v1_6.replay_begin_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Next Sequence Number: 8 Byte Unsigned Fixed Width Integer
  index, next_sequence_number = memx_options_riskcontrol_sbe_v1_6.next_sequence_number.dissect(buffer, index, packet, parent)

  -- Pending Message Count: 4 Byte Unsigned Fixed Width Integer
  index, pending_message_count = memx_options_riskcontrol_sbe_v1_6.pending_message_count.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Replay Begin Message
memx_options_riskcontrol_sbe_v1_6.replay_begin_message.dissect = function(buffer, offset, packet, parent)
  if show.replay_begin_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_memx_options_riskcontrol_sbe_v1_6.fields.replay_begin_message, buffer(offset, 0))
    local index = memx_options_riskcontrol_sbe_v1_6.replay_begin_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = memx_options_riskcontrol_sbe_v1_6.replay_begin_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return memx_options_riskcontrol_sbe_v1_6.replay_begin_message.fields(buffer, offset, packet, parent)
  end
end

-- Session Id
memx_options_riskcontrol_sbe_v1_6.session_id = {}

-- Size: Session Id
memx_options_riskcontrol_sbe_v1_6.session_id.size = 8

-- Display: Session Id
memx_options_riskcontrol_sbe_v1_6.session_id.display = function(value)
  return "Session Id: "..value
end

-- Dissect: Session Id
memx_options_riskcontrol_sbe_v1_6.session_id.dissect = function(buffer, offset, packet, parent)
  local length = memx_options_riskcontrol_sbe_v1_6.session_id.size
  local range = buffer(offset, length)
  local value = range:uint64()
  local display = memx_options_riskcontrol_sbe_v1_6.session_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_memx_options_riskcontrol_sbe_v1_6.fields.session_id, range, value, display)

  return offset + length, value
end

-- Start Of Session Message
memx_options_riskcontrol_sbe_v1_6.start_of_session_message = {}

-- Size: Start Of Session Message
memx_options_riskcontrol_sbe_v1_6.start_of_session_message.size =
  memx_options_riskcontrol_sbe_v1_6.session_id.size

-- Display: Start Of Session Message
memx_options_riskcontrol_sbe_v1_6.start_of_session_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Start Of Session Message
memx_options_riskcontrol_sbe_v1_6.start_of_session_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Session Id: 8 Byte Unsigned Fixed Width Integer
  index, session_id = memx_options_riskcontrol_sbe_v1_6.session_id.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Start Of Session Message
memx_options_riskcontrol_sbe_v1_6.start_of_session_message.dissect = function(buffer, offset, packet, parent)
  if show.start_of_session_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_memx_options_riskcontrol_sbe_v1_6.fields.start_of_session_message, buffer(offset, 0))
    local index = memx_options_riskcontrol_sbe_v1_6.start_of_session_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = memx_options_riskcontrol_sbe_v1_6.start_of_session_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return memx_options_riskcontrol_sbe_v1_6.start_of_session_message.fields(buffer, offset, packet, parent)
  end
end

-- Login Reject Code
memx_options_riskcontrol_sbe_v1_6.login_reject_code = {}

-- Size: Login Reject Code
memx_options_riskcontrol_sbe_v1_6.login_reject_code.size = 1

-- Display: Login Reject Code
memx_options_riskcontrol_sbe_v1_6.login_reject_code.display = function(value)
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
memx_options_riskcontrol_sbe_v1_6.login_reject_code.dissect = function(buffer, offset, packet, parent)
  local length = memx_options_riskcontrol_sbe_v1_6.login_reject_code.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = memx_options_riskcontrol_sbe_v1_6.login_reject_code.display(value, buffer, offset, packet, parent)

  parent:add(omi_memx_options_riskcontrol_sbe_v1_6.fields.login_reject_code, range, value, display)

  return offset + length, value
end

-- Login Rejected Message
memx_options_riskcontrol_sbe_v1_6.login_rejected_message = {}

-- Size: Login Rejected Message
memx_options_riskcontrol_sbe_v1_6.login_rejected_message.size =
  memx_options_riskcontrol_sbe_v1_6.login_reject_code.size

-- Display: Login Rejected Message
memx_options_riskcontrol_sbe_v1_6.login_rejected_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Login Rejected Message
memx_options_riskcontrol_sbe_v1_6.login_rejected_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Login Reject Code: 1 Byte Ascii String Enum with 4 values
  index, login_reject_code = memx_options_riskcontrol_sbe_v1_6.login_reject_code.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Login Rejected Message
memx_options_riskcontrol_sbe_v1_6.login_rejected_message.dissect = function(buffer, offset, packet, parent)
  if show.login_rejected_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_memx_options_riskcontrol_sbe_v1_6.fields.login_rejected_message, buffer(offset, 0))
    local index = memx_options_riskcontrol_sbe_v1_6.login_rejected_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = memx_options_riskcontrol_sbe_v1_6.login_rejected_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return memx_options_riskcontrol_sbe_v1_6.login_rejected_message.fields(buffer, offset, packet, parent)
  end
end

-- Supported Request Mode
memx_options_riskcontrol_sbe_v1_6.supported_request_mode = {}

-- Size: Supported Request Mode
memx_options_riskcontrol_sbe_v1_6.supported_request_mode.size = 1

-- Display: Supported Request Mode
memx_options_riskcontrol_sbe_v1_6.supported_request_mode.display = function(value)
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
memx_options_riskcontrol_sbe_v1_6.supported_request_mode.dissect = function(buffer, offset, packet, parent)
  local length = memx_options_riskcontrol_sbe_v1_6.supported_request_mode.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = memx_options_riskcontrol_sbe_v1_6.supported_request_mode.display(value, buffer, offset, packet, parent)

  parent:add(omi_memx_options_riskcontrol_sbe_v1_6.fields.supported_request_mode, range, value, display)

  return offset + length, value
end

-- Login Accepted Message
memx_options_riskcontrol_sbe_v1_6.login_accepted_message = {}

-- Size: Login Accepted Message
memx_options_riskcontrol_sbe_v1_6.login_accepted_message.size =
  memx_options_riskcontrol_sbe_v1_6.supported_request_mode.size

-- Display: Login Accepted Message
memx_options_riskcontrol_sbe_v1_6.login_accepted_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Login Accepted Message
memx_options_riskcontrol_sbe_v1_6.login_accepted_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Supported Request Mode: 1 Byte Ascii String Enum with 3 values
  index, supported_request_mode = memx_options_riskcontrol_sbe_v1_6.supported_request_mode.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Login Accepted Message
memx_options_riskcontrol_sbe_v1_6.login_accepted_message.dissect = function(buffer, offset, packet, parent)
  if show.login_accepted_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_memx_options_riskcontrol_sbe_v1_6.fields.login_accepted_message, buffer(offset, 0))
    local index = memx_options_riskcontrol_sbe_v1_6.login_accepted_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = memx_options_riskcontrol_sbe_v1_6.login_accepted_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return memx_options_riskcontrol_sbe_v1_6.login_accepted_message.fields(buffer, offset, packet, parent)
  end
end

-- Unsequenced Message
memx_options_riskcontrol_sbe_v1_6.unsequenced_message = {}

-- Calculate size of: Unsequenced Message
memx_options_riskcontrol_sbe_v1_6.unsequenced_message.size = function(buffer, offset)
  local index = 0

  index = index + memx_options_riskcontrol_sbe_v1_6.sbe_message.size(buffer, offset + index)

  return index
end

-- Display: Unsequenced Message
memx_options_riskcontrol_sbe_v1_6.unsequenced_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Unsequenced Message
memx_options_riskcontrol_sbe_v1_6.unsequenced_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Sbe Message: Struct of 2 fields
  index, sbe_message = memx_options_riskcontrol_sbe_v1_6.sbe_message.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Unsequenced Message
memx_options_riskcontrol_sbe_v1_6.unsequenced_message.dissect = function(buffer, offset, packet, parent)
  -- Optionally add dynamic struct element to protocol tree
  if show.unsequenced_message then
    local length = memx_options_riskcontrol_sbe_v1_6.unsequenced_message.size(buffer, offset)
    local range = buffer(offset, length)
    local display = memx_options_riskcontrol_sbe_v1_6.unsequenced_message.display(buffer, packet, parent)
    parent = parent:add(omi_memx_options_riskcontrol_sbe_v1_6.fields.unsequenced_message, range, display)
  end

  return memx_options_riskcontrol_sbe_v1_6.unsequenced_message.fields(buffer, offset, packet, parent)
end

-- Stream Request Message
memx_options_riskcontrol_sbe_v1_6.stream_request_message = {}

-- Size: Stream Request Message
memx_options_riskcontrol_sbe_v1_6.stream_request_message.size =
  memx_options_riskcontrol_sbe_v1_6.session_id.size + 
  memx_options_riskcontrol_sbe_v1_6.next_sequence_number.size

-- Display: Stream Request Message
memx_options_riskcontrol_sbe_v1_6.stream_request_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Stream Request Message
memx_options_riskcontrol_sbe_v1_6.stream_request_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Session Id: 8 Byte Unsigned Fixed Width Integer
  index, session_id = memx_options_riskcontrol_sbe_v1_6.session_id.dissect(buffer, index, packet, parent)

  -- Next Sequence Number: 8 Byte Unsigned Fixed Width Integer
  index, next_sequence_number = memx_options_riskcontrol_sbe_v1_6.next_sequence_number.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Stream Request Message
memx_options_riskcontrol_sbe_v1_6.stream_request_message.dissect = function(buffer, offset, packet, parent)
  if show.stream_request_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_memx_options_riskcontrol_sbe_v1_6.fields.stream_request_message, buffer(offset, 0))
    local index = memx_options_riskcontrol_sbe_v1_6.stream_request_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = memx_options_riskcontrol_sbe_v1_6.stream_request_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return memx_options_riskcontrol_sbe_v1_6.stream_request_message.fields(buffer, offset, packet, parent)
  end
end

-- Replay All Request Message
memx_options_riskcontrol_sbe_v1_6.replay_all_request_message = {}

-- Size: Replay All Request Message
memx_options_riskcontrol_sbe_v1_6.replay_all_request_message.size =
  memx_options_riskcontrol_sbe_v1_6.session_id.size

-- Display: Replay All Request Message
memx_options_riskcontrol_sbe_v1_6.replay_all_request_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Replay All Request Message
memx_options_riskcontrol_sbe_v1_6.replay_all_request_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Session Id: 8 Byte Unsigned Fixed Width Integer
  index, session_id = memx_options_riskcontrol_sbe_v1_6.session_id.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Replay All Request Message
memx_options_riskcontrol_sbe_v1_6.replay_all_request_message.dissect = function(buffer, offset, packet, parent)
  if show.replay_all_request_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_memx_options_riskcontrol_sbe_v1_6.fields.replay_all_request_message, buffer(offset, 0))
    local index = memx_options_riskcontrol_sbe_v1_6.replay_all_request_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = memx_options_riskcontrol_sbe_v1_6.replay_all_request_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return memx_options_riskcontrol_sbe_v1_6.replay_all_request_message.fields(buffer, offset, packet, parent)
  end
end

-- Replay Request Message
memx_options_riskcontrol_sbe_v1_6.replay_request_message = {}

-- Size: Replay Request Message
memx_options_riskcontrol_sbe_v1_6.replay_request_message.size =
  memx_options_riskcontrol_sbe_v1_6.session_id.size + 
  memx_options_riskcontrol_sbe_v1_6.next_sequence_number.size + 
  memx_options_riskcontrol_sbe_v1_6.count.size

-- Display: Replay Request Message
memx_options_riskcontrol_sbe_v1_6.replay_request_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Replay Request Message
memx_options_riskcontrol_sbe_v1_6.replay_request_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Session Id: 8 Byte Unsigned Fixed Width Integer
  index, session_id = memx_options_riskcontrol_sbe_v1_6.session_id.dissect(buffer, index, packet, parent)

  -- Next Sequence Number: 8 Byte Unsigned Fixed Width Integer
  index, next_sequence_number = memx_options_riskcontrol_sbe_v1_6.next_sequence_number.dissect(buffer, index, packet, parent)

  -- Count: 4 Byte Unsigned Fixed Width Integer
  index, count = memx_options_riskcontrol_sbe_v1_6.count.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Replay Request Message
memx_options_riskcontrol_sbe_v1_6.replay_request_message.dissect = function(buffer, offset, packet, parent)
  if show.replay_request_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_memx_options_riskcontrol_sbe_v1_6.fields.replay_request_message, buffer(offset, 0))
    local index = memx_options_riskcontrol_sbe_v1_6.replay_request_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = memx_options_riskcontrol_sbe_v1_6.replay_request_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return memx_options_riskcontrol_sbe_v1_6.replay_request_message.fields(buffer, offset, packet, parent)
  end
end

-- Token
memx_options_riskcontrol_sbe_v1_6.token = {}

-- Size: Token
memx_options_riskcontrol_sbe_v1_6.token.size = 1

-- Display: Token
memx_options_riskcontrol_sbe_v1_6.token.display = function(value)
  return "Token: "..value
end

-- Dissect: Token
memx_options_riskcontrol_sbe_v1_6.token.dissect = function(buffer, offset, packet, parent)
  local length = memx_options_riskcontrol_sbe_v1_6.token.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = memx_options_riskcontrol_sbe_v1_6.token.display(value, buffer, offset, packet, parent)

  parent:add(omi_memx_options_riskcontrol_sbe_v1_6.fields.token, range, value, display)

  return offset + length, value
end

-- Token Type
memx_options_riskcontrol_sbe_v1_6.token_type = {}

-- Size: Token Type
memx_options_riskcontrol_sbe_v1_6.token_type.size = 1

-- Display: Token Type
memx_options_riskcontrol_sbe_v1_6.token_type.display = function(value)
  return "Token Type: "..value
end

-- Dissect: Token Type
memx_options_riskcontrol_sbe_v1_6.token_type.dissect = function(buffer, offset, packet, parent)
  local length = memx_options_riskcontrol_sbe_v1_6.token_type.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = memx_options_riskcontrol_sbe_v1_6.token_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_memx_options_riskcontrol_sbe_v1_6.fields.token_type, range, value, display)

  return offset + length, value
end

-- Login Request Message
memx_options_riskcontrol_sbe_v1_6.login_request_message = {}

-- Size: Login Request Message
memx_options_riskcontrol_sbe_v1_6.login_request_message.size =
  memx_options_riskcontrol_sbe_v1_6.token_type.size + 
  memx_options_riskcontrol_sbe_v1_6.token.size

-- Display: Login Request Message
memx_options_riskcontrol_sbe_v1_6.login_request_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Login Request Message
memx_options_riskcontrol_sbe_v1_6.login_request_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Token Type: 1 Byte Ascii String
  index, token_type = memx_options_riskcontrol_sbe_v1_6.token_type.dissect(buffer, index, packet, parent)

  -- Token: 1 Byte Ascii String
  index, token = memx_options_riskcontrol_sbe_v1_6.token.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Login Request Message
memx_options_riskcontrol_sbe_v1_6.login_request_message.dissect = function(buffer, offset, packet, parent)
  if show.login_request_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_memx_options_riskcontrol_sbe_v1_6.fields.login_request_message, buffer(offset, 0))
    local index = memx_options_riskcontrol_sbe_v1_6.login_request_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = memx_options_riskcontrol_sbe_v1_6.login_request_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return memx_options_riskcontrol_sbe_v1_6.login_request_message.fields(buffer, offset, packet, parent)
  end
end

-- Data
memx_options_riskcontrol_sbe_v1_6.data = {}

-- Size: Data
memx_options_riskcontrol_sbe_v1_6.data.size = function(buffer, offset, message_type)
  -- Size of Login Request Message
  if message_type == 100 then
    return memx_options_riskcontrol_sbe_v1_6.login_request_message.size
  end
  -- Size of Replay Request Message
  if message_type == 101 then
    return memx_options_riskcontrol_sbe_v1_6.replay_request_message.size
  end
  -- Size of Replay All Request Message
  if message_type == 102 then
    return memx_options_riskcontrol_sbe_v1_6.replay_all_request_message.size
  end
  -- Size of Stream Request Message
  if message_type == 103 then
    return memx_options_riskcontrol_sbe_v1_6.stream_request_message.size
  end
  -- Size of Unsequenced Message
  if message_type == 104 then
    return memx_options_riskcontrol_sbe_v1_6.unsequenced_message.size(buffer, offset)
  end
  -- Size of Login Accepted Message
  if message_type == 1 then
    return memx_options_riskcontrol_sbe_v1_6.login_accepted_message.size
  end
  -- Size of Login Rejected Message
  if message_type == 2 then
    return memx_options_riskcontrol_sbe_v1_6.login_rejected_message.size
  end
  -- Size of Start Of Session Message
  if message_type == 3 then
    return memx_options_riskcontrol_sbe_v1_6.start_of_session_message.size
  end
  -- Size of Replay Begin Message
  if message_type == 5 then
    return memx_options_riskcontrol_sbe_v1_6.replay_begin_message.size
  end
  -- Size of Replay Rejected Message
  if message_type == 6 then
    return memx_options_riskcontrol_sbe_v1_6.replay_rejected_message.size
  end
  -- Size of Replay Complete Message
  if message_type == 7 then
    return memx_options_riskcontrol_sbe_v1_6.replay_complete_message.size
  end
  -- Size of Stream Begin Message
  if message_type == 8 then
    return memx_options_riskcontrol_sbe_v1_6.stream_begin_message.size
  end
  -- Size of Stream Rejected Message
  if message_type == 9 then
    return memx_options_riskcontrol_sbe_v1_6.stream_rejected_message.size
  end
  -- Size of Stream Complete Message
  if message_type == 10 then
    return memx_options_riskcontrol_sbe_v1_6.stream_complete_message.size
  end
  -- Size of Sequenced Message
  if message_type == 11 then
    return memx_options_riskcontrol_sbe_v1_6.sequenced_message.size(buffer, offset)
  end

  return 0
end

-- Display: Data
memx_options_riskcontrol_sbe_v1_6.data.display = function(buffer, offset, packet, parent)
  return ""
end

-- Dissect Branches: Data
memx_options_riskcontrol_sbe_v1_6.data.branches = function(buffer, offset, packet, parent, message_type)
  -- Dissect Login Request Message
  if message_type == 100 then
    return memx_options_riskcontrol_sbe_v1_6.login_request_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Replay Request Message
  if message_type == 101 then
    return memx_options_riskcontrol_sbe_v1_6.replay_request_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Replay All Request Message
  if message_type == 102 then
    return memx_options_riskcontrol_sbe_v1_6.replay_all_request_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Stream Request Message
  if message_type == 103 then
    return memx_options_riskcontrol_sbe_v1_6.stream_request_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Unsequenced Message
  if message_type == 104 then
    return memx_options_riskcontrol_sbe_v1_6.unsequenced_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Login Accepted Message
  if message_type == 1 then
    return memx_options_riskcontrol_sbe_v1_6.login_accepted_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Login Rejected Message
  if message_type == 2 then
    return memx_options_riskcontrol_sbe_v1_6.login_rejected_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Start Of Session Message
  if message_type == 3 then
    return memx_options_riskcontrol_sbe_v1_6.start_of_session_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Replay Begin Message
  if message_type == 5 then
    return memx_options_riskcontrol_sbe_v1_6.replay_begin_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Replay Rejected Message
  if message_type == 6 then
    return memx_options_riskcontrol_sbe_v1_6.replay_rejected_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Replay Complete Message
  if message_type == 7 then
    return memx_options_riskcontrol_sbe_v1_6.replay_complete_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Stream Begin Message
  if message_type == 8 then
    return memx_options_riskcontrol_sbe_v1_6.stream_begin_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Stream Rejected Message
  if message_type == 9 then
    return memx_options_riskcontrol_sbe_v1_6.stream_rejected_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Stream Complete Message
  if message_type == 10 then
    return memx_options_riskcontrol_sbe_v1_6.stream_complete_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Sequenced Message
  if message_type == 11 then
    return memx_options_riskcontrol_sbe_v1_6.sequenced_message.dissect(buffer, offset, packet, parent)
  end

  return offset
end

-- Dissect: Data
memx_options_riskcontrol_sbe_v1_6.data.dissect = function(buffer, offset, packet, parent, message_type)
  if not show.data then
    return memx_options_riskcontrol_sbe_v1_6.data.branches(buffer, offset, packet, parent, message_type)
  end

  -- Calculate size and check that branch is not empty
  local size = memx_options_riskcontrol_sbe_v1_6.data.size(buffer, offset, message_type)
  if size == 0 then
    return offset
  end

  -- Dissect Element
  local range = buffer(offset, size)
  local display = memx_options_riskcontrol_sbe_v1_6.data.display(buffer, packet, parent)
  local element = parent:add(omi_memx_options_riskcontrol_sbe_v1_6.fields.data, range, display)

  return memx_options_riskcontrol_sbe_v1_6.data.branches(buffer, offset, packet, parent, message_type)
end

-- Message Length
memx_options_riskcontrol_sbe_v1_6.message_length = {}

-- Size: Message Length
memx_options_riskcontrol_sbe_v1_6.message_length.size = 2

-- Display: Message Length
memx_options_riskcontrol_sbe_v1_6.message_length.display = function(value)
  return "Message Length: "..value
end

-- Dissect: Message Length
memx_options_riskcontrol_sbe_v1_6.message_length.dissect = function(buffer, offset, packet, parent)
  local length = memx_options_riskcontrol_sbe_v1_6.message_length.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = memx_options_riskcontrol_sbe_v1_6.message_length.display(value, buffer, offset, packet, parent)

  parent:add(omi_memx_options_riskcontrol_sbe_v1_6.fields.message_length, range, value, display)

  return offset + length, value
end

-- Message Type
memx_options_riskcontrol_sbe_v1_6.message_type = {}

-- Size: Message Type
memx_options_riskcontrol_sbe_v1_6.message_type.size = 1

-- Display: Message Type
memx_options_riskcontrol_sbe_v1_6.message_type.display = function(value)
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
memx_options_riskcontrol_sbe_v1_6.message_type.dissect = function(buffer, offset, packet, parent)
  local length = memx_options_riskcontrol_sbe_v1_6.message_type.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = memx_options_riskcontrol_sbe_v1_6.message_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_memx_options_riskcontrol_sbe_v1_6.fields.message_type, range, value, display)

  return offset + length, value
end

-- Common Header
memx_options_riskcontrol_sbe_v1_6.common_header = {}

-- Size: Common Header
memx_options_riskcontrol_sbe_v1_6.common_header.size =
  memx_options_riskcontrol_sbe_v1_6.message_type.size + 
  memx_options_riskcontrol_sbe_v1_6.message_length.size

-- Display: Common Header
memx_options_riskcontrol_sbe_v1_6.common_header.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Common Header
memx_options_riskcontrol_sbe_v1_6.common_header.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Message Type: 1 Byte Unsigned Fixed Width Integer Enum with 16 values
  index, message_type = memx_options_riskcontrol_sbe_v1_6.message_type.dissect(buffer, index, packet, parent)

  -- Message Length: 2 Byte Unsigned Fixed Width Integer
  index, message_length = memx_options_riskcontrol_sbe_v1_6.message_length.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Common Header
memx_options_riskcontrol_sbe_v1_6.common_header.dissect = function(buffer, offset, packet, parent)
  if show.common_header then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_memx_options_riskcontrol_sbe_v1_6.fields.common_header, buffer(offset, 0))
    local index = memx_options_riskcontrol_sbe_v1_6.common_header.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = memx_options_riskcontrol_sbe_v1_6.common_header.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return memx_options_riskcontrol_sbe_v1_6.common_header.fields(buffer, offset, packet, parent)
  end
end

-- Packet
memx_options_riskcontrol_sbe_v1_6.packet = {}

-- Dissect Packet
memx_options_riskcontrol_sbe_v1_6.packet.dissect = function(buffer, packet, parent)
  local index = 0

  -- Common Header: Struct of 2 fields
  index, common_header = memx_options_riskcontrol_sbe_v1_6.common_header.dissect(buffer, index, packet, parent)

  -- Dependency element: Message Type
  local message_type = buffer(index - 3, 1):uint()

  -- Data: Runtime Type with 15 branches
  index = memx_options_riskcontrol_sbe_v1_6.data.dissect(buffer, index, packet, parent, message_type)

  return index
end


-----------------------------------------------------------------------
-- Protocol Dissector and Components
-----------------------------------------------------------------------

-- Initialize Dissector
function omi_memx_options_riskcontrol_sbe_v1_6.init()
end

-- Dissector for Memx Options RiskControl Sbe 1.6
function omi_memx_options_riskcontrol_sbe_v1_6.dissector(buffer, packet, parent)

  -- Set protocol name
  packet.cols.protocol = omi_memx_options_riskcontrol_sbe_v1_6.name

  -- Dissect protocol
  local protocol = parent:add(omi_memx_options_riskcontrol_sbe_v1_6, buffer(), omi_memx_options_riskcontrol_sbe_v1_6.description, "("..buffer:len().." Bytes)")
  return memx_options_riskcontrol_sbe_v1_6.packet.dissect(buffer, packet, protocol)
end

-- Register With Tcp Table
local tcp_table = DissectorTable.get("tcp.port")
tcp_table:add(65333, omi_memx_options_riskcontrol_sbe_v1_6)


-----------------------------------------------------------------------
-- Protocol Heuristics
-----------------------------------------------------------------------

-- Verify size of packet
memx_options_riskcontrol_sbe_v1_6.packet.requiredsize = function(buffer)

  return true
end

-- Verify Schema Id Field
memx_options_riskcontrol_sbe_v1_6.schema_id.verify = function(buffer)
  -- Attempt to read field
  local value = buffer(52, 1):uint()

  if value == 12 then
    return true
  end

  return false
end

-- Verify Version Field
memx_options_riskcontrol_sbe_v1_6.version.verify = function(buffer)
  -- Attempt to read field
  local value = buffer(53, 2):uint()

  if value == 262 then
    return true
  end

  return false
end

-- Verify Schema Id Field
memx_options_riskcontrol_sbe_v1_6.schema_id.verify = function(buffer)
  -- Attempt to read field
  local value = buffer(1931, 1):uint()

  if value == 12 then
    return true
  end

  return false
end

-- Verify Version Field
memx_options_riskcontrol_sbe_v1_6.version.verify = function(buffer)
  -- Attempt to read field
  local value = buffer(1932, 2):uint()

  if value == 262 then
    return true
  end

  return false
end

-- Dissector Heuristic for Memx Options RiskControl Sbe 1.6
local function omi_memx_options_riskcontrol_sbe_v1_6_heuristic(buffer, packet, parent)
  -- Verify packet length
  if not memx_options_riskcontrol_sbe_v1_6.packet.requiredsize(buffer) then return false end

  -- Verify Schema Id
  if not memx_options_riskcontrol_sbe_v1_6.schema_id.verify(buffer) then return false end

  -- Verify Version
  if not memx_options_riskcontrol_sbe_v1_6.version.verify(buffer) then return false end

  -- Verify Schema Id
  if not memx_options_riskcontrol_sbe_v1_6.schema_id.verify(buffer) then return false end

  -- Verify Version
  if not memx_options_riskcontrol_sbe_v1_6.version.verify(buffer) then return false end

  -- Protocol is valid, set conversation and dissect this packet
  packet.conversation = omi_memx_options_riskcontrol_sbe_v1_6
  omi_memx_options_riskcontrol_sbe_v1_6.dissector(buffer, packet, parent)

  return true
end

-- Register Heuristic for Memx Options RiskControl Sbe 1.6
omi_memx_options_riskcontrol_sbe_v1_6:register_heuristic("tcp", omi_memx_options_riskcontrol_sbe_v1_6_heuristic)

-----------------------------------------------------------------------
-- Lua dissectors are an easily edited and modified cross-platform dissection solution.
-- Feel free to modify. Enjoy.
-----------------------------------------------------------------------
-- 
-- Protocol:
--   Organization: Members Exchange
--   Version: 1.6
--   Date: Wednesday, November 15, 2023
--   Specification: Risk Control for US Options SBE-v1_6.pdf
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
