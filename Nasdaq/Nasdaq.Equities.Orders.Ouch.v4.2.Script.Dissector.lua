-----------------------------------------------------------------------
-- Lua Script Wireshark Dissector
-- 
-- Please see end of file for rules and regulations
-----------------------------------------------------------------------

-- Nasdaq Equities Orders Ouch 4.2 Protocol
local nasdaq_equities_orders_ouch_v4_2 = Proto("Nasdaq.Equities.Orders.Ouch.v4.2.Lua", "Nasdaq Equities Orders Ouch 4.2")

-- Component Tables
local show = {}
local format = {}
local display = {}
local dissect = {}
local size_of = {}
local verify = {}

-----------------------------------------------------------------------
-- Declare Protocol Fields
-----------------------------------------------------------------------

-- Nasdaq Equities Orders Ouch 4.2 Fields
nasdaq_equities_orders_ouch_v4_2.fields.accepted_message = ProtoField.new("Accepted Message", "nasdaq.equities.orders.ouch.v4.2.acceptedmessage", ftypes.STRING)
nasdaq_equities_orders_ouch_v4_2.fields.aiq_cancelled_message = ProtoField.new("Aiq Cancelled Message", "nasdaq.equities.orders.ouch.v4.2.aiqcancelledmessage", ftypes.STRING)
nasdaq_equities_orders_ouch_v4_2.fields.bbo_weight_indicator = ProtoField.new("Bbo Weight Indicator", "nasdaq.equities.orders.ouch.v4.2.bboweightindicator", ftypes.STRING)
nasdaq_equities_orders_ouch_v4_2.fields.broken_trade_message = ProtoField.new("Broken Trade Message", "nasdaq.equities.orders.ouch.v4.2.brokentrademessage", ftypes.STRING)
nasdaq_equities_orders_ouch_v4_2.fields.broken_trade_reason = ProtoField.new("Broken Trade Reason", "nasdaq.equities.orders.ouch.v4.2.brokentradereason", ftypes.STRING)
nasdaq_equities_orders_ouch_v4_2.fields.buy_sell_indicator = ProtoField.new("Buy Sell Indicator", "nasdaq.equities.orders.ouch.v4.2.buysellindicator", ftypes.STRING)
nasdaq_equities_orders_ouch_v4_2.fields.cancel_order_message = ProtoField.new("Cancel Order Message", "nasdaq.equities.orders.ouch.v4.2.cancelordermessage", ftypes.STRING)
nasdaq_equities_orders_ouch_v4_2.fields.cancel_order_reason = ProtoField.new("Cancel Order Reason", "nasdaq.equities.orders.ouch.v4.2.cancelorderreason", ftypes.STRING)
nasdaq_equities_orders_ouch_v4_2.fields.cancel_pending_message = ProtoField.new("Cancel Pending Message", "nasdaq.equities.orders.ouch.v4.2.cancelpendingmessage", ftypes.STRING)
nasdaq_equities_orders_ouch_v4_2.fields.cancel_reject_message = ProtoField.new("Cancel Reject Message", "nasdaq.equities.orders.ouch.v4.2.cancelrejectmessage", ftypes.STRING)
nasdaq_equities_orders_ouch_v4_2.fields.canceled_message = ProtoField.new("Canceled Message", "nasdaq.equities.orders.ouch.v4.2.canceledmessage", ftypes.STRING)
nasdaq_equities_orders_ouch_v4_2.fields.capacity = ProtoField.new("Capacity", "nasdaq.equities.orders.ouch.v4.2.capacity", ftypes.STRING)
nasdaq_equities_orders_ouch_v4_2.fields.cross_type = ProtoField.new("Cross Type", "nasdaq.equities.orders.ouch.v4.2.crosstype", ftypes.STRING)
nasdaq_equities_orders_ouch_v4_2.fields.customer_type = ProtoField.new("Customer Type", "nasdaq.equities.orders.ouch.v4.2.customertype", ftypes.STRING)
nasdaq_equities_orders_ouch_v4_2.fields.data = ProtoField.new("Data", "nasdaq.equities.orders.ouch.v4.2.data", ftypes.STRING)
nasdaq_equities_orders_ouch_v4_2.fields.debug_packet = ProtoField.new("Debug Packet", "nasdaq.equities.orders.ouch.v4.2.debugpacket", ftypes.STRING)
nasdaq_equities_orders_ouch_v4_2.fields.decrement_shares = ProtoField.new("Decrement Shares", "nasdaq.equities.orders.ouch.v4.2.decrementshares", ftypes.UINT32)
nasdaq_equities_orders_ouch_v4_2.fields.display = ProtoField.new("Display", "nasdaq.equities.orders.ouch.v4.2.display", ftypes.STRING)
nasdaq_equities_orders_ouch_v4_2.fields.enter_order_message = ProtoField.new("Enter Order Message", "nasdaq.equities.orders.ouch.v4.2.enterordermessage", ftypes.STRING)
nasdaq_equities_orders_ouch_v4_2.fields.event_code = ProtoField.new("Event Code", "nasdaq.equities.orders.ouch.v4.2.eventcode", ftypes.STRING)
nasdaq_equities_orders_ouch_v4_2.fields.executed_message = ProtoField.new("Executed Message", "nasdaq.equities.orders.ouch.v4.2.executedmessage", ftypes.STRING)
nasdaq_equities_orders_ouch_v4_2.fields.executed_shares = ProtoField.new("Executed Shares", "nasdaq.equities.orders.ouch.v4.2.executedshares", ftypes.UINT32)
nasdaq_equities_orders_ouch_v4_2.fields.executed_with_reference_price_message = ProtoField.new("Executed With Reference Price Message", "nasdaq.equities.orders.ouch.v4.2.executedwithreferencepricemessage", ftypes.STRING)
nasdaq_equities_orders_ouch_v4_2.fields.execution_price = ProtoField.new("Execution Price", "nasdaq.equities.orders.ouch.v4.2.executionprice", ftypes.UINT32)
nasdaq_equities_orders_ouch_v4_2.fields.existing_order_token = ProtoField.new("Existing Order Token", "nasdaq.equities.orders.ouch.v4.2.existingordertoken", ftypes.STRING)
nasdaq_equities_orders_ouch_v4_2.fields.firm = ProtoField.new("Firm", "nasdaq.equities.orders.ouch.v4.2.firm", ftypes.STRING)
nasdaq_equities_orders_ouch_v4_2.fields.intermarket_sweep_eligibility = ProtoField.new("Intermarket Sweep Eligibility", "nasdaq.equities.orders.ouch.v4.2.intermarketsweepeligibility", ftypes.STRING)
nasdaq_equities_orders_ouch_v4_2.fields.liquidity_flag = ProtoField.new("Liquidity Flag", "nasdaq.equities.orders.ouch.v4.2.liquidityflag", ftypes.STRING)
nasdaq_equities_orders_ouch_v4_2.fields.login_accepted_packet = ProtoField.new("Login Accepted Packet", "nasdaq.equities.orders.ouch.v4.2.loginacceptedpacket", ftypes.STRING)
nasdaq_equities_orders_ouch_v4_2.fields.login_rejected_packet = ProtoField.new("Login Rejected Packet", "nasdaq.equities.orders.ouch.v4.2.loginrejectedpacket", ftypes.STRING)
nasdaq_equities_orders_ouch_v4_2.fields.login_request_packet = ProtoField.new("Login Request Packet", "nasdaq.equities.orders.ouch.v4.2.loginrequestpacket", ftypes.STRING)
nasdaq_equities_orders_ouch_v4_2.fields.match_number = ProtoField.new("Match Number", "nasdaq.equities.orders.ouch.v4.2.matchnumber", ftypes.UINT64)
nasdaq_equities_orders_ouch_v4_2.fields.message = ProtoField.new("Message", "nasdaq.equities.orders.ouch.v4.2.message", ftypes.STRING)
nasdaq_equities_orders_ouch_v4_2.fields.message_type = ProtoField.new("Message Type", "nasdaq.equities.orders.ouch.v4.2.messagetype", ftypes.STRING)
nasdaq_equities_orders_ouch_v4_2.fields.minimum_quantity = ProtoField.new("Minimum Quantity", "nasdaq.equities.orders.ouch.v4.2.minimumquantity", ftypes.UINT32)
nasdaq_equities_orders_ouch_v4_2.fields.modify_order_message = ProtoField.new("Modify Order Message", "nasdaq.equities.orders.ouch.v4.2.modifyordermessage", ftypes.STRING)
nasdaq_equities_orders_ouch_v4_2.fields.order_modified_message = ProtoField.new("Order Modified Message", "nasdaq.equities.orders.ouch.v4.2.ordermodifiedmessage", ftypes.STRING)
nasdaq_equities_orders_ouch_v4_2.fields.order_priority_update_message = ProtoField.new("Order Priority Update Message", "nasdaq.equities.orders.ouch.v4.2.orderpriorityupdatemessage", ftypes.STRING)
nasdaq_equities_orders_ouch_v4_2.fields.order_reference_number = ProtoField.new("Order Reference Number", "nasdaq.equities.orders.ouch.v4.2.orderreferencenumber", ftypes.UINT64)
nasdaq_equities_orders_ouch_v4_2.fields.order_state = ProtoField.new("Order State", "nasdaq.equities.orders.ouch.v4.2.orderstate", ftypes.STRING)
nasdaq_equities_orders_ouch_v4_2.fields.order_token = ProtoField.new("Order Token", "nasdaq.equities.orders.ouch.v4.2.ordertoken", ftypes.STRING)
nasdaq_equities_orders_ouch_v4_2.fields.packet = ProtoField.new("Packet", "nasdaq.equities.orders.ouch.v4.2.packet", ftypes.STRING)
nasdaq_equities_orders_ouch_v4_2.fields.packet_header = ProtoField.new("Packet Header", "nasdaq.equities.orders.ouch.v4.2.packetheader", ftypes.STRING)
nasdaq_equities_orders_ouch_v4_2.fields.packet_length = ProtoField.new("Packet Length", "nasdaq.equities.orders.ouch.v4.2.packetlength", ftypes.UINT16)
nasdaq_equities_orders_ouch_v4_2.fields.packet_type = ProtoField.new("Packet Type", "nasdaq.equities.orders.ouch.v4.2.packettype", ftypes.STRING)
nasdaq_equities_orders_ouch_v4_2.fields.password = ProtoField.new("Password", "nasdaq.equities.orders.ouch.v4.2.password", ftypes.STRING)
nasdaq_equities_orders_ouch_v4_2.fields.payload = ProtoField.new("Payload", "nasdaq.equities.orders.ouch.v4.2.payload", ftypes.STRING)
nasdaq_equities_orders_ouch_v4_2.fields.previous_order_token = ProtoField.new("Previous Order Token", "nasdaq.equities.orders.ouch.v4.2.previousordertoken", ftypes.STRING)
nasdaq_equities_orders_ouch_v4_2.fields.price = ProtoField.new("Price", "nasdaq.equities.orders.ouch.v4.2.price", ftypes.UINT32)
nasdaq_equities_orders_ouch_v4_2.fields.quantity_prevented_from_trading = ProtoField.new("Quantity Prevented From Trading", "nasdaq.equities.orders.ouch.v4.2.quantitypreventedfromtrading", ftypes.UINT32)
nasdaq_equities_orders_ouch_v4_2.fields.reason = ProtoField.new("Reason", "nasdaq.equities.orders.ouch.v4.2.reason", ftypes.STRING)
nasdaq_equities_orders_ouch_v4_2.fields.reference_price = ProtoField.new("Reference Price", "nasdaq.equities.orders.ouch.v4.2.referenceprice", ftypes.UINT32)
nasdaq_equities_orders_ouch_v4_2.fields.reference_price_type = ProtoField.new("Reference Price Type", "nasdaq.equities.orders.ouch.v4.2.referencepricetype", ftypes.STRING)
nasdaq_equities_orders_ouch_v4_2.fields.reject_reason_code = ProtoField.new("Reject Reason Code", "nasdaq.equities.orders.ouch.v4.2.rejectreasoncode", ftypes.STRING)
nasdaq_equities_orders_ouch_v4_2.fields.rejected_order_message = ProtoField.new("Rejected Order Message", "nasdaq.equities.orders.ouch.v4.2.rejectedordermessage", ftypes.STRING)
nasdaq_equities_orders_ouch_v4_2.fields.rejected_order_reason = ProtoField.new("Rejected Order Reason", "nasdaq.equities.orders.ouch.v4.2.rejectedorderreason", ftypes.STRING)
nasdaq_equities_orders_ouch_v4_2.fields.replace_order_message = ProtoField.new("Replace Order Message", "nasdaq.equities.orders.ouch.v4.2.replaceordermessage", ftypes.STRING)
nasdaq_equities_orders_ouch_v4_2.fields.replaced_message = ProtoField.new("Replaced Message", "nasdaq.equities.orders.ouch.v4.2.replacedmessage", ftypes.STRING)
nasdaq_equities_orders_ouch_v4_2.fields.replacement_order_token = ProtoField.new("Replacement Order Token", "nasdaq.equities.orders.ouch.v4.2.replacementordertoken", ftypes.STRING)
nasdaq_equities_orders_ouch_v4_2.fields.requested_sequence_number = ProtoField.new("Requested Sequence Number", "nasdaq.equities.orders.ouch.v4.2.requestedsequencenumber", ftypes.STRING)
nasdaq_equities_orders_ouch_v4_2.fields.requested_session = ProtoField.new("Requested Session", "nasdaq.equities.orders.ouch.v4.2.requestedsession", ftypes.STRING)
nasdaq_equities_orders_ouch_v4_2.fields.sequence_number = ProtoField.new("Sequence Number", "nasdaq.equities.orders.ouch.v4.2.sequencenumber", ftypes.STRING)
nasdaq_equities_orders_ouch_v4_2.fields.sequenced_data_packet = ProtoField.new("Sequenced Data Packet", "nasdaq.equities.orders.ouch.v4.2.sequenceddatapacket", ftypes.STRING)
nasdaq_equities_orders_ouch_v4_2.fields.session = ProtoField.new("Session", "nasdaq.equities.orders.ouch.v4.2.session", ftypes.STRING)
nasdaq_equities_orders_ouch_v4_2.fields.shares = ProtoField.new("Shares", "nasdaq.equities.orders.ouch.v4.2.shares", ftypes.UINT32)
nasdaq_equities_orders_ouch_v4_2.fields.soup_bin_tcp_packet = ProtoField.new("Soup Bin Tcp Packet", "nasdaq.equities.orders.ouch.v4.2.soupbintcppacket", ftypes.STRING)
nasdaq_equities_orders_ouch_v4_2.fields.stock = ProtoField.new("Stock", "nasdaq.equities.orders.ouch.v4.2.stock", ftypes.STRING)
nasdaq_equities_orders_ouch_v4_2.fields.system_event_message = ProtoField.new("System Event Message", "nasdaq.equities.orders.ouch.v4.2.systemeventmessage", ftypes.STRING)
nasdaq_equities_orders_ouch_v4_2.fields.text = ProtoField.new("Text", "nasdaq.equities.orders.ouch.v4.2.text", ftypes.STRING)
nasdaq_equities_orders_ouch_v4_2.fields.time_in_force = ProtoField.new("Time In Force", "nasdaq.equities.orders.ouch.v4.2.timeinforce", ftypes.UINT32)
nasdaq_equities_orders_ouch_v4_2.fields.timestamp = ProtoField.new("Timestamp", "nasdaq.equities.orders.ouch.v4.2.timestamp", ftypes.UINT64)
nasdaq_equities_orders_ouch_v4_2.fields.trade_correction_message = ProtoField.new("Trade Correction Message", "nasdaq.equities.orders.ouch.v4.2.tradecorrectionmessage", ftypes.STRING)
nasdaq_equities_orders_ouch_v4_2.fields.trade_now_message = ProtoField.new("Trade Now Message", "nasdaq.equities.orders.ouch.v4.2.tradenowmessage", ftypes.STRING)
nasdaq_equities_orders_ouch_v4_2.fields.unsequenced_data_packet = ProtoField.new("Unsequenced Data Packet", "nasdaq.equities.orders.ouch.v4.2.unsequenceddatapacket", ftypes.STRING)
nasdaq_equities_orders_ouch_v4_2.fields.username = ProtoField.new("Username", "nasdaq.equities.orders.ouch.v4.2.username", ftypes.STRING)

-----------------------------------------------------------------------
-- Declare Dissection Options
-----------------------------------------------------------------------

-- Nasdaq Equities Orders Ouch 4.2 Element Dissection Options
show.accepted_message = true
show.aiq_cancelled_message = true
show.broken_trade_message = true
show.cancel_order_message = true
show.cancel_pending_message = true
show.cancel_reject_message = true
show.canceled_message = true
show.debug_packet = true
show.enter_order_message = true
show.executed_message = true
show.executed_with_reference_price_message = true
show.login_accepted_packet = true
show.login_rejected_packet = true
show.login_request_packet = true
show.message = true
show.modify_order_message = true
show.order_modified_message = true
show.order_priority_update_message = true
show.packet = true
show.packet_header = true
show.rejected_order_message = true
show.replace_order_message = true
show.replaced_message = true
show.sequenced_data_packet = true
show.soup_bin_tcp_packet = true
show.system_event_message = true
show.trade_correction_message = true
show.trade_now_message = true
show.unsequenced_data_packet = true
show.data = false
show.payload = false

-- Register Nasdaq Equities Orders Ouch 4.2 Show Options
nasdaq_equities_orders_ouch_v4_2.prefs.show_accepted_message = Pref.bool("Show Accepted Message", show.accepted_message, "Parse and add Accepted Message to protocol tree")
nasdaq_equities_orders_ouch_v4_2.prefs.show_aiq_cancelled_message = Pref.bool("Show Aiq Cancelled Message", show.aiq_cancelled_message, "Parse and add Aiq Cancelled Message to protocol tree")
nasdaq_equities_orders_ouch_v4_2.prefs.show_broken_trade_message = Pref.bool("Show Broken Trade Message", show.broken_trade_message, "Parse and add Broken Trade Message to protocol tree")
nasdaq_equities_orders_ouch_v4_2.prefs.show_cancel_order_message = Pref.bool("Show Cancel Order Message", show.cancel_order_message, "Parse and add Cancel Order Message to protocol tree")
nasdaq_equities_orders_ouch_v4_2.prefs.show_cancel_pending_message = Pref.bool("Show Cancel Pending Message", show.cancel_pending_message, "Parse and add Cancel Pending Message to protocol tree")
nasdaq_equities_orders_ouch_v4_2.prefs.show_cancel_reject_message = Pref.bool("Show Cancel Reject Message", show.cancel_reject_message, "Parse and add Cancel Reject Message to protocol tree")
nasdaq_equities_orders_ouch_v4_2.prefs.show_canceled_message = Pref.bool("Show Canceled Message", show.canceled_message, "Parse and add Canceled Message to protocol tree")
nasdaq_equities_orders_ouch_v4_2.prefs.show_debug_packet = Pref.bool("Show Debug Packet", show.debug_packet, "Parse and add Debug Packet to protocol tree")
nasdaq_equities_orders_ouch_v4_2.prefs.show_enter_order_message = Pref.bool("Show Enter Order Message", show.enter_order_message, "Parse and add Enter Order Message to protocol tree")
nasdaq_equities_orders_ouch_v4_2.prefs.show_executed_message = Pref.bool("Show Executed Message", show.executed_message, "Parse and add Executed Message to protocol tree")
nasdaq_equities_orders_ouch_v4_2.prefs.show_executed_with_reference_price_message = Pref.bool("Show Executed With Reference Price Message", show.executed_with_reference_price_message, "Parse and add Executed With Reference Price Message to protocol tree")
nasdaq_equities_orders_ouch_v4_2.prefs.show_login_accepted_packet = Pref.bool("Show Login Accepted Packet", show.login_accepted_packet, "Parse and add Login Accepted Packet to protocol tree")
nasdaq_equities_orders_ouch_v4_2.prefs.show_login_rejected_packet = Pref.bool("Show Login Rejected Packet", show.login_rejected_packet, "Parse and add Login Rejected Packet to protocol tree")
nasdaq_equities_orders_ouch_v4_2.prefs.show_login_request_packet = Pref.bool("Show Login Request Packet", show.login_request_packet, "Parse and add Login Request Packet to protocol tree")
nasdaq_equities_orders_ouch_v4_2.prefs.show_message = Pref.bool("Show Message", show.message, "Parse and add Message to protocol tree")
nasdaq_equities_orders_ouch_v4_2.prefs.show_modify_order_message = Pref.bool("Show Modify Order Message", show.modify_order_message, "Parse and add Modify Order Message to protocol tree")
nasdaq_equities_orders_ouch_v4_2.prefs.show_order_modified_message = Pref.bool("Show Order Modified Message", show.order_modified_message, "Parse and add Order Modified Message to protocol tree")
nasdaq_equities_orders_ouch_v4_2.prefs.show_order_priority_update_message = Pref.bool("Show Order Priority Update Message", show.order_priority_update_message, "Parse and add Order Priority Update Message to protocol tree")
nasdaq_equities_orders_ouch_v4_2.prefs.show_packet = Pref.bool("Show Packet", show.packet, "Parse and add Packet to protocol tree")
nasdaq_equities_orders_ouch_v4_2.prefs.show_packet_header = Pref.bool("Show Packet Header", show.packet_header, "Parse and add Packet Header to protocol tree")
nasdaq_equities_orders_ouch_v4_2.prefs.show_rejected_order_message = Pref.bool("Show Rejected Order Message", show.rejected_order_message, "Parse and add Rejected Order Message to protocol tree")
nasdaq_equities_orders_ouch_v4_2.prefs.show_replace_order_message = Pref.bool("Show Replace Order Message", show.replace_order_message, "Parse and add Replace Order Message to protocol tree")
nasdaq_equities_orders_ouch_v4_2.prefs.show_replaced_message = Pref.bool("Show Replaced Message", show.replaced_message, "Parse and add Replaced Message to protocol tree")
nasdaq_equities_orders_ouch_v4_2.prefs.show_sequenced_data_packet = Pref.bool("Show Sequenced Data Packet", show.sequenced_data_packet, "Parse and add Sequenced Data Packet to protocol tree")
nasdaq_equities_orders_ouch_v4_2.prefs.show_soup_bin_tcp_packet = Pref.bool("Show Soup Bin Tcp Packet", show.soup_bin_tcp_packet, "Parse and add Soup Bin Tcp Packet to protocol tree")
nasdaq_equities_orders_ouch_v4_2.prefs.show_system_event_message = Pref.bool("Show System Event Message", show.system_event_message, "Parse and add System Event Message to protocol tree")
nasdaq_equities_orders_ouch_v4_2.prefs.show_trade_correction_message = Pref.bool("Show Trade Correction Message", show.trade_correction_message, "Parse and add Trade Correction Message to protocol tree")
nasdaq_equities_orders_ouch_v4_2.prefs.show_trade_now_message = Pref.bool("Show Trade Now Message", show.trade_now_message, "Parse and add Trade Now Message to protocol tree")
nasdaq_equities_orders_ouch_v4_2.prefs.show_unsequenced_data_packet = Pref.bool("Show Unsequenced Data Packet", show.unsequenced_data_packet, "Parse and add Unsequenced Data Packet to protocol tree")
nasdaq_equities_orders_ouch_v4_2.prefs.show_data = Pref.bool("Show Data", show.data, "Parse and add Data to protocol tree")
nasdaq_equities_orders_ouch_v4_2.prefs.show_payload = Pref.bool("Show Payload", show.payload, "Parse and add Payload to protocol tree")

-- Handle changed preferences
function nasdaq_equities_orders_ouch_v4_2.prefs_changed()
  local changed = false

  -- Check if show options have changed
  if show.accepted_message ~= nasdaq_equities_orders_ouch_v4_2.prefs.show_accepted_message then
    show.accepted_message = nasdaq_equities_orders_ouch_v4_2.prefs.show_accepted_message
    changed = true
  end
  if show.aiq_cancelled_message ~= nasdaq_equities_orders_ouch_v4_2.prefs.show_aiq_cancelled_message then
    show.aiq_cancelled_message = nasdaq_equities_orders_ouch_v4_2.prefs.show_aiq_cancelled_message
    changed = true
  end
  if show.broken_trade_message ~= nasdaq_equities_orders_ouch_v4_2.prefs.show_broken_trade_message then
    show.broken_trade_message = nasdaq_equities_orders_ouch_v4_2.prefs.show_broken_trade_message
    changed = true
  end
  if show.cancel_order_message ~= nasdaq_equities_orders_ouch_v4_2.prefs.show_cancel_order_message then
    show.cancel_order_message = nasdaq_equities_orders_ouch_v4_2.prefs.show_cancel_order_message
    changed = true
  end
  if show.cancel_pending_message ~= nasdaq_equities_orders_ouch_v4_2.prefs.show_cancel_pending_message then
    show.cancel_pending_message = nasdaq_equities_orders_ouch_v4_2.prefs.show_cancel_pending_message
    changed = true
  end
  if show.cancel_reject_message ~= nasdaq_equities_orders_ouch_v4_2.prefs.show_cancel_reject_message then
    show.cancel_reject_message = nasdaq_equities_orders_ouch_v4_2.prefs.show_cancel_reject_message
    changed = true
  end
  if show.canceled_message ~= nasdaq_equities_orders_ouch_v4_2.prefs.show_canceled_message then
    show.canceled_message = nasdaq_equities_orders_ouch_v4_2.prefs.show_canceled_message
    changed = true
  end
  if show.debug_packet ~= nasdaq_equities_orders_ouch_v4_2.prefs.show_debug_packet then
    show.debug_packet = nasdaq_equities_orders_ouch_v4_2.prefs.show_debug_packet
    changed = true
  end
  if show.enter_order_message ~= nasdaq_equities_orders_ouch_v4_2.prefs.show_enter_order_message then
    show.enter_order_message = nasdaq_equities_orders_ouch_v4_2.prefs.show_enter_order_message
    changed = true
  end
  if show.executed_message ~= nasdaq_equities_orders_ouch_v4_2.prefs.show_executed_message then
    show.executed_message = nasdaq_equities_orders_ouch_v4_2.prefs.show_executed_message
    changed = true
  end
  if show.executed_with_reference_price_message ~= nasdaq_equities_orders_ouch_v4_2.prefs.show_executed_with_reference_price_message then
    show.executed_with_reference_price_message = nasdaq_equities_orders_ouch_v4_2.prefs.show_executed_with_reference_price_message
    changed = true
  end
  if show.login_accepted_packet ~= nasdaq_equities_orders_ouch_v4_2.prefs.show_login_accepted_packet then
    show.login_accepted_packet = nasdaq_equities_orders_ouch_v4_2.prefs.show_login_accepted_packet
    changed = true
  end
  if show.login_rejected_packet ~= nasdaq_equities_orders_ouch_v4_2.prefs.show_login_rejected_packet then
    show.login_rejected_packet = nasdaq_equities_orders_ouch_v4_2.prefs.show_login_rejected_packet
    changed = true
  end
  if show.login_request_packet ~= nasdaq_equities_orders_ouch_v4_2.prefs.show_login_request_packet then
    show.login_request_packet = nasdaq_equities_orders_ouch_v4_2.prefs.show_login_request_packet
    changed = true
  end
  if show.message ~= nasdaq_equities_orders_ouch_v4_2.prefs.show_message then
    show.message = nasdaq_equities_orders_ouch_v4_2.prefs.show_message
    changed = true
  end
  if show.modify_order_message ~= nasdaq_equities_orders_ouch_v4_2.prefs.show_modify_order_message then
    show.modify_order_message = nasdaq_equities_orders_ouch_v4_2.prefs.show_modify_order_message
    changed = true
  end
  if show.order_modified_message ~= nasdaq_equities_orders_ouch_v4_2.prefs.show_order_modified_message then
    show.order_modified_message = nasdaq_equities_orders_ouch_v4_2.prefs.show_order_modified_message
    changed = true
  end
  if show.order_priority_update_message ~= nasdaq_equities_orders_ouch_v4_2.prefs.show_order_priority_update_message then
    show.order_priority_update_message = nasdaq_equities_orders_ouch_v4_2.prefs.show_order_priority_update_message
    changed = true
  end
  if show.packet ~= nasdaq_equities_orders_ouch_v4_2.prefs.show_packet then
    show.packet = nasdaq_equities_orders_ouch_v4_2.prefs.show_packet
    changed = true
  end
  if show.packet_header ~= nasdaq_equities_orders_ouch_v4_2.prefs.show_packet_header then
    show.packet_header = nasdaq_equities_orders_ouch_v4_2.prefs.show_packet_header
    changed = true
  end
  if show.rejected_order_message ~= nasdaq_equities_orders_ouch_v4_2.prefs.show_rejected_order_message then
    show.rejected_order_message = nasdaq_equities_orders_ouch_v4_2.prefs.show_rejected_order_message
    changed = true
  end
  if show.replace_order_message ~= nasdaq_equities_orders_ouch_v4_2.prefs.show_replace_order_message then
    show.replace_order_message = nasdaq_equities_orders_ouch_v4_2.prefs.show_replace_order_message
    changed = true
  end
  if show.replaced_message ~= nasdaq_equities_orders_ouch_v4_2.prefs.show_replaced_message then
    show.replaced_message = nasdaq_equities_orders_ouch_v4_2.prefs.show_replaced_message
    changed = true
  end
  if show.sequenced_data_packet ~= nasdaq_equities_orders_ouch_v4_2.prefs.show_sequenced_data_packet then
    show.sequenced_data_packet = nasdaq_equities_orders_ouch_v4_2.prefs.show_sequenced_data_packet
    changed = true
  end
  if show.soup_bin_tcp_packet ~= nasdaq_equities_orders_ouch_v4_2.prefs.show_soup_bin_tcp_packet then
    show.soup_bin_tcp_packet = nasdaq_equities_orders_ouch_v4_2.prefs.show_soup_bin_tcp_packet
    changed = true
  end
  if show.system_event_message ~= nasdaq_equities_orders_ouch_v4_2.prefs.show_system_event_message then
    show.system_event_message = nasdaq_equities_orders_ouch_v4_2.prefs.show_system_event_message
    changed = true
  end
  if show.trade_correction_message ~= nasdaq_equities_orders_ouch_v4_2.prefs.show_trade_correction_message then
    show.trade_correction_message = nasdaq_equities_orders_ouch_v4_2.prefs.show_trade_correction_message
    changed = true
  end
  if show.trade_now_message ~= nasdaq_equities_orders_ouch_v4_2.prefs.show_trade_now_message then
    show.trade_now_message = nasdaq_equities_orders_ouch_v4_2.prefs.show_trade_now_message
    changed = true
  end
  if show.unsequenced_data_packet ~= nasdaq_equities_orders_ouch_v4_2.prefs.show_unsequenced_data_packet then
    show.unsequenced_data_packet = nasdaq_equities_orders_ouch_v4_2.prefs.show_unsequenced_data_packet
    changed = true
  end
  if show.data ~= nasdaq_equities_orders_ouch_v4_2.prefs.show_data then
    show.data = nasdaq_equities_orders_ouch_v4_2.prefs.show_data
    changed = true
  end
  if show.payload ~= nasdaq_equities_orders_ouch_v4_2.prefs.show_payload then
    show.payload = nasdaq_equities_orders_ouch_v4_2.prefs.show_payload
    changed = true
  end

  -- Reload on changed preference
  if changed then
    reload()
  end
end


-----------------------------------------------------------------------
-- Dissect Nasdaq Equities Orders Ouch 4.2
-----------------------------------------------------------------------

-- Size: Shares
size_of.shares = 4

-- Display: Shares
display.shares = function(value)
  return "Shares: "..value
end

-- Dissect: Shares
dissect.shares = function(buffer, offset, packet, parent)
  local length = size_of.shares
  local range = buffer(offset, length)
  local value = range:uint()
  local display = display.shares(value, buffer, offset, packet, parent)

  parent:add(nasdaq_equities_orders_ouch_v4_2.fields.shares, range, value, display)

  return offset + length, value
end

-- Size: Buy Sell Indicator
size_of.buy_sell_indicator = 1

-- Display: Buy Sell Indicator
display.buy_sell_indicator = function(value)
  if value == "B" then
    return "Buy Sell Indicator: Buy (B)"
  end
  if value == "S" then
    return "Buy Sell Indicator: Sell (S)"
  end
  if value == "T" then
    return "Buy Sell Indicator: Sell Short (T)"
  end
  if value == "E" then
    return "Buy Sell Indicator: Sell Short Exempt (E)"
  end

  return "Buy Sell Indicator: Unknown("..value..")"
end

-- Dissect: Buy Sell Indicator
dissect.buy_sell_indicator = function(buffer, offset, packet, parent)
  local length = size_of.buy_sell_indicator
  local range = buffer(offset, length)
  local value = range:string()
  local display = display.buy_sell_indicator(value, buffer, offset, packet, parent)

  parent:add(nasdaq_equities_orders_ouch_v4_2.fields.buy_sell_indicator, range, value, display)

  return offset + length, value
end

-- Size: Order Token
size_of.order_token = 14

-- Display: Order Token
display.order_token = function(value)
  return "Order Token: "..value
end

-- Dissect: Order Token
dissect.order_token = function(buffer, offset, packet, parent)
  local length = size_of.order_token
  local range = buffer(offset, length)
  local value = range:string()
  local display = display.order_token(value, buffer, offset, packet, parent)

  parent:add(nasdaq_equities_orders_ouch_v4_2.fields.order_token, range, value, display)

  return offset + length, value
end

-- Size: Timestamp
size_of.timestamp = 8

-- Display: Timestamp
display.timestamp = function(value)
  return "Timestamp: "..value
end

-- Dissect: Timestamp
dissect.timestamp = function(buffer, offset, packet, parent)
  local length = size_of.timestamp
  local range = buffer(offset, length)
  local value = range:uint64()
  local display = display.timestamp(value, buffer, offset, packet, parent)

  parent:add(nasdaq_equities_orders_ouch_v4_2.fields.timestamp, range, value, display)

  return offset + length, value
end

-- Calculate size of: Order Modified Message
size_of.order_modified_message = function(buffer, offset)
  local index = 0

  index = index + size_of.timestamp

  index = index + size_of.order_token

  index = index + size_of.buy_sell_indicator

  index = index + size_of.shares

  return index
end

-- Display: Order Modified Message
display.order_modified_message = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Order Modified Message
dissect.order_modified_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Timestamp: 8 Byte Unsigned Fixed Width Integer
  index, timestamp = dissect.timestamp(buffer, index, packet, parent)

  -- Order Token: 14 Byte Ascii String
  index, order_token = dissect.order_token(buffer, index, packet, parent)

  -- Buy Sell Indicator: 1 Byte Ascii String Enum with 4 values
  index, buy_sell_indicator = dissect.buy_sell_indicator(buffer, index, packet, parent)

  -- Shares: 4 Byte Unsigned Fixed Width Integer
  index, shares = dissect.shares(buffer, index, packet, parent)

  return index
end

-- Dissect: Order Modified Message
dissect.order_modified_message = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.order_modified_message then
    local length = size_of.order_modified_message(buffer, offset)
    local range = buffer(offset, length)
    local display = display.order_modified_message(buffer, packet, parent)
    parent = parent:add(nasdaq_equities_orders_ouch_v4_2.fields.order_modified_message, range, display)
  end

  return dissect.order_modified_message_fields(buffer, offset, packet, parent)
end

-- Size: Order Reference Number
size_of.order_reference_number = 8

-- Display: Order Reference Number
display.order_reference_number = function(value)
  return "Order Reference Number: "..value
end

-- Dissect: Order Reference Number
dissect.order_reference_number = function(buffer, offset, packet, parent)
  local length = size_of.order_reference_number
  local range = buffer(offset, length)
  local value = range:uint64()
  local display = display.order_reference_number(value, buffer, offset, packet, parent)

  parent:add(nasdaq_equities_orders_ouch_v4_2.fields.order_reference_number, range, value, display)

  return offset + length, value
end

-- Size: Display
size_of.display = 1

-- Display: Display
display.display = function(value)
  if value == "A" then
    return "Display: Attributable Price (A)"
  end
  if value == "Y" then
    return "Display: Anonymous Price (Y)"
  end
  if value == "N" then
    return "Display: Non Display (N)"
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
  if value == "m" then
    return "Display: Mid Point (m)"
  end
  if value == "n" then
    return "Display: Non Display And Mid Point (n)"
  end

  return "Display: Unknown("..value..")"
end

-- Dissect: Display
dissect.display = function(buffer, offset, packet, parent)
  local length = size_of.display
  local range = buffer(offset, length)
  local value = range:string()
  local display = display.display(value, buffer, offset, packet, parent)

  parent:add(nasdaq_equities_orders_ouch_v4_2.fields.display, range, value, display)

  return offset + length, value
end

-- Size: Price
size_of.price = 4

-- Display: Price
display.price = function(value)
  return "Price: "..value
end

-- Dissect: Price
dissect.price = function(buffer, offset, packet, parent)
  local length = size_of.price
  local range = buffer(offset, length)
  local value = range:uint()
  local display = display.price(value, buffer, offset, packet, parent)

  parent:add(nasdaq_equities_orders_ouch_v4_2.fields.price, range, value, display)

  return offset + length, value
end

-- Calculate size of: Order Priority Update Message
size_of.order_priority_update_message = function(buffer, offset)
  local index = 0

  index = index + size_of.timestamp

  index = index + size_of.order_token

  index = index + size_of.price

  index = index + size_of.display

  index = index + size_of.order_reference_number

  return index
end

-- Display: Order Priority Update Message
display.order_priority_update_message = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Order Priority Update Message
dissect.order_priority_update_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Timestamp: 8 Byte Unsigned Fixed Width Integer
  index, timestamp = dissect.timestamp(buffer, index, packet, parent)

  -- Order Token: 14 Byte Ascii String
  index, order_token = dissect.order_token(buffer, index, packet, parent)

  -- Price: 4 Byte Unsigned Fixed Width Integer
  index, price = dissect.price(buffer, index, packet, parent)

  -- Display: 1 Byte Ascii String Enum with 13 values
  index, display = dissect.display(buffer, index, packet, parent)

  -- Order Reference Number: 8 Byte Unsigned Fixed Width Integer
  index, order_reference_number = dissect.order_reference_number(buffer, index, packet, parent)

  return index
end

-- Dissect: Order Priority Update Message
dissect.order_priority_update_message = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.order_priority_update_message then
    local length = size_of.order_priority_update_message(buffer, offset)
    local range = buffer(offset, length)
    local display = display.order_priority_update_message(buffer, packet, parent)
    parent = parent:add(nasdaq_equities_orders_ouch_v4_2.fields.order_priority_update_message, range, display)
  end

  return dissect.order_priority_update_message_fields(buffer, offset, packet, parent)
end

-- Calculate size of: Cancel Reject Message
size_of.cancel_reject_message = function(buffer, offset)
  local index = 0

  index = index + size_of.timestamp

  index = index + size_of.order_token

  return index
end

-- Display: Cancel Reject Message
display.cancel_reject_message = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Cancel Reject Message
dissect.cancel_reject_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Timestamp: 8 Byte Unsigned Fixed Width Integer
  index, timestamp = dissect.timestamp(buffer, index, packet, parent)

  -- Order Token: 14 Byte Ascii String
  index, order_token = dissect.order_token(buffer, index, packet, parent)

  return index
end

-- Dissect: Cancel Reject Message
dissect.cancel_reject_message = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.cancel_reject_message then
    local length = size_of.cancel_reject_message(buffer, offset)
    local range = buffer(offset, length)
    local display = display.cancel_reject_message(buffer, packet, parent)
    parent = parent:add(nasdaq_equities_orders_ouch_v4_2.fields.cancel_reject_message, range, display)
  end

  return dissect.cancel_reject_message_fields(buffer, offset, packet, parent)
end

-- Calculate size of: Cancel Pending Message
size_of.cancel_pending_message = function(buffer, offset)
  local index = 0

  index = index + size_of.timestamp

  index = index + size_of.order_token

  return index
end

-- Display: Cancel Pending Message
display.cancel_pending_message = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Cancel Pending Message
dissect.cancel_pending_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Timestamp: 8 Byte Unsigned Fixed Width Integer
  index, timestamp = dissect.timestamp(buffer, index, packet, parent)

  -- Order Token: 14 Byte Ascii String
  index, order_token = dissect.order_token(buffer, index, packet, parent)

  return index
end

-- Dissect: Cancel Pending Message
dissect.cancel_pending_message = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.cancel_pending_message then
    local length = size_of.cancel_pending_message(buffer, offset)
    local range = buffer(offset, length)
    local display = display.cancel_pending_message(buffer, packet, parent)
    parent = parent:add(nasdaq_equities_orders_ouch_v4_2.fields.cancel_pending_message, range, display)
  end

  return dissect.cancel_pending_message_fields(buffer, offset, packet, parent)
end

-- Size: Rejected Order Reason
size_of.rejected_order_reason = 1

-- Display: Rejected Order Reason
display.rejected_order_reason = function(value)
  return "Rejected Order Reason: "..value
end

-- Dissect: Rejected Order Reason
dissect.rejected_order_reason = function(buffer, offset, packet, parent)
  local length = size_of.rejected_order_reason
  local range = buffer(offset, length)
  local value = range:string()
  local display = display.rejected_order_reason(value, buffer, offset, packet, parent)

  parent:add(nasdaq_equities_orders_ouch_v4_2.fields.rejected_order_reason, range, value, display)

  return offset + length, value
end

-- Calculate size of: Rejected Order Message
size_of.rejected_order_message = function(buffer, offset)
  local index = 0

  index = index + size_of.timestamp

  index = index + size_of.order_token

  index = index + size_of.rejected_order_reason

  return index
end

-- Display: Rejected Order Message
display.rejected_order_message = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Rejected Order Message
dissect.rejected_order_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Timestamp: 8 Byte Unsigned Fixed Width Integer
  index, timestamp = dissect.timestamp(buffer, index, packet, parent)

  -- Order Token: 14 Byte Ascii String
  index, order_token = dissect.order_token(buffer, index, packet, parent)

  -- Rejected Order Reason: 1 Byte Ascii String
  index, rejected_order_reason = dissect.rejected_order_reason(buffer, index, packet, parent)

  return index
end

-- Dissect: Rejected Order Message
dissect.rejected_order_message = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.rejected_order_message then
    local length = size_of.rejected_order_message(buffer, offset)
    local range = buffer(offset, length)
    local display = display.rejected_order_message(buffer, packet, parent)
    parent = parent:add(nasdaq_equities_orders_ouch_v4_2.fields.rejected_order_message, range, display)
  end

  return dissect.rejected_order_message_fields(buffer, offset, packet, parent)
end

-- Size: Reason
size_of.reason = 1

-- Display: Reason
display.reason = function(value)
  return "Reason: "..value
end

-- Dissect: Reason
dissect.reason = function(buffer, offset, packet, parent)
  local length = size_of.reason
  local range = buffer(offset, length)
  local value = range:string()
  local display = display.reason(value, buffer, offset, packet, parent)

  parent:add(nasdaq_equities_orders_ouch_v4_2.fields.reason, range, value, display)

  return offset + length, value
end

-- Size: Match Number
size_of.match_number = 8

-- Display: Match Number
display.match_number = function(value)
  return "Match Number: "..value
end

-- Dissect: Match Number
dissect.match_number = function(buffer, offset, packet, parent)
  local length = size_of.match_number
  local range = buffer(offset, length)
  local value = range:uint64()
  local display = display.match_number(value, buffer, offset, packet, parent)

  parent:add(nasdaq_equities_orders_ouch_v4_2.fields.match_number, range, value, display)

  return offset + length, value
end

-- Size: Liquidity Flag
size_of.liquidity_flag = 1

-- Display: Liquidity Flag
display.liquidity_flag = function(value)
  if value == "A" then
    return "Liquidity Flag: Added (A)"
  end
  if value == "R" then
    return "Liquidity Flag: Removed (R)"
  end
  if value == "O" then
    return "Liquidity Flag: Opening (O)"
  end
  if value == "M" then
    return "Liquidity Flag: Opening Cross (M)"
  end
  if value == "C" then
    return "Liquidity Flag: Closing (C)"
  end
  if value == "L" then
    return "Liquidity Flag: Closing Cross (L)"
  end
  if value == "H" then
    return "Liquidity Flag: Halt Ipo (H)"
  end
  if value == "K" then
    return "Liquidity Flag: Halt (K)"
  end
  if value == "J" then
    return "Liquidity Flag: Nondisplayed (J)"
  end
  if value == "W" then
    return "Liquidity Flag: Added (W)"
  end
  if value == "m" then
    return "Liquidity Flag: Removed (m)"
  end
  if value == "k" then
    return "Liquidity Flag: Added (k)"
  end
  if value == "0" then
    return "Liquidity Flag: Supplemental (0)"
  end
  if value == "7" then
    return "Liquidity Flag: Displayed (7)"
  end
  if value == "8" then
    return "Liquidity Flag: Displayed (8)"
  end
  if value == "d" then
    return "Liquidity Flag: Retail Designated (d)"
  end
  if value == "e" then
    return "Liquidity Flag: Retail Designated (e)"
  end
  if value == "f" then
    return "Liquidity Flag: Retail Designated (f)"
  end
  if value == "j" then
    return "Liquidity Flag: Rpi Retail Price Improving (j)"
  end
  if value == "r" then
    return "Liquidity Flag: Retail Order (r)"
  end
  if value == "t" then
    return "Liquidity Flag: Retail Order (t)"
  end
  if value == "4" then
    return "Liquidity Flag: Added (4)"
  end
  if value == "5" then
    return "Liquidity Flag: Added (5)"
  end
  if value == "6" then
    return "Liquidity Flag: Removed (6)"
  end
  if value == "g" then
    return "Liquidity Flag: Added (g)"
  end
  if value == "n" then
    return "Liquidity Flag: Midpoint (n)"
  end

  return "Liquidity Flag: Unknown("..value..")"
end

-- Dissect: Liquidity Flag
dissect.liquidity_flag = function(buffer, offset, packet, parent)
  local length = size_of.liquidity_flag
  local range = buffer(offset, length)
  local value = range:string()
  local display = display.liquidity_flag(value, buffer, offset, packet, parent)

  parent:add(nasdaq_equities_orders_ouch_v4_2.fields.liquidity_flag, range, value, display)

  return offset + length, value
end

-- Size: Execution Price
size_of.execution_price = 4

-- Display: Execution Price
display.execution_price = function(value)
  return "Execution Price: "..value
end

-- Dissect: Execution Price
dissect.execution_price = function(buffer, offset, packet, parent)
  local length = size_of.execution_price
  local range = buffer(offset, length)
  local value = range:uint()
  local display = display.execution_price(value, buffer, offset, packet, parent)

  parent:add(nasdaq_equities_orders_ouch_v4_2.fields.execution_price, range, value, display)

  return offset + length, value
end

-- Size: Executed Shares
size_of.executed_shares = 4

-- Display: Executed Shares
display.executed_shares = function(value)
  return "Executed Shares: "..value
end

-- Dissect: Executed Shares
dissect.executed_shares = function(buffer, offset, packet, parent)
  local length = size_of.executed_shares
  local range = buffer(offset, length)
  local value = range:uint()
  local display = display.executed_shares(value, buffer, offset, packet, parent)

  parent:add(nasdaq_equities_orders_ouch_v4_2.fields.executed_shares, range, value, display)

  return offset + length, value
end

-- Calculate size of: Trade Correction Message
size_of.trade_correction_message = function(buffer, offset)
  local index = 0

  index = index + size_of.timestamp

  index = index + size_of.order_token

  index = index + size_of.executed_shares

  index = index + size_of.execution_price

  index = index + size_of.liquidity_flag

  index = index + size_of.match_number

  index = index + size_of.reason

  return index
end

-- Display: Trade Correction Message
display.trade_correction_message = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Trade Correction Message
dissect.trade_correction_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Timestamp: 8 Byte Unsigned Fixed Width Integer
  index, timestamp = dissect.timestamp(buffer, index, packet, parent)

  -- Order Token: 14 Byte Ascii String
  index, order_token = dissect.order_token(buffer, index, packet, parent)

  -- Executed Shares: 4 Byte Unsigned Fixed Width Integer
  index, executed_shares = dissect.executed_shares(buffer, index, packet, parent)

  -- Execution Price: 4 Byte Unsigned Fixed Width Integer
  index, execution_price = dissect.execution_price(buffer, index, packet, parent)

  -- Liquidity Flag: 1 Byte Ascii String Enum with 26 values
  index, liquidity_flag = dissect.liquidity_flag(buffer, index, packet, parent)

  -- Match Number: 8 Byte Unsigned Fixed Width Integer
  index, match_number = dissect.match_number(buffer, index, packet, parent)

  -- Reason: 1 Byte Ascii String
  index, reason = dissect.reason(buffer, index, packet, parent)

  return index
end

-- Dissect: Trade Correction Message
dissect.trade_correction_message = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.trade_correction_message then
    local length = size_of.trade_correction_message(buffer, offset)
    local range = buffer(offset, length)
    local display = display.trade_correction_message(buffer, packet, parent)
    parent = parent:add(nasdaq_equities_orders_ouch_v4_2.fields.trade_correction_message, range, display)
  end

  return dissect.trade_correction_message_fields(buffer, offset, packet, parent)
end

-- Size: Reference Price Type
size_of.reference_price_type = 1

-- Display: Reference Price Type
display.reference_price_type = function(value)
  return "Reference Price Type: "..value
end

-- Dissect: Reference Price Type
dissect.reference_price_type = function(buffer, offset, packet, parent)
  local length = size_of.reference_price_type
  local range = buffer(offset, length)
  local value = range:string()
  local display = display.reference_price_type(value, buffer, offset, packet, parent)

  parent:add(nasdaq_equities_orders_ouch_v4_2.fields.reference_price_type, range, value, display)

  return offset + length, value
end

-- Size: Reference Price
size_of.reference_price = 4

-- Display: Reference Price
display.reference_price = function(value)
  return "Reference Price: "..value
end

-- Dissect: Reference Price
dissect.reference_price = function(buffer, offset, packet, parent)
  local length = size_of.reference_price
  local range = buffer(offset, length)
  local value = range:uint()
  local display = display.reference_price(value, buffer, offset, packet, parent)

  parent:add(nasdaq_equities_orders_ouch_v4_2.fields.reference_price, range, value, display)

  return offset + length, value
end

-- Calculate size of: Executed With Reference Price Message
size_of.executed_with_reference_price_message = function(buffer, offset)
  local index = 0

  index = index + size_of.timestamp

  index = index + size_of.order_token

  index = index + size_of.executed_shares

  index = index + size_of.execution_price

  index = index + size_of.liquidity_flag

  index = index + size_of.match_number

  index = index + size_of.reference_price

  index = index + size_of.reference_price_type

  return index
end

-- Display: Executed With Reference Price Message
display.executed_with_reference_price_message = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Executed With Reference Price Message
dissect.executed_with_reference_price_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Timestamp: 8 Byte Unsigned Fixed Width Integer
  index, timestamp = dissect.timestamp(buffer, index, packet, parent)

  -- Order Token: 14 Byte Ascii String
  index, order_token = dissect.order_token(buffer, index, packet, parent)

  -- Executed Shares: 4 Byte Unsigned Fixed Width Integer
  index, executed_shares = dissect.executed_shares(buffer, index, packet, parent)

  -- Execution Price: 4 Byte Unsigned Fixed Width Integer
  index, execution_price = dissect.execution_price(buffer, index, packet, parent)

  -- Liquidity Flag: 1 Byte Ascii String Enum with 26 values
  index, liquidity_flag = dissect.liquidity_flag(buffer, index, packet, parent)

  -- Match Number: 8 Byte Unsigned Fixed Width Integer
  index, match_number = dissect.match_number(buffer, index, packet, parent)

  -- Reference Price: 4 Byte Unsigned Fixed Width Integer
  index, reference_price = dissect.reference_price(buffer, index, packet, parent)

  -- Reference Price Type: 1 Byte Ascii String
  index, reference_price_type = dissect.reference_price_type(buffer, index, packet, parent)

  return index
end

-- Dissect: Executed With Reference Price Message
dissect.executed_with_reference_price_message = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.executed_with_reference_price_message then
    local length = size_of.executed_with_reference_price_message(buffer, offset)
    local range = buffer(offset, length)
    local display = display.executed_with_reference_price_message(buffer, packet, parent)
    parent = parent:add(nasdaq_equities_orders_ouch_v4_2.fields.executed_with_reference_price_message, range, display)
  end

  return dissect.executed_with_reference_price_message_fields(buffer, offset, packet, parent)
end

-- Size: Broken Trade Reason
size_of.broken_trade_reason = 1

-- Display: Broken Trade Reason
display.broken_trade_reason = function(value)
  return "Broken Trade Reason: "..value
end

-- Dissect: Broken Trade Reason
dissect.broken_trade_reason = function(buffer, offset, packet, parent)
  local length = size_of.broken_trade_reason
  local range = buffer(offset, length)
  local value = range:string()
  local display = display.broken_trade_reason(value, buffer, offset, packet, parent)

  parent:add(nasdaq_equities_orders_ouch_v4_2.fields.broken_trade_reason, range, value, display)

  return offset + length, value
end

-- Calculate size of: Broken Trade Message
size_of.broken_trade_message = function(buffer, offset)
  local index = 0

  index = index + size_of.timestamp

  index = index + size_of.order_token

  index = index + size_of.match_number

  index = index + size_of.broken_trade_reason

  return index
end

-- Display: Broken Trade Message
display.broken_trade_message = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Broken Trade Message
dissect.broken_trade_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Timestamp: 8 Byte Unsigned Fixed Width Integer
  index, timestamp = dissect.timestamp(buffer, index, packet, parent)

  -- Order Token: 14 Byte Ascii String
  index, order_token = dissect.order_token(buffer, index, packet, parent)

  -- Match Number: 8 Byte Unsigned Fixed Width Integer
  index, match_number = dissect.match_number(buffer, index, packet, parent)

  -- Broken Trade Reason: 1 Byte Ascii String
  index, broken_trade_reason = dissect.broken_trade_reason(buffer, index, packet, parent)

  return index
end

-- Dissect: Broken Trade Message
dissect.broken_trade_message = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.broken_trade_message then
    local length = size_of.broken_trade_message(buffer, offset)
    local range = buffer(offset, length)
    local display = display.broken_trade_message(buffer, packet, parent)
    parent = parent:add(nasdaq_equities_orders_ouch_v4_2.fields.broken_trade_message, range, display)
  end

  return dissect.broken_trade_message_fields(buffer, offset, packet, parent)
end

-- Calculate size of: Executed Message
size_of.executed_message = function(buffer, offset)
  local index = 0

  index = index + size_of.timestamp

  index = index + size_of.order_token

  index = index + size_of.executed_shares

  index = index + size_of.execution_price

  index = index + size_of.liquidity_flag

  index = index + size_of.match_number

  return index
end

-- Display: Executed Message
display.executed_message = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Executed Message
dissect.executed_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Timestamp: 8 Byte Unsigned Fixed Width Integer
  index, timestamp = dissect.timestamp(buffer, index, packet, parent)

  -- Order Token: 14 Byte Ascii String
  index, order_token = dissect.order_token(buffer, index, packet, parent)

  -- Executed Shares: 4 Byte Unsigned Fixed Width Integer
  index, executed_shares = dissect.executed_shares(buffer, index, packet, parent)

  -- Execution Price: 4 Byte Unsigned Fixed Width Integer
  index, execution_price = dissect.execution_price(buffer, index, packet, parent)

  -- Liquidity Flag: 1 Byte Ascii String Enum with 26 values
  index, liquidity_flag = dissect.liquidity_flag(buffer, index, packet, parent)

  -- Match Number: 8 Byte Unsigned Fixed Width Integer
  index, match_number = dissect.match_number(buffer, index, packet, parent)

  return index
end

-- Dissect: Executed Message
dissect.executed_message = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.executed_message then
    local length = size_of.executed_message(buffer, offset)
    local range = buffer(offset, length)
    local display = display.executed_message(buffer, packet, parent)
    parent = parent:add(nasdaq_equities_orders_ouch_v4_2.fields.executed_message, range, display)
  end

  return dissect.executed_message_fields(buffer, offset, packet, parent)
end

-- Size: Quantity Prevented From Trading
size_of.quantity_prevented_from_trading = 4

-- Display: Quantity Prevented From Trading
display.quantity_prevented_from_trading = function(value)
  return "Quantity Prevented From Trading: "..value
end

-- Dissect: Quantity Prevented From Trading
dissect.quantity_prevented_from_trading = function(buffer, offset, packet, parent)
  local length = size_of.quantity_prevented_from_trading
  local range = buffer(offset, length)
  local value = range:uint()
  local display = display.quantity_prevented_from_trading(value, buffer, offset, packet, parent)

  parent:add(nasdaq_equities_orders_ouch_v4_2.fields.quantity_prevented_from_trading, range, value, display)

  return offset + length, value
end

-- Size: Cancel Order Reason
size_of.cancel_order_reason = 1

-- Display: Cancel Order Reason
display.cancel_order_reason = function(value)
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
    return "Cancel Order Reason: This Order Cannot Be Executed Because Of A Regulatory Restriction (D)"
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
    return "Cancel Order Reason: Post Only Cancel (G)"
  end

  return "Cancel Order Reason: Unknown("..value..")"
end

-- Dissect: Cancel Order Reason
dissect.cancel_order_reason = function(buffer, offset, packet, parent)
  local length = size_of.cancel_order_reason
  local range = buffer(offset, length)
  local value = range:string()
  local display = display.cancel_order_reason(value, buffer, offset, packet, parent)

  parent:add(nasdaq_equities_orders_ouch_v4_2.fields.cancel_order_reason, range, value, display)

  return offset + length, value
end

-- Size: Decrement Shares
size_of.decrement_shares = 4

-- Display: Decrement Shares
display.decrement_shares = function(value)
  return "Decrement Shares: "..value
end

-- Dissect: Decrement Shares
dissect.decrement_shares = function(buffer, offset, packet, parent)
  local length = size_of.decrement_shares
  local range = buffer(offset, length)
  local value = range:uint()
  local display = display.decrement_shares(value, buffer, offset, packet, parent)

  parent:add(nasdaq_equities_orders_ouch_v4_2.fields.decrement_shares, range, value, display)

  return offset + length, value
end

-- Calculate size of: Aiq Cancelled Message
size_of.aiq_cancelled_message = function(buffer, offset)
  local index = 0

  index = index + size_of.timestamp

  index = index + size_of.order_token

  index = index + size_of.decrement_shares

  index = index + size_of.cancel_order_reason

  index = index + size_of.quantity_prevented_from_trading

  index = index + size_of.execution_price

  index = index + size_of.liquidity_flag

  return index
end

-- Display: Aiq Cancelled Message
display.aiq_cancelled_message = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Aiq Cancelled Message
dissect.aiq_cancelled_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Timestamp: 8 Byte Unsigned Fixed Width Integer
  index, timestamp = dissect.timestamp(buffer, index, packet, parent)

  -- Order Token: 14 Byte Ascii String
  index, order_token = dissect.order_token(buffer, index, packet, parent)

  -- Decrement Shares: 4 Byte Unsigned Fixed Width Integer
  index, decrement_shares = dissect.decrement_shares(buffer, index, packet, parent)

  -- Cancel Order Reason: 1 Byte Ascii String Enum with 14 values
  index, cancel_order_reason = dissect.cancel_order_reason(buffer, index, packet, parent)

  -- Quantity Prevented From Trading: 4 Byte Unsigned Fixed Width Integer
  index, quantity_prevented_from_trading = dissect.quantity_prevented_from_trading(buffer, index, packet, parent)

  -- Execution Price: 4 Byte Unsigned Fixed Width Integer
  index, execution_price = dissect.execution_price(buffer, index, packet, parent)

  -- Liquidity Flag: 1 Byte Ascii String Enum with 26 values
  index, liquidity_flag = dissect.liquidity_flag(buffer, index, packet, parent)

  return index
end

-- Dissect: Aiq Cancelled Message
dissect.aiq_cancelled_message = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.aiq_cancelled_message then
    local length = size_of.aiq_cancelled_message(buffer, offset)
    local range = buffer(offset, length)
    local display = display.aiq_cancelled_message(buffer, packet, parent)
    parent = parent:add(nasdaq_equities_orders_ouch_v4_2.fields.aiq_cancelled_message, range, display)
  end

  return dissect.aiq_cancelled_message_fields(buffer, offset, packet, parent)
end

-- Calculate size of: Canceled Message
size_of.canceled_message = function(buffer, offset)
  local index = 0

  index = index + size_of.timestamp

  index = index + size_of.order_token

  index = index + size_of.decrement_shares

  index = index + size_of.cancel_order_reason

  return index
end

-- Display: Canceled Message
display.canceled_message = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Canceled Message
dissect.canceled_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Timestamp: 8 Byte Unsigned Fixed Width Integer
  index, timestamp = dissect.timestamp(buffer, index, packet, parent)

  -- Order Token: 14 Byte Ascii String
  index, order_token = dissect.order_token(buffer, index, packet, parent)

  -- Decrement Shares: 4 Byte Unsigned Fixed Width Integer
  index, decrement_shares = dissect.decrement_shares(buffer, index, packet, parent)

  -- Cancel Order Reason: 1 Byte Ascii String Enum with 14 values
  index, cancel_order_reason = dissect.cancel_order_reason(buffer, index, packet, parent)

  return index
end

-- Dissect: Canceled Message
dissect.canceled_message = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.canceled_message then
    local length = size_of.canceled_message(buffer, offset)
    local range = buffer(offset, length)
    local display = display.canceled_message(buffer, packet, parent)
    parent = parent:add(nasdaq_equities_orders_ouch_v4_2.fields.canceled_message, range, display)
  end

  return dissect.canceled_message_fields(buffer, offset, packet, parent)
end

-- Size: Bbo Weight Indicator
size_of.bbo_weight_indicator = 1

-- Display: Bbo Weight Indicator
display.bbo_weight_indicator = function(value)
  if value == "0" then
    return "Bbo Weight Indicator: 002 (0)"
  end
  if value == "1" then
    return "Bbo Weight Indicator: 021 (1)"
  end
  if value == "2" then
    return "Bbo Weight Indicator: 12 (2)"
  end
  if value == "3" then
    return "Bbo Weight Indicator: Greater Than 2 (3)"
  end
  if value == "S" then
    return "Bbo Weight Indicator: Sets The Qbbo (S)"
  end
  if value == "N" then
    return "Bbo Weight Indicator: Improves The Nbbo Upon Entry (N)"
  end

  return "Bbo Weight Indicator: Unknown("..value..")"
end

-- Dissect: Bbo Weight Indicator
dissect.bbo_weight_indicator = function(buffer, offset, packet, parent)
  local length = size_of.bbo_weight_indicator
  local range = buffer(offset, length)
  local value = range:string()
  local display = display.bbo_weight_indicator(value, buffer, offset, packet, parent)

  parent:add(nasdaq_equities_orders_ouch_v4_2.fields.bbo_weight_indicator, range, value, display)

  return offset + length, value
end

-- Size: Previous Order Token
size_of.previous_order_token = 14

-- Display: Previous Order Token
display.previous_order_token = function(value)
  return "Previous Order Token: "..value
end

-- Dissect: Previous Order Token
dissect.previous_order_token = function(buffer, offset, packet, parent)
  local length = size_of.previous_order_token
  local range = buffer(offset, length)
  local value = range:string()
  local display = display.previous_order_token(value, buffer, offset, packet, parent)

  parent:add(nasdaq_equities_orders_ouch_v4_2.fields.previous_order_token, range, value, display)

  return offset + length, value
end

-- Size: Order State
size_of.order_state = 1

-- Display: Order State
display.order_state = function(value)
  if value == "L" then
    return "Order State: Order (L)"
  end
  if value == "D" then
    return "Order State: Order (D)"
  end

  return "Order State: Unknown("..value..")"
end

-- Dissect: Order State
dissect.order_state = function(buffer, offset, packet, parent)
  local length = size_of.order_state
  local range = buffer(offset, length)
  local value = range:string()
  local display = display.order_state(value, buffer, offset, packet, parent)

  parent:add(nasdaq_equities_orders_ouch_v4_2.fields.order_state, range, value, display)

  return offset + length, value
end

-- Size: Cross Type
size_of.cross_type = 1

-- Display: Cross Type
display.cross_type = function(value)
  if value == "N" then
    return "Cross Type: No Cross (N)"
  end
  if value == "O" then
    return "Cross Type: Opening (O)"
  end
  if value == "C" then
    return "Cross Type: Closing (C)"
  end
  if value == "H" then
    return "Cross Type: Halt Ipo Cross (H)"
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

  return "Cross Type: Unknown("..value..")"
end

-- Dissect: Cross Type
dissect.cross_type = function(buffer, offset, packet, parent)
  local length = size_of.cross_type
  local range = buffer(offset, length)
  local value = range:string()
  local display = display.cross_type(value, buffer, offset, packet, parent)

  parent:add(nasdaq_equities_orders_ouch_v4_2.fields.cross_type, range, value, display)

  return offset + length, value
end

-- Size: Minimum Quantity
size_of.minimum_quantity = 4

-- Display: Minimum Quantity
display.minimum_quantity = function(value)
  return "Minimum Quantity: "..value
end

-- Dissect: Minimum Quantity
dissect.minimum_quantity = function(buffer, offset, packet, parent)
  local length = size_of.minimum_quantity
  local range = buffer(offset, length)
  local value = range:uint()
  local display = display.minimum_quantity(value, buffer, offset, packet, parent)

  parent:add(nasdaq_equities_orders_ouch_v4_2.fields.minimum_quantity, range, value, display)

  return offset + length, value
end

-- Size: Intermarket Sweep Eligibility
size_of.intermarket_sweep_eligibility = 1

-- Display: Intermarket Sweep Eligibility
display.intermarket_sweep_eligibility = function(value)
  if value == "Y" then
    return "Intermarket Sweep Eligibility: Eligible (Y)"
  end
  if value == "N" then
    return "Intermarket Sweep Eligibility: Not Eligible (N)"
  end
  if value == "y" then
    return "Intermarket Sweep Eligibility: Tradeat (y)"
  end

  return "Intermarket Sweep Eligibility: Unknown("..value..")"
end

-- Dissect: Intermarket Sweep Eligibility
dissect.intermarket_sweep_eligibility = function(buffer, offset, packet, parent)
  local length = size_of.intermarket_sweep_eligibility
  local range = buffer(offset, length)
  local value = range:string()
  local display = display.intermarket_sweep_eligibility(value, buffer, offset, packet, parent)

  parent:add(nasdaq_equities_orders_ouch_v4_2.fields.intermarket_sweep_eligibility, range, value, display)

  return offset + length, value
end

-- Size: Capacity
size_of.capacity = 1

-- Display: Capacity
display.capacity = function(value)
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
dissect.capacity = function(buffer, offset, packet, parent)
  local length = size_of.capacity
  local range = buffer(offset, length)
  local value = range:string()
  local display = display.capacity(value, buffer, offset, packet, parent)

  parent:add(nasdaq_equities_orders_ouch_v4_2.fields.capacity, range, value, display)

  return offset + length, value
end

-- Size: Firm
size_of.firm = 4

-- Display: Firm
display.firm = function(value)
  return "Firm: "..value
end

-- Dissect: Firm
dissect.firm = function(buffer, offset, packet, parent)
  local length = size_of.firm
  local range = buffer(offset, length)
  local value = range:string()
  local display = display.firm(value, buffer, offset, packet, parent)

  parent:add(nasdaq_equities_orders_ouch_v4_2.fields.firm, range, value, display)

  return offset + length, value
end

-- Size: Time In Force
size_of.time_in_force = 4

-- Display: Time In Force
display.time_in_force = function(value)
  return "Time In Force: "..value
end

-- Dissect: Time In Force
dissect.time_in_force = function(buffer, offset, packet, parent)
  local length = size_of.time_in_force
  local range = buffer(offset, length)
  local value = range:uint()
  local display = display.time_in_force(value, buffer, offset, packet, parent)

  parent:add(nasdaq_equities_orders_ouch_v4_2.fields.time_in_force, range, value, display)

  return offset + length, value
end

-- Size: Stock
size_of.stock = 8

-- Display: Stock
display.stock = function(value)
  return "Stock: "..value
end

-- Dissect: Stock
dissect.stock = function(buffer, offset, packet, parent)
  local length = size_of.stock
  local range = buffer(offset, length)
  local value = range:string()
  local display = display.stock(value, buffer, offset, packet, parent)

  parent:add(nasdaq_equities_orders_ouch_v4_2.fields.stock, range, value, display)

  return offset + length, value
end

-- Size: Replacement Order Token
size_of.replacement_order_token = 14

-- Display: Replacement Order Token
display.replacement_order_token = function(value)
  return "Replacement Order Token: "..value
end

-- Dissect: Replacement Order Token
dissect.replacement_order_token = function(buffer, offset, packet, parent)
  local length = size_of.replacement_order_token
  local range = buffer(offset, length)
  local value = range:string()
  local display = display.replacement_order_token(value, buffer, offset, packet, parent)

  parent:add(nasdaq_equities_orders_ouch_v4_2.fields.replacement_order_token, range, value, display)

  return offset + length, value
end

-- Calculate size of: Replaced Message
size_of.replaced_message = function(buffer, offset)
  local index = 0

  index = index + size_of.timestamp

  index = index + size_of.replacement_order_token

  index = index + size_of.buy_sell_indicator

  index = index + size_of.shares

  index = index + size_of.stock

  index = index + size_of.price

  index = index + size_of.time_in_force

  index = index + size_of.firm

  index = index + size_of.display

  index = index + size_of.order_reference_number

  index = index + size_of.capacity

  index = index + size_of.intermarket_sweep_eligibility

  index = index + size_of.minimum_quantity

  index = index + size_of.cross_type

  index = index + size_of.order_state

  index = index + size_of.previous_order_token

  index = index + size_of.bbo_weight_indicator

  return index
end

-- Display: Replaced Message
display.replaced_message = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Replaced Message
dissect.replaced_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Timestamp: 8 Byte Unsigned Fixed Width Integer
  index, timestamp = dissect.timestamp(buffer, index, packet, parent)

  -- Replacement Order Token: 14 Byte Ascii String
  index, replacement_order_token = dissect.replacement_order_token(buffer, index, packet, parent)

  -- Buy Sell Indicator: 1 Byte Ascii String Enum with 4 values
  index, buy_sell_indicator = dissect.buy_sell_indicator(buffer, index, packet, parent)

  -- Shares: 4 Byte Unsigned Fixed Width Integer
  index, shares = dissect.shares(buffer, index, packet, parent)

  -- Stock: 8 Byte Ascii String
  index, stock = dissect.stock(buffer, index, packet, parent)

  -- Price: 4 Byte Unsigned Fixed Width Integer
  index, price = dissect.price(buffer, index, packet, parent)

  -- Time In Force: 4 Byte Unsigned Fixed Width Integer
  index, time_in_force = dissect.time_in_force(buffer, index, packet, parent)

  -- Firm: 4 Byte Ascii String
  index, firm = dissect.firm(buffer, index, packet, parent)

  -- Display: 1 Byte Ascii String Enum with 13 values
  index, display = dissect.display(buffer, index, packet, parent)

  -- Order Reference Number: 8 Byte Unsigned Fixed Width Integer
  index, order_reference_number = dissect.order_reference_number(buffer, index, packet, parent)

  -- Capacity: 1 Byte Ascii String Enum with 4 values
  index, capacity = dissect.capacity(buffer, index, packet, parent)

  -- Intermarket Sweep Eligibility: 1 Byte Ascii String Enum with 3 values
  index, intermarket_sweep_eligibility = dissect.intermarket_sweep_eligibility(buffer, index, packet, parent)

  -- Minimum Quantity: 4 Byte Unsigned Fixed Width Integer
  index, minimum_quantity = dissect.minimum_quantity(buffer, index, packet, parent)

  -- Cross Type: 1 Byte Ascii String Enum with 7 values
  index, cross_type = dissect.cross_type(buffer, index, packet, parent)

  -- Order State: 1 Byte Ascii String Enum with 2 values
  index, order_state = dissect.order_state(buffer, index, packet, parent)

  -- Previous Order Token: 14 Byte Ascii String
  index, previous_order_token = dissect.previous_order_token(buffer, index, packet, parent)

  -- Bbo Weight Indicator: 1 Byte Ascii String Enum with 6 values
  index, bbo_weight_indicator = dissect.bbo_weight_indicator(buffer, index, packet, parent)

  return index
end

-- Dissect: Replaced Message
dissect.replaced_message = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.replaced_message then
    local length = size_of.replaced_message(buffer, offset)
    local range = buffer(offset, length)
    local display = display.replaced_message(buffer, packet, parent)
    parent = parent:add(nasdaq_equities_orders_ouch_v4_2.fields.replaced_message, range, display)
  end

  return dissect.replaced_message_fields(buffer, offset, packet, parent)
end

-- Calculate size of: Accepted Message
size_of.accepted_message = function(buffer, offset)
  local index = 0

  index = index + size_of.timestamp

  index = index + size_of.order_token

  index = index + size_of.buy_sell_indicator

  index = index + size_of.shares

  index = index + size_of.stock

  index = index + size_of.price

  index = index + size_of.time_in_force

  index = index + size_of.firm

  index = index + size_of.display

  index = index + size_of.order_reference_number

  index = index + size_of.capacity

  index = index + size_of.intermarket_sweep_eligibility

  index = index + size_of.minimum_quantity

  index = index + size_of.cross_type

  index = index + size_of.order_state

  index = index + size_of.bbo_weight_indicator

  return index
end

-- Display: Accepted Message
display.accepted_message = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Accepted Message
dissect.accepted_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Timestamp: 8 Byte Unsigned Fixed Width Integer
  index, timestamp = dissect.timestamp(buffer, index, packet, parent)

  -- Order Token: 14 Byte Ascii String
  index, order_token = dissect.order_token(buffer, index, packet, parent)

  -- Buy Sell Indicator: 1 Byte Ascii String Enum with 4 values
  index, buy_sell_indicator = dissect.buy_sell_indicator(buffer, index, packet, parent)

  -- Shares: 4 Byte Unsigned Fixed Width Integer
  index, shares = dissect.shares(buffer, index, packet, parent)

  -- Stock: 8 Byte Ascii String
  index, stock = dissect.stock(buffer, index, packet, parent)

  -- Price: 4 Byte Unsigned Fixed Width Integer
  index, price = dissect.price(buffer, index, packet, parent)

  -- Time In Force: 4 Byte Unsigned Fixed Width Integer
  index, time_in_force = dissect.time_in_force(buffer, index, packet, parent)

  -- Firm: 4 Byte Ascii String
  index, firm = dissect.firm(buffer, index, packet, parent)

  -- Display: 1 Byte Ascii String Enum with 13 values
  index, display = dissect.display(buffer, index, packet, parent)

  -- Order Reference Number: 8 Byte Unsigned Fixed Width Integer
  index, order_reference_number = dissect.order_reference_number(buffer, index, packet, parent)

  -- Capacity: 1 Byte Ascii String Enum with 4 values
  index, capacity = dissect.capacity(buffer, index, packet, parent)

  -- Intermarket Sweep Eligibility: 1 Byte Ascii String Enum with 3 values
  index, intermarket_sweep_eligibility = dissect.intermarket_sweep_eligibility(buffer, index, packet, parent)

  -- Minimum Quantity: 4 Byte Unsigned Fixed Width Integer
  index, minimum_quantity = dissect.minimum_quantity(buffer, index, packet, parent)

  -- Cross Type: 1 Byte Ascii String Enum with 7 values
  index, cross_type = dissect.cross_type(buffer, index, packet, parent)

  -- Order State: 1 Byte Ascii String Enum with 2 values
  index, order_state = dissect.order_state(buffer, index, packet, parent)

  -- Bbo Weight Indicator: 1 Byte Ascii String Enum with 6 values
  index, bbo_weight_indicator = dissect.bbo_weight_indicator(buffer, index, packet, parent)

  return index
end

-- Dissect: Accepted Message
dissect.accepted_message = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.accepted_message then
    local length = size_of.accepted_message(buffer, offset)
    local range = buffer(offset, length)
    local display = display.accepted_message(buffer, packet, parent)
    parent = parent:add(nasdaq_equities_orders_ouch_v4_2.fields.accepted_message, range, display)
  end

  return dissect.accepted_message_fields(buffer, offset, packet, parent)
end

-- Size: Event Code
size_of.event_code = 1

-- Display: Event Code
display.event_code = function(value)
  if value == "S" then
    return "Event Code: Start Of Day— This Is Always The First Message Each Day (S)"
  end
  if value == "E" then
    return "Event Code: End Of Day— This Indicates That Nasdaq Is Now Closed And Will Not Accept Any New Orders Or Replaces In This Session (E)"
  end

  return "Event Code: Unknown("..value..")"
end

-- Dissect: Event Code
dissect.event_code = function(buffer, offset, packet, parent)
  local length = size_of.event_code
  local range = buffer(offset, length)
  local value = range:string()
  local display = display.event_code(value, buffer, offset, packet, parent)

  parent:add(nasdaq_equities_orders_ouch_v4_2.fields.event_code, range, value, display)

  return offset + length, value
end

-- Calculate size of: System Event Message
size_of.system_event_message = function(buffer, offset)
  local index = 0

  index = index + size_of.timestamp

  index = index + size_of.event_code

  return index
end

-- Display: System Event Message
display.system_event_message = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: System Event Message
dissect.system_event_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Timestamp: 8 Byte Unsigned Fixed Width Integer
  index, timestamp = dissect.timestamp(buffer, index, packet, parent)

  -- Event Code: 1 Byte Ascii String Enum with 2 values
  index, event_code = dissect.event_code(buffer, index, packet, parent)

  return index
end

-- Dissect: System Event Message
dissect.system_event_message = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.system_event_message then
    local length = size_of.system_event_message(buffer, offset)
    local range = buffer(offset, length)
    local display = display.system_event_message(buffer, packet, parent)
    parent = parent:add(nasdaq_equities_orders_ouch_v4_2.fields.system_event_message, range, display)
  end

  return dissect.system_event_message_fields(buffer, offset, packet, parent)
end

-- Calculate size of: Trade Now Message
size_of.trade_now_message = function(buffer, offset)
  local index = 0

  index = index + size_of.order_token

  return index
end

-- Display: Trade Now Message
display.trade_now_message = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Trade Now Message
dissect.trade_now_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Order Token: 14 Byte Ascii String
  index, order_token = dissect.order_token(buffer, index, packet, parent)

  return index
end

-- Dissect: Trade Now Message
dissect.trade_now_message = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.trade_now_message then
    local length = size_of.trade_now_message(buffer, offset)
    local range = buffer(offset, length)
    local display = display.trade_now_message(buffer, packet, parent)
    parent = parent:add(nasdaq_equities_orders_ouch_v4_2.fields.trade_now_message, range, display)
  end

  return dissect.trade_now_message_fields(buffer, offset, packet, parent)
end

-- Calculate size of: Modify Order Message
size_of.modify_order_message = function(buffer, offset)
  local index = 0

  index = index + size_of.order_token

  index = index + size_of.buy_sell_indicator

  index = index + size_of.shares

  return index
end

-- Display: Modify Order Message
display.modify_order_message = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Modify Order Message
dissect.modify_order_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Order Token: 14 Byte Ascii String
  index, order_token = dissect.order_token(buffer, index, packet, parent)

  -- Buy Sell Indicator: 1 Byte Ascii String Enum with 4 values
  index, buy_sell_indicator = dissect.buy_sell_indicator(buffer, index, packet, parent)

  -- Shares: 4 Byte Unsigned Fixed Width Integer
  index, shares = dissect.shares(buffer, index, packet, parent)

  return index
end

-- Dissect: Modify Order Message
dissect.modify_order_message = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.modify_order_message then
    local length = size_of.modify_order_message(buffer, offset)
    local range = buffer(offset, length)
    local display = display.modify_order_message(buffer, packet, parent)
    parent = parent:add(nasdaq_equities_orders_ouch_v4_2.fields.modify_order_message, range, display)
  end

  return dissect.modify_order_message_fields(buffer, offset, packet, parent)
end

-- Calculate size of: Cancel Order Message
size_of.cancel_order_message = function(buffer, offset)
  local index = 0

  index = index + size_of.order_token

  index = index + size_of.shares

  return index
end

-- Display: Cancel Order Message
display.cancel_order_message = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Cancel Order Message
dissect.cancel_order_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Order Token: 14 Byte Ascii String
  index, order_token = dissect.order_token(buffer, index, packet, parent)

  -- Shares: 4 Byte Unsigned Fixed Width Integer
  index, shares = dissect.shares(buffer, index, packet, parent)

  return index
end

-- Dissect: Cancel Order Message
dissect.cancel_order_message = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.cancel_order_message then
    local length = size_of.cancel_order_message(buffer, offset)
    local range = buffer(offset, length)
    local display = display.cancel_order_message(buffer, packet, parent)
    parent = parent:add(nasdaq_equities_orders_ouch_v4_2.fields.cancel_order_message, range, display)
  end

  return dissect.cancel_order_message_fields(buffer, offset, packet, parent)
end

-- Size: Existing Order Token
size_of.existing_order_token = 14

-- Display: Existing Order Token
display.existing_order_token = function(value)
  return "Existing Order Token: "..value
end

-- Dissect: Existing Order Token
dissect.existing_order_token = function(buffer, offset, packet, parent)
  local length = size_of.existing_order_token
  local range = buffer(offset, length)
  local value = range:string()
  local display = display.existing_order_token(value, buffer, offset, packet, parent)

  parent:add(nasdaq_equities_orders_ouch_v4_2.fields.existing_order_token, range, value, display)

  return offset + length, value
end

-- Calculate size of: Replace Order Message
size_of.replace_order_message = function(buffer, offset)
  local index = 0

  index = index + size_of.existing_order_token

  index = index + size_of.replacement_order_token

  index = index + size_of.shares

  index = index + size_of.price

  index = index + size_of.time_in_force

  index = index + size_of.display

  index = index + size_of.intermarket_sweep_eligibility

  index = index + size_of.minimum_quantity

  return index
end

-- Display: Replace Order Message
display.replace_order_message = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Replace Order Message
dissect.replace_order_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Existing Order Token: 14 Byte Ascii String
  index, existing_order_token = dissect.existing_order_token(buffer, index, packet, parent)

  -- Replacement Order Token: 14 Byte Ascii String
  index, replacement_order_token = dissect.replacement_order_token(buffer, index, packet, parent)

  -- Shares: 4 Byte Unsigned Fixed Width Integer
  index, shares = dissect.shares(buffer, index, packet, parent)

  -- Price: 4 Byte Unsigned Fixed Width Integer
  index, price = dissect.price(buffer, index, packet, parent)

  -- Time In Force: 4 Byte Unsigned Fixed Width Integer
  index, time_in_force = dissect.time_in_force(buffer, index, packet, parent)

  -- Display: 1 Byte Ascii String Enum with 13 values
  index, display = dissect.display(buffer, index, packet, parent)

  -- Intermarket Sweep Eligibility: 1 Byte Ascii String Enum with 3 values
  index, intermarket_sweep_eligibility = dissect.intermarket_sweep_eligibility(buffer, index, packet, parent)

  -- Minimum Quantity: 4 Byte Unsigned Fixed Width Integer
  index, minimum_quantity = dissect.minimum_quantity(buffer, index, packet, parent)

  return index
end

-- Dissect: Replace Order Message
dissect.replace_order_message = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.replace_order_message then
    local length = size_of.replace_order_message(buffer, offset)
    local range = buffer(offset, length)
    local display = display.replace_order_message(buffer, packet, parent)
    parent = parent:add(nasdaq_equities_orders_ouch_v4_2.fields.replace_order_message, range, display)
  end

  return dissect.replace_order_message_fields(buffer, offset, packet, parent)
end

-- Size: Customer Type
size_of.customer_type = 1

-- Display: Customer Type
display.customer_type = function(value)
  if value == "R" then
    return "Customer Type: Retail Designated (R)"
  end
  if value == "N" then
    return "Customer Type: Not A Retail Designated (N)"
  end
  if value == " " then
    return "Customer Type: Default (<whitespace>)"
  end

  return "Customer Type: Unknown("..value..")"
end

-- Dissect: Customer Type
dissect.customer_type = function(buffer, offset, packet, parent)
  local length = size_of.customer_type
  local range = buffer(offset, length)
  local value = range:string()
  local display = display.customer_type(value, buffer, offset, packet, parent)

  parent:add(nasdaq_equities_orders_ouch_v4_2.fields.customer_type, range, value, display)

  return offset + length, value
end

-- Calculate size of: Enter Order Message
size_of.enter_order_message = function(buffer, offset)
  local index = 0

  index = index + size_of.order_token

  index = index + size_of.buy_sell_indicator

  index = index + size_of.shares

  index = index + size_of.stock

  index = index + size_of.price

  index = index + size_of.time_in_force

  index = index + size_of.firm

  index = index + size_of.display

  index = index + size_of.capacity

  index = index + size_of.intermarket_sweep_eligibility

  index = index + size_of.minimum_quantity

  index = index + size_of.cross_type

  index = index + size_of.customer_type

  return index
end

-- Display: Enter Order Message
display.enter_order_message = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Enter Order Message
dissect.enter_order_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Order Token: 14 Byte Ascii String
  index, order_token = dissect.order_token(buffer, index, packet, parent)

  -- Buy Sell Indicator: 1 Byte Ascii String Enum with 4 values
  index, buy_sell_indicator = dissect.buy_sell_indicator(buffer, index, packet, parent)

  -- Shares: 4 Byte Unsigned Fixed Width Integer
  index, shares = dissect.shares(buffer, index, packet, parent)

  -- Stock: 8 Byte Ascii String
  index, stock = dissect.stock(buffer, index, packet, parent)

  -- Price: 4 Byte Unsigned Fixed Width Integer
  index, price = dissect.price(buffer, index, packet, parent)

  -- Time In Force: 4 Byte Unsigned Fixed Width Integer
  index, time_in_force = dissect.time_in_force(buffer, index, packet, parent)

  -- Firm: 4 Byte Ascii String
  index, firm = dissect.firm(buffer, index, packet, parent)

  -- Display: 1 Byte Ascii String Enum with 13 values
  index, display = dissect.display(buffer, index, packet, parent)

  -- Capacity: 1 Byte Ascii String Enum with 4 values
  index, capacity = dissect.capacity(buffer, index, packet, parent)

  -- Intermarket Sweep Eligibility: 1 Byte Ascii String Enum with 3 values
  index, intermarket_sweep_eligibility = dissect.intermarket_sweep_eligibility(buffer, index, packet, parent)

  -- Minimum Quantity: 4 Byte Unsigned Fixed Width Integer
  index, minimum_quantity = dissect.minimum_quantity(buffer, index, packet, parent)

  -- Cross Type: 1 Byte Ascii String Enum with 7 values
  index, cross_type = dissect.cross_type(buffer, index, packet, parent)

  -- Customer Type: 1 Byte Ascii String Enum with 3 values
  index, customer_type = dissect.customer_type(buffer, index, packet, parent)

  return index
end

-- Dissect: Enter Order Message
dissect.enter_order_message = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.enter_order_message then
    local length = size_of.enter_order_message(buffer, offset)
    local range = buffer(offset, length)
    local display = display.enter_order_message(buffer, packet, parent)
    parent = parent:add(nasdaq_equities_orders_ouch_v4_2.fields.enter_order_message, range, display)
  end

  return dissect.enter_order_message_fields(buffer, offset, packet, parent)
end

-- Calculate runtime size of: Data
size_of.data = function(buffer, offset, message_type)
  -- Size of Enter Order Message
  if message_type == "O" then
    return size_of.enter_order_message(buffer, offset)
  end
  -- Size of Replace Order Message
  if message_type == "U" then
    return size_of.replace_order_message(buffer, offset)
  end
  -- Size of Cancel Order Message
  if message_type == "X" then
    return size_of.cancel_order_message(buffer, offset)
  end
  -- Size of Modify Order Message
  if message_type == "M" then
    return size_of.modify_order_message(buffer, offset)
  end
  -- Size of Trade Now Message
  if message_type == "N" then
    return size_of.trade_now_message(buffer, offset)
  end
  -- Size of System Event Message
  if message_type == "S" then
    return size_of.system_event_message(buffer, offset)
  end
  -- Size of Accepted Message
  if message_type == "A" then
    return size_of.accepted_message(buffer, offset)
  end
  -- Size of Replaced Message
  if message_type == "U" then
    return size_of.replaced_message(buffer, offset)
  end
  -- Size of Canceled Message
  if message_type == "C" then
    return size_of.canceled_message(buffer, offset)
  end
  -- Size of Aiq Cancelled Message
  if message_type == "C" then
    return size_of.aiq_cancelled_message(buffer, offset)
  end
  -- Size of Executed Message
  if message_type == "E" then
    return size_of.executed_message(buffer, offset)
  end
  -- Size of Broken Trade Message
  if message_type == "B" then
    return size_of.broken_trade_message(buffer, offset)
  end
  -- Size of Executed With Reference Price Message
  if message_type == "G" then
    return size_of.executed_with_reference_price_message(buffer, offset)
  end
  -- Size of Trade Correction Message
  if message_type == "F" then
    return size_of.trade_correction_message(buffer, offset)
  end
  -- Size of Rejected Order Message
  if message_type == "J" then
    return size_of.rejected_order_message(buffer, offset)
  end
  -- Size of Cancel Pending Message
  if message_type == "P" then
    return size_of.cancel_pending_message(buffer, offset)
  end
  -- Size of Cancel Reject Message
  if message_type == "I" then
    return size_of.cancel_reject_message(buffer, offset)
  end
  -- Size of Order Priority Update Message
  if message_type == "T" then
    return size_of.order_priority_update_message(buffer, offset)
  end
  -- Size of Order Modified Message
  if message_type == "U" then
    return size_of.order_modified_message(buffer, offset)
  end

  return 0
end

-- Display: Data
display.data = function(buffer, offset, packet, parent)
  return ""
end

-- Dissect Branches: Data
dissect.data_branches = function(buffer, offset, packet, parent, message_type)
  -- Dissect Enter Order Message
  if message_type == "O" then
    return dissect.enter_order_message(buffer, offset, packet, parent)
  end
  -- Dissect Replace Order Message
  if message_type == "U" then
    return dissect.replace_order_message(buffer, offset, packet, parent)
  end
  -- Dissect Cancel Order Message
  if message_type == "X" then
    return dissect.cancel_order_message(buffer, offset, packet, parent)
  end
  -- Dissect Modify Order Message
  if message_type == "M" then
    return dissect.modify_order_message(buffer, offset, packet, parent)
  end
  -- Dissect Trade Now Message
  if message_type == "N" then
    return dissect.trade_now_message(buffer, offset, packet, parent)
  end
  -- Dissect System Event Message
  if message_type == "S" then
    return dissect.system_event_message(buffer, offset, packet, parent)
  end
  -- Dissect Accepted Message
  if message_type == "A" then
    return dissect.accepted_message(buffer, offset, packet, parent)
  end
  -- Dissect Replaced Message
  if message_type == "U" then
    return dissect.replaced_message(buffer, offset, packet, parent)
  end
  -- Dissect Canceled Message
  if message_type == "C" then
    return dissect.canceled_message(buffer, offset, packet, parent)
  end
  -- Dissect Aiq Cancelled Message
  if message_type == "C" then
    return dissect.aiq_cancelled_message(buffer, offset, packet, parent)
  end
  -- Dissect Executed Message
  if message_type == "E" then
    return dissect.executed_message(buffer, offset, packet, parent)
  end
  -- Dissect Broken Trade Message
  if message_type == "B" then
    return dissect.broken_trade_message(buffer, offset, packet, parent)
  end
  -- Dissect Executed With Reference Price Message
  if message_type == "G" then
    return dissect.executed_with_reference_price_message(buffer, offset, packet, parent)
  end
  -- Dissect Trade Correction Message
  if message_type == "F" then
    return dissect.trade_correction_message(buffer, offset, packet, parent)
  end
  -- Dissect Rejected Order Message
  if message_type == "J" then
    return dissect.rejected_order_message(buffer, offset, packet, parent)
  end
  -- Dissect Cancel Pending Message
  if message_type == "P" then
    return dissect.cancel_pending_message(buffer, offset, packet, parent)
  end
  -- Dissect Cancel Reject Message
  if message_type == "I" then
    return dissect.cancel_reject_message(buffer, offset, packet, parent)
  end
  -- Dissect Order Priority Update Message
  if message_type == "T" then
    return dissect.order_priority_update_message(buffer, offset, packet, parent)
  end
  -- Dissect Order Modified Message
  if message_type == "U" then
    return dissect.order_modified_message(buffer, offset, packet, parent)
  end

  return offset
end

-- Dissect: Data
dissect.data = function(buffer, offset, packet, parent, message_type)
  if not show.data then
    return dissect.data_branches(buffer, offset, packet, parent, message_type)
  end

  -- Calculate size and check that branch is not empty
  local size = size_of.data(buffer, offset, message_type)
  if size == 0 then
    return offset
  end

  -- Dissect Element
  local range = buffer(offset, size)
  local display = display.data(buffer, packet, parent)
  local element = parent:add(nasdaq_equities_orders_ouch_v4_2.fields.data, range, display)

  return dissect.data_branches(buffer, offset, packet, parent, message_type)
end

-- Size: Message Type
size_of.message_type = 1

-- Display: Message Type
display.message_type = function(value)
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
  if value == "N" then
    return "Message Type: Trade Now Message (N)"
  end
  if value == "S" then
    return "Message Type: System Event Message (S)"
  end
  if value == "A" then
    return "Message Type: Accepted Message (A)"
  end
  if value == "U" then
    return "Message Type: Replaced Message (U)"
  end
  if value == "C" then
    return "Message Type: Canceled Message (C)"
  end
  if value == "C" then
    return "Message Type: Aiq Cancelled Message (C)"
  end
  if value == "E" then
    return "Message Type: Executed Message (E)"
  end
  if value == "B" then
    return "Message Type: Broken Trade Message (B)"
  end
  if value == "G" then
    return "Message Type: Executed With Reference Price Message (G)"
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
  if value == "U" then
    return "Message Type: Order Modified Message (U)"
  end

  return "Message Type: Unknown("..value..")"
end

-- Dissect: Message Type
dissect.message_type = function(buffer, offset, packet, parent)
  local length = size_of.message_type
  local range = buffer(offset, length)
  local value = range:string()
  local display = display.message_type(value, buffer, offset, packet, parent)

  parent:add(nasdaq_equities_orders_ouch_v4_2.fields.message_type, range, value, display)

  return offset + length, value
end

-- Calculate size of: Message
size_of.message = function(buffer, offset)
  local index = 0

  index = index + size_of.message_type

  -- Calculate runtime size of Data field
  local data_offset = offset + index
  local data_type = buffer(data_offset - 1, 1):string()
  index = index + size_of.data(buffer, data_offset, data_type)

  return index
end

-- Display: Message
display.message = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Message
dissect.message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Message Type: 1 Byte Ascii String Enum with 19 values
  index, message_type = dissect.message_type(buffer, index, packet, parent)

  -- Data: Runtime Type with 19 branches
  index = dissect.data(buffer, index, packet, parent, message_type)

  return index
end

-- Dissect: Message
dissect.message = function(buffer, offset, packet, parent)
  -- Optionally add dynamic struct element to protocol tree
  if show.message then
    local length = size_of.message(buffer, offset)
    local range = buffer(offset, length)
    local display = display.message(buffer, packet, parent)
    parent = parent:add(nasdaq_equities_orders_ouch_v4_2.fields.message, range, display)
  end

  return dissect.message_fields(buffer, offset, packet, parent)
end

-- Calculate size of: Unsequenced Data Packet
size_of.unsequenced_data_packet = function(buffer, offset)
  local index = 0

  index = index + size_of.message(buffer, offset + index)

  return index
end

-- Display: Unsequenced Data Packet
display.unsequenced_data_packet = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Unsequenced Data Packet
dissect.unsequenced_data_packet_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Message: Struct of 2 fields
  index, message = dissect.message(buffer, index, packet, parent)

  return index
end

-- Dissect: Unsequenced Data Packet
dissect.unsequenced_data_packet = function(buffer, offset, packet, parent)
  -- Optionally add dynamic struct element to protocol tree
  if show.unsequenced_data_packet then
    local length = size_of.unsequenced_data_packet(buffer, offset)
    local range = buffer(offset, length)
    local display = display.unsequenced_data_packet(buffer, packet, parent)
    parent = parent:add(nasdaq_equities_orders_ouch_v4_2.fields.unsequenced_data_packet, range, display)
  end

  return dissect.unsequenced_data_packet_fields(buffer, offset, packet, parent)
end

-- Size: Requested Sequence Number
size_of.requested_sequence_number = 20

-- Display: Requested Sequence Number
display.requested_sequence_number = function(value)
  return "Requested Sequence Number: "..value
end

-- Dissect: Requested Sequence Number
dissect.requested_sequence_number = function(buffer, offset, packet, parent)
  local length = size_of.requested_sequence_number
  local range = buffer(offset, length)
  local value = range:string()
  local display = display.requested_sequence_number(value, buffer, offset, packet, parent)

  parent:add(nasdaq_equities_orders_ouch_v4_2.fields.requested_sequence_number, range, value, display)

  return offset + length, value
end

-- Size: Requested Session
size_of.requested_session = 10

-- Display: Requested Session
display.requested_session = function(value)
  return "Requested Session: "..value
end

-- Dissect: Requested Session
dissect.requested_session = function(buffer, offset, packet, parent)
  local length = size_of.requested_session
  local range = buffer(offset, length)
  local value = range:string()
  local display = display.requested_session(value, buffer, offset, packet, parent)

  parent:add(nasdaq_equities_orders_ouch_v4_2.fields.requested_session, range, value, display)

  return offset + length, value
end

-- Size: Password
size_of.password = 10

-- Display: Password
display.password = function(value)
  return "Password: "..value
end

-- Dissect: Password
dissect.password = function(buffer, offset, packet, parent)
  local length = size_of.password
  local range = buffer(offset, length)
  local value = range:string()
  local display = display.password(value, buffer, offset, packet, parent)

  parent:add(nasdaq_equities_orders_ouch_v4_2.fields.password, range, value, display)

  return offset + length, value
end

-- Size: Username
size_of.username = 6

-- Display: Username
display.username = function(value)
  return "Username: "..value
end

-- Dissect: Username
dissect.username = function(buffer, offset, packet, parent)
  local length = size_of.username
  local range = buffer(offset, length)
  local value = range:string()
  local display = display.username(value, buffer, offset, packet, parent)

  parent:add(nasdaq_equities_orders_ouch_v4_2.fields.username, range, value, display)

  return offset + length, value
end

-- Calculate size of: Login Request Packet
size_of.login_request_packet = function(buffer, offset)
  local index = 0

  index = index + size_of.username

  index = index + size_of.password

  index = index + size_of.requested_session

  index = index + size_of.requested_sequence_number

  return index
end

-- Display: Login Request Packet
display.login_request_packet = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Login Request Packet
dissect.login_request_packet_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Username: 6 Byte Ascii String
  index, username = dissect.username(buffer, index, packet, parent)

  -- Password: 10 Byte Ascii String
  index, password = dissect.password(buffer, index, packet, parent)

  -- Requested Session: 10 Byte Ascii String
  index, requested_session = dissect.requested_session(buffer, index, packet, parent)

  -- Requested Sequence Number: 20 Byte Ascii String
  index, requested_sequence_number = dissect.requested_sequence_number(buffer, index, packet, parent)

  return index
end

-- Dissect: Login Request Packet
dissect.login_request_packet = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.login_request_packet then
    local length = size_of.login_request_packet(buffer, offset)
    local range = buffer(offset, length)
    local display = display.login_request_packet(buffer, packet, parent)
    parent = parent:add(nasdaq_equities_orders_ouch_v4_2.fields.login_request_packet, range, display)
  end

  return dissect.login_request_packet_fields(buffer, offset, packet, parent)
end

-- Calculate size of: Sequenced Data Packet
size_of.sequenced_data_packet = function(buffer, offset)
  local index = 0

  index = index + size_of.message(buffer, offset + index)

  return index
end

-- Display: Sequenced Data Packet
display.sequenced_data_packet = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Sequenced Data Packet
dissect.sequenced_data_packet_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Message: Struct of 2 fields
  index, message = dissect.message(buffer, index, packet, parent)

  return index
end

-- Dissect: Sequenced Data Packet
dissect.sequenced_data_packet = function(buffer, offset, packet, parent)
  -- Optionally add dynamic struct element to protocol tree
  if show.sequenced_data_packet then
    local length = size_of.sequenced_data_packet(buffer, offset)
    local range = buffer(offset, length)
    local display = display.sequenced_data_packet(buffer, packet, parent)
    parent = parent:add(nasdaq_equities_orders_ouch_v4_2.fields.sequenced_data_packet, range, display)
  end

  return dissect.sequenced_data_packet_fields(buffer, offset, packet, parent)
end

-- Size: Reject Reason Code
size_of.reject_reason_code = 1

-- Display: Reject Reason Code
display.reject_reason_code = function(value)
  return "Reject Reason Code: "..value
end

-- Dissect: Reject Reason Code
dissect.reject_reason_code = function(buffer, offset, packet, parent)
  local length = size_of.reject_reason_code
  local range = buffer(offset, length)
  local value = range:string()
  local display = display.reject_reason_code(value, buffer, offset, packet, parent)

  parent:add(nasdaq_equities_orders_ouch_v4_2.fields.reject_reason_code, range, value, display)

  return offset + length, value
end

-- Calculate size of: Login Rejected Packet
size_of.login_rejected_packet = function(buffer, offset)
  local index = 0

  index = index + size_of.reject_reason_code

  return index
end

-- Display: Login Rejected Packet
display.login_rejected_packet = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Login Rejected Packet
dissect.login_rejected_packet_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Reject Reason Code: 1 Byte Ascii String
  index, reject_reason_code = dissect.reject_reason_code(buffer, index, packet, parent)

  return index
end

-- Dissect: Login Rejected Packet
dissect.login_rejected_packet = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.login_rejected_packet then
    local length = size_of.login_rejected_packet(buffer, offset)
    local range = buffer(offset, length)
    local display = display.login_rejected_packet(buffer, packet, parent)
    parent = parent:add(nasdaq_equities_orders_ouch_v4_2.fields.login_rejected_packet, range, display)
  end

  return dissect.login_rejected_packet_fields(buffer, offset, packet, parent)
end

-- Size: Sequence Number
size_of.sequence_number = 20

-- Display: Sequence Number
display.sequence_number = function(value)
  return "Sequence Number: "..value
end

-- Dissect: Sequence Number
dissect.sequence_number = function(buffer, offset, packet, parent)
  local length = size_of.sequence_number
  local range = buffer(offset, length)
  local value = range:string()
  local display = display.sequence_number(value, buffer, offset, packet, parent)

  parent:add(nasdaq_equities_orders_ouch_v4_2.fields.sequence_number, range, value, display)

  return offset + length, value
end

-- Size: Session
size_of.session = 10

-- Display: Session
display.session = function(value)
  return "Session: "..value
end

-- Dissect: Session
dissect.session = function(buffer, offset, packet, parent)
  local length = size_of.session
  local range = buffer(offset, length)
  local value = range:string()
  local display = display.session(value, buffer, offset, packet, parent)

  parent:add(nasdaq_equities_orders_ouch_v4_2.fields.session, range, value, display)

  return offset + length, value
end

-- Calculate size of: Login Accepted Packet
size_of.login_accepted_packet = function(buffer, offset)
  local index = 0

  index = index + size_of.session

  index = index + size_of.sequence_number

  return index
end

-- Display: Login Accepted Packet
display.login_accepted_packet = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Login Accepted Packet
dissect.login_accepted_packet_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Session: 10 Byte Ascii String
  index, session = dissect.session(buffer, index, packet, parent)

  -- Sequence Number: 20 Byte Ascii String
  index, sequence_number = dissect.sequence_number(buffer, index, packet, parent)

  return index
end

-- Dissect: Login Accepted Packet
dissect.login_accepted_packet = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.login_accepted_packet then
    local length = size_of.login_accepted_packet(buffer, offset)
    local range = buffer(offset, length)
    local display = display.login_accepted_packet(buffer, packet, parent)
    parent = parent:add(nasdaq_equities_orders_ouch_v4_2.fields.login_accepted_packet, range, display)
  end

  return dissect.login_accepted_packet_fields(buffer, offset, packet, parent)
end

-- Size: Text
size_of.text = 1

-- Display: Text
display.text = function(value)
  return "Text: "..value
end

-- Dissect: Text
dissect.text = function(buffer, offset, packet, parent)
  local length = size_of.text
  local range = buffer(offset, length)
  local value = range:string()
  local display = display.text(value, buffer, offset, packet, parent)

  parent:add(nasdaq_equities_orders_ouch_v4_2.fields.text, range, value, display)

  return offset + length, value
end

-- Calculate size of: Debug Packet
size_of.debug_packet = function(buffer, offset)
  local index = 0

  index = index + size_of.text

  return index
end

-- Display: Debug Packet
display.debug_packet = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Debug Packet
dissect.debug_packet_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Text: 1 Byte Ascii String
  index, text = dissect.text(buffer, index, packet, parent)

  return index
end

-- Dissect: Debug Packet
dissect.debug_packet = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.debug_packet then
    local length = size_of.debug_packet(buffer, offset)
    local range = buffer(offset, length)
    local display = display.debug_packet(buffer, packet, parent)
    parent = parent:add(nasdaq_equities_orders_ouch_v4_2.fields.debug_packet, range, display)
  end

  return dissect.debug_packet_fields(buffer, offset, packet, parent)
end

-- Calculate runtime size of: Payload
size_of.payload = function(buffer, offset, packet_type)
  -- Size of Debug Packet
  if packet_type == "+" then
    return size_of.debug_packet(buffer, offset)
  end
  -- Size of Login Accepted Packet
  if packet_type == "A" then
    return size_of.login_accepted_packet(buffer, offset)
  end
  -- Size of Login Rejected Packet
  if packet_type == "J" then
    return size_of.login_rejected_packet(buffer, offset)
  end
  -- Size of Sequenced Data Packet
  if packet_type == "S" then
    return size_of.sequenced_data_packet(buffer, offset)
  end
  -- Size of Login Request Packet
  if packet_type == "L" then
    return size_of.login_request_packet(buffer, offset)
  end
  -- Size of Unsequenced Data Packet
  if packet_type == "U" then
    return size_of.unsequenced_data_packet(buffer, offset)
  end

  return 0
end

-- Display: Payload
display.payload = function(buffer, offset, packet, parent)
  return ""
end

-- Dissect Branches: Payload
dissect.payload_branches = function(buffer, offset, packet, parent, packet_type)
  -- Dissect Debug Packet
  if packet_type == "+" then
    return dissect.debug_packet(buffer, offset, packet, parent)
  end
  -- Dissect Login Accepted Packet
  if packet_type == "A" then
    return dissect.login_accepted_packet(buffer, offset, packet, parent)
  end
  -- Dissect Login Rejected Packet
  if packet_type == "J" then
    return dissect.login_rejected_packet(buffer, offset, packet, parent)
  end
  -- Dissect Sequenced Data Packet
  if packet_type == "S" then
    return dissect.sequenced_data_packet(buffer, offset, packet, parent)
  end
  -- Dissect Login Request Packet
  if packet_type == "L" then
    return dissect.login_request_packet(buffer, offset, packet, parent)
  end
  -- Dissect Unsequenced Data Packet
  if packet_type == "U" then
    return dissect.unsequenced_data_packet(buffer, offset, packet, parent)
  end

  return offset
end

-- Dissect: Payload
dissect.payload = function(buffer, offset, packet, parent, packet_type)
  if not show.payload then
    return dissect.payload_branches(buffer, offset, packet, parent, packet_type)
  end

  -- Calculate size and check that branch is not empty
  local size = size_of.payload(buffer, offset, packet_type)
  if size == 0 then
    return offset
  end

  -- Dissect Element
  local range = buffer(offset, size)
  local display = display.payload(buffer, packet, parent)
  local element = parent:add(nasdaq_equities_orders_ouch_v4_2.fields.payload, range, display)

  return dissect.payload_branches(buffer, offset, packet, parent, packet_type)
end

-- Size: Packet Type
size_of.packet_type = 1

-- Display: Packet Type
display.packet_type = function(value)
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
dissect.packet_type = function(buffer, offset, packet, parent)
  local length = size_of.packet_type
  local range = buffer(offset, length)
  local value = range:string()
  local display = display.packet_type(value, buffer, offset, packet, parent)

  parent:add(nasdaq_equities_orders_ouch_v4_2.fields.packet_type, range, value, display)

  return offset + length, value
end

-- Size: Packet Length
size_of.packet_length = 2

-- Display: Packet Length
display.packet_length = function(value)
  return "Packet Length: "..value
end

-- Dissect: Packet Length
dissect.packet_length = function(buffer, offset, packet, parent)
  local length = size_of.packet_length
  local range = buffer(offset, length)
  local value = range:uint()
  local display = display.packet_length(value, buffer, offset, packet, parent)

  parent:add(nasdaq_equities_orders_ouch_v4_2.fields.packet_length, range, value, display)

  return offset + length, value
end

-- Calculate size of: Packet Header
size_of.packet_header = function(buffer, offset)
  local index = 0

  index = index + size_of.packet_length

  index = index + size_of.packet_type

  return index
end

-- Display: Packet Header
display.packet_header = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Packet Header
dissect.packet_header_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Packet Length: 2 Byte Unsigned Fixed Width Integer
  index, packet_length = dissect.packet_length(buffer, index, packet, parent)

  -- Packet Type: 1 Byte Ascii String Enum with 10 values
  index, packet_type = dissect.packet_type(buffer, index, packet, parent)

  return index
end

-- Dissect: Packet Header
dissect.packet_header = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.packet_header then
    local length = size_of.packet_header(buffer, offset)
    local range = buffer(offset, length)
    local display = display.packet_header(buffer, packet, parent)
    parent = parent:add(nasdaq_equities_orders_ouch_v4_2.fields.packet_header, range, display)
  end

  return dissect.packet_header_fields(buffer, offset, packet, parent)
end

-- Display: Soup Bin Tcp Packet
display.soup_bin_tcp_packet = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Soup Bin Tcp Packet
dissect.soup_bin_tcp_packet_fields = function(buffer, offset, packet, parent, size_of_soup_bin_tcp_packet)
  local index = offset

  -- Packet Header: Struct of 2 fields
  index, packet_header = dissect.packet_header(buffer, index, packet, parent)

  -- Dependency element: Packet Type
  local packet_type = buffer(index - 1, 1):string()

  -- Payload: Runtime Type with 6 branches
  index = dissect.payload(buffer, index, packet, parent, packet_type)

  return index
end

-- Dissect: Soup Bin Tcp Packet
dissect.soup_bin_tcp_packet = function(buffer, offset, packet, parent, size_of_soup_bin_tcp_packet)
  -- Optionally add struct element to protocol tree
  if show.soup_bin_tcp_packet then
    local range = buffer(offset, size_of_soup_bin_tcp_packet)
    local display = display.soup_bin_tcp_packet(buffer, packet, parent)
    parent = parent:add(nasdaq_equities_orders_ouch_v4_2.fields.soup_bin_tcp_packet, range, display)
  end

  dissect.soup_bin_tcp_packet_fields(buffer, offset, packet, parent, size_of_soup_bin_tcp_packet)

  return offset + size_of_soup_bin_tcp_packet
end

-- Remaining Bytes For: Soup Bin Tcp Packet
local soup_bin_tcp_packet_bytes_remaining = function(buffer, index, available)
  -- Calculate the number of bytes remaining
  local remaining = available - index

  -- Check if packet size can be read
  if remaining < size_of.packet_header(buffer, index) then
    return -DESEGMENT_ONE_MORE_SEGMENT
  end

  -- Parse runtime size
  local current = buffer(index, 2):uint()

  -- Check if enough bytes remain
  if remaining < current then
    return -(current - remaining)
  end

  return remaining, current
end

-- Dissect Packet
dissect.packet = function(buffer, packet, parent)
  local index = 0

  -- Dependency for Soup Bin Tcp Packet
  local end_of_payload = buffer:len()

  -- Soup Bin Tcp Packet: Struct of 2 fields
  while index < end_of_payload do

    -- Are minimum number of bytes are available?
    local available, size_of_soup_bin_tcp_packet = soup_bin_tcp_packet_bytes_remaining(buffer, index, end_of_payload)

    if available > 0 then
      index = dissect.soup_bin_tcp_packet(buffer, index, packet, parent, size_of_soup_bin_tcp_packet)
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
function nasdaq_equities_orders_ouch_v4_2.init()
end

-- Dissector for Nasdaq Equities Orders Ouch 4.2
function nasdaq_equities_orders_ouch_v4_2.dissector(buffer, packet, parent)

  -- Set protocol name
  packet.cols.protocol = nasdaq_equities_orders_ouch_v4_2.name

  -- Dissect protocol
  local protocol = parent:add(nasdaq_equities_orders_ouch_v4_2, buffer(), nasdaq_equities_orders_ouch_v4_2.description, "("..buffer:len().." Bytes)")
  return dissect.packet(buffer, packet, protocol)
end

-- Register With Tcp Table
local tcp_table = DissectorTable.get("tcp.port")
tcp_table:add(65333, nasdaq_equities_orders_ouch_v4_2)


-----------------------------------------------------------------------
-- Protocol Heuristics
-----------------------------------------------------------------------

-- Verify size of packet
verify.nasdaq_equities_orders_ouch_v4_2_packet_size = function(buffer)

  return true
end

-- Dissector Heuristic for Nasdaq Equities Orders Ouch 4.2
local function nasdaq_equities_orders_ouch_v4_2_heuristic(buffer, packet, parent)
  -- Verify packet length
  if not verify.nasdaq_equities_orders_ouch_v4_2_packet_size(buffer) then return false end

  -- Protocol is valid, set conversation and dissect this packet
  packet.conversation = nasdaq_equities_orders_ouch_v4_2
  nasdaq_equities_orders_ouch_v4_2.dissector(buffer, packet, parent)

  return true
end

-- Register Heuristic for Nasdaq Equities Orders Ouch 4.2
nasdaq_equities_orders_ouch_v4_2:register_heuristic("tcp", nasdaq_equities_orders_ouch_v4_2_heuristic)

-----------------------------------------------------------------------
-- Lua dissectors are an easily edited and modified cross platform dissection solution.
-- Feel free to modify. Enjoy.
-----------------------------------------------------------------------
-- 
-- Protocol:
--   Organization: National Association of Securities Dealers Automated Quotations
--   Version: 4.2
--   Date: Monday, July 8, 2019
--   Specification: OUCH4.2.pdf
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
