-----------------------------------------------------------------------
-- Lua Script Wireshark Dissector
-- 
-- Please see end of file for rules and regulations
-----------------------------------------------------------------------

-- Coinbase Derivatives OrdersApi Sbe 1.8 Protocol
local omi_coinbase_derivatives_ordersapi_sbe_v1_8 = Proto("Coinbase.Derivatives.OrdersApi.Sbe.v1.8.Lua", "Coinbase Derivatives OrdersApi Sbe 1.8")

-- Protocol table
local coinbase_derivatives_ordersapi_sbe_v1_8 = {}

-----------------------------------------------------------------------
-- Declare Protocol Fields
-----------------------------------------------------------------------

-- Coinbase Derivatives OrdersApi Sbe 1.8 Fields
omi_coinbase_derivatives_ordersapi_sbe_v1_8.fields.account = ProtoField.new("Account", "coinbase.derivatives.ordersapi.sbe.v1.8.account", ftypes.STRING)
omi_coinbase_derivatives_ordersapi_sbe_v1_8.fields.available_qty = ProtoField.new("Available Qty", "coinbase.derivatives.ordersapi.sbe.v1.8.availableqty", ftypes.INT32)
omi_coinbase_derivatives_ordersapi_sbe_v1_8.fields.begin_exec_id = ProtoField.new("Begin Exec Id", "coinbase.derivatives.ordersapi.sbe.v1.8.beginexecid", ftypes.INT64)
omi_coinbase_derivatives_ordersapi_sbe_v1_8.fields.block_length = ProtoField.new("Block Length", "coinbase.derivatives.ordersapi.sbe.v1.8.blocklength", ftypes.UINT16)
omi_coinbase_derivatives_ordersapi_sbe_v1_8.fields.cancel_order_reject_details = ProtoField.new("Cancel Order Reject Details", "coinbase.derivatives.ordersapi.sbe.v1.8.cancelorderrejectdetails", ftypes.STRING)
omi_coinbase_derivatives_ordersapi_sbe_v1_8.fields.cancel_order_reject_reason = ProtoField.new("Cancel Order Reject Reason", "coinbase.derivatives.ordersapi.sbe.v1.8.cancelorderrejectreason", ftypes.UINT8)
omi_coinbase_derivatives_ordersapi_sbe_v1_8.fields.cancel_reason = ProtoField.new("Cancel Reason", "coinbase.derivatives.ordersapi.sbe.v1.8.cancelreason", ftypes.UINT8)
omi_coinbase_derivatives_ordersapi_sbe_v1_8.fields.canceled_count = ProtoField.new("Canceled Count", "coinbase.derivatives.ordersapi.sbe.v1.8.canceledcount", ftypes.INT32)
omi_coinbase_derivatives_ordersapi_sbe_v1_8.fields.client_order_id = ProtoField.new("Client Order Id", "coinbase.derivatives.ordersapi.sbe.v1.8.clientorderid", ftypes.INT64)
omi_coinbase_derivatives_ordersapi_sbe_v1_8.fields.correlation_id = ProtoField.new("Correlation Id", "coinbase.derivatives.ordersapi.sbe.v1.8.correlationid", ftypes.INT64)
omi_coinbase_derivatives_ordersapi_sbe_v1_8.fields.current_session_only = ProtoField.new("Current Session Only", "coinbase.derivatives.ordersapi.sbe.v1.8.currentsessiononly", ftypes.INT8)
omi_coinbase_derivatives_ordersapi_sbe_v1_8.fields.data = ProtoField.new("Data", "coinbase.derivatives.ordersapi.sbe.v1.8.data", ftypes.STRING)
omi_coinbase_derivatives_ordersapi_sbe_v1_8.fields.data_length = ProtoField.new("Data Length", "coinbase.derivatives.ordersapi.sbe.v1.8.datalength", ftypes.UINT8)
omi_coinbase_derivatives_ordersapi_sbe_v1_8.fields.data_value = ProtoField.new("Data Value", "coinbase.derivatives.ordersapi.sbe.v1.8.datavalue", ftypes.BYTES)
omi_coinbase_derivatives_ordersapi_sbe_v1_8.fields.details = ProtoField.new("Details", "coinbase.derivatives.ordersapi.sbe.v1.8.details", ftypes.STRING)
omi_coinbase_derivatives_ordersapi_sbe_v1_8.fields.details_string_55 = ProtoField.new("Details String 55", "coinbase.derivatives.ordersapi.sbe.v1.8.detailsstring55", ftypes.STRING)
omi_coinbase_derivatives_ordersapi_sbe_v1_8.fields.end_exec_id = ProtoField.new("End Exec Id", "coinbase.derivatives.ordersapi.sbe.v1.8.endexecid", ftypes.INT64)
omi_coinbase_derivatives_ordersapi_sbe_v1_8.fields.error_message = ProtoField.new("Error Message", "coinbase.derivatives.ordersapi.sbe.v1.8.errormessage", ftypes.STRING)
omi_coinbase_derivatives_ordersapi_sbe_v1_8.fields.exec_id = ProtoField.new("Exec Id", "coinbase.derivatives.ordersapi.sbe.v1.8.execid", ftypes.INT64)
omi_coinbase_derivatives_ordersapi_sbe_v1_8.fields.fill_price = ProtoField.new("Fill Price", "coinbase.derivatives.ordersapi.sbe.v1.8.fillprice", ftypes.DOUBLE)
omi_coinbase_derivatives_ordersapi_sbe_v1_8.fields.fill_qty = ProtoField.new("Fill Qty", "coinbase.derivatives.ordersapi.sbe.v1.8.fillqty", ftypes.INT32)
omi_coinbase_derivatives_ordersapi_sbe_v1_8.fields.filled_vwap = ProtoField.new("Filled Vwap", "coinbase.derivatives.ordersapi.sbe.v1.8.filledvwap", ftypes.DOUBLE)
omi_coinbase_derivatives_ordersapi_sbe_v1_8.fields.flags = ProtoField.new("Flags", "coinbase.derivatives.ordersapi.sbe.v1.8.flags", ftypes.STRING)
omi_coinbase_derivatives_ordersapi_sbe_v1_8.fields.from_sequence_number = ProtoField.new("From Sequence Number", "coinbase.derivatives.ordersapi.sbe.v1.8.fromsequencenumber", ftypes.UINT32)
omi_coinbase_derivatives_ordersapi_sbe_v1_8.fields.gap_fill_padding = ProtoField.new("Gap Fill Padding", "coinbase.derivatives.ordersapi.sbe.v1.8.gapfillpadding", ftypes.UINT32)
omi_coinbase_derivatives_ordersapi_sbe_v1_8.fields.good_til_date = ProtoField.new("Good Til Date", "coinbase.derivatives.ordersapi.sbe.v1.8.goodtildate", ftypes.UINT16)
omi_coinbase_derivatives_ordersapi_sbe_v1_8.fields.heartbeat_interval_seconds = ProtoField.new("Heartbeat Interval Seconds", "coinbase.derivatives.ordersapi.sbe.v1.8.heartbeatintervalseconds", ftypes.INT32)
omi_coinbase_derivatives_ordersapi_sbe_v1_8.fields.instrument_id = ProtoField.new("Instrument Id", "coinbase.derivatives.ordersapi.sbe.v1.8.instrumentid", ftypes.INT32)
omi_coinbase_derivatives_ordersapi_sbe_v1_8.fields.instrument_status = ProtoField.new("Instrument Status", "coinbase.derivatives.ordersapi.sbe.v1.8.instrumentstatus", ftypes.UINT8)
omi_coinbase_derivatives_ordersapi_sbe_v1_8.fields.is_aggressor = ProtoField.new("Is Aggressor", "coinbase.derivatives.ordersapi.sbe.v1.8.isaggressor", ftypes.INT8)
omi_coinbase_derivatives_ordersapi_sbe_v1_8.fields.is_last_message = ProtoField.new("Is Last Message", "coinbase.derivatives.ordersapi.sbe.v1.8.islastmessage", ftypes.INT8)
omi_coinbase_derivatives_ordersapi_sbe_v1_8.fields.last_exec_id = ProtoField.new("Last Exec Id", "coinbase.derivatives.ordersapi.sbe.v1.8.lastexecid", ftypes.INT64)
omi_coinbase_derivatives_ordersapi_sbe_v1_8.fields.last_processed_fill_id = ProtoField.new("Last Processed Fill Id", "coinbase.derivatives.ordersapi.sbe.v1.8.lastprocessedfillid", ftypes.INT64)
omi_coinbase_derivatives_ordersapi_sbe_v1_8.fields.last_processed_seq_no = ProtoField.new("Last Processed Seq No", "coinbase.derivatives.ordersapi.sbe.v1.8.lastprocessedseqno", ftypes.UINT32)
omi_coinbase_derivatives_ordersapi_sbe_v1_8.fields.leg_1_fill_price = ProtoField.new("Leg 1 Fill Price", "coinbase.derivatives.ordersapi.sbe.v1.8.leg1fillprice", ftypes.DOUBLE)
omi_coinbase_derivatives_ordersapi_sbe_v1_8.fields.leg_2_fill_price = ProtoField.new("Leg 2 Fill Price", "coinbase.derivatives.ordersapi.sbe.v1.8.leg2fillprice", ftypes.DOUBLE)
omi_coinbase_derivatives_ordersapi_sbe_v1_8.fields.limit_price = ProtoField.new("Limit Price", "coinbase.derivatives.ordersapi.sbe.v1.8.limitprice", ftypes.DOUBLE)
omi_coinbase_derivatives_ordersapi_sbe_v1_8.fields.match_id = ProtoField.new("Match Id", "coinbase.derivatives.ordersapi.sbe.v1.8.matchid", ftypes.INT64)
omi_coinbase_derivatives_ordersapi_sbe_v1_8.fields.message_flags = ProtoField.new("Message Flags", "coinbase.derivatives.ordersapi.sbe.v1.8.messageflags", ftypes.UINT8)
omi_coinbase_derivatives_ordersapi_sbe_v1_8.fields.message_header = ProtoField.new("Message Header", "coinbase.derivatives.ordersapi.sbe.v1.8.messageheader", ftypes.STRING)
omi_coinbase_derivatives_ordersapi_sbe_v1_8.fields.message_length = ProtoField.new("Message Length", "coinbase.derivatives.ordersapi.sbe.v1.8.messagelength", ftypes.UINT16)
omi_coinbase_derivatives_ordersapi_sbe_v1_8.fields.min_qty = ProtoField.new("Min Qty", "coinbase.derivatives.ordersapi.sbe.v1.8.minqty", ftypes.INT32)
omi_coinbase_derivatives_ordersapi_sbe_v1_8.fields.new_limit_price = ProtoField.new("New Limit Price", "coinbase.derivatives.ordersapi.sbe.v1.8.newlimitprice", ftypes.DOUBLE)
omi_coinbase_derivatives_ordersapi_sbe_v1_8.fields.new_quantity = ProtoField.new("New Quantity", "coinbase.derivatives.ordersapi.sbe.v1.8.newquantity", ftypes.INT32)
omi_coinbase_derivatives_ordersapi_sbe_v1_8.fields.new_sequence_number = ProtoField.new("New Sequence Number", "coinbase.derivatives.ordersapi.sbe.v1.8.newsequencenumber", ftypes.UINT32)
omi_coinbase_derivatives_ordersapi_sbe_v1_8.fields.num_users_affected = ProtoField.new("Num Users Affected", "coinbase.derivatives.ordersapi.sbe.v1.8.numusersaffected", ftypes.INT32)
omi_coinbase_derivatives_ordersapi_sbe_v1_8.fields.only_current_session = ProtoField.new("Only Current Session", "coinbase.derivatives.ordersapi.sbe.v1.8.onlycurrentsession", ftypes.INT8)
omi_coinbase_derivatives_ordersapi_sbe_v1_8.fields.order_id = ProtoField.new("Order Id", "coinbase.derivatives.ordersapi.sbe.v1.8.orderid", ftypes.INT64)
omi_coinbase_derivatives_ordersapi_sbe_v1_8.fields.order_id_optional = ProtoField.new("Order Id Optional", "coinbase.derivatives.ordersapi.sbe.v1.8.orderidoptional", ftypes.INT64)
omi_coinbase_derivatives_ordersapi_sbe_v1_8.fields.order_reject_details = ProtoField.new("Order Reject Details", "coinbase.derivatives.ordersapi.sbe.v1.8.orderrejectdetails", ftypes.STRING)
omi_coinbase_derivatives_ordersapi_sbe_v1_8.fields.order_reject_reason = ProtoField.new("Order Reject Reason", "coinbase.derivatives.ordersapi.sbe.v1.8.orderrejectreason", ftypes.UINT8)
omi_coinbase_derivatives_ordersapi_sbe_v1_8.fields.packet = ProtoField.new("Packet", "coinbase.derivatives.ordersapi.sbe.v1.8.packet", ftypes.STRING)
omi_coinbase_derivatives_ordersapi_sbe_v1_8.fields.padding = ProtoField.new("Padding", "coinbase.derivatives.ordersapi.sbe.v1.8.padding", ftypes.BYTES)
omi_coinbase_derivatives_ordersapi_sbe_v1_8.fields.password = ProtoField.new("Password", "coinbase.derivatives.ordersapi.sbe.v1.8.password", ftypes.STRING)
omi_coinbase_derivatives_ordersapi_sbe_v1_8.fields.payload = ProtoField.new("Payload", "coinbase.derivatives.ordersapi.sbe.v1.8.payload", ftypes.STRING)
omi_coinbase_derivatives_ordersapi_sbe_v1_8.fields.post_only = ProtoField.new("Post Only", "coinbase.derivatives.ordersapi.sbe.v1.8.postonly", ftypes.UINT8, {[1]="Yes",[0]="No"}, base.DEC, 0x01)
omi_coinbase_derivatives_ordersapi_sbe_v1_8.fields.product_id = ProtoField.new("Product Id", "coinbase.derivatives.ordersapi.sbe.v1.8.productid", ftypes.INT32)
omi_coinbase_derivatives_ordersapi_sbe_v1_8.fields.protocol_id = ProtoField.new("Protocol Id", "coinbase.derivatives.ordersapi.sbe.v1.8.protocolid", ftypes.UINT8)
omi_coinbase_derivatives_ordersapi_sbe_v1_8.fields.quantity = ProtoField.new("Quantity", "coinbase.derivatives.ordersapi.sbe.v1.8.quantity", ftypes.INT32)
omi_coinbase_derivatives_ordersapi_sbe_v1_8.fields.reason_string_64 = ProtoField.new("Reason String 64", "coinbase.derivatives.ordersapi.sbe.v1.8.reasonstring64", ftypes.STRING)
omi_coinbase_derivatives_ordersapi_sbe_v1_8.fields.receive_time = ProtoField.new("Receive Time", "coinbase.derivatives.ordersapi.sbe.v1.8.receivetime", ftypes.INT64)
omi_coinbase_derivatives_ordersapi_sbe_v1_8.fields.ref_sequence_number = ProtoField.new("Ref Sequence Number", "coinbase.derivatives.ordersapi.sbe.v1.8.refsequencenumber", ftypes.UINT32)
omi_coinbase_derivatives_ordersapi_sbe_v1_8.fields.reject_reason = ProtoField.new("Reject Reason", "coinbase.derivatives.ordersapi.sbe.v1.8.rejectreason", ftypes.INT32)
omi_coinbase_derivatives_ordersapi_sbe_v1_8.fields.request_time = ProtoField.new("Request Time", "coinbase.derivatives.ordersapi.sbe.v1.8.requesttime", ftypes.INT64)
omi_coinbase_derivatives_ordersapi_sbe_v1_8.fields.request_trading_lock = ProtoField.new("Request Trading Lock", "coinbase.derivatives.ordersapi.sbe.v1.8.requesttradinglock", ftypes.INT8)
omi_coinbase_derivatives_ordersapi_sbe_v1_8.fields.resend_reject_reason = ProtoField.new("Resend Reject Reason", "coinbase.derivatives.ordersapi.sbe.v1.8.resendrejectreason", ftypes.INT8)
omi_coinbase_derivatives_ordersapi_sbe_v1_8.fields.resent_event_count = ProtoField.new("Resent Event Count", "coinbase.derivatives.ordersapi.sbe.v1.8.resenteventcount", ftypes.INT32)
omi_coinbase_derivatives_ordersapi_sbe_v1_8.fields.reserved = ProtoField.new("Reserved", "coinbase.derivatives.ordersapi.sbe.v1.8.reserved", ftypes.UINT32)
omi_coinbase_derivatives_ordersapi_sbe_v1_8.fields.reserved_7 = ProtoField.new("Reserved 7", "coinbase.derivatives.ordersapi.sbe.v1.8.reserved7", ftypes.UINT8, nil, base.DEC, 0xFE)
omi_coinbase_derivatives_ordersapi_sbe_v1_8.fields.reserved_byte = ProtoField.new("Reserved Byte", "coinbase.derivatives.ordersapi.sbe.v1.8.reservedbyte", ftypes.INT8)
omi_coinbase_derivatives_ordersapi_sbe_v1_8.fields.reset_seq_num = ProtoField.new("Reset Seq Num", "coinbase.derivatives.ordersapi.sbe.v1.8.resetseqnum", ftypes.INT8)
omi_coinbase_derivatives_ordersapi_sbe_v1_8.fields.sbe_message = ProtoField.new("Sbe Message", "coinbase.derivatives.ordersapi.sbe.v1.8.sbemessage", ftypes.STRING)
omi_coinbase_derivatives_ordersapi_sbe_v1_8.fields.schema_id = ProtoField.new("Schema Id", "coinbase.derivatives.ordersapi.sbe.v1.8.schemaid", ftypes.UINT16)
omi_coinbase_derivatives_ordersapi_sbe_v1_8.fields.security_type = ProtoField.new("Security Type", "coinbase.derivatives.ordersapi.sbe.v1.8.securitytype", ftypes.UINT8)
omi_coinbase_derivatives_ordersapi_sbe_v1_8.fields.send_time_epoch_nanos = ProtoField.new("Send Time Epoch Nanos", "coinbase.derivatives.ordersapi.sbe.v1.8.sendtimeepochnanos", ftypes.INT64)
omi_coinbase_derivatives_ordersapi_sbe_v1_8.fields.sequence_number = ProtoField.new("Sequence Number", "coinbase.derivatives.ordersapi.sbe.v1.8.sequencenumber", ftypes.UINT32)
omi_coinbase_derivatives_ordersapi_sbe_v1_8.fields.server_time = ProtoField.new("Server Time", "coinbase.derivatives.ordersapi.sbe.v1.8.servertime", ftypes.INT64)
omi_coinbase_derivatives_ordersapi_sbe_v1_8.fields.side = ProtoField.new("Side", "coinbase.derivatives.ordersapi.sbe.v1.8.side", ftypes.INT8)
omi_coinbase_derivatives_ordersapi_sbe_v1_8.fields.symbol = ProtoField.new("Symbol", "coinbase.derivatives.ordersapi.sbe.v1.8.symbol", ftypes.STRING)
omi_coinbase_derivatives_ordersapi_sbe_v1_8.fields.template_id = ProtoField.new("Template Id", "coinbase.derivatives.ordersapi.sbe.v1.8.templateid", ftypes.UINT16)
omi_coinbase_derivatives_ordersapi_sbe_v1_8.fields.time_in_force = ProtoField.new("Time In Force", "coinbase.derivatives.ordersapi.sbe.v1.8.timeinforce", ftypes.INT8)
omi_coinbase_derivatives_ordersapi_sbe_v1_8.fields.timestamp = ProtoField.new("Timestamp", "coinbase.derivatives.ordersapi.sbe.v1.8.timestamp", ftypes.INT64)
omi_coinbase_derivatives_ordersapi_sbe_v1_8.fields.to_sequence_number = ProtoField.new("To Sequence Number", "coinbase.derivatives.ordersapi.sbe.v1.8.tosequencenumber", ftypes.UINT32)
omi_coinbase_derivatives_ordersapi_sbe_v1_8.fields.total_filled = ProtoField.new("Total Filled", "coinbase.derivatives.ordersapi.sbe.v1.8.totalfilled", ftypes.INT32)
omi_coinbase_derivatives_ordersapi_sbe_v1_8.fields.trader = ProtoField.new("Trader", "coinbase.derivatives.ordersapi.sbe.v1.8.trader", ftypes.STRING)
omi_coinbase_derivatives_ordersapi_sbe_v1_8.fields.trading_instrument_status = ProtoField.new("Trading Instrument Status", "coinbase.derivatives.ordersapi.sbe.v1.8.tradinginstrumentstatus", ftypes.INT8)
omi_coinbase_derivatives_ordersapi_sbe_v1_8.fields.trading_lock_applied = ProtoField.new("Trading Lock Applied", "coinbase.derivatives.ordersapi.sbe.v1.8.tradinglockapplied", ftypes.INT8)
omi_coinbase_derivatives_ordersapi_sbe_v1_8.fields.username = ProtoField.new("Username", "coinbase.derivatives.ordersapi.sbe.v1.8.username", ftypes.STRING)
omi_coinbase_derivatives_ordersapi_sbe_v1_8.fields.version = ProtoField.new("Version", "coinbase.derivatives.ordersapi.sbe.v1.8.version", ftypes.UINT16)

-- Coinbase Derivatives OrdersApi Sbe 1.8 messages
omi_coinbase_derivatives_ordersapi_sbe_v1_8.fields.cancel_order_message = ProtoField.new("Cancel Order Message", "coinbase.derivatives.ordersapi.sbe.v1.8.cancelordermessage", ftypes.STRING)
omi_coinbase_derivatives_ordersapi_sbe_v1_8.fields.cancel_order_reject_message = ProtoField.new("Cancel Order Reject Message", "coinbase.derivatives.ordersapi.sbe.v1.8.cancelorderrejectmessage", ftypes.STRING)
omi_coinbase_derivatives_ordersapi_sbe_v1_8.fields.event_resend_complete_message = ProtoField.new("Event Resend Complete Message", "coinbase.derivatives.ordersapi.sbe.v1.8.eventresendcompletemessage", ftypes.STRING)
omi_coinbase_derivatives_ordersapi_sbe_v1_8.fields.event_resend_reject_message = ProtoField.new("Event Resend Reject Message", "coinbase.derivatives.ordersapi.sbe.v1.8.eventresendrejectmessage", ftypes.STRING)
omi_coinbase_derivatives_ordersapi_sbe_v1_8.fields.event_resend_request_message = ProtoField.new("Event Resend Request Message", "coinbase.derivatives.ordersapi.sbe.v1.8.eventresendrequestmessage", ftypes.STRING)
omi_coinbase_derivatives_ordersapi_sbe_v1_8.fields.gap_fill_message = ProtoField.new("Gap Fill Message", "coinbase.derivatives.ordersapi.sbe.v1.8.gapfillmessage", ftypes.STRING)
omi_coinbase_derivatives_ordersapi_sbe_v1_8.fields.heartbeat_message = ProtoField.new("Heartbeat Message", "coinbase.derivatives.ordersapi.sbe.v1.8.heartbeatmessage", ftypes.STRING)
omi_coinbase_derivatives_ordersapi_sbe_v1_8.fields.instrument_info_message = ProtoField.new("Instrument Info Message", "coinbase.derivatives.ordersapi.sbe.v1.8.instrumentinfomessage", ftypes.STRING)
omi_coinbase_derivatives_ordersapi_sbe_v1_8.fields.instrument_info_request_message = ProtoField.new("Instrument Info Request Message", "coinbase.derivatives.ordersapi.sbe.v1.8.instrumentinforequestmessage", ftypes.STRING)
omi_coinbase_derivatives_ordersapi_sbe_v1_8.fields.last_exec_id_message = ProtoField.new("Last Exec Id Message", "coinbase.derivatives.ordersapi.sbe.v1.8.lastexecidmessage", ftypes.STRING)
omi_coinbase_derivatives_ordersapi_sbe_v1_8.fields.last_exec_id_request_message = ProtoField.new("Last Exec Id Request Message", "coinbase.derivatives.ordersapi.sbe.v1.8.lastexecidrequestmessage", ftypes.STRING)
omi_coinbase_derivatives_ordersapi_sbe_v1_8.fields.logged_out_message = ProtoField.new("Logged Out Message", "coinbase.derivatives.ordersapi.sbe.v1.8.loggedoutmessage", ftypes.STRING)
omi_coinbase_derivatives_ordersapi_sbe_v1_8.fields.logon_conf_message = ProtoField.new("Logon Conf Message", "coinbase.derivatives.ordersapi.sbe.v1.8.logonconfmessage", ftypes.STRING)
omi_coinbase_derivatives_ordersapi_sbe_v1_8.fields.logon_message = ProtoField.new("Logon Message", "coinbase.derivatives.ordersapi.sbe.v1.8.logonmessage", ftypes.STRING)
omi_coinbase_derivatives_ordersapi_sbe_v1_8.fields.logout_message = ProtoField.new("Logout Message", "coinbase.derivatives.ordersapi.sbe.v1.8.logoutmessage", ftypes.STRING)
omi_coinbase_derivatives_ordersapi_sbe_v1_8.fields.mass_cancel_order_ack_message = ProtoField.new("Mass Cancel Order Ack Message", "coinbase.derivatives.ordersapi.sbe.v1.8.masscancelorderackmessage", ftypes.STRING)
omi_coinbase_derivatives_ordersapi_sbe_v1_8.fields.mass_cancel_order_message = ProtoField.new("Mass Cancel Order Message", "coinbase.derivatives.ordersapi.sbe.v1.8.masscancelordermessage", ftypes.STRING)
omi_coinbase_derivatives_ordersapi_sbe_v1_8.fields.mass_cancel_order_reject_message = ProtoField.new("Mass Cancel Order Reject Message", "coinbase.derivatives.ordersapi.sbe.v1.8.masscancelorderrejectmessage", ftypes.STRING)
omi_coinbase_derivatives_ordersapi_sbe_v1_8.fields.new_ioc_order_message = ProtoField.new("New Ioc Order Message", "coinbase.derivatives.ordersapi.sbe.v1.8.newiocordermessage", ftypes.STRING)
omi_coinbase_derivatives_ordersapi_sbe_v1_8.fields.new_order_message = ProtoField.new("New Order Message", "coinbase.derivatives.ordersapi.sbe.v1.8.newordermessage", ftypes.STRING)
omi_coinbase_derivatives_ordersapi_sbe_v1_8.fields.obsolete_stream_order_message = ProtoField.new("Obsolete Stream Order Message", "coinbase.derivatives.ordersapi.sbe.v1.8.obsoletestreamordermessage", ftypes.STRING)
omi_coinbase_derivatives_ordersapi_sbe_v1_8.fields.order_canceled_message = ProtoField.new("Order Canceled Message", "coinbase.derivatives.ordersapi.sbe.v1.8.ordercanceledmessage", ftypes.STRING)
omi_coinbase_derivatives_ordersapi_sbe_v1_8.fields.order_entered_message = ProtoField.new("Order Entered Message", "coinbase.derivatives.ordersapi.sbe.v1.8.orderenteredmessage", ftypes.STRING)
omi_coinbase_derivatives_ordersapi_sbe_v1_8.fields.order_filled_message = ProtoField.new("Order Filled Message", "coinbase.derivatives.ordersapi.sbe.v1.8.orderfilledmessage", ftypes.STRING)
omi_coinbase_derivatives_ordersapi_sbe_v1_8.fields.order_reject_message = ProtoField.new("Order Reject Message", "coinbase.derivatives.ordersapi.sbe.v1.8.orderrejectmessage", ftypes.STRING)
omi_coinbase_derivatives_ordersapi_sbe_v1_8.fields.order_replaced_message = ProtoField.new("Order Replaced Message", "coinbase.derivatives.ordersapi.sbe.v1.8.orderreplacedmessage", ftypes.STRING)
omi_coinbase_derivatives_ordersapi_sbe_v1_8.fields.ping_message = ProtoField.new("Ping Message", "coinbase.derivatives.ordersapi.sbe.v1.8.pingmessage", ftypes.STRING)
omi_coinbase_derivatives_ordersapi_sbe_v1_8.fields.pong_message = ProtoField.new("Pong Message", "coinbase.derivatives.ordersapi.sbe.v1.8.pongmessage", ftypes.STRING)
omi_coinbase_derivatives_ordersapi_sbe_v1_8.fields.reject_message = ProtoField.new("Reject Message", "coinbase.derivatives.ordersapi.sbe.v1.8.rejectmessage", ftypes.STRING)
omi_coinbase_derivatives_ordersapi_sbe_v1_8.fields.replace_order_message = ProtoField.new("Replace Order Message", "coinbase.derivatives.ordersapi.sbe.v1.8.replaceordermessage", ftypes.STRING)
omi_coinbase_derivatives_ordersapi_sbe_v1_8.fields.resend_request_message = ProtoField.new("Resend Request Message", "coinbase.derivatives.ordersapi.sbe.v1.8.resendrequestmessage", ftypes.STRING)
omi_coinbase_derivatives_ordersapi_sbe_v1_8.fields.reset_options_fill_protection_ack_message = ProtoField.new("Reset Options Fill Protection Ack Message", "coinbase.derivatives.ordersapi.sbe.v1.8.resetoptionsfillprotectionackmessage", ftypes.STRING)
omi_coinbase_derivatives_ordersapi_sbe_v1_8.fields.reset_options_fill_protection_message = ProtoField.new("Reset Options Fill Protection Message", "coinbase.derivatives.ordersapi.sbe.v1.8.resetoptionsfillprotectionmessage", ftypes.STRING)
omi_coinbase_derivatives_ordersapi_sbe_v1_8.fields.reset_options_fill_protection_reject_message = ProtoField.new("Reset Options Fill Protection Reject Message", "coinbase.derivatives.ordersapi.sbe.v1.8.resetoptionsfillprotectionrejectmessage", ftypes.STRING)
omi_coinbase_derivatives_ordersapi_sbe_v1_8.fields.set_account_message = ProtoField.new("Set Account Message", "coinbase.derivatives.ordersapi.sbe.v1.8.setaccountmessage", ftypes.STRING)
omi_coinbase_derivatives_ordersapi_sbe_v1_8.fields.set_ack_message = ProtoField.new("Set Ack Message", "coinbase.derivatives.ordersapi.sbe.v1.8.setackmessage", ftypes.STRING)
omi_coinbase_derivatives_ordersapi_sbe_v1_8.fields.set_trader_message = ProtoField.new("Set Trader Message", "coinbase.derivatives.ordersapi.sbe.v1.8.settradermessage", ftypes.STRING)
omi_coinbase_derivatives_ordersapi_sbe_v1_8.fields.spread_order_filled_message = ProtoField.new("Spread Order Filled Message", "coinbase.derivatives.ordersapi.sbe.v1.8.spreadorderfilledmessage", ftypes.STRING)
omi_coinbase_derivatives_ordersapi_sbe_v1_8.fields.test_request_message = ProtoField.new("Test Request Message", "coinbase.derivatives.ordersapi.sbe.v1.8.testrequestmessage", ftypes.STRING)
omi_coinbase_derivatives_ordersapi_sbe_v1_8.fields.unlock_trading_ack_message = ProtoField.new("Unlock Trading Ack Message", "coinbase.derivatives.ordersapi.sbe.v1.8.unlocktradingackmessage", ftypes.STRING)
omi_coinbase_derivatives_ordersapi_sbe_v1_8.fields.unlock_trading_message = ProtoField.new("Unlock Trading Message", "coinbase.derivatives.ordersapi.sbe.v1.8.unlocktradingmessage", ftypes.STRING)
omi_coinbase_derivatives_ordersapi_sbe_v1_8.fields.unlock_trading_reject_message = ProtoField.new("Unlock Trading Reject Message", "coinbase.derivatives.ordersapi.sbe.v1.8.unlocktradingrejectmessage", ftypes.STRING)

-----------------------------------------------------------------------
-- Declare Dissection Options
-----------------------------------------------------------------------

local show = {}

-- Coinbase Derivatives OrdersApi Sbe 1.8 Element Dissection Options
show.cancel_order_message = true
show.cancel_order_reject_message = true
show.data = true
show.event_resend_complete_message = true
show.event_resend_reject_message = true
show.event_resend_request_message = true
show.flags = true
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
show.new_ioc_order_message = true
show.new_order_message = true
show.obsolete_stream_order_message = true
show.order_canceled_message = true
show.order_entered_message = true
show.order_filled_message = true
show.order_reject_message = true
show.order_replaced_message = true
show.packet = true
show.ping_message = true
show.pong_message = true
show.reject_message = true
show.replace_order_message = true
show.resend_request_message = true
show.reset_options_fill_protection_ack_message = true
show.reset_options_fill_protection_message = true
show.reset_options_fill_protection_reject_message = true
show.sbe_message = true
show.set_account_message = true
show.set_ack_message = true
show.set_trader_message = true
show.spread_order_filled_message = true
show.test_request_message = true
show.unlock_trading_ack_message = true
show.unlock_trading_message = true
show.unlock_trading_reject_message = true
show.payload = false

-- Register Coinbase Derivatives OrdersApi Sbe 1.8 Show Options
omi_coinbase_derivatives_ordersapi_sbe_v1_8.prefs.show_cancel_order_message = Pref.bool("Show Cancel Order Message", show.cancel_order_message, "Parse and add Cancel Order Message to protocol tree")
omi_coinbase_derivatives_ordersapi_sbe_v1_8.prefs.show_cancel_order_reject_message = Pref.bool("Show Cancel Order Reject Message", show.cancel_order_reject_message, "Parse and add Cancel Order Reject Message to protocol tree")
omi_coinbase_derivatives_ordersapi_sbe_v1_8.prefs.show_data = Pref.bool("Show Data", show.data, "Parse and add Data to protocol tree")
omi_coinbase_derivatives_ordersapi_sbe_v1_8.prefs.show_event_resend_complete_message = Pref.bool("Show Event Resend Complete Message", show.event_resend_complete_message, "Parse and add Event Resend Complete Message to protocol tree")
omi_coinbase_derivatives_ordersapi_sbe_v1_8.prefs.show_event_resend_reject_message = Pref.bool("Show Event Resend Reject Message", show.event_resend_reject_message, "Parse and add Event Resend Reject Message to protocol tree")
omi_coinbase_derivatives_ordersapi_sbe_v1_8.prefs.show_event_resend_request_message = Pref.bool("Show Event Resend Request Message", show.event_resend_request_message, "Parse and add Event Resend Request Message to protocol tree")
omi_coinbase_derivatives_ordersapi_sbe_v1_8.prefs.show_flags = Pref.bool("Show Flags", show.flags, "Parse and add Flags to protocol tree")
omi_coinbase_derivatives_ordersapi_sbe_v1_8.prefs.show_gap_fill_message = Pref.bool("Show Gap Fill Message", show.gap_fill_message, "Parse and add Gap Fill Message to protocol tree")
omi_coinbase_derivatives_ordersapi_sbe_v1_8.prefs.show_heartbeat_message = Pref.bool("Show Heartbeat Message", show.heartbeat_message, "Parse and add Heartbeat Message to protocol tree")
omi_coinbase_derivatives_ordersapi_sbe_v1_8.prefs.show_instrument_info_message = Pref.bool("Show Instrument Info Message", show.instrument_info_message, "Parse and add Instrument Info Message to protocol tree")
omi_coinbase_derivatives_ordersapi_sbe_v1_8.prefs.show_instrument_info_request_message = Pref.bool("Show Instrument Info Request Message", show.instrument_info_request_message, "Parse and add Instrument Info Request Message to protocol tree")
omi_coinbase_derivatives_ordersapi_sbe_v1_8.prefs.show_last_exec_id_message = Pref.bool("Show Last Exec Id Message", show.last_exec_id_message, "Parse and add Last Exec Id Message to protocol tree")
omi_coinbase_derivatives_ordersapi_sbe_v1_8.prefs.show_last_exec_id_request_message = Pref.bool("Show Last Exec Id Request Message", show.last_exec_id_request_message, "Parse and add Last Exec Id Request Message to protocol tree")
omi_coinbase_derivatives_ordersapi_sbe_v1_8.prefs.show_logged_out_message = Pref.bool("Show Logged Out Message", show.logged_out_message, "Parse and add Logged Out Message to protocol tree")
omi_coinbase_derivatives_ordersapi_sbe_v1_8.prefs.show_logon_conf_message = Pref.bool("Show Logon Conf Message", show.logon_conf_message, "Parse and add Logon Conf Message to protocol tree")
omi_coinbase_derivatives_ordersapi_sbe_v1_8.prefs.show_logon_message = Pref.bool("Show Logon Message", show.logon_message, "Parse and add Logon Message to protocol tree")
omi_coinbase_derivatives_ordersapi_sbe_v1_8.prefs.show_logout_message = Pref.bool("Show Logout Message", show.logout_message, "Parse and add Logout Message to protocol tree")
omi_coinbase_derivatives_ordersapi_sbe_v1_8.prefs.show_mass_cancel_order_ack_message = Pref.bool("Show Mass Cancel Order Ack Message", show.mass_cancel_order_ack_message, "Parse and add Mass Cancel Order Ack Message to protocol tree")
omi_coinbase_derivatives_ordersapi_sbe_v1_8.prefs.show_mass_cancel_order_message = Pref.bool("Show Mass Cancel Order Message", show.mass_cancel_order_message, "Parse and add Mass Cancel Order Message to protocol tree")
omi_coinbase_derivatives_ordersapi_sbe_v1_8.prefs.show_mass_cancel_order_reject_message = Pref.bool("Show Mass Cancel Order Reject Message", show.mass_cancel_order_reject_message, "Parse and add Mass Cancel Order Reject Message to protocol tree")
omi_coinbase_derivatives_ordersapi_sbe_v1_8.prefs.show_message_header = Pref.bool("Show Message Header", show.message_header, "Parse and add Message Header to protocol tree")
omi_coinbase_derivatives_ordersapi_sbe_v1_8.prefs.show_new_ioc_order_message = Pref.bool("Show New Ioc Order Message", show.new_ioc_order_message, "Parse and add New Ioc Order Message to protocol tree")
omi_coinbase_derivatives_ordersapi_sbe_v1_8.prefs.show_new_order_message = Pref.bool("Show New Order Message", show.new_order_message, "Parse and add New Order Message to protocol tree")
omi_coinbase_derivatives_ordersapi_sbe_v1_8.prefs.show_obsolete_stream_order_message = Pref.bool("Show Obsolete Stream Order Message", show.obsolete_stream_order_message, "Parse and add Obsolete Stream Order Message to protocol tree")
omi_coinbase_derivatives_ordersapi_sbe_v1_8.prefs.show_order_canceled_message = Pref.bool("Show Order Canceled Message", show.order_canceled_message, "Parse and add Order Canceled Message to protocol tree")
omi_coinbase_derivatives_ordersapi_sbe_v1_8.prefs.show_order_entered_message = Pref.bool("Show Order Entered Message", show.order_entered_message, "Parse and add Order Entered Message to protocol tree")
omi_coinbase_derivatives_ordersapi_sbe_v1_8.prefs.show_order_filled_message = Pref.bool("Show Order Filled Message", show.order_filled_message, "Parse and add Order Filled Message to protocol tree")
omi_coinbase_derivatives_ordersapi_sbe_v1_8.prefs.show_order_reject_message = Pref.bool("Show Order Reject Message", show.order_reject_message, "Parse and add Order Reject Message to protocol tree")
omi_coinbase_derivatives_ordersapi_sbe_v1_8.prefs.show_order_replaced_message = Pref.bool("Show Order Replaced Message", show.order_replaced_message, "Parse and add Order Replaced Message to protocol tree")
omi_coinbase_derivatives_ordersapi_sbe_v1_8.prefs.show_packet = Pref.bool("Show Packet", show.packet, "Parse and add Packet to protocol tree")
omi_coinbase_derivatives_ordersapi_sbe_v1_8.prefs.show_ping_message = Pref.bool("Show Ping Message", show.ping_message, "Parse and add Ping Message to protocol tree")
omi_coinbase_derivatives_ordersapi_sbe_v1_8.prefs.show_pong_message = Pref.bool("Show Pong Message", show.pong_message, "Parse and add Pong Message to protocol tree")
omi_coinbase_derivatives_ordersapi_sbe_v1_8.prefs.show_reject_message = Pref.bool("Show Reject Message", show.reject_message, "Parse and add Reject Message to protocol tree")
omi_coinbase_derivatives_ordersapi_sbe_v1_8.prefs.show_replace_order_message = Pref.bool("Show Replace Order Message", show.replace_order_message, "Parse and add Replace Order Message to protocol tree")
omi_coinbase_derivatives_ordersapi_sbe_v1_8.prefs.show_resend_request_message = Pref.bool("Show Resend Request Message", show.resend_request_message, "Parse and add Resend Request Message to protocol tree")
omi_coinbase_derivatives_ordersapi_sbe_v1_8.prefs.show_reset_options_fill_protection_ack_message = Pref.bool("Show Reset Options Fill Protection Ack Message", show.reset_options_fill_protection_ack_message, "Parse and add Reset Options Fill Protection Ack Message to protocol tree")
omi_coinbase_derivatives_ordersapi_sbe_v1_8.prefs.show_reset_options_fill_protection_message = Pref.bool("Show Reset Options Fill Protection Message", show.reset_options_fill_protection_message, "Parse and add Reset Options Fill Protection Message to protocol tree")
omi_coinbase_derivatives_ordersapi_sbe_v1_8.prefs.show_reset_options_fill_protection_reject_message = Pref.bool("Show Reset Options Fill Protection Reject Message", show.reset_options_fill_protection_reject_message, "Parse and add Reset Options Fill Protection Reject Message to protocol tree")
omi_coinbase_derivatives_ordersapi_sbe_v1_8.prefs.show_sbe_message = Pref.bool("Show Sbe Message", show.sbe_message, "Parse and add Sbe Message to protocol tree")
omi_coinbase_derivatives_ordersapi_sbe_v1_8.prefs.show_set_account_message = Pref.bool("Show Set Account Message", show.set_account_message, "Parse and add Set Account Message to protocol tree")
omi_coinbase_derivatives_ordersapi_sbe_v1_8.prefs.show_set_ack_message = Pref.bool("Show Set Ack Message", show.set_ack_message, "Parse and add Set Ack Message to protocol tree")
omi_coinbase_derivatives_ordersapi_sbe_v1_8.prefs.show_set_trader_message = Pref.bool("Show Set Trader Message", show.set_trader_message, "Parse and add Set Trader Message to protocol tree")
omi_coinbase_derivatives_ordersapi_sbe_v1_8.prefs.show_spread_order_filled_message = Pref.bool("Show Spread Order Filled Message", show.spread_order_filled_message, "Parse and add Spread Order Filled Message to protocol tree")
omi_coinbase_derivatives_ordersapi_sbe_v1_8.prefs.show_test_request_message = Pref.bool("Show Test Request Message", show.test_request_message, "Parse and add Test Request Message to protocol tree")
omi_coinbase_derivatives_ordersapi_sbe_v1_8.prefs.show_unlock_trading_ack_message = Pref.bool("Show Unlock Trading Ack Message", show.unlock_trading_ack_message, "Parse and add Unlock Trading Ack Message to protocol tree")
omi_coinbase_derivatives_ordersapi_sbe_v1_8.prefs.show_unlock_trading_message = Pref.bool("Show Unlock Trading Message", show.unlock_trading_message, "Parse and add Unlock Trading Message to protocol tree")
omi_coinbase_derivatives_ordersapi_sbe_v1_8.prefs.show_unlock_trading_reject_message = Pref.bool("Show Unlock Trading Reject Message", show.unlock_trading_reject_message, "Parse and add Unlock Trading Reject Message to protocol tree")
omi_coinbase_derivatives_ordersapi_sbe_v1_8.prefs.show_payload = Pref.bool("Show Payload", show.payload, "Parse and add Payload to protocol tree")

-- Handle changed preferences
function omi_coinbase_derivatives_ordersapi_sbe_v1_8.prefs_changed()
  local changed = false

  -- Check if show options have changed
  if show.cancel_order_message ~= omi_coinbase_derivatives_ordersapi_sbe_v1_8.prefs.show_cancel_order_message then
    show.cancel_order_message = omi_coinbase_derivatives_ordersapi_sbe_v1_8.prefs.show_cancel_order_message
    changed = true
  end
  if show.cancel_order_reject_message ~= omi_coinbase_derivatives_ordersapi_sbe_v1_8.prefs.show_cancel_order_reject_message then
    show.cancel_order_reject_message = omi_coinbase_derivatives_ordersapi_sbe_v1_8.prefs.show_cancel_order_reject_message
    changed = true
  end
  if show.data ~= omi_coinbase_derivatives_ordersapi_sbe_v1_8.prefs.show_data then
    show.data = omi_coinbase_derivatives_ordersapi_sbe_v1_8.prefs.show_data
    changed = true
  end
  if show.event_resend_complete_message ~= omi_coinbase_derivatives_ordersapi_sbe_v1_8.prefs.show_event_resend_complete_message then
    show.event_resend_complete_message = omi_coinbase_derivatives_ordersapi_sbe_v1_8.prefs.show_event_resend_complete_message
    changed = true
  end
  if show.event_resend_reject_message ~= omi_coinbase_derivatives_ordersapi_sbe_v1_8.prefs.show_event_resend_reject_message then
    show.event_resend_reject_message = omi_coinbase_derivatives_ordersapi_sbe_v1_8.prefs.show_event_resend_reject_message
    changed = true
  end
  if show.event_resend_request_message ~= omi_coinbase_derivatives_ordersapi_sbe_v1_8.prefs.show_event_resend_request_message then
    show.event_resend_request_message = omi_coinbase_derivatives_ordersapi_sbe_v1_8.prefs.show_event_resend_request_message
    changed = true
  end
  if show.flags ~= omi_coinbase_derivatives_ordersapi_sbe_v1_8.prefs.show_flags then
    show.flags = omi_coinbase_derivatives_ordersapi_sbe_v1_8.prefs.show_flags
    changed = true
  end
  if show.gap_fill_message ~= omi_coinbase_derivatives_ordersapi_sbe_v1_8.prefs.show_gap_fill_message then
    show.gap_fill_message = omi_coinbase_derivatives_ordersapi_sbe_v1_8.prefs.show_gap_fill_message
    changed = true
  end
  if show.heartbeat_message ~= omi_coinbase_derivatives_ordersapi_sbe_v1_8.prefs.show_heartbeat_message then
    show.heartbeat_message = omi_coinbase_derivatives_ordersapi_sbe_v1_8.prefs.show_heartbeat_message
    changed = true
  end
  if show.instrument_info_message ~= omi_coinbase_derivatives_ordersapi_sbe_v1_8.prefs.show_instrument_info_message then
    show.instrument_info_message = omi_coinbase_derivatives_ordersapi_sbe_v1_8.prefs.show_instrument_info_message
    changed = true
  end
  if show.instrument_info_request_message ~= omi_coinbase_derivatives_ordersapi_sbe_v1_8.prefs.show_instrument_info_request_message then
    show.instrument_info_request_message = omi_coinbase_derivatives_ordersapi_sbe_v1_8.prefs.show_instrument_info_request_message
    changed = true
  end
  if show.last_exec_id_message ~= omi_coinbase_derivatives_ordersapi_sbe_v1_8.prefs.show_last_exec_id_message then
    show.last_exec_id_message = omi_coinbase_derivatives_ordersapi_sbe_v1_8.prefs.show_last_exec_id_message
    changed = true
  end
  if show.last_exec_id_request_message ~= omi_coinbase_derivatives_ordersapi_sbe_v1_8.prefs.show_last_exec_id_request_message then
    show.last_exec_id_request_message = omi_coinbase_derivatives_ordersapi_sbe_v1_8.prefs.show_last_exec_id_request_message
    changed = true
  end
  if show.logged_out_message ~= omi_coinbase_derivatives_ordersapi_sbe_v1_8.prefs.show_logged_out_message then
    show.logged_out_message = omi_coinbase_derivatives_ordersapi_sbe_v1_8.prefs.show_logged_out_message
    changed = true
  end
  if show.logon_conf_message ~= omi_coinbase_derivatives_ordersapi_sbe_v1_8.prefs.show_logon_conf_message then
    show.logon_conf_message = omi_coinbase_derivatives_ordersapi_sbe_v1_8.prefs.show_logon_conf_message
    changed = true
  end
  if show.logon_message ~= omi_coinbase_derivatives_ordersapi_sbe_v1_8.prefs.show_logon_message then
    show.logon_message = omi_coinbase_derivatives_ordersapi_sbe_v1_8.prefs.show_logon_message
    changed = true
  end
  if show.logout_message ~= omi_coinbase_derivatives_ordersapi_sbe_v1_8.prefs.show_logout_message then
    show.logout_message = omi_coinbase_derivatives_ordersapi_sbe_v1_8.prefs.show_logout_message
    changed = true
  end
  if show.mass_cancel_order_ack_message ~= omi_coinbase_derivatives_ordersapi_sbe_v1_8.prefs.show_mass_cancel_order_ack_message then
    show.mass_cancel_order_ack_message = omi_coinbase_derivatives_ordersapi_sbe_v1_8.prefs.show_mass_cancel_order_ack_message
    changed = true
  end
  if show.mass_cancel_order_message ~= omi_coinbase_derivatives_ordersapi_sbe_v1_8.prefs.show_mass_cancel_order_message then
    show.mass_cancel_order_message = omi_coinbase_derivatives_ordersapi_sbe_v1_8.prefs.show_mass_cancel_order_message
    changed = true
  end
  if show.mass_cancel_order_reject_message ~= omi_coinbase_derivatives_ordersapi_sbe_v1_8.prefs.show_mass_cancel_order_reject_message then
    show.mass_cancel_order_reject_message = omi_coinbase_derivatives_ordersapi_sbe_v1_8.prefs.show_mass_cancel_order_reject_message
    changed = true
  end
  if show.message_header ~= omi_coinbase_derivatives_ordersapi_sbe_v1_8.prefs.show_message_header then
    show.message_header = omi_coinbase_derivatives_ordersapi_sbe_v1_8.prefs.show_message_header
    changed = true
  end
  if show.new_ioc_order_message ~= omi_coinbase_derivatives_ordersapi_sbe_v1_8.prefs.show_new_ioc_order_message then
    show.new_ioc_order_message = omi_coinbase_derivatives_ordersapi_sbe_v1_8.prefs.show_new_ioc_order_message
    changed = true
  end
  if show.new_order_message ~= omi_coinbase_derivatives_ordersapi_sbe_v1_8.prefs.show_new_order_message then
    show.new_order_message = omi_coinbase_derivatives_ordersapi_sbe_v1_8.prefs.show_new_order_message
    changed = true
  end
  if show.obsolete_stream_order_message ~= omi_coinbase_derivatives_ordersapi_sbe_v1_8.prefs.show_obsolete_stream_order_message then
    show.obsolete_stream_order_message = omi_coinbase_derivatives_ordersapi_sbe_v1_8.prefs.show_obsolete_stream_order_message
    changed = true
  end
  if show.order_canceled_message ~= omi_coinbase_derivatives_ordersapi_sbe_v1_8.prefs.show_order_canceled_message then
    show.order_canceled_message = omi_coinbase_derivatives_ordersapi_sbe_v1_8.prefs.show_order_canceled_message
    changed = true
  end
  if show.order_entered_message ~= omi_coinbase_derivatives_ordersapi_sbe_v1_8.prefs.show_order_entered_message then
    show.order_entered_message = omi_coinbase_derivatives_ordersapi_sbe_v1_8.prefs.show_order_entered_message
    changed = true
  end
  if show.order_filled_message ~= omi_coinbase_derivatives_ordersapi_sbe_v1_8.prefs.show_order_filled_message then
    show.order_filled_message = omi_coinbase_derivatives_ordersapi_sbe_v1_8.prefs.show_order_filled_message
    changed = true
  end
  if show.order_reject_message ~= omi_coinbase_derivatives_ordersapi_sbe_v1_8.prefs.show_order_reject_message then
    show.order_reject_message = omi_coinbase_derivatives_ordersapi_sbe_v1_8.prefs.show_order_reject_message
    changed = true
  end
  if show.order_replaced_message ~= omi_coinbase_derivatives_ordersapi_sbe_v1_8.prefs.show_order_replaced_message then
    show.order_replaced_message = omi_coinbase_derivatives_ordersapi_sbe_v1_8.prefs.show_order_replaced_message
    changed = true
  end
  if show.packet ~= omi_coinbase_derivatives_ordersapi_sbe_v1_8.prefs.show_packet then
    show.packet = omi_coinbase_derivatives_ordersapi_sbe_v1_8.prefs.show_packet
    changed = true
  end
  if show.ping_message ~= omi_coinbase_derivatives_ordersapi_sbe_v1_8.prefs.show_ping_message then
    show.ping_message = omi_coinbase_derivatives_ordersapi_sbe_v1_8.prefs.show_ping_message
    changed = true
  end
  if show.pong_message ~= omi_coinbase_derivatives_ordersapi_sbe_v1_8.prefs.show_pong_message then
    show.pong_message = omi_coinbase_derivatives_ordersapi_sbe_v1_8.prefs.show_pong_message
    changed = true
  end
  if show.reject_message ~= omi_coinbase_derivatives_ordersapi_sbe_v1_8.prefs.show_reject_message then
    show.reject_message = omi_coinbase_derivatives_ordersapi_sbe_v1_8.prefs.show_reject_message
    changed = true
  end
  if show.replace_order_message ~= omi_coinbase_derivatives_ordersapi_sbe_v1_8.prefs.show_replace_order_message then
    show.replace_order_message = omi_coinbase_derivatives_ordersapi_sbe_v1_8.prefs.show_replace_order_message
    changed = true
  end
  if show.resend_request_message ~= omi_coinbase_derivatives_ordersapi_sbe_v1_8.prefs.show_resend_request_message then
    show.resend_request_message = omi_coinbase_derivatives_ordersapi_sbe_v1_8.prefs.show_resend_request_message
    changed = true
  end
  if show.reset_options_fill_protection_ack_message ~= omi_coinbase_derivatives_ordersapi_sbe_v1_8.prefs.show_reset_options_fill_protection_ack_message then
    show.reset_options_fill_protection_ack_message = omi_coinbase_derivatives_ordersapi_sbe_v1_8.prefs.show_reset_options_fill_protection_ack_message
    changed = true
  end
  if show.reset_options_fill_protection_message ~= omi_coinbase_derivatives_ordersapi_sbe_v1_8.prefs.show_reset_options_fill_protection_message then
    show.reset_options_fill_protection_message = omi_coinbase_derivatives_ordersapi_sbe_v1_8.prefs.show_reset_options_fill_protection_message
    changed = true
  end
  if show.reset_options_fill_protection_reject_message ~= omi_coinbase_derivatives_ordersapi_sbe_v1_8.prefs.show_reset_options_fill_protection_reject_message then
    show.reset_options_fill_protection_reject_message = omi_coinbase_derivatives_ordersapi_sbe_v1_8.prefs.show_reset_options_fill_protection_reject_message
    changed = true
  end
  if show.sbe_message ~= omi_coinbase_derivatives_ordersapi_sbe_v1_8.prefs.show_sbe_message then
    show.sbe_message = omi_coinbase_derivatives_ordersapi_sbe_v1_8.prefs.show_sbe_message
    changed = true
  end
  if show.set_account_message ~= omi_coinbase_derivatives_ordersapi_sbe_v1_8.prefs.show_set_account_message then
    show.set_account_message = omi_coinbase_derivatives_ordersapi_sbe_v1_8.prefs.show_set_account_message
    changed = true
  end
  if show.set_ack_message ~= omi_coinbase_derivatives_ordersapi_sbe_v1_8.prefs.show_set_ack_message then
    show.set_ack_message = omi_coinbase_derivatives_ordersapi_sbe_v1_8.prefs.show_set_ack_message
    changed = true
  end
  if show.set_trader_message ~= omi_coinbase_derivatives_ordersapi_sbe_v1_8.prefs.show_set_trader_message then
    show.set_trader_message = omi_coinbase_derivatives_ordersapi_sbe_v1_8.prefs.show_set_trader_message
    changed = true
  end
  if show.spread_order_filled_message ~= omi_coinbase_derivatives_ordersapi_sbe_v1_8.prefs.show_spread_order_filled_message then
    show.spread_order_filled_message = omi_coinbase_derivatives_ordersapi_sbe_v1_8.prefs.show_spread_order_filled_message
    changed = true
  end
  if show.test_request_message ~= omi_coinbase_derivatives_ordersapi_sbe_v1_8.prefs.show_test_request_message then
    show.test_request_message = omi_coinbase_derivatives_ordersapi_sbe_v1_8.prefs.show_test_request_message
    changed = true
  end
  if show.unlock_trading_ack_message ~= omi_coinbase_derivatives_ordersapi_sbe_v1_8.prefs.show_unlock_trading_ack_message then
    show.unlock_trading_ack_message = omi_coinbase_derivatives_ordersapi_sbe_v1_8.prefs.show_unlock_trading_ack_message
    changed = true
  end
  if show.unlock_trading_message ~= omi_coinbase_derivatives_ordersapi_sbe_v1_8.prefs.show_unlock_trading_message then
    show.unlock_trading_message = omi_coinbase_derivatives_ordersapi_sbe_v1_8.prefs.show_unlock_trading_message
    changed = true
  end
  if show.unlock_trading_reject_message ~= omi_coinbase_derivatives_ordersapi_sbe_v1_8.prefs.show_unlock_trading_reject_message then
    show.unlock_trading_reject_message = omi_coinbase_derivatives_ordersapi_sbe_v1_8.prefs.show_unlock_trading_reject_message
    changed = true
  end
  if show.payload ~= omi_coinbase_derivatives_ordersapi_sbe_v1_8.prefs.show_payload then
    show.payload = omi_coinbase_derivatives_ordersapi_sbe_v1_8.prefs.show_payload
    changed = true
  end

  -- Reload on changed preference
  if changed then
    reload()
  end
end


-----------------------------------------------------------------------
-- Dissect Coinbase Derivatives OrdersApi Sbe 1.8
-----------------------------------------------------------------------

-- Padding
coinbase_derivatives_ordersapi_sbe_v1_8.padding = {}

-- Display: Padding
coinbase_derivatives_ordersapi_sbe_v1_8.padding.display = function(value)
  return "Padding: "..value
end

-- Dissect runtime sized field: Padding
coinbase_derivatives_ordersapi_sbe_v1_8.padding.dissect = function(buffer, offset, packet, parent, size)
  local range = buffer(offset, size)
  local value = range:bytes():tohex(false, " ")
  local display = coinbase_derivatives_ordersapi_sbe_v1_8.padding.display(value, packet, parent, size)

  parent:add(omi_coinbase_derivatives_ordersapi_sbe_v1_8.fields.padding, range, value, display)

  return offset + size, value
end

-- Error Message
coinbase_derivatives_ordersapi_sbe_v1_8.error_message = {}

-- Size Of: Error Message
coinbase_derivatives_ordersapi_sbe_v1_8.error_message.size = 32

-- Display: Error Message
coinbase_derivatives_ordersapi_sbe_v1_8.error_message.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Error Message: No Value"
  end

  return "Error Message: "..value
end

-- Dissect: Error Message
coinbase_derivatives_ordersapi_sbe_v1_8.error_message.dissect = function(buffer, offset, packet, parent)
  local length = coinbase_derivatives_ordersapi_sbe_v1_8.error_message.size
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

  local display = coinbase_derivatives_ordersapi_sbe_v1_8.error_message.display(value, buffer, offset, packet, parent)

  parent:add(omi_coinbase_derivatives_ordersapi_sbe_v1_8.fields.error_message, range, value, display)

  return offset + length, value
end

-- Correlation Id
coinbase_derivatives_ordersapi_sbe_v1_8.correlation_id = {}

-- Size Of: Correlation Id
coinbase_derivatives_ordersapi_sbe_v1_8.correlation_id.size = 8

-- Display: Correlation Id
coinbase_derivatives_ordersapi_sbe_v1_8.correlation_id.display = function(value)
  return "Correlation Id: "..value
end

-- Dissect: Correlation Id
coinbase_derivatives_ordersapi_sbe_v1_8.correlation_id.dissect = function(buffer, offset, packet, parent)
  local length = coinbase_derivatives_ordersapi_sbe_v1_8.correlation_id.size
  local range = buffer(offset, length)
  local value = range:le_int64()
  local display = coinbase_derivatives_ordersapi_sbe_v1_8.correlation_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_coinbase_derivatives_ordersapi_sbe_v1_8.fields.correlation_id, range, value, display)

  return offset + length, value
end

-- Timestamp
coinbase_derivatives_ordersapi_sbe_v1_8.timestamp = {}

-- Size Of: Timestamp
coinbase_derivatives_ordersapi_sbe_v1_8.timestamp.size = 8

-- Display: Timestamp
coinbase_derivatives_ordersapi_sbe_v1_8.timestamp.display = function(value)
  -- Parse unix timestamp
  local seconds = math.floor(value:tonumber()/1000000000)
  local nanoseconds = value:tonumber()%1000000000

  return "Timestamp: "..os.date("%x %H:%M:%S.", seconds)..string.format("%09d", nanoseconds)
end

-- Dissect: Timestamp
coinbase_derivatives_ordersapi_sbe_v1_8.timestamp.dissect = function(buffer, offset, packet, parent)
  local length = coinbase_derivatives_ordersapi_sbe_v1_8.timestamp.size
  local range = buffer(offset, length)
  local value = range:le_int64()
  local display = coinbase_derivatives_ordersapi_sbe_v1_8.timestamp.display(value, buffer, offset, packet, parent)

  parent:add(omi_coinbase_derivatives_ordersapi_sbe_v1_8.fields.timestamp, range, value, display)

  return offset + length, value
end

-- Reset Options Fill Protection Reject Message
coinbase_derivatives_ordersapi_sbe_v1_8.reset_options_fill_protection_reject_message = {}

-- Size Of: Reset Options Fill Protection Reject Message
coinbase_derivatives_ordersapi_sbe_v1_8.reset_options_fill_protection_reject_message.size =
  coinbase_derivatives_ordersapi_sbe_v1_8.timestamp.size + 
  coinbase_derivatives_ordersapi_sbe_v1_8.correlation_id.size + 
  coinbase_derivatives_ordersapi_sbe_v1_8.error_message.size;

-- Display: Reset Options Fill Protection Reject Message
coinbase_derivatives_ordersapi_sbe_v1_8.reset_options_fill_protection_reject_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Reset Options Fill Protection Reject Message
coinbase_derivatives_ordersapi_sbe_v1_8.reset_options_fill_protection_reject_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Timestamp: 8 Byte Signed Fixed Width Integer
  index, timestamp = coinbase_derivatives_ordersapi_sbe_v1_8.timestamp.dissect(buffer, index, packet, parent)

  -- Correlation Id: 8 Byte Signed Fixed Width Integer
  index, correlation_id = coinbase_derivatives_ordersapi_sbe_v1_8.correlation_id.dissect(buffer, index, packet, parent)

  -- Error Message: 32 Byte Ascii String
  index, error_message = coinbase_derivatives_ordersapi_sbe_v1_8.error_message.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Reset Options Fill Protection Reject Message
coinbase_derivatives_ordersapi_sbe_v1_8.reset_options_fill_protection_reject_message.dissect = function(buffer, offset, packet, parent)
  if show.reset_options_fill_protection_reject_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_coinbase_derivatives_ordersapi_sbe_v1_8.fields.reset_options_fill_protection_reject_message, buffer(offset, 0))
    local index = coinbase_derivatives_ordersapi_sbe_v1_8.reset_options_fill_protection_reject_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = coinbase_derivatives_ordersapi_sbe_v1_8.reset_options_fill_protection_reject_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return coinbase_derivatives_ordersapi_sbe_v1_8.reset_options_fill_protection_reject_message.fields(buffer, offset, packet, parent)
  end
end

-- Product Id
coinbase_derivatives_ordersapi_sbe_v1_8.product_id = {}

-- Size Of: Product Id
coinbase_derivatives_ordersapi_sbe_v1_8.product_id.size = 4

-- Display: Product Id
coinbase_derivatives_ordersapi_sbe_v1_8.product_id.display = function(value)
  return "Product Id: "..value
end

-- Dissect: Product Id
coinbase_derivatives_ordersapi_sbe_v1_8.product_id.dissect = function(buffer, offset, packet, parent)
  local length = coinbase_derivatives_ordersapi_sbe_v1_8.product_id.size
  local range = buffer(offset, length)
  local value = range:le_int()
  local display = coinbase_derivatives_ordersapi_sbe_v1_8.product_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_coinbase_derivatives_ordersapi_sbe_v1_8.fields.product_id, range, value, display)

  return offset + length, value
end

-- Reset Options Fill Protection Ack Message
coinbase_derivatives_ordersapi_sbe_v1_8.reset_options_fill_protection_ack_message = {}

-- Size Of: Reset Options Fill Protection Ack Message
coinbase_derivatives_ordersapi_sbe_v1_8.reset_options_fill_protection_ack_message.size =
  coinbase_derivatives_ordersapi_sbe_v1_8.timestamp.size + 
  coinbase_derivatives_ordersapi_sbe_v1_8.correlation_id.size + 
  coinbase_derivatives_ordersapi_sbe_v1_8.product_id.size;

-- Display: Reset Options Fill Protection Ack Message
coinbase_derivatives_ordersapi_sbe_v1_8.reset_options_fill_protection_ack_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Reset Options Fill Protection Ack Message
coinbase_derivatives_ordersapi_sbe_v1_8.reset_options_fill_protection_ack_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Timestamp: 8 Byte Signed Fixed Width Integer
  index, timestamp = coinbase_derivatives_ordersapi_sbe_v1_8.timestamp.dissect(buffer, index, packet, parent)

  -- Correlation Id: 8 Byte Signed Fixed Width Integer
  index, correlation_id = coinbase_derivatives_ordersapi_sbe_v1_8.correlation_id.dissect(buffer, index, packet, parent)

  -- Product Id: 4 Byte Signed Fixed Width Integer
  index, product_id = coinbase_derivatives_ordersapi_sbe_v1_8.product_id.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Reset Options Fill Protection Ack Message
coinbase_derivatives_ordersapi_sbe_v1_8.reset_options_fill_protection_ack_message.dissect = function(buffer, offset, packet, parent)
  if show.reset_options_fill_protection_ack_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_coinbase_derivatives_ordersapi_sbe_v1_8.fields.reset_options_fill_protection_ack_message, buffer(offset, 0))
    local index = coinbase_derivatives_ordersapi_sbe_v1_8.reset_options_fill_protection_ack_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = coinbase_derivatives_ordersapi_sbe_v1_8.reset_options_fill_protection_ack_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return coinbase_derivatives_ordersapi_sbe_v1_8.reset_options_fill_protection_ack_message.fields(buffer, offset, packet, parent)
  end
end

-- Reset Options Fill Protection Message
coinbase_derivatives_ordersapi_sbe_v1_8.reset_options_fill_protection_message = {}

-- Size Of: Reset Options Fill Protection Message
coinbase_derivatives_ordersapi_sbe_v1_8.reset_options_fill_protection_message.size =
  coinbase_derivatives_ordersapi_sbe_v1_8.correlation_id.size + 
  coinbase_derivatives_ordersapi_sbe_v1_8.product_id.size;

-- Display: Reset Options Fill Protection Message
coinbase_derivatives_ordersapi_sbe_v1_8.reset_options_fill_protection_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Reset Options Fill Protection Message
coinbase_derivatives_ordersapi_sbe_v1_8.reset_options_fill_protection_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Correlation Id: 8 Byte Signed Fixed Width Integer
  index, correlation_id = coinbase_derivatives_ordersapi_sbe_v1_8.correlation_id.dissect(buffer, index, packet, parent)

  -- Product Id: 4 Byte Signed Fixed Width Integer
  index, product_id = coinbase_derivatives_ordersapi_sbe_v1_8.product_id.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Reset Options Fill Protection Message
coinbase_derivatives_ordersapi_sbe_v1_8.reset_options_fill_protection_message.dissect = function(buffer, offset, packet, parent)
  if show.reset_options_fill_protection_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_coinbase_derivatives_ordersapi_sbe_v1_8.fields.reset_options_fill_protection_message, buffer(offset, 0))
    local index = coinbase_derivatives_ordersapi_sbe_v1_8.reset_options_fill_protection_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = coinbase_derivatives_ordersapi_sbe_v1_8.reset_options_fill_protection_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return coinbase_derivatives_ordersapi_sbe_v1_8.reset_options_fill_protection_message.fields(buffer, offset, packet, parent)
  end
end

-- Details String 55
coinbase_derivatives_ordersapi_sbe_v1_8.details_string_55 = {}

-- Size Of: Details String 55
coinbase_derivatives_ordersapi_sbe_v1_8.details_string_55.size = 55

-- Display: Details String 55
coinbase_derivatives_ordersapi_sbe_v1_8.details_string_55.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Details String 55: No Value"
  end

  return "Details String 55: "..value
end

-- Dissect: Details String 55
coinbase_derivatives_ordersapi_sbe_v1_8.details_string_55.dissect = function(buffer, offset, packet, parent)
  local length = coinbase_derivatives_ordersapi_sbe_v1_8.details_string_55.size
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

  local display = coinbase_derivatives_ordersapi_sbe_v1_8.details_string_55.display(value, buffer, offset, packet, parent)

  parent:add(omi_coinbase_derivatives_ordersapi_sbe_v1_8.fields.details_string_55, range, value, display)

  return offset + length, value
end

-- Resend Reject Reason
coinbase_derivatives_ordersapi_sbe_v1_8.resend_reject_reason = {}

-- Size Of: Resend Reject Reason
coinbase_derivatives_ordersapi_sbe_v1_8.resend_reject_reason.size = 1

-- Display: Resend Reject Reason
coinbase_derivatives_ordersapi_sbe_v1_8.resend_reject_reason.display = function(value)
  if value == 1 then
    return "Resend Reject Reason: Begin Exec Id Too Small (1)"
  end
  if value == 2 then
    return "Resend Reject Reason: End Exec Id Too Large (2)"
  end
  if value == 3 then
    return "Resend Reject Reason: Resend Already In Progress (3)"
  end
  if value == 4 then
    return "Resend Reject Reason: Too Many Resend Requests (4)"
  end
  if value == 5 then
    return "Resend Reject Reason: Server Error (5)"
  end

  return "Resend Reject Reason: Unknown("..value..")"
end

-- Dissect: Resend Reject Reason
coinbase_derivatives_ordersapi_sbe_v1_8.resend_reject_reason.dissect = function(buffer, offset, packet, parent)
  local length = coinbase_derivatives_ordersapi_sbe_v1_8.resend_reject_reason.size
  local range = buffer(offset, length)
  local value = range:le_int()
  local display = coinbase_derivatives_ordersapi_sbe_v1_8.resend_reject_reason.display(value, buffer, offset, packet, parent)

  parent:add(omi_coinbase_derivatives_ordersapi_sbe_v1_8.fields.resend_reject_reason, range, value, display)

  return offset + length, value
end

-- Event Resend Reject Message
coinbase_derivatives_ordersapi_sbe_v1_8.event_resend_reject_message = {}

-- Size Of: Event Resend Reject Message
coinbase_derivatives_ordersapi_sbe_v1_8.event_resend_reject_message.size =
  coinbase_derivatives_ordersapi_sbe_v1_8.correlation_id.size + 
  coinbase_derivatives_ordersapi_sbe_v1_8.resend_reject_reason.size + 
  coinbase_derivatives_ordersapi_sbe_v1_8.details_string_55.size;

-- Display: Event Resend Reject Message
coinbase_derivatives_ordersapi_sbe_v1_8.event_resend_reject_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Event Resend Reject Message
coinbase_derivatives_ordersapi_sbe_v1_8.event_resend_reject_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Correlation Id: 8 Byte Signed Fixed Width Integer
  index, correlation_id = coinbase_derivatives_ordersapi_sbe_v1_8.correlation_id.dissect(buffer, index, packet, parent)

  -- Resend Reject Reason: 1 Byte Signed Fixed Width Integer Enum with 5 values
  index, resend_reject_reason = coinbase_derivatives_ordersapi_sbe_v1_8.resend_reject_reason.dissect(buffer, index, packet, parent)

  -- Details String 55: 55 Byte Ascii String
  index, details_string_55 = coinbase_derivatives_ordersapi_sbe_v1_8.details_string_55.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Event Resend Reject Message
coinbase_derivatives_ordersapi_sbe_v1_8.event_resend_reject_message.dissect = function(buffer, offset, packet, parent)
  if show.event_resend_reject_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_coinbase_derivatives_ordersapi_sbe_v1_8.fields.event_resend_reject_message, buffer(offset, 0))
    local index = coinbase_derivatives_ordersapi_sbe_v1_8.event_resend_reject_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = coinbase_derivatives_ordersapi_sbe_v1_8.event_resend_reject_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return coinbase_derivatives_ordersapi_sbe_v1_8.event_resend_reject_message.fields(buffer, offset, packet, parent)
  end
end

-- Resent Event Count
coinbase_derivatives_ordersapi_sbe_v1_8.resent_event_count = {}

-- Size Of: Resent Event Count
coinbase_derivatives_ordersapi_sbe_v1_8.resent_event_count.size = 4

-- Display: Resent Event Count
coinbase_derivatives_ordersapi_sbe_v1_8.resent_event_count.display = function(value)
  return "Resent Event Count: "..value
end

-- Dissect: Resent Event Count
coinbase_derivatives_ordersapi_sbe_v1_8.resent_event_count.dissect = function(buffer, offset, packet, parent)
  local length = coinbase_derivatives_ordersapi_sbe_v1_8.resent_event_count.size
  local range = buffer(offset, length)
  local value = range:le_int()
  local display = coinbase_derivatives_ordersapi_sbe_v1_8.resent_event_count.display(value, buffer, offset, packet, parent)

  parent:add(omi_coinbase_derivatives_ordersapi_sbe_v1_8.fields.resent_event_count, range, value, display)

  return offset + length, value
end

-- Event Resend Complete Message
coinbase_derivatives_ordersapi_sbe_v1_8.event_resend_complete_message = {}

-- Size Of: Event Resend Complete Message
coinbase_derivatives_ordersapi_sbe_v1_8.event_resend_complete_message.size =
  coinbase_derivatives_ordersapi_sbe_v1_8.correlation_id.size + 
  coinbase_derivatives_ordersapi_sbe_v1_8.resent_event_count.size;

-- Display: Event Resend Complete Message
coinbase_derivatives_ordersapi_sbe_v1_8.event_resend_complete_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Event Resend Complete Message
coinbase_derivatives_ordersapi_sbe_v1_8.event_resend_complete_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Correlation Id: 8 Byte Signed Fixed Width Integer
  index, correlation_id = coinbase_derivatives_ordersapi_sbe_v1_8.correlation_id.dissect(buffer, index, packet, parent)

  -- Resent Event Count: 4 Byte Signed Fixed Width Integer
  index, resent_event_count = coinbase_derivatives_ordersapi_sbe_v1_8.resent_event_count.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Event Resend Complete Message
coinbase_derivatives_ordersapi_sbe_v1_8.event_resend_complete_message.dissect = function(buffer, offset, packet, parent)
  if show.event_resend_complete_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_coinbase_derivatives_ordersapi_sbe_v1_8.fields.event_resend_complete_message, buffer(offset, 0))
    local index = coinbase_derivatives_ordersapi_sbe_v1_8.event_resend_complete_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = coinbase_derivatives_ordersapi_sbe_v1_8.event_resend_complete_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return coinbase_derivatives_ordersapi_sbe_v1_8.event_resend_complete_message.fields(buffer, offset, packet, parent)
  end
end

-- End Exec Id
coinbase_derivatives_ordersapi_sbe_v1_8.end_exec_id = {}

-- Size Of: End Exec Id
coinbase_derivatives_ordersapi_sbe_v1_8.end_exec_id.size = 8

-- Display: End Exec Id
coinbase_derivatives_ordersapi_sbe_v1_8.end_exec_id.display = function(value)
  return "End Exec Id: "..value
end

-- Dissect: End Exec Id
coinbase_derivatives_ordersapi_sbe_v1_8.end_exec_id.dissect = function(buffer, offset, packet, parent)
  local length = coinbase_derivatives_ordersapi_sbe_v1_8.end_exec_id.size
  local range = buffer(offset, length)
  local value = range:le_int64()
  local display = coinbase_derivatives_ordersapi_sbe_v1_8.end_exec_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_coinbase_derivatives_ordersapi_sbe_v1_8.fields.end_exec_id, range, value, display)

  return offset + length, value
end

-- Begin Exec Id
coinbase_derivatives_ordersapi_sbe_v1_8.begin_exec_id = {}

-- Size Of: Begin Exec Id
coinbase_derivatives_ordersapi_sbe_v1_8.begin_exec_id.size = 8

-- Display: Begin Exec Id
coinbase_derivatives_ordersapi_sbe_v1_8.begin_exec_id.display = function(value)
  return "Begin Exec Id: "..value
end

-- Dissect: Begin Exec Id
coinbase_derivatives_ordersapi_sbe_v1_8.begin_exec_id.dissect = function(buffer, offset, packet, parent)
  local length = coinbase_derivatives_ordersapi_sbe_v1_8.begin_exec_id.size
  local range = buffer(offset, length)
  local value = range:le_int64()
  local display = coinbase_derivatives_ordersapi_sbe_v1_8.begin_exec_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_coinbase_derivatives_ordersapi_sbe_v1_8.fields.begin_exec_id, range, value, display)

  return offset + length, value
end

-- Event Resend Request Message
coinbase_derivatives_ordersapi_sbe_v1_8.event_resend_request_message = {}

-- Size Of: Event Resend Request Message
coinbase_derivatives_ordersapi_sbe_v1_8.event_resend_request_message.size =
  coinbase_derivatives_ordersapi_sbe_v1_8.correlation_id.size + 
  coinbase_derivatives_ordersapi_sbe_v1_8.begin_exec_id.size + 
  coinbase_derivatives_ordersapi_sbe_v1_8.end_exec_id.size;

-- Display: Event Resend Request Message
coinbase_derivatives_ordersapi_sbe_v1_8.event_resend_request_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Event Resend Request Message
coinbase_derivatives_ordersapi_sbe_v1_8.event_resend_request_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Correlation Id: 8 Byte Signed Fixed Width Integer
  index, correlation_id = coinbase_derivatives_ordersapi_sbe_v1_8.correlation_id.dissect(buffer, index, packet, parent)

  -- Begin Exec Id: 8 Byte Signed Fixed Width Integer
  index, begin_exec_id = coinbase_derivatives_ordersapi_sbe_v1_8.begin_exec_id.dissect(buffer, index, packet, parent)

  -- End Exec Id: 8 Byte Signed Fixed Width Integer
  index, end_exec_id = coinbase_derivatives_ordersapi_sbe_v1_8.end_exec_id.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Event Resend Request Message
coinbase_derivatives_ordersapi_sbe_v1_8.event_resend_request_message.dissect = function(buffer, offset, packet, parent)
  if show.event_resend_request_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_coinbase_derivatives_ordersapi_sbe_v1_8.fields.event_resend_request_message, buffer(offset, 0))
    local index = coinbase_derivatives_ordersapi_sbe_v1_8.event_resend_request_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = coinbase_derivatives_ordersapi_sbe_v1_8.event_resend_request_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return coinbase_derivatives_ordersapi_sbe_v1_8.event_resend_request_message.fields(buffer, offset, packet, parent)
  end
end

-- Last Exec Id
coinbase_derivatives_ordersapi_sbe_v1_8.last_exec_id = {}

-- Size Of: Last Exec Id
coinbase_derivatives_ordersapi_sbe_v1_8.last_exec_id.size = 8

-- Display: Last Exec Id
coinbase_derivatives_ordersapi_sbe_v1_8.last_exec_id.display = function(value)
  return "Last Exec Id: "..value
end

-- Dissect: Last Exec Id
coinbase_derivatives_ordersapi_sbe_v1_8.last_exec_id.dissect = function(buffer, offset, packet, parent)
  local length = coinbase_derivatives_ordersapi_sbe_v1_8.last_exec_id.size
  local range = buffer(offset, length)
  local value = range:le_int64()
  local display = coinbase_derivatives_ordersapi_sbe_v1_8.last_exec_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_coinbase_derivatives_ordersapi_sbe_v1_8.fields.last_exec_id, range, value, display)

  return offset + length, value
end

-- Last Exec Id Message
coinbase_derivatives_ordersapi_sbe_v1_8.last_exec_id_message = {}

-- Size Of: Last Exec Id Message
coinbase_derivatives_ordersapi_sbe_v1_8.last_exec_id_message.size =
  coinbase_derivatives_ordersapi_sbe_v1_8.timestamp.size + 
  coinbase_derivatives_ordersapi_sbe_v1_8.last_exec_id.size + 
  coinbase_derivatives_ordersapi_sbe_v1_8.correlation_id.size;

-- Display: Last Exec Id Message
coinbase_derivatives_ordersapi_sbe_v1_8.last_exec_id_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Last Exec Id Message
coinbase_derivatives_ordersapi_sbe_v1_8.last_exec_id_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Timestamp: 8 Byte Signed Fixed Width Integer
  index, timestamp = coinbase_derivatives_ordersapi_sbe_v1_8.timestamp.dissect(buffer, index, packet, parent)

  -- Last Exec Id: 8 Byte Signed Fixed Width Integer
  index, last_exec_id = coinbase_derivatives_ordersapi_sbe_v1_8.last_exec_id.dissect(buffer, index, packet, parent)

  -- Correlation Id: 8 Byte Signed Fixed Width Integer
  index, correlation_id = coinbase_derivatives_ordersapi_sbe_v1_8.correlation_id.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Last Exec Id Message
coinbase_derivatives_ordersapi_sbe_v1_8.last_exec_id_message.dissect = function(buffer, offset, packet, parent)
  if show.last_exec_id_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_coinbase_derivatives_ordersapi_sbe_v1_8.fields.last_exec_id_message, buffer(offset, 0))
    local index = coinbase_derivatives_ordersapi_sbe_v1_8.last_exec_id_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = coinbase_derivatives_ordersapi_sbe_v1_8.last_exec_id_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return coinbase_derivatives_ordersapi_sbe_v1_8.last_exec_id_message.fields(buffer, offset, packet, parent)
  end
end

-- Last Exec Id Request Message
coinbase_derivatives_ordersapi_sbe_v1_8.last_exec_id_request_message = {}

-- Size Of: Last Exec Id Request Message
coinbase_derivatives_ordersapi_sbe_v1_8.last_exec_id_request_message.size =
  coinbase_derivatives_ordersapi_sbe_v1_8.correlation_id.size;

-- Display: Last Exec Id Request Message
coinbase_derivatives_ordersapi_sbe_v1_8.last_exec_id_request_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Last Exec Id Request Message
coinbase_derivatives_ordersapi_sbe_v1_8.last_exec_id_request_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Correlation Id: 8 Byte Signed Fixed Width Integer
  index, correlation_id = coinbase_derivatives_ordersapi_sbe_v1_8.correlation_id.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Last Exec Id Request Message
coinbase_derivatives_ordersapi_sbe_v1_8.last_exec_id_request_message.dissect = function(buffer, offset, packet, parent)
  if show.last_exec_id_request_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_coinbase_derivatives_ordersapi_sbe_v1_8.fields.last_exec_id_request_message, buffer(offset, 0))
    local index = coinbase_derivatives_ordersapi_sbe_v1_8.last_exec_id_request_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = coinbase_derivatives_ordersapi_sbe_v1_8.last_exec_id_request_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return coinbase_derivatives_ordersapi_sbe_v1_8.last_exec_id_request_message.fields(buffer, offset, packet, parent)
  end
end

-- Is Aggressor
coinbase_derivatives_ordersapi_sbe_v1_8.is_aggressor = {}

-- Size Of: Is Aggressor
coinbase_derivatives_ordersapi_sbe_v1_8.is_aggressor.size = 1

-- Display: Is Aggressor
coinbase_derivatives_ordersapi_sbe_v1_8.is_aggressor.display = function(value)
  if value == 0 then
    return "Is Aggressor: False (0)"
  end
  if value == 1 then
    return "Is Aggressor: True (1)"
  end

  return "Is Aggressor: Unknown("..value..")"
end

-- Dissect: Is Aggressor
coinbase_derivatives_ordersapi_sbe_v1_8.is_aggressor.dissect = function(buffer, offset, packet, parent)
  local length = coinbase_derivatives_ordersapi_sbe_v1_8.is_aggressor.size
  local range = buffer(offset, length)
  local value = range:le_int()
  local display = coinbase_derivatives_ordersapi_sbe_v1_8.is_aggressor.display(value, buffer, offset, packet, parent)

  parent:add(omi_coinbase_derivatives_ordersapi_sbe_v1_8.fields.is_aggressor, range, value, display)

  return offset + length, value
end

-- Instrument Id
coinbase_derivatives_ordersapi_sbe_v1_8.instrument_id = {}

-- Size Of: Instrument Id
coinbase_derivatives_ordersapi_sbe_v1_8.instrument_id.size = 4

-- Display: Instrument Id
coinbase_derivatives_ordersapi_sbe_v1_8.instrument_id.display = function(value)
  return "Instrument Id: "..value
end

-- Dissect: Instrument Id
coinbase_derivatives_ordersapi_sbe_v1_8.instrument_id.dissect = function(buffer, offset, packet, parent)
  local length = coinbase_derivatives_ordersapi_sbe_v1_8.instrument_id.size
  local range = buffer(offset, length)
  local value = range:le_int()
  local display = coinbase_derivatives_ordersapi_sbe_v1_8.instrument_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_coinbase_derivatives_ordersapi_sbe_v1_8.fields.instrument_id, range, value, display)

  return offset + length, value
end

-- Fill Qty
coinbase_derivatives_ordersapi_sbe_v1_8.fill_qty = {}

-- Size Of: Fill Qty
coinbase_derivatives_ordersapi_sbe_v1_8.fill_qty.size = 4

-- Display: Fill Qty
coinbase_derivatives_ordersapi_sbe_v1_8.fill_qty.display = function(value)
  return "Fill Qty: "..value
end

-- Dissect: Fill Qty
coinbase_derivatives_ordersapi_sbe_v1_8.fill_qty.dissect = function(buffer, offset, packet, parent)
  local length = coinbase_derivatives_ordersapi_sbe_v1_8.fill_qty.size
  local range = buffer(offset, length)
  local value = range:le_int()
  local display = coinbase_derivatives_ordersapi_sbe_v1_8.fill_qty.display(value, buffer, offset, packet, parent)

  parent:add(omi_coinbase_derivatives_ordersapi_sbe_v1_8.fields.fill_qty, range, value, display)

  return offset + length, value
end

-- Leg 2 Fill Price
coinbase_derivatives_ordersapi_sbe_v1_8.leg_2_fill_price = {}

-- Size Of: Leg 2 Fill Price
coinbase_derivatives_ordersapi_sbe_v1_8.leg_2_fill_price.size = 8

-- Display: Leg 2 Fill Price
coinbase_derivatives_ordersapi_sbe_v1_8.leg_2_fill_price.display = function(value)
  return "Leg 2 Fill Price: "..value
end

-- Translate: Leg 2 Fill Price
coinbase_derivatives_ordersapi_sbe_v1_8.leg_2_fill_price.translate = function(raw)
  return raw:tonumber()/1000000000
end

-- Dissect: Leg 2 Fill Price
coinbase_derivatives_ordersapi_sbe_v1_8.leg_2_fill_price.dissect = function(buffer, offset, packet, parent)
  local length = coinbase_derivatives_ordersapi_sbe_v1_8.leg_2_fill_price.size
  local range = buffer(offset, length)
  local raw = range:le_int64()
  local value = coinbase_derivatives_ordersapi_sbe_v1_8.leg_2_fill_price.translate(raw)
  local display = coinbase_derivatives_ordersapi_sbe_v1_8.leg_2_fill_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_coinbase_derivatives_ordersapi_sbe_v1_8.fields.leg_2_fill_price, range, value, display)

  return offset + length, value
end

-- Leg 1 Fill Price
coinbase_derivatives_ordersapi_sbe_v1_8.leg_1_fill_price = {}

-- Size Of: Leg 1 Fill Price
coinbase_derivatives_ordersapi_sbe_v1_8.leg_1_fill_price.size = 8

-- Display: Leg 1 Fill Price
coinbase_derivatives_ordersapi_sbe_v1_8.leg_1_fill_price.display = function(value)
  return "Leg 1 Fill Price: "..value
end

-- Translate: Leg 1 Fill Price
coinbase_derivatives_ordersapi_sbe_v1_8.leg_1_fill_price.translate = function(raw)
  return raw:tonumber()/1000000000
end

-- Dissect: Leg 1 Fill Price
coinbase_derivatives_ordersapi_sbe_v1_8.leg_1_fill_price.dissect = function(buffer, offset, packet, parent)
  local length = coinbase_derivatives_ordersapi_sbe_v1_8.leg_1_fill_price.size
  local range = buffer(offset, length)
  local raw = range:le_int64()
  local value = coinbase_derivatives_ordersapi_sbe_v1_8.leg_1_fill_price.translate(raw)
  local display = coinbase_derivatives_ordersapi_sbe_v1_8.leg_1_fill_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_coinbase_derivatives_ordersapi_sbe_v1_8.fields.leg_1_fill_price, range, value, display)

  return offset + length, value
end

-- Fill Price
coinbase_derivatives_ordersapi_sbe_v1_8.fill_price = {}

-- Size Of: Fill Price
coinbase_derivatives_ordersapi_sbe_v1_8.fill_price.size = 8

-- Display: Fill Price
coinbase_derivatives_ordersapi_sbe_v1_8.fill_price.display = function(value)
  return "Fill Price: "..value
end

-- Translate: Fill Price
coinbase_derivatives_ordersapi_sbe_v1_8.fill_price.translate = function(raw)
  return raw:tonumber()/1000000000
end

-- Dissect: Fill Price
coinbase_derivatives_ordersapi_sbe_v1_8.fill_price.dissect = function(buffer, offset, packet, parent)
  local length = coinbase_derivatives_ordersapi_sbe_v1_8.fill_price.size
  local range = buffer(offset, length)
  local raw = range:le_int64()
  local value = coinbase_derivatives_ordersapi_sbe_v1_8.fill_price.translate(raw)
  local display = coinbase_derivatives_ordersapi_sbe_v1_8.fill_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_coinbase_derivatives_ordersapi_sbe_v1_8.fields.fill_price, range, value, display)

  return offset + length, value
end

-- Available Qty
coinbase_derivatives_ordersapi_sbe_v1_8.available_qty = {}

-- Size Of: Available Qty
coinbase_derivatives_ordersapi_sbe_v1_8.available_qty.size = 4

-- Display: Available Qty
coinbase_derivatives_ordersapi_sbe_v1_8.available_qty.display = function(value)
  return "Available Qty: "..value
end

-- Dissect: Available Qty
coinbase_derivatives_ordersapi_sbe_v1_8.available_qty.dissect = function(buffer, offset, packet, parent)
  local length = coinbase_derivatives_ordersapi_sbe_v1_8.available_qty.size
  local range = buffer(offset, length)
  local value = range:le_int()
  local display = coinbase_derivatives_ordersapi_sbe_v1_8.available_qty.display(value, buffer, offset, packet, parent)

  parent:add(omi_coinbase_derivatives_ordersapi_sbe_v1_8.fields.available_qty, range, value, display)

  return offset + length, value
end

-- Total Filled
coinbase_derivatives_ordersapi_sbe_v1_8.total_filled = {}

-- Size Of: Total Filled
coinbase_derivatives_ordersapi_sbe_v1_8.total_filled.size = 4

-- Display: Total Filled
coinbase_derivatives_ordersapi_sbe_v1_8.total_filled.display = function(value)
  return "Total Filled: "..value
end

-- Dissect: Total Filled
coinbase_derivatives_ordersapi_sbe_v1_8.total_filled.dissect = function(buffer, offset, packet, parent)
  local length = coinbase_derivatives_ordersapi_sbe_v1_8.total_filled.size
  local range = buffer(offset, length)
  local value = range:le_int()
  local display = coinbase_derivatives_ordersapi_sbe_v1_8.total_filled.display(value, buffer, offset, packet, parent)

  parent:add(omi_coinbase_derivatives_ordersapi_sbe_v1_8.fields.total_filled, range, value, display)

  return offset + length, value
end

-- Filled Vwap
coinbase_derivatives_ordersapi_sbe_v1_8.filled_vwap = {}

-- Size Of: Filled Vwap
coinbase_derivatives_ordersapi_sbe_v1_8.filled_vwap.size = 8

-- Display: Filled Vwap
coinbase_derivatives_ordersapi_sbe_v1_8.filled_vwap.display = function(value)
  return "Filled Vwap: "..value
end

-- Translate: Filled Vwap
coinbase_derivatives_ordersapi_sbe_v1_8.filled_vwap.translate = function(raw)
  return raw:tonumber()/1000000000
end

-- Dissect: Filled Vwap
coinbase_derivatives_ordersapi_sbe_v1_8.filled_vwap.dissect = function(buffer, offset, packet, parent)
  local length = coinbase_derivatives_ordersapi_sbe_v1_8.filled_vwap.size
  local range = buffer(offset, length)
  local raw = range:le_int64()
  local value = coinbase_derivatives_ordersapi_sbe_v1_8.filled_vwap.translate(raw)
  local display = coinbase_derivatives_ordersapi_sbe_v1_8.filled_vwap.display(value, buffer, offset, packet, parent)

  parent:add(omi_coinbase_derivatives_ordersapi_sbe_v1_8.fields.filled_vwap, range, value, display)

  return offset + length, value
end

-- Order Id
coinbase_derivatives_ordersapi_sbe_v1_8.order_id = {}

-- Size Of: Order Id
coinbase_derivatives_ordersapi_sbe_v1_8.order_id.size = 8

-- Display: Order Id
coinbase_derivatives_ordersapi_sbe_v1_8.order_id.display = function(value)
  return "Order Id: "..value
end

-- Dissect: Order Id
coinbase_derivatives_ordersapi_sbe_v1_8.order_id.dissect = function(buffer, offset, packet, parent)
  local length = coinbase_derivatives_ordersapi_sbe_v1_8.order_id.size
  local range = buffer(offset, length)
  local value = range:le_int64()
  local display = coinbase_derivatives_ordersapi_sbe_v1_8.order_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_coinbase_derivatives_ordersapi_sbe_v1_8.fields.order_id, range, value, display)

  return offset + length, value
end

-- Client Order Id
coinbase_derivatives_ordersapi_sbe_v1_8.client_order_id = {}

-- Size Of: Client Order Id
coinbase_derivatives_ordersapi_sbe_v1_8.client_order_id.size = 8

-- Display: Client Order Id
coinbase_derivatives_ordersapi_sbe_v1_8.client_order_id.display = function(value)
  return "Client Order Id: "..value
end

-- Dissect: Client Order Id
coinbase_derivatives_ordersapi_sbe_v1_8.client_order_id.dissect = function(buffer, offset, packet, parent)
  local length = coinbase_derivatives_ordersapi_sbe_v1_8.client_order_id.size
  local range = buffer(offset, length)
  local value = range:le_int64()
  local display = coinbase_derivatives_ordersapi_sbe_v1_8.client_order_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_coinbase_derivatives_ordersapi_sbe_v1_8.fields.client_order_id, range, value, display)

  return offset + length, value
end

-- Match Id
coinbase_derivatives_ordersapi_sbe_v1_8.match_id = {}

-- Size Of: Match Id
coinbase_derivatives_ordersapi_sbe_v1_8.match_id.size = 8

-- Display: Match Id
coinbase_derivatives_ordersapi_sbe_v1_8.match_id.display = function(value)
  return "Match Id: "..value
end

-- Dissect: Match Id
coinbase_derivatives_ordersapi_sbe_v1_8.match_id.dissect = function(buffer, offset, packet, parent)
  local length = coinbase_derivatives_ordersapi_sbe_v1_8.match_id.size
  local range = buffer(offset, length)
  local value = range:le_int64()
  local display = coinbase_derivatives_ordersapi_sbe_v1_8.match_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_coinbase_derivatives_ordersapi_sbe_v1_8.fields.match_id, range, value, display)

  return offset + length, value
end

-- Exec Id
coinbase_derivatives_ordersapi_sbe_v1_8.exec_id = {}

-- Size Of: Exec Id
coinbase_derivatives_ordersapi_sbe_v1_8.exec_id.size = 8

-- Display: Exec Id
coinbase_derivatives_ordersapi_sbe_v1_8.exec_id.display = function(value)
  return "Exec Id: "..value
end

-- Dissect: Exec Id
coinbase_derivatives_ordersapi_sbe_v1_8.exec_id.dissect = function(buffer, offset, packet, parent)
  local length = coinbase_derivatives_ordersapi_sbe_v1_8.exec_id.size
  local range = buffer(offset, length)
  local value = range:le_int64()
  local display = coinbase_derivatives_ordersapi_sbe_v1_8.exec_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_coinbase_derivatives_ordersapi_sbe_v1_8.fields.exec_id, range, value, display)

  return offset + length, value
end

-- Spread Order Filled Message
coinbase_derivatives_ordersapi_sbe_v1_8.spread_order_filled_message = {}

-- Size Of: Spread Order Filled Message
coinbase_derivatives_ordersapi_sbe_v1_8.spread_order_filled_message.size =
  coinbase_derivatives_ordersapi_sbe_v1_8.timestamp.size + 
  coinbase_derivatives_ordersapi_sbe_v1_8.exec_id.size + 
  coinbase_derivatives_ordersapi_sbe_v1_8.match_id.size + 
  coinbase_derivatives_ordersapi_sbe_v1_8.client_order_id.size + 
  coinbase_derivatives_ordersapi_sbe_v1_8.correlation_id.size + 
  coinbase_derivatives_ordersapi_sbe_v1_8.order_id.size + 
  coinbase_derivatives_ordersapi_sbe_v1_8.filled_vwap.size + 
  coinbase_derivatives_ordersapi_sbe_v1_8.total_filled.size + 
  coinbase_derivatives_ordersapi_sbe_v1_8.available_qty.size + 
  coinbase_derivatives_ordersapi_sbe_v1_8.fill_price.size + 
  coinbase_derivatives_ordersapi_sbe_v1_8.leg_1_fill_price.size + 
  coinbase_derivatives_ordersapi_sbe_v1_8.leg_2_fill_price.size + 
  coinbase_derivatives_ordersapi_sbe_v1_8.fill_qty.size + 
  coinbase_derivatives_ordersapi_sbe_v1_8.instrument_id.size + 
  coinbase_derivatives_ordersapi_sbe_v1_8.is_aggressor.size;

-- Display: Spread Order Filled Message
coinbase_derivatives_ordersapi_sbe_v1_8.spread_order_filled_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Spread Order Filled Message
coinbase_derivatives_ordersapi_sbe_v1_8.spread_order_filled_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Timestamp: 8 Byte Signed Fixed Width Integer
  index, timestamp = coinbase_derivatives_ordersapi_sbe_v1_8.timestamp.dissect(buffer, index, packet, parent)

  -- Exec Id: 8 Byte Signed Fixed Width Integer
  index, exec_id = coinbase_derivatives_ordersapi_sbe_v1_8.exec_id.dissect(buffer, index, packet, parent)

  -- Match Id: 8 Byte Signed Fixed Width Integer
  index, match_id = coinbase_derivatives_ordersapi_sbe_v1_8.match_id.dissect(buffer, index, packet, parent)

  -- Client Order Id: 8 Byte Signed Fixed Width Integer
  index, client_order_id = coinbase_derivatives_ordersapi_sbe_v1_8.client_order_id.dissect(buffer, index, packet, parent)

  -- Correlation Id: 8 Byte Signed Fixed Width Integer
  index, correlation_id = coinbase_derivatives_ordersapi_sbe_v1_8.correlation_id.dissect(buffer, index, packet, parent)

  -- Order Id: 8 Byte Signed Fixed Width Integer
  index, order_id = coinbase_derivatives_ordersapi_sbe_v1_8.order_id.dissect(buffer, index, packet, parent)

  -- Filled Vwap: 8 Byte Signed Fixed Width Integer
  index, filled_vwap = coinbase_derivatives_ordersapi_sbe_v1_8.filled_vwap.dissect(buffer, index, packet, parent)

  -- Total Filled: 4 Byte Signed Fixed Width Integer
  index, total_filled = coinbase_derivatives_ordersapi_sbe_v1_8.total_filled.dissect(buffer, index, packet, parent)

  -- Available Qty: 4 Byte Signed Fixed Width Integer
  index, available_qty = coinbase_derivatives_ordersapi_sbe_v1_8.available_qty.dissect(buffer, index, packet, parent)

  -- Fill Price: 8 Byte Signed Fixed Width Integer
  index, fill_price = coinbase_derivatives_ordersapi_sbe_v1_8.fill_price.dissect(buffer, index, packet, parent)

  -- Leg 1 Fill Price: 8 Byte Signed Fixed Width Integer
  index, leg_1_fill_price = coinbase_derivatives_ordersapi_sbe_v1_8.leg_1_fill_price.dissect(buffer, index, packet, parent)

  -- Leg 2 Fill Price: 8 Byte Signed Fixed Width Integer
  index, leg_2_fill_price = coinbase_derivatives_ordersapi_sbe_v1_8.leg_2_fill_price.dissect(buffer, index, packet, parent)

  -- Fill Qty: 4 Byte Signed Fixed Width Integer
  index, fill_qty = coinbase_derivatives_ordersapi_sbe_v1_8.fill_qty.dissect(buffer, index, packet, parent)

  -- Instrument Id: 4 Byte Signed Fixed Width Integer
  index, instrument_id = coinbase_derivatives_ordersapi_sbe_v1_8.instrument_id.dissect(buffer, index, packet, parent)

  -- Is Aggressor: 1 Byte Signed Fixed Width Integer Enum with 2 values
  index, is_aggressor = coinbase_derivatives_ordersapi_sbe_v1_8.is_aggressor.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Spread Order Filled Message
coinbase_derivatives_ordersapi_sbe_v1_8.spread_order_filled_message.dissect = function(buffer, offset, packet, parent)
  if show.spread_order_filled_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_coinbase_derivatives_ordersapi_sbe_v1_8.fields.spread_order_filled_message, buffer(offset, 0))
    local index = coinbase_derivatives_ordersapi_sbe_v1_8.spread_order_filled_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = coinbase_derivatives_ordersapi_sbe_v1_8.spread_order_filled_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return coinbase_derivatives_ordersapi_sbe_v1_8.spread_order_filled_message.fields(buffer, offset, packet, parent)
  end
end

-- Order Filled Message
coinbase_derivatives_ordersapi_sbe_v1_8.order_filled_message = {}

-- Size Of: Order Filled Message
coinbase_derivatives_ordersapi_sbe_v1_8.order_filled_message.size =
  coinbase_derivatives_ordersapi_sbe_v1_8.timestamp.size + 
  coinbase_derivatives_ordersapi_sbe_v1_8.exec_id.size + 
  coinbase_derivatives_ordersapi_sbe_v1_8.match_id.size + 
  coinbase_derivatives_ordersapi_sbe_v1_8.client_order_id.size + 
  coinbase_derivatives_ordersapi_sbe_v1_8.correlation_id.size + 
  coinbase_derivatives_ordersapi_sbe_v1_8.order_id.size + 
  coinbase_derivatives_ordersapi_sbe_v1_8.filled_vwap.size + 
  coinbase_derivatives_ordersapi_sbe_v1_8.total_filled.size + 
  coinbase_derivatives_ordersapi_sbe_v1_8.available_qty.size + 
  coinbase_derivatives_ordersapi_sbe_v1_8.fill_price.size + 
  coinbase_derivatives_ordersapi_sbe_v1_8.fill_qty.size + 
  coinbase_derivatives_ordersapi_sbe_v1_8.instrument_id.size + 
  coinbase_derivatives_ordersapi_sbe_v1_8.is_aggressor.size;

-- Display: Order Filled Message
coinbase_derivatives_ordersapi_sbe_v1_8.order_filled_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Order Filled Message
coinbase_derivatives_ordersapi_sbe_v1_8.order_filled_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Timestamp: 8 Byte Signed Fixed Width Integer
  index, timestamp = coinbase_derivatives_ordersapi_sbe_v1_8.timestamp.dissect(buffer, index, packet, parent)

  -- Exec Id: 8 Byte Signed Fixed Width Integer
  index, exec_id = coinbase_derivatives_ordersapi_sbe_v1_8.exec_id.dissect(buffer, index, packet, parent)

  -- Match Id: 8 Byte Signed Fixed Width Integer
  index, match_id = coinbase_derivatives_ordersapi_sbe_v1_8.match_id.dissect(buffer, index, packet, parent)

  -- Client Order Id: 8 Byte Signed Fixed Width Integer
  index, client_order_id = coinbase_derivatives_ordersapi_sbe_v1_8.client_order_id.dissect(buffer, index, packet, parent)

  -- Correlation Id: 8 Byte Signed Fixed Width Integer
  index, correlation_id = coinbase_derivatives_ordersapi_sbe_v1_8.correlation_id.dissect(buffer, index, packet, parent)

  -- Order Id: 8 Byte Signed Fixed Width Integer
  index, order_id = coinbase_derivatives_ordersapi_sbe_v1_8.order_id.dissect(buffer, index, packet, parent)

  -- Filled Vwap: 8 Byte Signed Fixed Width Integer
  index, filled_vwap = coinbase_derivatives_ordersapi_sbe_v1_8.filled_vwap.dissect(buffer, index, packet, parent)

  -- Total Filled: 4 Byte Signed Fixed Width Integer
  index, total_filled = coinbase_derivatives_ordersapi_sbe_v1_8.total_filled.dissect(buffer, index, packet, parent)

  -- Available Qty: 4 Byte Signed Fixed Width Integer
  index, available_qty = coinbase_derivatives_ordersapi_sbe_v1_8.available_qty.dissect(buffer, index, packet, parent)

  -- Fill Price: 8 Byte Signed Fixed Width Integer
  index, fill_price = coinbase_derivatives_ordersapi_sbe_v1_8.fill_price.dissect(buffer, index, packet, parent)

  -- Fill Qty: 4 Byte Signed Fixed Width Integer
  index, fill_qty = coinbase_derivatives_ordersapi_sbe_v1_8.fill_qty.dissect(buffer, index, packet, parent)

  -- Instrument Id: 4 Byte Signed Fixed Width Integer
  index, instrument_id = coinbase_derivatives_ordersapi_sbe_v1_8.instrument_id.dissect(buffer, index, packet, parent)

  -- Is Aggressor: 1 Byte Signed Fixed Width Integer Enum with 2 values
  index, is_aggressor = coinbase_derivatives_ordersapi_sbe_v1_8.is_aggressor.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Order Filled Message
coinbase_derivatives_ordersapi_sbe_v1_8.order_filled_message.dissect = function(buffer, offset, packet, parent)
  if show.order_filled_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_coinbase_derivatives_ordersapi_sbe_v1_8.fields.order_filled_message, buffer(offset, 0))
    local index = coinbase_derivatives_ordersapi_sbe_v1_8.order_filled_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = coinbase_derivatives_ordersapi_sbe_v1_8.order_filled_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return coinbase_derivatives_ordersapi_sbe_v1_8.order_filled_message.fields(buffer, offset, packet, parent)
  end
end

-- Unlock Trading Reject Message
coinbase_derivatives_ordersapi_sbe_v1_8.unlock_trading_reject_message = {}

-- Size Of: Unlock Trading Reject Message
coinbase_derivatives_ordersapi_sbe_v1_8.unlock_trading_reject_message.size =
  coinbase_derivatives_ordersapi_sbe_v1_8.timestamp.size + 
  coinbase_derivatives_ordersapi_sbe_v1_8.correlation_id.size + 
  coinbase_derivatives_ordersapi_sbe_v1_8.error_message.size;

-- Display: Unlock Trading Reject Message
coinbase_derivatives_ordersapi_sbe_v1_8.unlock_trading_reject_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Unlock Trading Reject Message
coinbase_derivatives_ordersapi_sbe_v1_8.unlock_trading_reject_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Timestamp: 8 Byte Signed Fixed Width Integer
  index, timestamp = coinbase_derivatives_ordersapi_sbe_v1_8.timestamp.dissect(buffer, index, packet, parent)

  -- Correlation Id: 8 Byte Signed Fixed Width Integer
  index, correlation_id = coinbase_derivatives_ordersapi_sbe_v1_8.correlation_id.dissect(buffer, index, packet, parent)

  -- Error Message: 32 Byte Ascii String
  index, error_message = coinbase_derivatives_ordersapi_sbe_v1_8.error_message.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Unlock Trading Reject Message
coinbase_derivatives_ordersapi_sbe_v1_8.unlock_trading_reject_message.dissect = function(buffer, offset, packet, parent)
  if show.unlock_trading_reject_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_coinbase_derivatives_ordersapi_sbe_v1_8.fields.unlock_trading_reject_message, buffer(offset, 0))
    local index = coinbase_derivatives_ordersapi_sbe_v1_8.unlock_trading_reject_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = coinbase_derivatives_ordersapi_sbe_v1_8.unlock_trading_reject_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return coinbase_derivatives_ordersapi_sbe_v1_8.unlock_trading_reject_message.fields(buffer, offset, packet, parent)
  end
end

-- Num Users Affected
coinbase_derivatives_ordersapi_sbe_v1_8.num_users_affected = {}

-- Size Of: Num Users Affected
coinbase_derivatives_ordersapi_sbe_v1_8.num_users_affected.size = 4

-- Display: Num Users Affected
coinbase_derivatives_ordersapi_sbe_v1_8.num_users_affected.display = function(value)
  return "Num Users Affected: "..value
end

-- Dissect: Num Users Affected
coinbase_derivatives_ordersapi_sbe_v1_8.num_users_affected.dissect = function(buffer, offset, packet, parent)
  local length = coinbase_derivatives_ordersapi_sbe_v1_8.num_users_affected.size
  local range = buffer(offset, length)
  local value = range:le_int()
  local display = coinbase_derivatives_ordersapi_sbe_v1_8.num_users_affected.display(value, buffer, offset, packet, parent)

  parent:add(omi_coinbase_derivatives_ordersapi_sbe_v1_8.fields.num_users_affected, range, value, display)

  return offset + length, value
end

-- Unlock Trading Ack Message
coinbase_derivatives_ordersapi_sbe_v1_8.unlock_trading_ack_message = {}

-- Size Of: Unlock Trading Ack Message
coinbase_derivatives_ordersapi_sbe_v1_8.unlock_trading_ack_message.size =
  coinbase_derivatives_ordersapi_sbe_v1_8.timestamp.size + 
  coinbase_derivatives_ordersapi_sbe_v1_8.correlation_id.size + 
  coinbase_derivatives_ordersapi_sbe_v1_8.num_users_affected.size;

-- Display: Unlock Trading Ack Message
coinbase_derivatives_ordersapi_sbe_v1_8.unlock_trading_ack_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Unlock Trading Ack Message
coinbase_derivatives_ordersapi_sbe_v1_8.unlock_trading_ack_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Timestamp: 8 Byte Signed Fixed Width Integer
  index, timestamp = coinbase_derivatives_ordersapi_sbe_v1_8.timestamp.dissect(buffer, index, packet, parent)

  -- Correlation Id: 8 Byte Signed Fixed Width Integer
  index, correlation_id = coinbase_derivatives_ordersapi_sbe_v1_8.correlation_id.dissect(buffer, index, packet, parent)

  -- Num Users Affected: 4 Byte Signed Fixed Width Integer
  index, num_users_affected = coinbase_derivatives_ordersapi_sbe_v1_8.num_users_affected.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Unlock Trading Ack Message
coinbase_derivatives_ordersapi_sbe_v1_8.unlock_trading_ack_message.dissect = function(buffer, offset, packet, parent)
  if show.unlock_trading_ack_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_coinbase_derivatives_ordersapi_sbe_v1_8.fields.unlock_trading_ack_message, buffer(offset, 0))
    local index = coinbase_derivatives_ordersapi_sbe_v1_8.unlock_trading_ack_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = coinbase_derivatives_ordersapi_sbe_v1_8.unlock_trading_ack_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return coinbase_derivatives_ordersapi_sbe_v1_8.unlock_trading_ack_message.fields(buffer, offset, packet, parent)
  end
end

-- Current Session Only
coinbase_derivatives_ordersapi_sbe_v1_8.current_session_only = {}

-- Size Of: Current Session Only
coinbase_derivatives_ordersapi_sbe_v1_8.current_session_only.size = 1

-- Display: Current Session Only
coinbase_derivatives_ordersapi_sbe_v1_8.current_session_only.display = function(value)
  if value == 0 then
    return "Current Session Only: False (0)"
  end
  if value == 1 then
    return "Current Session Only: True (1)"
  end

  return "Current Session Only: Unknown("..value..")"
end

-- Dissect: Current Session Only
coinbase_derivatives_ordersapi_sbe_v1_8.current_session_only.dissect = function(buffer, offset, packet, parent)
  local length = coinbase_derivatives_ordersapi_sbe_v1_8.current_session_only.size
  local range = buffer(offset, length)
  local value = range:le_int()
  local display = coinbase_derivatives_ordersapi_sbe_v1_8.current_session_only.display(value, buffer, offset, packet, parent)

  parent:add(omi_coinbase_derivatives_ordersapi_sbe_v1_8.fields.current_session_only, range, value, display)

  return offset + length, value
end

-- Unlock Trading Message
coinbase_derivatives_ordersapi_sbe_v1_8.unlock_trading_message = {}

-- Size Of: Unlock Trading Message
coinbase_derivatives_ordersapi_sbe_v1_8.unlock_trading_message.size =
  coinbase_derivatives_ordersapi_sbe_v1_8.correlation_id.size + 
  coinbase_derivatives_ordersapi_sbe_v1_8.current_session_only.size;

-- Display: Unlock Trading Message
coinbase_derivatives_ordersapi_sbe_v1_8.unlock_trading_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Unlock Trading Message
coinbase_derivatives_ordersapi_sbe_v1_8.unlock_trading_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Correlation Id: 8 Byte Signed Fixed Width Integer
  index, correlation_id = coinbase_derivatives_ordersapi_sbe_v1_8.correlation_id.dissect(buffer, index, packet, parent)

  -- Current Session Only: 1 Byte Signed Fixed Width Integer Enum with 2 values
  index, current_session_only = coinbase_derivatives_ordersapi_sbe_v1_8.current_session_only.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Unlock Trading Message
coinbase_derivatives_ordersapi_sbe_v1_8.unlock_trading_message.dissect = function(buffer, offset, packet, parent)
  if show.unlock_trading_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_coinbase_derivatives_ordersapi_sbe_v1_8.fields.unlock_trading_message, buffer(offset, 0))
    local index = coinbase_derivatives_ordersapi_sbe_v1_8.unlock_trading_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = coinbase_derivatives_ordersapi_sbe_v1_8.unlock_trading_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return coinbase_derivatives_ordersapi_sbe_v1_8.unlock_trading_message.fields(buffer, offset, packet, parent)
  end
end

-- Mass Cancel Order Reject Message
coinbase_derivatives_ordersapi_sbe_v1_8.mass_cancel_order_reject_message = {}

-- Size Of: Mass Cancel Order Reject Message
coinbase_derivatives_ordersapi_sbe_v1_8.mass_cancel_order_reject_message.size =
  coinbase_derivatives_ordersapi_sbe_v1_8.timestamp.size + 
  coinbase_derivatives_ordersapi_sbe_v1_8.correlation_id.size + 
  coinbase_derivatives_ordersapi_sbe_v1_8.error_message.size;

-- Display: Mass Cancel Order Reject Message
coinbase_derivatives_ordersapi_sbe_v1_8.mass_cancel_order_reject_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Mass Cancel Order Reject Message
coinbase_derivatives_ordersapi_sbe_v1_8.mass_cancel_order_reject_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Timestamp: 8 Byte Signed Fixed Width Integer
  index, timestamp = coinbase_derivatives_ordersapi_sbe_v1_8.timestamp.dissect(buffer, index, packet, parent)

  -- Correlation Id: 8 Byte Signed Fixed Width Integer
  index, correlation_id = coinbase_derivatives_ordersapi_sbe_v1_8.correlation_id.dissect(buffer, index, packet, parent)

  -- Error Message: 32 Byte Ascii String
  index, error_message = coinbase_derivatives_ordersapi_sbe_v1_8.error_message.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Mass Cancel Order Reject Message
coinbase_derivatives_ordersapi_sbe_v1_8.mass_cancel_order_reject_message.dissect = function(buffer, offset, packet, parent)
  if show.mass_cancel_order_reject_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_coinbase_derivatives_ordersapi_sbe_v1_8.fields.mass_cancel_order_reject_message, buffer(offset, 0))
    local index = coinbase_derivatives_ordersapi_sbe_v1_8.mass_cancel_order_reject_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = coinbase_derivatives_ordersapi_sbe_v1_8.mass_cancel_order_reject_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return coinbase_derivatives_ordersapi_sbe_v1_8.mass_cancel_order_reject_message.fields(buffer, offset, packet, parent)
  end
end

-- Trading Lock Applied
coinbase_derivatives_ordersapi_sbe_v1_8.trading_lock_applied = {}

-- Size Of: Trading Lock Applied
coinbase_derivatives_ordersapi_sbe_v1_8.trading_lock_applied.size = 1

-- Display: Trading Lock Applied
coinbase_derivatives_ordersapi_sbe_v1_8.trading_lock_applied.display = function(value)
  if value == 0 then
    return "Trading Lock Applied: False (0)"
  end
  if value == 1 then
    return "Trading Lock Applied: True (1)"
  end

  return "Trading Lock Applied: Unknown("..value..")"
end

-- Dissect: Trading Lock Applied
coinbase_derivatives_ordersapi_sbe_v1_8.trading_lock_applied.dissect = function(buffer, offset, packet, parent)
  local length = coinbase_derivatives_ordersapi_sbe_v1_8.trading_lock_applied.size
  local range = buffer(offset, length)
  local value = range:le_int()
  local display = coinbase_derivatives_ordersapi_sbe_v1_8.trading_lock_applied.display(value, buffer, offset, packet, parent)

  parent:add(omi_coinbase_derivatives_ordersapi_sbe_v1_8.fields.trading_lock_applied, range, value, display)

  return offset + length, value
end

-- Only Current Session
coinbase_derivatives_ordersapi_sbe_v1_8.only_current_session = {}

-- Size Of: Only Current Session
coinbase_derivatives_ordersapi_sbe_v1_8.only_current_session.size = 1

-- Display: Only Current Session
coinbase_derivatives_ordersapi_sbe_v1_8.only_current_session.display = function(value)
  if value == 0 then
    return "Only Current Session: False (0)"
  end
  if value == 1 then
    return "Only Current Session: True (1)"
  end

  return "Only Current Session: Unknown("..value..")"
end

-- Dissect: Only Current Session
coinbase_derivatives_ordersapi_sbe_v1_8.only_current_session.dissect = function(buffer, offset, packet, parent)
  local length = coinbase_derivatives_ordersapi_sbe_v1_8.only_current_session.size
  local range = buffer(offset, length)
  local value = range:le_int()
  local display = coinbase_derivatives_ordersapi_sbe_v1_8.only_current_session.display(value, buffer, offset, packet, parent)

  parent:add(omi_coinbase_derivatives_ordersapi_sbe_v1_8.fields.only_current_session, range, value, display)

  return offset + length, value
end

-- Canceled Count
coinbase_derivatives_ordersapi_sbe_v1_8.canceled_count = {}

-- Size Of: Canceled Count
coinbase_derivatives_ordersapi_sbe_v1_8.canceled_count.size = 4

-- Display: Canceled Count
coinbase_derivatives_ordersapi_sbe_v1_8.canceled_count.display = function(value)
  return "Canceled Count: "..value
end

-- Dissect: Canceled Count
coinbase_derivatives_ordersapi_sbe_v1_8.canceled_count.dissect = function(buffer, offset, packet, parent)
  local length = coinbase_derivatives_ordersapi_sbe_v1_8.canceled_count.size
  local range = buffer(offset, length)
  local value = range:le_int()
  local display = coinbase_derivatives_ordersapi_sbe_v1_8.canceled_count.display(value, buffer, offset, packet, parent)

  parent:add(omi_coinbase_derivatives_ordersapi_sbe_v1_8.fields.canceled_count, range, value, display)

  return offset + length, value
end

-- Mass Cancel Order Ack Message
coinbase_derivatives_ordersapi_sbe_v1_8.mass_cancel_order_ack_message = {}

-- Size Of: Mass Cancel Order Ack Message
coinbase_derivatives_ordersapi_sbe_v1_8.mass_cancel_order_ack_message.size =
  coinbase_derivatives_ordersapi_sbe_v1_8.timestamp.size + 
  coinbase_derivatives_ordersapi_sbe_v1_8.exec_id.size + 
  coinbase_derivatives_ordersapi_sbe_v1_8.correlation_id.size + 
  coinbase_derivatives_ordersapi_sbe_v1_8.canceled_count.size + 
  coinbase_derivatives_ordersapi_sbe_v1_8.only_current_session.size + 
  coinbase_derivatives_ordersapi_sbe_v1_8.trading_lock_applied.size;

-- Display: Mass Cancel Order Ack Message
coinbase_derivatives_ordersapi_sbe_v1_8.mass_cancel_order_ack_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Mass Cancel Order Ack Message
coinbase_derivatives_ordersapi_sbe_v1_8.mass_cancel_order_ack_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Timestamp: 8 Byte Signed Fixed Width Integer
  index, timestamp = coinbase_derivatives_ordersapi_sbe_v1_8.timestamp.dissect(buffer, index, packet, parent)

  -- Exec Id: 8 Byte Signed Fixed Width Integer
  index, exec_id = coinbase_derivatives_ordersapi_sbe_v1_8.exec_id.dissect(buffer, index, packet, parent)

  -- Correlation Id: 8 Byte Signed Fixed Width Integer
  index, correlation_id = coinbase_derivatives_ordersapi_sbe_v1_8.correlation_id.dissect(buffer, index, packet, parent)

  -- Canceled Count: 4 Byte Signed Fixed Width Integer
  index, canceled_count = coinbase_derivatives_ordersapi_sbe_v1_8.canceled_count.dissect(buffer, index, packet, parent)

  -- Only Current Session: 1 Byte Signed Fixed Width Integer Enum with 2 values
  index, only_current_session = coinbase_derivatives_ordersapi_sbe_v1_8.only_current_session.dissect(buffer, index, packet, parent)

  -- Trading Lock Applied: 1 Byte Signed Fixed Width Integer Enum with 2 values
  index, trading_lock_applied = coinbase_derivatives_ordersapi_sbe_v1_8.trading_lock_applied.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Mass Cancel Order Ack Message
coinbase_derivatives_ordersapi_sbe_v1_8.mass_cancel_order_ack_message.dissect = function(buffer, offset, packet, parent)
  if show.mass_cancel_order_ack_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_coinbase_derivatives_ordersapi_sbe_v1_8.fields.mass_cancel_order_ack_message, buffer(offset, 0))
    local index = coinbase_derivatives_ordersapi_sbe_v1_8.mass_cancel_order_ack_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = coinbase_derivatives_ordersapi_sbe_v1_8.mass_cancel_order_ack_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return coinbase_derivatives_ordersapi_sbe_v1_8.mass_cancel_order_ack_message.fields(buffer, offset, packet, parent)
  end
end

-- Request Trading Lock
coinbase_derivatives_ordersapi_sbe_v1_8.request_trading_lock = {}

-- Size Of: Request Trading Lock
coinbase_derivatives_ordersapi_sbe_v1_8.request_trading_lock.size = 1

-- Display: Request Trading Lock
coinbase_derivatives_ordersapi_sbe_v1_8.request_trading_lock.display = function(value)
  if value == 0 then
    return "Request Trading Lock: False (0)"
  end
  if value == 1 then
    return "Request Trading Lock: True (1)"
  end

  return "Request Trading Lock: Unknown("..value..")"
end

-- Dissect: Request Trading Lock
coinbase_derivatives_ordersapi_sbe_v1_8.request_trading_lock.dissect = function(buffer, offset, packet, parent)
  local length = coinbase_derivatives_ordersapi_sbe_v1_8.request_trading_lock.size
  local range = buffer(offset, length)
  local value = range:le_int()
  local display = coinbase_derivatives_ordersapi_sbe_v1_8.request_trading_lock.display(value, buffer, offset, packet, parent)

  parent:add(omi_coinbase_derivatives_ordersapi_sbe_v1_8.fields.request_trading_lock, range, value, display)

  return offset + length, value
end

-- Side
coinbase_derivatives_ordersapi_sbe_v1_8.side = {}

-- Size Of: Side
coinbase_derivatives_ordersapi_sbe_v1_8.side.size = 1

-- Display: Side
coinbase_derivatives_ordersapi_sbe_v1_8.side.display = function(value)
  if value == 1 then
    return "Side: Buy (1)"
  end
  if value == -1 then
    return "Side: Sell (-1)"
  end

  return "Side: Unknown("..value..")"
end

-- Dissect: Side
coinbase_derivatives_ordersapi_sbe_v1_8.side.dissect = function(buffer, offset, packet, parent)
  local length = coinbase_derivatives_ordersapi_sbe_v1_8.side.size
  local range = buffer(offset, length)
  local value = range:le_int()
  local display = coinbase_derivatives_ordersapi_sbe_v1_8.side.display(value, buffer, offset, packet, parent)

  parent:add(omi_coinbase_derivatives_ordersapi_sbe_v1_8.fields.side, range, value, display)

  return offset + length, value
end

-- Limit Price
coinbase_derivatives_ordersapi_sbe_v1_8.limit_price = {}

-- Size Of: Limit Price
coinbase_derivatives_ordersapi_sbe_v1_8.limit_price.size = 8

-- Display: Limit Price
coinbase_derivatives_ordersapi_sbe_v1_8.limit_price.display = function(value)
  return "Limit Price: "..value
end

-- Translate: Limit Price
coinbase_derivatives_ordersapi_sbe_v1_8.limit_price.translate = function(raw)
  return raw:tonumber()/1000000000
end

-- Dissect: Limit Price
coinbase_derivatives_ordersapi_sbe_v1_8.limit_price.dissect = function(buffer, offset, packet, parent)
  local length = coinbase_derivatives_ordersapi_sbe_v1_8.limit_price.size
  local range = buffer(offset, length)
  local raw = range:le_int64()
  local value = coinbase_derivatives_ordersapi_sbe_v1_8.limit_price.translate(raw)
  local display = coinbase_derivatives_ordersapi_sbe_v1_8.limit_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_coinbase_derivatives_ordersapi_sbe_v1_8.fields.limit_price, range, value, display)

  return offset + length, value
end

-- Mass Cancel Order Message
coinbase_derivatives_ordersapi_sbe_v1_8.mass_cancel_order_message = {}

-- Size Of: Mass Cancel Order Message
coinbase_derivatives_ordersapi_sbe_v1_8.mass_cancel_order_message.size =
  coinbase_derivatives_ordersapi_sbe_v1_8.correlation_id.size + 
  coinbase_derivatives_ordersapi_sbe_v1_8.limit_price.size + 
  coinbase_derivatives_ordersapi_sbe_v1_8.instrument_id.size + 
  coinbase_derivatives_ordersapi_sbe_v1_8.side.size + 
  coinbase_derivatives_ordersapi_sbe_v1_8.current_session_only.size + 
  coinbase_derivatives_ordersapi_sbe_v1_8.request_trading_lock.size;

-- Display: Mass Cancel Order Message
coinbase_derivatives_ordersapi_sbe_v1_8.mass_cancel_order_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Mass Cancel Order Message
coinbase_derivatives_ordersapi_sbe_v1_8.mass_cancel_order_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Correlation Id: 8 Byte Signed Fixed Width Integer
  index, correlation_id = coinbase_derivatives_ordersapi_sbe_v1_8.correlation_id.dissect(buffer, index, packet, parent)

  -- Limit Price: 8 Byte Signed Fixed Width Integer
  index, limit_price = coinbase_derivatives_ordersapi_sbe_v1_8.limit_price.dissect(buffer, index, packet, parent)

  -- Instrument Id: 4 Byte Signed Fixed Width Integer
  index, instrument_id = coinbase_derivatives_ordersapi_sbe_v1_8.instrument_id.dissect(buffer, index, packet, parent)

  -- Side: 1 Byte Signed Fixed Width Integer Enum with 2 values
  index, side = coinbase_derivatives_ordersapi_sbe_v1_8.side.dissect(buffer, index, packet, parent)

  -- Current Session Only: 1 Byte Signed Fixed Width Integer Enum with 2 values
  index, current_session_only = coinbase_derivatives_ordersapi_sbe_v1_8.current_session_only.dissect(buffer, index, packet, parent)

  -- Request Trading Lock: 1 Byte Signed Fixed Width Integer Enum with 2 values
  index, request_trading_lock = coinbase_derivatives_ordersapi_sbe_v1_8.request_trading_lock.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Mass Cancel Order Message
coinbase_derivatives_ordersapi_sbe_v1_8.mass_cancel_order_message.dissect = function(buffer, offset, packet, parent)
  if show.mass_cancel_order_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_coinbase_derivatives_ordersapi_sbe_v1_8.fields.mass_cancel_order_message, buffer(offset, 0))
    local index = coinbase_derivatives_ordersapi_sbe_v1_8.mass_cancel_order_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = coinbase_derivatives_ordersapi_sbe_v1_8.mass_cancel_order_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return coinbase_derivatives_ordersapi_sbe_v1_8.mass_cancel_order_message.fields(buffer, offset, packet, parent)
  end
end

-- Cancel Order Reject Details
coinbase_derivatives_ordersapi_sbe_v1_8.cancel_order_reject_details = {}

-- Size Of: Cancel Order Reject Details
coinbase_derivatives_ordersapi_sbe_v1_8.cancel_order_reject_details.size = 31

-- Display: Cancel Order Reject Details
coinbase_derivatives_ordersapi_sbe_v1_8.cancel_order_reject_details.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Cancel Order Reject Details: No Value"
  end

  return "Cancel Order Reject Details: "..value
end

-- Dissect: Cancel Order Reject Details
coinbase_derivatives_ordersapi_sbe_v1_8.cancel_order_reject_details.dissect = function(buffer, offset, packet, parent)
  local length = coinbase_derivatives_ordersapi_sbe_v1_8.cancel_order_reject_details.size
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

  local display = coinbase_derivatives_ordersapi_sbe_v1_8.cancel_order_reject_details.display(value, buffer, offset, packet, parent)

  parent:add(omi_coinbase_derivatives_ordersapi_sbe_v1_8.fields.cancel_order_reject_details, range, value, display)

  return offset + length, value
end

-- Cancel Order Reject Reason
coinbase_derivatives_ordersapi_sbe_v1_8.cancel_order_reject_reason = {}

-- Size Of: Cancel Order Reject Reason
coinbase_derivatives_ordersapi_sbe_v1_8.cancel_order_reject_reason.size = 1

-- Display: Cancel Order Reject Reason
coinbase_derivatives_ordersapi_sbe_v1_8.cancel_order_reject_reason.display = function(value)
  if value == 1 then
    return "Cancel Order Reject Reason: Error (1)"
  end
  if value == 2 then
    return "Cancel Order Reject Reason: Unknown Order (2)"
  end
  if value == 3 then
    return "Cancel Order Reject Reason: Order Filled (3)"
  end

  return "Cancel Order Reject Reason: Unknown("..value..")"
end

-- Dissect: Cancel Order Reject Reason
coinbase_derivatives_ordersapi_sbe_v1_8.cancel_order_reject_reason.dissect = function(buffer, offset, packet, parent)
  local length = coinbase_derivatives_ordersapi_sbe_v1_8.cancel_order_reject_reason.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = coinbase_derivatives_ordersapi_sbe_v1_8.cancel_order_reject_reason.display(value, buffer, offset, packet, parent)

  parent:add(omi_coinbase_derivatives_ordersapi_sbe_v1_8.fields.cancel_order_reject_reason, range, value, display)

  return offset + length, value
end

-- Order Id Optional
coinbase_derivatives_ordersapi_sbe_v1_8.order_id_optional = {}

-- Size Of: Order Id Optional
coinbase_derivatives_ordersapi_sbe_v1_8.order_id_optional.size = 8

-- Display: Order Id Optional
coinbase_derivatives_ordersapi_sbe_v1_8.order_id_optional.display = function(value)
  -- Check if field has value
  if value == Int64(0x00000000, 0x80000000) then
    return "Order Id Optional: No Value"
  end

  return "Order Id Optional: "..value
end

-- Dissect: Order Id Optional
coinbase_derivatives_ordersapi_sbe_v1_8.order_id_optional.dissect = function(buffer, offset, packet, parent)
  local length = coinbase_derivatives_ordersapi_sbe_v1_8.order_id_optional.size
  local range = buffer(offset, length)
  local value = range:le_int64()
  local display = coinbase_derivatives_ordersapi_sbe_v1_8.order_id_optional.display(value, buffer, offset, packet, parent)

  parent:add(omi_coinbase_derivatives_ordersapi_sbe_v1_8.fields.order_id_optional, range, value, display)

  return offset + length, value
end

-- Cancel Order Reject Message
coinbase_derivatives_ordersapi_sbe_v1_8.cancel_order_reject_message = {}

-- Size Of: Cancel Order Reject Message
coinbase_derivatives_ordersapi_sbe_v1_8.cancel_order_reject_message.size =
  coinbase_derivatives_ordersapi_sbe_v1_8.timestamp.size + 
  coinbase_derivatives_ordersapi_sbe_v1_8.client_order_id.size + 
  coinbase_derivatives_ordersapi_sbe_v1_8.correlation_id.size + 
  coinbase_derivatives_ordersapi_sbe_v1_8.order_id_optional.size + 
  coinbase_derivatives_ordersapi_sbe_v1_8.cancel_order_reject_reason.size + 
  coinbase_derivatives_ordersapi_sbe_v1_8.cancel_order_reject_details.size;

-- Display: Cancel Order Reject Message
coinbase_derivatives_ordersapi_sbe_v1_8.cancel_order_reject_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Cancel Order Reject Message
coinbase_derivatives_ordersapi_sbe_v1_8.cancel_order_reject_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Timestamp: 8 Byte Signed Fixed Width Integer
  index, timestamp = coinbase_derivatives_ordersapi_sbe_v1_8.timestamp.dissect(buffer, index, packet, parent)

  -- Client Order Id: 8 Byte Signed Fixed Width Integer
  index, client_order_id = coinbase_derivatives_ordersapi_sbe_v1_8.client_order_id.dissect(buffer, index, packet, parent)

  -- Correlation Id: 8 Byte Signed Fixed Width Integer
  index, correlation_id = coinbase_derivatives_ordersapi_sbe_v1_8.correlation_id.dissect(buffer, index, packet, parent)

  -- Order Id Optional: 8 Byte Signed Fixed Width Integer Nullable
  index, order_id_optional = coinbase_derivatives_ordersapi_sbe_v1_8.order_id_optional.dissect(buffer, index, packet, parent)

  -- Cancel Order Reject Reason: 1 Byte Unsigned Fixed Width Integer Enum with 3 values
  index, cancel_order_reject_reason = coinbase_derivatives_ordersapi_sbe_v1_8.cancel_order_reject_reason.dissect(buffer, index, packet, parent)

  -- Cancel Order Reject Details: 31 Byte Ascii String
  index, cancel_order_reject_details = coinbase_derivatives_ordersapi_sbe_v1_8.cancel_order_reject_details.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Cancel Order Reject Message
coinbase_derivatives_ordersapi_sbe_v1_8.cancel_order_reject_message.dissect = function(buffer, offset, packet, parent)
  if show.cancel_order_reject_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_coinbase_derivatives_ordersapi_sbe_v1_8.fields.cancel_order_reject_message, buffer(offset, 0))
    local index = coinbase_derivatives_ordersapi_sbe_v1_8.cancel_order_reject_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = coinbase_derivatives_ordersapi_sbe_v1_8.cancel_order_reject_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return coinbase_derivatives_ordersapi_sbe_v1_8.cancel_order_reject_message.fields(buffer, offset, packet, parent)
  end
end

-- Cancel Reason
coinbase_derivatives_ordersapi_sbe_v1_8.cancel_reason = {}

-- Size Of: Cancel Reason
coinbase_derivatives_ordersapi_sbe_v1_8.cancel_reason.size = 1

-- Display: Cancel Reason
coinbase_derivatives_ordersapi_sbe_v1_8.cancel_reason.display = function(value)
  if value == 0 then
    return "Cancel Reason: Expired (0)"
  end
  if value == 1 then
    return "Cancel Reason: Canceled By User (1)"
  end
  if value == 2 then
    return "Cancel Reason: Self Match Prevention (2)"
  end
  if value == 3 then
    return "Cancel Reason: Client Disconnect (3)"
  end
  if value == 4 then
    return "Cancel Reason: Price Limit (4)"
  end
  if value == 5 then
    return "Cancel Reason: Admin Cancel (5)"
  end
  if value == 6 then
    return "Cancel Reason: Mass Cancel (6)"
  end
  if value == 7 then
    return "Cancel Reason: Stream Replaced (7)"
  end
  if value == 8 then
    return "Cancel Reason: Active Limit Exceeded (8)"
  end

  return "Cancel Reason: Unknown("..value..")"
end

-- Dissect: Cancel Reason
coinbase_derivatives_ordersapi_sbe_v1_8.cancel_reason.dissect = function(buffer, offset, packet, parent)
  local length = coinbase_derivatives_ordersapi_sbe_v1_8.cancel_reason.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = coinbase_derivatives_ordersapi_sbe_v1_8.cancel_reason.display(value, buffer, offset, packet, parent)

  parent:add(omi_coinbase_derivatives_ordersapi_sbe_v1_8.fields.cancel_reason, range, value, display)

  return offset + length, value
end

-- Receive Time
coinbase_derivatives_ordersapi_sbe_v1_8.receive_time = {}

-- Size Of: Receive Time
coinbase_derivatives_ordersapi_sbe_v1_8.receive_time.size = 8

-- Display: Receive Time
coinbase_derivatives_ordersapi_sbe_v1_8.receive_time.display = function(value)
  -- Parse unix timestamp
  local seconds = math.floor(value:tonumber()/1000000000)
  local nanoseconds = value:tonumber()%1000000000

  return "Receive Time: "..os.date("%x %H:%M:%S.", seconds)..string.format("%09d", nanoseconds)
end

-- Dissect: Receive Time
coinbase_derivatives_ordersapi_sbe_v1_8.receive_time.dissect = function(buffer, offset, packet, parent)
  local length = coinbase_derivatives_ordersapi_sbe_v1_8.receive_time.size
  local range = buffer(offset, length)
  local value = range:le_int64()
  local display = coinbase_derivatives_ordersapi_sbe_v1_8.receive_time.display(value, buffer, offset, packet, parent)

  parent:add(omi_coinbase_derivatives_ordersapi_sbe_v1_8.fields.receive_time, range, value, display)

  return offset + length, value
end

-- Order Canceled Message
coinbase_derivatives_ordersapi_sbe_v1_8.order_canceled_message = {}

-- Size Of: Order Canceled Message
coinbase_derivatives_ordersapi_sbe_v1_8.order_canceled_message.size =
  coinbase_derivatives_ordersapi_sbe_v1_8.timestamp.size + 
  coinbase_derivatives_ordersapi_sbe_v1_8.exec_id.size + 
  coinbase_derivatives_ordersapi_sbe_v1_8.client_order_id.size + 
  coinbase_derivatives_ordersapi_sbe_v1_8.correlation_id.size + 
  coinbase_derivatives_ordersapi_sbe_v1_8.order_id.size + 
  coinbase_derivatives_ordersapi_sbe_v1_8.receive_time.size + 
  coinbase_derivatives_ordersapi_sbe_v1_8.total_filled.size + 
  coinbase_derivatives_ordersapi_sbe_v1_8.instrument_id.size + 
  coinbase_derivatives_ordersapi_sbe_v1_8.cancel_reason.size;

-- Display: Order Canceled Message
coinbase_derivatives_ordersapi_sbe_v1_8.order_canceled_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Order Canceled Message
coinbase_derivatives_ordersapi_sbe_v1_8.order_canceled_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Timestamp: 8 Byte Signed Fixed Width Integer
  index, timestamp = coinbase_derivatives_ordersapi_sbe_v1_8.timestamp.dissect(buffer, index, packet, parent)

  -- Exec Id: 8 Byte Signed Fixed Width Integer
  index, exec_id = coinbase_derivatives_ordersapi_sbe_v1_8.exec_id.dissect(buffer, index, packet, parent)

  -- Client Order Id: 8 Byte Signed Fixed Width Integer
  index, client_order_id = coinbase_derivatives_ordersapi_sbe_v1_8.client_order_id.dissect(buffer, index, packet, parent)

  -- Correlation Id: 8 Byte Signed Fixed Width Integer
  index, correlation_id = coinbase_derivatives_ordersapi_sbe_v1_8.correlation_id.dissect(buffer, index, packet, parent)

  -- Order Id: 8 Byte Signed Fixed Width Integer
  index, order_id = coinbase_derivatives_ordersapi_sbe_v1_8.order_id.dissect(buffer, index, packet, parent)

  -- Receive Time: 8 Byte Signed Fixed Width Integer
  index, receive_time = coinbase_derivatives_ordersapi_sbe_v1_8.receive_time.dissect(buffer, index, packet, parent)

  -- Total Filled: 4 Byte Signed Fixed Width Integer
  index, total_filled = coinbase_derivatives_ordersapi_sbe_v1_8.total_filled.dissect(buffer, index, packet, parent)

  -- Instrument Id: 4 Byte Signed Fixed Width Integer
  index, instrument_id = coinbase_derivatives_ordersapi_sbe_v1_8.instrument_id.dissect(buffer, index, packet, parent)

  -- Cancel Reason: 1 Byte Unsigned Fixed Width Integer Enum with 9 values
  index, cancel_reason = coinbase_derivatives_ordersapi_sbe_v1_8.cancel_reason.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Order Canceled Message
coinbase_derivatives_ordersapi_sbe_v1_8.order_canceled_message.dissect = function(buffer, offset, packet, parent)
  if show.order_canceled_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_coinbase_derivatives_ordersapi_sbe_v1_8.fields.order_canceled_message, buffer(offset, 0))
    local index = coinbase_derivatives_ordersapi_sbe_v1_8.order_canceled_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = coinbase_derivatives_ordersapi_sbe_v1_8.order_canceled_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return coinbase_derivatives_ordersapi_sbe_v1_8.order_canceled_message.fields(buffer, offset, packet, parent)
  end
end

-- Cancel Order Message
coinbase_derivatives_ordersapi_sbe_v1_8.cancel_order_message = {}

-- Size Of: Cancel Order Message
coinbase_derivatives_ordersapi_sbe_v1_8.cancel_order_message.size =
  coinbase_derivatives_ordersapi_sbe_v1_8.client_order_id.size + 
  coinbase_derivatives_ordersapi_sbe_v1_8.correlation_id.size + 
  coinbase_derivatives_ordersapi_sbe_v1_8.instrument_id.size;

-- Display: Cancel Order Message
coinbase_derivatives_ordersapi_sbe_v1_8.cancel_order_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Cancel Order Message
coinbase_derivatives_ordersapi_sbe_v1_8.cancel_order_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Client Order Id: 8 Byte Signed Fixed Width Integer
  index, client_order_id = coinbase_derivatives_ordersapi_sbe_v1_8.client_order_id.dissect(buffer, index, packet, parent)

  -- Correlation Id: 8 Byte Signed Fixed Width Integer
  index, correlation_id = coinbase_derivatives_ordersapi_sbe_v1_8.correlation_id.dissect(buffer, index, packet, parent)

  -- Instrument Id: 4 Byte Signed Fixed Width Integer
  index, instrument_id = coinbase_derivatives_ordersapi_sbe_v1_8.instrument_id.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Cancel Order Message
coinbase_derivatives_ordersapi_sbe_v1_8.cancel_order_message.dissect = function(buffer, offset, packet, parent)
  if show.cancel_order_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_coinbase_derivatives_ordersapi_sbe_v1_8.fields.cancel_order_message, buffer(offset, 0))
    local index = coinbase_derivatives_ordersapi_sbe_v1_8.cancel_order_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = coinbase_derivatives_ordersapi_sbe_v1_8.cancel_order_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return coinbase_derivatives_ordersapi_sbe_v1_8.cancel_order_message.fields(buffer, offset, packet, parent)
  end
end

-- Order Replaced Message
coinbase_derivatives_ordersapi_sbe_v1_8.order_replaced_message = {}

-- Size Of: Order Replaced Message
coinbase_derivatives_ordersapi_sbe_v1_8.order_replaced_message.size =
  coinbase_derivatives_ordersapi_sbe_v1_8.timestamp.size + 
  coinbase_derivatives_ordersapi_sbe_v1_8.exec_id.size + 
  coinbase_derivatives_ordersapi_sbe_v1_8.client_order_id.size + 
  coinbase_derivatives_ordersapi_sbe_v1_8.correlation_id.size + 
  coinbase_derivatives_ordersapi_sbe_v1_8.order_id.size + 
  coinbase_derivatives_ordersapi_sbe_v1_8.receive_time.size + 
  coinbase_derivatives_ordersapi_sbe_v1_8.total_filled.size + 
  coinbase_derivatives_ordersapi_sbe_v1_8.available_qty.size + 
  coinbase_derivatives_ordersapi_sbe_v1_8.instrument_id.size;

-- Display: Order Replaced Message
coinbase_derivatives_ordersapi_sbe_v1_8.order_replaced_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Order Replaced Message
coinbase_derivatives_ordersapi_sbe_v1_8.order_replaced_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Timestamp: 8 Byte Signed Fixed Width Integer
  index, timestamp = coinbase_derivatives_ordersapi_sbe_v1_8.timestamp.dissect(buffer, index, packet, parent)

  -- Exec Id: 8 Byte Signed Fixed Width Integer
  index, exec_id = coinbase_derivatives_ordersapi_sbe_v1_8.exec_id.dissect(buffer, index, packet, parent)

  -- Client Order Id: 8 Byte Signed Fixed Width Integer
  index, client_order_id = coinbase_derivatives_ordersapi_sbe_v1_8.client_order_id.dissect(buffer, index, packet, parent)

  -- Correlation Id: 8 Byte Signed Fixed Width Integer
  index, correlation_id = coinbase_derivatives_ordersapi_sbe_v1_8.correlation_id.dissect(buffer, index, packet, parent)

  -- Order Id: 8 Byte Signed Fixed Width Integer
  index, order_id = coinbase_derivatives_ordersapi_sbe_v1_8.order_id.dissect(buffer, index, packet, parent)

  -- Receive Time: 8 Byte Signed Fixed Width Integer
  index, receive_time = coinbase_derivatives_ordersapi_sbe_v1_8.receive_time.dissect(buffer, index, packet, parent)

  -- Total Filled: 4 Byte Signed Fixed Width Integer
  index, total_filled = coinbase_derivatives_ordersapi_sbe_v1_8.total_filled.dissect(buffer, index, packet, parent)

  -- Available Qty: 4 Byte Signed Fixed Width Integer
  index, available_qty = coinbase_derivatives_ordersapi_sbe_v1_8.available_qty.dissect(buffer, index, packet, parent)

  -- Instrument Id: 4 Byte Signed Fixed Width Integer
  index, instrument_id = coinbase_derivatives_ordersapi_sbe_v1_8.instrument_id.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Order Replaced Message
coinbase_derivatives_ordersapi_sbe_v1_8.order_replaced_message.dissect = function(buffer, offset, packet, parent)
  if show.order_replaced_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_coinbase_derivatives_ordersapi_sbe_v1_8.fields.order_replaced_message, buffer(offset, 0))
    local index = coinbase_derivatives_ordersapi_sbe_v1_8.order_replaced_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = coinbase_derivatives_ordersapi_sbe_v1_8.order_replaced_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return coinbase_derivatives_ordersapi_sbe_v1_8.order_replaced_message.fields(buffer, offset, packet, parent)
  end
end

-- Order Reject Details
coinbase_derivatives_ordersapi_sbe_v1_8.order_reject_details = {}

-- Size Of: Order Reject Details
coinbase_derivatives_ordersapi_sbe_v1_8.order_reject_details.size = 47

-- Display: Order Reject Details
coinbase_derivatives_ordersapi_sbe_v1_8.order_reject_details.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Order Reject Details: No Value"
  end

  return "Order Reject Details: "..value
end

-- Dissect: Order Reject Details
coinbase_derivatives_ordersapi_sbe_v1_8.order_reject_details.dissect = function(buffer, offset, packet, parent)
  local length = coinbase_derivatives_ordersapi_sbe_v1_8.order_reject_details.size
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

  local display = coinbase_derivatives_ordersapi_sbe_v1_8.order_reject_details.display(value, buffer, offset, packet, parent)

  parent:add(omi_coinbase_derivatives_ordersapi_sbe_v1_8.fields.order_reject_details, range, value, display)

  return offset + length, value
end

-- Order Reject Reason
coinbase_derivatives_ordersapi_sbe_v1_8.order_reject_reason = {}

-- Size Of: Order Reject Reason
coinbase_derivatives_ordersapi_sbe_v1_8.order_reject_reason.size = 1

-- Display: Order Reject Reason
coinbase_derivatives_ordersapi_sbe_v1_8.order_reject_reason.display = function(value)
  if value == 1 then
    return "Order Reject Reason: Error (1)"
  end
  if value == 2 then
    return "Order Reject Reason: Invalid Instrument (2)"
  end
  if value == 3 then
    return "Order Reject Reason: Cl Ord Id In Use (3)"
  end
  if value == 8 then
    return "Order Reject Reason: Validation Failure (8)"
  end
  if value == 9 then
    return "Order Reject Reason: Unknown Order (9)"
  end

  return "Order Reject Reason: Unknown("..value..")"
end

-- Dissect: Order Reject Reason
coinbase_derivatives_ordersapi_sbe_v1_8.order_reject_reason.dissect = function(buffer, offset, packet, parent)
  local length = coinbase_derivatives_ordersapi_sbe_v1_8.order_reject_reason.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = coinbase_derivatives_ordersapi_sbe_v1_8.order_reject_reason.display(value, buffer, offset, packet, parent)

  parent:add(omi_coinbase_derivatives_ordersapi_sbe_v1_8.fields.order_reject_reason, range, value, display)

  return offset + length, value
end

-- Order Reject Message
coinbase_derivatives_ordersapi_sbe_v1_8.order_reject_message = {}

-- Size Of: Order Reject Message
coinbase_derivatives_ordersapi_sbe_v1_8.order_reject_message.size =
  coinbase_derivatives_ordersapi_sbe_v1_8.timestamp.size + 
  coinbase_derivatives_ordersapi_sbe_v1_8.client_order_id.size + 
  coinbase_derivatives_ordersapi_sbe_v1_8.correlation_id.size + 
  coinbase_derivatives_ordersapi_sbe_v1_8.order_id_optional.size + 
  coinbase_derivatives_ordersapi_sbe_v1_8.order_reject_reason.size + 
  coinbase_derivatives_ordersapi_sbe_v1_8.order_reject_details.size;

-- Display: Order Reject Message
coinbase_derivatives_ordersapi_sbe_v1_8.order_reject_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Order Reject Message
coinbase_derivatives_ordersapi_sbe_v1_8.order_reject_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Timestamp: 8 Byte Signed Fixed Width Integer
  index, timestamp = coinbase_derivatives_ordersapi_sbe_v1_8.timestamp.dissect(buffer, index, packet, parent)

  -- Client Order Id: 8 Byte Signed Fixed Width Integer
  index, client_order_id = coinbase_derivatives_ordersapi_sbe_v1_8.client_order_id.dissect(buffer, index, packet, parent)

  -- Correlation Id: 8 Byte Signed Fixed Width Integer
  index, correlation_id = coinbase_derivatives_ordersapi_sbe_v1_8.correlation_id.dissect(buffer, index, packet, parent)

  -- Order Id Optional: 8 Byte Signed Fixed Width Integer Nullable
  index, order_id_optional = coinbase_derivatives_ordersapi_sbe_v1_8.order_id_optional.dissect(buffer, index, packet, parent)

  -- Order Reject Reason: 1 Byte Unsigned Fixed Width Integer Enum with 5 values
  index, order_reject_reason = coinbase_derivatives_ordersapi_sbe_v1_8.order_reject_reason.dissect(buffer, index, packet, parent)

  -- Order Reject Details: 47 Byte Ascii String
  index, order_reject_details = coinbase_derivatives_ordersapi_sbe_v1_8.order_reject_details.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Order Reject Message
coinbase_derivatives_ordersapi_sbe_v1_8.order_reject_message.dissect = function(buffer, offset, packet, parent)
  if show.order_reject_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_coinbase_derivatives_ordersapi_sbe_v1_8.fields.order_reject_message, buffer(offset, 0))
    local index = coinbase_derivatives_ordersapi_sbe_v1_8.order_reject_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = coinbase_derivatives_ordersapi_sbe_v1_8.order_reject_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return coinbase_derivatives_ordersapi_sbe_v1_8.order_reject_message.fields(buffer, offset, packet, parent)
  end
end

-- Quantity
coinbase_derivatives_ordersapi_sbe_v1_8.quantity = {}

-- Size Of: Quantity
coinbase_derivatives_ordersapi_sbe_v1_8.quantity.size = 4

-- Display: Quantity
coinbase_derivatives_ordersapi_sbe_v1_8.quantity.display = function(value)
  return "Quantity: "..value
end

-- Dissect: Quantity
coinbase_derivatives_ordersapi_sbe_v1_8.quantity.dissect = function(buffer, offset, packet, parent)
  local length = coinbase_derivatives_ordersapi_sbe_v1_8.quantity.size
  local range = buffer(offset, length)
  local value = range:le_int()
  local display = coinbase_derivatives_ordersapi_sbe_v1_8.quantity.display(value, buffer, offset, packet, parent)

  parent:add(omi_coinbase_derivatives_ordersapi_sbe_v1_8.fields.quantity, range, value, display)

  return offset + length, value
end

-- Last Processed Fill Id
coinbase_derivatives_ordersapi_sbe_v1_8.last_processed_fill_id = {}

-- Size Of: Last Processed Fill Id
coinbase_derivatives_ordersapi_sbe_v1_8.last_processed_fill_id.size = 8

-- Display: Last Processed Fill Id
coinbase_derivatives_ordersapi_sbe_v1_8.last_processed_fill_id.display = function(value)
  -- Check if field has value
  if value == Int64(0x00000000, 0x80000000) then
    return "Last Processed Fill Id: No Value"
  end

  return "Last Processed Fill Id: "..value
end

-- Dissect: Last Processed Fill Id
coinbase_derivatives_ordersapi_sbe_v1_8.last_processed_fill_id.dissect = function(buffer, offset, packet, parent)
  local length = coinbase_derivatives_ordersapi_sbe_v1_8.last_processed_fill_id.size
  local range = buffer(offset, length)
  local value = range:le_int64()
  local display = coinbase_derivatives_ordersapi_sbe_v1_8.last_processed_fill_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_coinbase_derivatives_ordersapi_sbe_v1_8.fields.last_processed_fill_id, range, value, display)

  return offset + length, value
end

-- Obsolete Stream Order Message
coinbase_derivatives_ordersapi_sbe_v1_8.obsolete_stream_order_message = {}

-- Size Of: Obsolete Stream Order Message
coinbase_derivatives_ordersapi_sbe_v1_8.obsolete_stream_order_message.size =
  coinbase_derivatives_ordersapi_sbe_v1_8.client_order_id.size + 
  coinbase_derivatives_ordersapi_sbe_v1_8.correlation_id.size + 
  coinbase_derivatives_ordersapi_sbe_v1_8.last_processed_fill_id.size + 
  coinbase_derivatives_ordersapi_sbe_v1_8.limit_price.size + 
  coinbase_derivatives_ordersapi_sbe_v1_8.quantity.size + 
  coinbase_derivatives_ordersapi_sbe_v1_8.instrument_id.size + 
  coinbase_derivatives_ordersapi_sbe_v1_8.side.size;

-- Display: Obsolete Stream Order Message
coinbase_derivatives_ordersapi_sbe_v1_8.obsolete_stream_order_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Obsolete Stream Order Message
coinbase_derivatives_ordersapi_sbe_v1_8.obsolete_stream_order_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Client Order Id: 8 Byte Signed Fixed Width Integer
  index, client_order_id = coinbase_derivatives_ordersapi_sbe_v1_8.client_order_id.dissect(buffer, index, packet, parent)

  -- Correlation Id: 8 Byte Signed Fixed Width Integer
  index, correlation_id = coinbase_derivatives_ordersapi_sbe_v1_8.correlation_id.dissect(buffer, index, packet, parent)

  -- Last Processed Fill Id: 8 Byte Signed Fixed Width Integer Nullable
  index, last_processed_fill_id = coinbase_derivatives_ordersapi_sbe_v1_8.last_processed_fill_id.dissect(buffer, index, packet, parent)

  -- Limit Price: 8 Byte Signed Fixed Width Integer
  index, limit_price = coinbase_derivatives_ordersapi_sbe_v1_8.limit_price.dissect(buffer, index, packet, parent)

  -- Quantity: 4 Byte Signed Fixed Width Integer
  index, quantity = coinbase_derivatives_ordersapi_sbe_v1_8.quantity.dissect(buffer, index, packet, parent)

  -- Instrument Id: 4 Byte Signed Fixed Width Integer
  index, instrument_id = coinbase_derivatives_ordersapi_sbe_v1_8.instrument_id.dissect(buffer, index, packet, parent)

  -- Side: 1 Byte Signed Fixed Width Integer Enum with 2 values
  index, side = coinbase_derivatives_ordersapi_sbe_v1_8.side.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Obsolete Stream Order Message
coinbase_derivatives_ordersapi_sbe_v1_8.obsolete_stream_order_message.dissect = function(buffer, offset, packet, parent)
  if show.obsolete_stream_order_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_coinbase_derivatives_ordersapi_sbe_v1_8.fields.obsolete_stream_order_message, buffer(offset, 0))
    local index = coinbase_derivatives_ordersapi_sbe_v1_8.obsolete_stream_order_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = coinbase_derivatives_ordersapi_sbe_v1_8.obsolete_stream_order_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return coinbase_derivatives_ordersapi_sbe_v1_8.obsolete_stream_order_message.fields(buffer, offset, packet, parent)
  end
end

-- Time In Force
coinbase_derivatives_ordersapi_sbe_v1_8.time_in_force = {}

-- Size Of: Time In Force
coinbase_derivatives_ordersapi_sbe_v1_8.time_in_force.size = 1

-- Display: Time In Force
coinbase_derivatives_ordersapi_sbe_v1_8.time_in_force.display = function(value)
  if value == 0 then
    return "Time In Force: Day (0)"
  end
  if value == 1 then
    return "Time In Force: Good Till Date (1)"
  end
  if value == 128 then
    return "Time In Force: No Value"
  end

  return "Time In Force: Unknown("..value..")"
end

-- Dissect: Time In Force
coinbase_derivatives_ordersapi_sbe_v1_8.time_in_force.dissect = function(buffer, offset, packet, parent)
  local length = coinbase_derivatives_ordersapi_sbe_v1_8.time_in_force.size
  local range = buffer(offset, length)
  local value = range:le_int()
  local display = coinbase_derivatives_ordersapi_sbe_v1_8.time_in_force.display(value, buffer, offset, packet, parent)

  parent:add(omi_coinbase_derivatives_ordersapi_sbe_v1_8.fields.time_in_force, range, value, display)

  return offset + length, value
end

-- Good Til Date
coinbase_derivatives_ordersapi_sbe_v1_8.good_til_date = {}

-- Size Of: Good Til Date
coinbase_derivatives_ordersapi_sbe_v1_8.good_til_date.size = 2

-- Display: Good Til Date
coinbase_derivatives_ordersapi_sbe_v1_8.good_til_date.display = function(value)
  -- Check if field has value
  if value == 0 then
    return "Good Til Date: No Value"
  end

  return "Good Til Date: "..value
end

-- Dissect: Good Til Date
coinbase_derivatives_ordersapi_sbe_v1_8.good_til_date.dissect = function(buffer, offset, packet, parent)
  local length = coinbase_derivatives_ordersapi_sbe_v1_8.good_til_date.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = coinbase_derivatives_ordersapi_sbe_v1_8.good_til_date.display(value, buffer, offset, packet, parent)

  parent:add(omi_coinbase_derivatives_ordersapi_sbe_v1_8.fields.good_til_date, range, value, display)

  return offset + length, value
end

-- New Quantity
coinbase_derivatives_ordersapi_sbe_v1_8.new_quantity = {}

-- Size Of: New Quantity
coinbase_derivatives_ordersapi_sbe_v1_8.new_quantity.size = 4

-- Display: New Quantity
coinbase_derivatives_ordersapi_sbe_v1_8.new_quantity.display = function(value)
  -- Check if field has value
  if value == -2147483648 then
    return "New Quantity: No Value"
  end

  return "New Quantity: "..value
end

-- Dissect: New Quantity
coinbase_derivatives_ordersapi_sbe_v1_8.new_quantity.dissect = function(buffer, offset, packet, parent)
  local length = coinbase_derivatives_ordersapi_sbe_v1_8.new_quantity.size
  local range = buffer(offset, length)
  local value = range:le_int()
  local display = coinbase_derivatives_ordersapi_sbe_v1_8.new_quantity.display(value, buffer, offset, packet, parent)

  parent:add(omi_coinbase_derivatives_ordersapi_sbe_v1_8.fields.new_quantity, range, value, display)

  return offset + length, value
end

-- New Limit Price
coinbase_derivatives_ordersapi_sbe_v1_8.new_limit_price = {}

-- Size Of: New Limit Price
coinbase_derivatives_ordersapi_sbe_v1_8.new_limit_price.size = 8

-- Display: New Limit Price
coinbase_derivatives_ordersapi_sbe_v1_8.new_limit_price.display = function(raw, value)
  -- Check null sentinel value
  if raw == Int64(0x00000000, 0x80000000) then
    return "New Limit Price: No Value"
  end

  return "New Limit Price: "..value
end

-- Translate: New Limit Price
coinbase_derivatives_ordersapi_sbe_v1_8.new_limit_price.translate = function(raw)
  -- Check null sentinel value
  if raw == Int64(0x00000000, 0x80000000) then
    return 0/0
  end

  return raw:tonumber()/1000000000
end

-- Dissect: New Limit Price
coinbase_derivatives_ordersapi_sbe_v1_8.new_limit_price.dissect = function(buffer, offset, packet, parent)
  local length = coinbase_derivatives_ordersapi_sbe_v1_8.new_limit_price.size
  local range = buffer(offset, length)
  local raw = range:le_int64()
  local value = coinbase_derivatives_ordersapi_sbe_v1_8.new_limit_price.translate(raw)
  local display = coinbase_derivatives_ordersapi_sbe_v1_8.new_limit_price.display(raw, value, buffer, offset, packet, parent)

  parent:add(omi_coinbase_derivatives_ordersapi_sbe_v1_8.fields.new_limit_price, range, value, display)

  return offset + length, value
end

-- Replace Order Message
coinbase_derivatives_ordersapi_sbe_v1_8.replace_order_message = {}

-- Size Of: Replace Order Message
coinbase_derivatives_ordersapi_sbe_v1_8.replace_order_message.size =
  coinbase_derivatives_ordersapi_sbe_v1_8.client_order_id.size + 
  coinbase_derivatives_ordersapi_sbe_v1_8.correlation_id.size + 
  coinbase_derivatives_ordersapi_sbe_v1_8.new_limit_price.size + 
  coinbase_derivatives_ordersapi_sbe_v1_8.new_quantity.size + 
  coinbase_derivatives_ordersapi_sbe_v1_8.instrument_id.size + 
  coinbase_derivatives_ordersapi_sbe_v1_8.good_til_date.size + 
  coinbase_derivatives_ordersapi_sbe_v1_8.time_in_force.size;

-- Display: Replace Order Message
coinbase_derivatives_ordersapi_sbe_v1_8.replace_order_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Replace Order Message
coinbase_derivatives_ordersapi_sbe_v1_8.replace_order_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Client Order Id: 8 Byte Signed Fixed Width Integer
  index, client_order_id = coinbase_derivatives_ordersapi_sbe_v1_8.client_order_id.dissect(buffer, index, packet, parent)

  -- Correlation Id: 8 Byte Signed Fixed Width Integer
  index, correlation_id = coinbase_derivatives_ordersapi_sbe_v1_8.correlation_id.dissect(buffer, index, packet, parent)

  -- New Limit Price: 8 Byte Signed Fixed Width Integer Nullable
  index, new_limit_price = coinbase_derivatives_ordersapi_sbe_v1_8.new_limit_price.dissect(buffer, index, packet, parent)

  -- New Quantity: 4 Byte Signed Fixed Width Integer Nullable
  index, new_quantity = coinbase_derivatives_ordersapi_sbe_v1_8.new_quantity.dissect(buffer, index, packet, parent)

  -- Instrument Id: 4 Byte Signed Fixed Width Integer
  index, instrument_id = coinbase_derivatives_ordersapi_sbe_v1_8.instrument_id.dissect(buffer, index, packet, parent)

  -- Good Til Date: 2 Byte Unsigned Fixed Width Integer Nullable
  index, good_til_date = coinbase_derivatives_ordersapi_sbe_v1_8.good_til_date.dissect(buffer, index, packet, parent)

  -- Time In Force: 1 Byte Signed Fixed Width Integer Enum with 3 values
  index, time_in_force = coinbase_derivatives_ordersapi_sbe_v1_8.time_in_force.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Replace Order Message
coinbase_derivatives_ordersapi_sbe_v1_8.replace_order_message.dissect = function(buffer, offset, packet, parent)
  if show.replace_order_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_coinbase_derivatives_ordersapi_sbe_v1_8.fields.replace_order_message, buffer(offset, 0))
    local index = coinbase_derivatives_ordersapi_sbe_v1_8.replace_order_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = coinbase_derivatives_ordersapi_sbe_v1_8.replace_order_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return coinbase_derivatives_ordersapi_sbe_v1_8.replace_order_message.fields(buffer, offset, packet, parent)
  end
end

-- Order Entered Message
coinbase_derivatives_ordersapi_sbe_v1_8.order_entered_message = {}

-- Size Of: Order Entered Message
coinbase_derivatives_ordersapi_sbe_v1_8.order_entered_message.size =
  coinbase_derivatives_ordersapi_sbe_v1_8.timestamp.size + 
  coinbase_derivatives_ordersapi_sbe_v1_8.exec_id.size + 
  coinbase_derivatives_ordersapi_sbe_v1_8.client_order_id.size + 
  coinbase_derivatives_ordersapi_sbe_v1_8.correlation_id.size + 
  coinbase_derivatives_ordersapi_sbe_v1_8.order_id.size + 
  coinbase_derivatives_ordersapi_sbe_v1_8.receive_time.size;

-- Display: Order Entered Message
coinbase_derivatives_ordersapi_sbe_v1_8.order_entered_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Order Entered Message
coinbase_derivatives_ordersapi_sbe_v1_8.order_entered_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Timestamp: 8 Byte Signed Fixed Width Integer
  index, timestamp = coinbase_derivatives_ordersapi_sbe_v1_8.timestamp.dissect(buffer, index, packet, parent)

  -- Exec Id: 8 Byte Signed Fixed Width Integer
  index, exec_id = coinbase_derivatives_ordersapi_sbe_v1_8.exec_id.dissect(buffer, index, packet, parent)

  -- Client Order Id: 8 Byte Signed Fixed Width Integer
  index, client_order_id = coinbase_derivatives_ordersapi_sbe_v1_8.client_order_id.dissect(buffer, index, packet, parent)

  -- Correlation Id: 8 Byte Signed Fixed Width Integer
  index, correlation_id = coinbase_derivatives_ordersapi_sbe_v1_8.correlation_id.dissect(buffer, index, packet, parent)

  -- Order Id: 8 Byte Signed Fixed Width Integer
  index, order_id = coinbase_derivatives_ordersapi_sbe_v1_8.order_id.dissect(buffer, index, packet, parent)

  -- Receive Time: 8 Byte Signed Fixed Width Integer
  index, receive_time = coinbase_derivatives_ordersapi_sbe_v1_8.receive_time.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Order Entered Message
coinbase_derivatives_ordersapi_sbe_v1_8.order_entered_message.dissect = function(buffer, offset, packet, parent)
  if show.order_entered_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_coinbase_derivatives_ordersapi_sbe_v1_8.fields.order_entered_message, buffer(offset, 0))
    local index = coinbase_derivatives_ordersapi_sbe_v1_8.order_entered_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = coinbase_derivatives_ordersapi_sbe_v1_8.order_entered_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return coinbase_derivatives_ordersapi_sbe_v1_8.order_entered_message.fields(buffer, offset, packet, parent)
  end
end

-- Min Qty
coinbase_derivatives_ordersapi_sbe_v1_8.min_qty = {}

-- Size Of: Min Qty
coinbase_derivatives_ordersapi_sbe_v1_8.min_qty.size = 4

-- Display: Min Qty
coinbase_derivatives_ordersapi_sbe_v1_8.min_qty.display = function(value)
  -- Check if field has value
  if value == -2147483648 then
    return "Min Qty: No Value"
  end

  return "Min Qty: "..value
end

-- Dissect: Min Qty
coinbase_derivatives_ordersapi_sbe_v1_8.min_qty.dissect = function(buffer, offset, packet, parent)
  local length = coinbase_derivatives_ordersapi_sbe_v1_8.min_qty.size
  local range = buffer(offset, length)
  local value = range:le_int()
  local display = coinbase_derivatives_ordersapi_sbe_v1_8.min_qty.display(value, buffer, offset, packet, parent)

  parent:add(omi_coinbase_derivatives_ordersapi_sbe_v1_8.fields.min_qty, range, value, display)

  return offset + length, value
end

-- New Ioc Order Message
coinbase_derivatives_ordersapi_sbe_v1_8.new_ioc_order_message = {}

-- Size Of: New Ioc Order Message
coinbase_derivatives_ordersapi_sbe_v1_8.new_ioc_order_message.size =
  coinbase_derivatives_ordersapi_sbe_v1_8.client_order_id.size + 
  coinbase_derivatives_ordersapi_sbe_v1_8.correlation_id.size + 
  coinbase_derivatives_ordersapi_sbe_v1_8.limit_price.size + 
  coinbase_derivatives_ordersapi_sbe_v1_8.quantity.size + 
  coinbase_derivatives_ordersapi_sbe_v1_8.min_qty.size + 
  coinbase_derivatives_ordersapi_sbe_v1_8.instrument_id.size + 
  coinbase_derivatives_ordersapi_sbe_v1_8.side.size;

-- Display: New Ioc Order Message
coinbase_derivatives_ordersapi_sbe_v1_8.new_ioc_order_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: New Ioc Order Message
coinbase_derivatives_ordersapi_sbe_v1_8.new_ioc_order_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Client Order Id: 8 Byte Signed Fixed Width Integer
  index, client_order_id = coinbase_derivatives_ordersapi_sbe_v1_8.client_order_id.dissect(buffer, index, packet, parent)

  -- Correlation Id: 8 Byte Signed Fixed Width Integer
  index, correlation_id = coinbase_derivatives_ordersapi_sbe_v1_8.correlation_id.dissect(buffer, index, packet, parent)

  -- Limit Price: 8 Byte Signed Fixed Width Integer
  index, limit_price = coinbase_derivatives_ordersapi_sbe_v1_8.limit_price.dissect(buffer, index, packet, parent)

  -- Quantity: 4 Byte Signed Fixed Width Integer
  index, quantity = coinbase_derivatives_ordersapi_sbe_v1_8.quantity.dissect(buffer, index, packet, parent)

  -- Min Qty: 4 Byte Signed Fixed Width Integer Nullable
  index, min_qty = coinbase_derivatives_ordersapi_sbe_v1_8.min_qty.dissect(buffer, index, packet, parent)

  -- Instrument Id: 4 Byte Signed Fixed Width Integer
  index, instrument_id = coinbase_derivatives_ordersapi_sbe_v1_8.instrument_id.dissect(buffer, index, packet, parent)

  -- Side: 1 Byte Signed Fixed Width Integer Enum with 2 values
  index, side = coinbase_derivatives_ordersapi_sbe_v1_8.side.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: New Ioc Order Message
coinbase_derivatives_ordersapi_sbe_v1_8.new_ioc_order_message.dissect = function(buffer, offset, packet, parent)
  if show.new_ioc_order_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_coinbase_derivatives_ordersapi_sbe_v1_8.fields.new_ioc_order_message, buffer(offset, 0))
    local index = coinbase_derivatives_ordersapi_sbe_v1_8.new_ioc_order_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = coinbase_derivatives_ordersapi_sbe_v1_8.new_ioc_order_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return coinbase_derivatives_ordersapi_sbe_v1_8.new_ioc_order_message.fields(buffer, offset, packet, parent)
  end
end

-- Flags
coinbase_derivatives_ordersapi_sbe_v1_8.flags = {}

-- Size Of: Flags
coinbase_derivatives_ordersapi_sbe_v1_8.flags.size = 1

-- Display: Flags
coinbase_derivatives_ordersapi_sbe_v1_8.flags.display = function(buffer, packet, parent)
  local display = ""

  -- Is Post Only flag set?
  if buffer:bitfield(7) > 0 then
    display = display.."Post Only|"
  end

  return display:sub(1, -2)
end

-- Dissect Bit Fields: Flags
coinbase_derivatives_ordersapi_sbe_v1_8.flags.bits = function(buffer, offset, packet, parent)

  -- Reserved 7: 7 Bit
  parent:add(omi_coinbase_derivatives_ordersapi_sbe_v1_8.fields.reserved_7, buffer(offset, 1))

  -- Post Only: 1 Bit
  parent:add(omi_coinbase_derivatives_ordersapi_sbe_v1_8.fields.post_only, buffer(offset, 1))
end

-- Dissect: Flags
coinbase_derivatives_ordersapi_sbe_v1_8.flags.dissect = function(buffer, offset, packet, parent)
  local size = 1
  local range = buffer(offset, size)
  local display = coinbase_derivatives_ordersapi_sbe_v1_8.flags.display(range, packet, parent)
  local element = parent:add(omi_coinbase_derivatives_ordersapi_sbe_v1_8.fields.flags, range, display)

  if show.flags then
    coinbase_derivatives_ordersapi_sbe_v1_8.flags.bits(buffer, offset, packet, element)
  end

  return offset + 1, range
end

-- New Order Message
coinbase_derivatives_ordersapi_sbe_v1_8.new_order_message = {}

-- Size Of: New Order Message
coinbase_derivatives_ordersapi_sbe_v1_8.new_order_message.size =
  coinbase_derivatives_ordersapi_sbe_v1_8.client_order_id.size + 
  coinbase_derivatives_ordersapi_sbe_v1_8.correlation_id.size + 
  coinbase_derivatives_ordersapi_sbe_v1_8.limit_price.size + 
  coinbase_derivatives_ordersapi_sbe_v1_8.quantity.size + 
  coinbase_derivatives_ordersapi_sbe_v1_8.instrument_id.size + 
  coinbase_derivatives_ordersapi_sbe_v1_8.side.size + 
  coinbase_derivatives_ordersapi_sbe_v1_8.flags.size + 
  coinbase_derivatives_ordersapi_sbe_v1_8.good_til_date.size;

-- Display: New Order Message
coinbase_derivatives_ordersapi_sbe_v1_8.new_order_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: New Order Message
coinbase_derivatives_ordersapi_sbe_v1_8.new_order_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Client Order Id: 8 Byte Signed Fixed Width Integer
  index, client_order_id = coinbase_derivatives_ordersapi_sbe_v1_8.client_order_id.dissect(buffer, index, packet, parent)

  -- Correlation Id: 8 Byte Signed Fixed Width Integer
  index, correlation_id = coinbase_derivatives_ordersapi_sbe_v1_8.correlation_id.dissect(buffer, index, packet, parent)

  -- Limit Price: 8 Byte Signed Fixed Width Integer
  index, limit_price = coinbase_derivatives_ordersapi_sbe_v1_8.limit_price.dissect(buffer, index, packet, parent)

  -- Quantity: 4 Byte Signed Fixed Width Integer
  index, quantity = coinbase_derivatives_ordersapi_sbe_v1_8.quantity.dissect(buffer, index, packet, parent)

  -- Instrument Id: 4 Byte Signed Fixed Width Integer
  index, instrument_id = coinbase_derivatives_ordersapi_sbe_v1_8.instrument_id.dissect(buffer, index, packet, parent)

  -- Side: 1 Byte Signed Fixed Width Integer Enum with 2 values
  index, side = coinbase_derivatives_ordersapi_sbe_v1_8.side.dissect(buffer, index, packet, parent)

  -- Flags: Struct of 2 fields
  index, flags = coinbase_derivatives_ordersapi_sbe_v1_8.flags.dissect(buffer, index, packet, parent)

  -- Good Til Date: 2 Byte Unsigned Fixed Width Integer Nullable
  index, good_til_date = coinbase_derivatives_ordersapi_sbe_v1_8.good_til_date.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: New Order Message
coinbase_derivatives_ordersapi_sbe_v1_8.new_order_message.dissect = function(buffer, offset, packet, parent)
  if show.new_order_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_coinbase_derivatives_ordersapi_sbe_v1_8.fields.new_order_message, buffer(offset, 0))
    local index = coinbase_derivatives_ordersapi_sbe_v1_8.new_order_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = coinbase_derivatives_ordersapi_sbe_v1_8.new_order_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return coinbase_derivatives_ordersapi_sbe_v1_8.new_order_message.fields(buffer, offset, packet, parent)
  end
end

-- Set Ack Message
coinbase_derivatives_ordersapi_sbe_v1_8.set_ack_message = {}

-- Size Of: Set Ack Message
coinbase_derivatives_ordersapi_sbe_v1_8.set_ack_message.size =
  coinbase_derivatives_ordersapi_sbe_v1_8.correlation_id.size;

-- Display: Set Ack Message
coinbase_derivatives_ordersapi_sbe_v1_8.set_ack_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Set Ack Message
coinbase_derivatives_ordersapi_sbe_v1_8.set_ack_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Correlation Id: 8 Byte Signed Fixed Width Integer
  index, correlation_id = coinbase_derivatives_ordersapi_sbe_v1_8.correlation_id.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Set Ack Message
coinbase_derivatives_ordersapi_sbe_v1_8.set_ack_message.dissect = function(buffer, offset, packet, parent)
  if show.set_ack_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_coinbase_derivatives_ordersapi_sbe_v1_8.fields.set_ack_message, buffer(offset, 0))
    local index = coinbase_derivatives_ordersapi_sbe_v1_8.set_ack_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = coinbase_derivatives_ordersapi_sbe_v1_8.set_ack_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return coinbase_derivatives_ordersapi_sbe_v1_8.set_ack_message.fields(buffer, offset, packet, parent)
  end
end

-- Trader
coinbase_derivatives_ordersapi_sbe_v1_8.trader = {}

-- Size Of: Trader
coinbase_derivatives_ordersapi_sbe_v1_8.trader.size = 16

-- Display: Trader
coinbase_derivatives_ordersapi_sbe_v1_8.trader.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Trader: No Value"
  end

  return "Trader: "..value
end

-- Dissect: Trader
coinbase_derivatives_ordersapi_sbe_v1_8.trader.dissect = function(buffer, offset, packet, parent)
  local length = coinbase_derivatives_ordersapi_sbe_v1_8.trader.size
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

  local display = coinbase_derivatives_ordersapi_sbe_v1_8.trader.display(value, buffer, offset, packet, parent)

  parent:add(omi_coinbase_derivatives_ordersapi_sbe_v1_8.fields.trader, range, value, display)

  return offset + length, value
end

-- Set Trader Message
coinbase_derivatives_ordersapi_sbe_v1_8.set_trader_message = {}

-- Size Of: Set Trader Message
coinbase_derivatives_ordersapi_sbe_v1_8.set_trader_message.size =
  coinbase_derivatives_ordersapi_sbe_v1_8.correlation_id.size + 
  coinbase_derivatives_ordersapi_sbe_v1_8.trader.size;

-- Display: Set Trader Message
coinbase_derivatives_ordersapi_sbe_v1_8.set_trader_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Set Trader Message
coinbase_derivatives_ordersapi_sbe_v1_8.set_trader_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Correlation Id: 8 Byte Signed Fixed Width Integer
  index, correlation_id = coinbase_derivatives_ordersapi_sbe_v1_8.correlation_id.dissect(buffer, index, packet, parent)

  -- Trader: 16 Byte Ascii String
  index, trader = coinbase_derivatives_ordersapi_sbe_v1_8.trader.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Set Trader Message
coinbase_derivatives_ordersapi_sbe_v1_8.set_trader_message.dissect = function(buffer, offset, packet, parent)
  if show.set_trader_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_coinbase_derivatives_ordersapi_sbe_v1_8.fields.set_trader_message, buffer(offset, 0))
    local index = coinbase_derivatives_ordersapi_sbe_v1_8.set_trader_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = coinbase_derivatives_ordersapi_sbe_v1_8.set_trader_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return coinbase_derivatives_ordersapi_sbe_v1_8.set_trader_message.fields(buffer, offset, packet, parent)
  end
end

-- Account
coinbase_derivatives_ordersapi_sbe_v1_8.account = {}

-- Size Of: Account
coinbase_derivatives_ordersapi_sbe_v1_8.account.size = 16

-- Display: Account
coinbase_derivatives_ordersapi_sbe_v1_8.account.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Account: No Value"
  end

  return "Account: "..value
end

-- Dissect: Account
coinbase_derivatives_ordersapi_sbe_v1_8.account.dissect = function(buffer, offset, packet, parent)
  local length = coinbase_derivatives_ordersapi_sbe_v1_8.account.size
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

  local display = coinbase_derivatives_ordersapi_sbe_v1_8.account.display(value, buffer, offset, packet, parent)

  parent:add(omi_coinbase_derivatives_ordersapi_sbe_v1_8.fields.account, range, value, display)

  return offset + length, value
end

-- Set Account Message
coinbase_derivatives_ordersapi_sbe_v1_8.set_account_message = {}

-- Size Of: Set Account Message
coinbase_derivatives_ordersapi_sbe_v1_8.set_account_message.size =
  coinbase_derivatives_ordersapi_sbe_v1_8.correlation_id.size + 
  coinbase_derivatives_ordersapi_sbe_v1_8.account.size;

-- Display: Set Account Message
coinbase_derivatives_ordersapi_sbe_v1_8.set_account_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Set Account Message
coinbase_derivatives_ordersapi_sbe_v1_8.set_account_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Correlation Id: 8 Byte Signed Fixed Width Integer
  index, correlation_id = coinbase_derivatives_ordersapi_sbe_v1_8.correlation_id.dissect(buffer, index, packet, parent)

  -- Account: 16 Byte Ascii String
  index, account = coinbase_derivatives_ordersapi_sbe_v1_8.account.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Set Account Message
coinbase_derivatives_ordersapi_sbe_v1_8.set_account_message.dissect = function(buffer, offset, packet, parent)
  if show.set_account_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_coinbase_derivatives_ordersapi_sbe_v1_8.fields.set_account_message, buffer(offset, 0))
    local index = coinbase_derivatives_ordersapi_sbe_v1_8.set_account_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = coinbase_derivatives_ordersapi_sbe_v1_8.set_account_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return coinbase_derivatives_ordersapi_sbe_v1_8.set_account_message.fields(buffer, offset, packet, parent)
  end
end

-- Symbol
coinbase_derivatives_ordersapi_sbe_v1_8.symbol = {}

-- Size Of: Symbol
coinbase_derivatives_ordersapi_sbe_v1_8.symbol.size = 32

-- Display: Symbol
coinbase_derivatives_ordersapi_sbe_v1_8.symbol.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Symbol: No Value"
  end

  return "Symbol: "..value
end

-- Dissect: Symbol
coinbase_derivatives_ordersapi_sbe_v1_8.symbol.dissect = function(buffer, offset, packet, parent)
  local length = coinbase_derivatives_ordersapi_sbe_v1_8.symbol.size
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

  local display = coinbase_derivatives_ordersapi_sbe_v1_8.symbol.display(value, buffer, offset, packet, parent)

  parent:add(omi_coinbase_derivatives_ordersapi_sbe_v1_8.fields.symbol, range, value, display)

  return offset + length, value
end

-- Reserved Byte
coinbase_derivatives_ordersapi_sbe_v1_8.reserved_byte = {}

-- Size Of: Reserved Byte
coinbase_derivatives_ordersapi_sbe_v1_8.reserved_byte.size = 1

-- Display: Reserved Byte
coinbase_derivatives_ordersapi_sbe_v1_8.reserved_byte.display = function(value)
  return "Reserved Byte: "..value
end

-- Dissect: Reserved Byte
coinbase_derivatives_ordersapi_sbe_v1_8.reserved_byte.dissect = function(buffer, offset, packet, parent)
  local length = coinbase_derivatives_ordersapi_sbe_v1_8.reserved_byte.size
  local range = buffer(offset, length)
  local value = range:le_int()
  local display = coinbase_derivatives_ordersapi_sbe_v1_8.reserved_byte.display(value, buffer, offset, packet, parent)

  parent:add(omi_coinbase_derivatives_ordersapi_sbe_v1_8.fields.reserved_byte, range, value, display)

  return offset + length, value
end

-- Is Last Message
coinbase_derivatives_ordersapi_sbe_v1_8.is_last_message = {}

-- Size Of: Is Last Message
coinbase_derivatives_ordersapi_sbe_v1_8.is_last_message.size = 1

-- Display: Is Last Message
coinbase_derivatives_ordersapi_sbe_v1_8.is_last_message.display = function(value)
  if value == 0 then
    return "Is Last Message: False (0)"
  end
  if value == 1 then
    return "Is Last Message: True (1)"
  end

  return "Is Last Message: Unknown("..value..")"
end

-- Dissect: Is Last Message
coinbase_derivatives_ordersapi_sbe_v1_8.is_last_message.dissect = function(buffer, offset, packet, parent)
  local length = coinbase_derivatives_ordersapi_sbe_v1_8.is_last_message.size
  local range = buffer(offset, length)
  local value = range:le_int()
  local display = coinbase_derivatives_ordersapi_sbe_v1_8.is_last_message.display(value, buffer, offset, packet, parent)

  parent:add(omi_coinbase_derivatives_ordersapi_sbe_v1_8.fields.is_last_message, range, value, display)

  return offset + length, value
end

-- Instrument Status
coinbase_derivatives_ordersapi_sbe_v1_8.instrument_status = {}

-- Size Of: Instrument Status
coinbase_derivatives_ordersapi_sbe_v1_8.instrument_status.size = 1

-- Display: Instrument Status
coinbase_derivatives_ordersapi_sbe_v1_8.instrument_status.display = function(value)
  if value == 1 then
    return "Instrument Status: Pre Open (1)"
  end
  if value == 2 then
    return "Instrument Status: Pre Open No Cancel (2)"
  end
  if value == 3 then
    return "Instrument Status: Ready To Trade (3)"
  end
  if value == 4 then
    return "Instrument Status: Trading Halt (4)"
  end
  if value == 5 then
    return "Instrument Status: Close (5)"
  end
  if value == 6 then
    return "Instrument Status: Post Close (6)"
  end

  return "Instrument Status: Unknown("..value..")"
end

-- Dissect: Instrument Status
coinbase_derivatives_ordersapi_sbe_v1_8.instrument_status.dissect = function(buffer, offset, packet, parent)
  local length = coinbase_derivatives_ordersapi_sbe_v1_8.instrument_status.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = coinbase_derivatives_ordersapi_sbe_v1_8.instrument_status.display(value, buffer, offset, packet, parent)

  parent:add(omi_coinbase_derivatives_ordersapi_sbe_v1_8.fields.instrument_status, range, value, display)

  return offset + length, value
end

-- Security Type
coinbase_derivatives_ordersapi_sbe_v1_8.security_type = {}

-- Size Of: Security Type
coinbase_derivatives_ordersapi_sbe_v1_8.security_type.size = 1

-- Display: Security Type
coinbase_derivatives_ordersapi_sbe_v1_8.security_type.display = function(value)
  if value == 0 then
    return "Security Type: Futures (0)"
  end
  if value == 1 then
    return "Security Type: Options (1)"
  end

  return "Security Type: Unknown("..value..")"
end

-- Dissect: Security Type
coinbase_derivatives_ordersapi_sbe_v1_8.security_type.dissect = function(buffer, offset, packet, parent)
  local length = coinbase_derivatives_ordersapi_sbe_v1_8.security_type.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = coinbase_derivatives_ordersapi_sbe_v1_8.security_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_coinbase_derivatives_ordersapi_sbe_v1_8.fields.security_type, range, value, display)

  return offset + length, value
end

-- Instrument Info Message
coinbase_derivatives_ordersapi_sbe_v1_8.instrument_info_message = {}

-- Size Of: Instrument Info Message
coinbase_derivatives_ordersapi_sbe_v1_8.instrument_info_message.size =
  coinbase_derivatives_ordersapi_sbe_v1_8.correlation_id.size + 
  coinbase_derivatives_ordersapi_sbe_v1_8.instrument_id.size + 
  coinbase_derivatives_ordersapi_sbe_v1_8.security_type.size + 
  coinbase_derivatives_ordersapi_sbe_v1_8.instrument_status.size + 
  coinbase_derivatives_ordersapi_sbe_v1_8.is_last_message.size + 
  coinbase_derivatives_ordersapi_sbe_v1_8.reserved_byte.size + 
  coinbase_derivatives_ordersapi_sbe_v1_8.symbol.size;

-- Display: Instrument Info Message
coinbase_derivatives_ordersapi_sbe_v1_8.instrument_info_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Instrument Info Message
coinbase_derivatives_ordersapi_sbe_v1_8.instrument_info_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Correlation Id: 8 Byte Signed Fixed Width Integer
  index, correlation_id = coinbase_derivatives_ordersapi_sbe_v1_8.correlation_id.dissect(buffer, index, packet, parent)

  -- Instrument Id: 4 Byte Signed Fixed Width Integer
  index, instrument_id = coinbase_derivatives_ordersapi_sbe_v1_8.instrument_id.dissect(buffer, index, packet, parent)

  -- Security Type: 1 Byte Unsigned Fixed Width Integer Enum with 2 values
  index, security_type = coinbase_derivatives_ordersapi_sbe_v1_8.security_type.dissect(buffer, index, packet, parent)

  -- Instrument Status: 1 Byte Unsigned Fixed Width Integer Enum with 6 values
  index, instrument_status = coinbase_derivatives_ordersapi_sbe_v1_8.instrument_status.dissect(buffer, index, packet, parent)

  -- Is Last Message: 1 Byte Signed Fixed Width Integer Enum with 2 values
  index, is_last_message = coinbase_derivatives_ordersapi_sbe_v1_8.is_last_message.dissect(buffer, index, packet, parent)

  -- Reserved Byte: 1 Byte Signed Fixed Width Integer
  index, reserved_byte = coinbase_derivatives_ordersapi_sbe_v1_8.reserved_byte.dissect(buffer, index, packet, parent)

  -- Symbol: 32 Byte Ascii String
  index, symbol = coinbase_derivatives_ordersapi_sbe_v1_8.symbol.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Instrument Info Message
coinbase_derivatives_ordersapi_sbe_v1_8.instrument_info_message.dissect = function(buffer, offset, packet, parent)
  if show.instrument_info_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_coinbase_derivatives_ordersapi_sbe_v1_8.fields.instrument_info_message, buffer(offset, 0))
    local index = coinbase_derivatives_ordersapi_sbe_v1_8.instrument_info_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = coinbase_derivatives_ordersapi_sbe_v1_8.instrument_info_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return coinbase_derivatives_ordersapi_sbe_v1_8.instrument_info_message.fields(buffer, offset, packet, parent)
  end
end

-- Instrument Info Request Message
coinbase_derivatives_ordersapi_sbe_v1_8.instrument_info_request_message = {}

-- Size Of: Instrument Info Request Message
coinbase_derivatives_ordersapi_sbe_v1_8.instrument_info_request_message.size =
  coinbase_derivatives_ordersapi_sbe_v1_8.correlation_id.size;

-- Display: Instrument Info Request Message
coinbase_derivatives_ordersapi_sbe_v1_8.instrument_info_request_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Instrument Info Request Message
coinbase_derivatives_ordersapi_sbe_v1_8.instrument_info_request_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Correlation Id: 8 Byte Signed Fixed Width Integer
  index, correlation_id = coinbase_derivatives_ordersapi_sbe_v1_8.correlation_id.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Instrument Info Request Message
coinbase_derivatives_ordersapi_sbe_v1_8.instrument_info_request_message.dissect = function(buffer, offset, packet, parent)
  if show.instrument_info_request_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_coinbase_derivatives_ordersapi_sbe_v1_8.fields.instrument_info_request_message, buffer(offset, 0))
    local index = coinbase_derivatives_ordersapi_sbe_v1_8.instrument_info_request_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = coinbase_derivatives_ordersapi_sbe_v1_8.instrument_info_request_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return coinbase_derivatives_ordersapi_sbe_v1_8.instrument_info_request_message.fields(buffer, offset, packet, parent)
  end
end

-- Data Value
coinbase_derivatives_ordersapi_sbe_v1_8.data_value = {}

-- Display: Data Value
coinbase_derivatives_ordersapi_sbe_v1_8.data_value.display = function(value)
  return "Data Value: "..value
end

-- Dissect runtime sized field: Data Value
coinbase_derivatives_ordersapi_sbe_v1_8.data_value.dissect = function(buffer, offset, packet, parent, size)
  local range = buffer(offset, size)
  local value = range:bytes():tohex(false, " ")
  local display = coinbase_derivatives_ordersapi_sbe_v1_8.data_value.display(value, packet, parent, size)

  parent:add(omi_coinbase_derivatives_ordersapi_sbe_v1_8.fields.data_value, range, value, display)

  return offset + size, value
end

-- Data Length
coinbase_derivatives_ordersapi_sbe_v1_8.data_length = {}

-- Size Of: Data Length
coinbase_derivatives_ordersapi_sbe_v1_8.data_length.size = 1

-- Display: Data Length
coinbase_derivatives_ordersapi_sbe_v1_8.data_length.display = function(value)
  return "Data Length: "..value
end

-- Dissect: Data Length
coinbase_derivatives_ordersapi_sbe_v1_8.data_length.dissect = function(buffer, offset, packet, parent)
  local length = coinbase_derivatives_ordersapi_sbe_v1_8.data_length.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = coinbase_derivatives_ordersapi_sbe_v1_8.data_length.display(value, buffer, offset, packet, parent)

  parent:add(omi_coinbase_derivatives_ordersapi_sbe_v1_8.fields.data_length, range, value, display)

  return offset + length, value
end

-- Data
coinbase_derivatives_ordersapi_sbe_v1_8.data = {}

-- Calculate size of: Data
coinbase_derivatives_ordersapi_sbe_v1_8.data.size = function(buffer, offset)
  local index = 0

  index = index + coinbase_derivatives_ordersapi_sbe_v1_8.data_length.size

  local data_length = buffer(offset + index - 1, 1):le_uint()

  if data_length > 0 then
    -- Parse runtime size of: Data Value
    index = index + buffer(offset + index - 1, 1):le_uint()

  end

  return index
end

-- Display: Data
coinbase_derivatives_ordersapi_sbe_v1_8.data.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Data
coinbase_derivatives_ordersapi_sbe_v1_8.data.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Data Length: 1 Byte Unsigned Fixed Width Integer
  index, data_length = coinbase_derivatives_ordersapi_sbe_v1_8.data_length.dissect(buffer, index, packet, parent)

  -- Runtime optional field: Data Value
  local data_value = nil

  local data_value_exists = data_length > 0

  if data_value_exists then

    -- Runtime Size Of: Data Value
    index, data_value = coinbase_derivatives_ordersapi_sbe_v1_8.data_value.dissect(buffer, index, packet, parent, data_length)
  end

  return index
end

-- Dissect: Data
coinbase_derivatives_ordersapi_sbe_v1_8.data.dissect = function(buffer, offset, packet, parent)
  -- Optionally add dynamic struct element to protocol tree
  if show.data then
    local length = coinbase_derivatives_ordersapi_sbe_v1_8.data.size(buffer, offset)
    local range = buffer(offset, length)
    local display = coinbase_derivatives_ordersapi_sbe_v1_8.data.display(buffer, packet, parent)
    parent = parent:add(omi_coinbase_derivatives_ordersapi_sbe_v1_8.fields.data, range, display)
  end

  return coinbase_derivatives_ordersapi_sbe_v1_8.data.fields(buffer, offset, packet, parent)
end

-- Trading Instrument Status
coinbase_derivatives_ordersapi_sbe_v1_8.trading_instrument_status = {}

-- Size Of: Trading Instrument Status
coinbase_derivatives_ordersapi_sbe_v1_8.trading_instrument_status.size = 1

-- Display: Trading Instrument Status
coinbase_derivatives_ordersapi_sbe_v1_8.trading_instrument_status.display = function(value)
  if value == 0 then
    return "Trading Instrument Status: Ok (0)"
  end
  if value == 1 then
    return "Trading Instrument Status: Temporarily Unavailable (1)"
  end
  if value == 2 then
    return "Trading Instrument Status: Back Pressured (2)"
  end

  return "Trading Instrument Status: Unknown("..value..")"
end

-- Dissect: Trading Instrument Status
coinbase_derivatives_ordersapi_sbe_v1_8.trading_instrument_status.dissect = function(buffer, offset, packet, parent)
  local length = coinbase_derivatives_ordersapi_sbe_v1_8.trading_instrument_status.size
  local range = buffer(offset, length)
  local value = range:le_int()
  local display = coinbase_derivatives_ordersapi_sbe_v1_8.trading_instrument_status.display(value, buffer, offset, packet, parent)

  parent:add(omi_coinbase_derivatives_ordersapi_sbe_v1_8.fields.trading_instrument_status, range, value, display)

  return offset + length, value
end

-- Server Time
coinbase_derivatives_ordersapi_sbe_v1_8.server_time = {}

-- Size Of: Server Time
coinbase_derivatives_ordersapi_sbe_v1_8.server_time.size = 8

-- Display: Server Time
coinbase_derivatives_ordersapi_sbe_v1_8.server_time.display = function(value)
  -- Parse unix timestamp
  local seconds = math.floor(value:tonumber()/1000000000)
  local nanoseconds = value:tonumber()%1000000000

  return "Server Time: "..os.date("%x %H:%M:%S.", seconds)..string.format("%09d", nanoseconds)
end

-- Dissect: Server Time
coinbase_derivatives_ordersapi_sbe_v1_8.server_time.dissect = function(buffer, offset, packet, parent)
  local length = coinbase_derivatives_ordersapi_sbe_v1_8.server_time.size
  local range = buffer(offset, length)
  local value = range:le_int64()
  local display = coinbase_derivatives_ordersapi_sbe_v1_8.server_time.display(value, buffer, offset, packet, parent)

  parent:add(omi_coinbase_derivatives_ordersapi_sbe_v1_8.fields.server_time, range, value, display)

  return offset + length, value
end

-- Request Time
coinbase_derivatives_ordersapi_sbe_v1_8.request_time = {}

-- Size Of: Request Time
coinbase_derivatives_ordersapi_sbe_v1_8.request_time.size = 8

-- Display: Request Time
coinbase_derivatives_ordersapi_sbe_v1_8.request_time.display = function(value)
  -- Parse unix timestamp
  local seconds = math.floor(value:tonumber()/1000000000)
  local nanoseconds = value:tonumber()%1000000000

  return "Request Time: "..os.date("%x %H:%M:%S.", seconds)..string.format("%09d", nanoseconds)
end

-- Dissect: Request Time
coinbase_derivatives_ordersapi_sbe_v1_8.request_time.dissect = function(buffer, offset, packet, parent)
  local length = coinbase_derivatives_ordersapi_sbe_v1_8.request_time.size
  local range = buffer(offset, length)
  local value = range:le_int64()
  local display = coinbase_derivatives_ordersapi_sbe_v1_8.request_time.display(value, buffer, offset, packet, parent)

  parent:add(omi_coinbase_derivatives_ordersapi_sbe_v1_8.fields.request_time, range, value, display)

  return offset + length, value
end

-- Pong Message
coinbase_derivatives_ordersapi_sbe_v1_8.pong_message = {}

-- Calculate size of: Pong Message
coinbase_derivatives_ordersapi_sbe_v1_8.pong_message.size = function(buffer, offset)
  local index = 0

  index = index + coinbase_derivatives_ordersapi_sbe_v1_8.correlation_id.size

  index = index + coinbase_derivatives_ordersapi_sbe_v1_8.request_time.size

  index = index + coinbase_derivatives_ordersapi_sbe_v1_8.server_time.size

  index = index + coinbase_derivatives_ordersapi_sbe_v1_8.trading_instrument_status.size

  index = index + coinbase_derivatives_ordersapi_sbe_v1_8.data.size(buffer, offset + index)

  return index
end

-- Display: Pong Message
coinbase_derivatives_ordersapi_sbe_v1_8.pong_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Pong Message
coinbase_derivatives_ordersapi_sbe_v1_8.pong_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Correlation Id: 8 Byte Signed Fixed Width Integer
  index, correlation_id = coinbase_derivatives_ordersapi_sbe_v1_8.correlation_id.dissect(buffer, index, packet, parent)

  -- Request Time: 8 Byte Signed Fixed Width Integer
  index, request_time = coinbase_derivatives_ordersapi_sbe_v1_8.request_time.dissect(buffer, index, packet, parent)

  -- Server Time: 8 Byte Signed Fixed Width Integer
  index, server_time = coinbase_derivatives_ordersapi_sbe_v1_8.server_time.dissect(buffer, index, packet, parent)

  -- Trading Instrument Status: 1 Byte Signed Fixed Width Integer Enum with 3 values
  index, trading_instrument_status = coinbase_derivatives_ordersapi_sbe_v1_8.trading_instrument_status.dissect(buffer, index, packet, parent)

  -- Data: Struct of 2 fields
  index, data = coinbase_derivatives_ordersapi_sbe_v1_8.data.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Pong Message
coinbase_derivatives_ordersapi_sbe_v1_8.pong_message.dissect = function(buffer, offset, packet, parent)
  -- Optionally add dynamic struct element to protocol tree
  if show.pong_message then
    local length = coinbase_derivatives_ordersapi_sbe_v1_8.pong_message.size(buffer, offset)
    local range = buffer(offset, length)
    local display = coinbase_derivatives_ordersapi_sbe_v1_8.pong_message.display(buffer, packet, parent)
    parent = parent:add(omi_coinbase_derivatives_ordersapi_sbe_v1_8.fields.pong_message, range, display)
  end

  return coinbase_derivatives_ordersapi_sbe_v1_8.pong_message.fields(buffer, offset, packet, parent)
end

-- Ping Message
coinbase_derivatives_ordersapi_sbe_v1_8.ping_message = {}

-- Calculate size of: Ping Message
coinbase_derivatives_ordersapi_sbe_v1_8.ping_message.size = function(buffer, offset)
  local index = 0

  index = index + coinbase_derivatives_ordersapi_sbe_v1_8.correlation_id.size

  index = index + coinbase_derivatives_ordersapi_sbe_v1_8.request_time.size

  index = index + coinbase_derivatives_ordersapi_sbe_v1_8.data.size(buffer, offset + index)

  return index
end

-- Display: Ping Message
coinbase_derivatives_ordersapi_sbe_v1_8.ping_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Ping Message
coinbase_derivatives_ordersapi_sbe_v1_8.ping_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Correlation Id: 8 Byte Signed Fixed Width Integer
  index, correlation_id = coinbase_derivatives_ordersapi_sbe_v1_8.correlation_id.dissect(buffer, index, packet, parent)

  -- Request Time: 8 Byte Signed Fixed Width Integer
  index, request_time = coinbase_derivatives_ordersapi_sbe_v1_8.request_time.dissect(buffer, index, packet, parent)

  -- Data: Struct of 2 fields
  index, data = coinbase_derivatives_ordersapi_sbe_v1_8.data.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Ping Message
coinbase_derivatives_ordersapi_sbe_v1_8.ping_message.dissect = function(buffer, offset, packet, parent)
  -- Optionally add dynamic struct element to protocol tree
  if show.ping_message then
    local length = coinbase_derivatives_ordersapi_sbe_v1_8.ping_message.size(buffer, offset)
    local range = buffer(offset, length)
    local display = coinbase_derivatives_ordersapi_sbe_v1_8.ping_message.display(buffer, packet, parent)
    parent = parent:add(omi_coinbase_derivatives_ordersapi_sbe_v1_8.fields.ping_message, range, display)
  end

  return coinbase_derivatives_ordersapi_sbe_v1_8.ping_message.fields(buffer, offset, packet, parent)
end

-- Details
coinbase_derivatives_ordersapi_sbe_v1_8.details = {}

-- Size Of: Details
coinbase_derivatives_ordersapi_sbe_v1_8.details.size = 64

-- Display: Details
coinbase_derivatives_ordersapi_sbe_v1_8.details.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Details: No Value"
  end

  return "Details: "..value
end

-- Dissect: Details
coinbase_derivatives_ordersapi_sbe_v1_8.details.dissect = function(buffer, offset, packet, parent)
  local length = coinbase_derivatives_ordersapi_sbe_v1_8.details.size
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

  local display = coinbase_derivatives_ordersapi_sbe_v1_8.details.display(value, buffer, offset, packet, parent)

  parent:add(omi_coinbase_derivatives_ordersapi_sbe_v1_8.fields.details, range, value, display)

  return offset + length, value
end

-- Reject Reason
coinbase_derivatives_ordersapi_sbe_v1_8.reject_reason = {}

-- Size Of: Reject Reason
coinbase_derivatives_ordersapi_sbe_v1_8.reject_reason.size = 4

-- Display: Reject Reason
coinbase_derivatives_ordersapi_sbe_v1_8.reject_reason.display = function(value)
  if value == 1 then
    return "Reject Reason: Invalid Schema Id (1)"
  end
  if value == 2 then
    return "Reject Reason: Invalid Template Id (2)"
  end
  if value == 3 then
    return "Reject Reason: Invalid Block Length (3)"
  end
  if value == 4 then
    return "Reject Reason: Invalid Field Value (4)"
  end

  return "Reject Reason: Unknown("..value..")"
end

-- Dissect: Reject Reason
coinbase_derivatives_ordersapi_sbe_v1_8.reject_reason.dissect = function(buffer, offset, packet, parent)
  local length = coinbase_derivatives_ordersapi_sbe_v1_8.reject_reason.size
  local range = buffer(offset, length)
  local value = range:le_int()
  local display = coinbase_derivatives_ordersapi_sbe_v1_8.reject_reason.display(value, buffer, offset, packet, parent)

  parent:add(omi_coinbase_derivatives_ordersapi_sbe_v1_8.fields.reject_reason, range, value, display)

  return offset + length, value
end

-- Ref Sequence Number
coinbase_derivatives_ordersapi_sbe_v1_8.ref_sequence_number = {}

-- Size Of: Ref Sequence Number
coinbase_derivatives_ordersapi_sbe_v1_8.ref_sequence_number.size = 4

-- Display: Ref Sequence Number
coinbase_derivatives_ordersapi_sbe_v1_8.ref_sequence_number.display = function(value)
  return "Ref Sequence Number: "..value
end

-- Dissect: Ref Sequence Number
coinbase_derivatives_ordersapi_sbe_v1_8.ref_sequence_number.dissect = function(buffer, offset, packet, parent)
  local length = coinbase_derivatives_ordersapi_sbe_v1_8.ref_sequence_number.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = coinbase_derivatives_ordersapi_sbe_v1_8.ref_sequence_number.display(value, buffer, offset, packet, parent)

  parent:add(omi_coinbase_derivatives_ordersapi_sbe_v1_8.fields.ref_sequence_number, range, value, display)

  return offset + length, value
end

-- Reject Message
coinbase_derivatives_ordersapi_sbe_v1_8.reject_message = {}

-- Size Of: Reject Message
coinbase_derivatives_ordersapi_sbe_v1_8.reject_message.size =
  coinbase_derivatives_ordersapi_sbe_v1_8.ref_sequence_number.size + 
  coinbase_derivatives_ordersapi_sbe_v1_8.reject_reason.size + 
  coinbase_derivatives_ordersapi_sbe_v1_8.details.size;

-- Display: Reject Message
coinbase_derivatives_ordersapi_sbe_v1_8.reject_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Reject Message
coinbase_derivatives_ordersapi_sbe_v1_8.reject_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Ref Sequence Number: 4 Byte Unsigned Fixed Width Integer
  index, ref_sequence_number = coinbase_derivatives_ordersapi_sbe_v1_8.ref_sequence_number.dissect(buffer, index, packet, parent)

  -- Reject Reason: 4 Byte Signed Fixed Width Integer Enum with 4 values
  index, reject_reason = coinbase_derivatives_ordersapi_sbe_v1_8.reject_reason.dissect(buffer, index, packet, parent)

  -- Details: 64 Byte Ascii String
  index, details = coinbase_derivatives_ordersapi_sbe_v1_8.details.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Reject Message
coinbase_derivatives_ordersapi_sbe_v1_8.reject_message.dissect = function(buffer, offset, packet, parent)
  if show.reject_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_coinbase_derivatives_ordersapi_sbe_v1_8.fields.reject_message, buffer(offset, 0))
    local index = coinbase_derivatives_ordersapi_sbe_v1_8.reject_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = coinbase_derivatives_ordersapi_sbe_v1_8.reject_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return coinbase_derivatives_ordersapi_sbe_v1_8.reject_message.fields(buffer, offset, packet, parent)
  end
end

-- Gap Fill Padding
coinbase_derivatives_ordersapi_sbe_v1_8.gap_fill_padding = {}

-- Size Of: Gap Fill Padding
coinbase_derivatives_ordersapi_sbe_v1_8.gap_fill_padding.size = 4

-- Display: Gap Fill Padding
coinbase_derivatives_ordersapi_sbe_v1_8.gap_fill_padding.display = function(value)
  return "Gap Fill Padding: "..value
end

-- Dissect: Gap Fill Padding
coinbase_derivatives_ordersapi_sbe_v1_8.gap_fill_padding.dissect = function(buffer, offset, packet, parent)
  local length = coinbase_derivatives_ordersapi_sbe_v1_8.gap_fill_padding.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = coinbase_derivatives_ordersapi_sbe_v1_8.gap_fill_padding.display(value, buffer, offset, packet, parent)

  parent:add(omi_coinbase_derivatives_ordersapi_sbe_v1_8.fields.gap_fill_padding, range, value, display)

  return offset + length, value
end

-- New Sequence Number
coinbase_derivatives_ordersapi_sbe_v1_8.new_sequence_number = {}

-- Size Of: New Sequence Number
coinbase_derivatives_ordersapi_sbe_v1_8.new_sequence_number.size = 4

-- Display: New Sequence Number
coinbase_derivatives_ordersapi_sbe_v1_8.new_sequence_number.display = function(value)
  return "New Sequence Number: "..value
end

-- Dissect: New Sequence Number
coinbase_derivatives_ordersapi_sbe_v1_8.new_sequence_number.dissect = function(buffer, offset, packet, parent)
  local length = coinbase_derivatives_ordersapi_sbe_v1_8.new_sequence_number.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = coinbase_derivatives_ordersapi_sbe_v1_8.new_sequence_number.display(value, buffer, offset, packet, parent)

  parent:add(omi_coinbase_derivatives_ordersapi_sbe_v1_8.fields.new_sequence_number, range, value, display)

  return offset + length, value
end

-- Gap Fill Message
coinbase_derivatives_ordersapi_sbe_v1_8.gap_fill_message = {}

-- Size Of: Gap Fill Message
coinbase_derivatives_ordersapi_sbe_v1_8.gap_fill_message.size =
  coinbase_derivatives_ordersapi_sbe_v1_8.new_sequence_number.size + 
  coinbase_derivatives_ordersapi_sbe_v1_8.gap_fill_padding.size;

-- Display: Gap Fill Message
coinbase_derivatives_ordersapi_sbe_v1_8.gap_fill_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Gap Fill Message
coinbase_derivatives_ordersapi_sbe_v1_8.gap_fill_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- New Sequence Number: 4 Byte Unsigned Fixed Width Integer
  index, new_sequence_number = coinbase_derivatives_ordersapi_sbe_v1_8.new_sequence_number.dissect(buffer, index, packet, parent)

  -- Gap Fill Padding: 4 Byte Unsigned Fixed Width Integer
  index, gap_fill_padding = coinbase_derivatives_ordersapi_sbe_v1_8.gap_fill_padding.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Gap Fill Message
coinbase_derivatives_ordersapi_sbe_v1_8.gap_fill_message.dissect = function(buffer, offset, packet, parent)
  if show.gap_fill_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_coinbase_derivatives_ordersapi_sbe_v1_8.fields.gap_fill_message, buffer(offset, 0))
    local index = coinbase_derivatives_ordersapi_sbe_v1_8.gap_fill_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = coinbase_derivatives_ordersapi_sbe_v1_8.gap_fill_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return coinbase_derivatives_ordersapi_sbe_v1_8.gap_fill_message.fields(buffer, offset, packet, parent)
  end
end

-- To Sequence Number
coinbase_derivatives_ordersapi_sbe_v1_8.to_sequence_number = {}

-- Size Of: To Sequence Number
coinbase_derivatives_ordersapi_sbe_v1_8.to_sequence_number.size = 4

-- Display: To Sequence Number
coinbase_derivatives_ordersapi_sbe_v1_8.to_sequence_number.display = function(value)
  return "To Sequence Number: "..value
end

-- Dissect: To Sequence Number
coinbase_derivatives_ordersapi_sbe_v1_8.to_sequence_number.dissect = function(buffer, offset, packet, parent)
  local length = coinbase_derivatives_ordersapi_sbe_v1_8.to_sequence_number.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = coinbase_derivatives_ordersapi_sbe_v1_8.to_sequence_number.display(value, buffer, offset, packet, parent)

  parent:add(omi_coinbase_derivatives_ordersapi_sbe_v1_8.fields.to_sequence_number, range, value, display)

  return offset + length, value
end

-- From Sequence Number
coinbase_derivatives_ordersapi_sbe_v1_8.from_sequence_number = {}

-- Size Of: From Sequence Number
coinbase_derivatives_ordersapi_sbe_v1_8.from_sequence_number.size = 4

-- Display: From Sequence Number
coinbase_derivatives_ordersapi_sbe_v1_8.from_sequence_number.display = function(value)
  return "From Sequence Number: "..value
end

-- Dissect: From Sequence Number
coinbase_derivatives_ordersapi_sbe_v1_8.from_sequence_number.dissect = function(buffer, offset, packet, parent)
  local length = coinbase_derivatives_ordersapi_sbe_v1_8.from_sequence_number.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = coinbase_derivatives_ordersapi_sbe_v1_8.from_sequence_number.display(value, buffer, offset, packet, parent)

  parent:add(omi_coinbase_derivatives_ordersapi_sbe_v1_8.fields.from_sequence_number, range, value, display)

  return offset + length, value
end

-- Resend Request Message
coinbase_derivatives_ordersapi_sbe_v1_8.resend_request_message = {}

-- Size Of: Resend Request Message
coinbase_derivatives_ordersapi_sbe_v1_8.resend_request_message.size =
  coinbase_derivatives_ordersapi_sbe_v1_8.from_sequence_number.size + 
  coinbase_derivatives_ordersapi_sbe_v1_8.to_sequence_number.size;

-- Display: Resend Request Message
coinbase_derivatives_ordersapi_sbe_v1_8.resend_request_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Resend Request Message
coinbase_derivatives_ordersapi_sbe_v1_8.resend_request_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- From Sequence Number: 4 Byte Unsigned Fixed Width Integer
  index, from_sequence_number = coinbase_derivatives_ordersapi_sbe_v1_8.from_sequence_number.dissect(buffer, index, packet, parent)

  -- To Sequence Number: 4 Byte Unsigned Fixed Width Integer
  index, to_sequence_number = coinbase_derivatives_ordersapi_sbe_v1_8.to_sequence_number.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Resend Request Message
coinbase_derivatives_ordersapi_sbe_v1_8.resend_request_message.dissect = function(buffer, offset, packet, parent)
  if show.resend_request_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_coinbase_derivatives_ordersapi_sbe_v1_8.fields.resend_request_message, buffer(offset, 0))
    local index = coinbase_derivatives_ordersapi_sbe_v1_8.resend_request_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = coinbase_derivatives_ordersapi_sbe_v1_8.resend_request_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return coinbase_derivatives_ordersapi_sbe_v1_8.resend_request_message.fields(buffer, offset, packet, parent)
  end
end

-- Test Request Message
coinbase_derivatives_ordersapi_sbe_v1_8.test_request_message = {}

-- Size Of: Test Request Message
coinbase_derivatives_ordersapi_sbe_v1_8.test_request_message.size =
  coinbase_derivatives_ordersapi_sbe_v1_8.correlation_id.size;

-- Display: Test Request Message
coinbase_derivatives_ordersapi_sbe_v1_8.test_request_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Test Request Message
coinbase_derivatives_ordersapi_sbe_v1_8.test_request_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Correlation Id: 8 Byte Signed Fixed Width Integer
  index, correlation_id = coinbase_derivatives_ordersapi_sbe_v1_8.correlation_id.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Test Request Message
coinbase_derivatives_ordersapi_sbe_v1_8.test_request_message.dissect = function(buffer, offset, packet, parent)
  if show.test_request_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_coinbase_derivatives_ordersapi_sbe_v1_8.fields.test_request_message, buffer(offset, 0))
    local index = coinbase_derivatives_ordersapi_sbe_v1_8.test_request_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = coinbase_derivatives_ordersapi_sbe_v1_8.test_request_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return coinbase_derivatives_ordersapi_sbe_v1_8.test_request_message.fields(buffer, offset, packet, parent)
  end
end

-- Heartbeat Message
coinbase_derivatives_ordersapi_sbe_v1_8.heartbeat_message = {}

-- Size Of: Heartbeat Message
coinbase_derivatives_ordersapi_sbe_v1_8.heartbeat_message.size =
  coinbase_derivatives_ordersapi_sbe_v1_8.correlation_id.size;

-- Display: Heartbeat Message
coinbase_derivatives_ordersapi_sbe_v1_8.heartbeat_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Heartbeat Message
coinbase_derivatives_ordersapi_sbe_v1_8.heartbeat_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Correlation Id: 8 Byte Signed Fixed Width Integer
  index, correlation_id = coinbase_derivatives_ordersapi_sbe_v1_8.correlation_id.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Heartbeat Message
coinbase_derivatives_ordersapi_sbe_v1_8.heartbeat_message.dissect = function(buffer, offset, packet, parent)
  if show.heartbeat_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_coinbase_derivatives_ordersapi_sbe_v1_8.fields.heartbeat_message, buffer(offset, 0))
    local index = coinbase_derivatives_ordersapi_sbe_v1_8.heartbeat_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = coinbase_derivatives_ordersapi_sbe_v1_8.heartbeat_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return coinbase_derivatives_ordersapi_sbe_v1_8.heartbeat_message.fields(buffer, offset, packet, parent)
  end
end

-- Reason String 64
coinbase_derivatives_ordersapi_sbe_v1_8.reason_string_64 = {}

-- Size Of: Reason String 64
coinbase_derivatives_ordersapi_sbe_v1_8.reason_string_64.size = 64

-- Display: Reason String 64
coinbase_derivatives_ordersapi_sbe_v1_8.reason_string_64.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Reason String 64: No Value"
  end

  return "Reason String 64: "..value
end

-- Dissect: Reason String 64
coinbase_derivatives_ordersapi_sbe_v1_8.reason_string_64.dissect = function(buffer, offset, packet, parent)
  local length = coinbase_derivatives_ordersapi_sbe_v1_8.reason_string_64.size
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

  local display = coinbase_derivatives_ordersapi_sbe_v1_8.reason_string_64.display(value, buffer, offset, packet, parent)

  parent:add(omi_coinbase_derivatives_ordersapi_sbe_v1_8.fields.reason_string_64, range, value, display)

  return offset + length, value
end

-- Logged Out Message
coinbase_derivatives_ordersapi_sbe_v1_8.logged_out_message = {}

-- Size Of: Logged Out Message
coinbase_derivatives_ordersapi_sbe_v1_8.logged_out_message.size =
  coinbase_derivatives_ordersapi_sbe_v1_8.reason_string_64.size;

-- Display: Logged Out Message
coinbase_derivatives_ordersapi_sbe_v1_8.logged_out_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Logged Out Message
coinbase_derivatives_ordersapi_sbe_v1_8.logged_out_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Reason String 64: 64 Byte Ascii String
  index, reason_string_64 = coinbase_derivatives_ordersapi_sbe_v1_8.reason_string_64.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Logged Out Message
coinbase_derivatives_ordersapi_sbe_v1_8.logged_out_message.dissect = function(buffer, offset, packet, parent)
  if show.logged_out_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_coinbase_derivatives_ordersapi_sbe_v1_8.fields.logged_out_message, buffer(offset, 0))
    local index = coinbase_derivatives_ordersapi_sbe_v1_8.logged_out_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = coinbase_derivatives_ordersapi_sbe_v1_8.logged_out_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return coinbase_derivatives_ordersapi_sbe_v1_8.logged_out_message.fields(buffer, offset, packet, parent)
  end
end

-- Logout Message
coinbase_derivatives_ordersapi_sbe_v1_8.logout_message = {}

-- Size Of: Logout Message
coinbase_derivatives_ordersapi_sbe_v1_8.logout_message.size =
  coinbase_derivatives_ordersapi_sbe_v1_8.reason_string_64.size;

-- Display: Logout Message
coinbase_derivatives_ordersapi_sbe_v1_8.logout_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Logout Message
coinbase_derivatives_ordersapi_sbe_v1_8.logout_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Reason String 64: 64 Byte Ascii String
  index, reason_string_64 = coinbase_derivatives_ordersapi_sbe_v1_8.reason_string_64.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Logout Message
coinbase_derivatives_ordersapi_sbe_v1_8.logout_message.dissect = function(buffer, offset, packet, parent)
  if show.logout_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_coinbase_derivatives_ordersapi_sbe_v1_8.fields.logout_message, buffer(offset, 0))
    local index = coinbase_derivatives_ordersapi_sbe_v1_8.logout_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = coinbase_derivatives_ordersapi_sbe_v1_8.logout_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return coinbase_derivatives_ordersapi_sbe_v1_8.logout_message.fields(buffer, offset, packet, parent)
  end
end

-- Heartbeat Interval Seconds
coinbase_derivatives_ordersapi_sbe_v1_8.heartbeat_interval_seconds = {}

-- Size Of: Heartbeat Interval Seconds
coinbase_derivatives_ordersapi_sbe_v1_8.heartbeat_interval_seconds.size = 4

-- Display: Heartbeat Interval Seconds
coinbase_derivatives_ordersapi_sbe_v1_8.heartbeat_interval_seconds.display = function(value)
  return "Heartbeat Interval Seconds: "..value
end

-- Dissect: Heartbeat Interval Seconds
coinbase_derivatives_ordersapi_sbe_v1_8.heartbeat_interval_seconds.dissect = function(buffer, offset, packet, parent)
  local length = coinbase_derivatives_ordersapi_sbe_v1_8.heartbeat_interval_seconds.size
  local range = buffer(offset, length)
  local value = range:le_int()
  local display = coinbase_derivatives_ordersapi_sbe_v1_8.heartbeat_interval_seconds.display(value, buffer, offset, packet, parent)

  parent:add(omi_coinbase_derivatives_ordersapi_sbe_v1_8.fields.heartbeat_interval_seconds, range, value, display)

  return offset + length, value
end

-- Logon Conf Message
coinbase_derivatives_ordersapi_sbe_v1_8.logon_conf_message = {}

-- Size Of: Logon Conf Message
coinbase_derivatives_ordersapi_sbe_v1_8.logon_conf_message.size =
  coinbase_derivatives_ordersapi_sbe_v1_8.heartbeat_interval_seconds.size;

-- Display: Logon Conf Message
coinbase_derivatives_ordersapi_sbe_v1_8.logon_conf_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Logon Conf Message
coinbase_derivatives_ordersapi_sbe_v1_8.logon_conf_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Heartbeat Interval Seconds: 4 Byte Signed Fixed Width Integer
  index, heartbeat_interval_seconds = coinbase_derivatives_ordersapi_sbe_v1_8.heartbeat_interval_seconds.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Logon Conf Message
coinbase_derivatives_ordersapi_sbe_v1_8.logon_conf_message.dissect = function(buffer, offset, packet, parent)
  if show.logon_conf_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_coinbase_derivatives_ordersapi_sbe_v1_8.fields.logon_conf_message, buffer(offset, 0))
    local index = coinbase_derivatives_ordersapi_sbe_v1_8.logon_conf_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = coinbase_derivatives_ordersapi_sbe_v1_8.logon_conf_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return coinbase_derivatives_ordersapi_sbe_v1_8.logon_conf_message.fields(buffer, offset, packet, parent)
  end
end

-- Reset Seq Num
coinbase_derivatives_ordersapi_sbe_v1_8.reset_seq_num = {}

-- Size Of: Reset Seq Num
coinbase_derivatives_ordersapi_sbe_v1_8.reset_seq_num.size = 1

-- Display: Reset Seq Num
coinbase_derivatives_ordersapi_sbe_v1_8.reset_seq_num.display = function(value)
  if value == 0 then
    return "Reset Seq Num: False (0)"
  end
  if value == 1 then
    return "Reset Seq Num: True (1)"
  end

  return "Reset Seq Num: Unknown("..value..")"
end

-- Dissect: Reset Seq Num
coinbase_derivatives_ordersapi_sbe_v1_8.reset_seq_num.dissect = function(buffer, offset, packet, parent)
  local length = coinbase_derivatives_ordersapi_sbe_v1_8.reset_seq_num.size
  local range = buffer(offset, length)
  local value = range:le_int()
  local display = coinbase_derivatives_ordersapi_sbe_v1_8.reset_seq_num.display(value, buffer, offset, packet, parent)

  parent:add(omi_coinbase_derivatives_ordersapi_sbe_v1_8.fields.reset_seq_num, range, value, display)

  return offset + length, value
end

-- Password
coinbase_derivatives_ordersapi_sbe_v1_8.password = {}

-- Size Of: Password
coinbase_derivatives_ordersapi_sbe_v1_8.password.size = 32

-- Display: Password
coinbase_derivatives_ordersapi_sbe_v1_8.password.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Password: No Value"
  end

  return "Password: "..value
end

-- Dissect: Password
coinbase_derivatives_ordersapi_sbe_v1_8.password.dissect = function(buffer, offset, packet, parent)
  local length = coinbase_derivatives_ordersapi_sbe_v1_8.password.size
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

  local display = coinbase_derivatives_ordersapi_sbe_v1_8.password.display(value, buffer, offset, packet, parent)

  parent:add(omi_coinbase_derivatives_ordersapi_sbe_v1_8.fields.password, range, value, display)

  return offset + length, value
end

-- Username
coinbase_derivatives_ordersapi_sbe_v1_8.username = {}

-- Size Of: Username
coinbase_derivatives_ordersapi_sbe_v1_8.username.size = 16

-- Display: Username
coinbase_derivatives_ordersapi_sbe_v1_8.username.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Username: No Value"
  end

  return "Username: "..value
end

-- Dissect: Username
coinbase_derivatives_ordersapi_sbe_v1_8.username.dissect = function(buffer, offset, packet, parent)
  local length = coinbase_derivatives_ordersapi_sbe_v1_8.username.size
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

  local display = coinbase_derivatives_ordersapi_sbe_v1_8.username.display(value, buffer, offset, packet, parent)

  parent:add(omi_coinbase_derivatives_ordersapi_sbe_v1_8.fields.username, range, value, display)

  return offset + length, value
end

-- Logon Message
coinbase_derivatives_ordersapi_sbe_v1_8.logon_message = {}

-- Size Of: Logon Message
coinbase_derivatives_ordersapi_sbe_v1_8.logon_message.size =
  coinbase_derivatives_ordersapi_sbe_v1_8.username.size + 
  coinbase_derivatives_ordersapi_sbe_v1_8.password.size + 
  coinbase_derivatives_ordersapi_sbe_v1_8.reset_seq_num.size;

-- Display: Logon Message
coinbase_derivatives_ordersapi_sbe_v1_8.logon_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Logon Message
coinbase_derivatives_ordersapi_sbe_v1_8.logon_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Username: 16 Byte Ascii String
  index, username = coinbase_derivatives_ordersapi_sbe_v1_8.username.dissect(buffer, index, packet, parent)

  -- Password: 32 Byte Ascii String
  index, password = coinbase_derivatives_ordersapi_sbe_v1_8.password.dissect(buffer, index, packet, parent)

  -- Reset Seq Num: 1 Byte Signed Fixed Width Integer Enum with 2 values
  index, reset_seq_num = coinbase_derivatives_ordersapi_sbe_v1_8.reset_seq_num.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Logon Message
coinbase_derivatives_ordersapi_sbe_v1_8.logon_message.dissect = function(buffer, offset, packet, parent)
  if show.logon_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_coinbase_derivatives_ordersapi_sbe_v1_8.fields.logon_message, buffer(offset, 0))
    local index = coinbase_derivatives_ordersapi_sbe_v1_8.logon_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = coinbase_derivatives_ordersapi_sbe_v1_8.logon_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return coinbase_derivatives_ordersapi_sbe_v1_8.logon_message.fields(buffer, offset, packet, parent)
  end
end

-- Payload
coinbase_derivatives_ordersapi_sbe_v1_8.payload = {}

-- Calculate runtime size of: Payload
coinbase_derivatives_ordersapi_sbe_v1_8.payload.size = function(buffer, offset, template_id)
  -- Size of Logon Message
  if template_id == 100 then
    return coinbase_derivatives_ordersapi_sbe_v1_8.logon_message.size(buffer, offset)
  end
  -- Size of Logon Conf Message
  if template_id == 200 then
    return coinbase_derivatives_ordersapi_sbe_v1_8.logon_conf_message.size(buffer, offset)
  end
  -- Size of Logout Message
  if template_id == 101 then
    return coinbase_derivatives_ordersapi_sbe_v1_8.logout_message.size(buffer, offset)
  end
  -- Size of Logged Out Message
  if template_id == 201 then
    return coinbase_derivatives_ordersapi_sbe_v1_8.logged_out_message.size(buffer, offset)
  end
  -- Size of Heartbeat Message
  if template_id == 10 then
    return coinbase_derivatives_ordersapi_sbe_v1_8.heartbeat_message.size(buffer, offset)
  end
  -- Size of Test Request Message
  if template_id == 11 then
    return coinbase_derivatives_ordersapi_sbe_v1_8.test_request_message.size(buffer, offset)
  end
  -- Size of Resend Request Message
  if template_id == 102 then
    return coinbase_derivatives_ordersapi_sbe_v1_8.resend_request_message.size(buffer, offset)
  end
  -- Size of Gap Fill Message
  if template_id == 202 then
    return coinbase_derivatives_ordersapi_sbe_v1_8.gap_fill_message.size(buffer, offset)
  end
  -- Size of Reject Message
  if template_id == 210 then
    return coinbase_derivatives_ordersapi_sbe_v1_8.reject_message.size(buffer, offset)
  end
  -- Size of Ping Message
  if template_id == 102 then
    return coinbase_derivatives_ordersapi_sbe_v1_8.ping_message.size(buffer, offset)
  end
  -- Size of Pong Message
  if template_id == 202 then
    return coinbase_derivatives_ordersapi_sbe_v1_8.pong_message.size(buffer, offset)
  end
  -- Size of Instrument Info Request Message
  if template_id == 103 then
    return coinbase_derivatives_ordersapi_sbe_v1_8.instrument_info_request_message.size(buffer, offset)
  end
  -- Size of Instrument Info Message
  if template_id == 203 then
    return coinbase_derivatives_ordersapi_sbe_v1_8.instrument_info_message.size(buffer, offset)
  end
  -- Size of Set Account Message
  if template_id == 105 then
    return coinbase_derivatives_ordersapi_sbe_v1_8.set_account_message.size(buffer, offset)
  end
  -- Size of Set Trader Message
  if template_id == 106 then
    return coinbase_derivatives_ordersapi_sbe_v1_8.set_trader_message.size(buffer, offset)
  end
  -- Size of Set Ack Message
  if template_id == 205 then
    return coinbase_derivatives_ordersapi_sbe_v1_8.set_ack_message.size(buffer, offset)
  end
  -- Size of New Order Message
  if template_id == 110 then
    return coinbase_derivatives_ordersapi_sbe_v1_8.new_order_message.size(buffer, offset)
  end
  -- Size of New Ioc Order Message
  if template_id == 111 then
    return coinbase_derivatives_ordersapi_sbe_v1_8.new_ioc_order_message.size(buffer, offset)
  end
  -- Size of Order Entered Message
  if template_id == 210 then
    return coinbase_derivatives_ordersapi_sbe_v1_8.order_entered_message.size(buffer, offset)
  end
  -- Size of Replace Order Message
  if template_id == 120 then
    return coinbase_derivatives_ordersapi_sbe_v1_8.replace_order_message.size(buffer, offset)
  end
  -- Size of Obsolete Stream Order Message
  if template_id == 121 then
    return coinbase_derivatives_ordersapi_sbe_v1_8.obsolete_stream_order_message.size(buffer, offset)
  end
  -- Size of Order Reject Message
  if template_id == 221 then
    return coinbase_derivatives_ordersapi_sbe_v1_8.order_reject_message.size(buffer, offset)
  end
  -- Size of Order Replaced Message
  if template_id == 220 then
    return coinbase_derivatives_ordersapi_sbe_v1_8.order_replaced_message.size(buffer, offset)
  end
  -- Size of Cancel Order Message
  if template_id == 130 then
    return coinbase_derivatives_ordersapi_sbe_v1_8.cancel_order_message.size(buffer, offset)
  end
  -- Size of Order Canceled Message
  if template_id == 230 then
    return coinbase_derivatives_ordersapi_sbe_v1_8.order_canceled_message.size(buffer, offset)
  end
  -- Size of Cancel Order Reject Message
  if template_id == 233 then
    return coinbase_derivatives_ordersapi_sbe_v1_8.cancel_order_reject_message.size(buffer, offset)
  end
  -- Size of Mass Cancel Order Message
  if template_id == 131 then
    return coinbase_derivatives_ordersapi_sbe_v1_8.mass_cancel_order_message.size(buffer, offset)
  end
  -- Size of Mass Cancel Order Ack Message
  if template_id == 231 then
    return coinbase_derivatives_ordersapi_sbe_v1_8.mass_cancel_order_ack_message.size(buffer, offset)
  end
  -- Size of Mass Cancel Order Reject Message
  if template_id == 232 then
    return coinbase_derivatives_ordersapi_sbe_v1_8.mass_cancel_order_reject_message.size(buffer, offset)
  end
  -- Size of Unlock Trading Message
  if template_id == 132 then
    return coinbase_derivatives_ordersapi_sbe_v1_8.unlock_trading_message.size(buffer, offset)
  end
  -- Size of Unlock Trading Ack Message
  if template_id == 234 then
    return coinbase_derivatives_ordersapi_sbe_v1_8.unlock_trading_ack_message.size(buffer, offset)
  end
  -- Size of Unlock Trading Reject Message
  if template_id == 235 then
    return coinbase_derivatives_ordersapi_sbe_v1_8.unlock_trading_reject_message.size(buffer, offset)
  end
  -- Size of Order Filled Message
  if template_id == 240 then
    return coinbase_derivatives_ordersapi_sbe_v1_8.order_filled_message.size(buffer, offset)
  end
  -- Size of Spread Order Filled Message
  if template_id == 241 then
    return coinbase_derivatives_ordersapi_sbe_v1_8.spread_order_filled_message.size(buffer, offset)
  end
  -- Size of Last Exec Id Request Message
  if template_id == 150 then
    return coinbase_derivatives_ordersapi_sbe_v1_8.last_exec_id_request_message.size(buffer, offset)
  end
  -- Size of Last Exec Id Message
  if template_id == 250 then
    return coinbase_derivatives_ordersapi_sbe_v1_8.last_exec_id_message.size(buffer, offset)
  end
  -- Size of Event Resend Request Message
  if template_id == 152 then
    return coinbase_derivatives_ordersapi_sbe_v1_8.event_resend_request_message.size(buffer, offset)
  end
  -- Size of Event Resend Complete Message
  if template_id == 252 then
    return coinbase_derivatives_ordersapi_sbe_v1_8.event_resend_complete_message.size(buffer, offset)
  end
  -- Size of Event Resend Reject Message
  if template_id == 253 then
    return coinbase_derivatives_ordersapi_sbe_v1_8.event_resend_reject_message.size(buffer, offset)
  end
  -- Size of Reset Options Fill Protection Message
  if template_id == 160 then
    return coinbase_derivatives_ordersapi_sbe_v1_8.reset_options_fill_protection_message.size(buffer, offset)
  end
  -- Size of Reset Options Fill Protection Ack Message
  if template_id == 260 then
    return coinbase_derivatives_ordersapi_sbe_v1_8.reset_options_fill_protection_ack_message.size(buffer, offset)
  end
  -- Size of Reset Options Fill Protection Reject Message
  if template_id == 261 then
    return coinbase_derivatives_ordersapi_sbe_v1_8.reset_options_fill_protection_reject_message.size(buffer, offset)
  end

  return 0
end

-- Display: Payload
coinbase_derivatives_ordersapi_sbe_v1_8.payload.display = function(buffer, offset, packet, parent)
  return ""
end

-- Dissect Branches: Payload
coinbase_derivatives_ordersapi_sbe_v1_8.payload.branches = function(buffer, offset, packet, parent, template_id)
  -- Dissect Logon Message
  if template_id == 100 then
    return coinbase_derivatives_ordersapi_sbe_v1_8.logon_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Logon Conf Message
  if template_id == 200 then
    return coinbase_derivatives_ordersapi_sbe_v1_8.logon_conf_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Logout Message
  if template_id == 101 then
    return coinbase_derivatives_ordersapi_sbe_v1_8.logout_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Logged Out Message
  if template_id == 201 then
    return coinbase_derivatives_ordersapi_sbe_v1_8.logged_out_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Heartbeat Message
  if template_id == 10 then
    return coinbase_derivatives_ordersapi_sbe_v1_8.heartbeat_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Test Request Message
  if template_id == 11 then
    return coinbase_derivatives_ordersapi_sbe_v1_8.test_request_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Resend Request Message
  if template_id == 102 then
    return coinbase_derivatives_ordersapi_sbe_v1_8.resend_request_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Gap Fill Message
  if template_id == 202 then
    return coinbase_derivatives_ordersapi_sbe_v1_8.gap_fill_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Reject Message
  if template_id == 210 then
    return coinbase_derivatives_ordersapi_sbe_v1_8.reject_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Ping Message
  if template_id == 102 then
    return coinbase_derivatives_ordersapi_sbe_v1_8.ping_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Pong Message
  if template_id == 202 then
    return coinbase_derivatives_ordersapi_sbe_v1_8.pong_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Instrument Info Request Message
  if template_id == 103 then
    return coinbase_derivatives_ordersapi_sbe_v1_8.instrument_info_request_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Instrument Info Message
  if template_id == 203 then
    return coinbase_derivatives_ordersapi_sbe_v1_8.instrument_info_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Set Account Message
  if template_id == 105 then
    return coinbase_derivatives_ordersapi_sbe_v1_8.set_account_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Set Trader Message
  if template_id == 106 then
    return coinbase_derivatives_ordersapi_sbe_v1_8.set_trader_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Set Ack Message
  if template_id == 205 then
    return coinbase_derivatives_ordersapi_sbe_v1_8.set_ack_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect New Order Message
  if template_id == 110 then
    return coinbase_derivatives_ordersapi_sbe_v1_8.new_order_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect New Ioc Order Message
  if template_id == 111 then
    return coinbase_derivatives_ordersapi_sbe_v1_8.new_ioc_order_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Order Entered Message
  if template_id == 210 then
    return coinbase_derivatives_ordersapi_sbe_v1_8.order_entered_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Replace Order Message
  if template_id == 120 then
    return coinbase_derivatives_ordersapi_sbe_v1_8.replace_order_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Obsolete Stream Order Message
  if template_id == 121 then
    return coinbase_derivatives_ordersapi_sbe_v1_8.obsolete_stream_order_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Order Reject Message
  if template_id == 221 then
    return coinbase_derivatives_ordersapi_sbe_v1_8.order_reject_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Order Replaced Message
  if template_id == 220 then
    return coinbase_derivatives_ordersapi_sbe_v1_8.order_replaced_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Cancel Order Message
  if template_id == 130 then
    return coinbase_derivatives_ordersapi_sbe_v1_8.cancel_order_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Order Canceled Message
  if template_id == 230 then
    return coinbase_derivatives_ordersapi_sbe_v1_8.order_canceled_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Cancel Order Reject Message
  if template_id == 233 then
    return coinbase_derivatives_ordersapi_sbe_v1_8.cancel_order_reject_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Mass Cancel Order Message
  if template_id == 131 then
    return coinbase_derivatives_ordersapi_sbe_v1_8.mass_cancel_order_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Mass Cancel Order Ack Message
  if template_id == 231 then
    return coinbase_derivatives_ordersapi_sbe_v1_8.mass_cancel_order_ack_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Mass Cancel Order Reject Message
  if template_id == 232 then
    return coinbase_derivatives_ordersapi_sbe_v1_8.mass_cancel_order_reject_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Unlock Trading Message
  if template_id == 132 then
    return coinbase_derivatives_ordersapi_sbe_v1_8.unlock_trading_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Unlock Trading Ack Message
  if template_id == 234 then
    return coinbase_derivatives_ordersapi_sbe_v1_8.unlock_trading_ack_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Unlock Trading Reject Message
  if template_id == 235 then
    return coinbase_derivatives_ordersapi_sbe_v1_8.unlock_trading_reject_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Order Filled Message
  if template_id == 240 then
    return coinbase_derivatives_ordersapi_sbe_v1_8.order_filled_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Spread Order Filled Message
  if template_id == 241 then
    return coinbase_derivatives_ordersapi_sbe_v1_8.spread_order_filled_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Last Exec Id Request Message
  if template_id == 150 then
    return coinbase_derivatives_ordersapi_sbe_v1_8.last_exec_id_request_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Last Exec Id Message
  if template_id == 250 then
    return coinbase_derivatives_ordersapi_sbe_v1_8.last_exec_id_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Event Resend Request Message
  if template_id == 152 then
    return coinbase_derivatives_ordersapi_sbe_v1_8.event_resend_request_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Event Resend Complete Message
  if template_id == 252 then
    return coinbase_derivatives_ordersapi_sbe_v1_8.event_resend_complete_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Event Resend Reject Message
  if template_id == 253 then
    return coinbase_derivatives_ordersapi_sbe_v1_8.event_resend_reject_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Reset Options Fill Protection Message
  if template_id == 160 then
    return coinbase_derivatives_ordersapi_sbe_v1_8.reset_options_fill_protection_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Reset Options Fill Protection Ack Message
  if template_id == 260 then
    return coinbase_derivatives_ordersapi_sbe_v1_8.reset_options_fill_protection_ack_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Reset Options Fill Protection Reject Message
  if template_id == 261 then
    return coinbase_derivatives_ordersapi_sbe_v1_8.reset_options_fill_protection_reject_message.dissect(buffer, offset, packet, parent)
  end

  return offset
end

-- Dissect: Payload
coinbase_derivatives_ordersapi_sbe_v1_8.payload.dissect = function(buffer, offset, packet, parent, template_id)
  if not show.payload then
    return coinbase_derivatives_ordersapi_sbe_v1_8.payload.branches(buffer, offset, packet, parent, template_id)
  end

  -- Calculate size and check that branch is not empty
  local size = coinbase_derivatives_ordersapi_sbe_v1_8.payload.size(buffer, offset, template_id)
  if size == 0 then
    return offset
  end

  -- Dissect Element
  local range = buffer(offset, size)
  local display = coinbase_derivatives_ordersapi_sbe_v1_8.payload.display(buffer, packet, parent)
  local element = parent:add(omi_coinbase_derivatives_ordersapi_sbe_v1_8.fields.payload, range, display)

  return coinbase_derivatives_ordersapi_sbe_v1_8.payload.branches(buffer, offset, packet, parent, template_id)
end

-- Version
coinbase_derivatives_ordersapi_sbe_v1_8.version = {}

-- Size Of: Version
coinbase_derivatives_ordersapi_sbe_v1_8.version.size = 2

-- Display: Version
coinbase_derivatives_ordersapi_sbe_v1_8.version.display = function(value)
  return "Version: "..value
end

-- Dissect: Version
coinbase_derivatives_ordersapi_sbe_v1_8.version.dissect = function(buffer, offset, packet, parent)
  local length = coinbase_derivatives_ordersapi_sbe_v1_8.version.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = coinbase_derivatives_ordersapi_sbe_v1_8.version.display(value, buffer, offset, packet, parent)

  parent:add(omi_coinbase_derivatives_ordersapi_sbe_v1_8.fields.version, range, value, display)

  return offset + length, value
end

-- Schema Id
coinbase_derivatives_ordersapi_sbe_v1_8.schema_id = {}

-- Size Of: Schema Id
coinbase_derivatives_ordersapi_sbe_v1_8.schema_id.size = 2

-- Display: Schema Id
coinbase_derivatives_ordersapi_sbe_v1_8.schema_id.display = function(value)
  return "Schema Id: "..value
end

-- Dissect: Schema Id
coinbase_derivatives_ordersapi_sbe_v1_8.schema_id.dissect = function(buffer, offset, packet, parent)
  local length = coinbase_derivatives_ordersapi_sbe_v1_8.schema_id.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = coinbase_derivatives_ordersapi_sbe_v1_8.schema_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_coinbase_derivatives_ordersapi_sbe_v1_8.fields.schema_id, range, value, display)

  return offset + length, value
end

-- Template Id
coinbase_derivatives_ordersapi_sbe_v1_8.template_id = {}

-- Size Of: Template Id
coinbase_derivatives_ordersapi_sbe_v1_8.template_id.size = 2

-- Display: Template Id
coinbase_derivatives_ordersapi_sbe_v1_8.template_id.display = function(value)
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
  if value == 210 then
    return "Template Id: Reject Message (210)"
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
  if value == 111 then
    return "Template Id: New Ioc Order Message (111)"
  end
  if value == 210 then
    return "Template Id: Order Entered Message (210)"
  end
  if value == 120 then
    return "Template Id: Replace Order Message (120)"
  end
  if value == 121 then
    return "Template Id: Obsolete Stream Order Message (121)"
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
  if value == 160 then
    return "Template Id: Reset Options Fill Protection Message (160)"
  end
  if value == 260 then
    return "Template Id: Reset Options Fill Protection Ack Message (260)"
  end
  if value == 261 then
    return "Template Id: Reset Options Fill Protection Reject Message (261)"
  end

  return "Template Id: Unknown("..value..")"
end

-- Dissect: Template Id
coinbase_derivatives_ordersapi_sbe_v1_8.template_id.dissect = function(buffer, offset, packet, parent)
  local length = coinbase_derivatives_ordersapi_sbe_v1_8.template_id.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = coinbase_derivatives_ordersapi_sbe_v1_8.template_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_coinbase_derivatives_ordersapi_sbe_v1_8.fields.template_id, range, value, display)

  return offset + length, value
end

-- Block Length
coinbase_derivatives_ordersapi_sbe_v1_8.block_length = {}

-- Size Of: Block Length
coinbase_derivatives_ordersapi_sbe_v1_8.block_length.size = 2

-- Display: Block Length
coinbase_derivatives_ordersapi_sbe_v1_8.block_length.display = function(value)
  return "Block Length: "..value
end

-- Dissect: Block Length
coinbase_derivatives_ordersapi_sbe_v1_8.block_length.dissect = function(buffer, offset, packet, parent)
  local length = coinbase_derivatives_ordersapi_sbe_v1_8.block_length.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = coinbase_derivatives_ordersapi_sbe_v1_8.block_length.display(value, buffer, offset, packet, parent)

  parent:add(omi_coinbase_derivatives_ordersapi_sbe_v1_8.fields.block_length, range, value, display)

  return offset + length, value
end

-- Send Time Epoch Nanos
coinbase_derivatives_ordersapi_sbe_v1_8.send_time_epoch_nanos = {}

-- Size Of: Send Time Epoch Nanos
coinbase_derivatives_ordersapi_sbe_v1_8.send_time_epoch_nanos.size = 8

-- Display: Send Time Epoch Nanos
coinbase_derivatives_ordersapi_sbe_v1_8.send_time_epoch_nanos.display = function(value)
  -- Parse unix timestamp
  local seconds = math.floor(value:tonumber()/1000000000)
  local nanoseconds = value:tonumber()%1000000000

  return "Send Time Epoch Nanos: "..os.date("%x %H:%M:%S.", seconds)..string.format("%09d", nanoseconds)
end

-- Dissect: Send Time Epoch Nanos
coinbase_derivatives_ordersapi_sbe_v1_8.send_time_epoch_nanos.dissect = function(buffer, offset, packet, parent)
  local length = coinbase_derivatives_ordersapi_sbe_v1_8.send_time_epoch_nanos.size
  local range = buffer(offset, length)
  local value = range:le_int64()
  local display = coinbase_derivatives_ordersapi_sbe_v1_8.send_time_epoch_nanos.display(value, buffer, offset, packet, parent)

  parent:add(omi_coinbase_derivatives_ordersapi_sbe_v1_8.fields.send_time_epoch_nanos, range, value, display)

  return offset + length, value
end

-- Reserved
coinbase_derivatives_ordersapi_sbe_v1_8.reserved = {}

-- Size Of: Reserved
coinbase_derivatives_ordersapi_sbe_v1_8.reserved.size = 4

-- Display: Reserved
coinbase_derivatives_ordersapi_sbe_v1_8.reserved.display = function(value)
  return "Reserved: "..value
end

-- Dissect: Reserved
coinbase_derivatives_ordersapi_sbe_v1_8.reserved.dissect = function(buffer, offset, packet, parent)
  local length = coinbase_derivatives_ordersapi_sbe_v1_8.reserved.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = coinbase_derivatives_ordersapi_sbe_v1_8.reserved.display(value, buffer, offset, packet, parent)

  parent:add(omi_coinbase_derivatives_ordersapi_sbe_v1_8.fields.reserved, range, value, display)

  return offset + length, value
end

-- Last Processed Seq No
coinbase_derivatives_ordersapi_sbe_v1_8.last_processed_seq_no = {}

-- Size Of: Last Processed Seq No
coinbase_derivatives_ordersapi_sbe_v1_8.last_processed_seq_no.size = 4

-- Display: Last Processed Seq No
coinbase_derivatives_ordersapi_sbe_v1_8.last_processed_seq_no.display = function(value)
  return "Last Processed Seq No: "..value
end

-- Dissect: Last Processed Seq No
coinbase_derivatives_ordersapi_sbe_v1_8.last_processed_seq_no.dissect = function(buffer, offset, packet, parent)
  local length = coinbase_derivatives_ordersapi_sbe_v1_8.last_processed_seq_no.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = coinbase_derivatives_ordersapi_sbe_v1_8.last_processed_seq_no.display(value, buffer, offset, packet, parent)

  parent:add(omi_coinbase_derivatives_ordersapi_sbe_v1_8.fields.last_processed_seq_no, range, value, display)

  return offset + length, value
end

-- Sequence Number
coinbase_derivatives_ordersapi_sbe_v1_8.sequence_number = {}

-- Size Of: Sequence Number
coinbase_derivatives_ordersapi_sbe_v1_8.sequence_number.size = 4

-- Display: Sequence Number
coinbase_derivatives_ordersapi_sbe_v1_8.sequence_number.display = function(value)
  return "Sequence Number: "..value
end

-- Dissect: Sequence Number
coinbase_derivatives_ordersapi_sbe_v1_8.sequence_number.dissect = function(buffer, offset, packet, parent)
  local length = coinbase_derivatives_ordersapi_sbe_v1_8.sequence_number.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = coinbase_derivatives_ordersapi_sbe_v1_8.sequence_number.display(value, buffer, offset, packet, parent)

  parent:add(omi_coinbase_derivatives_ordersapi_sbe_v1_8.fields.sequence_number, range, value, display)

  return offset + length, value
end

-- Message Length
coinbase_derivatives_ordersapi_sbe_v1_8.message_length = {}

-- Size Of: Message Length
coinbase_derivatives_ordersapi_sbe_v1_8.message_length.size = 2

-- Display: Message Length
coinbase_derivatives_ordersapi_sbe_v1_8.message_length.display = function(value)
  return "Message Length: "..value
end

-- Dissect: Message Length
coinbase_derivatives_ordersapi_sbe_v1_8.message_length.dissect = function(buffer, offset, packet, parent)
  local length = coinbase_derivatives_ordersapi_sbe_v1_8.message_length.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = coinbase_derivatives_ordersapi_sbe_v1_8.message_length.display(value, buffer, offset, packet, parent)

  parent:add(omi_coinbase_derivatives_ordersapi_sbe_v1_8.fields.message_length, range, value, display)

  return offset + length, value
end

-- Message Flags
coinbase_derivatives_ordersapi_sbe_v1_8.message_flags = {}

-- Size Of: Message Flags
coinbase_derivatives_ordersapi_sbe_v1_8.message_flags.size = 1

-- Display: Message Flags
coinbase_derivatives_ordersapi_sbe_v1_8.message_flags.display = function(value)
  return "Message Flags: "..value
end

-- Dissect: Message Flags
coinbase_derivatives_ordersapi_sbe_v1_8.message_flags.dissect = function(buffer, offset, packet, parent)
  local length = coinbase_derivatives_ordersapi_sbe_v1_8.message_flags.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = coinbase_derivatives_ordersapi_sbe_v1_8.message_flags.display(value, buffer, offset, packet, parent)

  parent:add(omi_coinbase_derivatives_ordersapi_sbe_v1_8.fields.message_flags, range, value, display)

  return offset + length, value
end

-- Protocol Id
coinbase_derivatives_ordersapi_sbe_v1_8.protocol_id = {}

-- Size Of: Protocol Id
coinbase_derivatives_ordersapi_sbe_v1_8.protocol_id.size = 1

-- Display: Protocol Id
coinbase_derivatives_ordersapi_sbe_v1_8.protocol_id.display = function(value)
  return "Protocol Id: "..value
end

-- Dissect: Protocol Id
coinbase_derivatives_ordersapi_sbe_v1_8.protocol_id.dissect = function(buffer, offset, packet, parent)
  local length = coinbase_derivatives_ordersapi_sbe_v1_8.protocol_id.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = coinbase_derivatives_ordersapi_sbe_v1_8.protocol_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_coinbase_derivatives_ordersapi_sbe_v1_8.fields.protocol_id, range, value, display)

  return offset + length, value
end

-- Message Header
coinbase_derivatives_ordersapi_sbe_v1_8.message_header = {}

-- Size Of: Message Header
coinbase_derivatives_ordersapi_sbe_v1_8.message_header.size =
  coinbase_derivatives_ordersapi_sbe_v1_8.protocol_id.size + 
  coinbase_derivatives_ordersapi_sbe_v1_8.message_flags.size + 
  coinbase_derivatives_ordersapi_sbe_v1_8.message_length.size + 
  coinbase_derivatives_ordersapi_sbe_v1_8.sequence_number.size + 
  coinbase_derivatives_ordersapi_sbe_v1_8.last_processed_seq_no.size + 
  coinbase_derivatives_ordersapi_sbe_v1_8.reserved.size + 
  coinbase_derivatives_ordersapi_sbe_v1_8.send_time_epoch_nanos.size + 
  coinbase_derivatives_ordersapi_sbe_v1_8.block_length.size + 
  coinbase_derivatives_ordersapi_sbe_v1_8.template_id.size + 
  coinbase_derivatives_ordersapi_sbe_v1_8.schema_id.size + 
  coinbase_derivatives_ordersapi_sbe_v1_8.version.size;

-- Display: Message Header
coinbase_derivatives_ordersapi_sbe_v1_8.message_header.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Message Header
coinbase_derivatives_ordersapi_sbe_v1_8.message_header.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Protocol Id: 1 Byte Unsigned Fixed Width Integer
  index, protocol_id = coinbase_derivatives_ordersapi_sbe_v1_8.protocol_id.dissect(buffer, index, packet, parent)

  -- Message Flags: 1 Byte Unsigned Fixed Width Integer
  index, message_flags = coinbase_derivatives_ordersapi_sbe_v1_8.message_flags.dissect(buffer, index, packet, parent)

  -- Message Length: 2 Byte Unsigned Fixed Width Integer
  index, message_length = coinbase_derivatives_ordersapi_sbe_v1_8.message_length.dissect(buffer, index, packet, parent)

  -- Sequence Number: 4 Byte Unsigned Fixed Width Integer
  index, sequence_number = coinbase_derivatives_ordersapi_sbe_v1_8.sequence_number.dissect(buffer, index, packet, parent)

  -- Last Processed Seq No: 4 Byte Unsigned Fixed Width Integer
  index, last_processed_seq_no = coinbase_derivatives_ordersapi_sbe_v1_8.last_processed_seq_no.dissect(buffer, index, packet, parent)

  -- Reserved: 4 Byte Unsigned Fixed Width Integer
  index, reserved = coinbase_derivatives_ordersapi_sbe_v1_8.reserved.dissect(buffer, index, packet, parent)

  -- Send Time Epoch Nanos: 8 Byte Signed Fixed Width Integer
  index, send_time_epoch_nanos = coinbase_derivatives_ordersapi_sbe_v1_8.send_time_epoch_nanos.dissect(buffer, index, packet, parent)

  -- Block Length: 2 Byte Unsigned Fixed Width Integer
  index, block_length = coinbase_derivatives_ordersapi_sbe_v1_8.block_length.dissect(buffer, index, packet, parent)

  -- Template Id: 2 Byte Unsigned Fixed Width Integer Enum with 42 values
  index, template_id = coinbase_derivatives_ordersapi_sbe_v1_8.template_id.dissect(buffer, index, packet, parent)

  -- Schema Id: 2 Byte Unsigned Fixed Width Integer Static
  index, schema_id = coinbase_derivatives_ordersapi_sbe_v1_8.schema_id.dissect(buffer, index, packet, parent)

  -- Version: 2 Byte Unsigned Fixed Width Integer Static
  index, version = coinbase_derivatives_ordersapi_sbe_v1_8.version.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Message Header
coinbase_derivatives_ordersapi_sbe_v1_8.message_header.dissect = function(buffer, offset, packet, parent)
  if show.message_header then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_coinbase_derivatives_ordersapi_sbe_v1_8.fields.message_header, buffer(offset, 0))
    local index = coinbase_derivatives_ordersapi_sbe_v1_8.message_header.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = coinbase_derivatives_ordersapi_sbe_v1_8.message_header.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return coinbase_derivatives_ordersapi_sbe_v1_8.message_header.fields(buffer, offset, packet, parent)
  end
end

-- Sbe Message
coinbase_derivatives_ordersapi_sbe_v1_8.sbe_message = {}

-- Display: Sbe Message
coinbase_derivatives_ordersapi_sbe_v1_8.sbe_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Sbe Message
coinbase_derivatives_ordersapi_sbe_v1_8.sbe_message.fields = function(buffer, offset, packet, parent, size_of_sbe_message)
  local index = offset

  -- Message Header: Struct of 11 fields
  index, message_header = coinbase_derivatives_ordersapi_sbe_v1_8.message_header.dissect(buffer, index, packet, parent)

  -- Dependency element: Template Id
  local template_id = buffer(index - 6, 2):le_uint()

  -- Payload: Runtime Type with 42 branches
  index = coinbase_derivatives_ordersapi_sbe_v1_8.payload.dissect(buffer, index, packet, parent, template_id)

  -- Runtime optional field: Padding
  local padding = nil

  local padding_exists = message_length - (index - offset) > 0

  if padding_exists then

    -- Dependency element: Message Length
    local message_length = buffer(offset + 2, 2):le_uint()

    -- Runtime Size Of: Padding
    local size_of_padding = message_length - (index - offset)

    -- Padding: 0 Byte
    index, padding = coinbase_derivatives_ordersapi_sbe_v1_8.padding.dissect(buffer, index, packet, parent, size_of_padding)
  end

  return index
end

-- Dissect: Sbe Message
coinbase_derivatives_ordersapi_sbe_v1_8.sbe_message.dissect = function(buffer, offset, packet, parent, size_of_sbe_message)
  local index = offset + size_of_sbe_message

  -- Optionally add group/struct element to protocol tree
  if show.sbe_message then
    parent = parent:add(omi_coinbase_derivatives_ordersapi_sbe_v1_8.fields.sbe_message, buffer(offset, 0))
    local current = coinbase_derivatives_ordersapi_sbe_v1_8.sbe_message.fields(buffer, offset, packet, parent, size_of_sbe_message)
    parent:set_len(size_of_sbe_message)
    local display = coinbase_derivatives_ordersapi_sbe_v1_8.sbe_message.display(buffer, packet, parent)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    coinbase_derivatives_ordersapi_sbe_v1_8.sbe_message.fields(buffer, offset, packet, parent, size_of_sbe_message)

    return index
  end
end

-- Remaining Bytes For: Sbe Message
local sbe_message_bytes_remaining = function(buffer, index, available)
  -- Calculate the number of bytes remaining
  local remaining = available - index

  -- Check if packet size can be read
  if remaining < coinbase_derivatives_ordersapi_sbe_v1_8.message_header.size(buffer, index) then
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

-- Packet
coinbase_derivatives_ordersapi_sbe_v1_8.packet = {}

-- Dissect Packet
coinbase_derivatives_ordersapi_sbe_v1_8.packet.dissect = function(buffer, packet, parent)
  local index = 0

  -- Dependency for Sbe Message
  local end_of_payload = buffer:len()

  -- Sbe Message: Struct of 3 fields
  while index < end_of_payload do

    -- Are minimum number of bytes are available?
    local available, size_of_sbe_message = sbe_message_bytes_remaining(buffer, index, end_of_payload)

    if available > 0 then
      index = coinbase_derivatives_ordersapi_sbe_v1_8.sbe_message.dissect(buffer, index, packet, parent, size_of_sbe_message)
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
function omi_coinbase_derivatives_ordersapi_sbe_v1_8.init()
end

-- Dissector for Coinbase Derivatives OrdersApi Sbe 1.8
function omi_coinbase_derivatives_ordersapi_sbe_v1_8.dissector(buffer, packet, parent)

  -- Set protocol name
  packet.cols.protocol = omi_coinbase_derivatives_ordersapi_sbe_v1_8.name

  -- Dissect protocol
  local protocol = parent:add(omi_coinbase_derivatives_ordersapi_sbe_v1_8, buffer(), omi_coinbase_derivatives_ordersapi_sbe_v1_8.description, "("..buffer:len().." Bytes)")
  return coinbase_derivatives_ordersapi_sbe_v1_8.packet.dissect(buffer, packet, protocol)
end

-- Register With Tcp Table
local tcp_table = DissectorTable.get("tcp.port")
tcp_table:add(65333, omi_coinbase_derivatives_ordersapi_sbe_v1_8)


-----------------------------------------------------------------------
-- Protocol Heuristics
-----------------------------------------------------------------------

-- Verify size of packet
coinbase_derivatives_ordersapi_sbe_v1_8.packet.requiredsize = function(buffer)

  return true
end

-- Verify Schema Id Field
coinbase_derivatives_ordersapi_sbe_v1_8.schema_id.verify = function(buffer)
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
coinbase_derivatives_ordersapi_sbe_v1_8.version.verify = function(buffer)
  -- Attempt to read field
  local value = buffer(30, 2):le_uint()

  if value == 2 then
    return true
  end

  if value == 8 then
    return true
  end

  return false
end

-- Dissector Heuristic for Coinbase Derivatives OrdersApi Sbe 1.8
local function omi_coinbase_derivatives_ordersapi_sbe_v1_8_heuristic(buffer, packet, parent)
  -- Verify packet length
  if not coinbase_derivatives_ordersapi_sbe_v1_8.packet.requiredsize(buffer) then return false end

  -- Verify Schema Id
  if not coinbase_derivatives_ordersapi_sbe_v1_8.schema_id.verify(buffer) then return false end

  -- Verify Version
  if not coinbase_derivatives_ordersapi_sbe_v1_8.version.verify(buffer) then return false end

  -- Protocol is valid, set conversation and dissect this packet
  packet.conversation = omi_coinbase_derivatives_ordersapi_sbe_v1_8
  omi_coinbase_derivatives_ordersapi_sbe_v1_8.dissector(buffer, packet, parent)

  return true
end

-- Register Heuristic for Coinbase Derivatives OrdersApi Sbe 1.8
omi_coinbase_derivatives_ordersapi_sbe_v1_8:register_heuristic("tcp", omi_coinbase_derivatives_ordersapi_sbe_v1_8_heuristic)

-----------------------------------------------------------------------
-- Lua dissectors are an easily edited and modified cross platform dissection solution.
-- Feel free to modify. Enjoy.
-----------------------------------------------------------------------
-- 
-- Protocol:
--   Organization: Coinbase
--   Version: 1.8
--   Date: Friday, September 5, 2025
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
