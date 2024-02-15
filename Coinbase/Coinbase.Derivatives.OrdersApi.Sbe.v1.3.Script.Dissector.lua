-----------------------------------------------------------------------
-- Lua Script Wireshark Dissector
-- 
-- Please see end of file for rules and regulations
-----------------------------------------------------------------------

-- Coinbase Derivatives OrdersApi Sbe 1.3 Protocol
local coinbase_derivatives_ordersapi_sbe_v1_3 = Proto("Coinbase.Derivatives.OrdersApi.Sbe.v1.3.Lua", "Coinbase Derivatives OrdersApi Sbe 1.3")

-- Component Tables
local show = {}
local format = {}
local coinbase_derivatives_ordersapi_sbe_v1_3_display = {}
local coinbase_derivatives_ordersapi_sbe_v1_3_dissect = {}
local coinbase_derivatives_ordersapi_sbe_v1_3_size_of = {}
local verify = {}

-----------------------------------------------------------------------
-- Declare Protocol Fields
-----------------------------------------------------------------------

-- Coinbase Derivatives OrdersApi Sbe 1.3 Fields
coinbase_derivatives_ordersapi_sbe_v1_3.fields.account = ProtoField.new("Account", "coinbase.derivatives.ordersapi.sbe.v1.3.account", ftypes.STRING)
coinbase_derivatives_ordersapi_sbe_v1_3.fields.available_qty = ProtoField.new("Available Qty", "coinbase.derivatives.ordersapi.sbe.v1.3.availableqty", ftypes.INT32)
coinbase_derivatives_ordersapi_sbe_v1_3.fields.begin_exec_id = ProtoField.new("Begin Exec Id", "coinbase.derivatives.ordersapi.sbe.v1.3.beginexecid", ftypes.INT64)
coinbase_derivatives_ordersapi_sbe_v1_3.fields.block_length = ProtoField.new("Block Length", "coinbase.derivatives.ordersapi.sbe.v1.3.blocklength", ftypes.UINT16)
coinbase_derivatives_ordersapi_sbe_v1_3.fields.cancel_order_message = ProtoField.new("Cancel Order Message", "coinbase.derivatives.ordersapi.sbe.v1.3.cancelordermessage", ftypes.STRING)
coinbase_derivatives_ordersapi_sbe_v1_3.fields.cancel_order_reject_details = ProtoField.new("Cancel Order Reject Details", "coinbase.derivatives.ordersapi.sbe.v1.3.cancelorderrejectdetails", ftypes.STRING)
coinbase_derivatives_ordersapi_sbe_v1_3.fields.cancel_order_reject_message = ProtoField.new("Cancel Order Reject Message", "coinbase.derivatives.ordersapi.sbe.v1.3.cancelorderrejectmessage", ftypes.STRING)
coinbase_derivatives_ordersapi_sbe_v1_3.fields.cancel_order_reject_reason = ProtoField.new("Cancel Order Reject Reason", "coinbase.derivatives.ordersapi.sbe.v1.3.cancelorderrejectreason", ftypes.UINT8)
coinbase_derivatives_ordersapi_sbe_v1_3.fields.cancel_reason = ProtoField.new("Cancel Reason", "coinbase.derivatives.ordersapi.sbe.v1.3.cancelreason", ftypes.UINT8)
coinbase_derivatives_ordersapi_sbe_v1_3.fields.canceled_count = ProtoField.new("Canceled Count", "coinbase.derivatives.ordersapi.sbe.v1.3.canceledcount", ftypes.INT32)
coinbase_derivatives_ordersapi_sbe_v1_3.fields.client_order_id = ProtoField.new("Client Order Id", "coinbase.derivatives.ordersapi.sbe.v1.3.clientorderid", ftypes.INT64)
coinbase_derivatives_ordersapi_sbe_v1_3.fields.correlation_id = ProtoField.new("Correlation Id", "coinbase.derivatives.ordersapi.sbe.v1.3.correlationid", ftypes.INT64)
coinbase_derivatives_ordersapi_sbe_v1_3.fields.current_session_only = ProtoField.new("Current Session Only", "coinbase.derivatives.ordersapi.sbe.v1.3.currentsessiononly", ftypes.INT8)
coinbase_derivatives_ordersapi_sbe_v1_3.fields.data = ProtoField.new("Data", "coinbase.derivatives.ordersapi.sbe.v1.3.data", ftypes.STRING)
coinbase_derivatives_ordersapi_sbe_v1_3.fields.end_exec_id = ProtoField.new("End Exec Id", "coinbase.derivatives.ordersapi.sbe.v1.3.endexecid", ftypes.INT64)
coinbase_derivatives_ordersapi_sbe_v1_3.fields.error_message = ProtoField.new("Error Message", "coinbase.derivatives.ordersapi.sbe.v1.3.errormessage", ftypes.STRING)
coinbase_derivatives_ordersapi_sbe_v1_3.fields.event_resend_complete_message = ProtoField.new("Event Resend Complete Message", "coinbase.derivatives.ordersapi.sbe.v1.3.eventresendcompletemessage", ftypes.STRING)
coinbase_derivatives_ordersapi_sbe_v1_3.fields.event_resend_reject_details = ProtoField.new("Event Resend Reject Details", "coinbase.derivatives.ordersapi.sbe.v1.3.eventresendrejectdetails", ftypes.STRING)
coinbase_derivatives_ordersapi_sbe_v1_3.fields.event_resend_reject_message = ProtoField.new("Event Resend Reject Message", "coinbase.derivatives.ordersapi.sbe.v1.3.eventresendrejectmessage", ftypes.STRING)
coinbase_derivatives_ordersapi_sbe_v1_3.fields.event_resend_request_message = ProtoField.new("Event Resend Request Message", "coinbase.derivatives.ordersapi.sbe.v1.3.eventresendrequestmessage", ftypes.STRING)
coinbase_derivatives_ordersapi_sbe_v1_3.fields.exec_id = ProtoField.new("Exec Id", "coinbase.derivatives.ordersapi.sbe.v1.3.execid", ftypes.INT64)
coinbase_derivatives_ordersapi_sbe_v1_3.fields.fill_price = ProtoField.new("Fill Price", "coinbase.derivatives.ordersapi.sbe.v1.3.fillprice", ftypes.INT64)
coinbase_derivatives_ordersapi_sbe_v1_3.fields.fill_qty = ProtoField.new("Fill Qty", "coinbase.derivatives.ordersapi.sbe.v1.3.fillqty", ftypes.INT32)
coinbase_derivatives_ordersapi_sbe_v1_3.fields.filled_vwap = ProtoField.new("Filled Vwap", "coinbase.derivatives.ordersapi.sbe.v1.3.filledvwap", ftypes.INT64)
coinbase_derivatives_ordersapi_sbe_v1_3.fields.flags = ProtoField.new("Flags", "coinbase.derivatives.ordersapi.sbe.v1.3.flags", ftypes.UINT8)
coinbase_derivatives_ordersapi_sbe_v1_3.fields.from_sequence_number = ProtoField.new("From Sequence Number", "coinbase.derivatives.ordersapi.sbe.v1.3.fromsequencenumber", ftypes.UINT32)
coinbase_derivatives_ordersapi_sbe_v1_3.fields.gap_fill_message = ProtoField.new("Gap Fill Message", "coinbase.derivatives.ordersapi.sbe.v1.3.gapfillmessage", ftypes.STRING)
coinbase_derivatives_ordersapi_sbe_v1_3.fields.gap_fill_padding = ProtoField.new("Gap Fill Padding", "coinbase.derivatives.ordersapi.sbe.v1.3.gapfillpadding", ftypes.UINT32)
coinbase_derivatives_ordersapi_sbe_v1_3.fields.heartbeat_interval_seconds = ProtoField.new("Heartbeat Interval Seconds", "coinbase.derivatives.ordersapi.sbe.v1.3.heartbeatintervalseconds", ftypes.INT32)
coinbase_derivatives_ordersapi_sbe_v1_3.fields.heartbeat_message = ProtoField.new("Heartbeat Message", "coinbase.derivatives.ordersapi.sbe.v1.3.heartbeatmessage", ftypes.STRING)
coinbase_derivatives_ordersapi_sbe_v1_3.fields.instrument_id = ProtoField.new("Instrument Id", "coinbase.derivatives.ordersapi.sbe.v1.3.instrumentid", ftypes.INT32)
coinbase_derivatives_ordersapi_sbe_v1_3.fields.instrument_info_message = ProtoField.new("Instrument Info Message", "coinbase.derivatives.ordersapi.sbe.v1.3.instrumentinfomessage", ftypes.STRING)
coinbase_derivatives_ordersapi_sbe_v1_3.fields.instrument_info_request_message = ProtoField.new("Instrument Info Request Message", "coinbase.derivatives.ordersapi.sbe.v1.3.instrumentinforequestmessage", ftypes.STRING)
coinbase_derivatives_ordersapi_sbe_v1_3.fields.instrument_status = ProtoField.new("Instrument Status", "coinbase.derivatives.ordersapi.sbe.v1.3.instrumentstatus", ftypes.UINT8)
coinbase_derivatives_ordersapi_sbe_v1_3.fields.is_aggressor = ProtoField.new("Is Aggressor", "coinbase.derivatives.ordersapi.sbe.v1.3.isaggressor", ftypes.INT8)
coinbase_derivatives_ordersapi_sbe_v1_3.fields.is_last_message = ProtoField.new("Is Last Message", "coinbase.derivatives.ordersapi.sbe.v1.3.islastmessage", ftypes.INT8)
coinbase_derivatives_ordersapi_sbe_v1_3.fields.last_exec_id = ProtoField.new("Last Exec Id", "coinbase.derivatives.ordersapi.sbe.v1.3.lastexecid", ftypes.INT64)
coinbase_derivatives_ordersapi_sbe_v1_3.fields.last_exec_id_message = ProtoField.new("Last Exec Id Message", "coinbase.derivatives.ordersapi.sbe.v1.3.lastexecidmessage", ftypes.STRING)
coinbase_derivatives_ordersapi_sbe_v1_3.fields.last_exec_id_request_message = ProtoField.new("Last Exec Id Request Message", "coinbase.derivatives.ordersapi.sbe.v1.3.lastexecidrequestmessage", ftypes.STRING)
coinbase_derivatives_ordersapi_sbe_v1_3.fields.last_processed_fill_id = ProtoField.new("Last Processed Fill Id", "coinbase.derivatives.ordersapi.sbe.v1.3.lastprocessedfillid", ftypes.INT64)
coinbase_derivatives_ordersapi_sbe_v1_3.fields.last_processed_seq_no = ProtoField.new("Last Processed Seq No", "coinbase.derivatives.ordersapi.sbe.v1.3.lastprocessedseqno", ftypes.UINT32)
coinbase_derivatives_ordersapi_sbe_v1_3.fields.leg_1_fill_price = ProtoField.new("Leg 1 Fill Price", "coinbase.derivatives.ordersapi.sbe.v1.3.leg1fillprice", ftypes.INT64)
coinbase_derivatives_ordersapi_sbe_v1_3.fields.leg_2_fill_price = ProtoField.new("Leg 2 Fill Price", "coinbase.derivatives.ordersapi.sbe.v1.3.leg2fillprice", ftypes.INT64)
coinbase_derivatives_ordersapi_sbe_v1_3.fields.length = ProtoField.new("Length", "coinbase.derivatives.ordersapi.sbe.v1.3.length", ftypes.UINT8)
coinbase_derivatives_ordersapi_sbe_v1_3.fields.limit_price = ProtoField.new("Limit Price", "coinbase.derivatives.ordersapi.sbe.v1.3.limitprice", ftypes.INT64)
coinbase_derivatives_ordersapi_sbe_v1_3.fields.logged_out_message = ProtoField.new("Logged Out Message", "coinbase.derivatives.ordersapi.sbe.v1.3.loggedoutmessage", ftypes.STRING)
coinbase_derivatives_ordersapi_sbe_v1_3.fields.logon_conf_message = ProtoField.new("Logon Conf Message", "coinbase.derivatives.ordersapi.sbe.v1.3.logonconfmessage", ftypes.STRING)
coinbase_derivatives_ordersapi_sbe_v1_3.fields.logon_message = ProtoField.new("Logon Message", "coinbase.derivatives.ordersapi.sbe.v1.3.logonmessage", ftypes.STRING)
coinbase_derivatives_ordersapi_sbe_v1_3.fields.logout_message = ProtoField.new("Logout Message", "coinbase.derivatives.ordersapi.sbe.v1.3.logoutmessage", ftypes.STRING)
coinbase_derivatives_ordersapi_sbe_v1_3.fields.mass_cancel_order_ack_message = ProtoField.new("Mass Cancel Order Ack Message", "coinbase.derivatives.ordersapi.sbe.v1.3.masscancelorderackmessage", ftypes.STRING)
coinbase_derivatives_ordersapi_sbe_v1_3.fields.mass_cancel_order_message = ProtoField.new("Mass Cancel Order Message", "coinbase.derivatives.ordersapi.sbe.v1.3.masscancelordermessage", ftypes.STRING)
coinbase_derivatives_ordersapi_sbe_v1_3.fields.mass_cancel_order_reject_message = ProtoField.new("Mass Cancel Order Reject Message", "coinbase.derivatives.ordersapi.sbe.v1.3.masscancelorderrejectmessage", ftypes.STRING)
coinbase_derivatives_ordersapi_sbe_v1_3.fields.match_id = ProtoField.new("Match Id", "coinbase.derivatives.ordersapi.sbe.v1.3.matchid", ftypes.INT64)
coinbase_derivatives_ordersapi_sbe_v1_3.fields.message_header = ProtoField.new("Message Header", "coinbase.derivatives.ordersapi.sbe.v1.3.messageheader", ftypes.STRING)
coinbase_derivatives_ordersapi_sbe_v1_3.fields.message_length = ProtoField.new("Message Length", "coinbase.derivatives.ordersapi.sbe.v1.3.messagelength", ftypes.UINT16)
coinbase_derivatives_ordersapi_sbe_v1_3.fields.new_limit_price = ProtoField.new("New Limit Price", "coinbase.derivatives.ordersapi.sbe.v1.3.newlimitprice", ftypes.INT64)
coinbase_derivatives_ordersapi_sbe_v1_3.fields.new_order_message = ProtoField.new("New Order Message", "coinbase.derivatives.ordersapi.sbe.v1.3.newordermessage", ftypes.STRING)
coinbase_derivatives_ordersapi_sbe_v1_3.fields.new_quantity = ProtoField.new("New Quantity", "coinbase.derivatives.ordersapi.sbe.v1.3.newquantity", ftypes.INT32)
coinbase_derivatives_ordersapi_sbe_v1_3.fields.new_sequence_number = ProtoField.new("New Sequence Number", "coinbase.derivatives.ordersapi.sbe.v1.3.newsequencenumber", ftypes.UINT32)
coinbase_derivatives_ordersapi_sbe_v1_3.fields.num_users_affected = ProtoField.new("Num Users Affected", "coinbase.derivatives.ordersapi.sbe.v1.3.numusersaffected", ftypes.INT32)
coinbase_derivatives_ordersapi_sbe_v1_3.fields.only_current_session = ProtoField.new("Only Current Session", "coinbase.derivatives.ordersapi.sbe.v1.3.onlycurrentsession", ftypes.INT8)
coinbase_derivatives_ordersapi_sbe_v1_3.fields.order_canceled_message = ProtoField.new("Order Canceled Message", "coinbase.derivatives.ordersapi.sbe.v1.3.ordercanceledmessage", ftypes.STRING)
coinbase_derivatives_ordersapi_sbe_v1_3.fields.order_entered_message = ProtoField.new("Order Entered Message", "coinbase.derivatives.ordersapi.sbe.v1.3.orderenteredmessage", ftypes.STRING)
coinbase_derivatives_ordersapi_sbe_v1_3.fields.order_filled_message = ProtoField.new("Order Filled Message", "coinbase.derivatives.ordersapi.sbe.v1.3.orderfilledmessage", ftypes.STRING)
coinbase_derivatives_ordersapi_sbe_v1_3.fields.order_id = ProtoField.new("Order Id", "coinbase.derivatives.ordersapi.sbe.v1.3.orderid", ftypes.INT64)
coinbase_derivatives_ordersapi_sbe_v1_3.fields.order_id_optional = ProtoField.new("Order Id Optional", "coinbase.derivatives.ordersapi.sbe.v1.3.orderidoptional", ftypes.INT64)
coinbase_derivatives_ordersapi_sbe_v1_3.fields.order_reject_details = ProtoField.new("Order Reject Details", "coinbase.derivatives.ordersapi.sbe.v1.3.orderrejectdetails", ftypes.STRING)
coinbase_derivatives_ordersapi_sbe_v1_3.fields.order_reject_message = ProtoField.new("Order Reject Message", "coinbase.derivatives.ordersapi.sbe.v1.3.orderrejectmessage", ftypes.STRING)
coinbase_derivatives_ordersapi_sbe_v1_3.fields.order_reject_reason = ProtoField.new("Order Reject Reason", "coinbase.derivatives.ordersapi.sbe.v1.3.orderrejectreason", ftypes.UINT8)
coinbase_derivatives_ordersapi_sbe_v1_3.fields.order_replaced_message = ProtoField.new("Order Replaced Message", "coinbase.derivatives.ordersapi.sbe.v1.3.orderreplacedmessage", ftypes.STRING)
coinbase_derivatives_ordersapi_sbe_v1_3.fields.packet = ProtoField.new("Packet", "coinbase.derivatives.ordersapi.sbe.v1.3.packet", ftypes.STRING)
coinbase_derivatives_ordersapi_sbe_v1_3.fields.padding = ProtoField.new("Padding", "coinbase.derivatives.ordersapi.sbe.v1.3.padding", ftypes.BYTES)
coinbase_derivatives_ordersapi_sbe_v1_3.fields.password = ProtoField.new("Password", "coinbase.derivatives.ordersapi.sbe.v1.3.password", ftypes.STRING)
coinbase_derivatives_ordersapi_sbe_v1_3.fields.payload = ProtoField.new("Payload", "coinbase.derivatives.ordersapi.sbe.v1.3.payload", ftypes.STRING)
coinbase_derivatives_ordersapi_sbe_v1_3.fields.ping_message = ProtoField.new("Ping Message", "coinbase.derivatives.ordersapi.sbe.v1.3.pingmessage", ftypes.STRING)
coinbase_derivatives_ordersapi_sbe_v1_3.fields.pong_message = ProtoField.new("Pong Message", "coinbase.derivatives.ordersapi.sbe.v1.3.pongmessage", ftypes.STRING)
coinbase_derivatives_ordersapi_sbe_v1_3.fields.protocol_id = ProtoField.new("Protocol Id", "coinbase.derivatives.ordersapi.sbe.v1.3.protocolid", ftypes.UINT8)
coinbase_derivatives_ordersapi_sbe_v1_3.fields.quantity = ProtoField.new("Quantity", "coinbase.derivatives.ordersapi.sbe.v1.3.quantity", ftypes.INT32)
coinbase_derivatives_ordersapi_sbe_v1_3.fields.reason = ProtoField.new("Reason", "coinbase.derivatives.ordersapi.sbe.v1.3.reason", ftypes.STRING)
coinbase_derivatives_ordersapi_sbe_v1_3.fields.receive_time = ProtoField.new("Receive Time", "coinbase.derivatives.ordersapi.sbe.v1.3.receivetime", ftypes.INT64)
coinbase_derivatives_ordersapi_sbe_v1_3.fields.replace_order_message = ProtoField.new("Replace Order Message", "coinbase.derivatives.ordersapi.sbe.v1.3.replaceordermessage", ftypes.STRING)
coinbase_derivatives_ordersapi_sbe_v1_3.fields.request_time = ProtoField.new("Request Time", "coinbase.derivatives.ordersapi.sbe.v1.3.requesttime", ftypes.INT64)
coinbase_derivatives_ordersapi_sbe_v1_3.fields.request_trading_lock = ProtoField.new("Request Trading Lock", "coinbase.derivatives.ordersapi.sbe.v1.3.requesttradinglock", ftypes.INT8)
coinbase_derivatives_ordersapi_sbe_v1_3.fields.resend_reject_reason = ProtoField.new("Resend Reject Reason", "coinbase.derivatives.ordersapi.sbe.v1.3.resendrejectreason", ftypes.INT8)
coinbase_derivatives_ordersapi_sbe_v1_3.fields.resend_request_message = ProtoField.new("Resend Request Message", "coinbase.derivatives.ordersapi.sbe.v1.3.resendrequestmessage", ftypes.STRING)
coinbase_derivatives_ordersapi_sbe_v1_3.fields.resent_event_count = ProtoField.new("Resent Event Count", "coinbase.derivatives.ordersapi.sbe.v1.3.resenteventcount", ftypes.INT32)
coinbase_derivatives_ordersapi_sbe_v1_3.fields.reserved = ProtoField.new("Reserved", "coinbase.derivatives.ordersapi.sbe.v1.3.reserved", ftypes.UINT32)
coinbase_derivatives_ordersapi_sbe_v1_3.fields.reserved_byte = ProtoField.new("Reserved Byte", "coinbase.derivatives.ordersapi.sbe.v1.3.reservedbyte", ftypes.INT8)
coinbase_derivatives_ordersapi_sbe_v1_3.fields.reset_seq_num = ProtoField.new("Reset Seq Num", "coinbase.derivatives.ordersapi.sbe.v1.3.resetseqnum", ftypes.INT8)
coinbase_derivatives_ordersapi_sbe_v1_3.fields.sbe_message = ProtoField.new("Sbe Message", "coinbase.derivatives.ordersapi.sbe.v1.3.sbemessage", ftypes.STRING)
coinbase_derivatives_ordersapi_sbe_v1_3.fields.schema_id = ProtoField.new("Schema Id", "coinbase.derivatives.ordersapi.sbe.v1.3.schemaid", ftypes.UINT16)
coinbase_derivatives_ordersapi_sbe_v1_3.fields.security_type = ProtoField.new("Security Type", "coinbase.derivatives.ordersapi.sbe.v1.3.securitytype", ftypes.UINT8)
coinbase_derivatives_ordersapi_sbe_v1_3.fields.send_time_epoch_nanos = ProtoField.new("Send Time Epoch Nanos", "coinbase.derivatives.ordersapi.sbe.v1.3.sendtimeepochnanos", ftypes.INT64)
coinbase_derivatives_ordersapi_sbe_v1_3.fields.sequence_number = ProtoField.new("Sequence Number", "coinbase.derivatives.ordersapi.sbe.v1.3.sequencenumber", ftypes.UINT32)
coinbase_derivatives_ordersapi_sbe_v1_3.fields.server_time = ProtoField.new("Server Time", "coinbase.derivatives.ordersapi.sbe.v1.3.servertime", ftypes.INT64)
coinbase_derivatives_ordersapi_sbe_v1_3.fields.set_account_message = ProtoField.new("Set Account Message", "coinbase.derivatives.ordersapi.sbe.v1.3.setaccountmessage", ftypes.STRING)
coinbase_derivatives_ordersapi_sbe_v1_3.fields.set_ack_message = ProtoField.new("Set Ack Message", "coinbase.derivatives.ordersapi.sbe.v1.3.setackmessage", ftypes.STRING)
coinbase_derivatives_ordersapi_sbe_v1_3.fields.set_trader_message = ProtoField.new("Set Trader Message", "coinbase.derivatives.ordersapi.sbe.v1.3.settradermessage", ftypes.STRING)
coinbase_derivatives_ordersapi_sbe_v1_3.fields.side = ProtoField.new("Side", "coinbase.derivatives.ordersapi.sbe.v1.3.side", ftypes.INT8)
coinbase_derivatives_ordersapi_sbe_v1_3.fields.spread_order_filled_message = ProtoField.new("Spread Order Filled Message", "coinbase.derivatives.ordersapi.sbe.v1.3.spreadorderfilledmessage", ftypes.STRING)
coinbase_derivatives_ordersapi_sbe_v1_3.fields.stream_order_message = ProtoField.new("Stream Order Message", "coinbase.derivatives.ordersapi.sbe.v1.3.streamordermessage", ftypes.STRING)
coinbase_derivatives_ordersapi_sbe_v1_3.fields.symbol = ProtoField.new("Symbol", "coinbase.derivatives.ordersapi.sbe.v1.3.symbol", ftypes.STRING)
coinbase_derivatives_ordersapi_sbe_v1_3.fields.template_id = ProtoField.new("Template Id", "coinbase.derivatives.ordersapi.sbe.v1.3.templateid", ftypes.UINT16)
coinbase_derivatives_ordersapi_sbe_v1_3.fields.test_request_message = ProtoField.new("Test Request Message", "coinbase.derivatives.ordersapi.sbe.v1.3.testrequestmessage", ftypes.STRING)
coinbase_derivatives_ordersapi_sbe_v1_3.fields.timestamp = ProtoField.new("Timestamp", "coinbase.derivatives.ordersapi.sbe.v1.3.timestamp", ftypes.INT64)
coinbase_derivatives_ordersapi_sbe_v1_3.fields.to_sequence_number = ProtoField.new("To Sequence Number", "coinbase.derivatives.ordersapi.sbe.v1.3.tosequencenumber", ftypes.UINT32)
coinbase_derivatives_ordersapi_sbe_v1_3.fields.total_filled = ProtoField.new("Total Filled", "coinbase.derivatives.ordersapi.sbe.v1.3.totalfilled", ftypes.INT32)
coinbase_derivatives_ordersapi_sbe_v1_3.fields.trader = ProtoField.new("Trader", "coinbase.derivatives.ordersapi.sbe.v1.3.trader", ftypes.STRING)
coinbase_derivatives_ordersapi_sbe_v1_3.fields.trading_instrument_status = ProtoField.new("Trading Instrument Status", "coinbase.derivatives.ordersapi.sbe.v1.3.tradinginstrumentstatus", ftypes.INT8)
coinbase_derivatives_ordersapi_sbe_v1_3.fields.trading_lock_applied = ProtoField.new("Trading Lock Applied", "coinbase.derivatives.ordersapi.sbe.v1.3.tradinglockapplied", ftypes.INT8)
coinbase_derivatives_ordersapi_sbe_v1_3.fields.unlock_trading_ack_message = ProtoField.new("Unlock Trading Ack Message", "coinbase.derivatives.ordersapi.sbe.v1.3.unlocktradingackmessage", ftypes.STRING)
coinbase_derivatives_ordersapi_sbe_v1_3.fields.unlock_trading_message = ProtoField.new("Unlock Trading Message", "coinbase.derivatives.ordersapi.sbe.v1.3.unlocktradingmessage", ftypes.STRING)
coinbase_derivatives_ordersapi_sbe_v1_3.fields.unlock_trading_reject_message = ProtoField.new("Unlock Trading Reject Message", "coinbase.derivatives.ordersapi.sbe.v1.3.unlocktradingrejectmessage", ftypes.STRING)
coinbase_derivatives_ordersapi_sbe_v1_3.fields.username = ProtoField.new("Username", "coinbase.derivatives.ordersapi.sbe.v1.3.username", ftypes.STRING)
coinbase_derivatives_ordersapi_sbe_v1_3.fields.var_data = ProtoField.new("Var Data", "coinbase.derivatives.ordersapi.sbe.v1.3.vardata", ftypes.BYTES)
coinbase_derivatives_ordersapi_sbe_v1_3.fields.version = ProtoField.new("Version", "coinbase.derivatives.ordersapi.sbe.v1.3.version", ftypes.UINT16)

-----------------------------------------------------------------------
-- Declare Dissection Options
-----------------------------------------------------------------------

-- Coinbase Derivatives OrdersApi Sbe 1.3 Element Dissection Options
show.cancel_order_message = true
show.cancel_order_reject_message = true
show.data = true
show.event_resend_complete_message = true
show.event_resend_reject_message = true
show.event_resend_request_message = true
show.gap_fill_message = true
show.heartbeat_message = true
show.instrument_info_message = true
show.instrument_info_request_message = true
show.last_exec_id_message = true
show.last_exec_id_request_message = true
show.logged_out_message = true
show.logon_conf_message = true
show.logon_message = true
show.logout_message = true
show.mass_cancel_order_ack_message = true
show.mass_cancel_order_message = true
show.mass_cancel_order_reject_message = true
show.message_header = true
show.new_order_message = true
show.order_canceled_message = true
show.order_entered_message = true
show.order_filled_message = true
show.order_reject_message = true
show.order_replaced_message = true
show.packet = true
show.ping_message = true
show.pong_message = true
show.replace_order_message = true
show.resend_request_message = true
show.sbe_message = true
show.set_account_message = true
show.set_ack_message = true
show.set_trader_message = true
show.spread_order_filled_message = true
show.stream_order_message = true
show.test_request_message = true
show.unlock_trading_ack_message = true
show.unlock_trading_message = true
show.unlock_trading_reject_message = true
show.payload = false

-- Register Coinbase Derivatives OrdersApi Sbe 1.3 Show Options
coinbase_derivatives_ordersapi_sbe_v1_3.prefs.show_cancel_order_message = Pref.bool("Show Cancel Order Message", show.cancel_order_message, "Parse and add Cancel Order Message to protocol tree")
coinbase_derivatives_ordersapi_sbe_v1_3.prefs.show_cancel_order_reject_message = Pref.bool("Show Cancel Order Reject Message", show.cancel_order_reject_message, "Parse and add Cancel Order Reject Message to protocol tree")
coinbase_derivatives_ordersapi_sbe_v1_3.prefs.show_data = Pref.bool("Show Data", show.data, "Parse and add Data to protocol tree")
coinbase_derivatives_ordersapi_sbe_v1_3.prefs.show_event_resend_complete_message = Pref.bool("Show Event Resend Complete Message", show.event_resend_complete_message, "Parse and add Event Resend Complete Message to protocol tree")
coinbase_derivatives_ordersapi_sbe_v1_3.prefs.show_event_resend_reject_message = Pref.bool("Show Event Resend Reject Message", show.event_resend_reject_message, "Parse and add Event Resend Reject Message to protocol tree")
coinbase_derivatives_ordersapi_sbe_v1_3.prefs.show_event_resend_request_message = Pref.bool("Show Event Resend Request Message", show.event_resend_request_message, "Parse and add Event Resend Request Message to protocol tree")
coinbase_derivatives_ordersapi_sbe_v1_3.prefs.show_gap_fill_message = Pref.bool("Show Gap Fill Message", show.gap_fill_message, "Parse and add Gap Fill Message to protocol tree")
coinbase_derivatives_ordersapi_sbe_v1_3.prefs.show_heartbeat_message = Pref.bool("Show Heartbeat Message", show.heartbeat_message, "Parse and add Heartbeat Message to protocol tree")
coinbase_derivatives_ordersapi_sbe_v1_3.prefs.show_instrument_info_message = Pref.bool("Show Instrument Info Message", show.instrument_info_message, "Parse and add Instrument Info Message to protocol tree")
coinbase_derivatives_ordersapi_sbe_v1_3.prefs.show_instrument_info_request_message = Pref.bool("Show Instrument Info Request Message", show.instrument_info_request_message, "Parse and add Instrument Info Request Message to protocol tree")
coinbase_derivatives_ordersapi_sbe_v1_3.prefs.show_last_exec_id_message = Pref.bool("Show Last Exec Id Message", show.last_exec_id_message, "Parse and add Last Exec Id Message to protocol tree")
coinbase_derivatives_ordersapi_sbe_v1_3.prefs.show_last_exec_id_request_message = Pref.bool("Show Last Exec Id Request Message", show.last_exec_id_request_message, "Parse and add Last Exec Id Request Message to protocol tree")
coinbase_derivatives_ordersapi_sbe_v1_3.prefs.show_logged_out_message = Pref.bool("Show Logged Out Message", show.logged_out_message, "Parse and add Logged Out Message to protocol tree")
coinbase_derivatives_ordersapi_sbe_v1_3.prefs.show_logon_conf_message = Pref.bool("Show Logon Conf Message", show.logon_conf_message, "Parse and add Logon Conf Message to protocol tree")
coinbase_derivatives_ordersapi_sbe_v1_3.prefs.show_logon_message = Pref.bool("Show Logon Message", show.logon_message, "Parse and add Logon Message to protocol tree")
coinbase_derivatives_ordersapi_sbe_v1_3.prefs.show_logout_message = Pref.bool("Show Logout Message", show.logout_message, "Parse and add Logout Message to protocol tree")
coinbase_derivatives_ordersapi_sbe_v1_3.prefs.show_mass_cancel_order_ack_message = Pref.bool("Show Mass Cancel Order Ack Message", show.mass_cancel_order_ack_message, "Parse and add Mass Cancel Order Ack Message to protocol tree")
coinbase_derivatives_ordersapi_sbe_v1_3.prefs.show_mass_cancel_order_message = Pref.bool("Show Mass Cancel Order Message", show.mass_cancel_order_message, "Parse and add Mass Cancel Order Message to protocol tree")
coinbase_derivatives_ordersapi_sbe_v1_3.prefs.show_mass_cancel_order_reject_message = Pref.bool("Show Mass Cancel Order Reject Message", show.mass_cancel_order_reject_message, "Parse and add Mass Cancel Order Reject Message to protocol tree")
coinbase_derivatives_ordersapi_sbe_v1_3.prefs.show_message_header = Pref.bool("Show Message Header", show.message_header, "Parse and add Message Header to protocol tree")
coinbase_derivatives_ordersapi_sbe_v1_3.prefs.show_new_order_message = Pref.bool("Show New Order Message", show.new_order_message, "Parse and add New Order Message to protocol tree")
coinbase_derivatives_ordersapi_sbe_v1_3.prefs.show_order_canceled_message = Pref.bool("Show Order Canceled Message", show.order_canceled_message, "Parse and add Order Canceled Message to protocol tree")
coinbase_derivatives_ordersapi_sbe_v1_3.prefs.show_order_entered_message = Pref.bool("Show Order Entered Message", show.order_entered_message, "Parse and add Order Entered Message to protocol tree")
coinbase_derivatives_ordersapi_sbe_v1_3.prefs.show_order_filled_message = Pref.bool("Show Order Filled Message", show.order_filled_message, "Parse and add Order Filled Message to protocol tree")
coinbase_derivatives_ordersapi_sbe_v1_3.prefs.show_order_reject_message = Pref.bool("Show Order Reject Message", show.order_reject_message, "Parse and add Order Reject Message to protocol tree")
coinbase_derivatives_ordersapi_sbe_v1_3.prefs.show_order_replaced_message = Pref.bool("Show Order Replaced Message", show.order_replaced_message, "Parse and add Order Replaced Message to protocol tree")
coinbase_derivatives_ordersapi_sbe_v1_3.prefs.show_packet = Pref.bool("Show Packet", show.packet, "Parse and add Packet to protocol tree")
coinbase_derivatives_ordersapi_sbe_v1_3.prefs.show_ping_message = Pref.bool("Show Ping Message", show.ping_message, "Parse and add Ping Message to protocol tree")
coinbase_derivatives_ordersapi_sbe_v1_3.prefs.show_pong_message = Pref.bool("Show Pong Message", show.pong_message, "Parse and add Pong Message to protocol tree")
coinbase_derivatives_ordersapi_sbe_v1_3.prefs.show_replace_order_message = Pref.bool("Show Replace Order Message", show.replace_order_message, "Parse and add Replace Order Message to protocol tree")
coinbase_derivatives_ordersapi_sbe_v1_3.prefs.show_resend_request_message = Pref.bool("Show Resend Request Message", show.resend_request_message, "Parse and add Resend Request Message to protocol tree")
coinbase_derivatives_ordersapi_sbe_v1_3.prefs.show_sbe_message = Pref.bool("Show Sbe Message", show.sbe_message, "Parse and add Sbe Message to protocol tree")
coinbase_derivatives_ordersapi_sbe_v1_3.prefs.show_set_account_message = Pref.bool("Show Set Account Message", show.set_account_message, "Parse and add Set Account Message to protocol tree")
coinbase_derivatives_ordersapi_sbe_v1_3.prefs.show_set_ack_message = Pref.bool("Show Set Ack Message", show.set_ack_message, "Parse and add Set Ack Message to protocol tree")
coinbase_derivatives_ordersapi_sbe_v1_3.prefs.show_set_trader_message = Pref.bool("Show Set Trader Message", show.set_trader_message, "Parse and add Set Trader Message to protocol tree")
coinbase_derivatives_ordersapi_sbe_v1_3.prefs.show_spread_order_filled_message = Pref.bool("Show Spread Order Filled Message", show.spread_order_filled_message, "Parse and add Spread Order Filled Message to protocol tree")
coinbase_derivatives_ordersapi_sbe_v1_3.prefs.show_stream_order_message = Pref.bool("Show Stream Order Message", show.stream_order_message, "Parse and add Stream Order Message to protocol tree")
coinbase_derivatives_ordersapi_sbe_v1_3.prefs.show_test_request_message = Pref.bool("Show Test Request Message", show.test_request_message, "Parse and add Test Request Message to protocol tree")
coinbase_derivatives_ordersapi_sbe_v1_3.prefs.show_unlock_trading_ack_message = Pref.bool("Show Unlock Trading Ack Message", show.unlock_trading_ack_message, "Parse and add Unlock Trading Ack Message to protocol tree")
coinbase_derivatives_ordersapi_sbe_v1_3.prefs.show_unlock_trading_message = Pref.bool("Show Unlock Trading Message", show.unlock_trading_message, "Parse and add Unlock Trading Message to protocol tree")
coinbase_derivatives_ordersapi_sbe_v1_3.prefs.show_unlock_trading_reject_message = Pref.bool("Show Unlock Trading Reject Message", show.unlock_trading_reject_message, "Parse and add Unlock Trading Reject Message to protocol tree")
coinbase_derivatives_ordersapi_sbe_v1_3.prefs.show_payload = Pref.bool("Show Payload", show.payload, "Parse and add Payload to protocol tree")

-- Handle changed preferences
function coinbase_derivatives_ordersapi_sbe_v1_3.prefs_changed()
  local changed = false

  -- Check if show options have changed
  if show.cancel_order_message ~= coinbase_derivatives_ordersapi_sbe_v1_3.prefs.show_cancel_order_message then
    show.cancel_order_message = coinbase_derivatives_ordersapi_sbe_v1_3.prefs.show_cancel_order_message
    changed = true
  end
  if show.cancel_order_reject_message ~= coinbase_derivatives_ordersapi_sbe_v1_3.prefs.show_cancel_order_reject_message then
    show.cancel_order_reject_message = coinbase_derivatives_ordersapi_sbe_v1_3.prefs.show_cancel_order_reject_message
    changed = true
  end
  if show.data ~= coinbase_derivatives_ordersapi_sbe_v1_3.prefs.show_data then
    show.data = coinbase_derivatives_ordersapi_sbe_v1_3.prefs.show_data
    changed = true
  end
  if show.event_resend_complete_message ~= coinbase_derivatives_ordersapi_sbe_v1_3.prefs.show_event_resend_complete_message then
    show.event_resend_complete_message = coinbase_derivatives_ordersapi_sbe_v1_3.prefs.show_event_resend_complete_message
    changed = true
  end
  if show.event_resend_reject_message ~= coinbase_derivatives_ordersapi_sbe_v1_3.prefs.show_event_resend_reject_message then
    show.event_resend_reject_message = coinbase_derivatives_ordersapi_sbe_v1_3.prefs.show_event_resend_reject_message
    changed = true
  end
  if show.event_resend_request_message ~= coinbase_derivatives_ordersapi_sbe_v1_3.prefs.show_event_resend_request_message then
    show.event_resend_request_message = coinbase_derivatives_ordersapi_sbe_v1_3.prefs.show_event_resend_request_message
    changed = true
  end
  if show.gap_fill_message ~= coinbase_derivatives_ordersapi_sbe_v1_3.prefs.show_gap_fill_message then
    show.gap_fill_message = coinbase_derivatives_ordersapi_sbe_v1_3.prefs.show_gap_fill_message
    changed = true
  end
  if show.heartbeat_message ~= coinbase_derivatives_ordersapi_sbe_v1_3.prefs.show_heartbeat_message then
    show.heartbeat_message = coinbase_derivatives_ordersapi_sbe_v1_3.prefs.show_heartbeat_message
    changed = true
  end
  if show.instrument_info_message ~= coinbase_derivatives_ordersapi_sbe_v1_3.prefs.show_instrument_info_message then
    show.instrument_info_message = coinbase_derivatives_ordersapi_sbe_v1_3.prefs.show_instrument_info_message
    changed = true
  end
  if show.instrument_info_request_message ~= coinbase_derivatives_ordersapi_sbe_v1_3.prefs.show_instrument_info_request_message then
    show.instrument_info_request_message = coinbase_derivatives_ordersapi_sbe_v1_3.prefs.show_instrument_info_request_message
    changed = true
  end
  if show.last_exec_id_message ~= coinbase_derivatives_ordersapi_sbe_v1_3.prefs.show_last_exec_id_message then
    show.last_exec_id_message = coinbase_derivatives_ordersapi_sbe_v1_3.prefs.show_last_exec_id_message
    changed = true
  end
  if show.last_exec_id_request_message ~= coinbase_derivatives_ordersapi_sbe_v1_3.prefs.show_last_exec_id_request_message then
    show.last_exec_id_request_message = coinbase_derivatives_ordersapi_sbe_v1_3.prefs.show_last_exec_id_request_message
    changed = true
  end
  if show.logged_out_message ~= coinbase_derivatives_ordersapi_sbe_v1_3.prefs.show_logged_out_message then
    show.logged_out_message = coinbase_derivatives_ordersapi_sbe_v1_3.prefs.show_logged_out_message
    changed = true
  end
  if show.logon_conf_message ~= coinbase_derivatives_ordersapi_sbe_v1_3.prefs.show_logon_conf_message then
    show.logon_conf_message = coinbase_derivatives_ordersapi_sbe_v1_3.prefs.show_logon_conf_message
    changed = true
  end
  if show.logon_message ~= coinbase_derivatives_ordersapi_sbe_v1_3.prefs.show_logon_message then
    show.logon_message = coinbase_derivatives_ordersapi_sbe_v1_3.prefs.show_logon_message
    changed = true
  end
  if show.logout_message ~= coinbase_derivatives_ordersapi_sbe_v1_3.prefs.show_logout_message then
    show.logout_message = coinbase_derivatives_ordersapi_sbe_v1_3.prefs.show_logout_message
    changed = true
  end
  if show.mass_cancel_order_ack_message ~= coinbase_derivatives_ordersapi_sbe_v1_3.prefs.show_mass_cancel_order_ack_message then
    show.mass_cancel_order_ack_message = coinbase_derivatives_ordersapi_sbe_v1_3.prefs.show_mass_cancel_order_ack_message
    changed = true
  end
  if show.mass_cancel_order_message ~= coinbase_derivatives_ordersapi_sbe_v1_3.prefs.show_mass_cancel_order_message then
    show.mass_cancel_order_message = coinbase_derivatives_ordersapi_sbe_v1_3.prefs.show_mass_cancel_order_message
    changed = true
  end
  if show.mass_cancel_order_reject_message ~= coinbase_derivatives_ordersapi_sbe_v1_3.prefs.show_mass_cancel_order_reject_message then
    show.mass_cancel_order_reject_message = coinbase_derivatives_ordersapi_sbe_v1_3.prefs.show_mass_cancel_order_reject_message
    changed = true
  end
  if show.message_header ~= coinbase_derivatives_ordersapi_sbe_v1_3.prefs.show_message_header then
    show.message_header = coinbase_derivatives_ordersapi_sbe_v1_3.prefs.show_message_header
    changed = true
  end
  if show.new_order_message ~= coinbase_derivatives_ordersapi_sbe_v1_3.prefs.show_new_order_message then
    show.new_order_message = coinbase_derivatives_ordersapi_sbe_v1_3.prefs.show_new_order_message
    changed = true
  end
  if show.order_canceled_message ~= coinbase_derivatives_ordersapi_sbe_v1_3.prefs.show_order_canceled_message then
    show.order_canceled_message = coinbase_derivatives_ordersapi_sbe_v1_3.prefs.show_order_canceled_message
    changed = true
  end
  if show.order_entered_message ~= coinbase_derivatives_ordersapi_sbe_v1_3.prefs.show_order_entered_message then
    show.order_entered_message = coinbase_derivatives_ordersapi_sbe_v1_3.prefs.show_order_entered_message
    changed = true
  end
  if show.order_filled_message ~= coinbase_derivatives_ordersapi_sbe_v1_3.prefs.show_order_filled_message then
    show.order_filled_message = coinbase_derivatives_ordersapi_sbe_v1_3.prefs.show_order_filled_message
    changed = true
  end
  if show.order_reject_message ~= coinbase_derivatives_ordersapi_sbe_v1_3.prefs.show_order_reject_message then
    show.order_reject_message = coinbase_derivatives_ordersapi_sbe_v1_3.prefs.show_order_reject_message
    changed = true
  end
  if show.order_replaced_message ~= coinbase_derivatives_ordersapi_sbe_v1_3.prefs.show_order_replaced_message then
    show.order_replaced_message = coinbase_derivatives_ordersapi_sbe_v1_3.prefs.show_order_replaced_message
    changed = true
  end
  if show.packet ~= coinbase_derivatives_ordersapi_sbe_v1_3.prefs.show_packet then
    show.packet = coinbase_derivatives_ordersapi_sbe_v1_3.prefs.show_packet
    changed = true
  end
  if show.ping_message ~= coinbase_derivatives_ordersapi_sbe_v1_3.prefs.show_ping_message then
    show.ping_message = coinbase_derivatives_ordersapi_sbe_v1_3.prefs.show_ping_message
    changed = true
  end
  if show.pong_message ~= coinbase_derivatives_ordersapi_sbe_v1_3.prefs.show_pong_message then
    show.pong_message = coinbase_derivatives_ordersapi_sbe_v1_3.prefs.show_pong_message
    changed = true
  end
  if show.replace_order_message ~= coinbase_derivatives_ordersapi_sbe_v1_3.prefs.show_replace_order_message then
    show.replace_order_message = coinbase_derivatives_ordersapi_sbe_v1_3.prefs.show_replace_order_message
    changed = true
  end
  if show.resend_request_message ~= coinbase_derivatives_ordersapi_sbe_v1_3.prefs.show_resend_request_message then
    show.resend_request_message = coinbase_derivatives_ordersapi_sbe_v1_3.prefs.show_resend_request_message
    changed = true
  end
  if show.sbe_message ~= coinbase_derivatives_ordersapi_sbe_v1_3.prefs.show_sbe_message then
    show.sbe_message = coinbase_derivatives_ordersapi_sbe_v1_3.prefs.show_sbe_message
    changed = true
  end
  if show.set_account_message ~= coinbase_derivatives_ordersapi_sbe_v1_3.prefs.show_set_account_message then
    show.set_account_message = coinbase_derivatives_ordersapi_sbe_v1_3.prefs.show_set_account_message
    changed = true
  end
  if show.set_ack_message ~= coinbase_derivatives_ordersapi_sbe_v1_3.prefs.show_set_ack_message then
    show.set_ack_message = coinbase_derivatives_ordersapi_sbe_v1_3.prefs.show_set_ack_message
    changed = true
  end
  if show.set_trader_message ~= coinbase_derivatives_ordersapi_sbe_v1_3.prefs.show_set_trader_message then
    show.set_trader_message = coinbase_derivatives_ordersapi_sbe_v1_3.prefs.show_set_trader_message
    changed = true
  end
  if show.spread_order_filled_message ~= coinbase_derivatives_ordersapi_sbe_v1_3.prefs.show_spread_order_filled_message then
    show.spread_order_filled_message = coinbase_derivatives_ordersapi_sbe_v1_3.prefs.show_spread_order_filled_message
    changed = true
  end
  if show.stream_order_message ~= coinbase_derivatives_ordersapi_sbe_v1_3.prefs.show_stream_order_message then
    show.stream_order_message = coinbase_derivatives_ordersapi_sbe_v1_3.prefs.show_stream_order_message
    changed = true
  end
  if show.test_request_message ~= coinbase_derivatives_ordersapi_sbe_v1_3.prefs.show_test_request_message then
    show.test_request_message = coinbase_derivatives_ordersapi_sbe_v1_3.prefs.show_test_request_message
    changed = true
  end
  if show.unlock_trading_ack_message ~= coinbase_derivatives_ordersapi_sbe_v1_3.prefs.show_unlock_trading_ack_message then
    show.unlock_trading_ack_message = coinbase_derivatives_ordersapi_sbe_v1_3.prefs.show_unlock_trading_ack_message
    changed = true
  end
  if show.unlock_trading_message ~= coinbase_derivatives_ordersapi_sbe_v1_3.prefs.show_unlock_trading_message then
    show.unlock_trading_message = coinbase_derivatives_ordersapi_sbe_v1_3.prefs.show_unlock_trading_message
    changed = true
  end
  if show.unlock_trading_reject_message ~= coinbase_derivatives_ordersapi_sbe_v1_3.prefs.show_unlock_trading_reject_message then
    show.unlock_trading_reject_message = coinbase_derivatives_ordersapi_sbe_v1_3.prefs.show_unlock_trading_reject_message
    changed = true
  end
  if show.payload ~= coinbase_derivatives_ordersapi_sbe_v1_3.prefs.show_payload then
    show.payload = coinbase_derivatives_ordersapi_sbe_v1_3.prefs.show_payload
    changed = true
  end

  -- Reload on changed preference
  if changed then
    reload()
  end
end


-----------------------------------------------------------------------
-- Dissect Coinbase Derivatives OrdersApi Sbe 1.3
-----------------------------------------------------------------------

-- Display: Padding
coinbase_derivatives_ordersapi_sbe_v1_3_display.padding = function(value)
  return "Padding: "..value
end

-- Dissect runtime sized field: Padding
coinbase_derivatives_ordersapi_sbe_v1_3_dissect.padding = function(buffer, offset, packet, parent, size)
  local range = buffer(offset, size)
  local value = range:bytes():tohex(false, " ")
  local display = coinbase_derivatives_ordersapi_sbe_v1_3_display.padding(value, buffer, offset, packet, parent, size)

  parent:add(coinbase_derivatives_ordersapi_sbe_v1_3.fields.padding, range, value, display)

  return offset + size
end

-- Size: Event Resend Reject Details
coinbase_derivatives_ordersapi_sbe_v1_3_size_of.event_resend_reject_details = 23

-- Display: Event Resend Reject Details
coinbase_derivatives_ordersapi_sbe_v1_3_display.event_resend_reject_details = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Event Resend Reject Details: No Value"
  end

  return "Event Resend Reject Details: "..value
end

-- Dissect: Event Resend Reject Details
coinbase_derivatives_ordersapi_sbe_v1_3_dissect.event_resend_reject_details = function(buffer, offset, packet, parent)
  local length = coinbase_derivatives_ordersapi_sbe_v1_3_size_of.event_resend_reject_details
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

  local display = coinbase_derivatives_ordersapi_sbe_v1_3_display.event_resend_reject_details(value, buffer, offset, packet, parent)

  parent:add(coinbase_derivatives_ordersapi_sbe_v1_3.fields.event_resend_reject_details, range, value, display)

  return offset + length, value
end

-- Size: Resend Reject Reason
coinbase_derivatives_ordersapi_sbe_v1_3_size_of.resend_reject_reason = 1

-- Display: Resend Reject Reason
coinbase_derivatives_ordersapi_sbe_v1_3_display.resend_reject_reason = function(value)
  if value == 1 then
    return "Resend Reject Reason: Beginexecidtoosmall (1)"
  end
  if value == 2 then
    return "Resend Reject Reason: Endexecidtoolarge (2)"
  end
  if value == 3 then
    return "Resend Reject Reason: Resendalreadyinprogress (3)"
  end
  if value == 4 then
    return "Resend Reject Reason: Toomanyresendrequests (4)"
  end
  if value == 5 then
    return "Resend Reject Reason: Servererror (5)"
  end

  return "Resend Reject Reason: Unknown("..value..")"
end

-- Dissect: Resend Reject Reason
coinbase_derivatives_ordersapi_sbe_v1_3_dissect.resend_reject_reason = function(buffer, offset, packet, parent)
  local length = coinbase_derivatives_ordersapi_sbe_v1_3_size_of.resend_reject_reason
  local range = buffer(offset, length)
  local value = range:le_int()
  local display = coinbase_derivatives_ordersapi_sbe_v1_3_display.resend_reject_reason(value, buffer, offset, packet, parent)

  parent:add(coinbase_derivatives_ordersapi_sbe_v1_3.fields.resend_reject_reason, range, value, display)

  return offset + length, value
end

-- Size: Correlation Id
coinbase_derivatives_ordersapi_sbe_v1_3_size_of.correlation_id = 8

-- Display: Correlation Id
coinbase_derivatives_ordersapi_sbe_v1_3_display.correlation_id = function(value)
  return "Correlation Id: "..value
end

-- Dissect: Correlation Id
coinbase_derivatives_ordersapi_sbe_v1_3_dissect.correlation_id = function(buffer, offset, packet, parent)
  local length = coinbase_derivatives_ordersapi_sbe_v1_3_size_of.correlation_id
  local range = buffer(offset, length)
  local value = range:le_int64()
  local display = coinbase_derivatives_ordersapi_sbe_v1_3_display.correlation_id(value, buffer, offset, packet, parent)

  parent:add(coinbase_derivatives_ordersapi_sbe_v1_3.fields.correlation_id, range, value, display)

  return offset + length, value
end

-- Calculate size of: Event Resend Reject Message
coinbase_derivatives_ordersapi_sbe_v1_3_size_of.event_resend_reject_message = function(buffer, offset)
  local index = 0

  index = index + coinbase_derivatives_ordersapi_sbe_v1_3_size_of.correlation_id

  index = index + coinbase_derivatives_ordersapi_sbe_v1_3_size_of.resend_reject_reason

  index = index + coinbase_derivatives_ordersapi_sbe_v1_3_size_of.event_resend_reject_details

  return index
end

-- Display: Event Resend Reject Message
coinbase_derivatives_ordersapi_sbe_v1_3_display.event_resend_reject_message = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Event Resend Reject Message
coinbase_derivatives_ordersapi_sbe_v1_3_dissect.event_resend_reject_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Correlation Id: 8 Byte Signed Fixed Width Integer
  index, correlation_id = coinbase_derivatives_ordersapi_sbe_v1_3_dissect.correlation_id(buffer, index, packet, parent)

  -- Resend Reject Reason: 1 Byte Signed Fixed Width Integer Enum with 5 values
  index, resend_reject_reason = coinbase_derivatives_ordersapi_sbe_v1_3_dissect.resend_reject_reason(buffer, index, packet, parent)

  -- Event Resend Reject Details: 23 Byte Ascii String
  index, event_resend_reject_details = coinbase_derivatives_ordersapi_sbe_v1_3_dissect.event_resend_reject_details(buffer, index, packet, parent)

  return index
end

-- Dissect: Event Resend Reject Message
coinbase_derivatives_ordersapi_sbe_v1_3_dissect.event_resend_reject_message = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.event_resend_reject_message then
    local length = coinbase_derivatives_ordersapi_sbe_v1_3_size_of.event_resend_reject_message(buffer, offset)
    local range = buffer(offset, length)
    local display = coinbase_derivatives_ordersapi_sbe_v1_3_display.event_resend_reject_message(buffer, packet, parent)
    parent = parent:add(coinbase_derivatives_ordersapi_sbe_v1_3.fields.event_resend_reject_message, range, display)
  end

  return coinbase_derivatives_ordersapi_sbe_v1_3_dissect.event_resend_reject_message_fields(buffer, offset, packet, parent)
end

-- Size: Resent Event Count
coinbase_derivatives_ordersapi_sbe_v1_3_size_of.resent_event_count = 4

-- Display: Resent Event Count
coinbase_derivatives_ordersapi_sbe_v1_3_display.resent_event_count = function(value)
  return "Resent Event Count: "..value
end

-- Dissect: Resent Event Count
coinbase_derivatives_ordersapi_sbe_v1_3_dissect.resent_event_count = function(buffer, offset, packet, parent)
  local length = coinbase_derivatives_ordersapi_sbe_v1_3_size_of.resent_event_count
  local range = buffer(offset, length)
  local value = range:le_int()
  local display = coinbase_derivatives_ordersapi_sbe_v1_3_display.resent_event_count(value, buffer, offset, packet, parent)

  parent:add(coinbase_derivatives_ordersapi_sbe_v1_3.fields.resent_event_count, range, value, display)

  return offset + length, value
end

-- Calculate size of: Event Resend Complete Message
coinbase_derivatives_ordersapi_sbe_v1_3_size_of.event_resend_complete_message = function(buffer, offset)
  local index = 0

  index = index + coinbase_derivatives_ordersapi_sbe_v1_3_size_of.correlation_id

  index = index + coinbase_derivatives_ordersapi_sbe_v1_3_size_of.resent_event_count

  return index
end

-- Display: Event Resend Complete Message
coinbase_derivatives_ordersapi_sbe_v1_3_display.event_resend_complete_message = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Event Resend Complete Message
coinbase_derivatives_ordersapi_sbe_v1_3_dissect.event_resend_complete_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Correlation Id: 8 Byte Signed Fixed Width Integer
  index, correlation_id = coinbase_derivatives_ordersapi_sbe_v1_3_dissect.correlation_id(buffer, index, packet, parent)

  -- Resent Event Count: 4 Byte Signed Fixed Width Integer
  index, resent_event_count = coinbase_derivatives_ordersapi_sbe_v1_3_dissect.resent_event_count(buffer, index, packet, parent)

  return index
end

-- Dissect: Event Resend Complete Message
coinbase_derivatives_ordersapi_sbe_v1_3_dissect.event_resend_complete_message = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.event_resend_complete_message then
    local length = coinbase_derivatives_ordersapi_sbe_v1_3_size_of.event_resend_complete_message(buffer, offset)
    local range = buffer(offset, length)
    local display = coinbase_derivatives_ordersapi_sbe_v1_3_display.event_resend_complete_message(buffer, packet, parent)
    parent = parent:add(coinbase_derivatives_ordersapi_sbe_v1_3.fields.event_resend_complete_message, range, display)
  end

  return coinbase_derivatives_ordersapi_sbe_v1_3_dissect.event_resend_complete_message_fields(buffer, offset, packet, parent)
end

-- Size: End Exec Id
coinbase_derivatives_ordersapi_sbe_v1_3_size_of.end_exec_id = 8

-- Display: End Exec Id
coinbase_derivatives_ordersapi_sbe_v1_3_display.end_exec_id = function(value)
  return "End Exec Id: "..value
end

-- Dissect: End Exec Id
coinbase_derivatives_ordersapi_sbe_v1_3_dissect.end_exec_id = function(buffer, offset, packet, parent)
  local length = coinbase_derivatives_ordersapi_sbe_v1_3_size_of.end_exec_id
  local range = buffer(offset, length)
  local value = range:le_int64()
  local display = coinbase_derivatives_ordersapi_sbe_v1_3_display.end_exec_id(value, buffer, offset, packet, parent)

  parent:add(coinbase_derivatives_ordersapi_sbe_v1_3.fields.end_exec_id, range, value, display)

  return offset + length, value
end

-- Size: Begin Exec Id
coinbase_derivatives_ordersapi_sbe_v1_3_size_of.begin_exec_id = 8

-- Display: Begin Exec Id
coinbase_derivatives_ordersapi_sbe_v1_3_display.begin_exec_id = function(value)
  return "Begin Exec Id: "..value
end

-- Dissect: Begin Exec Id
coinbase_derivatives_ordersapi_sbe_v1_3_dissect.begin_exec_id = function(buffer, offset, packet, parent)
  local length = coinbase_derivatives_ordersapi_sbe_v1_3_size_of.begin_exec_id
  local range = buffer(offset, length)
  local value = range:le_int64()
  local display = coinbase_derivatives_ordersapi_sbe_v1_3_display.begin_exec_id(value, buffer, offset, packet, parent)

  parent:add(coinbase_derivatives_ordersapi_sbe_v1_3.fields.begin_exec_id, range, value, display)

  return offset + length, value
end

-- Calculate size of: Event Resend Request Message
coinbase_derivatives_ordersapi_sbe_v1_3_size_of.event_resend_request_message = function(buffer, offset)
  local index = 0

  index = index + coinbase_derivatives_ordersapi_sbe_v1_3_size_of.correlation_id

  index = index + coinbase_derivatives_ordersapi_sbe_v1_3_size_of.begin_exec_id

  index = index + coinbase_derivatives_ordersapi_sbe_v1_3_size_of.end_exec_id

  return index
end

-- Display: Event Resend Request Message
coinbase_derivatives_ordersapi_sbe_v1_3_display.event_resend_request_message = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Event Resend Request Message
coinbase_derivatives_ordersapi_sbe_v1_3_dissect.event_resend_request_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Correlation Id: 8 Byte Signed Fixed Width Integer
  index, correlation_id = coinbase_derivatives_ordersapi_sbe_v1_3_dissect.correlation_id(buffer, index, packet, parent)

  -- Begin Exec Id: 8 Byte Signed Fixed Width Integer
  index, begin_exec_id = coinbase_derivatives_ordersapi_sbe_v1_3_dissect.begin_exec_id(buffer, index, packet, parent)

  -- End Exec Id: 8 Byte Signed Fixed Width Integer
  index, end_exec_id = coinbase_derivatives_ordersapi_sbe_v1_3_dissect.end_exec_id(buffer, index, packet, parent)

  return index
end

-- Dissect: Event Resend Request Message
coinbase_derivatives_ordersapi_sbe_v1_3_dissect.event_resend_request_message = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.event_resend_request_message then
    local length = coinbase_derivatives_ordersapi_sbe_v1_3_size_of.event_resend_request_message(buffer, offset)
    local range = buffer(offset, length)
    local display = coinbase_derivatives_ordersapi_sbe_v1_3_display.event_resend_request_message(buffer, packet, parent)
    parent = parent:add(coinbase_derivatives_ordersapi_sbe_v1_3.fields.event_resend_request_message, range, display)
  end

  return coinbase_derivatives_ordersapi_sbe_v1_3_dissect.event_resend_request_message_fields(buffer, offset, packet, parent)
end

-- Size: Last Exec Id
coinbase_derivatives_ordersapi_sbe_v1_3_size_of.last_exec_id = 8

-- Display: Last Exec Id
coinbase_derivatives_ordersapi_sbe_v1_3_display.last_exec_id = function(value)
  return "Last Exec Id: "..value
end

-- Dissect: Last Exec Id
coinbase_derivatives_ordersapi_sbe_v1_3_dissect.last_exec_id = function(buffer, offset, packet, parent)
  local length = coinbase_derivatives_ordersapi_sbe_v1_3_size_of.last_exec_id
  local range = buffer(offset, length)
  local value = range:le_int64()
  local display = coinbase_derivatives_ordersapi_sbe_v1_3_display.last_exec_id(value, buffer, offset, packet, parent)

  parent:add(coinbase_derivatives_ordersapi_sbe_v1_3.fields.last_exec_id, range, value, display)

  return offset + length, value
end

-- Size: Timestamp
coinbase_derivatives_ordersapi_sbe_v1_3_size_of.timestamp = 8

-- Display: Timestamp
coinbase_derivatives_ordersapi_sbe_v1_3_display.timestamp = function(value)
  return "Timestamp: "..value
end

-- Dissect: Timestamp
coinbase_derivatives_ordersapi_sbe_v1_3_dissect.timestamp = function(buffer, offset, packet, parent)
  local length = coinbase_derivatives_ordersapi_sbe_v1_3_size_of.timestamp
  local range = buffer(offset, length)
  local value = range:le_int64()
  local display = coinbase_derivatives_ordersapi_sbe_v1_3_display.timestamp(value, buffer, offset, packet, parent)

  parent:add(coinbase_derivatives_ordersapi_sbe_v1_3.fields.timestamp, range, value, display)

  return offset + length, value
end

-- Calculate size of: Last Exec Id Message
coinbase_derivatives_ordersapi_sbe_v1_3_size_of.last_exec_id_message = function(buffer, offset)
  local index = 0

  index = index + coinbase_derivatives_ordersapi_sbe_v1_3_size_of.timestamp

  index = index + coinbase_derivatives_ordersapi_sbe_v1_3_size_of.last_exec_id

  index = index + coinbase_derivatives_ordersapi_sbe_v1_3_size_of.correlation_id

  return index
end

-- Display: Last Exec Id Message
coinbase_derivatives_ordersapi_sbe_v1_3_display.last_exec_id_message = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Last Exec Id Message
coinbase_derivatives_ordersapi_sbe_v1_3_dissect.last_exec_id_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Timestamp: 8 Byte Signed Fixed Width Integer
  index, timestamp = coinbase_derivatives_ordersapi_sbe_v1_3_dissect.timestamp(buffer, index, packet, parent)

  -- Last Exec Id: 8 Byte Signed Fixed Width Integer
  index, last_exec_id = coinbase_derivatives_ordersapi_sbe_v1_3_dissect.last_exec_id(buffer, index, packet, parent)

  -- Correlation Id: 8 Byte Signed Fixed Width Integer
  index, correlation_id = coinbase_derivatives_ordersapi_sbe_v1_3_dissect.correlation_id(buffer, index, packet, parent)

  return index
end

-- Dissect: Last Exec Id Message
coinbase_derivatives_ordersapi_sbe_v1_3_dissect.last_exec_id_message = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.last_exec_id_message then
    local length = coinbase_derivatives_ordersapi_sbe_v1_3_size_of.last_exec_id_message(buffer, offset)
    local range = buffer(offset, length)
    local display = coinbase_derivatives_ordersapi_sbe_v1_3_display.last_exec_id_message(buffer, packet, parent)
    parent = parent:add(coinbase_derivatives_ordersapi_sbe_v1_3.fields.last_exec_id_message, range, display)
  end

  return coinbase_derivatives_ordersapi_sbe_v1_3_dissect.last_exec_id_message_fields(buffer, offset, packet, parent)
end

-- Calculate size of: Last Exec Id Request Message
coinbase_derivatives_ordersapi_sbe_v1_3_size_of.last_exec_id_request_message = function(buffer, offset)
  local index = 0

  index = index + coinbase_derivatives_ordersapi_sbe_v1_3_size_of.correlation_id

  return index
end

-- Display: Last Exec Id Request Message
coinbase_derivatives_ordersapi_sbe_v1_3_display.last_exec_id_request_message = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Last Exec Id Request Message
coinbase_derivatives_ordersapi_sbe_v1_3_dissect.last_exec_id_request_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Correlation Id: 8 Byte Signed Fixed Width Integer
  index, correlation_id = coinbase_derivatives_ordersapi_sbe_v1_3_dissect.correlation_id(buffer, index, packet, parent)

  return index
end

-- Dissect: Last Exec Id Request Message
coinbase_derivatives_ordersapi_sbe_v1_3_dissect.last_exec_id_request_message = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.last_exec_id_request_message then
    local length = coinbase_derivatives_ordersapi_sbe_v1_3_size_of.last_exec_id_request_message(buffer, offset)
    local range = buffer(offset, length)
    local display = coinbase_derivatives_ordersapi_sbe_v1_3_display.last_exec_id_request_message(buffer, packet, parent)
    parent = parent:add(coinbase_derivatives_ordersapi_sbe_v1_3.fields.last_exec_id_request_message, range, display)
  end

  return coinbase_derivatives_ordersapi_sbe_v1_3_dissect.last_exec_id_request_message_fields(buffer, offset, packet, parent)
end

-- Size: Is Aggressor
coinbase_derivatives_ordersapi_sbe_v1_3_size_of.is_aggressor = 1

-- Display: Is Aggressor
coinbase_derivatives_ordersapi_sbe_v1_3_display.is_aggressor = function(value)
  if value == 0 then
    return "Is Aggressor: False (0)"
  end
  if value == 1 then
    return "Is Aggressor: True (1)"
  end

  return "Is Aggressor: Unknown("..value..")"
end

-- Dissect: Is Aggressor
coinbase_derivatives_ordersapi_sbe_v1_3_dissect.is_aggressor = function(buffer, offset, packet, parent)
  local length = coinbase_derivatives_ordersapi_sbe_v1_3_size_of.is_aggressor
  local range = buffer(offset, length)
  local value = range:le_int()
  local display = coinbase_derivatives_ordersapi_sbe_v1_3_display.is_aggressor(value, buffer, offset, packet, parent)

  parent:add(coinbase_derivatives_ordersapi_sbe_v1_3.fields.is_aggressor, range, value, display)

  return offset + length, value
end

-- Size: Instrument Id
coinbase_derivatives_ordersapi_sbe_v1_3_size_of.instrument_id = 4

-- Display: Instrument Id
coinbase_derivatives_ordersapi_sbe_v1_3_display.instrument_id = function(value)
  return "Instrument Id: "..value
end

-- Dissect: Instrument Id
coinbase_derivatives_ordersapi_sbe_v1_3_dissect.instrument_id = function(buffer, offset, packet, parent)
  local length = coinbase_derivatives_ordersapi_sbe_v1_3_size_of.instrument_id
  local range = buffer(offset, length)
  local value = range:le_int()
  local display = coinbase_derivatives_ordersapi_sbe_v1_3_display.instrument_id(value, buffer, offset, packet, parent)

  parent:add(coinbase_derivatives_ordersapi_sbe_v1_3.fields.instrument_id, range, value, display)

  return offset + length, value
end

-- Size: Fill Qty
coinbase_derivatives_ordersapi_sbe_v1_3_size_of.fill_qty = 4

-- Display: Fill Qty
coinbase_derivatives_ordersapi_sbe_v1_3_display.fill_qty = function(value)
  return "Fill Qty: "..value
end

-- Dissect: Fill Qty
coinbase_derivatives_ordersapi_sbe_v1_3_dissect.fill_qty = function(buffer, offset, packet, parent)
  local length = coinbase_derivatives_ordersapi_sbe_v1_3_size_of.fill_qty
  local range = buffer(offset, length)
  local value = range:le_int()
  local display = coinbase_derivatives_ordersapi_sbe_v1_3_display.fill_qty(value, buffer, offset, packet, parent)

  parent:add(coinbase_derivatives_ordersapi_sbe_v1_3.fields.fill_qty, range, value, display)

  return offset + length, value
end

-- Size: Leg 2 Fill Price
coinbase_derivatives_ordersapi_sbe_v1_3_size_of.leg_2_fill_price = 8

-- Display: Leg 2 Fill Price
coinbase_derivatives_ordersapi_sbe_v1_3_display.leg_2_fill_price = function(value)
  return "Leg 2 Fill Price: "..value
end

-- Dissect: Leg 2 Fill Price
coinbase_derivatives_ordersapi_sbe_v1_3_dissect.leg_2_fill_price = function(buffer, offset, packet, parent)
  local length = coinbase_derivatives_ordersapi_sbe_v1_3_size_of.leg_2_fill_price
  local range = buffer(offset, length)
  local value = range:le_int64()
  local display = coinbase_derivatives_ordersapi_sbe_v1_3_display.leg_2_fill_price(value, buffer, offset, packet, parent)

  parent:add(coinbase_derivatives_ordersapi_sbe_v1_3.fields.leg_2_fill_price, range, value, display)

  return offset + length, value
end

-- Size: Leg 1 Fill Price
coinbase_derivatives_ordersapi_sbe_v1_3_size_of.leg_1_fill_price = 8

-- Display: Leg 1 Fill Price
coinbase_derivatives_ordersapi_sbe_v1_3_display.leg_1_fill_price = function(value)
  return "Leg 1 Fill Price: "..value
end

-- Dissect: Leg 1 Fill Price
coinbase_derivatives_ordersapi_sbe_v1_3_dissect.leg_1_fill_price = function(buffer, offset, packet, parent)
  local length = coinbase_derivatives_ordersapi_sbe_v1_3_size_of.leg_1_fill_price
  local range = buffer(offset, length)
  local value = range:le_int64()
  local display = coinbase_derivatives_ordersapi_sbe_v1_3_display.leg_1_fill_price(value, buffer, offset, packet, parent)

  parent:add(coinbase_derivatives_ordersapi_sbe_v1_3.fields.leg_1_fill_price, range, value, display)

  return offset + length, value
end

-- Size: Fill Price
coinbase_derivatives_ordersapi_sbe_v1_3_size_of.fill_price = 8

-- Display: Fill Price
coinbase_derivatives_ordersapi_sbe_v1_3_display.fill_price = function(value)
  return "Fill Price: "..value
end

-- Dissect: Fill Price
coinbase_derivatives_ordersapi_sbe_v1_3_dissect.fill_price = function(buffer, offset, packet, parent)
  local length = coinbase_derivatives_ordersapi_sbe_v1_3_size_of.fill_price
  local range = buffer(offset, length)
  local value = range:le_int64()
  local display = coinbase_derivatives_ordersapi_sbe_v1_3_display.fill_price(value, buffer, offset, packet, parent)

  parent:add(coinbase_derivatives_ordersapi_sbe_v1_3.fields.fill_price, range, value, display)

  return offset + length, value
end

-- Size: Available Qty
coinbase_derivatives_ordersapi_sbe_v1_3_size_of.available_qty = 4

-- Display: Available Qty
coinbase_derivatives_ordersapi_sbe_v1_3_display.available_qty = function(value)
  return "Available Qty: "..value
end

-- Dissect: Available Qty
coinbase_derivatives_ordersapi_sbe_v1_3_dissect.available_qty = function(buffer, offset, packet, parent)
  local length = coinbase_derivatives_ordersapi_sbe_v1_3_size_of.available_qty
  local range = buffer(offset, length)
  local value = range:le_int()
  local display = coinbase_derivatives_ordersapi_sbe_v1_3_display.available_qty(value, buffer, offset, packet, parent)

  parent:add(coinbase_derivatives_ordersapi_sbe_v1_3.fields.available_qty, range, value, display)

  return offset + length, value
end

-- Size: Total Filled
coinbase_derivatives_ordersapi_sbe_v1_3_size_of.total_filled = 4

-- Display: Total Filled
coinbase_derivatives_ordersapi_sbe_v1_3_display.total_filled = function(value)
  return "Total Filled: "..value
end

-- Dissect: Total Filled
coinbase_derivatives_ordersapi_sbe_v1_3_dissect.total_filled = function(buffer, offset, packet, parent)
  local length = coinbase_derivatives_ordersapi_sbe_v1_3_size_of.total_filled
  local range = buffer(offset, length)
  local value = range:le_int()
  local display = coinbase_derivatives_ordersapi_sbe_v1_3_display.total_filled(value, buffer, offset, packet, parent)

  parent:add(coinbase_derivatives_ordersapi_sbe_v1_3.fields.total_filled, range, value, display)

  return offset + length, value
end

-- Size: Filled Vwap
coinbase_derivatives_ordersapi_sbe_v1_3_size_of.filled_vwap = 8

-- Display: Filled Vwap
coinbase_derivatives_ordersapi_sbe_v1_3_display.filled_vwap = function(value)
  return "Filled Vwap: "..value
end

-- Dissect: Filled Vwap
coinbase_derivatives_ordersapi_sbe_v1_3_dissect.filled_vwap = function(buffer, offset, packet, parent)
  local length = coinbase_derivatives_ordersapi_sbe_v1_3_size_of.filled_vwap
  local range = buffer(offset, length)
  local value = range:le_int64()
  local display = coinbase_derivatives_ordersapi_sbe_v1_3_display.filled_vwap(value, buffer, offset, packet, parent)

  parent:add(coinbase_derivatives_ordersapi_sbe_v1_3.fields.filled_vwap, range, value, display)

  return offset + length, value
end

-- Size: Order Id
coinbase_derivatives_ordersapi_sbe_v1_3_size_of.order_id = 8

-- Display: Order Id
coinbase_derivatives_ordersapi_sbe_v1_3_display.order_id = function(value)
  return "Order Id: "..value
end

-- Dissect: Order Id
coinbase_derivatives_ordersapi_sbe_v1_3_dissect.order_id = function(buffer, offset, packet, parent)
  local length = coinbase_derivatives_ordersapi_sbe_v1_3_size_of.order_id
  local range = buffer(offset, length)
  local value = range:le_int64()
  local display = coinbase_derivatives_ordersapi_sbe_v1_3_display.order_id(value, buffer, offset, packet, parent)

  parent:add(coinbase_derivatives_ordersapi_sbe_v1_3.fields.order_id, range, value, display)

  return offset + length, value
end

-- Size: Client Order Id
coinbase_derivatives_ordersapi_sbe_v1_3_size_of.client_order_id = 8

-- Display: Client Order Id
coinbase_derivatives_ordersapi_sbe_v1_3_display.client_order_id = function(value)
  return "Client Order Id: "..value
end

-- Dissect: Client Order Id
coinbase_derivatives_ordersapi_sbe_v1_3_dissect.client_order_id = function(buffer, offset, packet, parent)
  local length = coinbase_derivatives_ordersapi_sbe_v1_3_size_of.client_order_id
  local range = buffer(offset, length)
  local value = range:le_int64()
  local display = coinbase_derivatives_ordersapi_sbe_v1_3_display.client_order_id(value, buffer, offset, packet, parent)

  parent:add(coinbase_derivatives_ordersapi_sbe_v1_3.fields.client_order_id, range, value, display)

  return offset + length, value
end

-- Size: Match Id
coinbase_derivatives_ordersapi_sbe_v1_3_size_of.match_id = 8

-- Display: Match Id
coinbase_derivatives_ordersapi_sbe_v1_3_display.match_id = function(value)
  return "Match Id: "..value
end

-- Dissect: Match Id
coinbase_derivatives_ordersapi_sbe_v1_3_dissect.match_id = function(buffer, offset, packet, parent)
  local length = coinbase_derivatives_ordersapi_sbe_v1_3_size_of.match_id
  local range = buffer(offset, length)
  local value = range:le_int64()
  local display = coinbase_derivatives_ordersapi_sbe_v1_3_display.match_id(value, buffer, offset, packet, parent)

  parent:add(coinbase_derivatives_ordersapi_sbe_v1_3.fields.match_id, range, value, display)

  return offset + length, value
end

-- Size: Exec Id
coinbase_derivatives_ordersapi_sbe_v1_3_size_of.exec_id = 8

-- Display: Exec Id
coinbase_derivatives_ordersapi_sbe_v1_3_display.exec_id = function(value)
  return "Exec Id: "..value
end

-- Dissect: Exec Id
coinbase_derivatives_ordersapi_sbe_v1_3_dissect.exec_id = function(buffer, offset, packet, parent)
  local length = coinbase_derivatives_ordersapi_sbe_v1_3_size_of.exec_id
  local range = buffer(offset, length)
  local value = range:le_int64()
  local display = coinbase_derivatives_ordersapi_sbe_v1_3_display.exec_id(value, buffer, offset, packet, parent)

  parent:add(coinbase_derivatives_ordersapi_sbe_v1_3.fields.exec_id, range, value, display)

  return offset + length, value
end

-- Calculate size of: Spread Order Filled Message
coinbase_derivatives_ordersapi_sbe_v1_3_size_of.spread_order_filled_message = function(buffer, offset)
  local index = 0

  index = index + coinbase_derivatives_ordersapi_sbe_v1_3_size_of.timestamp

  index = index + coinbase_derivatives_ordersapi_sbe_v1_3_size_of.exec_id

  index = index + coinbase_derivatives_ordersapi_sbe_v1_3_size_of.match_id

  index = index + coinbase_derivatives_ordersapi_sbe_v1_3_size_of.client_order_id

  index = index + coinbase_derivatives_ordersapi_sbe_v1_3_size_of.correlation_id

  index = index + coinbase_derivatives_ordersapi_sbe_v1_3_size_of.order_id

  index = index + coinbase_derivatives_ordersapi_sbe_v1_3_size_of.filled_vwap

  index = index + coinbase_derivatives_ordersapi_sbe_v1_3_size_of.total_filled

  index = index + coinbase_derivatives_ordersapi_sbe_v1_3_size_of.available_qty

  index = index + coinbase_derivatives_ordersapi_sbe_v1_3_size_of.fill_price

  index = index + coinbase_derivatives_ordersapi_sbe_v1_3_size_of.leg_1_fill_price

  index = index + coinbase_derivatives_ordersapi_sbe_v1_3_size_of.leg_2_fill_price

  index = index + coinbase_derivatives_ordersapi_sbe_v1_3_size_of.fill_qty

  index = index + coinbase_derivatives_ordersapi_sbe_v1_3_size_of.instrument_id

  index = index + coinbase_derivatives_ordersapi_sbe_v1_3_size_of.is_aggressor

  return index
end

-- Display: Spread Order Filled Message
coinbase_derivatives_ordersapi_sbe_v1_3_display.spread_order_filled_message = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Spread Order Filled Message
coinbase_derivatives_ordersapi_sbe_v1_3_dissect.spread_order_filled_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Timestamp: 8 Byte Signed Fixed Width Integer
  index, timestamp = coinbase_derivatives_ordersapi_sbe_v1_3_dissect.timestamp(buffer, index, packet, parent)

  -- Exec Id: 8 Byte Signed Fixed Width Integer
  index, exec_id = coinbase_derivatives_ordersapi_sbe_v1_3_dissect.exec_id(buffer, index, packet, parent)

  -- Match Id: 8 Byte Signed Fixed Width Integer
  index, match_id = coinbase_derivatives_ordersapi_sbe_v1_3_dissect.match_id(buffer, index, packet, parent)

  -- Client Order Id: 8 Byte Signed Fixed Width Integer
  index, client_order_id = coinbase_derivatives_ordersapi_sbe_v1_3_dissect.client_order_id(buffer, index, packet, parent)

  -- Correlation Id: 8 Byte Signed Fixed Width Integer
  index, correlation_id = coinbase_derivatives_ordersapi_sbe_v1_3_dissect.correlation_id(buffer, index, packet, parent)

  -- Order Id: 8 Byte Signed Fixed Width Integer
  index, order_id = coinbase_derivatives_ordersapi_sbe_v1_3_dissect.order_id(buffer, index, packet, parent)

  -- Filled Vwap: 8 Byte Signed Fixed Width Integer
  index, filled_vwap = coinbase_derivatives_ordersapi_sbe_v1_3_dissect.filled_vwap(buffer, index, packet, parent)

  -- Total Filled: 4 Byte Signed Fixed Width Integer
  index, total_filled = coinbase_derivatives_ordersapi_sbe_v1_3_dissect.total_filled(buffer, index, packet, parent)

  -- Available Qty: 4 Byte Signed Fixed Width Integer
  index, available_qty = coinbase_derivatives_ordersapi_sbe_v1_3_dissect.available_qty(buffer, index, packet, parent)

  -- Fill Price: 8 Byte Signed Fixed Width Integer
  index, fill_price = coinbase_derivatives_ordersapi_sbe_v1_3_dissect.fill_price(buffer, index, packet, parent)

  -- Leg 1 Fill Price: 8 Byte Signed Fixed Width Integer
  index, leg_1_fill_price = coinbase_derivatives_ordersapi_sbe_v1_3_dissect.leg_1_fill_price(buffer, index, packet, parent)

  -- Leg 2 Fill Price: 8 Byte Signed Fixed Width Integer
  index, leg_2_fill_price = coinbase_derivatives_ordersapi_sbe_v1_3_dissect.leg_2_fill_price(buffer, index, packet, parent)

  -- Fill Qty: 4 Byte Signed Fixed Width Integer
  index, fill_qty = coinbase_derivatives_ordersapi_sbe_v1_3_dissect.fill_qty(buffer, index, packet, parent)

  -- Instrument Id: 4 Byte Signed Fixed Width Integer
  index, instrument_id = coinbase_derivatives_ordersapi_sbe_v1_3_dissect.instrument_id(buffer, index, packet, parent)

  -- Is Aggressor: 1 Byte Signed Fixed Width Integer Enum with 2 values
  index, is_aggressor = coinbase_derivatives_ordersapi_sbe_v1_3_dissect.is_aggressor(buffer, index, packet, parent)

  return index
end

-- Dissect: Spread Order Filled Message
coinbase_derivatives_ordersapi_sbe_v1_3_dissect.spread_order_filled_message = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.spread_order_filled_message then
    local length = coinbase_derivatives_ordersapi_sbe_v1_3_size_of.spread_order_filled_message(buffer, offset)
    local range = buffer(offset, length)
    local display = coinbase_derivatives_ordersapi_sbe_v1_3_display.spread_order_filled_message(buffer, packet, parent)
    parent = parent:add(coinbase_derivatives_ordersapi_sbe_v1_3.fields.spread_order_filled_message, range, display)
  end

  return coinbase_derivatives_ordersapi_sbe_v1_3_dissect.spread_order_filled_message_fields(buffer, offset, packet, parent)
end

-- Calculate size of: Order Filled Message
coinbase_derivatives_ordersapi_sbe_v1_3_size_of.order_filled_message = function(buffer, offset)
  local index = 0

  index = index + coinbase_derivatives_ordersapi_sbe_v1_3_size_of.timestamp

  index = index + coinbase_derivatives_ordersapi_sbe_v1_3_size_of.exec_id

  index = index + coinbase_derivatives_ordersapi_sbe_v1_3_size_of.match_id

  index = index + coinbase_derivatives_ordersapi_sbe_v1_3_size_of.client_order_id

  index = index + coinbase_derivatives_ordersapi_sbe_v1_3_size_of.correlation_id

  index = index + coinbase_derivatives_ordersapi_sbe_v1_3_size_of.order_id

  index = index + coinbase_derivatives_ordersapi_sbe_v1_3_size_of.filled_vwap

  index = index + coinbase_derivatives_ordersapi_sbe_v1_3_size_of.total_filled

  index = index + coinbase_derivatives_ordersapi_sbe_v1_3_size_of.available_qty

  index = index + coinbase_derivatives_ordersapi_sbe_v1_3_size_of.fill_price

  index = index + coinbase_derivatives_ordersapi_sbe_v1_3_size_of.fill_qty

  index = index + coinbase_derivatives_ordersapi_sbe_v1_3_size_of.instrument_id

  index = index + coinbase_derivatives_ordersapi_sbe_v1_3_size_of.is_aggressor

  return index
end

-- Display: Order Filled Message
coinbase_derivatives_ordersapi_sbe_v1_3_display.order_filled_message = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Order Filled Message
coinbase_derivatives_ordersapi_sbe_v1_3_dissect.order_filled_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Timestamp: 8 Byte Signed Fixed Width Integer
  index, timestamp = coinbase_derivatives_ordersapi_sbe_v1_3_dissect.timestamp(buffer, index, packet, parent)

  -- Exec Id: 8 Byte Signed Fixed Width Integer
  index, exec_id = coinbase_derivatives_ordersapi_sbe_v1_3_dissect.exec_id(buffer, index, packet, parent)

  -- Match Id: 8 Byte Signed Fixed Width Integer
  index, match_id = coinbase_derivatives_ordersapi_sbe_v1_3_dissect.match_id(buffer, index, packet, parent)

  -- Client Order Id: 8 Byte Signed Fixed Width Integer
  index, client_order_id = coinbase_derivatives_ordersapi_sbe_v1_3_dissect.client_order_id(buffer, index, packet, parent)

  -- Correlation Id: 8 Byte Signed Fixed Width Integer
  index, correlation_id = coinbase_derivatives_ordersapi_sbe_v1_3_dissect.correlation_id(buffer, index, packet, parent)

  -- Order Id: 8 Byte Signed Fixed Width Integer
  index, order_id = coinbase_derivatives_ordersapi_sbe_v1_3_dissect.order_id(buffer, index, packet, parent)

  -- Filled Vwap: 8 Byte Signed Fixed Width Integer
  index, filled_vwap = coinbase_derivatives_ordersapi_sbe_v1_3_dissect.filled_vwap(buffer, index, packet, parent)

  -- Total Filled: 4 Byte Signed Fixed Width Integer
  index, total_filled = coinbase_derivatives_ordersapi_sbe_v1_3_dissect.total_filled(buffer, index, packet, parent)

  -- Available Qty: 4 Byte Signed Fixed Width Integer
  index, available_qty = coinbase_derivatives_ordersapi_sbe_v1_3_dissect.available_qty(buffer, index, packet, parent)

  -- Fill Price: 8 Byte Signed Fixed Width Integer
  index, fill_price = coinbase_derivatives_ordersapi_sbe_v1_3_dissect.fill_price(buffer, index, packet, parent)

  -- Fill Qty: 4 Byte Signed Fixed Width Integer
  index, fill_qty = coinbase_derivatives_ordersapi_sbe_v1_3_dissect.fill_qty(buffer, index, packet, parent)

  -- Instrument Id: 4 Byte Signed Fixed Width Integer
  index, instrument_id = coinbase_derivatives_ordersapi_sbe_v1_3_dissect.instrument_id(buffer, index, packet, parent)

  -- Is Aggressor: 1 Byte Signed Fixed Width Integer Enum with 2 values
  index, is_aggressor = coinbase_derivatives_ordersapi_sbe_v1_3_dissect.is_aggressor(buffer, index, packet, parent)

  return index
end

-- Dissect: Order Filled Message
coinbase_derivatives_ordersapi_sbe_v1_3_dissect.order_filled_message = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.order_filled_message then
    local length = coinbase_derivatives_ordersapi_sbe_v1_3_size_of.order_filled_message(buffer, offset)
    local range = buffer(offset, length)
    local display = coinbase_derivatives_ordersapi_sbe_v1_3_display.order_filled_message(buffer, packet, parent)
    parent = parent:add(coinbase_derivatives_ordersapi_sbe_v1_3.fields.order_filled_message, range, display)
  end

  return coinbase_derivatives_ordersapi_sbe_v1_3_dissect.order_filled_message_fields(buffer, offset, packet, parent)
end

-- Size: Error Message
coinbase_derivatives_ordersapi_sbe_v1_3_size_of.error_message = 32

-- Display: Error Message
coinbase_derivatives_ordersapi_sbe_v1_3_display.error_message = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Error Message: No Value"
  end

  return "Error Message: "..value
end

-- Dissect: Error Message
coinbase_derivatives_ordersapi_sbe_v1_3_dissect.error_message = function(buffer, offset, packet, parent)
  local length = coinbase_derivatives_ordersapi_sbe_v1_3_size_of.error_message
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

  local display = coinbase_derivatives_ordersapi_sbe_v1_3_display.error_message(value, buffer, offset, packet, parent)

  parent:add(coinbase_derivatives_ordersapi_sbe_v1_3.fields.error_message, range, value, display)

  return offset + length, value
end

-- Calculate size of: Unlock Trading Reject Message
coinbase_derivatives_ordersapi_sbe_v1_3_size_of.unlock_trading_reject_message = function(buffer, offset)
  local index = 0

  index = index + coinbase_derivatives_ordersapi_sbe_v1_3_size_of.timestamp

  index = index + coinbase_derivatives_ordersapi_sbe_v1_3_size_of.correlation_id

  index = index + coinbase_derivatives_ordersapi_sbe_v1_3_size_of.error_message

  return index
end

-- Display: Unlock Trading Reject Message
coinbase_derivatives_ordersapi_sbe_v1_3_display.unlock_trading_reject_message = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Unlock Trading Reject Message
coinbase_derivatives_ordersapi_sbe_v1_3_dissect.unlock_trading_reject_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Timestamp: 8 Byte Signed Fixed Width Integer
  index, timestamp = coinbase_derivatives_ordersapi_sbe_v1_3_dissect.timestamp(buffer, index, packet, parent)

  -- Correlation Id: 8 Byte Signed Fixed Width Integer
  index, correlation_id = coinbase_derivatives_ordersapi_sbe_v1_3_dissect.correlation_id(buffer, index, packet, parent)

  -- Error Message: 32 Byte Ascii String
  index, error_message = coinbase_derivatives_ordersapi_sbe_v1_3_dissect.error_message(buffer, index, packet, parent)

  return index
end

-- Dissect: Unlock Trading Reject Message
coinbase_derivatives_ordersapi_sbe_v1_3_dissect.unlock_trading_reject_message = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.unlock_trading_reject_message then
    local length = coinbase_derivatives_ordersapi_sbe_v1_3_size_of.unlock_trading_reject_message(buffer, offset)
    local range = buffer(offset, length)
    local display = coinbase_derivatives_ordersapi_sbe_v1_3_display.unlock_trading_reject_message(buffer, packet, parent)
    parent = parent:add(coinbase_derivatives_ordersapi_sbe_v1_3.fields.unlock_trading_reject_message, range, display)
  end

  return coinbase_derivatives_ordersapi_sbe_v1_3_dissect.unlock_trading_reject_message_fields(buffer, offset, packet, parent)
end

-- Size: Num Users Affected
coinbase_derivatives_ordersapi_sbe_v1_3_size_of.num_users_affected = 4

-- Display: Num Users Affected
coinbase_derivatives_ordersapi_sbe_v1_3_display.num_users_affected = function(value)
  return "Num Users Affected: "..value
end

-- Dissect: Num Users Affected
coinbase_derivatives_ordersapi_sbe_v1_3_dissect.num_users_affected = function(buffer, offset, packet, parent)
  local length = coinbase_derivatives_ordersapi_sbe_v1_3_size_of.num_users_affected
  local range = buffer(offset, length)
  local value = range:le_int()
  local display = coinbase_derivatives_ordersapi_sbe_v1_3_display.num_users_affected(value, buffer, offset, packet, parent)

  parent:add(coinbase_derivatives_ordersapi_sbe_v1_3.fields.num_users_affected, range, value, display)

  return offset + length, value
end

-- Calculate size of: Unlock Trading Ack Message
coinbase_derivatives_ordersapi_sbe_v1_3_size_of.unlock_trading_ack_message = function(buffer, offset)
  local index = 0

  index = index + coinbase_derivatives_ordersapi_sbe_v1_3_size_of.timestamp

  index = index + coinbase_derivatives_ordersapi_sbe_v1_3_size_of.correlation_id

  index = index + coinbase_derivatives_ordersapi_sbe_v1_3_size_of.num_users_affected

  return index
end

-- Display: Unlock Trading Ack Message
coinbase_derivatives_ordersapi_sbe_v1_3_display.unlock_trading_ack_message = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Unlock Trading Ack Message
coinbase_derivatives_ordersapi_sbe_v1_3_dissect.unlock_trading_ack_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Timestamp: 8 Byte Signed Fixed Width Integer
  index, timestamp = coinbase_derivatives_ordersapi_sbe_v1_3_dissect.timestamp(buffer, index, packet, parent)

  -- Correlation Id: 8 Byte Signed Fixed Width Integer
  index, correlation_id = coinbase_derivatives_ordersapi_sbe_v1_3_dissect.correlation_id(buffer, index, packet, parent)

  -- Num Users Affected: 4 Byte Signed Fixed Width Integer
  index, num_users_affected = coinbase_derivatives_ordersapi_sbe_v1_3_dissect.num_users_affected(buffer, index, packet, parent)

  return index
end

-- Dissect: Unlock Trading Ack Message
coinbase_derivatives_ordersapi_sbe_v1_3_dissect.unlock_trading_ack_message = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.unlock_trading_ack_message then
    local length = coinbase_derivatives_ordersapi_sbe_v1_3_size_of.unlock_trading_ack_message(buffer, offset)
    local range = buffer(offset, length)
    local display = coinbase_derivatives_ordersapi_sbe_v1_3_display.unlock_trading_ack_message(buffer, packet, parent)
    parent = parent:add(coinbase_derivatives_ordersapi_sbe_v1_3.fields.unlock_trading_ack_message, range, display)
  end

  return coinbase_derivatives_ordersapi_sbe_v1_3_dissect.unlock_trading_ack_message_fields(buffer, offset, packet, parent)
end

-- Size: Current Session Only
coinbase_derivatives_ordersapi_sbe_v1_3_size_of.current_session_only = 1

-- Display: Current Session Only
coinbase_derivatives_ordersapi_sbe_v1_3_display.current_session_only = function(value)
  if value == 0 then
    return "Current Session Only: False (0)"
  end
  if value == 1 then
    return "Current Session Only: True (1)"
  end

  return "Current Session Only: Unknown("..value..")"
end

-- Dissect: Current Session Only
coinbase_derivatives_ordersapi_sbe_v1_3_dissect.current_session_only = function(buffer, offset, packet, parent)
  local length = coinbase_derivatives_ordersapi_sbe_v1_3_size_of.current_session_only
  local range = buffer(offset, length)
  local value = range:le_int()
  local display = coinbase_derivatives_ordersapi_sbe_v1_3_display.current_session_only(value, buffer, offset, packet, parent)

  parent:add(coinbase_derivatives_ordersapi_sbe_v1_3.fields.current_session_only, range, value, display)

  return offset + length, value
end

-- Calculate size of: Unlock Trading Message
coinbase_derivatives_ordersapi_sbe_v1_3_size_of.unlock_trading_message = function(buffer, offset)
  local index = 0

  index = index + coinbase_derivatives_ordersapi_sbe_v1_3_size_of.correlation_id

  index = index + coinbase_derivatives_ordersapi_sbe_v1_3_size_of.current_session_only

  return index
end

-- Display: Unlock Trading Message
coinbase_derivatives_ordersapi_sbe_v1_3_display.unlock_trading_message = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Unlock Trading Message
coinbase_derivatives_ordersapi_sbe_v1_3_dissect.unlock_trading_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Correlation Id: 8 Byte Signed Fixed Width Integer
  index, correlation_id = coinbase_derivatives_ordersapi_sbe_v1_3_dissect.correlation_id(buffer, index, packet, parent)

  -- Current Session Only: 1 Byte Signed Fixed Width Integer Enum with 2 values
  index, current_session_only = coinbase_derivatives_ordersapi_sbe_v1_3_dissect.current_session_only(buffer, index, packet, parent)

  return index
end

-- Dissect: Unlock Trading Message
coinbase_derivatives_ordersapi_sbe_v1_3_dissect.unlock_trading_message = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.unlock_trading_message then
    local length = coinbase_derivatives_ordersapi_sbe_v1_3_size_of.unlock_trading_message(buffer, offset)
    local range = buffer(offset, length)
    local display = coinbase_derivatives_ordersapi_sbe_v1_3_display.unlock_trading_message(buffer, packet, parent)
    parent = parent:add(coinbase_derivatives_ordersapi_sbe_v1_3.fields.unlock_trading_message, range, display)
  end

  return coinbase_derivatives_ordersapi_sbe_v1_3_dissect.unlock_trading_message_fields(buffer, offset, packet, parent)
end

-- Calculate size of: Mass Cancel Order Reject Message
coinbase_derivatives_ordersapi_sbe_v1_3_size_of.mass_cancel_order_reject_message = function(buffer, offset)
  local index = 0

  index = index + coinbase_derivatives_ordersapi_sbe_v1_3_size_of.timestamp

  index = index + coinbase_derivatives_ordersapi_sbe_v1_3_size_of.correlation_id

  index = index + coinbase_derivatives_ordersapi_sbe_v1_3_size_of.error_message

  return index
end

-- Display: Mass Cancel Order Reject Message
coinbase_derivatives_ordersapi_sbe_v1_3_display.mass_cancel_order_reject_message = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Mass Cancel Order Reject Message
coinbase_derivatives_ordersapi_sbe_v1_3_dissect.mass_cancel_order_reject_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Timestamp: 8 Byte Signed Fixed Width Integer
  index, timestamp = coinbase_derivatives_ordersapi_sbe_v1_3_dissect.timestamp(buffer, index, packet, parent)

  -- Correlation Id: 8 Byte Signed Fixed Width Integer
  index, correlation_id = coinbase_derivatives_ordersapi_sbe_v1_3_dissect.correlation_id(buffer, index, packet, parent)

  -- Error Message: 32 Byte Ascii String
  index, error_message = coinbase_derivatives_ordersapi_sbe_v1_3_dissect.error_message(buffer, index, packet, parent)

  return index
end

-- Dissect: Mass Cancel Order Reject Message
coinbase_derivatives_ordersapi_sbe_v1_3_dissect.mass_cancel_order_reject_message = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.mass_cancel_order_reject_message then
    local length = coinbase_derivatives_ordersapi_sbe_v1_3_size_of.mass_cancel_order_reject_message(buffer, offset)
    local range = buffer(offset, length)
    local display = coinbase_derivatives_ordersapi_sbe_v1_3_display.mass_cancel_order_reject_message(buffer, packet, parent)
    parent = parent:add(coinbase_derivatives_ordersapi_sbe_v1_3.fields.mass_cancel_order_reject_message, range, display)
  end

  return coinbase_derivatives_ordersapi_sbe_v1_3_dissect.mass_cancel_order_reject_message_fields(buffer, offset, packet, parent)
end

-- Size: Trading Lock Applied
coinbase_derivatives_ordersapi_sbe_v1_3_size_of.trading_lock_applied = 1

-- Display: Trading Lock Applied
coinbase_derivatives_ordersapi_sbe_v1_3_display.trading_lock_applied = function(value)
  if value == 0 then
    return "Trading Lock Applied: False (0)"
  end
  if value == 1 then
    return "Trading Lock Applied: True (1)"
  end

  return "Trading Lock Applied: Unknown("..value..")"
end

-- Dissect: Trading Lock Applied
coinbase_derivatives_ordersapi_sbe_v1_3_dissect.trading_lock_applied = function(buffer, offset, packet, parent)
  local length = coinbase_derivatives_ordersapi_sbe_v1_3_size_of.trading_lock_applied
  local range = buffer(offset, length)
  local value = range:le_int()
  local display = coinbase_derivatives_ordersapi_sbe_v1_3_display.trading_lock_applied(value, buffer, offset, packet, parent)

  parent:add(coinbase_derivatives_ordersapi_sbe_v1_3.fields.trading_lock_applied, range, value, display)

  return offset + length, value
end

-- Size: Only Current Session
coinbase_derivatives_ordersapi_sbe_v1_3_size_of.only_current_session = 1

-- Display: Only Current Session
coinbase_derivatives_ordersapi_sbe_v1_3_display.only_current_session = function(value)
  if value == 0 then
    return "Only Current Session: False (0)"
  end
  if value == 1 then
    return "Only Current Session: True (1)"
  end

  return "Only Current Session: Unknown("..value..")"
end

-- Dissect: Only Current Session
coinbase_derivatives_ordersapi_sbe_v1_3_dissect.only_current_session = function(buffer, offset, packet, parent)
  local length = coinbase_derivatives_ordersapi_sbe_v1_3_size_of.only_current_session
  local range = buffer(offset, length)
  local value = range:le_int()
  local display = coinbase_derivatives_ordersapi_sbe_v1_3_display.only_current_session(value, buffer, offset, packet, parent)

  parent:add(coinbase_derivatives_ordersapi_sbe_v1_3.fields.only_current_session, range, value, display)

  return offset + length, value
end

-- Size: Canceled Count
coinbase_derivatives_ordersapi_sbe_v1_3_size_of.canceled_count = 4

-- Display: Canceled Count
coinbase_derivatives_ordersapi_sbe_v1_3_display.canceled_count = function(value)
  return "Canceled Count: "..value
end

-- Dissect: Canceled Count
coinbase_derivatives_ordersapi_sbe_v1_3_dissect.canceled_count = function(buffer, offset, packet, parent)
  local length = coinbase_derivatives_ordersapi_sbe_v1_3_size_of.canceled_count
  local range = buffer(offset, length)
  local value = range:le_int()
  local display = coinbase_derivatives_ordersapi_sbe_v1_3_display.canceled_count(value, buffer, offset, packet, parent)

  parent:add(coinbase_derivatives_ordersapi_sbe_v1_3.fields.canceled_count, range, value, display)

  return offset + length, value
end

-- Calculate size of: Mass Cancel Order Ack Message
coinbase_derivatives_ordersapi_sbe_v1_3_size_of.mass_cancel_order_ack_message = function(buffer, offset)
  local index = 0

  index = index + coinbase_derivatives_ordersapi_sbe_v1_3_size_of.timestamp

  index = index + coinbase_derivatives_ordersapi_sbe_v1_3_size_of.exec_id

  index = index + coinbase_derivatives_ordersapi_sbe_v1_3_size_of.correlation_id

  index = index + coinbase_derivatives_ordersapi_sbe_v1_3_size_of.canceled_count

  index = index + coinbase_derivatives_ordersapi_sbe_v1_3_size_of.only_current_session

  index = index + coinbase_derivatives_ordersapi_sbe_v1_3_size_of.trading_lock_applied

  return index
end

-- Display: Mass Cancel Order Ack Message
coinbase_derivatives_ordersapi_sbe_v1_3_display.mass_cancel_order_ack_message = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Mass Cancel Order Ack Message
coinbase_derivatives_ordersapi_sbe_v1_3_dissect.mass_cancel_order_ack_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Timestamp: 8 Byte Signed Fixed Width Integer
  index, timestamp = coinbase_derivatives_ordersapi_sbe_v1_3_dissect.timestamp(buffer, index, packet, parent)

  -- Exec Id: 8 Byte Signed Fixed Width Integer
  index, exec_id = coinbase_derivatives_ordersapi_sbe_v1_3_dissect.exec_id(buffer, index, packet, parent)

  -- Correlation Id: 8 Byte Signed Fixed Width Integer
  index, correlation_id = coinbase_derivatives_ordersapi_sbe_v1_3_dissect.correlation_id(buffer, index, packet, parent)

  -- Canceled Count: 4 Byte Signed Fixed Width Integer
  index, canceled_count = coinbase_derivatives_ordersapi_sbe_v1_3_dissect.canceled_count(buffer, index, packet, parent)

  -- Only Current Session: 1 Byte Signed Fixed Width Integer Enum with 2 values
  index, only_current_session = coinbase_derivatives_ordersapi_sbe_v1_3_dissect.only_current_session(buffer, index, packet, parent)

  -- Trading Lock Applied: 1 Byte Signed Fixed Width Integer Enum with 2 values
  index, trading_lock_applied = coinbase_derivatives_ordersapi_sbe_v1_3_dissect.trading_lock_applied(buffer, index, packet, parent)

  return index
end

-- Dissect: Mass Cancel Order Ack Message
coinbase_derivatives_ordersapi_sbe_v1_3_dissect.mass_cancel_order_ack_message = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.mass_cancel_order_ack_message then
    local length = coinbase_derivatives_ordersapi_sbe_v1_3_size_of.mass_cancel_order_ack_message(buffer, offset)
    local range = buffer(offset, length)
    local display = coinbase_derivatives_ordersapi_sbe_v1_3_display.mass_cancel_order_ack_message(buffer, packet, parent)
    parent = parent:add(coinbase_derivatives_ordersapi_sbe_v1_3.fields.mass_cancel_order_ack_message, range, display)
  end

  return coinbase_derivatives_ordersapi_sbe_v1_3_dissect.mass_cancel_order_ack_message_fields(buffer, offset, packet, parent)
end

-- Size: Request Trading Lock
coinbase_derivatives_ordersapi_sbe_v1_3_size_of.request_trading_lock = 1

-- Display: Request Trading Lock
coinbase_derivatives_ordersapi_sbe_v1_3_display.request_trading_lock = function(value)
  if value == 0 then
    return "Request Trading Lock: False (0)"
  end
  if value == 1 then
    return "Request Trading Lock: True (1)"
  end

  return "Request Trading Lock: Unknown("..value..")"
end

-- Dissect: Request Trading Lock
coinbase_derivatives_ordersapi_sbe_v1_3_dissect.request_trading_lock = function(buffer, offset, packet, parent)
  local length = coinbase_derivatives_ordersapi_sbe_v1_3_size_of.request_trading_lock
  local range = buffer(offset, length)
  local value = range:le_int()
  local display = coinbase_derivatives_ordersapi_sbe_v1_3_display.request_trading_lock(value, buffer, offset, packet, parent)

  parent:add(coinbase_derivatives_ordersapi_sbe_v1_3.fields.request_trading_lock, range, value, display)

  return offset + length, value
end

-- Size: Side
coinbase_derivatives_ordersapi_sbe_v1_3_size_of.side = 1

-- Display: Side
coinbase_derivatives_ordersapi_sbe_v1_3_display.side = function(value)
  if value == 1 then
    return "Side: Buy (1)"
  end
  if value == -1 then
    return "Side: Sell (-1)"
  end

  return "Side: Unknown("..value..")"
end

-- Dissect: Side
coinbase_derivatives_ordersapi_sbe_v1_3_dissect.side = function(buffer, offset, packet, parent)
  local length = coinbase_derivatives_ordersapi_sbe_v1_3_size_of.side
  local range = buffer(offset, length)
  local value = range:le_int()
  local display = coinbase_derivatives_ordersapi_sbe_v1_3_display.side(value, buffer, offset, packet, parent)

  parent:add(coinbase_derivatives_ordersapi_sbe_v1_3.fields.side, range, value, display)

  return offset + length, value
end

-- Size: Limit Price
coinbase_derivatives_ordersapi_sbe_v1_3_size_of.limit_price = 8

-- Display: Limit Price
coinbase_derivatives_ordersapi_sbe_v1_3_display.limit_price = function(value)
  return "Limit Price: "..value
end

-- Dissect: Limit Price
coinbase_derivatives_ordersapi_sbe_v1_3_dissect.limit_price = function(buffer, offset, packet, parent)
  local length = coinbase_derivatives_ordersapi_sbe_v1_3_size_of.limit_price
  local range = buffer(offset, length)
  local value = range:le_int64()
  local display = coinbase_derivatives_ordersapi_sbe_v1_3_display.limit_price(value, buffer, offset, packet, parent)

  parent:add(coinbase_derivatives_ordersapi_sbe_v1_3.fields.limit_price, range, value, display)

  return offset + length, value
end

-- Calculate size of: Mass Cancel Order Message
coinbase_derivatives_ordersapi_sbe_v1_3_size_of.mass_cancel_order_message = function(buffer, offset)
  local index = 0

  index = index + coinbase_derivatives_ordersapi_sbe_v1_3_size_of.correlation_id

  index = index + coinbase_derivatives_ordersapi_sbe_v1_3_size_of.limit_price

  index = index + coinbase_derivatives_ordersapi_sbe_v1_3_size_of.instrument_id

  index = index + coinbase_derivatives_ordersapi_sbe_v1_3_size_of.side

  index = index + coinbase_derivatives_ordersapi_sbe_v1_3_size_of.current_session_only

  index = index + coinbase_derivatives_ordersapi_sbe_v1_3_size_of.request_trading_lock

  return index
end

-- Display: Mass Cancel Order Message
coinbase_derivatives_ordersapi_sbe_v1_3_display.mass_cancel_order_message = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Mass Cancel Order Message
coinbase_derivatives_ordersapi_sbe_v1_3_dissect.mass_cancel_order_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Correlation Id: 8 Byte Signed Fixed Width Integer
  index, correlation_id = coinbase_derivatives_ordersapi_sbe_v1_3_dissect.correlation_id(buffer, index, packet, parent)

  -- Limit Price: 8 Byte Signed Fixed Width Integer
  index, limit_price = coinbase_derivatives_ordersapi_sbe_v1_3_dissect.limit_price(buffer, index, packet, parent)

  -- Instrument Id: 4 Byte Signed Fixed Width Integer
  index, instrument_id = coinbase_derivatives_ordersapi_sbe_v1_3_dissect.instrument_id(buffer, index, packet, parent)

  -- Side: 1 Byte Signed Fixed Width Integer Enum with 2 values
  index, side = coinbase_derivatives_ordersapi_sbe_v1_3_dissect.side(buffer, index, packet, parent)

  -- Current Session Only: 1 Byte Signed Fixed Width Integer Enum with 2 values
  index, current_session_only = coinbase_derivatives_ordersapi_sbe_v1_3_dissect.current_session_only(buffer, index, packet, parent)

  -- Request Trading Lock: 1 Byte Signed Fixed Width Integer Enum with 2 values
  index, request_trading_lock = coinbase_derivatives_ordersapi_sbe_v1_3_dissect.request_trading_lock(buffer, index, packet, parent)

  return index
end

-- Dissect: Mass Cancel Order Message
coinbase_derivatives_ordersapi_sbe_v1_3_dissect.mass_cancel_order_message = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.mass_cancel_order_message then
    local length = coinbase_derivatives_ordersapi_sbe_v1_3_size_of.mass_cancel_order_message(buffer, offset)
    local range = buffer(offset, length)
    local display = coinbase_derivatives_ordersapi_sbe_v1_3_display.mass_cancel_order_message(buffer, packet, parent)
    parent = parent:add(coinbase_derivatives_ordersapi_sbe_v1_3.fields.mass_cancel_order_message, range, display)
  end

  return coinbase_derivatives_ordersapi_sbe_v1_3_dissect.mass_cancel_order_message_fields(buffer, offset, packet, parent)
end

-- Size: Cancel Order Reject Details
coinbase_derivatives_ordersapi_sbe_v1_3_size_of.cancel_order_reject_details = 31

-- Display: Cancel Order Reject Details
coinbase_derivatives_ordersapi_sbe_v1_3_display.cancel_order_reject_details = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Cancel Order Reject Details: No Value"
  end

  return "Cancel Order Reject Details: "..value
end

-- Dissect: Cancel Order Reject Details
coinbase_derivatives_ordersapi_sbe_v1_3_dissect.cancel_order_reject_details = function(buffer, offset, packet, parent)
  local length = coinbase_derivatives_ordersapi_sbe_v1_3_size_of.cancel_order_reject_details
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

  local display = coinbase_derivatives_ordersapi_sbe_v1_3_display.cancel_order_reject_details(value, buffer, offset, packet, parent)

  parent:add(coinbase_derivatives_ordersapi_sbe_v1_3.fields.cancel_order_reject_details, range, value, display)

  return offset + length, value
end

-- Size: Cancel Order Reject Reason
coinbase_derivatives_ordersapi_sbe_v1_3_size_of.cancel_order_reject_reason = 1

-- Display: Cancel Order Reject Reason
coinbase_derivatives_ordersapi_sbe_v1_3_display.cancel_order_reject_reason = function(value)
  if value == 1 then
    return "Cancel Order Reject Reason: Error (1)"
  end
  if value == 2 then
    return "Cancel Order Reject Reason: Unknownorder (2)"
  end
  if value == 3 then
    return "Cancel Order Reject Reason: Orderfilled (3)"
  end

  return "Cancel Order Reject Reason: Unknown("..value..")"
end

-- Dissect: Cancel Order Reject Reason
coinbase_derivatives_ordersapi_sbe_v1_3_dissect.cancel_order_reject_reason = function(buffer, offset, packet, parent)
  local length = coinbase_derivatives_ordersapi_sbe_v1_3_size_of.cancel_order_reject_reason
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = coinbase_derivatives_ordersapi_sbe_v1_3_display.cancel_order_reject_reason(value, buffer, offset, packet, parent)

  parent:add(coinbase_derivatives_ordersapi_sbe_v1_3.fields.cancel_order_reject_reason, range, value, display)

  return offset + length, value
end

-- Size: Order Id Optional
coinbase_derivatives_ordersapi_sbe_v1_3_size_of.order_id_optional = 8

-- Display: Order Id Optional
coinbase_derivatives_ordersapi_sbe_v1_3_display.order_id_optional = function(value)
  -- Check if field has value
  if value == Int64(0x00000000, 0x80000000) then
    return "Order Id Optional: No Value"
  end

  return "Order Id Optional: "..value
end

-- Dissect: Order Id Optional
coinbase_derivatives_ordersapi_sbe_v1_3_dissect.order_id_optional = function(buffer, offset, packet, parent)
  local length = coinbase_derivatives_ordersapi_sbe_v1_3_size_of.order_id_optional
  local range = buffer(offset, length)
  local value = range:le_int64()
  local display = coinbase_derivatives_ordersapi_sbe_v1_3_display.order_id_optional(value, buffer, offset, packet, parent)

  parent:add(coinbase_derivatives_ordersapi_sbe_v1_3.fields.order_id_optional, range, value, display)

  return offset + length, value
end

-- Calculate size of: Cancel Order Reject Message
coinbase_derivatives_ordersapi_sbe_v1_3_size_of.cancel_order_reject_message = function(buffer, offset)
  local index = 0

  index = index + coinbase_derivatives_ordersapi_sbe_v1_3_size_of.timestamp

  index = index + coinbase_derivatives_ordersapi_sbe_v1_3_size_of.client_order_id

  index = index + coinbase_derivatives_ordersapi_sbe_v1_3_size_of.correlation_id

  index = index + coinbase_derivatives_ordersapi_sbe_v1_3_size_of.order_id_optional

  index = index + coinbase_derivatives_ordersapi_sbe_v1_3_size_of.cancel_order_reject_reason

  index = index + coinbase_derivatives_ordersapi_sbe_v1_3_size_of.cancel_order_reject_details

  return index
end

-- Display: Cancel Order Reject Message
coinbase_derivatives_ordersapi_sbe_v1_3_display.cancel_order_reject_message = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Cancel Order Reject Message
coinbase_derivatives_ordersapi_sbe_v1_3_dissect.cancel_order_reject_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Timestamp: 8 Byte Signed Fixed Width Integer
  index, timestamp = coinbase_derivatives_ordersapi_sbe_v1_3_dissect.timestamp(buffer, index, packet, parent)

  -- Client Order Id: 8 Byte Signed Fixed Width Integer
  index, client_order_id = coinbase_derivatives_ordersapi_sbe_v1_3_dissect.client_order_id(buffer, index, packet, parent)

  -- Correlation Id: 8 Byte Signed Fixed Width Integer
  index, correlation_id = coinbase_derivatives_ordersapi_sbe_v1_3_dissect.correlation_id(buffer, index, packet, parent)

  -- Order Id Optional: 8 Byte Signed Fixed Width Integer Nullable
  index, order_id_optional = coinbase_derivatives_ordersapi_sbe_v1_3_dissect.order_id_optional(buffer, index, packet, parent)

  -- Cancel Order Reject Reason: 1 Byte Unsigned Fixed Width Integer Enum with 3 values
  index, cancel_order_reject_reason = coinbase_derivatives_ordersapi_sbe_v1_3_dissect.cancel_order_reject_reason(buffer, index, packet, parent)

  -- Cancel Order Reject Details: 31 Byte Ascii String
  index, cancel_order_reject_details = coinbase_derivatives_ordersapi_sbe_v1_3_dissect.cancel_order_reject_details(buffer, index, packet, parent)

  return index
end

-- Dissect: Cancel Order Reject Message
coinbase_derivatives_ordersapi_sbe_v1_3_dissect.cancel_order_reject_message = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.cancel_order_reject_message then
    local length = coinbase_derivatives_ordersapi_sbe_v1_3_size_of.cancel_order_reject_message(buffer, offset)
    local range = buffer(offset, length)
    local display = coinbase_derivatives_ordersapi_sbe_v1_3_display.cancel_order_reject_message(buffer, packet, parent)
    parent = parent:add(coinbase_derivatives_ordersapi_sbe_v1_3.fields.cancel_order_reject_message, range, display)
  end

  return coinbase_derivatives_ordersapi_sbe_v1_3_dissect.cancel_order_reject_message_fields(buffer, offset, packet, parent)
end

-- Size: Cancel Reason
coinbase_derivatives_ordersapi_sbe_v1_3_size_of.cancel_reason = 1

-- Display: Cancel Reason
coinbase_derivatives_ordersapi_sbe_v1_3_display.cancel_reason = function(value)
  if value == 0 then
    return "Cancel Reason: Expired (0)"
  end
  if value == 1 then
    return "Cancel Reason: Canceledbyuser (1)"
  end
  if value == 2 then
    return "Cancel Reason: Selfmatchprevention (2)"
  end
  if value == 3 then
    return "Cancel Reason: Clientdisconnect (3)"
  end
  if value == 4 then
    return "Cancel Reason: Pricelimit (4)"
  end
  if value == 5 then
    return "Cancel Reason: Admincancel (5)"
  end
  if value == 6 then
    return "Cancel Reason: Masscancel (6)"
  end
  if value == 7 then
    return "Cancel Reason: Streamreplaced (7)"
  end
  if value == 8 then
    return "Cancel Reason: Activelimitexceeded (8)"
  end

  return "Cancel Reason: Unknown("..value..")"
end

-- Dissect: Cancel Reason
coinbase_derivatives_ordersapi_sbe_v1_3_dissect.cancel_reason = function(buffer, offset, packet, parent)
  local length = coinbase_derivatives_ordersapi_sbe_v1_3_size_of.cancel_reason
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = coinbase_derivatives_ordersapi_sbe_v1_3_display.cancel_reason(value, buffer, offset, packet, parent)

  parent:add(coinbase_derivatives_ordersapi_sbe_v1_3.fields.cancel_reason, range, value, display)

  return offset + length, value
end

-- Size: Receive Time
coinbase_derivatives_ordersapi_sbe_v1_3_size_of.receive_time = 8

-- Display: Receive Time
coinbase_derivatives_ordersapi_sbe_v1_3_display.receive_time = function(value)
  -- Parse unix timestamp
  local seconds = value:tonumber()/1000000000
  local nanoseconds = value:tonumber()%1000000000

  return "Receive Time: "..os.date("%x %H:%M:%S.", seconds)..string.format("%09d", nanoseconds)
end

-- Dissect: Receive Time
coinbase_derivatives_ordersapi_sbe_v1_3_dissect.receive_time = function(buffer, offset, packet, parent)
  local length = coinbase_derivatives_ordersapi_sbe_v1_3_size_of.receive_time
  local range = buffer(offset, length)
  local value = range:le_int64()
  local display = coinbase_derivatives_ordersapi_sbe_v1_3_display.receive_time(value, buffer, offset, packet, parent)

  parent:add(coinbase_derivatives_ordersapi_sbe_v1_3.fields.receive_time, range, value, display)

  return offset + length, value
end

-- Calculate size of: Order Canceled Message
coinbase_derivatives_ordersapi_sbe_v1_3_size_of.order_canceled_message = function(buffer, offset)
  local index = 0

  index = index + coinbase_derivatives_ordersapi_sbe_v1_3_size_of.timestamp

  index = index + coinbase_derivatives_ordersapi_sbe_v1_3_size_of.exec_id

  index = index + coinbase_derivatives_ordersapi_sbe_v1_3_size_of.client_order_id

  index = index + coinbase_derivatives_ordersapi_sbe_v1_3_size_of.correlation_id

  index = index + coinbase_derivatives_ordersapi_sbe_v1_3_size_of.order_id

  index = index + coinbase_derivatives_ordersapi_sbe_v1_3_size_of.receive_time

  index = index + coinbase_derivatives_ordersapi_sbe_v1_3_size_of.total_filled

  index = index + coinbase_derivatives_ordersapi_sbe_v1_3_size_of.instrument_id

  index = index + coinbase_derivatives_ordersapi_sbe_v1_3_size_of.cancel_reason

  return index
end

-- Display: Order Canceled Message
coinbase_derivatives_ordersapi_sbe_v1_3_display.order_canceled_message = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Order Canceled Message
coinbase_derivatives_ordersapi_sbe_v1_3_dissect.order_canceled_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Timestamp: 8 Byte Signed Fixed Width Integer
  index, timestamp = coinbase_derivatives_ordersapi_sbe_v1_3_dissect.timestamp(buffer, index, packet, parent)

  -- Exec Id: 8 Byte Signed Fixed Width Integer
  index, exec_id = coinbase_derivatives_ordersapi_sbe_v1_3_dissect.exec_id(buffer, index, packet, parent)

  -- Client Order Id: 8 Byte Signed Fixed Width Integer
  index, client_order_id = coinbase_derivatives_ordersapi_sbe_v1_3_dissect.client_order_id(buffer, index, packet, parent)

  -- Correlation Id: 8 Byte Signed Fixed Width Integer
  index, correlation_id = coinbase_derivatives_ordersapi_sbe_v1_3_dissect.correlation_id(buffer, index, packet, parent)

  -- Order Id: 8 Byte Signed Fixed Width Integer
  index, order_id = coinbase_derivatives_ordersapi_sbe_v1_3_dissect.order_id(buffer, index, packet, parent)

  -- Receive Time: 8 Byte Signed Fixed Width Integer
  index, receive_time = coinbase_derivatives_ordersapi_sbe_v1_3_dissect.receive_time(buffer, index, packet, parent)

  -- Total Filled: 4 Byte Signed Fixed Width Integer
  index, total_filled = coinbase_derivatives_ordersapi_sbe_v1_3_dissect.total_filled(buffer, index, packet, parent)

  -- Instrument Id: 4 Byte Signed Fixed Width Integer
  index, instrument_id = coinbase_derivatives_ordersapi_sbe_v1_3_dissect.instrument_id(buffer, index, packet, parent)

  -- Cancel Reason: 1 Byte Unsigned Fixed Width Integer Enum with 9 values
  index, cancel_reason = coinbase_derivatives_ordersapi_sbe_v1_3_dissect.cancel_reason(buffer, index, packet, parent)

  return index
end

-- Dissect: Order Canceled Message
coinbase_derivatives_ordersapi_sbe_v1_3_dissect.order_canceled_message = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.order_canceled_message then
    local length = coinbase_derivatives_ordersapi_sbe_v1_3_size_of.order_canceled_message(buffer, offset)
    local range = buffer(offset, length)
    local display = coinbase_derivatives_ordersapi_sbe_v1_3_display.order_canceled_message(buffer, packet, parent)
    parent = parent:add(coinbase_derivatives_ordersapi_sbe_v1_3.fields.order_canceled_message, range, display)
  end

  return coinbase_derivatives_ordersapi_sbe_v1_3_dissect.order_canceled_message_fields(buffer, offset, packet, parent)
end

-- Calculate size of: Cancel Order Message
coinbase_derivatives_ordersapi_sbe_v1_3_size_of.cancel_order_message = function(buffer, offset)
  local index = 0

  index = index + coinbase_derivatives_ordersapi_sbe_v1_3_size_of.client_order_id

  index = index + coinbase_derivatives_ordersapi_sbe_v1_3_size_of.correlation_id

  index = index + coinbase_derivatives_ordersapi_sbe_v1_3_size_of.instrument_id

  return index
end

-- Display: Cancel Order Message
coinbase_derivatives_ordersapi_sbe_v1_3_display.cancel_order_message = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Cancel Order Message
coinbase_derivatives_ordersapi_sbe_v1_3_dissect.cancel_order_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Client Order Id: 8 Byte Signed Fixed Width Integer
  index, client_order_id = coinbase_derivatives_ordersapi_sbe_v1_3_dissect.client_order_id(buffer, index, packet, parent)

  -- Correlation Id: 8 Byte Signed Fixed Width Integer
  index, correlation_id = coinbase_derivatives_ordersapi_sbe_v1_3_dissect.correlation_id(buffer, index, packet, parent)

  -- Instrument Id: 4 Byte Signed Fixed Width Integer
  index, instrument_id = coinbase_derivatives_ordersapi_sbe_v1_3_dissect.instrument_id(buffer, index, packet, parent)

  return index
end

-- Dissect: Cancel Order Message
coinbase_derivatives_ordersapi_sbe_v1_3_dissect.cancel_order_message = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.cancel_order_message then
    local length = coinbase_derivatives_ordersapi_sbe_v1_3_size_of.cancel_order_message(buffer, offset)
    local range = buffer(offset, length)
    local display = coinbase_derivatives_ordersapi_sbe_v1_3_display.cancel_order_message(buffer, packet, parent)
    parent = parent:add(coinbase_derivatives_ordersapi_sbe_v1_3.fields.cancel_order_message, range, display)
  end

  return coinbase_derivatives_ordersapi_sbe_v1_3_dissect.cancel_order_message_fields(buffer, offset, packet, parent)
end

-- Calculate size of: Order Replaced Message
coinbase_derivatives_ordersapi_sbe_v1_3_size_of.order_replaced_message = function(buffer, offset)
  local index = 0

  index = index + coinbase_derivatives_ordersapi_sbe_v1_3_size_of.timestamp

  index = index + coinbase_derivatives_ordersapi_sbe_v1_3_size_of.exec_id

  index = index + coinbase_derivatives_ordersapi_sbe_v1_3_size_of.client_order_id

  index = index + coinbase_derivatives_ordersapi_sbe_v1_3_size_of.correlation_id

  index = index + coinbase_derivatives_ordersapi_sbe_v1_3_size_of.order_id

  index = index + coinbase_derivatives_ordersapi_sbe_v1_3_size_of.receive_time

  index = index + coinbase_derivatives_ordersapi_sbe_v1_3_size_of.total_filled

  index = index + coinbase_derivatives_ordersapi_sbe_v1_3_size_of.available_qty

  index = index + coinbase_derivatives_ordersapi_sbe_v1_3_size_of.instrument_id

  return index
end

-- Display: Order Replaced Message
coinbase_derivatives_ordersapi_sbe_v1_3_display.order_replaced_message = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Order Replaced Message
coinbase_derivatives_ordersapi_sbe_v1_3_dissect.order_replaced_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Timestamp: 8 Byte Signed Fixed Width Integer
  index, timestamp = coinbase_derivatives_ordersapi_sbe_v1_3_dissect.timestamp(buffer, index, packet, parent)

  -- Exec Id: 8 Byte Signed Fixed Width Integer
  index, exec_id = coinbase_derivatives_ordersapi_sbe_v1_3_dissect.exec_id(buffer, index, packet, parent)

  -- Client Order Id: 8 Byte Signed Fixed Width Integer
  index, client_order_id = coinbase_derivatives_ordersapi_sbe_v1_3_dissect.client_order_id(buffer, index, packet, parent)

  -- Correlation Id: 8 Byte Signed Fixed Width Integer
  index, correlation_id = coinbase_derivatives_ordersapi_sbe_v1_3_dissect.correlation_id(buffer, index, packet, parent)

  -- Order Id: 8 Byte Signed Fixed Width Integer
  index, order_id = coinbase_derivatives_ordersapi_sbe_v1_3_dissect.order_id(buffer, index, packet, parent)

  -- Receive Time: 8 Byte Signed Fixed Width Integer
  index, receive_time = coinbase_derivatives_ordersapi_sbe_v1_3_dissect.receive_time(buffer, index, packet, parent)

  -- Total Filled: 4 Byte Signed Fixed Width Integer
  index, total_filled = coinbase_derivatives_ordersapi_sbe_v1_3_dissect.total_filled(buffer, index, packet, parent)

  -- Available Qty: 4 Byte Signed Fixed Width Integer
  index, available_qty = coinbase_derivatives_ordersapi_sbe_v1_3_dissect.available_qty(buffer, index, packet, parent)

  -- Instrument Id: 4 Byte Signed Fixed Width Integer
  index, instrument_id = coinbase_derivatives_ordersapi_sbe_v1_3_dissect.instrument_id(buffer, index, packet, parent)

  return index
end

-- Dissect: Order Replaced Message
coinbase_derivatives_ordersapi_sbe_v1_3_dissect.order_replaced_message = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.order_replaced_message then
    local length = coinbase_derivatives_ordersapi_sbe_v1_3_size_of.order_replaced_message(buffer, offset)
    local range = buffer(offset, length)
    local display = coinbase_derivatives_ordersapi_sbe_v1_3_display.order_replaced_message(buffer, packet, parent)
    parent = parent:add(coinbase_derivatives_ordersapi_sbe_v1_3.fields.order_replaced_message, range, display)
  end

  return coinbase_derivatives_ordersapi_sbe_v1_3_dissect.order_replaced_message_fields(buffer, offset, packet, parent)
end

-- Size: Order Reject Details
coinbase_derivatives_ordersapi_sbe_v1_3_size_of.order_reject_details = 47

-- Display: Order Reject Details
coinbase_derivatives_ordersapi_sbe_v1_3_display.order_reject_details = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Order Reject Details: No Value"
  end

  return "Order Reject Details: "..value
end

-- Dissect: Order Reject Details
coinbase_derivatives_ordersapi_sbe_v1_3_dissect.order_reject_details = function(buffer, offset, packet, parent)
  local length = coinbase_derivatives_ordersapi_sbe_v1_3_size_of.order_reject_details
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

  local display = coinbase_derivatives_ordersapi_sbe_v1_3_display.order_reject_details(value, buffer, offset, packet, parent)

  parent:add(coinbase_derivatives_ordersapi_sbe_v1_3.fields.order_reject_details, range, value, display)

  return offset + length, value
end

-- Size: Order Reject Reason
coinbase_derivatives_ordersapi_sbe_v1_3_size_of.order_reject_reason = 1

-- Display: Order Reject Reason
coinbase_derivatives_ordersapi_sbe_v1_3_display.order_reject_reason = function(value)
  if value == 1 then
    return "Order Reject Reason: Error (1)"
  end
  if value == 2 then
    return "Order Reject Reason: Invalidinstrument (2)"
  end
  if value == 3 then
    return "Order Reject Reason: Clordidinuse (3)"
  end
  if value == 8 then
    return "Order Reject Reason: Validationfailure (8)"
  end
  if value == 9 then
    return "Order Reject Reason: Unknownorder (9)"
  end

  return "Order Reject Reason: Unknown("..value..")"
end

-- Dissect: Order Reject Reason
coinbase_derivatives_ordersapi_sbe_v1_3_dissect.order_reject_reason = function(buffer, offset, packet, parent)
  local length = coinbase_derivatives_ordersapi_sbe_v1_3_size_of.order_reject_reason
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = coinbase_derivatives_ordersapi_sbe_v1_3_display.order_reject_reason(value, buffer, offset, packet, parent)

  parent:add(coinbase_derivatives_ordersapi_sbe_v1_3.fields.order_reject_reason, range, value, display)

  return offset + length, value
end

-- Calculate size of: Order Reject Message
coinbase_derivatives_ordersapi_sbe_v1_3_size_of.order_reject_message = function(buffer, offset)
  local index = 0

  index = index + coinbase_derivatives_ordersapi_sbe_v1_3_size_of.timestamp

  index = index + coinbase_derivatives_ordersapi_sbe_v1_3_size_of.client_order_id

  index = index + coinbase_derivatives_ordersapi_sbe_v1_3_size_of.correlation_id

  index = index + coinbase_derivatives_ordersapi_sbe_v1_3_size_of.order_id_optional

  index = index + coinbase_derivatives_ordersapi_sbe_v1_3_size_of.order_reject_reason

  index = index + coinbase_derivatives_ordersapi_sbe_v1_3_size_of.order_reject_details

  return index
end

-- Display: Order Reject Message
coinbase_derivatives_ordersapi_sbe_v1_3_display.order_reject_message = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Order Reject Message
coinbase_derivatives_ordersapi_sbe_v1_3_dissect.order_reject_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Timestamp: 8 Byte Signed Fixed Width Integer
  index, timestamp = coinbase_derivatives_ordersapi_sbe_v1_3_dissect.timestamp(buffer, index, packet, parent)

  -- Client Order Id: 8 Byte Signed Fixed Width Integer
  index, client_order_id = coinbase_derivatives_ordersapi_sbe_v1_3_dissect.client_order_id(buffer, index, packet, parent)

  -- Correlation Id: 8 Byte Signed Fixed Width Integer
  index, correlation_id = coinbase_derivatives_ordersapi_sbe_v1_3_dissect.correlation_id(buffer, index, packet, parent)

  -- Order Id Optional: 8 Byte Signed Fixed Width Integer Nullable
  index, order_id_optional = coinbase_derivatives_ordersapi_sbe_v1_3_dissect.order_id_optional(buffer, index, packet, parent)

  -- Order Reject Reason: 1 Byte Unsigned Fixed Width Integer Enum with 5 values
  index, order_reject_reason = coinbase_derivatives_ordersapi_sbe_v1_3_dissect.order_reject_reason(buffer, index, packet, parent)

  -- Order Reject Details: 47 Byte Ascii String
  index, order_reject_details = coinbase_derivatives_ordersapi_sbe_v1_3_dissect.order_reject_details(buffer, index, packet, parent)

  return index
end

-- Dissect: Order Reject Message
coinbase_derivatives_ordersapi_sbe_v1_3_dissect.order_reject_message = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.order_reject_message then
    local length = coinbase_derivatives_ordersapi_sbe_v1_3_size_of.order_reject_message(buffer, offset)
    local range = buffer(offset, length)
    local display = coinbase_derivatives_ordersapi_sbe_v1_3_display.order_reject_message(buffer, packet, parent)
    parent = parent:add(coinbase_derivatives_ordersapi_sbe_v1_3.fields.order_reject_message, range, display)
  end

  return coinbase_derivatives_ordersapi_sbe_v1_3_dissect.order_reject_message_fields(buffer, offset, packet, parent)
end

-- Size: Quantity
coinbase_derivatives_ordersapi_sbe_v1_3_size_of.quantity = 4

-- Display: Quantity
coinbase_derivatives_ordersapi_sbe_v1_3_display.quantity = function(value)
  return "Quantity: "..value
end

-- Dissect: Quantity
coinbase_derivatives_ordersapi_sbe_v1_3_dissect.quantity = function(buffer, offset, packet, parent)
  local length = coinbase_derivatives_ordersapi_sbe_v1_3_size_of.quantity
  local range = buffer(offset, length)
  local value = range:le_int()
  local display = coinbase_derivatives_ordersapi_sbe_v1_3_display.quantity(value, buffer, offset, packet, parent)

  parent:add(coinbase_derivatives_ordersapi_sbe_v1_3.fields.quantity, range, value, display)

  return offset + length, value
end

-- Size: Last Processed Fill Id
coinbase_derivatives_ordersapi_sbe_v1_3_size_of.last_processed_fill_id = 8

-- Display: Last Processed Fill Id
coinbase_derivatives_ordersapi_sbe_v1_3_display.last_processed_fill_id = function(value)
  -- Check if field has value
  if value == Int64(0x00000000, 0x80000000) then
    return "Last Processed Fill Id: No Value"
  end

  return "Last Processed Fill Id: "..value
end

-- Dissect: Last Processed Fill Id
coinbase_derivatives_ordersapi_sbe_v1_3_dissect.last_processed_fill_id = function(buffer, offset, packet, parent)
  local length = coinbase_derivatives_ordersapi_sbe_v1_3_size_of.last_processed_fill_id
  local range = buffer(offset, length)
  local value = range:le_int64()
  local display = coinbase_derivatives_ordersapi_sbe_v1_3_display.last_processed_fill_id(value, buffer, offset, packet, parent)

  parent:add(coinbase_derivatives_ordersapi_sbe_v1_3.fields.last_processed_fill_id, range, value, display)

  return offset + length, value
end

-- Calculate size of: Stream Order Message
coinbase_derivatives_ordersapi_sbe_v1_3_size_of.stream_order_message = function(buffer, offset)
  local index = 0

  index = index + coinbase_derivatives_ordersapi_sbe_v1_3_size_of.client_order_id

  index = index + coinbase_derivatives_ordersapi_sbe_v1_3_size_of.correlation_id

  index = index + coinbase_derivatives_ordersapi_sbe_v1_3_size_of.last_processed_fill_id

  index = index + coinbase_derivatives_ordersapi_sbe_v1_3_size_of.limit_price

  index = index + coinbase_derivatives_ordersapi_sbe_v1_3_size_of.quantity

  index = index + coinbase_derivatives_ordersapi_sbe_v1_3_size_of.instrument_id

  index = index + coinbase_derivatives_ordersapi_sbe_v1_3_size_of.side

  return index
end

-- Display: Stream Order Message
coinbase_derivatives_ordersapi_sbe_v1_3_display.stream_order_message = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Stream Order Message
coinbase_derivatives_ordersapi_sbe_v1_3_dissect.stream_order_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Client Order Id: 8 Byte Signed Fixed Width Integer
  index, client_order_id = coinbase_derivatives_ordersapi_sbe_v1_3_dissect.client_order_id(buffer, index, packet, parent)

  -- Correlation Id: 8 Byte Signed Fixed Width Integer
  index, correlation_id = coinbase_derivatives_ordersapi_sbe_v1_3_dissect.correlation_id(buffer, index, packet, parent)

  -- Last Processed Fill Id: 8 Byte Signed Fixed Width Integer Nullable
  index, last_processed_fill_id = coinbase_derivatives_ordersapi_sbe_v1_3_dissect.last_processed_fill_id(buffer, index, packet, parent)

  -- Limit Price: 8 Byte Signed Fixed Width Integer
  index, limit_price = coinbase_derivatives_ordersapi_sbe_v1_3_dissect.limit_price(buffer, index, packet, parent)

  -- Quantity: 4 Byte Signed Fixed Width Integer
  index, quantity = coinbase_derivatives_ordersapi_sbe_v1_3_dissect.quantity(buffer, index, packet, parent)

  -- Instrument Id: 4 Byte Signed Fixed Width Integer
  index, instrument_id = coinbase_derivatives_ordersapi_sbe_v1_3_dissect.instrument_id(buffer, index, packet, parent)

  -- Side: 1 Byte Signed Fixed Width Integer Enum with 2 values
  index, side = coinbase_derivatives_ordersapi_sbe_v1_3_dissect.side(buffer, index, packet, parent)

  return index
end

-- Dissect: Stream Order Message
coinbase_derivatives_ordersapi_sbe_v1_3_dissect.stream_order_message = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.stream_order_message then
    local length = coinbase_derivatives_ordersapi_sbe_v1_3_size_of.stream_order_message(buffer, offset)
    local range = buffer(offset, length)
    local display = coinbase_derivatives_ordersapi_sbe_v1_3_display.stream_order_message(buffer, packet, parent)
    parent = parent:add(coinbase_derivatives_ordersapi_sbe_v1_3.fields.stream_order_message, range, display)
  end

  return coinbase_derivatives_ordersapi_sbe_v1_3_dissect.stream_order_message_fields(buffer, offset, packet, parent)
end

-- Size: New Quantity
coinbase_derivatives_ordersapi_sbe_v1_3_size_of.new_quantity = 4

-- Display: New Quantity
coinbase_derivatives_ordersapi_sbe_v1_3_display.new_quantity = function(value)
  -- Check if field has value
  if value == -2147483648 then
    return "New Quantity: No Value"
  end

  return "New Quantity: "..value
end

-- Dissect: New Quantity
coinbase_derivatives_ordersapi_sbe_v1_3_dissect.new_quantity = function(buffer, offset, packet, parent)
  local length = coinbase_derivatives_ordersapi_sbe_v1_3_size_of.new_quantity
  local range = buffer(offset, length)
  local value = range:le_int()
  local display = coinbase_derivatives_ordersapi_sbe_v1_3_display.new_quantity(value, buffer, offset, packet, parent)

  parent:add(coinbase_derivatives_ordersapi_sbe_v1_3.fields.new_quantity, range, value, display)

  return offset + length, value
end

-- Size: New Limit Price
coinbase_derivatives_ordersapi_sbe_v1_3_size_of.new_limit_price = 8

-- Display: New Limit Price
coinbase_derivatives_ordersapi_sbe_v1_3_display.new_limit_price = function(value)
  -- Check if field has value
  if value == Int64(0x00000000, 0x80000000) then
    return "New Limit Price: No Value"
  end

  return "New Limit Price: "..value
end

-- Dissect: New Limit Price
coinbase_derivatives_ordersapi_sbe_v1_3_dissect.new_limit_price = function(buffer, offset, packet, parent)
  local length = coinbase_derivatives_ordersapi_sbe_v1_3_size_of.new_limit_price
  local range = buffer(offset, length)
  local value = range:le_int64()
  local display = coinbase_derivatives_ordersapi_sbe_v1_3_display.new_limit_price(value, buffer, offset, packet, parent)

  parent:add(coinbase_derivatives_ordersapi_sbe_v1_3.fields.new_limit_price, range, value, display)

  return offset + length, value
end

-- Calculate size of: Replace Order Message
coinbase_derivatives_ordersapi_sbe_v1_3_size_of.replace_order_message = function(buffer, offset)
  local index = 0

  index = index + coinbase_derivatives_ordersapi_sbe_v1_3_size_of.client_order_id

  index = index + coinbase_derivatives_ordersapi_sbe_v1_3_size_of.correlation_id

  index = index + coinbase_derivatives_ordersapi_sbe_v1_3_size_of.new_limit_price

  index = index + coinbase_derivatives_ordersapi_sbe_v1_3_size_of.new_quantity

  index = index + coinbase_derivatives_ordersapi_sbe_v1_3_size_of.instrument_id

  return index
end

-- Display: Replace Order Message
coinbase_derivatives_ordersapi_sbe_v1_3_display.replace_order_message = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Replace Order Message
coinbase_derivatives_ordersapi_sbe_v1_3_dissect.replace_order_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Client Order Id: 8 Byte Signed Fixed Width Integer
  index, client_order_id = coinbase_derivatives_ordersapi_sbe_v1_3_dissect.client_order_id(buffer, index, packet, parent)

  -- Correlation Id: 8 Byte Signed Fixed Width Integer
  index, correlation_id = coinbase_derivatives_ordersapi_sbe_v1_3_dissect.correlation_id(buffer, index, packet, parent)

  -- New Limit Price: 8 Byte Signed Fixed Width Integer Nullable
  index, new_limit_price = coinbase_derivatives_ordersapi_sbe_v1_3_dissect.new_limit_price(buffer, index, packet, parent)

  -- New Quantity: 4 Byte Signed Fixed Width Integer Nullable
  index, new_quantity = coinbase_derivatives_ordersapi_sbe_v1_3_dissect.new_quantity(buffer, index, packet, parent)

  -- Instrument Id: 4 Byte Signed Fixed Width Integer
  index, instrument_id = coinbase_derivatives_ordersapi_sbe_v1_3_dissect.instrument_id(buffer, index, packet, parent)

  return index
end

-- Dissect: Replace Order Message
coinbase_derivatives_ordersapi_sbe_v1_3_dissect.replace_order_message = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.replace_order_message then
    local length = coinbase_derivatives_ordersapi_sbe_v1_3_size_of.replace_order_message(buffer, offset)
    local range = buffer(offset, length)
    local display = coinbase_derivatives_ordersapi_sbe_v1_3_display.replace_order_message(buffer, packet, parent)
    parent = parent:add(coinbase_derivatives_ordersapi_sbe_v1_3.fields.replace_order_message, range, display)
  end

  return coinbase_derivatives_ordersapi_sbe_v1_3_dissect.replace_order_message_fields(buffer, offset, packet, parent)
end

-- Calculate size of: Order Entered Message
coinbase_derivatives_ordersapi_sbe_v1_3_size_of.order_entered_message = function(buffer, offset)
  local index = 0

  index = index + coinbase_derivatives_ordersapi_sbe_v1_3_size_of.timestamp

  index = index + coinbase_derivatives_ordersapi_sbe_v1_3_size_of.exec_id

  index = index + coinbase_derivatives_ordersapi_sbe_v1_3_size_of.client_order_id

  index = index + coinbase_derivatives_ordersapi_sbe_v1_3_size_of.correlation_id

  index = index + coinbase_derivatives_ordersapi_sbe_v1_3_size_of.order_id

  index = index + coinbase_derivatives_ordersapi_sbe_v1_3_size_of.receive_time

  return index
end

-- Display: Order Entered Message
coinbase_derivatives_ordersapi_sbe_v1_3_display.order_entered_message = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Order Entered Message
coinbase_derivatives_ordersapi_sbe_v1_3_dissect.order_entered_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Timestamp: 8 Byte Signed Fixed Width Integer
  index, timestamp = coinbase_derivatives_ordersapi_sbe_v1_3_dissect.timestamp(buffer, index, packet, parent)

  -- Exec Id: 8 Byte Signed Fixed Width Integer
  index, exec_id = coinbase_derivatives_ordersapi_sbe_v1_3_dissect.exec_id(buffer, index, packet, parent)

  -- Client Order Id: 8 Byte Signed Fixed Width Integer
  index, client_order_id = coinbase_derivatives_ordersapi_sbe_v1_3_dissect.client_order_id(buffer, index, packet, parent)

  -- Correlation Id: 8 Byte Signed Fixed Width Integer
  index, correlation_id = coinbase_derivatives_ordersapi_sbe_v1_3_dissect.correlation_id(buffer, index, packet, parent)

  -- Order Id: 8 Byte Signed Fixed Width Integer
  index, order_id = coinbase_derivatives_ordersapi_sbe_v1_3_dissect.order_id(buffer, index, packet, parent)

  -- Receive Time: 8 Byte Signed Fixed Width Integer
  index, receive_time = coinbase_derivatives_ordersapi_sbe_v1_3_dissect.receive_time(buffer, index, packet, parent)

  return index
end

-- Dissect: Order Entered Message
coinbase_derivatives_ordersapi_sbe_v1_3_dissect.order_entered_message = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.order_entered_message then
    local length = coinbase_derivatives_ordersapi_sbe_v1_3_size_of.order_entered_message(buffer, offset)
    local range = buffer(offset, length)
    local display = coinbase_derivatives_ordersapi_sbe_v1_3_display.order_entered_message(buffer, packet, parent)
    parent = parent:add(coinbase_derivatives_ordersapi_sbe_v1_3.fields.order_entered_message, range, display)
  end

  return coinbase_derivatives_ordersapi_sbe_v1_3_dissect.order_entered_message_fields(buffer, offset, packet, parent)
end

-- Calculate size of: New Order Message
coinbase_derivatives_ordersapi_sbe_v1_3_size_of.new_order_message = function(buffer, offset)
  local index = 0

  index = index + coinbase_derivatives_ordersapi_sbe_v1_3_size_of.client_order_id

  index = index + coinbase_derivatives_ordersapi_sbe_v1_3_size_of.correlation_id

  index = index + coinbase_derivatives_ordersapi_sbe_v1_3_size_of.limit_price

  index = index + coinbase_derivatives_ordersapi_sbe_v1_3_size_of.quantity

  index = index + coinbase_derivatives_ordersapi_sbe_v1_3_size_of.instrument_id

  index = index + coinbase_derivatives_ordersapi_sbe_v1_3_size_of.side

  return index
end

-- Display: New Order Message
coinbase_derivatives_ordersapi_sbe_v1_3_display.new_order_message = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: New Order Message
coinbase_derivatives_ordersapi_sbe_v1_3_dissect.new_order_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Client Order Id: 8 Byte Signed Fixed Width Integer
  index, client_order_id = coinbase_derivatives_ordersapi_sbe_v1_3_dissect.client_order_id(buffer, index, packet, parent)

  -- Correlation Id: 8 Byte Signed Fixed Width Integer
  index, correlation_id = coinbase_derivatives_ordersapi_sbe_v1_3_dissect.correlation_id(buffer, index, packet, parent)

  -- Limit Price: 8 Byte Signed Fixed Width Integer
  index, limit_price = coinbase_derivatives_ordersapi_sbe_v1_3_dissect.limit_price(buffer, index, packet, parent)

  -- Quantity: 4 Byte Signed Fixed Width Integer
  index, quantity = coinbase_derivatives_ordersapi_sbe_v1_3_dissect.quantity(buffer, index, packet, parent)

  -- Instrument Id: 4 Byte Signed Fixed Width Integer
  index, instrument_id = coinbase_derivatives_ordersapi_sbe_v1_3_dissect.instrument_id(buffer, index, packet, parent)

  -- Side: 1 Byte Signed Fixed Width Integer Enum with 2 values
  index, side = coinbase_derivatives_ordersapi_sbe_v1_3_dissect.side(buffer, index, packet, parent)

  return index
end

-- Dissect: New Order Message
coinbase_derivatives_ordersapi_sbe_v1_3_dissect.new_order_message = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.new_order_message then
    local length = coinbase_derivatives_ordersapi_sbe_v1_3_size_of.new_order_message(buffer, offset)
    local range = buffer(offset, length)
    local display = coinbase_derivatives_ordersapi_sbe_v1_3_display.new_order_message(buffer, packet, parent)
    parent = parent:add(coinbase_derivatives_ordersapi_sbe_v1_3.fields.new_order_message, range, display)
  end

  return coinbase_derivatives_ordersapi_sbe_v1_3_dissect.new_order_message_fields(buffer, offset, packet, parent)
end

-- Calculate size of: Set Ack Message
coinbase_derivatives_ordersapi_sbe_v1_3_size_of.set_ack_message = function(buffer, offset)
  local index = 0

  index = index + coinbase_derivatives_ordersapi_sbe_v1_3_size_of.correlation_id

  return index
end

-- Display: Set Ack Message
coinbase_derivatives_ordersapi_sbe_v1_3_display.set_ack_message = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Set Ack Message
coinbase_derivatives_ordersapi_sbe_v1_3_dissect.set_ack_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Correlation Id: 8 Byte Signed Fixed Width Integer
  index, correlation_id = coinbase_derivatives_ordersapi_sbe_v1_3_dissect.correlation_id(buffer, index, packet, parent)

  return index
end

-- Dissect: Set Ack Message
coinbase_derivatives_ordersapi_sbe_v1_3_dissect.set_ack_message = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.set_ack_message then
    local length = coinbase_derivatives_ordersapi_sbe_v1_3_size_of.set_ack_message(buffer, offset)
    local range = buffer(offset, length)
    local display = coinbase_derivatives_ordersapi_sbe_v1_3_display.set_ack_message(buffer, packet, parent)
    parent = parent:add(coinbase_derivatives_ordersapi_sbe_v1_3.fields.set_ack_message, range, display)
  end

  return coinbase_derivatives_ordersapi_sbe_v1_3_dissect.set_ack_message_fields(buffer, offset, packet, parent)
end

-- Size: Trader
coinbase_derivatives_ordersapi_sbe_v1_3_size_of.trader = 16

-- Display: Trader
coinbase_derivatives_ordersapi_sbe_v1_3_display.trader = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Trader: No Value"
  end

  return "Trader: "..value
end

-- Dissect: Trader
coinbase_derivatives_ordersapi_sbe_v1_3_dissect.trader = function(buffer, offset, packet, parent)
  local length = coinbase_derivatives_ordersapi_sbe_v1_3_size_of.trader
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

  local display = coinbase_derivatives_ordersapi_sbe_v1_3_display.trader(value, buffer, offset, packet, parent)

  parent:add(coinbase_derivatives_ordersapi_sbe_v1_3.fields.trader, range, value, display)

  return offset + length, value
end

-- Calculate size of: Set Trader Message
coinbase_derivatives_ordersapi_sbe_v1_3_size_of.set_trader_message = function(buffer, offset)
  local index = 0

  index = index + coinbase_derivatives_ordersapi_sbe_v1_3_size_of.correlation_id

  index = index + coinbase_derivatives_ordersapi_sbe_v1_3_size_of.trader

  return index
end

-- Display: Set Trader Message
coinbase_derivatives_ordersapi_sbe_v1_3_display.set_trader_message = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Set Trader Message
coinbase_derivatives_ordersapi_sbe_v1_3_dissect.set_trader_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Correlation Id: 8 Byte Signed Fixed Width Integer
  index, correlation_id = coinbase_derivatives_ordersapi_sbe_v1_3_dissect.correlation_id(buffer, index, packet, parent)

  -- Trader: 16 Byte Ascii String
  index, trader = coinbase_derivatives_ordersapi_sbe_v1_3_dissect.trader(buffer, index, packet, parent)

  return index
end

-- Dissect: Set Trader Message
coinbase_derivatives_ordersapi_sbe_v1_3_dissect.set_trader_message = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.set_trader_message then
    local length = coinbase_derivatives_ordersapi_sbe_v1_3_size_of.set_trader_message(buffer, offset)
    local range = buffer(offset, length)
    local display = coinbase_derivatives_ordersapi_sbe_v1_3_display.set_trader_message(buffer, packet, parent)
    parent = parent:add(coinbase_derivatives_ordersapi_sbe_v1_3.fields.set_trader_message, range, display)
  end

  return coinbase_derivatives_ordersapi_sbe_v1_3_dissect.set_trader_message_fields(buffer, offset, packet, parent)
end

-- Size: Account
coinbase_derivatives_ordersapi_sbe_v1_3_size_of.account = 16

-- Display: Account
coinbase_derivatives_ordersapi_sbe_v1_3_display.account = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Account: No Value"
  end

  return "Account: "..value
end

-- Dissect: Account
coinbase_derivatives_ordersapi_sbe_v1_3_dissect.account = function(buffer, offset, packet, parent)
  local length = coinbase_derivatives_ordersapi_sbe_v1_3_size_of.account
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

  local display = coinbase_derivatives_ordersapi_sbe_v1_3_display.account(value, buffer, offset, packet, parent)

  parent:add(coinbase_derivatives_ordersapi_sbe_v1_3.fields.account, range, value, display)

  return offset + length, value
end

-- Calculate size of: Set Account Message
coinbase_derivatives_ordersapi_sbe_v1_3_size_of.set_account_message = function(buffer, offset)
  local index = 0

  index = index + coinbase_derivatives_ordersapi_sbe_v1_3_size_of.correlation_id

  index = index + coinbase_derivatives_ordersapi_sbe_v1_3_size_of.account

  return index
end

-- Display: Set Account Message
coinbase_derivatives_ordersapi_sbe_v1_3_display.set_account_message = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Set Account Message
coinbase_derivatives_ordersapi_sbe_v1_3_dissect.set_account_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Correlation Id: 8 Byte Signed Fixed Width Integer
  index, correlation_id = coinbase_derivatives_ordersapi_sbe_v1_3_dissect.correlation_id(buffer, index, packet, parent)

  -- Account: 16 Byte Ascii String
  index, account = coinbase_derivatives_ordersapi_sbe_v1_3_dissect.account(buffer, index, packet, parent)

  return index
end

-- Dissect: Set Account Message
coinbase_derivatives_ordersapi_sbe_v1_3_dissect.set_account_message = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.set_account_message then
    local length = coinbase_derivatives_ordersapi_sbe_v1_3_size_of.set_account_message(buffer, offset)
    local range = buffer(offset, length)
    local display = coinbase_derivatives_ordersapi_sbe_v1_3_display.set_account_message(buffer, packet, parent)
    parent = parent:add(coinbase_derivatives_ordersapi_sbe_v1_3.fields.set_account_message, range, display)
  end

  return coinbase_derivatives_ordersapi_sbe_v1_3_dissect.set_account_message_fields(buffer, offset, packet, parent)
end

-- Size: Symbol
coinbase_derivatives_ordersapi_sbe_v1_3_size_of.symbol = 32

-- Display: Symbol
coinbase_derivatives_ordersapi_sbe_v1_3_display.symbol = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Symbol: No Value"
  end

  return "Symbol: "..value
end

-- Dissect: Symbol
coinbase_derivatives_ordersapi_sbe_v1_3_dissect.symbol = function(buffer, offset, packet, parent)
  local length = coinbase_derivatives_ordersapi_sbe_v1_3_size_of.symbol
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

  local display = coinbase_derivatives_ordersapi_sbe_v1_3_display.symbol(value, buffer, offset, packet, parent)

  parent:add(coinbase_derivatives_ordersapi_sbe_v1_3.fields.symbol, range, value, display)

  return offset + length, value
end

-- Size: Reserved Byte
coinbase_derivatives_ordersapi_sbe_v1_3_size_of.reserved_byte = 1

-- Display: Reserved Byte
coinbase_derivatives_ordersapi_sbe_v1_3_display.reserved_byte = function(value)
  return "Reserved Byte: "..value
end

-- Dissect: Reserved Byte
coinbase_derivatives_ordersapi_sbe_v1_3_dissect.reserved_byte = function(buffer, offset, packet, parent)
  local length = coinbase_derivatives_ordersapi_sbe_v1_3_size_of.reserved_byte
  local range = buffer(offset, length)
  local value = range:le_int()
  local display = coinbase_derivatives_ordersapi_sbe_v1_3_display.reserved_byte(value, buffer, offset, packet, parent)

  parent:add(coinbase_derivatives_ordersapi_sbe_v1_3.fields.reserved_byte, range, value, display)

  return offset + length, value
end

-- Size: Is Last Message
coinbase_derivatives_ordersapi_sbe_v1_3_size_of.is_last_message = 1

-- Display: Is Last Message
coinbase_derivatives_ordersapi_sbe_v1_3_display.is_last_message = function(value)
  if value == 0 then
    return "Is Last Message: False (0)"
  end
  if value == 1 then
    return "Is Last Message: True (1)"
  end

  return "Is Last Message: Unknown("..value..")"
end

-- Dissect: Is Last Message
coinbase_derivatives_ordersapi_sbe_v1_3_dissect.is_last_message = function(buffer, offset, packet, parent)
  local length = coinbase_derivatives_ordersapi_sbe_v1_3_size_of.is_last_message
  local range = buffer(offset, length)
  local value = range:le_int()
  local display = coinbase_derivatives_ordersapi_sbe_v1_3_display.is_last_message(value, buffer, offset, packet, parent)

  parent:add(coinbase_derivatives_ordersapi_sbe_v1_3.fields.is_last_message, range, value, display)

  return offset + length, value
end

-- Size: Instrument Status
coinbase_derivatives_ordersapi_sbe_v1_3_size_of.instrument_status = 1

-- Display: Instrument Status
coinbase_derivatives_ordersapi_sbe_v1_3_display.instrument_status = function(value)
  if value == 1 then
    return "Instrument Status: Preopen (1)"
  end
  if value == 2 then
    return "Instrument Status: Preopennocancel (2)"
  end
  if value == 3 then
    return "Instrument Status: Readytotrade (3)"
  end
  if value == 4 then
    return "Instrument Status: Tradinghalt (4)"
  end
  if value == 5 then
    return "Instrument Status: Close (5)"
  end
  if value == 6 then
    return "Instrument Status: Postclose (6)"
  end

  return "Instrument Status: Unknown("..value..")"
end

-- Dissect: Instrument Status
coinbase_derivatives_ordersapi_sbe_v1_3_dissect.instrument_status = function(buffer, offset, packet, parent)
  local length = coinbase_derivatives_ordersapi_sbe_v1_3_size_of.instrument_status
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = coinbase_derivatives_ordersapi_sbe_v1_3_display.instrument_status(value, buffer, offset, packet, parent)

  parent:add(coinbase_derivatives_ordersapi_sbe_v1_3.fields.instrument_status, range, value, display)

  return offset + length, value
end

-- Size: Security Type
coinbase_derivatives_ordersapi_sbe_v1_3_size_of.security_type = 1

-- Display: Security Type
coinbase_derivatives_ordersapi_sbe_v1_3_display.security_type = function(value)
  if value == 0 then
    return "Security Type: Futures (0)"
  end
  if value == 1 then
    return "Security Type: Options (1)"
  end

  return "Security Type: Unknown("..value..")"
end

-- Dissect: Security Type
coinbase_derivatives_ordersapi_sbe_v1_3_dissect.security_type = function(buffer, offset, packet, parent)
  local length = coinbase_derivatives_ordersapi_sbe_v1_3_size_of.security_type
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = coinbase_derivatives_ordersapi_sbe_v1_3_display.security_type(value, buffer, offset, packet, parent)

  parent:add(coinbase_derivatives_ordersapi_sbe_v1_3.fields.security_type, range, value, display)

  return offset + length, value
end

-- Calculate size of: Instrument Info Message
coinbase_derivatives_ordersapi_sbe_v1_3_size_of.instrument_info_message = function(buffer, offset)
  local index = 0

  index = index + coinbase_derivatives_ordersapi_sbe_v1_3_size_of.correlation_id

  index = index + coinbase_derivatives_ordersapi_sbe_v1_3_size_of.instrument_id

  index = index + coinbase_derivatives_ordersapi_sbe_v1_3_size_of.security_type

  index = index + coinbase_derivatives_ordersapi_sbe_v1_3_size_of.instrument_status

  index = index + coinbase_derivatives_ordersapi_sbe_v1_3_size_of.is_last_message

  index = index + coinbase_derivatives_ordersapi_sbe_v1_3_size_of.reserved_byte

  index = index + coinbase_derivatives_ordersapi_sbe_v1_3_size_of.symbol

  return index
end

-- Display: Instrument Info Message
coinbase_derivatives_ordersapi_sbe_v1_3_display.instrument_info_message = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Instrument Info Message
coinbase_derivatives_ordersapi_sbe_v1_3_dissect.instrument_info_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Correlation Id: 8 Byte Signed Fixed Width Integer
  index, correlation_id = coinbase_derivatives_ordersapi_sbe_v1_3_dissect.correlation_id(buffer, index, packet, parent)

  -- Instrument Id: 4 Byte Signed Fixed Width Integer
  index, instrument_id = coinbase_derivatives_ordersapi_sbe_v1_3_dissect.instrument_id(buffer, index, packet, parent)

  -- Security Type: 1 Byte Unsigned Fixed Width Integer Enum with 2 values
  index, security_type = coinbase_derivatives_ordersapi_sbe_v1_3_dissect.security_type(buffer, index, packet, parent)

  -- Instrument Status: 1 Byte Unsigned Fixed Width Integer Enum with 6 values
  index, instrument_status = coinbase_derivatives_ordersapi_sbe_v1_3_dissect.instrument_status(buffer, index, packet, parent)

  -- Is Last Message: 1 Byte Signed Fixed Width Integer Enum with 2 values
  index, is_last_message = coinbase_derivatives_ordersapi_sbe_v1_3_dissect.is_last_message(buffer, index, packet, parent)

  -- Reserved Byte: 1 Byte Signed Fixed Width Integer
  index, reserved_byte = coinbase_derivatives_ordersapi_sbe_v1_3_dissect.reserved_byte(buffer, index, packet, parent)

  -- Symbol: 32 Byte Ascii String
  index, symbol = coinbase_derivatives_ordersapi_sbe_v1_3_dissect.symbol(buffer, index, packet, parent)

  return index
end

-- Dissect: Instrument Info Message
coinbase_derivatives_ordersapi_sbe_v1_3_dissect.instrument_info_message = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.instrument_info_message then
    local length = coinbase_derivatives_ordersapi_sbe_v1_3_size_of.instrument_info_message(buffer, offset)
    local range = buffer(offset, length)
    local display = coinbase_derivatives_ordersapi_sbe_v1_3_display.instrument_info_message(buffer, packet, parent)
    parent = parent:add(coinbase_derivatives_ordersapi_sbe_v1_3.fields.instrument_info_message, range, display)
  end

  return coinbase_derivatives_ordersapi_sbe_v1_3_dissect.instrument_info_message_fields(buffer, offset, packet, parent)
end

-- Calculate size of: Instrument Info Request Message
coinbase_derivatives_ordersapi_sbe_v1_3_size_of.instrument_info_request_message = function(buffer, offset)
  local index = 0

  index = index + coinbase_derivatives_ordersapi_sbe_v1_3_size_of.correlation_id

  return index
end

-- Display: Instrument Info Request Message
coinbase_derivatives_ordersapi_sbe_v1_3_display.instrument_info_request_message = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Instrument Info Request Message
coinbase_derivatives_ordersapi_sbe_v1_3_dissect.instrument_info_request_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Correlation Id: 8 Byte Signed Fixed Width Integer
  index, correlation_id = coinbase_derivatives_ordersapi_sbe_v1_3_dissect.correlation_id(buffer, index, packet, parent)

  return index
end

-- Dissect: Instrument Info Request Message
coinbase_derivatives_ordersapi_sbe_v1_3_dissect.instrument_info_request_message = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.instrument_info_request_message then
    local length = coinbase_derivatives_ordersapi_sbe_v1_3_size_of.instrument_info_request_message(buffer, offset)
    local range = buffer(offset, length)
    local display = coinbase_derivatives_ordersapi_sbe_v1_3_display.instrument_info_request_message(buffer, packet, parent)
    parent = parent:add(coinbase_derivatives_ordersapi_sbe_v1_3.fields.instrument_info_request_message, range, display)
  end

  return coinbase_derivatives_ordersapi_sbe_v1_3_dissect.instrument_info_request_message_fields(buffer, offset, packet, parent)
end

-- Display: Var Data
coinbase_derivatives_ordersapi_sbe_v1_3_display.var_data = function(value)
  return "Var Data: "..value
end

-- Dissect runtime sized field: Var Data
coinbase_derivatives_ordersapi_sbe_v1_3_dissect.var_data = function(buffer, offset, packet, parent, size)
  local range = buffer(offset, size)
  local value = range:bytes():tohex(false, " ")
  local display = coinbase_derivatives_ordersapi_sbe_v1_3_display.var_data(value, buffer, offset, packet, parent, size)

  parent:add(coinbase_derivatives_ordersapi_sbe_v1_3.fields.var_data, range, value, display)

  return offset + size
end

-- Size: Length
coinbase_derivatives_ordersapi_sbe_v1_3_size_of.length = 1

-- Display: Length
coinbase_derivatives_ordersapi_sbe_v1_3_display.length = function(value)
  return "Length: "..value
end

-- Dissect: Length
coinbase_derivatives_ordersapi_sbe_v1_3_dissect.length = function(buffer, offset, packet, parent)
  local length = coinbase_derivatives_ordersapi_sbe_v1_3_size_of.length
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = coinbase_derivatives_ordersapi_sbe_v1_3_display.length(value, buffer, offset, packet, parent)

  parent:add(coinbase_derivatives_ordersapi_sbe_v1_3.fields.length, range, value, display)

  return offset + length, value
end

-- Calculate size of: Data
coinbase_derivatives_ordersapi_sbe_v1_3_size_of.data = function(buffer, offset)
  local index = 0

  index = index + coinbase_derivatives_ordersapi_sbe_v1_3_size_of.length

  -- Parse runtime size of: Var Data
  index = index + buffer(offset + index - 1, 1):le_uint()

  return index
end

-- Display: Data
coinbase_derivatives_ordersapi_sbe_v1_3_display.data = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Data
coinbase_derivatives_ordersapi_sbe_v1_3_dissect.data_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Length: 1 Byte Unsigned Fixed Width Integer
  index, length = coinbase_derivatives_ordersapi_sbe_v1_3_dissect.length(buffer, index, packet, parent)

  -- Var Data: 0 Byte
  index = coinbase_derivatives_ordersapi_sbe_v1_3_dissect.var_data(buffer, index, packet, parent, length)

  return index
end

-- Dissect: Data
coinbase_derivatives_ordersapi_sbe_v1_3_dissect.data = function(buffer, offset, packet, parent)
  -- Optionally add dynamic struct element to protocol tree
  if show.data then
    local length = coinbase_derivatives_ordersapi_sbe_v1_3_size_of.data(buffer, offset)
    local range = buffer(offset, length)
    local display = coinbase_derivatives_ordersapi_sbe_v1_3_display.data(buffer, packet, parent)
    parent = parent:add(coinbase_derivatives_ordersapi_sbe_v1_3.fields.data, range, display)
  end

  return coinbase_derivatives_ordersapi_sbe_v1_3_dissect.data_fields(buffer, offset, packet, parent)
end

-- Size: Trading Instrument Status
coinbase_derivatives_ordersapi_sbe_v1_3_size_of.trading_instrument_status = 1

-- Display: Trading Instrument Status
coinbase_derivatives_ordersapi_sbe_v1_3_display.trading_instrument_status = function(value)
  if value == 0 then
    return "Trading Instrument Status: Ok (0)"
  end
  if value == 1 then
    return "Trading Instrument Status: Temporarilyunavailable (1)"
  end
  if value == 2 then
    return "Trading Instrument Status: Backpressured (2)"
  end

  return "Trading Instrument Status: Unknown("..value..")"
end

-- Dissect: Trading Instrument Status
coinbase_derivatives_ordersapi_sbe_v1_3_dissect.trading_instrument_status = function(buffer, offset, packet, parent)
  local length = coinbase_derivatives_ordersapi_sbe_v1_3_size_of.trading_instrument_status
  local range = buffer(offset, length)
  local value = range:le_int()
  local display = coinbase_derivatives_ordersapi_sbe_v1_3_display.trading_instrument_status(value, buffer, offset, packet, parent)

  parent:add(coinbase_derivatives_ordersapi_sbe_v1_3.fields.trading_instrument_status, range, value, display)

  return offset + length, value
end

-- Size: Server Time
coinbase_derivatives_ordersapi_sbe_v1_3_size_of.server_time = 8

-- Display: Server Time
coinbase_derivatives_ordersapi_sbe_v1_3_display.server_time = function(value)
  -- Parse unix timestamp
  local seconds = value:tonumber()/1000000000
  local nanoseconds = value:tonumber()%1000000000

  return "Server Time: "..os.date("%x %H:%M:%S.", seconds)..string.format("%09d", nanoseconds)
end

-- Dissect: Server Time
coinbase_derivatives_ordersapi_sbe_v1_3_dissect.server_time = function(buffer, offset, packet, parent)
  local length = coinbase_derivatives_ordersapi_sbe_v1_3_size_of.server_time
  local range = buffer(offset, length)
  local value = range:le_int64()
  local display = coinbase_derivatives_ordersapi_sbe_v1_3_display.server_time(value, buffer, offset, packet, parent)

  parent:add(coinbase_derivatives_ordersapi_sbe_v1_3.fields.server_time, range, value, display)

  return offset + length, value
end

-- Size: Request Time
coinbase_derivatives_ordersapi_sbe_v1_3_size_of.request_time = 8

-- Display: Request Time
coinbase_derivatives_ordersapi_sbe_v1_3_display.request_time = function(value)
  -- Parse unix timestamp
  local seconds = value:tonumber()/1000000000
  local nanoseconds = value:tonumber()%1000000000

  return "Request Time: "..os.date("%x %H:%M:%S.", seconds)..string.format("%09d", nanoseconds)
end

-- Dissect: Request Time
coinbase_derivatives_ordersapi_sbe_v1_3_dissect.request_time = function(buffer, offset, packet, parent)
  local length = coinbase_derivatives_ordersapi_sbe_v1_3_size_of.request_time
  local range = buffer(offset, length)
  local value = range:le_int64()
  local display = coinbase_derivatives_ordersapi_sbe_v1_3_display.request_time(value, buffer, offset, packet, parent)

  parent:add(coinbase_derivatives_ordersapi_sbe_v1_3.fields.request_time, range, value, display)

  return offset + length, value
end

-- Calculate size of: Pong Message
coinbase_derivatives_ordersapi_sbe_v1_3_size_of.pong_message = function(buffer, offset)
  local index = 0

  index = index + coinbase_derivatives_ordersapi_sbe_v1_3_size_of.correlation_id

  index = index + coinbase_derivatives_ordersapi_sbe_v1_3_size_of.request_time

  index = index + coinbase_derivatives_ordersapi_sbe_v1_3_size_of.server_time

  index = index + coinbase_derivatives_ordersapi_sbe_v1_3_size_of.trading_instrument_status

  index = index + coinbase_derivatives_ordersapi_sbe_v1_3_size_of.data(buffer, offset + index)

  return index
end

-- Display: Pong Message
coinbase_derivatives_ordersapi_sbe_v1_3_display.pong_message = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Pong Message
coinbase_derivatives_ordersapi_sbe_v1_3_dissect.pong_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Correlation Id: 8 Byte Signed Fixed Width Integer
  index, correlation_id = coinbase_derivatives_ordersapi_sbe_v1_3_dissect.correlation_id(buffer, index, packet, parent)

  -- Request Time: 8 Byte Signed Fixed Width Integer
  index, request_time = coinbase_derivatives_ordersapi_sbe_v1_3_dissect.request_time(buffer, index, packet, parent)

  -- Server Time: 8 Byte Signed Fixed Width Integer
  index, server_time = coinbase_derivatives_ordersapi_sbe_v1_3_dissect.server_time(buffer, index, packet, parent)

  -- Trading Instrument Status: 1 Byte Signed Fixed Width Integer Enum with 3 values
  index, trading_instrument_status = coinbase_derivatives_ordersapi_sbe_v1_3_dissect.trading_instrument_status(buffer, index, packet, parent)

  -- Data: Struct of 2 fields
  index, data = coinbase_derivatives_ordersapi_sbe_v1_3_dissect.data(buffer, index, packet, parent)

  return index
end

-- Dissect: Pong Message
coinbase_derivatives_ordersapi_sbe_v1_3_dissect.pong_message = function(buffer, offset, packet, parent)
  -- Optionally add dynamic struct element to protocol tree
  if show.pong_message then
    local length = coinbase_derivatives_ordersapi_sbe_v1_3_size_of.pong_message(buffer, offset)
    local range = buffer(offset, length)
    local display = coinbase_derivatives_ordersapi_sbe_v1_3_display.pong_message(buffer, packet, parent)
    parent = parent:add(coinbase_derivatives_ordersapi_sbe_v1_3.fields.pong_message, range, display)
  end

  return coinbase_derivatives_ordersapi_sbe_v1_3_dissect.pong_message_fields(buffer, offset, packet, parent)
end

-- Calculate size of: Ping Message
coinbase_derivatives_ordersapi_sbe_v1_3_size_of.ping_message = function(buffer, offset)
  local index = 0

  index = index + coinbase_derivatives_ordersapi_sbe_v1_3_size_of.correlation_id

  index = index + coinbase_derivatives_ordersapi_sbe_v1_3_size_of.request_time

  index = index + coinbase_derivatives_ordersapi_sbe_v1_3_size_of.data(buffer, offset + index)

  return index
end

-- Display: Ping Message
coinbase_derivatives_ordersapi_sbe_v1_3_display.ping_message = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Ping Message
coinbase_derivatives_ordersapi_sbe_v1_3_dissect.ping_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Correlation Id: 8 Byte Signed Fixed Width Integer
  index, correlation_id = coinbase_derivatives_ordersapi_sbe_v1_3_dissect.correlation_id(buffer, index, packet, parent)

  -- Request Time: 8 Byte Signed Fixed Width Integer
  index, request_time = coinbase_derivatives_ordersapi_sbe_v1_3_dissect.request_time(buffer, index, packet, parent)

  -- Data: Struct of 2 fields
  index, data = coinbase_derivatives_ordersapi_sbe_v1_3_dissect.data(buffer, index, packet, parent)

  return index
end

-- Dissect: Ping Message
coinbase_derivatives_ordersapi_sbe_v1_3_dissect.ping_message = function(buffer, offset, packet, parent)
  -- Optionally add dynamic struct element to protocol tree
  if show.ping_message then
    local length = coinbase_derivatives_ordersapi_sbe_v1_3_size_of.ping_message(buffer, offset)
    local range = buffer(offset, length)
    local display = coinbase_derivatives_ordersapi_sbe_v1_3_display.ping_message(buffer, packet, parent)
    parent = parent:add(coinbase_derivatives_ordersapi_sbe_v1_3.fields.ping_message, range, display)
  end

  return coinbase_derivatives_ordersapi_sbe_v1_3_dissect.ping_message_fields(buffer, offset, packet, parent)
end

-- Size: Gap Fill Padding
coinbase_derivatives_ordersapi_sbe_v1_3_size_of.gap_fill_padding = 4

-- Display: Gap Fill Padding
coinbase_derivatives_ordersapi_sbe_v1_3_display.gap_fill_padding = function(value)
  return "Gap Fill Padding: "..value
end

-- Dissect: Gap Fill Padding
coinbase_derivatives_ordersapi_sbe_v1_3_dissect.gap_fill_padding = function(buffer, offset, packet, parent)
  local length = coinbase_derivatives_ordersapi_sbe_v1_3_size_of.gap_fill_padding
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = coinbase_derivatives_ordersapi_sbe_v1_3_display.gap_fill_padding(value, buffer, offset, packet, parent)

  parent:add(coinbase_derivatives_ordersapi_sbe_v1_3.fields.gap_fill_padding, range, value, display)

  return offset + length, value
end

-- Size: New Sequence Number
coinbase_derivatives_ordersapi_sbe_v1_3_size_of.new_sequence_number = 4

-- Display: New Sequence Number
coinbase_derivatives_ordersapi_sbe_v1_3_display.new_sequence_number = function(value)
  return "New Sequence Number: "..value
end

-- Dissect: New Sequence Number
coinbase_derivatives_ordersapi_sbe_v1_3_dissect.new_sequence_number = function(buffer, offset, packet, parent)
  local length = coinbase_derivatives_ordersapi_sbe_v1_3_size_of.new_sequence_number
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = coinbase_derivatives_ordersapi_sbe_v1_3_display.new_sequence_number(value, buffer, offset, packet, parent)

  parent:add(coinbase_derivatives_ordersapi_sbe_v1_3.fields.new_sequence_number, range, value, display)

  return offset + length, value
end

-- Calculate size of: Gap Fill Message
coinbase_derivatives_ordersapi_sbe_v1_3_size_of.gap_fill_message = function(buffer, offset)
  local index = 0

  index = index + coinbase_derivatives_ordersapi_sbe_v1_3_size_of.new_sequence_number

  index = index + coinbase_derivatives_ordersapi_sbe_v1_3_size_of.gap_fill_padding

  return index
end

-- Display: Gap Fill Message
coinbase_derivatives_ordersapi_sbe_v1_3_display.gap_fill_message = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Gap Fill Message
coinbase_derivatives_ordersapi_sbe_v1_3_dissect.gap_fill_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- New Sequence Number: 4 Byte Unsigned Fixed Width Integer
  index, new_sequence_number = coinbase_derivatives_ordersapi_sbe_v1_3_dissect.new_sequence_number(buffer, index, packet, parent)

  -- Gap Fill Padding: 4 Byte Unsigned Fixed Width Integer
  index, gap_fill_padding = coinbase_derivatives_ordersapi_sbe_v1_3_dissect.gap_fill_padding(buffer, index, packet, parent)

  return index
end

-- Dissect: Gap Fill Message
coinbase_derivatives_ordersapi_sbe_v1_3_dissect.gap_fill_message = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.gap_fill_message then
    local length = coinbase_derivatives_ordersapi_sbe_v1_3_size_of.gap_fill_message(buffer, offset)
    local range = buffer(offset, length)
    local display = coinbase_derivatives_ordersapi_sbe_v1_3_display.gap_fill_message(buffer, packet, parent)
    parent = parent:add(coinbase_derivatives_ordersapi_sbe_v1_3.fields.gap_fill_message, range, display)
  end

  return coinbase_derivatives_ordersapi_sbe_v1_3_dissect.gap_fill_message_fields(buffer, offset, packet, parent)
end

-- Size: To Sequence Number
coinbase_derivatives_ordersapi_sbe_v1_3_size_of.to_sequence_number = 4

-- Display: To Sequence Number
coinbase_derivatives_ordersapi_sbe_v1_3_display.to_sequence_number = function(value)
  return "To Sequence Number: "..value
end

-- Dissect: To Sequence Number
coinbase_derivatives_ordersapi_sbe_v1_3_dissect.to_sequence_number = function(buffer, offset, packet, parent)
  local length = coinbase_derivatives_ordersapi_sbe_v1_3_size_of.to_sequence_number
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = coinbase_derivatives_ordersapi_sbe_v1_3_display.to_sequence_number(value, buffer, offset, packet, parent)

  parent:add(coinbase_derivatives_ordersapi_sbe_v1_3.fields.to_sequence_number, range, value, display)

  return offset + length, value
end

-- Size: From Sequence Number
coinbase_derivatives_ordersapi_sbe_v1_3_size_of.from_sequence_number = 4

-- Display: From Sequence Number
coinbase_derivatives_ordersapi_sbe_v1_3_display.from_sequence_number = function(value)
  return "From Sequence Number: "..value
end

-- Dissect: From Sequence Number
coinbase_derivatives_ordersapi_sbe_v1_3_dissect.from_sequence_number = function(buffer, offset, packet, parent)
  local length = coinbase_derivatives_ordersapi_sbe_v1_3_size_of.from_sequence_number
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = coinbase_derivatives_ordersapi_sbe_v1_3_display.from_sequence_number(value, buffer, offset, packet, parent)

  parent:add(coinbase_derivatives_ordersapi_sbe_v1_3.fields.from_sequence_number, range, value, display)

  return offset + length, value
end

-- Calculate size of: Resend Request Message
coinbase_derivatives_ordersapi_sbe_v1_3_size_of.resend_request_message = function(buffer, offset)
  local index = 0

  index = index + coinbase_derivatives_ordersapi_sbe_v1_3_size_of.from_sequence_number

  index = index + coinbase_derivatives_ordersapi_sbe_v1_3_size_of.to_sequence_number

  return index
end

-- Display: Resend Request Message
coinbase_derivatives_ordersapi_sbe_v1_3_display.resend_request_message = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Resend Request Message
coinbase_derivatives_ordersapi_sbe_v1_3_dissect.resend_request_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- From Sequence Number: 4 Byte Unsigned Fixed Width Integer
  index, from_sequence_number = coinbase_derivatives_ordersapi_sbe_v1_3_dissect.from_sequence_number(buffer, index, packet, parent)

  -- To Sequence Number: 4 Byte Unsigned Fixed Width Integer
  index, to_sequence_number = coinbase_derivatives_ordersapi_sbe_v1_3_dissect.to_sequence_number(buffer, index, packet, parent)

  return index
end

-- Dissect: Resend Request Message
coinbase_derivatives_ordersapi_sbe_v1_3_dissect.resend_request_message = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.resend_request_message then
    local length = coinbase_derivatives_ordersapi_sbe_v1_3_size_of.resend_request_message(buffer, offset)
    local range = buffer(offset, length)
    local display = coinbase_derivatives_ordersapi_sbe_v1_3_display.resend_request_message(buffer, packet, parent)
    parent = parent:add(coinbase_derivatives_ordersapi_sbe_v1_3.fields.resend_request_message, range, display)
  end

  return coinbase_derivatives_ordersapi_sbe_v1_3_dissect.resend_request_message_fields(buffer, offset, packet, parent)
end

-- Calculate size of: Test Request Message
coinbase_derivatives_ordersapi_sbe_v1_3_size_of.test_request_message = function(buffer, offset)
  local index = 0

  index = index + coinbase_derivatives_ordersapi_sbe_v1_3_size_of.correlation_id

  return index
end

-- Display: Test Request Message
coinbase_derivatives_ordersapi_sbe_v1_3_display.test_request_message = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Test Request Message
coinbase_derivatives_ordersapi_sbe_v1_3_dissect.test_request_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Correlation Id: 8 Byte Signed Fixed Width Integer
  index, correlation_id = coinbase_derivatives_ordersapi_sbe_v1_3_dissect.correlation_id(buffer, index, packet, parent)

  return index
end

-- Dissect: Test Request Message
coinbase_derivatives_ordersapi_sbe_v1_3_dissect.test_request_message = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.test_request_message then
    local length = coinbase_derivatives_ordersapi_sbe_v1_3_size_of.test_request_message(buffer, offset)
    local range = buffer(offset, length)
    local display = coinbase_derivatives_ordersapi_sbe_v1_3_display.test_request_message(buffer, packet, parent)
    parent = parent:add(coinbase_derivatives_ordersapi_sbe_v1_3.fields.test_request_message, range, display)
  end

  return coinbase_derivatives_ordersapi_sbe_v1_3_dissect.test_request_message_fields(buffer, offset, packet, parent)
end

-- Calculate size of: Heartbeat Message
coinbase_derivatives_ordersapi_sbe_v1_3_size_of.heartbeat_message = function(buffer, offset)
  local index = 0

  index = index + coinbase_derivatives_ordersapi_sbe_v1_3_size_of.correlation_id

  return index
end

-- Display: Heartbeat Message
coinbase_derivatives_ordersapi_sbe_v1_3_display.heartbeat_message = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Heartbeat Message
coinbase_derivatives_ordersapi_sbe_v1_3_dissect.heartbeat_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Correlation Id: 8 Byte Signed Fixed Width Integer
  index, correlation_id = coinbase_derivatives_ordersapi_sbe_v1_3_dissect.correlation_id(buffer, index, packet, parent)

  return index
end

-- Dissect: Heartbeat Message
coinbase_derivatives_ordersapi_sbe_v1_3_dissect.heartbeat_message = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.heartbeat_message then
    local length = coinbase_derivatives_ordersapi_sbe_v1_3_size_of.heartbeat_message(buffer, offset)
    local range = buffer(offset, length)
    local display = coinbase_derivatives_ordersapi_sbe_v1_3_display.heartbeat_message(buffer, packet, parent)
    parent = parent:add(coinbase_derivatives_ordersapi_sbe_v1_3.fields.heartbeat_message, range, display)
  end

  return coinbase_derivatives_ordersapi_sbe_v1_3_dissect.heartbeat_message_fields(buffer, offset, packet, parent)
end

-- Size: Reason
coinbase_derivatives_ordersapi_sbe_v1_3_size_of.reason = 64

-- Display: Reason
coinbase_derivatives_ordersapi_sbe_v1_3_display.reason = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Reason: No Value"
  end

  return "Reason: "..value
end

-- Dissect: Reason
coinbase_derivatives_ordersapi_sbe_v1_3_dissect.reason = function(buffer, offset, packet, parent)
  local length = coinbase_derivatives_ordersapi_sbe_v1_3_size_of.reason
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

  local display = coinbase_derivatives_ordersapi_sbe_v1_3_display.reason(value, buffer, offset, packet, parent)

  parent:add(coinbase_derivatives_ordersapi_sbe_v1_3.fields.reason, range, value, display)

  return offset + length, value
end

-- Calculate size of: Logged Out Message
coinbase_derivatives_ordersapi_sbe_v1_3_size_of.logged_out_message = function(buffer, offset)
  local index = 0

  index = index + coinbase_derivatives_ordersapi_sbe_v1_3_size_of.reason

  return index
end

-- Display: Logged Out Message
coinbase_derivatives_ordersapi_sbe_v1_3_display.logged_out_message = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Logged Out Message
coinbase_derivatives_ordersapi_sbe_v1_3_dissect.logged_out_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Reason: 64 Byte Ascii String
  index, reason = coinbase_derivatives_ordersapi_sbe_v1_3_dissect.reason(buffer, index, packet, parent)

  return index
end

-- Dissect: Logged Out Message
coinbase_derivatives_ordersapi_sbe_v1_3_dissect.logged_out_message = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.logged_out_message then
    local length = coinbase_derivatives_ordersapi_sbe_v1_3_size_of.logged_out_message(buffer, offset)
    local range = buffer(offset, length)
    local display = coinbase_derivatives_ordersapi_sbe_v1_3_display.logged_out_message(buffer, packet, parent)
    parent = parent:add(coinbase_derivatives_ordersapi_sbe_v1_3.fields.logged_out_message, range, display)
  end

  return coinbase_derivatives_ordersapi_sbe_v1_3_dissect.logged_out_message_fields(buffer, offset, packet, parent)
end

-- Calculate size of: Logout Message
coinbase_derivatives_ordersapi_sbe_v1_3_size_of.logout_message = function(buffer, offset)
  local index = 0

  index = index + coinbase_derivatives_ordersapi_sbe_v1_3_size_of.reason

  return index
end

-- Display: Logout Message
coinbase_derivatives_ordersapi_sbe_v1_3_display.logout_message = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Logout Message
coinbase_derivatives_ordersapi_sbe_v1_3_dissect.logout_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Reason: 64 Byte Ascii String
  index, reason = coinbase_derivatives_ordersapi_sbe_v1_3_dissect.reason(buffer, index, packet, parent)

  return index
end

-- Dissect: Logout Message
coinbase_derivatives_ordersapi_sbe_v1_3_dissect.logout_message = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.logout_message then
    local length = coinbase_derivatives_ordersapi_sbe_v1_3_size_of.logout_message(buffer, offset)
    local range = buffer(offset, length)
    local display = coinbase_derivatives_ordersapi_sbe_v1_3_display.logout_message(buffer, packet, parent)
    parent = parent:add(coinbase_derivatives_ordersapi_sbe_v1_3.fields.logout_message, range, display)
  end

  return coinbase_derivatives_ordersapi_sbe_v1_3_dissect.logout_message_fields(buffer, offset, packet, parent)
end

-- Size: Heartbeat Interval Seconds
coinbase_derivatives_ordersapi_sbe_v1_3_size_of.heartbeat_interval_seconds = 4

-- Display: Heartbeat Interval Seconds
coinbase_derivatives_ordersapi_sbe_v1_3_display.heartbeat_interval_seconds = function(value)
  return "Heartbeat Interval Seconds: "..value
end

-- Dissect: Heartbeat Interval Seconds
coinbase_derivatives_ordersapi_sbe_v1_3_dissect.heartbeat_interval_seconds = function(buffer, offset, packet, parent)
  local length = coinbase_derivatives_ordersapi_sbe_v1_3_size_of.heartbeat_interval_seconds
  local range = buffer(offset, length)
  local value = range:le_int()
  local display = coinbase_derivatives_ordersapi_sbe_v1_3_display.heartbeat_interval_seconds(value, buffer, offset, packet, parent)

  parent:add(coinbase_derivatives_ordersapi_sbe_v1_3.fields.heartbeat_interval_seconds, range, value, display)

  return offset + length, value
end

-- Calculate size of: Logon Conf Message
coinbase_derivatives_ordersapi_sbe_v1_3_size_of.logon_conf_message = function(buffer, offset)
  local index = 0

  index = index + coinbase_derivatives_ordersapi_sbe_v1_3_size_of.heartbeat_interval_seconds

  return index
end

-- Display: Logon Conf Message
coinbase_derivatives_ordersapi_sbe_v1_3_display.logon_conf_message = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Logon Conf Message
coinbase_derivatives_ordersapi_sbe_v1_3_dissect.logon_conf_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Heartbeat Interval Seconds: 4 Byte Signed Fixed Width Integer
  index, heartbeat_interval_seconds = coinbase_derivatives_ordersapi_sbe_v1_3_dissect.heartbeat_interval_seconds(buffer, index, packet, parent)

  return index
end

-- Dissect: Logon Conf Message
coinbase_derivatives_ordersapi_sbe_v1_3_dissect.logon_conf_message = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.logon_conf_message then
    local length = coinbase_derivatives_ordersapi_sbe_v1_3_size_of.logon_conf_message(buffer, offset)
    local range = buffer(offset, length)
    local display = coinbase_derivatives_ordersapi_sbe_v1_3_display.logon_conf_message(buffer, packet, parent)
    parent = parent:add(coinbase_derivatives_ordersapi_sbe_v1_3.fields.logon_conf_message, range, display)
  end

  return coinbase_derivatives_ordersapi_sbe_v1_3_dissect.logon_conf_message_fields(buffer, offset, packet, parent)
end

-- Size: Reset Seq Num
coinbase_derivatives_ordersapi_sbe_v1_3_size_of.reset_seq_num = 1

-- Display: Reset Seq Num
coinbase_derivatives_ordersapi_sbe_v1_3_display.reset_seq_num = function(value)
  if value == 0 then
    return "Reset Seq Num: False (0)"
  end
  if value == 1 then
    return "Reset Seq Num: True (1)"
  end

  return "Reset Seq Num: Unknown("..value..")"
end

-- Dissect: Reset Seq Num
coinbase_derivatives_ordersapi_sbe_v1_3_dissect.reset_seq_num = function(buffer, offset, packet, parent)
  local length = coinbase_derivatives_ordersapi_sbe_v1_3_size_of.reset_seq_num
  local range = buffer(offset, length)
  local value = range:le_int()
  local display = coinbase_derivatives_ordersapi_sbe_v1_3_display.reset_seq_num(value, buffer, offset, packet, parent)

  parent:add(coinbase_derivatives_ordersapi_sbe_v1_3.fields.reset_seq_num, range, value, display)

  return offset + length, value
end

-- Size: Password
coinbase_derivatives_ordersapi_sbe_v1_3_size_of.password = 32

-- Display: Password
coinbase_derivatives_ordersapi_sbe_v1_3_display.password = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Password: No Value"
  end

  return "Password: "..value
end

-- Dissect: Password
coinbase_derivatives_ordersapi_sbe_v1_3_dissect.password = function(buffer, offset, packet, parent)
  local length = coinbase_derivatives_ordersapi_sbe_v1_3_size_of.password
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

  local display = coinbase_derivatives_ordersapi_sbe_v1_3_display.password(value, buffer, offset, packet, parent)

  parent:add(coinbase_derivatives_ordersapi_sbe_v1_3.fields.password, range, value, display)

  return offset + length, value
end

-- Size: Username
coinbase_derivatives_ordersapi_sbe_v1_3_size_of.username = 16

-- Display: Username
coinbase_derivatives_ordersapi_sbe_v1_3_display.username = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Username: No Value"
  end

  return "Username: "..value
end

-- Dissect: Username
coinbase_derivatives_ordersapi_sbe_v1_3_dissect.username = function(buffer, offset, packet, parent)
  local length = coinbase_derivatives_ordersapi_sbe_v1_3_size_of.username
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

  local display = coinbase_derivatives_ordersapi_sbe_v1_3_display.username(value, buffer, offset, packet, parent)

  parent:add(coinbase_derivatives_ordersapi_sbe_v1_3.fields.username, range, value, display)

  return offset + length, value
end

-- Calculate size of: Logon Message
coinbase_derivatives_ordersapi_sbe_v1_3_size_of.logon_message = function(buffer, offset)
  local index = 0

  index = index + coinbase_derivatives_ordersapi_sbe_v1_3_size_of.username

  index = index + coinbase_derivatives_ordersapi_sbe_v1_3_size_of.password

  index = index + coinbase_derivatives_ordersapi_sbe_v1_3_size_of.reset_seq_num

  return index
end

-- Display: Logon Message
coinbase_derivatives_ordersapi_sbe_v1_3_display.logon_message = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Logon Message
coinbase_derivatives_ordersapi_sbe_v1_3_dissect.logon_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Username: 16 Byte Ascii String
  index, username = coinbase_derivatives_ordersapi_sbe_v1_3_dissect.username(buffer, index, packet, parent)

  -- Password: 32 Byte Ascii String
  index, password = coinbase_derivatives_ordersapi_sbe_v1_3_dissect.password(buffer, index, packet, parent)

  -- Reset Seq Num: 1 Byte Signed Fixed Width Integer Enum with 2 values
  index, reset_seq_num = coinbase_derivatives_ordersapi_sbe_v1_3_dissect.reset_seq_num(buffer, index, packet, parent)

  return index
end

-- Dissect: Logon Message
coinbase_derivatives_ordersapi_sbe_v1_3_dissect.logon_message = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.logon_message then
    local length = coinbase_derivatives_ordersapi_sbe_v1_3_size_of.logon_message(buffer, offset)
    local range = buffer(offset, length)
    local display = coinbase_derivatives_ordersapi_sbe_v1_3_display.logon_message(buffer, packet, parent)
    parent = parent:add(coinbase_derivatives_ordersapi_sbe_v1_3.fields.logon_message, range, display)
  end

  return coinbase_derivatives_ordersapi_sbe_v1_3_dissect.logon_message_fields(buffer, offset, packet, parent)
end

-- Calculate runtime size of: Payload
coinbase_derivatives_ordersapi_sbe_v1_3_size_of.payload = function(buffer, offset, template_id)
  -- Size of Logon Message
  if template_id == 100 then
    return coinbase_derivatives_ordersapi_sbe_v1_3_size_of.logon_message(buffer, offset)
  end
  -- Size of Logon Conf Message
  if template_id == 200 then
    return coinbase_derivatives_ordersapi_sbe_v1_3_size_of.logon_conf_message(buffer, offset)
  end
  -- Size of Logout Message
  if template_id == 101 then
    return coinbase_derivatives_ordersapi_sbe_v1_3_size_of.logout_message(buffer, offset)
  end
  -- Size of Logged Out Message
  if template_id == 201 then
    return coinbase_derivatives_ordersapi_sbe_v1_3_size_of.logged_out_message(buffer, offset)
  end
  -- Size of Heartbeat Message
  if template_id == 10 then
    return coinbase_derivatives_ordersapi_sbe_v1_3_size_of.heartbeat_message(buffer, offset)
  end
  -- Size of Test Request Message
  if template_id == 11 then
    return coinbase_derivatives_ordersapi_sbe_v1_3_size_of.test_request_message(buffer, offset)
  end
  -- Size of Resend Request Message
  if template_id == 102 then
    return coinbase_derivatives_ordersapi_sbe_v1_3_size_of.resend_request_message(buffer, offset)
  end
  -- Size of Gap Fill Message
  if template_id == 202 then
    return coinbase_derivatives_ordersapi_sbe_v1_3_size_of.gap_fill_message(buffer, offset)
  end
  -- Size of Ping Message
  if template_id == 102 then
    return coinbase_derivatives_ordersapi_sbe_v1_3_size_of.ping_message(buffer, offset)
  end
  -- Size of Pong Message
  if template_id == 202 then
    return coinbase_derivatives_ordersapi_sbe_v1_3_size_of.pong_message(buffer, offset)
  end
  -- Size of Instrument Info Request Message
  if template_id == 103 then
    return coinbase_derivatives_ordersapi_sbe_v1_3_size_of.instrument_info_request_message(buffer, offset)
  end
  -- Size of Instrument Info Message
  if template_id == 203 then
    return coinbase_derivatives_ordersapi_sbe_v1_3_size_of.instrument_info_message(buffer, offset)
  end
  -- Size of Set Account Message
  if template_id == 105 then
    return coinbase_derivatives_ordersapi_sbe_v1_3_size_of.set_account_message(buffer, offset)
  end
  -- Size of Set Trader Message
  if template_id == 106 then
    return coinbase_derivatives_ordersapi_sbe_v1_3_size_of.set_trader_message(buffer, offset)
  end
  -- Size of Set Ack Message
  if template_id == 205 then
    return coinbase_derivatives_ordersapi_sbe_v1_3_size_of.set_ack_message(buffer, offset)
  end
  -- Size of New Order Message
  if template_id == 110 then
    return coinbase_derivatives_ordersapi_sbe_v1_3_size_of.new_order_message(buffer, offset)
  end
  -- Size of Order Entered Message
  if template_id == 210 then
    return coinbase_derivatives_ordersapi_sbe_v1_3_size_of.order_entered_message(buffer, offset)
  end
  -- Size of Replace Order Message
  if template_id == 120 then
    return coinbase_derivatives_ordersapi_sbe_v1_3_size_of.replace_order_message(buffer, offset)
  end
  -- Size of Stream Order Message
  if template_id == 121 then
    return coinbase_derivatives_ordersapi_sbe_v1_3_size_of.stream_order_message(buffer, offset)
  end
  -- Size of Order Reject Message
  if template_id == 221 then
    return coinbase_derivatives_ordersapi_sbe_v1_3_size_of.order_reject_message(buffer, offset)
  end
  -- Size of Order Replaced Message
  if template_id == 220 then
    return coinbase_derivatives_ordersapi_sbe_v1_3_size_of.order_replaced_message(buffer, offset)
  end
  -- Size of Cancel Order Message
  if template_id == 130 then
    return coinbase_derivatives_ordersapi_sbe_v1_3_size_of.cancel_order_message(buffer, offset)
  end
  -- Size of Order Canceled Message
  if template_id == 230 then
    return coinbase_derivatives_ordersapi_sbe_v1_3_size_of.order_canceled_message(buffer, offset)
  end
  -- Size of Cancel Order Reject Message
  if template_id == 233 then
    return coinbase_derivatives_ordersapi_sbe_v1_3_size_of.cancel_order_reject_message(buffer, offset)
  end
  -- Size of Mass Cancel Order Message
  if template_id == 131 then
    return coinbase_derivatives_ordersapi_sbe_v1_3_size_of.mass_cancel_order_message(buffer, offset)
  end
  -- Size of Mass Cancel Order Ack Message
  if template_id == 231 then
    return coinbase_derivatives_ordersapi_sbe_v1_3_size_of.mass_cancel_order_ack_message(buffer, offset)
  end
  -- Size of Mass Cancel Order Reject Message
  if template_id == 232 then
    return coinbase_derivatives_ordersapi_sbe_v1_3_size_of.mass_cancel_order_reject_message(buffer, offset)
  end
  -- Size of Unlock Trading Message
  if template_id == 132 then
    return coinbase_derivatives_ordersapi_sbe_v1_3_size_of.unlock_trading_message(buffer, offset)
  end
  -- Size of Unlock Trading Ack Message
  if template_id == 234 then
    return coinbase_derivatives_ordersapi_sbe_v1_3_size_of.unlock_trading_ack_message(buffer, offset)
  end
  -- Size of Unlock Trading Reject Message
  if template_id == 235 then
    return coinbase_derivatives_ordersapi_sbe_v1_3_size_of.unlock_trading_reject_message(buffer, offset)
  end
  -- Size of Order Filled Message
  if template_id == 240 then
    return coinbase_derivatives_ordersapi_sbe_v1_3_size_of.order_filled_message(buffer, offset)
  end
  -- Size of Spread Order Filled Message
  if template_id == 241 then
    return coinbase_derivatives_ordersapi_sbe_v1_3_size_of.spread_order_filled_message(buffer, offset)
  end
  -- Size of Last Exec Id Request Message
  if template_id == 150 then
    return coinbase_derivatives_ordersapi_sbe_v1_3_size_of.last_exec_id_request_message(buffer, offset)
  end
  -- Size of Last Exec Id Message
  if template_id == 250 then
    return coinbase_derivatives_ordersapi_sbe_v1_3_size_of.last_exec_id_message(buffer, offset)
  end
  -- Size of Event Resend Request Message
  if template_id == 152 then
    return coinbase_derivatives_ordersapi_sbe_v1_3_size_of.event_resend_request_message(buffer, offset)
  end
  -- Size of Event Resend Complete Message
  if template_id == 252 then
    return coinbase_derivatives_ordersapi_sbe_v1_3_size_of.event_resend_complete_message(buffer, offset)
  end
  -- Size of Event Resend Reject Message
  if template_id == 253 then
    return coinbase_derivatives_ordersapi_sbe_v1_3_size_of.event_resend_reject_message(buffer, offset)
  end

  return 0
end

-- Display: Payload
coinbase_derivatives_ordersapi_sbe_v1_3_display.payload = function(buffer, offset, packet, parent)
  return ""
end

-- Dissect Branches: Payload
coinbase_derivatives_ordersapi_sbe_v1_3_dissect.payload_branches = function(buffer, offset, packet, parent, template_id)
  -- Dissect Logon Message
  if template_id == 100 then
    return coinbase_derivatives_ordersapi_sbe_v1_3_dissect.logon_message(buffer, offset, packet, parent)
  end
  -- Dissect Logon Conf Message
  if template_id == 200 then
    return coinbase_derivatives_ordersapi_sbe_v1_3_dissect.logon_conf_message(buffer, offset, packet, parent)
  end
  -- Dissect Logout Message
  if template_id == 101 then
    return coinbase_derivatives_ordersapi_sbe_v1_3_dissect.logout_message(buffer, offset, packet, parent)
  end
  -- Dissect Logged Out Message
  if template_id == 201 then
    return coinbase_derivatives_ordersapi_sbe_v1_3_dissect.logged_out_message(buffer, offset, packet, parent)
  end
  -- Dissect Heartbeat Message
  if template_id == 10 then
    return coinbase_derivatives_ordersapi_sbe_v1_3_dissect.heartbeat_message(buffer, offset, packet, parent)
  end
  -- Dissect Test Request Message
  if template_id == 11 then
    return coinbase_derivatives_ordersapi_sbe_v1_3_dissect.test_request_message(buffer, offset, packet, parent)
  end
  -- Dissect Resend Request Message
  if template_id == 102 then
    return coinbase_derivatives_ordersapi_sbe_v1_3_dissect.resend_request_message(buffer, offset, packet, parent)
  end
  -- Dissect Gap Fill Message
  if template_id == 202 then
    return coinbase_derivatives_ordersapi_sbe_v1_3_dissect.gap_fill_message(buffer, offset, packet, parent)
  end
  -- Dissect Ping Message
  if template_id == 102 then
    return coinbase_derivatives_ordersapi_sbe_v1_3_dissect.ping_message(buffer, offset, packet, parent)
  end
  -- Dissect Pong Message
  if template_id == 202 then
    return coinbase_derivatives_ordersapi_sbe_v1_3_dissect.pong_message(buffer, offset, packet, parent)
  end
  -- Dissect Instrument Info Request Message
  if template_id == 103 then
    return coinbase_derivatives_ordersapi_sbe_v1_3_dissect.instrument_info_request_message(buffer, offset, packet, parent)
  end
  -- Dissect Instrument Info Message
  if template_id == 203 then
    return coinbase_derivatives_ordersapi_sbe_v1_3_dissect.instrument_info_message(buffer, offset, packet, parent)
  end
  -- Dissect Set Account Message
  if template_id == 105 then
    return coinbase_derivatives_ordersapi_sbe_v1_3_dissect.set_account_message(buffer, offset, packet, parent)
  end
  -- Dissect Set Trader Message
  if template_id == 106 then
    return coinbase_derivatives_ordersapi_sbe_v1_3_dissect.set_trader_message(buffer, offset, packet, parent)
  end
  -- Dissect Set Ack Message
  if template_id == 205 then
    return coinbase_derivatives_ordersapi_sbe_v1_3_dissect.set_ack_message(buffer, offset, packet, parent)
  end
  -- Dissect New Order Message
  if template_id == 110 then
    return coinbase_derivatives_ordersapi_sbe_v1_3_dissect.new_order_message(buffer, offset, packet, parent)
  end
  -- Dissect Order Entered Message
  if template_id == 210 then
    return coinbase_derivatives_ordersapi_sbe_v1_3_dissect.order_entered_message(buffer, offset, packet, parent)
  end
  -- Dissect Replace Order Message
  if template_id == 120 then
    return coinbase_derivatives_ordersapi_sbe_v1_3_dissect.replace_order_message(buffer, offset, packet, parent)
  end
  -- Dissect Stream Order Message
  if template_id == 121 then
    return coinbase_derivatives_ordersapi_sbe_v1_3_dissect.stream_order_message(buffer, offset, packet, parent)
  end
  -- Dissect Order Reject Message
  if template_id == 221 then
    return coinbase_derivatives_ordersapi_sbe_v1_3_dissect.order_reject_message(buffer, offset, packet, parent)
  end
  -- Dissect Order Replaced Message
  if template_id == 220 then
    return coinbase_derivatives_ordersapi_sbe_v1_3_dissect.order_replaced_message(buffer, offset, packet, parent)
  end
  -- Dissect Cancel Order Message
  if template_id == 130 then
    return coinbase_derivatives_ordersapi_sbe_v1_3_dissect.cancel_order_message(buffer, offset, packet, parent)
  end
  -- Dissect Order Canceled Message
  if template_id == 230 then
    return coinbase_derivatives_ordersapi_sbe_v1_3_dissect.order_canceled_message(buffer, offset, packet, parent)
  end
  -- Dissect Cancel Order Reject Message
  if template_id == 233 then
    return coinbase_derivatives_ordersapi_sbe_v1_3_dissect.cancel_order_reject_message(buffer, offset, packet, parent)
  end
  -- Dissect Mass Cancel Order Message
  if template_id == 131 then
    return coinbase_derivatives_ordersapi_sbe_v1_3_dissect.mass_cancel_order_message(buffer, offset, packet, parent)
  end
  -- Dissect Mass Cancel Order Ack Message
  if template_id == 231 then
    return coinbase_derivatives_ordersapi_sbe_v1_3_dissect.mass_cancel_order_ack_message(buffer, offset, packet, parent)
  end
  -- Dissect Mass Cancel Order Reject Message
  if template_id == 232 then
    return coinbase_derivatives_ordersapi_sbe_v1_3_dissect.mass_cancel_order_reject_message(buffer, offset, packet, parent)
  end
  -- Dissect Unlock Trading Message
  if template_id == 132 then
    return coinbase_derivatives_ordersapi_sbe_v1_3_dissect.unlock_trading_message(buffer, offset, packet, parent)
  end
  -- Dissect Unlock Trading Ack Message
  if template_id == 234 then
    return coinbase_derivatives_ordersapi_sbe_v1_3_dissect.unlock_trading_ack_message(buffer, offset, packet, parent)
  end
  -- Dissect Unlock Trading Reject Message
  if template_id == 235 then
    return coinbase_derivatives_ordersapi_sbe_v1_3_dissect.unlock_trading_reject_message(buffer, offset, packet, parent)
  end
  -- Dissect Order Filled Message
  if template_id == 240 then
    return coinbase_derivatives_ordersapi_sbe_v1_3_dissect.order_filled_message(buffer, offset, packet, parent)
  end
  -- Dissect Spread Order Filled Message
  if template_id == 241 then
    return coinbase_derivatives_ordersapi_sbe_v1_3_dissect.spread_order_filled_message(buffer, offset, packet, parent)
  end
  -- Dissect Last Exec Id Request Message
  if template_id == 150 then
    return coinbase_derivatives_ordersapi_sbe_v1_3_dissect.last_exec_id_request_message(buffer, offset, packet, parent)
  end
  -- Dissect Last Exec Id Message
  if template_id == 250 then
    return coinbase_derivatives_ordersapi_sbe_v1_3_dissect.last_exec_id_message(buffer, offset, packet, parent)
  end
  -- Dissect Event Resend Request Message
  if template_id == 152 then
    return coinbase_derivatives_ordersapi_sbe_v1_3_dissect.event_resend_request_message(buffer, offset, packet, parent)
  end
  -- Dissect Event Resend Complete Message
  if template_id == 252 then
    return coinbase_derivatives_ordersapi_sbe_v1_3_dissect.event_resend_complete_message(buffer, offset, packet, parent)
  end
  -- Dissect Event Resend Reject Message
  if template_id == 253 then
    return coinbase_derivatives_ordersapi_sbe_v1_3_dissect.event_resend_reject_message(buffer, offset, packet, parent)
  end

  return offset
end

-- Dissect: Payload
coinbase_derivatives_ordersapi_sbe_v1_3_dissect.payload = function(buffer, offset, packet, parent, template_id)
  if not show.payload then
    return coinbase_derivatives_ordersapi_sbe_v1_3_dissect.payload_branches(buffer, offset, packet, parent, template_id)
  end

  -- Calculate size and check that branch is not empty
  local size = coinbase_derivatives_ordersapi_sbe_v1_3_size_of.payload(buffer, offset, template_id)
  if size == 0 then
    return offset
  end

  -- Dissect Element
  local range = buffer(offset, size)
  local display = coinbase_derivatives_ordersapi_sbe_v1_3_display.payload(buffer, packet, parent)
  local element = parent:add(coinbase_derivatives_ordersapi_sbe_v1_3.fields.payload, range, display)

  return coinbase_derivatives_ordersapi_sbe_v1_3_dissect.payload_branches(buffer, offset, packet, parent, template_id)
end

-- Size: Version
coinbase_derivatives_ordersapi_sbe_v1_3_size_of.version = 2

-- Display: Version
coinbase_derivatives_ordersapi_sbe_v1_3_display.version = function(value)
  return "Version: "..value
end

-- Dissect: Version
coinbase_derivatives_ordersapi_sbe_v1_3_dissect.version = function(buffer, offset, packet, parent)
  local length = coinbase_derivatives_ordersapi_sbe_v1_3_size_of.version
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = coinbase_derivatives_ordersapi_sbe_v1_3_display.version(value, buffer, offset, packet, parent)

  parent:add(coinbase_derivatives_ordersapi_sbe_v1_3.fields.version, range, value, display)

  return offset + length, value
end

-- Size: Schema Id
coinbase_derivatives_ordersapi_sbe_v1_3_size_of.schema_id = 2

-- Display: Schema Id
coinbase_derivatives_ordersapi_sbe_v1_3_display.schema_id = function(value)
  return "Schema Id: "..value
end

-- Dissect: Schema Id
coinbase_derivatives_ordersapi_sbe_v1_3_dissect.schema_id = function(buffer, offset, packet, parent)
  local length = coinbase_derivatives_ordersapi_sbe_v1_3_size_of.schema_id
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = coinbase_derivatives_ordersapi_sbe_v1_3_display.schema_id(value, buffer, offset, packet, parent)

  parent:add(coinbase_derivatives_ordersapi_sbe_v1_3.fields.schema_id, range, value, display)

  return offset + length, value
end

-- Size: Template Id
coinbase_derivatives_ordersapi_sbe_v1_3_size_of.template_id = 2

-- Display: Template Id
coinbase_derivatives_ordersapi_sbe_v1_3_display.template_id = function(value)
  if value == 100 then
    return "Template Id: Logon Message (100)"
  end
  if value == 200 then
    return "Template Id: Logon Conf Message (200)"
  end
  if value == 101 then
    return "Template Id: Logout Message (101)"
  end
  if value == 201 then
    return "Template Id: Logged Out Message (201)"
  end
  if value == 10 then
    return "Template Id: Heartbeat Message (10)"
  end
  if value == 11 then
    return "Template Id: Test Request Message (11)"
  end
  if value == 102 then
    return "Template Id: Resend Request Message (102)"
  end
  if value == 202 then
    return "Template Id: Gap Fill Message (202)"
  end
  if value == 102 then
    return "Template Id: Ping Message (102)"
  end
  if value == 202 then
    return "Template Id: Pong Message (202)"
  end
  if value == 103 then
    return "Template Id: Instrument Info Request Message (103)"
  end
  if value == 203 then
    return "Template Id: Instrument Info Message (203)"
  end
  if value == 105 then
    return "Template Id: Set Account Message (105)"
  end
  if value == 106 then
    return "Template Id: Set Trader Message (106)"
  end
  if value == 205 then
    return "Template Id: Set Ack Message (205)"
  end
  if value == 110 then
    return "Template Id: New Order Message (110)"
  end
  if value == 210 then
    return "Template Id: Order Entered Message (210)"
  end
  if value == 120 then
    return "Template Id: Replace Order Message (120)"
  end
  if value == 121 then
    return "Template Id: Stream Order Message (121)"
  end
  if value == 221 then
    return "Template Id: Order Reject Message (221)"
  end
  if value == 220 then
    return "Template Id: Order Replaced Message (220)"
  end
  if value == 130 then
    return "Template Id: Cancel Order Message (130)"
  end
  if value == 230 then
    return "Template Id: Order Canceled Message (230)"
  end
  if value == 233 then
    return "Template Id: Cancel Order Reject Message (233)"
  end
  if value == 131 then
    return "Template Id: Mass Cancel Order Message (131)"
  end
  if value == 231 then
    return "Template Id: Mass Cancel Order Ack Message (231)"
  end
  if value == 232 then
    return "Template Id: Mass Cancel Order Reject Message (232)"
  end
  if value == 132 then
    return "Template Id: Unlock Trading Message (132)"
  end
  if value == 234 then
    return "Template Id: Unlock Trading Ack Message (234)"
  end
  if value == 235 then
    return "Template Id: Unlock Trading Reject Message (235)"
  end
  if value == 240 then
    return "Template Id: Order Filled Message (240)"
  end
  if value == 241 then
    return "Template Id: Spread Order Filled Message (241)"
  end
  if value == 150 then
    return "Template Id: Last Exec Id Request Message (150)"
  end
  if value == 250 then
    return "Template Id: Last Exec Id Message (250)"
  end
  if value == 152 then
    return "Template Id: Event Resend Request Message (152)"
  end
  if value == 252 then
    return "Template Id: Event Resend Complete Message (252)"
  end
  if value == 253 then
    return "Template Id: Event Resend Reject Message (253)"
  end

  return "Template Id: Unknown("..value..")"
end

-- Dissect: Template Id
coinbase_derivatives_ordersapi_sbe_v1_3_dissect.template_id = function(buffer, offset, packet, parent)
  local length = coinbase_derivatives_ordersapi_sbe_v1_3_size_of.template_id
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = coinbase_derivatives_ordersapi_sbe_v1_3_display.template_id(value, buffer, offset, packet, parent)

  parent:add(coinbase_derivatives_ordersapi_sbe_v1_3.fields.template_id, range, value, display)

  return offset + length, value
end

-- Size: Block Length
coinbase_derivatives_ordersapi_sbe_v1_3_size_of.block_length = 2

-- Display: Block Length
coinbase_derivatives_ordersapi_sbe_v1_3_display.block_length = function(value)
  return "Block Length: "..value
end

-- Dissect: Block Length
coinbase_derivatives_ordersapi_sbe_v1_3_dissect.block_length = function(buffer, offset, packet, parent)
  local length = coinbase_derivatives_ordersapi_sbe_v1_3_size_of.block_length
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = coinbase_derivatives_ordersapi_sbe_v1_3_display.block_length(value, buffer, offset, packet, parent)

  parent:add(coinbase_derivatives_ordersapi_sbe_v1_3.fields.block_length, range, value, display)

  return offset + length, value
end

-- Size: Send Time Epoch Nanos
coinbase_derivatives_ordersapi_sbe_v1_3_size_of.send_time_epoch_nanos = 8

-- Display: Send Time Epoch Nanos
coinbase_derivatives_ordersapi_sbe_v1_3_display.send_time_epoch_nanos = function(value)
  -- Parse unix timestamp
  local seconds = value:tonumber()/1000000000
  local nanoseconds = value:tonumber()%1000000000

  return "Send Time Epoch Nanos: "..os.date("%x %H:%M:%S.", seconds)..string.format("%09d", nanoseconds)
end

-- Dissect: Send Time Epoch Nanos
coinbase_derivatives_ordersapi_sbe_v1_3_dissect.send_time_epoch_nanos = function(buffer, offset, packet, parent)
  local length = coinbase_derivatives_ordersapi_sbe_v1_3_size_of.send_time_epoch_nanos
  local range = buffer(offset, length)
  local value = range:le_int64()
  local display = coinbase_derivatives_ordersapi_sbe_v1_3_display.send_time_epoch_nanos(value, buffer, offset, packet, parent)

  parent:add(coinbase_derivatives_ordersapi_sbe_v1_3.fields.send_time_epoch_nanos, range, value, display)

  return offset + length, value
end

-- Size: Reserved
coinbase_derivatives_ordersapi_sbe_v1_3_size_of.reserved = 4

-- Display: Reserved
coinbase_derivatives_ordersapi_sbe_v1_3_display.reserved = function(value)
  return "Reserved: "..value
end

-- Dissect: Reserved
coinbase_derivatives_ordersapi_sbe_v1_3_dissect.reserved = function(buffer, offset, packet, parent)
  local length = coinbase_derivatives_ordersapi_sbe_v1_3_size_of.reserved
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = coinbase_derivatives_ordersapi_sbe_v1_3_display.reserved(value, buffer, offset, packet, parent)

  parent:add(coinbase_derivatives_ordersapi_sbe_v1_3.fields.reserved, range, value, display)

  return offset + length, value
end

-- Size: Last Processed Seq No
coinbase_derivatives_ordersapi_sbe_v1_3_size_of.last_processed_seq_no = 4

-- Display: Last Processed Seq No
coinbase_derivatives_ordersapi_sbe_v1_3_display.last_processed_seq_no = function(value)
  return "Last Processed Seq No: "..value
end

-- Dissect: Last Processed Seq No
coinbase_derivatives_ordersapi_sbe_v1_3_dissect.last_processed_seq_no = function(buffer, offset, packet, parent)
  local length = coinbase_derivatives_ordersapi_sbe_v1_3_size_of.last_processed_seq_no
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = coinbase_derivatives_ordersapi_sbe_v1_3_display.last_processed_seq_no(value, buffer, offset, packet, parent)

  parent:add(coinbase_derivatives_ordersapi_sbe_v1_3.fields.last_processed_seq_no, range, value, display)

  return offset + length, value
end

-- Size: Sequence Number
coinbase_derivatives_ordersapi_sbe_v1_3_size_of.sequence_number = 4

-- Display: Sequence Number
coinbase_derivatives_ordersapi_sbe_v1_3_display.sequence_number = function(value)
  return "Sequence Number: "..value
end

-- Dissect: Sequence Number
coinbase_derivatives_ordersapi_sbe_v1_3_dissect.sequence_number = function(buffer, offset, packet, parent)
  local length = coinbase_derivatives_ordersapi_sbe_v1_3_size_of.sequence_number
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = coinbase_derivatives_ordersapi_sbe_v1_3_display.sequence_number(value, buffer, offset, packet, parent)

  parent:add(coinbase_derivatives_ordersapi_sbe_v1_3.fields.sequence_number, range, value, display)

  return offset + length, value
end

-- Size: Message Length
coinbase_derivatives_ordersapi_sbe_v1_3_size_of.message_length = 2

-- Display: Message Length
coinbase_derivatives_ordersapi_sbe_v1_3_display.message_length = function(value)
  return "Message Length: "..value
end

-- Dissect: Message Length
coinbase_derivatives_ordersapi_sbe_v1_3_dissect.message_length = function(buffer, offset, packet, parent)
  local length = coinbase_derivatives_ordersapi_sbe_v1_3_size_of.message_length
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = coinbase_derivatives_ordersapi_sbe_v1_3_display.message_length(value, buffer, offset, packet, parent)

  parent:add(coinbase_derivatives_ordersapi_sbe_v1_3.fields.message_length, range, value, display)

  return offset + length, value
end

-- Size: Flags
coinbase_derivatives_ordersapi_sbe_v1_3_size_of.flags = 1

-- Display: Flags
coinbase_derivatives_ordersapi_sbe_v1_3_display.flags = function(value)
  return "Flags: "..value
end

-- Dissect: Flags
coinbase_derivatives_ordersapi_sbe_v1_3_dissect.flags = function(buffer, offset, packet, parent)
  local length = coinbase_derivatives_ordersapi_sbe_v1_3_size_of.flags
  local range = buffer(offset, length)
  local value = range:uint()
  local display = coinbase_derivatives_ordersapi_sbe_v1_3_display.flags(value, buffer, offset, packet, parent)

  parent:add(coinbase_derivatives_ordersapi_sbe_v1_3.fields.flags, range, value, display)

  return offset + length, value
end

-- Size: Protocol Id
coinbase_derivatives_ordersapi_sbe_v1_3_size_of.protocol_id = 1

-- Display: Protocol Id
coinbase_derivatives_ordersapi_sbe_v1_3_display.protocol_id = function(value)
  return "Protocol Id: "..value
end

-- Dissect: Protocol Id
coinbase_derivatives_ordersapi_sbe_v1_3_dissect.protocol_id = function(buffer, offset, packet, parent)
  local length = coinbase_derivatives_ordersapi_sbe_v1_3_size_of.protocol_id
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = coinbase_derivatives_ordersapi_sbe_v1_3_display.protocol_id(value, buffer, offset, packet, parent)

  parent:add(coinbase_derivatives_ordersapi_sbe_v1_3.fields.protocol_id, range, value, display)

  return offset + length, value
end

-- Calculate size of: Message Header
coinbase_derivatives_ordersapi_sbe_v1_3_size_of.message_header = function(buffer, offset)
  local index = 0

  index = index + coinbase_derivatives_ordersapi_sbe_v1_3_size_of.protocol_id

  index = index + coinbase_derivatives_ordersapi_sbe_v1_3_size_of.flags

  index = index + coinbase_derivatives_ordersapi_sbe_v1_3_size_of.message_length

  index = index + coinbase_derivatives_ordersapi_sbe_v1_3_size_of.sequence_number

  index = index + coinbase_derivatives_ordersapi_sbe_v1_3_size_of.last_processed_seq_no

  index = index + coinbase_derivatives_ordersapi_sbe_v1_3_size_of.reserved

  index = index + coinbase_derivatives_ordersapi_sbe_v1_3_size_of.send_time_epoch_nanos

  index = index + coinbase_derivatives_ordersapi_sbe_v1_3_size_of.block_length

  index = index + coinbase_derivatives_ordersapi_sbe_v1_3_size_of.template_id

  index = index + coinbase_derivatives_ordersapi_sbe_v1_3_size_of.schema_id

  index = index + coinbase_derivatives_ordersapi_sbe_v1_3_size_of.version

  return index
end

-- Display: Message Header
coinbase_derivatives_ordersapi_sbe_v1_3_display.message_header = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Message Header
coinbase_derivatives_ordersapi_sbe_v1_3_dissect.message_header_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Protocol Id: 1 Byte Unsigned Fixed Width Integer
  index, protocol_id = coinbase_derivatives_ordersapi_sbe_v1_3_dissect.protocol_id(buffer, index, packet, parent)

  -- Flags: 1 Byte Unsigned Fixed Width Integer
  index, flags = coinbase_derivatives_ordersapi_sbe_v1_3_dissect.flags(buffer, index, packet, parent)

  -- Message Length: 2 Byte Unsigned Fixed Width Integer
  index, message_length = coinbase_derivatives_ordersapi_sbe_v1_3_dissect.message_length(buffer, index, packet, parent)

  -- Sequence Number: 4 Byte Unsigned Fixed Width Integer
  index, sequence_number = coinbase_derivatives_ordersapi_sbe_v1_3_dissect.sequence_number(buffer, index, packet, parent)

  -- Last Processed Seq No: 4 Byte Unsigned Fixed Width Integer
  index, last_processed_seq_no = coinbase_derivatives_ordersapi_sbe_v1_3_dissect.last_processed_seq_no(buffer, index, packet, parent)

  -- Reserved: 4 Byte Unsigned Fixed Width Integer
  index, reserved = coinbase_derivatives_ordersapi_sbe_v1_3_dissect.reserved(buffer, index, packet, parent)

  -- Send Time Epoch Nanos: 8 Byte Signed Fixed Width Integer
  index, send_time_epoch_nanos = coinbase_derivatives_ordersapi_sbe_v1_3_dissect.send_time_epoch_nanos(buffer, index, packet, parent)

  -- Block Length: 2 Byte Unsigned Fixed Width Integer
  index, block_length = coinbase_derivatives_ordersapi_sbe_v1_3_dissect.block_length(buffer, index, packet, parent)

  -- Template Id: 2 Byte Unsigned Fixed Width Integer Enum with 37 values
  index, template_id = coinbase_derivatives_ordersapi_sbe_v1_3_dissect.template_id(buffer, index, packet, parent)

  -- Schema Id: 2 Byte Unsigned Fixed Width Integer Static
  index, schema_id = coinbase_derivatives_ordersapi_sbe_v1_3_dissect.schema_id(buffer, index, packet, parent)

  -- Version: 2 Byte Unsigned Fixed Width Integer Static
  index, version = coinbase_derivatives_ordersapi_sbe_v1_3_dissect.version(buffer, index, packet, parent)

  return index
end

-- Dissect: Message Header
coinbase_derivatives_ordersapi_sbe_v1_3_dissect.message_header = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.message_header then
    local length = coinbase_derivatives_ordersapi_sbe_v1_3_size_of.message_header(buffer, offset)
    local range = buffer(offset, length)
    local display = coinbase_derivatives_ordersapi_sbe_v1_3_display.message_header(buffer, packet, parent)
    parent = parent:add(coinbase_derivatives_ordersapi_sbe_v1_3.fields.message_header, range, display)
  end

  return coinbase_derivatives_ordersapi_sbe_v1_3_dissect.message_header_fields(buffer, offset, packet, parent)
end

-- Display: Sbe Message
coinbase_derivatives_ordersapi_sbe_v1_3_display.sbe_message = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Sbe Message
coinbase_derivatives_ordersapi_sbe_v1_3_dissect.sbe_message_fields = function(buffer, offset, packet, parent, size_of_sbe_message)
  local index = offset

  -- Message Header: Struct of 11 fields
  index, message_header = coinbase_derivatives_ordersapi_sbe_v1_3_dissect.message_header(buffer, index, packet, parent)

  -- Dependency element: Template Id
  local template_id = buffer(index - 6, 2):le_uint()

  -- Payload: Runtime Type with 37 branches
  index = coinbase_derivatives_ordersapi_sbe_v1_3_dissect.payload(buffer, index, packet, parent, template_id)

  -- Dependency element: Message Length
  local message_length = buffer(offset + 2, 2):le_uint()

  -- Runtime Size Of: Padding
  local size_of_padding = message_length - (index - offset)

  -- Padding: 0 Byte
  index = coinbase_derivatives_ordersapi_sbe_v1_3_dissect.padding(buffer, index, packet, parent, size_of_padding)

  return index
end

-- Dissect: Sbe Message
coinbase_derivatives_ordersapi_sbe_v1_3_dissect.sbe_message = function(buffer, offset, packet, parent, size_of_sbe_message)
  -- Optionally add struct element to protocol tree
  if show.sbe_message then
    local range = buffer(offset, size_of_sbe_message)
    local display = coinbase_derivatives_ordersapi_sbe_v1_3_display.sbe_message(buffer, packet, parent)
    parent = parent:add(coinbase_derivatives_ordersapi_sbe_v1_3.fields.sbe_message, range, display)
  end

  coinbase_derivatives_ordersapi_sbe_v1_3_dissect.sbe_message_fields(buffer, offset, packet, parent, size_of_sbe_message)

  return offset + size_of_sbe_message
end

-- Remaining Bytes For: Sbe Message
local sbe_message_bytes_remaining = function(buffer, index, available)
  -- Calculate the number of bytes remaining
  local remaining = available - index

  -- Check if packet size can be read
  if remaining < coinbase_derivatives_ordersapi_sbe_v1_3_size_of.message_header(buffer, index) then
    return -DESEGMENT_ONE_MORE_SEGMENT
  end

  -- Parse runtime size
  local current = buffer(index + 2, 2):le_uint()

  -- Check if enough bytes remain
  if remaining < current then
    return -(current - remaining)
  end

  return remaining, current
end

-- Dissect Packet
coinbase_derivatives_ordersapi_sbe_v1_3_dissect.packet = function(buffer, packet, parent)
  local index = 0

  -- Dependency for Sbe Message
  local end_of_payload = buffer:len()

  -- Sbe Message: Struct of 3 fields
  while index < end_of_payload do

    -- Are minimum number of bytes are available?
    local available, size_of_sbe_message = sbe_message_bytes_remaining(buffer, index, end_of_payload)

    if available > 0 then
      index = coinbase_derivatives_ordersapi_sbe_v1_3_dissect.sbe_message(buffer, index, packet, parent, size_of_sbe_message)
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
function coinbase_derivatives_ordersapi_sbe_v1_3.init()
end

-- Dissector for Coinbase Derivatives OrdersApi Sbe 1.3
function coinbase_derivatives_ordersapi_sbe_v1_3.dissector(buffer, packet, parent)

  -- Set protocol name
  packet.cols.protocol = coinbase_derivatives_ordersapi_sbe_v1_3.name

  -- Dissect protocol
  local protocol = parent:add(coinbase_derivatives_ordersapi_sbe_v1_3, buffer(), coinbase_derivatives_ordersapi_sbe_v1_3.description, "("..buffer:len().." Bytes)")
  return coinbase_derivatives_ordersapi_sbe_v1_3_dissect.packet(buffer, packet, protocol)
end

-- Register With Tcp Table
local tcp_table = DissectorTable.get("tcp.port")
tcp_table:add(65333, coinbase_derivatives_ordersapi_sbe_v1_3)


-----------------------------------------------------------------------
-- Protocol Heuristics
-----------------------------------------------------------------------

-- Verify size of packet
verify.coinbase_derivatives_ordersapi_sbe_v1_3_packet_size = function(buffer)

  return true
end

-- Verify Schema Id Field
verify.schema_id = function(buffer)
  -- Attempt to read field
  local value = buffer(28, 2):le_uint()

  if value == 1100 then
    return true
  end

  if value == 1101 then
    return true
  end

  return false
end

-- Verify Version Field
verify.version = function(buffer)
  -- Attempt to read field
  local value = buffer(30, 2):le_uint()

  if value == 0 then
    return true
  end

  if value == 3 then
    return true
  end

  return false
end

-- Dissector Heuristic for Coinbase Derivatives OrdersApi Sbe 1.3
local function coinbase_derivatives_ordersapi_sbe_v1_3_heuristic(buffer, packet, parent)
  -- Verify packet length
  if not verify.coinbase_derivatives_ordersapi_sbe_v1_3_packet_size(buffer) then return false end

  -- Verify Schema Id
  if not verify.schema_id(buffer) then return false end

  -- Verify Version
  if not verify.version(buffer) then return false end

  -- Protocol is valid, set conversation and dissect this packet
  packet.conversation = coinbase_derivatives_ordersapi_sbe_v1_3
  coinbase_derivatives_ordersapi_sbe_v1_3.dissector(buffer, packet, parent)

  return true
end

-- Register Heuristic for Coinbase Derivatives OrdersApi Sbe 1.3
coinbase_derivatives_ordersapi_sbe_v1_3:register_heuristic("tcp", coinbase_derivatives_ordersapi_sbe_v1_3_heuristic)

-----------------------------------------------------------------------
-- Lua dissectors are an easily edited and modified cross platform dissection solution.
-- Feel free to modify. Enjoy.
-----------------------------------------------------------------------
-- 
-- Protocol:
--   Organization: Coinbase
--   Version: 1.3
--   Date: Monday, July 27, 2020
--   Specification: FairX_SBE_API_V1.3.pdf
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
