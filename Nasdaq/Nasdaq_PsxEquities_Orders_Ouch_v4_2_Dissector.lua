-----------------------------------------------------------------------
-- Lua Script Wireshark Dissector
-- 
-- Please see end of file for rules and regulations
-----------------------------------------------------------------------

-- Nasdaq PsxEquities Orders Ouch 4.2 Protocol
local omi_nasdaq_psxequities_orders_ouch_v4_2 = Proto("Nasdaq.PsxEquities.Orders.Ouch.v4.2.Lua", "Nasdaq PsxEquities Orders Ouch 4.2")

-- Protocol table
local nasdaq_psxequities_orders_ouch_v4_2 = {}

-----------------------------------------------------------------------
-- Declare Protocol Fields
-----------------------------------------------------------------------

-- Nasdaq PsxEquities Orders Ouch 4.2 Fields
omi_nasdaq_psxequities_orders_ouch_v4_2.fields.aiq_canceled_reason = ProtoField.new("Aiq Canceled Reason", "nasdaq.psxequities.orders.ouch.v4.2.aiqcanceledreason", ftypes.STRING)
omi_nasdaq_psxequities_orders_ouch_v4_2.fields.bbo_weight_indicator = ProtoField.new("Bbo Weight Indicator", "nasdaq.psxequities.orders.ouch.v4.2.bboweightindicator", ftypes.STRING)
omi_nasdaq_psxequities_orders_ouch_v4_2.fields.broken_trade_reason = ProtoField.new("Broken Trade Reason", "nasdaq.psxequities.orders.ouch.v4.2.brokentradereason", ftypes.STRING)
omi_nasdaq_psxequities_orders_ouch_v4_2.fields.buy_sell_indicator = ProtoField.new("Buy Sell Indicator", "nasdaq.psxequities.orders.ouch.v4.2.buysellindicator", ftypes.STRING)
omi_nasdaq_psxequities_orders_ouch_v4_2.fields.canceled_reason = ProtoField.new("Canceled Reason", "nasdaq.psxequities.orders.ouch.v4.2.canceledreason", ftypes.STRING)
omi_nasdaq_psxequities_orders_ouch_v4_2.fields.capacity = ProtoField.new("Capacity", "nasdaq.psxequities.orders.ouch.v4.2.capacity", ftypes.STRING)
omi_nasdaq_psxequities_orders_ouch_v4_2.fields.cross_type = ProtoField.new("Cross Type", "nasdaq.psxequities.orders.ouch.v4.2.crosstype", ftypes.STRING)
omi_nasdaq_psxequities_orders_ouch_v4_2.fields.debug_packet = ProtoField.new("Debug Packet", "nasdaq.psxequities.orders.ouch.v4.2.debugpacket", ftypes.STRING)
omi_nasdaq_psxequities_orders_ouch_v4_2.fields.decrement_shares = ProtoField.new("Decrement Shares", "nasdaq.psxequities.orders.ouch.v4.2.decrementshares", ftypes.UINT32)
omi_nasdaq_psxequities_orders_ouch_v4_2.fields.display = ProtoField.new("Display", "nasdaq.psxequities.orders.ouch.v4.2.display", ftypes.STRING)
omi_nasdaq_psxequities_orders_ouch_v4_2.fields.event_code = ProtoField.new("Event Code", "nasdaq.psxequities.orders.ouch.v4.2.eventcode", ftypes.STRING)
omi_nasdaq_psxequities_orders_ouch_v4_2.fields.executed_shares = ProtoField.new("Executed Shares", "nasdaq.psxequities.orders.ouch.v4.2.executedshares", ftypes.UINT32)
omi_nasdaq_psxequities_orders_ouch_v4_2.fields.execution_price = ProtoField.new("Execution Price", "nasdaq.psxequities.orders.ouch.v4.2.executionprice", ftypes.UINT32)
omi_nasdaq_psxequities_orders_ouch_v4_2.fields.existing_order_token = ProtoField.new("Existing Order Token", "nasdaq.psxequities.orders.ouch.v4.2.existingordertoken", ftypes.STRING)
omi_nasdaq_psxequities_orders_ouch_v4_2.fields.firm = ProtoField.new("Firm", "nasdaq.psxequities.orders.ouch.v4.2.firm", ftypes.STRING)
omi_nasdaq_psxequities_orders_ouch_v4_2.fields.intermarket_sweep_eligibility = ProtoField.new("Intermarket Sweep Eligibility", "nasdaq.psxequities.orders.ouch.v4.2.intermarketsweepeligibility", ftypes.STRING)
omi_nasdaq_psxequities_orders_ouch_v4_2.fields.liquidity_flag = ProtoField.new("Liquidity Flag", "nasdaq.psxequities.orders.ouch.v4.2.liquidityflag", ftypes.STRING)
omi_nasdaq_psxequities_orders_ouch_v4_2.fields.login_accepted_packet = ProtoField.new("Login Accepted Packet", "nasdaq.psxequities.orders.ouch.v4.2.loginacceptedpacket", ftypes.STRING)
omi_nasdaq_psxequities_orders_ouch_v4_2.fields.login_rejected_packet = ProtoField.new("Login Rejected Packet", "nasdaq.psxequities.orders.ouch.v4.2.loginrejectedpacket", ftypes.STRING)
omi_nasdaq_psxequities_orders_ouch_v4_2.fields.login_request_packet = ProtoField.new("Login Request Packet", "nasdaq.psxequities.orders.ouch.v4.2.loginrequestpacket", ftypes.STRING)
omi_nasdaq_psxequities_orders_ouch_v4_2.fields.match_number = ProtoField.new("Match Number", "nasdaq.psxequities.orders.ouch.v4.2.matchnumber", ftypes.UINT64)
omi_nasdaq_psxequities_orders_ouch_v4_2.fields.minimum_quantity = ProtoField.new("Minimum Quantity", "nasdaq.psxequities.orders.ouch.v4.2.minimumquantity", ftypes.UINT32)
omi_nasdaq_psxequities_orders_ouch_v4_2.fields.order_reference_number = ProtoField.new("Order Reference Number", "nasdaq.psxequities.orders.ouch.v4.2.orderreferencenumber", ftypes.UINT64)
omi_nasdaq_psxequities_orders_ouch_v4_2.fields.order_state = ProtoField.new("Order State", "nasdaq.psxequities.orders.ouch.v4.2.orderstate", ftypes.STRING)
omi_nasdaq_psxequities_orders_ouch_v4_2.fields.order_token = ProtoField.new("Order Token", "nasdaq.psxequities.orders.ouch.v4.2.ordertoken", ftypes.STRING)
omi_nasdaq_psxequities_orders_ouch_v4_2.fields.packet = ProtoField.new("Packet", "nasdaq.psxequities.orders.ouch.v4.2.packet", ftypes.STRING)
omi_nasdaq_psxequities_orders_ouch_v4_2.fields.packet_header = ProtoField.new("Packet Header", "nasdaq.psxequities.orders.ouch.v4.2.packetheader", ftypes.STRING)
omi_nasdaq_psxequities_orders_ouch_v4_2.fields.packet_length = ProtoField.new("Packet Length", "nasdaq.psxequities.orders.ouch.v4.2.packetlength", ftypes.UINT16)
omi_nasdaq_psxequities_orders_ouch_v4_2.fields.packet_type = ProtoField.new("Packet Type", "nasdaq.psxequities.orders.ouch.v4.2.packettype", ftypes.STRING)
omi_nasdaq_psxequities_orders_ouch_v4_2.fields.password = ProtoField.new("Password", "nasdaq.psxequities.orders.ouch.v4.2.password", ftypes.STRING)
omi_nasdaq_psxequities_orders_ouch_v4_2.fields.payload = ProtoField.new("Payload", "nasdaq.psxequities.orders.ouch.v4.2.payload", ftypes.STRING)
omi_nasdaq_psxequities_orders_ouch_v4_2.fields.previous_order_token = ProtoField.new("Previous Order Token", "nasdaq.psxequities.orders.ouch.v4.2.previousordertoken", ftypes.STRING)
omi_nasdaq_psxequities_orders_ouch_v4_2.fields.price = ProtoField.new("Price", "nasdaq.psxequities.orders.ouch.v4.2.price", ftypes.DOUBLE)
omi_nasdaq_psxequities_orders_ouch_v4_2.fields.quantity_prevented_from_trading = ProtoField.new("Quantity Prevented From Trading", "nasdaq.psxequities.orders.ouch.v4.2.quantitypreventedfromtrading", ftypes.UINT32)
omi_nasdaq_psxequities_orders_ouch_v4_2.fields.reject_reason_code = ProtoField.new("Reject Reason Code", "nasdaq.psxequities.orders.ouch.v4.2.rejectreasoncode", ftypes.STRING)
omi_nasdaq_psxequities_orders_ouch_v4_2.fields.rejected_reason = ProtoField.new("Rejected Reason", "nasdaq.psxequities.orders.ouch.v4.2.rejectedreason", ftypes.STRING)
omi_nasdaq_psxequities_orders_ouch_v4_2.fields.replacement_order_token_alphanumeric_14 = ProtoField.new("Replacement Order Token Alphanumeric 14", "nasdaq.psxequities.orders.ouch.v4.2.replacementordertokenalphanumeric14", ftypes.STRING)
omi_nasdaq_psxequities_orders_ouch_v4_2.fields.replacement_order_token_token_14 = ProtoField.new("Replacement Order Token Token 14", "nasdaq.psxequities.orders.ouch.v4.2.replacementordertokentoken14", ftypes.STRING)
omi_nasdaq_psxequities_orders_ouch_v4_2.fields.requested_sequence_number = ProtoField.new("Requested Sequence Number", "nasdaq.psxequities.orders.ouch.v4.2.requestedsequencenumber", ftypes.STRING)
omi_nasdaq_psxequities_orders_ouch_v4_2.fields.requested_session = ProtoField.new("Requested Session", "nasdaq.psxequities.orders.ouch.v4.2.requestedsession", ftypes.STRING)
omi_nasdaq_psxequities_orders_ouch_v4_2.fields.sequence_number = ProtoField.new("Sequence Number", "nasdaq.psxequities.orders.ouch.v4.2.sequencenumber", ftypes.STRING)
omi_nasdaq_psxequities_orders_ouch_v4_2.fields.sequenced_data_packet = ProtoField.new("Sequenced Data Packet", "nasdaq.psxequities.orders.ouch.v4.2.sequenceddatapacket", ftypes.STRING)
omi_nasdaq_psxequities_orders_ouch_v4_2.fields.sequenced_message = ProtoField.new("Sequenced Message", "nasdaq.psxequities.orders.ouch.v4.2.sequencedmessage", ftypes.STRING)
omi_nasdaq_psxequities_orders_ouch_v4_2.fields.sequenced_message_type = ProtoField.new("Sequenced Message Type", "nasdaq.psxequities.orders.ouch.v4.2.sequencedmessagetype", ftypes.STRING)
omi_nasdaq_psxequities_orders_ouch_v4_2.fields.session = ProtoField.new("Session", "nasdaq.psxequities.orders.ouch.v4.2.session", ftypes.STRING)
omi_nasdaq_psxequities_orders_ouch_v4_2.fields.shares = ProtoField.new("Shares", "nasdaq.psxequities.orders.ouch.v4.2.shares", ftypes.UINT32)
omi_nasdaq_psxequities_orders_ouch_v4_2.fields.soup_bin_tcp_packet = ProtoField.new("Soup Bin Tcp Packet", "nasdaq.psxequities.orders.ouch.v4.2.soupbintcppacket", ftypes.STRING)
omi_nasdaq_psxequities_orders_ouch_v4_2.fields.stock = ProtoField.new("Stock", "nasdaq.psxequities.orders.ouch.v4.2.stock", ftypes.STRING)
omi_nasdaq_psxequities_orders_ouch_v4_2.fields.text = ProtoField.new("Text", "nasdaq.psxequities.orders.ouch.v4.2.text", ftypes.STRING)
omi_nasdaq_psxequities_orders_ouch_v4_2.fields.time_in_force = ProtoField.new("Time In Force", "nasdaq.psxequities.orders.ouch.v4.2.timeinforce", ftypes.UINT32)
omi_nasdaq_psxequities_orders_ouch_v4_2.fields.timestamp = ProtoField.new("Timestamp", "nasdaq.psxequities.orders.ouch.v4.2.timestamp", ftypes.UINT64)
omi_nasdaq_psxequities_orders_ouch_v4_2.fields.unsequenced_data_packet = ProtoField.new("Unsequenced Data Packet", "nasdaq.psxequities.orders.ouch.v4.2.unsequenceddatapacket", ftypes.STRING)
omi_nasdaq_psxequities_orders_ouch_v4_2.fields.unsequenced_message = ProtoField.new("Unsequenced Message", "nasdaq.psxequities.orders.ouch.v4.2.unsequencedmessage", ftypes.STRING)
omi_nasdaq_psxequities_orders_ouch_v4_2.fields.unsequenced_message_type = ProtoField.new("Unsequenced Message Type", "nasdaq.psxequities.orders.ouch.v4.2.unsequencedmessagetype", ftypes.STRING)
omi_nasdaq_psxequities_orders_ouch_v4_2.fields.username = ProtoField.new("Username", "nasdaq.psxequities.orders.ouch.v4.2.username", ftypes.STRING)

-- Nasdaq PsxEquities Orders Ouch 4.2 messages
omi_nasdaq_psxequities_orders_ouch_v4_2.fields.accepted_message = ProtoField.new("Accepted Message", "nasdaq.psxequities.orders.ouch.v4.2.acceptedmessage", ftypes.STRING)
omi_nasdaq_psxequities_orders_ouch_v4_2.fields.aiq_canceled_message = ProtoField.new("Aiq Canceled Message", "nasdaq.psxequities.orders.ouch.v4.2.aiqcanceledmessage", ftypes.STRING)
omi_nasdaq_psxequities_orders_ouch_v4_2.fields.broken_trade_message = ProtoField.new("Broken Trade Message", "nasdaq.psxequities.orders.ouch.v4.2.brokentrademessage", ftypes.STRING)
omi_nasdaq_psxequities_orders_ouch_v4_2.fields.cancel_order_message = ProtoField.new("Cancel Order Message", "nasdaq.psxequities.orders.ouch.v4.2.cancelordermessage", ftypes.STRING)
omi_nasdaq_psxequities_orders_ouch_v4_2.fields.cancel_pending_message = ProtoField.new("Cancel Pending Message", "nasdaq.psxequities.orders.ouch.v4.2.cancelpendingmessage", ftypes.STRING)
omi_nasdaq_psxequities_orders_ouch_v4_2.fields.cancel_reject_message = ProtoField.new("Cancel Reject Message", "nasdaq.psxequities.orders.ouch.v4.2.cancelrejectmessage", ftypes.STRING)
omi_nasdaq_psxequities_orders_ouch_v4_2.fields.canceled_message = ProtoField.new("Canceled Message", "nasdaq.psxequities.orders.ouch.v4.2.canceledmessage", ftypes.STRING)
omi_nasdaq_psxequities_orders_ouch_v4_2.fields.enter_order_message = ProtoField.new("Enter Order Message", "nasdaq.psxequities.orders.ouch.v4.2.enterordermessage", ftypes.STRING)
omi_nasdaq_psxequities_orders_ouch_v4_2.fields.executed_message = ProtoField.new("Executed Message", "nasdaq.psxequities.orders.ouch.v4.2.executedmessage", ftypes.STRING)
omi_nasdaq_psxequities_orders_ouch_v4_2.fields.modify_order_message = ProtoField.new("Modify Order Message", "nasdaq.psxequities.orders.ouch.v4.2.modifyordermessage", ftypes.STRING)
omi_nasdaq_psxequities_orders_ouch_v4_2.fields.order_modified_message = ProtoField.new("Order Modified Message", "nasdaq.psxequities.orders.ouch.v4.2.ordermodifiedmessage", ftypes.STRING)
omi_nasdaq_psxequities_orders_ouch_v4_2.fields.order_priority_update_message = ProtoField.new("Order Priority Update Message", "nasdaq.psxequities.orders.ouch.v4.2.orderpriorityupdatemessage", ftypes.STRING)
omi_nasdaq_psxequities_orders_ouch_v4_2.fields.rejected_message = ProtoField.new("Rejected Message", "nasdaq.psxequities.orders.ouch.v4.2.rejectedmessage", ftypes.STRING)
omi_nasdaq_psxequities_orders_ouch_v4_2.fields.replace_order_message = ProtoField.new("Replace Order Message", "nasdaq.psxequities.orders.ouch.v4.2.replaceordermessage", ftypes.STRING)
omi_nasdaq_psxequities_orders_ouch_v4_2.fields.replaced_message = ProtoField.new("Replaced Message", "nasdaq.psxequities.orders.ouch.v4.2.replacedmessage", ftypes.STRING)
omi_nasdaq_psxequities_orders_ouch_v4_2.fields.system_event_message = ProtoField.new("System Event Message", "nasdaq.psxequities.orders.ouch.v4.2.systemeventmessage", ftypes.STRING)

-----------------------------------------------------------------------
-- Declare Dissection Options
-----------------------------------------------------------------------

local show = {}

-- Nasdaq PsxEquities Orders Ouch 4.2 Element Dissection Options
show.accepted_message = true
show.aiq_canceled_message = true
show.broken_trade_message = true
show.cancel_order_message = true
show.cancel_pending_message = true
show.cancel_reject_message = true
show.canceled_message = true
show.debug_packet = true
show.enter_order_message = true
show.executed_message = true
show.login_accepted_packet = true
show.login_rejected_packet = true
show.login_request_packet = true
show.modify_order_message = true
show.order_modified_message = true
show.order_priority_update_message = true
show.packet = true
show.packet_header = true
show.rejected_message = true
show.replace_order_message = true
show.replaced_message = true
show.sequenced_data_packet = true
show.soup_bin_tcp_packet = true
show.system_event_message = true
show.unsequenced_data_packet = true
show.payload = false
show.sequenced_message = false
show.unsequenced_message = false

-- Register Nasdaq PsxEquities Orders Ouch 4.2 Show Options
omi_nasdaq_psxequities_orders_ouch_v4_2.prefs.show_accepted_message = Pref.bool("Show Accepted Message", show.accepted_message, "Parse and add Accepted Message to protocol tree")
omi_nasdaq_psxequities_orders_ouch_v4_2.prefs.show_aiq_canceled_message = Pref.bool("Show Aiq Canceled Message", show.aiq_canceled_message, "Parse and add Aiq Canceled Message to protocol tree")
omi_nasdaq_psxequities_orders_ouch_v4_2.prefs.show_broken_trade_message = Pref.bool("Show Broken Trade Message", show.broken_trade_message, "Parse and add Broken Trade Message to protocol tree")
omi_nasdaq_psxequities_orders_ouch_v4_2.prefs.show_cancel_order_message = Pref.bool("Show Cancel Order Message", show.cancel_order_message, "Parse and add Cancel Order Message to protocol tree")
omi_nasdaq_psxequities_orders_ouch_v4_2.prefs.show_cancel_pending_message = Pref.bool("Show Cancel Pending Message", show.cancel_pending_message, "Parse and add Cancel Pending Message to protocol tree")
omi_nasdaq_psxequities_orders_ouch_v4_2.prefs.show_cancel_reject_message = Pref.bool("Show Cancel Reject Message", show.cancel_reject_message, "Parse and add Cancel Reject Message to protocol tree")
omi_nasdaq_psxequities_orders_ouch_v4_2.prefs.show_canceled_message = Pref.bool("Show Canceled Message", show.canceled_message, "Parse and add Canceled Message to protocol tree")
omi_nasdaq_psxequities_orders_ouch_v4_2.prefs.show_debug_packet = Pref.bool("Show Debug Packet", show.debug_packet, "Parse and add Debug Packet to protocol tree")
omi_nasdaq_psxequities_orders_ouch_v4_2.prefs.show_enter_order_message = Pref.bool("Show Enter Order Message", show.enter_order_message, "Parse and add Enter Order Message to protocol tree")
omi_nasdaq_psxequities_orders_ouch_v4_2.prefs.show_executed_message = Pref.bool("Show Executed Message", show.executed_message, "Parse and add Executed Message to protocol tree")
omi_nasdaq_psxequities_orders_ouch_v4_2.prefs.show_login_accepted_packet = Pref.bool("Show Login Accepted Packet", show.login_accepted_packet, "Parse and add Login Accepted Packet to protocol tree")
omi_nasdaq_psxequities_orders_ouch_v4_2.prefs.show_login_rejected_packet = Pref.bool("Show Login Rejected Packet", show.login_rejected_packet, "Parse and add Login Rejected Packet to protocol tree")
omi_nasdaq_psxequities_orders_ouch_v4_2.prefs.show_login_request_packet = Pref.bool("Show Login Request Packet", show.login_request_packet, "Parse and add Login Request Packet to protocol tree")
omi_nasdaq_psxequities_orders_ouch_v4_2.prefs.show_modify_order_message = Pref.bool("Show Modify Order Message", show.modify_order_message, "Parse and add Modify Order Message to protocol tree")
omi_nasdaq_psxequities_orders_ouch_v4_2.prefs.show_order_modified_message = Pref.bool("Show Order Modified Message", show.order_modified_message, "Parse and add Order Modified Message to protocol tree")
omi_nasdaq_psxequities_orders_ouch_v4_2.prefs.show_order_priority_update_message = Pref.bool("Show Order Priority Update Message", show.order_priority_update_message, "Parse and add Order Priority Update Message to protocol tree")
omi_nasdaq_psxequities_orders_ouch_v4_2.prefs.show_packet = Pref.bool("Show Packet", show.packet, "Parse and add Packet to protocol tree")
omi_nasdaq_psxequities_orders_ouch_v4_2.prefs.show_packet_header = Pref.bool("Show Packet Header", show.packet_header, "Parse and add Packet Header to protocol tree")
omi_nasdaq_psxequities_orders_ouch_v4_2.prefs.show_rejected_message = Pref.bool("Show Rejected Message", show.rejected_message, "Parse and add Rejected Message to protocol tree")
omi_nasdaq_psxequities_orders_ouch_v4_2.prefs.show_replace_order_message = Pref.bool("Show Replace Order Message", show.replace_order_message, "Parse and add Replace Order Message to protocol tree")
omi_nasdaq_psxequities_orders_ouch_v4_2.prefs.show_replaced_message = Pref.bool("Show Replaced Message", show.replaced_message, "Parse and add Replaced Message to protocol tree")
omi_nasdaq_psxequities_orders_ouch_v4_2.prefs.show_sequenced_data_packet = Pref.bool("Show Sequenced Data Packet", show.sequenced_data_packet, "Parse and add Sequenced Data Packet to protocol tree")
omi_nasdaq_psxequities_orders_ouch_v4_2.prefs.show_soup_bin_tcp_packet = Pref.bool("Show Soup Bin Tcp Packet", show.soup_bin_tcp_packet, "Parse and add Soup Bin Tcp Packet to protocol tree")
omi_nasdaq_psxequities_orders_ouch_v4_2.prefs.show_system_event_message = Pref.bool("Show System Event Message", show.system_event_message, "Parse and add System Event Message to protocol tree")
omi_nasdaq_psxequities_orders_ouch_v4_2.prefs.show_unsequenced_data_packet = Pref.bool("Show Unsequenced Data Packet", show.unsequenced_data_packet, "Parse and add Unsequenced Data Packet to protocol tree")
omi_nasdaq_psxequities_orders_ouch_v4_2.prefs.show_payload = Pref.bool("Show Payload", show.payload, "Parse and add Payload to protocol tree")
omi_nasdaq_psxequities_orders_ouch_v4_2.prefs.show_sequenced_message = Pref.bool("Show Sequenced Message", show.sequenced_message, "Parse and add Sequenced Message to protocol tree")
omi_nasdaq_psxequities_orders_ouch_v4_2.prefs.show_unsequenced_message = Pref.bool("Show Unsequenced Message", show.unsequenced_message, "Parse and add Unsequenced Message to protocol tree")

-- Handle changed preferences
function omi_nasdaq_psxequities_orders_ouch_v4_2.prefs_changed()
  local changed = false

  -- Check if show options have changed
  if show.accepted_message ~= omi_nasdaq_psxequities_orders_ouch_v4_2.prefs.show_accepted_message then
    show.accepted_message = omi_nasdaq_psxequities_orders_ouch_v4_2.prefs.show_accepted_message
    changed = true
  end
  if show.aiq_canceled_message ~= omi_nasdaq_psxequities_orders_ouch_v4_2.prefs.show_aiq_canceled_message then
    show.aiq_canceled_message = omi_nasdaq_psxequities_orders_ouch_v4_2.prefs.show_aiq_canceled_message
    changed = true
  end
  if show.broken_trade_message ~= omi_nasdaq_psxequities_orders_ouch_v4_2.prefs.show_broken_trade_message then
    show.broken_trade_message = omi_nasdaq_psxequities_orders_ouch_v4_2.prefs.show_broken_trade_message
    changed = true
  end
  if show.cancel_order_message ~= omi_nasdaq_psxequities_orders_ouch_v4_2.prefs.show_cancel_order_message then
    show.cancel_order_message = omi_nasdaq_psxequities_orders_ouch_v4_2.prefs.show_cancel_order_message
    changed = true
  end
  if show.cancel_pending_message ~= omi_nasdaq_psxequities_orders_ouch_v4_2.prefs.show_cancel_pending_message then
    show.cancel_pending_message = omi_nasdaq_psxequities_orders_ouch_v4_2.prefs.show_cancel_pending_message
    changed = true
  end
  if show.cancel_reject_message ~= omi_nasdaq_psxequities_orders_ouch_v4_2.prefs.show_cancel_reject_message then
    show.cancel_reject_message = omi_nasdaq_psxequities_orders_ouch_v4_2.prefs.show_cancel_reject_message
    changed = true
  end
  if show.canceled_message ~= omi_nasdaq_psxequities_orders_ouch_v4_2.prefs.show_canceled_message then
    show.canceled_message = omi_nasdaq_psxequities_orders_ouch_v4_2.prefs.show_canceled_message
    changed = true
  end
  if show.debug_packet ~= omi_nasdaq_psxequities_orders_ouch_v4_2.prefs.show_debug_packet then
    show.debug_packet = omi_nasdaq_psxequities_orders_ouch_v4_2.prefs.show_debug_packet
    changed = true
  end
  if show.enter_order_message ~= omi_nasdaq_psxequities_orders_ouch_v4_2.prefs.show_enter_order_message then
    show.enter_order_message = omi_nasdaq_psxequities_orders_ouch_v4_2.prefs.show_enter_order_message
    changed = true
  end
  if show.executed_message ~= omi_nasdaq_psxequities_orders_ouch_v4_2.prefs.show_executed_message then
    show.executed_message = omi_nasdaq_psxequities_orders_ouch_v4_2.prefs.show_executed_message
    changed = true
  end
  if show.login_accepted_packet ~= omi_nasdaq_psxequities_orders_ouch_v4_2.prefs.show_login_accepted_packet then
    show.login_accepted_packet = omi_nasdaq_psxequities_orders_ouch_v4_2.prefs.show_login_accepted_packet
    changed = true
  end
  if show.login_rejected_packet ~= omi_nasdaq_psxequities_orders_ouch_v4_2.prefs.show_login_rejected_packet then
    show.login_rejected_packet = omi_nasdaq_psxequities_orders_ouch_v4_2.prefs.show_login_rejected_packet
    changed = true
  end
  if show.login_request_packet ~= omi_nasdaq_psxequities_orders_ouch_v4_2.prefs.show_login_request_packet then
    show.login_request_packet = omi_nasdaq_psxequities_orders_ouch_v4_2.prefs.show_login_request_packet
    changed = true
  end
  if show.modify_order_message ~= omi_nasdaq_psxequities_orders_ouch_v4_2.prefs.show_modify_order_message then
    show.modify_order_message = omi_nasdaq_psxequities_orders_ouch_v4_2.prefs.show_modify_order_message
    changed = true
  end
  if show.order_modified_message ~= omi_nasdaq_psxequities_orders_ouch_v4_2.prefs.show_order_modified_message then
    show.order_modified_message = omi_nasdaq_psxequities_orders_ouch_v4_2.prefs.show_order_modified_message
    changed = true
  end
  if show.order_priority_update_message ~= omi_nasdaq_psxequities_orders_ouch_v4_2.prefs.show_order_priority_update_message then
    show.order_priority_update_message = omi_nasdaq_psxequities_orders_ouch_v4_2.prefs.show_order_priority_update_message
    changed = true
  end
  if show.packet ~= omi_nasdaq_psxequities_orders_ouch_v4_2.prefs.show_packet then
    show.packet = omi_nasdaq_psxequities_orders_ouch_v4_2.prefs.show_packet
    changed = true
  end
  if show.packet_header ~= omi_nasdaq_psxequities_orders_ouch_v4_2.prefs.show_packet_header then
    show.packet_header = omi_nasdaq_psxequities_orders_ouch_v4_2.prefs.show_packet_header
    changed = true
  end
  if show.rejected_message ~= omi_nasdaq_psxequities_orders_ouch_v4_2.prefs.show_rejected_message then
    show.rejected_message = omi_nasdaq_psxequities_orders_ouch_v4_2.prefs.show_rejected_message
    changed = true
  end
  if show.replace_order_message ~= omi_nasdaq_psxequities_orders_ouch_v4_2.prefs.show_replace_order_message then
    show.replace_order_message = omi_nasdaq_psxequities_orders_ouch_v4_2.prefs.show_replace_order_message
    changed = true
  end
  if show.replaced_message ~= omi_nasdaq_psxequities_orders_ouch_v4_2.prefs.show_replaced_message then
    show.replaced_message = omi_nasdaq_psxequities_orders_ouch_v4_2.prefs.show_replaced_message
    changed = true
  end
  if show.sequenced_data_packet ~= omi_nasdaq_psxequities_orders_ouch_v4_2.prefs.show_sequenced_data_packet then
    show.sequenced_data_packet = omi_nasdaq_psxequities_orders_ouch_v4_2.prefs.show_sequenced_data_packet
    changed = true
  end
  if show.soup_bin_tcp_packet ~= omi_nasdaq_psxequities_orders_ouch_v4_2.prefs.show_soup_bin_tcp_packet then
    show.soup_bin_tcp_packet = omi_nasdaq_psxequities_orders_ouch_v4_2.prefs.show_soup_bin_tcp_packet
    changed = true
  end
  if show.system_event_message ~= omi_nasdaq_psxequities_orders_ouch_v4_2.prefs.show_system_event_message then
    show.system_event_message = omi_nasdaq_psxequities_orders_ouch_v4_2.prefs.show_system_event_message
    changed = true
  end
  if show.unsequenced_data_packet ~= omi_nasdaq_psxequities_orders_ouch_v4_2.prefs.show_unsequenced_data_packet then
    show.unsequenced_data_packet = omi_nasdaq_psxequities_orders_ouch_v4_2.prefs.show_unsequenced_data_packet
    changed = true
  end
  if show.payload ~= omi_nasdaq_psxequities_orders_ouch_v4_2.prefs.show_payload then
    show.payload = omi_nasdaq_psxequities_orders_ouch_v4_2.prefs.show_payload
    changed = true
  end
  if show.sequenced_message ~= omi_nasdaq_psxequities_orders_ouch_v4_2.prefs.show_sequenced_message then
    show.sequenced_message = omi_nasdaq_psxequities_orders_ouch_v4_2.prefs.show_sequenced_message
    changed = true
  end
  if show.unsequenced_message ~= omi_nasdaq_psxequities_orders_ouch_v4_2.prefs.show_unsequenced_message then
    show.unsequenced_message = omi_nasdaq_psxequities_orders_ouch_v4_2.prefs.show_unsequenced_message
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
-- Dissect Nasdaq PsxEquities Orders Ouch 4.2
-----------------------------------------------------------------------

-- Shares
nasdaq_psxequities_orders_ouch_v4_2.shares = {}

-- Size: Shares
nasdaq_psxequities_orders_ouch_v4_2.shares.size = 4

-- Display: Shares
nasdaq_psxequities_orders_ouch_v4_2.shares.display = function(value)
  return "Shares: "..value
end

-- Dissect: Shares
nasdaq_psxequities_orders_ouch_v4_2.shares.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_psxequities_orders_ouch_v4_2.shares.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_psxequities_orders_ouch_v4_2.shares.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_psxequities_orders_ouch_v4_2.fields.shares, range, value, display)

  return offset + length, value
end

-- Buy Sell Indicator
nasdaq_psxequities_orders_ouch_v4_2.buy_sell_indicator = {}

-- Size: Buy Sell Indicator
nasdaq_psxequities_orders_ouch_v4_2.buy_sell_indicator.size = 1

-- Display: Buy Sell Indicator
nasdaq_psxequities_orders_ouch_v4_2.buy_sell_indicator.display = function(value)
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
nasdaq_psxequities_orders_ouch_v4_2.buy_sell_indicator.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_psxequities_orders_ouch_v4_2.buy_sell_indicator.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_psxequities_orders_ouch_v4_2.buy_sell_indicator.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_psxequities_orders_ouch_v4_2.fields.buy_sell_indicator, range, value, display)

  return offset + length, value
end

-- Order Token
nasdaq_psxequities_orders_ouch_v4_2.order_token = {}

-- Size: Order Token
nasdaq_psxequities_orders_ouch_v4_2.order_token.size = 14

-- Display: Order Token
nasdaq_psxequities_orders_ouch_v4_2.order_token.display = function(value)
  return "Order Token: "..value
end

-- Dissect: Order Token
nasdaq_psxequities_orders_ouch_v4_2.order_token.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_psxequities_orders_ouch_v4_2.order_token.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_psxequities_orders_ouch_v4_2.order_token.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_psxequities_orders_ouch_v4_2.fields.order_token, range, value, display)

  return offset + length, value
end

-- Modify Order Message
nasdaq_psxequities_orders_ouch_v4_2.modify_order_message = {}

-- Size: Modify Order Message
nasdaq_psxequities_orders_ouch_v4_2.modify_order_message.size =
  nasdaq_psxequities_orders_ouch_v4_2.order_token.size + 
  nasdaq_psxequities_orders_ouch_v4_2.buy_sell_indicator.size + 
  nasdaq_psxequities_orders_ouch_v4_2.shares.size

-- Display: Modify Order Message
nasdaq_psxequities_orders_ouch_v4_2.modify_order_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Modify Order Message
nasdaq_psxequities_orders_ouch_v4_2.modify_order_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Order Token: 14 Byte Ascii String
  index, order_token = nasdaq_psxequities_orders_ouch_v4_2.order_token.dissect(buffer, index, packet, parent)

  -- Buy Sell Indicator: 1 Byte Ascii String Enum with 4 values
  index, buy_sell_indicator = nasdaq_psxequities_orders_ouch_v4_2.buy_sell_indicator.dissect(buffer, index, packet, parent)

  -- Shares: 4 Byte Unsigned Fixed Width Integer
  index, shares = nasdaq_psxequities_orders_ouch_v4_2.shares.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Modify Order Message
nasdaq_psxequities_orders_ouch_v4_2.modify_order_message.dissect = function(buffer, offset, packet, parent)
  if show.modify_order_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_psxequities_orders_ouch_v4_2.fields.modify_order_message, buffer(offset, 0))
    local index = nasdaq_psxequities_orders_ouch_v4_2.modify_order_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_psxequities_orders_ouch_v4_2.modify_order_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_psxequities_orders_ouch_v4_2.modify_order_message.fields(buffer, offset, packet, parent)
  end
end

-- Cancel Order Message
nasdaq_psxequities_orders_ouch_v4_2.cancel_order_message = {}

-- Size: Cancel Order Message
nasdaq_psxequities_orders_ouch_v4_2.cancel_order_message.size =
  nasdaq_psxequities_orders_ouch_v4_2.order_token.size + 
  nasdaq_psxequities_orders_ouch_v4_2.shares.size

-- Display: Cancel Order Message
nasdaq_psxequities_orders_ouch_v4_2.cancel_order_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Cancel Order Message
nasdaq_psxequities_orders_ouch_v4_2.cancel_order_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Order Token: 14 Byte Ascii String
  index, order_token = nasdaq_psxequities_orders_ouch_v4_2.order_token.dissect(buffer, index, packet, parent)

  -- Shares: 4 Byte Unsigned Fixed Width Integer
  index, shares = nasdaq_psxequities_orders_ouch_v4_2.shares.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Cancel Order Message
nasdaq_psxequities_orders_ouch_v4_2.cancel_order_message.dissect = function(buffer, offset, packet, parent)
  if show.cancel_order_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_psxequities_orders_ouch_v4_2.fields.cancel_order_message, buffer(offset, 0))
    local index = nasdaq_psxequities_orders_ouch_v4_2.cancel_order_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_psxequities_orders_ouch_v4_2.cancel_order_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_psxequities_orders_ouch_v4_2.cancel_order_message.fields(buffer, offset, packet, parent)
  end
end

-- Minimum Quantity
nasdaq_psxequities_orders_ouch_v4_2.minimum_quantity = {}

-- Size: Minimum Quantity
nasdaq_psxequities_orders_ouch_v4_2.minimum_quantity.size = 4

-- Display: Minimum Quantity
nasdaq_psxequities_orders_ouch_v4_2.minimum_quantity.display = function(value)
  return "Minimum Quantity: "..value
end

-- Dissect: Minimum Quantity
nasdaq_psxequities_orders_ouch_v4_2.minimum_quantity.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_psxequities_orders_ouch_v4_2.minimum_quantity.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_psxequities_orders_ouch_v4_2.minimum_quantity.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_psxequities_orders_ouch_v4_2.fields.minimum_quantity, range, value, display)

  return offset + length, value
end

-- Intermarket Sweep Eligibility
nasdaq_psxequities_orders_ouch_v4_2.intermarket_sweep_eligibility = {}

-- Size: Intermarket Sweep Eligibility
nasdaq_psxequities_orders_ouch_v4_2.intermarket_sweep_eligibility.size = 1

-- Display: Intermarket Sweep Eligibility
nasdaq_psxequities_orders_ouch_v4_2.intermarket_sweep_eligibility.display = function(value)
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
nasdaq_psxequities_orders_ouch_v4_2.intermarket_sweep_eligibility.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_psxequities_orders_ouch_v4_2.intermarket_sweep_eligibility.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_psxequities_orders_ouch_v4_2.intermarket_sweep_eligibility.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_psxequities_orders_ouch_v4_2.fields.intermarket_sweep_eligibility, range, value, display)

  return offset + length, value
end

-- Display
nasdaq_psxequities_orders_ouch_v4_2.display = {}

-- Size: Display
nasdaq_psxequities_orders_ouch_v4_2.display.size = 1

-- Display: Display
nasdaq_psxequities_orders_ouch_v4_2.display.display = function(value)
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
  if value == "Z" then
    return "Display: Changed To Nondisplayed (Z)"
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

  return "Display: Unknown("..value..")"
end

-- Dissect: Display
nasdaq_psxequities_orders_ouch_v4_2.display.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_psxequities_orders_ouch_v4_2.display.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_psxequities_orders_ouch_v4_2.display.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_psxequities_orders_ouch_v4_2.fields.display, range, value, display)

  return offset + length, value
end

-- Time In Force
nasdaq_psxequities_orders_ouch_v4_2.time_in_force = {}

-- Size: Time In Force
nasdaq_psxequities_orders_ouch_v4_2.time_in_force.size = 4

-- Display: Time In Force
nasdaq_psxequities_orders_ouch_v4_2.time_in_force.display = function(value)
  return "Time In Force: "..value
end

-- Dissect: Time In Force
nasdaq_psxequities_orders_ouch_v4_2.time_in_force.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_psxequities_orders_ouch_v4_2.time_in_force.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_psxequities_orders_ouch_v4_2.time_in_force.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_psxequities_orders_ouch_v4_2.fields.time_in_force, range, value, display)

  return offset + length, value
end

-- Price
nasdaq_psxequities_orders_ouch_v4_2.price = {}

-- Size: Price
nasdaq_psxequities_orders_ouch_v4_2.price.size = 4

-- Display: Price
nasdaq_psxequities_orders_ouch_v4_2.price.display = function(value)
  return "Price: "..value
end

-- Translate: Price
nasdaq_psxequities_orders_ouch_v4_2.price.translate = function(raw)
  return raw/10000
end

-- Dissect: Price
nasdaq_psxequities_orders_ouch_v4_2.price.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_psxequities_orders_ouch_v4_2.price.size
  local range = buffer(offset, length)
  local raw = range:uint()
  local value = nasdaq_psxequities_orders_ouch_v4_2.price.translate(raw)
  local display = nasdaq_psxequities_orders_ouch_v4_2.price.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_psxequities_orders_ouch_v4_2.fields.price, range, value, display)

  return offset + length, value
end

-- Replacement Order Token Token 14
nasdaq_psxequities_orders_ouch_v4_2.replacement_order_token_token_14 = {}

-- Size: Replacement Order Token Token 14
nasdaq_psxequities_orders_ouch_v4_2.replacement_order_token_token_14.size = 14

-- Display: Replacement Order Token Token 14
nasdaq_psxequities_orders_ouch_v4_2.replacement_order_token_token_14.display = function(value)
  return "Replacement Order Token Token 14: "..value
end

-- Dissect: Replacement Order Token Token 14
nasdaq_psxequities_orders_ouch_v4_2.replacement_order_token_token_14.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_psxequities_orders_ouch_v4_2.replacement_order_token_token_14.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_psxequities_orders_ouch_v4_2.replacement_order_token_token_14.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_psxequities_orders_ouch_v4_2.fields.replacement_order_token_token_14, range, value, display)

  return offset + length, value
end

-- Existing Order Token
nasdaq_psxequities_orders_ouch_v4_2.existing_order_token = {}

-- Size: Existing Order Token
nasdaq_psxequities_orders_ouch_v4_2.existing_order_token.size = 14

-- Display: Existing Order Token
nasdaq_psxequities_orders_ouch_v4_2.existing_order_token.display = function(value)
  return "Existing Order Token: "..value
end

-- Dissect: Existing Order Token
nasdaq_psxequities_orders_ouch_v4_2.existing_order_token.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_psxequities_orders_ouch_v4_2.existing_order_token.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_psxequities_orders_ouch_v4_2.existing_order_token.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_psxequities_orders_ouch_v4_2.fields.existing_order_token, range, value, display)

  return offset + length, value
end

-- Replace Order Message
nasdaq_psxequities_orders_ouch_v4_2.replace_order_message = {}

-- Size: Replace Order Message
nasdaq_psxequities_orders_ouch_v4_2.replace_order_message.size =
  nasdaq_psxequities_orders_ouch_v4_2.existing_order_token.size + 
  nasdaq_psxequities_orders_ouch_v4_2.replacement_order_token_token_14.size + 
  nasdaq_psxequities_orders_ouch_v4_2.shares.size + 
  nasdaq_psxequities_orders_ouch_v4_2.price.size + 
  nasdaq_psxequities_orders_ouch_v4_2.time_in_force.size + 
  nasdaq_psxequities_orders_ouch_v4_2.display.size + 
  nasdaq_psxequities_orders_ouch_v4_2.intermarket_sweep_eligibility.size + 
  nasdaq_psxequities_orders_ouch_v4_2.minimum_quantity.size

-- Display: Replace Order Message
nasdaq_psxequities_orders_ouch_v4_2.replace_order_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Replace Order Message
nasdaq_psxequities_orders_ouch_v4_2.replace_order_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Existing Order Token: 14 Byte Ascii String
  index, existing_order_token = nasdaq_psxequities_orders_ouch_v4_2.existing_order_token.dissect(buffer, index, packet, parent)

  -- Replacement Order Token Token 14: 14 Byte Ascii String
  index, replacement_order_token_token_14 = nasdaq_psxequities_orders_ouch_v4_2.replacement_order_token_token_14.dissect(buffer, index, packet, parent)

  -- Shares: 4 Byte Unsigned Fixed Width Integer
  index, shares = nasdaq_psxequities_orders_ouch_v4_2.shares.dissect(buffer, index, packet, parent)

  -- Price: 4 Byte Unsigned Fixed Width Integer
  index, price = nasdaq_psxequities_orders_ouch_v4_2.price.dissect(buffer, index, packet, parent)

  -- Time In Force: 4 Byte Unsigned Fixed Width Integer
  index, time_in_force = nasdaq_psxequities_orders_ouch_v4_2.time_in_force.dissect(buffer, index, packet, parent)

  -- Display: 1 Byte Ascii String Enum with 8 values
  index, display = nasdaq_psxequities_orders_ouch_v4_2.display.dissect(buffer, index, packet, parent)

  -- Intermarket Sweep Eligibility: 1 Byte Ascii String Enum with 3 values
  index, intermarket_sweep_eligibility = nasdaq_psxequities_orders_ouch_v4_2.intermarket_sweep_eligibility.dissect(buffer, index, packet, parent)

  -- Minimum Quantity: 4 Byte Unsigned Fixed Width Integer
  index, minimum_quantity = nasdaq_psxequities_orders_ouch_v4_2.minimum_quantity.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Replace Order Message
nasdaq_psxequities_orders_ouch_v4_2.replace_order_message.dissect = function(buffer, offset, packet, parent)
  if show.replace_order_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_psxequities_orders_ouch_v4_2.fields.replace_order_message, buffer(offset, 0))
    local index = nasdaq_psxequities_orders_ouch_v4_2.replace_order_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_psxequities_orders_ouch_v4_2.replace_order_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_psxequities_orders_ouch_v4_2.replace_order_message.fields(buffer, offset, packet, parent)
  end
end

-- Cross Type
nasdaq_psxequities_orders_ouch_v4_2.cross_type = {}

-- Size: Cross Type
nasdaq_psxequities_orders_ouch_v4_2.cross_type.size = 1

-- Display: Cross Type
nasdaq_psxequities_orders_ouch_v4_2.cross_type.display = function(value)
  if value == "N" then
    return "Cross Type: No Cross (N)"
  end
  if value == "O" then
    return "Cross Type: Opening (O)"
  end
  if value == "C" then
    return "Cross Type: Closing (C)"
  end

  return "Cross Type: Unknown("..value..")"
end

-- Dissect: Cross Type
nasdaq_psxequities_orders_ouch_v4_2.cross_type.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_psxequities_orders_ouch_v4_2.cross_type.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_psxequities_orders_ouch_v4_2.cross_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_psxequities_orders_ouch_v4_2.fields.cross_type, range, value, display)

  return offset + length, value
end

-- Capacity
nasdaq_psxequities_orders_ouch_v4_2.capacity = {}

-- Size: Capacity
nasdaq_psxequities_orders_ouch_v4_2.capacity.size = 1

-- Display: Capacity
nasdaq_psxequities_orders_ouch_v4_2.capacity.display = function(value)
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
nasdaq_psxequities_orders_ouch_v4_2.capacity.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_psxequities_orders_ouch_v4_2.capacity.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_psxequities_orders_ouch_v4_2.capacity.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_psxequities_orders_ouch_v4_2.fields.capacity, range, value, display)

  return offset + length, value
end

-- Firm
nasdaq_psxequities_orders_ouch_v4_2.firm = {}

-- Size: Firm
nasdaq_psxequities_orders_ouch_v4_2.firm.size = 4

-- Display: Firm
nasdaq_psxequities_orders_ouch_v4_2.firm.display = function(value)
  return "Firm: "..value
end

-- Dissect: Firm
nasdaq_psxequities_orders_ouch_v4_2.firm.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_psxequities_orders_ouch_v4_2.firm.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = nasdaq_psxequities_orders_ouch_v4_2.firm.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_psxequities_orders_ouch_v4_2.fields.firm, range, value, display)

  return offset + length, value
end

-- Stock
nasdaq_psxequities_orders_ouch_v4_2.stock = {}

-- Size: Stock
nasdaq_psxequities_orders_ouch_v4_2.stock.size = 8

-- Display: Stock
nasdaq_psxequities_orders_ouch_v4_2.stock.display = function(value)
  return "Stock: "..value
end

-- Dissect: Stock
nasdaq_psxequities_orders_ouch_v4_2.stock.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_psxequities_orders_ouch_v4_2.stock.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = nasdaq_psxequities_orders_ouch_v4_2.stock.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_psxequities_orders_ouch_v4_2.fields.stock, range, value, display)

  return offset + length, value
end

-- Enter Order Message
nasdaq_psxequities_orders_ouch_v4_2.enter_order_message = {}

-- Size: Enter Order Message
nasdaq_psxequities_orders_ouch_v4_2.enter_order_message.size =
  nasdaq_psxequities_orders_ouch_v4_2.order_token.size + 
  nasdaq_psxequities_orders_ouch_v4_2.buy_sell_indicator.size + 
  nasdaq_psxequities_orders_ouch_v4_2.shares.size + 
  nasdaq_psxequities_orders_ouch_v4_2.stock.size + 
  nasdaq_psxequities_orders_ouch_v4_2.price.size + 
  nasdaq_psxequities_orders_ouch_v4_2.time_in_force.size + 
  nasdaq_psxequities_orders_ouch_v4_2.firm.size + 
  nasdaq_psxequities_orders_ouch_v4_2.display.size + 
  nasdaq_psxequities_orders_ouch_v4_2.capacity.size + 
  nasdaq_psxequities_orders_ouch_v4_2.intermarket_sweep_eligibility.size + 
  nasdaq_psxequities_orders_ouch_v4_2.minimum_quantity.size + 
  nasdaq_psxequities_orders_ouch_v4_2.cross_type.size

-- Display: Enter Order Message
nasdaq_psxequities_orders_ouch_v4_2.enter_order_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Enter Order Message
nasdaq_psxequities_orders_ouch_v4_2.enter_order_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Order Token: 14 Byte Ascii String
  index, order_token = nasdaq_psxequities_orders_ouch_v4_2.order_token.dissect(buffer, index, packet, parent)

  -- Buy Sell Indicator: 1 Byte Ascii String Enum with 4 values
  index, buy_sell_indicator = nasdaq_psxequities_orders_ouch_v4_2.buy_sell_indicator.dissect(buffer, index, packet, parent)

  -- Shares: 4 Byte Unsigned Fixed Width Integer
  index, shares = nasdaq_psxequities_orders_ouch_v4_2.shares.dissect(buffer, index, packet, parent)

  -- Stock: 8 Byte Ascii String
  index, stock = nasdaq_psxequities_orders_ouch_v4_2.stock.dissect(buffer, index, packet, parent)

  -- Price: 4 Byte Unsigned Fixed Width Integer
  index, price = nasdaq_psxequities_orders_ouch_v4_2.price.dissect(buffer, index, packet, parent)

  -- Time In Force: 4 Byte Unsigned Fixed Width Integer
  index, time_in_force = nasdaq_psxequities_orders_ouch_v4_2.time_in_force.dissect(buffer, index, packet, parent)

  -- Firm: 4 Byte Ascii String
  index, firm = nasdaq_psxequities_orders_ouch_v4_2.firm.dissect(buffer, index, packet, parent)

  -- Display: 1 Byte Ascii String Enum with 8 values
  index, display = nasdaq_psxequities_orders_ouch_v4_2.display.dissect(buffer, index, packet, parent)

  -- Capacity: 1 Byte Ascii String Enum with 4 values
  index, capacity = nasdaq_psxequities_orders_ouch_v4_2.capacity.dissect(buffer, index, packet, parent)

  -- Intermarket Sweep Eligibility: 1 Byte Ascii String Enum with 3 values
  index, intermarket_sweep_eligibility = nasdaq_psxequities_orders_ouch_v4_2.intermarket_sweep_eligibility.dissect(buffer, index, packet, parent)

  -- Minimum Quantity: 4 Byte Unsigned Fixed Width Integer
  index, minimum_quantity = nasdaq_psxequities_orders_ouch_v4_2.minimum_quantity.dissect(buffer, index, packet, parent)

  -- Cross Type: 1 Byte Ascii String Enum with 3 values
  index, cross_type = nasdaq_psxequities_orders_ouch_v4_2.cross_type.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Enter Order Message
nasdaq_psxequities_orders_ouch_v4_2.enter_order_message.dissect = function(buffer, offset, packet, parent)
  if show.enter_order_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_psxequities_orders_ouch_v4_2.fields.enter_order_message, buffer(offset, 0))
    local index = nasdaq_psxequities_orders_ouch_v4_2.enter_order_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_psxequities_orders_ouch_v4_2.enter_order_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_psxequities_orders_ouch_v4_2.enter_order_message.fields(buffer, offset, packet, parent)
  end
end

-- Unsequenced Message
nasdaq_psxequities_orders_ouch_v4_2.unsequenced_message = {}

-- Size: Unsequenced Message
nasdaq_psxequities_orders_ouch_v4_2.unsequenced_message.size = function(buffer, offset, unsequenced_message_type)
  -- Size of Enter Order Message
  if unsequenced_message_type == "O" then
    return nasdaq_psxequities_orders_ouch_v4_2.enter_order_message.size
  end
  -- Size of Replace Order Message
  if unsequenced_message_type == "U" then
    return nasdaq_psxequities_orders_ouch_v4_2.replace_order_message.size
  end
  -- Size of Cancel Order Message
  if unsequenced_message_type == "U" then
    return nasdaq_psxequities_orders_ouch_v4_2.cancel_order_message.size
  end
  -- Size of Modify Order Message
  if unsequenced_message_type == "M" then
    return nasdaq_psxequities_orders_ouch_v4_2.modify_order_message.size
  end

  return 0
end

-- Display: Unsequenced Message
nasdaq_psxequities_orders_ouch_v4_2.unsequenced_message.display = function(buffer, offset, packet, parent)
  return ""
end

-- Dissect Branches: Unsequenced Message
nasdaq_psxequities_orders_ouch_v4_2.unsequenced_message.branches = function(buffer, offset, packet, parent, unsequenced_message_type)
  -- Dissect Enter Order Message
  if unsequenced_message_type == "O" then
    return nasdaq_psxequities_orders_ouch_v4_2.enter_order_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Replace Order Message
  if unsequenced_message_type == "U" then
    return nasdaq_psxequities_orders_ouch_v4_2.replace_order_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Cancel Order Message
  if unsequenced_message_type == "U" then
    return nasdaq_psxequities_orders_ouch_v4_2.cancel_order_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Modify Order Message
  if unsequenced_message_type == "M" then
    return nasdaq_psxequities_orders_ouch_v4_2.modify_order_message.dissect(buffer, offset, packet, parent)
  end

  return offset
end

-- Dissect: Unsequenced Message
nasdaq_psxequities_orders_ouch_v4_2.unsequenced_message.dissect = function(buffer, offset, packet, parent, unsequenced_message_type)
  if not show.unsequenced_message then
    return nasdaq_psxequities_orders_ouch_v4_2.unsequenced_message.branches(buffer, offset, packet, parent, unsequenced_message_type)
  end

  -- Calculate size and check that branch is not empty
  local size = nasdaq_psxequities_orders_ouch_v4_2.unsequenced_message.size(buffer, offset, unsequenced_message_type)
  if size == 0 then
    return offset
  end

  -- Dissect Element
  local range = buffer(offset, size)
  local display = nasdaq_psxequities_orders_ouch_v4_2.unsequenced_message.display(buffer, packet, parent)
  local element = parent:add(omi_nasdaq_psxequities_orders_ouch_v4_2.fields.unsequenced_message, range, display)

  return nasdaq_psxequities_orders_ouch_v4_2.unsequenced_message.branches(buffer, offset, packet, parent, unsequenced_message_type)
end

-- Unsequenced Message Type
nasdaq_psxequities_orders_ouch_v4_2.unsequenced_message_type = {}

-- Size: Unsequenced Message Type
nasdaq_psxequities_orders_ouch_v4_2.unsequenced_message_type.size = 1

-- Display: Unsequenced Message Type
nasdaq_psxequities_orders_ouch_v4_2.unsequenced_message_type.display = function(value)
  if value == "O" then
    return "Unsequenced Message Type: Enter Order Message (O)"
  end
  if value == "U" then
    return "Unsequenced Message Type: Replace Order Message (U)"
  end
  if value == "U" then
    return "Unsequenced Message Type: Cancel Order Message (U)"
  end
  if value == "M" then
    return "Unsequenced Message Type: Modify Order Message (M)"
  end

  return "Unsequenced Message Type: Unknown("..value..")"
end

-- Dissect: Unsequenced Message Type
nasdaq_psxequities_orders_ouch_v4_2.unsequenced_message_type.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_psxequities_orders_ouch_v4_2.unsequenced_message_type.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_psxequities_orders_ouch_v4_2.unsequenced_message_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_psxequities_orders_ouch_v4_2.fields.unsequenced_message_type, range, value, display)

  return offset + length, value
end

-- Unsequenced Data Packet
nasdaq_psxequities_orders_ouch_v4_2.unsequenced_data_packet = {}

-- Read runtime size of: Unsequenced Data Packet
nasdaq_psxequities_orders_ouch_v4_2.unsequenced_data_packet.size = function(buffer, offset)
  local index = offset

  -- Dependency element: Packet Length
  local packet_length = buffer(offset - 3, 2):uint()

  return packet_length - 1
end

-- Display: Unsequenced Data Packet
nasdaq_psxequities_orders_ouch_v4_2.unsequenced_data_packet.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Unsequenced Data Packet
nasdaq_psxequities_orders_ouch_v4_2.unsequenced_data_packet.fields = function(buffer, offset, packet, parent, size_of_unsequenced_data_packet)
  local index = offset

  -- Unsequenced Message Type: 1 Byte Ascii String Enum with 4 values
  index, unsequenced_message_type = nasdaq_psxequities_orders_ouch_v4_2.unsequenced_message_type.dissect(buffer, index, packet, parent)

  -- Unsequenced Message: Runtime Type with 4 branches
  index = nasdaq_psxequities_orders_ouch_v4_2.unsequenced_message.dissect(buffer, index, packet, parent, unsequenced_message_type)

  return index
end

-- Dissect: Unsequenced Data Packet
nasdaq_psxequities_orders_ouch_v4_2.unsequenced_data_packet.dissect = function(buffer, offset, packet, parent)
  -- Parse runtime size
  local size_of_unsequenced_data_packet = nasdaq_psxequities_orders_ouch_v4_2.unsequenced_data_packet.size(buffer, offset)

  -- Optionally add struct element to protocol tree
  if show.unsequenced_data_packet then
    local range = buffer(offset, size_of_unsequenced_data_packet)
    local display = nasdaq_psxequities_orders_ouch_v4_2.unsequenced_data_packet.display(buffer, packet, parent)
    parent = parent:add(omi_nasdaq_psxequities_orders_ouch_v4_2.fields.unsequenced_data_packet, range, display)
  end

  nasdaq_psxequities_orders_ouch_v4_2.unsequenced_data_packet.fields(buffer, offset, packet, parent, size_of_unsequenced_data_packet)

  return offset + size_of_unsequenced_data_packet
end

-- Requested Sequence Number
nasdaq_psxequities_orders_ouch_v4_2.requested_sequence_number = {}

-- Size: Requested Sequence Number
nasdaq_psxequities_orders_ouch_v4_2.requested_sequence_number.size = 20

-- Display: Requested Sequence Number
nasdaq_psxequities_orders_ouch_v4_2.requested_sequence_number.display = function(value)
  return "Requested Sequence Number: "..value
end

-- Dissect: Requested Sequence Number
nasdaq_psxequities_orders_ouch_v4_2.requested_sequence_number.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_psxequities_orders_ouch_v4_2.requested_sequence_number.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_psxequities_orders_ouch_v4_2.requested_sequence_number.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_psxequities_orders_ouch_v4_2.fields.requested_sequence_number, range, value, display)

  return offset + length, value
end

-- Requested Session
nasdaq_psxequities_orders_ouch_v4_2.requested_session = {}

-- Size: Requested Session
nasdaq_psxequities_orders_ouch_v4_2.requested_session.size = 10

-- Display: Requested Session
nasdaq_psxequities_orders_ouch_v4_2.requested_session.display = function(value)
  return "Requested Session: "..value
end

-- Dissect: Requested Session
nasdaq_psxequities_orders_ouch_v4_2.requested_session.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_psxequities_orders_ouch_v4_2.requested_session.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_psxequities_orders_ouch_v4_2.requested_session.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_psxequities_orders_ouch_v4_2.fields.requested_session, range, value, display)

  return offset + length, value
end

-- Password
nasdaq_psxequities_orders_ouch_v4_2.password = {}

-- Size: Password
nasdaq_psxequities_orders_ouch_v4_2.password.size = 10

-- Display: Password
nasdaq_psxequities_orders_ouch_v4_2.password.display = function(value)
  return "Password: "..value
end

-- Dissect: Password
nasdaq_psxequities_orders_ouch_v4_2.password.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_psxequities_orders_ouch_v4_2.password.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_psxequities_orders_ouch_v4_2.password.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_psxequities_orders_ouch_v4_2.fields.password, range, value, display)

  return offset + length, value
end

-- Username
nasdaq_psxequities_orders_ouch_v4_2.username = {}

-- Size: Username
nasdaq_psxequities_orders_ouch_v4_2.username.size = 6

-- Display: Username
nasdaq_psxequities_orders_ouch_v4_2.username.display = function(value)
  return "Username: "..value
end

-- Dissect: Username
nasdaq_psxequities_orders_ouch_v4_2.username.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_psxequities_orders_ouch_v4_2.username.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_psxequities_orders_ouch_v4_2.username.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_psxequities_orders_ouch_v4_2.fields.username, range, value, display)

  return offset + length, value
end

-- Login Request Packet
nasdaq_psxequities_orders_ouch_v4_2.login_request_packet = {}

-- Size: Login Request Packet
nasdaq_psxequities_orders_ouch_v4_2.login_request_packet.size =
  nasdaq_psxequities_orders_ouch_v4_2.username.size + 
  nasdaq_psxequities_orders_ouch_v4_2.password.size + 
  nasdaq_psxequities_orders_ouch_v4_2.requested_session.size + 
  nasdaq_psxequities_orders_ouch_v4_2.requested_sequence_number.size

-- Display: Login Request Packet
nasdaq_psxequities_orders_ouch_v4_2.login_request_packet.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Login Request Packet
nasdaq_psxequities_orders_ouch_v4_2.login_request_packet.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Username: 6 Byte Ascii String
  index, username = nasdaq_psxequities_orders_ouch_v4_2.username.dissect(buffer, index, packet, parent)

  -- Password: 10 Byte Ascii String
  index, password = nasdaq_psxequities_orders_ouch_v4_2.password.dissect(buffer, index, packet, parent)

  -- Requested Session: 10 Byte Ascii String
  index, requested_session = nasdaq_psxequities_orders_ouch_v4_2.requested_session.dissect(buffer, index, packet, parent)

  -- Requested Sequence Number: 20 Byte Ascii String
  index, requested_sequence_number = nasdaq_psxequities_orders_ouch_v4_2.requested_sequence_number.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Login Request Packet
nasdaq_psxequities_orders_ouch_v4_2.login_request_packet.dissect = function(buffer, offset, packet, parent)
  if show.login_request_packet then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_psxequities_orders_ouch_v4_2.fields.login_request_packet, buffer(offset, 0))
    local index = nasdaq_psxequities_orders_ouch_v4_2.login_request_packet.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_psxequities_orders_ouch_v4_2.login_request_packet.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_psxequities_orders_ouch_v4_2.login_request_packet.fields(buffer, offset, packet, parent)
  end
end

-- Timestamp
nasdaq_psxequities_orders_ouch_v4_2.timestamp = {}

-- Size: Timestamp
nasdaq_psxequities_orders_ouch_v4_2.timestamp.size = 8

-- Display: Timestamp
nasdaq_psxequities_orders_ouch_v4_2.timestamp.display = function(value)
  return "Timestamp: "..value
end

-- Dissect: Timestamp
nasdaq_psxequities_orders_ouch_v4_2.timestamp.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_psxequities_orders_ouch_v4_2.timestamp.size
  local range = buffer(offset, length)
  local value = range:uint64()
  local display = nasdaq_psxequities_orders_ouch_v4_2.timestamp.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_psxequities_orders_ouch_v4_2.fields.timestamp, range, value, display)

  return offset + length, value
end

-- Order Modified Message
nasdaq_psxequities_orders_ouch_v4_2.order_modified_message = {}

-- Size: Order Modified Message
nasdaq_psxequities_orders_ouch_v4_2.order_modified_message.size =
  nasdaq_psxequities_orders_ouch_v4_2.timestamp.size + 
  nasdaq_psxequities_orders_ouch_v4_2.order_token.size + 
  nasdaq_psxequities_orders_ouch_v4_2.buy_sell_indicator.size + 
  nasdaq_psxequities_orders_ouch_v4_2.shares.size

-- Display: Order Modified Message
nasdaq_psxequities_orders_ouch_v4_2.order_modified_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Order Modified Message
nasdaq_psxequities_orders_ouch_v4_2.order_modified_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Timestamp: 8 Byte Unsigned Fixed Width Integer
  index, timestamp = nasdaq_psxequities_orders_ouch_v4_2.timestamp.dissect(buffer, index, packet, parent)

  -- Order Token: 14 Byte Ascii String
  index, order_token = nasdaq_psxequities_orders_ouch_v4_2.order_token.dissect(buffer, index, packet, parent)

  -- Buy Sell Indicator: 1 Byte Ascii String Enum with 4 values
  index, buy_sell_indicator = nasdaq_psxequities_orders_ouch_v4_2.buy_sell_indicator.dissect(buffer, index, packet, parent)

  -- Shares: 4 Byte Unsigned Fixed Width Integer
  index, shares = nasdaq_psxequities_orders_ouch_v4_2.shares.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Order Modified Message
nasdaq_psxequities_orders_ouch_v4_2.order_modified_message.dissect = function(buffer, offset, packet, parent)
  if show.order_modified_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_psxequities_orders_ouch_v4_2.fields.order_modified_message, buffer(offset, 0))
    local index = nasdaq_psxequities_orders_ouch_v4_2.order_modified_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_psxequities_orders_ouch_v4_2.order_modified_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_psxequities_orders_ouch_v4_2.order_modified_message.fields(buffer, offset, packet, parent)
  end
end

-- Order Reference Number
nasdaq_psxequities_orders_ouch_v4_2.order_reference_number = {}

-- Size: Order Reference Number
nasdaq_psxequities_orders_ouch_v4_2.order_reference_number.size = 8

-- Display: Order Reference Number
nasdaq_psxequities_orders_ouch_v4_2.order_reference_number.display = function(value)
  return "Order Reference Number: "..value
end

-- Dissect: Order Reference Number
nasdaq_psxequities_orders_ouch_v4_2.order_reference_number.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_psxequities_orders_ouch_v4_2.order_reference_number.size
  local range = buffer(offset, length)
  local value = range:uint64()
  local display = nasdaq_psxequities_orders_ouch_v4_2.order_reference_number.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_psxequities_orders_ouch_v4_2.fields.order_reference_number, range, value, display)

  return offset + length, value
end

-- Order Priority Update Message
nasdaq_psxequities_orders_ouch_v4_2.order_priority_update_message = {}

-- Size: Order Priority Update Message
nasdaq_psxequities_orders_ouch_v4_2.order_priority_update_message.size =
  nasdaq_psxequities_orders_ouch_v4_2.timestamp.size + 
  nasdaq_psxequities_orders_ouch_v4_2.order_token.size + 
  nasdaq_psxequities_orders_ouch_v4_2.price.size + 
  nasdaq_psxequities_orders_ouch_v4_2.display.size + 
  nasdaq_psxequities_orders_ouch_v4_2.order_reference_number.size

-- Display: Order Priority Update Message
nasdaq_psxequities_orders_ouch_v4_2.order_priority_update_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Order Priority Update Message
nasdaq_psxequities_orders_ouch_v4_2.order_priority_update_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Timestamp: 8 Byte Unsigned Fixed Width Integer
  index, timestamp = nasdaq_psxequities_orders_ouch_v4_2.timestamp.dissect(buffer, index, packet, parent)

  -- Order Token: 14 Byte Ascii String
  index, order_token = nasdaq_psxequities_orders_ouch_v4_2.order_token.dissect(buffer, index, packet, parent)

  -- Price: 4 Byte Unsigned Fixed Width Integer
  index, price = nasdaq_psxequities_orders_ouch_v4_2.price.dissect(buffer, index, packet, parent)

  -- Display: 1 Byte Ascii String Enum with 8 values
  index, display = nasdaq_psxequities_orders_ouch_v4_2.display.dissect(buffer, index, packet, parent)

  -- Order Reference Number: 8 Byte Unsigned Fixed Width Integer
  index, order_reference_number = nasdaq_psxequities_orders_ouch_v4_2.order_reference_number.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Order Priority Update Message
nasdaq_psxequities_orders_ouch_v4_2.order_priority_update_message.dissect = function(buffer, offset, packet, parent)
  if show.order_priority_update_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_psxequities_orders_ouch_v4_2.fields.order_priority_update_message, buffer(offset, 0))
    local index = nasdaq_psxequities_orders_ouch_v4_2.order_priority_update_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_psxequities_orders_ouch_v4_2.order_priority_update_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_psxequities_orders_ouch_v4_2.order_priority_update_message.fields(buffer, offset, packet, parent)
  end
end

-- Cancel Reject Message
nasdaq_psxequities_orders_ouch_v4_2.cancel_reject_message = {}

-- Size: Cancel Reject Message
nasdaq_psxequities_orders_ouch_v4_2.cancel_reject_message.size =
  nasdaq_psxequities_orders_ouch_v4_2.timestamp.size + 
  nasdaq_psxequities_orders_ouch_v4_2.order_token.size

-- Display: Cancel Reject Message
nasdaq_psxequities_orders_ouch_v4_2.cancel_reject_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Cancel Reject Message
nasdaq_psxequities_orders_ouch_v4_2.cancel_reject_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Timestamp: 8 Byte Unsigned Fixed Width Integer
  index, timestamp = nasdaq_psxequities_orders_ouch_v4_2.timestamp.dissect(buffer, index, packet, parent)

  -- Order Token: 14 Byte Ascii String
  index, order_token = nasdaq_psxequities_orders_ouch_v4_2.order_token.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Cancel Reject Message
nasdaq_psxequities_orders_ouch_v4_2.cancel_reject_message.dissect = function(buffer, offset, packet, parent)
  if show.cancel_reject_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_psxequities_orders_ouch_v4_2.fields.cancel_reject_message, buffer(offset, 0))
    local index = nasdaq_psxequities_orders_ouch_v4_2.cancel_reject_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_psxequities_orders_ouch_v4_2.cancel_reject_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_psxequities_orders_ouch_v4_2.cancel_reject_message.fields(buffer, offset, packet, parent)
  end
end

-- Cancel Pending Message
nasdaq_psxequities_orders_ouch_v4_2.cancel_pending_message = {}

-- Size: Cancel Pending Message
nasdaq_psxequities_orders_ouch_v4_2.cancel_pending_message.size =
  nasdaq_psxequities_orders_ouch_v4_2.timestamp.size + 
  nasdaq_psxequities_orders_ouch_v4_2.order_token.size

-- Display: Cancel Pending Message
nasdaq_psxequities_orders_ouch_v4_2.cancel_pending_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Cancel Pending Message
nasdaq_psxequities_orders_ouch_v4_2.cancel_pending_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Timestamp: 8 Byte Unsigned Fixed Width Integer
  index, timestamp = nasdaq_psxequities_orders_ouch_v4_2.timestamp.dissect(buffer, index, packet, parent)

  -- Order Token: 14 Byte Ascii String
  index, order_token = nasdaq_psxequities_orders_ouch_v4_2.order_token.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Cancel Pending Message
nasdaq_psxequities_orders_ouch_v4_2.cancel_pending_message.dissect = function(buffer, offset, packet, parent)
  if show.cancel_pending_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_psxequities_orders_ouch_v4_2.fields.cancel_pending_message, buffer(offset, 0))
    local index = nasdaq_psxequities_orders_ouch_v4_2.cancel_pending_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_psxequities_orders_ouch_v4_2.cancel_pending_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_psxequities_orders_ouch_v4_2.cancel_pending_message.fields(buffer, offset, packet, parent)
  end
end

-- Rejected Reason
nasdaq_psxequities_orders_ouch_v4_2.rejected_reason = {}

-- Size: Rejected Reason
nasdaq_psxequities_orders_ouch_v4_2.rejected_reason.size = 1

-- Display: Rejected Reason
nasdaq_psxequities_orders_ouch_v4_2.rejected_reason.display = function(value)
  if value == "T" then
    return "Rejected Reason: Test Mode (T)"
  end
  if value == "H" then
    return "Rejected Reason: Halted (H)"
  end
  if value == "Z" then
    return "Rejected Reason: Shares Exceeds Configured Safety Threshold (Z)"
  end
  if value == "S" then
    return "Rejected Reason: Invalid Stock (S)"
  end
  if value == "D" then
    return "Rejected Reason: Invalid Display Type (D)"
  end
  if value == "C" then
    return "Rejected Reason: Nasdaq Omx Psx Is Closed (C)"
  end
  if value == "L" then
    return "Rejected Reason: Requested Firm Not Authorized For Requested Clearing Type On This Account (L)"
  end
  if value == "M" then
    return "Rejected Reason: Outside Of Permitted Times (M)"
  end
  if value == "R" then
    return "Rejected Reason: This Order Is Not Allowed In This Type Of Cross (R)"
  end
  if value == "X" then
    return "Rejected Reason: Invalid Price (X)"
  end
  if value == "N" then
    return "Rejected Reason: Invalid Minimum (N)"
  end
  if value == "W" then
    return "Rejected Reason: Invalid Midpoint (W)"
  end
  if value == "a" then
    return "Rejected Reason: Reject (a)"
  end
  if value == "b" then
    return "Rejected Reason: Easy To Borrow Etb (b)"
  end
  if value == "c" then
    return "Rejected Reason: Restricted (c)"
  end
  if value == "d" then
    return "Rejected Reason: Iso (d)"
  end
  if value == "e" then
    return "Rejected Reason: Odd (e)"
  end
  if value == "f" then
    return "Rejected Reason: Mid Point (f)"
  end
  if value == "g" then
    return "Rejected Reason: Pre Market (g)"
  end
  if value == "h" then
    return "Rejected Reason: Post Market (h)"
  end
  if value == "i" then
    return "Rejected Reason: Short Sale (i)"
  end
  if value == "j" then
    return "Rejected Reason: On Open (j)"
  end
  if value == "k" then
    return "Rejected Reason: On Close (k)"
  end
  if value == "l" then
    return "Rejected Reason: Two Sided (l)"
  end
  if value == "m" then
    return "Rejected Reason: Exceeded (m)"
  end
  if value == "n" then
    return "Rejected Reason: Exceeded (n)"
  end

  return "Rejected Reason: Unknown("..value..")"
end

-- Dissect: Rejected Reason
nasdaq_psxequities_orders_ouch_v4_2.rejected_reason.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_psxequities_orders_ouch_v4_2.rejected_reason.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_psxequities_orders_ouch_v4_2.rejected_reason.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_psxequities_orders_ouch_v4_2.fields.rejected_reason, range, value, display)

  return offset + length, value
end

-- Rejected Message
nasdaq_psxequities_orders_ouch_v4_2.rejected_message = {}

-- Size: Rejected Message
nasdaq_psxequities_orders_ouch_v4_2.rejected_message.size =
  nasdaq_psxequities_orders_ouch_v4_2.timestamp.size + 
  nasdaq_psxequities_orders_ouch_v4_2.order_token.size + 
  nasdaq_psxequities_orders_ouch_v4_2.rejected_reason.size

-- Display: Rejected Message
nasdaq_psxequities_orders_ouch_v4_2.rejected_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Rejected Message
nasdaq_psxequities_orders_ouch_v4_2.rejected_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Timestamp: 8 Byte Unsigned Fixed Width Integer
  index, timestamp = nasdaq_psxequities_orders_ouch_v4_2.timestamp.dissect(buffer, index, packet, parent)

  -- Order Token: 14 Byte Ascii String
  index, order_token = nasdaq_psxequities_orders_ouch_v4_2.order_token.dissect(buffer, index, packet, parent)

  -- Rejected Reason: 1 Byte Ascii String Enum with 26 values
  index, rejected_reason = nasdaq_psxequities_orders_ouch_v4_2.rejected_reason.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Rejected Message
nasdaq_psxequities_orders_ouch_v4_2.rejected_message.dissect = function(buffer, offset, packet, parent)
  if show.rejected_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_psxequities_orders_ouch_v4_2.fields.rejected_message, buffer(offset, 0))
    local index = nasdaq_psxequities_orders_ouch_v4_2.rejected_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_psxequities_orders_ouch_v4_2.rejected_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_psxequities_orders_ouch_v4_2.rejected_message.fields(buffer, offset, packet, parent)
  end
end

-- Broken Trade Reason
nasdaq_psxequities_orders_ouch_v4_2.broken_trade_reason = {}

-- Size: Broken Trade Reason
nasdaq_psxequities_orders_ouch_v4_2.broken_trade_reason.size = 1

-- Display: Broken Trade Reason
nasdaq_psxequities_orders_ouch_v4_2.broken_trade_reason.display = function(value)
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
nasdaq_psxequities_orders_ouch_v4_2.broken_trade_reason.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_psxequities_orders_ouch_v4_2.broken_trade_reason.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_psxequities_orders_ouch_v4_2.broken_trade_reason.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_psxequities_orders_ouch_v4_2.fields.broken_trade_reason, range, value, display)

  return offset + length, value
end

-- Match Number
nasdaq_psxequities_orders_ouch_v4_2.match_number = {}

-- Size: Match Number
nasdaq_psxequities_orders_ouch_v4_2.match_number.size = 8

-- Display: Match Number
nasdaq_psxequities_orders_ouch_v4_2.match_number.display = function(value)
  return "Match Number: "..value
end

-- Dissect: Match Number
nasdaq_psxequities_orders_ouch_v4_2.match_number.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_psxequities_orders_ouch_v4_2.match_number.size
  local range = buffer(offset, length)
  local value = range:uint64()
  local display = nasdaq_psxequities_orders_ouch_v4_2.match_number.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_psxequities_orders_ouch_v4_2.fields.match_number, range, value, display)

  return offset + length, value
end

-- Broken Trade Message
nasdaq_psxequities_orders_ouch_v4_2.broken_trade_message = {}

-- Size: Broken Trade Message
nasdaq_psxequities_orders_ouch_v4_2.broken_trade_message.size =
  nasdaq_psxequities_orders_ouch_v4_2.timestamp.size + 
  nasdaq_psxequities_orders_ouch_v4_2.order_token.size + 
  nasdaq_psxequities_orders_ouch_v4_2.match_number.size + 
  nasdaq_psxequities_orders_ouch_v4_2.broken_trade_reason.size

-- Display: Broken Trade Message
nasdaq_psxequities_orders_ouch_v4_2.broken_trade_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Broken Trade Message
nasdaq_psxequities_orders_ouch_v4_2.broken_trade_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Timestamp: 8 Byte Unsigned Fixed Width Integer
  index, timestamp = nasdaq_psxequities_orders_ouch_v4_2.timestamp.dissect(buffer, index, packet, parent)

  -- Order Token: 14 Byte Ascii String
  index, order_token = nasdaq_psxequities_orders_ouch_v4_2.order_token.dissect(buffer, index, packet, parent)

  -- Match Number: 8 Byte Unsigned Fixed Width Integer
  index, match_number = nasdaq_psxequities_orders_ouch_v4_2.match_number.dissect(buffer, index, packet, parent)

  -- Broken Trade Reason: 1 Byte Ascii String Enum with 4 values
  index, broken_trade_reason = nasdaq_psxequities_orders_ouch_v4_2.broken_trade_reason.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Broken Trade Message
nasdaq_psxequities_orders_ouch_v4_2.broken_trade_message.dissect = function(buffer, offset, packet, parent)
  if show.broken_trade_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_psxequities_orders_ouch_v4_2.fields.broken_trade_message, buffer(offset, 0))
    local index = nasdaq_psxequities_orders_ouch_v4_2.broken_trade_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_psxequities_orders_ouch_v4_2.broken_trade_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_psxequities_orders_ouch_v4_2.broken_trade_message.fields(buffer, offset, packet, parent)
  end
end

-- Liquidity Flag
nasdaq_psxequities_orders_ouch_v4_2.liquidity_flag = {}

-- Size: Liquidity Flag
nasdaq_psxequities_orders_ouch_v4_2.liquidity_flag.size = 1

-- Display: Liquidity Flag
nasdaq_psxequities_orders_ouch_v4_2.liquidity_flag.display = function(value)
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
  if value == "m" then
    return "Liquidity Flag: Removed (m)"
  end
  if value == "k" then
    return "Liquidity Flag: Added (k)"
  end
  if value == "V" then
    return "Liquidity Flag: Displayed Added Liquidity (V)"
  end

  return "Liquidity Flag: Unknown("..value..")"
end

-- Dissect: Liquidity Flag
nasdaq_psxequities_orders_ouch_v4_2.liquidity_flag.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_psxequities_orders_ouch_v4_2.liquidity_flag.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_psxequities_orders_ouch_v4_2.liquidity_flag.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_psxequities_orders_ouch_v4_2.fields.liquidity_flag, range, value, display)

  return offset + length, value
end

-- Execution Price
nasdaq_psxequities_orders_ouch_v4_2.execution_price = {}

-- Size: Execution Price
nasdaq_psxequities_orders_ouch_v4_2.execution_price.size = 4

-- Display: Execution Price
nasdaq_psxequities_orders_ouch_v4_2.execution_price.display = function(value)
  return "Execution Price: "..value
end

-- Dissect: Execution Price
nasdaq_psxequities_orders_ouch_v4_2.execution_price.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_psxequities_orders_ouch_v4_2.execution_price.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_psxequities_orders_ouch_v4_2.execution_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_psxequities_orders_ouch_v4_2.fields.execution_price, range, value, display)

  return offset + length, value
end

-- Executed Shares
nasdaq_psxequities_orders_ouch_v4_2.executed_shares = {}

-- Size: Executed Shares
nasdaq_psxequities_orders_ouch_v4_2.executed_shares.size = 4

-- Display: Executed Shares
nasdaq_psxequities_orders_ouch_v4_2.executed_shares.display = function(value)
  return "Executed Shares: "..value
end

-- Dissect: Executed Shares
nasdaq_psxequities_orders_ouch_v4_2.executed_shares.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_psxequities_orders_ouch_v4_2.executed_shares.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_psxequities_orders_ouch_v4_2.executed_shares.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_psxequities_orders_ouch_v4_2.fields.executed_shares, range, value, display)

  return offset + length, value
end

-- Executed Message
nasdaq_psxequities_orders_ouch_v4_2.executed_message = {}

-- Size: Executed Message
nasdaq_psxequities_orders_ouch_v4_2.executed_message.size =
  nasdaq_psxequities_orders_ouch_v4_2.timestamp.size + 
  nasdaq_psxequities_orders_ouch_v4_2.order_token.size + 
  nasdaq_psxequities_orders_ouch_v4_2.executed_shares.size + 
  nasdaq_psxequities_orders_ouch_v4_2.execution_price.size + 
  nasdaq_psxequities_orders_ouch_v4_2.liquidity_flag.size + 
  nasdaq_psxequities_orders_ouch_v4_2.match_number.size

-- Display: Executed Message
nasdaq_psxequities_orders_ouch_v4_2.executed_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Executed Message
nasdaq_psxequities_orders_ouch_v4_2.executed_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Timestamp: 8 Byte Unsigned Fixed Width Integer
  index, timestamp = nasdaq_psxequities_orders_ouch_v4_2.timestamp.dissect(buffer, index, packet, parent)

  -- Order Token: 14 Byte Ascii String
  index, order_token = nasdaq_psxequities_orders_ouch_v4_2.order_token.dissect(buffer, index, packet, parent)

  -- Executed Shares: 4 Byte Unsigned Fixed Width Integer
  index, executed_shares = nasdaq_psxequities_orders_ouch_v4_2.executed_shares.dissect(buffer, index, packet, parent)

  -- Execution Price: 4 Byte Unsigned Fixed Width Integer
  index, execution_price = nasdaq_psxequities_orders_ouch_v4_2.execution_price.dissect(buffer, index, packet, parent)

  -- Liquidity Flag: 1 Byte Ascii String Enum with 12 values
  index, liquidity_flag = nasdaq_psxequities_orders_ouch_v4_2.liquidity_flag.dissect(buffer, index, packet, parent)

  -- Match Number: 8 Byte Unsigned Fixed Width Integer
  index, match_number = nasdaq_psxequities_orders_ouch_v4_2.match_number.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Executed Message
nasdaq_psxequities_orders_ouch_v4_2.executed_message.dissect = function(buffer, offset, packet, parent)
  if show.executed_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_psxequities_orders_ouch_v4_2.fields.executed_message, buffer(offset, 0))
    local index = nasdaq_psxequities_orders_ouch_v4_2.executed_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_psxequities_orders_ouch_v4_2.executed_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_psxequities_orders_ouch_v4_2.executed_message.fields(buffer, offset, packet, parent)
  end
end

-- Quantity Prevented From Trading
nasdaq_psxequities_orders_ouch_v4_2.quantity_prevented_from_trading = {}

-- Size: Quantity Prevented From Trading
nasdaq_psxequities_orders_ouch_v4_2.quantity_prevented_from_trading.size = 4

-- Display: Quantity Prevented From Trading
nasdaq_psxequities_orders_ouch_v4_2.quantity_prevented_from_trading.display = function(value)
  return "Quantity Prevented From Trading: "..value
end

-- Dissect: Quantity Prevented From Trading
nasdaq_psxequities_orders_ouch_v4_2.quantity_prevented_from_trading.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_psxequities_orders_ouch_v4_2.quantity_prevented_from_trading.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_psxequities_orders_ouch_v4_2.quantity_prevented_from_trading.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_psxequities_orders_ouch_v4_2.fields.quantity_prevented_from_trading, range, value, display)

  return offset + length, value
end

-- Aiq Canceled Reason
nasdaq_psxequities_orders_ouch_v4_2.aiq_canceled_reason = {}

-- Size: Aiq Canceled Reason
nasdaq_psxequities_orders_ouch_v4_2.aiq_canceled_reason.size = 1

-- Display: Aiq Canceled Reason
nasdaq_psxequities_orders_ouch_v4_2.aiq_canceled_reason.display = function(value)
  return "Aiq Canceled Reason: "..value
end

-- Dissect: Aiq Canceled Reason
nasdaq_psxequities_orders_ouch_v4_2.aiq_canceled_reason.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_psxequities_orders_ouch_v4_2.aiq_canceled_reason.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_psxequities_orders_ouch_v4_2.aiq_canceled_reason.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_psxequities_orders_ouch_v4_2.fields.aiq_canceled_reason, range, value, display)

  return offset + length, value
end

-- Decrement Shares
nasdaq_psxequities_orders_ouch_v4_2.decrement_shares = {}

-- Size: Decrement Shares
nasdaq_psxequities_orders_ouch_v4_2.decrement_shares.size = 4

-- Display: Decrement Shares
nasdaq_psxequities_orders_ouch_v4_2.decrement_shares.display = function(value)
  return "Decrement Shares: "..value
end

-- Dissect: Decrement Shares
nasdaq_psxequities_orders_ouch_v4_2.decrement_shares.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_psxequities_orders_ouch_v4_2.decrement_shares.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_psxequities_orders_ouch_v4_2.decrement_shares.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_psxequities_orders_ouch_v4_2.fields.decrement_shares, range, value, display)

  return offset + length, value
end

-- Aiq Canceled Message
nasdaq_psxequities_orders_ouch_v4_2.aiq_canceled_message = {}

-- Size: Aiq Canceled Message
nasdaq_psxequities_orders_ouch_v4_2.aiq_canceled_message.size =
  nasdaq_psxequities_orders_ouch_v4_2.timestamp.size + 
  nasdaq_psxequities_orders_ouch_v4_2.order_token.size + 
  nasdaq_psxequities_orders_ouch_v4_2.decrement_shares.size + 
  nasdaq_psxequities_orders_ouch_v4_2.aiq_canceled_reason.size + 
  nasdaq_psxequities_orders_ouch_v4_2.quantity_prevented_from_trading.size + 
  nasdaq_psxequities_orders_ouch_v4_2.execution_price.size + 
  nasdaq_psxequities_orders_ouch_v4_2.liquidity_flag.size

-- Display: Aiq Canceled Message
nasdaq_psxequities_orders_ouch_v4_2.aiq_canceled_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Aiq Canceled Message
nasdaq_psxequities_orders_ouch_v4_2.aiq_canceled_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Timestamp: 8 Byte Unsigned Fixed Width Integer
  index, timestamp = nasdaq_psxequities_orders_ouch_v4_2.timestamp.dissect(buffer, index, packet, parent)

  -- Order Token: 14 Byte Ascii String
  index, order_token = nasdaq_psxequities_orders_ouch_v4_2.order_token.dissect(buffer, index, packet, parent)

  -- Decrement Shares: 4 Byte Unsigned Fixed Width Integer
  index, decrement_shares = nasdaq_psxequities_orders_ouch_v4_2.decrement_shares.dissect(buffer, index, packet, parent)

  -- Aiq Canceled Reason: 1 Byte Ascii String
  index, aiq_canceled_reason = nasdaq_psxequities_orders_ouch_v4_2.aiq_canceled_reason.dissect(buffer, index, packet, parent)

  -- Quantity Prevented From Trading: 4 Byte Unsigned Fixed Width Integer
  index, quantity_prevented_from_trading = nasdaq_psxequities_orders_ouch_v4_2.quantity_prevented_from_trading.dissect(buffer, index, packet, parent)

  -- Execution Price: 4 Byte Unsigned Fixed Width Integer
  index, execution_price = nasdaq_psxequities_orders_ouch_v4_2.execution_price.dissect(buffer, index, packet, parent)

  -- Liquidity Flag: 1 Byte Ascii String Enum with 12 values
  index, liquidity_flag = nasdaq_psxequities_orders_ouch_v4_2.liquidity_flag.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Aiq Canceled Message
nasdaq_psxequities_orders_ouch_v4_2.aiq_canceled_message.dissect = function(buffer, offset, packet, parent)
  if show.aiq_canceled_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_psxequities_orders_ouch_v4_2.fields.aiq_canceled_message, buffer(offset, 0))
    local index = nasdaq_psxequities_orders_ouch_v4_2.aiq_canceled_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_psxequities_orders_ouch_v4_2.aiq_canceled_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_psxequities_orders_ouch_v4_2.aiq_canceled_message.fields(buffer, offset, packet, parent)
  end
end

-- Canceled Reason
nasdaq_psxequities_orders_ouch_v4_2.canceled_reason = {}

-- Size: Canceled Reason
nasdaq_psxequities_orders_ouch_v4_2.canceled_reason.size = 1

-- Display: Canceled Reason
nasdaq_psxequities_orders_ouch_v4_2.canceled_reason.display = function(value)
  if value == "U" then
    return "Canceled Reason: User Requested Cancel (U)"
  end
  if value == "I" then
    return "Canceled Reason: Immediate Or Cancel Order (I)"
  end
  if value == "T" then
    return "Canceled Reason: Timeout (T)"
  end
  if value == "S" then
    return "Canceled Reason: Supervisory (S)"
  end
  if value == "D" then
    return "Canceled Reason: This Order Cannot Be Executed Because Of A Regulatory Restriction (D)"
  end
  if value == "Q" then
    return "Canceled Reason: Self Match Prevention (Q)"
  end
  if value == "Z" then
    return "Canceled Reason: System Cancel (Z)"
  end
  if value == "E" then
    return "Canceled Reason: Closed (E)"
  end

  return "Canceled Reason: Unknown("..value..")"
end

-- Dissect: Canceled Reason
nasdaq_psxequities_orders_ouch_v4_2.canceled_reason.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_psxequities_orders_ouch_v4_2.canceled_reason.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_psxequities_orders_ouch_v4_2.canceled_reason.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_psxequities_orders_ouch_v4_2.fields.canceled_reason, range, value, display)

  return offset + length, value
end

-- Canceled Message
nasdaq_psxequities_orders_ouch_v4_2.canceled_message = {}

-- Size: Canceled Message
nasdaq_psxequities_orders_ouch_v4_2.canceled_message.size =
  nasdaq_psxequities_orders_ouch_v4_2.timestamp.size + 
  nasdaq_psxequities_orders_ouch_v4_2.order_token.size + 
  nasdaq_psxequities_orders_ouch_v4_2.decrement_shares.size + 
  nasdaq_psxequities_orders_ouch_v4_2.canceled_reason.size

-- Display: Canceled Message
nasdaq_psxequities_orders_ouch_v4_2.canceled_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Canceled Message
nasdaq_psxequities_orders_ouch_v4_2.canceled_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Timestamp: 8 Byte Unsigned Fixed Width Integer
  index, timestamp = nasdaq_psxequities_orders_ouch_v4_2.timestamp.dissect(buffer, index, packet, parent)

  -- Order Token: 14 Byte Ascii String
  index, order_token = nasdaq_psxequities_orders_ouch_v4_2.order_token.dissect(buffer, index, packet, parent)

  -- Decrement Shares: 4 Byte Unsigned Fixed Width Integer
  index, decrement_shares = nasdaq_psxequities_orders_ouch_v4_2.decrement_shares.dissect(buffer, index, packet, parent)

  -- Canceled Reason: 1 Byte Ascii String Enum with 8 values
  index, canceled_reason = nasdaq_psxequities_orders_ouch_v4_2.canceled_reason.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Canceled Message
nasdaq_psxequities_orders_ouch_v4_2.canceled_message.dissect = function(buffer, offset, packet, parent)
  if show.canceled_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_psxequities_orders_ouch_v4_2.fields.canceled_message, buffer(offset, 0))
    local index = nasdaq_psxequities_orders_ouch_v4_2.canceled_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_psxequities_orders_ouch_v4_2.canceled_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_psxequities_orders_ouch_v4_2.canceled_message.fields(buffer, offset, packet, parent)
  end
end

-- Bbo Weight Indicator
nasdaq_psxequities_orders_ouch_v4_2.bbo_weight_indicator = {}

-- Size: Bbo Weight Indicator
nasdaq_psxequities_orders_ouch_v4_2.bbo_weight_indicator.size = 1

-- Display: Bbo Weight Indicator
nasdaq_psxequities_orders_ouch_v4_2.bbo_weight_indicator.display = function(value)
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
    return "Bbo Weight Indicator: Improves The Nbbo (N)"
  end

  return "Bbo Weight Indicator: Unknown("..value..")"
end

-- Dissect: Bbo Weight Indicator
nasdaq_psxequities_orders_ouch_v4_2.bbo_weight_indicator.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_psxequities_orders_ouch_v4_2.bbo_weight_indicator.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_psxequities_orders_ouch_v4_2.bbo_weight_indicator.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_psxequities_orders_ouch_v4_2.fields.bbo_weight_indicator, range, value, display)

  return offset + length, value
end

-- Previous Order Token
nasdaq_psxequities_orders_ouch_v4_2.previous_order_token = {}

-- Size: Previous Order Token
nasdaq_psxequities_orders_ouch_v4_2.previous_order_token.size = 14

-- Display: Previous Order Token
nasdaq_psxequities_orders_ouch_v4_2.previous_order_token.display = function(value)
  return "Previous Order Token: "..value
end

-- Dissect: Previous Order Token
nasdaq_psxequities_orders_ouch_v4_2.previous_order_token.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_psxequities_orders_ouch_v4_2.previous_order_token.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_psxequities_orders_ouch_v4_2.previous_order_token.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_psxequities_orders_ouch_v4_2.fields.previous_order_token, range, value, display)

  return offset + length, value
end

-- Order State
nasdaq_psxequities_orders_ouch_v4_2.order_state = {}

-- Size: Order State
nasdaq_psxequities_orders_ouch_v4_2.order_state.size = 1

-- Display: Order State
nasdaq_psxequities_orders_ouch_v4_2.order_state.display = function(value)
  if value == "L" then
    return "Order State: Live (L)"
  end
  if value == "D" then
    return "Order State: Dead (D)"
  end

  return "Order State: Unknown("..value..")"
end

-- Dissect: Order State
nasdaq_psxequities_orders_ouch_v4_2.order_state.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_psxequities_orders_ouch_v4_2.order_state.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_psxequities_orders_ouch_v4_2.order_state.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_psxequities_orders_ouch_v4_2.fields.order_state, range, value, display)

  return offset + length, value
end

-- Replacement Order Token Alphanumeric 14
nasdaq_psxequities_orders_ouch_v4_2.replacement_order_token_alphanumeric_14 = {}

-- Size: Replacement Order Token Alphanumeric 14
nasdaq_psxequities_orders_ouch_v4_2.replacement_order_token_alphanumeric_14.size = 14

-- Display: Replacement Order Token Alphanumeric 14
nasdaq_psxequities_orders_ouch_v4_2.replacement_order_token_alphanumeric_14.display = function(value)
  return "Replacement Order Token Alphanumeric 14: "..value
end

-- Dissect: Replacement Order Token Alphanumeric 14
nasdaq_psxequities_orders_ouch_v4_2.replacement_order_token_alphanumeric_14.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_psxequities_orders_ouch_v4_2.replacement_order_token_alphanumeric_14.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_psxequities_orders_ouch_v4_2.replacement_order_token_alphanumeric_14.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_psxequities_orders_ouch_v4_2.fields.replacement_order_token_alphanumeric_14, range, value, display)

  return offset + length, value
end

-- Replaced Message
nasdaq_psxequities_orders_ouch_v4_2.replaced_message = {}

-- Size: Replaced Message
nasdaq_psxequities_orders_ouch_v4_2.replaced_message.size =
  nasdaq_psxequities_orders_ouch_v4_2.timestamp.size + 
  nasdaq_psxequities_orders_ouch_v4_2.replacement_order_token_alphanumeric_14.size + 
  nasdaq_psxequities_orders_ouch_v4_2.buy_sell_indicator.size + 
  nasdaq_psxequities_orders_ouch_v4_2.shares.size + 
  nasdaq_psxequities_orders_ouch_v4_2.stock.size + 
  nasdaq_psxequities_orders_ouch_v4_2.price.size + 
  nasdaq_psxequities_orders_ouch_v4_2.time_in_force.size + 
  nasdaq_psxequities_orders_ouch_v4_2.firm.size + 
  nasdaq_psxequities_orders_ouch_v4_2.display.size + 
  nasdaq_psxequities_orders_ouch_v4_2.order_reference_number.size + 
  nasdaq_psxequities_orders_ouch_v4_2.capacity.size + 
  nasdaq_psxequities_orders_ouch_v4_2.intermarket_sweep_eligibility.size + 
  nasdaq_psxequities_orders_ouch_v4_2.minimum_quantity.size + 
  nasdaq_psxequities_orders_ouch_v4_2.cross_type.size + 
  nasdaq_psxequities_orders_ouch_v4_2.order_state.size + 
  nasdaq_psxequities_orders_ouch_v4_2.previous_order_token.size + 
  nasdaq_psxequities_orders_ouch_v4_2.bbo_weight_indicator.size

-- Display: Replaced Message
nasdaq_psxequities_orders_ouch_v4_2.replaced_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Replaced Message
nasdaq_psxequities_orders_ouch_v4_2.replaced_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Timestamp: 8 Byte Unsigned Fixed Width Integer
  index, timestamp = nasdaq_psxequities_orders_ouch_v4_2.timestamp.dissect(buffer, index, packet, parent)

  -- Replacement Order Token Alphanumeric 14: 14 Byte Ascii String
  index, replacement_order_token_alphanumeric_14 = nasdaq_psxequities_orders_ouch_v4_2.replacement_order_token_alphanumeric_14.dissect(buffer, index, packet, parent)

  -- Buy Sell Indicator: 1 Byte Ascii String Enum with 4 values
  index, buy_sell_indicator = nasdaq_psxequities_orders_ouch_v4_2.buy_sell_indicator.dissect(buffer, index, packet, parent)

  -- Shares: 4 Byte Unsigned Fixed Width Integer
  index, shares = nasdaq_psxequities_orders_ouch_v4_2.shares.dissect(buffer, index, packet, parent)

  -- Stock: 8 Byte Ascii String
  index, stock = nasdaq_psxequities_orders_ouch_v4_2.stock.dissect(buffer, index, packet, parent)

  -- Price: 4 Byte Unsigned Fixed Width Integer
  index, price = nasdaq_psxequities_orders_ouch_v4_2.price.dissect(buffer, index, packet, parent)

  -- Time In Force: 4 Byte Unsigned Fixed Width Integer
  index, time_in_force = nasdaq_psxequities_orders_ouch_v4_2.time_in_force.dissect(buffer, index, packet, parent)

  -- Firm: 4 Byte Ascii String
  index, firm = nasdaq_psxequities_orders_ouch_v4_2.firm.dissect(buffer, index, packet, parent)

  -- Display: 1 Byte Ascii String Enum with 8 values
  index, display = nasdaq_psxequities_orders_ouch_v4_2.display.dissect(buffer, index, packet, parent)

  -- Order Reference Number: 8 Byte Unsigned Fixed Width Integer
  index, order_reference_number = nasdaq_psxequities_orders_ouch_v4_2.order_reference_number.dissect(buffer, index, packet, parent)

  -- Capacity: 1 Byte Ascii String Enum with 4 values
  index, capacity = nasdaq_psxequities_orders_ouch_v4_2.capacity.dissect(buffer, index, packet, parent)

  -- Intermarket Sweep Eligibility: 1 Byte Ascii String Enum with 3 values
  index, intermarket_sweep_eligibility = nasdaq_psxequities_orders_ouch_v4_2.intermarket_sweep_eligibility.dissect(buffer, index, packet, parent)

  -- Minimum Quantity: 4 Byte Unsigned Fixed Width Integer
  index, minimum_quantity = nasdaq_psxequities_orders_ouch_v4_2.minimum_quantity.dissect(buffer, index, packet, parent)

  -- Cross Type: 1 Byte Ascii String Enum with 3 values
  index, cross_type = nasdaq_psxequities_orders_ouch_v4_2.cross_type.dissect(buffer, index, packet, parent)

  -- Order State: 1 Byte Ascii String Enum with 2 values
  index, order_state = nasdaq_psxequities_orders_ouch_v4_2.order_state.dissect(buffer, index, packet, parent)

  -- Previous Order Token: 14 Byte Ascii String
  index, previous_order_token = nasdaq_psxequities_orders_ouch_v4_2.previous_order_token.dissect(buffer, index, packet, parent)

  -- Bbo Weight Indicator: 1 Byte Ascii String Enum with 6 values
  index, bbo_weight_indicator = nasdaq_psxequities_orders_ouch_v4_2.bbo_weight_indicator.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Replaced Message
nasdaq_psxequities_orders_ouch_v4_2.replaced_message.dissect = function(buffer, offset, packet, parent)
  if show.replaced_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_psxequities_orders_ouch_v4_2.fields.replaced_message, buffer(offset, 0))
    local index = nasdaq_psxequities_orders_ouch_v4_2.replaced_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_psxequities_orders_ouch_v4_2.replaced_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_psxequities_orders_ouch_v4_2.replaced_message.fields(buffer, offset, packet, parent)
  end
end

-- Accepted Message
nasdaq_psxequities_orders_ouch_v4_2.accepted_message = {}

-- Size: Accepted Message
nasdaq_psxequities_orders_ouch_v4_2.accepted_message.size =
  nasdaq_psxequities_orders_ouch_v4_2.timestamp.size + 
  nasdaq_psxequities_orders_ouch_v4_2.order_token.size + 
  nasdaq_psxequities_orders_ouch_v4_2.buy_sell_indicator.size + 
  nasdaq_psxequities_orders_ouch_v4_2.shares.size + 
  nasdaq_psxequities_orders_ouch_v4_2.stock.size + 
  nasdaq_psxequities_orders_ouch_v4_2.price.size + 
  nasdaq_psxequities_orders_ouch_v4_2.time_in_force.size + 
  nasdaq_psxequities_orders_ouch_v4_2.firm.size + 
  nasdaq_psxequities_orders_ouch_v4_2.display.size + 
  nasdaq_psxequities_orders_ouch_v4_2.order_reference_number.size + 
  nasdaq_psxequities_orders_ouch_v4_2.capacity.size + 
  nasdaq_psxequities_orders_ouch_v4_2.intermarket_sweep_eligibility.size + 
  nasdaq_psxequities_orders_ouch_v4_2.minimum_quantity.size + 
  nasdaq_psxequities_orders_ouch_v4_2.cross_type.size + 
  nasdaq_psxequities_orders_ouch_v4_2.order_state.size + 
  nasdaq_psxequities_orders_ouch_v4_2.bbo_weight_indicator.size

-- Display: Accepted Message
nasdaq_psxequities_orders_ouch_v4_2.accepted_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Accepted Message
nasdaq_psxequities_orders_ouch_v4_2.accepted_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Timestamp: 8 Byte Unsigned Fixed Width Integer
  index, timestamp = nasdaq_psxequities_orders_ouch_v4_2.timestamp.dissect(buffer, index, packet, parent)

  -- Order Token: 14 Byte Ascii String
  index, order_token = nasdaq_psxequities_orders_ouch_v4_2.order_token.dissect(buffer, index, packet, parent)

  -- Buy Sell Indicator: 1 Byte Ascii String Enum with 4 values
  index, buy_sell_indicator = nasdaq_psxequities_orders_ouch_v4_2.buy_sell_indicator.dissect(buffer, index, packet, parent)

  -- Shares: 4 Byte Unsigned Fixed Width Integer
  index, shares = nasdaq_psxequities_orders_ouch_v4_2.shares.dissect(buffer, index, packet, parent)

  -- Stock: 8 Byte Ascii String
  index, stock = nasdaq_psxequities_orders_ouch_v4_2.stock.dissect(buffer, index, packet, parent)

  -- Price: 4 Byte Unsigned Fixed Width Integer
  index, price = nasdaq_psxequities_orders_ouch_v4_2.price.dissect(buffer, index, packet, parent)

  -- Time In Force: 4 Byte Unsigned Fixed Width Integer
  index, time_in_force = nasdaq_psxequities_orders_ouch_v4_2.time_in_force.dissect(buffer, index, packet, parent)

  -- Firm: 4 Byte Ascii String
  index, firm = nasdaq_psxequities_orders_ouch_v4_2.firm.dissect(buffer, index, packet, parent)

  -- Display: 1 Byte Ascii String Enum with 8 values
  index, display = nasdaq_psxequities_orders_ouch_v4_2.display.dissect(buffer, index, packet, parent)

  -- Order Reference Number: 8 Byte Unsigned Fixed Width Integer
  index, order_reference_number = nasdaq_psxequities_orders_ouch_v4_2.order_reference_number.dissect(buffer, index, packet, parent)

  -- Capacity: 1 Byte Ascii String Enum with 4 values
  index, capacity = nasdaq_psxequities_orders_ouch_v4_2.capacity.dissect(buffer, index, packet, parent)

  -- Intermarket Sweep Eligibility: 1 Byte Ascii String Enum with 3 values
  index, intermarket_sweep_eligibility = nasdaq_psxequities_orders_ouch_v4_2.intermarket_sweep_eligibility.dissect(buffer, index, packet, parent)

  -- Minimum Quantity: 4 Byte Unsigned Fixed Width Integer
  index, minimum_quantity = nasdaq_psxequities_orders_ouch_v4_2.minimum_quantity.dissect(buffer, index, packet, parent)

  -- Cross Type: 1 Byte Ascii String Enum with 3 values
  index, cross_type = nasdaq_psxequities_orders_ouch_v4_2.cross_type.dissect(buffer, index, packet, parent)

  -- Order State: 1 Byte Ascii String Enum with 2 values
  index, order_state = nasdaq_psxequities_orders_ouch_v4_2.order_state.dissect(buffer, index, packet, parent)

  -- Bbo Weight Indicator: 1 Byte Ascii String Enum with 6 values
  index, bbo_weight_indicator = nasdaq_psxequities_orders_ouch_v4_2.bbo_weight_indicator.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Accepted Message
nasdaq_psxequities_orders_ouch_v4_2.accepted_message.dissect = function(buffer, offset, packet, parent)
  if show.accepted_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_psxequities_orders_ouch_v4_2.fields.accepted_message, buffer(offset, 0))
    local index = nasdaq_psxequities_orders_ouch_v4_2.accepted_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_psxequities_orders_ouch_v4_2.accepted_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_psxequities_orders_ouch_v4_2.accepted_message.fields(buffer, offset, packet, parent)
  end
end

-- Event Code
nasdaq_psxequities_orders_ouch_v4_2.event_code = {}

-- Size: Event Code
nasdaq_psxequities_orders_ouch_v4_2.event_code.size = 1

-- Display: Event Code
nasdaq_psxequities_orders_ouch_v4_2.event_code.display = function(value)
  if value == "S" then
    return "Event Code: Start Of Day (S)"
  end
  if value == "E" then
    return "Event Code: End Of Day (E)"
  end

  return "Event Code: Unknown("..value..")"
end

-- Dissect: Event Code
nasdaq_psxequities_orders_ouch_v4_2.event_code.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_psxequities_orders_ouch_v4_2.event_code.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_psxequities_orders_ouch_v4_2.event_code.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_psxequities_orders_ouch_v4_2.fields.event_code, range, value, display)

  return offset + length, value
end

-- System Event Message
nasdaq_psxequities_orders_ouch_v4_2.system_event_message = {}

-- Size: System Event Message
nasdaq_psxequities_orders_ouch_v4_2.system_event_message.size =
  nasdaq_psxequities_orders_ouch_v4_2.timestamp.size + 
  nasdaq_psxequities_orders_ouch_v4_2.event_code.size

-- Display: System Event Message
nasdaq_psxequities_orders_ouch_v4_2.system_event_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: System Event Message
nasdaq_psxequities_orders_ouch_v4_2.system_event_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Timestamp: 8 Byte Unsigned Fixed Width Integer
  index, timestamp = nasdaq_psxequities_orders_ouch_v4_2.timestamp.dissect(buffer, index, packet, parent)

  -- Event Code: 1 Byte Ascii String Enum with 2 values
  index, event_code = nasdaq_psxequities_orders_ouch_v4_2.event_code.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: System Event Message
nasdaq_psxequities_orders_ouch_v4_2.system_event_message.dissect = function(buffer, offset, packet, parent)
  if show.system_event_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_psxequities_orders_ouch_v4_2.fields.system_event_message, buffer(offset, 0))
    local index = nasdaq_psxequities_orders_ouch_v4_2.system_event_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_psxequities_orders_ouch_v4_2.system_event_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_psxequities_orders_ouch_v4_2.system_event_message.fields(buffer, offset, packet, parent)
  end
end

-- Sequenced Message
nasdaq_psxequities_orders_ouch_v4_2.sequenced_message = {}

-- Size: Sequenced Message
nasdaq_psxequities_orders_ouch_v4_2.sequenced_message.size = function(buffer, offset, sequenced_message_type)
  -- Size of System Event Message
  if sequenced_message_type == "S" then
    return nasdaq_psxequities_orders_ouch_v4_2.system_event_message.size
  end
  -- Size of Accepted Message
  if sequenced_message_type == "A" then
    return nasdaq_psxequities_orders_ouch_v4_2.accepted_message.size
  end
  -- Size of Replaced Message
  if sequenced_message_type == "U" then
    return nasdaq_psxequities_orders_ouch_v4_2.replaced_message.size
  end
  -- Size of Canceled Message
  if sequenced_message_type == "C" then
    return nasdaq_psxequities_orders_ouch_v4_2.canceled_message.size
  end
  -- Size of Aiq Canceled Message
  if sequenced_message_type == "D" then
    return nasdaq_psxequities_orders_ouch_v4_2.aiq_canceled_message.size
  end
  -- Size of Executed Message
  if sequenced_message_type == "E" then
    return nasdaq_psxequities_orders_ouch_v4_2.executed_message.size
  end
  -- Size of Broken Trade Message
  if sequenced_message_type == "B" then
    return nasdaq_psxequities_orders_ouch_v4_2.broken_trade_message.size
  end
  -- Size of Rejected Message
  if sequenced_message_type == "J" then
    return nasdaq_psxequities_orders_ouch_v4_2.rejected_message.size
  end
  -- Size of Cancel Pending Message
  if sequenced_message_type == "P" then
    return nasdaq_psxequities_orders_ouch_v4_2.cancel_pending_message.size
  end
  -- Size of Cancel Reject Message
  if sequenced_message_type == "I" then
    return nasdaq_psxequities_orders_ouch_v4_2.cancel_reject_message.size
  end
  -- Size of Order Priority Update Message
  if sequenced_message_type == "T" then
    return nasdaq_psxequities_orders_ouch_v4_2.order_priority_update_message.size
  end
  -- Size of Order Modified Message
  if sequenced_message_type == "M" then
    return nasdaq_psxequities_orders_ouch_v4_2.order_modified_message.size
  end

  return 0
end

-- Display: Sequenced Message
nasdaq_psxequities_orders_ouch_v4_2.sequenced_message.display = function(buffer, offset, packet, parent)
  return ""
end

-- Dissect Branches: Sequenced Message
nasdaq_psxequities_orders_ouch_v4_2.sequenced_message.branches = function(buffer, offset, packet, parent, sequenced_message_type)
  -- Dissect System Event Message
  if sequenced_message_type == "S" then
    return nasdaq_psxequities_orders_ouch_v4_2.system_event_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Accepted Message
  if sequenced_message_type == "A" then
    return nasdaq_psxequities_orders_ouch_v4_2.accepted_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Replaced Message
  if sequenced_message_type == "U" then
    return nasdaq_psxequities_orders_ouch_v4_2.replaced_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Canceled Message
  if sequenced_message_type == "C" then
    return nasdaq_psxequities_orders_ouch_v4_2.canceled_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Aiq Canceled Message
  if sequenced_message_type == "D" then
    return nasdaq_psxequities_orders_ouch_v4_2.aiq_canceled_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Executed Message
  if sequenced_message_type == "E" then
    return nasdaq_psxequities_orders_ouch_v4_2.executed_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Broken Trade Message
  if sequenced_message_type == "B" then
    return nasdaq_psxequities_orders_ouch_v4_2.broken_trade_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Rejected Message
  if sequenced_message_type == "J" then
    return nasdaq_psxequities_orders_ouch_v4_2.rejected_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Cancel Pending Message
  if sequenced_message_type == "P" then
    return nasdaq_psxequities_orders_ouch_v4_2.cancel_pending_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Cancel Reject Message
  if sequenced_message_type == "I" then
    return nasdaq_psxequities_orders_ouch_v4_2.cancel_reject_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Order Priority Update Message
  if sequenced_message_type == "T" then
    return nasdaq_psxequities_orders_ouch_v4_2.order_priority_update_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Order Modified Message
  if sequenced_message_type == "M" then
    return nasdaq_psxequities_orders_ouch_v4_2.order_modified_message.dissect(buffer, offset, packet, parent)
  end

  return offset
end

-- Dissect: Sequenced Message
nasdaq_psxequities_orders_ouch_v4_2.sequenced_message.dissect = function(buffer, offset, packet, parent, sequenced_message_type)
  if not show.sequenced_message then
    return nasdaq_psxequities_orders_ouch_v4_2.sequenced_message.branches(buffer, offset, packet, parent, sequenced_message_type)
  end

  -- Calculate size and check that branch is not empty
  local size = nasdaq_psxequities_orders_ouch_v4_2.sequenced_message.size(buffer, offset, sequenced_message_type)
  if size == 0 then
    return offset
  end

  -- Dissect Element
  local range = buffer(offset, size)
  local display = nasdaq_psxequities_orders_ouch_v4_2.sequenced_message.display(buffer, packet, parent)
  local element = parent:add(omi_nasdaq_psxequities_orders_ouch_v4_2.fields.sequenced_message, range, display)

  return nasdaq_psxequities_orders_ouch_v4_2.sequenced_message.branches(buffer, offset, packet, parent, sequenced_message_type)
end

-- Sequenced Message Type
nasdaq_psxequities_orders_ouch_v4_2.sequenced_message_type = {}

-- Size: Sequenced Message Type
nasdaq_psxequities_orders_ouch_v4_2.sequenced_message_type.size = 1

-- Display: Sequenced Message Type
nasdaq_psxequities_orders_ouch_v4_2.sequenced_message_type.display = function(value)
  if value == "S" then
    return "Sequenced Message Type: System Event Message (S)"
  end
  if value == "A" then
    return "Sequenced Message Type: Accepted Message (A)"
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
    return "Sequenced Message Type: Executed Message (E)"
  end
  if value == "B" then
    return "Sequenced Message Type: Broken Trade Message (B)"
  end
  if value == "J" then
    return "Sequenced Message Type: Rejected Message (J)"
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

  return "Sequenced Message Type: Unknown("..value..")"
end

-- Dissect: Sequenced Message Type
nasdaq_psxequities_orders_ouch_v4_2.sequenced_message_type.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_psxequities_orders_ouch_v4_2.sequenced_message_type.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_psxequities_orders_ouch_v4_2.sequenced_message_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_psxequities_orders_ouch_v4_2.fields.sequenced_message_type, range, value, display)

  return offset + length, value
end

-- Sequenced Data Packet
nasdaq_psxequities_orders_ouch_v4_2.sequenced_data_packet = {}

-- Read runtime size of: Sequenced Data Packet
nasdaq_psxequities_orders_ouch_v4_2.sequenced_data_packet.size = function(buffer, offset)
  local index = offset

  -- Dependency element: Packet Length
  local packet_length = buffer(offset - 3, 2):uint()

  return packet_length - 1
end

-- Display: Sequenced Data Packet
nasdaq_psxequities_orders_ouch_v4_2.sequenced_data_packet.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Sequenced Data Packet
nasdaq_psxequities_orders_ouch_v4_2.sequenced_data_packet.fields = function(buffer, offset, packet, parent, size_of_sequenced_data_packet)
  local index = offset

  -- Sequenced Message Type: 1 Byte Ascii String Enum with 12 values
  index, sequenced_message_type = nasdaq_psxequities_orders_ouch_v4_2.sequenced_message_type.dissect(buffer, index, packet, parent)

  -- Sequenced Message: Runtime Type with 12 branches
  index = nasdaq_psxequities_orders_ouch_v4_2.sequenced_message.dissect(buffer, index, packet, parent, sequenced_message_type)

  return index
end

-- Dissect: Sequenced Data Packet
nasdaq_psxequities_orders_ouch_v4_2.sequenced_data_packet.dissect = function(buffer, offset, packet, parent)
  -- Parse runtime size
  local size_of_sequenced_data_packet = nasdaq_psxequities_orders_ouch_v4_2.sequenced_data_packet.size(buffer, offset)

  -- Optionally add struct element to protocol tree
  if show.sequenced_data_packet then
    local range = buffer(offset, size_of_sequenced_data_packet)
    local display = nasdaq_psxequities_orders_ouch_v4_2.sequenced_data_packet.display(buffer, packet, parent)
    parent = parent:add(omi_nasdaq_psxequities_orders_ouch_v4_2.fields.sequenced_data_packet, range, display)
  end

  nasdaq_psxequities_orders_ouch_v4_2.sequenced_data_packet.fields(buffer, offset, packet, parent, size_of_sequenced_data_packet)

  return offset + size_of_sequenced_data_packet
end

-- Reject Reason Code
nasdaq_psxequities_orders_ouch_v4_2.reject_reason_code = {}

-- Size: Reject Reason Code
nasdaq_psxequities_orders_ouch_v4_2.reject_reason_code.size = 1

-- Display: Reject Reason Code
nasdaq_psxequities_orders_ouch_v4_2.reject_reason_code.display = function(value)
  return "Reject Reason Code: "..value
end

-- Dissect: Reject Reason Code
nasdaq_psxequities_orders_ouch_v4_2.reject_reason_code.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_psxequities_orders_ouch_v4_2.reject_reason_code.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_psxequities_orders_ouch_v4_2.reject_reason_code.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_psxequities_orders_ouch_v4_2.fields.reject_reason_code, range, value, display)

  return offset + length, value
end

-- Login Rejected Packet
nasdaq_psxequities_orders_ouch_v4_2.login_rejected_packet = {}

-- Size: Login Rejected Packet
nasdaq_psxequities_orders_ouch_v4_2.login_rejected_packet.size =
  nasdaq_psxequities_orders_ouch_v4_2.reject_reason_code.size

-- Display: Login Rejected Packet
nasdaq_psxequities_orders_ouch_v4_2.login_rejected_packet.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Login Rejected Packet
nasdaq_psxequities_orders_ouch_v4_2.login_rejected_packet.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Reject Reason Code: 1 Byte Ascii String
  index, reject_reason_code = nasdaq_psxequities_orders_ouch_v4_2.reject_reason_code.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Login Rejected Packet
nasdaq_psxequities_orders_ouch_v4_2.login_rejected_packet.dissect = function(buffer, offset, packet, parent)
  if show.login_rejected_packet then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_psxequities_orders_ouch_v4_2.fields.login_rejected_packet, buffer(offset, 0))
    local index = nasdaq_psxequities_orders_ouch_v4_2.login_rejected_packet.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_psxequities_orders_ouch_v4_2.login_rejected_packet.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_psxequities_orders_ouch_v4_2.login_rejected_packet.fields(buffer, offset, packet, parent)
  end
end

-- Sequence Number
nasdaq_psxequities_orders_ouch_v4_2.sequence_number = {}

-- Size: Sequence Number
nasdaq_psxequities_orders_ouch_v4_2.sequence_number.size = 20

-- Display: Sequence Number
nasdaq_psxequities_orders_ouch_v4_2.sequence_number.display = function(value)
  return "Sequence Number: "..value
end

-- Dissect: Sequence Number
nasdaq_psxequities_orders_ouch_v4_2.sequence_number.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_psxequities_orders_ouch_v4_2.sequence_number.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_psxequities_orders_ouch_v4_2.sequence_number.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_psxequities_orders_ouch_v4_2.fields.sequence_number, range, value, display)

  return offset + length, value
end

-- Session
nasdaq_psxequities_orders_ouch_v4_2.session = {}

-- Size: Session
nasdaq_psxequities_orders_ouch_v4_2.session.size = 10

-- Display: Session
nasdaq_psxequities_orders_ouch_v4_2.session.display = function(value)
  return "Session: "..value
end

-- Dissect: Session
nasdaq_psxequities_orders_ouch_v4_2.session.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_psxequities_orders_ouch_v4_2.session.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_psxequities_orders_ouch_v4_2.session.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_psxequities_orders_ouch_v4_2.fields.session, range, value, display)

  return offset + length, value
end

-- Login Accepted Packet
nasdaq_psxequities_orders_ouch_v4_2.login_accepted_packet = {}

-- Size: Login Accepted Packet
nasdaq_psxequities_orders_ouch_v4_2.login_accepted_packet.size =
  nasdaq_psxequities_orders_ouch_v4_2.session.size + 
  nasdaq_psxequities_orders_ouch_v4_2.sequence_number.size

-- Display: Login Accepted Packet
nasdaq_psxequities_orders_ouch_v4_2.login_accepted_packet.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Login Accepted Packet
nasdaq_psxequities_orders_ouch_v4_2.login_accepted_packet.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Session: 10 Byte Ascii String
  index, session = nasdaq_psxequities_orders_ouch_v4_2.session.dissect(buffer, index, packet, parent)

  -- Sequence Number: 20 Byte Ascii String
  index, sequence_number = nasdaq_psxequities_orders_ouch_v4_2.sequence_number.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Login Accepted Packet
nasdaq_psxequities_orders_ouch_v4_2.login_accepted_packet.dissect = function(buffer, offset, packet, parent)
  if show.login_accepted_packet then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_psxequities_orders_ouch_v4_2.fields.login_accepted_packet, buffer(offset, 0))
    local index = nasdaq_psxequities_orders_ouch_v4_2.login_accepted_packet.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_psxequities_orders_ouch_v4_2.login_accepted_packet.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_psxequities_orders_ouch_v4_2.login_accepted_packet.fields(buffer, offset, packet, parent)
  end
end

-- Text
nasdaq_psxequities_orders_ouch_v4_2.text = {}

-- Size: Text
nasdaq_psxequities_orders_ouch_v4_2.text.size = 1

-- Display: Text
nasdaq_psxequities_orders_ouch_v4_2.text.display = function(value)
  return "Text: "..value
end

-- Dissect: Text
nasdaq_psxequities_orders_ouch_v4_2.text.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_psxequities_orders_ouch_v4_2.text.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_psxequities_orders_ouch_v4_2.text.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_psxequities_orders_ouch_v4_2.fields.text, range, value, display)

  return offset + length, value
end

-- Debug Packet
nasdaq_psxequities_orders_ouch_v4_2.debug_packet = {}

-- Size: Debug Packet
nasdaq_psxequities_orders_ouch_v4_2.debug_packet.size =
  nasdaq_psxequities_orders_ouch_v4_2.text.size

-- Display: Debug Packet
nasdaq_psxequities_orders_ouch_v4_2.debug_packet.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Debug Packet
nasdaq_psxequities_orders_ouch_v4_2.debug_packet.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Text: 1 Byte Ascii String
  index, text = nasdaq_psxequities_orders_ouch_v4_2.text.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Debug Packet
nasdaq_psxequities_orders_ouch_v4_2.debug_packet.dissect = function(buffer, offset, packet, parent)
  if show.debug_packet then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_psxequities_orders_ouch_v4_2.fields.debug_packet, buffer(offset, 0))
    local index = nasdaq_psxequities_orders_ouch_v4_2.debug_packet.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_psxequities_orders_ouch_v4_2.debug_packet.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_psxequities_orders_ouch_v4_2.debug_packet.fields(buffer, offset, packet, parent)
  end
end

-- Payload
nasdaq_psxequities_orders_ouch_v4_2.payload = {}

-- Size: Payload
nasdaq_psxequities_orders_ouch_v4_2.payload.size = function(buffer, offset, packet_type)
  -- Size of Debug Packet
  if packet_type == "+" then
    return nasdaq_psxequities_orders_ouch_v4_2.debug_packet.size
  end
  -- Size of Login Accepted Packet
  if packet_type == "A" then
    return nasdaq_psxequities_orders_ouch_v4_2.login_accepted_packet.size
  end
  -- Size of Login Rejected Packet
  if packet_type == "J" then
    return nasdaq_psxequities_orders_ouch_v4_2.login_rejected_packet.size
  end
  -- Size of Sequenced Data Packet
  if packet_type == "S" then
    return nasdaq_psxequities_orders_ouch_v4_2.sequenced_data_packet.size(buffer, offset)
  end
  -- Size of Login Request Packet
  if packet_type == "L" then
    return nasdaq_psxequities_orders_ouch_v4_2.login_request_packet.size
  end
  -- Size of Unsequenced Data Packet
  if packet_type == "U" then
    return nasdaq_psxequities_orders_ouch_v4_2.unsequenced_data_packet.size(buffer, offset)
  end

  return 0
end

-- Display: Payload
nasdaq_psxequities_orders_ouch_v4_2.payload.display = function(buffer, offset, packet, parent)
  return ""
end

-- Dissect Branches: Payload
nasdaq_psxequities_orders_ouch_v4_2.payload.branches = function(buffer, offset, packet, parent, packet_type)
  -- Dissect Debug Packet
  if packet_type == "+" then
    return nasdaq_psxequities_orders_ouch_v4_2.debug_packet.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Login Accepted Packet
  if packet_type == "A" then
    return nasdaq_psxequities_orders_ouch_v4_2.login_accepted_packet.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Login Rejected Packet
  if packet_type == "J" then
    return nasdaq_psxequities_orders_ouch_v4_2.login_rejected_packet.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Sequenced Data Packet
  if packet_type == "S" then
    return nasdaq_psxequities_orders_ouch_v4_2.sequenced_data_packet.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Login Request Packet
  if packet_type == "L" then
    return nasdaq_psxequities_orders_ouch_v4_2.login_request_packet.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Unsequenced Data Packet
  if packet_type == "U" then
    return nasdaq_psxequities_orders_ouch_v4_2.unsequenced_data_packet.dissect(buffer, offset, packet, parent)
  end

  return offset
end

-- Dissect: Payload
nasdaq_psxequities_orders_ouch_v4_2.payload.dissect = function(buffer, offset, packet, parent, packet_type)
  if not show.payload then
    return nasdaq_psxequities_orders_ouch_v4_2.payload.branches(buffer, offset, packet, parent, packet_type)
  end

  -- Calculate size and check that branch is not empty
  local size = nasdaq_psxequities_orders_ouch_v4_2.payload.size(buffer, offset, packet_type)
  if size == 0 then
    return offset
  end

  -- Dissect Element
  local range = buffer(offset, size)
  local display = nasdaq_psxequities_orders_ouch_v4_2.payload.display(buffer, packet, parent)
  local element = parent:add(omi_nasdaq_psxequities_orders_ouch_v4_2.fields.payload, range, display)

  return nasdaq_psxequities_orders_ouch_v4_2.payload.branches(buffer, offset, packet, parent, packet_type)
end

-- Packet Type
nasdaq_psxequities_orders_ouch_v4_2.packet_type = {}

-- Size: Packet Type
nasdaq_psxequities_orders_ouch_v4_2.packet_type.size = 1

-- Display: Packet Type
nasdaq_psxequities_orders_ouch_v4_2.packet_type.display = function(value)
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
nasdaq_psxequities_orders_ouch_v4_2.packet_type.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_psxequities_orders_ouch_v4_2.packet_type.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_psxequities_orders_ouch_v4_2.packet_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_psxequities_orders_ouch_v4_2.fields.packet_type, range, value, display)

  return offset + length, value
end

-- Packet Length
nasdaq_psxequities_orders_ouch_v4_2.packet_length = {}

-- Size: Packet Length
nasdaq_psxequities_orders_ouch_v4_2.packet_length.size = 2

-- Display: Packet Length
nasdaq_psxequities_orders_ouch_v4_2.packet_length.display = function(value)
  return "Packet Length: "..value
end

-- Dissect: Packet Length
nasdaq_psxequities_orders_ouch_v4_2.packet_length.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_psxequities_orders_ouch_v4_2.packet_length.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_psxequities_orders_ouch_v4_2.packet_length.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_psxequities_orders_ouch_v4_2.fields.packet_length, range, value, display)

  return offset + length, value
end

-- Packet Header
nasdaq_psxequities_orders_ouch_v4_2.packet_header = {}

-- Size: Packet Header
nasdaq_psxequities_orders_ouch_v4_2.packet_header.size =
  nasdaq_psxequities_orders_ouch_v4_2.packet_length.size + 
  nasdaq_psxequities_orders_ouch_v4_2.packet_type.size

-- Display: Packet Header
nasdaq_psxequities_orders_ouch_v4_2.packet_header.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Packet Header
nasdaq_psxequities_orders_ouch_v4_2.packet_header.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Packet Length: 2 Byte Unsigned Fixed Width Integer
  index, packet_length = nasdaq_psxequities_orders_ouch_v4_2.packet_length.dissect(buffer, index, packet, parent)

  -- Packet Type: 1 Byte Ascii String Enum with 10 values
  index, packet_type = nasdaq_psxequities_orders_ouch_v4_2.packet_type.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Packet Header
nasdaq_psxequities_orders_ouch_v4_2.packet_header.dissect = function(buffer, offset, packet, parent)
  if show.packet_header then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_psxequities_orders_ouch_v4_2.fields.packet_header, buffer(offset, 0))
    local index = nasdaq_psxequities_orders_ouch_v4_2.packet_header.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_psxequities_orders_ouch_v4_2.packet_header.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_psxequities_orders_ouch_v4_2.packet_header.fields(buffer, offset, packet, parent)
  end
end

-- Soup Bin Tcp Packet
nasdaq_psxequities_orders_ouch_v4_2.soup_bin_tcp_packet = {}

-- Display: Soup Bin Tcp Packet
nasdaq_psxequities_orders_ouch_v4_2.soup_bin_tcp_packet.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Soup Bin Tcp Packet
nasdaq_psxequities_orders_ouch_v4_2.soup_bin_tcp_packet.fields = function(buffer, offset, packet, parent, size_of_soup_bin_tcp_packet)
  local index = offset

  -- Packet Header: Struct of 2 fields
  index, packet_header = nasdaq_psxequities_orders_ouch_v4_2.packet_header.dissect(buffer, index, packet, parent)

  -- Dependency element: Packet Type
  local packet_type = buffer(index - 1, 1):string()

  -- Payload: Runtime Type with 6 branches
  index = nasdaq_psxequities_orders_ouch_v4_2.payload.dissect(buffer, index, packet, parent, packet_type)

  return index
end

-- Dissect: Soup Bin Tcp Packet
nasdaq_psxequities_orders_ouch_v4_2.soup_bin_tcp_packet.dissect = function(buffer, offset, packet, parent, size_of_soup_bin_tcp_packet)
  local index = offset + size_of_soup_bin_tcp_packet

  -- Optionally add group/struct element to protocol tree
  if show.soup_bin_tcp_packet then
    parent = parent:add(omi_nasdaq_psxequities_orders_ouch_v4_2.fields.soup_bin_tcp_packet, buffer(offset, 0))
    local current = nasdaq_psxequities_orders_ouch_v4_2.soup_bin_tcp_packet.fields(buffer, offset, packet, parent, size_of_soup_bin_tcp_packet)
    parent:set_len(size_of_soup_bin_tcp_packet)
    local display = nasdaq_psxequities_orders_ouch_v4_2.soup_bin_tcp_packet.display(buffer, packet, parent)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    nasdaq_psxequities_orders_ouch_v4_2.soup_bin_tcp_packet.fields(buffer, offset, packet, parent, size_of_soup_bin_tcp_packet)

    return index
  end
end

-- Remaining Bytes For: Soup Bin Tcp Packet
local soup_bin_tcp_packet_bytes_remaining = function(buffer, index, available)
  -- Calculate the number of bytes remaining
  local remaining = available - index

  -- Check if packet size can be read
  if remaining < nasdaq_psxequities_orders_ouch_v4_2.packet_header.size then
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
nasdaq_psxequities_orders_ouch_v4_2.packet = {}

-- Dissect Packet
nasdaq_psxequities_orders_ouch_v4_2.packet.dissect = function(buffer, packet, parent)
  local index = 0

  -- Dependency for Soup Bin Tcp Packet
  local end_of_payload = buffer:len()

  -- Soup Bin Tcp Packet: Struct of 2 fields
  while index < end_of_payload do

    -- Are minimum number of bytes are available?
    local available, size_of_soup_bin_tcp_packet = soup_bin_tcp_packet_bytes_remaining(buffer, index, end_of_payload)

    if available > 0 then
      index = nasdaq_psxequities_orders_ouch_v4_2.soup_bin_tcp_packet.dissect(buffer, index, packet, parent, size_of_soup_bin_tcp_packet)
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
function omi_nasdaq_psxequities_orders_ouch_v4_2.init()
end

-- Dissector for Nasdaq PsxEquities Orders Ouch 4.2
function omi_nasdaq_psxequities_orders_ouch_v4_2.dissector(buffer, packet, parent)

  -- Set protocol name
  packet.cols.protocol = omi_nasdaq_psxequities_orders_ouch_v4_2.name

  -- Dissect protocol
  local protocol = parent:add(omi_nasdaq_psxequities_orders_ouch_v4_2, buffer(), omi_nasdaq_psxequities_orders_ouch_v4_2.description, "("..buffer:len().." Bytes)")
  return nasdaq_psxequities_orders_ouch_v4_2.packet.dissect(buffer, packet, protocol)
end

-- Register With Tcp Table
local tcp_table = DissectorTable.get("tcp.port")
tcp_table:add(65333, omi_nasdaq_psxequities_orders_ouch_v4_2)


-----------------------------------------------------------------------
-- Protocol Heuristics
-----------------------------------------------------------------------

-- Verify size of packet
nasdaq_psxequities_orders_ouch_v4_2.packet.requiredsize = function(buffer)

  return true
end

-- Dissector Heuristic for Nasdaq PsxEquities Orders Ouch 4.2
local function omi_nasdaq_psxequities_orders_ouch_v4_2_heuristic(buffer, packet, parent)
  -- Verify packet length
  if not nasdaq_psxequities_orders_ouch_v4_2.packet.requiredsize(buffer) then return false end

  -- Protocol is valid, set conversation and dissect this packet
  packet.conversation = omi_nasdaq_psxequities_orders_ouch_v4_2
  omi_nasdaq_psxequities_orders_ouch_v4_2.dissector(buffer, packet, parent)

  return true
end

-- Register Heuristic for Nasdaq PsxEquities Orders Ouch 4.2
omi_nasdaq_psxequities_orders_ouch_v4_2:register_heuristic("tcp", omi_nasdaq_psxequities_orders_ouch_v4_2_heuristic)

-----------------------------------------------------------------------
-- Lua dissectors are an easily edited and modified cross-platform dissection solution.
-- Feel free to modify. Enjoy.
-----------------------------------------------------------------------
-- 
-- Protocol:
--   Organization: National Association of Securities Dealers Automated Quotations
--   Version: 4.2
--   Date: Monday, July 8, 2019
--   Specification: psxouch42.pdf
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
