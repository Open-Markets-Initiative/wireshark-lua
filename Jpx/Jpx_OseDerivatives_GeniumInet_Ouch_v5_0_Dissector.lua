-----------------------------------------------------------------------
-- Lua Script Wireshark Dissector
-- 
-- Please see end of file for rules and regulations
-----------------------------------------------------------------------

-- Jpx OseDerivatives GeniumInet Ouch 5.0 Protocol
local omi_jpx_osederivatives_geniuminet_ouch_v5_0 = Proto("Jpx.OseDerivatives.GeniumInet.Ouch.v5.0.Lua", "Jpx OseDerivatives GeniumInet Ouch 5.0")

-- Protocol table
local jpx_osederivatives_geniuminet_ouch_v5_0 = {}

-----------------------------------------------------------------------
-- Declare Protocol Fields
-----------------------------------------------------------------------

-- Jpx OseDerivatives GeniumInet Ouch 5.0 Fields
omi_jpx_osederivatives_geniuminet_ouch_v5_0.fields.cancel_reason = ProtoField.new("Cancel Reason", "jpx.osederivatives.geniuminet.ouch.v5.0.cancelreason", ftypes.UINT8)
omi_jpx_osederivatives_geniuminet_ouch_v5_0.fields.client_account = ProtoField.new("Client Account", "jpx.osederivatives.geniuminet.ouch.v5.0.clientaccount", ftypes.STRING)
omi_jpx_osederivatives_geniuminet_ouch_v5_0.fields.combo_group_id = ProtoField.new("Combo Group Id", "jpx.osederivatives.geniuminet.ouch.v5.0.combogroupid", ftypes.UINT32)
omi_jpx_osederivatives_geniuminet_ouch_v5_0.fields.customer_info = ProtoField.new("Customer Info", "jpx.osederivatives.geniuminet.ouch.v5.0.customerinfo", ftypes.STRING)
omi_jpx_osederivatives_geniuminet_ouch_v5_0.fields.deal_source = ProtoField.new("Deal Source", "jpx.osederivatives.geniuminet.ouch.v5.0.dealsource", ftypes.UINT8)
omi_jpx_osederivatives_geniuminet_ouch_v5_0.fields.debug_packet = ProtoField.new("Debug Packet", "jpx.osederivatives.geniuminet.ouch.v5.0.debugpacket", ftypes.STRING)
omi_jpx_osederivatives_geniuminet_ouch_v5_0.fields.exchange_info = ProtoField.new("Exchange Info", "jpx.osederivatives.geniuminet.ouch.v5.0.exchangeinfo", ftypes.STRING)
omi_jpx_osederivatives_geniuminet_ouch_v5_0.fields.existing_order_token = ProtoField.new("Existing Order Token", "jpx.osederivatives.geniuminet.ouch.v5.0.existingordertoken", ftypes.STRING)
omi_jpx_osederivatives_geniuminet_ouch_v5_0.fields.login_accepted_packet = ProtoField.new("Login Accepted Packet", "jpx.osederivatives.geniuminet.ouch.v5.0.loginacceptedpacket", ftypes.STRING)
omi_jpx_osederivatives_geniuminet_ouch_v5_0.fields.login_rejected_packet = ProtoField.new("Login Rejected Packet", "jpx.osederivatives.geniuminet.ouch.v5.0.loginrejectedpacket", ftypes.STRING)
omi_jpx_osederivatives_geniuminet_ouch_v5_0.fields.login_request_packet = ProtoField.new("Login Request Packet", "jpx.osederivatives.geniuminet.ouch.v5.0.loginrequestpacket", ftypes.STRING)
omi_jpx_osederivatives_geniuminet_ouch_v5_0.fields.match_id = ProtoField.new("Match Id", "jpx.osederivatives.geniuminet.ouch.v5.0.matchid", ftypes.UINT64)
omi_jpx_osederivatives_geniuminet_ouch_v5_0.fields.open_close = ProtoField.new("Open Close", "jpx.osederivatives.geniuminet.ouch.v5.0.openclose", ftypes.UINT8)
omi_jpx_osederivatives_geniuminet_ouch_v5_0.fields.order_book_id = ProtoField.new("Order Book Id", "jpx.osederivatives.geniuminet.ouch.v5.0.orderbookid", ftypes.INT32)
omi_jpx_osederivatives_geniuminet_ouch_v5_0.fields.order_id = ProtoField.new("Order Id", "jpx.osederivatives.geniuminet.ouch.v5.0.orderid", ftypes.UINT64)
omi_jpx_osederivatives_geniuminet_ouch_v5_0.fields.order_state = ProtoField.new("Order State", "jpx.osederivatives.geniuminet.ouch.v5.0.orderstate", ftypes.UINT8)
omi_jpx_osederivatives_geniuminet_ouch_v5_0.fields.order_token = ProtoField.new("Order Token", "jpx.osederivatives.geniuminet.ouch.v5.0.ordertoken", ftypes.STRING)
omi_jpx_osederivatives_geniuminet_ouch_v5_0.fields.packet = ProtoField.new("Packet", "jpx.osederivatives.geniuminet.ouch.v5.0.packet", ftypes.STRING)
omi_jpx_osederivatives_geniuminet_ouch_v5_0.fields.packet_header = ProtoField.new("Packet Header", "jpx.osederivatives.geniuminet.ouch.v5.0.packetheader", ftypes.STRING)
omi_jpx_osederivatives_geniuminet_ouch_v5_0.fields.packet_length = ProtoField.new("Packet Length", "jpx.osederivatives.geniuminet.ouch.v5.0.packetlength", ftypes.UINT16)
omi_jpx_osederivatives_geniuminet_ouch_v5_0.fields.packet_type = ProtoField.new("Packet Type", "jpx.osederivatives.geniuminet.ouch.v5.0.packettype", ftypes.STRING)
omi_jpx_osederivatives_geniuminet_ouch_v5_0.fields.password = ProtoField.new("Password", "jpx.osederivatives.geniuminet.ouch.v5.0.password", ftypes.STRING)
omi_jpx_osederivatives_geniuminet_ouch_v5_0.fields.payload = ProtoField.new("Payload", "jpx.osederivatives.geniuminet.ouch.v5.0.payload", ftypes.STRING)
omi_jpx_osederivatives_geniuminet_ouch_v5_0.fields.previous_order_token = ProtoField.new("Previous Order Token", "jpx.osederivatives.geniuminet.ouch.v5.0.previousordertoken", ftypes.STRING)
omi_jpx_osederivatives_geniuminet_ouch_v5_0.fields.price = ProtoField.new("Price", "jpx.osederivatives.geniuminet.ouch.v5.0.price", ftypes.DOUBLE)
omi_jpx_osederivatives_geniuminet_ouch_v5_0.fields.quantity = ProtoField.new("Quantity", "jpx.osederivatives.geniuminet.ouch.v5.0.quantity", ftypes.UINT64)
omi_jpx_osederivatives_geniuminet_ouch_v5_0.fields.reject_code = ProtoField.new("Reject Code", "jpx.osederivatives.geniuminet.ouch.v5.0.rejectcode", ftypes.INT32)
omi_jpx_osederivatives_geniuminet_ouch_v5_0.fields.reject_reason_code = ProtoField.new("Reject Reason Code", "jpx.osederivatives.geniuminet.ouch.v5.0.rejectreasoncode", ftypes.STRING)
omi_jpx_osederivatives_geniuminet_ouch_v5_0.fields.replacement_order_token = ProtoField.new("Replacement Order Token", "jpx.osederivatives.geniuminet.ouch.v5.0.replacementordertoken", ftypes.STRING)
omi_jpx_osederivatives_geniuminet_ouch_v5_0.fields.requested_sequence_number = ProtoField.new("Requested Sequence Number", "jpx.osederivatives.geniuminet.ouch.v5.0.requestedsequencenumber", ftypes.STRING)
omi_jpx_osederivatives_geniuminet_ouch_v5_0.fields.requested_session = ProtoField.new("Requested Session", "jpx.osederivatives.geniuminet.ouch.v5.0.requestedsession", ftypes.STRING)
omi_jpx_osederivatives_geniuminet_ouch_v5_0.fields.scope = ProtoField.new("Scope", "jpx.osederivatives.geniuminet.ouch.v5.0.scope", ftypes.UINT8)
omi_jpx_osederivatives_geniuminet_ouch_v5_0.fields.sequence_number = ProtoField.new("Sequence Number", "jpx.osederivatives.geniuminet.ouch.v5.0.sequencenumber", ftypes.STRING)
omi_jpx_osederivatives_geniuminet_ouch_v5_0.fields.sequenced_data_packet = ProtoField.new("Sequenced Data Packet", "jpx.osederivatives.geniuminet.ouch.v5.0.sequenceddatapacket", ftypes.STRING)
omi_jpx_osederivatives_geniuminet_ouch_v5_0.fields.sequenced_message = ProtoField.new("Sequenced Message", "jpx.osederivatives.geniuminet.ouch.v5.0.sequencedmessage", ftypes.STRING)
omi_jpx_osederivatives_geniuminet_ouch_v5_0.fields.sequenced_message_type = ProtoField.new("Sequenced Message Type", "jpx.osederivatives.geniuminet.ouch.v5.0.sequencedmessagetype", ftypes.STRING)
omi_jpx_osederivatives_geniuminet_ouch_v5_0.fields.session = ProtoField.new("Session", "jpx.osederivatives.geniuminet.ouch.v5.0.session", ftypes.STRING)
omi_jpx_osederivatives_geniuminet_ouch_v5_0.fields.side = ProtoField.new("Side", "jpx.osederivatives.geniuminet.ouch.v5.0.side", ftypes.STRING)
omi_jpx_osederivatives_geniuminet_ouch_v5_0.fields.soup_bin_tcp_packet = ProtoField.new("Soup Bin Tcp Packet", "jpx.osederivatives.geniuminet.ouch.v5.0.soupbintcppacket", ftypes.STRING)
omi_jpx_osederivatives_geniuminet_ouch_v5_0.fields.status = ProtoField.new("Status", "jpx.osederivatives.geniuminet.ouch.v5.0.status", ftypes.UINT32)
omi_jpx_osederivatives_geniuminet_ouch_v5_0.fields.text = ProtoField.new("Text", "jpx.osederivatives.geniuminet.ouch.v5.0.text", ftypes.STRING)
omi_jpx_osederivatives_geniuminet_ouch_v5_0.fields.time_in_force = ProtoField.new("Time In Force", "jpx.osederivatives.geniuminet.ouch.v5.0.timeinforce", ftypes.UINT8)
omi_jpx_osederivatives_geniuminet_ouch_v5_0.fields.timestamp_nanoseconds = ProtoField.new("Timestamp Nanoseconds", "jpx.osederivatives.geniuminet.ouch.v5.0.timestampnanoseconds", ftypes.UINT64)
omi_jpx_osederivatives_geniuminet_ouch_v5_0.fields.trade_price = ProtoField.new("Trade Price", "jpx.osederivatives.geniuminet.ouch.v5.0.tradeprice", ftypes.DOUBLE)
omi_jpx_osederivatives_geniuminet_ouch_v5_0.fields.traded_quantity = ProtoField.new("Traded Quantity", "jpx.osederivatives.geniuminet.ouch.v5.0.tradedquantity", ftypes.UINT64)
omi_jpx_osederivatives_geniuminet_ouch_v5_0.fields.underlying_id = ProtoField.new("Underlying Id", "jpx.osederivatives.geniuminet.ouch.v5.0.underlyingid", ftypes.UINT32)
omi_jpx_osederivatives_geniuminet_ouch_v5_0.fields.unsequenced_data_packet = ProtoField.new("Unsequenced Data Packet", "jpx.osederivatives.geniuminet.ouch.v5.0.unsequenceddatapacket", ftypes.STRING)
omi_jpx_osederivatives_geniuminet_ouch_v5_0.fields.unsequenced_message = ProtoField.new("Unsequenced Message", "jpx.osederivatives.geniuminet.ouch.v5.0.unsequencedmessage", ftypes.STRING)
omi_jpx_osederivatives_geniuminet_ouch_v5_0.fields.unsequenced_message_type = ProtoField.new("Unsequenced Message Type", "jpx.osederivatives.geniuminet.ouch.v5.0.unsequencedmessagetype", ftypes.STRING)
omi_jpx_osederivatives_geniuminet_ouch_v5_0.fields.username = ProtoField.new("Username", "jpx.osederivatives.geniuminet.ouch.v5.0.username", ftypes.STRING)

-- Jpx OseDerivatives GeniumInet Ouch 5.0 messages
omi_jpx_osederivatives_geniuminet_ouch_v5_0.fields.cancel_by_order_id = ProtoField.new("Cancel By Order Id", "jpx.osederivatives.geniuminet.ouch.v5.0.cancelbyorderid", ftypes.STRING)
omi_jpx_osederivatives_geniuminet_ouch_v5_0.fields.cancel_order = ProtoField.new("Cancel Order", "jpx.osederivatives.geniuminet.ouch.v5.0.cancelorder", ftypes.STRING)
omi_jpx_osederivatives_geniuminet_ouch_v5_0.fields.enter_mm_order = ProtoField.new("Enter Mm Order", "jpx.osederivatives.geniuminet.ouch.v5.0.entermmorder", ftypes.STRING)
omi_jpx_osederivatives_geniuminet_ouch_v5_0.fields.enter_order = ProtoField.new("Enter Order", "jpx.osederivatives.geniuminet.ouch.v5.0.enterorder", ftypes.STRING)
omi_jpx_osederivatives_geniuminet_ouch_v5_0.fields.mass_cancel = ProtoField.new("Mass Cancel", "jpx.osederivatives.geniuminet.ouch.v5.0.masscancel", ftypes.STRING)
omi_jpx_osederivatives_geniuminet_ouch_v5_0.fields.mass_cancel_accepted = ProtoField.new("Mass Cancel Accepted", "jpx.osederivatives.geniuminet.ouch.v5.0.masscancelaccepted", ftypes.STRING)
omi_jpx_osederivatives_geniuminet_ouch_v5_0.fields.order_accepted = ProtoField.new("Order Accepted", "jpx.osederivatives.geniuminet.ouch.v5.0.orderaccepted", ftypes.STRING)
omi_jpx_osederivatives_geniuminet_ouch_v5_0.fields.order_canceled = ProtoField.new("Order Canceled", "jpx.osederivatives.geniuminet.ouch.v5.0.ordercanceled", ftypes.STRING)
omi_jpx_osederivatives_geniuminet_ouch_v5_0.fields.order_executed = ProtoField.new("Order Executed", "jpx.osederivatives.geniuminet.ouch.v5.0.orderexecuted", ftypes.STRING)
omi_jpx_osederivatives_geniuminet_ouch_v5_0.fields.order_rejected = ProtoField.new("Order Rejected", "jpx.osederivatives.geniuminet.ouch.v5.0.orderrejected", ftypes.STRING)
omi_jpx_osederivatives_geniuminet_ouch_v5_0.fields.order_replaced = ProtoField.new("Order Replaced", "jpx.osederivatives.geniuminet.ouch.v5.0.orderreplaced", ftypes.STRING)
omi_jpx_osederivatives_geniuminet_ouch_v5_0.fields.replace_order = ProtoField.new("Replace Order", "jpx.osederivatives.geniuminet.ouch.v5.0.replaceorder", ftypes.STRING)

-----------------------------------------------------------------------
-- Declare Dissection Options
-----------------------------------------------------------------------

local show = {}

-- Jpx OseDerivatives GeniumInet Ouch 5.0 Element Dissection Options
show.cancel_by_order_id = true
show.cancel_order = true
show.debug_packet = true
show.enter_mm_order = true
show.enter_order = true
show.login_accepted_packet = true
show.login_rejected_packet = true
show.login_request_packet = true
show.mass_cancel = true
show.mass_cancel_accepted = true
show.order_accepted = true
show.order_canceled = true
show.order_executed = true
show.order_rejected = true
show.order_replaced = true
show.packet = true
show.packet_header = true
show.replace_order = true
show.sequenced_data_packet = true
show.soup_bin_tcp_packet = true
show.unsequenced_data_packet = true
show.payload = false
show.sequenced_message = false
show.unsequenced_message = false

-- Register Jpx OseDerivatives GeniumInet Ouch 5.0 Show Options
omi_jpx_osederivatives_geniuminet_ouch_v5_0.prefs.show_cancel_by_order_id = Pref.bool("Show Cancel By Order Id", show.cancel_by_order_id, "Parse and add Cancel By Order Id to protocol tree")
omi_jpx_osederivatives_geniuminet_ouch_v5_0.prefs.show_cancel_order = Pref.bool("Show Cancel Order", show.cancel_order, "Parse and add Cancel Order to protocol tree")
omi_jpx_osederivatives_geniuminet_ouch_v5_0.prefs.show_debug_packet = Pref.bool("Show Debug Packet", show.debug_packet, "Parse and add Debug Packet to protocol tree")
omi_jpx_osederivatives_geniuminet_ouch_v5_0.prefs.show_enter_mm_order = Pref.bool("Show Enter Mm Order", show.enter_mm_order, "Parse and add Enter Mm Order to protocol tree")
omi_jpx_osederivatives_geniuminet_ouch_v5_0.prefs.show_enter_order = Pref.bool("Show Enter Order", show.enter_order, "Parse and add Enter Order to protocol tree")
omi_jpx_osederivatives_geniuminet_ouch_v5_0.prefs.show_login_accepted_packet = Pref.bool("Show Login Accepted Packet", show.login_accepted_packet, "Parse and add Login Accepted Packet to protocol tree")
omi_jpx_osederivatives_geniuminet_ouch_v5_0.prefs.show_login_rejected_packet = Pref.bool("Show Login Rejected Packet", show.login_rejected_packet, "Parse and add Login Rejected Packet to protocol tree")
omi_jpx_osederivatives_geniuminet_ouch_v5_0.prefs.show_login_request_packet = Pref.bool("Show Login Request Packet", show.login_request_packet, "Parse and add Login Request Packet to protocol tree")
omi_jpx_osederivatives_geniuminet_ouch_v5_0.prefs.show_mass_cancel = Pref.bool("Show Mass Cancel", show.mass_cancel, "Parse and add Mass Cancel to protocol tree")
omi_jpx_osederivatives_geniuminet_ouch_v5_0.prefs.show_mass_cancel_accepted = Pref.bool("Show Mass Cancel Accepted", show.mass_cancel_accepted, "Parse and add Mass Cancel Accepted to protocol tree")
omi_jpx_osederivatives_geniuminet_ouch_v5_0.prefs.show_order_accepted = Pref.bool("Show Order Accepted", show.order_accepted, "Parse and add Order Accepted to protocol tree")
omi_jpx_osederivatives_geniuminet_ouch_v5_0.prefs.show_order_canceled = Pref.bool("Show Order Canceled", show.order_canceled, "Parse and add Order Canceled to protocol tree")
omi_jpx_osederivatives_geniuminet_ouch_v5_0.prefs.show_order_executed = Pref.bool("Show Order Executed", show.order_executed, "Parse and add Order Executed to protocol tree")
omi_jpx_osederivatives_geniuminet_ouch_v5_0.prefs.show_order_rejected = Pref.bool("Show Order Rejected", show.order_rejected, "Parse and add Order Rejected to protocol tree")
omi_jpx_osederivatives_geniuminet_ouch_v5_0.prefs.show_order_replaced = Pref.bool("Show Order Replaced", show.order_replaced, "Parse and add Order Replaced to protocol tree")
omi_jpx_osederivatives_geniuminet_ouch_v5_0.prefs.show_packet = Pref.bool("Show Packet", show.packet, "Parse and add Packet to protocol tree")
omi_jpx_osederivatives_geniuminet_ouch_v5_0.prefs.show_packet_header = Pref.bool("Show Packet Header", show.packet_header, "Parse and add Packet Header to protocol tree")
omi_jpx_osederivatives_geniuminet_ouch_v5_0.prefs.show_replace_order = Pref.bool("Show Replace Order", show.replace_order, "Parse and add Replace Order to protocol tree")
omi_jpx_osederivatives_geniuminet_ouch_v5_0.prefs.show_sequenced_data_packet = Pref.bool("Show Sequenced Data Packet", show.sequenced_data_packet, "Parse and add Sequenced Data Packet to protocol tree")
omi_jpx_osederivatives_geniuminet_ouch_v5_0.prefs.show_soup_bin_tcp_packet = Pref.bool("Show Soup Bin Tcp Packet", show.soup_bin_tcp_packet, "Parse and add Soup Bin Tcp Packet to protocol tree")
omi_jpx_osederivatives_geniuminet_ouch_v5_0.prefs.show_unsequenced_data_packet = Pref.bool("Show Unsequenced Data Packet", show.unsequenced_data_packet, "Parse and add Unsequenced Data Packet to protocol tree")
omi_jpx_osederivatives_geniuminet_ouch_v5_0.prefs.show_payload = Pref.bool("Show Payload", show.payload, "Parse and add Payload to protocol tree")
omi_jpx_osederivatives_geniuminet_ouch_v5_0.prefs.show_sequenced_message = Pref.bool("Show Sequenced Message", show.sequenced_message, "Parse and add Sequenced Message to protocol tree")
omi_jpx_osederivatives_geniuminet_ouch_v5_0.prefs.show_unsequenced_message = Pref.bool("Show Unsequenced Message", show.unsequenced_message, "Parse and add Unsequenced Message to protocol tree")

-- Handle changed preferences
function omi_jpx_osederivatives_geniuminet_ouch_v5_0.prefs_changed()
  local changed = false

  -- Check if show options have changed
  if show.cancel_by_order_id ~= omi_jpx_osederivatives_geniuminet_ouch_v5_0.prefs.show_cancel_by_order_id then
    show.cancel_by_order_id = omi_jpx_osederivatives_geniuminet_ouch_v5_0.prefs.show_cancel_by_order_id
    changed = true
  end
  if show.cancel_order ~= omi_jpx_osederivatives_geniuminet_ouch_v5_0.prefs.show_cancel_order then
    show.cancel_order = omi_jpx_osederivatives_geniuminet_ouch_v5_0.prefs.show_cancel_order
    changed = true
  end
  if show.debug_packet ~= omi_jpx_osederivatives_geniuminet_ouch_v5_0.prefs.show_debug_packet then
    show.debug_packet = omi_jpx_osederivatives_geniuminet_ouch_v5_0.prefs.show_debug_packet
    changed = true
  end
  if show.enter_mm_order ~= omi_jpx_osederivatives_geniuminet_ouch_v5_0.prefs.show_enter_mm_order then
    show.enter_mm_order = omi_jpx_osederivatives_geniuminet_ouch_v5_0.prefs.show_enter_mm_order
    changed = true
  end
  if show.enter_order ~= omi_jpx_osederivatives_geniuminet_ouch_v5_0.prefs.show_enter_order then
    show.enter_order = omi_jpx_osederivatives_geniuminet_ouch_v5_0.prefs.show_enter_order
    changed = true
  end
  if show.login_accepted_packet ~= omi_jpx_osederivatives_geniuminet_ouch_v5_0.prefs.show_login_accepted_packet then
    show.login_accepted_packet = omi_jpx_osederivatives_geniuminet_ouch_v5_0.prefs.show_login_accepted_packet
    changed = true
  end
  if show.login_rejected_packet ~= omi_jpx_osederivatives_geniuminet_ouch_v5_0.prefs.show_login_rejected_packet then
    show.login_rejected_packet = omi_jpx_osederivatives_geniuminet_ouch_v5_0.prefs.show_login_rejected_packet
    changed = true
  end
  if show.login_request_packet ~= omi_jpx_osederivatives_geniuminet_ouch_v5_0.prefs.show_login_request_packet then
    show.login_request_packet = omi_jpx_osederivatives_geniuminet_ouch_v5_0.prefs.show_login_request_packet
    changed = true
  end
  if show.mass_cancel ~= omi_jpx_osederivatives_geniuminet_ouch_v5_0.prefs.show_mass_cancel then
    show.mass_cancel = omi_jpx_osederivatives_geniuminet_ouch_v5_0.prefs.show_mass_cancel
    changed = true
  end
  if show.mass_cancel_accepted ~= omi_jpx_osederivatives_geniuminet_ouch_v5_0.prefs.show_mass_cancel_accepted then
    show.mass_cancel_accepted = omi_jpx_osederivatives_geniuminet_ouch_v5_0.prefs.show_mass_cancel_accepted
    changed = true
  end
  if show.order_accepted ~= omi_jpx_osederivatives_geniuminet_ouch_v5_0.prefs.show_order_accepted then
    show.order_accepted = omi_jpx_osederivatives_geniuminet_ouch_v5_0.prefs.show_order_accepted
    changed = true
  end
  if show.order_canceled ~= omi_jpx_osederivatives_geniuminet_ouch_v5_0.prefs.show_order_canceled then
    show.order_canceled = omi_jpx_osederivatives_geniuminet_ouch_v5_0.prefs.show_order_canceled
    changed = true
  end
  if show.order_executed ~= omi_jpx_osederivatives_geniuminet_ouch_v5_0.prefs.show_order_executed then
    show.order_executed = omi_jpx_osederivatives_geniuminet_ouch_v5_0.prefs.show_order_executed
    changed = true
  end
  if show.order_rejected ~= omi_jpx_osederivatives_geniuminet_ouch_v5_0.prefs.show_order_rejected then
    show.order_rejected = omi_jpx_osederivatives_geniuminet_ouch_v5_0.prefs.show_order_rejected
    changed = true
  end
  if show.order_replaced ~= omi_jpx_osederivatives_geniuminet_ouch_v5_0.prefs.show_order_replaced then
    show.order_replaced = omi_jpx_osederivatives_geniuminet_ouch_v5_0.prefs.show_order_replaced
    changed = true
  end
  if show.packet ~= omi_jpx_osederivatives_geniuminet_ouch_v5_0.prefs.show_packet then
    show.packet = omi_jpx_osederivatives_geniuminet_ouch_v5_0.prefs.show_packet
    changed = true
  end
  if show.packet_header ~= omi_jpx_osederivatives_geniuminet_ouch_v5_0.prefs.show_packet_header then
    show.packet_header = omi_jpx_osederivatives_geniuminet_ouch_v5_0.prefs.show_packet_header
    changed = true
  end
  if show.replace_order ~= omi_jpx_osederivatives_geniuminet_ouch_v5_0.prefs.show_replace_order then
    show.replace_order = omi_jpx_osederivatives_geniuminet_ouch_v5_0.prefs.show_replace_order
    changed = true
  end
  if show.sequenced_data_packet ~= omi_jpx_osederivatives_geniuminet_ouch_v5_0.prefs.show_sequenced_data_packet then
    show.sequenced_data_packet = omi_jpx_osederivatives_geniuminet_ouch_v5_0.prefs.show_sequenced_data_packet
    changed = true
  end
  if show.soup_bin_tcp_packet ~= omi_jpx_osederivatives_geniuminet_ouch_v5_0.prefs.show_soup_bin_tcp_packet then
    show.soup_bin_tcp_packet = omi_jpx_osederivatives_geniuminet_ouch_v5_0.prefs.show_soup_bin_tcp_packet
    changed = true
  end
  if show.unsequenced_data_packet ~= omi_jpx_osederivatives_geniuminet_ouch_v5_0.prefs.show_unsequenced_data_packet then
    show.unsequenced_data_packet = omi_jpx_osederivatives_geniuminet_ouch_v5_0.prefs.show_unsequenced_data_packet
    changed = true
  end
  if show.payload ~= omi_jpx_osederivatives_geniuminet_ouch_v5_0.prefs.show_payload then
    show.payload = omi_jpx_osederivatives_geniuminet_ouch_v5_0.prefs.show_payload
    changed = true
  end
  if show.sequenced_message ~= omi_jpx_osederivatives_geniuminet_ouch_v5_0.prefs.show_sequenced_message then
    show.sequenced_message = omi_jpx_osederivatives_geniuminet_ouch_v5_0.prefs.show_sequenced_message
    changed = true
  end
  if show.unsequenced_message ~= omi_jpx_osederivatives_geniuminet_ouch_v5_0.prefs.show_unsequenced_message then
    show.unsequenced_message = omi_jpx_osederivatives_geniuminet_ouch_v5_0.prefs.show_unsequenced_message
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
-- Dissect Jpx OseDerivatives GeniumInet Ouch 5.0
-----------------------------------------------------------------------

-- Client Account
jpx_osederivatives_geniuminet_ouch_v5_0.client_account = {}

-- Size: Client Account
jpx_osederivatives_geniuminet_ouch_v5_0.client_account.size = 16

-- Display: Client Account
jpx_osederivatives_geniuminet_ouch_v5_0.client_account.display = function(value)
  return "Client Account: "..value
end

-- Dissect: Client Account
jpx_osederivatives_geniuminet_ouch_v5_0.client_account.dissect = function(buffer, offset, packet, parent)
  local length = jpx_osederivatives_geniuminet_ouch_v5_0.client_account.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = jpx_osederivatives_geniuminet_ouch_v5_0.client_account.display(value, buffer, offset, packet, parent)

  parent:add(omi_jpx_osederivatives_geniuminet_ouch_v5_0.fields.client_account, range, value, display)

  return offset + length, value
end

-- Scope
jpx_osederivatives_geniuminet_ouch_v5_0.scope = {}

-- Size: Scope
jpx_osederivatives_geniuminet_ouch_v5_0.scope.size = 1

-- Display: Scope
jpx_osederivatives_geniuminet_ouch_v5_0.scope.display = function(value)
  if value == 1 then
    return "Scope: Participant (1)"
  end

  return "Scope: Unknown("..value..")"
end

-- Dissect: Scope
jpx_osederivatives_geniuminet_ouch_v5_0.scope.dissect = function(buffer, offset, packet, parent)
  local length = jpx_osederivatives_geniuminet_ouch_v5_0.scope.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = jpx_osederivatives_geniuminet_ouch_v5_0.scope.display(value, buffer, offset, packet, parent)

  parent:add(omi_jpx_osederivatives_geniuminet_ouch_v5_0.fields.scope, range, value, display)

  return offset + length, value
end

-- Underlying Id
jpx_osederivatives_geniuminet_ouch_v5_0.underlying_id = {}

-- Size: Underlying Id
jpx_osederivatives_geniuminet_ouch_v5_0.underlying_id.size = 4

-- Display: Underlying Id
jpx_osederivatives_geniuminet_ouch_v5_0.underlying_id.display = function(value)
  return "Underlying Id: "..value
end

-- Dissect: Underlying Id
jpx_osederivatives_geniuminet_ouch_v5_0.underlying_id.dissect = function(buffer, offset, packet, parent)
  local length = jpx_osederivatives_geniuminet_ouch_v5_0.underlying_id.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = jpx_osederivatives_geniuminet_ouch_v5_0.underlying_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_jpx_osederivatives_geniuminet_ouch_v5_0.fields.underlying_id, range, value, display)

  return offset + length, value
end

-- Order Token
jpx_osederivatives_geniuminet_ouch_v5_0.order_token = {}

-- Size: Order Token
jpx_osederivatives_geniuminet_ouch_v5_0.order_token.size = 14

-- Display: Order Token
jpx_osederivatives_geniuminet_ouch_v5_0.order_token.display = function(value)
  return "Order Token: "..value
end

-- Dissect: Order Token
jpx_osederivatives_geniuminet_ouch_v5_0.order_token.dissect = function(buffer, offset, packet, parent)
  local length = jpx_osederivatives_geniuminet_ouch_v5_0.order_token.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = jpx_osederivatives_geniuminet_ouch_v5_0.order_token.display(value, buffer, offset, packet, parent)

  parent:add(omi_jpx_osederivatives_geniuminet_ouch_v5_0.fields.order_token, range, value, display)

  return offset + length, value
end

-- Mass Cancel
jpx_osederivatives_geniuminet_ouch_v5_0.mass_cancel = {}

-- Size: Mass Cancel
jpx_osederivatives_geniuminet_ouch_v5_0.mass_cancel.size =
  jpx_osederivatives_geniuminet_ouch_v5_0.order_token.size + 
  jpx_osederivatives_geniuminet_ouch_v5_0.underlying_id.size + 
  jpx_osederivatives_geniuminet_ouch_v5_0.scope.size + 
  jpx_osederivatives_geniuminet_ouch_v5_0.client_account.size

-- Display: Mass Cancel
jpx_osederivatives_geniuminet_ouch_v5_0.mass_cancel.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Mass Cancel
jpx_osederivatives_geniuminet_ouch_v5_0.mass_cancel.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Order Token: Alpha
  index, order_token = jpx_osederivatives_geniuminet_ouch_v5_0.order_token.dissect(buffer, index, packet, parent)

  -- Underlying Id: Numeric unsigned
  index, underlying_id = jpx_osederivatives_geniuminet_ouch_v5_0.underlying_id.dissect(buffer, index, packet, parent)

  -- Scope: Numeric unsigned
  index, scope = jpx_osederivatives_geniuminet_ouch_v5_0.scope.dissect(buffer, index, packet, parent)

  -- Client Account: Alpha
  index, client_account = jpx_osederivatives_geniuminet_ouch_v5_0.client_account.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Mass Cancel
jpx_osederivatives_geniuminet_ouch_v5_0.mass_cancel.dissect = function(buffer, offset, packet, parent)
  if show.mass_cancel then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_jpx_osederivatives_geniuminet_ouch_v5_0.fields.mass_cancel, buffer(offset, 0))
    local index = jpx_osederivatives_geniuminet_ouch_v5_0.mass_cancel.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = jpx_osederivatives_geniuminet_ouch_v5_0.mass_cancel.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return jpx_osederivatives_geniuminet_ouch_v5_0.mass_cancel.fields(buffer, offset, packet, parent)
  end
end

-- Order Id
jpx_osederivatives_geniuminet_ouch_v5_0.order_id = {}

-- Size: Order Id
jpx_osederivatives_geniuminet_ouch_v5_0.order_id.size = 8

-- Display: Order Id
jpx_osederivatives_geniuminet_ouch_v5_0.order_id.display = function(value)
  return "Order Id: "..value
end

-- Dissect: Order Id
jpx_osederivatives_geniuminet_ouch_v5_0.order_id.dissect = function(buffer, offset, packet, parent)
  local length = jpx_osederivatives_geniuminet_ouch_v5_0.order_id.size
  local range = buffer(offset, length)
  local value = range:uint64()
  local display = jpx_osederivatives_geniuminet_ouch_v5_0.order_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_jpx_osederivatives_geniuminet_ouch_v5_0.fields.order_id, range, value, display)

  return offset + length, value
end

-- Side
jpx_osederivatives_geniuminet_ouch_v5_0.side = {}

-- Size: Side
jpx_osederivatives_geniuminet_ouch_v5_0.side.size = 1

-- Display: Side
jpx_osederivatives_geniuminet_ouch_v5_0.side.display = function(value)
  if value == "B" then
    return "Side: Buy (B)"
  end
  if value == "S" then
    return "Side: Sell (S)"
  end

  return "Side: Unknown("..value..")"
end

-- Dissect: Side
jpx_osederivatives_geniuminet_ouch_v5_0.side.dissect = function(buffer, offset, packet, parent)
  local length = jpx_osederivatives_geniuminet_ouch_v5_0.side.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = jpx_osederivatives_geniuminet_ouch_v5_0.side.display(value, buffer, offset, packet, parent)

  parent:add(omi_jpx_osederivatives_geniuminet_ouch_v5_0.fields.side, range, value, display)

  return offset + length, value
end

-- Order Book Id
jpx_osederivatives_geniuminet_ouch_v5_0.order_book_id = {}

-- Size: Order Book Id
jpx_osederivatives_geniuminet_ouch_v5_0.order_book_id.size = 4

-- Display: Order Book Id
jpx_osederivatives_geniuminet_ouch_v5_0.order_book_id.display = function(value)
  return "Order Book Id: "..value
end

-- Dissect: Order Book Id
jpx_osederivatives_geniuminet_ouch_v5_0.order_book_id.dissect = function(buffer, offset, packet, parent)
  local length = jpx_osederivatives_geniuminet_ouch_v5_0.order_book_id.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = jpx_osederivatives_geniuminet_ouch_v5_0.order_book_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_jpx_osederivatives_geniuminet_ouch_v5_0.fields.order_book_id, range, value, display)

  return offset + length, value
end

-- Cancel By Order Id
jpx_osederivatives_geniuminet_ouch_v5_0.cancel_by_order_id = {}

-- Size: Cancel By Order Id
jpx_osederivatives_geniuminet_ouch_v5_0.cancel_by_order_id.size =
  jpx_osederivatives_geniuminet_ouch_v5_0.order_book_id.size + 
  jpx_osederivatives_geniuminet_ouch_v5_0.side.size + 
  jpx_osederivatives_geniuminet_ouch_v5_0.order_id.size

-- Display: Cancel By Order Id
jpx_osederivatives_geniuminet_ouch_v5_0.cancel_by_order_id.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Cancel By Order Id
jpx_osederivatives_geniuminet_ouch_v5_0.cancel_by_order_id.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Order Book Id: Numeric signed
  index, order_book_id = jpx_osederivatives_geniuminet_ouch_v5_0.order_book_id.dissect(buffer, index, packet, parent)

  -- Side: Alpha
  index, side = jpx_osederivatives_geniuminet_ouch_v5_0.side.dissect(buffer, index, packet, parent)

  -- Order Id: Numeric unsigned
  index, order_id = jpx_osederivatives_geniuminet_ouch_v5_0.order_id.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Cancel By Order Id
jpx_osederivatives_geniuminet_ouch_v5_0.cancel_by_order_id.dissect = function(buffer, offset, packet, parent)
  if show.cancel_by_order_id then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_jpx_osederivatives_geniuminet_ouch_v5_0.fields.cancel_by_order_id, buffer(offset, 0))
    local index = jpx_osederivatives_geniuminet_ouch_v5_0.cancel_by_order_id.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = jpx_osederivatives_geniuminet_ouch_v5_0.cancel_by_order_id.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return jpx_osederivatives_geniuminet_ouch_v5_0.cancel_by_order_id.fields(buffer, offset, packet, parent)
  end
end

-- Cancel Order
jpx_osederivatives_geniuminet_ouch_v5_0.cancel_order = {}

-- Size: Cancel Order
jpx_osederivatives_geniuminet_ouch_v5_0.cancel_order.size =
  jpx_osederivatives_geniuminet_ouch_v5_0.order_token.size

-- Display: Cancel Order
jpx_osederivatives_geniuminet_ouch_v5_0.cancel_order.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Cancel Order
jpx_osederivatives_geniuminet_ouch_v5_0.cancel_order.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Order Token: Alpha
  index, order_token = jpx_osederivatives_geniuminet_ouch_v5_0.order_token.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Cancel Order
jpx_osederivatives_geniuminet_ouch_v5_0.cancel_order.dissect = function(buffer, offset, packet, parent)
  if show.cancel_order then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_jpx_osederivatives_geniuminet_ouch_v5_0.fields.cancel_order, buffer(offset, 0))
    local index = jpx_osederivatives_geniuminet_ouch_v5_0.cancel_order.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = jpx_osederivatives_geniuminet_ouch_v5_0.cancel_order.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return jpx_osederivatives_geniuminet_ouch_v5_0.cancel_order.fields(buffer, offset, packet, parent)
  end
end

-- Exchange Info
jpx_osederivatives_geniuminet_ouch_v5_0.exchange_info = {}

-- Size: Exchange Info
jpx_osederivatives_geniuminet_ouch_v5_0.exchange_info.size = 32

-- Display: Exchange Info
jpx_osederivatives_geniuminet_ouch_v5_0.exchange_info.display = function(value)
  return "Exchange Info: "..value
end

-- Dissect: Exchange Info
jpx_osederivatives_geniuminet_ouch_v5_0.exchange_info.dissect = function(buffer, offset, packet, parent)
  local length = jpx_osederivatives_geniuminet_ouch_v5_0.exchange_info.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = jpx_osederivatives_geniuminet_ouch_v5_0.exchange_info.display(value, buffer, offset, packet, parent)

  parent:add(omi_jpx_osederivatives_geniuminet_ouch_v5_0.fields.exchange_info, range, value, display)

  return offset + length, value
end

-- Customer Info
jpx_osederivatives_geniuminet_ouch_v5_0.customer_info = {}

-- Size: Customer Info
jpx_osederivatives_geniuminet_ouch_v5_0.customer_info.size = 15

-- Display: Customer Info
jpx_osederivatives_geniuminet_ouch_v5_0.customer_info.display = function(value)
  return "Customer Info: "..value
end

-- Dissect: Customer Info
jpx_osederivatives_geniuminet_ouch_v5_0.customer_info.dissect = function(buffer, offset, packet, parent)
  local length = jpx_osederivatives_geniuminet_ouch_v5_0.customer_info.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = jpx_osederivatives_geniuminet_ouch_v5_0.customer_info.display(value, buffer, offset, packet, parent)

  parent:add(omi_jpx_osederivatives_geniuminet_ouch_v5_0.fields.customer_info, range, value, display)

  return offset + length, value
end

-- Open Close
jpx_osederivatives_geniuminet_ouch_v5_0.open_close = {}

-- Size: Open Close
jpx_osederivatives_geniuminet_ouch_v5_0.open_close.size = 1

-- Display: Open Close
jpx_osederivatives_geniuminet_ouch_v5_0.open_close.display = function(value)
  if value == 0 then
    return "Open Close: No Change (0)"
  end
  if value == 1 then
    return "Open Close: Open (1)"
  end
  if value == 2 then
    return "Open Close: Close Net (2)"
  end
  if value == 3 then
    return "Open Close: Mandatory Close (3)"
  end
  if value == 4 then
    return "Open Close: Default (4)"
  end

  return "Open Close: Unknown("..value..")"
end

-- Dissect: Open Close
jpx_osederivatives_geniuminet_ouch_v5_0.open_close.dissect = function(buffer, offset, packet, parent)
  local length = jpx_osederivatives_geniuminet_ouch_v5_0.open_close.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = jpx_osederivatives_geniuminet_ouch_v5_0.open_close.display(value, buffer, offset, packet, parent)

  parent:add(omi_jpx_osederivatives_geniuminet_ouch_v5_0.fields.open_close, range, value, display)

  return offset + length, value
end

-- Price
jpx_osederivatives_geniuminet_ouch_v5_0.price = {}

-- Size: Price
jpx_osederivatives_geniuminet_ouch_v5_0.price.size = 4

-- Display: Price
jpx_osederivatives_geniuminet_ouch_v5_0.price.display = function(value)
  return "Price: "..value
end

-- Translate: Price
jpx_osederivatives_geniuminet_ouch_v5_0.price.translate = function(raw)
  return raw/100
end

-- Dissect: Price
jpx_osederivatives_geniuminet_ouch_v5_0.price.dissect = function(buffer, offset, packet, parent)
  local length = jpx_osederivatives_geniuminet_ouch_v5_0.price.size
  local range = buffer(offset, length)
  local raw = range:int()
  local value = jpx_osederivatives_geniuminet_ouch_v5_0.price.translate(raw)
  local display = jpx_osederivatives_geniuminet_ouch_v5_0.price.display(value, buffer, offset, packet, parent)

  parent:add(omi_jpx_osederivatives_geniuminet_ouch_v5_0.fields.price, range, value, display)

  return offset + length, value
end

-- Quantity
jpx_osederivatives_geniuminet_ouch_v5_0.quantity = {}

-- Size: Quantity
jpx_osederivatives_geniuminet_ouch_v5_0.quantity.size = 8

-- Display: Quantity
jpx_osederivatives_geniuminet_ouch_v5_0.quantity.display = function(value)
  return "Quantity: "..value
end

-- Dissect: Quantity
jpx_osederivatives_geniuminet_ouch_v5_0.quantity.dissect = function(buffer, offset, packet, parent)
  local length = jpx_osederivatives_geniuminet_ouch_v5_0.quantity.size
  local range = buffer(offset, length)
  local value = range:uint64()
  local display = jpx_osederivatives_geniuminet_ouch_v5_0.quantity.display(value, buffer, offset, packet, parent)

  parent:add(omi_jpx_osederivatives_geniuminet_ouch_v5_0.fields.quantity, range, value, display)

  return offset + length, value
end

-- Replacement Order Token
jpx_osederivatives_geniuminet_ouch_v5_0.replacement_order_token = {}

-- Size: Replacement Order Token
jpx_osederivatives_geniuminet_ouch_v5_0.replacement_order_token.size = 14

-- Display: Replacement Order Token
jpx_osederivatives_geniuminet_ouch_v5_0.replacement_order_token.display = function(value)
  return "Replacement Order Token: "..value
end

-- Dissect: Replacement Order Token
jpx_osederivatives_geniuminet_ouch_v5_0.replacement_order_token.dissect = function(buffer, offset, packet, parent)
  local length = jpx_osederivatives_geniuminet_ouch_v5_0.replacement_order_token.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = jpx_osederivatives_geniuminet_ouch_v5_0.replacement_order_token.display(value, buffer, offset, packet, parent)

  parent:add(omi_jpx_osederivatives_geniuminet_ouch_v5_0.fields.replacement_order_token, range, value, display)

  return offset + length, value
end

-- Existing Order Token
jpx_osederivatives_geniuminet_ouch_v5_0.existing_order_token = {}

-- Size: Existing Order Token
jpx_osederivatives_geniuminet_ouch_v5_0.existing_order_token.size = 14

-- Display: Existing Order Token
jpx_osederivatives_geniuminet_ouch_v5_0.existing_order_token.display = function(value)
  return "Existing Order Token: "..value
end

-- Dissect: Existing Order Token
jpx_osederivatives_geniuminet_ouch_v5_0.existing_order_token.dissect = function(buffer, offset, packet, parent)
  local length = jpx_osederivatives_geniuminet_ouch_v5_0.existing_order_token.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = jpx_osederivatives_geniuminet_ouch_v5_0.existing_order_token.display(value, buffer, offset, packet, parent)

  parent:add(omi_jpx_osederivatives_geniuminet_ouch_v5_0.fields.existing_order_token, range, value, display)

  return offset + length, value
end

-- Replace Order
jpx_osederivatives_geniuminet_ouch_v5_0.replace_order = {}

-- Size: Replace Order
jpx_osederivatives_geniuminet_ouch_v5_0.replace_order.size =
  jpx_osederivatives_geniuminet_ouch_v5_0.existing_order_token.size + 
  jpx_osederivatives_geniuminet_ouch_v5_0.replacement_order_token.size + 
  jpx_osederivatives_geniuminet_ouch_v5_0.quantity.size + 
  jpx_osederivatives_geniuminet_ouch_v5_0.price.size + 
  jpx_osederivatives_geniuminet_ouch_v5_0.open_close.size + 
  jpx_osederivatives_geniuminet_ouch_v5_0.client_account.size + 
  jpx_osederivatives_geniuminet_ouch_v5_0.customer_info.size + 
  jpx_osederivatives_geniuminet_ouch_v5_0.exchange_info.size

-- Display: Replace Order
jpx_osederivatives_geniuminet_ouch_v5_0.replace_order.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Replace Order
jpx_osederivatives_geniuminet_ouch_v5_0.replace_order.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Existing Order Token: Alpha
  index, existing_order_token = jpx_osederivatives_geniuminet_ouch_v5_0.existing_order_token.dissect(buffer, index, packet, parent)

  -- Replacement Order Token: Alpha
  index, replacement_order_token = jpx_osederivatives_geniuminet_ouch_v5_0.replacement_order_token.dissect(buffer, index, packet, parent)

  -- Quantity: Numeric unsigned
  index, quantity = jpx_osederivatives_geniuminet_ouch_v5_0.quantity.dissect(buffer, index, packet, parent)

  -- Price: Price
  index, price = jpx_osederivatives_geniuminet_ouch_v5_0.price.dissect(buffer, index, packet, parent)

  -- Open Close: Numeric unsigned
  index, open_close = jpx_osederivatives_geniuminet_ouch_v5_0.open_close.dissect(buffer, index, packet, parent)

  -- Client Account: Alpha
  index, client_account = jpx_osederivatives_geniuminet_ouch_v5_0.client_account.dissect(buffer, index, packet, parent)

  -- Customer Info: Alpha
  index, customer_info = jpx_osederivatives_geniuminet_ouch_v5_0.customer_info.dissect(buffer, index, packet, parent)

  -- Exchange Info: Alpha
  index, exchange_info = jpx_osederivatives_geniuminet_ouch_v5_0.exchange_info.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Replace Order
jpx_osederivatives_geniuminet_ouch_v5_0.replace_order.dissect = function(buffer, offset, packet, parent)
  if show.replace_order then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_jpx_osederivatives_geniuminet_ouch_v5_0.fields.replace_order, buffer(offset, 0))
    local index = jpx_osederivatives_geniuminet_ouch_v5_0.replace_order.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = jpx_osederivatives_geniuminet_ouch_v5_0.replace_order.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return jpx_osederivatives_geniuminet_ouch_v5_0.replace_order.fields(buffer, offset, packet, parent)
  end
end

-- Enter Mm Order
jpx_osederivatives_geniuminet_ouch_v5_0.enter_mm_order = {}

-- Size: Enter Mm Order
jpx_osederivatives_geniuminet_ouch_v5_0.enter_mm_order.size =
  jpx_osederivatives_geniuminet_ouch_v5_0.order_token.size + 
  jpx_osederivatives_geniuminet_ouch_v5_0.order_book_id.size + 
  jpx_osederivatives_geniuminet_ouch_v5_0.side.size + 
  jpx_osederivatives_geniuminet_ouch_v5_0.quantity.size + 
  jpx_osederivatives_geniuminet_ouch_v5_0.price.size + 
  jpx_osederivatives_geniuminet_ouch_v5_0.client_account.size + 
  jpx_osederivatives_geniuminet_ouch_v5_0.exchange_info.size

-- Display: Enter Mm Order
jpx_osederivatives_geniuminet_ouch_v5_0.enter_mm_order.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Enter Mm Order
jpx_osederivatives_geniuminet_ouch_v5_0.enter_mm_order.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Order Token: Alpha
  index, order_token = jpx_osederivatives_geniuminet_ouch_v5_0.order_token.dissect(buffer, index, packet, parent)

  -- Order Book Id: Numeric signed
  index, order_book_id = jpx_osederivatives_geniuminet_ouch_v5_0.order_book_id.dissect(buffer, index, packet, parent)

  -- Side: Alpha
  index, side = jpx_osederivatives_geniuminet_ouch_v5_0.side.dissect(buffer, index, packet, parent)

  -- Quantity: Numeric unsigned
  index, quantity = jpx_osederivatives_geniuminet_ouch_v5_0.quantity.dissect(buffer, index, packet, parent)

  -- Price: Price
  index, price = jpx_osederivatives_geniuminet_ouch_v5_0.price.dissect(buffer, index, packet, parent)

  -- Client Account: Alpha
  index, client_account = jpx_osederivatives_geniuminet_ouch_v5_0.client_account.dissect(buffer, index, packet, parent)

  -- Exchange Info: Alpha
  index, exchange_info = jpx_osederivatives_geniuminet_ouch_v5_0.exchange_info.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Enter Mm Order
jpx_osederivatives_geniuminet_ouch_v5_0.enter_mm_order.dissect = function(buffer, offset, packet, parent)
  if show.enter_mm_order then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_jpx_osederivatives_geniuminet_ouch_v5_0.fields.enter_mm_order, buffer(offset, 0))
    local index = jpx_osederivatives_geniuminet_ouch_v5_0.enter_mm_order.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = jpx_osederivatives_geniuminet_ouch_v5_0.enter_mm_order.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return jpx_osederivatives_geniuminet_ouch_v5_0.enter_mm_order.fields(buffer, offset, packet, parent)
  end
end

-- Time In Force
jpx_osederivatives_geniuminet_ouch_v5_0.time_in_force = {}

-- Size: Time In Force
jpx_osederivatives_geniuminet_ouch_v5_0.time_in_force.size = 1

-- Display: Time In Force
jpx_osederivatives_geniuminet_ouch_v5_0.time_in_force.display = function(value)
  if value == 0 then
    return "Time In Force: Day (0)"
  end
  if value == 3 then
    return "Time In Force: Immediate Or Cancel (3)"
  end
  if value == 4 then
    return "Time In Force: Fill Or Kill (4)"
  end

  return "Time In Force: Unknown("..value..")"
end

-- Dissect: Time In Force
jpx_osederivatives_geniuminet_ouch_v5_0.time_in_force.dissect = function(buffer, offset, packet, parent)
  local length = jpx_osederivatives_geniuminet_ouch_v5_0.time_in_force.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = jpx_osederivatives_geniuminet_ouch_v5_0.time_in_force.display(value, buffer, offset, packet, parent)

  parent:add(omi_jpx_osederivatives_geniuminet_ouch_v5_0.fields.time_in_force, range, value, display)

  return offset + length, value
end

-- Enter Order
jpx_osederivatives_geniuminet_ouch_v5_0.enter_order = {}

-- Size: Enter Order
jpx_osederivatives_geniuminet_ouch_v5_0.enter_order.size =
  jpx_osederivatives_geniuminet_ouch_v5_0.order_token.size + 
  jpx_osederivatives_geniuminet_ouch_v5_0.order_book_id.size + 
  jpx_osederivatives_geniuminet_ouch_v5_0.side.size + 
  jpx_osederivatives_geniuminet_ouch_v5_0.quantity.size + 
  jpx_osederivatives_geniuminet_ouch_v5_0.price.size + 
  jpx_osederivatives_geniuminet_ouch_v5_0.time_in_force.size + 
  jpx_osederivatives_geniuminet_ouch_v5_0.open_close.size + 
  jpx_osederivatives_geniuminet_ouch_v5_0.client_account.size + 
  jpx_osederivatives_geniuminet_ouch_v5_0.customer_info.size + 
  jpx_osederivatives_geniuminet_ouch_v5_0.exchange_info.size

-- Display: Enter Order
jpx_osederivatives_geniuminet_ouch_v5_0.enter_order.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Enter Order
jpx_osederivatives_geniuminet_ouch_v5_0.enter_order.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Order Token: Alpha
  index, order_token = jpx_osederivatives_geniuminet_ouch_v5_0.order_token.dissect(buffer, index, packet, parent)

  -- Order Book Id: Numeric signed
  index, order_book_id = jpx_osederivatives_geniuminet_ouch_v5_0.order_book_id.dissect(buffer, index, packet, parent)

  -- Side: Alpha
  index, side = jpx_osederivatives_geniuminet_ouch_v5_0.side.dissect(buffer, index, packet, parent)

  -- Quantity: Numeric unsigned
  index, quantity = jpx_osederivatives_geniuminet_ouch_v5_0.quantity.dissect(buffer, index, packet, parent)

  -- Price: Price
  index, price = jpx_osederivatives_geniuminet_ouch_v5_0.price.dissect(buffer, index, packet, parent)

  -- Time In Force: Numeric unsigned
  index, time_in_force = jpx_osederivatives_geniuminet_ouch_v5_0.time_in_force.dissect(buffer, index, packet, parent)

  -- Open Close: Numeric unsigned
  index, open_close = jpx_osederivatives_geniuminet_ouch_v5_0.open_close.dissect(buffer, index, packet, parent)

  -- Client Account: Alpha
  index, client_account = jpx_osederivatives_geniuminet_ouch_v5_0.client_account.dissect(buffer, index, packet, parent)

  -- Customer Info: Alpha
  index, customer_info = jpx_osederivatives_geniuminet_ouch_v5_0.customer_info.dissect(buffer, index, packet, parent)

  -- Exchange Info: Alpha
  index, exchange_info = jpx_osederivatives_geniuminet_ouch_v5_0.exchange_info.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Enter Order
jpx_osederivatives_geniuminet_ouch_v5_0.enter_order.dissect = function(buffer, offset, packet, parent)
  if show.enter_order then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_jpx_osederivatives_geniuminet_ouch_v5_0.fields.enter_order, buffer(offset, 0))
    local index = jpx_osederivatives_geniuminet_ouch_v5_0.enter_order.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = jpx_osederivatives_geniuminet_ouch_v5_0.enter_order.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return jpx_osederivatives_geniuminet_ouch_v5_0.enter_order.fields(buffer, offset, packet, parent)
  end
end

-- Unsequenced Message
jpx_osederivatives_geniuminet_ouch_v5_0.unsequenced_message = {}

-- Size: Unsequenced Message
jpx_osederivatives_geniuminet_ouch_v5_0.unsequenced_message.size = function(buffer, offset, unsequenced_message_type)
  -- Size of Enter Order
  if unsequenced_message_type == "O" then
    return jpx_osederivatives_geniuminet_ouch_v5_0.enter_order.size
  end
  -- Size of Enter Mm Order
  if unsequenced_message_type == "P" then
    return jpx_osederivatives_geniuminet_ouch_v5_0.enter_mm_order.size
  end
  -- Size of Replace Order
  if unsequenced_message_type == "U" then
    return jpx_osederivatives_geniuminet_ouch_v5_0.replace_order.size
  end
  -- Size of Cancel Order
  if unsequenced_message_type == "X" then
    return jpx_osederivatives_geniuminet_ouch_v5_0.cancel_order.size
  end
  -- Size of Cancel By Order Id
  if unsequenced_message_type == "Y" then
    return jpx_osederivatives_geniuminet_ouch_v5_0.cancel_by_order_id.size
  end
  -- Size of Mass Cancel
  if unsequenced_message_type == "M" then
    return jpx_osederivatives_geniuminet_ouch_v5_0.mass_cancel.size
  end

  return 0
end

-- Display: Unsequenced Message
jpx_osederivatives_geniuminet_ouch_v5_0.unsequenced_message.display = function(buffer, offset, packet, parent)
  return ""
end

-- Dissect Branches: Unsequenced Message
jpx_osederivatives_geniuminet_ouch_v5_0.unsequenced_message.branches = function(buffer, offset, packet, parent, unsequenced_message_type)
  -- Dissect Enter Order
  if unsequenced_message_type == "O" then
    return jpx_osederivatives_geniuminet_ouch_v5_0.enter_order.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Enter Mm Order
  if unsequenced_message_type == "P" then
    return jpx_osederivatives_geniuminet_ouch_v5_0.enter_mm_order.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Replace Order
  if unsequenced_message_type == "U" then
    return jpx_osederivatives_geniuminet_ouch_v5_0.replace_order.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Cancel Order
  if unsequenced_message_type == "X" then
    return jpx_osederivatives_geniuminet_ouch_v5_0.cancel_order.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Cancel By Order Id
  if unsequenced_message_type == "Y" then
    return jpx_osederivatives_geniuminet_ouch_v5_0.cancel_by_order_id.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Mass Cancel
  if unsequenced_message_type == "M" then
    return jpx_osederivatives_geniuminet_ouch_v5_0.mass_cancel.dissect(buffer, offset, packet, parent)
  end

  return offset
end

-- Dissect: Unsequenced Message
jpx_osederivatives_geniuminet_ouch_v5_0.unsequenced_message.dissect = function(buffer, offset, packet, parent, unsequenced_message_type)
  if not show.unsequenced_message then
    return jpx_osederivatives_geniuminet_ouch_v5_0.unsequenced_message.branches(buffer, offset, packet, parent, unsequenced_message_type)
  end

  -- Calculate size and check that branch is not empty
  local size = jpx_osederivatives_geniuminet_ouch_v5_0.unsequenced_message.size(buffer, offset, unsequenced_message_type)
  if size == 0 then
    return offset
  end

  -- Dissect Element
  local range = buffer(offset, size)
  local display = jpx_osederivatives_geniuminet_ouch_v5_0.unsequenced_message.display(buffer, packet, parent)
  local element = parent:add(omi_jpx_osederivatives_geniuminet_ouch_v5_0.fields.unsequenced_message, range, display)

  return jpx_osederivatives_geniuminet_ouch_v5_0.unsequenced_message.branches(buffer, offset, packet, parent, unsequenced_message_type)
end

-- Unsequenced Message Type
jpx_osederivatives_geniuminet_ouch_v5_0.unsequenced_message_type = {}

-- Size: Unsequenced Message Type
jpx_osederivatives_geniuminet_ouch_v5_0.unsequenced_message_type.size = 1

-- Display: Unsequenced Message Type
jpx_osederivatives_geniuminet_ouch_v5_0.unsequenced_message_type.display = function(value)
  if value == "O" then
    return "Unsequenced Message Type: Enter Order (O)"
  end
  if value == "P" then
    return "Unsequenced Message Type: Enter Mm Order (P)"
  end
  if value == "U" then
    return "Unsequenced Message Type: Replace Order (U)"
  end
  if value == "X" then
    return "Unsequenced Message Type: Cancel Order (X)"
  end
  if value == "Y" then
    return "Unsequenced Message Type: Cancel By Order Id (Y)"
  end
  if value == "M" then
    return "Unsequenced Message Type: Mass Cancel (M)"
  end

  return "Unsequenced Message Type: Unknown("..value..")"
end

-- Dissect: Unsequenced Message Type
jpx_osederivatives_geniuminet_ouch_v5_0.unsequenced_message_type.dissect = function(buffer, offset, packet, parent)
  local length = jpx_osederivatives_geniuminet_ouch_v5_0.unsequenced_message_type.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = jpx_osederivatives_geniuminet_ouch_v5_0.unsequenced_message_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_jpx_osederivatives_geniuminet_ouch_v5_0.fields.unsequenced_message_type, range, value, display)

  return offset + length, value
end

-- Unsequenced Data Packet
jpx_osederivatives_geniuminet_ouch_v5_0.unsequenced_data_packet = {}

-- Read runtime size of: Unsequenced Data Packet
jpx_osederivatives_geniuminet_ouch_v5_0.unsequenced_data_packet.size = function(buffer, offset)
  local index = offset

  -- Dependency element: Packet Length
  local packet_length = buffer(offset - 3, 2):uint()

  return packet_length - 1
end

-- Display: Unsequenced Data Packet
jpx_osederivatives_geniuminet_ouch_v5_0.unsequenced_data_packet.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Unsequenced Data Packet
jpx_osederivatives_geniuminet_ouch_v5_0.unsequenced_data_packet.fields = function(buffer, offset, packet, parent, size_of_unsequenced_data_packet)
  local index = offset

  -- Unsequenced Message Type: 1 Byte Ascii String Enum with 6 values
  index, unsequenced_message_type = jpx_osederivatives_geniuminet_ouch_v5_0.unsequenced_message_type.dissect(buffer, index, packet, parent)

  -- Unsequenced Message: Runtime Type with 6 branches
  index = jpx_osederivatives_geniuminet_ouch_v5_0.unsequenced_message.dissect(buffer, index, packet, parent, unsequenced_message_type)

  return index
end

-- Dissect: Unsequenced Data Packet
jpx_osederivatives_geniuminet_ouch_v5_0.unsequenced_data_packet.dissect = function(buffer, offset, packet, parent)
  -- Parse runtime size
  local size_of_unsequenced_data_packet = jpx_osederivatives_geniuminet_ouch_v5_0.unsequenced_data_packet.size(buffer, offset)

  -- Optionally add struct element to protocol tree
  if show.unsequenced_data_packet then
    local range = buffer(offset, size_of_unsequenced_data_packet)
    local display = jpx_osederivatives_geniuminet_ouch_v5_0.unsequenced_data_packet.display(buffer, packet, parent)
    parent = parent:add(omi_jpx_osederivatives_geniuminet_ouch_v5_0.fields.unsequenced_data_packet, range, display)
  end

  jpx_osederivatives_geniuminet_ouch_v5_0.unsequenced_data_packet.fields(buffer, offset, packet, parent, size_of_unsequenced_data_packet)

  return offset + size_of_unsequenced_data_packet
end

-- Requested Sequence Number
jpx_osederivatives_geniuminet_ouch_v5_0.requested_sequence_number = {}

-- Size: Requested Sequence Number
jpx_osederivatives_geniuminet_ouch_v5_0.requested_sequence_number.size = 20

-- Display: Requested Sequence Number
jpx_osederivatives_geniuminet_ouch_v5_0.requested_sequence_number.display = function(value)
  return "Requested Sequence Number: "..value
end

-- Dissect: Requested Sequence Number
jpx_osederivatives_geniuminet_ouch_v5_0.requested_sequence_number.dissect = function(buffer, offset, packet, parent)
  local length = jpx_osederivatives_geniuminet_ouch_v5_0.requested_sequence_number.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = jpx_osederivatives_geniuminet_ouch_v5_0.requested_sequence_number.display(value, buffer, offset, packet, parent)

  parent:add(omi_jpx_osederivatives_geniuminet_ouch_v5_0.fields.requested_sequence_number, range, value, display)

  return offset + length, value
end

-- Requested Session
jpx_osederivatives_geniuminet_ouch_v5_0.requested_session = {}

-- Size: Requested Session
jpx_osederivatives_geniuminet_ouch_v5_0.requested_session.size = 10

-- Display: Requested Session
jpx_osederivatives_geniuminet_ouch_v5_0.requested_session.display = function(value)
  return "Requested Session: "..value
end

-- Dissect: Requested Session
jpx_osederivatives_geniuminet_ouch_v5_0.requested_session.dissect = function(buffer, offset, packet, parent)
  local length = jpx_osederivatives_geniuminet_ouch_v5_0.requested_session.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = jpx_osederivatives_geniuminet_ouch_v5_0.requested_session.display(value, buffer, offset, packet, parent)

  parent:add(omi_jpx_osederivatives_geniuminet_ouch_v5_0.fields.requested_session, range, value, display)

  return offset + length, value
end

-- Password
jpx_osederivatives_geniuminet_ouch_v5_0.password = {}

-- Size: Password
jpx_osederivatives_geniuminet_ouch_v5_0.password.size = 10

-- Display: Password
jpx_osederivatives_geniuminet_ouch_v5_0.password.display = function(value)
  return "Password: "..value
end

-- Dissect: Password
jpx_osederivatives_geniuminet_ouch_v5_0.password.dissect = function(buffer, offset, packet, parent)
  local length = jpx_osederivatives_geniuminet_ouch_v5_0.password.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = jpx_osederivatives_geniuminet_ouch_v5_0.password.display(value, buffer, offset, packet, parent)

  parent:add(omi_jpx_osederivatives_geniuminet_ouch_v5_0.fields.password, range, value, display)

  return offset + length, value
end

-- Username
jpx_osederivatives_geniuminet_ouch_v5_0.username = {}

-- Size: Username
jpx_osederivatives_geniuminet_ouch_v5_0.username.size = 6

-- Display: Username
jpx_osederivatives_geniuminet_ouch_v5_0.username.display = function(value)
  return "Username: "..value
end

-- Dissect: Username
jpx_osederivatives_geniuminet_ouch_v5_0.username.dissect = function(buffer, offset, packet, parent)
  local length = jpx_osederivatives_geniuminet_ouch_v5_0.username.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = jpx_osederivatives_geniuminet_ouch_v5_0.username.display(value, buffer, offset, packet, parent)

  parent:add(omi_jpx_osederivatives_geniuminet_ouch_v5_0.fields.username, range, value, display)

  return offset + length, value
end

-- Login Request Packet
jpx_osederivatives_geniuminet_ouch_v5_0.login_request_packet = {}

-- Size: Login Request Packet
jpx_osederivatives_geniuminet_ouch_v5_0.login_request_packet.size =
  jpx_osederivatives_geniuminet_ouch_v5_0.username.size + 
  jpx_osederivatives_geniuminet_ouch_v5_0.password.size + 
  jpx_osederivatives_geniuminet_ouch_v5_0.requested_session.size + 
  jpx_osederivatives_geniuminet_ouch_v5_0.requested_sequence_number.size

-- Display: Login Request Packet
jpx_osederivatives_geniuminet_ouch_v5_0.login_request_packet.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Login Request Packet
jpx_osederivatives_geniuminet_ouch_v5_0.login_request_packet.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Username: 6 Byte Ascii String
  index, username = jpx_osederivatives_geniuminet_ouch_v5_0.username.dissect(buffer, index, packet, parent)

  -- Password: 10 Byte Ascii String
  index, password = jpx_osederivatives_geniuminet_ouch_v5_0.password.dissect(buffer, index, packet, parent)

  -- Requested Session: 10 Byte Ascii String
  index, requested_session = jpx_osederivatives_geniuminet_ouch_v5_0.requested_session.dissect(buffer, index, packet, parent)

  -- Requested Sequence Number: 20 Byte Ascii String
  index, requested_sequence_number = jpx_osederivatives_geniuminet_ouch_v5_0.requested_sequence_number.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Login Request Packet
jpx_osederivatives_geniuminet_ouch_v5_0.login_request_packet.dissect = function(buffer, offset, packet, parent)
  if show.login_request_packet then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_jpx_osederivatives_geniuminet_ouch_v5_0.fields.login_request_packet, buffer(offset, 0))
    local index = jpx_osederivatives_geniuminet_ouch_v5_0.login_request_packet.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = jpx_osederivatives_geniuminet_ouch_v5_0.login_request_packet.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return jpx_osederivatives_geniuminet_ouch_v5_0.login_request_packet.fields(buffer, offset, packet, parent)
  end
end

-- Deal Source
jpx_osederivatives_geniuminet_ouch_v5_0.deal_source = {}

-- Size: Deal Source
jpx_osederivatives_geniuminet_ouch_v5_0.deal_source.size = 1

-- Display: Deal Source
jpx_osederivatives_geniuminet_ouch_v5_0.deal_source.display = function(value)
  if value == 1 then
    return "Deal Source: System Matched (1)"
  end
  if value == 7 then
    return "Deal Source: Combination Matched (7)"
  end
  if value == 20 then
    return "Deal Source: Auction End Deal (20)"
  end

  return "Deal Source: Unknown("..value..")"
end

-- Dissect: Deal Source
jpx_osederivatives_geniuminet_ouch_v5_0.deal_source.dissect = function(buffer, offset, packet, parent)
  local length = jpx_osederivatives_geniuminet_ouch_v5_0.deal_source.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = jpx_osederivatives_geniuminet_ouch_v5_0.deal_source.display(value, buffer, offset, packet, parent)

  parent:add(omi_jpx_osederivatives_geniuminet_ouch_v5_0.fields.deal_source, range, value, display)

  return offset + length, value
end

-- Combo Group Id
jpx_osederivatives_geniuminet_ouch_v5_0.combo_group_id = {}

-- Size: Combo Group Id
jpx_osederivatives_geniuminet_ouch_v5_0.combo_group_id.size = 4

-- Display: Combo Group Id
jpx_osederivatives_geniuminet_ouch_v5_0.combo_group_id.display = function(value)
  return "Combo Group Id: "..value
end

-- Dissect: Combo Group Id
jpx_osederivatives_geniuminet_ouch_v5_0.combo_group_id.dissect = function(buffer, offset, packet, parent)
  local length = jpx_osederivatives_geniuminet_ouch_v5_0.combo_group_id.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = jpx_osederivatives_geniuminet_ouch_v5_0.combo_group_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_jpx_osederivatives_geniuminet_ouch_v5_0.fields.combo_group_id, range, value, display)

  return offset + length, value
end

-- Match Id
jpx_osederivatives_geniuminet_ouch_v5_0.match_id = {}

-- Size: Match Id
jpx_osederivatives_geniuminet_ouch_v5_0.match_id.size = 8

-- Display: Match Id
jpx_osederivatives_geniuminet_ouch_v5_0.match_id.display = function(value)
  return "Match Id: "..value
end

-- Dissect: Match Id
jpx_osederivatives_geniuminet_ouch_v5_0.match_id.dissect = function(buffer, offset, packet, parent)
  local length = jpx_osederivatives_geniuminet_ouch_v5_0.match_id.size
  local range = buffer(offset, length)
  local value = range:uint64()
  local display = jpx_osederivatives_geniuminet_ouch_v5_0.match_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_jpx_osederivatives_geniuminet_ouch_v5_0.fields.match_id, range, value, display)

  return offset + length, value
end

-- Trade Price
jpx_osederivatives_geniuminet_ouch_v5_0.trade_price = {}

-- Size: Trade Price
jpx_osederivatives_geniuminet_ouch_v5_0.trade_price.size = 4

-- Display: Trade Price
jpx_osederivatives_geniuminet_ouch_v5_0.trade_price.display = function(value)
  return "Trade Price: "..value
end

-- Translate: Trade Price
jpx_osederivatives_geniuminet_ouch_v5_0.trade_price.translate = function(raw)
  return raw/100
end

-- Dissect: Trade Price
jpx_osederivatives_geniuminet_ouch_v5_0.trade_price.dissect = function(buffer, offset, packet, parent)
  local length = jpx_osederivatives_geniuminet_ouch_v5_0.trade_price.size
  local range = buffer(offset, length)
  local raw = range:int()
  local value = jpx_osederivatives_geniuminet_ouch_v5_0.trade_price.translate(raw)
  local display = jpx_osederivatives_geniuminet_ouch_v5_0.trade_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_jpx_osederivatives_geniuminet_ouch_v5_0.fields.trade_price, range, value, display)

  return offset + length, value
end

-- Traded Quantity
jpx_osederivatives_geniuminet_ouch_v5_0.traded_quantity = {}

-- Size: Traded Quantity
jpx_osederivatives_geniuminet_ouch_v5_0.traded_quantity.size = 8

-- Display: Traded Quantity
jpx_osederivatives_geniuminet_ouch_v5_0.traded_quantity.display = function(value)
  return "Traded Quantity: "..value
end

-- Dissect: Traded Quantity
jpx_osederivatives_geniuminet_ouch_v5_0.traded_quantity.dissect = function(buffer, offset, packet, parent)
  local length = jpx_osederivatives_geniuminet_ouch_v5_0.traded_quantity.size
  local range = buffer(offset, length)
  local value = range:uint64()
  local display = jpx_osederivatives_geniuminet_ouch_v5_0.traded_quantity.display(value, buffer, offset, packet, parent)

  parent:add(omi_jpx_osederivatives_geniuminet_ouch_v5_0.fields.traded_quantity, range, value, display)

  return offset + length, value
end

-- Timestamp Nanoseconds
jpx_osederivatives_geniuminet_ouch_v5_0.timestamp_nanoseconds = {}

-- Size: Timestamp Nanoseconds
jpx_osederivatives_geniuminet_ouch_v5_0.timestamp_nanoseconds.size = 8

-- Display: Timestamp Nanoseconds
jpx_osederivatives_geniuminet_ouch_v5_0.timestamp_nanoseconds.display = function(value)
  -- Parse unix timestamp
  local seconds = math.floor(value:tonumber()/1000000000)
  local nanoseconds = value:tonumber()%1000000000

  return "Timestamp Nanoseconds: "..os.date("%x %H:%M:%S.", seconds)..string.format("%09d", nanoseconds)
end

-- Dissect: Timestamp Nanoseconds
jpx_osederivatives_geniuminet_ouch_v5_0.timestamp_nanoseconds.dissect = function(buffer, offset, packet, parent)
  local length = jpx_osederivatives_geniuminet_ouch_v5_0.timestamp_nanoseconds.size
  local range = buffer(offset, length)
  local value = range:uint64()
  local display = jpx_osederivatives_geniuminet_ouch_v5_0.timestamp_nanoseconds.display(value, buffer, offset, packet, parent)

  parent:add(omi_jpx_osederivatives_geniuminet_ouch_v5_0.fields.timestamp_nanoseconds, range, value, display)

  return offset + length, value
end

-- Order Executed
jpx_osederivatives_geniuminet_ouch_v5_0.order_executed = {}

-- Size: Order Executed
jpx_osederivatives_geniuminet_ouch_v5_0.order_executed.size =
  jpx_osederivatives_geniuminet_ouch_v5_0.timestamp_nanoseconds.size + 
  jpx_osederivatives_geniuminet_ouch_v5_0.order_token.size + 
  jpx_osederivatives_geniuminet_ouch_v5_0.order_book_id.size + 
  jpx_osederivatives_geniuminet_ouch_v5_0.traded_quantity.size + 
  jpx_osederivatives_geniuminet_ouch_v5_0.trade_price.size + 
  jpx_osederivatives_geniuminet_ouch_v5_0.match_id.size + 
  jpx_osederivatives_geniuminet_ouch_v5_0.combo_group_id.size + 
  jpx_osederivatives_geniuminet_ouch_v5_0.deal_source.size

-- Display: Order Executed
jpx_osederivatives_geniuminet_ouch_v5_0.order_executed.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Order Executed
jpx_osederivatives_geniuminet_ouch_v5_0.order_executed.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Timestamp Nanoseconds: Timestamp
  index, timestamp_nanoseconds = jpx_osederivatives_geniuminet_ouch_v5_0.timestamp_nanoseconds.dissect(buffer, index, packet, parent)

  -- Order Token: Alpha
  index, order_token = jpx_osederivatives_geniuminet_ouch_v5_0.order_token.dissect(buffer, index, packet, parent)

  -- Order Book Id: Numeric signed
  index, order_book_id = jpx_osederivatives_geniuminet_ouch_v5_0.order_book_id.dissect(buffer, index, packet, parent)

  -- Traded Quantity: Numeric unsigned
  index, traded_quantity = jpx_osederivatives_geniuminet_ouch_v5_0.traded_quantity.dissect(buffer, index, packet, parent)

  -- Trade Price: Price
  index, trade_price = jpx_osederivatives_geniuminet_ouch_v5_0.trade_price.dissect(buffer, index, packet, parent)

  -- Match Id: Numeric unsigned
  index, match_id = jpx_osederivatives_geniuminet_ouch_v5_0.match_id.dissect(buffer, index, packet, parent)

  -- Combo Group Id: Numeric unsigned
  index, combo_group_id = jpx_osederivatives_geniuminet_ouch_v5_0.combo_group_id.dissect(buffer, index, packet, parent)

  -- Deal Source: Numeric unsigned
  index, deal_source = jpx_osederivatives_geniuminet_ouch_v5_0.deal_source.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Order Executed
jpx_osederivatives_geniuminet_ouch_v5_0.order_executed.dissect = function(buffer, offset, packet, parent)
  if show.order_executed then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_jpx_osederivatives_geniuminet_ouch_v5_0.fields.order_executed, buffer(offset, 0))
    local index = jpx_osederivatives_geniuminet_ouch_v5_0.order_executed.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = jpx_osederivatives_geniuminet_ouch_v5_0.order_executed.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return jpx_osederivatives_geniuminet_ouch_v5_0.order_executed.fields(buffer, offset, packet, parent)
  end
end

-- Cancel Reason
jpx_osederivatives_geniuminet_ouch_v5_0.cancel_reason = {}

-- Size: Cancel Reason
jpx_osederivatives_geniuminet_ouch_v5_0.cancel_reason.size = 1

-- Display: Cancel Reason
jpx_osederivatives_geniuminet_ouch_v5_0.cancel_reason.display = function(value)
  if value == 1 then
    return "Cancel Reason: Canceled By User (1)"
  end
  if value == 4 then
    return "Cancel Reason: Order Inactivated (4)"
  end
  if value == 9 then
    return "Cancel Reason: Canceled By System (9)"
  end
  if value == 10 then
    return "Cancel Reason: Canceled By Proxy (10)"
  end
  if value == 15 then
    return "Cancel Reason: Canceled By System Limit Change (15)"
  end
  if value == 19 then
    return "Cancel Reason: Deleted By Time Validity Expiration (19)"
  end
  if value == 20 then
    return "Cancel Reason: Canceled Due To Iss (20)"
  end
  if value == 21 then
    return "Cancel Reason: Inactivated Due To Iss (21)"
  end
  if value == 34 then
    return "Cancel Reason: Canceled After Auction (34)"
  end
  if value == 41 then
    return "Cancel Reason: Canceled By System Delta Protection (41)"
  end
  if value == 42 then
    return "Cancel Reason: Canceled By System Quantity Protection (42)"
  end
  if value == 43 then
    return "Cancel Reason: Self Trade Prevention (43)"
  end

  return "Cancel Reason: Unknown("..value..")"
end

-- Dissect: Cancel Reason
jpx_osederivatives_geniuminet_ouch_v5_0.cancel_reason.dissect = function(buffer, offset, packet, parent)
  local length = jpx_osederivatives_geniuminet_ouch_v5_0.cancel_reason.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = jpx_osederivatives_geniuminet_ouch_v5_0.cancel_reason.display(value, buffer, offset, packet, parent)

  parent:add(omi_jpx_osederivatives_geniuminet_ouch_v5_0.fields.cancel_reason, range, value, display)

  return offset + length, value
end

-- Order Canceled
jpx_osederivatives_geniuminet_ouch_v5_0.order_canceled = {}

-- Size: Order Canceled
jpx_osederivatives_geniuminet_ouch_v5_0.order_canceled.size =
  jpx_osederivatives_geniuminet_ouch_v5_0.timestamp_nanoseconds.size + 
  jpx_osederivatives_geniuminet_ouch_v5_0.order_token.size + 
  jpx_osederivatives_geniuminet_ouch_v5_0.order_book_id.size + 
  jpx_osederivatives_geniuminet_ouch_v5_0.side.size + 
  jpx_osederivatives_geniuminet_ouch_v5_0.order_id.size + 
  jpx_osederivatives_geniuminet_ouch_v5_0.cancel_reason.size

-- Display: Order Canceled
jpx_osederivatives_geniuminet_ouch_v5_0.order_canceled.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Order Canceled
jpx_osederivatives_geniuminet_ouch_v5_0.order_canceled.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Timestamp Nanoseconds: Timestamp
  index, timestamp_nanoseconds = jpx_osederivatives_geniuminet_ouch_v5_0.timestamp_nanoseconds.dissect(buffer, index, packet, parent)

  -- Order Token: Alpha
  index, order_token = jpx_osederivatives_geniuminet_ouch_v5_0.order_token.dissect(buffer, index, packet, parent)

  -- Order Book Id: Numeric signed
  index, order_book_id = jpx_osederivatives_geniuminet_ouch_v5_0.order_book_id.dissect(buffer, index, packet, parent)

  -- Side: Alpha
  index, side = jpx_osederivatives_geniuminet_ouch_v5_0.side.dissect(buffer, index, packet, parent)

  -- Order Id: Numeric unsigned
  index, order_id = jpx_osederivatives_geniuminet_ouch_v5_0.order_id.dissect(buffer, index, packet, parent)

  -- Cancel Reason: Numeric unsigned
  index, cancel_reason = jpx_osederivatives_geniuminet_ouch_v5_0.cancel_reason.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Order Canceled
jpx_osederivatives_geniuminet_ouch_v5_0.order_canceled.dissect = function(buffer, offset, packet, parent)
  if show.order_canceled then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_jpx_osederivatives_geniuminet_ouch_v5_0.fields.order_canceled, buffer(offset, 0))
    local index = jpx_osederivatives_geniuminet_ouch_v5_0.order_canceled.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = jpx_osederivatives_geniuminet_ouch_v5_0.order_canceled.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return jpx_osederivatives_geniuminet_ouch_v5_0.order_canceled.fields(buffer, offset, packet, parent)
  end
end

-- Order State
jpx_osederivatives_geniuminet_ouch_v5_0.order_state = {}

-- Size: Order State
jpx_osederivatives_geniuminet_ouch_v5_0.order_state.size = 1

-- Display: Order State
jpx_osederivatives_geniuminet_ouch_v5_0.order_state.display = function(value)
  if value == 1 then
    return "Order State: On Book (1)"
  end
  if value == 2 then
    return "Order State: Not On Book (2)"
  end

  return "Order State: Unknown("..value..")"
end

-- Dissect: Order State
jpx_osederivatives_geniuminet_ouch_v5_0.order_state.dissect = function(buffer, offset, packet, parent)
  local length = jpx_osederivatives_geniuminet_ouch_v5_0.order_state.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = jpx_osederivatives_geniuminet_ouch_v5_0.order_state.display(value, buffer, offset, packet, parent)

  parent:add(omi_jpx_osederivatives_geniuminet_ouch_v5_0.fields.order_state, range, value, display)

  return offset + length, value
end

-- Previous Order Token
jpx_osederivatives_geniuminet_ouch_v5_0.previous_order_token = {}

-- Size: Previous Order Token
jpx_osederivatives_geniuminet_ouch_v5_0.previous_order_token.size = 14

-- Display: Previous Order Token
jpx_osederivatives_geniuminet_ouch_v5_0.previous_order_token.display = function(value)
  return "Previous Order Token: "..value
end

-- Dissect: Previous Order Token
jpx_osederivatives_geniuminet_ouch_v5_0.previous_order_token.dissect = function(buffer, offset, packet, parent)
  local length = jpx_osederivatives_geniuminet_ouch_v5_0.previous_order_token.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = jpx_osederivatives_geniuminet_ouch_v5_0.previous_order_token.display(value, buffer, offset, packet, parent)

  parent:add(omi_jpx_osederivatives_geniuminet_ouch_v5_0.fields.previous_order_token, range, value, display)

  return offset + length, value
end

-- Order Replaced
jpx_osederivatives_geniuminet_ouch_v5_0.order_replaced = {}

-- Size: Order Replaced
jpx_osederivatives_geniuminet_ouch_v5_0.order_replaced.size =
  jpx_osederivatives_geniuminet_ouch_v5_0.timestamp_nanoseconds.size + 
  jpx_osederivatives_geniuminet_ouch_v5_0.replacement_order_token.size + 
  jpx_osederivatives_geniuminet_ouch_v5_0.previous_order_token.size + 
  jpx_osederivatives_geniuminet_ouch_v5_0.order_book_id.size + 
  jpx_osederivatives_geniuminet_ouch_v5_0.side.size + 
  jpx_osederivatives_geniuminet_ouch_v5_0.order_id.size + 
  jpx_osederivatives_geniuminet_ouch_v5_0.quantity.size + 
  jpx_osederivatives_geniuminet_ouch_v5_0.price.size + 
  jpx_osederivatives_geniuminet_ouch_v5_0.time_in_force.size + 
  jpx_osederivatives_geniuminet_ouch_v5_0.open_close.size + 
  jpx_osederivatives_geniuminet_ouch_v5_0.client_account.size + 
  jpx_osederivatives_geniuminet_ouch_v5_0.order_state.size + 
  jpx_osederivatives_geniuminet_ouch_v5_0.customer_info.size + 
  jpx_osederivatives_geniuminet_ouch_v5_0.exchange_info.size

-- Display: Order Replaced
jpx_osederivatives_geniuminet_ouch_v5_0.order_replaced.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Order Replaced
jpx_osederivatives_geniuminet_ouch_v5_0.order_replaced.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Timestamp Nanoseconds: Timestamp
  index, timestamp_nanoseconds = jpx_osederivatives_geniuminet_ouch_v5_0.timestamp_nanoseconds.dissect(buffer, index, packet, parent)

  -- Replacement Order Token: Alpha
  index, replacement_order_token = jpx_osederivatives_geniuminet_ouch_v5_0.replacement_order_token.dissect(buffer, index, packet, parent)

  -- Previous Order Token: Alpha
  index, previous_order_token = jpx_osederivatives_geniuminet_ouch_v5_0.previous_order_token.dissect(buffer, index, packet, parent)

  -- Order Book Id: Numeric signed
  index, order_book_id = jpx_osederivatives_geniuminet_ouch_v5_0.order_book_id.dissect(buffer, index, packet, parent)

  -- Side: Alpha
  index, side = jpx_osederivatives_geniuminet_ouch_v5_0.side.dissect(buffer, index, packet, parent)

  -- Order Id: Numeric unsigned
  index, order_id = jpx_osederivatives_geniuminet_ouch_v5_0.order_id.dissect(buffer, index, packet, parent)

  -- Quantity: Numeric unsigned
  index, quantity = jpx_osederivatives_geniuminet_ouch_v5_0.quantity.dissect(buffer, index, packet, parent)

  -- Price: Price
  index, price = jpx_osederivatives_geniuminet_ouch_v5_0.price.dissect(buffer, index, packet, parent)

  -- Time In Force: Numeric unsigned
  index, time_in_force = jpx_osederivatives_geniuminet_ouch_v5_0.time_in_force.dissect(buffer, index, packet, parent)

  -- Open Close: Numeric unsigned
  index, open_close = jpx_osederivatives_geniuminet_ouch_v5_0.open_close.dissect(buffer, index, packet, parent)

  -- Client Account: Alpha
  index, client_account = jpx_osederivatives_geniuminet_ouch_v5_0.client_account.dissect(buffer, index, packet, parent)

  -- Order State: Numeric unsigned
  index, order_state = jpx_osederivatives_geniuminet_ouch_v5_0.order_state.dissect(buffer, index, packet, parent)

  -- Customer Info: Alpha
  index, customer_info = jpx_osederivatives_geniuminet_ouch_v5_0.customer_info.dissect(buffer, index, packet, parent)

  -- Exchange Info: Alpha
  index, exchange_info = jpx_osederivatives_geniuminet_ouch_v5_0.exchange_info.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Order Replaced
jpx_osederivatives_geniuminet_ouch_v5_0.order_replaced.dissect = function(buffer, offset, packet, parent)
  if show.order_replaced then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_jpx_osederivatives_geniuminet_ouch_v5_0.fields.order_replaced, buffer(offset, 0))
    local index = jpx_osederivatives_geniuminet_ouch_v5_0.order_replaced.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = jpx_osederivatives_geniuminet_ouch_v5_0.order_replaced.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return jpx_osederivatives_geniuminet_ouch_v5_0.order_replaced.fields(buffer, offset, packet, parent)
  end
end

-- Reject Code
jpx_osederivatives_geniuminet_ouch_v5_0.reject_code = {}

-- Size: Reject Code
jpx_osederivatives_geniuminet_ouch_v5_0.reject_code.size = 4

-- Display: Reject Code
jpx_osederivatives_geniuminet_ouch_v5_0.reject_code.display = function(value)
  if value == -800014 then
    return "Reject Code: De Can Not Cancel (-800014)"
  end
  if value == -800002 then
    return "Reject Code: De Duplicate Token (-800002)"
  end
  if value == -800016 then
    return "Reject Code: De Invalid Mass Cancel Scope (-800016)"
  end
  if value == -800006 then
    return "Reject Code: De Invalid Orderbook (-800006)"
  end
  if value == -800012 then
    return "Reject Code: De Invalid Order Number (-800012)"
  end
  if value == -800008 then
    return "Reject Code: De Invalid Side (-800008)"
  end
  if value == -800010 then
    return "Reject Code: De Invalid Tif (-800010)"
  end
  if value == -800018 then
    return "Reject Code: De Invalid Underlying (-800018)"
  end
  if value == -800015 then
    return "Reject Code: De Throttling (-800015)"
  end
  if value == -800004 then
    return "Reject Code: De Unknown Token (-800004)"
  end
  if value == -110210 then
    return "Reject Code: Gen Cdc Aex Full (-110210)"
  end
  if value == -110244 then
    return "Reject Code: Gen Cdc Asc Full (-110244)"
  end
  if value == -110262 then
    return "Reject Code: Gen Cdc Cac Full (-110262)"
  end
  if value == -110235 then
    return "Reject Code: Gen Cdc Cbs Not Ready (-110235)"
  end
  if value == -110196 then
    return "Reject Code: Gen Cdc Cbx Full (-110196)"
  end
  if value == -110204 then
    return "Reject Code: Gen Cdc Ccr Full (-110204)"
  end
  if value == -110186 then
    return "Reject Code: Gen Cdc Cib Full (-110186)"
  end
  if value == -110019 then
    return "Reject Code: Gen Cdc Cli Notfou (-110019)"
  end
  if value == -110118 then
    return "Reject Code: Gen Cdc Cog Full (-110118)"
  end
  if value == -110242 then
    return "Reject Code: Gen Cdc Cpa Full (-110242)"
  end
  if value == -110194 then
    return "Reject Code: Gen Cdc Crf Full (-110194)"
  end
  if value == -110202 then
    return "Reject Code: Gen Cdc Cro Full (-110202)"
  end
  if value == -110274 then
    return "Reject Code: Gen Cdc Crp Full (-110274)"
  end
  if value == -110165 then
    return "Reject Code: Gen Cdc Crsclose (-110165)"
  end
  if value == -110212 then
    return "Reject Code: Gen Cdc Csa Full (-110212)"
  end
  if value == -110282 then
    return "Reject Code: Gen Cdc Cse Full (-110282)"
  end
  if value == -110081 then
    return "Reject Code: Gen Cdc Cst Susp (-110081)"
  end
  if value == -110218 then
    return "Reject Code: Gen Cdc Cup Full (-110218)"
  end
  if value == -110264 then
    return "Reject Code: Gen Cdc Cur Full (-110264)"
  end
  if value == -110136 then
    return "Reject Code: Gen Cdc Des Full (-110136)"
  end
  if value == -110146 then
    return "Reject Code: Gen Cdc Dgr Full (-110146)"
  end
  if value == -110148 then
    return "Reject Code: Gen Cdc Dhb Full (-110148)"
  end
  if value == -110268 then
    return "Reject Code: Gen Cdc Dio Full (-110268)"
  end
  if value == -110232 then
    return "Reject Code: Gen Cdc Ecb Full (-110232)"
  end
  if value == -110126 then
    return "Reject Code: Gen Cdc Edg Full (-110126)"
  end
  if value == -110222 then
    return "Reject Code: Gen Cdc Edl Full (-110222)"
  end
  if value == -110138 then
    return "Reject Code: Gen Cdc Eid Full (-110138)"
  end
  if value == -110142 then
    return "Reject Code: Gen Cdc Exc Full (-110142)"
  end
  if value == -110120 then
    return "Reject Code: Gen Cdc Fml Full (-110120)"
  end
  if value == -110132 then
    return "Reject Code: Gen Cdc Fov Full (-110132)"
  end
  if value == -110284 then
    return "Reject Code: Gen Cdc Hse Full (-110284)"
  end
  if value == -110061 then
    return "Reject Code: Gen Cdc Ill Commodity (-110061)"
  end
  if value == -110220 then
    return "Reject Code: Gen Cdc Ing Full (-110220)"
  end
  if value == -110023 then
    return "Reject Code: Gen Cdc Int Closed (-110023)"
  end
  if value == -110167 then
    return "Reject Code: Gen Cdc Invopenclose (-110167)"
  end
  if value == -110171 then
    return "Reject Code: Gen Cdc Invuser (-110171)"
  end
  if value == -110157 then
    return "Reject Code: Gen Cdc Inv Block (-110157)"
  end
  if value == -110163 then
    return "Reject Code: Gen Cdc Inv Open Close Req (-110163)"
  end
  if value == -110161 then
    return "Reject Code: Gen Cdc Inv Premium (-110161)"
  end
  if value == -110159 then
    return "Reject Code: Gen Cdc Inv Quantity (-110159)"
  end
  if value == -110206 then
    return "Reject Code: Gen Cdc Ixv Full (-110206)"
  end
  if value == -110011 then
    return "Reject Code: Gen Cdc Liu Notfou (-110011)"
  end
  if value == -110013 then
    return "Reject Code: Gen Cdc Ltt Notfou (-110013)"
  end
  if value == -110169 then
    return "Reject Code: Gen Cdc Match Validity (-110169)"
  end
  if value == -110201 then
    return "Reject Code: Gen Cdc Max Mem Quantity (-110201)"
  end
  if value == -110173 then
    return "Reject Code: Gen Cdc Max Quantity (-110173)"
  end
  if value == -110002 then
    return "Reject Code: Gen Cdc Mem Full (-110002)"
  end
  if value == -110175 then
    return "Reject Code: Gen Cdc Min Of Sil (-110175)"
  end
  if value == -110278 then
    return "Reject Code: Gen Cdc Mpm Full (-110278)"
  end
  if value == -110276 then
    return "Reject Code: Gen Cdc Mpr Full (-110276)"
  end
  if value == -110116 then
    return "Reject Code: Gen Cdc Msu Full (-110116)"
  end
  if value == -110247 then
    return "Reject Code: Gen Cdc Not Traded (-110247)"
  end
  if value == -110193 then
    return "Reject Code: Gen Cdc No Hedge Price (-110193)"
  end
  if value == -110190 then
    return "Reject Code: Gen Cdc Ntd Full (-110190)"
  end
  if value == -110236 then
    return "Reject Code: Gen Cdc Oat Full (-110236)"
  end
  if value == -110122 then
    return "Reject Code: Gen Cdc Obk Full (-110122)"
  end
  if value == -110114 then
    return "Reject Code: Gen Cdc Obl Full (-110114)"
  end
  if value == -110115 then
    return "Reject Code: Gen Cdc Obl Notfou (-110115)"
  end
  if value == -110255 then
    return "Reject Code: Gen Cdc Only In Eq Cbo (-110255)"
  end
  if value == -110266 then
    return "Reject Code: Gen Cdc Opp Full (-110266)"
  end
  if value == -110130 then
    return "Reject Code: Gen Cdc Pdp Full (-110130)"
  end
  if value == -110252 then
    return "Reject Code: Gen Cdc Pid Full (-110252)"
  end
  if value == -110216 then
    return "Reject Code: Gen Cdc Pod Full (-110216)"
  end
  if value == -110152 then
    return "Reject Code: Gen Cdc Prl Full (-110152)"
  end
  if value == -110270 then
    return "Reject Code: Gen Cdc Rpt Full (-110270)"
  end
  if value == -110272 then
    return "Reject Code: Gen Cdc Rtm Full (-110272)"
  end
  if value == -110214 then
    return "Reject Code: Gen Cdc Sec Full (-110214)"
  end
  if value == -110155 then
    return "Reject Code: Gen Cdc Series Stopped (-110155)"
  end
  if value == -110188 then
    return "Reject Code: Gen Cdc Sid Full (-110188)"
  end
  if value == -110128 then
    return "Reject Code: Gen Cdc Spg Full (-110128)"
  end
  if value == -110224 then
    return "Reject Code: Gen Cdc Spl Full (-110224)"
  end
  if value == -110230 then
    return "Reject Code: Gen Cdc Sss Full (-110230)"
  end
  if value == -110150 then
    return "Reject Code: Gen Cdc Sst Full (-110150)"
  end
  if value == -110257 then
    return "Reject Code: Gen Cdc Trc Ins Notfound (-110257)"
  end
  if value == -110259 then
    return "Reject Code: Gen Cdc Trc Sst Notfound (-110259)"
  end
  if value == -110261 then
    return "Reject Code: Gen Cdc Trc Ust Notfound (-110261)"
  end
  if value == -110134 then
    return "Reject Code: Gen Cdc Tse Full (-110134)"
  end
  if value == -110124 then
    return "Reject Code: Gen Cdc Tsr Full (-110124)"
  end
  if value == -110077 then
    return "Reject Code: Gen Cdc Usr Susp (-110077)"
  end
  if value == -110140 then
    return "Reject Code: Gen Cdc Ust Full (-110140)"
  end
  if value == -110208 then
    return "Reject Code: Gen Cdc Vbs Full (-110208)"
  end
  if value == -110144 then
    return "Reject Code: Gen Cdc Vds Full (-110144)"
  end
  if value == -110226 then
    return "Reject Code: Gen Cdc Vsp Full (-110226)"
  end
  if value == -110198 then
    return "Reject Code: Gen Cdc Wkp Full (-110198)"
  end
  if value == -197004 then
    return "Reject Code: Gen Shr Dvpcancellednocancel (-197004)"
  end
  if value == -197000 then
    return "Reject Code: Gen Shr Dvpcompletednocancel (-197000)"
  end
  if value == -197002 then
    return "Reject Code: Gen Shr Dvprecallednocancel (-197002)"
  end
  if value == -197014 then
    return "Reject Code: Gen Shr Fixedincomepricetype (-197014)"
  end
  if value == -197012 then
    return "Reject Code: Gen Shr Fixedincomeproduct (-197012)"
  end
  if value == -197008 then
    return "Reject Code: Gen Shr Illegalargument (-197008)"
  end
  if value == -197022 then
    return "Reject Code: Gen Shr Interror (-197022)"
  end
  if value == -197006 then
    return "Reject Code: Gen Shr Invfixedincometype (-197006)"
  end
  if value == -197026 then
    return "Reject Code: Gen Shr Invinsid (-197026)"
  end
  if value == -197010 then
    return "Reject Code: Gen Shr Invpremiumunit (-197010)"
  end
  if value == -197016 then
    return "Reject Code: Gen Shr Invseries (-197016)"
  end
  if value == -197020 then
    return "Reject Code: Gen Shr Nottmseries (-197020)"
  end
  if value == -197018 then
    return "Reject Code: Gen Shr Nottmtemplate (-197018)"
  end
  if value == -197024 then
    return "Reject Code: Gen Shr Seriesmismatch (-197024)"
  end
  if value == -140001 then
    return "Reject Code: Oc Brx Not All (-140001)"
  end
  if value == -140006 then
    return "Reject Code: Oc Error (-140006)"
  end
  if value == -140008 then
    return "Reject Code: Oc Fatal (-140008)"
  end
  if value == -140010 then
    return "Reject Code: Oc Invargs (-140010)"
  end
  if value == -140012 then
    return "Reject Code: Oc Invchn Type (-140012)"
  end
  if value == -140074 then
    return "Reject Code: Oc Tx Notsamclu (-140074)"
  end
  if value == -140076 then
    return "Reject Code: Oc Tx Notsamnod (-140076)"
  end
  if value == -140070 then
    return "Reject Code: Oc Tx Not Open (-140070)"
  end
  if value == -140078 then
    return "Reject Code: Oc Tx Nrsegsdif (-140078)"
  end
  if value == -140080 then
    return "Reject Code: Oc Tx Outst Evtsdwn (-140080)"
  end
  if value == -140082 then
    return "Reject Code: Oc Tx Reqabort (-140082)"
  end
  if value == -140084 then
    return "Reject Code: Oc Tx Reqcallun (-140084)"
  end
  if value == -140085 then
    return "Reject Code: Oc Tx Shutcall (-140085)"
  end
  if value == -140087 then
    return "Reject Code: Oc Tx Shutdown (-140087)"
  end
  if value == -140092 then
    return "Reject Code: Oc Tx Toomansha (-140092)"
  end
  if value == -140094 then
    return "Reject Code: Oc Tx Truncate (-140094)"
  end
  if value == -140098 then
    return "Reject Code: Oc Tx Uppleslow (-140098)"
  end
  if value == -510192 then
    return "Reject Code: Info Abortnomatch (-510192)"
  end
  if value == -510190 then
    return "Reject Code: Info Abortstateready (-510190)"
  end
  if value == -510228 then
    return "Reject Code: Info Abortstateundo (-510228)"
  end
  if value == -510080 then
    return "Reject Code: Info Badseg (-510080)"
  end
  if value == -510270 then
    return "Reject Code: Info Bdcsem (-510270)"
  end
  if value == -510268 then
    return "Reject Code: Info Bdcsyn (-510268)"
  end
  if value == -510224 then
    return "Reject Code: Info Calcrulenotaplund (-510224)"
  end
  if value == -510206 then
    return "Reject Code: Info Colfailnosource (-510206)"
  end
  if value == -510194 then
    return "Reject Code: Info Datalckbysignal (-510194)"
  end
  if value == -510214 then
    return "Reject Code: Info Dirtyfuture (-510214)"
  end
  if value == -510218 then
    return "Reject Code: Info Dirtymoney (-510218)"
  end
  if value == -510216 then
    return "Reject Code: Info Dirtywi (-510216)"
  end
  if value == -510348 then
    return "Reject Code: Info Emergsplocked (-510348)"
  end
  if value == -510272 then
    return "Reject Code: Info Errorcode (-510272)"
  end
  if value == -510186 then
    return "Reject Code: Info Funcnotsup (-510186)"
  end
  if value == -510284 then
    return "Reject Code: Info Hisdatenotalwd (-510284)"
  end
  if value == -510308 then
    return "Reject Code: Info Indexcalcfail (-510308)"
  end
  if value == -510312 then
    return "Reject Code: Info Indexindiceslogfail (-510312)"
  end
  if value == -510310 then
    return "Reject Code: Info Indexjournalfail (-510310)"
  end
  if value == -510300 then
    return "Reject Code: Info Indexvalidfail (-510300)"
  end
  if value == -510220 then
    return "Reject Code: Info Indicativepricetype (-510220)"
  end
  if value == -510280 then
    return "Reject Code: Info Insnotallowed (-510280)"
  end
  if value == -510332 then
    return "Reject Code: Info Spgenericerror (-510332)"
  end
  if value == -510326 then
    return "Reject Code: Info Spinvalgo (-510326)"
  end
  if value == -510328 then
    return "Reject Code: Info Spinvalgoforprod (-510328)"
  end
  if value == -510346 then
    return "Reject Code: Info Spinvalgoparam (-510346)"
  end
  if value == -510330 then
    return "Reject Code: Info Spinvaslocked (-510330)"
  end
  if value == -510340 then
    return "Reject Code: Info Spinvclearingdate (-510340)"
  end
  if value == -510322 then
    return "Reject Code: Info Spinvforalg (-510322)"
  end
  if value == -510320 then
    return "Reject Code: Info Spinvfortheoalg (-510320)"
  end
  if value == -510334 then
    return "Reject Code: Info Spinvmanuallyflag (-510334)"
  end
  if value == -510350 then
    return "Reject Code: Info Spinvsource (-510350)"
  end
  if value == -510352 then
    return "Reject Code: Info Spmixderupp (-510352)"
  end
  if value == -510336 then
    return "Reject Code: Info Spmixfutopt (-510336)"
  end
  if value == -510338 then
    return "Reject Code: Info Spnotallopt (-510338)"
  end
  if value == -510354 then
    return "Reject Code: Info Spnoupperlp (-510354)"
  end
  if value == -510344 then
    return "Reject Code: Info Spoptexpandmaxlimit (-510344)"
  end
  if value == -510342 then
    return "Reject Code: Info Spruleoutofrange (-510342)"
  end
  if value == -510358 then
    return "Reject Code: Info Spsavecalcinprog (-510358)"
  end
  if value == -510360 then
    return "Reject Code: Info Spsavelck (-510360)"
  end
  if value == -510362 then
    return "Reject Code: Info Spsavenewcday (-510362)"
  end
  if value == -510324 then
    return "Reject Code: Info Sptomanymatches (-510324)"
  end
  if value == -510317 then
    return "Reject Code: Info Strtruncated (-510317)"
  end
  if value == -510234 then
    return "Reject Code: Info Subitemdropped (-510234)"
  end
  if value == -510079 then
    return "Reject Code: Info Todaynotavail (-510079)"
  end
  if value == -510370 then
    return "Reject Code: Info Txdupitem (-510370)"
  end
  if value == -510144 then
    return "Reject Code: Info Unknownoper (-510144)"
  end
  if value == -510368 then
    return "Reject Code: Info Wrongchildstate (-510368)"
  end

  return "Reject Code: Unknown("..value..")"
end

-- Dissect: Reject Code
jpx_osederivatives_geniuminet_ouch_v5_0.reject_code.dissect = function(buffer, offset, packet, parent)
  local length = jpx_osederivatives_geniuminet_ouch_v5_0.reject_code.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = jpx_osederivatives_geniuminet_ouch_v5_0.reject_code.display(value, buffer, offset, packet, parent)

  parent:add(omi_jpx_osederivatives_geniuminet_ouch_v5_0.fields.reject_code, range, value, display)

  return offset + length, value
end

-- Order Rejected
jpx_osederivatives_geniuminet_ouch_v5_0.order_rejected = {}

-- Size: Order Rejected
jpx_osederivatives_geniuminet_ouch_v5_0.order_rejected.size =
  jpx_osederivatives_geniuminet_ouch_v5_0.timestamp_nanoseconds.size + 
  jpx_osederivatives_geniuminet_ouch_v5_0.order_token.size + 
  jpx_osederivatives_geniuminet_ouch_v5_0.reject_code.size

-- Display: Order Rejected
jpx_osederivatives_geniuminet_ouch_v5_0.order_rejected.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Order Rejected
jpx_osederivatives_geniuminet_ouch_v5_0.order_rejected.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Timestamp Nanoseconds: Timestamp
  index, timestamp_nanoseconds = jpx_osederivatives_geniuminet_ouch_v5_0.timestamp_nanoseconds.dissect(buffer, index, packet, parent)

  -- Order Token: Alpha
  index, order_token = jpx_osederivatives_geniuminet_ouch_v5_0.order_token.dissect(buffer, index, packet, parent)

  -- Reject Code: Numeric signed
  index, reject_code = jpx_osederivatives_geniuminet_ouch_v5_0.reject_code.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Order Rejected
jpx_osederivatives_geniuminet_ouch_v5_0.order_rejected.dissect = function(buffer, offset, packet, parent)
  if show.order_rejected then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_jpx_osederivatives_geniuminet_ouch_v5_0.fields.order_rejected, buffer(offset, 0))
    local index = jpx_osederivatives_geniuminet_ouch_v5_0.order_rejected.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = jpx_osederivatives_geniuminet_ouch_v5_0.order_rejected.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return jpx_osederivatives_geniuminet_ouch_v5_0.order_rejected.fields(buffer, offset, packet, parent)
  end
end

-- Status
jpx_osederivatives_geniuminet_ouch_v5_0.status = {}

-- Size: Status
jpx_osederivatives_geniuminet_ouch_v5_0.status.size = 4

-- Display: Status
jpx_osederivatives_geniuminet_ouch_v5_0.status.display = function(value)
  return "Status: "..value
end

-- Dissect: Status
jpx_osederivatives_geniuminet_ouch_v5_0.status.dissect = function(buffer, offset, packet, parent)
  local length = jpx_osederivatives_geniuminet_ouch_v5_0.status.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = jpx_osederivatives_geniuminet_ouch_v5_0.status.display(value, buffer, offset, packet, parent)

  parent:add(omi_jpx_osederivatives_geniuminet_ouch_v5_0.fields.status, range, value, display)

  return offset + length, value
end

-- Mass Cancel Accepted
jpx_osederivatives_geniuminet_ouch_v5_0.mass_cancel_accepted = {}

-- Size: Mass Cancel Accepted
jpx_osederivatives_geniuminet_ouch_v5_0.mass_cancel_accepted.size =
  jpx_osederivatives_geniuminet_ouch_v5_0.timestamp_nanoseconds.size + 
  jpx_osederivatives_geniuminet_ouch_v5_0.order_token.size + 
  jpx_osederivatives_geniuminet_ouch_v5_0.status.size

-- Display: Mass Cancel Accepted
jpx_osederivatives_geniuminet_ouch_v5_0.mass_cancel_accepted.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Mass Cancel Accepted
jpx_osederivatives_geniuminet_ouch_v5_0.mass_cancel_accepted.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Timestamp Nanoseconds: Timestamp
  index, timestamp_nanoseconds = jpx_osederivatives_geniuminet_ouch_v5_0.timestamp_nanoseconds.dissect(buffer, index, packet, parent)

  -- Order Token: Alpha
  index, order_token = jpx_osederivatives_geniuminet_ouch_v5_0.order_token.dissect(buffer, index, packet, parent)

  -- Status: Numeric unsigned
  index, status = jpx_osederivatives_geniuminet_ouch_v5_0.status.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Mass Cancel Accepted
jpx_osederivatives_geniuminet_ouch_v5_0.mass_cancel_accepted.dissect = function(buffer, offset, packet, parent)
  if show.mass_cancel_accepted then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_jpx_osederivatives_geniuminet_ouch_v5_0.fields.mass_cancel_accepted, buffer(offset, 0))
    local index = jpx_osederivatives_geniuminet_ouch_v5_0.mass_cancel_accepted.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = jpx_osederivatives_geniuminet_ouch_v5_0.mass_cancel_accepted.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return jpx_osederivatives_geniuminet_ouch_v5_0.mass_cancel_accepted.fields(buffer, offset, packet, parent)
  end
end

-- Order Accepted
jpx_osederivatives_geniuminet_ouch_v5_0.order_accepted = {}

-- Size: Order Accepted
jpx_osederivatives_geniuminet_ouch_v5_0.order_accepted.size =
  jpx_osederivatives_geniuminet_ouch_v5_0.timestamp_nanoseconds.size + 
  jpx_osederivatives_geniuminet_ouch_v5_0.order_token.size + 
  jpx_osederivatives_geniuminet_ouch_v5_0.order_book_id.size + 
  jpx_osederivatives_geniuminet_ouch_v5_0.side.size + 
  jpx_osederivatives_geniuminet_ouch_v5_0.order_id.size + 
  jpx_osederivatives_geniuminet_ouch_v5_0.quantity.size + 
  jpx_osederivatives_geniuminet_ouch_v5_0.price.size + 
  jpx_osederivatives_geniuminet_ouch_v5_0.time_in_force.size + 
  jpx_osederivatives_geniuminet_ouch_v5_0.open_close.size + 
  jpx_osederivatives_geniuminet_ouch_v5_0.client_account.size + 
  jpx_osederivatives_geniuminet_ouch_v5_0.order_state.size + 
  jpx_osederivatives_geniuminet_ouch_v5_0.customer_info.size + 
  jpx_osederivatives_geniuminet_ouch_v5_0.exchange_info.size

-- Display: Order Accepted
jpx_osederivatives_geniuminet_ouch_v5_0.order_accepted.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Order Accepted
jpx_osederivatives_geniuminet_ouch_v5_0.order_accepted.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Timestamp Nanoseconds: Timestamp
  index, timestamp_nanoseconds = jpx_osederivatives_geniuminet_ouch_v5_0.timestamp_nanoseconds.dissect(buffer, index, packet, parent)

  -- Order Token: Alpha
  index, order_token = jpx_osederivatives_geniuminet_ouch_v5_0.order_token.dissect(buffer, index, packet, parent)

  -- Order Book Id: Numeric signed
  index, order_book_id = jpx_osederivatives_geniuminet_ouch_v5_0.order_book_id.dissect(buffer, index, packet, parent)

  -- Side: Alpha
  index, side = jpx_osederivatives_geniuminet_ouch_v5_0.side.dissect(buffer, index, packet, parent)

  -- Order Id: Numeric unsigned
  index, order_id = jpx_osederivatives_geniuminet_ouch_v5_0.order_id.dissect(buffer, index, packet, parent)

  -- Quantity: Numeric unsigned
  index, quantity = jpx_osederivatives_geniuminet_ouch_v5_0.quantity.dissect(buffer, index, packet, parent)

  -- Price: Price
  index, price = jpx_osederivatives_geniuminet_ouch_v5_0.price.dissect(buffer, index, packet, parent)

  -- Time In Force: Numeric unsigned
  index, time_in_force = jpx_osederivatives_geniuminet_ouch_v5_0.time_in_force.dissect(buffer, index, packet, parent)

  -- Open Close: Numeric unsigned
  index, open_close = jpx_osederivatives_geniuminet_ouch_v5_0.open_close.dissect(buffer, index, packet, parent)

  -- Client Account: Alpha
  index, client_account = jpx_osederivatives_geniuminet_ouch_v5_0.client_account.dissect(buffer, index, packet, parent)

  -- Order State: Numeric unsigned
  index, order_state = jpx_osederivatives_geniuminet_ouch_v5_0.order_state.dissect(buffer, index, packet, parent)

  -- Customer Info: Alpha
  index, customer_info = jpx_osederivatives_geniuminet_ouch_v5_0.customer_info.dissect(buffer, index, packet, parent)

  -- Exchange Info: Alpha
  index, exchange_info = jpx_osederivatives_geniuminet_ouch_v5_0.exchange_info.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Order Accepted
jpx_osederivatives_geniuminet_ouch_v5_0.order_accepted.dissect = function(buffer, offset, packet, parent)
  if show.order_accepted then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_jpx_osederivatives_geniuminet_ouch_v5_0.fields.order_accepted, buffer(offset, 0))
    local index = jpx_osederivatives_geniuminet_ouch_v5_0.order_accepted.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = jpx_osederivatives_geniuminet_ouch_v5_0.order_accepted.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return jpx_osederivatives_geniuminet_ouch_v5_0.order_accepted.fields(buffer, offset, packet, parent)
  end
end

-- Sequenced Message
jpx_osederivatives_geniuminet_ouch_v5_0.sequenced_message = {}

-- Size: Sequenced Message
jpx_osederivatives_geniuminet_ouch_v5_0.sequenced_message.size = function(buffer, offset, sequenced_message_type)
  -- Size of Order Accepted
  if sequenced_message_type == "A" then
    return jpx_osederivatives_geniuminet_ouch_v5_0.order_accepted.size
  end
  -- Size of Mass Cancel Accepted
  if sequenced_message_type == "M" then
    return jpx_osederivatives_geniuminet_ouch_v5_0.mass_cancel_accepted.size
  end
  -- Size of Order Rejected
  if sequenced_message_type == "J" then
    return jpx_osederivatives_geniuminet_ouch_v5_0.order_rejected.size
  end
  -- Size of Order Replaced
  if sequenced_message_type == "U" then
    return jpx_osederivatives_geniuminet_ouch_v5_0.order_replaced.size
  end
  -- Size of Order Canceled
  if sequenced_message_type == "C" then
    return jpx_osederivatives_geniuminet_ouch_v5_0.order_canceled.size
  end
  -- Size of Order Executed
  if sequenced_message_type == "E" then
    return jpx_osederivatives_geniuminet_ouch_v5_0.order_executed.size
  end

  return 0
end

-- Display: Sequenced Message
jpx_osederivatives_geniuminet_ouch_v5_0.sequenced_message.display = function(buffer, offset, packet, parent)
  return ""
end

-- Dissect Branches: Sequenced Message
jpx_osederivatives_geniuminet_ouch_v5_0.sequenced_message.branches = function(buffer, offset, packet, parent, sequenced_message_type)
  -- Dissect Order Accepted
  if sequenced_message_type == "A" then
    return jpx_osederivatives_geniuminet_ouch_v5_0.order_accepted.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Mass Cancel Accepted
  if sequenced_message_type == "M" then
    return jpx_osederivatives_geniuminet_ouch_v5_0.mass_cancel_accepted.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Order Rejected
  if sequenced_message_type == "J" then
    return jpx_osederivatives_geniuminet_ouch_v5_0.order_rejected.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Order Replaced
  if sequenced_message_type == "U" then
    return jpx_osederivatives_geniuminet_ouch_v5_0.order_replaced.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Order Canceled
  if sequenced_message_type == "C" then
    return jpx_osederivatives_geniuminet_ouch_v5_0.order_canceled.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Order Executed
  if sequenced_message_type == "E" then
    return jpx_osederivatives_geniuminet_ouch_v5_0.order_executed.dissect(buffer, offset, packet, parent)
  end

  return offset
end

-- Dissect: Sequenced Message
jpx_osederivatives_geniuminet_ouch_v5_0.sequenced_message.dissect = function(buffer, offset, packet, parent, sequenced_message_type)
  if not show.sequenced_message then
    return jpx_osederivatives_geniuminet_ouch_v5_0.sequenced_message.branches(buffer, offset, packet, parent, sequenced_message_type)
  end

  -- Calculate size and check that branch is not empty
  local size = jpx_osederivatives_geniuminet_ouch_v5_0.sequenced_message.size(buffer, offset, sequenced_message_type)
  if size == 0 then
    return offset
  end

  -- Dissect Element
  local range = buffer(offset, size)
  local display = jpx_osederivatives_geniuminet_ouch_v5_0.sequenced_message.display(buffer, packet, parent)
  local element = parent:add(omi_jpx_osederivatives_geniuminet_ouch_v5_0.fields.sequenced_message, range, display)

  return jpx_osederivatives_geniuminet_ouch_v5_0.sequenced_message.branches(buffer, offset, packet, parent, sequenced_message_type)
end

-- Sequenced Message Type
jpx_osederivatives_geniuminet_ouch_v5_0.sequenced_message_type = {}

-- Size: Sequenced Message Type
jpx_osederivatives_geniuminet_ouch_v5_0.sequenced_message_type.size = 1

-- Display: Sequenced Message Type
jpx_osederivatives_geniuminet_ouch_v5_0.sequenced_message_type.display = function(value)
  if value == "A" then
    return "Sequenced Message Type: Order Accepted (A)"
  end
  if value == "M" then
    return "Sequenced Message Type: Mass Cancel Accepted (M)"
  end
  if value == "J" then
    return "Sequenced Message Type: Order Rejected (J)"
  end
  if value == "U" then
    return "Sequenced Message Type: Order Replaced (U)"
  end
  if value == "C" then
    return "Sequenced Message Type: Order Canceled (C)"
  end
  if value == "E" then
    return "Sequenced Message Type: Order Executed (E)"
  end

  return "Sequenced Message Type: Unknown("..value..")"
end

-- Dissect: Sequenced Message Type
jpx_osederivatives_geniuminet_ouch_v5_0.sequenced_message_type.dissect = function(buffer, offset, packet, parent)
  local length = jpx_osederivatives_geniuminet_ouch_v5_0.sequenced_message_type.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = jpx_osederivatives_geniuminet_ouch_v5_0.sequenced_message_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_jpx_osederivatives_geniuminet_ouch_v5_0.fields.sequenced_message_type, range, value, display)

  return offset + length, value
end

-- Sequenced Data Packet
jpx_osederivatives_geniuminet_ouch_v5_0.sequenced_data_packet = {}

-- Read runtime size of: Sequenced Data Packet
jpx_osederivatives_geniuminet_ouch_v5_0.sequenced_data_packet.size = function(buffer, offset)
  local index = offset

  -- Dependency element: Packet Length
  local packet_length = buffer(offset - 3, 2):uint()

  return packet_length - 1
end

-- Display: Sequenced Data Packet
jpx_osederivatives_geniuminet_ouch_v5_0.sequenced_data_packet.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Sequenced Data Packet
jpx_osederivatives_geniuminet_ouch_v5_0.sequenced_data_packet.fields = function(buffer, offset, packet, parent, size_of_sequenced_data_packet)
  local index = offset

  -- Sequenced Message Type: 1 Byte Ascii String Enum with 6 values
  index, sequenced_message_type = jpx_osederivatives_geniuminet_ouch_v5_0.sequenced_message_type.dissect(buffer, index, packet, parent)

  -- Sequenced Message: Runtime Type with 6 branches
  index = jpx_osederivatives_geniuminet_ouch_v5_0.sequenced_message.dissect(buffer, index, packet, parent, sequenced_message_type)

  return index
end

-- Dissect: Sequenced Data Packet
jpx_osederivatives_geniuminet_ouch_v5_0.sequenced_data_packet.dissect = function(buffer, offset, packet, parent)
  -- Parse runtime size
  local size_of_sequenced_data_packet = jpx_osederivatives_geniuminet_ouch_v5_0.sequenced_data_packet.size(buffer, offset)

  -- Optionally add struct element to protocol tree
  if show.sequenced_data_packet then
    local range = buffer(offset, size_of_sequenced_data_packet)
    local display = jpx_osederivatives_geniuminet_ouch_v5_0.sequenced_data_packet.display(buffer, packet, parent)
    parent = parent:add(omi_jpx_osederivatives_geniuminet_ouch_v5_0.fields.sequenced_data_packet, range, display)
  end

  jpx_osederivatives_geniuminet_ouch_v5_0.sequenced_data_packet.fields(buffer, offset, packet, parent, size_of_sequenced_data_packet)

  return offset + size_of_sequenced_data_packet
end

-- Reject Reason Code
jpx_osederivatives_geniuminet_ouch_v5_0.reject_reason_code = {}

-- Size: Reject Reason Code
jpx_osederivatives_geniuminet_ouch_v5_0.reject_reason_code.size = 1

-- Display: Reject Reason Code
jpx_osederivatives_geniuminet_ouch_v5_0.reject_reason_code.display = function(value)
  return "Reject Reason Code: "..value
end

-- Dissect: Reject Reason Code
jpx_osederivatives_geniuminet_ouch_v5_0.reject_reason_code.dissect = function(buffer, offset, packet, parent)
  local length = jpx_osederivatives_geniuminet_ouch_v5_0.reject_reason_code.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = jpx_osederivatives_geniuminet_ouch_v5_0.reject_reason_code.display(value, buffer, offset, packet, parent)

  parent:add(omi_jpx_osederivatives_geniuminet_ouch_v5_0.fields.reject_reason_code, range, value, display)

  return offset + length, value
end

-- Login Rejected Packet
jpx_osederivatives_geniuminet_ouch_v5_0.login_rejected_packet = {}

-- Size: Login Rejected Packet
jpx_osederivatives_geniuminet_ouch_v5_0.login_rejected_packet.size =
  jpx_osederivatives_geniuminet_ouch_v5_0.reject_reason_code.size

-- Display: Login Rejected Packet
jpx_osederivatives_geniuminet_ouch_v5_0.login_rejected_packet.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Login Rejected Packet
jpx_osederivatives_geniuminet_ouch_v5_0.login_rejected_packet.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Reject Reason Code: 1 Byte Ascii String
  index, reject_reason_code = jpx_osederivatives_geniuminet_ouch_v5_0.reject_reason_code.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Login Rejected Packet
jpx_osederivatives_geniuminet_ouch_v5_0.login_rejected_packet.dissect = function(buffer, offset, packet, parent)
  if show.login_rejected_packet then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_jpx_osederivatives_geniuminet_ouch_v5_0.fields.login_rejected_packet, buffer(offset, 0))
    local index = jpx_osederivatives_geniuminet_ouch_v5_0.login_rejected_packet.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = jpx_osederivatives_geniuminet_ouch_v5_0.login_rejected_packet.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return jpx_osederivatives_geniuminet_ouch_v5_0.login_rejected_packet.fields(buffer, offset, packet, parent)
  end
end

-- Sequence Number
jpx_osederivatives_geniuminet_ouch_v5_0.sequence_number = {}

-- Size: Sequence Number
jpx_osederivatives_geniuminet_ouch_v5_0.sequence_number.size = 20

-- Display: Sequence Number
jpx_osederivatives_geniuminet_ouch_v5_0.sequence_number.display = function(value)
  return "Sequence Number: "..value
end

-- Dissect: Sequence Number
jpx_osederivatives_geniuminet_ouch_v5_0.sequence_number.dissect = function(buffer, offset, packet, parent)
  local length = jpx_osederivatives_geniuminet_ouch_v5_0.sequence_number.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = jpx_osederivatives_geniuminet_ouch_v5_0.sequence_number.display(value, buffer, offset, packet, parent)

  parent:add(omi_jpx_osederivatives_geniuminet_ouch_v5_0.fields.sequence_number, range, value, display)

  return offset + length, value
end

-- Session
jpx_osederivatives_geniuminet_ouch_v5_0.session = {}

-- Size: Session
jpx_osederivatives_geniuminet_ouch_v5_0.session.size = 10

-- Display: Session
jpx_osederivatives_geniuminet_ouch_v5_0.session.display = function(value)
  return "Session: "..value
end

-- Dissect: Session
jpx_osederivatives_geniuminet_ouch_v5_0.session.dissect = function(buffer, offset, packet, parent)
  local length = jpx_osederivatives_geniuminet_ouch_v5_0.session.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = jpx_osederivatives_geniuminet_ouch_v5_0.session.display(value, buffer, offset, packet, parent)

  parent:add(omi_jpx_osederivatives_geniuminet_ouch_v5_0.fields.session, range, value, display)

  return offset + length, value
end

-- Login Accepted Packet
jpx_osederivatives_geniuminet_ouch_v5_0.login_accepted_packet = {}

-- Size: Login Accepted Packet
jpx_osederivatives_geniuminet_ouch_v5_0.login_accepted_packet.size =
  jpx_osederivatives_geniuminet_ouch_v5_0.session.size + 
  jpx_osederivatives_geniuminet_ouch_v5_0.sequence_number.size

-- Display: Login Accepted Packet
jpx_osederivatives_geniuminet_ouch_v5_0.login_accepted_packet.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Login Accepted Packet
jpx_osederivatives_geniuminet_ouch_v5_0.login_accepted_packet.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Session: 10 Byte Ascii String
  index, session = jpx_osederivatives_geniuminet_ouch_v5_0.session.dissect(buffer, index, packet, parent)

  -- Sequence Number: 20 Byte Ascii String
  index, sequence_number = jpx_osederivatives_geniuminet_ouch_v5_0.sequence_number.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Login Accepted Packet
jpx_osederivatives_geniuminet_ouch_v5_0.login_accepted_packet.dissect = function(buffer, offset, packet, parent)
  if show.login_accepted_packet then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_jpx_osederivatives_geniuminet_ouch_v5_0.fields.login_accepted_packet, buffer(offset, 0))
    local index = jpx_osederivatives_geniuminet_ouch_v5_0.login_accepted_packet.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = jpx_osederivatives_geniuminet_ouch_v5_0.login_accepted_packet.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return jpx_osederivatives_geniuminet_ouch_v5_0.login_accepted_packet.fields(buffer, offset, packet, parent)
  end
end

-- Text
jpx_osederivatives_geniuminet_ouch_v5_0.text = {}

-- Size: Text
jpx_osederivatives_geniuminet_ouch_v5_0.text.size = 1

-- Display: Text
jpx_osederivatives_geniuminet_ouch_v5_0.text.display = function(value)
  return "Text: "..value
end

-- Dissect: Text
jpx_osederivatives_geniuminet_ouch_v5_0.text.dissect = function(buffer, offset, packet, parent)
  local length = jpx_osederivatives_geniuminet_ouch_v5_0.text.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = jpx_osederivatives_geniuminet_ouch_v5_0.text.display(value, buffer, offset, packet, parent)

  parent:add(omi_jpx_osederivatives_geniuminet_ouch_v5_0.fields.text, range, value, display)

  return offset + length, value
end

-- Debug Packet
jpx_osederivatives_geniuminet_ouch_v5_0.debug_packet = {}

-- Size: Debug Packet
jpx_osederivatives_geniuminet_ouch_v5_0.debug_packet.size =
  jpx_osederivatives_geniuminet_ouch_v5_0.text.size

-- Display: Debug Packet
jpx_osederivatives_geniuminet_ouch_v5_0.debug_packet.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Debug Packet
jpx_osederivatives_geniuminet_ouch_v5_0.debug_packet.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Text: 1 Byte Ascii String
  index, text = jpx_osederivatives_geniuminet_ouch_v5_0.text.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Debug Packet
jpx_osederivatives_geniuminet_ouch_v5_0.debug_packet.dissect = function(buffer, offset, packet, parent)
  if show.debug_packet then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_jpx_osederivatives_geniuminet_ouch_v5_0.fields.debug_packet, buffer(offset, 0))
    local index = jpx_osederivatives_geniuminet_ouch_v5_0.debug_packet.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = jpx_osederivatives_geniuminet_ouch_v5_0.debug_packet.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return jpx_osederivatives_geniuminet_ouch_v5_0.debug_packet.fields(buffer, offset, packet, parent)
  end
end

-- Payload
jpx_osederivatives_geniuminet_ouch_v5_0.payload = {}

-- Size: Payload
jpx_osederivatives_geniuminet_ouch_v5_0.payload.size = function(buffer, offset, packet_type)
  -- Size of Debug Packet
  if packet_type == "+" then
    return jpx_osederivatives_geniuminet_ouch_v5_0.debug_packet.size
  end
  -- Size of Login Accepted Packet
  if packet_type == "A" then
    return jpx_osederivatives_geniuminet_ouch_v5_0.login_accepted_packet.size
  end
  -- Size of Login Rejected Packet
  if packet_type == "J" then
    return jpx_osederivatives_geniuminet_ouch_v5_0.login_rejected_packet.size
  end
  -- Size of Sequenced Data Packet
  if packet_type == "S" then
    return jpx_osederivatives_geniuminet_ouch_v5_0.sequenced_data_packet.size(buffer, offset)
  end
  -- Size of Login Request Packet
  if packet_type == "L" then
    return jpx_osederivatives_geniuminet_ouch_v5_0.login_request_packet.size
  end
  -- Size of Unsequenced Data Packet
  if packet_type == "U" then
    return jpx_osederivatives_geniuminet_ouch_v5_0.unsequenced_data_packet.size(buffer, offset)
  end

  return 0
end

-- Display: Payload
jpx_osederivatives_geniuminet_ouch_v5_0.payload.display = function(buffer, offset, packet, parent)
  return ""
end

-- Dissect Branches: Payload
jpx_osederivatives_geniuminet_ouch_v5_0.payload.branches = function(buffer, offset, packet, parent, packet_type)
  -- Dissect Debug Packet
  if packet_type == "+" then
    return jpx_osederivatives_geniuminet_ouch_v5_0.debug_packet.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Login Accepted Packet
  if packet_type == "A" then
    return jpx_osederivatives_geniuminet_ouch_v5_0.login_accepted_packet.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Login Rejected Packet
  if packet_type == "J" then
    return jpx_osederivatives_geniuminet_ouch_v5_0.login_rejected_packet.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Sequenced Data Packet
  if packet_type == "S" then
    return jpx_osederivatives_geniuminet_ouch_v5_0.sequenced_data_packet.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Login Request Packet
  if packet_type == "L" then
    return jpx_osederivatives_geniuminet_ouch_v5_0.login_request_packet.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Unsequenced Data Packet
  if packet_type == "U" then
    return jpx_osederivatives_geniuminet_ouch_v5_0.unsequenced_data_packet.dissect(buffer, offset, packet, parent)
  end

  return offset
end

-- Dissect: Payload
jpx_osederivatives_geniuminet_ouch_v5_0.payload.dissect = function(buffer, offset, packet, parent, packet_type)
  if not show.payload then
    return jpx_osederivatives_geniuminet_ouch_v5_0.payload.branches(buffer, offset, packet, parent, packet_type)
  end

  -- Calculate size and check that branch is not empty
  local size = jpx_osederivatives_geniuminet_ouch_v5_0.payload.size(buffer, offset, packet_type)
  if size == 0 then
    return offset
  end

  -- Dissect Element
  local range = buffer(offset, size)
  local display = jpx_osederivatives_geniuminet_ouch_v5_0.payload.display(buffer, packet, parent)
  local element = parent:add(omi_jpx_osederivatives_geniuminet_ouch_v5_0.fields.payload, range, display)

  return jpx_osederivatives_geniuminet_ouch_v5_0.payload.branches(buffer, offset, packet, parent, packet_type)
end

-- Packet Type
jpx_osederivatives_geniuminet_ouch_v5_0.packet_type = {}

-- Size: Packet Type
jpx_osederivatives_geniuminet_ouch_v5_0.packet_type.size = 1

-- Display: Packet Type
jpx_osederivatives_geniuminet_ouch_v5_0.packet_type.display = function(value)
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
jpx_osederivatives_geniuminet_ouch_v5_0.packet_type.dissect = function(buffer, offset, packet, parent)
  local length = jpx_osederivatives_geniuminet_ouch_v5_0.packet_type.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = jpx_osederivatives_geniuminet_ouch_v5_0.packet_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_jpx_osederivatives_geniuminet_ouch_v5_0.fields.packet_type, range, value, display)

  return offset + length, value
end

-- Packet Length
jpx_osederivatives_geniuminet_ouch_v5_0.packet_length = {}

-- Size: Packet Length
jpx_osederivatives_geniuminet_ouch_v5_0.packet_length.size = 2

-- Display: Packet Length
jpx_osederivatives_geniuminet_ouch_v5_0.packet_length.display = function(value)
  return "Packet Length: "..value
end

-- Dissect: Packet Length
jpx_osederivatives_geniuminet_ouch_v5_0.packet_length.dissect = function(buffer, offset, packet, parent)
  local length = jpx_osederivatives_geniuminet_ouch_v5_0.packet_length.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = jpx_osederivatives_geniuminet_ouch_v5_0.packet_length.display(value, buffer, offset, packet, parent)

  parent:add(omi_jpx_osederivatives_geniuminet_ouch_v5_0.fields.packet_length, range, value, display)

  return offset + length, value
end

-- Packet Header
jpx_osederivatives_geniuminet_ouch_v5_0.packet_header = {}

-- Size: Packet Header
jpx_osederivatives_geniuminet_ouch_v5_0.packet_header.size =
  jpx_osederivatives_geniuminet_ouch_v5_0.packet_length.size + 
  jpx_osederivatives_geniuminet_ouch_v5_0.packet_type.size

-- Display: Packet Header
jpx_osederivatives_geniuminet_ouch_v5_0.packet_header.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Packet Header
jpx_osederivatives_geniuminet_ouch_v5_0.packet_header.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Packet Length: 2 Byte Unsigned Fixed Width Integer
  index, packet_length = jpx_osederivatives_geniuminet_ouch_v5_0.packet_length.dissect(buffer, index, packet, parent)

  -- Packet Type: 1 Byte Ascii String Enum with 10 values
  index, packet_type = jpx_osederivatives_geniuminet_ouch_v5_0.packet_type.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Packet Header
jpx_osederivatives_geniuminet_ouch_v5_0.packet_header.dissect = function(buffer, offset, packet, parent)
  if show.packet_header then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_jpx_osederivatives_geniuminet_ouch_v5_0.fields.packet_header, buffer(offset, 0))
    local index = jpx_osederivatives_geniuminet_ouch_v5_0.packet_header.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = jpx_osederivatives_geniuminet_ouch_v5_0.packet_header.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return jpx_osederivatives_geniuminet_ouch_v5_0.packet_header.fields(buffer, offset, packet, parent)
  end
end

-- Soup Bin Tcp Packet
jpx_osederivatives_geniuminet_ouch_v5_0.soup_bin_tcp_packet = {}

-- Display: Soup Bin Tcp Packet
jpx_osederivatives_geniuminet_ouch_v5_0.soup_bin_tcp_packet.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Soup Bin Tcp Packet
jpx_osederivatives_geniuminet_ouch_v5_0.soup_bin_tcp_packet.fields = function(buffer, offset, packet, parent, size_of_soup_bin_tcp_packet)
  local index = offset

  -- Packet Header: Struct of 2 fields
  index, packet_header = jpx_osederivatives_geniuminet_ouch_v5_0.packet_header.dissect(buffer, index, packet, parent)

  -- Dependency element: Packet Type
  local packet_type = buffer(index - 1, 1):string()

  -- Payload: Runtime Type with 6 branches
  index = jpx_osederivatives_geniuminet_ouch_v5_0.payload.dissect(buffer, index, packet, parent, packet_type)

  return index
end

-- Dissect: Soup Bin Tcp Packet
jpx_osederivatives_geniuminet_ouch_v5_0.soup_bin_tcp_packet.dissect = function(buffer, offset, packet, parent, size_of_soup_bin_tcp_packet)
  local index = offset + size_of_soup_bin_tcp_packet

  -- Optionally add group/struct element to protocol tree
  if show.soup_bin_tcp_packet then
    parent = parent:add(omi_jpx_osederivatives_geniuminet_ouch_v5_0.fields.soup_bin_tcp_packet, buffer(offset, 0))
    local current = jpx_osederivatives_geniuminet_ouch_v5_0.soup_bin_tcp_packet.fields(buffer, offset, packet, parent, size_of_soup_bin_tcp_packet)
    parent:set_len(size_of_soup_bin_tcp_packet)
    local display = jpx_osederivatives_geniuminet_ouch_v5_0.soup_bin_tcp_packet.display(buffer, packet, parent)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    jpx_osederivatives_geniuminet_ouch_v5_0.soup_bin_tcp_packet.fields(buffer, offset, packet, parent, size_of_soup_bin_tcp_packet)

    return index
  end
end

-- Remaining Bytes For: Soup Bin Tcp Packet
local soup_bin_tcp_packet_bytes_remaining = function(buffer, index, available)
  -- Calculate the number of bytes remaining
  local remaining = available - index

  -- Check if packet size can be read
  if remaining < jpx_osederivatives_geniuminet_ouch_v5_0.packet_header.size then
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
jpx_osederivatives_geniuminet_ouch_v5_0.packet = {}

-- Dissect Packet
jpx_osederivatives_geniuminet_ouch_v5_0.packet.dissect = function(buffer, packet, parent)
  local index = 0

  -- Dependency for Soup Bin Tcp Packet
  local end_of_payload = buffer:len()

  -- Soup Bin Tcp Packet: Struct of 2 fields
  while index < end_of_payload do

    -- Are minimum number of bytes are available?
    local available, size_of_soup_bin_tcp_packet = soup_bin_tcp_packet_bytes_remaining(buffer, index, end_of_payload)

    if available > 0 then
      index = jpx_osederivatives_geniuminet_ouch_v5_0.soup_bin_tcp_packet.dissect(buffer, index, packet, parent, size_of_soup_bin_tcp_packet)
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
function omi_jpx_osederivatives_geniuminet_ouch_v5_0.init()
end

-- Dissector for Jpx OseDerivatives GeniumInet Ouch 5.0
function omi_jpx_osederivatives_geniuminet_ouch_v5_0.dissector(buffer, packet, parent)

  -- Set protocol name
  packet.cols.protocol = omi_jpx_osederivatives_geniuminet_ouch_v5_0.name

  -- Dissect protocol
  local protocol = parent:add(omi_jpx_osederivatives_geniuminet_ouch_v5_0, buffer(), omi_jpx_osederivatives_geniuminet_ouch_v5_0.description, "("..buffer:len().." Bytes)")
  return jpx_osederivatives_geniuminet_ouch_v5_0.packet.dissect(buffer, packet, protocol)
end

-- Register With Tcp Table
local tcp_table = DissectorTable.get("tcp.port")
tcp_table:add(65333, omi_jpx_osederivatives_geniuminet_ouch_v5_0)


-----------------------------------------------------------------------
-- Protocol Heuristics
-----------------------------------------------------------------------

-- Verify size of packet
jpx_osederivatives_geniuminet_ouch_v5_0.packet.requiredsize = function(buffer)

  return true
end

-- Dissector Heuristic for Jpx OseDerivatives GeniumInet Ouch 5.0
local function omi_jpx_osederivatives_geniuminet_ouch_v5_0_heuristic(buffer, packet, parent)
  -- Verify packet length
  if not jpx_osederivatives_geniuminet_ouch_v5_0.packet.requiredsize(buffer) then return false end

  -- Protocol is valid, set conversation and dissect this packet
  packet.conversation = omi_jpx_osederivatives_geniuminet_ouch_v5_0
  omi_jpx_osederivatives_geniuminet_ouch_v5_0.dissector(buffer, packet, parent)

  return true
end

-- Register Heuristic for Jpx OseDerivatives GeniumInet Ouch 5.0
omi_jpx_osederivatives_geniuminet_ouch_v5_0:register_heuristic("tcp", omi_jpx_osederivatives_geniuminet_ouch_v5_0_heuristic)

-----------------------------------------------------------------------
-- Lua dissectors are an easily edited and modified cross-platform dissection solution.
-- Feel free to modify. Enjoy.
-----------------------------------------------------------------------
-- 
-- Protocol:
--   Organization: Japan Exchange Group
--   Version: 5.0
--   Date: Wednesday, September 16, 2020
--   Specification: OUCH_ProtSpec_OSE_va2656.pdf
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
