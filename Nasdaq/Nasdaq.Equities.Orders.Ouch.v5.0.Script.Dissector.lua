-----------------------------------------------------------------------
-- Lua Script Wireshark Dissector
-- 
-- Please see end of file for rules and regulations
-----------------------------------------------------------------------

-- Nasdaq Equities Orders Ouch 5.0 Protocol
local nasdaq_equities_orders_ouch_v5_0 = Proto("Nasdaq.Equities.Orders.Ouch.v5.0.Lua", "Nasdaq Equities Orders Ouch 5.0")

-- Component Tables
local show = {}
local format = {}
local nasdaq_equities_orders_ouch_v5_0_display = {}
local nasdaq_equities_orders_ouch_v5_0_dissect = {}
local nasdaq_equities_orders_ouch_v5_0_size_of = {}
local verify = {}

-----------------------------------------------------------------------
-- Declare Protocol Fields
-----------------------------------------------------------------------

-- Nasdaq Equities Orders Ouch 5.0 Fields
nasdaq_equities_orders_ouch_v5_0.fields.account_query_response_message = ProtoField.new("Account Query Response Message", "nasdaq.equities.orders.ouch.v5.0.accountqueryresponsemessage", ftypes.STRING)
nasdaq_equities_orders_ouch_v5_0.fields.aiq_canceled_message = ProtoField.new("Aiq Canceled Message", "nasdaq.equities.orders.ouch.v5.0.aiqcanceledmessage", ftypes.STRING)
nasdaq_equities_orders_ouch_v5_0.fields.appendage_length = ProtoField.new("Appendage Length", "nasdaq.equities.orders.ouch.v5.0.appendagelength", ftypes.UINT16)
nasdaq_equities_orders_ouch_v5_0.fields.bbo_weight_indicator = ProtoField.new("Bbo Weight Indicator", "nasdaq.equities.orders.ouch.v5.0.bboweightindicator", ftypes.STRING)
nasdaq_equities_orders_ouch_v5_0.fields.broken_trade_message = ProtoField.new("Broken Trade Message", "nasdaq.equities.orders.ouch.v5.0.brokentrademessage", ftypes.STRING)
nasdaq_equities_orders_ouch_v5_0.fields.broken_trade_reason = ProtoField.new("Broken Trade Reason", "nasdaq.equities.orders.ouch.v5.0.brokentradereason", ftypes.STRING)
nasdaq_equities_orders_ouch_v5_0.fields.cancel_order_message = ProtoField.new("Cancel Order Message", "nasdaq.equities.orders.ouch.v5.0.cancelordermessage", ftypes.STRING)
nasdaq_equities_orders_ouch_v5_0.fields.cancel_pending_message = ProtoField.new("Cancel Pending Message", "nasdaq.equities.orders.ouch.v5.0.cancelpendingmessage", ftypes.STRING)
nasdaq_equities_orders_ouch_v5_0.fields.cancel_reject_message = ProtoField.new("Cancel Reject Message", "nasdaq.equities.orders.ouch.v5.0.cancelrejectmessage", ftypes.STRING)
nasdaq_equities_orders_ouch_v5_0.fields.canceled_message = ProtoField.new("Canceled Message", "nasdaq.equities.orders.ouch.v5.0.canceledmessage", ftypes.STRING)
nasdaq_equities_orders_ouch_v5_0.fields.capacity = ProtoField.new("Capacity", "nasdaq.equities.orders.ouch.v5.0.capacity", ftypes.STRING)
nasdaq_equities_orders_ouch_v5_0.fields.cl_ord_id = ProtoField.new("Cl Ord Id", "nasdaq.equities.orders.ouch.v5.0.clordid", ftypes.STRING)
nasdaq_equities_orders_ouch_v5_0.fields.cross_type = ProtoField.new("Cross Type", "nasdaq.equities.orders.ouch.v5.0.crosstype", ftypes.STRING)
nasdaq_equities_orders_ouch_v5_0.fields.customer_type = ProtoField.new("Customer Type", "nasdaq.equities.orders.ouch.v5.0.customertype", ftypes.STRING)
nasdaq_equities_orders_ouch_v5_0.fields.data = ProtoField.new("Data", "nasdaq.equities.orders.ouch.v5.0.data", ftypes.STRING)
nasdaq_equities_orders_ouch_v5_0.fields.debug_packet = ProtoField.new("Debug Packet", "nasdaq.equities.orders.ouch.v5.0.debugpacket", ftypes.STRING)
nasdaq_equities_orders_ouch_v5_0.fields.decrement_shares = ProtoField.new("Decrement Shares", "nasdaq.equities.orders.ouch.v5.0.decrementshares", ftypes.UINT32)
nasdaq_equities_orders_ouch_v5_0.fields.discretion = ProtoField.new("Discretion", "nasdaq.equities.orders.ouch.v5.0.discretion", ftypes.STRING)
nasdaq_equities_orders_ouch_v5_0.fields.discretion_peg_offset = ProtoField.new("Discretion Peg Offset", "nasdaq.equities.orders.ouch.v5.0.discretionpegoffset", ftypes.INT32)
nasdaq_equities_orders_ouch_v5_0.fields.discretion_peg_type = ProtoField.new("Discretion Peg Type", "nasdaq.equities.orders.ouch.v5.0.discretionpegtype", ftypes.STRING)
nasdaq_equities_orders_ouch_v5_0.fields.discretion_price = ProtoField.new("Discretion Price", "nasdaq.equities.orders.ouch.v5.0.discretionprice", ftypes.INT64)
nasdaq_equities_orders_ouch_v5_0.fields.display = ProtoField.new("Display", "nasdaq.equities.orders.ouch.v5.0.display", ftypes.STRING)
nasdaq_equities_orders_ouch_v5_0.fields.display_price = ProtoField.new("Display Price", "nasdaq.equities.orders.ouch.v5.0.displayprice", ftypes.INT64)
nasdaq_equities_orders_ouch_v5_0.fields.display_quantity = ProtoField.new("Display Quantity", "nasdaq.equities.orders.ouch.v5.0.displayquantity", ftypes.UINT32)
nasdaq_equities_orders_ouch_v5_0.fields.enter_order_appendage = ProtoField.new("Enter Order Appendage", "nasdaq.equities.orders.ouch.v5.0.enterorderappendage", ftypes.STRING)
nasdaq_equities_orders_ouch_v5_0.fields.enter_order_message = ProtoField.new("Enter Order Message", "nasdaq.equities.orders.ouch.v5.0.enterordermessage", ftypes.STRING)
nasdaq_equities_orders_ouch_v5_0.fields.enter_order_optional_field_length = ProtoField.new("Enter Order Optional Field Length", "nasdaq.equities.orders.ouch.v5.0.enterorderoptionalfieldlength", ftypes.INT8)
nasdaq_equities_orders_ouch_v5_0.fields.enter_order_optional_tag = ProtoField.new("Enter Order Optional Tag", "nasdaq.equities.orders.ouch.v5.0.enterorderoptionaltag", ftypes.INT8)
nasdaq_equities_orders_ouch_v5_0.fields.enter_order_optional_value = ProtoField.new("Enter Order Optional Value", "nasdaq.equities.orders.ouch.v5.0.enterorderoptionalvalue", ftypes.STRING)
nasdaq_equities_orders_ouch_v5_0.fields.event_code = ProtoField.new("Event Code", "nasdaq.equities.orders.ouch.v5.0.eventcode", ftypes.STRING)
nasdaq_equities_orders_ouch_v5_0.fields.execution_price = ProtoField.new("Execution Price", "nasdaq.equities.orders.ouch.v5.0.executionprice", ftypes.INT64)
nasdaq_equities_orders_ouch_v5_0.fields.expire_time = ProtoField.new("Expire Time", "nasdaq.equities.orders.ouch.v5.0.expiretime", ftypes.UINT32)
nasdaq_equities_orders_ouch_v5_0.fields.firm = ProtoField.new("Firm", "nasdaq.equities.orders.ouch.v5.0.firm", ftypes.STRING)
nasdaq_equities_orders_ouch_v5_0.fields.handle_inst = ProtoField.new("Handle Inst", "nasdaq.equities.orders.ouch.v5.0.handleinst", ftypes.STRING)
nasdaq_equities_orders_ouch_v5_0.fields.inter_market_sweep_eligibility = ProtoField.new("Inter Market Sweep Eligibility", "nasdaq.equities.orders.ouch.v5.0.intermarketsweepeligibility", ftypes.STRING)
nasdaq_equities_orders_ouch_v5_0.fields.liquidity_flag = ProtoField.new("Liquidity Flag", "nasdaq.equities.orders.ouch.v5.0.liquidityflag", ftypes.STRING)
nasdaq_equities_orders_ouch_v5_0.fields.login_accepted_packet = ProtoField.new("Login Accepted Packet", "nasdaq.equities.orders.ouch.v5.0.loginacceptedpacket", ftypes.STRING)
nasdaq_equities_orders_ouch_v5_0.fields.login_rejected_packet = ProtoField.new("Login Rejected Packet", "nasdaq.equities.orders.ouch.v5.0.loginrejectedpacket", ftypes.STRING)
nasdaq_equities_orders_ouch_v5_0.fields.login_request_packet = ProtoField.new("Login Request Packet", "nasdaq.equities.orders.ouch.v5.0.loginrequestpacket", ftypes.STRING)
nasdaq_equities_orders_ouch_v5_0.fields.match_number = ProtoField.new("Match Number", "nasdaq.equities.orders.ouch.v5.0.matchnumber", ftypes.UINT64)
nasdaq_equities_orders_ouch_v5_0.fields.max_floor = ProtoField.new("Max Floor", "nasdaq.equities.orders.ouch.v5.0.maxfloor", ftypes.UINT32)
nasdaq_equities_orders_ouch_v5_0.fields.message = ProtoField.new("Message", "nasdaq.equities.orders.ouch.v5.0.message", ftypes.STRING)
nasdaq_equities_orders_ouch_v5_0.fields.message_type = ProtoField.new("Message Type", "nasdaq.equities.orders.ouch.v5.0.messagetype", ftypes.STRING)
nasdaq_equities_orders_ouch_v5_0.fields.min_qty = ProtoField.new("Min Qty", "nasdaq.equities.orders.ouch.v5.0.minqty", ftypes.UINT32)
nasdaq_equities_orders_ouch_v5_0.fields.modify_order_message = ProtoField.new("Modify Order Message", "nasdaq.equities.orders.ouch.v5.0.modifyordermessage", ftypes.STRING)
nasdaq_equities_orders_ouch_v5_0.fields.next_user_ref_num = ProtoField.new("Next User Ref Num", "nasdaq.equities.orders.ouch.v5.0.nextuserrefnum", ftypes.UINT32)
nasdaq_equities_orders_ouch_v5_0.fields.order_accepted_appendage = ProtoField.new("Order Accepted Appendage", "nasdaq.equities.orders.ouch.v5.0.orderacceptedappendage", ftypes.STRING)
nasdaq_equities_orders_ouch_v5_0.fields.order_accepted_message = ProtoField.new("Order Accepted Message", "nasdaq.equities.orders.ouch.v5.0.orderacceptedmessage", ftypes.STRING)
nasdaq_equities_orders_ouch_v5_0.fields.order_accepted_optional_field_length = ProtoField.new("Order Accepted Optional Field Length", "nasdaq.equities.orders.ouch.v5.0.orderacceptedoptionalfieldlength", ftypes.INT8)
nasdaq_equities_orders_ouch_v5_0.fields.order_accepted_optional_tag = ProtoField.new("Order Accepted Optional Tag", "nasdaq.equities.orders.ouch.v5.0.orderacceptedoptionaltag", ftypes.INT8)
nasdaq_equities_orders_ouch_v5_0.fields.order_accepted_optional_value = ProtoField.new("Order Accepted Optional Value", "nasdaq.equities.orders.ouch.v5.0.orderacceptedoptionalvalue", ftypes.STRING)
nasdaq_equities_orders_ouch_v5_0.fields.order_executed_appendage = ProtoField.new("Order Executed Appendage", "nasdaq.equities.orders.ouch.v5.0.orderexecutedappendage", ftypes.STRING)
nasdaq_equities_orders_ouch_v5_0.fields.order_executed_message = ProtoField.new("Order Executed Message", "nasdaq.equities.orders.ouch.v5.0.orderexecutedmessage", ftypes.STRING)
nasdaq_equities_orders_ouch_v5_0.fields.order_executed_optional_field_length = ProtoField.new("Order Executed Optional Field Length", "nasdaq.equities.orders.ouch.v5.0.orderexecutedoptionalfieldlength", ftypes.INT8)
nasdaq_equities_orders_ouch_v5_0.fields.order_executed_optional_tag = ProtoField.new("Order Executed Optional Tag", "nasdaq.equities.orders.ouch.v5.0.orderexecutedoptionaltag", ftypes.INT8)
nasdaq_equities_orders_ouch_v5_0.fields.order_executed_optional_value = ProtoField.new("Order Executed Optional Value", "nasdaq.equities.orders.ouch.v5.0.orderexecutedoptionalvalue", ftypes.STRING)
nasdaq_equities_orders_ouch_v5_0.fields.order_modified_message = ProtoField.new("Order Modified Message", "nasdaq.equities.orders.ouch.v5.0.ordermodifiedmessage", ftypes.STRING)
nasdaq_equities_orders_ouch_v5_0.fields.order_priority_update_message = ProtoField.new("Order Priority Update Message", "nasdaq.equities.orders.ouch.v5.0.orderpriorityupdatemessage", ftypes.STRING)
nasdaq_equities_orders_ouch_v5_0.fields.order_reference_number = ProtoField.new("Order Reference Number", "nasdaq.equities.orders.ouch.v5.0.orderreferencenumber", ftypes.UINT64)
nasdaq_equities_orders_ouch_v5_0.fields.order_restated_appendage = ProtoField.new("Order Restated Appendage", "nasdaq.equities.orders.ouch.v5.0.orderrestatedappendage", ftypes.STRING)
nasdaq_equities_orders_ouch_v5_0.fields.order_restated_message = ProtoField.new("Order Restated Message", "nasdaq.equities.orders.ouch.v5.0.orderrestatedmessage", ftypes.STRING)
nasdaq_equities_orders_ouch_v5_0.fields.order_restated_optional_field_length = ProtoField.new("Order Restated Optional Field Length", "nasdaq.equities.orders.ouch.v5.0.orderrestatedoptionalfieldlength", ftypes.INT8)
nasdaq_equities_orders_ouch_v5_0.fields.order_restated_optional_tag = ProtoField.new("Order Restated Optional Tag", "nasdaq.equities.orders.ouch.v5.0.orderrestatedoptionaltag", ftypes.INT8)
nasdaq_equities_orders_ouch_v5_0.fields.order_restated_optional_value = ProtoField.new("Order Restated Optional Value", "nasdaq.equities.orders.ouch.v5.0.orderrestatedoptionalvalue", ftypes.STRING)
nasdaq_equities_orders_ouch_v5_0.fields.order_restated_reason = ProtoField.new("Order Restated Reason", "nasdaq.equities.orders.ouch.v5.0.orderrestatedreason", ftypes.STRING)
nasdaq_equities_orders_ouch_v5_0.fields.order_state = ProtoField.new("Order State", "nasdaq.equities.orders.ouch.v5.0.orderstate", ftypes.STRING)
nasdaq_equities_orders_ouch_v5_0.fields.orig_user_ref_num = ProtoField.new("Orig User Ref Num", "nasdaq.equities.orders.ouch.v5.0.origuserrefnum", ftypes.UINT32)
nasdaq_equities_orders_ouch_v5_0.fields.packet = ProtoField.new("Packet", "nasdaq.equities.orders.ouch.v5.0.packet", ftypes.STRING)
nasdaq_equities_orders_ouch_v5_0.fields.packet_header = ProtoField.new("Packet Header", "nasdaq.equities.orders.ouch.v5.0.packetheader", ftypes.STRING)
nasdaq_equities_orders_ouch_v5_0.fields.packet_length = ProtoField.new("Packet Length", "nasdaq.equities.orders.ouch.v5.0.packetlength", ftypes.UINT16)
nasdaq_equities_orders_ouch_v5_0.fields.packet_type = ProtoField.new("Packet Type", "nasdaq.equities.orders.ouch.v5.0.packettype", ftypes.STRING)
nasdaq_equities_orders_ouch_v5_0.fields.password = ProtoField.new("Password", "nasdaq.equities.orders.ouch.v5.0.password", ftypes.STRING)
nasdaq_equities_orders_ouch_v5_0.fields.payload = ProtoField.new("Payload", "nasdaq.equities.orders.ouch.v5.0.payload", ftypes.STRING)
nasdaq_equities_orders_ouch_v5_0.fields.peg_offset = ProtoField.new("Peg Offset", "nasdaq.equities.orders.ouch.v5.0.pegoffset", ftypes.INT32)
nasdaq_equities_orders_ouch_v5_0.fields.post_only = ProtoField.new("Post Only", "nasdaq.equities.orders.ouch.v5.0.postonly", ftypes.STRING)
nasdaq_equities_orders_ouch_v5_0.fields.price = ProtoField.new("Price", "nasdaq.equities.orders.ouch.v5.0.price", ftypes.INT64)
nasdaq_equities_orders_ouch_v5_0.fields.price_type = ProtoField.new("Price Type", "nasdaq.equities.orders.ouch.v5.0.pricetype", ftypes.STRING)
nasdaq_equities_orders_ouch_v5_0.fields.quantity = ProtoField.new("Quantity", "nasdaq.equities.orders.ouch.v5.0.quantity", ftypes.UINT32)
nasdaq_equities_orders_ouch_v5_0.fields.quantity_prevented_from_trading = ProtoField.new("Quantity Prevented From Trading", "nasdaq.equities.orders.ouch.v5.0.quantitypreventedfromtrading", ftypes.UINT32)
nasdaq_equities_orders_ouch_v5_0.fields.random_reserves = ProtoField.new("Random Reserves", "nasdaq.equities.orders.ouch.v5.0.randomreserves", ftypes.UINT32)
nasdaq_equities_orders_ouch_v5_0.fields.reason = ProtoField.new("Reason", "nasdaq.equities.orders.ouch.v5.0.reason", ftypes.UINT8)
nasdaq_equities_orders_ouch_v5_0.fields.reference_price = ProtoField.new("Reference Price", "nasdaq.equities.orders.ouch.v5.0.referenceprice", ftypes.INT64)
nasdaq_equities_orders_ouch_v5_0.fields.reference_price_type = ProtoField.new("Reference Price Type", "nasdaq.equities.orders.ouch.v5.0.referencepricetype", ftypes.STRING)
nasdaq_equities_orders_ouch_v5_0.fields.reject_reason_code = ProtoField.new("Reject Reason Code", "nasdaq.equities.orders.ouch.v5.0.rejectreasoncode", ftypes.STRING)
nasdaq_equities_orders_ouch_v5_0.fields.rejected_order_message = ProtoField.new("Rejected Order Message", "nasdaq.equities.orders.ouch.v5.0.rejectedordermessage", ftypes.STRING)
nasdaq_equities_orders_ouch_v5_0.fields.rejected_order_reason = ProtoField.new("Rejected Order Reason", "nasdaq.equities.orders.ouch.v5.0.rejectedorderreason", ftypes.UINT16)
nasdaq_equities_orders_ouch_v5_0.fields.replace_order_appendage = ProtoField.new("Replace Order Appendage", "nasdaq.equities.orders.ouch.v5.0.replaceorderappendage", ftypes.STRING)
nasdaq_equities_orders_ouch_v5_0.fields.replace_order_message = ProtoField.new("Replace Order Message", "nasdaq.equities.orders.ouch.v5.0.replaceordermessage", ftypes.STRING)
nasdaq_equities_orders_ouch_v5_0.fields.replace_order_optional_field_length = ProtoField.new("Replace Order Optional Field Length", "nasdaq.equities.orders.ouch.v5.0.replaceorderoptionalfieldlength", ftypes.INT8)
nasdaq_equities_orders_ouch_v5_0.fields.replace_order_optional_tag = ProtoField.new("Replace Order Optional Tag", "nasdaq.equities.orders.ouch.v5.0.replaceorderoptionaltag", ftypes.INT8)
nasdaq_equities_orders_ouch_v5_0.fields.replace_order_optional_value = ProtoField.new("Replace Order Optional Value", "nasdaq.equities.orders.ouch.v5.0.replaceorderoptionalvalue", ftypes.STRING)
nasdaq_equities_orders_ouch_v5_0.fields.replaced_message = ProtoField.new("Replaced Message", "nasdaq.equities.orders.ouch.v5.0.replacedmessage", ftypes.STRING)
nasdaq_equities_orders_ouch_v5_0.fields.requested_sequence_number = ProtoField.new("Requested Sequence Number", "nasdaq.equities.orders.ouch.v5.0.requestedsequencenumber", ftypes.STRING)
nasdaq_equities_orders_ouch_v5_0.fields.requested_session = ProtoField.new("Requested Session", "nasdaq.equities.orders.ouch.v5.0.requestedsession", ftypes.STRING)
nasdaq_equities_orders_ouch_v5_0.fields.route = ProtoField.new("Route", "nasdaq.equities.orders.ouch.v5.0.route", ftypes.STRING)
nasdaq_equities_orders_ouch_v5_0.fields.secondary_ord_ref_num = ProtoField.new("Secondary Ord Ref Num", "nasdaq.equities.orders.ouch.v5.0.secondaryordrefnum", ftypes.UINT64)
nasdaq_equities_orders_ouch_v5_0.fields.sequence_number = ProtoField.new("Sequence Number", "nasdaq.equities.orders.ouch.v5.0.sequencenumber", ftypes.STRING)
nasdaq_equities_orders_ouch_v5_0.fields.sequenced_data_packet = ProtoField.new("Sequenced Data Packet", "nasdaq.equities.orders.ouch.v5.0.sequenceddatapacket", ftypes.STRING)
nasdaq_equities_orders_ouch_v5_0.fields.session = ProtoField.new("Session", "nasdaq.equities.orders.ouch.v5.0.session", ftypes.STRING)
nasdaq_equities_orders_ouch_v5_0.fields.side = ProtoField.new("Side", "nasdaq.equities.orders.ouch.v5.0.side", ftypes.STRING)
nasdaq_equities_orders_ouch_v5_0.fields.soup_bin_tcp_packet = ProtoField.new("Soup Bin Tcp Packet", "nasdaq.equities.orders.ouch.v5.0.soupbintcppacket", ftypes.STRING)
nasdaq_equities_orders_ouch_v5_0.fields.symbol = ProtoField.new("Symbol", "nasdaq.equities.orders.ouch.v5.0.symbol", ftypes.STRING)
nasdaq_equities_orders_ouch_v5_0.fields.system_event_message = ProtoField.new("System Event Message", "nasdaq.equities.orders.ouch.v5.0.systemeventmessage", ftypes.STRING)
nasdaq_equities_orders_ouch_v5_0.fields.text = ProtoField.new("Text", "nasdaq.equities.orders.ouch.v5.0.text", ftypes.STRING)
nasdaq_equities_orders_ouch_v5_0.fields.time_in_force = ProtoField.new("Time In Force", "nasdaq.equities.orders.ouch.v5.0.timeinforce", ftypes.STRING)
nasdaq_equities_orders_ouch_v5_0.fields.timestamp = ProtoField.new("Timestamp", "nasdaq.equities.orders.ouch.v5.0.timestamp", ftypes.UINT64)
nasdaq_equities_orders_ouch_v5_0.fields.trade_correction_message = ProtoField.new("Trade Correction Message", "nasdaq.equities.orders.ouch.v5.0.tradecorrectionmessage", ftypes.STRING)
nasdaq_equities_orders_ouch_v5_0.fields.trade_correction_reason = ProtoField.new("Trade Correction Reason", "nasdaq.equities.orders.ouch.v5.0.tradecorrectionreason", ftypes.STRING)
nasdaq_equities_orders_ouch_v5_0.fields.trade_now = ProtoField.new("Trade Now", "nasdaq.equities.orders.ouch.v5.0.tradenow", ftypes.STRING)
nasdaq_equities_orders_ouch_v5_0.fields.uesr_ref_num = ProtoField.new("Uesr Ref Num", "nasdaq.equities.orders.ouch.v5.0.uesrrefnum", ftypes.UINT32)
nasdaq_equities_orders_ouch_v5_0.fields.unsequenced_data_packet = ProtoField.new("Unsequenced Data Packet", "nasdaq.equities.orders.ouch.v5.0.unsequenceddatapacket", ftypes.STRING)
nasdaq_equities_orders_ouch_v5_0.fields.user_ref_num = ProtoField.new("User Ref Num", "nasdaq.equities.orders.ouch.v5.0.userrefnum", ftypes.UINT32)
nasdaq_equities_orders_ouch_v5_0.fields.username = ProtoField.new("Username", "nasdaq.equities.orders.ouch.v5.0.username", ftypes.STRING)

-----------------------------------------------------------------------
-- Declare Dissection Options
-----------------------------------------------------------------------

-- Nasdaq Equities Orders Ouch 5.0 Element Dissection Options
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
show.message = true
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
show.sequenced_data_packet = true
show.soup_bin_tcp_packet = true
show.system_event_message = true
show.trade_correction_message = true
show.unsequenced_data_packet = true
show.data = false
show.enter_order_optional_value = false
show.order_accepted_optional_value = false
show.order_executed_optional_value = false
show.order_restated_optional_value = false
show.payload = false
show.replace_order_optional_value = false

-- Register Nasdaq Equities Orders Ouch 5.0 Show Options
nasdaq_equities_orders_ouch_v5_0.prefs.show_account_query_response_message = Pref.bool("Show Account Query Response Message", show.account_query_response_message, "Parse and add Account Query Response Message to protocol tree")
nasdaq_equities_orders_ouch_v5_0.prefs.show_aiq_canceled_message = Pref.bool("Show Aiq Canceled Message", show.aiq_canceled_message, "Parse and add Aiq Canceled Message to protocol tree")
nasdaq_equities_orders_ouch_v5_0.prefs.show_broken_trade_message = Pref.bool("Show Broken Trade Message", show.broken_trade_message, "Parse and add Broken Trade Message to protocol tree")
nasdaq_equities_orders_ouch_v5_0.prefs.show_cancel_order_message = Pref.bool("Show Cancel Order Message", show.cancel_order_message, "Parse and add Cancel Order Message to protocol tree")
nasdaq_equities_orders_ouch_v5_0.prefs.show_cancel_pending_message = Pref.bool("Show Cancel Pending Message", show.cancel_pending_message, "Parse and add Cancel Pending Message to protocol tree")
nasdaq_equities_orders_ouch_v5_0.prefs.show_cancel_reject_message = Pref.bool("Show Cancel Reject Message", show.cancel_reject_message, "Parse and add Cancel Reject Message to protocol tree")
nasdaq_equities_orders_ouch_v5_0.prefs.show_canceled_message = Pref.bool("Show Canceled Message", show.canceled_message, "Parse and add Canceled Message to protocol tree")
nasdaq_equities_orders_ouch_v5_0.prefs.show_debug_packet = Pref.bool("Show Debug Packet", show.debug_packet, "Parse and add Debug Packet to protocol tree")
nasdaq_equities_orders_ouch_v5_0.prefs.show_enter_order_appendage = Pref.bool("Show Enter Order Appendage", show.enter_order_appendage, "Parse and add Enter Order Appendage to protocol tree")
nasdaq_equities_orders_ouch_v5_0.prefs.show_enter_order_message = Pref.bool("Show Enter Order Message", show.enter_order_message, "Parse and add Enter Order Message to protocol tree")
nasdaq_equities_orders_ouch_v5_0.prefs.show_login_accepted_packet = Pref.bool("Show Login Accepted Packet", show.login_accepted_packet, "Parse and add Login Accepted Packet to protocol tree")
nasdaq_equities_orders_ouch_v5_0.prefs.show_login_rejected_packet = Pref.bool("Show Login Rejected Packet", show.login_rejected_packet, "Parse and add Login Rejected Packet to protocol tree")
nasdaq_equities_orders_ouch_v5_0.prefs.show_login_request_packet = Pref.bool("Show Login Request Packet", show.login_request_packet, "Parse and add Login Request Packet to protocol tree")
nasdaq_equities_orders_ouch_v5_0.prefs.show_message = Pref.bool("Show Message", show.message, "Parse and add Message to protocol tree")
nasdaq_equities_orders_ouch_v5_0.prefs.show_modify_order_message = Pref.bool("Show Modify Order Message", show.modify_order_message, "Parse and add Modify Order Message to protocol tree")
nasdaq_equities_orders_ouch_v5_0.prefs.show_order_accepted_appendage = Pref.bool("Show Order Accepted Appendage", show.order_accepted_appendage, "Parse and add Order Accepted Appendage to protocol tree")
nasdaq_equities_orders_ouch_v5_0.prefs.show_order_accepted_message = Pref.bool("Show Order Accepted Message", show.order_accepted_message, "Parse and add Order Accepted Message to protocol tree")
nasdaq_equities_orders_ouch_v5_0.prefs.show_order_executed_appendage = Pref.bool("Show Order Executed Appendage", show.order_executed_appendage, "Parse and add Order Executed Appendage to protocol tree")
nasdaq_equities_orders_ouch_v5_0.prefs.show_order_executed_message = Pref.bool("Show Order Executed Message", show.order_executed_message, "Parse and add Order Executed Message to protocol tree")
nasdaq_equities_orders_ouch_v5_0.prefs.show_order_modified_message = Pref.bool("Show Order Modified Message", show.order_modified_message, "Parse and add Order Modified Message to protocol tree")
nasdaq_equities_orders_ouch_v5_0.prefs.show_order_priority_update_message = Pref.bool("Show Order Priority Update Message", show.order_priority_update_message, "Parse and add Order Priority Update Message to protocol tree")
nasdaq_equities_orders_ouch_v5_0.prefs.show_order_restated_appendage = Pref.bool("Show Order Restated Appendage", show.order_restated_appendage, "Parse and add Order Restated Appendage to protocol tree")
nasdaq_equities_orders_ouch_v5_0.prefs.show_order_restated_message = Pref.bool("Show Order Restated Message", show.order_restated_message, "Parse and add Order Restated Message to protocol tree")
nasdaq_equities_orders_ouch_v5_0.prefs.show_packet = Pref.bool("Show Packet", show.packet, "Parse and add Packet to protocol tree")
nasdaq_equities_orders_ouch_v5_0.prefs.show_packet_header = Pref.bool("Show Packet Header", show.packet_header, "Parse and add Packet Header to protocol tree")
nasdaq_equities_orders_ouch_v5_0.prefs.show_rejected_order_message = Pref.bool("Show Rejected Order Message", show.rejected_order_message, "Parse and add Rejected Order Message to protocol tree")
nasdaq_equities_orders_ouch_v5_0.prefs.show_replace_order_appendage = Pref.bool("Show Replace Order Appendage", show.replace_order_appendage, "Parse and add Replace Order Appendage to protocol tree")
nasdaq_equities_orders_ouch_v5_0.prefs.show_replace_order_message = Pref.bool("Show Replace Order Message", show.replace_order_message, "Parse and add Replace Order Message to protocol tree")
nasdaq_equities_orders_ouch_v5_0.prefs.show_replaced_message = Pref.bool("Show Replaced Message", show.replaced_message, "Parse and add Replaced Message to protocol tree")
nasdaq_equities_orders_ouch_v5_0.prefs.show_sequenced_data_packet = Pref.bool("Show Sequenced Data Packet", show.sequenced_data_packet, "Parse and add Sequenced Data Packet to protocol tree")
nasdaq_equities_orders_ouch_v5_0.prefs.show_soup_bin_tcp_packet = Pref.bool("Show Soup Bin Tcp Packet", show.soup_bin_tcp_packet, "Parse and add Soup Bin Tcp Packet to protocol tree")
nasdaq_equities_orders_ouch_v5_0.prefs.show_system_event_message = Pref.bool("Show System Event Message", show.system_event_message, "Parse and add System Event Message to protocol tree")
nasdaq_equities_orders_ouch_v5_0.prefs.show_trade_correction_message = Pref.bool("Show Trade Correction Message", show.trade_correction_message, "Parse and add Trade Correction Message to protocol tree")
nasdaq_equities_orders_ouch_v5_0.prefs.show_unsequenced_data_packet = Pref.bool("Show Unsequenced Data Packet", show.unsequenced_data_packet, "Parse and add Unsequenced Data Packet to protocol tree")
nasdaq_equities_orders_ouch_v5_0.prefs.show_data = Pref.bool("Show Data", show.data, "Parse and add Data to protocol tree")
nasdaq_equities_orders_ouch_v5_0.prefs.show_enter_order_optional_value = Pref.bool("Show Enter Order Optional Value", show.enter_order_optional_value, "Parse and add Enter Order Optional Value to protocol tree")
nasdaq_equities_orders_ouch_v5_0.prefs.show_order_accepted_optional_value = Pref.bool("Show Order Accepted Optional Value", show.order_accepted_optional_value, "Parse and add Order Accepted Optional Value to protocol tree")
nasdaq_equities_orders_ouch_v5_0.prefs.show_order_executed_optional_value = Pref.bool("Show Order Executed Optional Value", show.order_executed_optional_value, "Parse and add Order Executed Optional Value to protocol tree")
nasdaq_equities_orders_ouch_v5_0.prefs.show_order_restated_optional_value = Pref.bool("Show Order Restated Optional Value", show.order_restated_optional_value, "Parse and add Order Restated Optional Value to protocol tree")
nasdaq_equities_orders_ouch_v5_0.prefs.show_payload = Pref.bool("Show Payload", show.payload, "Parse and add Payload to protocol tree")
nasdaq_equities_orders_ouch_v5_0.prefs.show_replace_order_optional_value = Pref.bool("Show Replace Order Optional Value", show.replace_order_optional_value, "Parse and add Replace Order Optional Value to protocol tree")

-- Handle changed preferences
function nasdaq_equities_orders_ouch_v5_0.prefs_changed()
  local changed = false

  -- Check if show options have changed
  if show.account_query_response_message ~= nasdaq_equities_orders_ouch_v5_0.prefs.show_account_query_response_message then
    show.account_query_response_message = nasdaq_equities_orders_ouch_v5_0.prefs.show_account_query_response_message
    changed = true
  end
  if show.aiq_canceled_message ~= nasdaq_equities_orders_ouch_v5_0.prefs.show_aiq_canceled_message then
    show.aiq_canceled_message = nasdaq_equities_orders_ouch_v5_0.prefs.show_aiq_canceled_message
    changed = true
  end
  if show.broken_trade_message ~= nasdaq_equities_orders_ouch_v5_0.prefs.show_broken_trade_message then
    show.broken_trade_message = nasdaq_equities_orders_ouch_v5_0.prefs.show_broken_trade_message
    changed = true
  end
  if show.cancel_order_message ~= nasdaq_equities_orders_ouch_v5_0.prefs.show_cancel_order_message then
    show.cancel_order_message = nasdaq_equities_orders_ouch_v5_0.prefs.show_cancel_order_message
    changed = true
  end
  if show.cancel_pending_message ~= nasdaq_equities_orders_ouch_v5_0.prefs.show_cancel_pending_message then
    show.cancel_pending_message = nasdaq_equities_orders_ouch_v5_0.prefs.show_cancel_pending_message
    changed = true
  end
  if show.cancel_reject_message ~= nasdaq_equities_orders_ouch_v5_0.prefs.show_cancel_reject_message then
    show.cancel_reject_message = nasdaq_equities_orders_ouch_v5_0.prefs.show_cancel_reject_message
    changed = true
  end
  if show.canceled_message ~= nasdaq_equities_orders_ouch_v5_0.prefs.show_canceled_message then
    show.canceled_message = nasdaq_equities_orders_ouch_v5_0.prefs.show_canceled_message
    changed = true
  end
  if show.debug_packet ~= nasdaq_equities_orders_ouch_v5_0.prefs.show_debug_packet then
    show.debug_packet = nasdaq_equities_orders_ouch_v5_0.prefs.show_debug_packet
    changed = true
  end
  if show.enter_order_appendage ~= nasdaq_equities_orders_ouch_v5_0.prefs.show_enter_order_appendage then
    show.enter_order_appendage = nasdaq_equities_orders_ouch_v5_0.prefs.show_enter_order_appendage
    changed = true
  end
  if show.enter_order_message ~= nasdaq_equities_orders_ouch_v5_0.prefs.show_enter_order_message then
    show.enter_order_message = nasdaq_equities_orders_ouch_v5_0.prefs.show_enter_order_message
    changed = true
  end
  if show.login_accepted_packet ~= nasdaq_equities_orders_ouch_v5_0.prefs.show_login_accepted_packet then
    show.login_accepted_packet = nasdaq_equities_orders_ouch_v5_0.prefs.show_login_accepted_packet
    changed = true
  end
  if show.login_rejected_packet ~= nasdaq_equities_orders_ouch_v5_0.prefs.show_login_rejected_packet then
    show.login_rejected_packet = nasdaq_equities_orders_ouch_v5_0.prefs.show_login_rejected_packet
    changed = true
  end
  if show.login_request_packet ~= nasdaq_equities_orders_ouch_v5_0.prefs.show_login_request_packet then
    show.login_request_packet = nasdaq_equities_orders_ouch_v5_0.prefs.show_login_request_packet
    changed = true
  end
  if show.message ~= nasdaq_equities_orders_ouch_v5_0.prefs.show_message then
    show.message = nasdaq_equities_orders_ouch_v5_0.prefs.show_message
    changed = true
  end
  if show.modify_order_message ~= nasdaq_equities_orders_ouch_v5_0.prefs.show_modify_order_message then
    show.modify_order_message = nasdaq_equities_orders_ouch_v5_0.prefs.show_modify_order_message
    changed = true
  end
  if show.order_accepted_appendage ~= nasdaq_equities_orders_ouch_v5_0.prefs.show_order_accepted_appendage then
    show.order_accepted_appendage = nasdaq_equities_orders_ouch_v5_0.prefs.show_order_accepted_appendage
    changed = true
  end
  if show.order_accepted_message ~= nasdaq_equities_orders_ouch_v5_0.prefs.show_order_accepted_message then
    show.order_accepted_message = nasdaq_equities_orders_ouch_v5_0.prefs.show_order_accepted_message
    changed = true
  end
  if show.order_executed_appendage ~= nasdaq_equities_orders_ouch_v5_0.prefs.show_order_executed_appendage then
    show.order_executed_appendage = nasdaq_equities_orders_ouch_v5_0.prefs.show_order_executed_appendage
    changed = true
  end
  if show.order_executed_message ~= nasdaq_equities_orders_ouch_v5_0.prefs.show_order_executed_message then
    show.order_executed_message = nasdaq_equities_orders_ouch_v5_0.prefs.show_order_executed_message
    changed = true
  end
  if show.order_modified_message ~= nasdaq_equities_orders_ouch_v5_0.prefs.show_order_modified_message then
    show.order_modified_message = nasdaq_equities_orders_ouch_v5_0.prefs.show_order_modified_message
    changed = true
  end
  if show.order_priority_update_message ~= nasdaq_equities_orders_ouch_v5_0.prefs.show_order_priority_update_message then
    show.order_priority_update_message = nasdaq_equities_orders_ouch_v5_0.prefs.show_order_priority_update_message
    changed = true
  end
  if show.order_restated_appendage ~= nasdaq_equities_orders_ouch_v5_0.prefs.show_order_restated_appendage then
    show.order_restated_appendage = nasdaq_equities_orders_ouch_v5_0.prefs.show_order_restated_appendage
    changed = true
  end
  if show.order_restated_message ~= nasdaq_equities_orders_ouch_v5_0.prefs.show_order_restated_message then
    show.order_restated_message = nasdaq_equities_orders_ouch_v5_0.prefs.show_order_restated_message
    changed = true
  end
  if show.packet ~= nasdaq_equities_orders_ouch_v5_0.prefs.show_packet then
    show.packet = nasdaq_equities_orders_ouch_v5_0.prefs.show_packet
    changed = true
  end
  if show.packet_header ~= nasdaq_equities_orders_ouch_v5_0.prefs.show_packet_header then
    show.packet_header = nasdaq_equities_orders_ouch_v5_0.prefs.show_packet_header
    changed = true
  end
  if show.rejected_order_message ~= nasdaq_equities_orders_ouch_v5_0.prefs.show_rejected_order_message then
    show.rejected_order_message = nasdaq_equities_orders_ouch_v5_0.prefs.show_rejected_order_message
    changed = true
  end
  if show.replace_order_appendage ~= nasdaq_equities_orders_ouch_v5_0.prefs.show_replace_order_appendage then
    show.replace_order_appendage = nasdaq_equities_orders_ouch_v5_0.prefs.show_replace_order_appendage
    changed = true
  end
  if show.replace_order_message ~= nasdaq_equities_orders_ouch_v5_0.prefs.show_replace_order_message then
    show.replace_order_message = nasdaq_equities_orders_ouch_v5_0.prefs.show_replace_order_message
    changed = true
  end
  if show.replaced_message ~= nasdaq_equities_orders_ouch_v5_0.prefs.show_replaced_message then
    show.replaced_message = nasdaq_equities_orders_ouch_v5_0.prefs.show_replaced_message
    changed = true
  end
  if show.sequenced_data_packet ~= nasdaq_equities_orders_ouch_v5_0.prefs.show_sequenced_data_packet then
    show.sequenced_data_packet = nasdaq_equities_orders_ouch_v5_0.prefs.show_sequenced_data_packet
    changed = true
  end
  if show.soup_bin_tcp_packet ~= nasdaq_equities_orders_ouch_v5_0.prefs.show_soup_bin_tcp_packet then
    show.soup_bin_tcp_packet = nasdaq_equities_orders_ouch_v5_0.prefs.show_soup_bin_tcp_packet
    changed = true
  end
  if show.system_event_message ~= nasdaq_equities_orders_ouch_v5_0.prefs.show_system_event_message then
    show.system_event_message = nasdaq_equities_orders_ouch_v5_0.prefs.show_system_event_message
    changed = true
  end
  if show.trade_correction_message ~= nasdaq_equities_orders_ouch_v5_0.prefs.show_trade_correction_message then
    show.trade_correction_message = nasdaq_equities_orders_ouch_v5_0.prefs.show_trade_correction_message
    changed = true
  end
  if show.unsequenced_data_packet ~= nasdaq_equities_orders_ouch_v5_0.prefs.show_unsequenced_data_packet then
    show.unsequenced_data_packet = nasdaq_equities_orders_ouch_v5_0.prefs.show_unsequenced_data_packet
    changed = true
  end
  if show.data ~= nasdaq_equities_orders_ouch_v5_0.prefs.show_data then
    show.data = nasdaq_equities_orders_ouch_v5_0.prefs.show_data
    changed = true
  end
  if show.enter_order_optional_value ~= nasdaq_equities_orders_ouch_v5_0.prefs.show_enter_order_optional_value then
    show.enter_order_optional_value = nasdaq_equities_orders_ouch_v5_0.prefs.show_enter_order_optional_value
    changed = true
  end
  if show.order_accepted_optional_value ~= nasdaq_equities_orders_ouch_v5_0.prefs.show_order_accepted_optional_value then
    show.order_accepted_optional_value = nasdaq_equities_orders_ouch_v5_0.prefs.show_order_accepted_optional_value
    changed = true
  end
  if show.order_executed_optional_value ~= nasdaq_equities_orders_ouch_v5_0.prefs.show_order_executed_optional_value then
    show.order_executed_optional_value = nasdaq_equities_orders_ouch_v5_0.prefs.show_order_executed_optional_value
    changed = true
  end
  if show.order_restated_optional_value ~= nasdaq_equities_orders_ouch_v5_0.prefs.show_order_restated_optional_value then
    show.order_restated_optional_value = nasdaq_equities_orders_ouch_v5_0.prefs.show_order_restated_optional_value
    changed = true
  end
  if show.payload ~= nasdaq_equities_orders_ouch_v5_0.prefs.show_payload then
    show.payload = nasdaq_equities_orders_ouch_v5_0.prefs.show_payload
    changed = true
  end
  if show.replace_order_optional_value ~= nasdaq_equities_orders_ouch_v5_0.prefs.show_replace_order_optional_value then
    show.replace_order_optional_value = nasdaq_equities_orders_ouch_v5_0.prefs.show_replace_order_optional_value
    changed = true
  end

  -- Reload on changed preference
  if changed then
    reload()
  end
end


-----------------------------------------------------------------------
-- Dissect Nasdaq Equities Orders Ouch 5.0
-----------------------------------------------------------------------

-- Size: Next User Ref Num
nasdaq_equities_orders_ouch_v5_0_size_of.next_user_ref_num = 4

-- Display: Next User Ref Num
nasdaq_equities_orders_ouch_v5_0_display.next_user_ref_num = function(value)
  return "Next User Ref Num: "..value
end

-- Dissect: Next User Ref Num
nasdaq_equities_orders_ouch_v5_0_dissect.next_user_ref_num = function(buffer, offset, packet, parent)
  local length = nasdaq_equities_orders_ouch_v5_0_size_of.next_user_ref_num
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_equities_orders_ouch_v5_0_display.next_user_ref_num(value, buffer, offset, packet, parent)

  parent:add(nasdaq_equities_orders_ouch_v5_0.fields.next_user_ref_num, range, value, display)

  return offset + length, value
end

-- Size: Timestamp
nasdaq_equities_orders_ouch_v5_0_size_of.timestamp = 8

-- Display: Timestamp
nasdaq_equities_orders_ouch_v5_0_display.timestamp = function(value)
  return "Timestamp: "..value
end

-- Dissect: Timestamp
nasdaq_equities_orders_ouch_v5_0_dissect.timestamp = function(buffer, offset, packet, parent)
  local length = nasdaq_equities_orders_ouch_v5_0_size_of.timestamp
  local range = buffer(offset, length)
  local value = range:uint64()
  local display = nasdaq_equities_orders_ouch_v5_0_display.timestamp(value, buffer, offset, packet, parent)

  parent:add(nasdaq_equities_orders_ouch_v5_0.fields.timestamp, range, value, display)

  return offset + length, value
end

-- Calculate size of: Account Query Response Message
nasdaq_equities_orders_ouch_v5_0_size_of.account_query_response_message = function(buffer, offset)
  local index = 0

  index = index + nasdaq_equities_orders_ouch_v5_0_size_of.timestamp

  index = index + nasdaq_equities_orders_ouch_v5_0_size_of.next_user_ref_num

  return index
end

-- Display: Account Query Response Message
nasdaq_equities_orders_ouch_v5_0_display.account_query_response_message = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Account Query Response Message
nasdaq_equities_orders_ouch_v5_0_dissect.account_query_response_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Timestamp: 8 Byte Unsigned Fixed Width Integer
  index, timestamp = nasdaq_equities_orders_ouch_v5_0_dissect.timestamp(buffer, index, packet, parent)

  -- Next User Ref Num: 4 Byte Unsigned Fixed Width Integer
  index, next_user_ref_num = nasdaq_equities_orders_ouch_v5_0_dissect.next_user_ref_num(buffer, index, packet, parent)

  return index
end

-- Dissect: Account Query Response Message
nasdaq_equities_orders_ouch_v5_0_dissect.account_query_response_message = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.account_query_response_message then
    local length = nasdaq_equities_orders_ouch_v5_0_size_of.account_query_response_message(buffer, offset)
    local range = buffer(offset, length)
    local display = nasdaq_equities_orders_ouch_v5_0_display.account_query_response_message(buffer, packet, parent)
    parent = parent:add(nasdaq_equities_orders_ouch_v5_0.fields.account_query_response_message, range, display)
  end

  return nasdaq_equities_orders_ouch_v5_0_dissect.account_query_response_message_fields(buffer, offset, packet, parent)
end

-- Size: Secondary Ord Ref Num
nasdaq_equities_orders_ouch_v5_0_size_of.secondary_ord_ref_num = 8

-- Display: Secondary Ord Ref Num
nasdaq_equities_orders_ouch_v5_0_display.secondary_ord_ref_num = function(value)
  return "Secondary Ord Ref Num: "..value
end

-- Dissect: Secondary Ord Ref Num
nasdaq_equities_orders_ouch_v5_0_dissect.secondary_ord_ref_num = function(buffer, offset, packet, parent)
  local length = nasdaq_equities_orders_ouch_v5_0_size_of.secondary_ord_ref_num
  local range = buffer(offset, length)
  local value = range:uint64()
  local display = nasdaq_equities_orders_ouch_v5_0_display.secondary_ord_ref_num(value, buffer, offset, packet, parent)

  parent:add(nasdaq_equities_orders_ouch_v5_0.fields.secondary_ord_ref_num, range, value, display)

  return offset + length, value
end

-- Size: Display Price
nasdaq_equities_orders_ouch_v5_0_size_of.display_price = 8

-- Display: Display Price
nasdaq_equities_orders_ouch_v5_0_display.display_price = function(value)
  return "Display Price: "..value
end

-- Dissect: Display Price
nasdaq_equities_orders_ouch_v5_0_dissect.display_price = function(buffer, offset, packet, parent)
  local length = nasdaq_equities_orders_ouch_v5_0_size_of.display_price
  local range = buffer(offset, length)
  local value = range:int64()
  local display = nasdaq_equities_orders_ouch_v5_0_display.display_price(value, buffer, offset, packet, parent)

  parent:add(nasdaq_equities_orders_ouch_v5_0.fields.display_price, range, value, display)

  return offset + length, value
end

-- Size: Display Quantity
nasdaq_equities_orders_ouch_v5_0_size_of.display_quantity = 4

-- Display: Display Quantity
nasdaq_equities_orders_ouch_v5_0_display.display_quantity = function(value)
  return "Display Quantity: "..value
end

-- Dissect: Display Quantity
nasdaq_equities_orders_ouch_v5_0_dissect.display_quantity = function(buffer, offset, packet, parent)
  local length = nasdaq_equities_orders_ouch_v5_0_size_of.display_quantity
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_equities_orders_ouch_v5_0_display.display_quantity(value, buffer, offset, packet, parent)

  parent:add(nasdaq_equities_orders_ouch_v5_0.fields.display_quantity, range, value, display)

  return offset + length, value
end

-- Calculate runtime size of: Order Restated Optional Value
nasdaq_equities_orders_ouch_v5_0_size_of.order_restated_optional_value = function(buffer, offset, order_restated_optional_tag)
  -- Size of Display Quantity
  if order_restated_optional_tag == 22 then
    return nasdaq_equities_orders_ouch_v5_0_size_of.display_quantity(buffer, offset)
  end
  -- Size of Display Price
  if order_restated_optional_tag == 23 then
    return nasdaq_equities_orders_ouch_v5_0_size_of.display_price(buffer, offset)
  end
  -- Size of Secondary Ord Ref Num
  if order_restated_optional_tag == 1 then
    return nasdaq_equities_orders_ouch_v5_0_size_of.secondary_ord_ref_num(buffer, offset)
  end

  return 0
end

-- Display: Order Restated Optional Value
nasdaq_equities_orders_ouch_v5_0_display.order_restated_optional_value = function(buffer, offset, packet, parent)
  return ""
end

-- Dissect Branches: Order Restated Optional Value
nasdaq_equities_orders_ouch_v5_0_dissect.order_restated_optional_value_branches = function(buffer, offset, packet, parent, order_restated_optional_tag)
  -- Dissect Display Quantity
  if order_restated_optional_tag == 22 then
    return nasdaq_equities_orders_ouch_v5_0_dissect.display_quantity(buffer, offset, packet, parent)
  end
  -- Dissect Display Price
  if order_restated_optional_tag == 23 then
    return nasdaq_equities_orders_ouch_v5_0_dissect.display_price(buffer, offset, packet, parent)
  end
  -- Dissect Secondary Ord Ref Num
  if order_restated_optional_tag == 1 then
    return nasdaq_equities_orders_ouch_v5_0_dissect.secondary_ord_ref_num(buffer, offset, packet, parent)
  end

  return offset
end

-- Dissect: Order Restated Optional Value
nasdaq_equities_orders_ouch_v5_0_dissect.order_restated_optional_value = function(buffer, offset, packet, parent, order_restated_optional_tag)
  if not show.order_restated_optional_value then
    return nasdaq_equities_orders_ouch_v5_0_dissect.order_restated_optional_value_branches(buffer, offset, packet, parent, order_restated_optional_tag)
  end

  -- Calculate size and check that branch is not empty
  local size = nasdaq_equities_orders_ouch_v5_0_size_of.order_restated_optional_value(buffer, offset, order_restated_optional_tag)
  if size == 0 then
    return offset
  end

  -- Dissect Element
  local range = buffer(offset, size)
  local display = nasdaq_equities_orders_ouch_v5_0_display.order_restated_optional_value(buffer, packet, parent)
  local element = parent:add(nasdaq_equities_orders_ouch_v5_0.fields.order_restated_optional_value, range, display)

  return nasdaq_equities_orders_ouch_v5_0_dissect.order_restated_optional_value_branches(buffer, offset, packet, parent, order_restated_optional_tag)
end

-- Size: Order Restated Optional Tag
nasdaq_equities_orders_ouch_v5_0_size_of.order_restated_optional_tag = 1

-- Display: Order Restated Optional Tag
nasdaq_equities_orders_ouch_v5_0_display.order_restated_optional_tag = function(value)
  if value == 22 then
    return "Order Restated Optional Tag: Display Quantity (22)"
  end
  if value == 23 then
    return "Order Restated Optional Tag: Display Price (23)"
  end
  if value == 1 then
    return "Order Restated Optional Tag: Secondary Ord Ref Num (1)"
  end

  return "Order Restated Optional Tag: Unknown("..value..")"
end

-- Dissect: Order Restated Optional Tag
nasdaq_equities_orders_ouch_v5_0_dissect.order_restated_optional_tag = function(buffer, offset, packet, parent)
  local length = nasdaq_equities_orders_ouch_v5_0_size_of.order_restated_optional_tag
  local range = buffer(offset, length)
  local value = range:int()
  local display = nasdaq_equities_orders_ouch_v5_0_display.order_restated_optional_tag(value, buffer, offset, packet, parent)

  parent:add(nasdaq_equities_orders_ouch_v5_0.fields.order_restated_optional_tag, range, value, display)

  return offset + length, value
end

-- Size: Order Restated Optional Field Length
nasdaq_equities_orders_ouch_v5_0_size_of.order_restated_optional_field_length = 1

-- Display: Order Restated Optional Field Length
nasdaq_equities_orders_ouch_v5_0_display.order_restated_optional_field_length = function(value)
  return "Order Restated Optional Field Length: "..value
end

-- Dissect: Order Restated Optional Field Length
nasdaq_equities_orders_ouch_v5_0_dissect.order_restated_optional_field_length = function(buffer, offset, packet, parent)
  local length = nasdaq_equities_orders_ouch_v5_0_size_of.order_restated_optional_field_length
  local range = buffer(offset, length)
  local value = range:int()
  local display = nasdaq_equities_orders_ouch_v5_0_display.order_restated_optional_field_length(value, buffer, offset, packet, parent)

  parent:add(nasdaq_equities_orders_ouch_v5_0.fields.order_restated_optional_field_length, range, value, display)

  return offset + length, value
end

-- Display: Order Restated Appendage
nasdaq_equities_orders_ouch_v5_0_display.order_restated_appendage = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Order Restated Appendage
nasdaq_equities_orders_ouch_v5_0_dissect.order_restated_appendage_fields = function(buffer, offset, packet, parent, size_of_order_restated_appendage)
  local index = offset

  -- Order Restated Optional Field Length: 1 Byte Signed Fixed Width Integer
  index, order_restated_optional_field_length = nasdaq_equities_orders_ouch_v5_0_dissect.order_restated_optional_field_length(buffer, index, packet, parent)

  -- Order Restated Optional Tag: 1 Byte Signed Fixed Width Integer Enum with 3 values
  index, order_restated_optional_tag = nasdaq_equities_orders_ouch_v5_0_dissect.order_restated_optional_tag(buffer, index, packet, parent)

  -- Order Restated Optional Value: Runtime Type with 3 branches
  index = nasdaq_equities_orders_ouch_v5_0_dissect.order_restated_optional_value(buffer, index, packet, parent, order_restated_optional_tag)

  return index
end

-- Dissect: Order Restated Appendage
nasdaq_equities_orders_ouch_v5_0_dissect.order_restated_appendage = function(buffer, offset, packet, parent, size_of_order_restated_appendage)
  -- Optionally add struct element to protocol tree
  if show.order_restated_appendage then
    local range = buffer(offset, size_of_order_restated_appendage)
    local display = nasdaq_equities_orders_ouch_v5_0_display.order_restated_appendage(buffer, packet, parent)
    parent = parent:add(nasdaq_equities_orders_ouch_v5_0.fields.order_restated_appendage, range, display)
  end

  nasdaq_equities_orders_ouch_v5_0_dissect.order_restated_appendage_fields(buffer, offset, packet, parent, size_of_order_restated_appendage)

  return offset + size_of_order_restated_appendage
end

-- Size: Appendage Length
nasdaq_equities_orders_ouch_v5_0_size_of.appendage_length = 2

-- Display: Appendage Length
nasdaq_equities_orders_ouch_v5_0_display.appendage_length = function(value)
  return "Appendage Length: "..value
end

-- Dissect: Appendage Length
nasdaq_equities_orders_ouch_v5_0_dissect.appendage_length = function(buffer, offset, packet, parent)
  local length = nasdaq_equities_orders_ouch_v5_0_size_of.appendage_length
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_equities_orders_ouch_v5_0_display.appendage_length(value, buffer, offset, packet, parent)

  parent:add(nasdaq_equities_orders_ouch_v5_0.fields.appendage_length, range, value, display)

  return offset + length, value
end

-- Size: Order Restated Reason
nasdaq_equities_orders_ouch_v5_0_size_of.order_restated_reason = 1

-- Display: Order Restated Reason
nasdaq_equities_orders_ouch_v5_0_display.order_restated_reason = function(value)
  if value == "R" then
    return "Order Restated Reason: Refresh Of Display (R)"
  end
  if value == "P" then
    return "Order Restated Reason: Update Of Displayed Price (P)"
  end

  return "Order Restated Reason: Unknown("..value..")"
end

-- Dissect: Order Restated Reason
nasdaq_equities_orders_ouch_v5_0_dissect.order_restated_reason = function(buffer, offset, packet, parent)
  local length = nasdaq_equities_orders_ouch_v5_0_size_of.order_restated_reason
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_equities_orders_ouch_v5_0_display.order_restated_reason(value, buffer, offset, packet, parent)

  parent:add(nasdaq_equities_orders_ouch_v5_0.fields.order_restated_reason, range, value, display)

  return offset + length, value
end

-- Size: User Ref Num
nasdaq_equities_orders_ouch_v5_0_size_of.user_ref_num = 4

-- Display: User Ref Num
nasdaq_equities_orders_ouch_v5_0_display.user_ref_num = function(value)
  return "User Ref Num: "..value
end

-- Dissect: User Ref Num
nasdaq_equities_orders_ouch_v5_0_dissect.user_ref_num = function(buffer, offset, packet, parent)
  local length = nasdaq_equities_orders_ouch_v5_0_size_of.user_ref_num
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_equities_orders_ouch_v5_0_display.user_ref_num(value, buffer, offset, packet, parent)

  parent:add(nasdaq_equities_orders_ouch_v5_0.fields.user_ref_num, range, value, display)

  return offset + length, value
end

-- Size Of: Order Restated Message
nasdaq_equities_orders_ouch_v5_0_size_of.order_restated_message = function(buffer, offset)
  local index = 0

  return buffer:len() - (offset + index) 
end

-- Display: Order Restated Message
nasdaq_equities_orders_ouch_v5_0_display.order_restated_message = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Order Restated Message
nasdaq_equities_orders_ouch_v5_0_dissect.order_restated_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Timestamp: 8 Byte Unsigned Fixed Width Integer
  index, timestamp = nasdaq_equities_orders_ouch_v5_0_dissect.timestamp(buffer, index, packet, parent)

  -- User Ref Num: 4 Byte Unsigned Fixed Width Integer
  index, user_ref_num = nasdaq_equities_orders_ouch_v5_0_dissect.user_ref_num(buffer, index, packet, parent)

  -- Order Restated Reason: 1 Byte Ascii String Enum with 2 values
  index, order_restated_reason = nasdaq_equities_orders_ouch_v5_0_dissect.order_restated_reason(buffer, index, packet, parent)

  -- Appendage Length: 2 Byte Unsigned Fixed Width Integer
  index, appendage_length = nasdaq_equities_orders_ouch_v5_0_dissect.appendage_length(buffer, index, packet, parent)

  -- Dependency for Order Restated Appendage
  local end_of_payload = appendage_length

  -- Order Restated Appendage: Struct of 3 fields
  while index < end_of_payload do

    -- Dependency element: Order Restated Optional Field Length
    local order_restated_optional_field_length = buffer(index, 1):int()

    -- Runtime Size Of: Order Restated Appendage
    local size_of_order_restated_appendage = order_restated_optional_field_length - 1

    -- Order Restated Appendage: Struct of 3 fields
    index = nasdaq_equities_orders_ouch_v5_0_dissect.order_restated_appendage(buffer, index, packet, parent, size_of_order_restated_appendage)
  end

  return index
end

-- Dissect: Order Restated Message
nasdaq_equities_orders_ouch_v5_0_dissect.order_restated_message = function(buffer, offset, packet, parent)
  -- Optionally add dynamic struct element to protocol tree
  if show.order_restated_message then
    local length = nasdaq_equities_orders_ouch_v5_0_size_of.order_restated_message(buffer, offset)
    local range = buffer(offset, length)
    local display = nasdaq_equities_orders_ouch_v5_0_display.order_restated_message(buffer, packet, parent)
    parent = parent:add(nasdaq_equities_orders_ouch_v5_0.fields.order_restated_message, range, display)
  end

  return nasdaq_equities_orders_ouch_v5_0_dissect.order_restated_message_fields(buffer, offset, packet, parent)
end

-- Size: Quantity
nasdaq_equities_orders_ouch_v5_0_size_of.quantity = 4

-- Display: Quantity
nasdaq_equities_orders_ouch_v5_0_display.quantity = function(value)
  return "Quantity: "..value
end

-- Dissect: Quantity
nasdaq_equities_orders_ouch_v5_0_dissect.quantity = function(buffer, offset, packet, parent)
  local length = nasdaq_equities_orders_ouch_v5_0_size_of.quantity
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_equities_orders_ouch_v5_0_display.quantity(value, buffer, offset, packet, parent)

  parent:add(nasdaq_equities_orders_ouch_v5_0.fields.quantity, range, value, display)

  return offset + length, value
end

-- Size: Side
nasdaq_equities_orders_ouch_v5_0_size_of.side = 1

-- Display: Side
nasdaq_equities_orders_ouch_v5_0_display.side = function(value)
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
nasdaq_equities_orders_ouch_v5_0_dissect.side = function(buffer, offset, packet, parent)
  local length = nasdaq_equities_orders_ouch_v5_0_size_of.side
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_equities_orders_ouch_v5_0_display.side(value, buffer, offset, packet, parent)

  parent:add(nasdaq_equities_orders_ouch_v5_0.fields.side, range, value, display)

  return offset + length, value
end

-- Calculate size of: Order Modified Message
nasdaq_equities_orders_ouch_v5_0_size_of.order_modified_message = function(buffer, offset)
  local index = 0

  index = index + nasdaq_equities_orders_ouch_v5_0_size_of.timestamp

  index = index + nasdaq_equities_orders_ouch_v5_0_size_of.user_ref_num

  index = index + nasdaq_equities_orders_ouch_v5_0_size_of.side

  index = index + nasdaq_equities_orders_ouch_v5_0_size_of.quantity

  return index
end

-- Display: Order Modified Message
nasdaq_equities_orders_ouch_v5_0_display.order_modified_message = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Order Modified Message
nasdaq_equities_orders_ouch_v5_0_dissect.order_modified_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Timestamp: 8 Byte Unsigned Fixed Width Integer
  index, timestamp = nasdaq_equities_orders_ouch_v5_0_dissect.timestamp(buffer, index, packet, parent)

  -- User Ref Num: 4 Byte Unsigned Fixed Width Integer
  index, user_ref_num = nasdaq_equities_orders_ouch_v5_0_dissect.user_ref_num(buffer, index, packet, parent)

  -- Side: 1 Byte Ascii String Enum with 4 values
  index, side = nasdaq_equities_orders_ouch_v5_0_dissect.side(buffer, index, packet, parent)

  -- Quantity: 4 Byte Unsigned Fixed Width Integer
  index, quantity = nasdaq_equities_orders_ouch_v5_0_dissect.quantity(buffer, index, packet, parent)

  return index
end

-- Dissect: Order Modified Message
nasdaq_equities_orders_ouch_v5_0_dissect.order_modified_message = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.order_modified_message then
    local length = nasdaq_equities_orders_ouch_v5_0_size_of.order_modified_message(buffer, offset)
    local range = buffer(offset, length)
    local display = nasdaq_equities_orders_ouch_v5_0_display.order_modified_message(buffer, packet, parent)
    parent = parent:add(nasdaq_equities_orders_ouch_v5_0.fields.order_modified_message, range, display)
  end

  return nasdaq_equities_orders_ouch_v5_0_dissect.order_modified_message_fields(buffer, offset, packet, parent)
end

-- Size: Order Reference Number
nasdaq_equities_orders_ouch_v5_0_size_of.order_reference_number = 8

-- Display: Order Reference Number
nasdaq_equities_orders_ouch_v5_0_display.order_reference_number = function(value)
  return "Order Reference Number: "..value
end

-- Dissect: Order Reference Number
nasdaq_equities_orders_ouch_v5_0_dissect.order_reference_number = function(buffer, offset, packet, parent)
  local length = nasdaq_equities_orders_ouch_v5_0_size_of.order_reference_number
  local range = buffer(offset, length)
  local value = range:uint64()
  local display = nasdaq_equities_orders_ouch_v5_0_display.order_reference_number(value, buffer, offset, packet, parent)

  parent:add(nasdaq_equities_orders_ouch_v5_0.fields.order_reference_number, range, value, display)

  return offset + length, value
end

-- Size: Display
nasdaq_equities_orders_ouch_v5_0_size_of.display = 1

-- Display: Display
nasdaq_equities_orders_ouch_v5_0_display.display = function(value)
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
    return "Display: Mid Point (M)"
  end
  if value == "W" then
    return "Display: Mid Point (W)"
  end
  if value == "L" then
    return "Display: Post Only And Attributable (L)"
  end
  if value == "O" then
    return "Display: Retail Order (O)"
  end
  if value == "T" then
    return "Display: Retail Order (T)"
  end
  if value == "Q" then
    return "Display: Retail Price (Q)"
  end
  if value == "Z" then
    return "Display: Conformant (Z)"
  end
  if value == "m" then
    return "Display: Mid Point (m)"
  end
  if value == "n" then
    return "Display: Non Display And Mid Point (n)"
  end

  return "Display: Unknown("..value..")"
end

-- Dissect: Display
nasdaq_equities_orders_ouch_v5_0_dissect.display = function(buffer, offset, packet, parent)
  local length = nasdaq_equities_orders_ouch_v5_0_size_of.display
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_equities_orders_ouch_v5_0_display.display(value, buffer, offset, packet, parent)

  parent:add(nasdaq_equities_orders_ouch_v5_0.fields.display, range, value, display)

  return offset + length, value
end

-- Size: Price
nasdaq_equities_orders_ouch_v5_0_size_of.price = 8

-- Display: Price
nasdaq_equities_orders_ouch_v5_0_display.price = function(value)
  return "Price: "..value
end

-- Dissect: Price
nasdaq_equities_orders_ouch_v5_0_dissect.price = function(buffer, offset, packet, parent)
  local length = nasdaq_equities_orders_ouch_v5_0_size_of.price
  local range = buffer(offset, length)
  local value = range:int64()
  local display = nasdaq_equities_orders_ouch_v5_0_display.price(value, buffer, offset, packet, parent)

  parent:add(nasdaq_equities_orders_ouch_v5_0.fields.price, range, value, display)

  return offset + length, value
end

-- Calculate size of: Order Priority Update Message
nasdaq_equities_orders_ouch_v5_0_size_of.order_priority_update_message = function(buffer, offset)
  local index = 0

  index = index + nasdaq_equities_orders_ouch_v5_0_size_of.timestamp

  index = index + nasdaq_equities_orders_ouch_v5_0_size_of.user_ref_num

  index = index + nasdaq_equities_orders_ouch_v5_0_size_of.price

  index = index + nasdaq_equities_orders_ouch_v5_0_size_of.display

  index = index + nasdaq_equities_orders_ouch_v5_0_size_of.order_reference_number

  return index
end

-- Display: Order Priority Update Message
nasdaq_equities_orders_ouch_v5_0_display.order_priority_update_message = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Order Priority Update Message
nasdaq_equities_orders_ouch_v5_0_dissect.order_priority_update_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Timestamp: 8 Byte Unsigned Fixed Width Integer
  index, timestamp = nasdaq_equities_orders_ouch_v5_0_dissect.timestamp(buffer, index, packet, parent)

  -- User Ref Num: 4 Byte Unsigned Fixed Width Integer
  index, user_ref_num = nasdaq_equities_orders_ouch_v5_0_dissect.user_ref_num(buffer, index, packet, parent)

  -- Price: 8 Byte Signed Fixed Width Integer
  index, price = nasdaq_equities_orders_ouch_v5_0_dissect.price(buffer, index, packet, parent)

  -- Display: 1 Byte Ascii String Enum with 14 values
  index, display = nasdaq_equities_orders_ouch_v5_0_dissect.display(buffer, index, packet, parent)

  -- Order Reference Number: 8 Byte Unsigned Fixed Width Integer
  index, order_reference_number = nasdaq_equities_orders_ouch_v5_0_dissect.order_reference_number(buffer, index, packet, parent)

  return index
end

-- Dissect: Order Priority Update Message
nasdaq_equities_orders_ouch_v5_0_dissect.order_priority_update_message = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.order_priority_update_message then
    local length = nasdaq_equities_orders_ouch_v5_0_size_of.order_priority_update_message(buffer, offset)
    local range = buffer(offset, length)
    local display = nasdaq_equities_orders_ouch_v5_0_display.order_priority_update_message(buffer, packet, parent)
    parent = parent:add(nasdaq_equities_orders_ouch_v5_0.fields.order_priority_update_message, range, display)
  end

  return nasdaq_equities_orders_ouch_v5_0_dissect.order_priority_update_message_fields(buffer, offset, packet, parent)
end

-- Calculate size of: Cancel Reject Message
nasdaq_equities_orders_ouch_v5_0_size_of.cancel_reject_message = function(buffer, offset)
  local index = 0

  index = index + nasdaq_equities_orders_ouch_v5_0_size_of.timestamp

  index = index + nasdaq_equities_orders_ouch_v5_0_size_of.user_ref_num

  return index
end

-- Display: Cancel Reject Message
nasdaq_equities_orders_ouch_v5_0_display.cancel_reject_message = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Cancel Reject Message
nasdaq_equities_orders_ouch_v5_0_dissect.cancel_reject_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Timestamp: 8 Byte Unsigned Fixed Width Integer
  index, timestamp = nasdaq_equities_orders_ouch_v5_0_dissect.timestamp(buffer, index, packet, parent)

  -- User Ref Num: 4 Byte Unsigned Fixed Width Integer
  index, user_ref_num = nasdaq_equities_orders_ouch_v5_0_dissect.user_ref_num(buffer, index, packet, parent)

  return index
end

-- Dissect: Cancel Reject Message
nasdaq_equities_orders_ouch_v5_0_dissect.cancel_reject_message = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.cancel_reject_message then
    local length = nasdaq_equities_orders_ouch_v5_0_size_of.cancel_reject_message(buffer, offset)
    local range = buffer(offset, length)
    local display = nasdaq_equities_orders_ouch_v5_0_display.cancel_reject_message(buffer, packet, parent)
    parent = parent:add(nasdaq_equities_orders_ouch_v5_0.fields.cancel_reject_message, range, display)
  end

  return nasdaq_equities_orders_ouch_v5_0_dissect.cancel_reject_message_fields(buffer, offset, packet, parent)
end

-- Calculate size of: Cancel Pending Message
nasdaq_equities_orders_ouch_v5_0_size_of.cancel_pending_message = function(buffer, offset)
  local index = 0

  index = index + nasdaq_equities_orders_ouch_v5_0_size_of.timestamp

  index = index + nasdaq_equities_orders_ouch_v5_0_size_of.user_ref_num

  return index
end

-- Display: Cancel Pending Message
nasdaq_equities_orders_ouch_v5_0_display.cancel_pending_message = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Cancel Pending Message
nasdaq_equities_orders_ouch_v5_0_dissect.cancel_pending_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Timestamp: 8 Byte Unsigned Fixed Width Integer
  index, timestamp = nasdaq_equities_orders_ouch_v5_0_dissect.timestamp(buffer, index, packet, parent)

  -- User Ref Num: 4 Byte Unsigned Fixed Width Integer
  index, user_ref_num = nasdaq_equities_orders_ouch_v5_0_dissect.user_ref_num(buffer, index, packet, parent)

  return index
end

-- Dissect: Cancel Pending Message
nasdaq_equities_orders_ouch_v5_0_dissect.cancel_pending_message = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.cancel_pending_message then
    local length = nasdaq_equities_orders_ouch_v5_0_size_of.cancel_pending_message(buffer, offset)
    local range = buffer(offset, length)
    local display = nasdaq_equities_orders_ouch_v5_0_display.cancel_pending_message(buffer, packet, parent)
    parent = parent:add(nasdaq_equities_orders_ouch_v5_0.fields.cancel_pending_message, range, display)
  end

  return nasdaq_equities_orders_ouch_v5_0_dissect.cancel_pending_message_fields(buffer, offset, packet, parent)
end

-- Size: Cl Ord Id
nasdaq_equities_orders_ouch_v5_0_size_of.cl_ord_id = 14

-- Display: Cl Ord Id
nasdaq_equities_orders_ouch_v5_0_display.cl_ord_id = function(value)
  return "Cl Ord Id: "..value
end

-- Dissect: Cl Ord Id
nasdaq_equities_orders_ouch_v5_0_dissect.cl_ord_id = function(buffer, offset, packet, parent)
  local length = nasdaq_equities_orders_ouch_v5_0_size_of.cl_ord_id
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_equities_orders_ouch_v5_0_display.cl_ord_id(value, buffer, offset, packet, parent)

  parent:add(nasdaq_equities_orders_ouch_v5_0.fields.cl_ord_id, range, value, display)

  return offset + length, value
end

-- Size: Rejected Order Reason
nasdaq_equities_orders_ouch_v5_0_size_of.rejected_order_reason = 2

-- Display: Rejected Order Reason
nasdaq_equities_orders_ouch_v5_0_display.rejected_order_reason = function(value)
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
nasdaq_equities_orders_ouch_v5_0_dissect.rejected_order_reason = function(buffer, offset, packet, parent)
  local length = nasdaq_equities_orders_ouch_v5_0_size_of.rejected_order_reason
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_equities_orders_ouch_v5_0_display.rejected_order_reason(value, buffer, offset, packet, parent)

  parent:add(nasdaq_equities_orders_ouch_v5_0.fields.rejected_order_reason, range, value, display)

  return offset + length, value
end

-- Calculate size of: Rejected Order Message
nasdaq_equities_orders_ouch_v5_0_size_of.rejected_order_message = function(buffer, offset)
  local index = 0

  index = index + nasdaq_equities_orders_ouch_v5_0_size_of.timestamp

  index = index + nasdaq_equities_orders_ouch_v5_0_size_of.user_ref_num

  index = index + nasdaq_equities_orders_ouch_v5_0_size_of.rejected_order_reason

  index = index + nasdaq_equities_orders_ouch_v5_0_size_of.cl_ord_id

  return index
end

-- Display: Rejected Order Message
nasdaq_equities_orders_ouch_v5_0_display.rejected_order_message = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Rejected Order Message
nasdaq_equities_orders_ouch_v5_0_dissect.rejected_order_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Timestamp: 8 Byte Unsigned Fixed Width Integer
  index, timestamp = nasdaq_equities_orders_ouch_v5_0_dissect.timestamp(buffer, index, packet, parent)

  -- User Ref Num: 4 Byte Unsigned Fixed Width Integer
  index, user_ref_num = nasdaq_equities_orders_ouch_v5_0_dissect.user_ref_num(buffer, index, packet, parent)

  -- Rejected Order Reason: 2 Byte Unsigned Fixed Width Integer Enum with 31 values
  index, rejected_order_reason = nasdaq_equities_orders_ouch_v5_0_dissect.rejected_order_reason(buffer, index, packet, parent)

  -- Cl Ord Id: 14 Byte Ascii String
  index, cl_ord_id = nasdaq_equities_orders_ouch_v5_0_dissect.cl_ord_id(buffer, index, packet, parent)

  return index
end

-- Dissect: Rejected Order Message
nasdaq_equities_orders_ouch_v5_0_dissect.rejected_order_message = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.rejected_order_message then
    local length = nasdaq_equities_orders_ouch_v5_0_size_of.rejected_order_message(buffer, offset)
    local range = buffer(offset, length)
    local display = nasdaq_equities_orders_ouch_v5_0_display.rejected_order_message(buffer, packet, parent)
    parent = parent:add(nasdaq_equities_orders_ouch_v5_0.fields.rejected_order_message, range, display)
  end

  return nasdaq_equities_orders_ouch_v5_0_dissect.rejected_order_message_fields(buffer, offset, packet, parent)
end

-- Size: Trade Correction Reason
nasdaq_equities_orders_ouch_v5_0_size_of.trade_correction_reason = 1

-- Display: Trade Correction Reason
nasdaq_equities_orders_ouch_v5_0_display.trade_correction_reason = function(value)
  if value == "N" then
    return "Trade Correction Reason: Adjusted To Nav (N)"
  end

  return "Trade Correction Reason: Unknown("..value..")"
end

-- Dissect: Trade Correction Reason
nasdaq_equities_orders_ouch_v5_0_dissect.trade_correction_reason = function(buffer, offset, packet, parent)
  local length = nasdaq_equities_orders_ouch_v5_0_size_of.trade_correction_reason
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_equities_orders_ouch_v5_0_display.trade_correction_reason(value, buffer, offset, packet, parent)

  parent:add(nasdaq_equities_orders_ouch_v5_0.fields.trade_correction_reason, range, value, display)

  return offset + length, value
end

-- Size: Match Number
nasdaq_equities_orders_ouch_v5_0_size_of.match_number = 8

-- Display: Match Number
nasdaq_equities_orders_ouch_v5_0_display.match_number = function(value)
  return "Match Number: "..value
end

-- Dissect: Match Number
nasdaq_equities_orders_ouch_v5_0_dissect.match_number = function(buffer, offset, packet, parent)
  local length = nasdaq_equities_orders_ouch_v5_0_size_of.match_number
  local range = buffer(offset, length)
  local value = range:uint64()
  local display = nasdaq_equities_orders_ouch_v5_0_display.match_number(value, buffer, offset, packet, parent)

  parent:add(nasdaq_equities_orders_ouch_v5_0.fields.match_number, range, value, display)

  return offset + length, value
end

-- Size: Liquidity Flag
nasdaq_equities_orders_ouch_v5_0_size_of.liquidity_flag = 1

-- Display: Liquidity Flag
nasdaq_equities_orders_ouch_v5_0_display.liquidity_flag = function(value)
  if value == "A" then
    return "Liquidity Flag: Added (A)"
  end
  if value == "C" then
    return "Liquidity Flag: Closing Cross (C)"
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
    return "Liquidity Flag: Removed (m)"
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
  if value == "k" then
    return "Liquidity Flag: Added (k)"
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
nasdaq_equities_orders_ouch_v5_0_dissect.liquidity_flag = function(buffer, offset, packet, parent)
  local length = nasdaq_equities_orders_ouch_v5_0_size_of.liquidity_flag
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_equities_orders_ouch_v5_0_display.liquidity_flag(value, buffer, offset, packet, parent)

  parent:add(nasdaq_equities_orders_ouch_v5_0.fields.liquidity_flag, range, value, display)

  return offset + length, value
end

-- Calculate size of: Trade Correction Message
nasdaq_equities_orders_ouch_v5_0_size_of.trade_correction_message = function(buffer, offset)
  local index = 0

  index = index + nasdaq_equities_orders_ouch_v5_0_size_of.timestamp

  index = index + nasdaq_equities_orders_ouch_v5_0_size_of.user_ref_num

  index = index + nasdaq_equities_orders_ouch_v5_0_size_of.quantity

  index = index + nasdaq_equities_orders_ouch_v5_0_size_of.price

  index = index + nasdaq_equities_orders_ouch_v5_0_size_of.liquidity_flag

  index = index + nasdaq_equities_orders_ouch_v5_0_size_of.match_number

  index = index + nasdaq_equities_orders_ouch_v5_0_size_of.trade_correction_reason

  index = index + nasdaq_equities_orders_ouch_v5_0_size_of.cl_ord_id

  return index
end

-- Display: Trade Correction Message
nasdaq_equities_orders_ouch_v5_0_display.trade_correction_message = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Trade Correction Message
nasdaq_equities_orders_ouch_v5_0_dissect.trade_correction_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Timestamp: 8 Byte Unsigned Fixed Width Integer
  index, timestamp = nasdaq_equities_orders_ouch_v5_0_dissect.timestamp(buffer, index, packet, parent)

  -- User Ref Num: 4 Byte Unsigned Fixed Width Integer
  index, user_ref_num = nasdaq_equities_orders_ouch_v5_0_dissect.user_ref_num(buffer, index, packet, parent)

  -- Quantity: 4 Byte Unsigned Fixed Width Integer
  index, quantity = nasdaq_equities_orders_ouch_v5_0_dissect.quantity(buffer, index, packet, parent)

  -- Price: 8 Byte Signed Fixed Width Integer
  index, price = nasdaq_equities_orders_ouch_v5_0_dissect.price(buffer, index, packet, parent)

  -- Liquidity Flag: 1 Byte Ascii String Enum with 24 values
  index, liquidity_flag = nasdaq_equities_orders_ouch_v5_0_dissect.liquidity_flag(buffer, index, packet, parent)

  -- Match Number: 8 Byte Unsigned Fixed Width Integer
  index, match_number = nasdaq_equities_orders_ouch_v5_0_dissect.match_number(buffer, index, packet, parent)

  -- Trade Correction Reason: 1 Byte Ascii String Enum with 1 values
  index, trade_correction_reason = nasdaq_equities_orders_ouch_v5_0_dissect.trade_correction_reason(buffer, index, packet, parent)

  -- Cl Ord Id: 14 Byte Ascii String
  index, cl_ord_id = nasdaq_equities_orders_ouch_v5_0_dissect.cl_ord_id(buffer, index, packet, parent)

  return index
end

-- Dissect: Trade Correction Message
nasdaq_equities_orders_ouch_v5_0_dissect.trade_correction_message = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.trade_correction_message then
    local length = nasdaq_equities_orders_ouch_v5_0_size_of.trade_correction_message(buffer, offset)
    local range = buffer(offset, length)
    local display = nasdaq_equities_orders_ouch_v5_0_display.trade_correction_message(buffer, packet, parent)
    parent = parent:add(nasdaq_equities_orders_ouch_v5_0.fields.trade_correction_message, range, display)
  end

  return nasdaq_equities_orders_ouch_v5_0_dissect.trade_correction_message_fields(buffer, offset, packet, parent)
end

-- Size: Broken Trade Reason
nasdaq_equities_orders_ouch_v5_0_size_of.broken_trade_reason = 1

-- Display: Broken Trade Reason
nasdaq_equities_orders_ouch_v5_0_display.broken_trade_reason = function(value)
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
nasdaq_equities_orders_ouch_v5_0_dissect.broken_trade_reason = function(buffer, offset, packet, parent)
  local length = nasdaq_equities_orders_ouch_v5_0_size_of.broken_trade_reason
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_equities_orders_ouch_v5_0_display.broken_trade_reason(value, buffer, offset, packet, parent)

  parent:add(nasdaq_equities_orders_ouch_v5_0.fields.broken_trade_reason, range, value, display)

  return offset + length, value
end

-- Calculate size of: Broken Trade Message
nasdaq_equities_orders_ouch_v5_0_size_of.broken_trade_message = function(buffer, offset)
  local index = 0

  index = index + nasdaq_equities_orders_ouch_v5_0_size_of.timestamp

  index = index + nasdaq_equities_orders_ouch_v5_0_size_of.user_ref_num

  index = index + nasdaq_equities_orders_ouch_v5_0_size_of.match_number

  index = index + nasdaq_equities_orders_ouch_v5_0_size_of.broken_trade_reason

  index = index + nasdaq_equities_orders_ouch_v5_0_size_of.cl_ord_id

  return index
end

-- Display: Broken Trade Message
nasdaq_equities_orders_ouch_v5_0_display.broken_trade_message = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Broken Trade Message
nasdaq_equities_orders_ouch_v5_0_dissect.broken_trade_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Timestamp: 8 Byte Unsigned Fixed Width Integer
  index, timestamp = nasdaq_equities_orders_ouch_v5_0_dissect.timestamp(buffer, index, packet, parent)

  -- User Ref Num: 4 Byte Unsigned Fixed Width Integer
  index, user_ref_num = nasdaq_equities_orders_ouch_v5_0_dissect.user_ref_num(buffer, index, packet, parent)

  -- Match Number: 8 Byte Unsigned Fixed Width Integer
  index, match_number = nasdaq_equities_orders_ouch_v5_0_dissect.match_number(buffer, index, packet, parent)

  -- Broken Trade Reason: 1 Byte Ascii String Enum with 4 values
  index, broken_trade_reason = nasdaq_equities_orders_ouch_v5_0_dissect.broken_trade_reason(buffer, index, packet, parent)

  -- Cl Ord Id: 14 Byte Ascii String
  index, cl_ord_id = nasdaq_equities_orders_ouch_v5_0_dissect.cl_ord_id(buffer, index, packet, parent)

  return index
end

-- Dissect: Broken Trade Message
nasdaq_equities_orders_ouch_v5_0_dissect.broken_trade_message = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.broken_trade_message then
    local length = nasdaq_equities_orders_ouch_v5_0_size_of.broken_trade_message(buffer, offset)
    local range = buffer(offset, length)
    local display = nasdaq_equities_orders_ouch_v5_0_display.broken_trade_message(buffer, packet, parent)
    parent = parent:add(nasdaq_equities_orders_ouch_v5_0.fields.broken_trade_message, range, display)
  end

  return nasdaq_equities_orders_ouch_v5_0_dissect.broken_trade_message_fields(buffer, offset, packet, parent)
end

-- Size: Reference Price Type
nasdaq_equities_orders_ouch_v5_0_size_of.reference_price_type = 1

-- Display: Reference Price Type
nasdaq_equities_orders_ouch_v5_0_display.reference_price_type = function(value)
  return "Reference Price Type: "..value
end

-- Dissect: Reference Price Type
nasdaq_equities_orders_ouch_v5_0_dissect.reference_price_type = function(buffer, offset, packet, parent)
  local length = nasdaq_equities_orders_ouch_v5_0_size_of.reference_price_type
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_equities_orders_ouch_v5_0_display.reference_price_type(value, buffer, offset, packet, parent)

  parent:add(nasdaq_equities_orders_ouch_v5_0.fields.reference_price_type, range, value, display)

  return offset + length, value
end

-- Size: Reference Price
nasdaq_equities_orders_ouch_v5_0_size_of.reference_price = 8

-- Display: Reference Price
nasdaq_equities_orders_ouch_v5_0_display.reference_price = function(value)
  return "Reference Price: "..value
end

-- Dissect: Reference Price
nasdaq_equities_orders_ouch_v5_0_dissect.reference_price = function(buffer, offset, packet, parent)
  local length = nasdaq_equities_orders_ouch_v5_0_size_of.reference_price
  local range = buffer(offset, length)
  local value = range:int64()
  local display = nasdaq_equities_orders_ouch_v5_0_display.reference_price(value, buffer, offset, packet, parent)

  parent:add(nasdaq_equities_orders_ouch_v5_0.fields.reference_price, range, value, display)

  return offset + length, value
end

-- Calculate runtime size of: Order Executed Optional Value
nasdaq_equities_orders_ouch_v5_0_size_of.order_executed_optional_value = function(buffer, offset, order_executed_optional_tag)
  -- Size of Reference Price
  if order_executed_optional_tag == 19 then
    return nasdaq_equities_orders_ouch_v5_0_size_of.reference_price(buffer, offset)
  end
  -- Size of Reference Price Type
  if order_executed_optional_tag == 20 then
    return nasdaq_equities_orders_ouch_v5_0_size_of.reference_price_type(buffer, offset)
  end

  return 0
end

-- Display: Order Executed Optional Value
nasdaq_equities_orders_ouch_v5_0_display.order_executed_optional_value = function(buffer, offset, packet, parent)
  return ""
end

-- Dissect Branches: Order Executed Optional Value
nasdaq_equities_orders_ouch_v5_0_dissect.order_executed_optional_value_branches = function(buffer, offset, packet, parent, order_executed_optional_tag)
  -- Dissect Reference Price
  if order_executed_optional_tag == 19 then
    return nasdaq_equities_orders_ouch_v5_0_dissect.reference_price(buffer, offset, packet, parent)
  end
  -- Dissect Reference Price Type
  if order_executed_optional_tag == 20 then
    return nasdaq_equities_orders_ouch_v5_0_dissect.reference_price_type(buffer, offset, packet, parent)
  end

  return offset
end

-- Dissect: Order Executed Optional Value
nasdaq_equities_orders_ouch_v5_0_dissect.order_executed_optional_value = function(buffer, offset, packet, parent, order_executed_optional_tag)
  if not show.order_executed_optional_value then
    return nasdaq_equities_orders_ouch_v5_0_dissect.order_executed_optional_value_branches(buffer, offset, packet, parent, order_executed_optional_tag)
  end

  -- Calculate size and check that branch is not empty
  local size = nasdaq_equities_orders_ouch_v5_0_size_of.order_executed_optional_value(buffer, offset, order_executed_optional_tag)
  if size == 0 then
    return offset
  end

  -- Dissect Element
  local range = buffer(offset, size)
  local display = nasdaq_equities_orders_ouch_v5_0_display.order_executed_optional_value(buffer, packet, parent)
  local element = parent:add(nasdaq_equities_orders_ouch_v5_0.fields.order_executed_optional_value, range, display)

  return nasdaq_equities_orders_ouch_v5_0_dissect.order_executed_optional_value_branches(buffer, offset, packet, parent, order_executed_optional_tag)
end

-- Size: Order Executed Optional Tag
nasdaq_equities_orders_ouch_v5_0_size_of.order_executed_optional_tag = 1

-- Display: Order Executed Optional Tag
nasdaq_equities_orders_ouch_v5_0_display.order_executed_optional_tag = function(value)
  if value == 19 then
    return "Order Executed Optional Tag: Reference Price (19)"
  end
  if value == 20 then
    return "Order Executed Optional Tag: Reference Price Type (20)"
  end

  return "Order Executed Optional Tag: Unknown("..value..")"
end

-- Dissect: Order Executed Optional Tag
nasdaq_equities_orders_ouch_v5_0_dissect.order_executed_optional_tag = function(buffer, offset, packet, parent)
  local length = nasdaq_equities_orders_ouch_v5_0_size_of.order_executed_optional_tag
  local range = buffer(offset, length)
  local value = range:int()
  local display = nasdaq_equities_orders_ouch_v5_0_display.order_executed_optional_tag(value, buffer, offset, packet, parent)

  parent:add(nasdaq_equities_orders_ouch_v5_0.fields.order_executed_optional_tag, range, value, display)

  return offset + length, value
end

-- Size: Order Executed Optional Field Length
nasdaq_equities_orders_ouch_v5_0_size_of.order_executed_optional_field_length = 1

-- Display: Order Executed Optional Field Length
nasdaq_equities_orders_ouch_v5_0_display.order_executed_optional_field_length = function(value)
  return "Order Executed Optional Field Length: "..value
end

-- Dissect: Order Executed Optional Field Length
nasdaq_equities_orders_ouch_v5_0_dissect.order_executed_optional_field_length = function(buffer, offset, packet, parent)
  local length = nasdaq_equities_orders_ouch_v5_0_size_of.order_executed_optional_field_length
  local range = buffer(offset, length)
  local value = range:int()
  local display = nasdaq_equities_orders_ouch_v5_0_display.order_executed_optional_field_length(value, buffer, offset, packet, parent)

  parent:add(nasdaq_equities_orders_ouch_v5_0.fields.order_executed_optional_field_length, range, value, display)

  return offset + length, value
end

-- Display: Order Executed Appendage
nasdaq_equities_orders_ouch_v5_0_display.order_executed_appendage = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Order Executed Appendage
nasdaq_equities_orders_ouch_v5_0_dissect.order_executed_appendage_fields = function(buffer, offset, packet, parent, size_of_order_executed_appendage)
  local index = offset

  -- Order Executed Optional Field Length: 1 Byte Signed Fixed Width Integer
  index, order_executed_optional_field_length = nasdaq_equities_orders_ouch_v5_0_dissect.order_executed_optional_field_length(buffer, index, packet, parent)

  -- Order Executed Optional Tag: 1 Byte Signed Fixed Width Integer Enum with 2 values
  index, order_executed_optional_tag = nasdaq_equities_orders_ouch_v5_0_dissect.order_executed_optional_tag(buffer, index, packet, parent)

  -- Order Executed Optional Value: Runtime Type with 2 branches
  index = nasdaq_equities_orders_ouch_v5_0_dissect.order_executed_optional_value(buffer, index, packet, parent, order_executed_optional_tag)

  return index
end

-- Dissect: Order Executed Appendage
nasdaq_equities_orders_ouch_v5_0_dissect.order_executed_appendage = function(buffer, offset, packet, parent, size_of_order_executed_appendage)
  -- Optionally add struct element to protocol tree
  if show.order_executed_appendage then
    local range = buffer(offset, size_of_order_executed_appendage)
    local display = nasdaq_equities_orders_ouch_v5_0_display.order_executed_appendage(buffer, packet, parent)
    parent = parent:add(nasdaq_equities_orders_ouch_v5_0.fields.order_executed_appendage, range, display)
  end

  nasdaq_equities_orders_ouch_v5_0_dissect.order_executed_appendage_fields(buffer, offset, packet, parent, size_of_order_executed_appendage)

  return offset + size_of_order_executed_appendage
end

-- Size Of: Order Executed Message
nasdaq_equities_orders_ouch_v5_0_size_of.order_executed_message = function(buffer, offset)
  local index = 0

  return buffer:len() - (offset + index) 
end

-- Display: Order Executed Message
nasdaq_equities_orders_ouch_v5_0_display.order_executed_message = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Order Executed Message
nasdaq_equities_orders_ouch_v5_0_dissect.order_executed_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Timestamp: 8 Byte Unsigned Fixed Width Integer
  index, timestamp = nasdaq_equities_orders_ouch_v5_0_dissect.timestamp(buffer, index, packet, parent)

  -- User Ref Num: 4 Byte Unsigned Fixed Width Integer
  index, user_ref_num = nasdaq_equities_orders_ouch_v5_0_dissect.user_ref_num(buffer, index, packet, parent)

  -- Quantity: 4 Byte Unsigned Fixed Width Integer
  index, quantity = nasdaq_equities_orders_ouch_v5_0_dissect.quantity(buffer, index, packet, parent)

  -- Price: 8 Byte Signed Fixed Width Integer
  index, price = nasdaq_equities_orders_ouch_v5_0_dissect.price(buffer, index, packet, parent)

  -- Liquidity Flag: 1 Byte Ascii String Enum with 24 values
  index, liquidity_flag = nasdaq_equities_orders_ouch_v5_0_dissect.liquidity_flag(buffer, index, packet, parent)

  -- Match Number: 8 Byte Unsigned Fixed Width Integer
  index, match_number = nasdaq_equities_orders_ouch_v5_0_dissect.match_number(buffer, index, packet, parent)

  -- Appendage Length: 2 Byte Unsigned Fixed Width Integer
  index, appendage_length = nasdaq_equities_orders_ouch_v5_0_dissect.appendage_length(buffer, index, packet, parent)

  -- Dependency for Order Executed Appendage
  local end_of_payload = appendage_length

  -- Order Executed Appendage: Struct of 3 fields
  while index < end_of_payload do

    -- Dependency element: Order Executed Optional Field Length
    local order_executed_optional_field_length = buffer(index, 1):int()

    -- Runtime Size Of: Order Executed Appendage
    local size_of_order_executed_appendage = order_executed_optional_field_length - 1

    -- Order Executed Appendage: Struct of 3 fields
    index = nasdaq_equities_orders_ouch_v5_0_dissect.order_executed_appendage(buffer, index, packet, parent, size_of_order_executed_appendage)
  end

  return index
end

-- Dissect: Order Executed Message
nasdaq_equities_orders_ouch_v5_0_dissect.order_executed_message = function(buffer, offset, packet, parent)
  -- Optionally add dynamic struct element to protocol tree
  if show.order_executed_message then
    local length = nasdaq_equities_orders_ouch_v5_0_size_of.order_executed_message(buffer, offset)
    local range = buffer(offset, length)
    local display = nasdaq_equities_orders_ouch_v5_0_display.order_executed_message(buffer, packet, parent)
    parent = parent:add(nasdaq_equities_orders_ouch_v5_0.fields.order_executed_message, range, display)
  end

  return nasdaq_equities_orders_ouch_v5_0_dissect.order_executed_message_fields(buffer, offset, packet, parent)
end

-- Size: Execution Price
nasdaq_equities_orders_ouch_v5_0_size_of.execution_price = 8

-- Display: Execution Price
nasdaq_equities_orders_ouch_v5_0_display.execution_price = function(value)
  return "Execution Price: "..value
end

-- Dissect: Execution Price
nasdaq_equities_orders_ouch_v5_0_dissect.execution_price = function(buffer, offset, packet, parent)
  local length = nasdaq_equities_orders_ouch_v5_0_size_of.execution_price
  local range = buffer(offset, length)
  local value = range:int64()
  local display = nasdaq_equities_orders_ouch_v5_0_display.execution_price(value, buffer, offset, packet, parent)

  parent:add(nasdaq_equities_orders_ouch_v5_0.fields.execution_price, range, value, display)

  return offset + length, value
end

-- Size: Quantity Prevented From Trading
nasdaq_equities_orders_ouch_v5_0_size_of.quantity_prevented_from_trading = 4

-- Display: Quantity Prevented From Trading
nasdaq_equities_orders_ouch_v5_0_display.quantity_prevented_from_trading = function(value)
  return "Quantity Prevented From Trading: "..value
end

-- Dissect: Quantity Prevented From Trading
nasdaq_equities_orders_ouch_v5_0_dissect.quantity_prevented_from_trading = function(buffer, offset, packet, parent)
  local length = nasdaq_equities_orders_ouch_v5_0_size_of.quantity_prevented_from_trading
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_equities_orders_ouch_v5_0_display.quantity_prevented_from_trading(value, buffer, offset, packet, parent)

  parent:add(nasdaq_equities_orders_ouch_v5_0.fields.quantity_prevented_from_trading, range, value, display)

  return offset + length, value
end

-- Size: Reason
nasdaq_equities_orders_ouch_v5_0_size_of.reason = 1

-- Display: Reason
nasdaq_equities_orders_ouch_v5_0_display.reason = function(value)
  return "Reason: "..value
end

-- Dissect: Reason
nasdaq_equities_orders_ouch_v5_0_dissect.reason = function(buffer, offset, packet, parent)
  local length = nasdaq_equities_orders_ouch_v5_0_size_of.reason
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_equities_orders_ouch_v5_0_display.reason(value, buffer, offset, packet, parent)

  parent:add(nasdaq_equities_orders_ouch_v5_0.fields.reason, range, value, display)

  return offset + length, value
end

-- Size: Decrement Shares
nasdaq_equities_orders_ouch_v5_0_size_of.decrement_shares = 4

-- Display: Decrement Shares
nasdaq_equities_orders_ouch_v5_0_display.decrement_shares = function(value)
  return "Decrement Shares: "..value
end

-- Dissect: Decrement Shares
nasdaq_equities_orders_ouch_v5_0_dissect.decrement_shares = function(buffer, offset, packet, parent)
  local length = nasdaq_equities_orders_ouch_v5_0_size_of.decrement_shares
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_equities_orders_ouch_v5_0_display.decrement_shares(value, buffer, offset, packet, parent)

  parent:add(nasdaq_equities_orders_ouch_v5_0.fields.decrement_shares, range, value, display)

  return offset + length, value
end

-- Calculate size of: Aiq Canceled Message
nasdaq_equities_orders_ouch_v5_0_size_of.aiq_canceled_message = function(buffer, offset)
  local index = 0

  index = index + nasdaq_equities_orders_ouch_v5_0_size_of.timestamp

  index = index + nasdaq_equities_orders_ouch_v5_0_size_of.user_ref_num

  index = index + nasdaq_equities_orders_ouch_v5_0_size_of.decrement_shares

  index = index + nasdaq_equities_orders_ouch_v5_0_size_of.reason

  index = index + nasdaq_equities_orders_ouch_v5_0_size_of.quantity_prevented_from_trading

  index = index + nasdaq_equities_orders_ouch_v5_0_size_of.execution_price

  index = index + nasdaq_equities_orders_ouch_v5_0_size_of.liquidity_flag

  return index
end

-- Display: Aiq Canceled Message
nasdaq_equities_orders_ouch_v5_0_display.aiq_canceled_message = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Aiq Canceled Message
nasdaq_equities_orders_ouch_v5_0_dissect.aiq_canceled_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Timestamp: 8 Byte Unsigned Fixed Width Integer
  index, timestamp = nasdaq_equities_orders_ouch_v5_0_dissect.timestamp(buffer, index, packet, parent)

  -- User Ref Num: 4 Byte Unsigned Fixed Width Integer
  index, user_ref_num = nasdaq_equities_orders_ouch_v5_0_dissect.user_ref_num(buffer, index, packet, parent)

  -- Decrement Shares: 4 Byte Unsigned Fixed Width Integer
  index, decrement_shares = nasdaq_equities_orders_ouch_v5_0_dissect.decrement_shares(buffer, index, packet, parent)

  -- Reason: 1 Byte Unsigned Fixed Width Integer
  index, reason = nasdaq_equities_orders_ouch_v5_0_dissect.reason(buffer, index, packet, parent)

  -- Quantity Prevented From Trading: 4 Byte Unsigned Fixed Width Integer
  index, quantity_prevented_from_trading = nasdaq_equities_orders_ouch_v5_0_dissect.quantity_prevented_from_trading(buffer, index, packet, parent)

  -- Execution Price: 8 Byte Signed Fixed Width Integer
  index, execution_price = nasdaq_equities_orders_ouch_v5_0_dissect.execution_price(buffer, index, packet, parent)

  -- Liquidity Flag: 1 Byte Ascii String Enum with 24 values
  index, liquidity_flag = nasdaq_equities_orders_ouch_v5_0_dissect.liquidity_flag(buffer, index, packet, parent)

  return index
end

-- Dissect: Aiq Canceled Message
nasdaq_equities_orders_ouch_v5_0_dissect.aiq_canceled_message = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.aiq_canceled_message then
    local length = nasdaq_equities_orders_ouch_v5_0_size_of.aiq_canceled_message(buffer, offset)
    local range = buffer(offset, length)
    local display = nasdaq_equities_orders_ouch_v5_0_display.aiq_canceled_message(buffer, packet, parent)
    parent = parent:add(nasdaq_equities_orders_ouch_v5_0.fields.aiq_canceled_message, range, display)
  end

  return nasdaq_equities_orders_ouch_v5_0_dissect.aiq_canceled_message_fields(buffer, offset, packet, parent)
end

-- Calculate size of: Canceled Message
nasdaq_equities_orders_ouch_v5_0_size_of.canceled_message = function(buffer, offset)
  local index = 0

  index = index + nasdaq_equities_orders_ouch_v5_0_size_of.timestamp

  index = index + nasdaq_equities_orders_ouch_v5_0_size_of.user_ref_num

  index = index + nasdaq_equities_orders_ouch_v5_0_size_of.quantity

  index = index + nasdaq_equities_orders_ouch_v5_0_size_of.reason

  return index
end

-- Display: Canceled Message
nasdaq_equities_orders_ouch_v5_0_display.canceled_message = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Canceled Message
nasdaq_equities_orders_ouch_v5_0_dissect.canceled_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Timestamp: 8 Byte Unsigned Fixed Width Integer
  index, timestamp = nasdaq_equities_orders_ouch_v5_0_dissect.timestamp(buffer, index, packet, parent)

  -- User Ref Num: 4 Byte Unsigned Fixed Width Integer
  index, user_ref_num = nasdaq_equities_orders_ouch_v5_0_dissect.user_ref_num(buffer, index, packet, parent)

  -- Quantity: 4 Byte Unsigned Fixed Width Integer
  index, quantity = nasdaq_equities_orders_ouch_v5_0_dissect.quantity(buffer, index, packet, parent)

  -- Reason: 1 Byte Unsigned Fixed Width Integer
  index, reason = nasdaq_equities_orders_ouch_v5_0_dissect.reason(buffer, index, packet, parent)

  return index
end

-- Dissect: Canceled Message
nasdaq_equities_orders_ouch_v5_0_dissect.canceled_message = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.canceled_message then
    local length = nasdaq_equities_orders_ouch_v5_0_size_of.canceled_message(buffer, offset)
    local range = buffer(offset, length)
    local display = nasdaq_equities_orders_ouch_v5_0_display.canceled_message(buffer, packet, parent)
    parent = parent:add(nasdaq_equities_orders_ouch_v5_0.fields.canceled_message, range, display)
  end

  return nasdaq_equities_orders_ouch_v5_0_dissect.canceled_message_fields(buffer, offset, packet, parent)
end

-- Size: Order State
nasdaq_equities_orders_ouch_v5_0_size_of.order_state = 1

-- Display: Order State
nasdaq_equities_orders_ouch_v5_0_display.order_state = function(value)
  if value == "L" then
    return "Order State: Order Live (L)"
  end
  if value == "D" then
    return "Order State: Order Dead (D)"
  end

  return "Order State: Unknown("..value..")"
end

-- Dissect: Order State
nasdaq_equities_orders_ouch_v5_0_dissect.order_state = function(buffer, offset, packet, parent)
  local length = nasdaq_equities_orders_ouch_v5_0_size_of.order_state
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_equities_orders_ouch_v5_0_display.order_state(value, buffer, offset, packet, parent)

  parent:add(nasdaq_equities_orders_ouch_v5_0.fields.order_state, range, value, display)

  return offset + length, value
end

-- Size: Cross Type
nasdaq_equities_orders_ouch_v5_0_size_of.cross_type = 1

-- Display: Cross Type
nasdaq_equities_orders_ouch_v5_0_display.cross_type = function(value)
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
nasdaq_equities_orders_ouch_v5_0_dissect.cross_type = function(buffer, offset, packet, parent)
  local length = nasdaq_equities_orders_ouch_v5_0_size_of.cross_type
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_equities_orders_ouch_v5_0_display.cross_type(value, buffer, offset, packet, parent)

  parent:add(nasdaq_equities_orders_ouch_v5_0.fields.cross_type, range, value, display)

  return offset + length, value
end

-- Size: Inter Market Sweep Eligibility
nasdaq_equities_orders_ouch_v5_0_size_of.inter_market_sweep_eligibility = 1

-- Display: Inter Market Sweep Eligibility
nasdaq_equities_orders_ouch_v5_0_display.inter_market_sweep_eligibility = function(value)
  if value == "Y" then
    return "Inter Market Sweep Eligibility: Eligible (Y)"
  end
  if value == "N" then
    return "Inter Market Sweep Eligibility: Not Eligible (N)"
  end

  return "Inter Market Sweep Eligibility: Unknown("..value..")"
end

-- Dissect: Inter Market Sweep Eligibility
nasdaq_equities_orders_ouch_v5_0_dissect.inter_market_sweep_eligibility = function(buffer, offset, packet, parent)
  local length = nasdaq_equities_orders_ouch_v5_0_size_of.inter_market_sweep_eligibility
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_equities_orders_ouch_v5_0_display.inter_market_sweep_eligibility(value, buffer, offset, packet, parent)

  parent:add(nasdaq_equities_orders_ouch_v5_0.fields.inter_market_sweep_eligibility, range, value, display)

  return offset + length, value
end

-- Size: Capacity
nasdaq_equities_orders_ouch_v5_0_size_of.capacity = 1

-- Display: Capacity
nasdaq_equities_orders_ouch_v5_0_display.capacity = function(value)
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
nasdaq_equities_orders_ouch_v5_0_dissect.capacity = function(buffer, offset, packet, parent)
  local length = nasdaq_equities_orders_ouch_v5_0_size_of.capacity
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_equities_orders_ouch_v5_0_display.capacity(value, buffer, offset, packet, parent)

  parent:add(nasdaq_equities_orders_ouch_v5_0.fields.capacity, range, value, display)

  return offset + length, value
end

-- Size: Time In Force
nasdaq_equities_orders_ouch_v5_0_size_of.time_in_force = 1

-- Display: Time In Force
nasdaq_equities_orders_ouch_v5_0_display.time_in_force = function(value)
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
nasdaq_equities_orders_ouch_v5_0_dissect.time_in_force = function(buffer, offset, packet, parent)
  local length = nasdaq_equities_orders_ouch_v5_0_size_of.time_in_force
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_equities_orders_ouch_v5_0_display.time_in_force(value, buffer, offset, packet, parent)

  parent:add(nasdaq_equities_orders_ouch_v5_0.fields.time_in_force, range, value, display)

  return offset + length, value
end

-- Size: Symbol
nasdaq_equities_orders_ouch_v5_0_size_of.symbol = 8

-- Display: Symbol
nasdaq_equities_orders_ouch_v5_0_display.symbol = function(value)
  return "Symbol: "..value
end

-- Dissect: Symbol
nasdaq_equities_orders_ouch_v5_0_dissect.symbol = function(buffer, offset, packet, parent)
  local length = nasdaq_equities_orders_ouch_v5_0_size_of.symbol
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_equities_orders_ouch_v5_0_display.symbol(value, buffer, offset, packet, parent)

  parent:add(nasdaq_equities_orders_ouch_v5_0.fields.symbol, range, value, display)

  return offset + length, value
end

-- Size: Orig User Ref Num
nasdaq_equities_orders_ouch_v5_0_size_of.orig_user_ref_num = 4

-- Display: Orig User Ref Num
nasdaq_equities_orders_ouch_v5_0_display.orig_user_ref_num = function(value)
  return "Orig User Ref Num: "..value
end

-- Dissect: Orig User Ref Num
nasdaq_equities_orders_ouch_v5_0_dissect.orig_user_ref_num = function(buffer, offset, packet, parent)
  local length = nasdaq_equities_orders_ouch_v5_0_size_of.orig_user_ref_num
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_equities_orders_ouch_v5_0_display.orig_user_ref_num(value, buffer, offset, packet, parent)

  parent:add(nasdaq_equities_orders_ouch_v5_0.fields.orig_user_ref_num, range, value, display)

  return offset + length, value
end

-- Calculate size of: Replaced Message
nasdaq_equities_orders_ouch_v5_0_size_of.replaced_message = function(buffer, offset)
  local index = 0

  index = index + nasdaq_equities_orders_ouch_v5_0_size_of.timestamp

  index = index + nasdaq_equities_orders_ouch_v5_0_size_of.orig_user_ref_num

  index = index + nasdaq_equities_orders_ouch_v5_0_size_of.user_ref_num

  index = index + nasdaq_equities_orders_ouch_v5_0_size_of.side

  index = index + nasdaq_equities_orders_ouch_v5_0_size_of.quantity

  index = index + nasdaq_equities_orders_ouch_v5_0_size_of.symbol

  index = index + nasdaq_equities_orders_ouch_v5_0_size_of.price

  index = index + nasdaq_equities_orders_ouch_v5_0_size_of.time_in_force

  index = index + nasdaq_equities_orders_ouch_v5_0_size_of.display

  index = index + nasdaq_equities_orders_ouch_v5_0_size_of.order_reference_number

  index = index + nasdaq_equities_orders_ouch_v5_0_size_of.capacity

  index = index + nasdaq_equities_orders_ouch_v5_0_size_of.inter_market_sweep_eligibility

  index = index + nasdaq_equities_orders_ouch_v5_0_size_of.cross_type

  index = index + nasdaq_equities_orders_ouch_v5_0_size_of.order_state

  index = index + nasdaq_equities_orders_ouch_v5_0_size_of.cl_ord_id

  index = index + nasdaq_equities_orders_ouch_v5_0_size_of.appendage_length

  index = index + nasdaq_equities_orders_ouch_v5_0_size_of.replaced_message_appendage

  return index
end

-- Display: Replaced Message
nasdaq_equities_orders_ouch_v5_0_display.replaced_message = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Replaced Message
nasdaq_equities_orders_ouch_v5_0_dissect.replaced_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Timestamp: 8 Byte Unsigned Fixed Width Integer
  index, timestamp = nasdaq_equities_orders_ouch_v5_0_dissect.timestamp(buffer, index, packet, parent)

  -- Orig User Ref Num: 4 Byte Unsigned Fixed Width Integer
  index, orig_user_ref_num = nasdaq_equities_orders_ouch_v5_0_dissect.orig_user_ref_num(buffer, index, packet, parent)

  -- User Ref Num: 4 Byte Unsigned Fixed Width Integer
  index, user_ref_num = nasdaq_equities_orders_ouch_v5_0_dissect.user_ref_num(buffer, index, packet, parent)

  -- Side: 1 Byte Ascii String Enum with 4 values
  index, side = nasdaq_equities_orders_ouch_v5_0_dissect.side(buffer, index, packet, parent)

  -- Quantity: 4 Byte Unsigned Fixed Width Integer
  index, quantity = nasdaq_equities_orders_ouch_v5_0_dissect.quantity(buffer, index, packet, parent)

  -- Symbol: 8 Byte Ascii String
  index, symbol = nasdaq_equities_orders_ouch_v5_0_dissect.symbol(buffer, index, packet, parent)

  -- Price: 8 Byte Signed Fixed Width Integer
  index, price = nasdaq_equities_orders_ouch_v5_0_dissect.price(buffer, index, packet, parent)

  -- Time In Force: 1 Byte Ascii String Enum with 5 values
  index, time_in_force = nasdaq_equities_orders_ouch_v5_0_dissect.time_in_force(buffer, index, packet, parent)

  -- Display: 1 Byte Ascii String Enum with 14 values
  index, display = nasdaq_equities_orders_ouch_v5_0_dissect.display(buffer, index, packet, parent)

  -- Order Reference Number: 8 Byte Unsigned Fixed Width Integer
  index, order_reference_number = nasdaq_equities_orders_ouch_v5_0_dissect.order_reference_number(buffer, index, packet, parent)

  -- Capacity: 1 Byte Ascii String Enum with 4 values
  index, capacity = nasdaq_equities_orders_ouch_v5_0_dissect.capacity(buffer, index, packet, parent)

  -- Inter Market Sweep Eligibility: 1 Byte Ascii String Enum with 2 values
  index, inter_market_sweep_eligibility = nasdaq_equities_orders_ouch_v5_0_dissect.inter_market_sweep_eligibility(buffer, index, packet, parent)

  -- Cross Type: 1 Byte Ascii String Enum with 8 values
  index, cross_type = nasdaq_equities_orders_ouch_v5_0_dissect.cross_type(buffer, index, packet, parent)

  -- Order State: 1 Byte Ascii String Enum with 2 values
  index, order_state = nasdaq_equities_orders_ouch_v5_0_dissect.order_state(buffer, index, packet, parent)

  -- Cl Ord Id: 14 Byte Ascii String
  index, cl_ord_id = nasdaq_equities_orders_ouch_v5_0_dissect.cl_ord_id(buffer, index, packet, parent)

  -- Appendage Length: 2 Byte Unsigned Fixed Width Integer
  index, appendage_length = nasdaq_equities_orders_ouch_v5_0_dissect.appendage_length(buffer, index, packet, parent)

  -- Replaced Message Appendage
  index, replaced_message_appendage = nasdaq_equities_orders_ouch_v5_0_dissect.replaced_message_appendage(buffer, index, packet, parent)

  return index
end

-- Dissect: Replaced Message
nasdaq_equities_orders_ouch_v5_0_dissect.replaced_message = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.replaced_message then
    local length = nasdaq_equities_orders_ouch_v5_0_size_of.replaced_message(buffer, offset)
    local range = buffer(offset, length)
    local display = nasdaq_equities_orders_ouch_v5_0_display.replaced_message(buffer, packet, parent)
    parent = parent:add(nasdaq_equities_orders_ouch_v5_0.fields.replaced_message, range, display)
  end

  return nasdaq_equities_orders_ouch_v5_0_dissect.replaced_message_fields(buffer, offset, packet, parent)
end

-- Size: Bbo Weight Indicator
nasdaq_equities_orders_ouch_v5_0_size_of.bbo_weight_indicator = 1

-- Display: Bbo Weight Indicator
nasdaq_equities_orders_ouch_v5_0_display.bbo_weight_indicator = function(value)
  return "Bbo Weight Indicator: "..value
end

-- Dissect: Bbo Weight Indicator
nasdaq_equities_orders_ouch_v5_0_dissect.bbo_weight_indicator = function(buffer, offset, packet, parent)
  local length = nasdaq_equities_orders_ouch_v5_0_size_of.bbo_weight_indicator
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_equities_orders_ouch_v5_0_display.bbo_weight_indicator(value, buffer, offset, packet, parent)

  parent:add(nasdaq_equities_orders_ouch_v5_0.fields.bbo_weight_indicator, range, value, display)

  return offset + length, value
end

-- Size: Handle Inst
nasdaq_equities_orders_ouch_v5_0_size_of.handle_inst = 1

-- Display: Handle Inst
nasdaq_equities_orders_ouch_v5_0_display.handle_inst = function(value)
  return "Handle Inst: "..value
end

-- Dissect: Handle Inst
nasdaq_equities_orders_ouch_v5_0_dissect.handle_inst = function(buffer, offset, packet, parent)
  local length = nasdaq_equities_orders_ouch_v5_0_size_of.handle_inst
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_equities_orders_ouch_v5_0_display.handle_inst(value, buffer, offset, packet, parent)

  parent:add(nasdaq_equities_orders_ouch_v5_0.fields.handle_inst, range, value, display)

  return offset + length, value
end

-- Size: Trade Now
nasdaq_equities_orders_ouch_v5_0_size_of.trade_now = 1

-- Display: Trade Now
nasdaq_equities_orders_ouch_v5_0_display.trade_now = function(value)
  return "Trade Now: "..value
end

-- Dissect: Trade Now
nasdaq_equities_orders_ouch_v5_0_dissect.trade_now = function(buffer, offset, packet, parent)
  local length = nasdaq_equities_orders_ouch_v5_0_size_of.trade_now
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_equities_orders_ouch_v5_0_display.trade_now(value, buffer, offset, packet, parent)

  parent:add(nasdaq_equities_orders_ouch_v5_0.fields.trade_now, range, value, display)

  return offset + length, value
end

-- Size: Expire Time
nasdaq_equities_orders_ouch_v5_0_size_of.expire_time = 4

-- Display: Expire Time
nasdaq_equities_orders_ouch_v5_0_display.expire_time = function(value)
  return "Expire Time: "..value
end

-- Dissect: Expire Time
nasdaq_equities_orders_ouch_v5_0_dissect.expire_time = function(buffer, offset, packet, parent)
  local length = nasdaq_equities_orders_ouch_v5_0_size_of.expire_time
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_equities_orders_ouch_v5_0_display.expire_time(value, buffer, offset, packet, parent)

  parent:add(nasdaq_equities_orders_ouch_v5_0.fields.expire_time, range, value, display)

  return offset + length, value
end

-- Size: Route
nasdaq_equities_orders_ouch_v5_0_size_of.route = 4

-- Display: Route
nasdaq_equities_orders_ouch_v5_0_display.route = function(value)
  return "Route: "..value
end

-- Dissect: Route
nasdaq_equities_orders_ouch_v5_0_dissect.route = function(buffer, offset, packet, parent)
  local length = nasdaq_equities_orders_ouch_v5_0_size_of.route
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_equities_orders_ouch_v5_0_display.route(value, buffer, offset, packet, parent)

  parent:add(nasdaq_equities_orders_ouch_v5_0.fields.route, range, value, display)

  return offset + length, value
end

-- Size: Random Reserves
nasdaq_equities_orders_ouch_v5_0_size_of.random_reserves = 4

-- Display: Random Reserves
nasdaq_equities_orders_ouch_v5_0_display.random_reserves = function(value)
  return "Random Reserves: "..value
end

-- Dissect: Random Reserves
nasdaq_equities_orders_ouch_v5_0_dissect.random_reserves = function(buffer, offset, packet, parent)
  local length = nasdaq_equities_orders_ouch_v5_0_size_of.random_reserves
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_equities_orders_ouch_v5_0_display.random_reserves(value, buffer, offset, packet, parent)

  parent:add(nasdaq_equities_orders_ouch_v5_0.fields.random_reserves, range, value, display)

  return offset + length, value
end

-- Size: Post Only
nasdaq_equities_orders_ouch_v5_0_size_of.post_only = 1

-- Display: Post Only
nasdaq_equities_orders_ouch_v5_0_display.post_only = function(value)
  return "Post Only: "..value
end

-- Dissect: Post Only
nasdaq_equities_orders_ouch_v5_0_dissect.post_only = function(buffer, offset, packet, parent)
  local length = nasdaq_equities_orders_ouch_v5_0_size_of.post_only
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_equities_orders_ouch_v5_0_display.post_only(value, buffer, offset, packet, parent)

  parent:add(nasdaq_equities_orders_ouch_v5_0.fields.post_only, range, value, display)

  return offset + length, value
end

-- Size: Discretion Peg Offset
nasdaq_equities_orders_ouch_v5_0_size_of.discretion_peg_offset = 4

-- Display: Discretion Peg Offset
nasdaq_equities_orders_ouch_v5_0_display.discretion_peg_offset = function(value)
  return "Discretion Peg Offset: "..value
end

-- Dissect: Discretion Peg Offset
nasdaq_equities_orders_ouch_v5_0_dissect.discretion_peg_offset = function(buffer, offset, packet, parent)
  local length = nasdaq_equities_orders_ouch_v5_0_size_of.discretion_peg_offset
  local range = buffer(offset, length)
  local value = range:int()
  local display = nasdaq_equities_orders_ouch_v5_0_display.discretion_peg_offset(value, buffer, offset, packet, parent)

  parent:add(nasdaq_equities_orders_ouch_v5_0.fields.discretion_peg_offset, range, value, display)

  return offset + length, value
end

-- Size: Discretion Peg Type
nasdaq_equities_orders_ouch_v5_0_size_of.discretion_peg_type = 1

-- Display: Discretion Peg Type
nasdaq_equities_orders_ouch_v5_0_display.discretion_peg_type = function(value)
  return "Discretion Peg Type: "..value
end

-- Dissect: Discretion Peg Type
nasdaq_equities_orders_ouch_v5_0_dissect.discretion_peg_type = function(buffer, offset, packet, parent)
  local length = nasdaq_equities_orders_ouch_v5_0_size_of.discretion_peg_type
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_equities_orders_ouch_v5_0_display.discretion_peg_type(value, buffer, offset, packet, parent)

  parent:add(nasdaq_equities_orders_ouch_v5_0.fields.discretion_peg_type, range, value, display)

  return offset + length, value
end

-- Size: Discretion Price
nasdaq_equities_orders_ouch_v5_0_size_of.discretion_price = 8

-- Display: Discretion Price
nasdaq_equities_orders_ouch_v5_0_display.discretion_price = function(value)
  return "Discretion Price: "..value
end

-- Dissect: Discretion Price
nasdaq_equities_orders_ouch_v5_0_dissect.discretion_price = function(buffer, offset, packet, parent)
  local length = nasdaq_equities_orders_ouch_v5_0_size_of.discretion_price
  local range = buffer(offset, length)
  local value = range:int64()
  local display = nasdaq_equities_orders_ouch_v5_0_display.discretion_price(value, buffer, offset, packet, parent)

  parent:add(nasdaq_equities_orders_ouch_v5_0.fields.discretion_price, range, value, display)

  return offset + length, value
end

-- Size: Discretion
nasdaq_equities_orders_ouch_v5_0_size_of.discretion = 1

-- Display: Discretion
nasdaq_equities_orders_ouch_v5_0_display.discretion = function(value)
  return "Discretion: "..value
end

-- Dissect: Discretion
nasdaq_equities_orders_ouch_v5_0_dissect.discretion = function(buffer, offset, packet, parent)
  local length = nasdaq_equities_orders_ouch_v5_0_size_of.discretion
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_equities_orders_ouch_v5_0_display.discretion(value, buffer, offset, packet, parent)

  parent:add(nasdaq_equities_orders_ouch_v5_0.fields.discretion, range, value, display)

  return offset + length, value
end

-- Size: Peg Offset
nasdaq_equities_orders_ouch_v5_0_size_of.peg_offset = 4

-- Display: Peg Offset
nasdaq_equities_orders_ouch_v5_0_display.peg_offset = function(value)
  return "Peg Offset: "..value
end

-- Dissect: Peg Offset
nasdaq_equities_orders_ouch_v5_0_dissect.peg_offset = function(buffer, offset, packet, parent)
  local length = nasdaq_equities_orders_ouch_v5_0_size_of.peg_offset
  local range = buffer(offset, length)
  local value = range:int()
  local display = nasdaq_equities_orders_ouch_v5_0_display.peg_offset(value, buffer, offset, packet, parent)

  parent:add(nasdaq_equities_orders_ouch_v5_0.fields.peg_offset, range, value, display)

  return offset + length, value
end

-- Size: Price Type
nasdaq_equities_orders_ouch_v5_0_size_of.price_type = 1

-- Display: Price Type
nasdaq_equities_orders_ouch_v5_0_display.price_type = function(value)
  return "Price Type: "..value
end

-- Dissect: Price Type
nasdaq_equities_orders_ouch_v5_0_dissect.price_type = function(buffer, offset, packet, parent)
  local length = nasdaq_equities_orders_ouch_v5_0_size_of.price_type
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_equities_orders_ouch_v5_0_display.price_type(value, buffer, offset, packet, parent)

  parent:add(nasdaq_equities_orders_ouch_v5_0.fields.price_type, range, value, display)

  return offset + length, value
end

-- Size: Max Floor
nasdaq_equities_orders_ouch_v5_0_size_of.max_floor = 4

-- Display: Max Floor
nasdaq_equities_orders_ouch_v5_0_display.max_floor = function(value)
  return "Max Floor: "..value
end

-- Dissect: Max Floor
nasdaq_equities_orders_ouch_v5_0_dissect.max_floor = function(buffer, offset, packet, parent)
  local length = nasdaq_equities_orders_ouch_v5_0_size_of.max_floor
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_equities_orders_ouch_v5_0_display.max_floor(value, buffer, offset, packet, parent)

  parent:add(nasdaq_equities_orders_ouch_v5_0.fields.max_floor, range, value, display)

  return offset + length, value
end

-- Size: Customer Type
nasdaq_equities_orders_ouch_v5_0_size_of.customer_type = 1

-- Display: Customer Type
nasdaq_equities_orders_ouch_v5_0_display.customer_type = function(value)
  return "Customer Type: "..value
end

-- Dissect: Customer Type
nasdaq_equities_orders_ouch_v5_0_dissect.customer_type = function(buffer, offset, packet, parent)
  local length = nasdaq_equities_orders_ouch_v5_0_size_of.customer_type
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_equities_orders_ouch_v5_0_display.customer_type(value, buffer, offset, packet, parent)

  parent:add(nasdaq_equities_orders_ouch_v5_0.fields.customer_type, range, value, display)

  return offset + length, value
end

-- Size: Min Qty
nasdaq_equities_orders_ouch_v5_0_size_of.min_qty = 4

-- Display: Min Qty
nasdaq_equities_orders_ouch_v5_0_display.min_qty = function(value)
  return "Min Qty: "..value
end

-- Dissect: Min Qty
nasdaq_equities_orders_ouch_v5_0_dissect.min_qty = function(buffer, offset, packet, parent)
  local length = nasdaq_equities_orders_ouch_v5_0_size_of.min_qty
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_equities_orders_ouch_v5_0_display.min_qty(value, buffer, offset, packet, parent)

  parent:add(nasdaq_equities_orders_ouch_v5_0.fields.min_qty, range, value, display)

  return offset + length, value
end

-- Size: Firm
nasdaq_equities_orders_ouch_v5_0_size_of.firm = 4

-- Display: Firm
nasdaq_equities_orders_ouch_v5_0_display.firm = function(value)
  return "Firm: "..value
end

-- Dissect: Firm
nasdaq_equities_orders_ouch_v5_0_dissect.firm = function(buffer, offset, packet, parent)
  local length = nasdaq_equities_orders_ouch_v5_0_size_of.firm
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_equities_orders_ouch_v5_0_display.firm(value, buffer, offset, packet, parent)

  parent:add(nasdaq_equities_orders_ouch_v5_0.fields.firm, range, value, display)

  return offset + length, value
end

-- Calculate runtime size of: Order Accepted Optional Value
nasdaq_equities_orders_ouch_v5_0_size_of.order_accepted_optional_value = function(buffer, offset, order_accepted_optional_tag)
  -- Size of Firm
  if order_accepted_optional_tag == 2 then
    return nasdaq_equities_orders_ouch_v5_0_size_of.firm(buffer, offset)
  end
  -- Size of Min Qty
  if order_accepted_optional_tag == 3 then
    return nasdaq_equities_orders_ouch_v5_0_size_of.min_qty(buffer, offset)
  end
  -- Size of Customer Type
  if order_accepted_optional_tag == 4 then
    return nasdaq_equities_orders_ouch_v5_0_size_of.customer_type(buffer, offset)
  end
  -- Size of Max Floor
  if order_accepted_optional_tag == 5 then
    return nasdaq_equities_orders_ouch_v5_0_size_of.max_floor(buffer, offset)
  end
  -- Size of Price Type
  if order_accepted_optional_tag == 6 then
    return nasdaq_equities_orders_ouch_v5_0_size_of.price_type(buffer, offset)
  end
  -- Size of Peg Offset
  if order_accepted_optional_tag == 7 then
    return nasdaq_equities_orders_ouch_v5_0_size_of.peg_offset(buffer, offset)
  end
  -- Size of Discretion
  if order_accepted_optional_tag == 8 then
    return nasdaq_equities_orders_ouch_v5_0_size_of.discretion(buffer, offset)
  end
  -- Size of Discretion Price
  if order_accepted_optional_tag == 9 then
    return nasdaq_equities_orders_ouch_v5_0_size_of.discretion_price(buffer, offset)
  end
  -- Size of Discretion Peg Type
  if order_accepted_optional_tag == 10 then
    return nasdaq_equities_orders_ouch_v5_0_size_of.discretion_peg_type(buffer, offset)
  end
  -- Size of Discretion Peg Offset
  if order_accepted_optional_tag == 11 then
    return nasdaq_equities_orders_ouch_v5_0_size_of.discretion_peg_offset(buffer, offset)
  end
  -- Size of Post Only
  if order_accepted_optional_tag == 12 then
    return nasdaq_equities_orders_ouch_v5_0_size_of.post_only(buffer, offset)
  end
  -- Size of Random Reserves
  if order_accepted_optional_tag == 13 then
    return nasdaq_equities_orders_ouch_v5_0_size_of.random_reserves(buffer, offset)
  end
  -- Size of Route
  if order_accepted_optional_tag == 14 then
    return nasdaq_equities_orders_ouch_v5_0_size_of.route(buffer, offset)
  end
  -- Size of Expire Time
  if order_accepted_optional_tag == 15 then
    return nasdaq_equities_orders_ouch_v5_0_size_of.expire_time(buffer, offset)
  end
  -- Size of Trade Now
  if order_accepted_optional_tag == 16 then
    return nasdaq_equities_orders_ouch_v5_0_size_of.trade_now(buffer, offset)
  end
  -- Size of Handle Inst
  if order_accepted_optional_tag == 17 then
    return nasdaq_equities_orders_ouch_v5_0_size_of.handle_inst(buffer, offset)
  end
  -- Size of Bbo Weight Indicator
  if order_accepted_optional_tag == 18 then
    return nasdaq_equities_orders_ouch_v5_0_size_of.bbo_weight_indicator(buffer, offset)
  end

  return 0
end

-- Display: Order Accepted Optional Value
nasdaq_equities_orders_ouch_v5_0_display.order_accepted_optional_value = function(buffer, offset, packet, parent)
  return ""
end

-- Dissect Branches: Order Accepted Optional Value
nasdaq_equities_orders_ouch_v5_0_dissect.order_accepted_optional_value_branches = function(buffer, offset, packet, parent, order_accepted_optional_tag)
  -- Dissect Firm
  if order_accepted_optional_tag == 2 then
    return nasdaq_equities_orders_ouch_v5_0_dissect.firm(buffer, offset, packet, parent)
  end
  -- Dissect Min Qty
  if order_accepted_optional_tag == 3 then
    return nasdaq_equities_orders_ouch_v5_0_dissect.min_qty(buffer, offset, packet, parent)
  end
  -- Dissect Customer Type
  if order_accepted_optional_tag == 4 then
    return nasdaq_equities_orders_ouch_v5_0_dissect.customer_type(buffer, offset, packet, parent)
  end
  -- Dissect Max Floor
  if order_accepted_optional_tag == 5 then
    return nasdaq_equities_orders_ouch_v5_0_dissect.max_floor(buffer, offset, packet, parent)
  end
  -- Dissect Price Type
  if order_accepted_optional_tag == 6 then
    return nasdaq_equities_orders_ouch_v5_0_dissect.price_type(buffer, offset, packet, parent)
  end
  -- Dissect Peg Offset
  if order_accepted_optional_tag == 7 then
    return nasdaq_equities_orders_ouch_v5_0_dissect.peg_offset(buffer, offset, packet, parent)
  end
  -- Dissect Discretion
  if order_accepted_optional_tag == 8 then
    return nasdaq_equities_orders_ouch_v5_0_dissect.discretion(buffer, offset, packet, parent)
  end
  -- Dissect Discretion Price
  if order_accepted_optional_tag == 9 then
    return nasdaq_equities_orders_ouch_v5_0_dissect.discretion_price(buffer, offset, packet, parent)
  end
  -- Dissect Discretion Peg Type
  if order_accepted_optional_tag == 10 then
    return nasdaq_equities_orders_ouch_v5_0_dissect.discretion_peg_type(buffer, offset, packet, parent)
  end
  -- Dissect Discretion Peg Offset
  if order_accepted_optional_tag == 11 then
    return nasdaq_equities_orders_ouch_v5_0_dissect.discretion_peg_offset(buffer, offset, packet, parent)
  end
  -- Dissect Post Only
  if order_accepted_optional_tag == 12 then
    return nasdaq_equities_orders_ouch_v5_0_dissect.post_only(buffer, offset, packet, parent)
  end
  -- Dissect Random Reserves
  if order_accepted_optional_tag == 13 then
    return nasdaq_equities_orders_ouch_v5_0_dissect.random_reserves(buffer, offset, packet, parent)
  end
  -- Dissect Route
  if order_accepted_optional_tag == 14 then
    return nasdaq_equities_orders_ouch_v5_0_dissect.route(buffer, offset, packet, parent)
  end
  -- Dissect Expire Time
  if order_accepted_optional_tag == 15 then
    return nasdaq_equities_orders_ouch_v5_0_dissect.expire_time(buffer, offset, packet, parent)
  end
  -- Dissect Trade Now
  if order_accepted_optional_tag == 16 then
    return nasdaq_equities_orders_ouch_v5_0_dissect.trade_now(buffer, offset, packet, parent)
  end
  -- Dissect Handle Inst
  if order_accepted_optional_tag == 17 then
    return nasdaq_equities_orders_ouch_v5_0_dissect.handle_inst(buffer, offset, packet, parent)
  end
  -- Dissect Bbo Weight Indicator
  if order_accepted_optional_tag == 18 then
    return nasdaq_equities_orders_ouch_v5_0_dissect.bbo_weight_indicator(buffer, offset, packet, parent)
  end

  return offset
end

-- Dissect: Order Accepted Optional Value
nasdaq_equities_orders_ouch_v5_0_dissect.order_accepted_optional_value = function(buffer, offset, packet, parent, order_accepted_optional_tag)
  if not show.order_accepted_optional_value then
    return nasdaq_equities_orders_ouch_v5_0_dissect.order_accepted_optional_value_branches(buffer, offset, packet, parent, order_accepted_optional_tag)
  end

  -- Calculate size and check that branch is not empty
  local size = nasdaq_equities_orders_ouch_v5_0_size_of.order_accepted_optional_value(buffer, offset, order_accepted_optional_tag)
  if size == 0 then
    return offset
  end

  -- Dissect Element
  local range = buffer(offset, size)
  local display = nasdaq_equities_orders_ouch_v5_0_display.order_accepted_optional_value(buffer, packet, parent)
  local element = parent:add(nasdaq_equities_orders_ouch_v5_0.fields.order_accepted_optional_value, range, display)

  return nasdaq_equities_orders_ouch_v5_0_dissect.order_accepted_optional_value_branches(buffer, offset, packet, parent, order_accepted_optional_tag)
end

-- Size: Order Accepted Optional Tag
nasdaq_equities_orders_ouch_v5_0_size_of.order_accepted_optional_tag = 1

-- Display: Order Accepted Optional Tag
nasdaq_equities_orders_ouch_v5_0_display.order_accepted_optional_tag = function(value)
  if value == 2 then
    return "Order Accepted Optional Tag: Firm (2)"
  end
  if value == 3 then
    return "Order Accepted Optional Tag: Min Qty (3)"
  end
  if value == 4 then
    return "Order Accepted Optional Tag: Customer Type (4)"
  end
  if value == 5 then
    return "Order Accepted Optional Tag: Max Floor (5)"
  end
  if value == 6 then
    return "Order Accepted Optional Tag: Price Type (6)"
  end
  if value == 7 then
    return "Order Accepted Optional Tag: Peg Offset (7)"
  end
  if value == 8 then
    return "Order Accepted Optional Tag: Discretion (8)"
  end
  if value == 9 then
    return "Order Accepted Optional Tag: Discretion Price (9)"
  end
  if value == 10 then
    return "Order Accepted Optional Tag: Discretion Peg Type (10)"
  end
  if value == 11 then
    return "Order Accepted Optional Tag: Discretion Peg Offset (11)"
  end
  if value == 12 then
    return "Order Accepted Optional Tag: Post Only (12)"
  end
  if value == 13 then
    return "Order Accepted Optional Tag: Random Reserves (13)"
  end
  if value == 14 then
    return "Order Accepted Optional Tag: Route (14)"
  end
  if value == 15 then
    return "Order Accepted Optional Tag: Expire Time (15)"
  end
  if value == 16 then
    return "Order Accepted Optional Tag: Trade Now (16)"
  end
  if value == 17 then
    return "Order Accepted Optional Tag: Handle Inst (17)"
  end
  if value == 18 then
    return "Order Accepted Optional Tag: Bbo Weight Indicator (18)"
  end

  return "Order Accepted Optional Tag: Unknown("..value..")"
end

-- Dissect: Order Accepted Optional Tag
nasdaq_equities_orders_ouch_v5_0_dissect.order_accepted_optional_tag = function(buffer, offset, packet, parent)
  local length = nasdaq_equities_orders_ouch_v5_0_size_of.order_accepted_optional_tag
  local range = buffer(offset, length)
  local value = range:int()
  local display = nasdaq_equities_orders_ouch_v5_0_display.order_accepted_optional_tag(value, buffer, offset, packet, parent)

  parent:add(nasdaq_equities_orders_ouch_v5_0.fields.order_accepted_optional_tag, range, value, display)

  return offset + length, value
end

-- Size: Order Accepted Optional Field Length
nasdaq_equities_orders_ouch_v5_0_size_of.order_accepted_optional_field_length = 1

-- Display: Order Accepted Optional Field Length
nasdaq_equities_orders_ouch_v5_0_display.order_accepted_optional_field_length = function(value)
  return "Order Accepted Optional Field Length: "..value
end

-- Dissect: Order Accepted Optional Field Length
nasdaq_equities_orders_ouch_v5_0_dissect.order_accepted_optional_field_length = function(buffer, offset, packet, parent)
  local length = nasdaq_equities_orders_ouch_v5_0_size_of.order_accepted_optional_field_length
  local range = buffer(offset, length)
  local value = range:int()
  local display = nasdaq_equities_orders_ouch_v5_0_display.order_accepted_optional_field_length(value, buffer, offset, packet, parent)

  parent:add(nasdaq_equities_orders_ouch_v5_0.fields.order_accepted_optional_field_length, range, value, display)

  return offset + length, value
end

-- Display: Order Accepted Appendage
nasdaq_equities_orders_ouch_v5_0_display.order_accepted_appendage = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Order Accepted Appendage
nasdaq_equities_orders_ouch_v5_0_dissect.order_accepted_appendage_fields = function(buffer, offset, packet, parent, size_of_order_accepted_appendage)
  local index = offset

  -- Order Accepted Optional Field Length: 1 Byte Signed Fixed Width Integer
  index, order_accepted_optional_field_length = nasdaq_equities_orders_ouch_v5_0_dissect.order_accepted_optional_field_length(buffer, index, packet, parent)

  -- Order Accepted Optional Tag: 1 Byte Signed Fixed Width Integer Enum with 17 values
  index, order_accepted_optional_tag = nasdaq_equities_orders_ouch_v5_0_dissect.order_accepted_optional_tag(buffer, index, packet, parent)

  -- Order Accepted Optional Value: Runtime Type with 17 branches
  index = nasdaq_equities_orders_ouch_v5_0_dissect.order_accepted_optional_value(buffer, index, packet, parent, order_accepted_optional_tag)

  return index
end

-- Dissect: Order Accepted Appendage
nasdaq_equities_orders_ouch_v5_0_dissect.order_accepted_appendage = function(buffer, offset, packet, parent, size_of_order_accepted_appendage)
  -- Optionally add struct element to protocol tree
  if show.order_accepted_appendage then
    local range = buffer(offset, size_of_order_accepted_appendage)
    local display = nasdaq_equities_orders_ouch_v5_0_display.order_accepted_appendage(buffer, packet, parent)
    parent = parent:add(nasdaq_equities_orders_ouch_v5_0.fields.order_accepted_appendage, range, display)
  end

  nasdaq_equities_orders_ouch_v5_0_dissect.order_accepted_appendage_fields(buffer, offset, packet, parent, size_of_order_accepted_appendage)

  return offset + size_of_order_accepted_appendage
end

-- Size: Uesr Ref Num
nasdaq_equities_orders_ouch_v5_0_size_of.uesr_ref_num = 4

-- Display: Uesr Ref Num
nasdaq_equities_orders_ouch_v5_0_display.uesr_ref_num = function(value)
  return "Uesr Ref Num: "..value
end

-- Dissect: Uesr Ref Num
nasdaq_equities_orders_ouch_v5_0_dissect.uesr_ref_num = function(buffer, offset, packet, parent)
  local length = nasdaq_equities_orders_ouch_v5_0_size_of.uesr_ref_num
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_equities_orders_ouch_v5_0_display.uesr_ref_num(value, buffer, offset, packet, parent)

  parent:add(nasdaq_equities_orders_ouch_v5_0.fields.uesr_ref_num, range, value, display)

  return offset + length, value
end

-- Size Of: Order Accepted Message
nasdaq_equities_orders_ouch_v5_0_size_of.order_accepted_message = function(buffer, offset)
  local index = 0

  return buffer:len() - (offset + index) 
end

-- Display: Order Accepted Message
nasdaq_equities_orders_ouch_v5_0_display.order_accepted_message = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Order Accepted Message
nasdaq_equities_orders_ouch_v5_0_dissect.order_accepted_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Timestamp: 8 Byte Unsigned Fixed Width Integer
  index, timestamp = nasdaq_equities_orders_ouch_v5_0_dissect.timestamp(buffer, index, packet, parent)

  -- Uesr Ref Num: 4 Byte Unsigned Fixed Width Integer
  index, uesr_ref_num = nasdaq_equities_orders_ouch_v5_0_dissect.uesr_ref_num(buffer, index, packet, parent)

  -- Side: 1 Byte Ascii String Enum with 4 values
  index, side = nasdaq_equities_orders_ouch_v5_0_dissect.side(buffer, index, packet, parent)

  -- Quantity: 4 Byte Unsigned Fixed Width Integer
  index, quantity = nasdaq_equities_orders_ouch_v5_0_dissect.quantity(buffer, index, packet, parent)

  -- Symbol: 8 Byte Ascii String
  index, symbol = nasdaq_equities_orders_ouch_v5_0_dissect.symbol(buffer, index, packet, parent)

  -- Price: 8 Byte Signed Fixed Width Integer
  index, price = nasdaq_equities_orders_ouch_v5_0_dissect.price(buffer, index, packet, parent)

  -- Time In Force: 1 Byte Ascii String Enum with 5 values
  index, time_in_force = nasdaq_equities_orders_ouch_v5_0_dissect.time_in_force(buffer, index, packet, parent)

  -- Display: 1 Byte Ascii String Enum with 14 values
  index, display = nasdaq_equities_orders_ouch_v5_0_dissect.display(buffer, index, packet, parent)

  -- Order Reference Number: 8 Byte Unsigned Fixed Width Integer
  index, order_reference_number = nasdaq_equities_orders_ouch_v5_0_dissect.order_reference_number(buffer, index, packet, parent)

  -- Capacity: 1 Byte Ascii String Enum with 4 values
  index, capacity = nasdaq_equities_orders_ouch_v5_0_dissect.capacity(buffer, index, packet, parent)

  -- Inter Market Sweep Eligibility: 1 Byte Ascii String Enum with 2 values
  index, inter_market_sweep_eligibility = nasdaq_equities_orders_ouch_v5_0_dissect.inter_market_sweep_eligibility(buffer, index, packet, parent)

  -- Cross Type: 1 Byte Ascii String Enum with 8 values
  index, cross_type = nasdaq_equities_orders_ouch_v5_0_dissect.cross_type(buffer, index, packet, parent)

  -- Order State: 1 Byte Ascii String Enum with 2 values
  index, order_state = nasdaq_equities_orders_ouch_v5_0_dissect.order_state(buffer, index, packet, parent)

  -- Cl Ord Id: 14 Byte Ascii String
  index, cl_ord_id = nasdaq_equities_orders_ouch_v5_0_dissect.cl_ord_id(buffer, index, packet, parent)

  -- Appendage Length: 2 Byte Unsigned Fixed Width Integer
  index, appendage_length = nasdaq_equities_orders_ouch_v5_0_dissect.appendage_length(buffer, index, packet, parent)

  -- Dependency for Order Accepted Appendage
  local end_of_payload = appendage_length

  -- Order Accepted Appendage: Struct of 3 fields
  while index < end_of_payload do

    -- Dependency element: Order Accepted Optional Field Length
    local order_accepted_optional_field_length = buffer(index, 1):int()

    -- Runtime Size Of: Order Accepted Appendage
    local size_of_order_accepted_appendage = order_accepted_optional_field_length - 1

    -- Order Accepted Appendage: Struct of 3 fields
    index = nasdaq_equities_orders_ouch_v5_0_dissect.order_accepted_appendage(buffer, index, packet, parent, size_of_order_accepted_appendage)
  end

  return index
end

-- Dissect: Order Accepted Message
nasdaq_equities_orders_ouch_v5_0_dissect.order_accepted_message = function(buffer, offset, packet, parent)
  -- Optionally add dynamic struct element to protocol tree
  if show.order_accepted_message then
    local length = nasdaq_equities_orders_ouch_v5_0_size_of.order_accepted_message(buffer, offset)
    local range = buffer(offset, length)
    local display = nasdaq_equities_orders_ouch_v5_0_display.order_accepted_message(buffer, packet, parent)
    parent = parent:add(nasdaq_equities_orders_ouch_v5_0.fields.order_accepted_message, range, display)
  end

  return nasdaq_equities_orders_ouch_v5_0_dissect.order_accepted_message_fields(buffer, offset, packet, parent)
end

-- Size: Event Code
nasdaq_equities_orders_ouch_v5_0_size_of.event_code = 1

-- Display: Event Code
nasdaq_equities_orders_ouch_v5_0_display.event_code = function(value)
  if value == "S" then
    return "Event Code: Start Of Day (S)"
  end
  if value == "E" then
    return "Event Code: End Of Day (E)"
  end

  return "Event Code: Unknown("..value..")"
end

-- Dissect: Event Code
nasdaq_equities_orders_ouch_v5_0_dissect.event_code = function(buffer, offset, packet, parent)
  local length = nasdaq_equities_orders_ouch_v5_0_size_of.event_code
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_equities_orders_ouch_v5_0_display.event_code(value, buffer, offset, packet, parent)

  parent:add(nasdaq_equities_orders_ouch_v5_0.fields.event_code, range, value, display)

  return offset + length, value
end

-- Calculate size of: System Event Message
nasdaq_equities_orders_ouch_v5_0_size_of.system_event_message = function(buffer, offset)
  local index = 0

  index = index + nasdaq_equities_orders_ouch_v5_0_size_of.timestamp

  index = index + nasdaq_equities_orders_ouch_v5_0_size_of.event_code

  return index
end

-- Display: System Event Message
nasdaq_equities_orders_ouch_v5_0_display.system_event_message = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: System Event Message
nasdaq_equities_orders_ouch_v5_0_dissect.system_event_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Timestamp: 8 Byte Unsigned Fixed Width Integer
  index, timestamp = nasdaq_equities_orders_ouch_v5_0_dissect.timestamp(buffer, index, packet, parent)

  -- Event Code: 1 Byte Ascii String Enum with 2 values
  index, event_code = nasdaq_equities_orders_ouch_v5_0_dissect.event_code(buffer, index, packet, parent)

  return index
end

-- Dissect: System Event Message
nasdaq_equities_orders_ouch_v5_0_dissect.system_event_message = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.system_event_message then
    local length = nasdaq_equities_orders_ouch_v5_0_size_of.system_event_message(buffer, offset)
    local range = buffer(offset, length)
    local display = nasdaq_equities_orders_ouch_v5_0_display.system_event_message(buffer, packet, parent)
    parent = parent:add(nasdaq_equities_orders_ouch_v5_0.fields.system_event_message, range, display)
  end

  return nasdaq_equities_orders_ouch_v5_0_dissect.system_event_message_fields(buffer, offset, packet, parent)
end

-- Calculate size of: Modify Order Message
nasdaq_equities_orders_ouch_v5_0_size_of.modify_order_message = function(buffer, offset)
  local index = 0

  index = index + nasdaq_equities_orders_ouch_v5_0_size_of.user_ref_num

  index = index + nasdaq_equities_orders_ouch_v5_0_size_of.side

  index = index + nasdaq_equities_orders_ouch_v5_0_size_of.quantity

  return index
end

-- Display: Modify Order Message
nasdaq_equities_orders_ouch_v5_0_display.modify_order_message = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Modify Order Message
nasdaq_equities_orders_ouch_v5_0_dissect.modify_order_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- User Ref Num: 4 Byte Unsigned Fixed Width Integer
  index, user_ref_num = nasdaq_equities_orders_ouch_v5_0_dissect.user_ref_num(buffer, index, packet, parent)

  -- Side: 1 Byte Ascii String Enum with 4 values
  index, side = nasdaq_equities_orders_ouch_v5_0_dissect.side(buffer, index, packet, parent)

  -- Quantity: 4 Byte Unsigned Fixed Width Integer
  index, quantity = nasdaq_equities_orders_ouch_v5_0_dissect.quantity(buffer, index, packet, parent)

  return index
end

-- Dissect: Modify Order Message
nasdaq_equities_orders_ouch_v5_0_dissect.modify_order_message = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.modify_order_message then
    local length = nasdaq_equities_orders_ouch_v5_0_size_of.modify_order_message(buffer, offset)
    local range = buffer(offset, length)
    local display = nasdaq_equities_orders_ouch_v5_0_display.modify_order_message(buffer, packet, parent)
    parent = parent:add(nasdaq_equities_orders_ouch_v5_0.fields.modify_order_message, range, display)
  end

  return nasdaq_equities_orders_ouch_v5_0_dissect.modify_order_message_fields(buffer, offset, packet, parent)
end

-- Calculate size of: Cancel Order Message
nasdaq_equities_orders_ouch_v5_0_size_of.cancel_order_message = function(buffer, offset)
  local index = 0

  index = index + nasdaq_equities_orders_ouch_v5_0_size_of.user_ref_num

  index = index + nasdaq_equities_orders_ouch_v5_0_size_of.quantity

  return index
end

-- Display: Cancel Order Message
nasdaq_equities_orders_ouch_v5_0_display.cancel_order_message = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Cancel Order Message
nasdaq_equities_orders_ouch_v5_0_dissect.cancel_order_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- User Ref Num: 4 Byte Unsigned Fixed Width Integer
  index, user_ref_num = nasdaq_equities_orders_ouch_v5_0_dissect.user_ref_num(buffer, index, packet, parent)

  -- Quantity: 4 Byte Unsigned Fixed Width Integer
  index, quantity = nasdaq_equities_orders_ouch_v5_0_dissect.quantity(buffer, index, packet, parent)

  return index
end

-- Dissect: Cancel Order Message
nasdaq_equities_orders_ouch_v5_0_dissect.cancel_order_message = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.cancel_order_message then
    local length = nasdaq_equities_orders_ouch_v5_0_size_of.cancel_order_message(buffer, offset)
    local range = buffer(offset, length)
    local display = nasdaq_equities_orders_ouch_v5_0_display.cancel_order_message(buffer, packet, parent)
    parent = parent:add(nasdaq_equities_orders_ouch_v5_0.fields.cancel_order_message, range, display)
  end

  return nasdaq_equities_orders_ouch_v5_0_dissect.cancel_order_message_fields(buffer, offset, packet, parent)
end

-- Calculate runtime size of: Replace Order Optional Value
nasdaq_equities_orders_ouch_v5_0_size_of.replace_order_optional_value = function(buffer, offset, replace_order_optional_tag)
  -- Size of Min Qty
  if replace_order_optional_tag == 3 then
    return nasdaq_equities_orders_ouch_v5_0_size_of.min_qty(buffer, offset)
  end
  -- Size of Max Floor
  if replace_order_optional_tag == 5 then
    return nasdaq_equities_orders_ouch_v5_0_size_of.max_floor(buffer, offset)
  end
  -- Size of Price Type
  if replace_order_optional_tag == 6 then
    return nasdaq_equities_orders_ouch_v5_0_size_of.price_type(buffer, offset)
  end
  -- Size of Post Only
  if replace_order_optional_tag == 12 then
    return nasdaq_equities_orders_ouch_v5_0_size_of.post_only(buffer, offset)
  end
  -- Size of Expire Time
  if replace_order_optional_tag == 15 then
    return nasdaq_equities_orders_ouch_v5_0_size_of.expire_time(buffer, offset)
  end
  -- Size of Trade Now
  if replace_order_optional_tag == 16 then
    return nasdaq_equities_orders_ouch_v5_0_size_of.trade_now(buffer, offset)
  end
  -- Size of Handle Inst
  if replace_order_optional_tag == 17 then
    return nasdaq_equities_orders_ouch_v5_0_size_of.handle_inst(buffer, offset)
  end

  return 0
end

-- Display: Replace Order Optional Value
nasdaq_equities_orders_ouch_v5_0_display.replace_order_optional_value = function(buffer, offset, packet, parent)
  return ""
end

-- Dissect Branches: Replace Order Optional Value
nasdaq_equities_orders_ouch_v5_0_dissect.replace_order_optional_value_branches = function(buffer, offset, packet, parent, replace_order_optional_tag)
  -- Dissect Min Qty
  if replace_order_optional_tag == 3 then
    return nasdaq_equities_orders_ouch_v5_0_dissect.min_qty(buffer, offset, packet, parent)
  end
  -- Dissect Max Floor
  if replace_order_optional_tag == 5 then
    return nasdaq_equities_orders_ouch_v5_0_dissect.max_floor(buffer, offset, packet, parent)
  end
  -- Dissect Price Type
  if replace_order_optional_tag == 6 then
    return nasdaq_equities_orders_ouch_v5_0_dissect.price_type(buffer, offset, packet, parent)
  end
  -- Dissect Post Only
  if replace_order_optional_tag == 12 then
    return nasdaq_equities_orders_ouch_v5_0_dissect.post_only(buffer, offset, packet, parent)
  end
  -- Dissect Expire Time
  if replace_order_optional_tag == 15 then
    return nasdaq_equities_orders_ouch_v5_0_dissect.expire_time(buffer, offset, packet, parent)
  end
  -- Dissect Trade Now
  if replace_order_optional_tag == 16 then
    return nasdaq_equities_orders_ouch_v5_0_dissect.trade_now(buffer, offset, packet, parent)
  end
  -- Dissect Handle Inst
  if replace_order_optional_tag == 17 then
    return nasdaq_equities_orders_ouch_v5_0_dissect.handle_inst(buffer, offset, packet, parent)
  end

  return offset
end

-- Dissect: Replace Order Optional Value
nasdaq_equities_orders_ouch_v5_0_dissect.replace_order_optional_value = function(buffer, offset, packet, parent, replace_order_optional_tag)
  if not show.replace_order_optional_value then
    return nasdaq_equities_orders_ouch_v5_0_dissect.replace_order_optional_value_branches(buffer, offset, packet, parent, replace_order_optional_tag)
  end

  -- Calculate size and check that branch is not empty
  local size = nasdaq_equities_orders_ouch_v5_0_size_of.replace_order_optional_value(buffer, offset, replace_order_optional_tag)
  if size == 0 then
    return offset
  end

  -- Dissect Element
  local range = buffer(offset, size)
  local display = nasdaq_equities_orders_ouch_v5_0_display.replace_order_optional_value(buffer, packet, parent)
  local element = parent:add(nasdaq_equities_orders_ouch_v5_0.fields.replace_order_optional_value, range, display)

  return nasdaq_equities_orders_ouch_v5_0_dissect.replace_order_optional_value_branches(buffer, offset, packet, parent, replace_order_optional_tag)
end

-- Size: Replace Order Optional Tag
nasdaq_equities_orders_ouch_v5_0_size_of.replace_order_optional_tag = 1

-- Display: Replace Order Optional Tag
nasdaq_equities_orders_ouch_v5_0_display.replace_order_optional_tag = function(value)
  if value == 3 then
    return "Replace Order Optional Tag: Min Qty (3)"
  end
  if value == 5 then
    return "Replace Order Optional Tag: Max Floor (5)"
  end
  if value == 6 then
    return "Replace Order Optional Tag: Price Type (6)"
  end
  if value == 12 then
    return "Replace Order Optional Tag: Post Only (12)"
  end
  if value == 15 then
    return "Replace Order Optional Tag: Expire Time (15)"
  end
  if value == 16 then
    return "Replace Order Optional Tag: Trade Now (16)"
  end
  if value == 17 then
    return "Replace Order Optional Tag: Handle Inst (17)"
  end

  return "Replace Order Optional Tag: Unknown("..value..")"
end

-- Dissect: Replace Order Optional Tag
nasdaq_equities_orders_ouch_v5_0_dissect.replace_order_optional_tag = function(buffer, offset, packet, parent)
  local length = nasdaq_equities_orders_ouch_v5_0_size_of.replace_order_optional_tag
  local range = buffer(offset, length)
  local value = range:int()
  local display = nasdaq_equities_orders_ouch_v5_0_display.replace_order_optional_tag(value, buffer, offset, packet, parent)

  parent:add(nasdaq_equities_orders_ouch_v5_0.fields.replace_order_optional_tag, range, value, display)

  return offset + length, value
end

-- Size: Replace Order Optional Field Length
nasdaq_equities_orders_ouch_v5_0_size_of.replace_order_optional_field_length = 1

-- Display: Replace Order Optional Field Length
nasdaq_equities_orders_ouch_v5_0_display.replace_order_optional_field_length = function(value)
  return "Replace Order Optional Field Length: "..value
end

-- Dissect: Replace Order Optional Field Length
nasdaq_equities_orders_ouch_v5_0_dissect.replace_order_optional_field_length = function(buffer, offset, packet, parent)
  local length = nasdaq_equities_orders_ouch_v5_0_size_of.replace_order_optional_field_length
  local range = buffer(offset, length)
  local value = range:int()
  local display = nasdaq_equities_orders_ouch_v5_0_display.replace_order_optional_field_length(value, buffer, offset, packet, parent)

  parent:add(nasdaq_equities_orders_ouch_v5_0.fields.replace_order_optional_field_length, range, value, display)

  return offset + length, value
end

-- Display: Replace Order Appendage
nasdaq_equities_orders_ouch_v5_0_display.replace_order_appendage = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Replace Order Appendage
nasdaq_equities_orders_ouch_v5_0_dissect.replace_order_appendage_fields = function(buffer, offset, packet, parent, size_of_replace_order_appendage)
  local index = offset

  -- Replace Order Optional Field Length: 1 Byte Signed Fixed Width Integer
  index, replace_order_optional_field_length = nasdaq_equities_orders_ouch_v5_0_dissect.replace_order_optional_field_length(buffer, index, packet, parent)

  -- Replace Order Optional Tag: 1 Byte Signed Fixed Width Integer Enum with 7 values
  index, replace_order_optional_tag = nasdaq_equities_orders_ouch_v5_0_dissect.replace_order_optional_tag(buffer, index, packet, parent)

  -- Replace Order Optional Value: Runtime Type with 7 branches
  index = nasdaq_equities_orders_ouch_v5_0_dissect.replace_order_optional_value(buffer, index, packet, parent, replace_order_optional_tag)

  return index
end

-- Dissect: Replace Order Appendage
nasdaq_equities_orders_ouch_v5_0_dissect.replace_order_appendage = function(buffer, offset, packet, parent, size_of_replace_order_appendage)
  -- Optionally add struct element to protocol tree
  if show.replace_order_appendage then
    local range = buffer(offset, size_of_replace_order_appendage)
    local display = nasdaq_equities_orders_ouch_v5_0_display.replace_order_appendage(buffer, packet, parent)
    parent = parent:add(nasdaq_equities_orders_ouch_v5_0.fields.replace_order_appendage, range, display)
  end

  nasdaq_equities_orders_ouch_v5_0_dissect.replace_order_appendage_fields(buffer, offset, packet, parent, size_of_replace_order_appendage)

  return offset + size_of_replace_order_appendage
end

-- Size Of: Replace Order Message
nasdaq_equities_orders_ouch_v5_0_size_of.replace_order_message = function(buffer, offset)
  local index = 0

  return buffer:len() - (offset + index) 
end

-- Display: Replace Order Message
nasdaq_equities_orders_ouch_v5_0_display.replace_order_message = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Replace Order Message
nasdaq_equities_orders_ouch_v5_0_dissect.replace_order_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Orig User Ref Num: 4 Byte Unsigned Fixed Width Integer
  index, orig_user_ref_num = nasdaq_equities_orders_ouch_v5_0_dissect.orig_user_ref_num(buffer, index, packet, parent)

  -- User Ref Num: 4 Byte Unsigned Fixed Width Integer
  index, user_ref_num = nasdaq_equities_orders_ouch_v5_0_dissect.user_ref_num(buffer, index, packet, parent)

  -- Quantity: 4 Byte Unsigned Fixed Width Integer
  index, quantity = nasdaq_equities_orders_ouch_v5_0_dissect.quantity(buffer, index, packet, parent)

  -- Price: 8 Byte Signed Fixed Width Integer
  index, price = nasdaq_equities_orders_ouch_v5_0_dissect.price(buffer, index, packet, parent)

  -- Time In Force: 1 Byte Ascii String Enum with 5 values
  index, time_in_force = nasdaq_equities_orders_ouch_v5_0_dissect.time_in_force(buffer, index, packet, parent)

  -- Display: 1 Byte Ascii String Enum with 14 values
  index, display = nasdaq_equities_orders_ouch_v5_0_dissect.display(buffer, index, packet, parent)

  -- Inter Market Sweep Eligibility: 1 Byte Ascii String Enum with 2 values
  index, inter_market_sweep_eligibility = nasdaq_equities_orders_ouch_v5_0_dissect.inter_market_sweep_eligibility(buffer, index, packet, parent)

  -- Cl Ord Id: 14 Byte Ascii String
  index, cl_ord_id = nasdaq_equities_orders_ouch_v5_0_dissect.cl_ord_id(buffer, index, packet, parent)

  -- Appendage Length: 2 Byte Unsigned Fixed Width Integer
  index, appendage_length = nasdaq_equities_orders_ouch_v5_0_dissect.appendage_length(buffer, index, packet, parent)

  -- Dependency for Replace Order Appendage
  local end_of_payload = appendage_length

  -- Replace Order Appendage: Struct of 3 fields
  while index < end_of_payload do

    -- Dependency element: Replace Order Optional Field Length
    local replace_order_optional_field_length = buffer(index, 1):int()

    -- Runtime Size Of: Replace Order Appendage
    local size_of_replace_order_appendage = replace_order_optional_field_length - 1

    -- Replace Order Appendage: Struct of 3 fields
    index = nasdaq_equities_orders_ouch_v5_0_dissect.replace_order_appendage(buffer, index, packet, parent, size_of_replace_order_appendage)
  end

  return index
end

-- Dissect: Replace Order Message
nasdaq_equities_orders_ouch_v5_0_dissect.replace_order_message = function(buffer, offset, packet, parent)
  -- Optionally add dynamic struct element to protocol tree
  if show.replace_order_message then
    local length = nasdaq_equities_orders_ouch_v5_0_size_of.replace_order_message(buffer, offset)
    local range = buffer(offset, length)
    local display = nasdaq_equities_orders_ouch_v5_0_display.replace_order_message(buffer, packet, parent)
    parent = parent:add(nasdaq_equities_orders_ouch_v5_0.fields.replace_order_message, range, display)
  end

  return nasdaq_equities_orders_ouch_v5_0_dissect.replace_order_message_fields(buffer, offset, packet, parent)
end

-- Calculate runtime size of: Enter Order Optional Value
nasdaq_equities_orders_ouch_v5_0_size_of.enter_order_optional_value = function(buffer, offset, enter_order_optional_tag)
  -- Size of Firm
  if enter_order_optional_tag == 2 then
    return nasdaq_equities_orders_ouch_v5_0_size_of.firm(buffer, offset)
  end
  -- Size of Min Qty
  if enter_order_optional_tag == 3 then
    return nasdaq_equities_orders_ouch_v5_0_size_of.min_qty(buffer, offset)
  end
  -- Size of Customer Type
  if enter_order_optional_tag == 4 then
    return nasdaq_equities_orders_ouch_v5_0_size_of.customer_type(buffer, offset)
  end
  -- Size of Max Floor
  if enter_order_optional_tag == 5 then
    return nasdaq_equities_orders_ouch_v5_0_size_of.max_floor(buffer, offset)
  end

  return 0
end

-- Display: Enter Order Optional Value
nasdaq_equities_orders_ouch_v5_0_display.enter_order_optional_value = function(buffer, offset, packet, parent)
  return ""
end

-- Dissect Branches: Enter Order Optional Value
nasdaq_equities_orders_ouch_v5_0_dissect.enter_order_optional_value_branches = function(buffer, offset, packet, parent, enter_order_optional_tag)
  -- Dissect Firm
  if enter_order_optional_tag == 2 then
    return nasdaq_equities_orders_ouch_v5_0_dissect.firm(buffer, offset, packet, parent)
  end
  -- Dissect Min Qty
  if enter_order_optional_tag == 3 then
    return nasdaq_equities_orders_ouch_v5_0_dissect.min_qty(buffer, offset, packet, parent)
  end
  -- Dissect Customer Type
  if enter_order_optional_tag == 4 then
    return nasdaq_equities_orders_ouch_v5_0_dissect.customer_type(buffer, offset, packet, parent)
  end
  -- Dissect Max Floor
  if enter_order_optional_tag == 5 then
    return nasdaq_equities_orders_ouch_v5_0_dissect.max_floor(buffer, offset, packet, parent)
  end

  return offset
end

-- Dissect: Enter Order Optional Value
nasdaq_equities_orders_ouch_v5_0_dissect.enter_order_optional_value = function(buffer, offset, packet, parent, enter_order_optional_tag)
  if not show.enter_order_optional_value then
    return nasdaq_equities_orders_ouch_v5_0_dissect.enter_order_optional_value_branches(buffer, offset, packet, parent, enter_order_optional_tag)
  end

  -- Calculate size and check that branch is not empty
  local size = nasdaq_equities_orders_ouch_v5_0_size_of.enter_order_optional_value(buffer, offset, enter_order_optional_tag)
  if size == 0 then
    return offset
  end

  -- Dissect Element
  local range = buffer(offset, size)
  local display = nasdaq_equities_orders_ouch_v5_0_display.enter_order_optional_value(buffer, packet, parent)
  local element = parent:add(nasdaq_equities_orders_ouch_v5_0.fields.enter_order_optional_value, range, display)

  return nasdaq_equities_orders_ouch_v5_0_dissect.enter_order_optional_value_branches(buffer, offset, packet, parent, enter_order_optional_tag)
end

-- Size: Enter Order Optional Tag
nasdaq_equities_orders_ouch_v5_0_size_of.enter_order_optional_tag = 1

-- Display: Enter Order Optional Tag
nasdaq_equities_orders_ouch_v5_0_display.enter_order_optional_tag = function(value)
  if value == 2 then
    return "Enter Order Optional Tag: Firm (2)"
  end
  if value == 3 then
    return "Enter Order Optional Tag: Min Qty (3)"
  end
  if value == 4 then
    return "Enter Order Optional Tag: Customer Type (4)"
  end
  if value == 5 then
    return "Enter Order Optional Tag: Max Floor (5)"
  end

  return "Enter Order Optional Tag: Unknown("..value..")"
end

-- Dissect: Enter Order Optional Tag
nasdaq_equities_orders_ouch_v5_0_dissect.enter_order_optional_tag = function(buffer, offset, packet, parent)
  local length = nasdaq_equities_orders_ouch_v5_0_size_of.enter_order_optional_tag
  local range = buffer(offset, length)
  local value = range:int()
  local display = nasdaq_equities_orders_ouch_v5_0_display.enter_order_optional_tag(value, buffer, offset, packet, parent)

  parent:add(nasdaq_equities_orders_ouch_v5_0.fields.enter_order_optional_tag, range, value, display)

  return offset + length, value
end

-- Size: Enter Order Optional Field Length
nasdaq_equities_orders_ouch_v5_0_size_of.enter_order_optional_field_length = 1

-- Display: Enter Order Optional Field Length
nasdaq_equities_orders_ouch_v5_0_display.enter_order_optional_field_length = function(value)
  return "Enter Order Optional Field Length: "..value
end

-- Dissect: Enter Order Optional Field Length
nasdaq_equities_orders_ouch_v5_0_dissect.enter_order_optional_field_length = function(buffer, offset, packet, parent)
  local length = nasdaq_equities_orders_ouch_v5_0_size_of.enter_order_optional_field_length
  local range = buffer(offset, length)
  local value = range:int()
  local display = nasdaq_equities_orders_ouch_v5_0_display.enter_order_optional_field_length(value, buffer, offset, packet, parent)

  parent:add(nasdaq_equities_orders_ouch_v5_0.fields.enter_order_optional_field_length, range, value, display)

  return offset + length, value
end

-- Display: Enter Order Appendage
nasdaq_equities_orders_ouch_v5_0_display.enter_order_appendage = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Enter Order Appendage
nasdaq_equities_orders_ouch_v5_0_dissect.enter_order_appendage_fields = function(buffer, offset, packet, parent, size_of_enter_order_appendage)
  local index = offset

  -- Enter Order Optional Field Length: 1 Byte Signed Fixed Width Integer
  index, enter_order_optional_field_length = nasdaq_equities_orders_ouch_v5_0_dissect.enter_order_optional_field_length(buffer, index, packet, parent)

  -- Enter Order Optional Tag: 1 Byte Signed Fixed Width Integer Enum with 4 values
  index, enter_order_optional_tag = nasdaq_equities_orders_ouch_v5_0_dissect.enter_order_optional_tag(buffer, index, packet, parent)

  -- Enter Order Optional Value: Runtime Type with 4 branches
  index = nasdaq_equities_orders_ouch_v5_0_dissect.enter_order_optional_value(buffer, index, packet, parent, enter_order_optional_tag)

  return index
end

-- Dissect: Enter Order Appendage
nasdaq_equities_orders_ouch_v5_0_dissect.enter_order_appendage = function(buffer, offset, packet, parent, size_of_enter_order_appendage)
  -- Optionally add struct element to protocol tree
  if show.enter_order_appendage then
    local range = buffer(offset, size_of_enter_order_appendage)
    local display = nasdaq_equities_orders_ouch_v5_0_display.enter_order_appendage(buffer, packet, parent)
    parent = parent:add(nasdaq_equities_orders_ouch_v5_0.fields.enter_order_appendage, range, display)
  end

  nasdaq_equities_orders_ouch_v5_0_dissect.enter_order_appendage_fields(buffer, offset, packet, parent, size_of_enter_order_appendage)

  return offset + size_of_enter_order_appendage
end

-- Size Of: Enter Order Message
nasdaq_equities_orders_ouch_v5_0_size_of.enter_order_message = function(buffer, offset)
  local index = 0

  return buffer:len() - (offset + index) 
end

-- Display: Enter Order Message
nasdaq_equities_orders_ouch_v5_0_display.enter_order_message = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Enter Order Message
nasdaq_equities_orders_ouch_v5_0_dissect.enter_order_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- User Ref Num: 4 Byte Unsigned Fixed Width Integer
  index, user_ref_num = nasdaq_equities_orders_ouch_v5_0_dissect.user_ref_num(buffer, index, packet, parent)

  -- Side: 1 Byte Ascii String Enum with 4 values
  index, side = nasdaq_equities_orders_ouch_v5_0_dissect.side(buffer, index, packet, parent)

  -- Quantity: 4 Byte Unsigned Fixed Width Integer
  index, quantity = nasdaq_equities_orders_ouch_v5_0_dissect.quantity(buffer, index, packet, parent)

  -- Symbol: 8 Byte Ascii String
  index, symbol = nasdaq_equities_orders_ouch_v5_0_dissect.symbol(buffer, index, packet, parent)

  -- Price: 8 Byte Signed Fixed Width Integer
  index, price = nasdaq_equities_orders_ouch_v5_0_dissect.price(buffer, index, packet, parent)

  -- Time In Force: 1 Byte Ascii String Enum with 5 values
  index, time_in_force = nasdaq_equities_orders_ouch_v5_0_dissect.time_in_force(buffer, index, packet, parent)

  -- Display: 1 Byte Ascii String Enum with 14 values
  index, display = nasdaq_equities_orders_ouch_v5_0_dissect.display(buffer, index, packet, parent)

  -- Capacity: 1 Byte Ascii String Enum with 4 values
  index, capacity = nasdaq_equities_orders_ouch_v5_0_dissect.capacity(buffer, index, packet, parent)

  -- Inter Market Sweep Eligibility: 1 Byte Ascii String Enum with 2 values
  index, inter_market_sweep_eligibility = nasdaq_equities_orders_ouch_v5_0_dissect.inter_market_sweep_eligibility(buffer, index, packet, parent)

  -- Cross Type: 1 Byte Ascii String Enum with 8 values
  index, cross_type = nasdaq_equities_orders_ouch_v5_0_dissect.cross_type(buffer, index, packet, parent)

  -- Cl Ord Id: 14 Byte Ascii String
  index, cl_ord_id = nasdaq_equities_orders_ouch_v5_0_dissect.cl_ord_id(buffer, index, packet, parent)

  -- Appendage Length: 2 Byte Unsigned Fixed Width Integer
  index, appendage_length = nasdaq_equities_orders_ouch_v5_0_dissect.appendage_length(buffer, index, packet, parent)

  -- Dependency for Enter Order Appendage
  local end_of_payload = appendage_length

  -- Enter Order Appendage: Struct of 3 fields
  while index < end_of_payload do

    -- Dependency element: Enter Order Optional Field Length
    local enter_order_optional_field_length = buffer(index, 1):int()

    -- Runtime Size Of: Enter Order Appendage
    local size_of_enter_order_appendage = enter_order_optional_field_length - 1

    -- Enter Order Appendage: Struct of 3 fields
    index = nasdaq_equities_orders_ouch_v5_0_dissect.enter_order_appendage(buffer, index, packet, parent, size_of_enter_order_appendage)
  end

  return index
end

-- Dissect: Enter Order Message
nasdaq_equities_orders_ouch_v5_0_dissect.enter_order_message = function(buffer, offset, packet, parent)
  -- Optionally add dynamic struct element to protocol tree
  if show.enter_order_message then
    local length = nasdaq_equities_orders_ouch_v5_0_size_of.enter_order_message(buffer, offset)
    local range = buffer(offset, length)
    local display = nasdaq_equities_orders_ouch_v5_0_display.enter_order_message(buffer, packet, parent)
    parent = parent:add(nasdaq_equities_orders_ouch_v5_0.fields.enter_order_message, range, display)
  end

  return nasdaq_equities_orders_ouch_v5_0_dissect.enter_order_message_fields(buffer, offset, packet, parent)
end

-- Calculate runtime size of: Data
nasdaq_equities_orders_ouch_v5_0_size_of.data = function(buffer, offset, message_type)
  -- Size of Enter Order Message
  if message_type == "O" then
    return nasdaq_equities_orders_ouch_v5_0_size_of.enter_order_message(buffer, offset)
  end
  -- Size of Replace Order Message
  if message_type == "U" then
    return nasdaq_equities_orders_ouch_v5_0_size_of.replace_order_message(buffer, offset)
  end
  -- Size of Cancel Order Message
  if message_type == "X" then
    return nasdaq_equities_orders_ouch_v5_0_size_of.cancel_order_message(buffer, offset)
  end
  -- Size of Modify Order Message
  if message_type == "M" then
    return nasdaq_equities_orders_ouch_v5_0_size_of.modify_order_message(buffer, offset)
  end
  -- Size of Account Query Message
  if message_type == "Q" then
    return 0
  end
  -- Size of System Event Message
  if message_type == "S" then
    return nasdaq_equities_orders_ouch_v5_0_size_of.system_event_message(buffer, offset)
  end
  -- Size of Order Accepted Message
  if message_type == "A" then
    return nasdaq_equities_orders_ouch_v5_0_size_of.order_accepted_message(buffer, offset)
  end
  -- Size of Replaced Message
  if message_type == "U" then
    return nasdaq_equities_orders_ouch_v5_0_size_of.replaced_message(buffer, offset)
  end
  -- Size of Canceled Message
  if message_type == "C" then
    return nasdaq_equities_orders_ouch_v5_0_size_of.canceled_message(buffer, offset)
  end
  -- Size of Aiq Canceled Message
  if message_type == "C" then
    return nasdaq_equities_orders_ouch_v5_0_size_of.aiq_canceled_message(buffer, offset)
  end
  -- Size of Order Executed Message
  if message_type == "E" then
    return nasdaq_equities_orders_ouch_v5_0_size_of.order_executed_message(buffer, offset)
  end
  -- Size of Broken Trade Message
  if message_type == "B" then
    return nasdaq_equities_orders_ouch_v5_0_size_of.broken_trade_message(buffer, offset)
  end
  -- Size of Trade Correction Message
  if message_type == "F" then
    return nasdaq_equities_orders_ouch_v5_0_size_of.trade_correction_message(buffer, offset)
  end
  -- Size of Rejected Order Message
  if message_type == "J" then
    return nasdaq_equities_orders_ouch_v5_0_size_of.rejected_order_message(buffer, offset)
  end
  -- Size of Cancel Pending Message
  if message_type == "P" then
    return nasdaq_equities_orders_ouch_v5_0_size_of.cancel_pending_message(buffer, offset)
  end
  -- Size of Cancel Reject Message
  if message_type == "I" then
    return nasdaq_equities_orders_ouch_v5_0_size_of.cancel_reject_message(buffer, offset)
  end
  -- Size of Order Priority Update Message
  if message_type == "T" then
    return nasdaq_equities_orders_ouch_v5_0_size_of.order_priority_update_message(buffer, offset)
  end
  -- Size of Order Modified Message
  if message_type == "M" then
    return nasdaq_equities_orders_ouch_v5_0_size_of.order_modified_message(buffer, offset)
  end
  -- Size of Order Restated Message
  if message_type == "R" then
    return nasdaq_equities_orders_ouch_v5_0_size_of.order_restated_message(buffer, offset)
  end
  -- Size of Account Query Response Message
  if message_type == "Q" then
    return nasdaq_equities_orders_ouch_v5_0_size_of.account_query_response_message(buffer, offset)
  end

  return 0
end

-- Display: Data
nasdaq_equities_orders_ouch_v5_0_display.data = function(buffer, offset, packet, parent)
  return ""
end

-- Dissect Branches: Data
nasdaq_equities_orders_ouch_v5_0_dissect.data_branches = function(buffer, offset, packet, parent, message_type)
  -- Dissect Enter Order Message
  if message_type == "O" then
    return nasdaq_equities_orders_ouch_v5_0_dissect.enter_order_message(buffer, offset, packet, parent)
  end
  -- Dissect Replace Order Message
  if message_type == "U" then
    return nasdaq_equities_orders_ouch_v5_0_dissect.replace_order_message(buffer, offset, packet, parent)
  end
  -- Dissect Cancel Order Message
  if message_type == "X" then
    return nasdaq_equities_orders_ouch_v5_0_dissect.cancel_order_message(buffer, offset, packet, parent)
  end
  -- Dissect Modify Order Message
  if message_type == "M" then
    return nasdaq_equities_orders_ouch_v5_0_dissect.modify_order_message(buffer, offset, packet, parent)
  end
  -- Dissect Account Query Message
  if message_type == "Q" then
  end
  -- Dissect System Event Message
  if message_type == "S" then
    return nasdaq_equities_orders_ouch_v5_0_dissect.system_event_message(buffer, offset, packet, parent)
  end
  -- Dissect Order Accepted Message
  if message_type == "A" then
    return nasdaq_equities_orders_ouch_v5_0_dissect.order_accepted_message(buffer, offset, packet, parent)
  end
  -- Dissect Replaced Message
  if message_type == "U" then
    return nasdaq_equities_orders_ouch_v5_0_dissect.replaced_message(buffer, offset, packet, parent)
  end
  -- Dissect Canceled Message
  if message_type == "C" then
    return nasdaq_equities_orders_ouch_v5_0_dissect.canceled_message(buffer, offset, packet, parent)
  end
  -- Dissect Aiq Canceled Message
  if message_type == "C" then
    return nasdaq_equities_orders_ouch_v5_0_dissect.aiq_canceled_message(buffer, offset, packet, parent)
  end
  -- Dissect Order Executed Message
  if message_type == "E" then
    return nasdaq_equities_orders_ouch_v5_0_dissect.order_executed_message(buffer, offset, packet, parent)
  end
  -- Dissect Broken Trade Message
  if message_type == "B" then
    return nasdaq_equities_orders_ouch_v5_0_dissect.broken_trade_message(buffer, offset, packet, parent)
  end
  -- Dissect Trade Correction Message
  if message_type == "F" then
    return nasdaq_equities_orders_ouch_v5_0_dissect.trade_correction_message(buffer, offset, packet, parent)
  end
  -- Dissect Rejected Order Message
  if message_type == "J" then
    return nasdaq_equities_orders_ouch_v5_0_dissect.rejected_order_message(buffer, offset, packet, parent)
  end
  -- Dissect Cancel Pending Message
  if message_type == "P" then
    return nasdaq_equities_orders_ouch_v5_0_dissect.cancel_pending_message(buffer, offset, packet, parent)
  end
  -- Dissect Cancel Reject Message
  if message_type == "I" then
    return nasdaq_equities_orders_ouch_v5_0_dissect.cancel_reject_message(buffer, offset, packet, parent)
  end
  -- Dissect Order Priority Update Message
  if message_type == "T" then
    return nasdaq_equities_orders_ouch_v5_0_dissect.order_priority_update_message(buffer, offset, packet, parent)
  end
  -- Dissect Order Modified Message
  if message_type == "M" then
    return nasdaq_equities_orders_ouch_v5_0_dissect.order_modified_message(buffer, offset, packet, parent)
  end
  -- Dissect Order Restated Message
  if message_type == "R" then
    return nasdaq_equities_orders_ouch_v5_0_dissect.order_restated_message(buffer, offset, packet, parent)
  end
  -- Dissect Account Query Response Message
  if message_type == "Q" then
    return nasdaq_equities_orders_ouch_v5_0_dissect.account_query_response_message(buffer, offset, packet, parent)
  end

  return offset
end

-- Dissect: Data
nasdaq_equities_orders_ouch_v5_0_dissect.data = function(buffer, offset, packet, parent, message_type)
  if not show.data then
    return nasdaq_equities_orders_ouch_v5_0_dissect.data_branches(buffer, offset, packet, parent, message_type)
  end

  -- Calculate size and check that branch is not empty
  local size = nasdaq_equities_orders_ouch_v5_0_size_of.data(buffer, offset, message_type)
  if size == 0 then
    return offset
  end

  -- Dissect Element
  local range = buffer(offset, size)
  local display = nasdaq_equities_orders_ouch_v5_0_display.data(buffer, packet, parent)
  local element = parent:add(nasdaq_equities_orders_ouch_v5_0.fields.data, range, display)

  return nasdaq_equities_orders_ouch_v5_0_dissect.data_branches(buffer, offset, packet, parent, message_type)
end

-- Size: Message Type
nasdaq_equities_orders_ouch_v5_0_size_of.message_type = 1

-- Display: Message Type
nasdaq_equities_orders_ouch_v5_0_display.message_type = function(value)
  if value == "O" then
    return "Message Type: Enter Order Message (O)"
  end
  if value == "U" then
    return "Message Type: Replace Order Message (U)"
  end
  if value == "X" then
    return "Message Type: Cancel Order Message (X)"
  end
  if value == "M" then
    return "Message Type: Modify Order Message (M)"
  end
  if value == "Q" then
    return "Message Type: Account Query Message (Q)"
  end
  if value == "S" then
    return "Message Type: System Event Message (S)"
  end
  if value == "A" then
    return "Message Type: Order Accepted Message (A)"
  end
  if value == "U" then
    return "Message Type: Replaced Message (U)"
  end
  if value == "C" then
    return "Message Type: Canceled Message (C)"
  end
  if value == "C" then
    return "Message Type: Aiq Canceled Message (C)"
  end
  if value == "E" then
    return "Message Type: Order Executed Message (E)"
  end
  if value == "B" then
    return "Message Type: Broken Trade Message (B)"
  end
  if value == "F" then
    return "Message Type: Trade Correction Message (F)"
  end
  if value == "J" then
    return "Message Type: Rejected Order Message (J)"
  end
  if value == "P" then
    return "Message Type: Cancel Pending Message (P)"
  end
  if value == "I" then
    return "Message Type: Cancel Reject Message (I)"
  end
  if value == "T" then
    return "Message Type: Order Priority Update Message (T)"
  end
  if value == "M" then
    return "Message Type: Order Modified Message (M)"
  end
  if value == "R" then
    return "Message Type: Order Restated Message (R)"
  end
  if value == "Q" then
    return "Message Type: Account Query Response Message (Q)"
  end

  return "Message Type: Unknown("..value..")"
end

-- Dissect: Message Type
nasdaq_equities_orders_ouch_v5_0_dissect.message_type = function(buffer, offset, packet, parent)
  local length = nasdaq_equities_orders_ouch_v5_0_size_of.message_type
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_equities_orders_ouch_v5_0_display.message_type(value, buffer, offset, packet, parent)

  parent:add(nasdaq_equities_orders_ouch_v5_0.fields.message_type, range, value, display)

  return offset + length, value
end

-- Display: Message
nasdaq_equities_orders_ouch_v5_0_display.message = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Message
nasdaq_equities_orders_ouch_v5_0_dissect.message_fields = function(buffer, offset, packet, parent, size_of_message)
  local index = offset

  -- Message Type: 1 Byte Ascii String Enum with 20 values
  index, message_type = nasdaq_equities_orders_ouch_v5_0_dissect.message_type(buffer, index, packet, parent)

  -- Data: Runtime Type with 20 branches
  index = nasdaq_equities_orders_ouch_v5_0_dissect.data(buffer, index, packet, parent, message_type)

  return index
end

-- Dissect: Message
nasdaq_equities_orders_ouch_v5_0_dissect.message = function(buffer, offset, packet, parent, size_of_message)
  -- Optionally add struct element to protocol tree
  if show.message then
    local range = buffer(offset, size_of_message)
    local display = nasdaq_equities_orders_ouch_v5_0_display.message(buffer, packet, parent)
    parent = parent:add(nasdaq_equities_orders_ouch_v5_0.fields.message, range, display)
  end

  nasdaq_equities_orders_ouch_v5_0_dissect.message_fields(buffer, offset, packet, parent, size_of_message)

  return offset + size_of_message
end

-- Display: Unsequenced Data Packet
nasdaq_equities_orders_ouch_v5_0_display.unsequenced_data_packet = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Unsequenced Data Packet
nasdaq_equities_orders_ouch_v5_0_dissect.unsequenced_data_packet_fields = function(buffer, offset, packet, parent, size_of_unsequenced_data_packet)
  local index = offset

  -- Dependency element: Packet Length
  local packet_length = buffer(offset - 3, 2):uint()

  -- Runtime Size Of: Message
  local size_of_message = packet_length - 1

  -- Message: Struct of 2 fields
  index = nasdaq_equities_orders_ouch_v5_0_dissect.message(buffer, index, packet, parent, size_of_message)

  return index
end

-- Dissect: Unsequenced Data Packet
nasdaq_equities_orders_ouch_v5_0_dissect.unsequenced_data_packet = function(buffer, offset, packet, parent)
  local index = offset

  -- Dependency element: Packet Length
  local packet_length = buffer(offset - 3, 2):uint()

  -- Parse runtime struct size
  local size_of_unsequenced_data_packet = packet_length - 1

  -- Optionally add struct element to protocol tree
  if show.unsequenced_data_packet then
    local range = buffer(offset, size_of_unsequenced_data_packet)
    local display = nasdaq_equities_orders_ouch_v5_0_display.unsequenced_data_packet(buffer, packet, parent)
    parent = parent:add(nasdaq_equities_orders_ouch_v5_0.fields.unsequenced_data_packet, range, display)
  end

  nasdaq_equities_orders_ouch_v5_0_dissect.unsequenced_data_packet_fields(buffer, offset, packet, parent, size_of_unsequenced_data_packet)

  return offset + size_of_unsequenced_data_packet
end

-- Size: Requested Sequence Number
nasdaq_equities_orders_ouch_v5_0_size_of.requested_sequence_number = 20

-- Display: Requested Sequence Number
nasdaq_equities_orders_ouch_v5_0_display.requested_sequence_number = function(value)
  return "Requested Sequence Number: "..value
end

-- Dissect: Requested Sequence Number
nasdaq_equities_orders_ouch_v5_0_dissect.requested_sequence_number = function(buffer, offset, packet, parent)
  local length = nasdaq_equities_orders_ouch_v5_0_size_of.requested_sequence_number
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_equities_orders_ouch_v5_0_display.requested_sequence_number(value, buffer, offset, packet, parent)

  parent:add(nasdaq_equities_orders_ouch_v5_0.fields.requested_sequence_number, range, value, display)

  return offset + length, value
end

-- Size: Requested Session
nasdaq_equities_orders_ouch_v5_0_size_of.requested_session = 10

-- Display: Requested Session
nasdaq_equities_orders_ouch_v5_0_display.requested_session = function(value)
  return "Requested Session: "..value
end

-- Dissect: Requested Session
nasdaq_equities_orders_ouch_v5_0_dissect.requested_session = function(buffer, offset, packet, parent)
  local length = nasdaq_equities_orders_ouch_v5_0_size_of.requested_session
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_equities_orders_ouch_v5_0_display.requested_session(value, buffer, offset, packet, parent)

  parent:add(nasdaq_equities_orders_ouch_v5_0.fields.requested_session, range, value, display)

  return offset + length, value
end

-- Size: Password
nasdaq_equities_orders_ouch_v5_0_size_of.password = 10

-- Display: Password
nasdaq_equities_orders_ouch_v5_0_display.password = function(value)
  return "Password: "..value
end

-- Dissect: Password
nasdaq_equities_orders_ouch_v5_0_dissect.password = function(buffer, offset, packet, parent)
  local length = nasdaq_equities_orders_ouch_v5_0_size_of.password
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_equities_orders_ouch_v5_0_display.password(value, buffer, offset, packet, parent)

  parent:add(nasdaq_equities_orders_ouch_v5_0.fields.password, range, value, display)

  return offset + length, value
end

-- Size: Username
nasdaq_equities_orders_ouch_v5_0_size_of.username = 6

-- Display: Username
nasdaq_equities_orders_ouch_v5_0_display.username = function(value)
  return "Username: "..value
end

-- Dissect: Username
nasdaq_equities_orders_ouch_v5_0_dissect.username = function(buffer, offset, packet, parent)
  local length = nasdaq_equities_orders_ouch_v5_0_size_of.username
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_equities_orders_ouch_v5_0_display.username(value, buffer, offset, packet, parent)

  parent:add(nasdaq_equities_orders_ouch_v5_0.fields.username, range, value, display)

  return offset + length, value
end

-- Calculate size of: Login Request Packet
nasdaq_equities_orders_ouch_v5_0_size_of.login_request_packet = function(buffer, offset)
  local index = 0

  index = index + nasdaq_equities_orders_ouch_v5_0_size_of.username

  index = index + nasdaq_equities_orders_ouch_v5_0_size_of.password

  index = index + nasdaq_equities_orders_ouch_v5_0_size_of.requested_session

  index = index + nasdaq_equities_orders_ouch_v5_0_size_of.requested_sequence_number

  return index
end

-- Display: Login Request Packet
nasdaq_equities_orders_ouch_v5_0_display.login_request_packet = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Login Request Packet
nasdaq_equities_orders_ouch_v5_0_dissect.login_request_packet_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Username: 6 Byte Ascii String
  index, username = nasdaq_equities_orders_ouch_v5_0_dissect.username(buffer, index, packet, parent)

  -- Password: 10 Byte Ascii String
  index, password = nasdaq_equities_orders_ouch_v5_0_dissect.password(buffer, index, packet, parent)

  -- Requested Session: 10 Byte Ascii String
  index, requested_session = nasdaq_equities_orders_ouch_v5_0_dissect.requested_session(buffer, index, packet, parent)

  -- Requested Sequence Number: 20 Byte Ascii String
  index, requested_sequence_number = nasdaq_equities_orders_ouch_v5_0_dissect.requested_sequence_number(buffer, index, packet, parent)

  return index
end

-- Dissect: Login Request Packet
nasdaq_equities_orders_ouch_v5_0_dissect.login_request_packet = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.login_request_packet then
    local length = nasdaq_equities_orders_ouch_v5_0_size_of.login_request_packet(buffer, offset)
    local range = buffer(offset, length)
    local display = nasdaq_equities_orders_ouch_v5_0_display.login_request_packet(buffer, packet, parent)
    parent = parent:add(nasdaq_equities_orders_ouch_v5_0.fields.login_request_packet, range, display)
  end

  return nasdaq_equities_orders_ouch_v5_0_dissect.login_request_packet_fields(buffer, offset, packet, parent)
end

-- Display: Sequenced Data Packet
nasdaq_equities_orders_ouch_v5_0_display.sequenced_data_packet = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Sequenced Data Packet
nasdaq_equities_orders_ouch_v5_0_dissect.sequenced_data_packet_fields = function(buffer, offset, packet, parent, size_of_sequenced_data_packet)
  local index = offset

  -- Dependency element: Packet Length
  local packet_length = buffer(offset - 3, 2):uint()

  -- Runtime Size Of: Message
  local size_of_message = packet_length - 1

  -- Message: Struct of 2 fields
  index = nasdaq_equities_orders_ouch_v5_0_dissect.message(buffer, index, packet, parent, size_of_message)

  return index
end

-- Dissect: Sequenced Data Packet
nasdaq_equities_orders_ouch_v5_0_dissect.sequenced_data_packet = function(buffer, offset, packet, parent)
  local index = offset

  -- Dependency element: Packet Length
  local packet_length = buffer(offset - 3, 2):uint()

  -- Parse runtime struct size
  local size_of_sequenced_data_packet = packet_length - 1

  -- Optionally add struct element to protocol tree
  if show.sequenced_data_packet then
    local range = buffer(offset, size_of_sequenced_data_packet)
    local display = nasdaq_equities_orders_ouch_v5_0_display.sequenced_data_packet(buffer, packet, parent)
    parent = parent:add(nasdaq_equities_orders_ouch_v5_0.fields.sequenced_data_packet, range, display)
  end

  nasdaq_equities_orders_ouch_v5_0_dissect.sequenced_data_packet_fields(buffer, offset, packet, parent, size_of_sequenced_data_packet)

  return offset + size_of_sequenced_data_packet
end

-- Size: Reject Reason Code
nasdaq_equities_orders_ouch_v5_0_size_of.reject_reason_code = 1

-- Display: Reject Reason Code
nasdaq_equities_orders_ouch_v5_0_display.reject_reason_code = function(value)
  return "Reject Reason Code: "..value
end

-- Dissect: Reject Reason Code
nasdaq_equities_orders_ouch_v5_0_dissect.reject_reason_code = function(buffer, offset, packet, parent)
  local length = nasdaq_equities_orders_ouch_v5_0_size_of.reject_reason_code
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_equities_orders_ouch_v5_0_display.reject_reason_code(value, buffer, offset, packet, parent)

  parent:add(nasdaq_equities_orders_ouch_v5_0.fields.reject_reason_code, range, value, display)

  return offset + length, value
end

-- Calculate size of: Login Rejected Packet
nasdaq_equities_orders_ouch_v5_0_size_of.login_rejected_packet = function(buffer, offset)
  local index = 0

  index = index + nasdaq_equities_orders_ouch_v5_0_size_of.reject_reason_code

  return index
end

-- Display: Login Rejected Packet
nasdaq_equities_orders_ouch_v5_0_display.login_rejected_packet = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Login Rejected Packet
nasdaq_equities_orders_ouch_v5_0_dissect.login_rejected_packet_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Reject Reason Code: 1 Byte Ascii String
  index, reject_reason_code = nasdaq_equities_orders_ouch_v5_0_dissect.reject_reason_code(buffer, index, packet, parent)

  return index
end

-- Dissect: Login Rejected Packet
nasdaq_equities_orders_ouch_v5_0_dissect.login_rejected_packet = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.login_rejected_packet then
    local length = nasdaq_equities_orders_ouch_v5_0_size_of.login_rejected_packet(buffer, offset)
    local range = buffer(offset, length)
    local display = nasdaq_equities_orders_ouch_v5_0_display.login_rejected_packet(buffer, packet, parent)
    parent = parent:add(nasdaq_equities_orders_ouch_v5_0.fields.login_rejected_packet, range, display)
  end

  return nasdaq_equities_orders_ouch_v5_0_dissect.login_rejected_packet_fields(buffer, offset, packet, parent)
end

-- Size: Sequence Number
nasdaq_equities_orders_ouch_v5_0_size_of.sequence_number = 20

-- Display: Sequence Number
nasdaq_equities_orders_ouch_v5_0_display.sequence_number = function(value)
  return "Sequence Number: "..value
end

-- Dissect: Sequence Number
nasdaq_equities_orders_ouch_v5_0_dissect.sequence_number = function(buffer, offset, packet, parent)
  local length = nasdaq_equities_orders_ouch_v5_0_size_of.sequence_number
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_equities_orders_ouch_v5_0_display.sequence_number(value, buffer, offset, packet, parent)

  parent:add(nasdaq_equities_orders_ouch_v5_0.fields.sequence_number, range, value, display)

  return offset + length, value
end

-- Size: Session
nasdaq_equities_orders_ouch_v5_0_size_of.session = 10

-- Display: Session
nasdaq_equities_orders_ouch_v5_0_display.session = function(value)
  return "Session: "..value
end

-- Dissect: Session
nasdaq_equities_orders_ouch_v5_0_dissect.session = function(buffer, offset, packet, parent)
  local length = nasdaq_equities_orders_ouch_v5_0_size_of.session
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_equities_orders_ouch_v5_0_display.session(value, buffer, offset, packet, parent)

  parent:add(nasdaq_equities_orders_ouch_v5_0.fields.session, range, value, display)

  return offset + length, value
end

-- Calculate size of: Login Accepted Packet
nasdaq_equities_orders_ouch_v5_0_size_of.login_accepted_packet = function(buffer, offset)
  local index = 0

  index = index + nasdaq_equities_orders_ouch_v5_0_size_of.session

  index = index + nasdaq_equities_orders_ouch_v5_0_size_of.sequence_number

  return index
end

-- Display: Login Accepted Packet
nasdaq_equities_orders_ouch_v5_0_display.login_accepted_packet = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Login Accepted Packet
nasdaq_equities_orders_ouch_v5_0_dissect.login_accepted_packet_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Session: 10 Byte Ascii String
  index, session = nasdaq_equities_orders_ouch_v5_0_dissect.session(buffer, index, packet, parent)

  -- Sequence Number: 20 Byte Ascii String
  index, sequence_number = nasdaq_equities_orders_ouch_v5_0_dissect.sequence_number(buffer, index, packet, parent)

  return index
end

-- Dissect: Login Accepted Packet
nasdaq_equities_orders_ouch_v5_0_dissect.login_accepted_packet = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.login_accepted_packet then
    local length = nasdaq_equities_orders_ouch_v5_0_size_of.login_accepted_packet(buffer, offset)
    local range = buffer(offset, length)
    local display = nasdaq_equities_orders_ouch_v5_0_display.login_accepted_packet(buffer, packet, parent)
    parent = parent:add(nasdaq_equities_orders_ouch_v5_0.fields.login_accepted_packet, range, display)
  end

  return nasdaq_equities_orders_ouch_v5_0_dissect.login_accepted_packet_fields(buffer, offset, packet, parent)
end

-- Size: Text
nasdaq_equities_orders_ouch_v5_0_size_of.text = 1

-- Display: Text
nasdaq_equities_orders_ouch_v5_0_display.text = function(value)
  return "Text: "..value
end

-- Dissect: Text
nasdaq_equities_orders_ouch_v5_0_dissect.text = function(buffer, offset, packet, parent)
  local length = nasdaq_equities_orders_ouch_v5_0_size_of.text
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_equities_orders_ouch_v5_0_display.text(value, buffer, offset, packet, parent)

  parent:add(nasdaq_equities_orders_ouch_v5_0.fields.text, range, value, display)

  return offset + length, value
end

-- Calculate size of: Debug Packet
nasdaq_equities_orders_ouch_v5_0_size_of.debug_packet = function(buffer, offset)
  local index = 0

  index = index + nasdaq_equities_orders_ouch_v5_0_size_of.text

  return index
end

-- Display: Debug Packet
nasdaq_equities_orders_ouch_v5_0_display.debug_packet = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Debug Packet
nasdaq_equities_orders_ouch_v5_0_dissect.debug_packet_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Text: 1 Byte Ascii String
  index, text = nasdaq_equities_orders_ouch_v5_0_dissect.text(buffer, index, packet, parent)

  return index
end

-- Dissect: Debug Packet
nasdaq_equities_orders_ouch_v5_0_dissect.debug_packet = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.debug_packet then
    local length = nasdaq_equities_orders_ouch_v5_0_size_of.debug_packet(buffer, offset)
    local range = buffer(offset, length)
    local display = nasdaq_equities_orders_ouch_v5_0_display.debug_packet(buffer, packet, parent)
    parent = parent:add(nasdaq_equities_orders_ouch_v5_0.fields.debug_packet, range, display)
  end

  return nasdaq_equities_orders_ouch_v5_0_dissect.debug_packet_fields(buffer, offset, packet, parent)
end

-- Calculate runtime size of: Payload
nasdaq_equities_orders_ouch_v5_0_size_of.payload = function(buffer, offset, packet_type)
  -- Size of Debug Packet
  if packet_type == "+" then
    return nasdaq_equities_orders_ouch_v5_0_size_of.debug_packet(buffer, offset)
  end
  -- Size of Login Accepted Packet
  if packet_type == "A" then
    return nasdaq_equities_orders_ouch_v5_0_size_of.login_accepted_packet(buffer, offset)
  end
  -- Size of Login Rejected Packet
  if packet_type == "J" then
    return nasdaq_equities_orders_ouch_v5_0_size_of.login_rejected_packet(buffer, offset)
  end
  -- Size of Sequenced Data Packet
  if packet_type == "S" then
    return nasdaq_equities_orders_ouch_v5_0_size_of.sequenced_data_packet(buffer, offset)
  end
  -- Size of Login Request Packet
  if packet_type == "L" then
    return nasdaq_equities_orders_ouch_v5_0_size_of.login_request_packet(buffer, offset)
  end
  -- Size of Unsequenced Data Packet
  if packet_type == "U" then
    return nasdaq_equities_orders_ouch_v5_0_size_of.unsequenced_data_packet(buffer, offset)
  end

  return 0
end

-- Display: Payload
nasdaq_equities_orders_ouch_v5_0_display.payload = function(buffer, offset, packet, parent)
  return ""
end

-- Dissect Branches: Payload
nasdaq_equities_orders_ouch_v5_0_dissect.payload_branches = function(buffer, offset, packet, parent, packet_type)
  -- Dissect Debug Packet
  if packet_type == "+" then
    return nasdaq_equities_orders_ouch_v5_0_dissect.debug_packet(buffer, offset, packet, parent)
  end
  -- Dissect Login Accepted Packet
  if packet_type == "A" then
    return nasdaq_equities_orders_ouch_v5_0_dissect.login_accepted_packet(buffer, offset, packet, parent)
  end
  -- Dissect Login Rejected Packet
  if packet_type == "J" then
    return nasdaq_equities_orders_ouch_v5_0_dissect.login_rejected_packet(buffer, offset, packet, parent)
  end
  -- Dissect Sequenced Data Packet
  if packet_type == "S" then
    return nasdaq_equities_orders_ouch_v5_0_dissect.sequenced_data_packet(buffer, offset, packet, parent)
  end
  -- Dissect Login Request Packet
  if packet_type == "L" then
    return nasdaq_equities_orders_ouch_v5_0_dissect.login_request_packet(buffer, offset, packet, parent)
  end
  -- Dissect Unsequenced Data Packet
  if packet_type == "U" then
    return nasdaq_equities_orders_ouch_v5_0_dissect.unsequenced_data_packet(buffer, offset, packet, parent)
  end

  return offset
end

-- Dissect: Payload
nasdaq_equities_orders_ouch_v5_0_dissect.payload = function(buffer, offset, packet, parent, packet_type)
  if not show.payload then
    return nasdaq_equities_orders_ouch_v5_0_dissect.payload_branches(buffer, offset, packet, parent, packet_type)
  end

  -- Calculate size and check that branch is not empty
  local size = nasdaq_equities_orders_ouch_v5_0_size_of.payload(buffer, offset, packet_type)
  if size == 0 then
    return offset
  end

  -- Dissect Element
  local range = buffer(offset, size)
  local display = nasdaq_equities_orders_ouch_v5_0_display.payload(buffer, packet, parent)
  local element = parent:add(nasdaq_equities_orders_ouch_v5_0.fields.payload, range, display)

  return nasdaq_equities_orders_ouch_v5_0_dissect.payload_branches(buffer, offset, packet, parent, packet_type)
end

-- Size: Packet Type
nasdaq_equities_orders_ouch_v5_0_size_of.packet_type = 1

-- Display: Packet Type
nasdaq_equities_orders_ouch_v5_0_display.packet_type = function(value)
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
nasdaq_equities_orders_ouch_v5_0_dissect.packet_type = function(buffer, offset, packet, parent)
  local length = nasdaq_equities_orders_ouch_v5_0_size_of.packet_type
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_equities_orders_ouch_v5_0_display.packet_type(value, buffer, offset, packet, parent)

  parent:add(nasdaq_equities_orders_ouch_v5_0.fields.packet_type, range, value, display)

  return offset + length, value
end

-- Size: Packet Length
nasdaq_equities_orders_ouch_v5_0_size_of.packet_length = 2

-- Display: Packet Length
nasdaq_equities_orders_ouch_v5_0_display.packet_length = function(value)
  return "Packet Length: "..value
end

-- Dissect: Packet Length
nasdaq_equities_orders_ouch_v5_0_dissect.packet_length = function(buffer, offset, packet, parent)
  local length = nasdaq_equities_orders_ouch_v5_0_size_of.packet_length
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_equities_orders_ouch_v5_0_display.packet_length(value, buffer, offset, packet, parent)

  parent:add(nasdaq_equities_orders_ouch_v5_0.fields.packet_length, range, value, display)

  return offset + length, value
end

-- Calculate size of: Packet Header
nasdaq_equities_orders_ouch_v5_0_size_of.packet_header = function(buffer, offset)
  local index = 0

  index = index + nasdaq_equities_orders_ouch_v5_0_size_of.packet_length

  index = index + nasdaq_equities_orders_ouch_v5_0_size_of.packet_type

  return index
end

-- Display: Packet Header
nasdaq_equities_orders_ouch_v5_0_display.packet_header = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Packet Header
nasdaq_equities_orders_ouch_v5_0_dissect.packet_header_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Packet Length: 2 Byte Unsigned Fixed Width Integer
  index, packet_length = nasdaq_equities_orders_ouch_v5_0_dissect.packet_length(buffer, index, packet, parent)

  -- Packet Type: 1 Byte Ascii String Enum with 10 values
  index, packet_type = nasdaq_equities_orders_ouch_v5_0_dissect.packet_type(buffer, index, packet, parent)

  return index
end

-- Dissect: Packet Header
nasdaq_equities_orders_ouch_v5_0_dissect.packet_header = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.packet_header then
    local length = nasdaq_equities_orders_ouch_v5_0_size_of.packet_header(buffer, offset)
    local range = buffer(offset, length)
    local display = nasdaq_equities_orders_ouch_v5_0_display.packet_header(buffer, packet, parent)
    parent = parent:add(nasdaq_equities_orders_ouch_v5_0.fields.packet_header, range, display)
  end

  return nasdaq_equities_orders_ouch_v5_0_dissect.packet_header_fields(buffer, offset, packet, parent)
end

-- Display: Soup Bin Tcp Packet
nasdaq_equities_orders_ouch_v5_0_display.soup_bin_tcp_packet = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Soup Bin Tcp Packet
nasdaq_equities_orders_ouch_v5_0_dissect.soup_bin_tcp_packet_fields = function(buffer, offset, packet, parent, size_of_soup_bin_tcp_packet)
  local index = offset

  -- Packet Header: Struct of 2 fields
  index, packet_header = nasdaq_equities_orders_ouch_v5_0_dissect.packet_header(buffer, index, packet, parent)

  -- Dependency element: Packet Type
  local packet_type = buffer(index - 1, 1):string()

  -- Payload: Runtime Type with 6 branches
  index = nasdaq_equities_orders_ouch_v5_0_dissect.payload(buffer, index, packet, parent, packet_type)

  return index
end

-- Dissect: Soup Bin Tcp Packet
nasdaq_equities_orders_ouch_v5_0_dissect.soup_bin_tcp_packet = function(buffer, offset, packet, parent, size_of_soup_bin_tcp_packet)
  -- Optionally add struct element to protocol tree
  if show.soup_bin_tcp_packet then
    local range = buffer(offset, size_of_soup_bin_tcp_packet)
    local display = nasdaq_equities_orders_ouch_v5_0_display.soup_bin_tcp_packet(buffer, packet, parent)
    parent = parent:add(nasdaq_equities_orders_ouch_v5_0.fields.soup_bin_tcp_packet, range, display)
  end

  nasdaq_equities_orders_ouch_v5_0_dissect.soup_bin_tcp_packet_fields(buffer, offset, packet, parent, size_of_soup_bin_tcp_packet)

  return offset + size_of_soup_bin_tcp_packet
end

-- Remaining Bytes For: Soup Bin Tcp Packet
local soup_bin_tcp_packet_bytes_remaining = function(buffer, index, available)
  -- Calculate the number of bytes remaining
  local remaining = available - index

  -- Check if packet size can be read
  if remaining < nasdaq_equities_orders_ouch_v5_0_size_of.packet_header(buffer, index) then
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

-- Dissect Packet
nasdaq_equities_orders_ouch_v5_0_dissect.packet = function(buffer, packet, parent)
  local index = 0

  -- Dependency for Soup Bin Tcp Packet
  local end_of_payload = buffer:len()

  -- Soup Bin Tcp Packet: Struct of 2 fields
  while index < end_of_payload do

    -- Are minimum number of bytes are available?
    local available, size_of_soup_bin_tcp_packet = soup_bin_tcp_packet_bytes_remaining(buffer, index, end_of_payload)

    if available > 0 then
      index = nasdaq_equities_orders_ouch_v5_0_dissect.soup_bin_tcp_packet(buffer, index, packet, parent, size_of_soup_bin_tcp_packet)
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
function nasdaq_equities_orders_ouch_v5_0.init()
end

-- Dissector for Nasdaq Equities Orders Ouch 5.0
function nasdaq_equities_orders_ouch_v5_0.dissector(buffer, packet, parent)

  -- Set protocol name
  packet.cols.protocol = nasdaq_equities_orders_ouch_v5_0.name

  -- Dissect protocol
  local protocol = parent:add(nasdaq_equities_orders_ouch_v5_0, buffer(), nasdaq_equities_orders_ouch_v5_0.description, "("..buffer:len().." Bytes)")
  return nasdaq_equities_orders_ouch_v5_0_dissect.packet(buffer, packet, protocol)
end

-- Register With Tcp Table
local tcp_table = DissectorTable.get("tcp.port")
tcp_table:add(65333, nasdaq_equities_orders_ouch_v5_0)


-----------------------------------------------------------------------
-- Protocol Heuristics
-----------------------------------------------------------------------

-- Verify size of packet
verify.nasdaq_equities_orders_ouch_v5_0_packet_size = function(buffer)

  return true
end

-- Dissector Heuristic for Nasdaq Equities Orders Ouch 5.0
local function nasdaq_equities_orders_ouch_v5_0_heuristic(buffer, packet, parent)
  -- Verify packet length
  if not verify.nasdaq_equities_orders_ouch_v5_0_packet_size(buffer) then return false end

  -- Protocol is valid, set conversation and dissect this packet
  packet.conversation = nasdaq_equities_orders_ouch_v5_0
  nasdaq_equities_orders_ouch_v5_0.dissector(buffer, packet, parent)

  return true
end

-- Register Heuristic for Nasdaq Equities Orders Ouch 5.0
nasdaq_equities_orders_ouch_v5_0:register_heuristic("tcp", nasdaq_equities_orders_ouch_v5_0_heuristic)

-----------------------------------------------------------------------
-- Lua dissectors are an easily edited and modified cross platform dissection solution.
-- Feel free to modify. Enjoy.
-----------------------------------------------------------------------
-- 
-- Protocol:
--   Organization: National Association of Securities Dealers Automated Quotations
--   Version: 5.0
--   Date: Thursday, July 1, 2021
--   Specification: OUCH5.0.pdf
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
