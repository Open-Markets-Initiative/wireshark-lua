-----------------------------------------------------------------------
-- Lua Script Wireshark Dissector
-- 
-- Please see end of file for rules and regulations
-----------------------------------------------------------------------

-- Jnx Equities Pts Ouch 1.12 Protocol
local omi_jnx_equities_pts_ouch_v1_12 = Proto("Jnx.Equities.Pts.Ouch.v1.12.Lua", "Jnx Equities Pts Ouch 1.12")

-- Protocol table
local jnx_equities_pts_ouch_v1_12 = {}

-----------------------------------------------------------------------
-- Declare Protocol Fields
-----------------------------------------------------------------------

-- Jnx Equities Pts Ouch 1.12 Fields
omi_jnx_equities_pts_ouch_v1_12.fields.buy_sell_indicator = ProtoField.new("Buy Sell Indicator", "jnx.equities.pts.ouch.v1.12.buysellindicator", ftypes.STRING)
omi_jnx_equities_pts_ouch_v1_12.fields.capacity = ProtoField.new("Capacity", "jnx.equities.pts.ouch.v1.12.capacity", ftypes.STRING)
omi_jnx_equities_pts_ouch_v1_12.fields.cash_margin_type = ProtoField.new("Cash Margin Type", "jnx.equities.pts.ouch.v1.12.cashmargintype", ftypes.STRING)
omi_jnx_equities_pts_ouch_v1_12.fields.client_reference = ProtoField.new("Client Reference", "jnx.equities.pts.ouch.v1.12.clientreference", ftypes.STRING)
omi_jnx_equities_pts_ouch_v1_12.fields.debug_packet = ProtoField.new("Debug Packet", "jnx.equities.pts.ouch.v1.12.debugpacket", ftypes.STRING)
omi_jnx_equities_pts_ouch_v1_12.fields.decrement_quantity = ProtoField.new("Decrement Quantity", "jnx.equities.pts.ouch.v1.12.decrementquantity", ftypes.UINT32)
omi_jnx_equities_pts_ouch_v1_12.fields.display = ProtoField.new("Display", "jnx.equities.pts.ouch.v1.12.display", ftypes.STRING)
omi_jnx_equities_pts_ouch_v1_12.fields.executed_quantity = ProtoField.new("Executed Quantity", "jnx.equities.pts.ouch.v1.12.executedquantity", ftypes.UINT32)
omi_jnx_equities_pts_ouch_v1_12.fields.execution_price = ProtoField.new("Execution Price", "jnx.equities.pts.ouch.v1.12.executionprice", ftypes.DOUBLE)
omi_jnx_equities_pts_ouch_v1_12.fields.existing_order_token = ProtoField.new("Existing Order Token", "jnx.equities.pts.ouch.v1.12.existingordertoken", ftypes.UINT32)
omi_jnx_equities_pts_ouch_v1_12.fields.firm_id = ProtoField.new("Firm Id", "jnx.equities.pts.ouch.v1.12.firmid", ftypes.UINT32)
omi_jnx_equities_pts_ouch_v1_12.fields.group = ProtoField.new("Group", "jnx.equities.pts.ouch.v1.12.group", ftypes.STRING)
omi_jnx_equities_pts_ouch_v1_12.fields.liquidity_indicator = ProtoField.new("Liquidity Indicator", "jnx.equities.pts.ouch.v1.12.liquidityindicator", ftypes.STRING)
omi_jnx_equities_pts_ouch_v1_12.fields.login_accepted_packet = ProtoField.new("Login Accepted Packet", "jnx.equities.pts.ouch.v1.12.loginacceptedpacket", ftypes.STRING)
omi_jnx_equities_pts_ouch_v1_12.fields.login_rejected_packet = ProtoField.new("Login Rejected Packet", "jnx.equities.pts.ouch.v1.12.loginrejectedpacket", ftypes.STRING)
omi_jnx_equities_pts_ouch_v1_12.fields.login_request_packet = ProtoField.new("Login Request Packet", "jnx.equities.pts.ouch.v1.12.loginrequestpacket", ftypes.STRING)
omi_jnx_equities_pts_ouch_v1_12.fields.match_number = ProtoField.new("Match Number", "jnx.equities.pts.ouch.v1.12.matchnumber", ftypes.UINT64)
omi_jnx_equities_pts_ouch_v1_12.fields.minimum_quantity = ProtoField.new("Minimum Quantity", "jnx.equities.pts.ouch.v1.12.minimumquantity", ftypes.UINT32)
omi_jnx_equities_pts_ouch_v1_12.fields.order_canceled_reason = ProtoField.new("Order Canceled Reason", "jnx.equities.pts.ouch.v1.12.ordercanceledreason", ftypes.STRING)
omi_jnx_equities_pts_ouch_v1_12.fields.order_classification = ProtoField.new("Order Classification", "jnx.equities.pts.ouch.v1.12.orderclassification", ftypes.STRING)
omi_jnx_equities_pts_ouch_v1_12.fields.order_number = ProtoField.new("Order Number", "jnx.equities.pts.ouch.v1.12.ordernumber", ftypes.UINT64)
omi_jnx_equities_pts_ouch_v1_12.fields.order_rejected_reason = ProtoField.new("Order Rejected Reason", "jnx.equities.pts.ouch.v1.12.orderrejectedreason", ftypes.STRING)
omi_jnx_equities_pts_ouch_v1_12.fields.order_state = ProtoField.new("Order State", "jnx.equities.pts.ouch.v1.12.orderstate", ftypes.STRING)
omi_jnx_equities_pts_ouch_v1_12.fields.order_token = ProtoField.new("Order Token", "jnx.equities.pts.ouch.v1.12.ordertoken", ftypes.UINT32)
omi_jnx_equities_pts_ouch_v1_12.fields.orderbook_id = ProtoField.new("Orderbook Id", "jnx.equities.pts.ouch.v1.12.orderbookid", ftypes.STRING)
omi_jnx_equities_pts_ouch_v1_12.fields.packet = ProtoField.new("Packet", "jnx.equities.pts.ouch.v1.12.packet", ftypes.STRING)
omi_jnx_equities_pts_ouch_v1_12.fields.packet_header = ProtoField.new("Packet Header", "jnx.equities.pts.ouch.v1.12.packetheader", ftypes.STRING)
omi_jnx_equities_pts_ouch_v1_12.fields.packet_length = ProtoField.new("Packet Length", "jnx.equities.pts.ouch.v1.12.packetlength", ftypes.UINT16)
omi_jnx_equities_pts_ouch_v1_12.fields.packet_type = ProtoField.new("Packet Type", "jnx.equities.pts.ouch.v1.12.packettype", ftypes.STRING)
omi_jnx_equities_pts_ouch_v1_12.fields.password = ProtoField.new("Password", "jnx.equities.pts.ouch.v1.12.password", ftypes.STRING)
omi_jnx_equities_pts_ouch_v1_12.fields.payload = ProtoField.new("Payload", "jnx.equities.pts.ouch.v1.12.payload", ftypes.STRING)
omi_jnx_equities_pts_ouch_v1_12.fields.previous_order_token = ProtoField.new("Previous Order Token", "jnx.equities.pts.ouch.v1.12.previousordertoken", ftypes.UINT32)
omi_jnx_equities_pts_ouch_v1_12.fields.price = ProtoField.new("Price", "jnx.equities.pts.ouch.v1.12.price", ftypes.DOUBLE)
omi_jnx_equities_pts_ouch_v1_12.fields.quantity = ProtoField.new("Quantity", "jnx.equities.pts.ouch.v1.12.quantity", ftypes.UINT32)
omi_jnx_equities_pts_ouch_v1_12.fields.quantity_prevented_from_trading = ProtoField.new("Quantity Prevented From Trading", "jnx.equities.pts.ouch.v1.12.quantitypreventedfromtrading", ftypes.UINT32)
omi_jnx_equities_pts_ouch_v1_12.fields.reject_reason_code = ProtoField.new("Reject Reason Code", "jnx.equities.pts.ouch.v1.12.rejectreasoncode", ftypes.STRING)
omi_jnx_equities_pts_ouch_v1_12.fields.replacement_order_token = ProtoField.new("Replacement Order Token", "jnx.equities.pts.ouch.v1.12.replacementordertoken", ftypes.UINT32)
omi_jnx_equities_pts_ouch_v1_12.fields.requested_sequence_number = ProtoField.new("Requested Sequence Number", "jnx.equities.pts.ouch.v1.12.requestedsequencenumber", ftypes.STRING)
omi_jnx_equities_pts_ouch_v1_12.fields.requested_session = ProtoField.new("Requested Session", "jnx.equities.pts.ouch.v1.12.requestedsession", ftypes.STRING)
omi_jnx_equities_pts_ouch_v1_12.fields.sequence_number = ProtoField.new("Sequence Number", "jnx.equities.pts.ouch.v1.12.sequencenumber", ftypes.STRING)
omi_jnx_equities_pts_ouch_v1_12.fields.sequenced_data_packet = ProtoField.new("Sequenced Data Packet", "jnx.equities.pts.ouch.v1.12.sequenceddatapacket", ftypes.STRING)
omi_jnx_equities_pts_ouch_v1_12.fields.sequenced_message = ProtoField.new("Sequenced Message", "jnx.equities.pts.ouch.v1.12.sequencedmessage", ftypes.STRING)
omi_jnx_equities_pts_ouch_v1_12.fields.sequenced_message_type = ProtoField.new("Sequenced Message Type", "jnx.equities.pts.ouch.v1.12.sequencedmessagetype", ftypes.STRING)
omi_jnx_equities_pts_ouch_v1_12.fields.session = ProtoField.new("Session", "jnx.equities.pts.ouch.v1.12.session", ftypes.STRING)
omi_jnx_equities_pts_ouch_v1_12.fields.soup_bin_tcp_packet = ProtoField.new("Soup Bin Tcp Packet", "jnx.equities.pts.ouch.v1.12.soupbintcppacket", ftypes.STRING)
omi_jnx_equities_pts_ouch_v1_12.fields.system_event = ProtoField.new("System Event", "jnx.equities.pts.ouch.v1.12.systemevent", ftypes.STRING)
omi_jnx_equities_pts_ouch_v1_12.fields.text = ProtoField.new("Text", "jnx.equities.pts.ouch.v1.12.text", ftypes.STRING)
omi_jnx_equities_pts_ouch_v1_12.fields.time_in_force = ProtoField.new("Time In Force", "jnx.equities.pts.ouch.v1.12.timeinforce", ftypes.UINT32)
omi_jnx_equities_pts_ouch_v1_12.fields.timestamp = ProtoField.new("Timestamp", "jnx.equities.pts.ouch.v1.12.timestamp", ftypes.UINT64)
omi_jnx_equities_pts_ouch_v1_12.fields.unsequenced_data_packet = ProtoField.new("Unsequenced Data Packet", "jnx.equities.pts.ouch.v1.12.unsequenceddatapacket", ftypes.STRING)
omi_jnx_equities_pts_ouch_v1_12.fields.unsequenced_message = ProtoField.new("Unsequenced Message", "jnx.equities.pts.ouch.v1.12.unsequencedmessage", ftypes.STRING)
omi_jnx_equities_pts_ouch_v1_12.fields.unsequenced_message_type = ProtoField.new("Unsequenced Message Type", "jnx.equities.pts.ouch.v1.12.unsequencedmessagetype", ftypes.STRING)
omi_jnx_equities_pts_ouch_v1_12.fields.username = ProtoField.new("Username", "jnx.equities.pts.ouch.v1.12.username", ftypes.STRING)

-- Jnx Equities Pts Ouch 1.12 messages
omi_jnx_equities_pts_ouch_v1_12.fields.cancel_order_message = ProtoField.new("Cancel Order Message", "jnx.equities.pts.ouch.v1.12.cancelordermessage", ftypes.STRING)
omi_jnx_equities_pts_ouch_v1_12.fields.enter_order_message = ProtoField.new("Enter Order Message", "jnx.equities.pts.ouch.v1.12.enterordermessage", ftypes.STRING)
omi_jnx_equities_pts_ouch_v1_12.fields.order_accepted_message = ProtoField.new("Order Accepted Message", "jnx.equities.pts.ouch.v1.12.orderacceptedmessage", ftypes.STRING)
omi_jnx_equities_pts_ouch_v1_12.fields.order_aiq_canceled_message = ProtoField.new("Order Aiq Canceled Message", "jnx.equities.pts.ouch.v1.12.orderaiqcanceledmessage", ftypes.STRING)
omi_jnx_equities_pts_ouch_v1_12.fields.order_canceled_message = ProtoField.new("Order Canceled Message", "jnx.equities.pts.ouch.v1.12.ordercanceledmessage", ftypes.STRING)
omi_jnx_equities_pts_ouch_v1_12.fields.order_executed_message = ProtoField.new("Order Executed Message", "jnx.equities.pts.ouch.v1.12.orderexecutedmessage", ftypes.STRING)
omi_jnx_equities_pts_ouch_v1_12.fields.order_rejected_message = ProtoField.new("Order Rejected Message", "jnx.equities.pts.ouch.v1.12.orderrejectedmessage", ftypes.STRING)
omi_jnx_equities_pts_ouch_v1_12.fields.order_replaced_message = ProtoField.new("Order Replaced Message", "jnx.equities.pts.ouch.v1.12.orderreplacedmessage", ftypes.STRING)
omi_jnx_equities_pts_ouch_v1_12.fields.replace_order_message = ProtoField.new("Replace Order Message", "jnx.equities.pts.ouch.v1.12.replaceordermessage", ftypes.STRING)
omi_jnx_equities_pts_ouch_v1_12.fields.system_event_message = ProtoField.new("System Event Message", "jnx.equities.pts.ouch.v1.12.systemeventmessage", ftypes.STRING)

-----------------------------------------------------------------------
-- Declare Dissection Options
-----------------------------------------------------------------------

local show = {}

-- Jnx Equities Pts Ouch 1.12 Element Dissection Options
show.cancel_order_message = true
show.debug_packet = true
show.enter_order_message = true
show.login_accepted_packet = true
show.login_rejected_packet = true
show.login_request_packet = true
show.order_accepted_message = true
show.order_aiq_canceled_message = true
show.order_canceled_message = true
show.order_executed_message = true
show.order_rejected_message = true
show.order_replaced_message = true
show.packet = true
show.packet_header = true
show.replace_order_message = true
show.sequenced_data_packet = true
show.soup_bin_tcp_packet = true
show.system_event_message = true
show.unsequenced_data_packet = true
show.payload = false
show.sequenced_message = false
show.unsequenced_message = false

-- Register Jnx Equities Pts Ouch 1.12 Show Options
omi_jnx_equities_pts_ouch_v1_12.prefs.show_cancel_order_message = Pref.bool("Show Cancel Order Message", show.cancel_order_message, "Parse and add Cancel Order Message to protocol tree")
omi_jnx_equities_pts_ouch_v1_12.prefs.show_debug_packet = Pref.bool("Show Debug Packet", show.debug_packet, "Parse and add Debug Packet to protocol tree")
omi_jnx_equities_pts_ouch_v1_12.prefs.show_enter_order_message = Pref.bool("Show Enter Order Message", show.enter_order_message, "Parse and add Enter Order Message to protocol tree")
omi_jnx_equities_pts_ouch_v1_12.prefs.show_login_accepted_packet = Pref.bool("Show Login Accepted Packet", show.login_accepted_packet, "Parse and add Login Accepted Packet to protocol tree")
omi_jnx_equities_pts_ouch_v1_12.prefs.show_login_rejected_packet = Pref.bool("Show Login Rejected Packet", show.login_rejected_packet, "Parse and add Login Rejected Packet to protocol tree")
omi_jnx_equities_pts_ouch_v1_12.prefs.show_login_request_packet = Pref.bool("Show Login Request Packet", show.login_request_packet, "Parse and add Login Request Packet to protocol tree")
omi_jnx_equities_pts_ouch_v1_12.prefs.show_order_accepted_message = Pref.bool("Show Order Accepted Message", show.order_accepted_message, "Parse and add Order Accepted Message to protocol tree")
omi_jnx_equities_pts_ouch_v1_12.prefs.show_order_aiq_canceled_message = Pref.bool("Show Order Aiq Canceled Message", show.order_aiq_canceled_message, "Parse and add Order Aiq Canceled Message to protocol tree")
omi_jnx_equities_pts_ouch_v1_12.prefs.show_order_canceled_message = Pref.bool("Show Order Canceled Message", show.order_canceled_message, "Parse and add Order Canceled Message to protocol tree")
omi_jnx_equities_pts_ouch_v1_12.prefs.show_order_executed_message = Pref.bool("Show Order Executed Message", show.order_executed_message, "Parse and add Order Executed Message to protocol tree")
omi_jnx_equities_pts_ouch_v1_12.prefs.show_order_rejected_message = Pref.bool("Show Order Rejected Message", show.order_rejected_message, "Parse and add Order Rejected Message to protocol tree")
omi_jnx_equities_pts_ouch_v1_12.prefs.show_order_replaced_message = Pref.bool("Show Order Replaced Message", show.order_replaced_message, "Parse and add Order Replaced Message to protocol tree")
omi_jnx_equities_pts_ouch_v1_12.prefs.show_packet = Pref.bool("Show Packet", show.packet, "Parse and add Packet to protocol tree")
omi_jnx_equities_pts_ouch_v1_12.prefs.show_packet_header = Pref.bool("Show Packet Header", show.packet_header, "Parse and add Packet Header to protocol tree")
omi_jnx_equities_pts_ouch_v1_12.prefs.show_replace_order_message = Pref.bool("Show Replace Order Message", show.replace_order_message, "Parse and add Replace Order Message to protocol tree")
omi_jnx_equities_pts_ouch_v1_12.prefs.show_sequenced_data_packet = Pref.bool("Show Sequenced Data Packet", show.sequenced_data_packet, "Parse and add Sequenced Data Packet to protocol tree")
omi_jnx_equities_pts_ouch_v1_12.prefs.show_soup_bin_tcp_packet = Pref.bool("Show Soup Bin Tcp Packet", show.soup_bin_tcp_packet, "Parse and add Soup Bin Tcp Packet to protocol tree")
omi_jnx_equities_pts_ouch_v1_12.prefs.show_system_event_message = Pref.bool("Show System Event Message", show.system_event_message, "Parse and add System Event Message to protocol tree")
omi_jnx_equities_pts_ouch_v1_12.prefs.show_unsequenced_data_packet = Pref.bool("Show Unsequenced Data Packet", show.unsequenced_data_packet, "Parse and add Unsequenced Data Packet to protocol tree")
omi_jnx_equities_pts_ouch_v1_12.prefs.show_payload = Pref.bool("Show Payload", show.payload, "Parse and add Payload to protocol tree")
omi_jnx_equities_pts_ouch_v1_12.prefs.show_sequenced_message = Pref.bool("Show Sequenced Message", show.sequenced_message, "Parse and add Sequenced Message to protocol tree")
omi_jnx_equities_pts_ouch_v1_12.prefs.show_unsequenced_message = Pref.bool("Show Unsequenced Message", show.unsequenced_message, "Parse and add Unsequenced Message to protocol tree")

-- Handle changed preferences
function omi_jnx_equities_pts_ouch_v1_12.prefs_changed()
  local changed = false

  -- Check if show options have changed
  if show.cancel_order_message ~= omi_jnx_equities_pts_ouch_v1_12.prefs.show_cancel_order_message then
    show.cancel_order_message = omi_jnx_equities_pts_ouch_v1_12.prefs.show_cancel_order_message
    changed = true
  end
  if show.debug_packet ~= omi_jnx_equities_pts_ouch_v1_12.prefs.show_debug_packet then
    show.debug_packet = omi_jnx_equities_pts_ouch_v1_12.prefs.show_debug_packet
    changed = true
  end
  if show.enter_order_message ~= omi_jnx_equities_pts_ouch_v1_12.prefs.show_enter_order_message then
    show.enter_order_message = omi_jnx_equities_pts_ouch_v1_12.prefs.show_enter_order_message
    changed = true
  end
  if show.login_accepted_packet ~= omi_jnx_equities_pts_ouch_v1_12.prefs.show_login_accepted_packet then
    show.login_accepted_packet = omi_jnx_equities_pts_ouch_v1_12.prefs.show_login_accepted_packet
    changed = true
  end
  if show.login_rejected_packet ~= omi_jnx_equities_pts_ouch_v1_12.prefs.show_login_rejected_packet then
    show.login_rejected_packet = omi_jnx_equities_pts_ouch_v1_12.prefs.show_login_rejected_packet
    changed = true
  end
  if show.login_request_packet ~= omi_jnx_equities_pts_ouch_v1_12.prefs.show_login_request_packet then
    show.login_request_packet = omi_jnx_equities_pts_ouch_v1_12.prefs.show_login_request_packet
    changed = true
  end
  if show.order_accepted_message ~= omi_jnx_equities_pts_ouch_v1_12.prefs.show_order_accepted_message then
    show.order_accepted_message = omi_jnx_equities_pts_ouch_v1_12.prefs.show_order_accepted_message
    changed = true
  end
  if show.order_aiq_canceled_message ~= omi_jnx_equities_pts_ouch_v1_12.prefs.show_order_aiq_canceled_message then
    show.order_aiq_canceled_message = omi_jnx_equities_pts_ouch_v1_12.prefs.show_order_aiq_canceled_message
    changed = true
  end
  if show.order_canceled_message ~= omi_jnx_equities_pts_ouch_v1_12.prefs.show_order_canceled_message then
    show.order_canceled_message = omi_jnx_equities_pts_ouch_v1_12.prefs.show_order_canceled_message
    changed = true
  end
  if show.order_executed_message ~= omi_jnx_equities_pts_ouch_v1_12.prefs.show_order_executed_message then
    show.order_executed_message = omi_jnx_equities_pts_ouch_v1_12.prefs.show_order_executed_message
    changed = true
  end
  if show.order_rejected_message ~= omi_jnx_equities_pts_ouch_v1_12.prefs.show_order_rejected_message then
    show.order_rejected_message = omi_jnx_equities_pts_ouch_v1_12.prefs.show_order_rejected_message
    changed = true
  end
  if show.order_replaced_message ~= omi_jnx_equities_pts_ouch_v1_12.prefs.show_order_replaced_message then
    show.order_replaced_message = omi_jnx_equities_pts_ouch_v1_12.prefs.show_order_replaced_message
    changed = true
  end
  if show.packet ~= omi_jnx_equities_pts_ouch_v1_12.prefs.show_packet then
    show.packet = omi_jnx_equities_pts_ouch_v1_12.prefs.show_packet
    changed = true
  end
  if show.packet_header ~= omi_jnx_equities_pts_ouch_v1_12.prefs.show_packet_header then
    show.packet_header = omi_jnx_equities_pts_ouch_v1_12.prefs.show_packet_header
    changed = true
  end
  if show.replace_order_message ~= omi_jnx_equities_pts_ouch_v1_12.prefs.show_replace_order_message then
    show.replace_order_message = omi_jnx_equities_pts_ouch_v1_12.prefs.show_replace_order_message
    changed = true
  end
  if show.sequenced_data_packet ~= omi_jnx_equities_pts_ouch_v1_12.prefs.show_sequenced_data_packet then
    show.sequenced_data_packet = omi_jnx_equities_pts_ouch_v1_12.prefs.show_sequenced_data_packet
    changed = true
  end
  if show.soup_bin_tcp_packet ~= omi_jnx_equities_pts_ouch_v1_12.prefs.show_soup_bin_tcp_packet then
    show.soup_bin_tcp_packet = omi_jnx_equities_pts_ouch_v1_12.prefs.show_soup_bin_tcp_packet
    changed = true
  end
  if show.system_event_message ~= omi_jnx_equities_pts_ouch_v1_12.prefs.show_system_event_message then
    show.system_event_message = omi_jnx_equities_pts_ouch_v1_12.prefs.show_system_event_message
    changed = true
  end
  if show.unsequenced_data_packet ~= omi_jnx_equities_pts_ouch_v1_12.prefs.show_unsequenced_data_packet then
    show.unsequenced_data_packet = omi_jnx_equities_pts_ouch_v1_12.prefs.show_unsequenced_data_packet
    changed = true
  end
  if show.payload ~= omi_jnx_equities_pts_ouch_v1_12.prefs.show_payload then
    show.payload = omi_jnx_equities_pts_ouch_v1_12.prefs.show_payload
    changed = true
  end
  if show.sequenced_message ~= omi_jnx_equities_pts_ouch_v1_12.prefs.show_sequenced_message then
    show.sequenced_message = omi_jnx_equities_pts_ouch_v1_12.prefs.show_sequenced_message
    changed = true
  end
  if show.unsequenced_message ~= omi_jnx_equities_pts_ouch_v1_12.prefs.show_unsequenced_message then
    show.unsequenced_message = omi_jnx_equities_pts_ouch_v1_12.prefs.show_unsequenced_message
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
-- Dissect Jnx Equities Pts Ouch 1.12
-----------------------------------------------------------------------

-- Quantity
jnx_equities_pts_ouch_v1_12.quantity = {}

-- Size: Quantity
jnx_equities_pts_ouch_v1_12.quantity.size = 4

-- Display: Quantity
jnx_equities_pts_ouch_v1_12.quantity.display = function(value)
  return "Quantity: "..value
end

-- Dissect: Quantity
jnx_equities_pts_ouch_v1_12.quantity.dissect = function(buffer, offset, packet, parent)
  local length = jnx_equities_pts_ouch_v1_12.quantity.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = jnx_equities_pts_ouch_v1_12.quantity.display(value, buffer, offset, packet, parent)

  parent:add(omi_jnx_equities_pts_ouch_v1_12.fields.quantity, range, value, display)

  return offset + length, value
end

-- Order Token
jnx_equities_pts_ouch_v1_12.order_token = {}

-- Size: Order Token
jnx_equities_pts_ouch_v1_12.order_token.size = 4

-- Display: Order Token
jnx_equities_pts_ouch_v1_12.order_token.display = function(value)
  return "Order Token: "..value
end

-- Dissect: Order Token
jnx_equities_pts_ouch_v1_12.order_token.dissect = function(buffer, offset, packet, parent)
  local length = jnx_equities_pts_ouch_v1_12.order_token.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = jnx_equities_pts_ouch_v1_12.order_token.display(value, buffer, offset, packet, parent)

  parent:add(omi_jnx_equities_pts_ouch_v1_12.fields.order_token, range, value, display)

  return offset + length, value
end

-- Cancel Order Message
jnx_equities_pts_ouch_v1_12.cancel_order_message = {}

-- Size: Cancel Order Message
jnx_equities_pts_ouch_v1_12.cancel_order_message.size =
  jnx_equities_pts_ouch_v1_12.order_token.size + 
  jnx_equities_pts_ouch_v1_12.quantity.size

-- Display: Cancel Order Message
jnx_equities_pts_ouch_v1_12.cancel_order_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Cancel Order Message
jnx_equities_pts_ouch_v1_12.cancel_order_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Order Token: 4 Byte Unsigned Fixed Width Integer
  index, order_token = jnx_equities_pts_ouch_v1_12.order_token.dissect(buffer, index, packet, parent)

  -- Quantity: 4 Byte Unsigned Fixed Width Integer
  index, quantity = jnx_equities_pts_ouch_v1_12.quantity.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Cancel Order Message
jnx_equities_pts_ouch_v1_12.cancel_order_message.dissect = function(buffer, offset, packet, parent)
  if show.cancel_order_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_jnx_equities_pts_ouch_v1_12.fields.cancel_order_message, buffer(offset, 0))
    local index = jnx_equities_pts_ouch_v1_12.cancel_order_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = jnx_equities_pts_ouch_v1_12.cancel_order_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return jnx_equities_pts_ouch_v1_12.cancel_order_message.fields(buffer, offset, packet, parent)
  end
end

-- Minimum Quantity
jnx_equities_pts_ouch_v1_12.minimum_quantity = {}

-- Size: Minimum Quantity
jnx_equities_pts_ouch_v1_12.minimum_quantity.size = 4

-- Display: Minimum Quantity
jnx_equities_pts_ouch_v1_12.minimum_quantity.display = function(value)
  return "Minimum Quantity: "..value
end

-- Dissect: Minimum Quantity
jnx_equities_pts_ouch_v1_12.minimum_quantity.dissect = function(buffer, offset, packet, parent)
  local length = jnx_equities_pts_ouch_v1_12.minimum_quantity.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = jnx_equities_pts_ouch_v1_12.minimum_quantity.display(value, buffer, offset, packet, parent)

  parent:add(omi_jnx_equities_pts_ouch_v1_12.fields.minimum_quantity, range, value, display)

  return offset + length, value
end

-- Display
jnx_equities_pts_ouch_v1_12.display = {}

-- Size: Display
jnx_equities_pts_ouch_v1_12.display.size = 1

-- Display: Display
jnx_equities_pts_ouch_v1_12.display.display = function(value)
  if value == " " then
    return "Display: Unused (<whitespace>)"
  end
  if value == "P" then
    return "Display: Postonly (P)"
  end

  return "Display: Unknown("..value..")"
end

-- Dissect: Display
jnx_equities_pts_ouch_v1_12.display.dissect = function(buffer, offset, packet, parent)
  local length = jnx_equities_pts_ouch_v1_12.display.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = jnx_equities_pts_ouch_v1_12.display.display(value, buffer, offset, packet, parent)

  parent:add(omi_jnx_equities_pts_ouch_v1_12.fields.display, range, value, display)

  return offset + length, value
end

-- Time In Force
jnx_equities_pts_ouch_v1_12.time_in_force = {}

-- Size: Time In Force
jnx_equities_pts_ouch_v1_12.time_in_force.size = 4

-- Display: Time In Force
jnx_equities_pts_ouch_v1_12.time_in_force.display = function(value)
  if value == 0 then
    return "Time In Force: Immediate (0)"
  end
  if value == 99999 then
    return "Time In Force: Day (99999)"
  end

  return "Time In Force: Unknown("..value..")"
end

-- Dissect: Time In Force
jnx_equities_pts_ouch_v1_12.time_in_force.dissect = function(buffer, offset, packet, parent)
  local length = jnx_equities_pts_ouch_v1_12.time_in_force.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = jnx_equities_pts_ouch_v1_12.time_in_force.display(value, buffer, offset, packet, parent)

  parent:add(omi_jnx_equities_pts_ouch_v1_12.fields.time_in_force, range, value, display)

  return offset + length, value
end

-- Price
jnx_equities_pts_ouch_v1_12.price = {}

-- Size: Price
jnx_equities_pts_ouch_v1_12.price.size = 4

-- Display: Price
jnx_equities_pts_ouch_v1_12.price.display = function(value)
  return "Price: "..value
end

-- Translate: Price
jnx_equities_pts_ouch_v1_12.price.translate = function(raw)
  return raw/10
end

-- Dissect: Price
jnx_equities_pts_ouch_v1_12.price.dissect = function(buffer, offset, packet, parent)
  local length = jnx_equities_pts_ouch_v1_12.price.size
  local range = buffer(offset, length)
  local raw = range:uint()
  local value = jnx_equities_pts_ouch_v1_12.price.translate(raw)
  local display = jnx_equities_pts_ouch_v1_12.price.display(value, buffer, offset, packet, parent)

  parent:add(omi_jnx_equities_pts_ouch_v1_12.fields.price, range, value, display)

  return offset + length, value
end

-- Replacement Order Token
jnx_equities_pts_ouch_v1_12.replacement_order_token = {}

-- Size: Replacement Order Token
jnx_equities_pts_ouch_v1_12.replacement_order_token.size = 4

-- Display: Replacement Order Token
jnx_equities_pts_ouch_v1_12.replacement_order_token.display = function(value)
  return "Replacement Order Token: "..value
end

-- Dissect: Replacement Order Token
jnx_equities_pts_ouch_v1_12.replacement_order_token.dissect = function(buffer, offset, packet, parent)
  local length = jnx_equities_pts_ouch_v1_12.replacement_order_token.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = jnx_equities_pts_ouch_v1_12.replacement_order_token.display(value, buffer, offset, packet, parent)

  parent:add(omi_jnx_equities_pts_ouch_v1_12.fields.replacement_order_token, range, value, display)

  return offset + length, value
end

-- Existing Order Token
jnx_equities_pts_ouch_v1_12.existing_order_token = {}

-- Size: Existing Order Token
jnx_equities_pts_ouch_v1_12.existing_order_token.size = 4

-- Display: Existing Order Token
jnx_equities_pts_ouch_v1_12.existing_order_token.display = function(value)
  return "Existing Order Token: "..value
end

-- Dissect: Existing Order Token
jnx_equities_pts_ouch_v1_12.existing_order_token.dissect = function(buffer, offset, packet, parent)
  local length = jnx_equities_pts_ouch_v1_12.existing_order_token.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = jnx_equities_pts_ouch_v1_12.existing_order_token.display(value, buffer, offset, packet, parent)

  parent:add(omi_jnx_equities_pts_ouch_v1_12.fields.existing_order_token, range, value, display)

  return offset + length, value
end

-- Replace Order Message
jnx_equities_pts_ouch_v1_12.replace_order_message = {}

-- Size: Replace Order Message
jnx_equities_pts_ouch_v1_12.replace_order_message.size =
  jnx_equities_pts_ouch_v1_12.existing_order_token.size + 
  jnx_equities_pts_ouch_v1_12.replacement_order_token.size + 
  jnx_equities_pts_ouch_v1_12.quantity.size + 
  jnx_equities_pts_ouch_v1_12.price.size + 
  jnx_equities_pts_ouch_v1_12.time_in_force.size + 
  jnx_equities_pts_ouch_v1_12.display.size + 
  jnx_equities_pts_ouch_v1_12.minimum_quantity.size

-- Display: Replace Order Message
jnx_equities_pts_ouch_v1_12.replace_order_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Replace Order Message
jnx_equities_pts_ouch_v1_12.replace_order_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Existing Order Token: 4 Byte Unsigned Fixed Width Integer
  index, existing_order_token = jnx_equities_pts_ouch_v1_12.existing_order_token.dissect(buffer, index, packet, parent)

  -- Replacement Order Token: 4 Byte Unsigned Fixed Width Integer
  index, replacement_order_token = jnx_equities_pts_ouch_v1_12.replacement_order_token.dissect(buffer, index, packet, parent)

  -- Quantity: 4 Byte Unsigned Fixed Width Integer
  index, quantity = jnx_equities_pts_ouch_v1_12.quantity.dissect(buffer, index, packet, parent)

  -- Price: 4 Byte Unsigned Fixed Width Integer
  index, price = jnx_equities_pts_ouch_v1_12.price.dissect(buffer, index, packet, parent)

  -- Time In Force: 4 Byte Unsigned Fixed Width Integer Enum with 2 values
  index, time_in_force = jnx_equities_pts_ouch_v1_12.time_in_force.dissect(buffer, index, packet, parent)

  -- Display: 1 Byte Ascii String Enum with 2 values
  index, display = jnx_equities_pts_ouch_v1_12.display.dissect(buffer, index, packet, parent)

  -- Minimum Quantity: 4 Byte Unsigned Fixed Width Integer
  index, minimum_quantity = jnx_equities_pts_ouch_v1_12.minimum_quantity.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Replace Order Message
jnx_equities_pts_ouch_v1_12.replace_order_message.dissect = function(buffer, offset, packet, parent)
  if show.replace_order_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_jnx_equities_pts_ouch_v1_12.fields.replace_order_message, buffer(offset, 0))
    local index = jnx_equities_pts_ouch_v1_12.replace_order_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = jnx_equities_pts_ouch_v1_12.replace_order_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return jnx_equities_pts_ouch_v1_12.replace_order_message.fields(buffer, offset, packet, parent)
  end
end

-- Cash Margin Type
jnx_equities_pts_ouch_v1_12.cash_margin_type = {}

-- Size: Cash Margin Type
jnx_equities_pts_ouch_v1_12.cash_margin_type.size = 1

-- Display: Cash Margin Type
jnx_equities_pts_ouch_v1_12.cash_margin_type.display = function(value)
  if value == "1" then
    return "Cash Margin Type: Cash (1)"
  end
  if value == "2" then
    return "Cash Margin Type: Margin Open Negotiable (2)"
  end
  if value == "3" then
    return "Cash Margin Type: Margin Close Negotiable (3)"
  end
  if value == "4" then
    return "Cash Margin Type: Margin Open Standardized (4)"
  end
  if value == "5" then
    return "Cash Margin Type: Margin Close Standardized (5)"
  end

  return "Cash Margin Type: Unknown("..value..")"
end

-- Dissect: Cash Margin Type
jnx_equities_pts_ouch_v1_12.cash_margin_type.dissect = function(buffer, offset, packet, parent)
  local length = jnx_equities_pts_ouch_v1_12.cash_margin_type.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = jnx_equities_pts_ouch_v1_12.cash_margin_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_jnx_equities_pts_ouch_v1_12.fields.cash_margin_type, range, value, display)

  return offset + length, value
end

-- Order Classification
jnx_equities_pts_ouch_v1_12.order_classification = {}

-- Size: Order Classification
jnx_equities_pts_ouch_v1_12.order_classification.size = 1

-- Display: Order Classification
jnx_equities_pts_ouch_v1_12.order_classification.display = function(value)
  if value == "1" then
    return "Order Classification: Non Hft (1)"
  end
  if value == "3" then
    return "Order Classification: Hft Market Making Strategy (3)"
  end
  if value == "4" then
    return "Order Classification: Hft Arbitrage Strategy (4)"
  end
  if value == "5" then
    return "Order Classification: Hft Directional Strategy (5)"
  end
  if value == "6" then
    return "Order Classification: Hft Other Strategy (6)"
  end

  return "Order Classification: Unknown("..value..")"
end

-- Dissect: Order Classification
jnx_equities_pts_ouch_v1_12.order_classification.dissect = function(buffer, offset, packet, parent)
  local length = jnx_equities_pts_ouch_v1_12.order_classification.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = jnx_equities_pts_ouch_v1_12.order_classification.display(value, buffer, offset, packet, parent)

  parent:add(omi_jnx_equities_pts_ouch_v1_12.fields.order_classification, range, value, display)

  return offset + length, value
end

-- Capacity
jnx_equities_pts_ouch_v1_12.capacity = {}

-- Size: Capacity
jnx_equities_pts_ouch_v1_12.capacity.size = 1

-- Display: Capacity
jnx_equities_pts_ouch_v1_12.capacity.display = function(value)
  if value == "A" then
    return "Capacity: Agency (A)"
  end
  if value == "P" then
    return "Capacity: Principal (P)"
  end

  return "Capacity: Unknown("..value..")"
end

-- Dissect: Capacity
jnx_equities_pts_ouch_v1_12.capacity.dissect = function(buffer, offset, packet, parent)
  local length = jnx_equities_pts_ouch_v1_12.capacity.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = jnx_equities_pts_ouch_v1_12.capacity.display(value, buffer, offset, packet, parent)

  parent:add(omi_jnx_equities_pts_ouch_v1_12.fields.capacity, range, value, display)

  return offset + length, value
end

-- Firm Id
jnx_equities_pts_ouch_v1_12.firm_id = {}

-- Size: Firm Id
jnx_equities_pts_ouch_v1_12.firm_id.size = 4

-- Display: Firm Id
jnx_equities_pts_ouch_v1_12.firm_id.display = function(value)
  return "Firm Id: "..value
end

-- Dissect: Firm Id
jnx_equities_pts_ouch_v1_12.firm_id.dissect = function(buffer, offset, packet, parent)
  local length = jnx_equities_pts_ouch_v1_12.firm_id.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = jnx_equities_pts_ouch_v1_12.firm_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_jnx_equities_pts_ouch_v1_12.fields.firm_id, range, value, display)

  return offset + length, value
end

-- Group
jnx_equities_pts_ouch_v1_12.group = {}

-- Size: Group
jnx_equities_pts_ouch_v1_12.group.size = 4

-- Display: Group
jnx_equities_pts_ouch_v1_12.group.display = function(value)
  if value == "DAY" then
    return "Group: Daytime J Market (DAY)"
  end
  if value == "NGHT" then
    return "Group: Nighttime J Market (NGHT)"
  end
  if value == "DAYX" then
    return "Group: X Market (DAYX)"
  end
  if value == "DAYU" then
    return "Group: U Market (DAYU)"
  end

  return "Group: Unknown("..value..")"
end

-- Dissect: Group
jnx_equities_pts_ouch_v1_12.group.dissect = function(buffer, offset, packet, parent)
  local length = jnx_equities_pts_ouch_v1_12.group.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = jnx_equities_pts_ouch_v1_12.group.display(value, buffer, offset, packet, parent)

  parent:add(omi_jnx_equities_pts_ouch_v1_12.fields.group, range, value, display)

  return offset + length, value
end

-- Orderbook Id
jnx_equities_pts_ouch_v1_12.orderbook_id = {}

-- Size: Orderbook Id
jnx_equities_pts_ouch_v1_12.orderbook_id.size = 4

-- Display: Orderbook Id
jnx_equities_pts_ouch_v1_12.orderbook_id.display = function(value)
  return "Orderbook Id: "..value
end

-- Dissect: Orderbook Id
jnx_equities_pts_ouch_v1_12.orderbook_id.dissect = function(buffer, offset, packet, parent)
  local length = jnx_equities_pts_ouch_v1_12.orderbook_id.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = jnx_equities_pts_ouch_v1_12.orderbook_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_jnx_equities_pts_ouch_v1_12.fields.orderbook_id, range, value, display)

  return offset + length, value
end

-- Buy Sell Indicator
jnx_equities_pts_ouch_v1_12.buy_sell_indicator = {}

-- Size: Buy Sell Indicator
jnx_equities_pts_ouch_v1_12.buy_sell_indicator.size = 1

-- Display: Buy Sell Indicator
jnx_equities_pts_ouch_v1_12.buy_sell_indicator.display = function(value)
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
jnx_equities_pts_ouch_v1_12.buy_sell_indicator.dissect = function(buffer, offset, packet, parent)
  local length = jnx_equities_pts_ouch_v1_12.buy_sell_indicator.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = jnx_equities_pts_ouch_v1_12.buy_sell_indicator.display(value, buffer, offset, packet, parent)

  parent:add(omi_jnx_equities_pts_ouch_v1_12.fields.buy_sell_indicator, range, value, display)

  return offset + length, value
end

-- Client Reference
jnx_equities_pts_ouch_v1_12.client_reference = {}

-- Size: Client Reference
jnx_equities_pts_ouch_v1_12.client_reference.size = 10

-- Display: Client Reference
jnx_equities_pts_ouch_v1_12.client_reference.display = function(value)
  return "Client Reference: "..value
end

-- Dissect: Client Reference
jnx_equities_pts_ouch_v1_12.client_reference.dissect = function(buffer, offset, packet, parent)
  local length = jnx_equities_pts_ouch_v1_12.client_reference.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = jnx_equities_pts_ouch_v1_12.client_reference.display(value, buffer, offset, packet, parent)

  parent:add(omi_jnx_equities_pts_ouch_v1_12.fields.client_reference, range, value, display)

  return offset + length, value
end

-- Enter Order Message
jnx_equities_pts_ouch_v1_12.enter_order_message = {}

-- Size: Enter Order Message
jnx_equities_pts_ouch_v1_12.enter_order_message.size =
  jnx_equities_pts_ouch_v1_12.order_token.size + 
  jnx_equities_pts_ouch_v1_12.client_reference.size + 
  jnx_equities_pts_ouch_v1_12.buy_sell_indicator.size + 
  jnx_equities_pts_ouch_v1_12.quantity.size + 
  jnx_equities_pts_ouch_v1_12.orderbook_id.size + 
  jnx_equities_pts_ouch_v1_12.group.size + 
  jnx_equities_pts_ouch_v1_12.price.size + 
  jnx_equities_pts_ouch_v1_12.time_in_force.size + 
  jnx_equities_pts_ouch_v1_12.firm_id.size + 
  jnx_equities_pts_ouch_v1_12.display.size + 
  jnx_equities_pts_ouch_v1_12.capacity.size + 
  jnx_equities_pts_ouch_v1_12.minimum_quantity.size + 
  jnx_equities_pts_ouch_v1_12.order_classification.size + 
  jnx_equities_pts_ouch_v1_12.cash_margin_type.size

-- Display: Enter Order Message
jnx_equities_pts_ouch_v1_12.enter_order_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Enter Order Message
jnx_equities_pts_ouch_v1_12.enter_order_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Order Token: 4 Byte Unsigned Fixed Width Integer
  index, order_token = jnx_equities_pts_ouch_v1_12.order_token.dissect(buffer, index, packet, parent)

  -- Client Reference: 10 Byte Ascii String
  index, client_reference = jnx_equities_pts_ouch_v1_12.client_reference.dissect(buffer, index, packet, parent)

  -- Buy Sell Indicator: 1 Byte Ascii String Enum with 4 values
  index, buy_sell_indicator = jnx_equities_pts_ouch_v1_12.buy_sell_indicator.dissect(buffer, index, packet, parent)

  -- Quantity: 4 Byte Unsigned Fixed Width Integer
  index, quantity = jnx_equities_pts_ouch_v1_12.quantity.dissect(buffer, index, packet, parent)

  -- Orderbook Id: 4 Byte Ascii String
  index, orderbook_id = jnx_equities_pts_ouch_v1_12.orderbook_id.dissect(buffer, index, packet, parent)

  -- Group: 4 Byte Ascii String Enum with 4 values
  index, group = jnx_equities_pts_ouch_v1_12.group.dissect(buffer, index, packet, parent)

  -- Price: 4 Byte Unsigned Fixed Width Integer
  index, price = jnx_equities_pts_ouch_v1_12.price.dissect(buffer, index, packet, parent)

  -- Time In Force: 4 Byte Unsigned Fixed Width Integer Enum with 2 values
  index, time_in_force = jnx_equities_pts_ouch_v1_12.time_in_force.dissect(buffer, index, packet, parent)

  -- Firm Id: 4 Byte Unsigned Fixed Width Integer
  index, firm_id = jnx_equities_pts_ouch_v1_12.firm_id.dissect(buffer, index, packet, parent)

  -- Display: 1 Byte Ascii String Enum with 2 values
  index, display = jnx_equities_pts_ouch_v1_12.display.dissect(buffer, index, packet, parent)

  -- Capacity: 1 Byte Ascii String Enum with 2 values
  index, capacity = jnx_equities_pts_ouch_v1_12.capacity.dissect(buffer, index, packet, parent)

  -- Minimum Quantity: 4 Byte Unsigned Fixed Width Integer
  index, minimum_quantity = jnx_equities_pts_ouch_v1_12.minimum_quantity.dissect(buffer, index, packet, parent)

  -- Order Classification: 1 Byte Ascii String Enum with 5 values
  index, order_classification = jnx_equities_pts_ouch_v1_12.order_classification.dissect(buffer, index, packet, parent)

  -- Cash Margin Type: 1 Byte Ascii String Enum with 5 values
  index, cash_margin_type = jnx_equities_pts_ouch_v1_12.cash_margin_type.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Enter Order Message
jnx_equities_pts_ouch_v1_12.enter_order_message.dissect = function(buffer, offset, packet, parent)
  if show.enter_order_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_jnx_equities_pts_ouch_v1_12.fields.enter_order_message, buffer(offset, 0))
    local index = jnx_equities_pts_ouch_v1_12.enter_order_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = jnx_equities_pts_ouch_v1_12.enter_order_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return jnx_equities_pts_ouch_v1_12.enter_order_message.fields(buffer, offset, packet, parent)
  end
end

-- Unsequenced Message
jnx_equities_pts_ouch_v1_12.unsequenced_message = {}

-- Size: Unsequenced Message
jnx_equities_pts_ouch_v1_12.unsequenced_message.size = function(buffer, offset, unsequenced_message_type)
  -- Size of Enter Order Message
  if unsequenced_message_type == "O" then
    return jnx_equities_pts_ouch_v1_12.enter_order_message.size
  end
  -- Size of Replace Order Message
  if unsequenced_message_type == "U" then
    return jnx_equities_pts_ouch_v1_12.replace_order_message.size
  end
  -- Size of Cancel Order Message
  if unsequenced_message_type == "X" then
    return jnx_equities_pts_ouch_v1_12.cancel_order_message.size
  end

  return 0
end

-- Display: Unsequenced Message
jnx_equities_pts_ouch_v1_12.unsequenced_message.display = function(buffer, offset, packet, parent)
  return ""
end

-- Dissect Branches: Unsequenced Message
jnx_equities_pts_ouch_v1_12.unsequenced_message.branches = function(buffer, offset, packet, parent, unsequenced_message_type)
  -- Dissect Enter Order Message
  if unsequenced_message_type == "O" then
    return jnx_equities_pts_ouch_v1_12.enter_order_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Replace Order Message
  if unsequenced_message_type == "U" then
    return jnx_equities_pts_ouch_v1_12.replace_order_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Cancel Order Message
  if unsequenced_message_type == "X" then
    return jnx_equities_pts_ouch_v1_12.cancel_order_message.dissect(buffer, offset, packet, parent)
  end

  return offset
end

-- Dissect: Unsequenced Message
jnx_equities_pts_ouch_v1_12.unsequenced_message.dissect = function(buffer, offset, packet, parent, unsequenced_message_type)
  if not show.unsequenced_message then
    return jnx_equities_pts_ouch_v1_12.unsequenced_message.branches(buffer, offset, packet, parent, unsequenced_message_type)
  end

  -- Calculate size and check that branch is not empty
  local size = jnx_equities_pts_ouch_v1_12.unsequenced_message.size(buffer, offset, unsequenced_message_type)
  if size == 0 then
    return offset
  end

  -- Dissect Element
  local range = buffer(offset, size)
  local display = jnx_equities_pts_ouch_v1_12.unsequenced_message.display(buffer, packet, parent)
  local element = parent:add(omi_jnx_equities_pts_ouch_v1_12.fields.unsequenced_message, range, display)

  return jnx_equities_pts_ouch_v1_12.unsequenced_message.branches(buffer, offset, packet, parent, unsequenced_message_type)
end

-- Unsequenced Message Type
jnx_equities_pts_ouch_v1_12.unsequenced_message_type = {}

-- Size: Unsequenced Message Type
jnx_equities_pts_ouch_v1_12.unsequenced_message_type.size = 1

-- Display: Unsequenced Message Type
jnx_equities_pts_ouch_v1_12.unsequenced_message_type.display = function(value)
  if value == "O" then
    return "Unsequenced Message Type: Enter Order Message (O)"
  end
  if value == "U" then
    return "Unsequenced Message Type: Replace Order Message (U)"
  end
  if value == "X" then
    return "Unsequenced Message Type: Cancel Order Message (X)"
  end

  return "Unsequenced Message Type: Unknown("..value..")"
end

-- Dissect: Unsequenced Message Type
jnx_equities_pts_ouch_v1_12.unsequenced_message_type.dissect = function(buffer, offset, packet, parent)
  local length = jnx_equities_pts_ouch_v1_12.unsequenced_message_type.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = jnx_equities_pts_ouch_v1_12.unsequenced_message_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_jnx_equities_pts_ouch_v1_12.fields.unsequenced_message_type, range, value, display)

  return offset + length, value
end

-- Unsequenced Data Packet
jnx_equities_pts_ouch_v1_12.unsequenced_data_packet = {}

-- Read runtime size of: Unsequenced Data Packet
jnx_equities_pts_ouch_v1_12.unsequenced_data_packet.size = function(buffer, offset)
  local index = offset

  -- Dependency element: Packet Length
  local packet_length = buffer(offset - 3, 2):uint()

  return packet_length - 1
end

-- Display: Unsequenced Data Packet
jnx_equities_pts_ouch_v1_12.unsequenced_data_packet.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Unsequenced Data Packet
jnx_equities_pts_ouch_v1_12.unsequenced_data_packet.fields = function(buffer, offset, packet, parent, size_of_unsequenced_data_packet)
  local index = offset

  -- Unsequenced Message Type: 1 Byte Ascii String Enum with 3 values
  index, unsequenced_message_type = jnx_equities_pts_ouch_v1_12.unsequenced_message_type.dissect(buffer, index, packet, parent)

  -- Unsequenced Message: Runtime Type with 3 branches
  index = jnx_equities_pts_ouch_v1_12.unsequenced_message.dissect(buffer, index, packet, parent, unsequenced_message_type)

  return index
end

-- Dissect: Unsequenced Data Packet
jnx_equities_pts_ouch_v1_12.unsequenced_data_packet.dissect = function(buffer, offset, packet, parent)
  -- Parse runtime size
  local size_of_unsequenced_data_packet = jnx_equities_pts_ouch_v1_12.unsequenced_data_packet.size(buffer, offset)

  -- Optionally add struct element to protocol tree
  if show.unsequenced_data_packet then
    local range = buffer(offset, size_of_unsequenced_data_packet)
    local display = jnx_equities_pts_ouch_v1_12.unsequenced_data_packet.display(buffer, packet, parent)
    parent = parent:add(omi_jnx_equities_pts_ouch_v1_12.fields.unsequenced_data_packet, range, display)
  end

  jnx_equities_pts_ouch_v1_12.unsequenced_data_packet.fields(buffer, offset, packet, parent, size_of_unsequenced_data_packet)

  return offset + size_of_unsequenced_data_packet
end

-- Requested Sequence Number
jnx_equities_pts_ouch_v1_12.requested_sequence_number = {}

-- Size: Requested Sequence Number
jnx_equities_pts_ouch_v1_12.requested_sequence_number.size = 20

-- Display: Requested Sequence Number
jnx_equities_pts_ouch_v1_12.requested_sequence_number.display = function(value)
  return "Requested Sequence Number: "..value
end

-- Dissect: Requested Sequence Number
jnx_equities_pts_ouch_v1_12.requested_sequence_number.dissect = function(buffer, offset, packet, parent)
  local length = jnx_equities_pts_ouch_v1_12.requested_sequence_number.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = jnx_equities_pts_ouch_v1_12.requested_sequence_number.display(value, buffer, offset, packet, parent)

  parent:add(omi_jnx_equities_pts_ouch_v1_12.fields.requested_sequence_number, range, value, display)

  return offset + length, value
end

-- Requested Session
jnx_equities_pts_ouch_v1_12.requested_session = {}

-- Size: Requested Session
jnx_equities_pts_ouch_v1_12.requested_session.size = 10

-- Display: Requested Session
jnx_equities_pts_ouch_v1_12.requested_session.display = function(value)
  return "Requested Session: "..value
end

-- Dissect: Requested Session
jnx_equities_pts_ouch_v1_12.requested_session.dissect = function(buffer, offset, packet, parent)
  local length = jnx_equities_pts_ouch_v1_12.requested_session.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = jnx_equities_pts_ouch_v1_12.requested_session.display(value, buffer, offset, packet, parent)

  parent:add(omi_jnx_equities_pts_ouch_v1_12.fields.requested_session, range, value, display)

  return offset + length, value
end

-- Password
jnx_equities_pts_ouch_v1_12.password = {}

-- Size: Password
jnx_equities_pts_ouch_v1_12.password.size = 10

-- Display: Password
jnx_equities_pts_ouch_v1_12.password.display = function(value)
  return "Password: "..value
end

-- Dissect: Password
jnx_equities_pts_ouch_v1_12.password.dissect = function(buffer, offset, packet, parent)
  local length = jnx_equities_pts_ouch_v1_12.password.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = jnx_equities_pts_ouch_v1_12.password.display(value, buffer, offset, packet, parent)

  parent:add(omi_jnx_equities_pts_ouch_v1_12.fields.password, range, value, display)

  return offset + length, value
end

-- Username
jnx_equities_pts_ouch_v1_12.username = {}

-- Size: Username
jnx_equities_pts_ouch_v1_12.username.size = 6

-- Display: Username
jnx_equities_pts_ouch_v1_12.username.display = function(value)
  return "Username: "..value
end

-- Dissect: Username
jnx_equities_pts_ouch_v1_12.username.dissect = function(buffer, offset, packet, parent)
  local length = jnx_equities_pts_ouch_v1_12.username.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = jnx_equities_pts_ouch_v1_12.username.display(value, buffer, offset, packet, parent)

  parent:add(omi_jnx_equities_pts_ouch_v1_12.fields.username, range, value, display)

  return offset + length, value
end

-- Login Request Packet
jnx_equities_pts_ouch_v1_12.login_request_packet = {}

-- Size: Login Request Packet
jnx_equities_pts_ouch_v1_12.login_request_packet.size =
  jnx_equities_pts_ouch_v1_12.username.size + 
  jnx_equities_pts_ouch_v1_12.password.size + 
  jnx_equities_pts_ouch_v1_12.requested_session.size + 
  jnx_equities_pts_ouch_v1_12.requested_sequence_number.size

-- Display: Login Request Packet
jnx_equities_pts_ouch_v1_12.login_request_packet.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Login Request Packet
jnx_equities_pts_ouch_v1_12.login_request_packet.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Username: 6 Byte Ascii String
  index, username = jnx_equities_pts_ouch_v1_12.username.dissect(buffer, index, packet, parent)

  -- Password: 10 Byte Ascii String
  index, password = jnx_equities_pts_ouch_v1_12.password.dissect(buffer, index, packet, parent)

  -- Requested Session: 10 Byte Ascii String
  index, requested_session = jnx_equities_pts_ouch_v1_12.requested_session.dissect(buffer, index, packet, parent)

  -- Requested Sequence Number: 20 Byte Ascii String
  index, requested_sequence_number = jnx_equities_pts_ouch_v1_12.requested_sequence_number.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Login Request Packet
jnx_equities_pts_ouch_v1_12.login_request_packet.dissect = function(buffer, offset, packet, parent)
  if show.login_request_packet then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_jnx_equities_pts_ouch_v1_12.fields.login_request_packet, buffer(offset, 0))
    local index = jnx_equities_pts_ouch_v1_12.login_request_packet.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = jnx_equities_pts_ouch_v1_12.login_request_packet.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return jnx_equities_pts_ouch_v1_12.login_request_packet.fields(buffer, offset, packet, parent)
  end
end

-- Order Rejected Reason
jnx_equities_pts_ouch_v1_12.order_rejected_reason = {}

-- Size: Order Rejected Reason
jnx_equities_pts_ouch_v1_12.order_rejected_reason.size = 1

-- Display: Order Rejected Reason
jnx_equities_pts_ouch_v1_12.order_rejected_reason.display = function(value)
  if value == "H" then
    return "Order Rejected Reason: Halted (H)"
  end
  if value == "S" then
    return "Order Rejected Reason: Invalid Orderbook Identifier (S)"
  end
  if value == "X" then
    return "Order Rejected Reason: Invalid Price (X)"
  end
  if value == "Z" then
    return "Order Rejected Reason: Invalid Quantity (Z)"
  end
  if value == "N" then
    return "Order Rejected Reason: Invalid Minimum Quantity (N)"
  end
  if value == "Y" then
    return "Order Rejected Reason: Invalid Order Type (Y)"
  end
  if value == "D" then
    return "Order Rejected Reason: Invalid Display Type (D)"
  end
  if value == "V" then
    return "Order Rejected Reason: Exceeded Order Value Limit (V)"
  end
  if value == "i" then
    return "Order Rejected Reason: Short Sell Order Restriction (i)"
  end
  if value == "R" then
    return "Order Rejected Reason: Order Not Allowed (R)"
  end
  if value == "F" then
    return "Order Rejected Reason: Flow Throttled (F)"
  end
  if value == "G" then
    return "Order Rejected Reason: Invalid Margin Specification (G)"
  end
  if value == "L" then
    return "Order Rejected Reason: Mpid Not Allowed For This Port (L)"
  end
  if value == "c" then
    return "Order Rejected Reason: No Permission (c)"
  end
  if value == "O" then
    return "Order Rejected Reason: Other (O)"
  end

  return "Order Rejected Reason: Unknown("..value..")"
end

-- Dissect: Order Rejected Reason
jnx_equities_pts_ouch_v1_12.order_rejected_reason.dissect = function(buffer, offset, packet, parent)
  local length = jnx_equities_pts_ouch_v1_12.order_rejected_reason.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = jnx_equities_pts_ouch_v1_12.order_rejected_reason.display(value, buffer, offset, packet, parent)

  parent:add(omi_jnx_equities_pts_ouch_v1_12.fields.order_rejected_reason, range, value, display)

  return offset + length, value
end

-- Timestamp
jnx_equities_pts_ouch_v1_12.timestamp = {}

-- Size: Timestamp
jnx_equities_pts_ouch_v1_12.timestamp.size = 8

-- Display: Timestamp
jnx_equities_pts_ouch_v1_12.timestamp.display = function(value)
  return "Timestamp: "..value
end

-- Dissect: Timestamp
jnx_equities_pts_ouch_v1_12.timestamp.dissect = function(buffer, offset, packet, parent)
  local length = jnx_equities_pts_ouch_v1_12.timestamp.size
  local range = buffer(offset, length)
  local value = range:uint64()
  local display = jnx_equities_pts_ouch_v1_12.timestamp.display(value, buffer, offset, packet, parent)

  parent:add(omi_jnx_equities_pts_ouch_v1_12.fields.timestamp, range, value, display)

  return offset + length, value
end

-- Order Rejected Message
jnx_equities_pts_ouch_v1_12.order_rejected_message = {}

-- Size: Order Rejected Message
jnx_equities_pts_ouch_v1_12.order_rejected_message.size =
  jnx_equities_pts_ouch_v1_12.timestamp.size + 
  jnx_equities_pts_ouch_v1_12.order_token.size + 
  jnx_equities_pts_ouch_v1_12.order_rejected_reason.size

-- Display: Order Rejected Message
jnx_equities_pts_ouch_v1_12.order_rejected_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Order Rejected Message
jnx_equities_pts_ouch_v1_12.order_rejected_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Timestamp: 8 Byte Unsigned Fixed Width Integer
  index, timestamp = jnx_equities_pts_ouch_v1_12.timestamp.dissect(buffer, index, packet, parent)

  -- Order Token: 4 Byte Unsigned Fixed Width Integer
  index, order_token = jnx_equities_pts_ouch_v1_12.order_token.dissect(buffer, index, packet, parent)

  -- Order Rejected Reason: 1 Byte Ascii String Enum with 15 values
  index, order_rejected_reason = jnx_equities_pts_ouch_v1_12.order_rejected_reason.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Order Rejected Message
jnx_equities_pts_ouch_v1_12.order_rejected_message.dissect = function(buffer, offset, packet, parent)
  if show.order_rejected_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_jnx_equities_pts_ouch_v1_12.fields.order_rejected_message, buffer(offset, 0))
    local index = jnx_equities_pts_ouch_v1_12.order_rejected_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = jnx_equities_pts_ouch_v1_12.order_rejected_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return jnx_equities_pts_ouch_v1_12.order_rejected_message.fields(buffer, offset, packet, parent)
  end
end

-- Match Number
jnx_equities_pts_ouch_v1_12.match_number = {}

-- Size: Match Number
jnx_equities_pts_ouch_v1_12.match_number.size = 8

-- Display: Match Number
jnx_equities_pts_ouch_v1_12.match_number.display = function(value)
  return "Match Number: "..value
end

-- Dissect: Match Number
jnx_equities_pts_ouch_v1_12.match_number.dissect = function(buffer, offset, packet, parent)
  local length = jnx_equities_pts_ouch_v1_12.match_number.size
  local range = buffer(offset, length)
  local value = range:uint64()
  local display = jnx_equities_pts_ouch_v1_12.match_number.display(value, buffer, offset, packet, parent)

  parent:add(omi_jnx_equities_pts_ouch_v1_12.fields.match_number, range, value, display)

  return offset + length, value
end

-- Liquidity Indicator
jnx_equities_pts_ouch_v1_12.liquidity_indicator = {}

-- Size: Liquidity Indicator
jnx_equities_pts_ouch_v1_12.liquidity_indicator.size = 1

-- Display: Liquidity Indicator
jnx_equities_pts_ouch_v1_12.liquidity_indicator.display = function(value)
  if value == "A" then
    return "Liquidity Indicator: Added (A)"
  end
  if value == "R" then
    return "Liquidity Indicator: Removed (R)"
  end

  return "Liquidity Indicator: Unknown("..value..")"
end

-- Dissect: Liquidity Indicator
jnx_equities_pts_ouch_v1_12.liquidity_indicator.dissect = function(buffer, offset, packet, parent)
  local length = jnx_equities_pts_ouch_v1_12.liquidity_indicator.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = jnx_equities_pts_ouch_v1_12.liquidity_indicator.display(value, buffer, offset, packet, parent)

  parent:add(omi_jnx_equities_pts_ouch_v1_12.fields.liquidity_indicator, range, value, display)

  return offset + length, value
end

-- Execution Price
jnx_equities_pts_ouch_v1_12.execution_price = {}

-- Size: Execution Price
jnx_equities_pts_ouch_v1_12.execution_price.size = 4

-- Display: Execution Price
jnx_equities_pts_ouch_v1_12.execution_price.display = function(value)
  return "Execution Price: "..value
end

-- Translate: Execution Price
jnx_equities_pts_ouch_v1_12.execution_price.translate = function(raw)
  return raw/10
end

-- Dissect: Execution Price
jnx_equities_pts_ouch_v1_12.execution_price.dissect = function(buffer, offset, packet, parent)
  local length = jnx_equities_pts_ouch_v1_12.execution_price.size
  local range = buffer(offset, length)
  local raw = range:uint()
  local value = jnx_equities_pts_ouch_v1_12.execution_price.translate(raw)
  local display = jnx_equities_pts_ouch_v1_12.execution_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_jnx_equities_pts_ouch_v1_12.fields.execution_price, range, value, display)

  return offset + length, value
end

-- Executed Quantity
jnx_equities_pts_ouch_v1_12.executed_quantity = {}

-- Size: Executed Quantity
jnx_equities_pts_ouch_v1_12.executed_quantity.size = 4

-- Display: Executed Quantity
jnx_equities_pts_ouch_v1_12.executed_quantity.display = function(value)
  return "Executed Quantity: "..value
end

-- Dissect: Executed Quantity
jnx_equities_pts_ouch_v1_12.executed_quantity.dissect = function(buffer, offset, packet, parent)
  local length = jnx_equities_pts_ouch_v1_12.executed_quantity.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = jnx_equities_pts_ouch_v1_12.executed_quantity.display(value, buffer, offset, packet, parent)

  parent:add(omi_jnx_equities_pts_ouch_v1_12.fields.executed_quantity, range, value, display)

  return offset + length, value
end

-- Order Executed Message
jnx_equities_pts_ouch_v1_12.order_executed_message = {}

-- Size: Order Executed Message
jnx_equities_pts_ouch_v1_12.order_executed_message.size =
  jnx_equities_pts_ouch_v1_12.timestamp.size + 
  jnx_equities_pts_ouch_v1_12.order_token.size + 
  jnx_equities_pts_ouch_v1_12.executed_quantity.size + 
  jnx_equities_pts_ouch_v1_12.execution_price.size + 
  jnx_equities_pts_ouch_v1_12.liquidity_indicator.size + 
  jnx_equities_pts_ouch_v1_12.match_number.size

-- Display: Order Executed Message
jnx_equities_pts_ouch_v1_12.order_executed_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Order Executed Message
jnx_equities_pts_ouch_v1_12.order_executed_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Timestamp: 8 Byte Unsigned Fixed Width Integer
  index, timestamp = jnx_equities_pts_ouch_v1_12.timestamp.dissect(buffer, index, packet, parent)

  -- Order Token: 4 Byte Unsigned Fixed Width Integer
  index, order_token = jnx_equities_pts_ouch_v1_12.order_token.dissect(buffer, index, packet, parent)

  -- Executed Quantity: 4 Byte Unsigned Fixed Width Integer
  index, executed_quantity = jnx_equities_pts_ouch_v1_12.executed_quantity.dissect(buffer, index, packet, parent)

  -- Execution Price: 4 Byte Unsigned Fixed Width Integer
  index, execution_price = jnx_equities_pts_ouch_v1_12.execution_price.dissect(buffer, index, packet, parent)

  -- Liquidity Indicator: 1 Byte Ascii String Enum with 2 values
  index, liquidity_indicator = jnx_equities_pts_ouch_v1_12.liquidity_indicator.dissect(buffer, index, packet, parent)

  -- Match Number: 8 Byte Unsigned Fixed Width Integer
  index, match_number = jnx_equities_pts_ouch_v1_12.match_number.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Order Executed Message
jnx_equities_pts_ouch_v1_12.order_executed_message.dissect = function(buffer, offset, packet, parent)
  if show.order_executed_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_jnx_equities_pts_ouch_v1_12.fields.order_executed_message, buffer(offset, 0))
    local index = jnx_equities_pts_ouch_v1_12.order_executed_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = jnx_equities_pts_ouch_v1_12.order_executed_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return jnx_equities_pts_ouch_v1_12.order_executed_message.fields(buffer, offset, packet, parent)
  end
end

-- Quantity Prevented From Trading
jnx_equities_pts_ouch_v1_12.quantity_prevented_from_trading = {}

-- Size: Quantity Prevented From Trading
jnx_equities_pts_ouch_v1_12.quantity_prevented_from_trading.size = 4

-- Display: Quantity Prevented From Trading
jnx_equities_pts_ouch_v1_12.quantity_prevented_from_trading.display = function(value)
  return "Quantity Prevented From Trading: "..value
end

-- Dissect: Quantity Prevented From Trading
jnx_equities_pts_ouch_v1_12.quantity_prevented_from_trading.dissect = function(buffer, offset, packet, parent)
  local length = jnx_equities_pts_ouch_v1_12.quantity_prevented_from_trading.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = jnx_equities_pts_ouch_v1_12.quantity_prevented_from_trading.display(value, buffer, offset, packet, parent)

  parent:add(omi_jnx_equities_pts_ouch_v1_12.fields.quantity_prevented_from_trading, range, value, display)

  return offset + length, value
end

-- Order Canceled Reason
jnx_equities_pts_ouch_v1_12.order_canceled_reason = {}

-- Size: Order Canceled Reason
jnx_equities_pts_ouch_v1_12.order_canceled_reason.size = 1

-- Display: Order Canceled Reason
jnx_equities_pts_ouch_v1_12.order_canceled_reason.display = function(value)
  if value == "U" then
    return "Order Canceled Reason: User Requested Cancel (U)"
  end
  if value == "L" then
    return "Order Canceled Reason: User Logged Off (L)"
  end
  if value == "S" then
    return "Order Canceled Reason: Supervisory Terminal Manual Cancel (S)"
  end
  if value == "I" then
    return "Order Canceled Reason: Immediate Or Cancel Order (I)"
  end
  if value == "M" then
    return "Order Canceled Reason: Order Expired (M)"
  end
  if value == "X" then
    return "Order Canceled Reason: Invalid Price (X)"
  end
  if value == "Z" then
    return "Order Canceled Reason: Invalid Quantity (Z)"
  end
  if value == "N" then
    return "Order Canceled Reason: Invalid Minimum Quantity (N)"
  end
  if value == "Y" then
    return "Order Canceled Reason: Invalid Order Type (Y)"
  end
  if value == "D" then
    return "Order Canceled Reason: Invalid Display Type (D)"
  end
  if value == "V" then
    return "Order Canceled Reason: Exceeded Order Value Limit (V)"
  end
  if value == "i" then
    return "Order Canceled Reason: Order Restriction (i)"
  end
  if value == "R" then
    return "Order Canceled Reason: Not Allowed (R)"
  end
  if value == "F" then
    return "Order Canceled Reason: Throttled (F)"
  end
  if value == "G" then
    return "Order Canceled Reason: Margin Restriction (G)"
  end
  if value == "O" then
    return "Order Canceled Reason: Other (O)"
  end

  return "Order Canceled Reason: Unknown("..value..")"
end

-- Dissect: Order Canceled Reason
jnx_equities_pts_ouch_v1_12.order_canceled_reason.dissect = function(buffer, offset, packet, parent)
  local length = jnx_equities_pts_ouch_v1_12.order_canceled_reason.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = jnx_equities_pts_ouch_v1_12.order_canceled_reason.display(value, buffer, offset, packet, parent)

  parent:add(omi_jnx_equities_pts_ouch_v1_12.fields.order_canceled_reason, range, value, display)

  return offset + length, value
end

-- Decrement Quantity
jnx_equities_pts_ouch_v1_12.decrement_quantity = {}

-- Size: Decrement Quantity
jnx_equities_pts_ouch_v1_12.decrement_quantity.size = 4

-- Display: Decrement Quantity
jnx_equities_pts_ouch_v1_12.decrement_quantity.display = function(value)
  return "Decrement Quantity: "..value
end

-- Dissect: Decrement Quantity
jnx_equities_pts_ouch_v1_12.decrement_quantity.dissect = function(buffer, offset, packet, parent)
  local length = jnx_equities_pts_ouch_v1_12.decrement_quantity.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = jnx_equities_pts_ouch_v1_12.decrement_quantity.display(value, buffer, offset, packet, parent)

  parent:add(omi_jnx_equities_pts_ouch_v1_12.fields.decrement_quantity, range, value, display)

  return offset + length, value
end

-- Order Aiq Canceled Message
jnx_equities_pts_ouch_v1_12.order_aiq_canceled_message = {}

-- Size: Order Aiq Canceled Message
jnx_equities_pts_ouch_v1_12.order_aiq_canceled_message.size =
  jnx_equities_pts_ouch_v1_12.timestamp.size + 
  jnx_equities_pts_ouch_v1_12.order_token.size + 
  jnx_equities_pts_ouch_v1_12.decrement_quantity.size + 
  jnx_equities_pts_ouch_v1_12.order_canceled_reason.size + 
  jnx_equities_pts_ouch_v1_12.quantity_prevented_from_trading.size + 
  jnx_equities_pts_ouch_v1_12.execution_price.size + 
  jnx_equities_pts_ouch_v1_12.liquidity_indicator.size

-- Display: Order Aiq Canceled Message
jnx_equities_pts_ouch_v1_12.order_aiq_canceled_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Order Aiq Canceled Message
jnx_equities_pts_ouch_v1_12.order_aiq_canceled_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Timestamp: 8 Byte Unsigned Fixed Width Integer
  index, timestamp = jnx_equities_pts_ouch_v1_12.timestamp.dissect(buffer, index, packet, parent)

  -- Order Token: 4 Byte Unsigned Fixed Width Integer
  index, order_token = jnx_equities_pts_ouch_v1_12.order_token.dissect(buffer, index, packet, parent)

  -- Decrement Quantity: 4 Byte Unsigned Fixed Width Integer
  index, decrement_quantity = jnx_equities_pts_ouch_v1_12.decrement_quantity.dissect(buffer, index, packet, parent)

  -- Order Canceled Reason: 1 Byte Ascii String Enum with 16 values
  index, order_canceled_reason = jnx_equities_pts_ouch_v1_12.order_canceled_reason.dissect(buffer, index, packet, parent)

  -- Quantity Prevented From Trading: 4 Byte Unsigned Fixed Width Integer
  index, quantity_prevented_from_trading = jnx_equities_pts_ouch_v1_12.quantity_prevented_from_trading.dissect(buffer, index, packet, parent)

  -- Execution Price: 4 Byte Unsigned Fixed Width Integer
  index, execution_price = jnx_equities_pts_ouch_v1_12.execution_price.dissect(buffer, index, packet, parent)

  -- Liquidity Indicator: 1 Byte Ascii String Enum with 2 values
  index, liquidity_indicator = jnx_equities_pts_ouch_v1_12.liquidity_indicator.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Order Aiq Canceled Message
jnx_equities_pts_ouch_v1_12.order_aiq_canceled_message.dissect = function(buffer, offset, packet, parent)
  if show.order_aiq_canceled_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_jnx_equities_pts_ouch_v1_12.fields.order_aiq_canceled_message, buffer(offset, 0))
    local index = jnx_equities_pts_ouch_v1_12.order_aiq_canceled_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = jnx_equities_pts_ouch_v1_12.order_aiq_canceled_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return jnx_equities_pts_ouch_v1_12.order_aiq_canceled_message.fields(buffer, offset, packet, parent)
  end
end

-- Order Canceled Message
jnx_equities_pts_ouch_v1_12.order_canceled_message = {}

-- Size: Order Canceled Message
jnx_equities_pts_ouch_v1_12.order_canceled_message.size =
  jnx_equities_pts_ouch_v1_12.timestamp.size + 
  jnx_equities_pts_ouch_v1_12.order_token.size + 
  jnx_equities_pts_ouch_v1_12.decrement_quantity.size + 
  jnx_equities_pts_ouch_v1_12.order_canceled_reason.size

-- Display: Order Canceled Message
jnx_equities_pts_ouch_v1_12.order_canceled_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Order Canceled Message
jnx_equities_pts_ouch_v1_12.order_canceled_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Timestamp: 8 Byte Unsigned Fixed Width Integer
  index, timestamp = jnx_equities_pts_ouch_v1_12.timestamp.dissect(buffer, index, packet, parent)

  -- Order Token: 4 Byte Unsigned Fixed Width Integer
  index, order_token = jnx_equities_pts_ouch_v1_12.order_token.dissect(buffer, index, packet, parent)

  -- Decrement Quantity: 4 Byte Unsigned Fixed Width Integer
  index, decrement_quantity = jnx_equities_pts_ouch_v1_12.decrement_quantity.dissect(buffer, index, packet, parent)

  -- Order Canceled Reason: 1 Byte Ascii String Enum with 16 values
  index, order_canceled_reason = jnx_equities_pts_ouch_v1_12.order_canceled_reason.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Order Canceled Message
jnx_equities_pts_ouch_v1_12.order_canceled_message.dissect = function(buffer, offset, packet, parent)
  if show.order_canceled_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_jnx_equities_pts_ouch_v1_12.fields.order_canceled_message, buffer(offset, 0))
    local index = jnx_equities_pts_ouch_v1_12.order_canceled_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = jnx_equities_pts_ouch_v1_12.order_canceled_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return jnx_equities_pts_ouch_v1_12.order_canceled_message.fields(buffer, offset, packet, parent)
  end
end

-- Previous Order Token
jnx_equities_pts_ouch_v1_12.previous_order_token = {}

-- Size: Previous Order Token
jnx_equities_pts_ouch_v1_12.previous_order_token.size = 4

-- Display: Previous Order Token
jnx_equities_pts_ouch_v1_12.previous_order_token.display = function(value)
  return "Previous Order Token: "..value
end

-- Dissect: Previous Order Token
jnx_equities_pts_ouch_v1_12.previous_order_token.dissect = function(buffer, offset, packet, parent)
  local length = jnx_equities_pts_ouch_v1_12.previous_order_token.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = jnx_equities_pts_ouch_v1_12.previous_order_token.display(value, buffer, offset, packet, parent)

  parent:add(omi_jnx_equities_pts_ouch_v1_12.fields.previous_order_token, range, value, display)

  return offset + length, value
end

-- Order State
jnx_equities_pts_ouch_v1_12.order_state = {}

-- Size: Order State
jnx_equities_pts_ouch_v1_12.order_state.size = 1

-- Display: Order State
jnx_equities_pts_ouch_v1_12.order_state.display = function(value)
  if value == "L" then
    return "Order State: Live (L)"
  end
  if value == "D" then
    return "Order State: Dead (D)"
  end

  return "Order State: Unknown("..value..")"
end

-- Dissect: Order State
jnx_equities_pts_ouch_v1_12.order_state.dissect = function(buffer, offset, packet, parent)
  local length = jnx_equities_pts_ouch_v1_12.order_state.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = jnx_equities_pts_ouch_v1_12.order_state.display(value, buffer, offset, packet, parent)

  parent:add(omi_jnx_equities_pts_ouch_v1_12.fields.order_state, range, value, display)

  return offset + length, value
end

-- Order Number
jnx_equities_pts_ouch_v1_12.order_number = {}

-- Size: Order Number
jnx_equities_pts_ouch_v1_12.order_number.size = 8

-- Display: Order Number
jnx_equities_pts_ouch_v1_12.order_number.display = function(value)
  return "Order Number: "..value
end

-- Dissect: Order Number
jnx_equities_pts_ouch_v1_12.order_number.dissect = function(buffer, offset, packet, parent)
  local length = jnx_equities_pts_ouch_v1_12.order_number.size
  local range = buffer(offset, length)
  local value = range:uint64()
  local display = jnx_equities_pts_ouch_v1_12.order_number.display(value, buffer, offset, packet, parent)

  parent:add(omi_jnx_equities_pts_ouch_v1_12.fields.order_number, range, value, display)

  return offset + length, value
end

-- Order Replaced Message
jnx_equities_pts_ouch_v1_12.order_replaced_message = {}

-- Size: Order Replaced Message
jnx_equities_pts_ouch_v1_12.order_replaced_message.size =
  jnx_equities_pts_ouch_v1_12.timestamp.size + 
  jnx_equities_pts_ouch_v1_12.replacement_order_token.size + 
  jnx_equities_pts_ouch_v1_12.buy_sell_indicator.size + 
  jnx_equities_pts_ouch_v1_12.quantity.size + 
  jnx_equities_pts_ouch_v1_12.orderbook_id.size + 
  jnx_equities_pts_ouch_v1_12.group.size + 
  jnx_equities_pts_ouch_v1_12.price.size + 
  jnx_equities_pts_ouch_v1_12.time_in_force.size + 
  jnx_equities_pts_ouch_v1_12.display.size + 
  jnx_equities_pts_ouch_v1_12.order_number.size + 
  jnx_equities_pts_ouch_v1_12.minimum_quantity.size + 
  jnx_equities_pts_ouch_v1_12.order_state.size + 
  jnx_equities_pts_ouch_v1_12.previous_order_token.size

-- Display: Order Replaced Message
jnx_equities_pts_ouch_v1_12.order_replaced_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Order Replaced Message
jnx_equities_pts_ouch_v1_12.order_replaced_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Timestamp: 8 Byte Unsigned Fixed Width Integer
  index, timestamp = jnx_equities_pts_ouch_v1_12.timestamp.dissect(buffer, index, packet, parent)

  -- Replacement Order Token: 4 Byte Unsigned Fixed Width Integer
  index, replacement_order_token = jnx_equities_pts_ouch_v1_12.replacement_order_token.dissect(buffer, index, packet, parent)

  -- Buy Sell Indicator: 1 Byte Ascii String Enum with 4 values
  index, buy_sell_indicator = jnx_equities_pts_ouch_v1_12.buy_sell_indicator.dissect(buffer, index, packet, parent)

  -- Quantity: 4 Byte Unsigned Fixed Width Integer
  index, quantity = jnx_equities_pts_ouch_v1_12.quantity.dissect(buffer, index, packet, parent)

  -- Orderbook Id: 4 Byte Ascii String
  index, orderbook_id = jnx_equities_pts_ouch_v1_12.orderbook_id.dissect(buffer, index, packet, parent)

  -- Group: 4 Byte Ascii String Enum with 4 values
  index, group = jnx_equities_pts_ouch_v1_12.group.dissect(buffer, index, packet, parent)

  -- Price: 4 Byte Unsigned Fixed Width Integer
  index, price = jnx_equities_pts_ouch_v1_12.price.dissect(buffer, index, packet, parent)

  -- Time In Force: 4 Byte Unsigned Fixed Width Integer Enum with 2 values
  index, time_in_force = jnx_equities_pts_ouch_v1_12.time_in_force.dissect(buffer, index, packet, parent)

  -- Display: 1 Byte Ascii String Enum with 2 values
  index, display = jnx_equities_pts_ouch_v1_12.display.dissect(buffer, index, packet, parent)

  -- Order Number: 8 Byte Unsigned Fixed Width Integer
  index, order_number = jnx_equities_pts_ouch_v1_12.order_number.dissect(buffer, index, packet, parent)

  -- Minimum Quantity: 4 Byte Unsigned Fixed Width Integer
  index, minimum_quantity = jnx_equities_pts_ouch_v1_12.minimum_quantity.dissect(buffer, index, packet, parent)

  -- Order State: 1 Byte Ascii String Enum with 2 values
  index, order_state = jnx_equities_pts_ouch_v1_12.order_state.dissect(buffer, index, packet, parent)

  -- Previous Order Token: 4 Byte Unsigned Fixed Width Integer
  index, previous_order_token = jnx_equities_pts_ouch_v1_12.previous_order_token.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Order Replaced Message
jnx_equities_pts_ouch_v1_12.order_replaced_message.dissect = function(buffer, offset, packet, parent)
  if show.order_replaced_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_jnx_equities_pts_ouch_v1_12.fields.order_replaced_message, buffer(offset, 0))
    local index = jnx_equities_pts_ouch_v1_12.order_replaced_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = jnx_equities_pts_ouch_v1_12.order_replaced_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return jnx_equities_pts_ouch_v1_12.order_replaced_message.fields(buffer, offset, packet, parent)
  end
end

-- Order Accepted Message
jnx_equities_pts_ouch_v1_12.order_accepted_message = {}

-- Size: Order Accepted Message
jnx_equities_pts_ouch_v1_12.order_accepted_message.size =
  jnx_equities_pts_ouch_v1_12.timestamp.size + 
  jnx_equities_pts_ouch_v1_12.order_token.size + 
  jnx_equities_pts_ouch_v1_12.client_reference.size + 
  jnx_equities_pts_ouch_v1_12.buy_sell_indicator.size + 
  jnx_equities_pts_ouch_v1_12.quantity.size + 
  jnx_equities_pts_ouch_v1_12.orderbook_id.size + 
  jnx_equities_pts_ouch_v1_12.group.size + 
  jnx_equities_pts_ouch_v1_12.price.size + 
  jnx_equities_pts_ouch_v1_12.time_in_force.size + 
  jnx_equities_pts_ouch_v1_12.firm_id.size + 
  jnx_equities_pts_ouch_v1_12.display.size + 
  jnx_equities_pts_ouch_v1_12.capacity.size + 
  jnx_equities_pts_ouch_v1_12.order_number.size + 
  jnx_equities_pts_ouch_v1_12.minimum_quantity.size + 
  jnx_equities_pts_ouch_v1_12.order_state.size + 
  jnx_equities_pts_ouch_v1_12.order_classification.size + 
  jnx_equities_pts_ouch_v1_12.cash_margin_type.size

-- Display: Order Accepted Message
jnx_equities_pts_ouch_v1_12.order_accepted_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Order Accepted Message
jnx_equities_pts_ouch_v1_12.order_accepted_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Timestamp: 8 Byte Unsigned Fixed Width Integer
  index, timestamp = jnx_equities_pts_ouch_v1_12.timestamp.dissect(buffer, index, packet, parent)

  -- Order Token: 4 Byte Unsigned Fixed Width Integer
  index, order_token = jnx_equities_pts_ouch_v1_12.order_token.dissect(buffer, index, packet, parent)

  -- Client Reference: 10 Byte Ascii String
  index, client_reference = jnx_equities_pts_ouch_v1_12.client_reference.dissect(buffer, index, packet, parent)

  -- Buy Sell Indicator: 1 Byte Ascii String Enum with 4 values
  index, buy_sell_indicator = jnx_equities_pts_ouch_v1_12.buy_sell_indicator.dissect(buffer, index, packet, parent)

  -- Quantity: 4 Byte Unsigned Fixed Width Integer
  index, quantity = jnx_equities_pts_ouch_v1_12.quantity.dissect(buffer, index, packet, parent)

  -- Orderbook Id: 4 Byte Ascii String
  index, orderbook_id = jnx_equities_pts_ouch_v1_12.orderbook_id.dissect(buffer, index, packet, parent)

  -- Group: 4 Byte Ascii String Enum with 4 values
  index, group = jnx_equities_pts_ouch_v1_12.group.dissect(buffer, index, packet, parent)

  -- Price: 4 Byte Unsigned Fixed Width Integer
  index, price = jnx_equities_pts_ouch_v1_12.price.dissect(buffer, index, packet, parent)

  -- Time In Force: 4 Byte Unsigned Fixed Width Integer Enum with 2 values
  index, time_in_force = jnx_equities_pts_ouch_v1_12.time_in_force.dissect(buffer, index, packet, parent)

  -- Firm Id: 4 Byte Unsigned Fixed Width Integer
  index, firm_id = jnx_equities_pts_ouch_v1_12.firm_id.dissect(buffer, index, packet, parent)

  -- Display: 1 Byte Ascii String Enum with 2 values
  index, display = jnx_equities_pts_ouch_v1_12.display.dissect(buffer, index, packet, parent)

  -- Capacity: 1 Byte Ascii String Enum with 2 values
  index, capacity = jnx_equities_pts_ouch_v1_12.capacity.dissect(buffer, index, packet, parent)

  -- Order Number: 8 Byte Unsigned Fixed Width Integer
  index, order_number = jnx_equities_pts_ouch_v1_12.order_number.dissect(buffer, index, packet, parent)

  -- Minimum Quantity: 4 Byte Unsigned Fixed Width Integer
  index, minimum_quantity = jnx_equities_pts_ouch_v1_12.minimum_quantity.dissect(buffer, index, packet, parent)

  -- Order State: 1 Byte Ascii String Enum with 2 values
  index, order_state = jnx_equities_pts_ouch_v1_12.order_state.dissect(buffer, index, packet, parent)

  -- Order Classification: 1 Byte Ascii String Enum with 5 values
  index, order_classification = jnx_equities_pts_ouch_v1_12.order_classification.dissect(buffer, index, packet, parent)

  -- Cash Margin Type: 1 Byte Ascii String Enum with 5 values
  index, cash_margin_type = jnx_equities_pts_ouch_v1_12.cash_margin_type.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Order Accepted Message
jnx_equities_pts_ouch_v1_12.order_accepted_message.dissect = function(buffer, offset, packet, parent)
  if show.order_accepted_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_jnx_equities_pts_ouch_v1_12.fields.order_accepted_message, buffer(offset, 0))
    local index = jnx_equities_pts_ouch_v1_12.order_accepted_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = jnx_equities_pts_ouch_v1_12.order_accepted_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return jnx_equities_pts_ouch_v1_12.order_accepted_message.fields(buffer, offset, packet, parent)
  end
end

-- System Event
jnx_equities_pts_ouch_v1_12.system_event = {}

-- Size: System Event
jnx_equities_pts_ouch_v1_12.system_event.size = 1

-- Display: System Event
jnx_equities_pts_ouch_v1_12.system_event.display = function(value)
  if value == "S" then
    return "System Event: Start Of Day (S)"
  end
  if value == "E" then
    return "System Event: End Of Day (E)"
  end

  return "System Event: Unknown("..value..")"
end

-- Dissect: System Event
jnx_equities_pts_ouch_v1_12.system_event.dissect = function(buffer, offset, packet, parent)
  local length = jnx_equities_pts_ouch_v1_12.system_event.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = jnx_equities_pts_ouch_v1_12.system_event.display(value, buffer, offset, packet, parent)

  parent:add(omi_jnx_equities_pts_ouch_v1_12.fields.system_event, range, value, display)

  return offset + length, value
end

-- System Event Message
jnx_equities_pts_ouch_v1_12.system_event_message = {}

-- Size: System Event Message
jnx_equities_pts_ouch_v1_12.system_event_message.size =
  jnx_equities_pts_ouch_v1_12.timestamp.size + 
  jnx_equities_pts_ouch_v1_12.system_event.size

-- Display: System Event Message
jnx_equities_pts_ouch_v1_12.system_event_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: System Event Message
jnx_equities_pts_ouch_v1_12.system_event_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Timestamp: 8 Byte Unsigned Fixed Width Integer
  index, timestamp = jnx_equities_pts_ouch_v1_12.timestamp.dissect(buffer, index, packet, parent)

  -- System Event: 1 Byte Ascii String Enum with 2 values
  index, system_event = jnx_equities_pts_ouch_v1_12.system_event.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: System Event Message
jnx_equities_pts_ouch_v1_12.system_event_message.dissect = function(buffer, offset, packet, parent)
  if show.system_event_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_jnx_equities_pts_ouch_v1_12.fields.system_event_message, buffer(offset, 0))
    local index = jnx_equities_pts_ouch_v1_12.system_event_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = jnx_equities_pts_ouch_v1_12.system_event_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return jnx_equities_pts_ouch_v1_12.system_event_message.fields(buffer, offset, packet, parent)
  end
end

-- Sequenced Message
jnx_equities_pts_ouch_v1_12.sequenced_message = {}

-- Size: Sequenced Message
jnx_equities_pts_ouch_v1_12.sequenced_message.size = function(buffer, offset, sequenced_message_type)
  -- Size of System Event Message
  if sequenced_message_type == "S" then
    return jnx_equities_pts_ouch_v1_12.system_event_message.size
  end
  -- Size of Order Accepted Message
  if sequenced_message_type == "A" then
    return jnx_equities_pts_ouch_v1_12.order_accepted_message.size
  end
  -- Size of Order Replaced Message
  if sequenced_message_type == "U" then
    return jnx_equities_pts_ouch_v1_12.order_replaced_message.size
  end
  -- Size of Order Canceled Message
  if sequenced_message_type == "C" then
    return jnx_equities_pts_ouch_v1_12.order_canceled_message.size
  end
  -- Size of Order Aiq Canceled Message
  if sequenced_message_type == "D" then
    return jnx_equities_pts_ouch_v1_12.order_aiq_canceled_message.size
  end
  -- Size of Order Executed Message
  if sequenced_message_type == "E" then
    return jnx_equities_pts_ouch_v1_12.order_executed_message.size
  end
  -- Size of Order Rejected Message
  if sequenced_message_type == "J" then
    return jnx_equities_pts_ouch_v1_12.order_rejected_message.size
  end

  return 0
end

-- Display: Sequenced Message
jnx_equities_pts_ouch_v1_12.sequenced_message.display = function(buffer, offset, packet, parent)
  return ""
end

-- Dissect Branches: Sequenced Message
jnx_equities_pts_ouch_v1_12.sequenced_message.branches = function(buffer, offset, packet, parent, sequenced_message_type)
  -- Dissect System Event Message
  if sequenced_message_type == "S" then
    return jnx_equities_pts_ouch_v1_12.system_event_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Order Accepted Message
  if sequenced_message_type == "A" then
    return jnx_equities_pts_ouch_v1_12.order_accepted_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Order Replaced Message
  if sequenced_message_type == "U" then
    return jnx_equities_pts_ouch_v1_12.order_replaced_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Order Canceled Message
  if sequenced_message_type == "C" then
    return jnx_equities_pts_ouch_v1_12.order_canceled_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Order Aiq Canceled Message
  if sequenced_message_type == "D" then
    return jnx_equities_pts_ouch_v1_12.order_aiq_canceled_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Order Executed Message
  if sequenced_message_type == "E" then
    return jnx_equities_pts_ouch_v1_12.order_executed_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Order Rejected Message
  if sequenced_message_type == "J" then
    return jnx_equities_pts_ouch_v1_12.order_rejected_message.dissect(buffer, offset, packet, parent)
  end

  return offset
end

-- Dissect: Sequenced Message
jnx_equities_pts_ouch_v1_12.sequenced_message.dissect = function(buffer, offset, packet, parent, sequenced_message_type)
  if not show.sequenced_message then
    return jnx_equities_pts_ouch_v1_12.sequenced_message.branches(buffer, offset, packet, parent, sequenced_message_type)
  end

  -- Calculate size and check that branch is not empty
  local size = jnx_equities_pts_ouch_v1_12.sequenced_message.size(buffer, offset, sequenced_message_type)
  if size == 0 then
    return offset
  end

  -- Dissect Element
  local range = buffer(offset, size)
  local display = jnx_equities_pts_ouch_v1_12.sequenced_message.display(buffer, packet, parent)
  local element = parent:add(omi_jnx_equities_pts_ouch_v1_12.fields.sequenced_message, range, display)

  return jnx_equities_pts_ouch_v1_12.sequenced_message.branches(buffer, offset, packet, parent, sequenced_message_type)
end

-- Sequenced Message Type
jnx_equities_pts_ouch_v1_12.sequenced_message_type = {}

-- Size: Sequenced Message Type
jnx_equities_pts_ouch_v1_12.sequenced_message_type.size = 1

-- Display: Sequenced Message Type
jnx_equities_pts_ouch_v1_12.sequenced_message_type.display = function(value)
  if value == "S" then
    return "Sequenced Message Type: System Event Message (S)"
  end
  if value == "A" then
    return "Sequenced Message Type: Order Accepted Message (A)"
  end
  if value == "U" then
    return "Sequenced Message Type: Order Replaced Message (U)"
  end
  if value == "C" then
    return "Sequenced Message Type: Order Canceled Message (C)"
  end
  if value == "D" then
    return "Sequenced Message Type: Order Aiq Canceled Message (D)"
  end
  if value == "E" then
    return "Sequenced Message Type: Order Executed Message (E)"
  end
  if value == "J" then
    return "Sequenced Message Type: Order Rejected Message (J)"
  end

  return "Sequenced Message Type: Unknown("..value..")"
end

-- Dissect: Sequenced Message Type
jnx_equities_pts_ouch_v1_12.sequenced_message_type.dissect = function(buffer, offset, packet, parent)
  local length = jnx_equities_pts_ouch_v1_12.sequenced_message_type.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = jnx_equities_pts_ouch_v1_12.sequenced_message_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_jnx_equities_pts_ouch_v1_12.fields.sequenced_message_type, range, value, display)

  return offset + length, value
end

-- Sequenced Data Packet
jnx_equities_pts_ouch_v1_12.sequenced_data_packet = {}

-- Read runtime size of: Sequenced Data Packet
jnx_equities_pts_ouch_v1_12.sequenced_data_packet.size = function(buffer, offset)
  local index = offset

  -- Dependency element: Packet Length
  local packet_length = buffer(offset - 3, 2):uint()

  return packet_length - 1
end

-- Display: Sequenced Data Packet
jnx_equities_pts_ouch_v1_12.sequenced_data_packet.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Sequenced Data Packet
jnx_equities_pts_ouch_v1_12.sequenced_data_packet.fields = function(buffer, offset, packet, parent, size_of_sequenced_data_packet)
  local index = offset

  -- Sequenced Message Type: 1 Byte Ascii String Enum with 7 values
  index, sequenced_message_type = jnx_equities_pts_ouch_v1_12.sequenced_message_type.dissect(buffer, index, packet, parent)

  -- Sequenced Message: Runtime Type with 7 branches
  index = jnx_equities_pts_ouch_v1_12.sequenced_message.dissect(buffer, index, packet, parent, sequenced_message_type)

  return index
end

-- Dissect: Sequenced Data Packet
jnx_equities_pts_ouch_v1_12.sequenced_data_packet.dissect = function(buffer, offset, packet, parent)
  -- Parse runtime size
  local size_of_sequenced_data_packet = jnx_equities_pts_ouch_v1_12.sequenced_data_packet.size(buffer, offset)

  -- Optionally add struct element to protocol tree
  if show.sequenced_data_packet then
    local range = buffer(offset, size_of_sequenced_data_packet)
    local display = jnx_equities_pts_ouch_v1_12.sequenced_data_packet.display(buffer, packet, parent)
    parent = parent:add(omi_jnx_equities_pts_ouch_v1_12.fields.sequenced_data_packet, range, display)
  end

  jnx_equities_pts_ouch_v1_12.sequenced_data_packet.fields(buffer, offset, packet, parent, size_of_sequenced_data_packet)

  return offset + size_of_sequenced_data_packet
end

-- Reject Reason Code
jnx_equities_pts_ouch_v1_12.reject_reason_code = {}

-- Size: Reject Reason Code
jnx_equities_pts_ouch_v1_12.reject_reason_code.size = 1

-- Display: Reject Reason Code
jnx_equities_pts_ouch_v1_12.reject_reason_code.display = function(value)
  return "Reject Reason Code: "..value
end

-- Dissect: Reject Reason Code
jnx_equities_pts_ouch_v1_12.reject_reason_code.dissect = function(buffer, offset, packet, parent)
  local length = jnx_equities_pts_ouch_v1_12.reject_reason_code.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = jnx_equities_pts_ouch_v1_12.reject_reason_code.display(value, buffer, offset, packet, parent)

  parent:add(omi_jnx_equities_pts_ouch_v1_12.fields.reject_reason_code, range, value, display)

  return offset + length, value
end

-- Login Rejected Packet
jnx_equities_pts_ouch_v1_12.login_rejected_packet = {}

-- Size: Login Rejected Packet
jnx_equities_pts_ouch_v1_12.login_rejected_packet.size =
  jnx_equities_pts_ouch_v1_12.reject_reason_code.size

-- Display: Login Rejected Packet
jnx_equities_pts_ouch_v1_12.login_rejected_packet.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Login Rejected Packet
jnx_equities_pts_ouch_v1_12.login_rejected_packet.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Reject Reason Code: 1 Byte Ascii String
  index, reject_reason_code = jnx_equities_pts_ouch_v1_12.reject_reason_code.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Login Rejected Packet
jnx_equities_pts_ouch_v1_12.login_rejected_packet.dissect = function(buffer, offset, packet, parent)
  if show.login_rejected_packet then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_jnx_equities_pts_ouch_v1_12.fields.login_rejected_packet, buffer(offset, 0))
    local index = jnx_equities_pts_ouch_v1_12.login_rejected_packet.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = jnx_equities_pts_ouch_v1_12.login_rejected_packet.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return jnx_equities_pts_ouch_v1_12.login_rejected_packet.fields(buffer, offset, packet, parent)
  end
end

-- Sequence Number
jnx_equities_pts_ouch_v1_12.sequence_number = {}

-- Size: Sequence Number
jnx_equities_pts_ouch_v1_12.sequence_number.size = 20

-- Display: Sequence Number
jnx_equities_pts_ouch_v1_12.sequence_number.display = function(value)
  return "Sequence Number: "..value
end

-- Dissect: Sequence Number
jnx_equities_pts_ouch_v1_12.sequence_number.dissect = function(buffer, offset, packet, parent)
  local length = jnx_equities_pts_ouch_v1_12.sequence_number.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = jnx_equities_pts_ouch_v1_12.sequence_number.display(value, buffer, offset, packet, parent)

  parent:add(omi_jnx_equities_pts_ouch_v1_12.fields.sequence_number, range, value, display)

  return offset + length, value
end

-- Session
jnx_equities_pts_ouch_v1_12.session = {}

-- Size: Session
jnx_equities_pts_ouch_v1_12.session.size = 10

-- Display: Session
jnx_equities_pts_ouch_v1_12.session.display = function(value)
  return "Session: "..value
end

-- Dissect: Session
jnx_equities_pts_ouch_v1_12.session.dissect = function(buffer, offset, packet, parent)
  local length = jnx_equities_pts_ouch_v1_12.session.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = jnx_equities_pts_ouch_v1_12.session.display(value, buffer, offset, packet, parent)

  parent:add(omi_jnx_equities_pts_ouch_v1_12.fields.session, range, value, display)

  return offset + length, value
end

-- Login Accepted Packet
jnx_equities_pts_ouch_v1_12.login_accepted_packet = {}

-- Size: Login Accepted Packet
jnx_equities_pts_ouch_v1_12.login_accepted_packet.size =
  jnx_equities_pts_ouch_v1_12.session.size + 
  jnx_equities_pts_ouch_v1_12.sequence_number.size

-- Display: Login Accepted Packet
jnx_equities_pts_ouch_v1_12.login_accepted_packet.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Login Accepted Packet
jnx_equities_pts_ouch_v1_12.login_accepted_packet.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Session: 10 Byte Ascii String
  index, session = jnx_equities_pts_ouch_v1_12.session.dissect(buffer, index, packet, parent)

  -- Sequence Number: 20 Byte Ascii String
  index, sequence_number = jnx_equities_pts_ouch_v1_12.sequence_number.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Login Accepted Packet
jnx_equities_pts_ouch_v1_12.login_accepted_packet.dissect = function(buffer, offset, packet, parent)
  if show.login_accepted_packet then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_jnx_equities_pts_ouch_v1_12.fields.login_accepted_packet, buffer(offset, 0))
    local index = jnx_equities_pts_ouch_v1_12.login_accepted_packet.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = jnx_equities_pts_ouch_v1_12.login_accepted_packet.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return jnx_equities_pts_ouch_v1_12.login_accepted_packet.fields(buffer, offset, packet, parent)
  end
end

-- Text
jnx_equities_pts_ouch_v1_12.text = {}

-- Size: Text
jnx_equities_pts_ouch_v1_12.text.size = 1

-- Display: Text
jnx_equities_pts_ouch_v1_12.text.display = function(value)
  return "Text: "..value
end

-- Dissect: Text
jnx_equities_pts_ouch_v1_12.text.dissect = function(buffer, offset, packet, parent)
  local length = jnx_equities_pts_ouch_v1_12.text.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = jnx_equities_pts_ouch_v1_12.text.display(value, buffer, offset, packet, parent)

  parent:add(omi_jnx_equities_pts_ouch_v1_12.fields.text, range, value, display)

  return offset + length, value
end

-- Debug Packet
jnx_equities_pts_ouch_v1_12.debug_packet = {}

-- Size: Debug Packet
jnx_equities_pts_ouch_v1_12.debug_packet.size =
  jnx_equities_pts_ouch_v1_12.text.size

-- Display: Debug Packet
jnx_equities_pts_ouch_v1_12.debug_packet.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Debug Packet
jnx_equities_pts_ouch_v1_12.debug_packet.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Text: 1 Byte Ascii String
  index, text = jnx_equities_pts_ouch_v1_12.text.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Debug Packet
jnx_equities_pts_ouch_v1_12.debug_packet.dissect = function(buffer, offset, packet, parent)
  if show.debug_packet then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_jnx_equities_pts_ouch_v1_12.fields.debug_packet, buffer(offset, 0))
    local index = jnx_equities_pts_ouch_v1_12.debug_packet.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = jnx_equities_pts_ouch_v1_12.debug_packet.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return jnx_equities_pts_ouch_v1_12.debug_packet.fields(buffer, offset, packet, parent)
  end
end

-- Payload
jnx_equities_pts_ouch_v1_12.payload = {}

-- Size: Payload
jnx_equities_pts_ouch_v1_12.payload.size = function(buffer, offset, packet_type)
  -- Size of Debug Packet
  if packet_type == "+" then
    return jnx_equities_pts_ouch_v1_12.debug_packet.size
  end
  -- Size of Login Accepted Packet
  if packet_type == "A" then
    return jnx_equities_pts_ouch_v1_12.login_accepted_packet.size
  end
  -- Size of Login Rejected Packet
  if packet_type == "J" then
    return jnx_equities_pts_ouch_v1_12.login_rejected_packet.size
  end
  -- Size of Sequenced Data Packet
  if packet_type == "S" then
    return jnx_equities_pts_ouch_v1_12.sequenced_data_packet.size(buffer, offset)
  end
  -- Size of Login Request Packet
  if packet_type == "L" then
    return jnx_equities_pts_ouch_v1_12.login_request_packet.size
  end
  -- Size of Unsequenced Data Packet
  if packet_type == "U" then
    return jnx_equities_pts_ouch_v1_12.unsequenced_data_packet.size(buffer, offset)
  end

  return 0
end

-- Display: Payload
jnx_equities_pts_ouch_v1_12.payload.display = function(buffer, offset, packet, parent)
  return ""
end

-- Dissect Branches: Payload
jnx_equities_pts_ouch_v1_12.payload.branches = function(buffer, offset, packet, parent, packet_type)
  -- Dissect Debug Packet
  if packet_type == "+" then
    return jnx_equities_pts_ouch_v1_12.debug_packet.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Login Accepted Packet
  if packet_type == "A" then
    return jnx_equities_pts_ouch_v1_12.login_accepted_packet.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Login Rejected Packet
  if packet_type == "J" then
    return jnx_equities_pts_ouch_v1_12.login_rejected_packet.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Sequenced Data Packet
  if packet_type == "S" then
    return jnx_equities_pts_ouch_v1_12.sequenced_data_packet.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Login Request Packet
  if packet_type == "L" then
    return jnx_equities_pts_ouch_v1_12.login_request_packet.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Unsequenced Data Packet
  if packet_type == "U" then
    return jnx_equities_pts_ouch_v1_12.unsequenced_data_packet.dissect(buffer, offset, packet, parent)
  end

  return offset
end

-- Dissect: Payload
jnx_equities_pts_ouch_v1_12.payload.dissect = function(buffer, offset, packet, parent, packet_type)
  if not show.payload then
    return jnx_equities_pts_ouch_v1_12.payload.branches(buffer, offset, packet, parent, packet_type)
  end

  -- Calculate size and check that branch is not empty
  local size = jnx_equities_pts_ouch_v1_12.payload.size(buffer, offset, packet_type)
  if size == 0 then
    return offset
  end

  -- Dissect Element
  local range = buffer(offset, size)
  local display = jnx_equities_pts_ouch_v1_12.payload.display(buffer, packet, parent)
  local element = parent:add(omi_jnx_equities_pts_ouch_v1_12.fields.payload, range, display)

  return jnx_equities_pts_ouch_v1_12.payload.branches(buffer, offset, packet, parent, packet_type)
end

-- Packet Type
jnx_equities_pts_ouch_v1_12.packet_type = {}

-- Size: Packet Type
jnx_equities_pts_ouch_v1_12.packet_type.size = 1

-- Display: Packet Type
jnx_equities_pts_ouch_v1_12.packet_type.display = function(value)
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
jnx_equities_pts_ouch_v1_12.packet_type.dissect = function(buffer, offset, packet, parent)
  local length = jnx_equities_pts_ouch_v1_12.packet_type.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = jnx_equities_pts_ouch_v1_12.packet_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_jnx_equities_pts_ouch_v1_12.fields.packet_type, range, value, display)

  return offset + length, value
end

-- Packet Length
jnx_equities_pts_ouch_v1_12.packet_length = {}

-- Size: Packet Length
jnx_equities_pts_ouch_v1_12.packet_length.size = 2

-- Display: Packet Length
jnx_equities_pts_ouch_v1_12.packet_length.display = function(value)
  return "Packet Length: "..value
end

-- Dissect: Packet Length
jnx_equities_pts_ouch_v1_12.packet_length.dissect = function(buffer, offset, packet, parent)
  local length = jnx_equities_pts_ouch_v1_12.packet_length.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = jnx_equities_pts_ouch_v1_12.packet_length.display(value, buffer, offset, packet, parent)

  parent:add(omi_jnx_equities_pts_ouch_v1_12.fields.packet_length, range, value, display)

  return offset + length, value
end

-- Packet Header
jnx_equities_pts_ouch_v1_12.packet_header = {}

-- Size: Packet Header
jnx_equities_pts_ouch_v1_12.packet_header.size =
  jnx_equities_pts_ouch_v1_12.packet_length.size + 
  jnx_equities_pts_ouch_v1_12.packet_type.size

-- Display: Packet Header
jnx_equities_pts_ouch_v1_12.packet_header.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Packet Header
jnx_equities_pts_ouch_v1_12.packet_header.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Packet Length: 2 Byte Unsigned Fixed Width Integer
  index, packet_length = jnx_equities_pts_ouch_v1_12.packet_length.dissect(buffer, index, packet, parent)

  -- Packet Type: 1 Byte Ascii String Enum with 10 values
  index, packet_type = jnx_equities_pts_ouch_v1_12.packet_type.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Packet Header
jnx_equities_pts_ouch_v1_12.packet_header.dissect = function(buffer, offset, packet, parent)
  if show.packet_header then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_jnx_equities_pts_ouch_v1_12.fields.packet_header, buffer(offset, 0))
    local index = jnx_equities_pts_ouch_v1_12.packet_header.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = jnx_equities_pts_ouch_v1_12.packet_header.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return jnx_equities_pts_ouch_v1_12.packet_header.fields(buffer, offset, packet, parent)
  end
end

-- Soup Bin Tcp Packet
jnx_equities_pts_ouch_v1_12.soup_bin_tcp_packet = {}

-- Display: Soup Bin Tcp Packet
jnx_equities_pts_ouch_v1_12.soup_bin_tcp_packet.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Soup Bin Tcp Packet
jnx_equities_pts_ouch_v1_12.soup_bin_tcp_packet.fields = function(buffer, offset, packet, parent, size_of_soup_bin_tcp_packet)
  local index = offset

  -- Packet Header: Struct of 2 fields
  index, packet_header = jnx_equities_pts_ouch_v1_12.packet_header.dissect(buffer, index, packet, parent)

  -- Dependency element: Packet Type
  local packet_type = buffer(index - 1, 1):string()

  -- Payload: Runtime Type with 6 branches
  index = jnx_equities_pts_ouch_v1_12.payload.dissect(buffer, index, packet, parent, packet_type)

  return index
end

-- Dissect: Soup Bin Tcp Packet
jnx_equities_pts_ouch_v1_12.soup_bin_tcp_packet.dissect = function(buffer, offset, packet, parent, size_of_soup_bin_tcp_packet)
  local index = offset + size_of_soup_bin_tcp_packet

  -- Optionally add group/struct element to protocol tree
  if show.soup_bin_tcp_packet then
    parent = parent:add(omi_jnx_equities_pts_ouch_v1_12.fields.soup_bin_tcp_packet, buffer(offset, 0))
    local current = jnx_equities_pts_ouch_v1_12.soup_bin_tcp_packet.fields(buffer, offset, packet, parent, size_of_soup_bin_tcp_packet)
    parent:set_len(size_of_soup_bin_tcp_packet)
    local display = jnx_equities_pts_ouch_v1_12.soup_bin_tcp_packet.display(buffer, packet, parent)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    jnx_equities_pts_ouch_v1_12.soup_bin_tcp_packet.fields(buffer, offset, packet, parent, size_of_soup_bin_tcp_packet)

    return index
  end
end

-- Remaining Bytes For: Soup Bin Tcp Packet
local soup_bin_tcp_packet_bytes_remaining = function(buffer, index, available)
  -- Calculate the number of bytes remaining
  local remaining = available - index

  -- Check if packet size can be read
  if remaining < jnx_equities_pts_ouch_v1_12.packet_header.size then
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
jnx_equities_pts_ouch_v1_12.packet = {}

-- Dissect Packet
jnx_equities_pts_ouch_v1_12.packet.dissect = function(buffer, packet, parent)
  local index = 0

  -- Dependency for Soup Bin Tcp Packet
  local end_of_payload = buffer:len()

  -- Soup Bin Tcp Packet: Struct of 2 fields
  while index < end_of_payload do

    -- Are minimum number of bytes are available?
    local available, size_of_soup_bin_tcp_packet = soup_bin_tcp_packet_bytes_remaining(buffer, index, end_of_payload)

    if available > 0 then
      index = jnx_equities_pts_ouch_v1_12.soup_bin_tcp_packet.dissect(buffer, index, packet, parent, size_of_soup_bin_tcp_packet)
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
function omi_jnx_equities_pts_ouch_v1_12.init()
end

-- Dissector for Jnx Equities Pts Ouch 1.12
function omi_jnx_equities_pts_ouch_v1_12.dissector(buffer, packet, parent)

  -- Set protocol name
  packet.cols.protocol = omi_jnx_equities_pts_ouch_v1_12.name

  -- Dissect protocol
  local protocol = parent:add(omi_jnx_equities_pts_ouch_v1_12, buffer(), omi_jnx_equities_pts_ouch_v1_12.description, "("..buffer:len().." Bytes)")
  return jnx_equities_pts_ouch_v1_12.packet.dissect(buffer, packet, protocol)
end

-- Register With Tcp Table
local tcp_table = DissectorTable.get("tcp.port")
tcp_table:add(65333, omi_jnx_equities_pts_ouch_v1_12)


-----------------------------------------------------------------------
-- Protocol Heuristics
-----------------------------------------------------------------------

-- Verify size of packet
jnx_equities_pts_ouch_v1_12.packet.requiredsize = function(buffer)

  return true
end

-- Dissector Heuristic for Jnx Equities Pts Ouch 1.12
local function omi_jnx_equities_pts_ouch_v1_12_heuristic(buffer, packet, parent)
  -- Verify packet length
  if not jnx_equities_pts_ouch_v1_12.packet.requiredsize(buffer) then return false end

  -- Protocol is valid, set conversation and dissect this packet
  packet.conversation = omi_jnx_equities_pts_ouch_v1_12
  omi_jnx_equities_pts_ouch_v1_12.dissector(buffer, packet, parent)

  return true
end

-- Register Heuristic for Jnx Equities Pts Ouch 1.12
omi_jnx_equities_pts_ouch_v1_12:register_heuristic("tcp", omi_jnx_equities_pts_ouch_v1_12_heuristic)

-----------------------------------------------------------------------
-- Lua dissectors are an easily edited and modified cross-platform dissection solution.
-- Feel free to modify. Enjoy.
-----------------------------------------------------------------------
-- 
-- Protocol:
--   Organization: Japannext
--   Version: 1.12
--   Date: Wednesday, November 1, 2023
--   Specification: Japannext_PTS_OUCH_Equities_v1.12.pdf
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
