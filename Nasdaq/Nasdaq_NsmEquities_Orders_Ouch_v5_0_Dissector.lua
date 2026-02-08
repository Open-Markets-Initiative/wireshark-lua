-----------------------------------------------------------------------
-- Lua Script Wireshark Dissector
-- 
-- Please see end of file for rules and regulations
-----------------------------------------------------------------------

-- Nasdaq NsmEquities Orders Ouch 5.0 Protocol
local omi_nasdaq_nsmequities_orders_ouch_v5_0 = Proto("Nasdaq.NsmEquities.Orders.Ouch.v5.0.Lua", "Nasdaq NsmEquities Orders Ouch 5.0")

-- Protocol table
local nasdaq_nsmequities_orders_ouch_v5_0 = {}

-----------------------------------------------------------------------
-- Declare Protocol Fields
-----------------------------------------------------------------------

-- Nasdaq NsmEquities Orders Ouch 5.0 Fields
omi_nasdaq_nsmequities_orders_ouch_v5_0.fields.appendage_length = ProtoField.new("Appendage Length", "nasdaq.nsmequities.orders.ouch.v5.0.appendagelength", ftypes.UINT16)
omi_nasdaq_nsmequities_orders_ouch_v5_0.fields.bbo_weight_indicator = ProtoField.new("Bbo Weight Indicator", "nasdaq.nsmequities.orders.ouch.v5.0.bboweightindicator", ftypes.STRING)
omi_nasdaq_nsmequities_orders_ouch_v5_0.fields.broken_trade_reason = ProtoField.new("Broken Trade Reason", "nasdaq.nsmequities.orders.ouch.v5.0.brokentradereason", ftypes.STRING)
omi_nasdaq_nsmequities_orders_ouch_v5_0.fields.cancel_order_reason = ProtoField.new("Cancel Order Reason", "nasdaq.nsmequities.orders.ouch.v5.0.cancelorderreason", ftypes.STRING)
omi_nasdaq_nsmequities_orders_ouch_v5_0.fields.capacity = ProtoField.new("Capacity", "nasdaq.nsmequities.orders.ouch.v5.0.capacity", ftypes.STRING)
omi_nasdaq_nsmequities_orders_ouch_v5_0.fields.clordid = ProtoField.new("ClOrdId", "nasdaq.nsmequities.orders.ouch.v5.0.clordid", ftypes.STRING)
omi_nasdaq_nsmequities_orders_ouch_v5_0.fields.cross_type = ProtoField.new("Cross Type", "nasdaq.nsmequities.orders.ouch.v5.0.crosstype", ftypes.STRING)
omi_nasdaq_nsmequities_orders_ouch_v5_0.fields.customer_type = ProtoField.new("Customer Type", "nasdaq.nsmequities.orders.ouch.v5.0.customertype", ftypes.STRING)
omi_nasdaq_nsmequities_orders_ouch_v5_0.fields.decrement_shares = ProtoField.new("Decrement Shares", "nasdaq.nsmequities.orders.ouch.v5.0.decrementshares", ftypes.UINT32)
omi_nasdaq_nsmequities_orders_ouch_v5_0.fields.discretion_peg_offset = ProtoField.new("Discretion Peg Offset", "nasdaq.nsmequities.orders.ouch.v5.0.discretionpegoffset", ftypes.DOUBLE)
omi_nasdaq_nsmequities_orders_ouch_v5_0.fields.discretion_peg_type = ProtoField.new("Discretion Peg Type", "nasdaq.nsmequities.orders.ouch.v5.0.discretionpegtype", ftypes.STRING)
omi_nasdaq_nsmequities_orders_ouch_v5_0.fields.discretion_price = ProtoField.new("Discretion Price", "nasdaq.nsmequities.orders.ouch.v5.0.discretionprice", ftypes.DOUBLE)
omi_nasdaq_nsmequities_orders_ouch_v5_0.fields.display = ProtoField.new("Display", "nasdaq.nsmequities.orders.ouch.v5.0.display", ftypes.STRING)
omi_nasdaq_nsmequities_orders_ouch_v5_0.fields.display_price = ProtoField.new("Display Price", "nasdaq.nsmequities.orders.ouch.v5.0.displayprice", ftypes.DOUBLE)
omi_nasdaq_nsmequities_orders_ouch_v5_0.fields.display_quantity = ProtoField.new("Display Quantity", "nasdaq.nsmequities.orders.ouch.v5.0.displayquantity", ftypes.UINT32)
omi_nasdaq_nsmequities_orders_ouch_v5_0.fields.enter_order_appendage = ProtoField.new("Enter Order Appendage", "nasdaq.nsmequities.orders.ouch.v5.0.enterorderappendage", ftypes.STRING)
omi_nasdaq_nsmequities_orders_ouch_v5_0.fields.enter_order_optional_field = ProtoField.new("Enter Order Optional Field", "nasdaq.nsmequities.orders.ouch.v5.0.enterorderoptionalfield", ftypes.INT8)
omi_nasdaq_nsmequities_orders_ouch_v5_0.fields.enter_order_optional_value = ProtoField.new("Enter Order Optional Value", "nasdaq.nsmequities.orders.ouch.v5.0.enterorderoptionalvalue", ftypes.STRING)
omi_nasdaq_nsmequities_orders_ouch_v5_0.fields.event_code = ProtoField.new("Event Code", "nasdaq.nsmequities.orders.ouch.v5.0.eventcode", ftypes.STRING)
omi_nasdaq_nsmequities_orders_ouch_v5_0.fields.execution_price = ProtoField.new("Execution Price", "nasdaq.nsmequities.orders.ouch.v5.0.executionprice", ftypes.DOUBLE)
omi_nasdaq_nsmequities_orders_ouch_v5_0.fields.expire_time = ProtoField.new("Expire Time", "nasdaq.nsmequities.orders.ouch.v5.0.expiretime", ftypes.UINT32)
omi_nasdaq_nsmequities_orders_ouch_v5_0.fields.firm = ProtoField.new("Firm", "nasdaq.nsmequities.orders.ouch.v5.0.firm", ftypes.STRING)
omi_nasdaq_nsmequities_orders_ouch_v5_0.fields.handle_inst = ProtoField.new("Handle Inst", "nasdaq.nsmequities.orders.ouch.v5.0.handleinst", ftypes.STRING)
omi_nasdaq_nsmequities_orders_ouch_v5_0.fields.inter_market_sweep_eligibility = ProtoField.new("Inter Market Sweep Eligibility", "nasdaq.nsmequities.orders.ouch.v5.0.intermarketsweepeligibility", ftypes.STRING)
omi_nasdaq_nsmequities_orders_ouch_v5_0.fields.liquidity_flag = ProtoField.new("Liquidity Flag", "nasdaq.nsmequities.orders.ouch.v5.0.liquidityflag", ftypes.STRING)
omi_nasdaq_nsmequities_orders_ouch_v5_0.fields.match_number = ProtoField.new("Match Number", "nasdaq.nsmequities.orders.ouch.v5.0.matchnumber", ftypes.UINT64)
omi_nasdaq_nsmequities_orders_ouch_v5_0.fields.max_floor = ProtoField.new("Max Floor", "nasdaq.nsmequities.orders.ouch.v5.0.maxfloor", ftypes.UINT32)
omi_nasdaq_nsmequities_orders_ouch_v5_0.fields.min_qty = ProtoField.new("Min Qty", "nasdaq.nsmequities.orders.ouch.v5.0.minqty", ftypes.UINT32)
omi_nasdaq_nsmequities_orders_ouch_v5_0.fields.next_user_ref_num = ProtoField.new("Next User Ref Num", "nasdaq.nsmequities.orders.ouch.v5.0.nextuserrefnum", ftypes.UINT32)
omi_nasdaq_nsmequities_orders_ouch_v5_0.fields.optional_field_length = ProtoField.new("Optional Field Length", "nasdaq.nsmequities.orders.ouch.v5.0.optionalfieldlength", ftypes.INT8)
omi_nasdaq_nsmequities_orders_ouch_v5_0.fields.order_accepted_appendage = ProtoField.new("Order Accepted Appendage", "nasdaq.nsmequities.orders.ouch.v5.0.orderacceptedappendage", ftypes.STRING)
omi_nasdaq_nsmequities_orders_ouch_v5_0.fields.order_accepted_optional_field = ProtoField.new("Order Accepted Optional Field", "nasdaq.nsmequities.orders.ouch.v5.0.orderacceptedoptionalfield", ftypes.INT8)
omi_nasdaq_nsmequities_orders_ouch_v5_0.fields.order_accepted_optional_value = ProtoField.new("Order Accepted Optional Value", "nasdaq.nsmequities.orders.ouch.v5.0.orderacceptedoptionalvalue", ftypes.STRING)
omi_nasdaq_nsmequities_orders_ouch_v5_0.fields.order_cancel_reason = ProtoField.new("Order Cancel Reason", "nasdaq.nsmequities.orders.ouch.v5.0.ordercancelreason", ftypes.STRING)
omi_nasdaq_nsmequities_orders_ouch_v5_0.fields.order_executed_appendage = ProtoField.new("Order Executed Appendage", "nasdaq.nsmequities.orders.ouch.v5.0.orderexecutedappendage", ftypes.STRING)
omi_nasdaq_nsmequities_orders_ouch_v5_0.fields.order_executed_optional_field = ProtoField.new("Order Executed Optional Field", "nasdaq.nsmequities.orders.ouch.v5.0.orderexecutedoptionalfield", ftypes.INT8)
omi_nasdaq_nsmequities_orders_ouch_v5_0.fields.order_executed_optional_value = ProtoField.new("Order Executed Optional Value", "nasdaq.nsmequities.orders.ouch.v5.0.orderexecutedoptionalvalue", ftypes.STRING)
omi_nasdaq_nsmequities_orders_ouch_v5_0.fields.order_reference_number = ProtoField.new("Order Reference Number", "nasdaq.nsmequities.orders.ouch.v5.0.orderreferencenumber", ftypes.UINT64)
omi_nasdaq_nsmequities_orders_ouch_v5_0.fields.order_restated_appendage = ProtoField.new("Order Restated Appendage", "nasdaq.nsmequities.orders.ouch.v5.0.orderrestatedappendage", ftypes.STRING)
omi_nasdaq_nsmequities_orders_ouch_v5_0.fields.order_restated_optional_field = ProtoField.new("Order Restated Optional Field", "nasdaq.nsmequities.orders.ouch.v5.0.orderrestatedoptionalfield", ftypes.INT8)
omi_nasdaq_nsmequities_orders_ouch_v5_0.fields.order_restated_optional_value = ProtoField.new("Order Restated Optional Value", "nasdaq.nsmequities.orders.ouch.v5.0.orderrestatedoptionalvalue", ftypes.STRING)
omi_nasdaq_nsmequities_orders_ouch_v5_0.fields.order_restated_reason = ProtoField.new("Order Restated Reason", "nasdaq.nsmequities.orders.ouch.v5.0.orderrestatedreason", ftypes.STRING)
omi_nasdaq_nsmequities_orders_ouch_v5_0.fields.order_state = ProtoField.new("Order State", "nasdaq.nsmequities.orders.ouch.v5.0.orderstate", ftypes.STRING)
omi_nasdaq_nsmequities_orders_ouch_v5_0.fields.orig_user_ref_num = ProtoField.new("Orig User Ref Num", "nasdaq.nsmequities.orders.ouch.v5.0.origuserrefnum", ftypes.UINT32)
omi_nasdaq_nsmequities_orders_ouch_v5_0.fields.packet = ProtoField.new("Packet", "nasdaq.nsmequities.orders.ouch.v5.0.packet", ftypes.STRING)
omi_nasdaq_nsmequities_orders_ouch_v5_0.fields.packet_header = ProtoField.new("Packet Header", "nasdaq.nsmequities.orders.ouch.v5.0.packetheader", ftypes.STRING)
omi_nasdaq_nsmequities_orders_ouch_v5_0.fields.packet_length = ProtoField.new("Packet Length", "nasdaq.nsmequities.orders.ouch.v5.0.packetlength", ftypes.UINT16)
omi_nasdaq_nsmequities_orders_ouch_v5_0.fields.packet_type = ProtoField.new("Packet Type", "nasdaq.nsmequities.orders.ouch.v5.0.packettype", ftypes.STRING)
omi_nasdaq_nsmequities_orders_ouch_v5_0.fields.password = ProtoField.new("Password", "nasdaq.nsmequities.orders.ouch.v5.0.password", ftypes.STRING)
omi_nasdaq_nsmequities_orders_ouch_v5_0.fields.payload = ProtoField.new("Payload", "nasdaq.nsmequities.orders.ouch.v5.0.payload", ftypes.STRING)
omi_nasdaq_nsmequities_orders_ouch_v5_0.fields.peg_offset = ProtoField.new("Peg Offset", "nasdaq.nsmequities.orders.ouch.v5.0.pegoffset", ftypes.DOUBLE)
omi_nasdaq_nsmequities_orders_ouch_v5_0.fields.post_only = ProtoField.new("Post Only", "nasdaq.nsmequities.orders.ouch.v5.0.postonly", ftypes.STRING)
omi_nasdaq_nsmequities_orders_ouch_v5_0.fields.price = ProtoField.new("Price", "nasdaq.nsmequities.orders.ouch.v5.0.price", ftypes.DOUBLE)
omi_nasdaq_nsmequities_orders_ouch_v5_0.fields.price_type = ProtoField.new("Price Type", "nasdaq.nsmequities.orders.ouch.v5.0.pricetype", ftypes.STRING)
omi_nasdaq_nsmequities_orders_ouch_v5_0.fields.quantity = ProtoField.new("Quantity", "nasdaq.nsmequities.orders.ouch.v5.0.quantity", ftypes.UINT32)
omi_nasdaq_nsmequities_orders_ouch_v5_0.fields.quantity_prevented_from_trading = ProtoField.new("Quantity Prevented From Trading", "nasdaq.nsmequities.orders.ouch.v5.0.quantitypreventedfromtrading", ftypes.UINT32)
omi_nasdaq_nsmequities_orders_ouch_v5_0.fields.random_reserves = ProtoField.new("Random Reserves", "nasdaq.nsmequities.orders.ouch.v5.0.randomreserves", ftypes.UINT32)
omi_nasdaq_nsmequities_orders_ouch_v5_0.fields.reference_price = ProtoField.new("Reference Price", "nasdaq.nsmequities.orders.ouch.v5.0.referenceprice", ftypes.DOUBLE)
omi_nasdaq_nsmequities_orders_ouch_v5_0.fields.reference_price_type = ProtoField.new("Reference Price Type", "nasdaq.nsmequities.orders.ouch.v5.0.referencepricetype", ftypes.STRING)
omi_nasdaq_nsmequities_orders_ouch_v5_0.fields.reject_reason_code = ProtoField.new("Reject Reason Code", "nasdaq.nsmequities.orders.ouch.v5.0.rejectreasoncode", ftypes.STRING)
omi_nasdaq_nsmequities_orders_ouch_v5_0.fields.rejected_order_reason = ProtoField.new("Rejected Order Reason", "nasdaq.nsmequities.orders.ouch.v5.0.rejectedorderreason", ftypes.UINT16)
omi_nasdaq_nsmequities_orders_ouch_v5_0.fields.replace_order_appendage = ProtoField.new("Replace Order Appendage", "nasdaq.nsmequities.orders.ouch.v5.0.replaceorderappendage", ftypes.STRING)
omi_nasdaq_nsmequities_orders_ouch_v5_0.fields.replace_order_optional_field = ProtoField.new("Replace Order Optional Field", "nasdaq.nsmequities.orders.ouch.v5.0.replaceorderoptionalfield", ftypes.INT8)
omi_nasdaq_nsmequities_orders_ouch_v5_0.fields.replace_order_optional_value = ProtoField.new("Replace Order Optional Value", "nasdaq.nsmequities.orders.ouch.v5.0.replaceorderoptionalvalue", ftypes.STRING)
omi_nasdaq_nsmequities_orders_ouch_v5_0.fields.replaced_message_appendage = ProtoField.new("Replaced Message Appendage", "nasdaq.nsmequities.orders.ouch.v5.0.replacedmessageappendage", ftypes.STRING)
omi_nasdaq_nsmequities_orders_ouch_v5_0.fields.replaced_message_optional_field = ProtoField.new("Replaced Message Optional Field", "nasdaq.nsmequities.orders.ouch.v5.0.replacedmessageoptionalfield", ftypes.INT8)
omi_nasdaq_nsmequities_orders_ouch_v5_0.fields.replaced_message_optional_value = ProtoField.new("Replaced Message Optional Value", "nasdaq.nsmequities.orders.ouch.v5.0.replacedmessageoptionalvalue", ftypes.STRING)
omi_nasdaq_nsmequities_orders_ouch_v5_0.fields.requested_sequence_number = ProtoField.new("Requested Sequence Number", "nasdaq.nsmequities.orders.ouch.v5.0.requestedsequencenumber", ftypes.STRING)
omi_nasdaq_nsmequities_orders_ouch_v5_0.fields.requested_session = ProtoField.new("Requested Session", "nasdaq.nsmequities.orders.ouch.v5.0.requestedsession", ftypes.STRING)
omi_nasdaq_nsmequities_orders_ouch_v5_0.fields.route = ProtoField.new("Route", "nasdaq.nsmequities.orders.ouch.v5.0.route", ftypes.STRING)
omi_nasdaq_nsmequities_orders_ouch_v5_0.fields.secondary_ord_ref_num = ProtoField.new("Secondary Ord Ref Num", "nasdaq.nsmequities.orders.ouch.v5.0.secondaryordrefnum", ftypes.UINT64)
omi_nasdaq_nsmequities_orders_ouch_v5_0.fields.sequence_number = ProtoField.new("Sequence Number", "nasdaq.nsmequities.orders.ouch.v5.0.sequencenumber", ftypes.STRING)
omi_nasdaq_nsmequities_orders_ouch_v5_0.fields.sequenced_message = ProtoField.new("Sequenced Message", "nasdaq.nsmequities.orders.ouch.v5.0.sequencedmessage", ftypes.STRING)
omi_nasdaq_nsmequities_orders_ouch_v5_0.fields.sequenced_message_type = ProtoField.new("Sequenced Message Type", "nasdaq.nsmequities.orders.ouch.v5.0.sequencedmessagetype", ftypes.STRING)
omi_nasdaq_nsmequities_orders_ouch_v5_0.fields.session = ProtoField.new("Session", "nasdaq.nsmequities.orders.ouch.v5.0.session", ftypes.STRING)
omi_nasdaq_nsmequities_orders_ouch_v5_0.fields.side = ProtoField.new("Side", "nasdaq.nsmequities.orders.ouch.v5.0.side", ftypes.STRING)
omi_nasdaq_nsmequities_orders_ouch_v5_0.fields.soup_bin_tcp_packet = ProtoField.new("Soup Bin Tcp Packet", "nasdaq.nsmequities.orders.ouch.v5.0.soupbintcppacket", ftypes.STRING)
omi_nasdaq_nsmequities_orders_ouch_v5_0.fields.symbol = ProtoField.new("Symbol", "nasdaq.nsmequities.orders.ouch.v5.0.symbol", ftypes.STRING)
omi_nasdaq_nsmequities_orders_ouch_v5_0.fields.text = ProtoField.new("Text", "nasdaq.nsmequities.orders.ouch.v5.0.text", ftypes.STRING)
omi_nasdaq_nsmequities_orders_ouch_v5_0.fields.time_in_force = ProtoField.new("Time In Force", "nasdaq.nsmequities.orders.ouch.v5.0.timeinforce", ftypes.STRING)
omi_nasdaq_nsmequities_orders_ouch_v5_0.fields.timestamp = ProtoField.new("Timestamp", "nasdaq.nsmequities.orders.ouch.v5.0.timestamp", ftypes.UINT64)
omi_nasdaq_nsmequities_orders_ouch_v5_0.fields.trade_correction_reason = ProtoField.new("Trade Correction Reason", "nasdaq.nsmequities.orders.ouch.v5.0.tradecorrectionreason", ftypes.STRING)
omi_nasdaq_nsmequities_orders_ouch_v5_0.fields.trade_now = ProtoField.new("Trade Now", "nasdaq.nsmequities.orders.ouch.v5.0.tradenow", ftypes.STRING)
omi_nasdaq_nsmequities_orders_ouch_v5_0.fields.unsequenced_message = ProtoField.new("Unsequenced Message", "nasdaq.nsmequities.orders.ouch.v5.0.unsequencedmessage", ftypes.STRING)
omi_nasdaq_nsmequities_orders_ouch_v5_0.fields.unsequenced_message_type = ProtoField.new("Unsequenced Message Type", "nasdaq.nsmequities.orders.ouch.v5.0.unsequencedmessagetype", ftypes.STRING)
omi_nasdaq_nsmequities_orders_ouch_v5_0.fields.user_ref_num = ProtoField.new("User Ref Num", "nasdaq.nsmequities.orders.ouch.v5.0.userrefnum", ftypes.UINT32)
omi_nasdaq_nsmequities_orders_ouch_v5_0.fields.username = ProtoField.new("Username", "nasdaq.nsmequities.orders.ouch.v5.0.username", ftypes.STRING)

-- Nasdaq NsmEquities Ouch Orders 5.0 Application Messages
omi_nasdaq_nsmequities_orders_ouch_v5_0.fields.account_query_response_message = ProtoField.new("Account Query Response Message", "nasdaq.nsmequities.orders.ouch.v5.0.accountqueryresponsemessage", ftypes.STRING)
omi_nasdaq_nsmequities_orders_ouch_v5_0.fields.aiq_canceled_message = ProtoField.new("Aiq Canceled Message", "nasdaq.nsmequities.orders.ouch.v5.0.aiqcanceledmessage", ftypes.STRING)
omi_nasdaq_nsmequities_orders_ouch_v5_0.fields.broken_trade_message = ProtoField.new("Broken Trade Message", "nasdaq.nsmequities.orders.ouch.v5.0.brokentrademessage", ftypes.STRING)
omi_nasdaq_nsmequities_orders_ouch_v5_0.fields.cancel_order_message = ProtoField.new("Cancel Order Message", "nasdaq.nsmequities.orders.ouch.v5.0.cancelordermessage", ftypes.STRING)
omi_nasdaq_nsmequities_orders_ouch_v5_0.fields.cancel_pending_message = ProtoField.new("Cancel Pending Message", "nasdaq.nsmequities.orders.ouch.v5.0.cancelpendingmessage", ftypes.STRING)
omi_nasdaq_nsmequities_orders_ouch_v5_0.fields.cancel_reject_message = ProtoField.new("Cancel Reject Message", "nasdaq.nsmequities.orders.ouch.v5.0.cancelrejectmessage", ftypes.STRING)
omi_nasdaq_nsmequities_orders_ouch_v5_0.fields.canceled_message = ProtoField.new("Canceled Message", "nasdaq.nsmequities.orders.ouch.v5.0.canceledmessage", ftypes.STRING)
omi_nasdaq_nsmequities_orders_ouch_v5_0.fields.enter_order_message = ProtoField.new("Enter Order Message", "nasdaq.nsmequities.orders.ouch.v5.0.enterordermessage", ftypes.STRING)
omi_nasdaq_nsmequities_orders_ouch_v5_0.fields.modify_order_message = ProtoField.new("Modify Order Message", "nasdaq.nsmequities.orders.ouch.v5.0.modifyordermessage", ftypes.STRING)
omi_nasdaq_nsmequities_orders_ouch_v5_0.fields.order_accepted_message = ProtoField.new("Order Accepted Message", "nasdaq.nsmequities.orders.ouch.v5.0.orderacceptedmessage", ftypes.STRING)
omi_nasdaq_nsmequities_orders_ouch_v5_0.fields.order_executed_message = ProtoField.new("Order Executed Message", "nasdaq.nsmequities.orders.ouch.v5.0.orderexecutedmessage", ftypes.STRING)
omi_nasdaq_nsmequities_orders_ouch_v5_0.fields.order_modified_message = ProtoField.new("Order Modified Message", "nasdaq.nsmequities.orders.ouch.v5.0.ordermodifiedmessage", ftypes.STRING)
omi_nasdaq_nsmequities_orders_ouch_v5_0.fields.order_priority_update_message = ProtoField.new("Order Priority Update Message", "nasdaq.nsmequities.orders.ouch.v5.0.orderpriorityupdatemessage", ftypes.STRING)
omi_nasdaq_nsmequities_orders_ouch_v5_0.fields.order_restated_message = ProtoField.new("Order Restated Message", "nasdaq.nsmequities.orders.ouch.v5.0.orderrestatedmessage", ftypes.STRING)
omi_nasdaq_nsmequities_orders_ouch_v5_0.fields.rejected_order_message = ProtoField.new("Rejected Order Message", "nasdaq.nsmequities.orders.ouch.v5.0.rejectedordermessage", ftypes.STRING)
omi_nasdaq_nsmequities_orders_ouch_v5_0.fields.replace_order_message = ProtoField.new("Replace Order Message", "nasdaq.nsmequities.orders.ouch.v5.0.replaceordermessage", ftypes.STRING)
omi_nasdaq_nsmequities_orders_ouch_v5_0.fields.replaced_message = ProtoField.new("Replaced Message", "nasdaq.nsmequities.orders.ouch.v5.0.replacedmessage", ftypes.STRING)
omi_nasdaq_nsmequities_orders_ouch_v5_0.fields.system_event_message = ProtoField.new("System Event Message", "nasdaq.nsmequities.orders.ouch.v5.0.systemeventmessage", ftypes.STRING)
omi_nasdaq_nsmequities_orders_ouch_v5_0.fields.trade_correction_message = ProtoField.new("Trade Correction Message", "nasdaq.nsmequities.orders.ouch.v5.0.tradecorrectionmessage", ftypes.STRING)

-- Nasdaq NsmEquities Ouch Orders 5.0 Session Messages
omi_nasdaq_nsmequities_orders_ouch_v5_0.fields.debug_packet = ProtoField.new("Debug Packet", "nasdaq.nsmequities.orders.ouch.v5.0.debugpacket", ftypes.STRING)
omi_nasdaq_nsmequities_orders_ouch_v5_0.fields.login_accepted_packet = ProtoField.new("Login Accepted Packet", "nasdaq.nsmequities.orders.ouch.v5.0.loginacceptedpacket", ftypes.STRING)
omi_nasdaq_nsmequities_orders_ouch_v5_0.fields.login_rejected_packet = ProtoField.new("Login Rejected Packet", "nasdaq.nsmequities.orders.ouch.v5.0.loginrejectedpacket", ftypes.STRING)
omi_nasdaq_nsmequities_orders_ouch_v5_0.fields.login_request_packet = ProtoField.new("Login Request Packet", "nasdaq.nsmequities.orders.ouch.v5.0.loginrequestpacket", ftypes.STRING)
omi_nasdaq_nsmequities_orders_ouch_v5_0.fields.sequenced_data_packet = ProtoField.new("Sequenced Data Packet", "nasdaq.nsmequities.orders.ouch.v5.0.sequenceddatapacket", ftypes.STRING)
omi_nasdaq_nsmequities_orders_ouch_v5_0.fields.unsequenced_data_packet = ProtoField.new("Unsequenced Data Packet", "nasdaq.nsmequities.orders.ouch.v5.0.unsequenceddatapacket", ftypes.STRING)

-----------------------------------------------------------------------
-- Declare Dissection Options
-----------------------------------------------------------------------

local show = {}

-- Nasdaq NsmEquities Orders Ouch 5.0 Element Dissection Options
show.account_query_response_message = true
show.aiq_canceled_message = true
show.broken_trade_message = true
show.cancel_order_message = true
show.cancel_pending_message = true
show.cancel_reject_message = true
show.canceled_message = true
show.debug_packet = true
show.enter_order_appendage = true
show.enter_order_message = true
show.login_accepted_packet = true
show.login_rejected_packet = true
show.login_request_packet = true
show.modify_order_message = true
show.order_accepted_appendage = true
show.order_accepted_message = true
show.order_executed_appendage = true
show.order_executed_message = true
show.order_modified_message = true
show.order_priority_update_message = true
show.order_restated_appendage = true
show.order_restated_message = true
show.packet = true
show.packet_header = true
show.rejected_order_message = true
show.replace_order_appendage = true
show.replace_order_message = true
show.replaced_message = true
show.replaced_message_appendage = true
show.sequenced_data_packet = true
show.soup_bin_tcp_packet = true
show.system_event_message = true
show.trade_correction_message = true
show.unsequenced_data_packet = true
show.enter_order_optional_value = false
show.order_accepted_optional_value = false
show.order_executed_optional_value = false
show.order_restated_optional_value = false
show.payload = false
show.replace_order_optional_value = false
show.replaced_message_optional_value = false
show.sequenced_message = false
show.unsequenced_message = false

-- Register Nasdaq NsmEquities Orders Ouch 5.0 Show Options
omi_nasdaq_nsmequities_orders_ouch_v5_0.prefs.show_account_query_response_message = Pref.bool("Show Account Query Response Message", show.account_query_response_message, "Parse and add Account Query Response Message to protocol tree")
omi_nasdaq_nsmequities_orders_ouch_v5_0.prefs.show_aiq_canceled_message = Pref.bool("Show Aiq Canceled Message", show.aiq_canceled_message, "Parse and add Aiq Canceled Message to protocol tree")
omi_nasdaq_nsmequities_orders_ouch_v5_0.prefs.show_broken_trade_message = Pref.bool("Show Broken Trade Message", show.broken_trade_message, "Parse and add Broken Trade Message to protocol tree")
omi_nasdaq_nsmequities_orders_ouch_v5_0.prefs.show_cancel_order_message = Pref.bool("Show Cancel Order Message", show.cancel_order_message, "Parse and add Cancel Order Message to protocol tree")
omi_nasdaq_nsmequities_orders_ouch_v5_0.prefs.show_cancel_pending_message = Pref.bool("Show Cancel Pending Message", show.cancel_pending_message, "Parse and add Cancel Pending Message to protocol tree")
omi_nasdaq_nsmequities_orders_ouch_v5_0.prefs.show_cancel_reject_message = Pref.bool("Show Cancel Reject Message", show.cancel_reject_message, "Parse and add Cancel Reject Message to protocol tree")
omi_nasdaq_nsmequities_orders_ouch_v5_0.prefs.show_canceled_message = Pref.bool("Show Canceled Message", show.canceled_message, "Parse and add Canceled Message to protocol tree")
omi_nasdaq_nsmequities_orders_ouch_v5_0.prefs.show_debug_packet = Pref.bool("Show Debug Packet", show.debug_packet, "Parse and add Debug Packet to protocol tree")
omi_nasdaq_nsmequities_orders_ouch_v5_0.prefs.show_enter_order_appendage = Pref.bool("Show Enter Order Appendage", show.enter_order_appendage, "Parse and add Enter Order Appendage to protocol tree")
omi_nasdaq_nsmequities_orders_ouch_v5_0.prefs.show_enter_order_message = Pref.bool("Show Enter Order Message", show.enter_order_message, "Parse and add Enter Order Message to protocol tree")
omi_nasdaq_nsmequities_orders_ouch_v5_0.prefs.show_login_accepted_packet = Pref.bool("Show Login Accepted Packet", show.login_accepted_packet, "Parse and add Login Accepted Packet to protocol tree")
omi_nasdaq_nsmequities_orders_ouch_v5_0.prefs.show_login_rejected_packet = Pref.bool("Show Login Rejected Packet", show.login_rejected_packet, "Parse and add Login Rejected Packet to protocol tree")
omi_nasdaq_nsmequities_orders_ouch_v5_0.prefs.show_login_request_packet = Pref.bool("Show Login Request Packet", show.login_request_packet, "Parse and add Login Request Packet to protocol tree")
omi_nasdaq_nsmequities_orders_ouch_v5_0.prefs.show_modify_order_message = Pref.bool("Show Modify Order Message", show.modify_order_message, "Parse and add Modify Order Message to protocol tree")
omi_nasdaq_nsmequities_orders_ouch_v5_0.prefs.show_order_accepted_appendage = Pref.bool("Show Order Accepted Appendage", show.order_accepted_appendage, "Parse and add Order Accepted Appendage to protocol tree")
omi_nasdaq_nsmequities_orders_ouch_v5_0.prefs.show_order_accepted_message = Pref.bool("Show Order Accepted Message", show.order_accepted_message, "Parse and add Order Accepted Message to protocol tree")
omi_nasdaq_nsmequities_orders_ouch_v5_0.prefs.show_order_executed_appendage = Pref.bool("Show Order Executed Appendage", show.order_executed_appendage, "Parse and add Order Executed Appendage to protocol tree")
omi_nasdaq_nsmequities_orders_ouch_v5_0.prefs.show_order_executed_message = Pref.bool("Show Order Executed Message", show.order_executed_message, "Parse and add Order Executed Message to protocol tree")
omi_nasdaq_nsmequities_orders_ouch_v5_0.prefs.show_order_modified_message = Pref.bool("Show Order Modified Message", show.order_modified_message, "Parse and add Order Modified Message to protocol tree")
omi_nasdaq_nsmequities_orders_ouch_v5_0.prefs.show_order_priority_update_message = Pref.bool("Show Order Priority Update Message", show.order_priority_update_message, "Parse and add Order Priority Update Message to protocol tree")
omi_nasdaq_nsmequities_orders_ouch_v5_0.prefs.show_order_restated_appendage = Pref.bool("Show Order Restated Appendage", show.order_restated_appendage, "Parse and add Order Restated Appendage to protocol tree")
omi_nasdaq_nsmequities_orders_ouch_v5_0.prefs.show_order_restated_message = Pref.bool("Show Order Restated Message", show.order_restated_message, "Parse and add Order Restated Message to protocol tree")
omi_nasdaq_nsmequities_orders_ouch_v5_0.prefs.show_packet = Pref.bool("Show Packet", show.packet, "Parse and add Packet to protocol tree")
omi_nasdaq_nsmequities_orders_ouch_v5_0.prefs.show_packet_header = Pref.bool("Show Packet Header", show.packet_header, "Parse and add Packet Header to protocol tree")
omi_nasdaq_nsmequities_orders_ouch_v5_0.prefs.show_rejected_order_message = Pref.bool("Show Rejected Order Message", show.rejected_order_message, "Parse and add Rejected Order Message to protocol tree")
omi_nasdaq_nsmequities_orders_ouch_v5_0.prefs.show_replace_order_appendage = Pref.bool("Show Replace Order Appendage", show.replace_order_appendage, "Parse and add Replace Order Appendage to protocol tree")
omi_nasdaq_nsmequities_orders_ouch_v5_0.prefs.show_replace_order_message = Pref.bool("Show Replace Order Message", show.replace_order_message, "Parse and add Replace Order Message to protocol tree")
omi_nasdaq_nsmequities_orders_ouch_v5_0.prefs.show_replaced_message = Pref.bool("Show Replaced Message", show.replaced_message, "Parse and add Replaced Message to protocol tree")
omi_nasdaq_nsmequities_orders_ouch_v5_0.prefs.show_replaced_message_appendage = Pref.bool("Show Replaced Message Appendage", show.replaced_message_appendage, "Parse and add Replaced Message Appendage to protocol tree")
omi_nasdaq_nsmequities_orders_ouch_v5_0.prefs.show_sequenced_data_packet = Pref.bool("Show Sequenced Data Packet", show.sequenced_data_packet, "Parse and add Sequenced Data Packet to protocol tree")
omi_nasdaq_nsmequities_orders_ouch_v5_0.prefs.show_soup_bin_tcp_packet = Pref.bool("Show Soup Bin Tcp Packet", show.soup_bin_tcp_packet, "Parse and add Soup Bin Tcp Packet to protocol tree")
omi_nasdaq_nsmequities_orders_ouch_v5_0.prefs.show_system_event_message = Pref.bool("Show System Event Message", show.system_event_message, "Parse and add System Event Message to protocol tree")
omi_nasdaq_nsmequities_orders_ouch_v5_0.prefs.show_trade_correction_message = Pref.bool("Show Trade Correction Message", show.trade_correction_message, "Parse and add Trade Correction Message to protocol tree")
omi_nasdaq_nsmequities_orders_ouch_v5_0.prefs.show_unsequenced_data_packet = Pref.bool("Show Unsequenced Data Packet", show.unsequenced_data_packet, "Parse and add Unsequenced Data Packet to protocol tree")
omi_nasdaq_nsmequities_orders_ouch_v5_0.prefs.show_enter_order_optional_value = Pref.bool("Show Enter Order Optional Value", show.enter_order_optional_value, "Parse and add Enter Order Optional Value to protocol tree")
omi_nasdaq_nsmequities_orders_ouch_v5_0.prefs.show_order_accepted_optional_value = Pref.bool("Show Order Accepted Optional Value", show.order_accepted_optional_value, "Parse and add Order Accepted Optional Value to protocol tree")
omi_nasdaq_nsmequities_orders_ouch_v5_0.prefs.show_order_executed_optional_value = Pref.bool("Show Order Executed Optional Value", show.order_executed_optional_value, "Parse and add Order Executed Optional Value to protocol tree")
omi_nasdaq_nsmequities_orders_ouch_v5_0.prefs.show_order_restated_optional_value = Pref.bool("Show Order Restated Optional Value", show.order_restated_optional_value, "Parse and add Order Restated Optional Value to protocol tree")
omi_nasdaq_nsmequities_orders_ouch_v5_0.prefs.show_payload = Pref.bool("Show Payload", show.payload, "Parse and add Payload to protocol tree")
omi_nasdaq_nsmequities_orders_ouch_v5_0.prefs.show_replace_order_optional_value = Pref.bool("Show Replace Order Optional Value", show.replace_order_optional_value, "Parse and add Replace Order Optional Value to protocol tree")
omi_nasdaq_nsmequities_orders_ouch_v5_0.prefs.show_replaced_message_optional_value = Pref.bool("Show Replaced Message Optional Value", show.replaced_message_optional_value, "Parse and add Replaced Message Optional Value to protocol tree")
omi_nasdaq_nsmequities_orders_ouch_v5_0.prefs.show_sequenced_message = Pref.bool("Show Sequenced Message", show.sequenced_message, "Parse and add Sequenced Message to protocol tree")
omi_nasdaq_nsmequities_orders_ouch_v5_0.prefs.show_unsequenced_message = Pref.bool("Show Unsequenced Message", show.unsequenced_message, "Parse and add Unsequenced Message to protocol tree")

-- Handle changed preferences
function omi_nasdaq_nsmequities_orders_ouch_v5_0.prefs_changed()
  local changed = false

  -- Check if show options have changed
  if show.account_query_response_message ~= omi_nasdaq_nsmequities_orders_ouch_v5_0.prefs.show_account_query_response_message then
    show.account_query_response_message = omi_nasdaq_nsmequities_orders_ouch_v5_0.prefs.show_account_query_response_message
    changed = true
  end
  if show.aiq_canceled_message ~= omi_nasdaq_nsmequities_orders_ouch_v5_0.prefs.show_aiq_canceled_message then
    show.aiq_canceled_message = omi_nasdaq_nsmequities_orders_ouch_v5_0.prefs.show_aiq_canceled_message
    changed = true
  end
  if show.broken_trade_message ~= omi_nasdaq_nsmequities_orders_ouch_v5_0.prefs.show_broken_trade_message then
    show.broken_trade_message = omi_nasdaq_nsmequities_orders_ouch_v5_0.prefs.show_broken_trade_message
    changed = true
  end
  if show.cancel_order_message ~= omi_nasdaq_nsmequities_orders_ouch_v5_0.prefs.show_cancel_order_message then
    show.cancel_order_message = omi_nasdaq_nsmequities_orders_ouch_v5_0.prefs.show_cancel_order_message
    changed = true
  end
  if show.cancel_pending_message ~= omi_nasdaq_nsmequities_orders_ouch_v5_0.prefs.show_cancel_pending_message then
    show.cancel_pending_message = omi_nasdaq_nsmequities_orders_ouch_v5_0.prefs.show_cancel_pending_message
    changed = true
  end
  if show.cancel_reject_message ~= omi_nasdaq_nsmequities_orders_ouch_v5_0.prefs.show_cancel_reject_message then
    show.cancel_reject_message = omi_nasdaq_nsmequities_orders_ouch_v5_0.prefs.show_cancel_reject_message
    changed = true
  end
  if show.canceled_message ~= omi_nasdaq_nsmequities_orders_ouch_v5_0.prefs.show_canceled_message then
    show.canceled_message = omi_nasdaq_nsmequities_orders_ouch_v5_0.prefs.show_canceled_message
    changed = true
  end
  if show.debug_packet ~= omi_nasdaq_nsmequities_orders_ouch_v5_0.prefs.show_debug_packet then
    show.debug_packet = omi_nasdaq_nsmequities_orders_ouch_v5_0.prefs.show_debug_packet
    changed = true
  end
  if show.enter_order_appendage ~= omi_nasdaq_nsmequities_orders_ouch_v5_0.prefs.show_enter_order_appendage then
    show.enter_order_appendage = omi_nasdaq_nsmequities_orders_ouch_v5_0.prefs.show_enter_order_appendage
    changed = true
  end
  if show.enter_order_message ~= omi_nasdaq_nsmequities_orders_ouch_v5_0.prefs.show_enter_order_message then
    show.enter_order_message = omi_nasdaq_nsmequities_orders_ouch_v5_0.prefs.show_enter_order_message
    changed = true
  end
  if show.login_accepted_packet ~= omi_nasdaq_nsmequities_orders_ouch_v5_0.prefs.show_login_accepted_packet then
    show.login_accepted_packet = omi_nasdaq_nsmequities_orders_ouch_v5_0.prefs.show_login_accepted_packet
    changed = true
  end
  if show.login_rejected_packet ~= omi_nasdaq_nsmequities_orders_ouch_v5_0.prefs.show_login_rejected_packet then
    show.login_rejected_packet = omi_nasdaq_nsmequities_orders_ouch_v5_0.prefs.show_login_rejected_packet
    changed = true
  end
  if show.login_request_packet ~= omi_nasdaq_nsmequities_orders_ouch_v5_0.prefs.show_login_request_packet then
    show.login_request_packet = omi_nasdaq_nsmequities_orders_ouch_v5_0.prefs.show_login_request_packet
    changed = true
  end
  if show.modify_order_message ~= omi_nasdaq_nsmequities_orders_ouch_v5_0.prefs.show_modify_order_message then
    show.modify_order_message = omi_nasdaq_nsmequities_orders_ouch_v5_0.prefs.show_modify_order_message
    changed = true
  end
  if show.order_accepted_appendage ~= omi_nasdaq_nsmequities_orders_ouch_v5_0.prefs.show_order_accepted_appendage then
    show.order_accepted_appendage = omi_nasdaq_nsmequities_orders_ouch_v5_0.prefs.show_order_accepted_appendage
    changed = true
  end
  if show.order_accepted_message ~= omi_nasdaq_nsmequities_orders_ouch_v5_0.prefs.show_order_accepted_message then
    show.order_accepted_message = omi_nasdaq_nsmequities_orders_ouch_v5_0.prefs.show_order_accepted_message
    changed = true
  end
  if show.order_executed_appendage ~= omi_nasdaq_nsmequities_orders_ouch_v5_0.prefs.show_order_executed_appendage then
    show.order_executed_appendage = omi_nasdaq_nsmequities_orders_ouch_v5_0.prefs.show_order_executed_appendage
    changed = true
  end
  if show.order_executed_message ~= omi_nasdaq_nsmequities_orders_ouch_v5_0.prefs.show_order_executed_message then
    show.order_executed_message = omi_nasdaq_nsmequities_orders_ouch_v5_0.prefs.show_order_executed_message
    changed = true
  end
  if show.order_modified_message ~= omi_nasdaq_nsmequities_orders_ouch_v5_0.prefs.show_order_modified_message then
    show.order_modified_message = omi_nasdaq_nsmequities_orders_ouch_v5_0.prefs.show_order_modified_message
    changed = true
  end
  if show.order_priority_update_message ~= omi_nasdaq_nsmequities_orders_ouch_v5_0.prefs.show_order_priority_update_message then
    show.order_priority_update_message = omi_nasdaq_nsmequities_orders_ouch_v5_0.prefs.show_order_priority_update_message
    changed = true
  end
  if show.order_restated_appendage ~= omi_nasdaq_nsmequities_orders_ouch_v5_0.prefs.show_order_restated_appendage then
    show.order_restated_appendage = omi_nasdaq_nsmequities_orders_ouch_v5_0.prefs.show_order_restated_appendage
    changed = true
  end
  if show.order_restated_message ~= omi_nasdaq_nsmequities_orders_ouch_v5_0.prefs.show_order_restated_message then
    show.order_restated_message = omi_nasdaq_nsmequities_orders_ouch_v5_0.prefs.show_order_restated_message
    changed = true
  end
  if show.packet ~= omi_nasdaq_nsmequities_orders_ouch_v5_0.prefs.show_packet then
    show.packet = omi_nasdaq_nsmequities_orders_ouch_v5_0.prefs.show_packet
    changed = true
  end
  if show.packet_header ~= omi_nasdaq_nsmequities_orders_ouch_v5_0.prefs.show_packet_header then
    show.packet_header = omi_nasdaq_nsmequities_orders_ouch_v5_0.prefs.show_packet_header
    changed = true
  end
  if show.rejected_order_message ~= omi_nasdaq_nsmequities_orders_ouch_v5_0.prefs.show_rejected_order_message then
    show.rejected_order_message = omi_nasdaq_nsmequities_orders_ouch_v5_0.prefs.show_rejected_order_message
    changed = true
  end
  if show.replace_order_appendage ~= omi_nasdaq_nsmequities_orders_ouch_v5_0.prefs.show_replace_order_appendage then
    show.replace_order_appendage = omi_nasdaq_nsmequities_orders_ouch_v5_0.prefs.show_replace_order_appendage
    changed = true
  end
  if show.replace_order_message ~= omi_nasdaq_nsmequities_orders_ouch_v5_0.prefs.show_replace_order_message then
    show.replace_order_message = omi_nasdaq_nsmequities_orders_ouch_v5_0.prefs.show_replace_order_message
    changed = true
  end
  if show.replaced_message ~= omi_nasdaq_nsmequities_orders_ouch_v5_0.prefs.show_replaced_message then
    show.replaced_message = omi_nasdaq_nsmequities_orders_ouch_v5_0.prefs.show_replaced_message
    changed = true
  end
  if show.replaced_message_appendage ~= omi_nasdaq_nsmequities_orders_ouch_v5_0.prefs.show_replaced_message_appendage then
    show.replaced_message_appendage = omi_nasdaq_nsmequities_orders_ouch_v5_0.prefs.show_replaced_message_appendage
    changed = true
  end
  if show.sequenced_data_packet ~= omi_nasdaq_nsmequities_orders_ouch_v5_0.prefs.show_sequenced_data_packet then
    show.sequenced_data_packet = omi_nasdaq_nsmequities_orders_ouch_v5_0.prefs.show_sequenced_data_packet
    changed = true
  end
  if show.soup_bin_tcp_packet ~= omi_nasdaq_nsmequities_orders_ouch_v5_0.prefs.show_soup_bin_tcp_packet then
    show.soup_bin_tcp_packet = omi_nasdaq_nsmequities_orders_ouch_v5_0.prefs.show_soup_bin_tcp_packet
    changed = true
  end
  if show.system_event_message ~= omi_nasdaq_nsmequities_orders_ouch_v5_0.prefs.show_system_event_message then
    show.system_event_message = omi_nasdaq_nsmequities_orders_ouch_v5_0.prefs.show_system_event_message
    changed = true
  end
  if show.trade_correction_message ~= omi_nasdaq_nsmequities_orders_ouch_v5_0.prefs.show_trade_correction_message then
    show.trade_correction_message = omi_nasdaq_nsmequities_orders_ouch_v5_0.prefs.show_trade_correction_message
    changed = true
  end
  if show.unsequenced_data_packet ~= omi_nasdaq_nsmequities_orders_ouch_v5_0.prefs.show_unsequenced_data_packet then
    show.unsequenced_data_packet = omi_nasdaq_nsmequities_orders_ouch_v5_0.prefs.show_unsequenced_data_packet
    changed = true
  end
  if show.enter_order_optional_value ~= omi_nasdaq_nsmequities_orders_ouch_v5_0.prefs.show_enter_order_optional_value then
    show.enter_order_optional_value = omi_nasdaq_nsmequities_orders_ouch_v5_0.prefs.show_enter_order_optional_value
    changed = true
  end
  if show.order_accepted_optional_value ~= omi_nasdaq_nsmequities_orders_ouch_v5_0.prefs.show_order_accepted_optional_value then
    show.order_accepted_optional_value = omi_nasdaq_nsmequities_orders_ouch_v5_0.prefs.show_order_accepted_optional_value
    changed = true
  end
  if show.order_executed_optional_value ~= omi_nasdaq_nsmequities_orders_ouch_v5_0.prefs.show_order_executed_optional_value then
    show.order_executed_optional_value = omi_nasdaq_nsmequities_orders_ouch_v5_0.prefs.show_order_executed_optional_value
    changed = true
  end
  if show.order_restated_optional_value ~= omi_nasdaq_nsmequities_orders_ouch_v5_0.prefs.show_order_restated_optional_value then
    show.order_restated_optional_value = omi_nasdaq_nsmequities_orders_ouch_v5_0.prefs.show_order_restated_optional_value
    changed = true
  end
  if show.payload ~= omi_nasdaq_nsmequities_orders_ouch_v5_0.prefs.show_payload then
    show.payload = omi_nasdaq_nsmequities_orders_ouch_v5_0.prefs.show_payload
    changed = true
  end
  if show.replace_order_optional_value ~= omi_nasdaq_nsmequities_orders_ouch_v5_0.prefs.show_replace_order_optional_value then
    show.replace_order_optional_value = omi_nasdaq_nsmequities_orders_ouch_v5_0.prefs.show_replace_order_optional_value
    changed = true
  end
  if show.replaced_message_optional_value ~= omi_nasdaq_nsmequities_orders_ouch_v5_0.prefs.show_replaced_message_optional_value then
    show.replaced_message_optional_value = omi_nasdaq_nsmequities_orders_ouch_v5_0.prefs.show_replaced_message_optional_value
    changed = true
  end
  if show.sequenced_message ~= omi_nasdaq_nsmequities_orders_ouch_v5_0.prefs.show_sequenced_message then
    show.sequenced_message = omi_nasdaq_nsmequities_orders_ouch_v5_0.prefs.show_sequenced_message
    changed = true
  end
  if show.unsequenced_message ~= omi_nasdaq_nsmequities_orders_ouch_v5_0.prefs.show_unsequenced_message then
    show.unsequenced_message = omi_nasdaq_nsmequities_orders_ouch_v5_0.prefs.show_unsequenced_message
    changed = true
  end

  -- Reload on changed preference
  if changed then
    reload()
  end
end


-----------------------------------------------------------------------
-- Protocol Functions
-----------------------------------------------------------------------

-- trim trailing spaces
trim_right_spaces = function(str)
  local finish = str:len()

  for i = 1, finish do
    if str:byte(i) == 0x20 then
      return str:sub(1, i - 1)
    end
  end

  return str
end


-----------------------------------------------------------------------
-- Dissect Nasdaq NsmEquities Orders Ouch 5.0
-----------------------------------------------------------------------

-- Quantity
nasdaq_nsmequities_orders_ouch_v5_0.quantity = {}

-- Size: Quantity
nasdaq_nsmequities_orders_ouch_v5_0.quantity.size = 4

-- Display: Quantity
nasdaq_nsmequities_orders_ouch_v5_0.quantity.display = function(value)
  return "Quantity: "..value
end

-- Dissect: Quantity
nasdaq_nsmequities_orders_ouch_v5_0.quantity.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nsmequities_orders_ouch_v5_0.quantity.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_nsmequities_orders_ouch_v5_0.quantity.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nsmequities_orders_ouch_v5_0.fields.quantity, range, value, display)

  return offset + length, value
end

-- Side
nasdaq_nsmequities_orders_ouch_v5_0.side = {}

-- Size: Side
nasdaq_nsmequities_orders_ouch_v5_0.side.size = 1

-- Display: Side
nasdaq_nsmequities_orders_ouch_v5_0.side.display = function(value)
  if value == "B" then
    return "Side: Buy (B)"
  end
  if value == "S" then
    return "Side: Sell (S)"
  end
  if value == "T" then
    return "Side: Sell Short (T)"
  end
  if value == "E" then
    return "Side: Sell Short Exempt (E)"
  end

  return "Side: Unknown("..value..")"
end

-- Dissect: Side
nasdaq_nsmequities_orders_ouch_v5_0.side.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nsmequities_orders_ouch_v5_0.side.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_nsmequities_orders_ouch_v5_0.side.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nsmequities_orders_ouch_v5_0.fields.side, range, value, display)

  return offset + length, value
end

-- User Ref Num
nasdaq_nsmequities_orders_ouch_v5_0.user_ref_num = {}

-- Size: User Ref Num
nasdaq_nsmequities_orders_ouch_v5_0.user_ref_num.size = 4

-- Display: User Ref Num
nasdaq_nsmequities_orders_ouch_v5_0.user_ref_num.display = function(value)
  return "User Ref Num: "..value
end

-- Dissect: User Ref Num
nasdaq_nsmequities_orders_ouch_v5_0.user_ref_num.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nsmequities_orders_ouch_v5_0.user_ref_num.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_nsmequities_orders_ouch_v5_0.user_ref_num.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nsmequities_orders_ouch_v5_0.fields.user_ref_num, range, value, display)

  return offset + length, value
end

-- Modify Order Message
nasdaq_nsmequities_orders_ouch_v5_0.modify_order_message = {}

-- Size: Modify Order Message
nasdaq_nsmequities_orders_ouch_v5_0.modify_order_message.size =
  nasdaq_nsmequities_orders_ouch_v5_0.user_ref_num.size + 
  nasdaq_nsmequities_orders_ouch_v5_0.side.size + 
  nasdaq_nsmequities_orders_ouch_v5_0.quantity.size

-- Display: Modify Order Message
nasdaq_nsmequities_orders_ouch_v5_0.modify_order_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Modify Order Message
nasdaq_nsmequities_orders_ouch_v5_0.modify_order_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- User Ref Num: 4 Byte Unsigned Fixed Width Integer
  index, user_ref_num = nasdaq_nsmequities_orders_ouch_v5_0.user_ref_num.dissect(buffer, index, packet, parent)

  -- Side: 1 Byte Ascii String Enum with 4 values
  index, side = nasdaq_nsmequities_orders_ouch_v5_0.side.dissect(buffer, index, packet, parent)

  -- Quantity: 4 Byte Unsigned Fixed Width Integer
  index, quantity = nasdaq_nsmequities_orders_ouch_v5_0.quantity.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Modify Order Message
nasdaq_nsmequities_orders_ouch_v5_0.modify_order_message.dissect = function(buffer, offset, packet, parent)
  if show.modify_order_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_nsmequities_orders_ouch_v5_0.fields.modify_order_message, buffer(offset, 0))
    local index = nasdaq_nsmequities_orders_ouch_v5_0.modify_order_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_nsmequities_orders_ouch_v5_0.modify_order_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_nsmequities_orders_ouch_v5_0.modify_order_message.fields(buffer, offset, packet, parent)
  end
end

-- Cancel Order Message
nasdaq_nsmequities_orders_ouch_v5_0.cancel_order_message = {}

-- Size: Cancel Order Message
nasdaq_nsmequities_orders_ouch_v5_0.cancel_order_message.size =
  nasdaq_nsmequities_orders_ouch_v5_0.user_ref_num.size + 
  nasdaq_nsmequities_orders_ouch_v5_0.quantity.size

-- Display: Cancel Order Message
nasdaq_nsmequities_orders_ouch_v5_0.cancel_order_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Cancel Order Message
nasdaq_nsmequities_orders_ouch_v5_0.cancel_order_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- User Ref Num: 4 Byte Unsigned Fixed Width Integer
  index, user_ref_num = nasdaq_nsmequities_orders_ouch_v5_0.user_ref_num.dissect(buffer, index, packet, parent)

  -- Quantity: 4 Byte Unsigned Fixed Width Integer
  index, quantity = nasdaq_nsmequities_orders_ouch_v5_0.quantity.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Cancel Order Message
nasdaq_nsmequities_orders_ouch_v5_0.cancel_order_message.dissect = function(buffer, offset, packet, parent)
  if show.cancel_order_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_nsmequities_orders_ouch_v5_0.fields.cancel_order_message, buffer(offset, 0))
    local index = nasdaq_nsmequities_orders_ouch_v5_0.cancel_order_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_nsmequities_orders_ouch_v5_0.cancel_order_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_nsmequities_orders_ouch_v5_0.cancel_order_message.fields(buffer, offset, packet, parent)
  end
end

-- Handle Inst
nasdaq_nsmequities_orders_ouch_v5_0.handle_inst = {}

-- Size: Handle Inst
nasdaq_nsmequities_orders_ouch_v5_0.handle_inst.size = 1

-- Display: Handle Inst
nasdaq_nsmequities_orders_ouch_v5_0.handle_inst.display = function(value)
  return "Handle Inst: "..value
end

-- Dissect: Handle Inst
nasdaq_nsmequities_orders_ouch_v5_0.handle_inst.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nsmequities_orders_ouch_v5_0.handle_inst.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_nsmequities_orders_ouch_v5_0.handle_inst.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nsmequities_orders_ouch_v5_0.fields.handle_inst, range, value, display)

  return offset + length, value
end

-- Trade Now
nasdaq_nsmequities_orders_ouch_v5_0.trade_now = {}

-- Size: Trade Now
nasdaq_nsmequities_orders_ouch_v5_0.trade_now.size = 1

-- Display: Trade Now
nasdaq_nsmequities_orders_ouch_v5_0.trade_now.display = function(value)
  return "Trade Now: "..value
end

-- Dissect: Trade Now
nasdaq_nsmequities_orders_ouch_v5_0.trade_now.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nsmequities_orders_ouch_v5_0.trade_now.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_nsmequities_orders_ouch_v5_0.trade_now.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nsmequities_orders_ouch_v5_0.fields.trade_now, range, value, display)

  return offset + length, value
end

-- Expire Time
nasdaq_nsmequities_orders_ouch_v5_0.expire_time = {}

-- Size: Expire Time
nasdaq_nsmequities_orders_ouch_v5_0.expire_time.size = 4

-- Display: Expire Time
nasdaq_nsmequities_orders_ouch_v5_0.expire_time.display = function(value)
  return "Expire Time: "..value
end

-- Dissect: Expire Time
nasdaq_nsmequities_orders_ouch_v5_0.expire_time.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nsmequities_orders_ouch_v5_0.expire_time.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_nsmequities_orders_ouch_v5_0.expire_time.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nsmequities_orders_ouch_v5_0.fields.expire_time, range, value, display)

  return offset + length, value
end

-- Post Only
nasdaq_nsmequities_orders_ouch_v5_0.post_only = {}

-- Size: Post Only
nasdaq_nsmequities_orders_ouch_v5_0.post_only.size = 1

-- Display: Post Only
nasdaq_nsmequities_orders_ouch_v5_0.post_only.display = function(value)
  return "Post Only: "..value
end

-- Dissect: Post Only
nasdaq_nsmequities_orders_ouch_v5_0.post_only.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nsmequities_orders_ouch_v5_0.post_only.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_nsmequities_orders_ouch_v5_0.post_only.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nsmequities_orders_ouch_v5_0.fields.post_only, range, value, display)

  return offset + length, value
end

-- Price Type
nasdaq_nsmequities_orders_ouch_v5_0.price_type = {}

-- Size: Price Type
nasdaq_nsmequities_orders_ouch_v5_0.price_type.size = 1

-- Display: Price Type
nasdaq_nsmequities_orders_ouch_v5_0.price_type.display = function(value)
  return "Price Type: "..value
end

-- Dissect: Price Type
nasdaq_nsmequities_orders_ouch_v5_0.price_type.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nsmequities_orders_ouch_v5_0.price_type.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_nsmequities_orders_ouch_v5_0.price_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nsmequities_orders_ouch_v5_0.fields.price_type, range, value, display)

  return offset + length, value
end

-- Max Floor
nasdaq_nsmequities_orders_ouch_v5_0.max_floor = {}

-- Size: Max Floor
nasdaq_nsmequities_orders_ouch_v5_0.max_floor.size = 4

-- Display: Max Floor
nasdaq_nsmequities_orders_ouch_v5_0.max_floor.display = function(value)
  return "Max Floor: "..value
end

-- Dissect: Max Floor
nasdaq_nsmequities_orders_ouch_v5_0.max_floor.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nsmequities_orders_ouch_v5_0.max_floor.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_nsmequities_orders_ouch_v5_0.max_floor.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nsmequities_orders_ouch_v5_0.fields.max_floor, range, value, display)

  return offset + length, value
end

-- Min Qty
nasdaq_nsmequities_orders_ouch_v5_0.min_qty = {}

-- Size: Min Qty
nasdaq_nsmequities_orders_ouch_v5_0.min_qty.size = 4

-- Display: Min Qty
nasdaq_nsmequities_orders_ouch_v5_0.min_qty.display = function(value)
  return "Min Qty: "..value
end

-- Dissect: Min Qty
nasdaq_nsmequities_orders_ouch_v5_0.min_qty.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nsmequities_orders_ouch_v5_0.min_qty.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_nsmequities_orders_ouch_v5_0.min_qty.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nsmequities_orders_ouch_v5_0.fields.min_qty, range, value, display)

  return offset + length, value
end

-- Replace Order Optional Value
nasdaq_nsmequities_orders_ouch_v5_0.replace_order_optional_value = {}

-- Size: Replace Order Optional Value
nasdaq_nsmequities_orders_ouch_v5_0.replace_order_optional_value.size = function(buffer, offset, replace_order_optional_field)
  -- Size of Min Qty
  if replace_order_optional_field == 3 then
    return nasdaq_nsmequities_orders_ouch_v5_0.min_qty.size
  end
  -- Size of Max Floor
  if replace_order_optional_field == 5 then
    return nasdaq_nsmequities_orders_ouch_v5_0.max_floor.size
  end
  -- Size of Price Type
  if replace_order_optional_field == 6 then
    return nasdaq_nsmequities_orders_ouch_v5_0.price_type.size
  end
  -- Size of Post Only
  if replace_order_optional_field == 12 then
    return nasdaq_nsmequities_orders_ouch_v5_0.post_only.size
  end
  -- Size of Expire Time
  if replace_order_optional_field == 15 then
    return nasdaq_nsmequities_orders_ouch_v5_0.expire_time.size
  end
  -- Size of Trade Now
  if replace_order_optional_field == 16 then
    return nasdaq_nsmequities_orders_ouch_v5_0.trade_now.size
  end
  -- Size of Handle Inst
  if replace_order_optional_field == 17 then
    return nasdaq_nsmequities_orders_ouch_v5_0.handle_inst.size
  end

  return 0
end

-- Display: Replace Order Optional Value
nasdaq_nsmequities_orders_ouch_v5_0.replace_order_optional_value.display = function(buffer, offset, packet, parent)
  return ""
end

-- Dissect Branches: Replace Order Optional Value
nasdaq_nsmequities_orders_ouch_v5_0.replace_order_optional_value.branches = function(buffer, offset, packet, parent, replace_order_optional_field)
  -- Dissect Min Qty
  if replace_order_optional_field == 3 then
    return nasdaq_nsmequities_orders_ouch_v5_0.min_qty.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Max Floor
  if replace_order_optional_field == 5 then
    return nasdaq_nsmequities_orders_ouch_v5_0.max_floor.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Price Type
  if replace_order_optional_field == 6 then
    return nasdaq_nsmequities_orders_ouch_v5_0.price_type.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Post Only
  if replace_order_optional_field == 12 then
    return nasdaq_nsmequities_orders_ouch_v5_0.post_only.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Expire Time
  if replace_order_optional_field == 15 then
    return nasdaq_nsmequities_orders_ouch_v5_0.expire_time.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Trade Now
  if replace_order_optional_field == 16 then
    return nasdaq_nsmequities_orders_ouch_v5_0.trade_now.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Handle Inst
  if replace_order_optional_field == 17 then
    return nasdaq_nsmequities_orders_ouch_v5_0.handle_inst.dissect(buffer, offset, packet, parent)
  end

  return offset
end

-- Dissect: Replace Order Optional Value
nasdaq_nsmequities_orders_ouch_v5_0.replace_order_optional_value.dissect = function(buffer, offset, packet, parent, replace_order_optional_field)
  if not show.replace_order_optional_value then
    return nasdaq_nsmequities_orders_ouch_v5_0.replace_order_optional_value.branches(buffer, offset, packet, parent, replace_order_optional_field)
  end

  -- Calculate size and check that branch is not empty
  local size = nasdaq_nsmequities_orders_ouch_v5_0.replace_order_optional_value.size(buffer, offset, replace_order_optional_field)
  if size == 0 then
    return offset
  end

  -- Dissect Element
  local range = buffer(offset, size)
  local display = nasdaq_nsmequities_orders_ouch_v5_0.replace_order_optional_value.display(buffer, packet, parent)
  local element = parent:add(omi_nasdaq_nsmequities_orders_ouch_v5_0.fields.replace_order_optional_value, range, display)

  return nasdaq_nsmequities_orders_ouch_v5_0.replace_order_optional_value.branches(buffer, offset, packet, parent, replace_order_optional_field)
end

-- Replace Order Optional Field
nasdaq_nsmequities_orders_ouch_v5_0.replace_order_optional_field = {}

-- Size: Replace Order Optional Field
nasdaq_nsmequities_orders_ouch_v5_0.replace_order_optional_field.size = 1

-- Display: Replace Order Optional Field
nasdaq_nsmequities_orders_ouch_v5_0.replace_order_optional_field.display = function(value)
  if value == 3 then
    return "Replace Order Optional Field: Min Qty (3)"
  end
  if value == 5 then
    return "Replace Order Optional Field: Max Floor (5)"
  end
  if value == 6 then
    return "Replace Order Optional Field: Price Type (6)"
  end
  if value == 12 then
    return "Replace Order Optional Field: Post Only (12)"
  end
  if value == 15 then
    return "Replace Order Optional Field: Expire Time (15)"
  end
  if value == 16 then
    return "Replace Order Optional Field: Trade Now (16)"
  end
  if value == 17 then
    return "Replace Order Optional Field: Handle Inst (17)"
  end

  return "Replace Order Optional Field: Unknown("..value..")"
end

-- Dissect: Replace Order Optional Field
nasdaq_nsmequities_orders_ouch_v5_0.replace_order_optional_field.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nsmequities_orders_ouch_v5_0.replace_order_optional_field.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = nasdaq_nsmequities_orders_ouch_v5_0.replace_order_optional_field.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nsmequities_orders_ouch_v5_0.fields.replace_order_optional_field, range, value, display)

  return offset + length, value
end

-- Optional Field Length
nasdaq_nsmequities_orders_ouch_v5_0.optional_field_length = {}

-- Size: Optional Field Length
nasdaq_nsmequities_orders_ouch_v5_0.optional_field_length.size = 1

-- Display: Optional Field Length
nasdaq_nsmequities_orders_ouch_v5_0.optional_field_length.display = function(value)
  return "Optional Field Length: "..value
end

-- Dissect: Optional Field Length
nasdaq_nsmequities_orders_ouch_v5_0.optional_field_length.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nsmequities_orders_ouch_v5_0.optional_field_length.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = nasdaq_nsmequities_orders_ouch_v5_0.optional_field_length.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nsmequities_orders_ouch_v5_0.fields.optional_field_length, range, value, display)

  return offset + length, value
end

-- Replace Order Appendage
nasdaq_nsmequities_orders_ouch_v5_0.replace_order_appendage = {}

-- Display: Replace Order Appendage
nasdaq_nsmequities_orders_ouch_v5_0.replace_order_appendage.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Replace Order Appendage
nasdaq_nsmequities_orders_ouch_v5_0.replace_order_appendage.fields = function(buffer, offset, packet, parent, size_of_replace_order_appendage)
  local index = offset

  -- Optional Field Length: 1 Byte Signed Fixed Width Integer
  index, optional_field_length = nasdaq_nsmequities_orders_ouch_v5_0.optional_field_length.dissect(buffer, index, packet, parent)

  -- Replace Order Optional Field: 1 Byte Signed Fixed Width Integer Enum with 7 values
  index, replace_order_optional_field = nasdaq_nsmequities_orders_ouch_v5_0.replace_order_optional_field.dissect(buffer, index, packet, parent)

  -- Replace Order Optional Value: Runtime Type with 7 branches
  index = nasdaq_nsmequities_orders_ouch_v5_0.replace_order_optional_value.dissect(buffer, index, packet, parent, replace_order_optional_field)

  return index
end

-- Dissect: Replace Order Appendage
nasdaq_nsmequities_orders_ouch_v5_0.replace_order_appendage.dissect = function(buffer, offset, packet, parent, size_of_replace_order_appendage)
  local index = offset + size_of_replace_order_appendage

  -- Optionally add group/struct element to protocol tree
  if show.replace_order_appendage then
    parent = parent:add(omi_nasdaq_nsmequities_orders_ouch_v5_0.fields.replace_order_appendage, buffer(offset, 0))
    local current = nasdaq_nsmequities_orders_ouch_v5_0.replace_order_appendage.fields(buffer, offset, packet, parent, size_of_replace_order_appendage)
    parent:set_len(size_of_replace_order_appendage)
    local display = nasdaq_nsmequities_orders_ouch_v5_0.replace_order_appendage.display(buffer, packet, parent)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    nasdaq_nsmequities_orders_ouch_v5_0.replace_order_appendage.fields(buffer, offset, packet, parent, size_of_replace_order_appendage)

    return index
  end
end

-- Appendage Length
nasdaq_nsmequities_orders_ouch_v5_0.appendage_length = {}

-- Size: Appendage Length
nasdaq_nsmequities_orders_ouch_v5_0.appendage_length.size = 2

-- Display: Appendage Length
nasdaq_nsmequities_orders_ouch_v5_0.appendage_length.display = function(value)
  return "Appendage Length: "..value
end

-- Dissect: Appendage Length
nasdaq_nsmequities_orders_ouch_v5_0.appendage_length.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nsmequities_orders_ouch_v5_0.appendage_length.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_nsmequities_orders_ouch_v5_0.appendage_length.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nsmequities_orders_ouch_v5_0.fields.appendage_length, range, value, display)

  return offset + length, value
end

-- ClOrdId
nasdaq_nsmequities_orders_ouch_v5_0.clordid = {}

-- Size: ClOrdId
nasdaq_nsmequities_orders_ouch_v5_0.clordid.size = 14

-- Display: ClOrdId
nasdaq_nsmequities_orders_ouch_v5_0.clordid.display = function(value)
  return "ClOrdId: "..value
end

-- Dissect: ClOrdId
nasdaq_nsmequities_orders_ouch_v5_0.clordid.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nsmequities_orders_ouch_v5_0.clordid.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = nasdaq_nsmequities_orders_ouch_v5_0.clordid.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nsmequities_orders_ouch_v5_0.fields.clordid, range, value, display)

  return offset + length, value
end

-- Inter Market Sweep Eligibility
nasdaq_nsmequities_orders_ouch_v5_0.inter_market_sweep_eligibility = {}

-- Size: Inter Market Sweep Eligibility
nasdaq_nsmequities_orders_ouch_v5_0.inter_market_sweep_eligibility.size = 1

-- Display: Inter Market Sweep Eligibility
nasdaq_nsmequities_orders_ouch_v5_0.inter_market_sweep_eligibility.display = function(value)
  if value == "Y" then
    return "Inter Market Sweep Eligibility: Eligible (Y)"
  end
  if value == "N" then
    return "Inter Market Sweep Eligibility: Not Eligible (N)"
  end

  return "Inter Market Sweep Eligibility: Unknown("..value..")"
end

-- Dissect: Inter Market Sweep Eligibility
nasdaq_nsmequities_orders_ouch_v5_0.inter_market_sweep_eligibility.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nsmequities_orders_ouch_v5_0.inter_market_sweep_eligibility.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_nsmequities_orders_ouch_v5_0.inter_market_sweep_eligibility.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nsmequities_orders_ouch_v5_0.fields.inter_market_sweep_eligibility, range, value, display)

  return offset + length, value
end

-- Display
nasdaq_nsmequities_orders_ouch_v5_0.display = {}

-- Size: Display
nasdaq_nsmequities_orders_ouch_v5_0.display.size = 1

-- Display: Display
nasdaq_nsmequities_orders_ouch_v5_0.display.display = function(value)
  if value == "A" then
    return "Display: Attributable (A)"
  end
  if value == "Y" then
    return "Display: Visible (Y)"
  end
  if value == "N" then
    return "Display: Hidden (N)"
  end
  if value == "P" then
    return "Display: Post Only (P)"
  end
  if value == "I" then
    return "Display: Imbalance Only (I)"
  end
  if value == "M" then
    return "Display: Mid Point Peg (M)"
  end
  if value == "W" then
    return "Display: Mid Point Peg Post Only (W)"
  end
  if value == "L" then
    return "Display: Post Only And Attributable (L)"
  end
  if value == "O" then
    return "Display: Retail Order Type 1 (O)"
  end
  if value == "T" then
    return "Display: Retail Order Type 2 (T)"
  end
  if value == "Q" then
    return "Display: Retail Price Improvement Order (Q)"
  end
  if value == "Z" then
    return "Display: Conformant (Z)"
  end
  if value == "m" then
    return "Display: Mid Point Peg And Mid Point Trade Now (m)"
  end
  if value == "n" then
    return "Display: Non Display And Mid Point (n)"
  end

  return "Display: Unknown("..value..")"
end

-- Dissect: Display
nasdaq_nsmequities_orders_ouch_v5_0.display.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nsmequities_orders_ouch_v5_0.display.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_nsmequities_orders_ouch_v5_0.display.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nsmequities_orders_ouch_v5_0.fields.display, range, value, display)

  return offset + length, value
end

-- Time In Force
nasdaq_nsmequities_orders_ouch_v5_0.time_in_force = {}

-- Size: Time In Force
nasdaq_nsmequities_orders_ouch_v5_0.time_in_force.size = 1

-- Display: Time In Force
nasdaq_nsmequities_orders_ouch_v5_0.time_in_force.display = function(value)
  if value == "0" then
    return "Time In Force: Day (0)"
  end
  if value == "3" then
    return "Time In Force: Ioc (3)"
  end
  if value == "5" then
    return "Time In Force: Gtx Extended Hours (5)"
  end
  if value == "6" then
    return "Time In Force: Gtt (6)"
  end
  if value == "E" then
    return "Time In Force: After Hours (E)"
  end

  return "Time In Force: Unknown("..value..")"
end

-- Dissect: Time In Force
nasdaq_nsmequities_orders_ouch_v5_0.time_in_force.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nsmequities_orders_ouch_v5_0.time_in_force.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_nsmequities_orders_ouch_v5_0.time_in_force.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nsmequities_orders_ouch_v5_0.fields.time_in_force, range, value, display)

  return offset + length, value
end

-- Price
nasdaq_nsmequities_orders_ouch_v5_0.price = {}

-- Size: Price
nasdaq_nsmequities_orders_ouch_v5_0.price.size = 8

-- Display: Price
nasdaq_nsmequities_orders_ouch_v5_0.price.display = function(value)
  return "Price: "..value
end

-- Translate: Price
nasdaq_nsmequities_orders_ouch_v5_0.price.translate = function(raw)
  return raw:tonumber()/10000
end

-- Dissect: Price
nasdaq_nsmequities_orders_ouch_v5_0.price.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nsmequities_orders_ouch_v5_0.price.size
  local range = buffer(offset, length)
  local raw = range:uint64()
  local value = nasdaq_nsmequities_orders_ouch_v5_0.price.translate(raw)
  local display = nasdaq_nsmequities_orders_ouch_v5_0.price.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nsmequities_orders_ouch_v5_0.fields.price, range, value, display)

  return offset + length, value
end

-- Orig User Ref Num
nasdaq_nsmequities_orders_ouch_v5_0.orig_user_ref_num = {}

-- Size: Orig User Ref Num
nasdaq_nsmequities_orders_ouch_v5_0.orig_user_ref_num.size = 4

-- Display: Orig User Ref Num
nasdaq_nsmequities_orders_ouch_v5_0.orig_user_ref_num.display = function(value)
  return "Orig User Ref Num: "..value
end

-- Dissect: Orig User Ref Num
nasdaq_nsmequities_orders_ouch_v5_0.orig_user_ref_num.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nsmequities_orders_ouch_v5_0.orig_user_ref_num.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_nsmequities_orders_ouch_v5_0.orig_user_ref_num.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nsmequities_orders_ouch_v5_0.fields.orig_user_ref_num, range, value, display)

  return offset + length, value
end

-- Replace Order Message
nasdaq_nsmequities_orders_ouch_v5_0.replace_order_message = {}

-- Size: Replace Order Message
nasdaq_nsmequities_orders_ouch_v5_0.replace_order_message.size = function(buffer, offset)
  local index = 0

  return buffer:len() - (offset + index) 
end

-- Display: Replace Order Message
nasdaq_nsmequities_orders_ouch_v5_0.replace_order_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Replace Order Message
nasdaq_nsmequities_orders_ouch_v5_0.replace_order_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Orig User Ref Num: 4 Byte Unsigned Fixed Width Integer
  index, orig_user_ref_num = nasdaq_nsmequities_orders_ouch_v5_0.orig_user_ref_num.dissect(buffer, index, packet, parent)

  -- User Ref Num: 4 Byte Unsigned Fixed Width Integer
  index, user_ref_num = nasdaq_nsmequities_orders_ouch_v5_0.user_ref_num.dissect(buffer, index, packet, parent)

  -- Quantity: 4 Byte Unsigned Fixed Width Integer
  index, quantity = nasdaq_nsmequities_orders_ouch_v5_0.quantity.dissect(buffer, index, packet, parent)

  -- Price: 8 Byte Unsigned Fixed Width Integer
  index, price = nasdaq_nsmequities_orders_ouch_v5_0.price.dissect(buffer, index, packet, parent)

  -- Time In Force: 1 Byte Ascii String Enum with 5 values
  index, time_in_force = nasdaq_nsmequities_orders_ouch_v5_0.time_in_force.dissect(buffer, index, packet, parent)

  -- Display: 1 Byte Ascii String Enum with 14 values
  index, display = nasdaq_nsmequities_orders_ouch_v5_0.display.dissect(buffer, index, packet, parent)

  -- Inter Market Sweep Eligibility: 1 Byte Ascii String Enum with 2 values
  index, inter_market_sweep_eligibility = nasdaq_nsmequities_orders_ouch_v5_0.inter_market_sweep_eligibility.dissect(buffer, index, packet, parent)

  -- ClOrdId: 14 Byte Ascii String
  index, clordid = nasdaq_nsmequities_orders_ouch_v5_0.clordid.dissect(buffer, index, packet, parent)

  -- Appendage Length: 2 Byte Unsigned Fixed Width Integer
  index, appendage_length = nasdaq_nsmequities_orders_ouch_v5_0.appendage_length.dissect(buffer, index, packet, parent)

  -- Dependency for Replace Order Appendage
  local end_of_payload = appendage_length + index

  -- Replace Order Appendage: Struct of 3 fields
  while index < end_of_payload do

    -- Dependency element: Optional Field Length
    local optional_field_length = buffer(index, 1):int()

    -- Runtime Size Of: Replace Order Appendage
    local size_of_replace_order_appendage = optional_field_length + 1

    -- Replace Order Appendage: Struct of 3 fields
    index, replace_order_appendage = nasdaq_nsmequities_orders_ouch_v5_0.replace_order_appendage.dissect(buffer, index, packet, parent, size_of_replace_order_appendage)
  end

  return index
end

-- Dissect: Replace Order Message
nasdaq_nsmequities_orders_ouch_v5_0.replace_order_message.dissect = function(buffer, offset, packet, parent)
  -- Optionally add dynamic struct element to protocol tree
  if show.replace_order_message then
    local length = nasdaq_nsmequities_orders_ouch_v5_0.replace_order_message.size(buffer, offset)
    local range = buffer(offset, length)
    local display = nasdaq_nsmequities_orders_ouch_v5_0.replace_order_message.display(buffer, packet, parent)
    parent = parent:add(omi_nasdaq_nsmequities_orders_ouch_v5_0.fields.replace_order_message, range, display)
  end

  return nasdaq_nsmequities_orders_ouch_v5_0.replace_order_message.fields(buffer, offset, packet, parent)
end

-- Customer Type
nasdaq_nsmequities_orders_ouch_v5_0.customer_type = {}

-- Size: Customer Type
nasdaq_nsmequities_orders_ouch_v5_0.customer_type.size = 1

-- Display: Customer Type
nasdaq_nsmequities_orders_ouch_v5_0.customer_type.display = function(value)
  return "Customer Type: "..value
end

-- Dissect: Customer Type
nasdaq_nsmequities_orders_ouch_v5_0.customer_type.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nsmequities_orders_ouch_v5_0.customer_type.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_nsmequities_orders_ouch_v5_0.customer_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nsmequities_orders_ouch_v5_0.fields.customer_type, range, value, display)

  return offset + length, value
end

-- Firm
nasdaq_nsmequities_orders_ouch_v5_0.firm = {}

-- Size: Firm
nasdaq_nsmequities_orders_ouch_v5_0.firm.size = 4

-- Display: Firm
nasdaq_nsmequities_orders_ouch_v5_0.firm.display = function(value)
  return "Firm: "..value
end

-- Dissect: Firm
nasdaq_nsmequities_orders_ouch_v5_0.firm.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nsmequities_orders_ouch_v5_0.firm.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = nasdaq_nsmequities_orders_ouch_v5_0.firm.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nsmequities_orders_ouch_v5_0.fields.firm, range, value, display)

  return offset + length, value
end

-- Enter Order Optional Value
nasdaq_nsmequities_orders_ouch_v5_0.enter_order_optional_value = {}

-- Size: Enter Order Optional Value
nasdaq_nsmequities_orders_ouch_v5_0.enter_order_optional_value.size = function(buffer, offset, enter_order_optional_field)
  -- Size of Firm
  if enter_order_optional_field == 2 then
    return nasdaq_nsmequities_orders_ouch_v5_0.firm.size
  end
  -- Size of Min Qty
  if enter_order_optional_field == 3 then
    return nasdaq_nsmequities_orders_ouch_v5_0.min_qty.size
  end
  -- Size of Customer Type
  if enter_order_optional_field == 4 then
    return nasdaq_nsmequities_orders_ouch_v5_0.customer_type.size
  end
  -- Size of Max Floor
  if enter_order_optional_field == 5 then
    return nasdaq_nsmequities_orders_ouch_v5_0.max_floor.size
  end

  return 0
end

-- Display: Enter Order Optional Value
nasdaq_nsmequities_orders_ouch_v5_0.enter_order_optional_value.display = function(buffer, offset, packet, parent)
  return ""
end

-- Dissect Branches: Enter Order Optional Value
nasdaq_nsmequities_orders_ouch_v5_0.enter_order_optional_value.branches = function(buffer, offset, packet, parent, enter_order_optional_field)
  -- Dissect Firm
  if enter_order_optional_field == 2 then
    return nasdaq_nsmequities_orders_ouch_v5_0.firm.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Min Qty
  if enter_order_optional_field == 3 then
    return nasdaq_nsmequities_orders_ouch_v5_0.min_qty.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Customer Type
  if enter_order_optional_field == 4 then
    return nasdaq_nsmequities_orders_ouch_v5_0.customer_type.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Max Floor
  if enter_order_optional_field == 5 then
    return nasdaq_nsmequities_orders_ouch_v5_0.max_floor.dissect(buffer, offset, packet, parent)
  end

  return offset
end

-- Dissect: Enter Order Optional Value
nasdaq_nsmequities_orders_ouch_v5_0.enter_order_optional_value.dissect = function(buffer, offset, packet, parent, enter_order_optional_field)
  if not show.enter_order_optional_value then
    return nasdaq_nsmequities_orders_ouch_v5_0.enter_order_optional_value.branches(buffer, offset, packet, parent, enter_order_optional_field)
  end

  -- Calculate size and check that branch is not empty
  local size = nasdaq_nsmequities_orders_ouch_v5_0.enter_order_optional_value.size(buffer, offset, enter_order_optional_field)
  if size == 0 then
    return offset
  end

  -- Dissect Element
  local range = buffer(offset, size)
  local display = nasdaq_nsmequities_orders_ouch_v5_0.enter_order_optional_value.display(buffer, packet, parent)
  local element = parent:add(omi_nasdaq_nsmequities_orders_ouch_v5_0.fields.enter_order_optional_value, range, display)

  return nasdaq_nsmequities_orders_ouch_v5_0.enter_order_optional_value.branches(buffer, offset, packet, parent, enter_order_optional_field)
end

-- Enter Order Optional Field
nasdaq_nsmequities_orders_ouch_v5_0.enter_order_optional_field = {}

-- Size: Enter Order Optional Field
nasdaq_nsmequities_orders_ouch_v5_0.enter_order_optional_field.size = 1

-- Display: Enter Order Optional Field
nasdaq_nsmequities_orders_ouch_v5_0.enter_order_optional_field.display = function(value)
  if value == 2 then
    return "Enter Order Optional Field: Firm (2)"
  end
  if value == 3 then
    return "Enter Order Optional Field: Min Qty (3)"
  end
  if value == 4 then
    return "Enter Order Optional Field: Customer Type (4)"
  end
  if value == 5 then
    return "Enter Order Optional Field: Max Floor (5)"
  end

  return "Enter Order Optional Field: Unknown("..value..")"
end

-- Dissect: Enter Order Optional Field
nasdaq_nsmequities_orders_ouch_v5_0.enter_order_optional_field.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nsmequities_orders_ouch_v5_0.enter_order_optional_field.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = nasdaq_nsmequities_orders_ouch_v5_0.enter_order_optional_field.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nsmequities_orders_ouch_v5_0.fields.enter_order_optional_field, range, value, display)

  return offset + length, value
end

-- Enter Order Appendage
nasdaq_nsmequities_orders_ouch_v5_0.enter_order_appendage = {}

-- Display: Enter Order Appendage
nasdaq_nsmequities_orders_ouch_v5_0.enter_order_appendage.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Enter Order Appendage
nasdaq_nsmequities_orders_ouch_v5_0.enter_order_appendage.fields = function(buffer, offset, packet, parent, size_of_enter_order_appendage)
  local index = offset

  -- Optional Field Length: 1 Byte Signed Fixed Width Integer
  index, optional_field_length = nasdaq_nsmequities_orders_ouch_v5_0.optional_field_length.dissect(buffer, index, packet, parent)

  -- Enter Order Optional Field: 1 Byte Signed Fixed Width Integer Enum with 4 values
  index, enter_order_optional_field = nasdaq_nsmequities_orders_ouch_v5_0.enter_order_optional_field.dissect(buffer, index, packet, parent)

  -- Enter Order Optional Value: Runtime Type with 4 branches
  index = nasdaq_nsmequities_orders_ouch_v5_0.enter_order_optional_value.dissect(buffer, index, packet, parent, enter_order_optional_field)

  return index
end

-- Dissect: Enter Order Appendage
nasdaq_nsmequities_orders_ouch_v5_0.enter_order_appendage.dissect = function(buffer, offset, packet, parent, size_of_enter_order_appendage)
  local index = offset + size_of_enter_order_appendage

  -- Optionally add group/struct element to protocol tree
  if show.enter_order_appendage then
    parent = parent:add(omi_nasdaq_nsmequities_orders_ouch_v5_0.fields.enter_order_appendage, buffer(offset, 0))
    local current = nasdaq_nsmequities_orders_ouch_v5_0.enter_order_appendage.fields(buffer, offset, packet, parent, size_of_enter_order_appendage)
    parent:set_len(size_of_enter_order_appendage)
    local display = nasdaq_nsmequities_orders_ouch_v5_0.enter_order_appendage.display(buffer, packet, parent)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    nasdaq_nsmequities_orders_ouch_v5_0.enter_order_appendage.fields(buffer, offset, packet, parent, size_of_enter_order_appendage)

    return index
  end
end

-- Cross Type
nasdaq_nsmequities_orders_ouch_v5_0.cross_type = {}

-- Size: Cross Type
nasdaq_nsmequities_orders_ouch_v5_0.cross_type.size = 1

-- Display: Cross Type
nasdaq_nsmequities_orders_ouch_v5_0.cross_type.display = function(value)
  if value == "N" then
    return "Cross Type: Continuous Market (N)"
  end
  if value == "O" then
    return "Cross Type: Opening Cross (O)"
  end
  if value == "C" then
    return "Cross Type: Closing (C)"
  end
  if value == "H" then
    return "Cross Type: Halt Ipo (H)"
  end
  if value == "S" then
    return "Cross Type: Supplemental (S)"
  end
  if value == "R" then
    return "Cross Type: Retail (R)"
  end
  if value == "E" then
    return "Cross Type: Extended (E)"
  end
  if value == "A" then
    return "Cross Type: After Hours Close (A)"
  end

  return "Cross Type: Unknown("..value..")"
end

-- Dissect: Cross Type
nasdaq_nsmequities_orders_ouch_v5_0.cross_type.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nsmequities_orders_ouch_v5_0.cross_type.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_nsmequities_orders_ouch_v5_0.cross_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nsmequities_orders_ouch_v5_0.fields.cross_type, range, value, display)

  return offset + length, value
end

-- Capacity
nasdaq_nsmequities_orders_ouch_v5_0.capacity = {}

-- Size: Capacity
nasdaq_nsmequities_orders_ouch_v5_0.capacity.size = 1

-- Display: Capacity
nasdaq_nsmequities_orders_ouch_v5_0.capacity.display = function(value)
  if value == "O" then
    return "Capacity: Other (O)"
  end
  if value == "A" then
    return "Capacity: Agency (A)"
  end
  if value == "P" then
    return "Capacity: Principal (P)"
  end
  if value == "R" then
    return "Capacity: Riskless (R)"
  end

  return "Capacity: Unknown("..value..")"
end

-- Dissect: Capacity
nasdaq_nsmequities_orders_ouch_v5_0.capacity.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nsmequities_orders_ouch_v5_0.capacity.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_nsmequities_orders_ouch_v5_0.capacity.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nsmequities_orders_ouch_v5_0.fields.capacity, range, value, display)

  return offset + length, value
end

-- Symbol
nasdaq_nsmequities_orders_ouch_v5_0.symbol = {}

-- Size: Symbol
nasdaq_nsmequities_orders_ouch_v5_0.symbol.size = 8

-- Display: Symbol
nasdaq_nsmequities_orders_ouch_v5_0.symbol.display = function(value)
  return "Symbol: "..value
end

-- Dissect: Symbol
nasdaq_nsmequities_orders_ouch_v5_0.symbol.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nsmequities_orders_ouch_v5_0.symbol.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = nasdaq_nsmequities_orders_ouch_v5_0.symbol.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nsmequities_orders_ouch_v5_0.fields.symbol, range, value, display)

  return offset + length, value
end

-- Enter Order Message
nasdaq_nsmequities_orders_ouch_v5_0.enter_order_message = {}

-- Size: Enter Order Message
nasdaq_nsmequities_orders_ouch_v5_0.enter_order_message.size = function(buffer, offset)
  local index = 0

  return buffer:len() - (offset + index) 
end

-- Display: Enter Order Message
nasdaq_nsmequities_orders_ouch_v5_0.enter_order_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Enter Order Message
nasdaq_nsmequities_orders_ouch_v5_0.enter_order_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- User Ref Num: 4 Byte Unsigned Fixed Width Integer
  index, user_ref_num = nasdaq_nsmequities_orders_ouch_v5_0.user_ref_num.dissect(buffer, index, packet, parent)

  -- Side: 1 Byte Ascii String Enum with 4 values
  index, side = nasdaq_nsmequities_orders_ouch_v5_0.side.dissect(buffer, index, packet, parent)

  -- Quantity: 4 Byte Unsigned Fixed Width Integer
  index, quantity = nasdaq_nsmequities_orders_ouch_v5_0.quantity.dissect(buffer, index, packet, parent)

  -- Symbol: 8 Byte Ascii String
  index, symbol = nasdaq_nsmequities_orders_ouch_v5_0.symbol.dissect(buffer, index, packet, parent)

  -- Price: 8 Byte Unsigned Fixed Width Integer
  index, price = nasdaq_nsmequities_orders_ouch_v5_0.price.dissect(buffer, index, packet, parent)

  -- Time In Force: 1 Byte Ascii String Enum with 5 values
  index, time_in_force = nasdaq_nsmequities_orders_ouch_v5_0.time_in_force.dissect(buffer, index, packet, parent)

  -- Display: 1 Byte Ascii String Enum with 14 values
  index, display = nasdaq_nsmequities_orders_ouch_v5_0.display.dissect(buffer, index, packet, parent)

  -- Capacity: 1 Byte Ascii String Enum with 4 values
  index, capacity = nasdaq_nsmequities_orders_ouch_v5_0.capacity.dissect(buffer, index, packet, parent)

  -- Inter Market Sweep Eligibility: 1 Byte Ascii String Enum with 2 values
  index, inter_market_sweep_eligibility = nasdaq_nsmequities_orders_ouch_v5_0.inter_market_sweep_eligibility.dissect(buffer, index, packet, parent)

  -- Cross Type: 1 Byte Ascii String Enum with 8 values
  index, cross_type = nasdaq_nsmequities_orders_ouch_v5_0.cross_type.dissect(buffer, index, packet, parent)

  -- ClOrdId: 14 Byte Ascii String
  index, clordid = nasdaq_nsmequities_orders_ouch_v5_0.clordid.dissect(buffer, index, packet, parent)

  -- Appendage Length: 2 Byte Unsigned Fixed Width Integer
  index, appendage_length = nasdaq_nsmequities_orders_ouch_v5_0.appendage_length.dissect(buffer, index, packet, parent)

  -- Dependency for Enter Order Appendage
  local end_of_payload = appendage_length + index

  -- Enter Order Appendage: Struct of 3 fields
  while index < end_of_payload do

    -- Dependency element: Optional Field Length
    local optional_field_length = buffer(index, 1):int()

    -- Runtime Size Of: Enter Order Appendage
    local size_of_enter_order_appendage = optional_field_length + 1

    -- Enter Order Appendage: Struct of 3 fields
    index, enter_order_appendage = nasdaq_nsmequities_orders_ouch_v5_0.enter_order_appendage.dissect(buffer, index, packet, parent, size_of_enter_order_appendage)
  end

  return index
end

-- Dissect: Enter Order Message
nasdaq_nsmequities_orders_ouch_v5_0.enter_order_message.dissect = function(buffer, offset, packet, parent)
  -- Optionally add dynamic struct element to protocol tree
  if show.enter_order_message then
    local length = nasdaq_nsmequities_orders_ouch_v5_0.enter_order_message.size(buffer, offset)
    local range = buffer(offset, length)
    local display = nasdaq_nsmequities_orders_ouch_v5_0.enter_order_message.display(buffer, packet, parent)
    parent = parent:add(omi_nasdaq_nsmequities_orders_ouch_v5_0.fields.enter_order_message, range, display)
  end

  return nasdaq_nsmequities_orders_ouch_v5_0.enter_order_message.fields(buffer, offset, packet, parent)
end

-- Unsequenced Message
nasdaq_nsmequities_orders_ouch_v5_0.unsequenced_message = {}

-- Size: Unsequenced Message
nasdaq_nsmequities_orders_ouch_v5_0.unsequenced_message.size = function(buffer, offset, unsequenced_message_type)
  -- Size of Enter Order Message
  if unsequenced_message_type == "O" then
    return nasdaq_nsmequities_orders_ouch_v5_0.enter_order_message.size(buffer, offset)
  end
  -- Size of Replace Order Message
  if unsequenced_message_type == "U" then
    return nasdaq_nsmequities_orders_ouch_v5_0.replace_order_message.size(buffer, offset)
  end
  -- Size of Cancel Order Message
  if unsequenced_message_type == "X" then
    return nasdaq_nsmequities_orders_ouch_v5_0.cancel_order_message.size
  end
  -- Size of Modify Order Message
  if unsequenced_message_type == "M" then
    return nasdaq_nsmequities_orders_ouch_v5_0.modify_order_message.size
  end
  -- Size of Account Query Message
  if unsequenced_message_type == "Q" then
    return 0
  end

  return 0
end

-- Display: Unsequenced Message
nasdaq_nsmequities_orders_ouch_v5_0.unsequenced_message.display = function(buffer, offset, packet, parent)
  return ""
end

-- Dissect Branches: Unsequenced Message
nasdaq_nsmequities_orders_ouch_v5_0.unsequenced_message.branches = function(buffer, offset, packet, parent, unsequenced_message_type)
  -- Dissect Enter Order Message
  if unsequenced_message_type == "O" then
    return nasdaq_nsmequities_orders_ouch_v5_0.enter_order_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Replace Order Message
  if unsequenced_message_type == "U" then
    return nasdaq_nsmequities_orders_ouch_v5_0.replace_order_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Cancel Order Message
  if unsequenced_message_type == "X" then
    return nasdaq_nsmequities_orders_ouch_v5_0.cancel_order_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Modify Order Message
  if unsequenced_message_type == "M" then
    return nasdaq_nsmequities_orders_ouch_v5_0.modify_order_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Account Query Message
  if unsequenced_message_type == "Q" then
  end

  return offset
end

-- Dissect: Unsequenced Message
nasdaq_nsmequities_orders_ouch_v5_0.unsequenced_message.dissect = function(buffer, offset, packet, parent, unsequenced_message_type)
  if not show.unsequenced_message then
    return nasdaq_nsmequities_orders_ouch_v5_0.unsequenced_message.branches(buffer, offset, packet, parent, unsequenced_message_type)
  end

  -- Calculate size and check that branch is not empty
  local size = nasdaq_nsmequities_orders_ouch_v5_0.unsequenced_message.size(buffer, offset, unsequenced_message_type)
  if size == 0 then
    return offset
  end

  -- Dissect Element
  local range = buffer(offset, size)
  local display = nasdaq_nsmequities_orders_ouch_v5_0.unsequenced_message.display(buffer, packet, parent)
  local element = parent:add(omi_nasdaq_nsmequities_orders_ouch_v5_0.fields.unsequenced_message, range, display)

  return nasdaq_nsmequities_orders_ouch_v5_0.unsequenced_message.branches(buffer, offset, packet, parent, unsequenced_message_type)
end

-- Unsequenced Message Type
nasdaq_nsmequities_orders_ouch_v5_0.unsequenced_message_type = {}

-- Size: Unsequenced Message Type
nasdaq_nsmequities_orders_ouch_v5_0.unsequenced_message_type.size = 1

-- Display: Unsequenced Message Type
nasdaq_nsmequities_orders_ouch_v5_0.unsequenced_message_type.display = function(value)
  if value == "O" then
    return "Unsequenced Message Type: Enter Order Message (O)"
  end
  if value == "U" then
    return "Unsequenced Message Type: Replace Order Message (U)"
  end
  if value == "X" then
    return "Unsequenced Message Type: Cancel Order Message (X)"
  end
  if value == "M" then
    return "Unsequenced Message Type: Modify Order Message (M)"
  end
  if value == "Q" then
    return "Unsequenced Message Type: Account Query Message (Q)"
  end

  return "Unsequenced Message Type: Unknown("..value..")"
end

-- Dissect: Unsequenced Message Type
nasdaq_nsmequities_orders_ouch_v5_0.unsequenced_message_type.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nsmequities_orders_ouch_v5_0.unsequenced_message_type.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_nsmequities_orders_ouch_v5_0.unsequenced_message_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nsmequities_orders_ouch_v5_0.fields.unsequenced_message_type, range, value, display)

  return offset + length, value
end

-- Unsequenced Data Packet
nasdaq_nsmequities_orders_ouch_v5_0.unsequenced_data_packet = {}

-- Read runtime size of: Unsequenced Data Packet
nasdaq_nsmequities_orders_ouch_v5_0.unsequenced_data_packet.size = function(buffer, offset)
  local index = offset

  -- Dependency element: Packet Length
  local packet_length = buffer(offset - 3, 2):uint()

  return packet_length - 1
end

-- Display: Unsequenced Data Packet
nasdaq_nsmequities_orders_ouch_v5_0.unsequenced_data_packet.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Unsequenced Data Packet
nasdaq_nsmequities_orders_ouch_v5_0.unsequenced_data_packet.fields = function(buffer, offset, packet, parent, size_of_unsequenced_data_packet)
  local index = offset

  -- Unsequenced Message Type: 1 Byte Ascii String Enum with 5 values
  index, unsequenced_message_type = nasdaq_nsmequities_orders_ouch_v5_0.unsequenced_message_type.dissect(buffer, index, packet, parent)

  -- Unsequenced Message: Runtime Type with 5 branches
  index = nasdaq_nsmequities_orders_ouch_v5_0.unsequenced_message.dissect(buffer, index, packet, parent, unsequenced_message_type)

  return index
end

-- Dissect: Unsequenced Data Packet
nasdaq_nsmequities_orders_ouch_v5_0.unsequenced_data_packet.dissect = function(buffer, offset, packet, parent)
  -- Parse runtime size
  local size_of_unsequenced_data_packet = nasdaq_nsmequities_orders_ouch_v5_0.unsequenced_data_packet.size(buffer, offset)

  -- Optionally add struct element to protocol tree
  if show.unsequenced_data_packet then
    local range = buffer(offset, size_of_unsequenced_data_packet)
    local display = nasdaq_nsmequities_orders_ouch_v5_0.unsequenced_data_packet.display(buffer, packet, parent)
    parent = parent:add(omi_nasdaq_nsmequities_orders_ouch_v5_0.fields.unsequenced_data_packet, range, display)
  end

  nasdaq_nsmequities_orders_ouch_v5_0.unsequenced_data_packet.fields(buffer, offset, packet, parent, size_of_unsequenced_data_packet)

  return offset + size_of_unsequenced_data_packet
end

-- Requested Sequence Number
nasdaq_nsmequities_orders_ouch_v5_0.requested_sequence_number = {}

-- Size: Requested Sequence Number
nasdaq_nsmequities_orders_ouch_v5_0.requested_sequence_number.size = 20

-- Display: Requested Sequence Number
nasdaq_nsmequities_orders_ouch_v5_0.requested_sequence_number.display = function(value)
  return "Requested Sequence Number: "..value
end

-- Dissect: Requested Sequence Number
nasdaq_nsmequities_orders_ouch_v5_0.requested_sequence_number.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nsmequities_orders_ouch_v5_0.requested_sequence_number.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_nsmequities_orders_ouch_v5_0.requested_sequence_number.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nsmequities_orders_ouch_v5_0.fields.requested_sequence_number, range, value, display)

  return offset + length, value
end

-- Requested Session
nasdaq_nsmequities_orders_ouch_v5_0.requested_session = {}

-- Size: Requested Session
nasdaq_nsmequities_orders_ouch_v5_0.requested_session.size = 10

-- Display: Requested Session
nasdaq_nsmequities_orders_ouch_v5_0.requested_session.display = function(value)
  return "Requested Session: "..value
end

-- Dissect: Requested Session
nasdaq_nsmequities_orders_ouch_v5_0.requested_session.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nsmequities_orders_ouch_v5_0.requested_session.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_nsmequities_orders_ouch_v5_0.requested_session.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nsmequities_orders_ouch_v5_0.fields.requested_session, range, value, display)

  return offset + length, value
end

-- Password
nasdaq_nsmequities_orders_ouch_v5_0.password = {}

-- Size: Password
nasdaq_nsmequities_orders_ouch_v5_0.password.size = 10

-- Display: Password
nasdaq_nsmequities_orders_ouch_v5_0.password.display = function(value)
  return "Password: "..value
end

-- Dissect: Password
nasdaq_nsmequities_orders_ouch_v5_0.password.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nsmequities_orders_ouch_v5_0.password.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_nsmequities_orders_ouch_v5_0.password.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nsmequities_orders_ouch_v5_0.fields.password, range, value, display)

  return offset + length, value
end

-- Username
nasdaq_nsmequities_orders_ouch_v5_0.username = {}

-- Size: Username
nasdaq_nsmequities_orders_ouch_v5_0.username.size = 6

-- Display: Username
nasdaq_nsmequities_orders_ouch_v5_0.username.display = function(value)
  return "Username: "..value
end

-- Dissect: Username
nasdaq_nsmequities_orders_ouch_v5_0.username.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nsmequities_orders_ouch_v5_0.username.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_nsmequities_orders_ouch_v5_0.username.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nsmequities_orders_ouch_v5_0.fields.username, range, value, display)

  return offset + length, value
end

-- Login Request Packet
nasdaq_nsmequities_orders_ouch_v5_0.login_request_packet = {}

-- Size: Login Request Packet
nasdaq_nsmequities_orders_ouch_v5_0.login_request_packet.size =
  nasdaq_nsmequities_orders_ouch_v5_0.username.size + 
  nasdaq_nsmequities_orders_ouch_v5_0.password.size + 
  nasdaq_nsmequities_orders_ouch_v5_0.requested_session.size + 
  nasdaq_nsmequities_orders_ouch_v5_0.requested_sequence_number.size

-- Display: Login Request Packet
nasdaq_nsmequities_orders_ouch_v5_0.login_request_packet.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Login Request Packet
nasdaq_nsmequities_orders_ouch_v5_0.login_request_packet.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Username: 6 Byte Ascii String
  index, username = nasdaq_nsmequities_orders_ouch_v5_0.username.dissect(buffer, index, packet, parent)

  -- Password: 10 Byte Ascii String
  index, password = nasdaq_nsmequities_orders_ouch_v5_0.password.dissect(buffer, index, packet, parent)

  -- Requested Session: 10 Byte Ascii String
  index, requested_session = nasdaq_nsmequities_orders_ouch_v5_0.requested_session.dissect(buffer, index, packet, parent)

  -- Requested Sequence Number: 20 Byte Ascii String
  index, requested_sequence_number = nasdaq_nsmequities_orders_ouch_v5_0.requested_sequence_number.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Login Request Packet
nasdaq_nsmequities_orders_ouch_v5_0.login_request_packet.dissect = function(buffer, offset, packet, parent)
  if show.login_request_packet then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_nsmequities_orders_ouch_v5_0.fields.login_request_packet, buffer(offset, 0))
    local index = nasdaq_nsmequities_orders_ouch_v5_0.login_request_packet.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_nsmequities_orders_ouch_v5_0.login_request_packet.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_nsmequities_orders_ouch_v5_0.login_request_packet.fields(buffer, offset, packet, parent)
  end
end

-- Next User Ref Num
nasdaq_nsmequities_orders_ouch_v5_0.next_user_ref_num = {}

-- Size: Next User Ref Num
nasdaq_nsmequities_orders_ouch_v5_0.next_user_ref_num.size = 4

-- Display: Next User Ref Num
nasdaq_nsmequities_orders_ouch_v5_0.next_user_ref_num.display = function(value)
  return "Next User Ref Num: "..value
end

-- Dissect: Next User Ref Num
nasdaq_nsmequities_orders_ouch_v5_0.next_user_ref_num.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nsmequities_orders_ouch_v5_0.next_user_ref_num.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_nsmequities_orders_ouch_v5_0.next_user_ref_num.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nsmequities_orders_ouch_v5_0.fields.next_user_ref_num, range, value, display)

  return offset + length, value
end

-- Timestamp
nasdaq_nsmequities_orders_ouch_v5_0.timestamp = {}

-- Size: Timestamp
nasdaq_nsmequities_orders_ouch_v5_0.timestamp.size = 8

-- Display: Timestamp
nasdaq_nsmequities_orders_ouch_v5_0.timestamp.display = function(value)
  -- Parse unix timestamp
  local seconds = math.floor(value:tonumber()/1000000000)
  local nanoseconds = value:tonumber()%1000000000

  return "Timestamp: "..os.date("%x %H:%M:%S.", seconds)..string.format("%09d", nanoseconds)
end

-- Dissect: Timestamp
nasdaq_nsmequities_orders_ouch_v5_0.timestamp.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nsmequities_orders_ouch_v5_0.timestamp.size
  local range = buffer(offset, length)
  local value = range:uint64()
  local display = nasdaq_nsmequities_orders_ouch_v5_0.timestamp.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nsmequities_orders_ouch_v5_0.fields.timestamp, range, value, display)

  return offset + length, value
end

-- Account Query Response Message
nasdaq_nsmequities_orders_ouch_v5_0.account_query_response_message = {}

-- Size: Account Query Response Message
nasdaq_nsmequities_orders_ouch_v5_0.account_query_response_message.size =
  nasdaq_nsmequities_orders_ouch_v5_0.timestamp.size + 
  nasdaq_nsmequities_orders_ouch_v5_0.next_user_ref_num.size

-- Display: Account Query Response Message
nasdaq_nsmequities_orders_ouch_v5_0.account_query_response_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Account Query Response Message
nasdaq_nsmequities_orders_ouch_v5_0.account_query_response_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Timestamp: 8 Byte Unsigned Fixed Width Integer
  index, timestamp = nasdaq_nsmequities_orders_ouch_v5_0.timestamp.dissect(buffer, index, packet, parent)

  -- Next User Ref Num: 4 Byte Unsigned Fixed Width Integer
  index, next_user_ref_num = nasdaq_nsmequities_orders_ouch_v5_0.next_user_ref_num.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Account Query Response Message
nasdaq_nsmequities_orders_ouch_v5_0.account_query_response_message.dissect = function(buffer, offset, packet, parent)
  if show.account_query_response_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_nsmequities_orders_ouch_v5_0.fields.account_query_response_message, buffer(offset, 0))
    local index = nasdaq_nsmequities_orders_ouch_v5_0.account_query_response_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_nsmequities_orders_ouch_v5_0.account_query_response_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_nsmequities_orders_ouch_v5_0.account_query_response_message.fields(buffer, offset, packet, parent)
  end
end

-- Secondary Ord Ref Num
nasdaq_nsmequities_orders_ouch_v5_0.secondary_ord_ref_num = {}

-- Size: Secondary Ord Ref Num
nasdaq_nsmequities_orders_ouch_v5_0.secondary_ord_ref_num.size = 8

-- Display: Secondary Ord Ref Num
nasdaq_nsmequities_orders_ouch_v5_0.secondary_ord_ref_num.display = function(value)
  return "Secondary Ord Ref Num: "..value
end

-- Dissect: Secondary Ord Ref Num
nasdaq_nsmequities_orders_ouch_v5_0.secondary_ord_ref_num.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nsmequities_orders_ouch_v5_0.secondary_ord_ref_num.size
  local range = buffer(offset, length)
  local value = range:uint64()
  local display = nasdaq_nsmequities_orders_ouch_v5_0.secondary_ord_ref_num.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nsmequities_orders_ouch_v5_0.fields.secondary_ord_ref_num, range, value, display)

  return offset + length, value
end

-- Display Price
nasdaq_nsmequities_orders_ouch_v5_0.display_price = {}

-- Size: Display Price
nasdaq_nsmequities_orders_ouch_v5_0.display_price.size = 8

-- Display: Display Price
nasdaq_nsmequities_orders_ouch_v5_0.display_price.display = function(value)
  return "Display Price: "..value
end

-- Translate: Display Price
nasdaq_nsmequities_orders_ouch_v5_0.display_price.translate = function(raw)
  return raw:tonumber()/10000
end

-- Dissect: Display Price
nasdaq_nsmequities_orders_ouch_v5_0.display_price.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nsmequities_orders_ouch_v5_0.display_price.size
  local range = buffer(offset, length)
  local raw = range:uint64()
  local value = nasdaq_nsmequities_orders_ouch_v5_0.display_price.translate(raw)
  local display = nasdaq_nsmequities_orders_ouch_v5_0.display_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nsmequities_orders_ouch_v5_0.fields.display_price, range, value, display)

  return offset + length, value
end

-- Display Quantity
nasdaq_nsmequities_orders_ouch_v5_0.display_quantity = {}

-- Size: Display Quantity
nasdaq_nsmequities_orders_ouch_v5_0.display_quantity.size = 4

-- Display: Display Quantity
nasdaq_nsmequities_orders_ouch_v5_0.display_quantity.display = function(value)
  return "Display Quantity: "..value
end

-- Dissect: Display Quantity
nasdaq_nsmequities_orders_ouch_v5_0.display_quantity.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nsmequities_orders_ouch_v5_0.display_quantity.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_nsmequities_orders_ouch_v5_0.display_quantity.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nsmequities_orders_ouch_v5_0.fields.display_quantity, range, value, display)

  return offset + length, value
end

-- Order Restated Optional Value
nasdaq_nsmequities_orders_ouch_v5_0.order_restated_optional_value = {}

-- Size: Order Restated Optional Value
nasdaq_nsmequities_orders_ouch_v5_0.order_restated_optional_value.size = function(buffer, offset, order_restated_optional_field)
  -- Size of Display Quantity
  if order_restated_optional_field == 22 then
    return nasdaq_nsmequities_orders_ouch_v5_0.display_quantity.size
  end
  -- Size of Display Price
  if order_restated_optional_field == 23 then
    return nasdaq_nsmequities_orders_ouch_v5_0.display_price.size
  end
  -- Size of Secondary Ord Ref Num
  if order_restated_optional_field == 1 then
    return nasdaq_nsmequities_orders_ouch_v5_0.secondary_ord_ref_num.size
  end

  return 0
end

-- Display: Order Restated Optional Value
nasdaq_nsmequities_orders_ouch_v5_0.order_restated_optional_value.display = function(buffer, offset, packet, parent)
  return ""
end

-- Dissect Branches: Order Restated Optional Value
nasdaq_nsmequities_orders_ouch_v5_0.order_restated_optional_value.branches = function(buffer, offset, packet, parent, order_restated_optional_field)
  -- Dissect Display Quantity
  if order_restated_optional_field == 22 then
    return nasdaq_nsmequities_orders_ouch_v5_0.display_quantity.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Display Price
  if order_restated_optional_field == 23 then
    return nasdaq_nsmequities_orders_ouch_v5_0.display_price.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Secondary Ord Ref Num
  if order_restated_optional_field == 1 then
    return nasdaq_nsmequities_orders_ouch_v5_0.secondary_ord_ref_num.dissect(buffer, offset, packet, parent)
  end

  return offset
end

-- Dissect: Order Restated Optional Value
nasdaq_nsmequities_orders_ouch_v5_0.order_restated_optional_value.dissect = function(buffer, offset, packet, parent, order_restated_optional_field)
  if not show.order_restated_optional_value then
    return nasdaq_nsmequities_orders_ouch_v5_0.order_restated_optional_value.branches(buffer, offset, packet, parent, order_restated_optional_field)
  end

  -- Calculate size and check that branch is not empty
  local size = nasdaq_nsmequities_orders_ouch_v5_0.order_restated_optional_value.size(buffer, offset, order_restated_optional_field)
  if size == 0 then
    return offset
  end

  -- Dissect Element
  local range = buffer(offset, size)
  local display = nasdaq_nsmequities_orders_ouch_v5_0.order_restated_optional_value.display(buffer, packet, parent)
  local element = parent:add(omi_nasdaq_nsmequities_orders_ouch_v5_0.fields.order_restated_optional_value, range, display)

  return nasdaq_nsmequities_orders_ouch_v5_0.order_restated_optional_value.branches(buffer, offset, packet, parent, order_restated_optional_field)
end

-- Order Restated Optional Field
nasdaq_nsmequities_orders_ouch_v5_0.order_restated_optional_field = {}

-- Size: Order Restated Optional Field
nasdaq_nsmequities_orders_ouch_v5_0.order_restated_optional_field.size = 1

-- Display: Order Restated Optional Field
nasdaq_nsmequities_orders_ouch_v5_0.order_restated_optional_field.display = function(value)
  if value == 22 then
    return "Order Restated Optional Field: Display Quantity (22)"
  end
  if value == 23 then
    return "Order Restated Optional Field: Display Price (23)"
  end
  if value == 1 then
    return "Order Restated Optional Field: Secondary Ord Ref Num (1)"
  end

  return "Order Restated Optional Field: Unknown("..value..")"
end

-- Dissect: Order Restated Optional Field
nasdaq_nsmequities_orders_ouch_v5_0.order_restated_optional_field.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nsmequities_orders_ouch_v5_0.order_restated_optional_field.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = nasdaq_nsmequities_orders_ouch_v5_0.order_restated_optional_field.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nsmequities_orders_ouch_v5_0.fields.order_restated_optional_field, range, value, display)

  return offset + length, value
end

-- Order Restated Appendage
nasdaq_nsmequities_orders_ouch_v5_0.order_restated_appendage = {}

-- Display: Order Restated Appendage
nasdaq_nsmequities_orders_ouch_v5_0.order_restated_appendage.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Order Restated Appendage
nasdaq_nsmequities_orders_ouch_v5_0.order_restated_appendage.fields = function(buffer, offset, packet, parent, size_of_order_restated_appendage)
  local index = offset

  -- Optional Field Length: 1 Byte Signed Fixed Width Integer
  index, optional_field_length = nasdaq_nsmequities_orders_ouch_v5_0.optional_field_length.dissect(buffer, index, packet, parent)

  -- Order Restated Optional Field: 1 Byte Signed Fixed Width Integer Enum with 3 values
  index, order_restated_optional_field = nasdaq_nsmequities_orders_ouch_v5_0.order_restated_optional_field.dissect(buffer, index, packet, parent)

  -- Order Restated Optional Value: Runtime Type with 3 branches
  index = nasdaq_nsmequities_orders_ouch_v5_0.order_restated_optional_value.dissect(buffer, index, packet, parent, order_restated_optional_field)

  return index
end

-- Dissect: Order Restated Appendage
nasdaq_nsmequities_orders_ouch_v5_0.order_restated_appendage.dissect = function(buffer, offset, packet, parent, size_of_order_restated_appendage)
  local index = offset + size_of_order_restated_appendage

  -- Optionally add group/struct element to protocol tree
  if show.order_restated_appendage then
    parent = parent:add(omi_nasdaq_nsmequities_orders_ouch_v5_0.fields.order_restated_appendage, buffer(offset, 0))
    local current = nasdaq_nsmequities_orders_ouch_v5_0.order_restated_appendage.fields(buffer, offset, packet, parent, size_of_order_restated_appendage)
    parent:set_len(size_of_order_restated_appendage)
    local display = nasdaq_nsmequities_orders_ouch_v5_0.order_restated_appendage.display(buffer, packet, parent)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    nasdaq_nsmequities_orders_ouch_v5_0.order_restated_appendage.fields(buffer, offset, packet, parent, size_of_order_restated_appendage)

    return index
  end
end

-- Order Restated Reason
nasdaq_nsmequities_orders_ouch_v5_0.order_restated_reason = {}

-- Size: Order Restated Reason
nasdaq_nsmequities_orders_ouch_v5_0.order_restated_reason.size = 1

-- Display: Order Restated Reason
nasdaq_nsmequities_orders_ouch_v5_0.order_restated_reason.display = function(value)
  if value == "R" then
    return "Order Restated Reason: Refresh Of Display (R)"
  end
  if value == "P" then
    return "Order Restated Reason: Update Of Displayed Price (P)"
  end

  return "Order Restated Reason: Unknown("..value..")"
end

-- Dissect: Order Restated Reason
nasdaq_nsmequities_orders_ouch_v5_0.order_restated_reason.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nsmequities_orders_ouch_v5_0.order_restated_reason.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_nsmequities_orders_ouch_v5_0.order_restated_reason.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nsmequities_orders_ouch_v5_0.fields.order_restated_reason, range, value, display)

  return offset + length, value
end

-- Order Restated Message
nasdaq_nsmequities_orders_ouch_v5_0.order_restated_message = {}

-- Size: Order Restated Message
nasdaq_nsmequities_orders_ouch_v5_0.order_restated_message.size = function(buffer, offset)
  local index = 0

  return buffer:len() - (offset + index) 
end

-- Display: Order Restated Message
nasdaq_nsmequities_orders_ouch_v5_0.order_restated_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Order Restated Message
nasdaq_nsmequities_orders_ouch_v5_0.order_restated_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Timestamp: 8 Byte Unsigned Fixed Width Integer
  index, timestamp = nasdaq_nsmequities_orders_ouch_v5_0.timestamp.dissect(buffer, index, packet, parent)

  -- User Ref Num: 4 Byte Unsigned Fixed Width Integer
  index, user_ref_num = nasdaq_nsmequities_orders_ouch_v5_0.user_ref_num.dissect(buffer, index, packet, parent)

  -- Order Restated Reason: 1 Byte Ascii String Enum with 2 values
  index, order_restated_reason = nasdaq_nsmequities_orders_ouch_v5_0.order_restated_reason.dissect(buffer, index, packet, parent)

  -- Appendage Length: 2 Byte Unsigned Fixed Width Integer
  index, appendage_length = nasdaq_nsmequities_orders_ouch_v5_0.appendage_length.dissect(buffer, index, packet, parent)

  -- Dependency for Order Restated Appendage
  local end_of_payload = appendage_length + index

  -- Order Restated Appendage: Struct of 3 fields
  while index < end_of_payload do

    -- Dependency element: Optional Field Length
    local optional_field_length = buffer(index, 1):int()

    -- Runtime Size Of: Order Restated Appendage
    local size_of_order_restated_appendage = optional_field_length + 1

    -- Order Restated Appendage: Struct of 3 fields
    index, order_restated_appendage = nasdaq_nsmequities_orders_ouch_v5_0.order_restated_appendage.dissect(buffer, index, packet, parent, size_of_order_restated_appendage)
  end

  return index
end

-- Dissect: Order Restated Message
nasdaq_nsmequities_orders_ouch_v5_0.order_restated_message.dissect = function(buffer, offset, packet, parent)
  -- Optionally add dynamic struct element to protocol tree
  if show.order_restated_message then
    local length = nasdaq_nsmequities_orders_ouch_v5_0.order_restated_message.size(buffer, offset)
    local range = buffer(offset, length)
    local display = nasdaq_nsmequities_orders_ouch_v5_0.order_restated_message.display(buffer, packet, parent)
    parent = parent:add(omi_nasdaq_nsmequities_orders_ouch_v5_0.fields.order_restated_message, range, display)
  end

  return nasdaq_nsmequities_orders_ouch_v5_0.order_restated_message.fields(buffer, offset, packet, parent)
end

-- Order Modified Message
nasdaq_nsmequities_orders_ouch_v5_0.order_modified_message = {}

-- Size: Order Modified Message
nasdaq_nsmequities_orders_ouch_v5_0.order_modified_message.size =
  nasdaq_nsmequities_orders_ouch_v5_0.timestamp.size + 
  nasdaq_nsmequities_orders_ouch_v5_0.user_ref_num.size + 
  nasdaq_nsmequities_orders_ouch_v5_0.side.size + 
  nasdaq_nsmequities_orders_ouch_v5_0.quantity.size

-- Display: Order Modified Message
nasdaq_nsmequities_orders_ouch_v5_0.order_modified_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Order Modified Message
nasdaq_nsmequities_orders_ouch_v5_0.order_modified_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Timestamp: 8 Byte Unsigned Fixed Width Integer
  index, timestamp = nasdaq_nsmequities_orders_ouch_v5_0.timestamp.dissect(buffer, index, packet, parent)

  -- User Ref Num: 4 Byte Unsigned Fixed Width Integer
  index, user_ref_num = nasdaq_nsmequities_orders_ouch_v5_0.user_ref_num.dissect(buffer, index, packet, parent)

  -- Side: 1 Byte Ascii String Enum with 4 values
  index, side = nasdaq_nsmequities_orders_ouch_v5_0.side.dissect(buffer, index, packet, parent)

  -- Quantity: 4 Byte Unsigned Fixed Width Integer
  index, quantity = nasdaq_nsmequities_orders_ouch_v5_0.quantity.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Order Modified Message
nasdaq_nsmequities_orders_ouch_v5_0.order_modified_message.dissect = function(buffer, offset, packet, parent)
  if show.order_modified_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_nsmequities_orders_ouch_v5_0.fields.order_modified_message, buffer(offset, 0))
    local index = nasdaq_nsmequities_orders_ouch_v5_0.order_modified_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_nsmequities_orders_ouch_v5_0.order_modified_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_nsmequities_orders_ouch_v5_0.order_modified_message.fields(buffer, offset, packet, parent)
  end
end

-- Order Reference Number
nasdaq_nsmequities_orders_ouch_v5_0.order_reference_number = {}

-- Size: Order Reference Number
nasdaq_nsmequities_orders_ouch_v5_0.order_reference_number.size = 8

-- Display: Order Reference Number
nasdaq_nsmequities_orders_ouch_v5_0.order_reference_number.display = function(value)
  return "Order Reference Number: "..value
end

-- Dissect: Order Reference Number
nasdaq_nsmequities_orders_ouch_v5_0.order_reference_number.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nsmequities_orders_ouch_v5_0.order_reference_number.size
  local range = buffer(offset, length)
  local value = range:uint64()
  local display = nasdaq_nsmequities_orders_ouch_v5_0.order_reference_number.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nsmequities_orders_ouch_v5_0.fields.order_reference_number, range, value, display)

  return offset + length, value
end

-- Order Priority Update Message
nasdaq_nsmequities_orders_ouch_v5_0.order_priority_update_message = {}

-- Size: Order Priority Update Message
nasdaq_nsmequities_orders_ouch_v5_0.order_priority_update_message.size =
  nasdaq_nsmequities_orders_ouch_v5_0.timestamp.size + 
  nasdaq_nsmequities_orders_ouch_v5_0.user_ref_num.size + 
  nasdaq_nsmequities_orders_ouch_v5_0.price.size + 
  nasdaq_nsmequities_orders_ouch_v5_0.display.size + 
  nasdaq_nsmequities_orders_ouch_v5_0.order_reference_number.size

-- Display: Order Priority Update Message
nasdaq_nsmequities_orders_ouch_v5_0.order_priority_update_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Order Priority Update Message
nasdaq_nsmequities_orders_ouch_v5_0.order_priority_update_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Timestamp: 8 Byte Unsigned Fixed Width Integer
  index, timestamp = nasdaq_nsmequities_orders_ouch_v5_0.timestamp.dissect(buffer, index, packet, parent)

  -- User Ref Num: 4 Byte Unsigned Fixed Width Integer
  index, user_ref_num = nasdaq_nsmequities_orders_ouch_v5_0.user_ref_num.dissect(buffer, index, packet, parent)

  -- Price: 8 Byte Unsigned Fixed Width Integer
  index, price = nasdaq_nsmequities_orders_ouch_v5_0.price.dissect(buffer, index, packet, parent)

  -- Display: 1 Byte Ascii String Enum with 14 values
  index, display = nasdaq_nsmequities_orders_ouch_v5_0.display.dissect(buffer, index, packet, parent)

  -- Order Reference Number: 8 Byte Unsigned Fixed Width Integer
  index, order_reference_number = nasdaq_nsmequities_orders_ouch_v5_0.order_reference_number.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Order Priority Update Message
nasdaq_nsmequities_orders_ouch_v5_0.order_priority_update_message.dissect = function(buffer, offset, packet, parent)
  if show.order_priority_update_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_nsmequities_orders_ouch_v5_0.fields.order_priority_update_message, buffer(offset, 0))
    local index = nasdaq_nsmequities_orders_ouch_v5_0.order_priority_update_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_nsmequities_orders_ouch_v5_0.order_priority_update_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_nsmequities_orders_ouch_v5_0.order_priority_update_message.fields(buffer, offset, packet, parent)
  end
end

-- Cancel Reject Message
nasdaq_nsmequities_orders_ouch_v5_0.cancel_reject_message = {}

-- Size: Cancel Reject Message
nasdaq_nsmequities_orders_ouch_v5_0.cancel_reject_message.size =
  nasdaq_nsmequities_orders_ouch_v5_0.timestamp.size + 
  nasdaq_nsmequities_orders_ouch_v5_0.user_ref_num.size

-- Display: Cancel Reject Message
nasdaq_nsmequities_orders_ouch_v5_0.cancel_reject_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Cancel Reject Message
nasdaq_nsmequities_orders_ouch_v5_0.cancel_reject_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Timestamp: 8 Byte Unsigned Fixed Width Integer
  index, timestamp = nasdaq_nsmequities_orders_ouch_v5_0.timestamp.dissect(buffer, index, packet, parent)

  -- User Ref Num: 4 Byte Unsigned Fixed Width Integer
  index, user_ref_num = nasdaq_nsmequities_orders_ouch_v5_0.user_ref_num.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Cancel Reject Message
nasdaq_nsmequities_orders_ouch_v5_0.cancel_reject_message.dissect = function(buffer, offset, packet, parent)
  if show.cancel_reject_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_nsmequities_orders_ouch_v5_0.fields.cancel_reject_message, buffer(offset, 0))
    local index = nasdaq_nsmequities_orders_ouch_v5_0.cancel_reject_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_nsmequities_orders_ouch_v5_0.cancel_reject_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_nsmequities_orders_ouch_v5_0.cancel_reject_message.fields(buffer, offset, packet, parent)
  end
end

-- Cancel Pending Message
nasdaq_nsmequities_orders_ouch_v5_0.cancel_pending_message = {}

-- Size: Cancel Pending Message
nasdaq_nsmequities_orders_ouch_v5_0.cancel_pending_message.size =
  nasdaq_nsmequities_orders_ouch_v5_0.timestamp.size + 
  nasdaq_nsmequities_orders_ouch_v5_0.user_ref_num.size

-- Display: Cancel Pending Message
nasdaq_nsmequities_orders_ouch_v5_0.cancel_pending_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Cancel Pending Message
nasdaq_nsmequities_orders_ouch_v5_0.cancel_pending_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Timestamp: 8 Byte Unsigned Fixed Width Integer
  index, timestamp = nasdaq_nsmequities_orders_ouch_v5_0.timestamp.dissect(buffer, index, packet, parent)

  -- User Ref Num: 4 Byte Unsigned Fixed Width Integer
  index, user_ref_num = nasdaq_nsmequities_orders_ouch_v5_0.user_ref_num.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Cancel Pending Message
nasdaq_nsmequities_orders_ouch_v5_0.cancel_pending_message.dissect = function(buffer, offset, packet, parent)
  if show.cancel_pending_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_nsmequities_orders_ouch_v5_0.fields.cancel_pending_message, buffer(offset, 0))
    local index = nasdaq_nsmequities_orders_ouch_v5_0.cancel_pending_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_nsmequities_orders_ouch_v5_0.cancel_pending_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_nsmequities_orders_ouch_v5_0.cancel_pending_message.fields(buffer, offset, packet, parent)
  end
end

-- Rejected Order Reason
nasdaq_nsmequities_orders_ouch_v5_0.rejected_order_reason = {}

-- Size: Rejected Order Reason
nasdaq_nsmequities_orders_ouch_v5_0.rejected_order_reason.size = 2

-- Display: Rejected Order Reason
nasdaq_nsmequities_orders_ouch_v5_0.rejected_order_reason.display = function(value)
  if value == 0x0001 then
    return "Rejected Order Reason: Quote Unavailable (0x0001)"
  end
  if value == 0x0002 then
    return "Rejected Order Reason: Destination Closed (0x0002)"
  end
  if value == 0x0003 then
    return "Rejected Order Reason: Invalid Display (0x0003)"
  end
  if value == 0x0004 then
    return "Rejected Order Reason: Invalid Max Floor (0x0004)"
  end
  if value == 0x0005 then
    return "Rejected Order Reason: Invalid Peg Type (0x0005)"
  end
  if value == 0x0006 then
    return "Rejected Order Reason: Fat Finger (0x0006)"
  end
  if value == 0x0007 then
    return "Rejected Order Reason: Halted (0x0007)"
  end
  if value == 0x0008 then
    return "Rejected Order Reason: Iso Not Allowed (0x0008)"
  end
  if value == 0x0009 then
    return "Rejected Order Reason: Invalid Side (0x0009)"
  end
  if value == 0x000A then
    return "Rejected Order Reason: Processing Error (0x000A)"
  end
  if value == 0x000B then
    return "Rejected Order Reason: Cancel Pending (0x000B)"
  end
  if value == 0x000C then
    return "Rejected Order Reason: Firm Not Authorized (0x000C)"
  end
  if value == 0x000D then
    return "Rejected Order Reason: Invalid Min Quantity (0x000D)"
  end
  if value == 0x000E then
    return "Rejected Order Reason: No Closing Reference Price (0x000E)"
  end
  if value == 0x000F then
    return "Rejected Order Reason: Other (0x000F)"
  end
  if value == 0x0010 then
    return "Rejected Order Reason: Cancel Not Allowed (0x0010)"
  end
  if value == 0x0011 then
    return "Rejected Order Reason: Pegging Not Allowed (0x0011)"
  end
  if value == 0x0012 then
    return "Rejected Order Reason: Crossed Market (0x0012)"
  end
  if value == 0x0013 then
    return "Rejected Order Reason: Invalid Quantity (0x0013)"
  end
  if value == 0x0014 then
    return "Rejected Order Reason: Invalid Cross Order (0x0014)"
  end
  if value == 0x0015 then
    return "Rejected Order Reason: Replace Not Allowed (0x0015)"
  end
  if value == 0x0016 then
    return "Rejected Order Reason: Routing Not Allowed (0x0016)"
  end
  if value == 0x0017 then
    return "Rejected Order Reason: Invalid Symbol (0x0017)"
  end
  if value == 0x0018 then
    return "Rejected Order Reason: Test (0x0018)"
  end
  if value == 0x0019 then
    return "Rejected Order Reason: Late Loc Too Aggressive (0x0019)"
  end
  if value == 0x001A then
    return "Rejected Order Reason: Retail Not Allowed (0x001A)"
  end
  if value == 0x001B then
    return "Rejected Order Reason: Invalid Midpoint Post Only Price (0x001B)"
  end
  if value == 0x001C then
    return "Rejected Order Reason: Invalid Destination (0x001C)"
  end
  if value == 0x001D then
    return "Rejected Order Reason: Invalid Price (0x001D)"
  end
  if value == 0x001E then
    return "Rejected Order Reason: Shares Exceed Threshold (0x001E)"
  end
  if value == 0x001F then
    return "Rejected Order Reason: Exceeds Maximum Allowed Notional Value (0x001F)"
  end

  return "Rejected Order Reason: Unknown("..value..")"
end

-- Dissect: Rejected Order Reason
nasdaq_nsmequities_orders_ouch_v5_0.rejected_order_reason.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nsmequities_orders_ouch_v5_0.rejected_order_reason.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_nsmequities_orders_ouch_v5_0.rejected_order_reason.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nsmequities_orders_ouch_v5_0.fields.rejected_order_reason, range, value, display)

  return offset + length, value
end

-- Rejected Order Message
nasdaq_nsmequities_orders_ouch_v5_0.rejected_order_message = {}

-- Size: Rejected Order Message
nasdaq_nsmequities_orders_ouch_v5_0.rejected_order_message.size =
  nasdaq_nsmequities_orders_ouch_v5_0.timestamp.size + 
  nasdaq_nsmequities_orders_ouch_v5_0.user_ref_num.size + 
  nasdaq_nsmequities_orders_ouch_v5_0.rejected_order_reason.size + 
  nasdaq_nsmequities_orders_ouch_v5_0.clordid.size

-- Display: Rejected Order Message
nasdaq_nsmequities_orders_ouch_v5_0.rejected_order_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Rejected Order Message
nasdaq_nsmequities_orders_ouch_v5_0.rejected_order_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Timestamp: 8 Byte Unsigned Fixed Width Integer
  index, timestamp = nasdaq_nsmequities_orders_ouch_v5_0.timestamp.dissect(buffer, index, packet, parent)

  -- User Ref Num: 4 Byte Unsigned Fixed Width Integer
  index, user_ref_num = nasdaq_nsmequities_orders_ouch_v5_0.user_ref_num.dissect(buffer, index, packet, parent)

  -- Rejected Order Reason: 2 Byte Unsigned Fixed Width Integer Enum with 31 values
  index, rejected_order_reason = nasdaq_nsmequities_orders_ouch_v5_0.rejected_order_reason.dissect(buffer, index, packet, parent)

  -- ClOrdId: 14 Byte Ascii String
  index, clordid = nasdaq_nsmequities_orders_ouch_v5_0.clordid.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Rejected Order Message
nasdaq_nsmequities_orders_ouch_v5_0.rejected_order_message.dissect = function(buffer, offset, packet, parent)
  if show.rejected_order_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_nsmequities_orders_ouch_v5_0.fields.rejected_order_message, buffer(offset, 0))
    local index = nasdaq_nsmequities_orders_ouch_v5_0.rejected_order_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_nsmequities_orders_ouch_v5_0.rejected_order_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_nsmequities_orders_ouch_v5_0.rejected_order_message.fields(buffer, offset, packet, parent)
  end
end

-- Trade Correction Reason
nasdaq_nsmequities_orders_ouch_v5_0.trade_correction_reason = {}

-- Size: Trade Correction Reason
nasdaq_nsmequities_orders_ouch_v5_0.trade_correction_reason.size = 1

-- Display: Trade Correction Reason
nasdaq_nsmequities_orders_ouch_v5_0.trade_correction_reason.display = function(value)
  if value == "N" then
    return "Trade Correction Reason: Adjusted To Nav (N)"
  end

  return "Trade Correction Reason: Unknown("..value..")"
end

-- Dissect: Trade Correction Reason
nasdaq_nsmequities_orders_ouch_v5_0.trade_correction_reason.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nsmequities_orders_ouch_v5_0.trade_correction_reason.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_nsmequities_orders_ouch_v5_0.trade_correction_reason.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nsmequities_orders_ouch_v5_0.fields.trade_correction_reason, range, value, display)

  return offset + length, value
end

-- Match Number
nasdaq_nsmequities_orders_ouch_v5_0.match_number = {}

-- Size: Match Number
nasdaq_nsmequities_orders_ouch_v5_0.match_number.size = 8

-- Display: Match Number
nasdaq_nsmequities_orders_ouch_v5_0.match_number.display = function(value)
  return "Match Number: "..value
end

-- Dissect: Match Number
nasdaq_nsmequities_orders_ouch_v5_0.match_number.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nsmequities_orders_ouch_v5_0.match_number.size
  local range = buffer(offset, length)
  local value = range:uint64()
  local display = nasdaq_nsmequities_orders_ouch_v5_0.match_number.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nsmequities_orders_ouch_v5_0.fields.match_number, range, value, display)

  return offset + length, value
end

-- Liquidity Flag
nasdaq_nsmequities_orders_ouch_v5_0.liquidity_flag = {}

-- Size: Liquidity Flag
nasdaq_nsmequities_orders_ouch_v5_0.liquidity_flag.size = 1

-- Display: Liquidity Flag
nasdaq_nsmequities_orders_ouch_v5_0.liquidity_flag.display = function(value)
  if value == "A" then
    return "Liquidity Flag: Added (A)"
  end
  if value == "e" then
    return "Liquidity Flag: Retail Designated (e)"
  end
  if value == "H" then
    return "Liquidity Flag: Halt Ipo (H)"
  end
  if value == "i" then
    return "Liquidity Flag: After Hours Closing (i)"
  end
  if value == "J" then
    return "Liquidity Flag: Nondisplayed Adding Liquidity (J)"
  end
  if value == "j" then
    return "Liquidity Flag: Rpi Order Provides Liquidity (j)"
  end
  if value == "k" then
    return "Liquidity Flag: Added Liquidity Via A Midpoint Order (k)"
  end
  if value == "K" then
    return "Liquidity Flag: Halt Cross (K)"
  end
  if value == "L" then
    return "Liquidity Flag: Closing Cross (L)"
  end
  if value == "M" then
    return "Liquidity Flag: Opening Cross (M)"
  end
  if value == "m" then
    return "Liquidity Flag: Removed Liquidity At A Midpoint (m)"
  end
  if value == "N" then
    return "Liquidity Flag: Passive Midpoint Execution (N)"
  end
  if value == "n" then
    return "Liquidity Flag: Midpoint Extended Life Order Execution (n)"
  end
  if value == "O" then
    return "Liquidity Flag: Opening (O)"
  end
  if value == "p" then
    return "Liquidity Flag: Removed Price Improving Nondisplayed Liquidity (p)"
  end
  if value == "q" then
    return "Liquidity Flag: Rmo Retail Order Removes Non Rpi Midpoint Liquidity (q)"
  end
  if value == "R" then
    return "Liquidity Flag: Removed (R)"
  end
  if value == "r" then
    return "Liquidity Flag: Retail Order Removes Rpi Liquidity (r)"
  end
  if value == "t" then
    return "Liquidity Flag: Retail Order Removes Price Improving Nondisplayed Liquidity Other Than Rpi Liquidity (t)"
  end
  if value == "0" then
    return "Liquidity Flag: Supplemental (0)"
  end
  if value == "7" then
    return "Liquidity Flag: Displayed Liquidityadding Order Improves The Nbbo (7)"
  end
  if value == "8" then
    return "Liquidity Flag: Displayed Liquidityadding Order Sets The Qbbo While Joining The Nbbo (8)"
  end

  return "Liquidity Flag: Unknown("..value..")"
end

-- Dissect: Liquidity Flag
nasdaq_nsmequities_orders_ouch_v5_0.liquidity_flag.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nsmequities_orders_ouch_v5_0.liquidity_flag.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_nsmequities_orders_ouch_v5_0.liquidity_flag.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nsmequities_orders_ouch_v5_0.fields.liquidity_flag, range, value, display)

  return offset + length, value
end

-- Trade Correction Message
nasdaq_nsmequities_orders_ouch_v5_0.trade_correction_message = {}

-- Size: Trade Correction Message
nasdaq_nsmequities_orders_ouch_v5_0.trade_correction_message.size =
  nasdaq_nsmequities_orders_ouch_v5_0.timestamp.size + 
  nasdaq_nsmequities_orders_ouch_v5_0.user_ref_num.size + 
  nasdaq_nsmequities_orders_ouch_v5_0.quantity.size + 
  nasdaq_nsmequities_orders_ouch_v5_0.price.size + 
  nasdaq_nsmequities_orders_ouch_v5_0.liquidity_flag.size + 
  nasdaq_nsmequities_orders_ouch_v5_0.match_number.size + 
  nasdaq_nsmequities_orders_ouch_v5_0.trade_correction_reason.size + 
  nasdaq_nsmequities_orders_ouch_v5_0.clordid.size

-- Display: Trade Correction Message
nasdaq_nsmequities_orders_ouch_v5_0.trade_correction_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Trade Correction Message
nasdaq_nsmequities_orders_ouch_v5_0.trade_correction_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Timestamp: 8 Byte Unsigned Fixed Width Integer
  index, timestamp = nasdaq_nsmequities_orders_ouch_v5_0.timestamp.dissect(buffer, index, packet, parent)

  -- User Ref Num: 4 Byte Unsigned Fixed Width Integer
  index, user_ref_num = nasdaq_nsmequities_orders_ouch_v5_0.user_ref_num.dissect(buffer, index, packet, parent)

  -- Quantity: 4 Byte Unsigned Fixed Width Integer
  index, quantity = nasdaq_nsmequities_orders_ouch_v5_0.quantity.dissect(buffer, index, packet, parent)

  -- Price: 8 Byte Unsigned Fixed Width Integer
  index, price = nasdaq_nsmequities_orders_ouch_v5_0.price.dissect(buffer, index, packet, parent)

  -- Liquidity Flag: 1 Byte Ascii String Enum with 22 values
  index, liquidity_flag = nasdaq_nsmequities_orders_ouch_v5_0.liquidity_flag.dissect(buffer, index, packet, parent)

  -- Match Number: 8 Byte Unsigned Fixed Width Integer
  index, match_number = nasdaq_nsmequities_orders_ouch_v5_0.match_number.dissect(buffer, index, packet, parent)

  -- Trade Correction Reason: 1 Byte Ascii String Enum with 1 values
  index, trade_correction_reason = nasdaq_nsmequities_orders_ouch_v5_0.trade_correction_reason.dissect(buffer, index, packet, parent)

  -- ClOrdId: 14 Byte Ascii String
  index, clordid = nasdaq_nsmequities_orders_ouch_v5_0.clordid.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Trade Correction Message
nasdaq_nsmequities_orders_ouch_v5_0.trade_correction_message.dissect = function(buffer, offset, packet, parent)
  if show.trade_correction_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_nsmequities_orders_ouch_v5_0.fields.trade_correction_message, buffer(offset, 0))
    local index = nasdaq_nsmequities_orders_ouch_v5_0.trade_correction_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_nsmequities_orders_ouch_v5_0.trade_correction_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_nsmequities_orders_ouch_v5_0.trade_correction_message.fields(buffer, offset, packet, parent)
  end
end

-- Broken Trade Reason
nasdaq_nsmequities_orders_ouch_v5_0.broken_trade_reason = {}

-- Size: Broken Trade Reason
nasdaq_nsmequities_orders_ouch_v5_0.broken_trade_reason.size = 1

-- Display: Broken Trade Reason
nasdaq_nsmequities_orders_ouch_v5_0.broken_trade_reason.display = function(value)
  if value == "E" then
    return "Broken Trade Reason: Erroneous (E)"
  end
  if value == "C" then
    return "Broken Trade Reason: Consent (C)"
  end
  if value == "S" then
    return "Broken Trade Reason: Supervisory (S)"
  end
  if value == "X" then
    return "Broken Trade Reason: External (X)"
  end

  return "Broken Trade Reason: Unknown("..value..")"
end

-- Dissect: Broken Trade Reason
nasdaq_nsmequities_orders_ouch_v5_0.broken_trade_reason.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nsmequities_orders_ouch_v5_0.broken_trade_reason.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_nsmequities_orders_ouch_v5_0.broken_trade_reason.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nsmequities_orders_ouch_v5_0.fields.broken_trade_reason, range, value, display)

  return offset + length, value
end

-- Broken Trade Message
nasdaq_nsmequities_orders_ouch_v5_0.broken_trade_message = {}

-- Size: Broken Trade Message
nasdaq_nsmequities_orders_ouch_v5_0.broken_trade_message.size =
  nasdaq_nsmequities_orders_ouch_v5_0.timestamp.size + 
  nasdaq_nsmequities_orders_ouch_v5_0.user_ref_num.size + 
  nasdaq_nsmequities_orders_ouch_v5_0.match_number.size + 
  nasdaq_nsmequities_orders_ouch_v5_0.broken_trade_reason.size + 
  nasdaq_nsmequities_orders_ouch_v5_0.clordid.size

-- Display: Broken Trade Message
nasdaq_nsmequities_orders_ouch_v5_0.broken_trade_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Broken Trade Message
nasdaq_nsmequities_orders_ouch_v5_0.broken_trade_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Timestamp: 8 Byte Unsigned Fixed Width Integer
  index, timestamp = nasdaq_nsmequities_orders_ouch_v5_0.timestamp.dissect(buffer, index, packet, parent)

  -- User Ref Num: 4 Byte Unsigned Fixed Width Integer
  index, user_ref_num = nasdaq_nsmequities_orders_ouch_v5_0.user_ref_num.dissect(buffer, index, packet, parent)

  -- Match Number: 8 Byte Unsigned Fixed Width Integer
  index, match_number = nasdaq_nsmequities_orders_ouch_v5_0.match_number.dissect(buffer, index, packet, parent)

  -- Broken Trade Reason: 1 Byte Ascii String Enum with 4 values
  index, broken_trade_reason = nasdaq_nsmequities_orders_ouch_v5_0.broken_trade_reason.dissect(buffer, index, packet, parent)

  -- ClOrdId: 14 Byte Ascii String
  index, clordid = nasdaq_nsmequities_orders_ouch_v5_0.clordid.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Broken Trade Message
nasdaq_nsmequities_orders_ouch_v5_0.broken_trade_message.dissect = function(buffer, offset, packet, parent)
  if show.broken_trade_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_nsmequities_orders_ouch_v5_0.fields.broken_trade_message, buffer(offset, 0))
    local index = nasdaq_nsmequities_orders_ouch_v5_0.broken_trade_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_nsmequities_orders_ouch_v5_0.broken_trade_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_nsmequities_orders_ouch_v5_0.broken_trade_message.fields(buffer, offset, packet, parent)
  end
end

-- Reference Price Type
nasdaq_nsmequities_orders_ouch_v5_0.reference_price_type = {}

-- Size: Reference Price Type
nasdaq_nsmequities_orders_ouch_v5_0.reference_price_type.size = 1

-- Display: Reference Price Type
nasdaq_nsmequities_orders_ouch_v5_0.reference_price_type.display = function(value)
  return "Reference Price Type: "..value
end

-- Dissect: Reference Price Type
nasdaq_nsmequities_orders_ouch_v5_0.reference_price_type.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nsmequities_orders_ouch_v5_0.reference_price_type.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_nsmequities_orders_ouch_v5_0.reference_price_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nsmequities_orders_ouch_v5_0.fields.reference_price_type, range, value, display)

  return offset + length, value
end

-- Reference Price
nasdaq_nsmequities_orders_ouch_v5_0.reference_price = {}

-- Size: Reference Price
nasdaq_nsmequities_orders_ouch_v5_0.reference_price.size = 8

-- Display: Reference Price
nasdaq_nsmequities_orders_ouch_v5_0.reference_price.display = function(value)
  return "Reference Price: "..value
end

-- Translate: Reference Price
nasdaq_nsmequities_orders_ouch_v5_0.reference_price.translate = function(raw)
  return raw:tonumber()/10000
end

-- Dissect: Reference Price
nasdaq_nsmequities_orders_ouch_v5_0.reference_price.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nsmequities_orders_ouch_v5_0.reference_price.size
  local range = buffer(offset, length)
  local raw = range:uint64()
  local value = nasdaq_nsmequities_orders_ouch_v5_0.reference_price.translate(raw)
  local display = nasdaq_nsmequities_orders_ouch_v5_0.reference_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nsmequities_orders_ouch_v5_0.fields.reference_price, range, value, display)

  return offset + length, value
end

-- Order Executed Optional Value
nasdaq_nsmequities_orders_ouch_v5_0.order_executed_optional_value = {}

-- Size: Order Executed Optional Value
nasdaq_nsmequities_orders_ouch_v5_0.order_executed_optional_value.size = function(buffer, offset, order_executed_optional_field)
  -- Size of Reference Price
  if order_executed_optional_field == 19 then
    return nasdaq_nsmequities_orders_ouch_v5_0.reference_price.size
  end
  -- Size of Reference Price Type
  if order_executed_optional_field == 20 then
    return nasdaq_nsmequities_orders_ouch_v5_0.reference_price_type.size
  end

  return 0
end

-- Display: Order Executed Optional Value
nasdaq_nsmequities_orders_ouch_v5_0.order_executed_optional_value.display = function(buffer, offset, packet, parent)
  return ""
end

-- Dissect Branches: Order Executed Optional Value
nasdaq_nsmequities_orders_ouch_v5_0.order_executed_optional_value.branches = function(buffer, offset, packet, parent, order_executed_optional_field)
  -- Dissect Reference Price
  if order_executed_optional_field == 19 then
    return nasdaq_nsmequities_orders_ouch_v5_0.reference_price.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Reference Price Type
  if order_executed_optional_field == 20 then
    return nasdaq_nsmequities_orders_ouch_v5_0.reference_price_type.dissect(buffer, offset, packet, parent)
  end

  return offset
end

-- Dissect: Order Executed Optional Value
nasdaq_nsmequities_orders_ouch_v5_0.order_executed_optional_value.dissect = function(buffer, offset, packet, parent, order_executed_optional_field)
  if not show.order_executed_optional_value then
    return nasdaq_nsmequities_orders_ouch_v5_0.order_executed_optional_value.branches(buffer, offset, packet, parent, order_executed_optional_field)
  end

  -- Calculate size and check that branch is not empty
  local size = nasdaq_nsmequities_orders_ouch_v5_0.order_executed_optional_value.size(buffer, offset, order_executed_optional_field)
  if size == 0 then
    return offset
  end

  -- Dissect Element
  local range = buffer(offset, size)
  local display = nasdaq_nsmequities_orders_ouch_v5_0.order_executed_optional_value.display(buffer, packet, parent)
  local element = parent:add(omi_nasdaq_nsmequities_orders_ouch_v5_0.fields.order_executed_optional_value, range, display)

  return nasdaq_nsmequities_orders_ouch_v5_0.order_executed_optional_value.branches(buffer, offset, packet, parent, order_executed_optional_field)
end

-- Order Executed Optional Field
nasdaq_nsmequities_orders_ouch_v5_0.order_executed_optional_field = {}

-- Size: Order Executed Optional Field
nasdaq_nsmequities_orders_ouch_v5_0.order_executed_optional_field.size = 1

-- Display: Order Executed Optional Field
nasdaq_nsmequities_orders_ouch_v5_0.order_executed_optional_field.display = function(value)
  if value == 19 then
    return "Order Executed Optional Field: Reference Price (19)"
  end
  if value == 20 then
    return "Order Executed Optional Field: Reference Price Type (20)"
  end

  return "Order Executed Optional Field: Unknown("..value..")"
end

-- Dissect: Order Executed Optional Field
nasdaq_nsmequities_orders_ouch_v5_0.order_executed_optional_field.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nsmequities_orders_ouch_v5_0.order_executed_optional_field.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = nasdaq_nsmequities_orders_ouch_v5_0.order_executed_optional_field.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nsmequities_orders_ouch_v5_0.fields.order_executed_optional_field, range, value, display)

  return offset + length, value
end

-- Order Executed Appendage
nasdaq_nsmequities_orders_ouch_v5_0.order_executed_appendage = {}

-- Display: Order Executed Appendage
nasdaq_nsmequities_orders_ouch_v5_0.order_executed_appendage.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Order Executed Appendage
nasdaq_nsmequities_orders_ouch_v5_0.order_executed_appendage.fields = function(buffer, offset, packet, parent, size_of_order_executed_appendage)
  local index = offset

  -- Optional Field Length: 1 Byte Signed Fixed Width Integer
  index, optional_field_length = nasdaq_nsmequities_orders_ouch_v5_0.optional_field_length.dissect(buffer, index, packet, parent)

  -- Order Executed Optional Field: 1 Byte Signed Fixed Width Integer Enum with 2 values
  index, order_executed_optional_field = nasdaq_nsmequities_orders_ouch_v5_0.order_executed_optional_field.dissect(buffer, index, packet, parent)

  -- Order Executed Optional Value: Runtime Type with 2 branches
  index = nasdaq_nsmequities_orders_ouch_v5_0.order_executed_optional_value.dissect(buffer, index, packet, parent, order_executed_optional_field)

  return index
end

-- Dissect: Order Executed Appendage
nasdaq_nsmequities_orders_ouch_v5_0.order_executed_appendage.dissect = function(buffer, offset, packet, parent, size_of_order_executed_appendage)
  local index = offset + size_of_order_executed_appendage

  -- Optionally add group/struct element to protocol tree
  if show.order_executed_appendage then
    parent = parent:add(omi_nasdaq_nsmequities_orders_ouch_v5_0.fields.order_executed_appendage, buffer(offset, 0))
    local current = nasdaq_nsmequities_orders_ouch_v5_0.order_executed_appendage.fields(buffer, offset, packet, parent, size_of_order_executed_appendage)
    parent:set_len(size_of_order_executed_appendage)
    local display = nasdaq_nsmequities_orders_ouch_v5_0.order_executed_appendage.display(buffer, packet, parent)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    nasdaq_nsmequities_orders_ouch_v5_0.order_executed_appendage.fields(buffer, offset, packet, parent, size_of_order_executed_appendage)

    return index
  end
end

-- Order Executed Message
nasdaq_nsmequities_orders_ouch_v5_0.order_executed_message = {}

-- Size: Order Executed Message
nasdaq_nsmequities_orders_ouch_v5_0.order_executed_message.size = function(buffer, offset)
  local index = 0

  return buffer:len() - (offset + index) 
end

-- Display: Order Executed Message
nasdaq_nsmequities_orders_ouch_v5_0.order_executed_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Order Executed Message
nasdaq_nsmequities_orders_ouch_v5_0.order_executed_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Timestamp: 8 Byte Unsigned Fixed Width Integer
  index, timestamp = nasdaq_nsmequities_orders_ouch_v5_0.timestamp.dissect(buffer, index, packet, parent)

  -- User Ref Num: 4 Byte Unsigned Fixed Width Integer
  index, user_ref_num = nasdaq_nsmequities_orders_ouch_v5_0.user_ref_num.dissect(buffer, index, packet, parent)

  -- Quantity: 4 Byte Unsigned Fixed Width Integer
  index, quantity = nasdaq_nsmequities_orders_ouch_v5_0.quantity.dissect(buffer, index, packet, parent)

  -- Price: 8 Byte Unsigned Fixed Width Integer
  index, price = nasdaq_nsmequities_orders_ouch_v5_0.price.dissect(buffer, index, packet, parent)

  -- Liquidity Flag: 1 Byte Ascii String Enum with 22 values
  index, liquidity_flag = nasdaq_nsmequities_orders_ouch_v5_0.liquidity_flag.dissect(buffer, index, packet, parent)

  -- Match Number: 8 Byte Unsigned Fixed Width Integer
  index, match_number = nasdaq_nsmequities_orders_ouch_v5_0.match_number.dissect(buffer, index, packet, parent)

  -- Appendage Length: 2 Byte Unsigned Fixed Width Integer
  index, appendage_length = nasdaq_nsmequities_orders_ouch_v5_0.appendage_length.dissect(buffer, index, packet, parent)

  -- Dependency for Order Executed Appendage
  local end_of_payload = appendage_length + index

  -- Order Executed Appendage: Struct of 3 fields
  while index < end_of_payload do

    -- Dependency element: Optional Field Length
    local optional_field_length = buffer(index, 1):int()

    -- Runtime Size Of: Order Executed Appendage
    local size_of_order_executed_appendage = optional_field_length + 1

    -- Order Executed Appendage: Struct of 3 fields
    index, order_executed_appendage = nasdaq_nsmequities_orders_ouch_v5_0.order_executed_appendage.dissect(buffer, index, packet, parent, size_of_order_executed_appendage)
  end

  return index
end

-- Dissect: Order Executed Message
nasdaq_nsmequities_orders_ouch_v5_0.order_executed_message.dissect = function(buffer, offset, packet, parent)
  -- Optionally add dynamic struct element to protocol tree
  if show.order_executed_message then
    local length = nasdaq_nsmequities_orders_ouch_v5_0.order_executed_message.size(buffer, offset)
    local range = buffer(offset, length)
    local display = nasdaq_nsmequities_orders_ouch_v5_0.order_executed_message.display(buffer, packet, parent)
    parent = parent:add(omi_nasdaq_nsmequities_orders_ouch_v5_0.fields.order_executed_message, range, display)
  end

  return nasdaq_nsmequities_orders_ouch_v5_0.order_executed_message.fields(buffer, offset, packet, parent)
end

-- Execution Price
nasdaq_nsmequities_orders_ouch_v5_0.execution_price = {}

-- Size: Execution Price
nasdaq_nsmequities_orders_ouch_v5_0.execution_price.size = 8

-- Display: Execution Price
nasdaq_nsmequities_orders_ouch_v5_0.execution_price.display = function(value)
  return "Execution Price: "..value
end

-- Translate: Execution Price
nasdaq_nsmequities_orders_ouch_v5_0.execution_price.translate = function(raw)
  return raw:tonumber()/10000
end

-- Dissect: Execution Price
nasdaq_nsmequities_orders_ouch_v5_0.execution_price.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nsmequities_orders_ouch_v5_0.execution_price.size
  local range = buffer(offset, length)
  local raw = range:uint64()
  local value = nasdaq_nsmequities_orders_ouch_v5_0.execution_price.translate(raw)
  local display = nasdaq_nsmequities_orders_ouch_v5_0.execution_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nsmequities_orders_ouch_v5_0.fields.execution_price, range, value, display)

  return offset + length, value
end

-- Quantity Prevented From Trading
nasdaq_nsmequities_orders_ouch_v5_0.quantity_prevented_from_trading = {}

-- Size: Quantity Prevented From Trading
nasdaq_nsmequities_orders_ouch_v5_0.quantity_prevented_from_trading.size = 4

-- Display: Quantity Prevented From Trading
nasdaq_nsmequities_orders_ouch_v5_0.quantity_prevented_from_trading.display = function(value)
  return "Quantity Prevented From Trading: "..value
end

-- Dissect: Quantity Prevented From Trading
nasdaq_nsmequities_orders_ouch_v5_0.quantity_prevented_from_trading.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nsmequities_orders_ouch_v5_0.quantity_prevented_from_trading.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_nsmequities_orders_ouch_v5_0.quantity_prevented_from_trading.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nsmequities_orders_ouch_v5_0.fields.quantity_prevented_from_trading, range, value, display)

  return offset + length, value
end

-- Order Cancel Reason
nasdaq_nsmequities_orders_ouch_v5_0.order_cancel_reason = {}

-- Size: Order Cancel Reason
nasdaq_nsmequities_orders_ouch_v5_0.order_cancel_reason.size = 1

-- Display: Order Cancel Reason
nasdaq_nsmequities_orders_ouch_v5_0.order_cancel_reason.display = function(value)
  return "Order Cancel Reason: "..value
end

-- Dissect: Order Cancel Reason
nasdaq_nsmequities_orders_ouch_v5_0.order_cancel_reason.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nsmequities_orders_ouch_v5_0.order_cancel_reason.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_nsmequities_orders_ouch_v5_0.order_cancel_reason.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nsmequities_orders_ouch_v5_0.fields.order_cancel_reason, range, value, display)

  return offset + length, value
end

-- Decrement Shares
nasdaq_nsmequities_orders_ouch_v5_0.decrement_shares = {}

-- Size: Decrement Shares
nasdaq_nsmequities_orders_ouch_v5_0.decrement_shares.size = 4

-- Display: Decrement Shares
nasdaq_nsmequities_orders_ouch_v5_0.decrement_shares.display = function(value)
  return "Decrement Shares: "..value
end

-- Dissect: Decrement Shares
nasdaq_nsmequities_orders_ouch_v5_0.decrement_shares.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nsmequities_orders_ouch_v5_0.decrement_shares.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_nsmequities_orders_ouch_v5_0.decrement_shares.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nsmequities_orders_ouch_v5_0.fields.decrement_shares, range, value, display)

  return offset + length, value
end

-- Aiq Canceled Message
nasdaq_nsmequities_orders_ouch_v5_0.aiq_canceled_message = {}

-- Size: Aiq Canceled Message
nasdaq_nsmequities_orders_ouch_v5_0.aiq_canceled_message.size =
  nasdaq_nsmequities_orders_ouch_v5_0.timestamp.size + 
  nasdaq_nsmequities_orders_ouch_v5_0.user_ref_num.size + 
  nasdaq_nsmequities_orders_ouch_v5_0.decrement_shares.size + 
  nasdaq_nsmequities_orders_ouch_v5_0.order_cancel_reason.size + 
  nasdaq_nsmequities_orders_ouch_v5_0.quantity_prevented_from_trading.size + 
  nasdaq_nsmequities_orders_ouch_v5_0.execution_price.size + 
  nasdaq_nsmequities_orders_ouch_v5_0.liquidity_flag.size

-- Display: Aiq Canceled Message
nasdaq_nsmequities_orders_ouch_v5_0.aiq_canceled_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Aiq Canceled Message
nasdaq_nsmequities_orders_ouch_v5_0.aiq_canceled_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Timestamp: 8 Byte Unsigned Fixed Width Integer
  index, timestamp = nasdaq_nsmequities_orders_ouch_v5_0.timestamp.dissect(buffer, index, packet, parent)

  -- User Ref Num: 4 Byte Unsigned Fixed Width Integer
  index, user_ref_num = nasdaq_nsmequities_orders_ouch_v5_0.user_ref_num.dissect(buffer, index, packet, parent)

  -- Decrement Shares: 4 Byte Unsigned Fixed Width Integer
  index, decrement_shares = nasdaq_nsmequities_orders_ouch_v5_0.decrement_shares.dissect(buffer, index, packet, parent)

  -- Order Cancel Reason: 1 Byte Ascii String
  index, order_cancel_reason = nasdaq_nsmequities_orders_ouch_v5_0.order_cancel_reason.dissect(buffer, index, packet, parent)

  -- Quantity Prevented From Trading: 4 Byte Unsigned Fixed Width Integer
  index, quantity_prevented_from_trading = nasdaq_nsmequities_orders_ouch_v5_0.quantity_prevented_from_trading.dissect(buffer, index, packet, parent)

  -- Execution Price: 8 Byte Unsigned Fixed Width Integer
  index, execution_price = nasdaq_nsmequities_orders_ouch_v5_0.execution_price.dissect(buffer, index, packet, parent)

  -- Liquidity Flag: 1 Byte Ascii String Enum with 22 values
  index, liquidity_flag = nasdaq_nsmequities_orders_ouch_v5_0.liquidity_flag.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Aiq Canceled Message
nasdaq_nsmequities_orders_ouch_v5_0.aiq_canceled_message.dissect = function(buffer, offset, packet, parent)
  if show.aiq_canceled_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_nsmequities_orders_ouch_v5_0.fields.aiq_canceled_message, buffer(offset, 0))
    local index = nasdaq_nsmequities_orders_ouch_v5_0.aiq_canceled_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_nsmequities_orders_ouch_v5_0.aiq_canceled_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_nsmequities_orders_ouch_v5_0.aiq_canceled_message.fields(buffer, offset, packet, parent)
  end
end

-- Cancel Order Reason
nasdaq_nsmequities_orders_ouch_v5_0.cancel_order_reason = {}

-- Size: Cancel Order Reason
nasdaq_nsmequities_orders_ouch_v5_0.cancel_order_reason.size = 1

-- Display: Cancel Order Reason
nasdaq_nsmequities_orders_ouch_v5_0.cancel_order_reason.display = function(value)
  if value == "U" then
    return "Cancel Order Reason: User Requested Cancel (U)"
  end
  if value == "I" then
    return "Cancel Order Reason: Immediate Or Cancel Order (I)"
  end
  if value == "T" then
    return "Cancel Order Reason: Timeout (T)"
  end
  if value == "S" then
    return "Cancel Order Reason: Supervisory (S)"
  end
  if value == "D" then
    return "Cancel Order Reason: Regulatory Restriction (D)"
  end
  if value == "Q" then
    return "Cancel Order Reason: Self Match Prevention (Q)"
  end
  if value == "Z" then
    return "Cancel Order Reason: System Cancel (Z)"
  end
  if value == "C" then
    return "Cancel Order Reason: Cross Canceled (C)"
  end
  if value == "K" then
    return "Cancel Order Reason: This Order Cannot Be Executed (K)"
  end
  if value == "H" then
    return "Cancel Order Reason: Halted (H)"
  end
  if value == "X" then
    return "Cancel Order Reason: Open Protection (X)"
  end
  if value == "E" then
    return "Cancel Order Reason: Closed (E)"
  end
  if value == "F" then
    return "Cancel Order Reason: Post Only Cancel (F)"
  end
  if value == "G" then
    return "Cancel Order Reason: Post Only Cancel Contra Side Displayed (G)"
  end

  return "Cancel Order Reason: Unknown("..value..")"
end

-- Dissect: Cancel Order Reason
nasdaq_nsmequities_orders_ouch_v5_0.cancel_order_reason.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nsmequities_orders_ouch_v5_0.cancel_order_reason.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_nsmequities_orders_ouch_v5_0.cancel_order_reason.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nsmequities_orders_ouch_v5_0.fields.cancel_order_reason, range, value, display)

  return offset + length, value
end

-- Canceled Message
nasdaq_nsmequities_orders_ouch_v5_0.canceled_message = {}

-- Size: Canceled Message
nasdaq_nsmequities_orders_ouch_v5_0.canceled_message.size =
  nasdaq_nsmequities_orders_ouch_v5_0.timestamp.size + 
  nasdaq_nsmequities_orders_ouch_v5_0.user_ref_num.size + 
  nasdaq_nsmequities_orders_ouch_v5_0.quantity.size + 
  nasdaq_nsmequities_orders_ouch_v5_0.cancel_order_reason.size

-- Display: Canceled Message
nasdaq_nsmequities_orders_ouch_v5_0.canceled_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Canceled Message
nasdaq_nsmequities_orders_ouch_v5_0.canceled_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Timestamp: 8 Byte Unsigned Fixed Width Integer
  index, timestamp = nasdaq_nsmequities_orders_ouch_v5_0.timestamp.dissect(buffer, index, packet, parent)

  -- User Ref Num: 4 Byte Unsigned Fixed Width Integer
  index, user_ref_num = nasdaq_nsmequities_orders_ouch_v5_0.user_ref_num.dissect(buffer, index, packet, parent)

  -- Quantity: 4 Byte Unsigned Fixed Width Integer
  index, quantity = nasdaq_nsmequities_orders_ouch_v5_0.quantity.dissect(buffer, index, packet, parent)

  -- Cancel Order Reason: 1 Byte Ascii String Enum with 14 values
  index, cancel_order_reason = nasdaq_nsmequities_orders_ouch_v5_0.cancel_order_reason.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Canceled Message
nasdaq_nsmequities_orders_ouch_v5_0.canceled_message.dissect = function(buffer, offset, packet, parent)
  if show.canceled_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_nsmequities_orders_ouch_v5_0.fields.canceled_message, buffer(offset, 0))
    local index = nasdaq_nsmequities_orders_ouch_v5_0.canceled_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_nsmequities_orders_ouch_v5_0.canceled_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_nsmequities_orders_ouch_v5_0.canceled_message.fields(buffer, offset, packet, parent)
  end
end

-- Bbo Weight Indicator
nasdaq_nsmequities_orders_ouch_v5_0.bbo_weight_indicator = {}

-- Size: Bbo Weight Indicator
nasdaq_nsmequities_orders_ouch_v5_0.bbo_weight_indicator.size = 1

-- Display: Bbo Weight Indicator
nasdaq_nsmequities_orders_ouch_v5_0.bbo_weight_indicator.display = function(value)
  return "Bbo Weight Indicator: "..value
end

-- Dissect: Bbo Weight Indicator
nasdaq_nsmequities_orders_ouch_v5_0.bbo_weight_indicator.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nsmequities_orders_ouch_v5_0.bbo_weight_indicator.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_nsmequities_orders_ouch_v5_0.bbo_weight_indicator.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nsmequities_orders_ouch_v5_0.fields.bbo_weight_indicator, range, value, display)

  return offset + length, value
end

-- Replaced Message Optional Value
nasdaq_nsmequities_orders_ouch_v5_0.replaced_message_optional_value = {}

-- Size: Replaced Message Optional Value
nasdaq_nsmequities_orders_ouch_v5_0.replaced_message_optional_value.size = function(buffer, offset, replaced_message_optional_field)
  -- Size of Firm
  if replaced_message_optional_field == 2 then
    return nasdaq_nsmequities_orders_ouch_v5_0.firm.size
  end
  -- Size of Min Qty
  if replaced_message_optional_field == 3 then
    return nasdaq_nsmequities_orders_ouch_v5_0.min_qty.size
  end
  -- Size of Max Floor
  if replaced_message_optional_field == 5 then
    return nasdaq_nsmequities_orders_ouch_v5_0.max_floor.size
  end
  -- Size of Price Type
  if replaced_message_optional_field == 6 then
    return nasdaq_nsmequities_orders_ouch_v5_0.price_type.size
  end
  -- Size of Post Only
  if replaced_message_optional_field == 12 then
    return nasdaq_nsmequities_orders_ouch_v5_0.post_only.size
  end
  -- Size of Expire Time
  if replaced_message_optional_field == 15 then
    return nasdaq_nsmequities_orders_ouch_v5_0.expire_time.size
  end
  -- Size of Trade Now
  if replaced_message_optional_field == 16 then
    return nasdaq_nsmequities_orders_ouch_v5_0.trade_now.size
  end
  -- Size of Handle Inst
  if replaced_message_optional_field == 17 then
    return nasdaq_nsmequities_orders_ouch_v5_0.handle_inst.size
  end
  -- Size of Bbo Weight Indicator
  if replaced_message_optional_field == 18 then
    return nasdaq_nsmequities_orders_ouch_v5_0.bbo_weight_indicator.size
  end

  return 0
end

-- Display: Replaced Message Optional Value
nasdaq_nsmequities_orders_ouch_v5_0.replaced_message_optional_value.display = function(buffer, offset, packet, parent)
  return ""
end

-- Dissect Branches: Replaced Message Optional Value
nasdaq_nsmequities_orders_ouch_v5_0.replaced_message_optional_value.branches = function(buffer, offset, packet, parent, replaced_message_optional_field)
  -- Dissect Firm
  if replaced_message_optional_field == 2 then
    return nasdaq_nsmequities_orders_ouch_v5_0.firm.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Min Qty
  if replaced_message_optional_field == 3 then
    return nasdaq_nsmequities_orders_ouch_v5_0.min_qty.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Max Floor
  if replaced_message_optional_field == 5 then
    return nasdaq_nsmequities_orders_ouch_v5_0.max_floor.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Price Type
  if replaced_message_optional_field == 6 then
    return nasdaq_nsmequities_orders_ouch_v5_0.price_type.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Post Only
  if replaced_message_optional_field == 12 then
    return nasdaq_nsmequities_orders_ouch_v5_0.post_only.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Expire Time
  if replaced_message_optional_field == 15 then
    return nasdaq_nsmequities_orders_ouch_v5_0.expire_time.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Trade Now
  if replaced_message_optional_field == 16 then
    return nasdaq_nsmequities_orders_ouch_v5_0.trade_now.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Handle Inst
  if replaced_message_optional_field == 17 then
    return nasdaq_nsmequities_orders_ouch_v5_0.handle_inst.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Bbo Weight Indicator
  if replaced_message_optional_field == 18 then
    return nasdaq_nsmequities_orders_ouch_v5_0.bbo_weight_indicator.dissect(buffer, offset, packet, parent)
  end

  return offset
end

-- Dissect: Replaced Message Optional Value
nasdaq_nsmequities_orders_ouch_v5_0.replaced_message_optional_value.dissect = function(buffer, offset, packet, parent, replaced_message_optional_field)
  if not show.replaced_message_optional_value then
    return nasdaq_nsmequities_orders_ouch_v5_0.replaced_message_optional_value.branches(buffer, offset, packet, parent, replaced_message_optional_field)
  end

  -- Calculate size and check that branch is not empty
  local size = nasdaq_nsmequities_orders_ouch_v5_0.replaced_message_optional_value.size(buffer, offset, replaced_message_optional_field)
  if size == 0 then
    return offset
  end

  -- Dissect Element
  local range = buffer(offset, size)
  local display = nasdaq_nsmequities_orders_ouch_v5_0.replaced_message_optional_value.display(buffer, packet, parent)
  local element = parent:add(omi_nasdaq_nsmequities_orders_ouch_v5_0.fields.replaced_message_optional_value, range, display)

  return nasdaq_nsmequities_orders_ouch_v5_0.replaced_message_optional_value.branches(buffer, offset, packet, parent, replaced_message_optional_field)
end

-- Replaced Message Optional Field
nasdaq_nsmequities_orders_ouch_v5_0.replaced_message_optional_field = {}

-- Size: Replaced Message Optional Field
nasdaq_nsmequities_orders_ouch_v5_0.replaced_message_optional_field.size = 1

-- Display: Replaced Message Optional Field
nasdaq_nsmequities_orders_ouch_v5_0.replaced_message_optional_field.display = function(value)
  if value == 2 then
    return "Replaced Message Optional Field: Firm (2)"
  end
  if value == 3 then
    return "Replaced Message Optional Field: Min Qty (3)"
  end
  if value == 5 then
    return "Replaced Message Optional Field: Max Floor (5)"
  end
  if value == 6 then
    return "Replaced Message Optional Field: Price Type (6)"
  end
  if value == 12 then
    return "Replaced Message Optional Field: Post Only (12)"
  end
  if value == 15 then
    return "Replaced Message Optional Field: Expire Time (15)"
  end
  if value == 16 then
    return "Replaced Message Optional Field: Trade Now (16)"
  end
  if value == 17 then
    return "Replaced Message Optional Field: Handle Inst (17)"
  end
  if value == 18 then
    return "Replaced Message Optional Field: Bbo Weight Indicator (18)"
  end

  return "Replaced Message Optional Field: Unknown("..value..")"
end

-- Dissect: Replaced Message Optional Field
nasdaq_nsmequities_orders_ouch_v5_0.replaced_message_optional_field.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nsmequities_orders_ouch_v5_0.replaced_message_optional_field.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = nasdaq_nsmequities_orders_ouch_v5_0.replaced_message_optional_field.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nsmequities_orders_ouch_v5_0.fields.replaced_message_optional_field, range, value, display)

  return offset + length, value
end

-- Replaced Message Appendage
nasdaq_nsmequities_orders_ouch_v5_0.replaced_message_appendage = {}

-- Display: Replaced Message Appendage
nasdaq_nsmequities_orders_ouch_v5_0.replaced_message_appendage.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Replaced Message Appendage
nasdaq_nsmequities_orders_ouch_v5_0.replaced_message_appendage.fields = function(buffer, offset, packet, parent, size_of_replaced_message_appendage)
  local index = offset

  -- Optional Field Length: 1 Byte Signed Fixed Width Integer
  index, optional_field_length = nasdaq_nsmequities_orders_ouch_v5_0.optional_field_length.dissect(buffer, index, packet, parent)

  -- Replaced Message Optional Field: 1 Byte Signed Fixed Width Integer Enum with 9 values
  index, replaced_message_optional_field = nasdaq_nsmequities_orders_ouch_v5_0.replaced_message_optional_field.dissect(buffer, index, packet, parent)

  -- Replaced Message Optional Value: Runtime Type with 9 branches
  index = nasdaq_nsmequities_orders_ouch_v5_0.replaced_message_optional_value.dissect(buffer, index, packet, parent, replaced_message_optional_field)

  return index
end

-- Dissect: Replaced Message Appendage
nasdaq_nsmequities_orders_ouch_v5_0.replaced_message_appendage.dissect = function(buffer, offset, packet, parent, size_of_replaced_message_appendage)
  local index = offset + size_of_replaced_message_appendage

  -- Optionally add group/struct element to protocol tree
  if show.replaced_message_appendage then
    parent = parent:add(omi_nasdaq_nsmequities_orders_ouch_v5_0.fields.replaced_message_appendage, buffer(offset, 0))
    local current = nasdaq_nsmequities_orders_ouch_v5_0.replaced_message_appendage.fields(buffer, offset, packet, parent, size_of_replaced_message_appendage)
    parent:set_len(size_of_replaced_message_appendage)
    local display = nasdaq_nsmequities_orders_ouch_v5_0.replaced_message_appendage.display(buffer, packet, parent)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    nasdaq_nsmequities_orders_ouch_v5_0.replaced_message_appendage.fields(buffer, offset, packet, parent, size_of_replaced_message_appendage)

    return index
  end
end

-- Order State
nasdaq_nsmequities_orders_ouch_v5_0.order_state = {}

-- Size: Order State
nasdaq_nsmequities_orders_ouch_v5_0.order_state.size = 1

-- Display: Order State
nasdaq_nsmequities_orders_ouch_v5_0.order_state.display = function(value)
  if value == "L" then
    return "Order State: Order Live (L)"
  end
  if value == "D" then
    return "Order State: Order Dead (D)"
  end

  return "Order State: Unknown("..value..")"
end

-- Dissect: Order State
nasdaq_nsmequities_orders_ouch_v5_0.order_state.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nsmequities_orders_ouch_v5_0.order_state.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_nsmequities_orders_ouch_v5_0.order_state.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nsmequities_orders_ouch_v5_0.fields.order_state, range, value, display)

  return offset + length, value
end

-- Replaced Message
nasdaq_nsmequities_orders_ouch_v5_0.replaced_message = {}

-- Size: Replaced Message
nasdaq_nsmequities_orders_ouch_v5_0.replaced_message.size = function(buffer, offset)
  local index = 0

  return buffer:len() - (offset + index) 
end

-- Display: Replaced Message
nasdaq_nsmequities_orders_ouch_v5_0.replaced_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Replaced Message
nasdaq_nsmequities_orders_ouch_v5_0.replaced_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Timestamp: 8 Byte Unsigned Fixed Width Integer
  index, timestamp = nasdaq_nsmequities_orders_ouch_v5_0.timestamp.dissect(buffer, index, packet, parent)

  -- Orig User Ref Num: 4 Byte Unsigned Fixed Width Integer
  index, orig_user_ref_num = nasdaq_nsmequities_orders_ouch_v5_0.orig_user_ref_num.dissect(buffer, index, packet, parent)

  -- User Ref Num: 4 Byte Unsigned Fixed Width Integer
  index, user_ref_num = nasdaq_nsmequities_orders_ouch_v5_0.user_ref_num.dissect(buffer, index, packet, parent)

  -- Side: 1 Byte Ascii String Enum with 4 values
  index, side = nasdaq_nsmequities_orders_ouch_v5_0.side.dissect(buffer, index, packet, parent)

  -- Quantity: 4 Byte Unsigned Fixed Width Integer
  index, quantity = nasdaq_nsmequities_orders_ouch_v5_0.quantity.dissect(buffer, index, packet, parent)

  -- Symbol: 8 Byte Ascii String
  index, symbol = nasdaq_nsmequities_orders_ouch_v5_0.symbol.dissect(buffer, index, packet, parent)

  -- Price: 8 Byte Unsigned Fixed Width Integer
  index, price = nasdaq_nsmequities_orders_ouch_v5_0.price.dissect(buffer, index, packet, parent)

  -- Time In Force: 1 Byte Ascii String Enum with 5 values
  index, time_in_force = nasdaq_nsmequities_orders_ouch_v5_0.time_in_force.dissect(buffer, index, packet, parent)

  -- Display: 1 Byte Ascii String Enum with 14 values
  index, display = nasdaq_nsmequities_orders_ouch_v5_0.display.dissect(buffer, index, packet, parent)

  -- Order Reference Number: 8 Byte Unsigned Fixed Width Integer
  index, order_reference_number = nasdaq_nsmequities_orders_ouch_v5_0.order_reference_number.dissect(buffer, index, packet, parent)

  -- Capacity: 1 Byte Ascii String Enum with 4 values
  index, capacity = nasdaq_nsmequities_orders_ouch_v5_0.capacity.dissect(buffer, index, packet, parent)

  -- Inter Market Sweep Eligibility: 1 Byte Ascii String Enum with 2 values
  index, inter_market_sweep_eligibility = nasdaq_nsmequities_orders_ouch_v5_0.inter_market_sweep_eligibility.dissect(buffer, index, packet, parent)

  -- Cross Type: 1 Byte Ascii String Enum with 8 values
  index, cross_type = nasdaq_nsmequities_orders_ouch_v5_0.cross_type.dissect(buffer, index, packet, parent)

  -- Order State: 1 Byte Ascii String Enum with 2 values
  index, order_state = nasdaq_nsmequities_orders_ouch_v5_0.order_state.dissect(buffer, index, packet, parent)

  -- ClOrdId: 14 Byte Ascii String
  index, clordid = nasdaq_nsmequities_orders_ouch_v5_0.clordid.dissect(buffer, index, packet, parent)

  -- Appendage Length: 2 Byte Unsigned Fixed Width Integer
  index, appendage_length = nasdaq_nsmequities_orders_ouch_v5_0.appendage_length.dissect(buffer, index, packet, parent)

  -- Dependency for Replaced Message Appendage
  local end_of_payload = appendage_length + index

  -- Replaced Message Appendage: Struct of 3 fields
  while index < end_of_payload do

    -- Dependency element: Optional Field Length
    local optional_field_length = buffer(index, 1):int()

    -- Runtime Size Of: Replaced Message Appendage
    local size_of_replaced_message_appendage = optional_field_length + 1

    -- Replaced Message Appendage: Struct of 3 fields
    index, replaced_message_appendage = nasdaq_nsmequities_orders_ouch_v5_0.replaced_message_appendage.dissect(buffer, index, packet, parent, size_of_replaced_message_appendage)
  end

  return index
end

-- Dissect: Replaced Message
nasdaq_nsmequities_orders_ouch_v5_0.replaced_message.dissect = function(buffer, offset, packet, parent)
  -- Optionally add dynamic struct element to protocol tree
  if show.replaced_message then
    local length = nasdaq_nsmequities_orders_ouch_v5_0.replaced_message.size(buffer, offset)
    local range = buffer(offset, length)
    local display = nasdaq_nsmequities_orders_ouch_v5_0.replaced_message.display(buffer, packet, parent)
    parent = parent:add(omi_nasdaq_nsmequities_orders_ouch_v5_0.fields.replaced_message, range, display)
  end

  return nasdaq_nsmequities_orders_ouch_v5_0.replaced_message.fields(buffer, offset, packet, parent)
end

-- Route
nasdaq_nsmequities_orders_ouch_v5_0.route = {}

-- Size: Route
nasdaq_nsmequities_orders_ouch_v5_0.route.size = 4

-- Display: Route
nasdaq_nsmequities_orders_ouch_v5_0.route.display = function(value)
  return "Route: "..value
end

-- Dissect: Route
nasdaq_nsmequities_orders_ouch_v5_0.route.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nsmequities_orders_ouch_v5_0.route.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = nasdaq_nsmequities_orders_ouch_v5_0.route.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nsmequities_orders_ouch_v5_0.fields.route, range, value, display)

  return offset + length, value
end

-- Random Reserves
nasdaq_nsmequities_orders_ouch_v5_0.random_reserves = {}

-- Size: Random Reserves
nasdaq_nsmequities_orders_ouch_v5_0.random_reserves.size = 4

-- Display: Random Reserves
nasdaq_nsmequities_orders_ouch_v5_0.random_reserves.display = function(value)
  return "Random Reserves: "..value
end

-- Dissect: Random Reserves
nasdaq_nsmequities_orders_ouch_v5_0.random_reserves.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nsmequities_orders_ouch_v5_0.random_reserves.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_nsmequities_orders_ouch_v5_0.random_reserves.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nsmequities_orders_ouch_v5_0.fields.random_reserves, range, value, display)

  return offset + length, value
end

-- Discretion Peg Offset
nasdaq_nsmequities_orders_ouch_v5_0.discretion_peg_offset = {}

-- Size: Discretion Peg Offset
nasdaq_nsmequities_orders_ouch_v5_0.discretion_peg_offset.size = 4

-- Display: Discretion Peg Offset
nasdaq_nsmequities_orders_ouch_v5_0.discretion_peg_offset.display = function(value)
  return "Discretion Peg Offset: "..value
end

-- Translate: Discretion Peg Offset
nasdaq_nsmequities_orders_ouch_v5_0.discretion_peg_offset.translate = function(raw)
  return raw/10000
end

-- Dissect: Discretion Peg Offset
nasdaq_nsmequities_orders_ouch_v5_0.discretion_peg_offset.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nsmequities_orders_ouch_v5_0.discretion_peg_offset.size
  local range = buffer(offset, length)
  local raw = range:int()
  local value = nasdaq_nsmequities_orders_ouch_v5_0.discretion_peg_offset.translate(raw)
  local display = nasdaq_nsmequities_orders_ouch_v5_0.discretion_peg_offset.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nsmequities_orders_ouch_v5_0.fields.discretion_peg_offset, range, value, display)

  return offset + length, value
end

-- Discretion Peg Type
nasdaq_nsmequities_orders_ouch_v5_0.discretion_peg_type = {}

-- Size: Discretion Peg Type
nasdaq_nsmequities_orders_ouch_v5_0.discretion_peg_type.size = 1

-- Display: Discretion Peg Type
nasdaq_nsmequities_orders_ouch_v5_0.discretion_peg_type.display = function(value)
  return "Discretion Peg Type: "..value
end

-- Dissect: Discretion Peg Type
nasdaq_nsmequities_orders_ouch_v5_0.discretion_peg_type.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nsmequities_orders_ouch_v5_0.discretion_peg_type.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_nsmequities_orders_ouch_v5_0.discretion_peg_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nsmequities_orders_ouch_v5_0.fields.discretion_peg_type, range, value, display)

  return offset + length, value
end

-- Discretion Price
nasdaq_nsmequities_orders_ouch_v5_0.discretion_price = {}

-- Size: Discretion Price
nasdaq_nsmequities_orders_ouch_v5_0.discretion_price.size = 8

-- Display: Discretion Price
nasdaq_nsmequities_orders_ouch_v5_0.discretion_price.display = function(value)
  return "Discretion Price: "..value
end

-- Translate: Discretion Price
nasdaq_nsmequities_orders_ouch_v5_0.discretion_price.translate = function(raw)
  return raw:tonumber()/10000
end

-- Dissect: Discretion Price
nasdaq_nsmequities_orders_ouch_v5_0.discretion_price.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nsmequities_orders_ouch_v5_0.discretion_price.size
  local range = buffer(offset, length)
  local raw = range:uint64()
  local value = nasdaq_nsmequities_orders_ouch_v5_0.discretion_price.translate(raw)
  local display = nasdaq_nsmequities_orders_ouch_v5_0.discretion_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nsmequities_orders_ouch_v5_0.fields.discretion_price, range, value, display)

  return offset + length, value
end

-- Peg Offset
nasdaq_nsmequities_orders_ouch_v5_0.peg_offset = {}

-- Size: Peg Offset
nasdaq_nsmequities_orders_ouch_v5_0.peg_offset.size = 4

-- Display: Peg Offset
nasdaq_nsmequities_orders_ouch_v5_0.peg_offset.display = function(value)
  return "Peg Offset: "..value
end

-- Translate: Peg Offset
nasdaq_nsmequities_orders_ouch_v5_0.peg_offset.translate = function(raw)
  return raw/10000
end

-- Dissect: Peg Offset
nasdaq_nsmequities_orders_ouch_v5_0.peg_offset.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nsmequities_orders_ouch_v5_0.peg_offset.size
  local range = buffer(offset, length)
  local raw = range:int()
  local value = nasdaq_nsmequities_orders_ouch_v5_0.peg_offset.translate(raw)
  local display = nasdaq_nsmequities_orders_ouch_v5_0.peg_offset.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nsmequities_orders_ouch_v5_0.fields.peg_offset, range, value, display)

  return offset + length, value
end

-- Order Accepted Optional Value
nasdaq_nsmequities_orders_ouch_v5_0.order_accepted_optional_value = {}

-- Size: Order Accepted Optional Value
nasdaq_nsmequities_orders_ouch_v5_0.order_accepted_optional_value.size = function(buffer, offset, order_accepted_optional_field)
  -- Size of Firm
  if order_accepted_optional_field == 2 then
    return nasdaq_nsmequities_orders_ouch_v5_0.firm.size
  end
  -- Size of Min Qty
  if order_accepted_optional_field == 3 then
    return nasdaq_nsmequities_orders_ouch_v5_0.min_qty.size
  end
  -- Size of Customer Type
  if order_accepted_optional_field == 4 then
    return nasdaq_nsmequities_orders_ouch_v5_0.customer_type.size
  end
  -- Size of Max Floor
  if order_accepted_optional_field == 5 then
    return nasdaq_nsmequities_orders_ouch_v5_0.max_floor.size
  end
  -- Size of Price Type
  if order_accepted_optional_field == 6 then
    return nasdaq_nsmequities_orders_ouch_v5_0.price_type.size
  end
  -- Size of Peg Offset
  if order_accepted_optional_field == 7 then
    return nasdaq_nsmequities_orders_ouch_v5_0.peg_offset.size
  end
  -- Size of Discretion Price
  if order_accepted_optional_field == 9 then
    return nasdaq_nsmequities_orders_ouch_v5_0.discretion_price.size
  end
  -- Size of Discretion Peg Type
  if order_accepted_optional_field == 10 then
    return nasdaq_nsmequities_orders_ouch_v5_0.discretion_peg_type.size
  end
  -- Size of Discretion Peg Offset
  if order_accepted_optional_field == 11 then
    return nasdaq_nsmequities_orders_ouch_v5_0.discretion_peg_offset.size
  end
  -- Size of Post Only
  if order_accepted_optional_field == 12 then
    return nasdaq_nsmequities_orders_ouch_v5_0.post_only.size
  end
  -- Size of Random Reserves
  if order_accepted_optional_field == 13 then
    return nasdaq_nsmequities_orders_ouch_v5_0.random_reserves.size
  end
  -- Size of Route
  if order_accepted_optional_field == 14 then
    return nasdaq_nsmequities_orders_ouch_v5_0.route.size
  end
  -- Size of Expire Time
  if order_accepted_optional_field == 15 then
    return nasdaq_nsmequities_orders_ouch_v5_0.expire_time.size
  end
  -- Size of Trade Now
  if order_accepted_optional_field == 16 then
    return nasdaq_nsmequities_orders_ouch_v5_0.trade_now.size
  end
  -- Size of Handle Inst
  if order_accepted_optional_field == 17 then
    return nasdaq_nsmequities_orders_ouch_v5_0.handle_inst.size
  end
  -- Size of Bbo Weight Indicator
  if order_accepted_optional_field == 18 then
    return nasdaq_nsmequities_orders_ouch_v5_0.bbo_weight_indicator.size
  end

  return 0
end

-- Display: Order Accepted Optional Value
nasdaq_nsmequities_orders_ouch_v5_0.order_accepted_optional_value.display = function(buffer, offset, packet, parent)
  return ""
end

-- Dissect Branches: Order Accepted Optional Value
nasdaq_nsmequities_orders_ouch_v5_0.order_accepted_optional_value.branches = function(buffer, offset, packet, parent, order_accepted_optional_field)
  -- Dissect Firm
  if order_accepted_optional_field == 2 then
    return nasdaq_nsmequities_orders_ouch_v5_0.firm.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Min Qty
  if order_accepted_optional_field == 3 then
    return nasdaq_nsmequities_orders_ouch_v5_0.min_qty.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Customer Type
  if order_accepted_optional_field == 4 then
    return nasdaq_nsmequities_orders_ouch_v5_0.customer_type.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Max Floor
  if order_accepted_optional_field == 5 then
    return nasdaq_nsmequities_orders_ouch_v5_0.max_floor.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Price Type
  if order_accepted_optional_field == 6 then
    return nasdaq_nsmequities_orders_ouch_v5_0.price_type.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Peg Offset
  if order_accepted_optional_field == 7 then
    return nasdaq_nsmequities_orders_ouch_v5_0.peg_offset.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Discretion Price
  if order_accepted_optional_field == 9 then
    return nasdaq_nsmequities_orders_ouch_v5_0.discretion_price.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Discretion Peg Type
  if order_accepted_optional_field == 10 then
    return nasdaq_nsmequities_orders_ouch_v5_0.discretion_peg_type.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Discretion Peg Offset
  if order_accepted_optional_field == 11 then
    return nasdaq_nsmequities_orders_ouch_v5_0.discretion_peg_offset.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Post Only
  if order_accepted_optional_field == 12 then
    return nasdaq_nsmequities_orders_ouch_v5_0.post_only.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Random Reserves
  if order_accepted_optional_field == 13 then
    return nasdaq_nsmequities_orders_ouch_v5_0.random_reserves.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Route
  if order_accepted_optional_field == 14 then
    return nasdaq_nsmequities_orders_ouch_v5_0.route.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Expire Time
  if order_accepted_optional_field == 15 then
    return nasdaq_nsmequities_orders_ouch_v5_0.expire_time.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Trade Now
  if order_accepted_optional_field == 16 then
    return nasdaq_nsmequities_orders_ouch_v5_0.trade_now.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Handle Inst
  if order_accepted_optional_field == 17 then
    return nasdaq_nsmequities_orders_ouch_v5_0.handle_inst.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Bbo Weight Indicator
  if order_accepted_optional_field == 18 then
    return nasdaq_nsmequities_orders_ouch_v5_0.bbo_weight_indicator.dissect(buffer, offset, packet, parent)
  end

  return offset
end

-- Dissect: Order Accepted Optional Value
nasdaq_nsmequities_orders_ouch_v5_0.order_accepted_optional_value.dissect = function(buffer, offset, packet, parent, order_accepted_optional_field)
  if not show.order_accepted_optional_value then
    return nasdaq_nsmequities_orders_ouch_v5_0.order_accepted_optional_value.branches(buffer, offset, packet, parent, order_accepted_optional_field)
  end

  -- Calculate size and check that branch is not empty
  local size = nasdaq_nsmequities_orders_ouch_v5_0.order_accepted_optional_value.size(buffer, offset, order_accepted_optional_field)
  if size == 0 then
    return offset
  end

  -- Dissect Element
  local range = buffer(offset, size)
  local display = nasdaq_nsmequities_orders_ouch_v5_0.order_accepted_optional_value.display(buffer, packet, parent)
  local element = parent:add(omi_nasdaq_nsmequities_orders_ouch_v5_0.fields.order_accepted_optional_value, range, display)

  return nasdaq_nsmequities_orders_ouch_v5_0.order_accepted_optional_value.branches(buffer, offset, packet, parent, order_accepted_optional_field)
end

-- Order Accepted Optional Field
nasdaq_nsmequities_orders_ouch_v5_0.order_accepted_optional_field = {}

-- Size: Order Accepted Optional Field
nasdaq_nsmequities_orders_ouch_v5_0.order_accepted_optional_field.size = 1

-- Display: Order Accepted Optional Field
nasdaq_nsmequities_orders_ouch_v5_0.order_accepted_optional_field.display = function(value)
  if value == 2 then
    return "Order Accepted Optional Field: Firm (2)"
  end
  if value == 3 then
    return "Order Accepted Optional Field: Min Qty (3)"
  end
  if value == 4 then
    return "Order Accepted Optional Field: Customer Type (4)"
  end
  if value == 5 then
    return "Order Accepted Optional Field: Max Floor (5)"
  end
  if value == 6 then
    return "Order Accepted Optional Field: Price Type (6)"
  end
  if value == 7 then
    return "Order Accepted Optional Field: Peg Offset (7)"
  end
  if value == 9 then
    return "Order Accepted Optional Field: Discretion Price (9)"
  end
  if value == 10 then
    return "Order Accepted Optional Field: Discretion Peg Type (10)"
  end
  if value == 11 then
    return "Order Accepted Optional Field: Discretion Peg Offset (11)"
  end
  if value == 12 then
    return "Order Accepted Optional Field: Post Only (12)"
  end
  if value == 13 then
    return "Order Accepted Optional Field: Random Reserves (13)"
  end
  if value == 14 then
    return "Order Accepted Optional Field: Route (14)"
  end
  if value == 15 then
    return "Order Accepted Optional Field: Expire Time (15)"
  end
  if value == 16 then
    return "Order Accepted Optional Field: Trade Now (16)"
  end
  if value == 17 then
    return "Order Accepted Optional Field: Handle Inst (17)"
  end
  if value == 18 then
    return "Order Accepted Optional Field: Bbo Weight Indicator (18)"
  end

  return "Order Accepted Optional Field: Unknown("..value..")"
end

-- Dissect: Order Accepted Optional Field
nasdaq_nsmequities_orders_ouch_v5_0.order_accepted_optional_field.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nsmequities_orders_ouch_v5_0.order_accepted_optional_field.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = nasdaq_nsmequities_orders_ouch_v5_0.order_accepted_optional_field.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nsmequities_orders_ouch_v5_0.fields.order_accepted_optional_field, range, value, display)

  return offset + length, value
end

-- Order Accepted Appendage
nasdaq_nsmequities_orders_ouch_v5_0.order_accepted_appendage = {}

-- Display: Order Accepted Appendage
nasdaq_nsmequities_orders_ouch_v5_0.order_accepted_appendage.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Order Accepted Appendage
nasdaq_nsmequities_orders_ouch_v5_0.order_accepted_appendage.fields = function(buffer, offset, packet, parent, size_of_order_accepted_appendage)
  local index = offset

  -- Optional Field Length: 1 Byte Signed Fixed Width Integer
  index, optional_field_length = nasdaq_nsmequities_orders_ouch_v5_0.optional_field_length.dissect(buffer, index, packet, parent)

  -- Order Accepted Optional Field: 1 Byte Signed Fixed Width Integer Enum with 16 values
  index, order_accepted_optional_field = nasdaq_nsmequities_orders_ouch_v5_0.order_accepted_optional_field.dissect(buffer, index, packet, parent)

  -- Order Accepted Optional Value: Runtime Type with 16 branches
  index = nasdaq_nsmequities_orders_ouch_v5_0.order_accepted_optional_value.dissect(buffer, index, packet, parent, order_accepted_optional_field)

  return index
end

-- Dissect: Order Accepted Appendage
nasdaq_nsmequities_orders_ouch_v5_0.order_accepted_appendage.dissect = function(buffer, offset, packet, parent, size_of_order_accepted_appendage)
  local index = offset + size_of_order_accepted_appendage

  -- Optionally add group/struct element to protocol tree
  if show.order_accepted_appendage then
    parent = parent:add(omi_nasdaq_nsmequities_orders_ouch_v5_0.fields.order_accepted_appendage, buffer(offset, 0))
    local current = nasdaq_nsmequities_orders_ouch_v5_0.order_accepted_appendage.fields(buffer, offset, packet, parent, size_of_order_accepted_appendage)
    parent:set_len(size_of_order_accepted_appendage)
    local display = nasdaq_nsmequities_orders_ouch_v5_0.order_accepted_appendage.display(buffer, packet, parent)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    nasdaq_nsmequities_orders_ouch_v5_0.order_accepted_appendage.fields(buffer, offset, packet, parent, size_of_order_accepted_appendage)

    return index
  end
end

-- Order Accepted Message
nasdaq_nsmequities_orders_ouch_v5_0.order_accepted_message = {}

-- Size: Order Accepted Message
nasdaq_nsmequities_orders_ouch_v5_0.order_accepted_message.size = function(buffer, offset)
  local index = 0

  return buffer:len() - (offset + index) 
end

-- Display: Order Accepted Message
nasdaq_nsmequities_orders_ouch_v5_0.order_accepted_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Order Accepted Message
nasdaq_nsmequities_orders_ouch_v5_0.order_accepted_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Timestamp: 8 Byte Unsigned Fixed Width Integer
  index, timestamp = nasdaq_nsmequities_orders_ouch_v5_0.timestamp.dissect(buffer, index, packet, parent)

  -- User Ref Num: 4 Byte Unsigned Fixed Width Integer
  index, user_ref_num = nasdaq_nsmequities_orders_ouch_v5_0.user_ref_num.dissect(buffer, index, packet, parent)

  -- Side: 1 Byte Ascii String Enum with 4 values
  index, side = nasdaq_nsmequities_orders_ouch_v5_0.side.dissect(buffer, index, packet, parent)

  -- Quantity: 4 Byte Unsigned Fixed Width Integer
  index, quantity = nasdaq_nsmequities_orders_ouch_v5_0.quantity.dissect(buffer, index, packet, parent)

  -- Symbol: 8 Byte Ascii String
  index, symbol = nasdaq_nsmequities_orders_ouch_v5_0.symbol.dissect(buffer, index, packet, parent)

  -- Price: 8 Byte Unsigned Fixed Width Integer
  index, price = nasdaq_nsmequities_orders_ouch_v5_0.price.dissect(buffer, index, packet, parent)

  -- Time In Force: 1 Byte Ascii String Enum with 5 values
  index, time_in_force = nasdaq_nsmequities_orders_ouch_v5_0.time_in_force.dissect(buffer, index, packet, parent)

  -- Display: 1 Byte Ascii String Enum with 14 values
  index, display = nasdaq_nsmequities_orders_ouch_v5_0.display.dissect(buffer, index, packet, parent)

  -- Order Reference Number: 8 Byte Unsigned Fixed Width Integer
  index, order_reference_number = nasdaq_nsmequities_orders_ouch_v5_0.order_reference_number.dissect(buffer, index, packet, parent)

  -- Capacity: 1 Byte Ascii String Enum with 4 values
  index, capacity = nasdaq_nsmequities_orders_ouch_v5_0.capacity.dissect(buffer, index, packet, parent)

  -- Inter Market Sweep Eligibility: 1 Byte Ascii String Enum with 2 values
  index, inter_market_sweep_eligibility = nasdaq_nsmequities_orders_ouch_v5_0.inter_market_sweep_eligibility.dissect(buffer, index, packet, parent)

  -- Cross Type: 1 Byte Ascii String Enum with 8 values
  index, cross_type = nasdaq_nsmequities_orders_ouch_v5_0.cross_type.dissect(buffer, index, packet, parent)

  -- Order State: 1 Byte Ascii String Enum with 2 values
  index, order_state = nasdaq_nsmequities_orders_ouch_v5_0.order_state.dissect(buffer, index, packet, parent)

  -- ClOrdId: 14 Byte Ascii String
  index, clordid = nasdaq_nsmequities_orders_ouch_v5_0.clordid.dissect(buffer, index, packet, parent)

  -- Appendage Length: 2 Byte Unsigned Fixed Width Integer
  index, appendage_length = nasdaq_nsmequities_orders_ouch_v5_0.appendage_length.dissect(buffer, index, packet, parent)

  -- Dependency for Order Accepted Appendage
  local end_of_payload = appendage_length + index

  -- Order Accepted Appendage: Struct of 3 fields
  while index < end_of_payload do

    -- Dependency element: Optional Field Length
    local optional_field_length = buffer(index, 1):int()

    -- Runtime Size Of: Order Accepted Appendage
    local size_of_order_accepted_appendage = optional_field_length + 1

    -- Order Accepted Appendage: Struct of 3 fields
    index, order_accepted_appendage = nasdaq_nsmequities_orders_ouch_v5_0.order_accepted_appendage.dissect(buffer, index, packet, parent, size_of_order_accepted_appendage)
  end

  return index
end

-- Dissect: Order Accepted Message
nasdaq_nsmequities_orders_ouch_v5_0.order_accepted_message.dissect = function(buffer, offset, packet, parent)
  -- Optionally add dynamic struct element to protocol tree
  if show.order_accepted_message then
    local length = nasdaq_nsmequities_orders_ouch_v5_0.order_accepted_message.size(buffer, offset)
    local range = buffer(offset, length)
    local display = nasdaq_nsmequities_orders_ouch_v5_0.order_accepted_message.display(buffer, packet, parent)
    parent = parent:add(omi_nasdaq_nsmequities_orders_ouch_v5_0.fields.order_accepted_message, range, display)
  end

  return nasdaq_nsmequities_orders_ouch_v5_0.order_accepted_message.fields(buffer, offset, packet, parent)
end

-- Event Code
nasdaq_nsmequities_orders_ouch_v5_0.event_code = {}

-- Size: Event Code
nasdaq_nsmequities_orders_ouch_v5_0.event_code.size = 1

-- Display: Event Code
nasdaq_nsmequities_orders_ouch_v5_0.event_code.display = function(value)
  if value == "S" then
    return "Event Code: Start Of Day (S)"
  end
  if value == "E" then
    return "Event Code: End Of Day (E)"
  end

  return "Event Code: Unknown("..value..")"
end

-- Dissect: Event Code
nasdaq_nsmequities_orders_ouch_v5_0.event_code.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nsmequities_orders_ouch_v5_0.event_code.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_nsmequities_orders_ouch_v5_0.event_code.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nsmequities_orders_ouch_v5_0.fields.event_code, range, value, display)

  return offset + length, value
end

-- System Event Message
nasdaq_nsmequities_orders_ouch_v5_0.system_event_message = {}

-- Size: System Event Message
nasdaq_nsmequities_orders_ouch_v5_0.system_event_message.size =
  nasdaq_nsmequities_orders_ouch_v5_0.timestamp.size + 
  nasdaq_nsmequities_orders_ouch_v5_0.event_code.size

-- Display: System Event Message
nasdaq_nsmequities_orders_ouch_v5_0.system_event_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: System Event Message
nasdaq_nsmequities_orders_ouch_v5_0.system_event_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Timestamp: 8 Byte Unsigned Fixed Width Integer
  index, timestamp = nasdaq_nsmequities_orders_ouch_v5_0.timestamp.dissect(buffer, index, packet, parent)

  -- Event Code: 1 Byte Ascii String Enum with 2 values
  index, event_code = nasdaq_nsmequities_orders_ouch_v5_0.event_code.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: System Event Message
nasdaq_nsmequities_orders_ouch_v5_0.system_event_message.dissect = function(buffer, offset, packet, parent)
  if show.system_event_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_nsmequities_orders_ouch_v5_0.fields.system_event_message, buffer(offset, 0))
    local index = nasdaq_nsmequities_orders_ouch_v5_0.system_event_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_nsmequities_orders_ouch_v5_0.system_event_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_nsmequities_orders_ouch_v5_0.system_event_message.fields(buffer, offset, packet, parent)
  end
end

-- Sequenced Message
nasdaq_nsmequities_orders_ouch_v5_0.sequenced_message = {}

-- Size: Sequenced Message
nasdaq_nsmequities_orders_ouch_v5_0.sequenced_message.size = function(buffer, offset, sequenced_message_type)
  -- Size of System Event Message
  if sequenced_message_type == "S" then
    return nasdaq_nsmequities_orders_ouch_v5_0.system_event_message.size
  end
  -- Size of Order Accepted Message
  if sequenced_message_type == "A" then
    return nasdaq_nsmequities_orders_ouch_v5_0.order_accepted_message.size(buffer, offset)
  end
  -- Size of Replaced Message
  if sequenced_message_type == "U" then
    return nasdaq_nsmequities_orders_ouch_v5_0.replaced_message.size(buffer, offset)
  end
  -- Size of Canceled Message
  if sequenced_message_type == "C" then
    return nasdaq_nsmequities_orders_ouch_v5_0.canceled_message.size
  end
  -- Size of Aiq Canceled Message
  if sequenced_message_type == "D" then
    return nasdaq_nsmequities_orders_ouch_v5_0.aiq_canceled_message.size
  end
  -- Size of Order Executed Message
  if sequenced_message_type == "E" then
    return nasdaq_nsmequities_orders_ouch_v5_0.order_executed_message.size(buffer, offset)
  end
  -- Size of Broken Trade Message
  if sequenced_message_type == "B" then
    return nasdaq_nsmequities_orders_ouch_v5_0.broken_trade_message.size
  end
  -- Size of Trade Correction Message
  if sequenced_message_type == "F" then
    return nasdaq_nsmequities_orders_ouch_v5_0.trade_correction_message.size
  end
  -- Size of Rejected Order Message
  if sequenced_message_type == "J" then
    return nasdaq_nsmequities_orders_ouch_v5_0.rejected_order_message.size
  end
  -- Size of Cancel Pending Message
  if sequenced_message_type == "P" then
    return nasdaq_nsmequities_orders_ouch_v5_0.cancel_pending_message.size
  end
  -- Size of Cancel Reject Message
  if sequenced_message_type == "I" then
    return nasdaq_nsmequities_orders_ouch_v5_0.cancel_reject_message.size
  end
  -- Size of Order Priority Update Message
  if sequenced_message_type == "T" then
    return nasdaq_nsmequities_orders_ouch_v5_0.order_priority_update_message.size
  end
  -- Size of Order Modified Message
  if sequenced_message_type == "M" then
    return nasdaq_nsmequities_orders_ouch_v5_0.order_modified_message.size
  end
  -- Size of Order Restated Message
  if sequenced_message_type == "R" then
    return nasdaq_nsmequities_orders_ouch_v5_0.order_restated_message.size(buffer, offset)
  end
  -- Size of Account Query Response Message
  if sequenced_message_type == "Q" then
    return nasdaq_nsmequities_orders_ouch_v5_0.account_query_response_message.size
  end

  return 0
end

-- Display: Sequenced Message
nasdaq_nsmequities_orders_ouch_v5_0.sequenced_message.display = function(buffer, offset, packet, parent)
  return ""
end

-- Dissect Branches: Sequenced Message
nasdaq_nsmequities_orders_ouch_v5_0.sequenced_message.branches = function(buffer, offset, packet, parent, sequenced_message_type)
  -- Dissect System Event Message
  if sequenced_message_type == "S" then
    return nasdaq_nsmequities_orders_ouch_v5_0.system_event_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Order Accepted Message
  if sequenced_message_type == "A" then
    return nasdaq_nsmequities_orders_ouch_v5_0.order_accepted_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Replaced Message
  if sequenced_message_type == "U" then
    return nasdaq_nsmequities_orders_ouch_v5_0.replaced_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Canceled Message
  if sequenced_message_type == "C" then
    return nasdaq_nsmequities_orders_ouch_v5_0.canceled_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Aiq Canceled Message
  if sequenced_message_type == "D" then
    return nasdaq_nsmequities_orders_ouch_v5_0.aiq_canceled_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Order Executed Message
  if sequenced_message_type == "E" then
    return nasdaq_nsmequities_orders_ouch_v5_0.order_executed_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Broken Trade Message
  if sequenced_message_type == "B" then
    return nasdaq_nsmequities_orders_ouch_v5_0.broken_trade_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Trade Correction Message
  if sequenced_message_type == "F" then
    return nasdaq_nsmequities_orders_ouch_v5_0.trade_correction_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Rejected Order Message
  if sequenced_message_type == "J" then
    return nasdaq_nsmequities_orders_ouch_v5_0.rejected_order_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Cancel Pending Message
  if sequenced_message_type == "P" then
    return nasdaq_nsmequities_orders_ouch_v5_0.cancel_pending_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Cancel Reject Message
  if sequenced_message_type == "I" then
    return nasdaq_nsmequities_orders_ouch_v5_0.cancel_reject_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Order Priority Update Message
  if sequenced_message_type == "T" then
    return nasdaq_nsmequities_orders_ouch_v5_0.order_priority_update_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Order Modified Message
  if sequenced_message_type == "M" then
    return nasdaq_nsmequities_orders_ouch_v5_0.order_modified_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Order Restated Message
  if sequenced_message_type == "R" then
    return nasdaq_nsmequities_orders_ouch_v5_0.order_restated_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Account Query Response Message
  if sequenced_message_type == "Q" then
    return nasdaq_nsmequities_orders_ouch_v5_0.account_query_response_message.dissect(buffer, offset, packet, parent)
  end

  return offset
end

-- Dissect: Sequenced Message
nasdaq_nsmequities_orders_ouch_v5_0.sequenced_message.dissect = function(buffer, offset, packet, parent, sequenced_message_type)
  if not show.sequenced_message then
    return nasdaq_nsmequities_orders_ouch_v5_0.sequenced_message.branches(buffer, offset, packet, parent, sequenced_message_type)
  end

  -- Calculate size and check that branch is not empty
  local size = nasdaq_nsmequities_orders_ouch_v5_0.sequenced_message.size(buffer, offset, sequenced_message_type)
  if size == 0 then
    return offset
  end

  -- Dissect Element
  local range = buffer(offset, size)
  local display = nasdaq_nsmequities_orders_ouch_v5_0.sequenced_message.display(buffer, packet, parent)
  local element = parent:add(omi_nasdaq_nsmequities_orders_ouch_v5_0.fields.sequenced_message, range, display)

  return nasdaq_nsmequities_orders_ouch_v5_0.sequenced_message.branches(buffer, offset, packet, parent, sequenced_message_type)
end

-- Sequenced Message Type
nasdaq_nsmequities_orders_ouch_v5_0.sequenced_message_type = {}

-- Size: Sequenced Message Type
nasdaq_nsmequities_orders_ouch_v5_0.sequenced_message_type.size = 1

-- Display: Sequenced Message Type
nasdaq_nsmequities_orders_ouch_v5_0.sequenced_message_type.display = function(value)
  if value == "S" then
    return "Sequenced Message Type: System Event Message (S)"
  end
  if value == "A" then
    return "Sequenced Message Type: Order Accepted Message (A)"
  end
  if value == "U" then
    return "Sequenced Message Type: Replaced Message (U)"
  end
  if value == "C" then
    return "Sequenced Message Type: Canceled Message (C)"
  end
  if value == "D" then
    return "Sequenced Message Type: Aiq Canceled Message (D)"
  end
  if value == "E" then
    return "Sequenced Message Type: Order Executed Message (E)"
  end
  if value == "B" then
    return "Sequenced Message Type: Broken Trade Message (B)"
  end
  if value == "F" then
    return "Sequenced Message Type: Trade Correction Message (F)"
  end
  if value == "J" then
    return "Sequenced Message Type: Rejected Order Message (J)"
  end
  if value == "P" then
    return "Sequenced Message Type: Cancel Pending Message (P)"
  end
  if value == "I" then
    return "Sequenced Message Type: Cancel Reject Message (I)"
  end
  if value == "T" then
    return "Sequenced Message Type: Order Priority Update Message (T)"
  end
  if value == "M" then
    return "Sequenced Message Type: Order Modified Message (M)"
  end
  if value == "R" then
    return "Sequenced Message Type: Order Restated Message (R)"
  end
  if value == "Q" then
    return "Sequenced Message Type: Account Query Response Message (Q)"
  end

  return "Sequenced Message Type: Unknown("..value..")"
end

-- Dissect: Sequenced Message Type
nasdaq_nsmequities_orders_ouch_v5_0.sequenced_message_type.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nsmequities_orders_ouch_v5_0.sequenced_message_type.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_nsmequities_orders_ouch_v5_0.sequenced_message_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nsmequities_orders_ouch_v5_0.fields.sequenced_message_type, range, value, display)

  return offset + length, value
end

-- Sequenced Data Packet
nasdaq_nsmequities_orders_ouch_v5_0.sequenced_data_packet = {}

-- Read runtime size of: Sequenced Data Packet
nasdaq_nsmequities_orders_ouch_v5_0.sequenced_data_packet.size = function(buffer, offset)
  local index = offset

  -- Dependency element: Packet Length
  local packet_length = buffer(offset - 3, 2):uint()

  return packet_length - 1
end

-- Display: Sequenced Data Packet
nasdaq_nsmequities_orders_ouch_v5_0.sequenced_data_packet.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Sequenced Data Packet
nasdaq_nsmequities_orders_ouch_v5_0.sequenced_data_packet.fields = function(buffer, offset, packet, parent, size_of_sequenced_data_packet)
  local index = offset

  -- Sequenced Message Type: 1 Byte Ascii String Enum with 15 values
  index, sequenced_message_type = nasdaq_nsmequities_orders_ouch_v5_0.sequenced_message_type.dissect(buffer, index, packet, parent)

  -- Sequenced Message: Runtime Type with 15 branches
  index = nasdaq_nsmequities_orders_ouch_v5_0.sequenced_message.dissect(buffer, index, packet, parent, sequenced_message_type)

  return index
end

-- Dissect: Sequenced Data Packet
nasdaq_nsmequities_orders_ouch_v5_0.sequenced_data_packet.dissect = function(buffer, offset, packet, parent)
  -- Parse runtime size
  local size_of_sequenced_data_packet = nasdaq_nsmequities_orders_ouch_v5_0.sequenced_data_packet.size(buffer, offset)

  -- Optionally add struct element to protocol tree
  if show.sequenced_data_packet then
    local range = buffer(offset, size_of_sequenced_data_packet)
    local display = nasdaq_nsmequities_orders_ouch_v5_0.sequenced_data_packet.display(buffer, packet, parent)
    parent = parent:add(omi_nasdaq_nsmequities_orders_ouch_v5_0.fields.sequenced_data_packet, range, display)
  end

  nasdaq_nsmequities_orders_ouch_v5_0.sequenced_data_packet.fields(buffer, offset, packet, parent, size_of_sequenced_data_packet)

  return offset + size_of_sequenced_data_packet
end

-- Reject Reason Code
nasdaq_nsmequities_orders_ouch_v5_0.reject_reason_code = {}

-- Size: Reject Reason Code
nasdaq_nsmequities_orders_ouch_v5_0.reject_reason_code.size = 1

-- Display: Reject Reason Code
nasdaq_nsmequities_orders_ouch_v5_0.reject_reason_code.display = function(value)
  return "Reject Reason Code: "..value
end

-- Dissect: Reject Reason Code
nasdaq_nsmequities_orders_ouch_v5_0.reject_reason_code.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nsmequities_orders_ouch_v5_0.reject_reason_code.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_nsmequities_orders_ouch_v5_0.reject_reason_code.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nsmequities_orders_ouch_v5_0.fields.reject_reason_code, range, value, display)

  return offset + length, value
end

-- Login Rejected Packet
nasdaq_nsmequities_orders_ouch_v5_0.login_rejected_packet = {}

-- Size: Login Rejected Packet
nasdaq_nsmequities_orders_ouch_v5_0.login_rejected_packet.size =
  nasdaq_nsmequities_orders_ouch_v5_0.reject_reason_code.size

-- Display: Login Rejected Packet
nasdaq_nsmequities_orders_ouch_v5_0.login_rejected_packet.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Login Rejected Packet
nasdaq_nsmequities_orders_ouch_v5_0.login_rejected_packet.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Reject Reason Code: 1 Byte Ascii String
  index, reject_reason_code = nasdaq_nsmequities_orders_ouch_v5_0.reject_reason_code.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Login Rejected Packet
nasdaq_nsmequities_orders_ouch_v5_0.login_rejected_packet.dissect = function(buffer, offset, packet, parent)
  if show.login_rejected_packet then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_nsmequities_orders_ouch_v5_0.fields.login_rejected_packet, buffer(offset, 0))
    local index = nasdaq_nsmequities_orders_ouch_v5_0.login_rejected_packet.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_nsmequities_orders_ouch_v5_0.login_rejected_packet.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_nsmequities_orders_ouch_v5_0.login_rejected_packet.fields(buffer, offset, packet, parent)
  end
end

-- Sequence Number
nasdaq_nsmequities_orders_ouch_v5_0.sequence_number = {}

-- Size: Sequence Number
nasdaq_nsmequities_orders_ouch_v5_0.sequence_number.size = 20

-- Display: Sequence Number
nasdaq_nsmequities_orders_ouch_v5_0.sequence_number.display = function(value)
  return "Sequence Number: "..value
end

-- Dissect: Sequence Number
nasdaq_nsmequities_orders_ouch_v5_0.sequence_number.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nsmequities_orders_ouch_v5_0.sequence_number.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_nsmequities_orders_ouch_v5_0.sequence_number.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nsmequities_orders_ouch_v5_0.fields.sequence_number, range, value, display)

  return offset + length, value
end

-- Session
nasdaq_nsmequities_orders_ouch_v5_0.session = {}

-- Size: Session
nasdaq_nsmequities_orders_ouch_v5_0.session.size = 10

-- Display: Session
nasdaq_nsmequities_orders_ouch_v5_0.session.display = function(value)
  return "Session: "..value
end

-- Dissect: Session
nasdaq_nsmequities_orders_ouch_v5_0.session.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nsmequities_orders_ouch_v5_0.session.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_nsmequities_orders_ouch_v5_0.session.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nsmequities_orders_ouch_v5_0.fields.session, range, value, display)

  return offset + length, value
end

-- Login Accepted Packet
nasdaq_nsmequities_orders_ouch_v5_0.login_accepted_packet = {}

-- Size: Login Accepted Packet
nasdaq_nsmequities_orders_ouch_v5_0.login_accepted_packet.size =
  nasdaq_nsmequities_orders_ouch_v5_0.session.size + 
  nasdaq_nsmequities_orders_ouch_v5_0.sequence_number.size

-- Display: Login Accepted Packet
nasdaq_nsmequities_orders_ouch_v5_0.login_accepted_packet.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Login Accepted Packet
nasdaq_nsmequities_orders_ouch_v5_0.login_accepted_packet.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Session: 10 Byte Ascii String
  index, session = nasdaq_nsmequities_orders_ouch_v5_0.session.dissect(buffer, index, packet, parent)

  -- Sequence Number: 20 Byte Ascii String
  index, sequence_number = nasdaq_nsmequities_orders_ouch_v5_0.sequence_number.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Login Accepted Packet
nasdaq_nsmequities_orders_ouch_v5_0.login_accepted_packet.dissect = function(buffer, offset, packet, parent)
  if show.login_accepted_packet then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_nsmequities_orders_ouch_v5_0.fields.login_accepted_packet, buffer(offset, 0))
    local index = nasdaq_nsmequities_orders_ouch_v5_0.login_accepted_packet.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_nsmequities_orders_ouch_v5_0.login_accepted_packet.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_nsmequities_orders_ouch_v5_0.login_accepted_packet.fields(buffer, offset, packet, parent)
  end
end

-- Text
nasdaq_nsmequities_orders_ouch_v5_0.text = {}

-- Size: Text
nasdaq_nsmequities_orders_ouch_v5_0.text.size = 1

-- Display: Text
nasdaq_nsmequities_orders_ouch_v5_0.text.display = function(value)
  return "Text: "..value
end

-- Dissect: Text
nasdaq_nsmequities_orders_ouch_v5_0.text.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nsmequities_orders_ouch_v5_0.text.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_nsmequities_orders_ouch_v5_0.text.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nsmequities_orders_ouch_v5_0.fields.text, range, value, display)

  return offset + length, value
end

-- Debug Packet
nasdaq_nsmequities_orders_ouch_v5_0.debug_packet = {}

-- Size: Debug Packet
nasdaq_nsmequities_orders_ouch_v5_0.debug_packet.size =
  nasdaq_nsmequities_orders_ouch_v5_0.text.size

-- Display: Debug Packet
nasdaq_nsmequities_orders_ouch_v5_0.debug_packet.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Debug Packet
nasdaq_nsmequities_orders_ouch_v5_0.debug_packet.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Text: 1 Byte Ascii String
  index, text = nasdaq_nsmequities_orders_ouch_v5_0.text.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Debug Packet
nasdaq_nsmequities_orders_ouch_v5_0.debug_packet.dissect = function(buffer, offset, packet, parent)
  if show.debug_packet then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_nsmequities_orders_ouch_v5_0.fields.debug_packet, buffer(offset, 0))
    local index = nasdaq_nsmequities_orders_ouch_v5_0.debug_packet.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_nsmequities_orders_ouch_v5_0.debug_packet.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_nsmequities_orders_ouch_v5_0.debug_packet.fields(buffer, offset, packet, parent)
  end
end

-- Payload
nasdaq_nsmequities_orders_ouch_v5_0.payload = {}

-- Size: Payload
nasdaq_nsmequities_orders_ouch_v5_0.payload.size = function(buffer, offset, packet_type)
  -- Size of Debug Packet
  if packet_type == "+" then
    return nasdaq_nsmequities_orders_ouch_v5_0.debug_packet.size
  end
  -- Size of Login Accepted Packet
  if packet_type == "A" then
    return nasdaq_nsmequities_orders_ouch_v5_0.login_accepted_packet.size
  end
  -- Size of Login Rejected Packet
  if packet_type == "J" then
    return nasdaq_nsmequities_orders_ouch_v5_0.login_rejected_packet.size
  end
  -- Size of Sequenced Data Packet
  if packet_type == "S" then
    return nasdaq_nsmequities_orders_ouch_v5_0.sequenced_data_packet.size(buffer, offset)
  end
  -- Size of Login Request Packet
  if packet_type == "L" then
    return nasdaq_nsmequities_orders_ouch_v5_0.login_request_packet.size
  end
  -- Size of Unsequenced Data Packet
  if packet_type == "U" then
    return nasdaq_nsmequities_orders_ouch_v5_0.unsequenced_data_packet.size(buffer, offset)
  end

  return 0
end

-- Display: Payload
nasdaq_nsmequities_orders_ouch_v5_0.payload.display = function(buffer, offset, packet, parent)
  return ""
end

-- Dissect Branches: Payload
nasdaq_nsmequities_orders_ouch_v5_0.payload.branches = function(buffer, offset, packet, parent, packet_type)
  -- Dissect Debug Packet
  if packet_type == "+" then
    return nasdaq_nsmequities_orders_ouch_v5_0.debug_packet.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Login Accepted Packet
  if packet_type == "A" then
    return nasdaq_nsmequities_orders_ouch_v5_0.login_accepted_packet.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Login Rejected Packet
  if packet_type == "J" then
    return nasdaq_nsmequities_orders_ouch_v5_0.login_rejected_packet.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Sequenced Data Packet
  if packet_type == "S" then
    return nasdaq_nsmequities_orders_ouch_v5_0.sequenced_data_packet.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Login Request Packet
  if packet_type == "L" then
    return nasdaq_nsmequities_orders_ouch_v5_0.login_request_packet.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Unsequenced Data Packet
  if packet_type == "U" then
    return nasdaq_nsmequities_orders_ouch_v5_0.unsequenced_data_packet.dissect(buffer, offset, packet, parent)
  end

  return offset
end

-- Dissect: Payload
nasdaq_nsmequities_orders_ouch_v5_0.payload.dissect = function(buffer, offset, packet, parent, packet_type)
  if not show.payload then
    return nasdaq_nsmequities_orders_ouch_v5_0.payload.branches(buffer, offset, packet, parent, packet_type)
  end

  -- Calculate size and check that branch is not empty
  local size = nasdaq_nsmequities_orders_ouch_v5_0.payload.size(buffer, offset, packet_type)
  if size == 0 then
    return offset
  end

  -- Dissect Element
  local range = buffer(offset, size)
  local display = nasdaq_nsmequities_orders_ouch_v5_0.payload.display(buffer, packet, parent)
  local element = parent:add(omi_nasdaq_nsmequities_orders_ouch_v5_0.fields.payload, range, display)

  return nasdaq_nsmequities_orders_ouch_v5_0.payload.branches(buffer, offset, packet, parent, packet_type)
end

-- Packet Type
nasdaq_nsmequities_orders_ouch_v5_0.packet_type = {}

-- Size: Packet Type
nasdaq_nsmequities_orders_ouch_v5_0.packet_type.size = 1

-- Display: Packet Type
nasdaq_nsmequities_orders_ouch_v5_0.packet_type.display = function(value)
  if value == "+" then
    return "Packet Type: Debug Packet (+)"
  end
  if value == "A" then
    return "Packet Type: Login Accepted Packet (A)"
  end
  if value == "J" then
    return "Packet Type: Login Rejected Packet (J)"
  end
  if value == "S" then
    return "Packet Type: Sequenced Data Packet (S)"
  end
  if value == "H" then
    return "Packet Type: Server Heartbeat Packet (H)"
  end
  if value == "Z" then
    return "Packet Type: End Of Session Packet (Z)"
  end
  if value == "L" then
    return "Packet Type: Login Request Packet (L)"
  end
  if value == "U" then
    return "Packet Type: Unsequenced Data Packet (U)"
  end
  if value == "R" then
    return "Packet Type: Client Heartbeat Packet (R)"
  end
  if value == "O" then
    return "Packet Type: Logout Request Packet (O)"
  end

  return "Packet Type: Unknown("..value..")"
end

-- Dissect: Packet Type
nasdaq_nsmequities_orders_ouch_v5_0.packet_type.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nsmequities_orders_ouch_v5_0.packet_type.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_nsmequities_orders_ouch_v5_0.packet_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nsmequities_orders_ouch_v5_0.fields.packet_type, range, value, display)

  return offset + length, value
end

-- Packet Length
nasdaq_nsmequities_orders_ouch_v5_0.packet_length = {}

-- Size: Packet Length
nasdaq_nsmequities_orders_ouch_v5_0.packet_length.size = 2

-- Display: Packet Length
nasdaq_nsmequities_orders_ouch_v5_0.packet_length.display = function(value)
  return "Packet Length: "..value
end

-- Dissect: Packet Length
nasdaq_nsmequities_orders_ouch_v5_0.packet_length.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nsmequities_orders_ouch_v5_0.packet_length.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_nsmequities_orders_ouch_v5_0.packet_length.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nsmequities_orders_ouch_v5_0.fields.packet_length, range, value, display)

  return offset + length, value
end

-- Packet Header
nasdaq_nsmequities_orders_ouch_v5_0.packet_header = {}

-- Size: Packet Header
nasdaq_nsmequities_orders_ouch_v5_0.packet_header.size =
  nasdaq_nsmequities_orders_ouch_v5_0.packet_length.size + 
  nasdaq_nsmequities_orders_ouch_v5_0.packet_type.size

-- Display: Packet Header
nasdaq_nsmequities_orders_ouch_v5_0.packet_header.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Packet Header
nasdaq_nsmequities_orders_ouch_v5_0.packet_header.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Packet Length: 2 Byte Unsigned Fixed Width Integer
  index, packet_length = nasdaq_nsmequities_orders_ouch_v5_0.packet_length.dissect(buffer, index, packet, parent)

  -- Packet Type: 1 Byte Ascii String Enum with 10 values
  index, packet_type = nasdaq_nsmequities_orders_ouch_v5_0.packet_type.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Packet Header
nasdaq_nsmequities_orders_ouch_v5_0.packet_header.dissect = function(buffer, offset, packet, parent)
  if show.packet_header then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_nsmequities_orders_ouch_v5_0.fields.packet_header, buffer(offset, 0))
    local index = nasdaq_nsmequities_orders_ouch_v5_0.packet_header.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_nsmequities_orders_ouch_v5_0.packet_header.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_nsmequities_orders_ouch_v5_0.packet_header.fields(buffer, offset, packet, parent)
  end
end

-- Soup Bin Tcp Packet
nasdaq_nsmequities_orders_ouch_v5_0.soup_bin_tcp_packet = {}

-- Display: Soup Bin Tcp Packet
nasdaq_nsmequities_orders_ouch_v5_0.soup_bin_tcp_packet.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Soup Bin Tcp Packet
nasdaq_nsmequities_orders_ouch_v5_0.soup_bin_tcp_packet.fields = function(buffer, offset, packet, parent, size_of_soup_bin_tcp_packet)
  local index = offset

  -- Packet Header: Struct of 2 fields
  index, packet_header = nasdaq_nsmequities_orders_ouch_v5_0.packet_header.dissect(buffer, index, packet, parent)

  -- Dependency element: Packet Type
  local packet_type = buffer(index - 1, 1):string()

  -- Payload: Runtime Type with 6 branches
  index = nasdaq_nsmequities_orders_ouch_v5_0.payload.dissect(buffer, index, packet, parent, packet_type)

  return index
end

-- Dissect: Soup Bin Tcp Packet
nasdaq_nsmequities_orders_ouch_v5_0.soup_bin_tcp_packet.dissect = function(buffer, offset, packet, parent, size_of_soup_bin_tcp_packet)
  local index = offset + size_of_soup_bin_tcp_packet

  -- Optionally add group/struct element to protocol tree
  if show.soup_bin_tcp_packet then
    parent = parent:add(omi_nasdaq_nsmequities_orders_ouch_v5_0.fields.soup_bin_tcp_packet, buffer(offset, 0))
    local current = nasdaq_nsmequities_orders_ouch_v5_0.soup_bin_tcp_packet.fields(buffer, offset, packet, parent, size_of_soup_bin_tcp_packet)
    parent:set_len(size_of_soup_bin_tcp_packet)
    local display = nasdaq_nsmequities_orders_ouch_v5_0.soup_bin_tcp_packet.display(buffer, packet, parent)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    nasdaq_nsmequities_orders_ouch_v5_0.soup_bin_tcp_packet.fields(buffer, offset, packet, parent, size_of_soup_bin_tcp_packet)

    return index
  end
end

-- Remaining Bytes For: Soup Bin Tcp Packet
local soup_bin_tcp_packet_bytes_remaining = function(buffer, index, available)
  -- Calculate the number of bytes remaining
  local remaining = available - index

  -- Check if packet size can be read
  if remaining < nasdaq_nsmequities_orders_ouch_v5_0.packet_header.size then
    return -DESEGMENT_ONE_MORE_SEGMENT
  end

  -- Parse runtime size
  local current = buffer(index, 2):uint() + 2

  -- Check if enough bytes remain
  if remaining < current then
    return -(current - remaining)
  end

  return remaining, current
end

-- Packet
nasdaq_nsmequities_orders_ouch_v5_0.packet = {}

-- Dissect Packet
nasdaq_nsmequities_orders_ouch_v5_0.packet.dissect = function(buffer, packet, parent)
  local index = 0

  -- Dependency for Soup Bin Tcp Packet
  local end_of_payload = buffer:len()

  -- Soup Bin Tcp Packet: Struct of 2 fields
  while index < end_of_payload do

    -- Are minimum number of bytes are available?
    local available, size_of_soup_bin_tcp_packet = soup_bin_tcp_packet_bytes_remaining(buffer, index, end_of_payload)

    if available > 0 then
      index = nasdaq_nsmequities_orders_ouch_v5_0.soup_bin_tcp_packet.dissect(buffer, index, packet, parent, size_of_soup_bin_tcp_packet)
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
function omi_nasdaq_nsmequities_orders_ouch_v5_0.init()
end

-- Dissector for Nasdaq NsmEquities Orders Ouch 5.0
function omi_nasdaq_nsmequities_orders_ouch_v5_0.dissector(buffer, packet, parent)

  -- Set protocol name
  packet.cols.protocol = omi_nasdaq_nsmequities_orders_ouch_v5_0.name

  -- Dissect protocol
  local protocol = parent:add(omi_nasdaq_nsmequities_orders_ouch_v5_0, buffer(), omi_nasdaq_nsmequities_orders_ouch_v5_0.description, "("..buffer:len().." Bytes)")
  return nasdaq_nsmequities_orders_ouch_v5_0.packet.dissect(buffer, packet, protocol)
end

-- Register With Tcp Table
local tcp_table = DissectorTable.get("tcp.port")
tcp_table:add(65333, omi_nasdaq_nsmequities_orders_ouch_v5_0)


-----------------------------------------------------------------------
-- Protocol Heuristics
-----------------------------------------------------------------------

-- Verify size of packet
nasdaq_nsmequities_orders_ouch_v5_0.packet.requiredsize = function(buffer)

  return true
end

-- Dissector Heuristic for Nasdaq NsmEquities Orders Ouch 5.0
local function omi_nasdaq_nsmequities_orders_ouch_v5_0_heuristic(buffer, packet, parent)
  -- Verify packet length
  if not nasdaq_nsmequities_orders_ouch_v5_0.packet.requiredsize(buffer) then return false end

  -- Protocol is valid, set conversation and dissect this packet
  packet.conversation = omi_nasdaq_nsmequities_orders_ouch_v5_0
  omi_nasdaq_nsmequities_orders_ouch_v5_0.dissector(buffer, packet, parent)

  return true
end

-- Register Heuristic for Nasdaq NsmEquities Orders Ouch 5.0
omi_nasdaq_nsmequities_orders_ouch_v5_0:register_heuristic("tcp", omi_nasdaq_nsmequities_orders_ouch_v5_0_heuristic)

-----------------------------------------------------------------------
-- Lua dissectors are an easily edited and modified cross-platform dissection solution.
-- Feel free to modify. Enjoy.
-----------------------------------------------------------------------
-- 
-- Protocol:
--   Organization: National Association of Securities Dealers Automated Quotations
--   Version: 5.0
--   Date: Saturday, April 1, 2023
--   Specification: OUCH5.0.pdf
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
