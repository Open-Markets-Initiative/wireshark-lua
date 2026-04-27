-----------------------------------------------------------------------
-- Lua Script Wireshark Dissector
-- 
-- Please see end of file for rules and regulations
-----------------------------------------------------------------------

-- Coinbase CoinbaseDerivatives OrdersApi Sbe 1.7 Protocol
local omi_coinbase_coinbasederivatives_ordersapi_sbe_v1_7 = Proto("Coinbase.CoinbaseDerivatives.OrdersApi.Sbe.v1.7.Lua", "Coinbase CoinbaseDerivatives OrdersApi Sbe 1.7")

-- Protocol table
local coinbase_coinbasederivatives_ordersapi_sbe_v1_7 = {}

-----------------------------------------------------------------------
-- Declare Protocol Fields
-----------------------------------------------------------------------

-- Coinbase CoinbaseDerivatives OrdersApi Sbe 1.7 Fields
omi_coinbase_coinbasederivatives_ordersapi_sbe_v1_7.fields.account = ProtoField.new("Account", "coinbase.coinbasederivatives.ordersapi.sbe.v1.7.account", ftypes.STRING)
omi_coinbase_coinbasederivatives_ordersapi_sbe_v1_7.fields.available_qty = ProtoField.new("Available Qty", "coinbase.coinbasederivatives.ordersapi.sbe.v1.7.availableqty", ftypes.INT32)
omi_coinbase_coinbasederivatives_ordersapi_sbe_v1_7.fields.begin_exec_id = ProtoField.new("Begin Exec Id", "coinbase.coinbasederivatives.ordersapi.sbe.v1.7.beginexecid", ftypes.INT64)
omi_coinbase_coinbasederivatives_ordersapi_sbe_v1_7.fields.block_length = ProtoField.new("Block Length", "coinbase.coinbasederivatives.ordersapi.sbe.v1.7.blocklength", ftypes.UINT16)
omi_coinbase_coinbasederivatives_ordersapi_sbe_v1_7.fields.cancel_order_reject_details = ProtoField.new("Cancel Order Reject Details", "coinbase.coinbasederivatives.ordersapi.sbe.v1.7.cancelorderrejectdetails", ftypes.STRING)
omi_coinbase_coinbasederivatives_ordersapi_sbe_v1_7.fields.cancel_order_reject_reason = ProtoField.new("Cancel Order Reject Reason", "coinbase.coinbasederivatives.ordersapi.sbe.v1.7.cancelorderrejectreason", ftypes.UINT8)
omi_coinbase_coinbasederivatives_ordersapi_sbe_v1_7.fields.cancel_reason = ProtoField.new("Cancel Reason", "coinbase.coinbasederivatives.ordersapi.sbe.v1.7.cancelreason", ftypes.UINT8)
omi_coinbase_coinbasederivatives_ordersapi_sbe_v1_7.fields.canceled_count = ProtoField.new("Canceled Count", "coinbase.coinbasederivatives.ordersapi.sbe.v1.7.canceledcount", ftypes.INT32)
omi_coinbase_coinbasederivatives_ordersapi_sbe_v1_7.fields.client_order_id = ProtoField.new("Client Order Id", "coinbase.coinbasederivatives.ordersapi.sbe.v1.7.clientorderid", ftypes.INT64)
omi_coinbase_coinbasederivatives_ordersapi_sbe_v1_7.fields.correlation_id = ProtoField.new("Correlation Id", "coinbase.coinbasederivatives.ordersapi.sbe.v1.7.correlationid", ftypes.INT64)
omi_coinbase_coinbasederivatives_ordersapi_sbe_v1_7.fields.current_session_only = ProtoField.new("Current Session Only", "coinbase.coinbasederivatives.ordersapi.sbe.v1.7.currentsessiononly", ftypes.INT8)
omi_coinbase_coinbasederivatives_ordersapi_sbe_v1_7.fields.data = ProtoField.new("Data", "coinbase.coinbasederivatives.ordersapi.sbe.v1.7.data", ftypes.STRING)
omi_coinbase_coinbasederivatives_ordersapi_sbe_v1_7.fields.data_length = ProtoField.new("Data Length", "coinbase.coinbasederivatives.ordersapi.sbe.v1.7.datalength", ftypes.UINT8)
omi_coinbase_coinbasederivatives_ordersapi_sbe_v1_7.fields.data_value = ProtoField.new("Data Value", "coinbase.coinbasederivatives.ordersapi.sbe.v1.7.datavalue", ftypes.BYTES)
omi_coinbase_coinbasederivatives_ordersapi_sbe_v1_7.fields.details_string_55 = ProtoField.new("Details String 55", "coinbase.coinbasederivatives.ordersapi.sbe.v1.7.detailsstring55", ftypes.STRING)
omi_coinbase_coinbasederivatives_ordersapi_sbe_v1_7.fields.end_exec_id = ProtoField.new("End Exec Id", "coinbase.coinbasederivatives.ordersapi.sbe.v1.7.endexecid", ftypes.INT64)
omi_coinbase_coinbasederivatives_ordersapi_sbe_v1_7.fields.error_message = ProtoField.new("Error Message", "coinbase.coinbasederivatives.ordersapi.sbe.v1.7.errormessage", ftypes.STRING)
omi_coinbase_coinbasederivatives_ordersapi_sbe_v1_7.fields.exec_id = ProtoField.new("Exec Id", "coinbase.coinbasederivatives.ordersapi.sbe.v1.7.execid", ftypes.INT64)
omi_coinbase_coinbasederivatives_ordersapi_sbe_v1_7.fields.fill_price = ProtoField.new("Fill Price", "coinbase.coinbasederivatives.ordersapi.sbe.v1.7.fillprice", ftypes.DOUBLE)
omi_coinbase_coinbasederivatives_ordersapi_sbe_v1_7.fields.fill_qty = ProtoField.new("Fill Qty", "coinbase.coinbasederivatives.ordersapi.sbe.v1.7.fillqty", ftypes.INT32)
omi_coinbase_coinbasederivatives_ordersapi_sbe_v1_7.fields.filled_vwap = ProtoField.new("Filled Vwap", "coinbase.coinbasederivatives.ordersapi.sbe.v1.7.filledvwap", ftypes.DOUBLE)
omi_coinbase_coinbasederivatives_ordersapi_sbe_v1_7.fields.flags = ProtoField.new("Flags", "coinbase.coinbasederivatives.ordersapi.sbe.v1.7.flags", ftypes.STRING)
omi_coinbase_coinbasederivatives_ordersapi_sbe_v1_7.fields.from_sequence_number = ProtoField.new("From Sequence Number", "coinbase.coinbasederivatives.ordersapi.sbe.v1.7.fromsequencenumber", ftypes.UINT32)
omi_coinbase_coinbasederivatives_ordersapi_sbe_v1_7.fields.gap_fill_padding = ProtoField.new("Gap Fill Padding", "coinbase.coinbasederivatives.ordersapi.sbe.v1.7.gapfillpadding", ftypes.UINT32)
omi_coinbase_coinbasederivatives_ordersapi_sbe_v1_7.fields.good_til_date = ProtoField.new("Good Til Date", "coinbase.coinbasederivatives.ordersapi.sbe.v1.7.goodtildate", ftypes.UINT16)
omi_coinbase_coinbasederivatives_ordersapi_sbe_v1_7.fields.heartbeat_interval_seconds = ProtoField.new("Heartbeat Interval Seconds", "coinbase.coinbasederivatives.ordersapi.sbe.v1.7.heartbeatintervalseconds", ftypes.INT32)
omi_coinbase_coinbasederivatives_ordersapi_sbe_v1_7.fields.instrument_id = ProtoField.new("Instrument Id", "coinbase.coinbasederivatives.ordersapi.sbe.v1.7.instrumentid", ftypes.INT32)
omi_coinbase_coinbasederivatives_ordersapi_sbe_v1_7.fields.instrument_status = ProtoField.new("Instrument Status", "coinbase.coinbasederivatives.ordersapi.sbe.v1.7.instrumentstatus", ftypes.UINT8)
omi_coinbase_coinbasederivatives_ordersapi_sbe_v1_7.fields.is_aggressor = ProtoField.new("Is Aggressor", "coinbase.coinbasederivatives.ordersapi.sbe.v1.7.isaggressor", ftypes.INT8)
omi_coinbase_coinbasederivatives_ordersapi_sbe_v1_7.fields.is_last_message = ProtoField.new("Is Last Message", "coinbase.coinbasederivatives.ordersapi.sbe.v1.7.islastmessage", ftypes.INT8)
omi_coinbase_coinbasederivatives_ordersapi_sbe_v1_7.fields.last_exec_id = ProtoField.new("Last Exec Id", "coinbase.coinbasederivatives.ordersapi.sbe.v1.7.lastexecid", ftypes.INT64)
omi_coinbase_coinbasederivatives_ordersapi_sbe_v1_7.fields.last_processed_fill_id = ProtoField.new("Last Processed Fill Id", "coinbase.coinbasederivatives.ordersapi.sbe.v1.7.lastprocessedfillid", ftypes.INT64)
omi_coinbase_coinbasederivatives_ordersapi_sbe_v1_7.fields.last_processed_seq_no = ProtoField.new("Last Processed Seq No", "coinbase.coinbasederivatives.ordersapi.sbe.v1.7.lastprocessedseqno", ftypes.UINT32)
omi_coinbase_coinbasederivatives_ordersapi_sbe_v1_7.fields.leg_1_fill_price = ProtoField.new("Leg 1 Fill Price", "coinbase.coinbasederivatives.ordersapi.sbe.v1.7.leg1fillprice", ftypes.DOUBLE)
omi_coinbase_coinbasederivatives_ordersapi_sbe_v1_7.fields.leg_2_fill_price = ProtoField.new("Leg 2 Fill Price", "coinbase.coinbasederivatives.ordersapi.sbe.v1.7.leg2fillprice", ftypes.DOUBLE)
omi_coinbase_coinbasederivatives_ordersapi_sbe_v1_7.fields.limit_price = ProtoField.new("Limit Price", "coinbase.coinbasederivatives.ordersapi.sbe.v1.7.limitprice", ftypes.DOUBLE)
omi_coinbase_coinbasederivatives_ordersapi_sbe_v1_7.fields.match_id = ProtoField.new("Match Id", "coinbase.coinbasederivatives.ordersapi.sbe.v1.7.matchid", ftypes.INT64)
omi_coinbase_coinbasederivatives_ordersapi_sbe_v1_7.fields.message_flags = ProtoField.new("Message Flags", "coinbase.coinbasederivatives.ordersapi.sbe.v1.7.messageflags", ftypes.UINT8)
omi_coinbase_coinbasederivatives_ordersapi_sbe_v1_7.fields.message_header = ProtoField.new("Message Header", "coinbase.coinbasederivatives.ordersapi.sbe.v1.7.messageheader", ftypes.STRING)
omi_coinbase_coinbasederivatives_ordersapi_sbe_v1_7.fields.message_length = ProtoField.new("Message Length", "coinbase.coinbasederivatives.ordersapi.sbe.v1.7.messagelength", ftypes.UINT16)
omi_coinbase_coinbasederivatives_ordersapi_sbe_v1_7.fields.min_qty = ProtoField.new("Min Qty", "coinbase.coinbasederivatives.ordersapi.sbe.v1.7.minqty", ftypes.INT32)
omi_coinbase_coinbasederivatives_ordersapi_sbe_v1_7.fields.new_limit_price = ProtoField.new("New Limit Price", "coinbase.coinbasederivatives.ordersapi.sbe.v1.7.newlimitprice", ftypes.DOUBLE)
omi_coinbase_coinbasederivatives_ordersapi_sbe_v1_7.fields.new_quantity = ProtoField.new("New Quantity", "coinbase.coinbasederivatives.ordersapi.sbe.v1.7.newquantity", ftypes.INT32)
omi_coinbase_coinbasederivatives_ordersapi_sbe_v1_7.fields.new_sequence_number = ProtoField.new("New Sequence Number", "coinbase.coinbasederivatives.ordersapi.sbe.v1.7.newsequencenumber", ftypes.UINT32)
omi_coinbase_coinbasederivatives_ordersapi_sbe_v1_7.fields.num_users_affected = ProtoField.new("Num Users Affected", "coinbase.coinbasederivatives.ordersapi.sbe.v1.7.numusersaffected", ftypes.INT32)
omi_coinbase_coinbasederivatives_ordersapi_sbe_v1_7.fields.only_current_session = ProtoField.new("Only Current Session", "coinbase.coinbasederivatives.ordersapi.sbe.v1.7.onlycurrentsession", ftypes.INT8)
omi_coinbase_coinbasederivatives_ordersapi_sbe_v1_7.fields.order_id = ProtoField.new("Order Id", "coinbase.coinbasederivatives.ordersapi.sbe.v1.7.orderid", ftypes.INT64)
omi_coinbase_coinbasederivatives_ordersapi_sbe_v1_7.fields.order_id_optional = ProtoField.new("Order Id Optional", "coinbase.coinbasederivatives.ordersapi.sbe.v1.7.orderidoptional", ftypes.INT64)
omi_coinbase_coinbasederivatives_ordersapi_sbe_v1_7.fields.order_reject_details = ProtoField.new("Order Reject Details", "coinbase.coinbasederivatives.ordersapi.sbe.v1.7.orderrejectdetails", ftypes.STRING)
omi_coinbase_coinbasederivatives_ordersapi_sbe_v1_7.fields.order_reject_reason = ProtoField.new("Order Reject Reason", "coinbase.coinbasederivatives.ordersapi.sbe.v1.7.orderrejectreason", ftypes.UINT8)
omi_coinbase_coinbasederivatives_ordersapi_sbe_v1_7.fields.packet = ProtoField.new("Packet", "coinbase.coinbasederivatives.ordersapi.sbe.v1.7.packet", ftypes.STRING)
omi_coinbase_coinbasederivatives_ordersapi_sbe_v1_7.fields.padding = ProtoField.new("Padding", "coinbase.coinbasederivatives.ordersapi.sbe.v1.7.padding", ftypes.BYTES)
omi_coinbase_coinbasederivatives_ordersapi_sbe_v1_7.fields.password = ProtoField.new("Password", "coinbase.coinbasederivatives.ordersapi.sbe.v1.7.password", ftypes.STRING)
omi_coinbase_coinbasederivatives_ordersapi_sbe_v1_7.fields.post_only = ProtoField.new("Post Only", "coinbase.coinbasederivatives.ordersapi.sbe.v1.7.postonly", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x01)
omi_coinbase_coinbasederivatives_ordersapi_sbe_v1_7.fields.protocol_id = ProtoField.new("Protocol Id", "coinbase.coinbasederivatives.ordersapi.sbe.v1.7.protocolid", ftypes.UINT8)
omi_coinbase_coinbasederivatives_ordersapi_sbe_v1_7.fields.quantity = ProtoField.new("Quantity", "coinbase.coinbasederivatives.ordersapi.sbe.v1.7.quantity", ftypes.INT32)
omi_coinbase_coinbasederivatives_ordersapi_sbe_v1_7.fields.reason = ProtoField.new("Reason", "coinbase.coinbasederivatives.ordersapi.sbe.v1.7.reason", ftypes.STRING)
omi_coinbase_coinbasederivatives_ordersapi_sbe_v1_7.fields.receive_time = ProtoField.new("Receive Time", "coinbase.coinbasederivatives.ordersapi.sbe.v1.7.receivetime", ftypes.INT64)
omi_coinbase_coinbasederivatives_ordersapi_sbe_v1_7.fields.request_time = ProtoField.new("Request Time", "coinbase.coinbasederivatives.ordersapi.sbe.v1.7.requesttime", ftypes.INT64)
omi_coinbase_coinbasederivatives_ordersapi_sbe_v1_7.fields.request_trading_lock = ProtoField.new("Request Trading Lock", "coinbase.coinbasederivatives.ordersapi.sbe.v1.7.requesttradinglock", ftypes.INT8)
omi_coinbase_coinbasederivatives_ordersapi_sbe_v1_7.fields.resend_reject_reason = ProtoField.new("Resend Reject Reason", "coinbase.coinbasederivatives.ordersapi.sbe.v1.7.resendrejectreason", ftypes.INT8)
omi_coinbase_coinbasederivatives_ordersapi_sbe_v1_7.fields.resent_event_count = ProtoField.new("Resent Event Count", "coinbase.coinbasederivatives.ordersapi.sbe.v1.7.resenteventcount", ftypes.INT32)
omi_coinbase_coinbasederivatives_ordersapi_sbe_v1_7.fields.reserved = ProtoField.new("Reserved", "coinbase.coinbasederivatives.ordersapi.sbe.v1.7.reserved", ftypes.UINT32)
omi_coinbase_coinbasederivatives_ordersapi_sbe_v1_7.fields.reserved_7 = ProtoField.new("Reserved 7", "coinbase.coinbasederivatives.ordersapi.sbe.v1.7.reserved7", ftypes.UINT8, nil, base.DEC, 0xFE)
omi_coinbase_coinbasederivatives_ordersapi_sbe_v1_7.fields.reserved_byte = ProtoField.new("Reserved Byte", "coinbase.coinbasederivatives.ordersapi.sbe.v1.7.reservedbyte", ftypes.INT8)
omi_coinbase_coinbasederivatives_ordersapi_sbe_v1_7.fields.reset_seq_num = ProtoField.new("Reset Seq Num", "coinbase.coinbasederivatives.ordersapi.sbe.v1.7.resetseqnum", ftypes.INT8)
omi_coinbase_coinbasederivatives_ordersapi_sbe_v1_7.fields.sbe_message = ProtoField.new("Sbe Message", "coinbase.coinbasederivatives.ordersapi.sbe.v1.7.sbemessage", ftypes.STRING)
omi_coinbase_coinbasederivatives_ordersapi_sbe_v1_7.fields.schema_id = ProtoField.new("Schema Id", "coinbase.coinbasederivatives.ordersapi.sbe.v1.7.schemaid", ftypes.UINT16)
omi_coinbase_coinbasederivatives_ordersapi_sbe_v1_7.fields.security_type = ProtoField.new("Security Type", "coinbase.coinbasederivatives.ordersapi.sbe.v1.7.securitytype", ftypes.UINT8)
omi_coinbase_coinbasederivatives_ordersapi_sbe_v1_7.fields.send_time_epoch_nanos = ProtoField.new("Send Time Epoch Nanos", "coinbase.coinbasederivatives.ordersapi.sbe.v1.7.sendtimeepochnanos", ftypes.INT64)
omi_coinbase_coinbasederivatives_ordersapi_sbe_v1_7.fields.sequence_number = ProtoField.new("Sequence Number", "coinbase.coinbasederivatives.ordersapi.sbe.v1.7.sequencenumber", ftypes.UINT32)
omi_coinbase_coinbasederivatives_ordersapi_sbe_v1_7.fields.server_time = ProtoField.new("Server Time", "coinbase.coinbasederivatives.ordersapi.sbe.v1.7.servertime", ftypes.INT64)
omi_coinbase_coinbasederivatives_ordersapi_sbe_v1_7.fields.side = ProtoField.new("Side", "coinbase.coinbasederivatives.ordersapi.sbe.v1.7.side", ftypes.INT8)
omi_coinbase_coinbasederivatives_ordersapi_sbe_v1_7.fields.symbol = ProtoField.new("Symbol", "coinbase.coinbasederivatives.ordersapi.sbe.v1.7.symbol", ftypes.STRING)
omi_coinbase_coinbasederivatives_ordersapi_sbe_v1_7.fields.template_id = ProtoField.new("Template Id", "coinbase.coinbasederivatives.ordersapi.sbe.v1.7.templateid", ftypes.UINT16)
omi_coinbase_coinbasederivatives_ordersapi_sbe_v1_7.fields.time_in_force = ProtoField.new("Time In Force", "coinbase.coinbasederivatives.ordersapi.sbe.v1.7.timeinforce", ftypes.INT8)
omi_coinbase_coinbasederivatives_ordersapi_sbe_v1_7.fields.timestamp = ProtoField.new("Timestamp", "coinbase.coinbasederivatives.ordersapi.sbe.v1.7.timestamp", ftypes.INT64)
omi_coinbase_coinbasederivatives_ordersapi_sbe_v1_7.fields.to_sequence_number = ProtoField.new("To Sequence Number", "coinbase.coinbasederivatives.ordersapi.sbe.v1.7.tosequencenumber", ftypes.UINT32)
omi_coinbase_coinbasederivatives_ordersapi_sbe_v1_7.fields.total_filled = ProtoField.new("Total Filled", "coinbase.coinbasederivatives.ordersapi.sbe.v1.7.totalfilled", ftypes.INT32)
omi_coinbase_coinbasederivatives_ordersapi_sbe_v1_7.fields.trader = ProtoField.new("Trader", "coinbase.coinbasederivatives.ordersapi.sbe.v1.7.trader", ftypes.STRING)
omi_coinbase_coinbasederivatives_ordersapi_sbe_v1_7.fields.trading_instrument_status = ProtoField.new("Trading Instrument Status", "coinbase.coinbasederivatives.ordersapi.sbe.v1.7.tradinginstrumentstatus", ftypes.INT8)
omi_coinbase_coinbasederivatives_ordersapi_sbe_v1_7.fields.trading_lock_applied = ProtoField.new("Trading Lock Applied", "coinbase.coinbasederivatives.ordersapi.sbe.v1.7.tradinglockapplied", ftypes.INT8)
omi_coinbase_coinbasederivatives_ordersapi_sbe_v1_7.fields.username = ProtoField.new("Username", "coinbase.coinbasederivatives.ordersapi.sbe.v1.7.username", ftypes.STRING)
omi_coinbase_coinbasederivatives_ordersapi_sbe_v1_7.fields.version = ProtoField.new("Version", "coinbase.coinbasederivatives.ordersapi.sbe.v1.7.version", ftypes.UINT16)

-- Coinbase CoinbaseDerivatives Sbe OrdersApi 1.7 Application Messages
omi_coinbase_coinbasederivatives_ordersapi_sbe_v1_7.fields.cancel_order_message = ProtoField.new("Cancel Order Message", "coinbase.coinbasederivatives.ordersapi.sbe.v1.7.cancelordermessage", ftypes.STRING)
omi_coinbase_coinbasederivatives_ordersapi_sbe_v1_7.fields.cancel_order_reject_message = ProtoField.new("Cancel Order Reject Message", "coinbase.coinbasederivatives.ordersapi.sbe.v1.7.cancelorderrejectmessage", ftypes.STRING)
omi_coinbase_coinbasederivatives_ordersapi_sbe_v1_7.fields.event_resend_complete_message = ProtoField.new("Event Resend Complete Message", "coinbase.coinbasederivatives.ordersapi.sbe.v1.7.eventresendcompletemessage", ftypes.STRING)
omi_coinbase_coinbasederivatives_ordersapi_sbe_v1_7.fields.event_resend_reject_message = ProtoField.new("Event Resend Reject Message", "coinbase.coinbasederivatives.ordersapi.sbe.v1.7.eventresendrejectmessage", ftypes.STRING)
omi_coinbase_coinbasederivatives_ordersapi_sbe_v1_7.fields.event_resend_request_message = ProtoField.new("Event Resend Request Message", "coinbase.coinbasederivatives.ordersapi.sbe.v1.7.eventresendrequestmessage", ftypes.STRING)
omi_coinbase_coinbasederivatives_ordersapi_sbe_v1_7.fields.gap_fill_message = ProtoField.new("Gap Fill Message", "coinbase.coinbasederivatives.ordersapi.sbe.v1.7.gapfillmessage", ftypes.STRING)
omi_coinbase_coinbasederivatives_ordersapi_sbe_v1_7.fields.heartbeat_message = ProtoField.new("Heartbeat Message", "coinbase.coinbasederivatives.ordersapi.sbe.v1.7.heartbeatmessage", ftypes.STRING)
omi_coinbase_coinbasederivatives_ordersapi_sbe_v1_7.fields.instrument_info_message = ProtoField.new("Instrument Info Message", "coinbase.coinbasederivatives.ordersapi.sbe.v1.7.instrumentinfomessage", ftypes.STRING)
omi_coinbase_coinbasederivatives_ordersapi_sbe_v1_7.fields.instrument_info_request_message = ProtoField.new("Instrument Info Request Message", "coinbase.coinbasederivatives.ordersapi.sbe.v1.7.instrumentinforequestmessage", ftypes.STRING)
omi_coinbase_coinbasederivatives_ordersapi_sbe_v1_7.fields.last_exec_id_message = ProtoField.new("Last Exec Id Message", "coinbase.coinbasederivatives.ordersapi.sbe.v1.7.lastexecidmessage", ftypes.STRING)
omi_coinbase_coinbasederivatives_ordersapi_sbe_v1_7.fields.last_exec_id_request_message = ProtoField.new("Last Exec Id Request Message", "coinbase.coinbasederivatives.ordersapi.sbe.v1.7.lastexecidrequestmessage", ftypes.STRING)
omi_coinbase_coinbasederivatives_ordersapi_sbe_v1_7.fields.logged_out_message = ProtoField.new("Logged Out Message", "coinbase.coinbasederivatives.ordersapi.sbe.v1.7.loggedoutmessage", ftypes.STRING)
omi_coinbase_coinbasederivatives_ordersapi_sbe_v1_7.fields.logon_conf_message = ProtoField.new("Logon Conf Message", "coinbase.coinbasederivatives.ordersapi.sbe.v1.7.logonconfmessage", ftypes.STRING)
omi_coinbase_coinbasederivatives_ordersapi_sbe_v1_7.fields.logon_message = ProtoField.new("Logon Message", "coinbase.coinbasederivatives.ordersapi.sbe.v1.7.logonmessage", ftypes.STRING)
omi_coinbase_coinbasederivatives_ordersapi_sbe_v1_7.fields.logout_message = ProtoField.new("Logout Message", "coinbase.coinbasederivatives.ordersapi.sbe.v1.7.logoutmessage", ftypes.STRING)
omi_coinbase_coinbasederivatives_ordersapi_sbe_v1_7.fields.mass_cancel_order_ack_message = ProtoField.new("Mass Cancel Order Ack Message", "coinbase.coinbasederivatives.ordersapi.sbe.v1.7.masscancelorderackmessage", ftypes.STRING)
omi_coinbase_coinbasederivatives_ordersapi_sbe_v1_7.fields.mass_cancel_order_message = ProtoField.new("Mass Cancel Order Message", "coinbase.coinbasederivatives.ordersapi.sbe.v1.7.masscancelordermessage", ftypes.STRING)
omi_coinbase_coinbasederivatives_ordersapi_sbe_v1_7.fields.mass_cancel_order_reject_message = ProtoField.new("Mass Cancel Order Reject Message", "coinbase.coinbasederivatives.ordersapi.sbe.v1.7.masscancelorderrejectmessage", ftypes.STRING)
omi_coinbase_coinbasederivatives_ordersapi_sbe_v1_7.fields.new_ioc_order_message = ProtoField.new("New Ioc Order Message", "coinbase.coinbasederivatives.ordersapi.sbe.v1.7.newiocordermessage", ftypes.STRING)
omi_coinbase_coinbasederivatives_ordersapi_sbe_v1_7.fields.new_order_message = ProtoField.new("New Order Message", "coinbase.coinbasederivatives.ordersapi.sbe.v1.7.newordermessage", ftypes.STRING)
omi_coinbase_coinbasederivatives_ordersapi_sbe_v1_7.fields.obsolete_stream_order_message = ProtoField.new("Obsolete Stream Order Message", "coinbase.coinbasederivatives.ordersapi.sbe.v1.7.obsoletestreamordermessage", ftypes.STRING)
omi_coinbase_coinbasederivatives_ordersapi_sbe_v1_7.fields.order_canceled_message = ProtoField.new("Order Canceled Message", "coinbase.coinbasederivatives.ordersapi.sbe.v1.7.ordercanceledmessage", ftypes.STRING)
omi_coinbase_coinbasederivatives_ordersapi_sbe_v1_7.fields.order_entered_message = ProtoField.new("Order Entered Message", "coinbase.coinbasederivatives.ordersapi.sbe.v1.7.orderenteredmessage", ftypes.STRING)
omi_coinbase_coinbasederivatives_ordersapi_sbe_v1_7.fields.order_filled_message = ProtoField.new("Order Filled Message", "coinbase.coinbasederivatives.ordersapi.sbe.v1.7.orderfilledmessage", ftypes.STRING)
omi_coinbase_coinbasederivatives_ordersapi_sbe_v1_7.fields.order_reject_message = ProtoField.new("Order Reject Message", "coinbase.coinbasederivatives.ordersapi.sbe.v1.7.orderrejectmessage", ftypes.STRING)
omi_coinbase_coinbasederivatives_ordersapi_sbe_v1_7.fields.order_replaced_message = ProtoField.new("Order Replaced Message", "coinbase.coinbasederivatives.ordersapi.sbe.v1.7.orderreplacedmessage", ftypes.STRING)
omi_coinbase_coinbasederivatives_ordersapi_sbe_v1_7.fields.ping_message = ProtoField.new("Ping Message", "coinbase.coinbasederivatives.ordersapi.sbe.v1.7.pingmessage", ftypes.STRING)
omi_coinbase_coinbasederivatives_ordersapi_sbe_v1_7.fields.pong_message = ProtoField.new("Pong Message", "coinbase.coinbasederivatives.ordersapi.sbe.v1.7.pongmessage", ftypes.STRING)
omi_coinbase_coinbasederivatives_ordersapi_sbe_v1_7.fields.replace_order_message = ProtoField.new("Replace Order Message", "coinbase.coinbasederivatives.ordersapi.sbe.v1.7.replaceordermessage", ftypes.STRING)
omi_coinbase_coinbasederivatives_ordersapi_sbe_v1_7.fields.resend_request_message = ProtoField.new("Resend Request Message", "coinbase.coinbasederivatives.ordersapi.sbe.v1.7.resendrequestmessage", ftypes.STRING)
omi_coinbase_coinbasederivatives_ordersapi_sbe_v1_7.fields.set_account_message = ProtoField.new("Set Account Message", "coinbase.coinbasederivatives.ordersapi.sbe.v1.7.setaccountmessage", ftypes.STRING)
omi_coinbase_coinbasederivatives_ordersapi_sbe_v1_7.fields.set_ack_message = ProtoField.new("Set Ack Message", "coinbase.coinbasederivatives.ordersapi.sbe.v1.7.setackmessage", ftypes.STRING)
omi_coinbase_coinbasederivatives_ordersapi_sbe_v1_7.fields.set_trader_message = ProtoField.new("Set Trader Message", "coinbase.coinbasederivatives.ordersapi.sbe.v1.7.settradermessage", ftypes.STRING)
omi_coinbase_coinbasederivatives_ordersapi_sbe_v1_7.fields.spread_order_filled_message = ProtoField.new("Spread Order Filled Message", "coinbase.coinbasederivatives.ordersapi.sbe.v1.7.spreadorderfilledmessage", ftypes.STRING)
omi_coinbase_coinbasederivatives_ordersapi_sbe_v1_7.fields.test_request_message = ProtoField.new("Test Request Message", "coinbase.coinbasederivatives.ordersapi.sbe.v1.7.testrequestmessage", ftypes.STRING)
omi_coinbase_coinbasederivatives_ordersapi_sbe_v1_7.fields.unlock_trading_ack_message = ProtoField.new("Unlock Trading Ack Message", "coinbase.coinbasederivatives.ordersapi.sbe.v1.7.unlocktradingackmessage", ftypes.STRING)
omi_coinbase_coinbasederivatives_ordersapi_sbe_v1_7.fields.unlock_trading_message = ProtoField.new("Unlock Trading Message", "coinbase.coinbasederivatives.ordersapi.sbe.v1.7.unlocktradingmessage", ftypes.STRING)
omi_coinbase_coinbasederivatives_ordersapi_sbe_v1_7.fields.unlock_trading_reject_message = ProtoField.new("Unlock Trading Reject Message", "coinbase.coinbasederivatives.ordersapi.sbe.v1.7.unlocktradingrejectmessage", ftypes.STRING)

-----------------------------------------------------------------------
-- Declare Dissection Options
-----------------------------------------------------------------------

local show = {}

-- Coinbase CoinbaseDerivatives OrdersApi Sbe 1.7 Element Dissection Options
show.application_messages = true
show.data = true
show.flags = true
show.message_header = true
show.packet = true
show.sbe_message = true

-- Register Coinbase CoinbaseDerivatives OrdersApi Sbe 1.7 Show Options
omi_coinbase_coinbasederivatives_ordersapi_sbe_v1_7.prefs.show_application_messages = Pref.bool("Show Application Messages", show.application_messages, "Parse and add Application Messages to protocol tree")
omi_coinbase_coinbasederivatives_ordersapi_sbe_v1_7.prefs.show_data = Pref.bool("Show Data", show.data, "Parse and add Data to protocol tree")
omi_coinbase_coinbasederivatives_ordersapi_sbe_v1_7.prefs.show_flags = Pref.bool("Show Flags", show.flags, "Parse and add Flags to protocol tree")
omi_coinbase_coinbasederivatives_ordersapi_sbe_v1_7.prefs.show_message_header = Pref.bool("Show Message Header", show.message_header, "Parse and add Message Header to protocol tree")
omi_coinbase_coinbasederivatives_ordersapi_sbe_v1_7.prefs.show_packet = Pref.bool("Show Packet", show.packet, "Parse and add Packet to protocol tree")
omi_coinbase_coinbasederivatives_ordersapi_sbe_v1_7.prefs.show_sbe_message = Pref.bool("Show Sbe Message", show.sbe_message, "Parse and add Sbe Message to protocol tree")

-- Handle changed preferences
function omi_coinbase_coinbasederivatives_ordersapi_sbe_v1_7.prefs_changed()

  -- Check if show options have changed
  if show.application_messages ~= omi_coinbase_coinbasederivatives_ordersapi_sbe_v1_7.prefs.show_application_messages then
    show.application_messages = omi_coinbase_coinbasederivatives_ordersapi_sbe_v1_7.prefs.show_application_messages
  end
  if show.data ~= omi_coinbase_coinbasederivatives_ordersapi_sbe_v1_7.prefs.show_data then
    show.data = omi_coinbase_coinbasederivatives_ordersapi_sbe_v1_7.prefs.show_data
  end
  if show.flags ~= omi_coinbase_coinbasederivatives_ordersapi_sbe_v1_7.prefs.show_flags then
    show.flags = omi_coinbase_coinbasederivatives_ordersapi_sbe_v1_7.prefs.show_flags
  end
  if show.message_header ~= omi_coinbase_coinbasederivatives_ordersapi_sbe_v1_7.prefs.show_message_header then
    show.message_header = omi_coinbase_coinbasederivatives_ordersapi_sbe_v1_7.prefs.show_message_header
  end
  if show.packet ~= omi_coinbase_coinbasederivatives_ordersapi_sbe_v1_7.prefs.show_packet then
    show.packet = omi_coinbase_coinbasederivatives_ordersapi_sbe_v1_7.prefs.show_packet
  end
  if show.sbe_message ~= omi_coinbase_coinbasederivatives_ordersapi_sbe_v1_7.prefs.show_sbe_message then
    show.sbe_message = omi_coinbase_coinbasederivatives_ordersapi_sbe_v1_7.prefs.show_sbe_message
  end
end


-----------------------------------------------------------------------
-- Coinbase CoinbaseDerivatives OrdersApi Sbe 1.7 Fields
-----------------------------------------------------------------------

-- Account
coinbase_coinbasederivatives_ordersapi_sbe_v1_7.account = {}

-- Size: Account
coinbase_coinbasederivatives_ordersapi_sbe_v1_7.account.size = 16

-- Display: Account
coinbase_coinbasederivatives_ordersapi_sbe_v1_7.account.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Account: No Value"
  end

  return "Account: "..value
end

-- Dissect: Account
coinbase_coinbasederivatives_ordersapi_sbe_v1_7.account.dissect = function(buffer, offset, packet, parent)
  local length = coinbase_coinbasederivatives_ordersapi_sbe_v1_7.account.size
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

  local display = coinbase_coinbasederivatives_ordersapi_sbe_v1_7.account.display(value, buffer, offset, packet, parent)

  parent:add(omi_coinbase_coinbasederivatives_ordersapi_sbe_v1_7.fields.account, range, value, display)

  return offset + length, value
end

-- Available Qty
coinbase_coinbasederivatives_ordersapi_sbe_v1_7.available_qty = {}

-- Size: Available Qty
coinbase_coinbasederivatives_ordersapi_sbe_v1_7.available_qty.size = 4

-- Display: Available Qty
coinbase_coinbasederivatives_ordersapi_sbe_v1_7.available_qty.display = function(value)
  return "Available Qty: "..value
end

-- Dissect: Available Qty
coinbase_coinbasederivatives_ordersapi_sbe_v1_7.available_qty.dissect = function(buffer, offset, packet, parent)
  local length = coinbase_coinbasederivatives_ordersapi_sbe_v1_7.available_qty.size
  local range = buffer(offset, length)
  local value = range:le_int()
  local display = coinbase_coinbasederivatives_ordersapi_sbe_v1_7.available_qty.display(value, buffer, offset, packet, parent)

  parent:add(omi_coinbase_coinbasederivatives_ordersapi_sbe_v1_7.fields.available_qty, range, value, display)

  return offset + length, value
end

-- Begin Exec Id
coinbase_coinbasederivatives_ordersapi_sbe_v1_7.begin_exec_id = {}

-- Size: Begin Exec Id
coinbase_coinbasederivatives_ordersapi_sbe_v1_7.begin_exec_id.size = 8

-- Display: Begin Exec Id
coinbase_coinbasederivatives_ordersapi_sbe_v1_7.begin_exec_id.display = function(value)
  return "Begin Exec Id: "..value
end

-- Dissect: Begin Exec Id
coinbase_coinbasederivatives_ordersapi_sbe_v1_7.begin_exec_id.dissect = function(buffer, offset, packet, parent)
  local length = coinbase_coinbasederivatives_ordersapi_sbe_v1_7.begin_exec_id.size
  local range = buffer(offset, length)
  local value = range:le_int64()
  local display = coinbase_coinbasederivatives_ordersapi_sbe_v1_7.begin_exec_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_coinbase_coinbasederivatives_ordersapi_sbe_v1_7.fields.begin_exec_id, range, value, display)

  return offset + length, value
end

-- Block Length
coinbase_coinbasederivatives_ordersapi_sbe_v1_7.block_length = {}

-- Size: Block Length
coinbase_coinbasederivatives_ordersapi_sbe_v1_7.block_length.size = 2

-- Display: Block Length
coinbase_coinbasederivatives_ordersapi_sbe_v1_7.block_length.display = function(value)
  return "Block Length: "..value
end

-- Dissect: Block Length
coinbase_coinbasederivatives_ordersapi_sbe_v1_7.block_length.dissect = function(buffer, offset, packet, parent)
  local length = coinbase_coinbasederivatives_ordersapi_sbe_v1_7.block_length.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = coinbase_coinbasederivatives_ordersapi_sbe_v1_7.block_length.display(value, buffer, offset, packet, parent)

  parent:add(omi_coinbase_coinbasederivatives_ordersapi_sbe_v1_7.fields.block_length, range, value, display)

  return offset + length, value
end

-- Cancel Order Reject Details
coinbase_coinbasederivatives_ordersapi_sbe_v1_7.cancel_order_reject_details = {}

-- Size: Cancel Order Reject Details
coinbase_coinbasederivatives_ordersapi_sbe_v1_7.cancel_order_reject_details.size = 31

-- Display: Cancel Order Reject Details
coinbase_coinbasederivatives_ordersapi_sbe_v1_7.cancel_order_reject_details.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Cancel Order Reject Details: No Value"
  end

  return "Cancel Order Reject Details: "..value
end

-- Dissect: Cancel Order Reject Details
coinbase_coinbasederivatives_ordersapi_sbe_v1_7.cancel_order_reject_details.dissect = function(buffer, offset, packet, parent)
  local length = coinbase_coinbasederivatives_ordersapi_sbe_v1_7.cancel_order_reject_details.size
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

  local display = coinbase_coinbasederivatives_ordersapi_sbe_v1_7.cancel_order_reject_details.display(value, buffer, offset, packet, parent)

  parent:add(omi_coinbase_coinbasederivatives_ordersapi_sbe_v1_7.fields.cancel_order_reject_details, range, value, display)

  return offset + length, value
end

-- Cancel Order Reject Reason
coinbase_coinbasederivatives_ordersapi_sbe_v1_7.cancel_order_reject_reason = {}

-- Size: Cancel Order Reject Reason
coinbase_coinbasederivatives_ordersapi_sbe_v1_7.cancel_order_reject_reason.size = 1

-- Display: Cancel Order Reject Reason
coinbase_coinbasederivatives_ordersapi_sbe_v1_7.cancel_order_reject_reason.display = function(value)
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
coinbase_coinbasederivatives_ordersapi_sbe_v1_7.cancel_order_reject_reason.dissect = function(buffer, offset, packet, parent)
  local length = coinbase_coinbasederivatives_ordersapi_sbe_v1_7.cancel_order_reject_reason.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = coinbase_coinbasederivatives_ordersapi_sbe_v1_7.cancel_order_reject_reason.display(value, buffer, offset, packet, parent)

  parent:add(omi_coinbase_coinbasederivatives_ordersapi_sbe_v1_7.fields.cancel_order_reject_reason, range, value, display)

  return offset + length, value
end

-- Cancel Reason
coinbase_coinbasederivatives_ordersapi_sbe_v1_7.cancel_reason = {}

-- Size: Cancel Reason
coinbase_coinbasederivatives_ordersapi_sbe_v1_7.cancel_reason.size = 1

-- Display: Cancel Reason
coinbase_coinbasederivatives_ordersapi_sbe_v1_7.cancel_reason.display = function(value)
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
coinbase_coinbasederivatives_ordersapi_sbe_v1_7.cancel_reason.dissect = function(buffer, offset, packet, parent)
  local length = coinbase_coinbasederivatives_ordersapi_sbe_v1_7.cancel_reason.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = coinbase_coinbasederivatives_ordersapi_sbe_v1_7.cancel_reason.display(value, buffer, offset, packet, parent)

  parent:add(omi_coinbase_coinbasederivatives_ordersapi_sbe_v1_7.fields.cancel_reason, range, value, display)

  return offset + length, value
end

-- Canceled Count
coinbase_coinbasederivatives_ordersapi_sbe_v1_7.canceled_count = {}

-- Size: Canceled Count
coinbase_coinbasederivatives_ordersapi_sbe_v1_7.canceled_count.size = 4

-- Display: Canceled Count
coinbase_coinbasederivatives_ordersapi_sbe_v1_7.canceled_count.display = function(value)
  return "Canceled Count: "..value
end

-- Dissect: Canceled Count
coinbase_coinbasederivatives_ordersapi_sbe_v1_7.canceled_count.dissect = function(buffer, offset, packet, parent)
  local length = coinbase_coinbasederivatives_ordersapi_sbe_v1_7.canceled_count.size
  local range = buffer(offset, length)
  local value = range:le_int()
  local display = coinbase_coinbasederivatives_ordersapi_sbe_v1_7.canceled_count.display(value, buffer, offset, packet, parent)

  parent:add(omi_coinbase_coinbasederivatives_ordersapi_sbe_v1_7.fields.canceled_count, range, value, display)

  return offset + length, value
end

-- Client Order Id
coinbase_coinbasederivatives_ordersapi_sbe_v1_7.client_order_id = {}

-- Size: Client Order Id
coinbase_coinbasederivatives_ordersapi_sbe_v1_7.client_order_id.size = 8

-- Display: Client Order Id
coinbase_coinbasederivatives_ordersapi_sbe_v1_7.client_order_id.display = function(value)
  return "Client Order Id: "..value
end

-- Dissect: Client Order Id
coinbase_coinbasederivatives_ordersapi_sbe_v1_7.client_order_id.dissect = function(buffer, offset, packet, parent)
  local length = coinbase_coinbasederivatives_ordersapi_sbe_v1_7.client_order_id.size
  local range = buffer(offset, length)
  local value = range:le_int64()
  local display = coinbase_coinbasederivatives_ordersapi_sbe_v1_7.client_order_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_coinbase_coinbasederivatives_ordersapi_sbe_v1_7.fields.client_order_id, range, value, display)

  return offset + length, value
end

-- Correlation Id
coinbase_coinbasederivatives_ordersapi_sbe_v1_7.correlation_id = {}

-- Size: Correlation Id
coinbase_coinbasederivatives_ordersapi_sbe_v1_7.correlation_id.size = 8

-- Display: Correlation Id
coinbase_coinbasederivatives_ordersapi_sbe_v1_7.correlation_id.display = function(value)
  return "Correlation Id: "..value
end

-- Dissect: Correlation Id
coinbase_coinbasederivatives_ordersapi_sbe_v1_7.correlation_id.dissect = function(buffer, offset, packet, parent)
  local length = coinbase_coinbasederivatives_ordersapi_sbe_v1_7.correlation_id.size
  local range = buffer(offset, length)
  local value = range:le_int64()
  local display = coinbase_coinbasederivatives_ordersapi_sbe_v1_7.correlation_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_coinbase_coinbasederivatives_ordersapi_sbe_v1_7.fields.correlation_id, range, value, display)

  return offset + length, value
end

-- Current Session Only
coinbase_coinbasederivatives_ordersapi_sbe_v1_7.current_session_only = {}

-- Size: Current Session Only
coinbase_coinbasederivatives_ordersapi_sbe_v1_7.current_session_only.size = 1

-- Display: Current Session Only
coinbase_coinbasederivatives_ordersapi_sbe_v1_7.current_session_only.display = function(value)
  if value == 0 then
    return "Current Session Only: False (0)"
  end
  if value == 1 then
    return "Current Session Only: True (1)"
  end

  return "Current Session Only: Unknown("..value..")"
end

-- Dissect: Current Session Only
coinbase_coinbasederivatives_ordersapi_sbe_v1_7.current_session_only.dissect = function(buffer, offset, packet, parent)
  local length = coinbase_coinbasederivatives_ordersapi_sbe_v1_7.current_session_only.size
  local range = buffer(offset, length)
  local value = range:le_int()
  local display = coinbase_coinbasederivatives_ordersapi_sbe_v1_7.current_session_only.display(value, buffer, offset, packet, parent)

  parent:add(omi_coinbase_coinbasederivatives_ordersapi_sbe_v1_7.fields.current_session_only, range, value, display)

  return offset + length, value
end

-- Data Length
coinbase_coinbasederivatives_ordersapi_sbe_v1_7.data_length = {}

-- Size: Data Length
coinbase_coinbasederivatives_ordersapi_sbe_v1_7.data_length.size = 1

-- Display: Data Length
coinbase_coinbasederivatives_ordersapi_sbe_v1_7.data_length.display = function(value)
  return "Data Length: "..value
end

-- Dissect: Data Length
coinbase_coinbasederivatives_ordersapi_sbe_v1_7.data_length.dissect = function(buffer, offset, packet, parent)
  local length = coinbase_coinbasederivatives_ordersapi_sbe_v1_7.data_length.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = coinbase_coinbasederivatives_ordersapi_sbe_v1_7.data_length.display(value, buffer, offset, packet, parent)

  parent:add(omi_coinbase_coinbasederivatives_ordersapi_sbe_v1_7.fields.data_length, range, value, display)

  return offset + length, value
end

-- Data Value
coinbase_coinbasederivatives_ordersapi_sbe_v1_7.data_value = {}

-- Display: Data Value
coinbase_coinbasederivatives_ordersapi_sbe_v1_7.data_value.display = function(value)
  return "Data Value: "..value
end

-- Dissect runtime sized field: Data Value
coinbase_coinbasederivatives_ordersapi_sbe_v1_7.data_value.dissect = function(buffer, offset, packet, parent, size)
  local range = buffer(offset, size)
  local value = range:bytes():tohex(false, " ")
  local display = coinbase_coinbasederivatives_ordersapi_sbe_v1_7.data_value.display(value, packet, parent, size)

  parent:add(omi_coinbase_coinbasederivatives_ordersapi_sbe_v1_7.fields.data_value, range, value, display)

  return offset + size, value
end

-- Details String 55
coinbase_coinbasederivatives_ordersapi_sbe_v1_7.details_string_55 = {}

-- Size: Details String 55
coinbase_coinbasederivatives_ordersapi_sbe_v1_7.details_string_55.size = 55

-- Display: Details String 55
coinbase_coinbasederivatives_ordersapi_sbe_v1_7.details_string_55.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Details String 55: No Value"
  end

  return "Details String 55: "..value
end

-- Dissect: Details String 55
coinbase_coinbasederivatives_ordersapi_sbe_v1_7.details_string_55.dissect = function(buffer, offset, packet, parent)
  local length = coinbase_coinbasederivatives_ordersapi_sbe_v1_7.details_string_55.size
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

  local display = coinbase_coinbasederivatives_ordersapi_sbe_v1_7.details_string_55.display(value, buffer, offset, packet, parent)

  parent:add(omi_coinbase_coinbasederivatives_ordersapi_sbe_v1_7.fields.details_string_55, range, value, display)

  return offset + length, value
end

-- End Exec Id
coinbase_coinbasederivatives_ordersapi_sbe_v1_7.end_exec_id = {}

-- Size: End Exec Id
coinbase_coinbasederivatives_ordersapi_sbe_v1_7.end_exec_id.size = 8

-- Display: End Exec Id
coinbase_coinbasederivatives_ordersapi_sbe_v1_7.end_exec_id.display = function(value)
  return "End Exec Id: "..value
end

-- Dissect: End Exec Id
coinbase_coinbasederivatives_ordersapi_sbe_v1_7.end_exec_id.dissect = function(buffer, offset, packet, parent)
  local length = coinbase_coinbasederivatives_ordersapi_sbe_v1_7.end_exec_id.size
  local range = buffer(offset, length)
  local value = range:le_int64()
  local display = coinbase_coinbasederivatives_ordersapi_sbe_v1_7.end_exec_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_coinbase_coinbasederivatives_ordersapi_sbe_v1_7.fields.end_exec_id, range, value, display)

  return offset + length, value
end

-- Error Message
coinbase_coinbasederivatives_ordersapi_sbe_v1_7.error_message = {}

-- Size: Error Message
coinbase_coinbasederivatives_ordersapi_sbe_v1_7.error_message.size = 32

-- Display: Error Message
coinbase_coinbasederivatives_ordersapi_sbe_v1_7.error_message.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Error Message: No Value"
  end

  return "Error Message: "..value
end

-- Dissect: Error Message
coinbase_coinbasederivatives_ordersapi_sbe_v1_7.error_message.dissect = function(buffer, offset, packet, parent)
  local length = coinbase_coinbasederivatives_ordersapi_sbe_v1_7.error_message.size
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

  local display = coinbase_coinbasederivatives_ordersapi_sbe_v1_7.error_message.display(value, buffer, offset, packet, parent)

  parent:add(omi_coinbase_coinbasederivatives_ordersapi_sbe_v1_7.fields.error_message, range, value, display)

  return offset + length, value
end

-- Exec Id
coinbase_coinbasederivatives_ordersapi_sbe_v1_7.exec_id = {}

-- Size: Exec Id
coinbase_coinbasederivatives_ordersapi_sbe_v1_7.exec_id.size = 8

-- Display: Exec Id
coinbase_coinbasederivatives_ordersapi_sbe_v1_7.exec_id.display = function(value)
  return "Exec Id: "..value
end

-- Dissect: Exec Id
coinbase_coinbasederivatives_ordersapi_sbe_v1_7.exec_id.dissect = function(buffer, offset, packet, parent)
  local length = coinbase_coinbasederivatives_ordersapi_sbe_v1_7.exec_id.size
  local range = buffer(offset, length)
  local value = range:le_int64()
  local display = coinbase_coinbasederivatives_ordersapi_sbe_v1_7.exec_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_coinbase_coinbasederivatives_ordersapi_sbe_v1_7.fields.exec_id, range, value, display)

  return offset + length, value
end

-- Fill Price
coinbase_coinbasederivatives_ordersapi_sbe_v1_7.fill_price = {}

-- Size: Fill Price
coinbase_coinbasederivatives_ordersapi_sbe_v1_7.fill_price.size = 8

-- Display: Fill Price
coinbase_coinbasederivatives_ordersapi_sbe_v1_7.fill_price.display = function(value)
  return "Fill Price: "..value
end

-- Translate: Fill Price
coinbase_coinbasederivatives_ordersapi_sbe_v1_7.fill_price.translate = function(raw)
  return raw:tonumber()/1000000000
end

-- Dissect: Fill Price
coinbase_coinbasederivatives_ordersapi_sbe_v1_7.fill_price.dissect = function(buffer, offset, packet, parent)
  local length = coinbase_coinbasederivatives_ordersapi_sbe_v1_7.fill_price.size
  local range = buffer(offset, length)
  local raw = range:le_int64()
  local value = coinbase_coinbasederivatives_ordersapi_sbe_v1_7.fill_price.translate(raw)
  local display = coinbase_coinbasederivatives_ordersapi_sbe_v1_7.fill_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_coinbase_coinbasederivatives_ordersapi_sbe_v1_7.fields.fill_price, range, value, display)

  return offset + length, value
end

-- Fill Qty
coinbase_coinbasederivatives_ordersapi_sbe_v1_7.fill_qty = {}

-- Size: Fill Qty
coinbase_coinbasederivatives_ordersapi_sbe_v1_7.fill_qty.size = 4

-- Display: Fill Qty
coinbase_coinbasederivatives_ordersapi_sbe_v1_7.fill_qty.display = function(value)
  return "Fill Qty: "..value
end

-- Dissect: Fill Qty
coinbase_coinbasederivatives_ordersapi_sbe_v1_7.fill_qty.dissect = function(buffer, offset, packet, parent)
  local length = coinbase_coinbasederivatives_ordersapi_sbe_v1_7.fill_qty.size
  local range = buffer(offset, length)
  local value = range:le_int()
  local display = coinbase_coinbasederivatives_ordersapi_sbe_v1_7.fill_qty.display(value, buffer, offset, packet, parent)

  parent:add(omi_coinbase_coinbasederivatives_ordersapi_sbe_v1_7.fields.fill_qty, range, value, display)

  return offset + length, value
end

-- Filled Vwap
coinbase_coinbasederivatives_ordersapi_sbe_v1_7.filled_vwap = {}

-- Size: Filled Vwap
coinbase_coinbasederivatives_ordersapi_sbe_v1_7.filled_vwap.size = 8

-- Display: Filled Vwap
coinbase_coinbasederivatives_ordersapi_sbe_v1_7.filled_vwap.display = function(value)
  return "Filled Vwap: "..value
end

-- Translate: Filled Vwap
coinbase_coinbasederivatives_ordersapi_sbe_v1_7.filled_vwap.translate = function(raw)
  return raw:tonumber()/1000000000
end

-- Dissect: Filled Vwap
coinbase_coinbasederivatives_ordersapi_sbe_v1_7.filled_vwap.dissect = function(buffer, offset, packet, parent)
  local length = coinbase_coinbasederivatives_ordersapi_sbe_v1_7.filled_vwap.size
  local range = buffer(offset, length)
  local raw = range:le_int64()
  local value = coinbase_coinbasederivatives_ordersapi_sbe_v1_7.filled_vwap.translate(raw)
  local display = coinbase_coinbasederivatives_ordersapi_sbe_v1_7.filled_vwap.display(value, buffer, offset, packet, parent)

  parent:add(omi_coinbase_coinbasederivatives_ordersapi_sbe_v1_7.fields.filled_vwap, range, value, display)

  return offset + length, value
end

-- From Sequence Number
coinbase_coinbasederivatives_ordersapi_sbe_v1_7.from_sequence_number = {}

-- Size: From Sequence Number
coinbase_coinbasederivatives_ordersapi_sbe_v1_7.from_sequence_number.size = 4

-- Display: From Sequence Number
coinbase_coinbasederivatives_ordersapi_sbe_v1_7.from_sequence_number.display = function(value)
  return "From Sequence Number: "..value
end

-- Dissect: From Sequence Number
coinbase_coinbasederivatives_ordersapi_sbe_v1_7.from_sequence_number.dissect = function(buffer, offset, packet, parent)
  local length = coinbase_coinbasederivatives_ordersapi_sbe_v1_7.from_sequence_number.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = coinbase_coinbasederivatives_ordersapi_sbe_v1_7.from_sequence_number.display(value, buffer, offset, packet, parent)

  parent:add(omi_coinbase_coinbasederivatives_ordersapi_sbe_v1_7.fields.from_sequence_number, range, value, display)

  return offset + length, value
end

-- Gap Fill Padding
coinbase_coinbasederivatives_ordersapi_sbe_v1_7.gap_fill_padding = {}

-- Size: Gap Fill Padding
coinbase_coinbasederivatives_ordersapi_sbe_v1_7.gap_fill_padding.size = 4

-- Display: Gap Fill Padding
coinbase_coinbasederivatives_ordersapi_sbe_v1_7.gap_fill_padding.display = function(value)
  return "Gap Fill Padding: "..value
end

-- Dissect: Gap Fill Padding
coinbase_coinbasederivatives_ordersapi_sbe_v1_7.gap_fill_padding.dissect = function(buffer, offset, packet, parent)
  local length = coinbase_coinbasederivatives_ordersapi_sbe_v1_7.gap_fill_padding.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = coinbase_coinbasederivatives_ordersapi_sbe_v1_7.gap_fill_padding.display(value, buffer, offset, packet, parent)

  parent:add(omi_coinbase_coinbasederivatives_ordersapi_sbe_v1_7.fields.gap_fill_padding, range, value, display)

  return offset + length, value
end

-- Good Til Date
coinbase_coinbasederivatives_ordersapi_sbe_v1_7.good_til_date = {}

-- Size: Good Til Date
coinbase_coinbasederivatives_ordersapi_sbe_v1_7.good_til_date.size = 2

-- Display: Good Til Date
coinbase_coinbasederivatives_ordersapi_sbe_v1_7.good_til_date.display = function(value)
  -- Check if field has value
  if value == 0 then
    return "Good Til Date: No Value"
  end

  return "Good Til Date: "..value
end

-- Dissect: Good Til Date
coinbase_coinbasederivatives_ordersapi_sbe_v1_7.good_til_date.dissect = function(buffer, offset, packet, parent)
  local length = coinbase_coinbasederivatives_ordersapi_sbe_v1_7.good_til_date.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = coinbase_coinbasederivatives_ordersapi_sbe_v1_7.good_til_date.display(value, buffer, offset, packet, parent)

  parent:add(omi_coinbase_coinbasederivatives_ordersapi_sbe_v1_7.fields.good_til_date, range, value, display)

  return offset + length, value
end

-- Heartbeat Interval Seconds
coinbase_coinbasederivatives_ordersapi_sbe_v1_7.heartbeat_interval_seconds = {}

-- Size: Heartbeat Interval Seconds
coinbase_coinbasederivatives_ordersapi_sbe_v1_7.heartbeat_interval_seconds.size = 4

-- Display: Heartbeat Interval Seconds
coinbase_coinbasederivatives_ordersapi_sbe_v1_7.heartbeat_interval_seconds.display = function(value)
  return "Heartbeat Interval Seconds: "..value
end

-- Dissect: Heartbeat Interval Seconds
coinbase_coinbasederivatives_ordersapi_sbe_v1_7.heartbeat_interval_seconds.dissect = function(buffer, offset, packet, parent)
  local length = coinbase_coinbasederivatives_ordersapi_sbe_v1_7.heartbeat_interval_seconds.size
  local range = buffer(offset, length)
  local value = range:le_int()
  local display = coinbase_coinbasederivatives_ordersapi_sbe_v1_7.heartbeat_interval_seconds.display(value, buffer, offset, packet, parent)

  parent:add(omi_coinbase_coinbasederivatives_ordersapi_sbe_v1_7.fields.heartbeat_interval_seconds, range, value, display)

  return offset + length, value
end

-- Instrument Id
coinbase_coinbasederivatives_ordersapi_sbe_v1_7.instrument_id = {}

-- Size: Instrument Id
coinbase_coinbasederivatives_ordersapi_sbe_v1_7.instrument_id.size = 4

-- Display: Instrument Id
coinbase_coinbasederivatives_ordersapi_sbe_v1_7.instrument_id.display = function(value)
  return "Instrument Id: "..value
end

-- Dissect: Instrument Id
coinbase_coinbasederivatives_ordersapi_sbe_v1_7.instrument_id.dissect = function(buffer, offset, packet, parent)
  local length = coinbase_coinbasederivatives_ordersapi_sbe_v1_7.instrument_id.size
  local range = buffer(offset, length)
  local value = range:le_int()
  local display = coinbase_coinbasederivatives_ordersapi_sbe_v1_7.instrument_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_coinbase_coinbasederivatives_ordersapi_sbe_v1_7.fields.instrument_id, range, value, display)

  return offset + length, value
end

-- Instrument Status
coinbase_coinbasederivatives_ordersapi_sbe_v1_7.instrument_status = {}

-- Size: Instrument Status
coinbase_coinbasederivatives_ordersapi_sbe_v1_7.instrument_status.size = 1

-- Display: Instrument Status
coinbase_coinbasederivatives_ordersapi_sbe_v1_7.instrument_status.display = function(value)
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
coinbase_coinbasederivatives_ordersapi_sbe_v1_7.instrument_status.dissect = function(buffer, offset, packet, parent)
  local length = coinbase_coinbasederivatives_ordersapi_sbe_v1_7.instrument_status.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = coinbase_coinbasederivatives_ordersapi_sbe_v1_7.instrument_status.display(value, buffer, offset, packet, parent)

  parent:add(omi_coinbase_coinbasederivatives_ordersapi_sbe_v1_7.fields.instrument_status, range, value, display)

  return offset + length, value
end

-- Is Aggressor
coinbase_coinbasederivatives_ordersapi_sbe_v1_7.is_aggressor = {}

-- Size: Is Aggressor
coinbase_coinbasederivatives_ordersapi_sbe_v1_7.is_aggressor.size = 1

-- Display: Is Aggressor
coinbase_coinbasederivatives_ordersapi_sbe_v1_7.is_aggressor.display = function(value)
  if value == 0 then
    return "Is Aggressor: False (0)"
  end
  if value == 1 then
    return "Is Aggressor: True (1)"
  end

  return "Is Aggressor: Unknown("..value..")"
end

-- Dissect: Is Aggressor
coinbase_coinbasederivatives_ordersapi_sbe_v1_7.is_aggressor.dissect = function(buffer, offset, packet, parent)
  local length = coinbase_coinbasederivatives_ordersapi_sbe_v1_7.is_aggressor.size
  local range = buffer(offset, length)
  local value = range:le_int()
  local display = coinbase_coinbasederivatives_ordersapi_sbe_v1_7.is_aggressor.display(value, buffer, offset, packet, parent)

  parent:add(omi_coinbase_coinbasederivatives_ordersapi_sbe_v1_7.fields.is_aggressor, range, value, display)

  return offset + length, value
end

-- Is Last Message
coinbase_coinbasederivatives_ordersapi_sbe_v1_7.is_last_message = {}

-- Size: Is Last Message
coinbase_coinbasederivatives_ordersapi_sbe_v1_7.is_last_message.size = 1

-- Display: Is Last Message
coinbase_coinbasederivatives_ordersapi_sbe_v1_7.is_last_message.display = function(value)
  if value == 0 then
    return "Is Last Message: False (0)"
  end
  if value == 1 then
    return "Is Last Message: True (1)"
  end

  return "Is Last Message: Unknown("..value..")"
end

-- Dissect: Is Last Message
coinbase_coinbasederivatives_ordersapi_sbe_v1_7.is_last_message.dissect = function(buffer, offset, packet, parent)
  local length = coinbase_coinbasederivatives_ordersapi_sbe_v1_7.is_last_message.size
  local range = buffer(offset, length)
  local value = range:le_int()
  local display = coinbase_coinbasederivatives_ordersapi_sbe_v1_7.is_last_message.display(value, buffer, offset, packet, parent)

  parent:add(omi_coinbase_coinbasederivatives_ordersapi_sbe_v1_7.fields.is_last_message, range, value, display)

  return offset + length, value
end

-- Last Exec Id
coinbase_coinbasederivatives_ordersapi_sbe_v1_7.last_exec_id = {}

-- Size: Last Exec Id
coinbase_coinbasederivatives_ordersapi_sbe_v1_7.last_exec_id.size = 8

-- Display: Last Exec Id
coinbase_coinbasederivatives_ordersapi_sbe_v1_7.last_exec_id.display = function(value)
  return "Last Exec Id: "..value
end

-- Dissect: Last Exec Id
coinbase_coinbasederivatives_ordersapi_sbe_v1_7.last_exec_id.dissect = function(buffer, offset, packet, parent)
  local length = coinbase_coinbasederivatives_ordersapi_sbe_v1_7.last_exec_id.size
  local range = buffer(offset, length)
  local value = range:le_int64()
  local display = coinbase_coinbasederivatives_ordersapi_sbe_v1_7.last_exec_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_coinbase_coinbasederivatives_ordersapi_sbe_v1_7.fields.last_exec_id, range, value, display)

  return offset + length, value
end

-- Last Processed Fill Id
coinbase_coinbasederivatives_ordersapi_sbe_v1_7.last_processed_fill_id = {}

-- Size: Last Processed Fill Id
coinbase_coinbasederivatives_ordersapi_sbe_v1_7.last_processed_fill_id.size = 8

-- Display: Last Processed Fill Id
coinbase_coinbasederivatives_ordersapi_sbe_v1_7.last_processed_fill_id.display = function(value)
  -- Check if field has value
  if value == Int64(0x00000000, 0x80000000) then
    return "Last Processed Fill Id: No Value"
  end

  return "Last Processed Fill Id: "..value
end

-- Dissect: Last Processed Fill Id
coinbase_coinbasederivatives_ordersapi_sbe_v1_7.last_processed_fill_id.dissect = function(buffer, offset, packet, parent)
  local length = coinbase_coinbasederivatives_ordersapi_sbe_v1_7.last_processed_fill_id.size
  local range = buffer(offset, length)
  local value = range:le_int64()
  local display = coinbase_coinbasederivatives_ordersapi_sbe_v1_7.last_processed_fill_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_coinbase_coinbasederivatives_ordersapi_sbe_v1_7.fields.last_processed_fill_id, range, value, display)

  return offset + length, value
end

-- Last Processed Seq No
coinbase_coinbasederivatives_ordersapi_sbe_v1_7.last_processed_seq_no = {}

-- Size: Last Processed Seq No
coinbase_coinbasederivatives_ordersapi_sbe_v1_7.last_processed_seq_no.size = 4

-- Display: Last Processed Seq No
coinbase_coinbasederivatives_ordersapi_sbe_v1_7.last_processed_seq_no.display = function(value)
  return "Last Processed Seq No: "..value
end

-- Dissect: Last Processed Seq No
coinbase_coinbasederivatives_ordersapi_sbe_v1_7.last_processed_seq_no.dissect = function(buffer, offset, packet, parent)
  local length = coinbase_coinbasederivatives_ordersapi_sbe_v1_7.last_processed_seq_no.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = coinbase_coinbasederivatives_ordersapi_sbe_v1_7.last_processed_seq_no.display(value, buffer, offset, packet, parent)

  parent:add(omi_coinbase_coinbasederivatives_ordersapi_sbe_v1_7.fields.last_processed_seq_no, range, value, display)

  return offset + length, value
end

-- Leg 1 Fill Price
coinbase_coinbasederivatives_ordersapi_sbe_v1_7.leg_1_fill_price = {}

-- Size: Leg 1 Fill Price
coinbase_coinbasederivatives_ordersapi_sbe_v1_7.leg_1_fill_price.size = 8

-- Display: Leg 1 Fill Price
coinbase_coinbasederivatives_ordersapi_sbe_v1_7.leg_1_fill_price.display = function(value)
  return "Leg 1 Fill Price: "..value
end

-- Translate: Leg 1 Fill Price
coinbase_coinbasederivatives_ordersapi_sbe_v1_7.leg_1_fill_price.translate = function(raw)
  return raw:tonumber()/1000000000
end

-- Dissect: Leg 1 Fill Price
coinbase_coinbasederivatives_ordersapi_sbe_v1_7.leg_1_fill_price.dissect = function(buffer, offset, packet, parent)
  local length = coinbase_coinbasederivatives_ordersapi_sbe_v1_7.leg_1_fill_price.size
  local range = buffer(offset, length)
  local raw = range:le_int64()
  local value = coinbase_coinbasederivatives_ordersapi_sbe_v1_7.leg_1_fill_price.translate(raw)
  local display = coinbase_coinbasederivatives_ordersapi_sbe_v1_7.leg_1_fill_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_coinbase_coinbasederivatives_ordersapi_sbe_v1_7.fields.leg_1_fill_price, range, value, display)

  return offset + length, value
end

-- Leg 2 Fill Price
coinbase_coinbasederivatives_ordersapi_sbe_v1_7.leg_2_fill_price = {}

-- Size: Leg 2 Fill Price
coinbase_coinbasederivatives_ordersapi_sbe_v1_7.leg_2_fill_price.size = 8

-- Display: Leg 2 Fill Price
coinbase_coinbasederivatives_ordersapi_sbe_v1_7.leg_2_fill_price.display = function(value)
  return "Leg 2 Fill Price: "..value
end

-- Translate: Leg 2 Fill Price
coinbase_coinbasederivatives_ordersapi_sbe_v1_7.leg_2_fill_price.translate = function(raw)
  return raw:tonumber()/1000000000
end

-- Dissect: Leg 2 Fill Price
coinbase_coinbasederivatives_ordersapi_sbe_v1_7.leg_2_fill_price.dissect = function(buffer, offset, packet, parent)
  local length = coinbase_coinbasederivatives_ordersapi_sbe_v1_7.leg_2_fill_price.size
  local range = buffer(offset, length)
  local raw = range:le_int64()
  local value = coinbase_coinbasederivatives_ordersapi_sbe_v1_7.leg_2_fill_price.translate(raw)
  local display = coinbase_coinbasederivatives_ordersapi_sbe_v1_7.leg_2_fill_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_coinbase_coinbasederivatives_ordersapi_sbe_v1_7.fields.leg_2_fill_price, range, value, display)

  return offset + length, value
end

-- Limit Price
coinbase_coinbasederivatives_ordersapi_sbe_v1_7.limit_price = {}

-- Size: Limit Price
coinbase_coinbasederivatives_ordersapi_sbe_v1_7.limit_price.size = 8

-- Display: Limit Price
coinbase_coinbasederivatives_ordersapi_sbe_v1_7.limit_price.display = function(value)
  return "Limit Price: "..value
end

-- Translate: Limit Price
coinbase_coinbasederivatives_ordersapi_sbe_v1_7.limit_price.translate = function(raw)
  return raw:tonumber()/1000000000
end

-- Dissect: Limit Price
coinbase_coinbasederivatives_ordersapi_sbe_v1_7.limit_price.dissect = function(buffer, offset, packet, parent)
  local length = coinbase_coinbasederivatives_ordersapi_sbe_v1_7.limit_price.size
  local range = buffer(offset, length)
  local raw = range:le_int64()
  local value = coinbase_coinbasederivatives_ordersapi_sbe_v1_7.limit_price.translate(raw)
  local display = coinbase_coinbasederivatives_ordersapi_sbe_v1_7.limit_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_coinbase_coinbasederivatives_ordersapi_sbe_v1_7.fields.limit_price, range, value, display)

  return offset + length, value
end

-- Match Id
coinbase_coinbasederivatives_ordersapi_sbe_v1_7.match_id = {}

-- Size: Match Id
coinbase_coinbasederivatives_ordersapi_sbe_v1_7.match_id.size = 8

-- Display: Match Id
coinbase_coinbasederivatives_ordersapi_sbe_v1_7.match_id.display = function(value)
  return "Match Id: "..value
end

-- Dissect: Match Id
coinbase_coinbasederivatives_ordersapi_sbe_v1_7.match_id.dissect = function(buffer, offset, packet, parent)
  local length = coinbase_coinbasederivatives_ordersapi_sbe_v1_7.match_id.size
  local range = buffer(offset, length)
  local value = range:le_int64()
  local display = coinbase_coinbasederivatives_ordersapi_sbe_v1_7.match_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_coinbase_coinbasederivatives_ordersapi_sbe_v1_7.fields.match_id, range, value, display)

  return offset + length, value
end

-- Message Flags
coinbase_coinbasederivatives_ordersapi_sbe_v1_7.message_flags = {}

-- Size: Message Flags
coinbase_coinbasederivatives_ordersapi_sbe_v1_7.message_flags.size = 1

-- Display: Message Flags
coinbase_coinbasederivatives_ordersapi_sbe_v1_7.message_flags.display = function(value)
  return "Message Flags: "..value
end

-- Dissect: Message Flags
coinbase_coinbasederivatives_ordersapi_sbe_v1_7.message_flags.dissect = function(buffer, offset, packet, parent)
  local length = coinbase_coinbasederivatives_ordersapi_sbe_v1_7.message_flags.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = coinbase_coinbasederivatives_ordersapi_sbe_v1_7.message_flags.display(value, buffer, offset, packet, parent)

  parent:add(omi_coinbase_coinbasederivatives_ordersapi_sbe_v1_7.fields.message_flags, range, value, display)

  return offset + length, value
end

-- Message Length
coinbase_coinbasederivatives_ordersapi_sbe_v1_7.message_length = {}

-- Size: Message Length
coinbase_coinbasederivatives_ordersapi_sbe_v1_7.message_length.size = 2

-- Display: Message Length
coinbase_coinbasederivatives_ordersapi_sbe_v1_7.message_length.display = function(value)
  return "Message Length: "..value
end

-- Dissect: Message Length
coinbase_coinbasederivatives_ordersapi_sbe_v1_7.message_length.dissect = function(buffer, offset, packet, parent)
  local length = coinbase_coinbasederivatives_ordersapi_sbe_v1_7.message_length.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = coinbase_coinbasederivatives_ordersapi_sbe_v1_7.message_length.display(value, buffer, offset, packet, parent)

  parent:add(omi_coinbase_coinbasederivatives_ordersapi_sbe_v1_7.fields.message_length, range, value, display)

  return offset + length, value
end

-- Min Qty
coinbase_coinbasederivatives_ordersapi_sbe_v1_7.min_qty = {}

-- Size: Min Qty
coinbase_coinbasederivatives_ordersapi_sbe_v1_7.min_qty.size = 4

-- Display: Min Qty
coinbase_coinbasederivatives_ordersapi_sbe_v1_7.min_qty.display = function(value)
  -- Check if field has value
  if value == -2147483648 then
    return "Min Qty: No Value"
  end

  return "Min Qty: "..value
end

-- Dissect: Min Qty
coinbase_coinbasederivatives_ordersapi_sbe_v1_7.min_qty.dissect = function(buffer, offset, packet, parent)
  local length = coinbase_coinbasederivatives_ordersapi_sbe_v1_7.min_qty.size
  local range = buffer(offset, length)
  local value = range:le_int()
  local display = coinbase_coinbasederivatives_ordersapi_sbe_v1_7.min_qty.display(value, buffer, offset, packet, parent)

  parent:add(omi_coinbase_coinbasederivatives_ordersapi_sbe_v1_7.fields.min_qty, range, value, display)

  return offset + length, value
end

-- New Limit Price
coinbase_coinbasederivatives_ordersapi_sbe_v1_7.new_limit_price = {}

-- Size: New Limit Price
coinbase_coinbasederivatives_ordersapi_sbe_v1_7.new_limit_price.size = 8

-- Display: New Limit Price
coinbase_coinbasederivatives_ordersapi_sbe_v1_7.new_limit_price.display = function(raw, value)
  -- Check null sentinel value
  if raw == Int64(0x00000000, 0x80000000) then
    return "New Limit Price: No Value"
  end

  return "New Limit Price: "..value
end

-- Translate: New Limit Price
coinbase_coinbasederivatives_ordersapi_sbe_v1_7.new_limit_price.translate = function(raw)
  -- Check null sentinel value
  if raw == Int64(0x00000000, 0x80000000) then
    return 0/0
  end

  return raw:tonumber()/1000000000
end

-- Dissect: New Limit Price
coinbase_coinbasederivatives_ordersapi_sbe_v1_7.new_limit_price.dissect = function(buffer, offset, packet, parent)
  local length = coinbase_coinbasederivatives_ordersapi_sbe_v1_7.new_limit_price.size
  local range = buffer(offset, length)
  local raw = range:le_int64()
  local value = coinbase_coinbasederivatives_ordersapi_sbe_v1_7.new_limit_price.translate(raw)
  local display = coinbase_coinbasederivatives_ordersapi_sbe_v1_7.new_limit_price.display(raw, value, buffer, offset, packet, parent)

  parent:add(omi_coinbase_coinbasederivatives_ordersapi_sbe_v1_7.fields.new_limit_price, range, value, display)

  return offset + length, value
end

-- New Quantity
coinbase_coinbasederivatives_ordersapi_sbe_v1_7.new_quantity = {}

-- Size: New Quantity
coinbase_coinbasederivatives_ordersapi_sbe_v1_7.new_quantity.size = 4

-- Display: New Quantity
coinbase_coinbasederivatives_ordersapi_sbe_v1_7.new_quantity.display = function(value)
  -- Check if field has value
  if value == -2147483648 then
    return "New Quantity: No Value"
  end

  return "New Quantity: "..value
end

-- Dissect: New Quantity
coinbase_coinbasederivatives_ordersapi_sbe_v1_7.new_quantity.dissect = function(buffer, offset, packet, parent)
  local length = coinbase_coinbasederivatives_ordersapi_sbe_v1_7.new_quantity.size
  local range = buffer(offset, length)
  local value = range:le_int()
  local display = coinbase_coinbasederivatives_ordersapi_sbe_v1_7.new_quantity.display(value, buffer, offset, packet, parent)

  parent:add(omi_coinbase_coinbasederivatives_ordersapi_sbe_v1_7.fields.new_quantity, range, value, display)

  return offset + length, value
end

-- New Sequence Number
coinbase_coinbasederivatives_ordersapi_sbe_v1_7.new_sequence_number = {}

-- Size: New Sequence Number
coinbase_coinbasederivatives_ordersapi_sbe_v1_7.new_sequence_number.size = 4

-- Display: New Sequence Number
coinbase_coinbasederivatives_ordersapi_sbe_v1_7.new_sequence_number.display = function(value)
  return "New Sequence Number: "..value
end

-- Dissect: New Sequence Number
coinbase_coinbasederivatives_ordersapi_sbe_v1_7.new_sequence_number.dissect = function(buffer, offset, packet, parent)
  local length = coinbase_coinbasederivatives_ordersapi_sbe_v1_7.new_sequence_number.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = coinbase_coinbasederivatives_ordersapi_sbe_v1_7.new_sequence_number.display(value, buffer, offset, packet, parent)

  parent:add(omi_coinbase_coinbasederivatives_ordersapi_sbe_v1_7.fields.new_sequence_number, range, value, display)

  return offset + length, value
end

-- Num Users Affected
coinbase_coinbasederivatives_ordersapi_sbe_v1_7.num_users_affected = {}

-- Size: Num Users Affected
coinbase_coinbasederivatives_ordersapi_sbe_v1_7.num_users_affected.size = 4

-- Display: Num Users Affected
coinbase_coinbasederivatives_ordersapi_sbe_v1_7.num_users_affected.display = function(value)
  return "Num Users Affected: "..value
end

-- Dissect: Num Users Affected
coinbase_coinbasederivatives_ordersapi_sbe_v1_7.num_users_affected.dissect = function(buffer, offset, packet, parent)
  local length = coinbase_coinbasederivatives_ordersapi_sbe_v1_7.num_users_affected.size
  local range = buffer(offset, length)
  local value = range:le_int()
  local display = coinbase_coinbasederivatives_ordersapi_sbe_v1_7.num_users_affected.display(value, buffer, offset, packet, parent)

  parent:add(omi_coinbase_coinbasederivatives_ordersapi_sbe_v1_7.fields.num_users_affected, range, value, display)

  return offset + length, value
end

-- Only Current Session
coinbase_coinbasederivatives_ordersapi_sbe_v1_7.only_current_session = {}

-- Size: Only Current Session
coinbase_coinbasederivatives_ordersapi_sbe_v1_7.only_current_session.size = 1

-- Display: Only Current Session
coinbase_coinbasederivatives_ordersapi_sbe_v1_7.only_current_session.display = function(value)
  if value == 0 then
    return "Only Current Session: False (0)"
  end
  if value == 1 then
    return "Only Current Session: True (1)"
  end

  return "Only Current Session: Unknown("..value..")"
end

-- Dissect: Only Current Session
coinbase_coinbasederivatives_ordersapi_sbe_v1_7.only_current_session.dissect = function(buffer, offset, packet, parent)
  local length = coinbase_coinbasederivatives_ordersapi_sbe_v1_7.only_current_session.size
  local range = buffer(offset, length)
  local value = range:le_int()
  local display = coinbase_coinbasederivatives_ordersapi_sbe_v1_7.only_current_session.display(value, buffer, offset, packet, parent)

  parent:add(omi_coinbase_coinbasederivatives_ordersapi_sbe_v1_7.fields.only_current_session, range, value, display)

  return offset + length, value
end

-- Order Id
coinbase_coinbasederivatives_ordersapi_sbe_v1_7.order_id = {}

-- Size: Order Id
coinbase_coinbasederivatives_ordersapi_sbe_v1_7.order_id.size = 8

-- Display: Order Id
coinbase_coinbasederivatives_ordersapi_sbe_v1_7.order_id.display = function(value)
  return "Order Id: "..value
end

-- Dissect: Order Id
coinbase_coinbasederivatives_ordersapi_sbe_v1_7.order_id.dissect = function(buffer, offset, packet, parent)
  local length = coinbase_coinbasederivatives_ordersapi_sbe_v1_7.order_id.size
  local range = buffer(offset, length)
  local value = range:le_int64()
  local display = coinbase_coinbasederivatives_ordersapi_sbe_v1_7.order_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_coinbase_coinbasederivatives_ordersapi_sbe_v1_7.fields.order_id, range, value, display)

  return offset + length, value
end

-- Order Id Optional
coinbase_coinbasederivatives_ordersapi_sbe_v1_7.order_id_optional = {}

-- Size: Order Id Optional
coinbase_coinbasederivatives_ordersapi_sbe_v1_7.order_id_optional.size = 8

-- Display: Order Id Optional
coinbase_coinbasederivatives_ordersapi_sbe_v1_7.order_id_optional.display = function(value)
  -- Check if field has value
  if value == Int64(0x00000000, 0x80000000) then
    return "Order Id Optional: No Value"
  end

  return "Order Id Optional: "..value
end

-- Dissect: Order Id Optional
coinbase_coinbasederivatives_ordersapi_sbe_v1_7.order_id_optional.dissect = function(buffer, offset, packet, parent)
  local length = coinbase_coinbasederivatives_ordersapi_sbe_v1_7.order_id_optional.size
  local range = buffer(offset, length)
  local value = range:le_int64()
  local display = coinbase_coinbasederivatives_ordersapi_sbe_v1_7.order_id_optional.display(value, buffer, offset, packet, parent)

  parent:add(omi_coinbase_coinbasederivatives_ordersapi_sbe_v1_7.fields.order_id_optional, range, value, display)

  return offset + length, value
end

-- Order Reject Details
coinbase_coinbasederivatives_ordersapi_sbe_v1_7.order_reject_details = {}

-- Size: Order Reject Details
coinbase_coinbasederivatives_ordersapi_sbe_v1_7.order_reject_details.size = 47

-- Display: Order Reject Details
coinbase_coinbasederivatives_ordersapi_sbe_v1_7.order_reject_details.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Order Reject Details: No Value"
  end

  return "Order Reject Details: "..value
end

-- Dissect: Order Reject Details
coinbase_coinbasederivatives_ordersapi_sbe_v1_7.order_reject_details.dissect = function(buffer, offset, packet, parent)
  local length = coinbase_coinbasederivatives_ordersapi_sbe_v1_7.order_reject_details.size
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

  local display = coinbase_coinbasederivatives_ordersapi_sbe_v1_7.order_reject_details.display(value, buffer, offset, packet, parent)

  parent:add(omi_coinbase_coinbasederivatives_ordersapi_sbe_v1_7.fields.order_reject_details, range, value, display)

  return offset + length, value
end

-- Order Reject Reason
coinbase_coinbasederivatives_ordersapi_sbe_v1_7.order_reject_reason = {}

-- Size: Order Reject Reason
coinbase_coinbasederivatives_ordersapi_sbe_v1_7.order_reject_reason.size = 1

-- Display: Order Reject Reason
coinbase_coinbasederivatives_ordersapi_sbe_v1_7.order_reject_reason.display = function(value)
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
coinbase_coinbasederivatives_ordersapi_sbe_v1_7.order_reject_reason.dissect = function(buffer, offset, packet, parent)
  local length = coinbase_coinbasederivatives_ordersapi_sbe_v1_7.order_reject_reason.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = coinbase_coinbasederivatives_ordersapi_sbe_v1_7.order_reject_reason.display(value, buffer, offset, packet, parent)

  parent:add(omi_coinbase_coinbasederivatives_ordersapi_sbe_v1_7.fields.order_reject_reason, range, value, display)

  return offset + length, value
end

-- Padding
coinbase_coinbasederivatives_ordersapi_sbe_v1_7.padding = {}

-- Display: Padding
coinbase_coinbasederivatives_ordersapi_sbe_v1_7.padding.display = function(value)
  return "Padding: "..value
end

-- Dissect runtime sized field: Padding
coinbase_coinbasederivatives_ordersapi_sbe_v1_7.padding.dissect = function(buffer, offset, packet, parent, size)
  local range = buffer(offset, size)
  local value = range:bytes():tohex(false, " ")
  local display = coinbase_coinbasederivatives_ordersapi_sbe_v1_7.padding.display(value, packet, parent, size)

  parent:add(omi_coinbase_coinbasederivatives_ordersapi_sbe_v1_7.fields.padding, range, value, display)

  return offset + size, value
end

-- Password
coinbase_coinbasederivatives_ordersapi_sbe_v1_7.password = {}

-- Size: Password
coinbase_coinbasederivatives_ordersapi_sbe_v1_7.password.size = 32

-- Display: Password
coinbase_coinbasederivatives_ordersapi_sbe_v1_7.password.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Password: No Value"
  end

  return "Password: "..value
end

-- Dissect: Password
coinbase_coinbasederivatives_ordersapi_sbe_v1_7.password.dissect = function(buffer, offset, packet, parent)
  local length = coinbase_coinbasederivatives_ordersapi_sbe_v1_7.password.size
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

  local display = coinbase_coinbasederivatives_ordersapi_sbe_v1_7.password.display(value, buffer, offset, packet, parent)

  parent:add(omi_coinbase_coinbasederivatives_ordersapi_sbe_v1_7.fields.password, range, value, display)

  return offset + length, value
end

-- Protocol Id
coinbase_coinbasederivatives_ordersapi_sbe_v1_7.protocol_id = {}

-- Size: Protocol Id
coinbase_coinbasederivatives_ordersapi_sbe_v1_7.protocol_id.size = 1

-- Display: Protocol Id
coinbase_coinbasederivatives_ordersapi_sbe_v1_7.protocol_id.display = function(value)
  return "Protocol Id: "..value
end

-- Dissect: Protocol Id
coinbase_coinbasederivatives_ordersapi_sbe_v1_7.protocol_id.dissect = function(buffer, offset, packet, parent)
  local length = coinbase_coinbasederivatives_ordersapi_sbe_v1_7.protocol_id.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = coinbase_coinbasederivatives_ordersapi_sbe_v1_7.protocol_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_coinbase_coinbasederivatives_ordersapi_sbe_v1_7.fields.protocol_id, range, value, display)

  return offset + length, value
end

-- Quantity
coinbase_coinbasederivatives_ordersapi_sbe_v1_7.quantity = {}

-- Size: Quantity
coinbase_coinbasederivatives_ordersapi_sbe_v1_7.quantity.size = 4

-- Display: Quantity
coinbase_coinbasederivatives_ordersapi_sbe_v1_7.quantity.display = function(value)
  return "Quantity: "..value
end

-- Dissect: Quantity
coinbase_coinbasederivatives_ordersapi_sbe_v1_7.quantity.dissect = function(buffer, offset, packet, parent)
  local length = coinbase_coinbasederivatives_ordersapi_sbe_v1_7.quantity.size
  local range = buffer(offset, length)
  local value = range:le_int()
  local display = coinbase_coinbasederivatives_ordersapi_sbe_v1_7.quantity.display(value, buffer, offset, packet, parent)

  parent:add(omi_coinbase_coinbasederivatives_ordersapi_sbe_v1_7.fields.quantity, range, value, display)

  return offset + length, value
end

-- Reason
coinbase_coinbasederivatives_ordersapi_sbe_v1_7.reason = {}

-- Size: Reason
coinbase_coinbasederivatives_ordersapi_sbe_v1_7.reason.size = 64

-- Display: Reason
coinbase_coinbasederivatives_ordersapi_sbe_v1_7.reason.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Reason: No Value"
  end

  return "Reason: "..value
end

-- Dissect: Reason
coinbase_coinbasederivatives_ordersapi_sbe_v1_7.reason.dissect = function(buffer, offset, packet, parent)
  local length = coinbase_coinbasederivatives_ordersapi_sbe_v1_7.reason.size
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

  local display = coinbase_coinbasederivatives_ordersapi_sbe_v1_7.reason.display(value, buffer, offset, packet, parent)

  parent:add(omi_coinbase_coinbasederivatives_ordersapi_sbe_v1_7.fields.reason, range, value, display)

  return offset + length, value
end

-- Receive Time
coinbase_coinbasederivatives_ordersapi_sbe_v1_7.receive_time = {}

-- Size: Receive Time
coinbase_coinbasederivatives_ordersapi_sbe_v1_7.receive_time.size = 8

-- Display: Receive Time
coinbase_coinbasederivatives_ordersapi_sbe_v1_7.receive_time.display = function(value)
  -- Parse unix nanosecond timestamp
  local seconds = (value / UInt64(1000000000)):tonumber()
  local nanoseconds = (value % UInt64(1000000000)):tonumber()

  return "Receive Time: "..os.date("%Y-%m-%d %H:%M:%S.", seconds)..string.format("%09d", nanoseconds)
end

-- Dissect: Receive Time
coinbase_coinbasederivatives_ordersapi_sbe_v1_7.receive_time.dissect = function(buffer, offset, packet, parent)
  local length = coinbase_coinbasederivatives_ordersapi_sbe_v1_7.receive_time.size
  local range = buffer(offset, length)
  local value = range:le_int64()
  local display = coinbase_coinbasederivatives_ordersapi_sbe_v1_7.receive_time.display(value, buffer, offset, packet, parent)

  parent:add(omi_coinbase_coinbasederivatives_ordersapi_sbe_v1_7.fields.receive_time, range, value, display)

  return offset + length, value
end

-- Request Time
coinbase_coinbasederivatives_ordersapi_sbe_v1_7.request_time = {}

-- Size: Request Time
coinbase_coinbasederivatives_ordersapi_sbe_v1_7.request_time.size = 8

-- Display: Request Time
coinbase_coinbasederivatives_ordersapi_sbe_v1_7.request_time.display = function(value)
  -- Parse unix nanosecond timestamp
  local seconds = (value / UInt64(1000000000)):tonumber()
  local nanoseconds = (value % UInt64(1000000000)):tonumber()

  return "Request Time: "..os.date("%Y-%m-%d %H:%M:%S.", seconds)..string.format("%09d", nanoseconds)
end

-- Dissect: Request Time
coinbase_coinbasederivatives_ordersapi_sbe_v1_7.request_time.dissect = function(buffer, offset, packet, parent)
  local length = coinbase_coinbasederivatives_ordersapi_sbe_v1_7.request_time.size
  local range = buffer(offset, length)
  local value = range:le_int64()
  local display = coinbase_coinbasederivatives_ordersapi_sbe_v1_7.request_time.display(value, buffer, offset, packet, parent)

  parent:add(omi_coinbase_coinbasederivatives_ordersapi_sbe_v1_7.fields.request_time, range, value, display)

  return offset + length, value
end

-- Request Trading Lock
coinbase_coinbasederivatives_ordersapi_sbe_v1_7.request_trading_lock = {}

-- Size: Request Trading Lock
coinbase_coinbasederivatives_ordersapi_sbe_v1_7.request_trading_lock.size = 1

-- Display: Request Trading Lock
coinbase_coinbasederivatives_ordersapi_sbe_v1_7.request_trading_lock.display = function(value)
  if value == 0 then
    return "Request Trading Lock: False (0)"
  end
  if value == 1 then
    return "Request Trading Lock: True (1)"
  end

  return "Request Trading Lock: Unknown("..value..")"
end

-- Dissect: Request Trading Lock
coinbase_coinbasederivatives_ordersapi_sbe_v1_7.request_trading_lock.dissect = function(buffer, offset, packet, parent)
  local length = coinbase_coinbasederivatives_ordersapi_sbe_v1_7.request_trading_lock.size
  local range = buffer(offset, length)
  local value = range:le_int()
  local display = coinbase_coinbasederivatives_ordersapi_sbe_v1_7.request_trading_lock.display(value, buffer, offset, packet, parent)

  parent:add(omi_coinbase_coinbasederivatives_ordersapi_sbe_v1_7.fields.request_trading_lock, range, value, display)

  return offset + length, value
end

-- Resend Reject Reason
coinbase_coinbasederivatives_ordersapi_sbe_v1_7.resend_reject_reason = {}

-- Size: Resend Reject Reason
coinbase_coinbasederivatives_ordersapi_sbe_v1_7.resend_reject_reason.size = 1

-- Display: Resend Reject Reason
coinbase_coinbasederivatives_ordersapi_sbe_v1_7.resend_reject_reason.display = function(value)
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
coinbase_coinbasederivatives_ordersapi_sbe_v1_7.resend_reject_reason.dissect = function(buffer, offset, packet, parent)
  local length = coinbase_coinbasederivatives_ordersapi_sbe_v1_7.resend_reject_reason.size
  local range = buffer(offset, length)
  local value = range:le_int()
  local display = coinbase_coinbasederivatives_ordersapi_sbe_v1_7.resend_reject_reason.display(value, buffer, offset, packet, parent)

  parent:add(omi_coinbase_coinbasederivatives_ordersapi_sbe_v1_7.fields.resend_reject_reason, range, value, display)

  return offset + length, value
end

-- Resent Event Count
coinbase_coinbasederivatives_ordersapi_sbe_v1_7.resent_event_count = {}

-- Size: Resent Event Count
coinbase_coinbasederivatives_ordersapi_sbe_v1_7.resent_event_count.size = 4

-- Display: Resent Event Count
coinbase_coinbasederivatives_ordersapi_sbe_v1_7.resent_event_count.display = function(value)
  return "Resent Event Count: "..value
end

-- Dissect: Resent Event Count
coinbase_coinbasederivatives_ordersapi_sbe_v1_7.resent_event_count.dissect = function(buffer, offset, packet, parent)
  local length = coinbase_coinbasederivatives_ordersapi_sbe_v1_7.resent_event_count.size
  local range = buffer(offset, length)
  local value = range:le_int()
  local display = coinbase_coinbasederivatives_ordersapi_sbe_v1_7.resent_event_count.display(value, buffer, offset, packet, parent)

  parent:add(omi_coinbase_coinbasederivatives_ordersapi_sbe_v1_7.fields.resent_event_count, range, value, display)

  return offset + length, value
end

-- Reserved
coinbase_coinbasederivatives_ordersapi_sbe_v1_7.reserved = {}

-- Size: Reserved
coinbase_coinbasederivatives_ordersapi_sbe_v1_7.reserved.size = 4

-- Display: Reserved
coinbase_coinbasederivatives_ordersapi_sbe_v1_7.reserved.display = function(value)
  return "Reserved: "..value
end

-- Dissect: Reserved
coinbase_coinbasederivatives_ordersapi_sbe_v1_7.reserved.dissect = function(buffer, offset, packet, parent)
  local length = coinbase_coinbasederivatives_ordersapi_sbe_v1_7.reserved.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = coinbase_coinbasederivatives_ordersapi_sbe_v1_7.reserved.display(value, buffer, offset, packet, parent)

  parent:add(omi_coinbase_coinbasederivatives_ordersapi_sbe_v1_7.fields.reserved, range, value, display)

  return offset + length, value
end

-- Reserved Byte
coinbase_coinbasederivatives_ordersapi_sbe_v1_7.reserved_byte = {}

-- Size: Reserved Byte
coinbase_coinbasederivatives_ordersapi_sbe_v1_7.reserved_byte.size = 1

-- Display: Reserved Byte
coinbase_coinbasederivatives_ordersapi_sbe_v1_7.reserved_byte.display = function(value)
  return "Reserved Byte: "..value
end

-- Dissect: Reserved Byte
coinbase_coinbasederivatives_ordersapi_sbe_v1_7.reserved_byte.dissect = function(buffer, offset, packet, parent)
  local length = coinbase_coinbasederivatives_ordersapi_sbe_v1_7.reserved_byte.size
  local range = buffer(offset, length)
  local value = range:le_int()
  local display = coinbase_coinbasederivatives_ordersapi_sbe_v1_7.reserved_byte.display(value, buffer, offset, packet, parent)

  parent:add(omi_coinbase_coinbasederivatives_ordersapi_sbe_v1_7.fields.reserved_byte, range, value, display)

  return offset + length, value
end

-- Reset Seq Num
coinbase_coinbasederivatives_ordersapi_sbe_v1_7.reset_seq_num = {}

-- Size: Reset Seq Num
coinbase_coinbasederivatives_ordersapi_sbe_v1_7.reset_seq_num.size = 1

-- Display: Reset Seq Num
coinbase_coinbasederivatives_ordersapi_sbe_v1_7.reset_seq_num.display = function(value)
  if value == 0 then
    return "Reset Seq Num: False (0)"
  end
  if value == 1 then
    return "Reset Seq Num: True (1)"
  end

  return "Reset Seq Num: Unknown("..value..")"
end

-- Dissect: Reset Seq Num
coinbase_coinbasederivatives_ordersapi_sbe_v1_7.reset_seq_num.dissect = function(buffer, offset, packet, parent)
  local length = coinbase_coinbasederivatives_ordersapi_sbe_v1_7.reset_seq_num.size
  local range = buffer(offset, length)
  local value = range:le_int()
  local display = coinbase_coinbasederivatives_ordersapi_sbe_v1_7.reset_seq_num.display(value, buffer, offset, packet, parent)

  parent:add(omi_coinbase_coinbasederivatives_ordersapi_sbe_v1_7.fields.reset_seq_num, range, value, display)

  return offset + length, value
end

-- Schema Id
coinbase_coinbasederivatives_ordersapi_sbe_v1_7.schema_id = {}

-- Size: Schema Id
coinbase_coinbasederivatives_ordersapi_sbe_v1_7.schema_id.size = 2

-- Display: Schema Id
coinbase_coinbasederivatives_ordersapi_sbe_v1_7.schema_id.display = function(value)
  if value == 1100 then
    return "Schema Id: SchemaId"
  end

  return "Schema Id: Unknown("..value..")"
end

-- Dissect: Schema Id
coinbase_coinbasederivatives_ordersapi_sbe_v1_7.schema_id.dissect = function(buffer, offset, packet, parent)
  local length = coinbase_coinbasederivatives_ordersapi_sbe_v1_7.schema_id.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = coinbase_coinbasederivatives_ordersapi_sbe_v1_7.schema_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_coinbase_coinbasederivatives_ordersapi_sbe_v1_7.fields.schema_id, range, value, display)

  return offset + length, value
end

-- Security Type
coinbase_coinbasederivatives_ordersapi_sbe_v1_7.security_type = {}

-- Size: Security Type
coinbase_coinbasederivatives_ordersapi_sbe_v1_7.security_type.size = 1

-- Display: Security Type
coinbase_coinbasederivatives_ordersapi_sbe_v1_7.security_type.display = function(value)
  if value == 0 then
    return "Security Type: Futures (0)"
  end
  if value == 1 then
    return "Security Type: Options (1)"
  end

  return "Security Type: Unknown("..value..")"
end

-- Dissect: Security Type
coinbase_coinbasederivatives_ordersapi_sbe_v1_7.security_type.dissect = function(buffer, offset, packet, parent)
  local length = coinbase_coinbasederivatives_ordersapi_sbe_v1_7.security_type.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = coinbase_coinbasederivatives_ordersapi_sbe_v1_7.security_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_coinbase_coinbasederivatives_ordersapi_sbe_v1_7.fields.security_type, range, value, display)

  return offset + length, value
end

-- Send Time Epoch Nanos
coinbase_coinbasederivatives_ordersapi_sbe_v1_7.send_time_epoch_nanos = {}

-- Size: Send Time Epoch Nanos
coinbase_coinbasederivatives_ordersapi_sbe_v1_7.send_time_epoch_nanos.size = 8

-- Display: Send Time Epoch Nanos
coinbase_coinbasederivatives_ordersapi_sbe_v1_7.send_time_epoch_nanos.display = function(value)
  -- Parse unix nanosecond timestamp
  local seconds = (value / UInt64(1000000000)):tonumber()
  local nanoseconds = (value % UInt64(1000000000)):tonumber()

  return "Send Time Epoch Nanos: "..os.date("%Y-%m-%d %H:%M:%S.", seconds)..string.format("%09d", nanoseconds)
end

-- Dissect: Send Time Epoch Nanos
coinbase_coinbasederivatives_ordersapi_sbe_v1_7.send_time_epoch_nanos.dissect = function(buffer, offset, packet, parent)
  local length = coinbase_coinbasederivatives_ordersapi_sbe_v1_7.send_time_epoch_nanos.size
  local range = buffer(offset, length)
  local value = range:le_int64()
  local display = coinbase_coinbasederivatives_ordersapi_sbe_v1_7.send_time_epoch_nanos.display(value, buffer, offset, packet, parent)

  parent:add(omi_coinbase_coinbasederivatives_ordersapi_sbe_v1_7.fields.send_time_epoch_nanos, range, value, display)

  return offset + length, value
end

-- Sequence Number
coinbase_coinbasederivatives_ordersapi_sbe_v1_7.sequence_number = {}

-- Size: Sequence Number
coinbase_coinbasederivatives_ordersapi_sbe_v1_7.sequence_number.size = 4

-- Display: Sequence Number
coinbase_coinbasederivatives_ordersapi_sbe_v1_7.sequence_number.display = function(value)
  return "Sequence Number: "..value
end

-- Dissect: Sequence Number
coinbase_coinbasederivatives_ordersapi_sbe_v1_7.sequence_number.dissect = function(buffer, offset, packet, parent)
  local length = coinbase_coinbasederivatives_ordersapi_sbe_v1_7.sequence_number.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = coinbase_coinbasederivatives_ordersapi_sbe_v1_7.sequence_number.display(value, buffer, offset, packet, parent)

  parent:add(omi_coinbase_coinbasederivatives_ordersapi_sbe_v1_7.fields.sequence_number, range, value, display)

  return offset + length, value
end

-- Server Time
coinbase_coinbasederivatives_ordersapi_sbe_v1_7.server_time = {}

-- Size: Server Time
coinbase_coinbasederivatives_ordersapi_sbe_v1_7.server_time.size = 8

-- Display: Server Time
coinbase_coinbasederivatives_ordersapi_sbe_v1_7.server_time.display = function(value)
  -- Parse unix nanosecond timestamp
  local seconds = (value / UInt64(1000000000)):tonumber()
  local nanoseconds = (value % UInt64(1000000000)):tonumber()

  return "Server Time: "..os.date("%Y-%m-%d %H:%M:%S.", seconds)..string.format("%09d", nanoseconds)
end

-- Dissect: Server Time
coinbase_coinbasederivatives_ordersapi_sbe_v1_7.server_time.dissect = function(buffer, offset, packet, parent)
  local length = coinbase_coinbasederivatives_ordersapi_sbe_v1_7.server_time.size
  local range = buffer(offset, length)
  local value = range:le_int64()
  local display = coinbase_coinbasederivatives_ordersapi_sbe_v1_7.server_time.display(value, buffer, offset, packet, parent)

  parent:add(omi_coinbase_coinbasederivatives_ordersapi_sbe_v1_7.fields.server_time, range, value, display)

  return offset + length, value
end

-- Side
coinbase_coinbasederivatives_ordersapi_sbe_v1_7.side = {}

-- Size: Side
coinbase_coinbasederivatives_ordersapi_sbe_v1_7.side.size = 1

-- Display: Side
coinbase_coinbasederivatives_ordersapi_sbe_v1_7.side.display = function(value)
  if value == 1 then
    return "Side: Buy (1)"
  end
  if value == -1 then
    return "Side: Sell (-1)"
  end

  return "Side: Unknown("..value..")"
end

-- Dissect: Side
coinbase_coinbasederivatives_ordersapi_sbe_v1_7.side.dissect = function(buffer, offset, packet, parent)
  local length = coinbase_coinbasederivatives_ordersapi_sbe_v1_7.side.size
  local range = buffer(offset, length)
  local value = range:le_int()
  local display = coinbase_coinbasederivatives_ordersapi_sbe_v1_7.side.display(value, buffer, offset, packet, parent)

  parent:add(omi_coinbase_coinbasederivatives_ordersapi_sbe_v1_7.fields.side, range, value, display)

  return offset + length, value
end

-- Symbol
coinbase_coinbasederivatives_ordersapi_sbe_v1_7.symbol = {}

-- Size: Symbol
coinbase_coinbasederivatives_ordersapi_sbe_v1_7.symbol.size = 32

-- Display: Symbol
coinbase_coinbasederivatives_ordersapi_sbe_v1_7.symbol.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Symbol: No Value"
  end

  return "Symbol: "..value
end

-- Dissect: Symbol
coinbase_coinbasederivatives_ordersapi_sbe_v1_7.symbol.dissect = function(buffer, offset, packet, parent)
  local length = coinbase_coinbasederivatives_ordersapi_sbe_v1_7.symbol.size
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

  local display = coinbase_coinbasederivatives_ordersapi_sbe_v1_7.symbol.display(value, buffer, offset, packet, parent)

  parent:add(omi_coinbase_coinbasederivatives_ordersapi_sbe_v1_7.fields.symbol, range, value, display)

  return offset + length, value
end

-- Template Id
coinbase_coinbasederivatives_ordersapi_sbe_v1_7.template_id = {}

-- Size: Template Id
coinbase_coinbasederivatives_ordersapi_sbe_v1_7.template_id.size = 2

-- Display: Template Id
coinbase_coinbasederivatives_ordersapi_sbe_v1_7.template_id.display = function(value)
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

  return "Template Id: Unknown("..value..")"
end

-- Dissect: Template Id
coinbase_coinbasederivatives_ordersapi_sbe_v1_7.template_id.dissect = function(buffer, offset, packet, parent)
  local length = coinbase_coinbasederivatives_ordersapi_sbe_v1_7.template_id.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = coinbase_coinbasederivatives_ordersapi_sbe_v1_7.template_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_coinbase_coinbasederivatives_ordersapi_sbe_v1_7.fields.template_id, range, value, display)

  return offset + length, value
end

-- Time In Force
coinbase_coinbasederivatives_ordersapi_sbe_v1_7.time_in_force = {}

-- Size: Time In Force
coinbase_coinbasederivatives_ordersapi_sbe_v1_7.time_in_force.size = 1

-- Display: Time In Force
coinbase_coinbasederivatives_ordersapi_sbe_v1_7.time_in_force.display = function(value)
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
coinbase_coinbasederivatives_ordersapi_sbe_v1_7.time_in_force.dissect = function(buffer, offset, packet, parent)
  local length = coinbase_coinbasederivatives_ordersapi_sbe_v1_7.time_in_force.size
  local range = buffer(offset, length)
  local value = range:le_int()
  local display = coinbase_coinbasederivatives_ordersapi_sbe_v1_7.time_in_force.display(value, buffer, offset, packet, parent)

  parent:add(omi_coinbase_coinbasederivatives_ordersapi_sbe_v1_7.fields.time_in_force, range, value, display)

  return offset + length, value
end

-- Timestamp
coinbase_coinbasederivatives_ordersapi_sbe_v1_7.timestamp = {}

-- Size: Timestamp
coinbase_coinbasederivatives_ordersapi_sbe_v1_7.timestamp.size = 8

-- Display: Timestamp
coinbase_coinbasederivatives_ordersapi_sbe_v1_7.timestamp.display = function(value)
  -- Parse unix nanosecond timestamp
  local seconds = (value / UInt64(1000000000)):tonumber()
  local nanoseconds = (value % UInt64(1000000000)):tonumber()

  return "Timestamp: "..os.date("%Y-%m-%d %H:%M:%S.", seconds)..string.format("%09d", nanoseconds)
end

-- Dissect: Timestamp
coinbase_coinbasederivatives_ordersapi_sbe_v1_7.timestamp.dissect = function(buffer, offset, packet, parent)
  local length = coinbase_coinbasederivatives_ordersapi_sbe_v1_7.timestamp.size
  local range = buffer(offset, length)
  local value = range:le_int64()
  local display = coinbase_coinbasederivatives_ordersapi_sbe_v1_7.timestamp.display(value, buffer, offset, packet, parent)

  parent:add(omi_coinbase_coinbasederivatives_ordersapi_sbe_v1_7.fields.timestamp, range, value, display)

  return offset + length, value
end

-- To Sequence Number
coinbase_coinbasederivatives_ordersapi_sbe_v1_7.to_sequence_number = {}

-- Size: To Sequence Number
coinbase_coinbasederivatives_ordersapi_sbe_v1_7.to_sequence_number.size = 4

-- Display: To Sequence Number
coinbase_coinbasederivatives_ordersapi_sbe_v1_7.to_sequence_number.display = function(value)
  return "To Sequence Number: "..value
end

-- Dissect: To Sequence Number
coinbase_coinbasederivatives_ordersapi_sbe_v1_7.to_sequence_number.dissect = function(buffer, offset, packet, parent)
  local length = coinbase_coinbasederivatives_ordersapi_sbe_v1_7.to_sequence_number.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = coinbase_coinbasederivatives_ordersapi_sbe_v1_7.to_sequence_number.display(value, buffer, offset, packet, parent)

  parent:add(omi_coinbase_coinbasederivatives_ordersapi_sbe_v1_7.fields.to_sequence_number, range, value, display)

  return offset + length, value
end

-- Total Filled
coinbase_coinbasederivatives_ordersapi_sbe_v1_7.total_filled = {}

-- Size: Total Filled
coinbase_coinbasederivatives_ordersapi_sbe_v1_7.total_filled.size = 4

-- Display: Total Filled
coinbase_coinbasederivatives_ordersapi_sbe_v1_7.total_filled.display = function(value)
  return "Total Filled: "..value
end

-- Dissect: Total Filled
coinbase_coinbasederivatives_ordersapi_sbe_v1_7.total_filled.dissect = function(buffer, offset, packet, parent)
  local length = coinbase_coinbasederivatives_ordersapi_sbe_v1_7.total_filled.size
  local range = buffer(offset, length)
  local value = range:le_int()
  local display = coinbase_coinbasederivatives_ordersapi_sbe_v1_7.total_filled.display(value, buffer, offset, packet, parent)

  parent:add(omi_coinbase_coinbasederivatives_ordersapi_sbe_v1_7.fields.total_filled, range, value, display)

  return offset + length, value
end

-- Trader
coinbase_coinbasederivatives_ordersapi_sbe_v1_7.trader = {}

-- Size: Trader
coinbase_coinbasederivatives_ordersapi_sbe_v1_7.trader.size = 16

-- Display: Trader
coinbase_coinbasederivatives_ordersapi_sbe_v1_7.trader.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Trader: No Value"
  end

  return "Trader: "..value
end

-- Dissect: Trader
coinbase_coinbasederivatives_ordersapi_sbe_v1_7.trader.dissect = function(buffer, offset, packet, parent)
  local length = coinbase_coinbasederivatives_ordersapi_sbe_v1_7.trader.size
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

  local display = coinbase_coinbasederivatives_ordersapi_sbe_v1_7.trader.display(value, buffer, offset, packet, parent)

  parent:add(omi_coinbase_coinbasederivatives_ordersapi_sbe_v1_7.fields.trader, range, value, display)

  return offset + length, value
end

-- Trading Instrument Status
coinbase_coinbasederivatives_ordersapi_sbe_v1_7.trading_instrument_status = {}

-- Size: Trading Instrument Status
coinbase_coinbasederivatives_ordersapi_sbe_v1_7.trading_instrument_status.size = 1

-- Display: Trading Instrument Status
coinbase_coinbasederivatives_ordersapi_sbe_v1_7.trading_instrument_status.display = function(value)
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
coinbase_coinbasederivatives_ordersapi_sbe_v1_7.trading_instrument_status.dissect = function(buffer, offset, packet, parent)
  local length = coinbase_coinbasederivatives_ordersapi_sbe_v1_7.trading_instrument_status.size
  local range = buffer(offset, length)
  local value = range:le_int()
  local display = coinbase_coinbasederivatives_ordersapi_sbe_v1_7.trading_instrument_status.display(value, buffer, offset, packet, parent)

  parent:add(omi_coinbase_coinbasederivatives_ordersapi_sbe_v1_7.fields.trading_instrument_status, range, value, display)

  return offset + length, value
end

-- Trading Lock Applied
coinbase_coinbasederivatives_ordersapi_sbe_v1_7.trading_lock_applied = {}

-- Size: Trading Lock Applied
coinbase_coinbasederivatives_ordersapi_sbe_v1_7.trading_lock_applied.size = 1

-- Display: Trading Lock Applied
coinbase_coinbasederivatives_ordersapi_sbe_v1_7.trading_lock_applied.display = function(value)
  if value == 0 then
    return "Trading Lock Applied: False (0)"
  end
  if value == 1 then
    return "Trading Lock Applied: True (1)"
  end

  return "Trading Lock Applied: Unknown("..value..")"
end

-- Dissect: Trading Lock Applied
coinbase_coinbasederivatives_ordersapi_sbe_v1_7.trading_lock_applied.dissect = function(buffer, offset, packet, parent)
  local length = coinbase_coinbasederivatives_ordersapi_sbe_v1_7.trading_lock_applied.size
  local range = buffer(offset, length)
  local value = range:le_int()
  local display = coinbase_coinbasederivatives_ordersapi_sbe_v1_7.trading_lock_applied.display(value, buffer, offset, packet, parent)

  parent:add(omi_coinbase_coinbasederivatives_ordersapi_sbe_v1_7.fields.trading_lock_applied, range, value, display)

  return offset + length, value
end

-- Username
coinbase_coinbasederivatives_ordersapi_sbe_v1_7.username = {}

-- Size: Username
coinbase_coinbasederivatives_ordersapi_sbe_v1_7.username.size = 16

-- Display: Username
coinbase_coinbasederivatives_ordersapi_sbe_v1_7.username.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Username: No Value"
  end

  return "Username: "..value
end

-- Dissect: Username
coinbase_coinbasederivatives_ordersapi_sbe_v1_7.username.dissect = function(buffer, offset, packet, parent)
  local length = coinbase_coinbasederivatives_ordersapi_sbe_v1_7.username.size
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

  local display = coinbase_coinbasederivatives_ordersapi_sbe_v1_7.username.display(value, buffer, offset, packet, parent)

  parent:add(omi_coinbase_coinbasederivatives_ordersapi_sbe_v1_7.fields.username, range, value, display)

  return offset + length, value
end

-- Version
coinbase_coinbasederivatives_ordersapi_sbe_v1_7.version = {}

-- Size: Version
coinbase_coinbasederivatives_ordersapi_sbe_v1_7.version.size = 2

-- Display: Version
coinbase_coinbasederivatives_ordersapi_sbe_v1_7.version.display = function(value)
  if value == 0 then
    return "Version: Version 0.1"
  end

  return "Version: Unknown("..value..")"
end

-- Dissect: Version
coinbase_coinbasederivatives_ordersapi_sbe_v1_7.version.dissect = function(buffer, offset, packet, parent)
  local length = coinbase_coinbasederivatives_ordersapi_sbe_v1_7.version.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = coinbase_coinbasederivatives_ordersapi_sbe_v1_7.version.display(value, buffer, offset, packet, parent)

  parent:add(omi_coinbase_coinbasederivatives_ordersapi_sbe_v1_7.fields.version, range, value, display)

  return offset + length, value
end


-----------------------------------------------------------------------
-- Dissect Coinbase CoinbaseDerivatives OrdersApi Sbe 1.7
-----------------------------------------------------------------------

-- Event Resend Reject Message
coinbase_coinbasederivatives_ordersapi_sbe_v1_7.event_resend_reject_message = {}

-- Size: Event Resend Reject Message
coinbase_coinbasederivatives_ordersapi_sbe_v1_7.event_resend_reject_message.size =
  coinbase_coinbasederivatives_ordersapi_sbe_v1_7.correlation_id.size + 
  coinbase_coinbasederivatives_ordersapi_sbe_v1_7.resend_reject_reason.size + 
  coinbase_coinbasederivatives_ordersapi_sbe_v1_7.details_string_55.size

-- Display: Event Resend Reject Message
coinbase_coinbasederivatives_ordersapi_sbe_v1_7.event_resend_reject_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Event Resend Reject Message
coinbase_coinbasederivatives_ordersapi_sbe_v1_7.event_resend_reject_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Correlation Id: ClientOrderId
  index, correlation_id = coinbase_coinbasederivatives_ordersapi_sbe_v1_7.correlation_id.dissect(buffer, index, packet, parent)

  -- Resend Reject Reason: ResendRejectReason
  index, resend_reject_reason = coinbase_coinbasederivatives_ordersapi_sbe_v1_7.resend_reject_reason.dissect(buffer, index, packet, parent)

  -- Details String 55: String55
  index, details_string_55 = coinbase_coinbasederivatives_ordersapi_sbe_v1_7.details_string_55.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Event Resend Reject Message
coinbase_coinbasederivatives_ordersapi_sbe_v1_7.event_resend_reject_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_coinbase_coinbasederivatives_ordersapi_sbe_v1_7.fields.event_resend_reject_message, buffer(offset, 0))
    local index = coinbase_coinbasederivatives_ordersapi_sbe_v1_7.event_resend_reject_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = coinbase_coinbasederivatives_ordersapi_sbe_v1_7.event_resend_reject_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return coinbase_coinbasederivatives_ordersapi_sbe_v1_7.event_resend_reject_message.fields(buffer, offset, packet, parent)
  end
end

-- Event Resend Complete Message
coinbase_coinbasederivatives_ordersapi_sbe_v1_7.event_resend_complete_message = {}

-- Size: Event Resend Complete Message
coinbase_coinbasederivatives_ordersapi_sbe_v1_7.event_resend_complete_message.size =
  coinbase_coinbasederivatives_ordersapi_sbe_v1_7.correlation_id.size + 
  coinbase_coinbasederivatives_ordersapi_sbe_v1_7.resent_event_count.size

-- Display: Event Resend Complete Message
coinbase_coinbasederivatives_ordersapi_sbe_v1_7.event_resend_complete_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Event Resend Complete Message
coinbase_coinbasederivatives_ordersapi_sbe_v1_7.event_resend_complete_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Correlation Id: ClientOrderId
  index, correlation_id = coinbase_coinbasederivatives_ordersapi_sbe_v1_7.correlation_id.dissect(buffer, index, packet, parent)

  -- Resent Event Count: int32
  index, resent_event_count = coinbase_coinbasederivatives_ordersapi_sbe_v1_7.resent_event_count.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Event Resend Complete Message
coinbase_coinbasederivatives_ordersapi_sbe_v1_7.event_resend_complete_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_coinbase_coinbasederivatives_ordersapi_sbe_v1_7.fields.event_resend_complete_message, buffer(offset, 0))
    local index = coinbase_coinbasederivatives_ordersapi_sbe_v1_7.event_resend_complete_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = coinbase_coinbasederivatives_ordersapi_sbe_v1_7.event_resend_complete_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return coinbase_coinbasederivatives_ordersapi_sbe_v1_7.event_resend_complete_message.fields(buffer, offset, packet, parent)
  end
end

-- Event Resend Request Message
coinbase_coinbasederivatives_ordersapi_sbe_v1_7.event_resend_request_message = {}

-- Size: Event Resend Request Message
coinbase_coinbasederivatives_ordersapi_sbe_v1_7.event_resend_request_message.size =
  coinbase_coinbasederivatives_ordersapi_sbe_v1_7.correlation_id.size + 
  coinbase_coinbasederivatives_ordersapi_sbe_v1_7.begin_exec_id.size + 
  coinbase_coinbasederivatives_ordersapi_sbe_v1_7.end_exec_id.size

-- Display: Event Resend Request Message
coinbase_coinbasederivatives_ordersapi_sbe_v1_7.event_resend_request_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Event Resend Request Message
coinbase_coinbasederivatives_ordersapi_sbe_v1_7.event_resend_request_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Correlation Id: ClientOrderId
  index, correlation_id = coinbase_coinbasederivatives_ordersapi_sbe_v1_7.correlation_id.dissect(buffer, index, packet, parent)

  -- Begin Exec Id: int64
  index, begin_exec_id = coinbase_coinbasederivatives_ordersapi_sbe_v1_7.begin_exec_id.dissect(buffer, index, packet, parent)

  -- End Exec Id: int64
  index, end_exec_id = coinbase_coinbasederivatives_ordersapi_sbe_v1_7.end_exec_id.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Event Resend Request Message
coinbase_coinbasederivatives_ordersapi_sbe_v1_7.event_resend_request_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_coinbase_coinbasederivatives_ordersapi_sbe_v1_7.fields.event_resend_request_message, buffer(offset, 0))
    local index = coinbase_coinbasederivatives_ordersapi_sbe_v1_7.event_resend_request_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = coinbase_coinbasederivatives_ordersapi_sbe_v1_7.event_resend_request_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return coinbase_coinbasederivatives_ordersapi_sbe_v1_7.event_resend_request_message.fields(buffer, offset, packet, parent)
  end
end

-- Last Exec Id Message
coinbase_coinbasederivatives_ordersapi_sbe_v1_7.last_exec_id_message = {}

-- Size: Last Exec Id Message
coinbase_coinbasederivatives_ordersapi_sbe_v1_7.last_exec_id_message.size =
  coinbase_coinbasederivatives_ordersapi_sbe_v1_7.timestamp.size + 
  coinbase_coinbasederivatives_ordersapi_sbe_v1_7.last_exec_id.size + 
  coinbase_coinbasederivatives_ordersapi_sbe_v1_7.correlation_id.size

-- Display: Last Exec Id Message
coinbase_coinbasederivatives_ordersapi_sbe_v1_7.last_exec_id_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Last Exec Id Message
coinbase_coinbasederivatives_ordersapi_sbe_v1_7.last_exec_id_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Timestamp: int64
  index, timestamp = coinbase_coinbasederivatives_ordersapi_sbe_v1_7.timestamp.dissect(buffer, index, packet, parent)

  -- Last Exec Id: int64
  index, last_exec_id = coinbase_coinbasederivatives_ordersapi_sbe_v1_7.last_exec_id.dissect(buffer, index, packet, parent)

  -- Correlation Id: ClientOrderId
  index, correlation_id = coinbase_coinbasederivatives_ordersapi_sbe_v1_7.correlation_id.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Last Exec Id Message
coinbase_coinbasederivatives_ordersapi_sbe_v1_7.last_exec_id_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_coinbase_coinbasederivatives_ordersapi_sbe_v1_7.fields.last_exec_id_message, buffer(offset, 0))
    local index = coinbase_coinbasederivatives_ordersapi_sbe_v1_7.last_exec_id_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = coinbase_coinbasederivatives_ordersapi_sbe_v1_7.last_exec_id_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return coinbase_coinbasederivatives_ordersapi_sbe_v1_7.last_exec_id_message.fields(buffer, offset, packet, parent)
  end
end

-- Last Exec Id Request Message
coinbase_coinbasederivatives_ordersapi_sbe_v1_7.last_exec_id_request_message = {}

-- Size: Last Exec Id Request Message
coinbase_coinbasederivatives_ordersapi_sbe_v1_7.last_exec_id_request_message.size =
  coinbase_coinbasederivatives_ordersapi_sbe_v1_7.correlation_id.size

-- Display: Last Exec Id Request Message
coinbase_coinbasederivatives_ordersapi_sbe_v1_7.last_exec_id_request_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Last Exec Id Request Message
coinbase_coinbasederivatives_ordersapi_sbe_v1_7.last_exec_id_request_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Correlation Id: ClientOrderId
  index, correlation_id = coinbase_coinbasederivatives_ordersapi_sbe_v1_7.correlation_id.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Last Exec Id Request Message
coinbase_coinbasederivatives_ordersapi_sbe_v1_7.last_exec_id_request_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_coinbase_coinbasederivatives_ordersapi_sbe_v1_7.fields.last_exec_id_request_message, buffer(offset, 0))
    local index = coinbase_coinbasederivatives_ordersapi_sbe_v1_7.last_exec_id_request_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = coinbase_coinbasederivatives_ordersapi_sbe_v1_7.last_exec_id_request_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return coinbase_coinbasederivatives_ordersapi_sbe_v1_7.last_exec_id_request_message.fields(buffer, offset, packet, parent)
  end
end

-- Spread Order Filled Message
coinbase_coinbasederivatives_ordersapi_sbe_v1_7.spread_order_filled_message = {}

-- Size: Spread Order Filled Message
coinbase_coinbasederivatives_ordersapi_sbe_v1_7.spread_order_filled_message.size =
  coinbase_coinbasederivatives_ordersapi_sbe_v1_7.timestamp.size + 
  coinbase_coinbasederivatives_ordersapi_sbe_v1_7.exec_id.size + 
  coinbase_coinbasederivatives_ordersapi_sbe_v1_7.match_id.size + 
  coinbase_coinbasederivatives_ordersapi_sbe_v1_7.client_order_id.size + 
  coinbase_coinbasederivatives_ordersapi_sbe_v1_7.correlation_id.size + 
  coinbase_coinbasederivatives_ordersapi_sbe_v1_7.order_id.size + 
  coinbase_coinbasederivatives_ordersapi_sbe_v1_7.filled_vwap.size + 
  coinbase_coinbasederivatives_ordersapi_sbe_v1_7.total_filled.size + 
  coinbase_coinbasederivatives_ordersapi_sbe_v1_7.available_qty.size + 
  coinbase_coinbasederivatives_ordersapi_sbe_v1_7.fill_price.size + 
  coinbase_coinbasederivatives_ordersapi_sbe_v1_7.leg_1_fill_price.size + 
  coinbase_coinbasederivatives_ordersapi_sbe_v1_7.leg_2_fill_price.size + 
  coinbase_coinbasederivatives_ordersapi_sbe_v1_7.fill_qty.size + 
  coinbase_coinbasederivatives_ordersapi_sbe_v1_7.instrument_id.size + 
  coinbase_coinbasederivatives_ordersapi_sbe_v1_7.is_aggressor.size

-- Display: Spread Order Filled Message
coinbase_coinbasederivatives_ordersapi_sbe_v1_7.spread_order_filled_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Spread Order Filled Message
coinbase_coinbasederivatives_ordersapi_sbe_v1_7.spread_order_filled_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Timestamp: int64
  index, timestamp = coinbase_coinbasederivatives_ordersapi_sbe_v1_7.timestamp.dissect(buffer, index, packet, parent)

  -- Exec Id: int64
  index, exec_id = coinbase_coinbasederivatives_ordersapi_sbe_v1_7.exec_id.dissect(buffer, index, packet, parent)

  -- Match Id: int64
  index, match_id = coinbase_coinbasederivatives_ordersapi_sbe_v1_7.match_id.dissect(buffer, index, packet, parent)

  -- Client Order Id: ClientOrderId
  index, client_order_id = coinbase_coinbasederivatives_ordersapi_sbe_v1_7.client_order_id.dissect(buffer, index, packet, parent)

  -- Correlation Id: ClientOrderId
  index, correlation_id = coinbase_coinbasederivatives_ordersapi_sbe_v1_7.correlation_id.dissect(buffer, index, packet, parent)

  -- Order Id: OrderId
  index, order_id = coinbase_coinbasederivatives_ordersapi_sbe_v1_7.order_id.dissect(buffer, index, packet, parent)

  -- Filled Vwap: Price9
  index, filled_vwap = coinbase_coinbasederivatives_ordersapi_sbe_v1_7.filled_vwap.dissect(buffer, index, packet, parent)

  -- Total Filled: Quantity0
  index, total_filled = coinbase_coinbasederivatives_ordersapi_sbe_v1_7.total_filled.dissect(buffer, index, packet, parent)

  -- Available Qty: Quantity0
  index, available_qty = coinbase_coinbasederivatives_ordersapi_sbe_v1_7.available_qty.dissect(buffer, index, packet, parent)

  -- Fill Price: Price9
  index, fill_price = coinbase_coinbasederivatives_ordersapi_sbe_v1_7.fill_price.dissect(buffer, index, packet, parent)

  -- Leg 1 Fill Price: Price9
  index, leg_1_fill_price = coinbase_coinbasederivatives_ordersapi_sbe_v1_7.leg_1_fill_price.dissect(buffer, index, packet, parent)

  -- Leg 2 Fill Price: Price9
  index, leg_2_fill_price = coinbase_coinbasederivatives_ordersapi_sbe_v1_7.leg_2_fill_price.dissect(buffer, index, packet, parent)

  -- Fill Qty: Quantity0
  index, fill_qty = coinbase_coinbasederivatives_ordersapi_sbe_v1_7.fill_qty.dissect(buffer, index, packet, parent)

  -- Instrument Id: InstrumentId
  index, instrument_id = coinbase_coinbasederivatives_ordersapi_sbe_v1_7.instrument_id.dissect(buffer, index, packet, parent)

  -- Is Aggressor: Bool
  index, is_aggressor = coinbase_coinbasederivatives_ordersapi_sbe_v1_7.is_aggressor.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Spread Order Filled Message
coinbase_coinbasederivatives_ordersapi_sbe_v1_7.spread_order_filled_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_coinbase_coinbasederivatives_ordersapi_sbe_v1_7.fields.spread_order_filled_message, buffer(offset, 0))
    local index = coinbase_coinbasederivatives_ordersapi_sbe_v1_7.spread_order_filled_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = coinbase_coinbasederivatives_ordersapi_sbe_v1_7.spread_order_filled_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return coinbase_coinbasederivatives_ordersapi_sbe_v1_7.spread_order_filled_message.fields(buffer, offset, packet, parent)
  end
end

-- Order Filled Message
coinbase_coinbasederivatives_ordersapi_sbe_v1_7.order_filled_message = {}

-- Size: Order Filled Message
coinbase_coinbasederivatives_ordersapi_sbe_v1_7.order_filled_message.size =
  coinbase_coinbasederivatives_ordersapi_sbe_v1_7.timestamp.size + 
  coinbase_coinbasederivatives_ordersapi_sbe_v1_7.exec_id.size + 
  coinbase_coinbasederivatives_ordersapi_sbe_v1_7.match_id.size + 
  coinbase_coinbasederivatives_ordersapi_sbe_v1_7.client_order_id.size + 
  coinbase_coinbasederivatives_ordersapi_sbe_v1_7.correlation_id.size + 
  coinbase_coinbasederivatives_ordersapi_sbe_v1_7.order_id.size + 
  coinbase_coinbasederivatives_ordersapi_sbe_v1_7.filled_vwap.size + 
  coinbase_coinbasederivatives_ordersapi_sbe_v1_7.total_filled.size + 
  coinbase_coinbasederivatives_ordersapi_sbe_v1_7.available_qty.size + 
  coinbase_coinbasederivatives_ordersapi_sbe_v1_7.fill_price.size + 
  coinbase_coinbasederivatives_ordersapi_sbe_v1_7.fill_qty.size + 
  coinbase_coinbasederivatives_ordersapi_sbe_v1_7.instrument_id.size + 
  coinbase_coinbasederivatives_ordersapi_sbe_v1_7.is_aggressor.size

-- Display: Order Filled Message
coinbase_coinbasederivatives_ordersapi_sbe_v1_7.order_filled_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Order Filled Message
coinbase_coinbasederivatives_ordersapi_sbe_v1_7.order_filled_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Timestamp: int64
  index, timestamp = coinbase_coinbasederivatives_ordersapi_sbe_v1_7.timestamp.dissect(buffer, index, packet, parent)

  -- Exec Id: int64
  index, exec_id = coinbase_coinbasederivatives_ordersapi_sbe_v1_7.exec_id.dissect(buffer, index, packet, parent)

  -- Match Id: int64
  index, match_id = coinbase_coinbasederivatives_ordersapi_sbe_v1_7.match_id.dissect(buffer, index, packet, parent)

  -- Client Order Id: ClientOrderId
  index, client_order_id = coinbase_coinbasederivatives_ordersapi_sbe_v1_7.client_order_id.dissect(buffer, index, packet, parent)

  -- Correlation Id: ClientOrderId
  index, correlation_id = coinbase_coinbasederivatives_ordersapi_sbe_v1_7.correlation_id.dissect(buffer, index, packet, parent)

  -- Order Id: OrderId
  index, order_id = coinbase_coinbasederivatives_ordersapi_sbe_v1_7.order_id.dissect(buffer, index, packet, parent)

  -- Filled Vwap: Price9
  index, filled_vwap = coinbase_coinbasederivatives_ordersapi_sbe_v1_7.filled_vwap.dissect(buffer, index, packet, parent)

  -- Total Filled: Quantity0
  index, total_filled = coinbase_coinbasederivatives_ordersapi_sbe_v1_7.total_filled.dissect(buffer, index, packet, parent)

  -- Available Qty: Quantity0
  index, available_qty = coinbase_coinbasederivatives_ordersapi_sbe_v1_7.available_qty.dissect(buffer, index, packet, parent)

  -- Fill Price: Price9
  index, fill_price = coinbase_coinbasederivatives_ordersapi_sbe_v1_7.fill_price.dissect(buffer, index, packet, parent)

  -- Fill Qty: Quantity0
  index, fill_qty = coinbase_coinbasederivatives_ordersapi_sbe_v1_7.fill_qty.dissect(buffer, index, packet, parent)

  -- Instrument Id: InstrumentId
  index, instrument_id = coinbase_coinbasederivatives_ordersapi_sbe_v1_7.instrument_id.dissect(buffer, index, packet, parent)

  -- Is Aggressor: Bool
  index, is_aggressor = coinbase_coinbasederivatives_ordersapi_sbe_v1_7.is_aggressor.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Order Filled Message
coinbase_coinbasederivatives_ordersapi_sbe_v1_7.order_filled_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_coinbase_coinbasederivatives_ordersapi_sbe_v1_7.fields.order_filled_message, buffer(offset, 0))
    local index = coinbase_coinbasederivatives_ordersapi_sbe_v1_7.order_filled_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = coinbase_coinbasederivatives_ordersapi_sbe_v1_7.order_filled_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return coinbase_coinbasederivatives_ordersapi_sbe_v1_7.order_filled_message.fields(buffer, offset, packet, parent)
  end
end

-- Unlock Trading Reject Message
coinbase_coinbasederivatives_ordersapi_sbe_v1_7.unlock_trading_reject_message = {}

-- Size: Unlock Trading Reject Message
coinbase_coinbasederivatives_ordersapi_sbe_v1_7.unlock_trading_reject_message.size =
  coinbase_coinbasederivatives_ordersapi_sbe_v1_7.timestamp.size + 
  coinbase_coinbasederivatives_ordersapi_sbe_v1_7.correlation_id.size + 
  coinbase_coinbasederivatives_ordersapi_sbe_v1_7.error_message.size

-- Display: Unlock Trading Reject Message
coinbase_coinbasederivatives_ordersapi_sbe_v1_7.unlock_trading_reject_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Unlock Trading Reject Message
coinbase_coinbasederivatives_ordersapi_sbe_v1_7.unlock_trading_reject_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Timestamp: int64
  index, timestamp = coinbase_coinbasederivatives_ordersapi_sbe_v1_7.timestamp.dissect(buffer, index, packet, parent)

  -- Correlation Id: ClientOrderId
  index, correlation_id = coinbase_coinbasederivatives_ordersapi_sbe_v1_7.correlation_id.dissect(buffer, index, packet, parent)

  -- Error Message: String32
  index, error_message = coinbase_coinbasederivatives_ordersapi_sbe_v1_7.error_message.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Unlock Trading Reject Message
coinbase_coinbasederivatives_ordersapi_sbe_v1_7.unlock_trading_reject_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_coinbase_coinbasederivatives_ordersapi_sbe_v1_7.fields.unlock_trading_reject_message, buffer(offset, 0))
    local index = coinbase_coinbasederivatives_ordersapi_sbe_v1_7.unlock_trading_reject_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = coinbase_coinbasederivatives_ordersapi_sbe_v1_7.unlock_trading_reject_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return coinbase_coinbasederivatives_ordersapi_sbe_v1_7.unlock_trading_reject_message.fields(buffer, offset, packet, parent)
  end
end

-- Unlock Trading Ack Message
coinbase_coinbasederivatives_ordersapi_sbe_v1_7.unlock_trading_ack_message = {}

-- Size: Unlock Trading Ack Message
coinbase_coinbasederivatives_ordersapi_sbe_v1_7.unlock_trading_ack_message.size =
  coinbase_coinbasederivatives_ordersapi_sbe_v1_7.timestamp.size + 
  coinbase_coinbasederivatives_ordersapi_sbe_v1_7.correlation_id.size + 
  coinbase_coinbasederivatives_ordersapi_sbe_v1_7.num_users_affected.size

-- Display: Unlock Trading Ack Message
coinbase_coinbasederivatives_ordersapi_sbe_v1_7.unlock_trading_ack_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Unlock Trading Ack Message
coinbase_coinbasederivatives_ordersapi_sbe_v1_7.unlock_trading_ack_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Timestamp: int64
  index, timestamp = coinbase_coinbasederivatives_ordersapi_sbe_v1_7.timestamp.dissect(buffer, index, packet, parent)

  -- Correlation Id: ClientOrderId
  index, correlation_id = coinbase_coinbasederivatives_ordersapi_sbe_v1_7.correlation_id.dissect(buffer, index, packet, parent)

  -- Num Users Affected: int32
  index, num_users_affected = coinbase_coinbasederivatives_ordersapi_sbe_v1_7.num_users_affected.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Unlock Trading Ack Message
coinbase_coinbasederivatives_ordersapi_sbe_v1_7.unlock_trading_ack_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_coinbase_coinbasederivatives_ordersapi_sbe_v1_7.fields.unlock_trading_ack_message, buffer(offset, 0))
    local index = coinbase_coinbasederivatives_ordersapi_sbe_v1_7.unlock_trading_ack_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = coinbase_coinbasederivatives_ordersapi_sbe_v1_7.unlock_trading_ack_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return coinbase_coinbasederivatives_ordersapi_sbe_v1_7.unlock_trading_ack_message.fields(buffer, offset, packet, parent)
  end
end

-- Unlock Trading Message
coinbase_coinbasederivatives_ordersapi_sbe_v1_7.unlock_trading_message = {}

-- Size: Unlock Trading Message
coinbase_coinbasederivatives_ordersapi_sbe_v1_7.unlock_trading_message.size =
  coinbase_coinbasederivatives_ordersapi_sbe_v1_7.correlation_id.size + 
  coinbase_coinbasederivatives_ordersapi_sbe_v1_7.current_session_only.size

-- Display: Unlock Trading Message
coinbase_coinbasederivatives_ordersapi_sbe_v1_7.unlock_trading_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Unlock Trading Message
coinbase_coinbasederivatives_ordersapi_sbe_v1_7.unlock_trading_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Correlation Id: ClientOrderId
  index, correlation_id = coinbase_coinbasederivatives_ordersapi_sbe_v1_7.correlation_id.dissect(buffer, index, packet, parent)

  -- Current Session Only: Bool
  index, current_session_only = coinbase_coinbasederivatives_ordersapi_sbe_v1_7.current_session_only.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Unlock Trading Message
coinbase_coinbasederivatives_ordersapi_sbe_v1_7.unlock_trading_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_coinbase_coinbasederivatives_ordersapi_sbe_v1_7.fields.unlock_trading_message, buffer(offset, 0))
    local index = coinbase_coinbasederivatives_ordersapi_sbe_v1_7.unlock_trading_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = coinbase_coinbasederivatives_ordersapi_sbe_v1_7.unlock_trading_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return coinbase_coinbasederivatives_ordersapi_sbe_v1_7.unlock_trading_message.fields(buffer, offset, packet, parent)
  end
end

-- Mass Cancel Order Reject Message
coinbase_coinbasederivatives_ordersapi_sbe_v1_7.mass_cancel_order_reject_message = {}

-- Size: Mass Cancel Order Reject Message
coinbase_coinbasederivatives_ordersapi_sbe_v1_7.mass_cancel_order_reject_message.size =
  coinbase_coinbasederivatives_ordersapi_sbe_v1_7.timestamp.size + 
  coinbase_coinbasederivatives_ordersapi_sbe_v1_7.correlation_id.size + 
  coinbase_coinbasederivatives_ordersapi_sbe_v1_7.error_message.size

-- Display: Mass Cancel Order Reject Message
coinbase_coinbasederivatives_ordersapi_sbe_v1_7.mass_cancel_order_reject_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Mass Cancel Order Reject Message
coinbase_coinbasederivatives_ordersapi_sbe_v1_7.mass_cancel_order_reject_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Timestamp: int64
  index, timestamp = coinbase_coinbasederivatives_ordersapi_sbe_v1_7.timestamp.dissect(buffer, index, packet, parent)

  -- Correlation Id: ClientOrderId
  index, correlation_id = coinbase_coinbasederivatives_ordersapi_sbe_v1_7.correlation_id.dissect(buffer, index, packet, parent)

  -- Error Message: String32
  index, error_message = coinbase_coinbasederivatives_ordersapi_sbe_v1_7.error_message.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Mass Cancel Order Reject Message
coinbase_coinbasederivatives_ordersapi_sbe_v1_7.mass_cancel_order_reject_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_coinbase_coinbasederivatives_ordersapi_sbe_v1_7.fields.mass_cancel_order_reject_message, buffer(offset, 0))
    local index = coinbase_coinbasederivatives_ordersapi_sbe_v1_7.mass_cancel_order_reject_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = coinbase_coinbasederivatives_ordersapi_sbe_v1_7.mass_cancel_order_reject_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return coinbase_coinbasederivatives_ordersapi_sbe_v1_7.mass_cancel_order_reject_message.fields(buffer, offset, packet, parent)
  end
end

-- Mass Cancel Order Ack Message
coinbase_coinbasederivatives_ordersapi_sbe_v1_7.mass_cancel_order_ack_message = {}

-- Size: Mass Cancel Order Ack Message
coinbase_coinbasederivatives_ordersapi_sbe_v1_7.mass_cancel_order_ack_message.size =
  coinbase_coinbasederivatives_ordersapi_sbe_v1_7.timestamp.size + 
  coinbase_coinbasederivatives_ordersapi_sbe_v1_7.exec_id.size + 
  coinbase_coinbasederivatives_ordersapi_sbe_v1_7.correlation_id.size + 
  coinbase_coinbasederivatives_ordersapi_sbe_v1_7.canceled_count.size + 
  coinbase_coinbasederivatives_ordersapi_sbe_v1_7.only_current_session.size + 
  coinbase_coinbasederivatives_ordersapi_sbe_v1_7.trading_lock_applied.size

-- Display: Mass Cancel Order Ack Message
coinbase_coinbasederivatives_ordersapi_sbe_v1_7.mass_cancel_order_ack_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Mass Cancel Order Ack Message
coinbase_coinbasederivatives_ordersapi_sbe_v1_7.mass_cancel_order_ack_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Timestamp: int64
  index, timestamp = coinbase_coinbasederivatives_ordersapi_sbe_v1_7.timestamp.dissect(buffer, index, packet, parent)

  -- Exec Id: int64
  index, exec_id = coinbase_coinbasederivatives_ordersapi_sbe_v1_7.exec_id.dissect(buffer, index, packet, parent)

  -- Correlation Id: ClientOrderId
  index, correlation_id = coinbase_coinbasederivatives_ordersapi_sbe_v1_7.correlation_id.dissect(buffer, index, packet, parent)

  -- Canceled Count: int32
  index, canceled_count = coinbase_coinbasederivatives_ordersapi_sbe_v1_7.canceled_count.dissect(buffer, index, packet, parent)

  -- Only Current Session: Bool
  index, only_current_session = coinbase_coinbasederivatives_ordersapi_sbe_v1_7.only_current_session.dissect(buffer, index, packet, parent)

  -- Trading Lock Applied: Bool
  index, trading_lock_applied = coinbase_coinbasederivatives_ordersapi_sbe_v1_7.trading_lock_applied.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Mass Cancel Order Ack Message
coinbase_coinbasederivatives_ordersapi_sbe_v1_7.mass_cancel_order_ack_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_coinbase_coinbasederivatives_ordersapi_sbe_v1_7.fields.mass_cancel_order_ack_message, buffer(offset, 0))
    local index = coinbase_coinbasederivatives_ordersapi_sbe_v1_7.mass_cancel_order_ack_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = coinbase_coinbasederivatives_ordersapi_sbe_v1_7.mass_cancel_order_ack_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return coinbase_coinbasederivatives_ordersapi_sbe_v1_7.mass_cancel_order_ack_message.fields(buffer, offset, packet, parent)
  end
end

-- Mass Cancel Order Message
coinbase_coinbasederivatives_ordersapi_sbe_v1_7.mass_cancel_order_message = {}

-- Size: Mass Cancel Order Message
coinbase_coinbasederivatives_ordersapi_sbe_v1_7.mass_cancel_order_message.size =
  coinbase_coinbasederivatives_ordersapi_sbe_v1_7.correlation_id.size + 
  coinbase_coinbasederivatives_ordersapi_sbe_v1_7.limit_price.size + 
  coinbase_coinbasederivatives_ordersapi_sbe_v1_7.instrument_id.size + 
  coinbase_coinbasederivatives_ordersapi_sbe_v1_7.side.size + 
  coinbase_coinbasederivatives_ordersapi_sbe_v1_7.current_session_only.size + 
  coinbase_coinbasederivatives_ordersapi_sbe_v1_7.request_trading_lock.size

-- Display: Mass Cancel Order Message
coinbase_coinbasederivatives_ordersapi_sbe_v1_7.mass_cancel_order_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Mass Cancel Order Message
coinbase_coinbasederivatives_ordersapi_sbe_v1_7.mass_cancel_order_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Correlation Id: ClientOrderId
  index, correlation_id = coinbase_coinbasederivatives_ordersapi_sbe_v1_7.correlation_id.dissect(buffer, index, packet, parent)

  -- Limit Price: Price9
  index, limit_price = coinbase_coinbasederivatives_ordersapi_sbe_v1_7.limit_price.dissect(buffer, index, packet, parent)

  -- Instrument Id: InstrumentId
  index, instrument_id = coinbase_coinbasederivatives_ordersapi_sbe_v1_7.instrument_id.dissect(buffer, index, packet, parent)

  -- Side: Side
  index, side = coinbase_coinbasederivatives_ordersapi_sbe_v1_7.side.dissect(buffer, index, packet, parent)

  -- Current Session Only: Bool
  index, current_session_only = coinbase_coinbasederivatives_ordersapi_sbe_v1_7.current_session_only.dissect(buffer, index, packet, parent)

  -- Request Trading Lock: Bool
  index, request_trading_lock = coinbase_coinbasederivatives_ordersapi_sbe_v1_7.request_trading_lock.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Mass Cancel Order Message
coinbase_coinbasederivatives_ordersapi_sbe_v1_7.mass_cancel_order_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_coinbase_coinbasederivatives_ordersapi_sbe_v1_7.fields.mass_cancel_order_message, buffer(offset, 0))
    local index = coinbase_coinbasederivatives_ordersapi_sbe_v1_7.mass_cancel_order_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = coinbase_coinbasederivatives_ordersapi_sbe_v1_7.mass_cancel_order_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return coinbase_coinbasederivatives_ordersapi_sbe_v1_7.mass_cancel_order_message.fields(buffer, offset, packet, parent)
  end
end

-- Cancel Order Reject Message
coinbase_coinbasederivatives_ordersapi_sbe_v1_7.cancel_order_reject_message = {}

-- Size: Cancel Order Reject Message
coinbase_coinbasederivatives_ordersapi_sbe_v1_7.cancel_order_reject_message.size =
  coinbase_coinbasederivatives_ordersapi_sbe_v1_7.timestamp.size + 
  coinbase_coinbasederivatives_ordersapi_sbe_v1_7.client_order_id.size + 
  coinbase_coinbasederivatives_ordersapi_sbe_v1_7.correlation_id.size + 
  coinbase_coinbasederivatives_ordersapi_sbe_v1_7.order_id_optional.size + 
  coinbase_coinbasederivatives_ordersapi_sbe_v1_7.cancel_order_reject_reason.size + 
  coinbase_coinbasederivatives_ordersapi_sbe_v1_7.cancel_order_reject_details.size

-- Display: Cancel Order Reject Message
coinbase_coinbasederivatives_ordersapi_sbe_v1_7.cancel_order_reject_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Cancel Order Reject Message
coinbase_coinbasederivatives_ordersapi_sbe_v1_7.cancel_order_reject_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Timestamp: int64
  index, timestamp = coinbase_coinbasederivatives_ordersapi_sbe_v1_7.timestamp.dissect(buffer, index, packet, parent)

  -- Client Order Id: ClientOrderId
  index, client_order_id = coinbase_coinbasederivatives_ordersapi_sbe_v1_7.client_order_id.dissect(buffer, index, packet, parent)

  -- Correlation Id: ClientOrderId
  index, correlation_id = coinbase_coinbasederivatives_ordersapi_sbe_v1_7.correlation_id.dissect(buffer, index, packet, parent)

  -- Order Id Optional: OrderId
  index, order_id_optional = coinbase_coinbasederivatives_ordersapi_sbe_v1_7.order_id_optional.dissect(buffer, index, packet, parent)

  -- Cancel Order Reject Reason: CancelOrderRejectReason
  index, cancel_order_reject_reason = coinbase_coinbasederivatives_ordersapi_sbe_v1_7.cancel_order_reject_reason.dissect(buffer, index, packet, parent)

  -- Cancel Order Reject Details: String31
  index, cancel_order_reject_details = coinbase_coinbasederivatives_ordersapi_sbe_v1_7.cancel_order_reject_details.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Cancel Order Reject Message
coinbase_coinbasederivatives_ordersapi_sbe_v1_7.cancel_order_reject_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_coinbase_coinbasederivatives_ordersapi_sbe_v1_7.fields.cancel_order_reject_message, buffer(offset, 0))
    local index = coinbase_coinbasederivatives_ordersapi_sbe_v1_7.cancel_order_reject_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = coinbase_coinbasederivatives_ordersapi_sbe_v1_7.cancel_order_reject_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return coinbase_coinbasederivatives_ordersapi_sbe_v1_7.cancel_order_reject_message.fields(buffer, offset, packet, parent)
  end
end

-- Order Canceled Message
coinbase_coinbasederivatives_ordersapi_sbe_v1_7.order_canceled_message = {}

-- Size: Order Canceled Message
coinbase_coinbasederivatives_ordersapi_sbe_v1_7.order_canceled_message.size =
  coinbase_coinbasederivatives_ordersapi_sbe_v1_7.timestamp.size + 
  coinbase_coinbasederivatives_ordersapi_sbe_v1_7.exec_id.size + 
  coinbase_coinbasederivatives_ordersapi_sbe_v1_7.client_order_id.size + 
  coinbase_coinbasederivatives_ordersapi_sbe_v1_7.correlation_id.size + 
  coinbase_coinbasederivatives_ordersapi_sbe_v1_7.order_id.size + 
  coinbase_coinbasederivatives_ordersapi_sbe_v1_7.receive_time.size + 
  coinbase_coinbasederivatives_ordersapi_sbe_v1_7.total_filled.size + 
  coinbase_coinbasederivatives_ordersapi_sbe_v1_7.instrument_id.size + 
  coinbase_coinbasederivatives_ordersapi_sbe_v1_7.cancel_reason.size

-- Display: Order Canceled Message
coinbase_coinbasederivatives_ordersapi_sbe_v1_7.order_canceled_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Order Canceled Message
coinbase_coinbasederivatives_ordersapi_sbe_v1_7.order_canceled_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Timestamp: int64
  index, timestamp = coinbase_coinbasederivatives_ordersapi_sbe_v1_7.timestamp.dissect(buffer, index, packet, parent)

  -- Exec Id: int64
  index, exec_id = coinbase_coinbasederivatives_ordersapi_sbe_v1_7.exec_id.dissect(buffer, index, packet, parent)

  -- Client Order Id: ClientOrderId
  index, client_order_id = coinbase_coinbasederivatives_ordersapi_sbe_v1_7.client_order_id.dissect(buffer, index, packet, parent)

  -- Correlation Id: ClientOrderId
  index, correlation_id = coinbase_coinbasederivatives_ordersapi_sbe_v1_7.correlation_id.dissect(buffer, index, packet, parent)

  -- Order Id: OrderId
  index, order_id = coinbase_coinbasederivatives_ordersapi_sbe_v1_7.order_id.dissect(buffer, index, packet, parent)

  -- Receive Time: int64
  index, receive_time = coinbase_coinbasederivatives_ordersapi_sbe_v1_7.receive_time.dissect(buffer, index, packet, parent)

  -- Total Filled: Quantity0
  index, total_filled = coinbase_coinbasederivatives_ordersapi_sbe_v1_7.total_filled.dissect(buffer, index, packet, parent)

  -- Instrument Id: InstrumentId
  index, instrument_id = coinbase_coinbasederivatives_ordersapi_sbe_v1_7.instrument_id.dissect(buffer, index, packet, parent)

  -- Cancel Reason: CancelReason
  index, cancel_reason = coinbase_coinbasederivatives_ordersapi_sbe_v1_7.cancel_reason.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Order Canceled Message
coinbase_coinbasederivatives_ordersapi_sbe_v1_7.order_canceled_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_coinbase_coinbasederivatives_ordersapi_sbe_v1_7.fields.order_canceled_message, buffer(offset, 0))
    local index = coinbase_coinbasederivatives_ordersapi_sbe_v1_7.order_canceled_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = coinbase_coinbasederivatives_ordersapi_sbe_v1_7.order_canceled_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return coinbase_coinbasederivatives_ordersapi_sbe_v1_7.order_canceled_message.fields(buffer, offset, packet, parent)
  end
end

-- Cancel Order Message
coinbase_coinbasederivatives_ordersapi_sbe_v1_7.cancel_order_message = {}

-- Size: Cancel Order Message
coinbase_coinbasederivatives_ordersapi_sbe_v1_7.cancel_order_message.size =
  coinbase_coinbasederivatives_ordersapi_sbe_v1_7.client_order_id.size + 
  coinbase_coinbasederivatives_ordersapi_sbe_v1_7.correlation_id.size + 
  coinbase_coinbasederivatives_ordersapi_sbe_v1_7.instrument_id.size

-- Display: Cancel Order Message
coinbase_coinbasederivatives_ordersapi_sbe_v1_7.cancel_order_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Cancel Order Message
coinbase_coinbasederivatives_ordersapi_sbe_v1_7.cancel_order_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Client Order Id: ClientOrderId
  index, client_order_id = coinbase_coinbasederivatives_ordersapi_sbe_v1_7.client_order_id.dissect(buffer, index, packet, parent)

  -- Correlation Id: ClientOrderId
  index, correlation_id = coinbase_coinbasederivatives_ordersapi_sbe_v1_7.correlation_id.dissect(buffer, index, packet, parent)

  -- Instrument Id: InstrumentId
  index, instrument_id = coinbase_coinbasederivatives_ordersapi_sbe_v1_7.instrument_id.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Cancel Order Message
coinbase_coinbasederivatives_ordersapi_sbe_v1_7.cancel_order_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_coinbase_coinbasederivatives_ordersapi_sbe_v1_7.fields.cancel_order_message, buffer(offset, 0))
    local index = coinbase_coinbasederivatives_ordersapi_sbe_v1_7.cancel_order_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = coinbase_coinbasederivatives_ordersapi_sbe_v1_7.cancel_order_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return coinbase_coinbasederivatives_ordersapi_sbe_v1_7.cancel_order_message.fields(buffer, offset, packet, parent)
  end
end

-- Order Replaced Message
coinbase_coinbasederivatives_ordersapi_sbe_v1_7.order_replaced_message = {}

-- Size: Order Replaced Message
coinbase_coinbasederivatives_ordersapi_sbe_v1_7.order_replaced_message.size =
  coinbase_coinbasederivatives_ordersapi_sbe_v1_7.timestamp.size + 
  coinbase_coinbasederivatives_ordersapi_sbe_v1_7.exec_id.size + 
  coinbase_coinbasederivatives_ordersapi_sbe_v1_7.client_order_id.size + 
  coinbase_coinbasederivatives_ordersapi_sbe_v1_7.correlation_id.size + 
  coinbase_coinbasederivatives_ordersapi_sbe_v1_7.order_id.size + 
  coinbase_coinbasederivatives_ordersapi_sbe_v1_7.receive_time.size + 
  coinbase_coinbasederivatives_ordersapi_sbe_v1_7.total_filled.size + 
  coinbase_coinbasederivatives_ordersapi_sbe_v1_7.available_qty.size + 
  coinbase_coinbasederivatives_ordersapi_sbe_v1_7.instrument_id.size

-- Display: Order Replaced Message
coinbase_coinbasederivatives_ordersapi_sbe_v1_7.order_replaced_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Order Replaced Message
coinbase_coinbasederivatives_ordersapi_sbe_v1_7.order_replaced_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Timestamp: int64
  index, timestamp = coinbase_coinbasederivatives_ordersapi_sbe_v1_7.timestamp.dissect(buffer, index, packet, parent)

  -- Exec Id: int64
  index, exec_id = coinbase_coinbasederivatives_ordersapi_sbe_v1_7.exec_id.dissect(buffer, index, packet, parent)

  -- Client Order Id: ClientOrderId
  index, client_order_id = coinbase_coinbasederivatives_ordersapi_sbe_v1_7.client_order_id.dissect(buffer, index, packet, parent)

  -- Correlation Id: ClientOrderId
  index, correlation_id = coinbase_coinbasederivatives_ordersapi_sbe_v1_7.correlation_id.dissect(buffer, index, packet, parent)

  -- Order Id: OrderId
  index, order_id = coinbase_coinbasederivatives_ordersapi_sbe_v1_7.order_id.dissect(buffer, index, packet, parent)

  -- Receive Time: int64
  index, receive_time = coinbase_coinbasederivatives_ordersapi_sbe_v1_7.receive_time.dissect(buffer, index, packet, parent)

  -- Total Filled: Quantity0
  index, total_filled = coinbase_coinbasederivatives_ordersapi_sbe_v1_7.total_filled.dissect(buffer, index, packet, parent)

  -- Available Qty: Quantity0
  index, available_qty = coinbase_coinbasederivatives_ordersapi_sbe_v1_7.available_qty.dissect(buffer, index, packet, parent)

  -- Instrument Id: InstrumentId
  index, instrument_id = coinbase_coinbasederivatives_ordersapi_sbe_v1_7.instrument_id.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Order Replaced Message
coinbase_coinbasederivatives_ordersapi_sbe_v1_7.order_replaced_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_coinbase_coinbasederivatives_ordersapi_sbe_v1_7.fields.order_replaced_message, buffer(offset, 0))
    local index = coinbase_coinbasederivatives_ordersapi_sbe_v1_7.order_replaced_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = coinbase_coinbasederivatives_ordersapi_sbe_v1_7.order_replaced_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return coinbase_coinbasederivatives_ordersapi_sbe_v1_7.order_replaced_message.fields(buffer, offset, packet, parent)
  end
end

-- Order Reject Message
coinbase_coinbasederivatives_ordersapi_sbe_v1_7.order_reject_message = {}

-- Size: Order Reject Message
coinbase_coinbasederivatives_ordersapi_sbe_v1_7.order_reject_message.size =
  coinbase_coinbasederivatives_ordersapi_sbe_v1_7.timestamp.size + 
  coinbase_coinbasederivatives_ordersapi_sbe_v1_7.client_order_id.size + 
  coinbase_coinbasederivatives_ordersapi_sbe_v1_7.correlation_id.size + 
  coinbase_coinbasederivatives_ordersapi_sbe_v1_7.order_id_optional.size + 
  coinbase_coinbasederivatives_ordersapi_sbe_v1_7.order_reject_reason.size + 
  coinbase_coinbasederivatives_ordersapi_sbe_v1_7.order_reject_details.size

-- Display: Order Reject Message
coinbase_coinbasederivatives_ordersapi_sbe_v1_7.order_reject_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Order Reject Message
coinbase_coinbasederivatives_ordersapi_sbe_v1_7.order_reject_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Timestamp: int64
  index, timestamp = coinbase_coinbasederivatives_ordersapi_sbe_v1_7.timestamp.dissect(buffer, index, packet, parent)

  -- Client Order Id: ClientOrderId
  index, client_order_id = coinbase_coinbasederivatives_ordersapi_sbe_v1_7.client_order_id.dissect(buffer, index, packet, parent)

  -- Correlation Id: ClientOrderId
  index, correlation_id = coinbase_coinbasederivatives_ordersapi_sbe_v1_7.correlation_id.dissect(buffer, index, packet, parent)

  -- Order Id Optional: OrderId
  index, order_id_optional = coinbase_coinbasederivatives_ordersapi_sbe_v1_7.order_id_optional.dissect(buffer, index, packet, parent)

  -- Order Reject Reason: OrderRejectReason
  index, order_reject_reason = coinbase_coinbasederivatives_ordersapi_sbe_v1_7.order_reject_reason.dissect(buffer, index, packet, parent)

  -- Order Reject Details: String47
  index, order_reject_details = coinbase_coinbasederivatives_ordersapi_sbe_v1_7.order_reject_details.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Order Reject Message
coinbase_coinbasederivatives_ordersapi_sbe_v1_7.order_reject_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_coinbase_coinbasederivatives_ordersapi_sbe_v1_7.fields.order_reject_message, buffer(offset, 0))
    local index = coinbase_coinbasederivatives_ordersapi_sbe_v1_7.order_reject_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = coinbase_coinbasederivatives_ordersapi_sbe_v1_7.order_reject_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return coinbase_coinbasederivatives_ordersapi_sbe_v1_7.order_reject_message.fields(buffer, offset, packet, parent)
  end
end

-- Obsolete Stream Order Message
coinbase_coinbasederivatives_ordersapi_sbe_v1_7.obsolete_stream_order_message = {}

-- Size: Obsolete Stream Order Message
coinbase_coinbasederivatives_ordersapi_sbe_v1_7.obsolete_stream_order_message.size =
  coinbase_coinbasederivatives_ordersapi_sbe_v1_7.client_order_id.size + 
  coinbase_coinbasederivatives_ordersapi_sbe_v1_7.correlation_id.size + 
  coinbase_coinbasederivatives_ordersapi_sbe_v1_7.last_processed_fill_id.size + 
  coinbase_coinbasederivatives_ordersapi_sbe_v1_7.limit_price.size + 
  coinbase_coinbasederivatives_ordersapi_sbe_v1_7.quantity.size + 
  coinbase_coinbasederivatives_ordersapi_sbe_v1_7.instrument_id.size + 
  coinbase_coinbasederivatives_ordersapi_sbe_v1_7.side.size

-- Display: Obsolete Stream Order Message
coinbase_coinbasederivatives_ordersapi_sbe_v1_7.obsolete_stream_order_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Obsolete Stream Order Message
coinbase_coinbasederivatives_ordersapi_sbe_v1_7.obsolete_stream_order_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Client Order Id: ClientOrderId
  index, client_order_id = coinbase_coinbasederivatives_ordersapi_sbe_v1_7.client_order_id.dissect(buffer, index, packet, parent)

  -- Correlation Id: ClientOrderId
  index, correlation_id = coinbase_coinbasederivatives_ordersapi_sbe_v1_7.correlation_id.dissect(buffer, index, packet, parent)

  -- Last Processed Fill Id: FillId
  index, last_processed_fill_id = coinbase_coinbasederivatives_ordersapi_sbe_v1_7.last_processed_fill_id.dissect(buffer, index, packet, parent)

  -- Limit Price: Price9
  index, limit_price = coinbase_coinbasederivatives_ordersapi_sbe_v1_7.limit_price.dissect(buffer, index, packet, parent)

  -- Quantity: Quantity0
  index, quantity = coinbase_coinbasederivatives_ordersapi_sbe_v1_7.quantity.dissect(buffer, index, packet, parent)

  -- Instrument Id: InstrumentId
  index, instrument_id = coinbase_coinbasederivatives_ordersapi_sbe_v1_7.instrument_id.dissect(buffer, index, packet, parent)

  -- Side: Side
  index, side = coinbase_coinbasederivatives_ordersapi_sbe_v1_7.side.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Obsolete Stream Order Message
coinbase_coinbasederivatives_ordersapi_sbe_v1_7.obsolete_stream_order_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_coinbase_coinbasederivatives_ordersapi_sbe_v1_7.fields.obsolete_stream_order_message, buffer(offset, 0))
    local index = coinbase_coinbasederivatives_ordersapi_sbe_v1_7.obsolete_stream_order_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = coinbase_coinbasederivatives_ordersapi_sbe_v1_7.obsolete_stream_order_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return coinbase_coinbasederivatives_ordersapi_sbe_v1_7.obsolete_stream_order_message.fields(buffer, offset, packet, parent)
  end
end

-- Replace Order Message
coinbase_coinbasederivatives_ordersapi_sbe_v1_7.replace_order_message = {}

-- Size: Replace Order Message
coinbase_coinbasederivatives_ordersapi_sbe_v1_7.replace_order_message.size =
  coinbase_coinbasederivatives_ordersapi_sbe_v1_7.client_order_id.size + 
  coinbase_coinbasederivatives_ordersapi_sbe_v1_7.correlation_id.size + 
  coinbase_coinbasederivatives_ordersapi_sbe_v1_7.new_limit_price.size + 
  coinbase_coinbasederivatives_ordersapi_sbe_v1_7.new_quantity.size + 
  coinbase_coinbasederivatives_ordersapi_sbe_v1_7.instrument_id.size + 
  coinbase_coinbasederivatives_ordersapi_sbe_v1_7.good_til_date.size + 
  coinbase_coinbasederivatives_ordersapi_sbe_v1_7.time_in_force.size

-- Display: Replace Order Message
coinbase_coinbasederivatives_ordersapi_sbe_v1_7.replace_order_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Replace Order Message
coinbase_coinbasederivatives_ordersapi_sbe_v1_7.replace_order_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Client Order Id: ClientOrderId
  index, client_order_id = coinbase_coinbasederivatives_ordersapi_sbe_v1_7.client_order_id.dissect(buffer, index, packet, parent)

  -- Correlation Id: ClientOrderId
  index, correlation_id = coinbase_coinbasederivatives_ordersapi_sbe_v1_7.correlation_id.dissect(buffer, index, packet, parent)

  -- New Limit Price: Price9
  index, new_limit_price = coinbase_coinbasederivatives_ordersapi_sbe_v1_7.new_limit_price.dissect(buffer, index, packet, parent)

  -- New Quantity: Quantity0
  index, new_quantity = coinbase_coinbasederivatives_ordersapi_sbe_v1_7.new_quantity.dissect(buffer, index, packet, parent)

  -- Instrument Id: InstrumentId
  index, instrument_id = coinbase_coinbasederivatives_ordersapi_sbe_v1_7.instrument_id.dissect(buffer, index, packet, parent)

  -- Good Til Date: EpochDay
  index, good_til_date = coinbase_coinbasederivatives_ordersapi_sbe_v1_7.good_til_date.dissect(buffer, index, packet, parent)

  -- Time In Force: TimeInForce
  index, time_in_force = coinbase_coinbasederivatives_ordersapi_sbe_v1_7.time_in_force.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Replace Order Message
coinbase_coinbasederivatives_ordersapi_sbe_v1_7.replace_order_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_coinbase_coinbasederivatives_ordersapi_sbe_v1_7.fields.replace_order_message, buffer(offset, 0))
    local index = coinbase_coinbasederivatives_ordersapi_sbe_v1_7.replace_order_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = coinbase_coinbasederivatives_ordersapi_sbe_v1_7.replace_order_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return coinbase_coinbasederivatives_ordersapi_sbe_v1_7.replace_order_message.fields(buffer, offset, packet, parent)
  end
end

-- Order Entered Message
coinbase_coinbasederivatives_ordersapi_sbe_v1_7.order_entered_message = {}

-- Size: Order Entered Message
coinbase_coinbasederivatives_ordersapi_sbe_v1_7.order_entered_message.size =
  coinbase_coinbasederivatives_ordersapi_sbe_v1_7.timestamp.size + 
  coinbase_coinbasederivatives_ordersapi_sbe_v1_7.exec_id.size + 
  coinbase_coinbasederivatives_ordersapi_sbe_v1_7.client_order_id.size + 
  coinbase_coinbasederivatives_ordersapi_sbe_v1_7.correlation_id.size + 
  coinbase_coinbasederivatives_ordersapi_sbe_v1_7.order_id.size + 
  coinbase_coinbasederivatives_ordersapi_sbe_v1_7.receive_time.size

-- Display: Order Entered Message
coinbase_coinbasederivatives_ordersapi_sbe_v1_7.order_entered_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Order Entered Message
coinbase_coinbasederivatives_ordersapi_sbe_v1_7.order_entered_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Timestamp: int64
  index, timestamp = coinbase_coinbasederivatives_ordersapi_sbe_v1_7.timestamp.dissect(buffer, index, packet, parent)

  -- Exec Id: int64
  index, exec_id = coinbase_coinbasederivatives_ordersapi_sbe_v1_7.exec_id.dissect(buffer, index, packet, parent)

  -- Client Order Id: ClientOrderId
  index, client_order_id = coinbase_coinbasederivatives_ordersapi_sbe_v1_7.client_order_id.dissect(buffer, index, packet, parent)

  -- Correlation Id: ClientOrderId
  index, correlation_id = coinbase_coinbasederivatives_ordersapi_sbe_v1_7.correlation_id.dissect(buffer, index, packet, parent)

  -- Order Id: OrderId
  index, order_id = coinbase_coinbasederivatives_ordersapi_sbe_v1_7.order_id.dissect(buffer, index, packet, parent)

  -- Receive Time: int64
  index, receive_time = coinbase_coinbasederivatives_ordersapi_sbe_v1_7.receive_time.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Order Entered Message
coinbase_coinbasederivatives_ordersapi_sbe_v1_7.order_entered_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_coinbase_coinbasederivatives_ordersapi_sbe_v1_7.fields.order_entered_message, buffer(offset, 0))
    local index = coinbase_coinbasederivatives_ordersapi_sbe_v1_7.order_entered_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = coinbase_coinbasederivatives_ordersapi_sbe_v1_7.order_entered_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return coinbase_coinbasederivatives_ordersapi_sbe_v1_7.order_entered_message.fields(buffer, offset, packet, parent)
  end
end

-- New Ioc Order Message
coinbase_coinbasederivatives_ordersapi_sbe_v1_7.new_ioc_order_message = {}

-- Size: New Ioc Order Message
coinbase_coinbasederivatives_ordersapi_sbe_v1_7.new_ioc_order_message.size =
  coinbase_coinbasederivatives_ordersapi_sbe_v1_7.client_order_id.size + 
  coinbase_coinbasederivatives_ordersapi_sbe_v1_7.correlation_id.size + 
  coinbase_coinbasederivatives_ordersapi_sbe_v1_7.limit_price.size + 
  coinbase_coinbasederivatives_ordersapi_sbe_v1_7.quantity.size + 
  coinbase_coinbasederivatives_ordersapi_sbe_v1_7.min_qty.size + 
  coinbase_coinbasederivatives_ordersapi_sbe_v1_7.instrument_id.size + 
  coinbase_coinbasederivatives_ordersapi_sbe_v1_7.side.size

-- Display: New Ioc Order Message
coinbase_coinbasederivatives_ordersapi_sbe_v1_7.new_ioc_order_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: New Ioc Order Message
coinbase_coinbasederivatives_ordersapi_sbe_v1_7.new_ioc_order_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Client Order Id: ClientOrderId
  index, client_order_id = coinbase_coinbasederivatives_ordersapi_sbe_v1_7.client_order_id.dissect(buffer, index, packet, parent)

  -- Correlation Id: ClientOrderId
  index, correlation_id = coinbase_coinbasederivatives_ordersapi_sbe_v1_7.correlation_id.dissect(buffer, index, packet, parent)

  -- Limit Price: Price9
  index, limit_price = coinbase_coinbasederivatives_ordersapi_sbe_v1_7.limit_price.dissect(buffer, index, packet, parent)

  -- Quantity: Quantity0
  index, quantity = coinbase_coinbasederivatives_ordersapi_sbe_v1_7.quantity.dissect(buffer, index, packet, parent)

  -- Min Qty: Quantity0
  index, min_qty = coinbase_coinbasederivatives_ordersapi_sbe_v1_7.min_qty.dissect(buffer, index, packet, parent)

  -- Instrument Id: InstrumentId
  index, instrument_id = coinbase_coinbasederivatives_ordersapi_sbe_v1_7.instrument_id.dissect(buffer, index, packet, parent)

  -- Side: Side
  index, side = coinbase_coinbasederivatives_ordersapi_sbe_v1_7.side.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: New Ioc Order Message
coinbase_coinbasederivatives_ordersapi_sbe_v1_7.new_ioc_order_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_coinbase_coinbasederivatives_ordersapi_sbe_v1_7.fields.new_ioc_order_message, buffer(offset, 0))
    local index = coinbase_coinbasederivatives_ordersapi_sbe_v1_7.new_ioc_order_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = coinbase_coinbasederivatives_ordersapi_sbe_v1_7.new_ioc_order_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return coinbase_coinbasederivatives_ordersapi_sbe_v1_7.new_ioc_order_message.fields(buffer, offset, packet, parent)
  end
end

-- Flags
coinbase_coinbasederivatives_ordersapi_sbe_v1_7.flags = {}

-- Size: Flags
coinbase_coinbasederivatives_ordersapi_sbe_v1_7.flags.size = 1

-- Display: Flags
coinbase_coinbasederivatives_ordersapi_sbe_v1_7.flags.display = function(range, value, packet, parent)
  local flags = {}

  -- Is Post Only flag set?
  if bit.band(value, 0x01) ~= 0 then
    flags[#flags + 1] = "Post Only"
  end

  return table.concat(flags, "|")
end

-- Dissect Bit Fields: Flags
coinbase_coinbasederivatives_ordersapi_sbe_v1_7.flags.bits = function(range, value, packet, parent)

  -- Post Only: 1 Bit
  parent:add(omi_coinbase_coinbasederivatives_ordersapi_sbe_v1_7.fields.post_only, range, value)

  -- Reserved 7: 7 Bit
  parent:add(omi_coinbase_coinbasederivatives_ordersapi_sbe_v1_7.fields.reserved_7, range, value)
end

-- Dissect: Flags
coinbase_coinbasederivatives_ordersapi_sbe_v1_7.flags.dissect = function(buffer, offset, packet, parent)
  local size = coinbase_coinbasederivatives_ordersapi_sbe_v1_7.flags.size
  local range = buffer(offset, size)
  local value = range:le_uint()
  local display = coinbase_coinbasederivatives_ordersapi_sbe_v1_7.flags.display(range, value, packet, parent)
  local element = parent:add(omi_coinbase_coinbasederivatives_ordersapi_sbe_v1_7.fields.flags, range, display)

  if show.flags then
    coinbase_coinbasederivatives_ordersapi_sbe_v1_7.flags.bits(range, value, packet, element)
  end

  return offset + size, value
end

-- New Order Message
coinbase_coinbasederivatives_ordersapi_sbe_v1_7.new_order_message = {}

-- Size: New Order Message
coinbase_coinbasederivatives_ordersapi_sbe_v1_7.new_order_message.size =
  coinbase_coinbasederivatives_ordersapi_sbe_v1_7.client_order_id.size + 
  coinbase_coinbasederivatives_ordersapi_sbe_v1_7.correlation_id.size + 
  coinbase_coinbasederivatives_ordersapi_sbe_v1_7.limit_price.size + 
  coinbase_coinbasederivatives_ordersapi_sbe_v1_7.quantity.size + 
  coinbase_coinbasederivatives_ordersapi_sbe_v1_7.instrument_id.size + 
  coinbase_coinbasederivatives_ordersapi_sbe_v1_7.side.size + 
  coinbase_coinbasederivatives_ordersapi_sbe_v1_7.flags.size + 
  coinbase_coinbasederivatives_ordersapi_sbe_v1_7.good_til_date.size

-- Display: New Order Message
coinbase_coinbasederivatives_ordersapi_sbe_v1_7.new_order_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: New Order Message
coinbase_coinbasederivatives_ordersapi_sbe_v1_7.new_order_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Client Order Id: ClientOrderId
  index, client_order_id = coinbase_coinbasederivatives_ordersapi_sbe_v1_7.client_order_id.dissect(buffer, index, packet, parent)

  -- Correlation Id: ClientOrderId
  index, correlation_id = coinbase_coinbasederivatives_ordersapi_sbe_v1_7.correlation_id.dissect(buffer, index, packet, parent)

  -- Limit Price: Price9
  index, limit_price = coinbase_coinbasederivatives_ordersapi_sbe_v1_7.limit_price.dissect(buffer, index, packet, parent)

  -- Quantity: Quantity0
  index, quantity = coinbase_coinbasederivatives_ordersapi_sbe_v1_7.quantity.dissect(buffer, index, packet, parent)

  -- Instrument Id: InstrumentId
  index, instrument_id = coinbase_coinbasederivatives_ordersapi_sbe_v1_7.instrument_id.dissect(buffer, index, packet, parent)

  -- Side: Side
  index, side = coinbase_coinbasederivatives_ordersapi_sbe_v1_7.side.dissect(buffer, index, packet, parent)

  -- Flags: Struct of 2 fields
  index, flags = coinbase_coinbasederivatives_ordersapi_sbe_v1_7.flags.dissect(buffer, index, packet, parent)

  -- Good Til Date: EpochDay
  index, good_til_date = coinbase_coinbasederivatives_ordersapi_sbe_v1_7.good_til_date.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: New Order Message
coinbase_coinbasederivatives_ordersapi_sbe_v1_7.new_order_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_coinbase_coinbasederivatives_ordersapi_sbe_v1_7.fields.new_order_message, buffer(offset, 0))
    local index = coinbase_coinbasederivatives_ordersapi_sbe_v1_7.new_order_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = coinbase_coinbasederivatives_ordersapi_sbe_v1_7.new_order_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return coinbase_coinbasederivatives_ordersapi_sbe_v1_7.new_order_message.fields(buffer, offset, packet, parent)
  end
end

-- Set Ack Message
coinbase_coinbasederivatives_ordersapi_sbe_v1_7.set_ack_message = {}

-- Size: Set Ack Message
coinbase_coinbasederivatives_ordersapi_sbe_v1_7.set_ack_message.size =
  coinbase_coinbasederivatives_ordersapi_sbe_v1_7.correlation_id.size

-- Display: Set Ack Message
coinbase_coinbasederivatives_ordersapi_sbe_v1_7.set_ack_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Set Ack Message
coinbase_coinbasederivatives_ordersapi_sbe_v1_7.set_ack_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Correlation Id: ClientOrderId
  index, correlation_id = coinbase_coinbasederivatives_ordersapi_sbe_v1_7.correlation_id.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Set Ack Message
coinbase_coinbasederivatives_ordersapi_sbe_v1_7.set_ack_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_coinbase_coinbasederivatives_ordersapi_sbe_v1_7.fields.set_ack_message, buffer(offset, 0))
    local index = coinbase_coinbasederivatives_ordersapi_sbe_v1_7.set_ack_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = coinbase_coinbasederivatives_ordersapi_sbe_v1_7.set_ack_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return coinbase_coinbasederivatives_ordersapi_sbe_v1_7.set_ack_message.fields(buffer, offset, packet, parent)
  end
end

-- Set Trader Message
coinbase_coinbasederivatives_ordersapi_sbe_v1_7.set_trader_message = {}

-- Size: Set Trader Message
coinbase_coinbasederivatives_ordersapi_sbe_v1_7.set_trader_message.size =
  coinbase_coinbasederivatives_ordersapi_sbe_v1_7.correlation_id.size + 
  coinbase_coinbasederivatives_ordersapi_sbe_v1_7.trader.size

-- Display: Set Trader Message
coinbase_coinbasederivatives_ordersapi_sbe_v1_7.set_trader_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Set Trader Message
coinbase_coinbasederivatives_ordersapi_sbe_v1_7.set_trader_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Correlation Id: ClientOrderId
  index, correlation_id = coinbase_coinbasederivatives_ordersapi_sbe_v1_7.correlation_id.dissect(buffer, index, packet, parent)

  -- Trader: String16
  index, trader = coinbase_coinbasederivatives_ordersapi_sbe_v1_7.trader.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Set Trader Message
coinbase_coinbasederivatives_ordersapi_sbe_v1_7.set_trader_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_coinbase_coinbasederivatives_ordersapi_sbe_v1_7.fields.set_trader_message, buffer(offset, 0))
    local index = coinbase_coinbasederivatives_ordersapi_sbe_v1_7.set_trader_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = coinbase_coinbasederivatives_ordersapi_sbe_v1_7.set_trader_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return coinbase_coinbasederivatives_ordersapi_sbe_v1_7.set_trader_message.fields(buffer, offset, packet, parent)
  end
end

-- Set Account Message
coinbase_coinbasederivatives_ordersapi_sbe_v1_7.set_account_message = {}

-- Size: Set Account Message
coinbase_coinbasederivatives_ordersapi_sbe_v1_7.set_account_message.size =
  coinbase_coinbasederivatives_ordersapi_sbe_v1_7.correlation_id.size + 
  coinbase_coinbasederivatives_ordersapi_sbe_v1_7.account.size

-- Display: Set Account Message
coinbase_coinbasederivatives_ordersapi_sbe_v1_7.set_account_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Set Account Message
coinbase_coinbasederivatives_ordersapi_sbe_v1_7.set_account_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Correlation Id: ClientOrderId
  index, correlation_id = coinbase_coinbasederivatives_ordersapi_sbe_v1_7.correlation_id.dissect(buffer, index, packet, parent)

  -- Account: String16
  index, account = coinbase_coinbasederivatives_ordersapi_sbe_v1_7.account.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Set Account Message
coinbase_coinbasederivatives_ordersapi_sbe_v1_7.set_account_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_coinbase_coinbasederivatives_ordersapi_sbe_v1_7.fields.set_account_message, buffer(offset, 0))
    local index = coinbase_coinbasederivatives_ordersapi_sbe_v1_7.set_account_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = coinbase_coinbasederivatives_ordersapi_sbe_v1_7.set_account_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return coinbase_coinbasederivatives_ordersapi_sbe_v1_7.set_account_message.fields(buffer, offset, packet, parent)
  end
end

-- Instrument Info Message
coinbase_coinbasederivatives_ordersapi_sbe_v1_7.instrument_info_message = {}

-- Size: Instrument Info Message
coinbase_coinbasederivatives_ordersapi_sbe_v1_7.instrument_info_message.size =
  coinbase_coinbasederivatives_ordersapi_sbe_v1_7.correlation_id.size + 
  coinbase_coinbasederivatives_ordersapi_sbe_v1_7.instrument_id.size + 
  coinbase_coinbasederivatives_ordersapi_sbe_v1_7.security_type.size + 
  coinbase_coinbasederivatives_ordersapi_sbe_v1_7.instrument_status.size + 
  coinbase_coinbasederivatives_ordersapi_sbe_v1_7.is_last_message.size + 
  coinbase_coinbasederivatives_ordersapi_sbe_v1_7.reserved_byte.size + 
  coinbase_coinbasederivatives_ordersapi_sbe_v1_7.symbol.size

-- Display: Instrument Info Message
coinbase_coinbasederivatives_ordersapi_sbe_v1_7.instrument_info_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Instrument Info Message
coinbase_coinbasederivatives_ordersapi_sbe_v1_7.instrument_info_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Correlation Id: ClientOrderId
  index, correlation_id = coinbase_coinbasederivatives_ordersapi_sbe_v1_7.correlation_id.dissect(buffer, index, packet, parent)

  -- Instrument Id: InstrumentId
  index, instrument_id = coinbase_coinbasederivatives_ordersapi_sbe_v1_7.instrument_id.dissect(buffer, index, packet, parent)

  -- Security Type: SecurityType
  index, security_type = coinbase_coinbasederivatives_ordersapi_sbe_v1_7.security_type.dissect(buffer, index, packet, parent)

  -- Instrument Status: InstrumentStatus
  index, instrument_status = coinbase_coinbasederivatives_ordersapi_sbe_v1_7.instrument_status.dissect(buffer, index, packet, parent)

  -- Is Last Message: Bool
  index, is_last_message = coinbase_coinbasederivatives_ordersapi_sbe_v1_7.is_last_message.dissect(buffer, index, packet, parent)

  -- Reserved Byte: int8
  index, reserved_byte = coinbase_coinbasederivatives_ordersapi_sbe_v1_7.reserved_byte.dissect(buffer, index, packet, parent)

  -- Symbol: String32
  index, symbol = coinbase_coinbasederivatives_ordersapi_sbe_v1_7.symbol.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Instrument Info Message
coinbase_coinbasederivatives_ordersapi_sbe_v1_7.instrument_info_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_coinbase_coinbasederivatives_ordersapi_sbe_v1_7.fields.instrument_info_message, buffer(offset, 0))
    local index = coinbase_coinbasederivatives_ordersapi_sbe_v1_7.instrument_info_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = coinbase_coinbasederivatives_ordersapi_sbe_v1_7.instrument_info_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return coinbase_coinbasederivatives_ordersapi_sbe_v1_7.instrument_info_message.fields(buffer, offset, packet, parent)
  end
end

-- Instrument Info Request Message
coinbase_coinbasederivatives_ordersapi_sbe_v1_7.instrument_info_request_message = {}

-- Size: Instrument Info Request Message
coinbase_coinbasederivatives_ordersapi_sbe_v1_7.instrument_info_request_message.size =
  coinbase_coinbasederivatives_ordersapi_sbe_v1_7.correlation_id.size

-- Display: Instrument Info Request Message
coinbase_coinbasederivatives_ordersapi_sbe_v1_7.instrument_info_request_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Instrument Info Request Message
coinbase_coinbasederivatives_ordersapi_sbe_v1_7.instrument_info_request_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Correlation Id: ClientOrderId
  index, correlation_id = coinbase_coinbasederivatives_ordersapi_sbe_v1_7.correlation_id.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Instrument Info Request Message
coinbase_coinbasederivatives_ordersapi_sbe_v1_7.instrument_info_request_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_coinbase_coinbasederivatives_ordersapi_sbe_v1_7.fields.instrument_info_request_message, buffer(offset, 0))
    local index = coinbase_coinbasederivatives_ordersapi_sbe_v1_7.instrument_info_request_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = coinbase_coinbasederivatives_ordersapi_sbe_v1_7.instrument_info_request_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return coinbase_coinbasederivatives_ordersapi_sbe_v1_7.instrument_info_request_message.fields(buffer, offset, packet, parent)
  end
end

-- Data
coinbase_coinbasederivatives_ordersapi_sbe_v1_7.data = {}

-- Calculate size of: Data
coinbase_coinbasederivatives_ordersapi_sbe_v1_7.data.size = function(buffer, offset)
  local index = 0

  index = index + coinbase_coinbasederivatives_ordersapi_sbe_v1_7.data_length.size

  local data_length = buffer(offset + index - 1, 1):le_uint()

  if data_length > 0 then
    -- Parse runtime size of: Data Value
    index = index + buffer(offset + index - 1, 1):le_uint()

  end

  return index
end

-- Display: Data
coinbase_coinbasederivatives_ordersapi_sbe_v1_7.data.display = function(buffer, offset, value, packet, parent)
  return ""..value
end

-- Dissect Fields: Data
coinbase_coinbasederivatives_ordersapi_sbe_v1_7.data.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Data Length: uint8
  index, data_length = coinbase_coinbasederivatives_ordersapi_sbe_v1_7.data_length.dissect(buffer, index, packet, parent)

  -- Runtime optional field: Data Value
  local data_value = nil

  local data_value_exists = data_length > 0

  if data_value_exists then

    -- Runtime Size Of: Data Value
    index, data_value = coinbase_coinbasederivatives_ordersapi_sbe_v1_7.data_value.dissect(buffer, index, packet, parent, data_length)
  end

  return index
end

-- Dissect: Data
coinbase_coinbasederivatives_ordersapi_sbe_v1_7.data.dissect = function(buffer, offset, packet, parent)
  if show.data then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_coinbase_coinbasederivatives_ordersapi_sbe_v1_7.fields.data, buffer(offset, 0))
    local index = coinbase_coinbasederivatives_ordersapi_sbe_v1_7.data.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = coinbase_coinbasederivatives_ordersapi_sbe_v1_7.data.display(packet, parent, length)
    parent:append_text(display)

    return index, value
  else
    -- Skip element, add fields directly
    return coinbase_coinbasederivatives_ordersapi_sbe_v1_7.data.fields(buffer, offset, packet, parent)
  end
end

-- Pong Message
coinbase_coinbasederivatives_ordersapi_sbe_v1_7.pong_message = {}

-- Calculate size of: Pong Message
coinbase_coinbasederivatives_ordersapi_sbe_v1_7.pong_message.size = function(buffer, offset)
  local index = 0

  index = index + coinbase_coinbasederivatives_ordersapi_sbe_v1_7.correlation_id.size

  index = index + coinbase_coinbasederivatives_ordersapi_sbe_v1_7.request_time.size

  index = index + coinbase_coinbasederivatives_ordersapi_sbe_v1_7.server_time.size

  index = index + coinbase_coinbasederivatives_ordersapi_sbe_v1_7.trading_instrument_status.size

  index = index + coinbase_coinbasederivatives_ordersapi_sbe_v1_7.data.size(buffer, offset + index)

  return index
end

-- Display: Pong Message
coinbase_coinbasederivatives_ordersapi_sbe_v1_7.pong_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Pong Message
coinbase_coinbasederivatives_ordersapi_sbe_v1_7.pong_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Correlation Id: ClientOrderId
  index, correlation_id = coinbase_coinbasederivatives_ordersapi_sbe_v1_7.correlation_id.dissect(buffer, index, packet, parent)

  -- Request Time: int64
  index, request_time = coinbase_coinbasederivatives_ordersapi_sbe_v1_7.request_time.dissect(buffer, index, packet, parent)

  -- Server Time: int64
  index, server_time = coinbase_coinbasederivatives_ordersapi_sbe_v1_7.server_time.dissect(buffer, index, packet, parent)

  -- Trading Instrument Status: TradingSystemStatus
  index, trading_instrument_status = coinbase_coinbasederivatives_ordersapi_sbe_v1_7.trading_instrument_status.dissect(buffer, index, packet, parent)

  -- Data: Struct of 2 fields
  index, data = coinbase_coinbasederivatives_ordersapi_sbe_v1_7.data.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Pong Message
coinbase_coinbasederivatives_ordersapi_sbe_v1_7.pong_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_coinbase_coinbasederivatives_ordersapi_sbe_v1_7.fields.pong_message, buffer(offset, 0))
    local index = coinbase_coinbasederivatives_ordersapi_sbe_v1_7.pong_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = coinbase_coinbasederivatives_ordersapi_sbe_v1_7.pong_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return coinbase_coinbasederivatives_ordersapi_sbe_v1_7.pong_message.fields(buffer, offset, packet, parent)
  end
end

-- Ping Message
coinbase_coinbasederivatives_ordersapi_sbe_v1_7.ping_message = {}

-- Calculate size of: Ping Message
coinbase_coinbasederivatives_ordersapi_sbe_v1_7.ping_message.size = function(buffer, offset)
  local index = 0

  index = index + coinbase_coinbasederivatives_ordersapi_sbe_v1_7.correlation_id.size

  index = index + coinbase_coinbasederivatives_ordersapi_sbe_v1_7.request_time.size

  index = index + coinbase_coinbasederivatives_ordersapi_sbe_v1_7.data.size(buffer, offset + index)

  return index
end

-- Display: Ping Message
coinbase_coinbasederivatives_ordersapi_sbe_v1_7.ping_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Ping Message
coinbase_coinbasederivatives_ordersapi_sbe_v1_7.ping_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Correlation Id: ClientOrderId
  index, correlation_id = coinbase_coinbasederivatives_ordersapi_sbe_v1_7.correlation_id.dissect(buffer, index, packet, parent)

  -- Request Time: int64
  index, request_time = coinbase_coinbasederivatives_ordersapi_sbe_v1_7.request_time.dissect(buffer, index, packet, parent)

  -- Data: Struct of 2 fields
  index, data = coinbase_coinbasederivatives_ordersapi_sbe_v1_7.data.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Ping Message
coinbase_coinbasederivatives_ordersapi_sbe_v1_7.ping_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_coinbase_coinbasederivatives_ordersapi_sbe_v1_7.fields.ping_message, buffer(offset, 0))
    local index = coinbase_coinbasederivatives_ordersapi_sbe_v1_7.ping_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = coinbase_coinbasederivatives_ordersapi_sbe_v1_7.ping_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return coinbase_coinbasederivatives_ordersapi_sbe_v1_7.ping_message.fields(buffer, offset, packet, parent)
  end
end

-- Gap Fill Message
coinbase_coinbasederivatives_ordersapi_sbe_v1_7.gap_fill_message = {}

-- Size: Gap Fill Message
coinbase_coinbasederivatives_ordersapi_sbe_v1_7.gap_fill_message.size =
  coinbase_coinbasederivatives_ordersapi_sbe_v1_7.new_sequence_number.size + 
  coinbase_coinbasederivatives_ordersapi_sbe_v1_7.gap_fill_padding.size

-- Display: Gap Fill Message
coinbase_coinbasederivatives_ordersapi_sbe_v1_7.gap_fill_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Gap Fill Message
coinbase_coinbasederivatives_ordersapi_sbe_v1_7.gap_fill_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- New Sequence Number: uint32
  index, new_sequence_number = coinbase_coinbasederivatives_ordersapi_sbe_v1_7.new_sequence_number.dissect(buffer, index, packet, parent)

  -- Gap Fill Padding: uint32
  index, gap_fill_padding = coinbase_coinbasederivatives_ordersapi_sbe_v1_7.gap_fill_padding.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Gap Fill Message
coinbase_coinbasederivatives_ordersapi_sbe_v1_7.gap_fill_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_coinbase_coinbasederivatives_ordersapi_sbe_v1_7.fields.gap_fill_message, buffer(offset, 0))
    local index = coinbase_coinbasederivatives_ordersapi_sbe_v1_7.gap_fill_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = coinbase_coinbasederivatives_ordersapi_sbe_v1_7.gap_fill_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return coinbase_coinbasederivatives_ordersapi_sbe_v1_7.gap_fill_message.fields(buffer, offset, packet, parent)
  end
end

-- Resend Request Message
coinbase_coinbasederivatives_ordersapi_sbe_v1_7.resend_request_message = {}

-- Size: Resend Request Message
coinbase_coinbasederivatives_ordersapi_sbe_v1_7.resend_request_message.size =
  coinbase_coinbasederivatives_ordersapi_sbe_v1_7.from_sequence_number.size + 
  coinbase_coinbasederivatives_ordersapi_sbe_v1_7.to_sequence_number.size

-- Display: Resend Request Message
coinbase_coinbasederivatives_ordersapi_sbe_v1_7.resend_request_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Resend Request Message
coinbase_coinbasederivatives_ordersapi_sbe_v1_7.resend_request_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- From Sequence Number: uint32
  index, from_sequence_number = coinbase_coinbasederivatives_ordersapi_sbe_v1_7.from_sequence_number.dissect(buffer, index, packet, parent)

  -- To Sequence Number: uint32
  index, to_sequence_number = coinbase_coinbasederivatives_ordersapi_sbe_v1_7.to_sequence_number.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Resend Request Message
coinbase_coinbasederivatives_ordersapi_sbe_v1_7.resend_request_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_coinbase_coinbasederivatives_ordersapi_sbe_v1_7.fields.resend_request_message, buffer(offset, 0))
    local index = coinbase_coinbasederivatives_ordersapi_sbe_v1_7.resend_request_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = coinbase_coinbasederivatives_ordersapi_sbe_v1_7.resend_request_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return coinbase_coinbasederivatives_ordersapi_sbe_v1_7.resend_request_message.fields(buffer, offset, packet, parent)
  end
end

-- Test Request Message
coinbase_coinbasederivatives_ordersapi_sbe_v1_7.test_request_message = {}

-- Size: Test Request Message
coinbase_coinbasederivatives_ordersapi_sbe_v1_7.test_request_message.size =
  coinbase_coinbasederivatives_ordersapi_sbe_v1_7.correlation_id.size

-- Display: Test Request Message
coinbase_coinbasederivatives_ordersapi_sbe_v1_7.test_request_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Test Request Message
coinbase_coinbasederivatives_ordersapi_sbe_v1_7.test_request_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Correlation Id: ClientOrderId
  index, correlation_id = coinbase_coinbasederivatives_ordersapi_sbe_v1_7.correlation_id.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Test Request Message
coinbase_coinbasederivatives_ordersapi_sbe_v1_7.test_request_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_coinbase_coinbasederivatives_ordersapi_sbe_v1_7.fields.test_request_message, buffer(offset, 0))
    local index = coinbase_coinbasederivatives_ordersapi_sbe_v1_7.test_request_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = coinbase_coinbasederivatives_ordersapi_sbe_v1_7.test_request_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return coinbase_coinbasederivatives_ordersapi_sbe_v1_7.test_request_message.fields(buffer, offset, packet, parent)
  end
end

-- Heartbeat Message
coinbase_coinbasederivatives_ordersapi_sbe_v1_7.heartbeat_message = {}

-- Size: Heartbeat Message
coinbase_coinbasederivatives_ordersapi_sbe_v1_7.heartbeat_message.size =
  coinbase_coinbasederivatives_ordersapi_sbe_v1_7.correlation_id.size

-- Display: Heartbeat Message
coinbase_coinbasederivatives_ordersapi_sbe_v1_7.heartbeat_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Heartbeat Message
coinbase_coinbasederivatives_ordersapi_sbe_v1_7.heartbeat_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Correlation Id: ClientOrderId
  index, correlation_id = coinbase_coinbasederivatives_ordersapi_sbe_v1_7.correlation_id.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Heartbeat Message
coinbase_coinbasederivatives_ordersapi_sbe_v1_7.heartbeat_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_coinbase_coinbasederivatives_ordersapi_sbe_v1_7.fields.heartbeat_message, buffer(offset, 0))
    local index = coinbase_coinbasederivatives_ordersapi_sbe_v1_7.heartbeat_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = coinbase_coinbasederivatives_ordersapi_sbe_v1_7.heartbeat_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return coinbase_coinbasederivatives_ordersapi_sbe_v1_7.heartbeat_message.fields(buffer, offset, packet, parent)
  end
end

-- Logged Out Message
coinbase_coinbasederivatives_ordersapi_sbe_v1_7.logged_out_message = {}

-- Size: Logged Out Message
coinbase_coinbasederivatives_ordersapi_sbe_v1_7.logged_out_message.size =
  coinbase_coinbasederivatives_ordersapi_sbe_v1_7.reason.size

-- Display: Logged Out Message
coinbase_coinbasederivatives_ordersapi_sbe_v1_7.logged_out_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Logged Out Message
coinbase_coinbasederivatives_ordersapi_sbe_v1_7.logged_out_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Reason: String64
  index, reason = coinbase_coinbasederivatives_ordersapi_sbe_v1_7.reason.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Logged Out Message
coinbase_coinbasederivatives_ordersapi_sbe_v1_7.logged_out_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_coinbase_coinbasederivatives_ordersapi_sbe_v1_7.fields.logged_out_message, buffer(offset, 0))
    local index = coinbase_coinbasederivatives_ordersapi_sbe_v1_7.logged_out_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = coinbase_coinbasederivatives_ordersapi_sbe_v1_7.logged_out_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return coinbase_coinbasederivatives_ordersapi_sbe_v1_7.logged_out_message.fields(buffer, offset, packet, parent)
  end
end

-- Logout Message
coinbase_coinbasederivatives_ordersapi_sbe_v1_7.logout_message = {}

-- Size: Logout Message
coinbase_coinbasederivatives_ordersapi_sbe_v1_7.logout_message.size =
  coinbase_coinbasederivatives_ordersapi_sbe_v1_7.reason.size

-- Display: Logout Message
coinbase_coinbasederivatives_ordersapi_sbe_v1_7.logout_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Logout Message
coinbase_coinbasederivatives_ordersapi_sbe_v1_7.logout_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Reason: String64
  index, reason = coinbase_coinbasederivatives_ordersapi_sbe_v1_7.reason.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Logout Message
coinbase_coinbasederivatives_ordersapi_sbe_v1_7.logout_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_coinbase_coinbasederivatives_ordersapi_sbe_v1_7.fields.logout_message, buffer(offset, 0))
    local index = coinbase_coinbasederivatives_ordersapi_sbe_v1_7.logout_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = coinbase_coinbasederivatives_ordersapi_sbe_v1_7.logout_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return coinbase_coinbasederivatives_ordersapi_sbe_v1_7.logout_message.fields(buffer, offset, packet, parent)
  end
end

-- Logon Conf Message
coinbase_coinbasederivatives_ordersapi_sbe_v1_7.logon_conf_message = {}

-- Size: Logon Conf Message
coinbase_coinbasederivatives_ordersapi_sbe_v1_7.logon_conf_message.size =
  coinbase_coinbasederivatives_ordersapi_sbe_v1_7.heartbeat_interval_seconds.size

-- Display: Logon Conf Message
coinbase_coinbasederivatives_ordersapi_sbe_v1_7.logon_conf_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Logon Conf Message
coinbase_coinbasederivatives_ordersapi_sbe_v1_7.logon_conf_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Heartbeat Interval Seconds: int32
  index, heartbeat_interval_seconds = coinbase_coinbasederivatives_ordersapi_sbe_v1_7.heartbeat_interval_seconds.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Logon Conf Message
coinbase_coinbasederivatives_ordersapi_sbe_v1_7.logon_conf_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_coinbase_coinbasederivatives_ordersapi_sbe_v1_7.fields.logon_conf_message, buffer(offset, 0))
    local index = coinbase_coinbasederivatives_ordersapi_sbe_v1_7.logon_conf_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = coinbase_coinbasederivatives_ordersapi_sbe_v1_7.logon_conf_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return coinbase_coinbasederivatives_ordersapi_sbe_v1_7.logon_conf_message.fields(buffer, offset, packet, parent)
  end
end

-- Logon Message
coinbase_coinbasederivatives_ordersapi_sbe_v1_7.logon_message = {}

-- Size: Logon Message
coinbase_coinbasederivatives_ordersapi_sbe_v1_7.logon_message.size =
  coinbase_coinbasederivatives_ordersapi_sbe_v1_7.username.size + 
  coinbase_coinbasederivatives_ordersapi_sbe_v1_7.password.size + 
  coinbase_coinbasederivatives_ordersapi_sbe_v1_7.reset_seq_num.size

-- Display: Logon Message
coinbase_coinbasederivatives_ordersapi_sbe_v1_7.logon_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Logon Message
coinbase_coinbasederivatives_ordersapi_sbe_v1_7.logon_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Username: String16
  index, username = coinbase_coinbasederivatives_ordersapi_sbe_v1_7.username.dissect(buffer, index, packet, parent)

  -- Password: String32
  index, password = coinbase_coinbasederivatives_ordersapi_sbe_v1_7.password.dissect(buffer, index, packet, parent)

  -- Reset Seq Num: Bool
  index, reset_seq_num = coinbase_coinbasederivatives_ordersapi_sbe_v1_7.reset_seq_num.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Logon Message
coinbase_coinbasederivatives_ordersapi_sbe_v1_7.logon_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_coinbase_coinbasederivatives_ordersapi_sbe_v1_7.fields.logon_message, buffer(offset, 0))
    local index = coinbase_coinbasederivatives_ordersapi_sbe_v1_7.logon_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = coinbase_coinbasederivatives_ordersapi_sbe_v1_7.logon_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return coinbase_coinbasederivatives_ordersapi_sbe_v1_7.logon_message.fields(buffer, offset, packet, parent)
  end
end

-- Payload
coinbase_coinbasederivatives_ordersapi_sbe_v1_7.payload = {}

-- Dissect: Payload
coinbase_coinbasederivatives_ordersapi_sbe_v1_7.payload.dissect = function(buffer, offset, packet, parent, template_id)
  -- Dissect Logon Message
  if template_id == 100 then
    return coinbase_coinbasederivatives_ordersapi_sbe_v1_7.logon_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Logon Conf Message
  if template_id == 200 then
    return coinbase_coinbasederivatives_ordersapi_sbe_v1_7.logon_conf_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Logout Message
  if template_id == 101 then
    return coinbase_coinbasederivatives_ordersapi_sbe_v1_7.logout_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Logged Out Message
  if template_id == 201 then
    return coinbase_coinbasederivatives_ordersapi_sbe_v1_7.logged_out_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Heartbeat Message
  if template_id == 10 then
    return coinbase_coinbasederivatives_ordersapi_sbe_v1_7.heartbeat_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Test Request Message
  if template_id == 11 then
    return coinbase_coinbasederivatives_ordersapi_sbe_v1_7.test_request_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Resend Request Message
  if template_id == 102 then
    return coinbase_coinbasederivatives_ordersapi_sbe_v1_7.resend_request_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Gap Fill Message
  if template_id == 202 then
    return coinbase_coinbasederivatives_ordersapi_sbe_v1_7.gap_fill_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Ping Message
  if template_id == 102 then
    return coinbase_coinbasederivatives_ordersapi_sbe_v1_7.ping_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Pong Message
  if template_id == 202 then
    return coinbase_coinbasederivatives_ordersapi_sbe_v1_7.pong_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Instrument Info Request Message
  if template_id == 103 then
    return coinbase_coinbasederivatives_ordersapi_sbe_v1_7.instrument_info_request_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Instrument Info Message
  if template_id == 203 then
    return coinbase_coinbasederivatives_ordersapi_sbe_v1_7.instrument_info_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Set Account Message
  if template_id == 105 then
    return coinbase_coinbasederivatives_ordersapi_sbe_v1_7.set_account_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Set Trader Message
  if template_id == 106 then
    return coinbase_coinbasederivatives_ordersapi_sbe_v1_7.set_trader_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Set Ack Message
  if template_id == 205 then
    return coinbase_coinbasederivatives_ordersapi_sbe_v1_7.set_ack_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect New Order Message
  if template_id == 110 then
    return coinbase_coinbasederivatives_ordersapi_sbe_v1_7.new_order_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect New Ioc Order Message
  if template_id == 111 then
    return coinbase_coinbasederivatives_ordersapi_sbe_v1_7.new_ioc_order_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Order Entered Message
  if template_id == 210 then
    return coinbase_coinbasederivatives_ordersapi_sbe_v1_7.order_entered_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Replace Order Message
  if template_id == 120 then
    return coinbase_coinbasederivatives_ordersapi_sbe_v1_7.replace_order_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Obsolete Stream Order Message
  if template_id == 121 then
    return coinbase_coinbasederivatives_ordersapi_sbe_v1_7.obsolete_stream_order_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Order Reject Message
  if template_id == 221 then
    return coinbase_coinbasederivatives_ordersapi_sbe_v1_7.order_reject_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Order Replaced Message
  if template_id == 220 then
    return coinbase_coinbasederivatives_ordersapi_sbe_v1_7.order_replaced_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Cancel Order Message
  if template_id == 130 then
    return coinbase_coinbasederivatives_ordersapi_sbe_v1_7.cancel_order_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Order Canceled Message
  if template_id == 230 then
    return coinbase_coinbasederivatives_ordersapi_sbe_v1_7.order_canceled_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Cancel Order Reject Message
  if template_id == 233 then
    return coinbase_coinbasederivatives_ordersapi_sbe_v1_7.cancel_order_reject_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Mass Cancel Order Message
  if template_id == 131 then
    return coinbase_coinbasederivatives_ordersapi_sbe_v1_7.mass_cancel_order_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Mass Cancel Order Ack Message
  if template_id == 231 then
    return coinbase_coinbasederivatives_ordersapi_sbe_v1_7.mass_cancel_order_ack_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Mass Cancel Order Reject Message
  if template_id == 232 then
    return coinbase_coinbasederivatives_ordersapi_sbe_v1_7.mass_cancel_order_reject_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Unlock Trading Message
  if template_id == 132 then
    return coinbase_coinbasederivatives_ordersapi_sbe_v1_7.unlock_trading_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Unlock Trading Ack Message
  if template_id == 234 then
    return coinbase_coinbasederivatives_ordersapi_sbe_v1_7.unlock_trading_ack_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Unlock Trading Reject Message
  if template_id == 235 then
    return coinbase_coinbasederivatives_ordersapi_sbe_v1_7.unlock_trading_reject_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Order Filled Message
  if template_id == 240 then
    return coinbase_coinbasederivatives_ordersapi_sbe_v1_7.order_filled_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Spread Order Filled Message
  if template_id == 241 then
    return coinbase_coinbasederivatives_ordersapi_sbe_v1_7.spread_order_filled_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Last Exec Id Request Message
  if template_id == 150 then
    return coinbase_coinbasederivatives_ordersapi_sbe_v1_7.last_exec_id_request_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Last Exec Id Message
  if template_id == 250 then
    return coinbase_coinbasederivatives_ordersapi_sbe_v1_7.last_exec_id_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Event Resend Request Message
  if template_id == 152 then
    return coinbase_coinbasederivatives_ordersapi_sbe_v1_7.event_resend_request_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Event Resend Complete Message
  if template_id == 252 then
    return coinbase_coinbasederivatives_ordersapi_sbe_v1_7.event_resend_complete_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Event Resend Reject Message
  if template_id == 253 then
    return coinbase_coinbasederivatives_ordersapi_sbe_v1_7.event_resend_reject_message.dissect(buffer, offset, packet, parent)
  end

  return offset
end

-- Message Header
coinbase_coinbasederivatives_ordersapi_sbe_v1_7.message_header = {}

-- Size: Message Header
coinbase_coinbasederivatives_ordersapi_sbe_v1_7.message_header.size =
  coinbase_coinbasederivatives_ordersapi_sbe_v1_7.protocol_id.size + 
  coinbase_coinbasederivatives_ordersapi_sbe_v1_7.message_flags.size + 
  coinbase_coinbasederivatives_ordersapi_sbe_v1_7.message_length.size + 
  coinbase_coinbasederivatives_ordersapi_sbe_v1_7.sequence_number.size + 
  coinbase_coinbasederivatives_ordersapi_sbe_v1_7.last_processed_seq_no.size + 
  coinbase_coinbasederivatives_ordersapi_sbe_v1_7.reserved.size + 
  coinbase_coinbasederivatives_ordersapi_sbe_v1_7.send_time_epoch_nanos.size + 
  coinbase_coinbasederivatives_ordersapi_sbe_v1_7.block_length.size + 
  coinbase_coinbasederivatives_ordersapi_sbe_v1_7.template_id.size + 
  coinbase_coinbasederivatives_ordersapi_sbe_v1_7.schema_id.size + 
  coinbase_coinbasederivatives_ordersapi_sbe_v1_7.version.size

-- Display: Message Header
coinbase_coinbasederivatives_ordersapi_sbe_v1_7.message_header.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Message Header
coinbase_coinbasederivatives_ordersapi_sbe_v1_7.message_header.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Protocol Id: uint8
  index, protocol_id = coinbase_coinbasederivatives_ordersapi_sbe_v1_7.protocol_id.dissect(buffer, index, packet, parent)

  -- Message Flags: 1 Byte Unsigned Fixed Width Integer
  index, message_flags = coinbase_coinbasederivatives_ordersapi_sbe_v1_7.message_flags.dissect(buffer, index, packet, parent)

  -- Message Length: uint16
  index, message_length = coinbase_coinbasederivatives_ordersapi_sbe_v1_7.message_length.dissect(buffer, index, packet, parent)

  -- Sequence Number: uint32
  index, sequence_number = coinbase_coinbasederivatives_ordersapi_sbe_v1_7.sequence_number.dissect(buffer, index, packet, parent)

  -- Last Processed Seq No: uint32
  index, last_processed_seq_no = coinbase_coinbasederivatives_ordersapi_sbe_v1_7.last_processed_seq_no.dissect(buffer, index, packet, parent)

  -- Reserved: uint32
  index, reserved = coinbase_coinbasederivatives_ordersapi_sbe_v1_7.reserved.dissect(buffer, index, packet, parent)

  -- Send Time Epoch Nanos: int64
  index, send_time_epoch_nanos = coinbase_coinbasederivatives_ordersapi_sbe_v1_7.send_time_epoch_nanos.dissect(buffer, index, packet, parent)

  -- Block Length: uint16
  index, block_length = coinbase_coinbasederivatives_ordersapi_sbe_v1_7.block_length.dissect(buffer, index, packet, parent)

  -- Template Id: uint16
  index, template_id = coinbase_coinbasederivatives_ordersapi_sbe_v1_7.template_id.dissect(buffer, index, packet, parent)

  -- Schema Id: uint16
  index, schema_id = coinbase_coinbasederivatives_ordersapi_sbe_v1_7.schema_id.dissect(buffer, index, packet, parent)

  -- Version: uint16
  index, version = coinbase_coinbasederivatives_ordersapi_sbe_v1_7.version.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Message Header
coinbase_coinbasederivatives_ordersapi_sbe_v1_7.message_header.dissect = function(buffer, offset, packet, parent)
  if show.message_header then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_coinbase_coinbasederivatives_ordersapi_sbe_v1_7.fields.message_header, buffer(offset, 0))
    local index = coinbase_coinbasederivatives_ordersapi_sbe_v1_7.message_header.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = coinbase_coinbasederivatives_ordersapi_sbe_v1_7.message_header.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return coinbase_coinbasederivatives_ordersapi_sbe_v1_7.message_header.fields(buffer, offset, packet, parent)
  end
end

-- Sbe Message
coinbase_coinbasederivatives_ordersapi_sbe_v1_7.sbe_message = {}

-- Display: Sbe Message
coinbase_coinbasederivatives_ordersapi_sbe_v1_7.sbe_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Sbe Message
coinbase_coinbasederivatives_ordersapi_sbe_v1_7.sbe_message.fields = function(buffer, offset, packet, parent, size_of_sbe_message)
  local index = offset

  -- Message Header: Struct of 11 fields
  index, message_header = coinbase_coinbasederivatives_ordersapi_sbe_v1_7.message_header.dissect(buffer, index, packet, parent)

  -- Dependency element: Template Id
  local template_id = buffer(index - 6, 2):le_uint()

  -- Payload: Runtime Type with 38 branches
  index = coinbase_coinbasederivatives_ordersapi_sbe_v1_7.payload.dissect(buffer, index, packet, parent, template_id)

  -- Dependency element: Message Length
  local message_length = buffer(offset + 2, 2):le_uint()

  -- Runtime optional field: Padding
  local padding = nil

  local padding_exists = message_length - (index - offset) > 0

  if padding_exists then

    -- Runtime Size Of: Padding
    local size_of_padding = message_length - (index - offset)

    -- Padding: 0 Byte
    index, padding = coinbase_coinbasederivatives_ordersapi_sbe_v1_7.padding.dissect(buffer, index, packet, parent, size_of_padding)
  end

  return index
end

-- Dissect: Sbe Message
coinbase_coinbasederivatives_ordersapi_sbe_v1_7.sbe_message.dissect = function(buffer, offset, packet, parent, size_of_sbe_message)
  local index = offset + size_of_sbe_message

  -- Optionally add group/struct element to protocol tree
  if show.sbe_message then
    parent = parent:add(omi_coinbase_coinbasederivatives_ordersapi_sbe_v1_7.fields.sbe_message, buffer(offset, 0))
    local current = coinbase_coinbasederivatives_ordersapi_sbe_v1_7.sbe_message.fields(buffer, offset, packet, parent, size_of_sbe_message)
    parent:set_len(size_of_sbe_message)
    local display = coinbase_coinbasederivatives_ordersapi_sbe_v1_7.sbe_message.display(buffer, packet, parent)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    coinbase_coinbasederivatives_ordersapi_sbe_v1_7.sbe_message.fields(buffer, offset, packet, parent, size_of_sbe_message)

    return index
  end
end

-- Remaining Bytes For: Sbe Message
local sbe_message_bytes_remaining = function(buffer, index, available)
  -- Calculate the number of bytes remaining
  local remaining = available - index

  -- Check if packet size can be read
  if remaining < coinbase_coinbasederivatives_ordersapi_sbe_v1_7.message_header.size then
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
coinbase_coinbasederivatives_ordersapi_sbe_v1_7.packet = {}

-- Verify required size of Tcp packet
coinbase_coinbasederivatives_ordersapi_sbe_v1_7.packet.requiredsize = function(buffer)
  return buffer:len() >= coinbase_coinbasederivatives_ordersapi_sbe_v1_7.message_header.size
end

-- Dissect Packet
coinbase_coinbasederivatives_ordersapi_sbe_v1_7.packet.dissect = function(buffer, packet, parent)
  local index = 0

  -- Dependency for Sbe Message
  local end_of_payload = buffer:len()

  -- Sbe Message: Struct of 3 fields
  while index < end_of_payload do

    -- Are minimum number of bytes are available?
    local available, size_of_sbe_message = sbe_message_bytes_remaining(buffer, index, end_of_payload)

    if available > 0 then
      index = coinbase_coinbasederivatives_ordersapi_sbe_v1_7.sbe_message.dissect(buffer, index, packet, parent, size_of_sbe_message)
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
function omi_coinbase_coinbasederivatives_ordersapi_sbe_v1_7.init()
end

-- Dissector for Coinbase CoinbaseDerivatives OrdersApi Sbe 1.7
function omi_coinbase_coinbasederivatives_ordersapi_sbe_v1_7.dissector(buffer, packet, parent)

  -- Set protocol name
  packet.cols.protocol = omi_coinbase_coinbasederivatives_ordersapi_sbe_v1_7.name

  -- Dissect protocol
  local protocol = parent:add(omi_coinbase_coinbasederivatives_ordersapi_sbe_v1_7, buffer(), omi_coinbase_coinbasederivatives_ordersapi_sbe_v1_7.description, "("..buffer:len().." Bytes)")
  return coinbase_coinbasederivatives_ordersapi_sbe_v1_7.packet.dissect(buffer, packet, protocol)
end

-- Register With Tcp Table
local tcp_table = DissectorTable.get("tcp.port")
tcp_table:add(65333, omi_coinbase_coinbasederivatives_ordersapi_sbe_v1_7)


-----------------------------------------------------------------------
-- Protocol Heuristics
-----------------------------------------------------------------------

-- Verify Schema Id Field
coinbase_coinbasederivatives_ordersapi_sbe_v1_7.schema_id.verify = function(buffer)
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
coinbase_coinbasederivatives_ordersapi_sbe_v1_7.version.verify = function(buffer)
  -- Attempt to read field
  local value = buffer(30, 2):le_uint()

  if value == 0 then
    return true
  end

  if value == 7 then
    return true
  end

  return false
end

-- Dissector Heuristic for Coinbase CoinbaseDerivatives OrdersApi Sbe 1.7 (Tcp)
local function omi_coinbase_coinbasederivatives_ordersapi_sbe_v1_7_tcp_heuristic(buffer, packet, parent)
  -- Verify packet length
  if not coinbase_coinbasederivatives_ordersapi_sbe_v1_7.packet.requiredsize(buffer) then return false end

  -- Verify Schema Id
  if not coinbase_coinbasederivatives_ordersapi_sbe_v1_7.schema_id.verify(buffer) then return false end

  -- Verify Version
  if not coinbase_coinbasederivatives_ordersapi_sbe_v1_7.version.verify(buffer) then return false end

  -- Protocol is valid, set conversation and dissect this packet
  packet.conversation = omi_coinbase_coinbasederivatives_ordersapi_sbe_v1_7
  omi_coinbase_coinbasederivatives_ordersapi_sbe_v1_7.dissector(buffer, packet, parent)

  return true
end

-- Register Heuristic for Coinbase CoinbaseDerivatives OrdersApi Sbe 1.7
omi_coinbase_coinbasederivatives_ordersapi_sbe_v1_7:register_heuristic("tcp", omi_coinbase_coinbasederivatives_ordersapi_sbe_v1_7_tcp_heuristic)

-----------------------------------------------------------------------
-- Lua dissectors are an easily edited and modified cross-platform dissection solution.
-- Feel free to modify. Enjoy.
-----------------------------------------------------------------------
-- 
-- Protocol:
--   Organization: Coinbase
--   Version: 1.7
--   Date: Tuesday, July 1, 2025
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
