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
omi_jpx_osederivatives_geniuminet_ouch_v5_0.fields.customer_info_alpha_50 = ProtoField.new("Customer Info Alpha 50", "jpx.osederivatives.geniuminet.ouch.v5.0.customerinfoalpha50", ftypes.STRING)
omi_jpx_osederivatives_geniuminet_ouch_v5_0.fields.customer_info_alpha_55 = ProtoField.new("Customer Info Alpha 55", "jpx.osederivatives.geniuminet.ouch.v5.0.customerinfoalpha55", ftypes.STRING)
omi_jpx_osederivatives_geniuminet_ouch_v5_0.fields.customer_info_alpha_56 = ProtoField.new("Customer Info Alpha 56", "jpx.osederivatives.geniuminet.ouch.v5.0.customerinfoalpha56", ftypes.STRING)
omi_jpx_osederivatives_geniuminet_ouch_v5_0.fields.customer_info_alpha_58 = ProtoField.new("Customer Info Alpha 58", "jpx.osederivatives.geniuminet.ouch.v5.0.customerinfoalpha58", ftypes.STRING)
omi_jpx_osederivatives_geniuminet_ouch_v5_0.fields.deal_source = ProtoField.new("Deal Source", "jpx.osederivatives.geniuminet.ouch.v5.0.dealsource", ftypes.UINT8)
omi_jpx_osederivatives_geniuminet_ouch_v5_0.fields.debug_packet = ProtoField.new("Debug Packet", "jpx.osederivatives.geniuminet.ouch.v5.0.debugpacket", ftypes.STRING)
omi_jpx_osederivatives_geniuminet_ouch_v5_0.fields.exchange_info_alpha_32 = ProtoField.new("Exchange Info Alpha 32", "jpx.osederivatives.geniuminet.ouch.v5.0.exchangeinfoalpha32", ftypes.STRING)
omi_jpx_osederivatives_geniuminet_ouch_v5_0.fields.exchange_info_alpha_50 = ProtoField.new("Exchange Info Alpha 50", "jpx.osederivatives.geniuminet.ouch.v5.0.exchangeinfoalpha50", ftypes.STRING)
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
omi_jpx_osederivatives_geniuminet_ouch_v5_0.fields.price = ProtoField.new("Price", "jpx.osederivatives.geniuminet.ouch.v5.0.price", ftypes.INT32)
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
omi_jpx_osederivatives_geniuminet_ouch_v5_0.fields.timestamp = ProtoField.new("Timestamp", "jpx.osederivatives.geniuminet.ouch.v5.0.timestamp", ftypes.UINT64)
omi_jpx_osederivatives_geniuminet_ouch_v5_0.fields.trade_price = ProtoField.new("Trade Price", "jpx.osederivatives.geniuminet.ouch.v5.0.tradeprice", ftypes.INT32)
omi_jpx_osederivatives_geniuminet_ouch_v5_0.fields.traded_quantity = ProtoField.new("Traded Quantity", "jpx.osederivatives.geniuminet.ouch.v5.0.tradedquantity", ftypes.UINT64)
omi_jpx_osederivatives_geniuminet_ouch_v5_0.fields.underlying_id = ProtoField.new("Underlying Id", "jpx.osederivatives.geniuminet.ouch.v5.0.underlyingid", ftypes.UINT32)
omi_jpx_osederivatives_geniuminet_ouch_v5_0.fields.unsequenced_data_packet = ProtoField.new("Unsequenced Data Packet", "jpx.osederivatives.geniuminet.ouch.v5.0.unsequenceddatapacket", ftypes.STRING)
omi_jpx_osederivatives_geniuminet_ouch_v5_0.fields.unsequenced_message = ProtoField.new("Unsequenced Message", "jpx.osederivatives.geniuminet.ouch.v5.0.unsequencedmessage", ftypes.STRING)
omi_jpx_osederivatives_geniuminet_ouch_v5_0.fields.unsequenced_message_type = ProtoField.new("Unsequenced Message Type", "jpx.osederivatives.geniuminet.ouch.v5.0.unsequencedmessagetype", ftypes.STRING)
omi_jpx_osederivatives_geniuminet_ouch_v5_0.fields.username = ProtoField.new("Username", "jpx.osederivatives.geniuminet.ouch.v5.0.username", ftypes.STRING)

-- Jpx OseDerivatives GeniumInet Ouch 5.0 messages
omi_jpx_osederivatives_geniuminet_ouch_v5_0.fields.cancel_by_order_id_message = ProtoField.new("Cancel By Order Id Message", "jpx.osederivatives.geniuminet.ouch.v5.0.cancelbyorderidmessage", ftypes.STRING)
omi_jpx_osederivatives_geniuminet_ouch_v5_0.fields.cancel_order_message = ProtoField.new("Cancel Order Message", "jpx.osederivatives.geniuminet.ouch.v5.0.cancelordermessage", ftypes.STRING)
omi_jpx_osederivatives_geniuminet_ouch_v5_0.fields.enter_market_maker_order_message = ProtoField.new("Enter Market Maker Order Message", "jpx.osederivatives.geniuminet.ouch.v5.0.entermarketmakerordermessage", ftypes.STRING)
omi_jpx_osederivatives_geniuminet_ouch_v5_0.fields.enter_order_message = ProtoField.new("Enter Order Message", "jpx.osederivatives.geniuminet.ouch.v5.0.enterordermessage", ftypes.STRING)
omi_jpx_osederivatives_geniuminet_ouch_v5_0.fields.mass_cancel_accepted_message = ProtoField.new("Mass Cancel Accepted Message", "jpx.osederivatives.geniuminet.ouch.v5.0.masscancelacceptedmessage", ftypes.STRING)
omi_jpx_osederivatives_geniuminet_ouch_v5_0.fields.mass_cancel_message = ProtoField.new("Mass Cancel Message", "jpx.osederivatives.geniuminet.ouch.v5.0.masscancelmessage", ftypes.STRING)
omi_jpx_osederivatives_geniuminet_ouch_v5_0.fields.order_accepted_message = ProtoField.new("Order Accepted Message", "jpx.osederivatives.geniuminet.ouch.v5.0.orderacceptedmessage", ftypes.STRING)
omi_jpx_osederivatives_geniuminet_ouch_v5_0.fields.order_canceled_message = ProtoField.new("Order Canceled Message", "jpx.osederivatives.geniuminet.ouch.v5.0.ordercanceledmessage", ftypes.STRING)
omi_jpx_osederivatives_geniuminet_ouch_v5_0.fields.order_executed_message = ProtoField.new("Order Executed Message", "jpx.osederivatives.geniuminet.ouch.v5.0.orderexecutedmessage", ftypes.STRING)
omi_jpx_osederivatives_geniuminet_ouch_v5_0.fields.order_rejected_message = ProtoField.new("Order Rejected Message", "jpx.osederivatives.geniuminet.ouch.v5.0.orderrejectedmessage", ftypes.STRING)
omi_jpx_osederivatives_geniuminet_ouch_v5_0.fields.order_replaced_message = ProtoField.new("Order Replaced Message", "jpx.osederivatives.geniuminet.ouch.v5.0.orderreplacedmessage", ftypes.STRING)
omi_jpx_osederivatives_geniuminet_ouch_v5_0.fields.replace_order_message = ProtoField.new("Replace Order Message", "jpx.osederivatives.geniuminet.ouch.v5.0.replaceordermessage", ftypes.STRING)

-----------------------------------------------------------------------
-- Declare Dissection Options
-----------------------------------------------------------------------

local show = {}

-- Jpx OseDerivatives GeniumInet Ouch 5.0 Element Dissection Options
show.cancel_by_order_id_message = true
show.cancel_order_message = true
show.debug_packet = true
show.enter_market_maker_order_message = true
show.enter_order_message = true
show.login_accepted_packet = true
show.login_rejected_packet = true
show.login_request_packet = true
show.mass_cancel_accepted_message = true
show.mass_cancel_message = true
show.order_accepted_message = true
show.order_canceled_message = true
show.order_executed_message = true
show.order_rejected_message = true
show.order_replaced_message = true
show.packet = true
show.packet_header = true
show.replace_order_message = true
show.sequenced_data_packet = true
show.soup_bin_tcp_packet = true
show.unsequenced_data_packet = true
show.payload = false
show.sequenced_message = false
show.unsequenced_message = false

-- Register Jpx OseDerivatives GeniumInet Ouch 5.0 Show Options
omi_jpx_osederivatives_geniuminet_ouch_v5_0.prefs.show_cancel_by_order_id_message = Pref.bool("Show Cancel By Order Id Message", show.cancel_by_order_id_message, "Parse and add Cancel By Order Id Message to protocol tree")
omi_jpx_osederivatives_geniuminet_ouch_v5_0.prefs.show_cancel_order_message = Pref.bool("Show Cancel Order Message", show.cancel_order_message, "Parse and add Cancel Order Message to protocol tree")
omi_jpx_osederivatives_geniuminet_ouch_v5_0.prefs.show_debug_packet = Pref.bool("Show Debug Packet", show.debug_packet, "Parse and add Debug Packet to protocol tree")
omi_jpx_osederivatives_geniuminet_ouch_v5_0.prefs.show_enter_market_maker_order_message = Pref.bool("Show Enter Market Maker Order Message", show.enter_market_maker_order_message, "Parse and add Enter Market Maker Order Message to protocol tree")
omi_jpx_osederivatives_geniuminet_ouch_v5_0.prefs.show_enter_order_message = Pref.bool("Show Enter Order Message", show.enter_order_message, "Parse and add Enter Order Message to protocol tree")
omi_jpx_osederivatives_geniuminet_ouch_v5_0.prefs.show_login_accepted_packet = Pref.bool("Show Login Accepted Packet", show.login_accepted_packet, "Parse and add Login Accepted Packet to protocol tree")
omi_jpx_osederivatives_geniuminet_ouch_v5_0.prefs.show_login_rejected_packet = Pref.bool("Show Login Rejected Packet", show.login_rejected_packet, "Parse and add Login Rejected Packet to protocol tree")
omi_jpx_osederivatives_geniuminet_ouch_v5_0.prefs.show_login_request_packet = Pref.bool("Show Login Request Packet", show.login_request_packet, "Parse and add Login Request Packet to protocol tree")
omi_jpx_osederivatives_geniuminet_ouch_v5_0.prefs.show_mass_cancel_accepted_message = Pref.bool("Show Mass Cancel Accepted Message", show.mass_cancel_accepted_message, "Parse and add Mass Cancel Accepted Message to protocol tree")
omi_jpx_osederivatives_geniuminet_ouch_v5_0.prefs.show_mass_cancel_message = Pref.bool("Show Mass Cancel Message", show.mass_cancel_message, "Parse and add Mass Cancel Message to protocol tree")
omi_jpx_osederivatives_geniuminet_ouch_v5_0.prefs.show_order_accepted_message = Pref.bool("Show Order Accepted Message", show.order_accepted_message, "Parse and add Order Accepted Message to protocol tree")
omi_jpx_osederivatives_geniuminet_ouch_v5_0.prefs.show_order_canceled_message = Pref.bool("Show Order Canceled Message", show.order_canceled_message, "Parse and add Order Canceled Message to protocol tree")
omi_jpx_osederivatives_geniuminet_ouch_v5_0.prefs.show_order_executed_message = Pref.bool("Show Order Executed Message", show.order_executed_message, "Parse and add Order Executed Message to protocol tree")
omi_jpx_osederivatives_geniuminet_ouch_v5_0.prefs.show_order_rejected_message = Pref.bool("Show Order Rejected Message", show.order_rejected_message, "Parse and add Order Rejected Message to protocol tree")
omi_jpx_osederivatives_geniuminet_ouch_v5_0.prefs.show_order_replaced_message = Pref.bool("Show Order Replaced Message", show.order_replaced_message, "Parse and add Order Replaced Message to protocol tree")
omi_jpx_osederivatives_geniuminet_ouch_v5_0.prefs.show_packet = Pref.bool("Show Packet", show.packet, "Parse and add Packet to protocol tree")
omi_jpx_osederivatives_geniuminet_ouch_v5_0.prefs.show_packet_header = Pref.bool("Show Packet Header", show.packet_header, "Parse and add Packet Header to protocol tree")
omi_jpx_osederivatives_geniuminet_ouch_v5_0.prefs.show_replace_order_message = Pref.bool("Show Replace Order Message", show.replace_order_message, "Parse and add Replace Order Message to protocol tree")
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
  if show.cancel_by_order_id_message ~= omi_jpx_osederivatives_geniuminet_ouch_v5_0.prefs.show_cancel_by_order_id_message then
    show.cancel_by_order_id_message = omi_jpx_osederivatives_geniuminet_ouch_v5_0.prefs.show_cancel_by_order_id_message
    changed = true
  end
  if show.cancel_order_message ~= omi_jpx_osederivatives_geniuminet_ouch_v5_0.prefs.show_cancel_order_message then
    show.cancel_order_message = omi_jpx_osederivatives_geniuminet_ouch_v5_0.prefs.show_cancel_order_message
    changed = true
  end
  if show.debug_packet ~= omi_jpx_osederivatives_geniuminet_ouch_v5_0.prefs.show_debug_packet then
    show.debug_packet = omi_jpx_osederivatives_geniuminet_ouch_v5_0.prefs.show_debug_packet
    changed = true
  end
  if show.enter_market_maker_order_message ~= omi_jpx_osederivatives_geniuminet_ouch_v5_0.prefs.show_enter_market_maker_order_message then
    show.enter_market_maker_order_message = omi_jpx_osederivatives_geniuminet_ouch_v5_0.prefs.show_enter_market_maker_order_message
    changed = true
  end
  if show.enter_order_message ~= omi_jpx_osederivatives_geniuminet_ouch_v5_0.prefs.show_enter_order_message then
    show.enter_order_message = omi_jpx_osederivatives_geniuminet_ouch_v5_0.prefs.show_enter_order_message
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
  if show.mass_cancel_accepted_message ~= omi_jpx_osederivatives_geniuminet_ouch_v5_0.prefs.show_mass_cancel_accepted_message then
    show.mass_cancel_accepted_message = omi_jpx_osederivatives_geniuminet_ouch_v5_0.prefs.show_mass_cancel_accepted_message
    changed = true
  end
  if show.mass_cancel_message ~= omi_jpx_osederivatives_geniuminet_ouch_v5_0.prefs.show_mass_cancel_message then
    show.mass_cancel_message = omi_jpx_osederivatives_geniuminet_ouch_v5_0.prefs.show_mass_cancel_message
    changed = true
  end
  if show.order_accepted_message ~= omi_jpx_osederivatives_geniuminet_ouch_v5_0.prefs.show_order_accepted_message then
    show.order_accepted_message = omi_jpx_osederivatives_geniuminet_ouch_v5_0.prefs.show_order_accepted_message
    changed = true
  end
  if show.order_canceled_message ~= omi_jpx_osederivatives_geniuminet_ouch_v5_0.prefs.show_order_canceled_message then
    show.order_canceled_message = omi_jpx_osederivatives_geniuminet_ouch_v5_0.prefs.show_order_canceled_message
    changed = true
  end
  if show.order_executed_message ~= omi_jpx_osederivatives_geniuminet_ouch_v5_0.prefs.show_order_executed_message then
    show.order_executed_message = omi_jpx_osederivatives_geniuminet_ouch_v5_0.prefs.show_order_executed_message
    changed = true
  end
  if show.order_rejected_message ~= omi_jpx_osederivatives_geniuminet_ouch_v5_0.prefs.show_order_rejected_message then
    show.order_rejected_message = omi_jpx_osederivatives_geniuminet_ouch_v5_0.prefs.show_order_rejected_message
    changed = true
  end
  if show.order_replaced_message ~= omi_jpx_osederivatives_geniuminet_ouch_v5_0.prefs.show_order_replaced_message then
    show.order_replaced_message = omi_jpx_osederivatives_geniuminet_ouch_v5_0.prefs.show_order_replaced_message
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
  if show.replace_order_message ~= omi_jpx_osederivatives_geniuminet_ouch_v5_0.prefs.show_replace_order_message then
    show.replace_order_message = omi_jpx_osederivatives_geniuminet_ouch_v5_0.prefs.show_replace_order_message
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

-- Mass Cancel Message
jpx_osederivatives_geniuminet_ouch_v5_0.mass_cancel_message = {}

-- Size: Mass Cancel Message
jpx_osederivatives_geniuminet_ouch_v5_0.mass_cancel_message.size =
  jpx_osederivatives_geniuminet_ouch_v5_0.order_token.size + 
  jpx_osederivatives_geniuminet_ouch_v5_0.underlying_id.size + 
  jpx_osederivatives_geniuminet_ouch_v5_0.scope.size + 
  jpx_osederivatives_geniuminet_ouch_v5_0.client_account.size

-- Display: Mass Cancel Message
jpx_osederivatives_geniuminet_ouch_v5_0.mass_cancel_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Mass Cancel Message
jpx_osederivatives_geniuminet_ouch_v5_0.mass_cancel_message.fields = function(buffer, offset, packet, parent)
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

-- Dissect: Mass Cancel Message
jpx_osederivatives_geniuminet_ouch_v5_0.mass_cancel_message.dissect = function(buffer, offset, packet, parent)
  if show.mass_cancel_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_jpx_osederivatives_geniuminet_ouch_v5_0.fields.mass_cancel_message, buffer(offset, 0))
    local index = jpx_osederivatives_geniuminet_ouch_v5_0.mass_cancel_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = jpx_osederivatives_geniuminet_ouch_v5_0.mass_cancel_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return jpx_osederivatives_geniuminet_ouch_v5_0.mass_cancel_message.fields(buffer, offset, packet, parent)
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

-- Cancel By Order Id Message
jpx_osederivatives_geniuminet_ouch_v5_0.cancel_by_order_id_message = {}

-- Size: Cancel By Order Id Message
jpx_osederivatives_geniuminet_ouch_v5_0.cancel_by_order_id_message.size =
  jpx_osederivatives_geniuminet_ouch_v5_0.order_book_id.size + 
  jpx_osederivatives_geniuminet_ouch_v5_0.side.size + 
  jpx_osederivatives_geniuminet_ouch_v5_0.order_id.size

-- Display: Cancel By Order Id Message
jpx_osederivatives_geniuminet_ouch_v5_0.cancel_by_order_id_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Cancel By Order Id Message
jpx_osederivatives_geniuminet_ouch_v5_0.cancel_by_order_id_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Order Book Id: Numeric signed
  index, order_book_id = jpx_osederivatives_geniuminet_ouch_v5_0.order_book_id.dissect(buffer, index, packet, parent)

  -- Side: Alpha
  index, side = jpx_osederivatives_geniuminet_ouch_v5_0.side.dissect(buffer, index, packet, parent)

  -- Order Id: Numeric unsigned
  index, order_id = jpx_osederivatives_geniuminet_ouch_v5_0.order_id.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Cancel By Order Id Message
jpx_osederivatives_geniuminet_ouch_v5_0.cancel_by_order_id_message.dissect = function(buffer, offset, packet, parent)
  if show.cancel_by_order_id_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_jpx_osederivatives_geniuminet_ouch_v5_0.fields.cancel_by_order_id_message, buffer(offset, 0))
    local index = jpx_osederivatives_geniuminet_ouch_v5_0.cancel_by_order_id_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = jpx_osederivatives_geniuminet_ouch_v5_0.cancel_by_order_id_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return jpx_osederivatives_geniuminet_ouch_v5_0.cancel_by_order_id_message.fields(buffer, offset, packet, parent)
  end
end

-- Cancel Order Message
jpx_osederivatives_geniuminet_ouch_v5_0.cancel_order_message = {}

-- Size: Cancel Order Message
jpx_osederivatives_geniuminet_ouch_v5_0.cancel_order_message.size =
  jpx_osederivatives_geniuminet_ouch_v5_0.order_token.size

-- Display: Cancel Order Message
jpx_osederivatives_geniuminet_ouch_v5_0.cancel_order_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Cancel Order Message
jpx_osederivatives_geniuminet_ouch_v5_0.cancel_order_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Order Token: Alpha
  index, order_token = jpx_osederivatives_geniuminet_ouch_v5_0.order_token.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Cancel Order Message
jpx_osederivatives_geniuminet_ouch_v5_0.cancel_order_message.dissect = function(buffer, offset, packet, parent)
  if show.cancel_order_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_jpx_osederivatives_geniuminet_ouch_v5_0.fields.cancel_order_message, buffer(offset, 0))
    local index = jpx_osederivatives_geniuminet_ouch_v5_0.cancel_order_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = jpx_osederivatives_geniuminet_ouch_v5_0.cancel_order_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return jpx_osederivatives_geniuminet_ouch_v5_0.cancel_order_message.fields(buffer, offset, packet, parent)
  end
end

-- Exchange Info Alpha 32
jpx_osederivatives_geniuminet_ouch_v5_0.exchange_info_alpha_32 = {}

-- Size: Exchange Info Alpha 32
jpx_osederivatives_geniuminet_ouch_v5_0.exchange_info_alpha_32.size = 32

-- Display: Exchange Info Alpha 32
jpx_osederivatives_geniuminet_ouch_v5_0.exchange_info_alpha_32.display = function(value)
  return "Exchange Info Alpha 32: "..value
end

-- Dissect: Exchange Info Alpha 32
jpx_osederivatives_geniuminet_ouch_v5_0.exchange_info_alpha_32.dissect = function(buffer, offset, packet, parent)
  local length = jpx_osederivatives_geniuminet_ouch_v5_0.exchange_info_alpha_32.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = jpx_osederivatives_geniuminet_ouch_v5_0.exchange_info_alpha_32.display(value, buffer, offset, packet, parent)

  parent:add(omi_jpx_osederivatives_geniuminet_ouch_v5_0.fields.exchange_info_alpha_32, range, value, display)

  return offset + length, value
end

-- Customer Info Alpha 55
jpx_osederivatives_geniuminet_ouch_v5_0.customer_info_alpha_55 = {}

-- Size: Customer Info Alpha 55
jpx_osederivatives_geniuminet_ouch_v5_0.customer_info_alpha_55.size = 55

-- Display: Customer Info Alpha 55
jpx_osederivatives_geniuminet_ouch_v5_0.customer_info_alpha_55.display = function(value)
  return "Customer Info Alpha 55: "..value
end

-- Dissect: Customer Info Alpha 55
jpx_osederivatives_geniuminet_ouch_v5_0.customer_info_alpha_55.dissect = function(buffer, offset, packet, parent)
  local length = jpx_osederivatives_geniuminet_ouch_v5_0.customer_info_alpha_55.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = jpx_osederivatives_geniuminet_ouch_v5_0.customer_info_alpha_55.display(value, buffer, offset, packet, parent)

  parent:add(omi_jpx_osederivatives_geniuminet_ouch_v5_0.fields.customer_info_alpha_55, range, value, display)

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

-- Dissect: Price
jpx_osederivatives_geniuminet_ouch_v5_0.price.dissect = function(buffer, offset, packet, parent)
  local length = jpx_osederivatives_geniuminet_ouch_v5_0.price.size
  local range = buffer(offset, length)
  local value = range:int()
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

-- Replace Order Message
jpx_osederivatives_geniuminet_ouch_v5_0.replace_order_message = {}

-- Size: Replace Order Message
jpx_osederivatives_geniuminet_ouch_v5_0.replace_order_message.size =
  jpx_osederivatives_geniuminet_ouch_v5_0.existing_order_token.size + 
  jpx_osederivatives_geniuminet_ouch_v5_0.replacement_order_token.size + 
  jpx_osederivatives_geniuminet_ouch_v5_0.quantity.size + 
  jpx_osederivatives_geniuminet_ouch_v5_0.price.size + 
  jpx_osederivatives_geniuminet_ouch_v5_0.open_close.size + 
  jpx_osederivatives_geniuminet_ouch_v5_0.client_account.size + 
  jpx_osederivatives_geniuminet_ouch_v5_0.customer_info_alpha_55.size + 
  jpx_osederivatives_geniuminet_ouch_v5_0.exchange_info_alpha_32.size

-- Display: Replace Order Message
jpx_osederivatives_geniuminet_ouch_v5_0.replace_order_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Replace Order Message
jpx_osederivatives_geniuminet_ouch_v5_0.replace_order_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Existing Order Token: Alpha
  index, existing_order_token = jpx_osederivatives_geniuminet_ouch_v5_0.existing_order_token.dissect(buffer, index, packet, parent)

  -- Replacement Order Token: Alpha
  index, replacement_order_token = jpx_osederivatives_geniuminet_ouch_v5_0.replacement_order_token.dissect(buffer, index, packet, parent)

  -- Quantity: Numeric unsigned
  index, quantity = jpx_osederivatives_geniuminet_ouch_v5_0.quantity.dissect(buffer, index, packet, parent)

  -- Price: Numeric signed
  index, price = jpx_osederivatives_geniuminet_ouch_v5_0.price.dissect(buffer, index, packet, parent)

  -- Open Close: Numeric unsigned
  index, open_close = jpx_osederivatives_geniuminet_ouch_v5_0.open_close.dissect(buffer, index, packet, parent)

  -- Client Account: Alpha
  index, client_account = jpx_osederivatives_geniuminet_ouch_v5_0.client_account.dissect(buffer, index, packet, parent)

  -- Customer Info Alpha 55: Alpha
  index, customer_info_alpha_55 = jpx_osederivatives_geniuminet_ouch_v5_0.customer_info_alpha_55.dissect(buffer, index, packet, parent)

  -- Exchange Info Alpha 32: Alpha
  index, exchange_info_alpha_32 = jpx_osederivatives_geniuminet_ouch_v5_0.exchange_info_alpha_32.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Replace Order Message
jpx_osederivatives_geniuminet_ouch_v5_0.replace_order_message.dissect = function(buffer, offset, packet, parent)
  if show.replace_order_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_jpx_osederivatives_geniuminet_ouch_v5_0.fields.replace_order_message, buffer(offset, 0))
    local index = jpx_osederivatives_geniuminet_ouch_v5_0.replace_order_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = jpx_osederivatives_geniuminet_ouch_v5_0.replace_order_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return jpx_osederivatives_geniuminet_ouch_v5_0.replace_order_message.fields(buffer, offset, packet, parent)
  end
end

-- Enter Market Maker Order Message
jpx_osederivatives_geniuminet_ouch_v5_0.enter_market_maker_order_message = {}

-- Size: Enter Market Maker Order Message
jpx_osederivatives_geniuminet_ouch_v5_0.enter_market_maker_order_message.size =
  jpx_osederivatives_geniuminet_ouch_v5_0.order_token.size + 
  jpx_osederivatives_geniuminet_ouch_v5_0.order_book_id.size + 
  jpx_osederivatives_geniuminet_ouch_v5_0.side.size + 
  jpx_osederivatives_geniuminet_ouch_v5_0.quantity.size + 
  jpx_osederivatives_geniuminet_ouch_v5_0.price.size + 
  jpx_osederivatives_geniuminet_ouch_v5_0.client_account.size + 
  jpx_osederivatives_geniuminet_ouch_v5_0.exchange_info_alpha_32.size

-- Display: Enter Market Maker Order Message
jpx_osederivatives_geniuminet_ouch_v5_0.enter_market_maker_order_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Enter Market Maker Order Message
jpx_osederivatives_geniuminet_ouch_v5_0.enter_market_maker_order_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Order Token: Alpha
  index, order_token = jpx_osederivatives_geniuminet_ouch_v5_0.order_token.dissect(buffer, index, packet, parent)

  -- Order Book Id: Numeric signed
  index, order_book_id = jpx_osederivatives_geniuminet_ouch_v5_0.order_book_id.dissect(buffer, index, packet, parent)

  -- Side: Alpha
  index, side = jpx_osederivatives_geniuminet_ouch_v5_0.side.dissect(buffer, index, packet, parent)

  -- Quantity: Numeric unsigned
  index, quantity = jpx_osederivatives_geniuminet_ouch_v5_0.quantity.dissect(buffer, index, packet, parent)

  -- Price: Numeric signed
  index, price = jpx_osederivatives_geniuminet_ouch_v5_0.price.dissect(buffer, index, packet, parent)

  -- Client Account: Alpha
  index, client_account = jpx_osederivatives_geniuminet_ouch_v5_0.client_account.dissect(buffer, index, packet, parent)

  -- Exchange Info Alpha 32: Alpha
  index, exchange_info_alpha_32 = jpx_osederivatives_geniuminet_ouch_v5_0.exchange_info_alpha_32.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Enter Market Maker Order Message
jpx_osederivatives_geniuminet_ouch_v5_0.enter_market_maker_order_message.dissect = function(buffer, offset, packet, parent)
  if show.enter_market_maker_order_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_jpx_osederivatives_geniuminet_ouch_v5_0.fields.enter_market_maker_order_message, buffer(offset, 0))
    local index = jpx_osederivatives_geniuminet_ouch_v5_0.enter_market_maker_order_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = jpx_osederivatives_geniuminet_ouch_v5_0.enter_market_maker_order_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return jpx_osederivatives_geniuminet_ouch_v5_0.enter_market_maker_order_message.fields(buffer, offset, packet, parent)
  end
end

-- Exchange Info Alpha 50
jpx_osederivatives_geniuminet_ouch_v5_0.exchange_info_alpha_50 = {}

-- Size: Exchange Info Alpha 50
jpx_osederivatives_geniuminet_ouch_v5_0.exchange_info_alpha_50.size = 50

-- Display: Exchange Info Alpha 50
jpx_osederivatives_geniuminet_ouch_v5_0.exchange_info_alpha_50.display = function(value)
  return "Exchange Info Alpha 50: "..value
end

-- Dissect: Exchange Info Alpha 50
jpx_osederivatives_geniuminet_ouch_v5_0.exchange_info_alpha_50.dissect = function(buffer, offset, packet, parent)
  local length = jpx_osederivatives_geniuminet_ouch_v5_0.exchange_info_alpha_50.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = jpx_osederivatives_geniuminet_ouch_v5_0.exchange_info_alpha_50.display(value, buffer, offset, packet, parent)

  parent:add(omi_jpx_osederivatives_geniuminet_ouch_v5_0.fields.exchange_info_alpha_50, range, value, display)

  return offset + length, value
end

-- Customer Info Alpha 50
jpx_osederivatives_geniuminet_ouch_v5_0.customer_info_alpha_50 = {}

-- Size: Customer Info Alpha 50
jpx_osederivatives_geniuminet_ouch_v5_0.customer_info_alpha_50.size = 50

-- Display: Customer Info Alpha 50
jpx_osederivatives_geniuminet_ouch_v5_0.customer_info_alpha_50.display = function(value)
  return "Customer Info Alpha 50: "..value
end

-- Dissect: Customer Info Alpha 50
jpx_osederivatives_geniuminet_ouch_v5_0.customer_info_alpha_50.dissect = function(buffer, offset, packet, parent)
  local length = jpx_osederivatives_geniuminet_ouch_v5_0.customer_info_alpha_50.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = jpx_osederivatives_geniuminet_ouch_v5_0.customer_info_alpha_50.display(value, buffer, offset, packet, parent)

  parent:add(omi_jpx_osederivatives_geniuminet_ouch_v5_0.fields.customer_info_alpha_50, range, value, display)

  return offset + length, value
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

-- Enter Order Message
jpx_osederivatives_geniuminet_ouch_v5_0.enter_order_message = {}

-- Size: Enter Order Message
jpx_osederivatives_geniuminet_ouch_v5_0.enter_order_message.size =
  jpx_osederivatives_geniuminet_ouch_v5_0.order_token.size + 
  jpx_osederivatives_geniuminet_ouch_v5_0.order_book_id.size + 
  jpx_osederivatives_geniuminet_ouch_v5_0.side.size + 
  jpx_osederivatives_geniuminet_ouch_v5_0.quantity.size + 
  jpx_osederivatives_geniuminet_ouch_v5_0.price.size + 
  jpx_osederivatives_geniuminet_ouch_v5_0.time_in_force.size + 
  jpx_osederivatives_geniuminet_ouch_v5_0.open_close.size + 
  jpx_osederivatives_geniuminet_ouch_v5_0.client_account.size + 
  jpx_osederivatives_geniuminet_ouch_v5_0.customer_info_alpha_50.size + 
  jpx_osederivatives_geniuminet_ouch_v5_0.exchange_info_alpha_50.size

-- Display: Enter Order Message
jpx_osederivatives_geniuminet_ouch_v5_0.enter_order_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Enter Order Message
jpx_osederivatives_geniuminet_ouch_v5_0.enter_order_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Order Token: Alpha
  index, order_token = jpx_osederivatives_geniuminet_ouch_v5_0.order_token.dissect(buffer, index, packet, parent)

  -- Order Book Id: Numeric signed
  index, order_book_id = jpx_osederivatives_geniuminet_ouch_v5_0.order_book_id.dissect(buffer, index, packet, parent)

  -- Side: Alpha
  index, side = jpx_osederivatives_geniuminet_ouch_v5_0.side.dissect(buffer, index, packet, parent)

  -- Quantity: Numeric unsigned
  index, quantity = jpx_osederivatives_geniuminet_ouch_v5_0.quantity.dissect(buffer, index, packet, parent)

  -- Price: Numeric signed
  index, price = jpx_osederivatives_geniuminet_ouch_v5_0.price.dissect(buffer, index, packet, parent)

  -- Time In Force: Numeric unsigned
  index, time_in_force = jpx_osederivatives_geniuminet_ouch_v5_0.time_in_force.dissect(buffer, index, packet, parent)

  -- Open Close: Numeric unsigned
  index, open_close = jpx_osederivatives_geniuminet_ouch_v5_0.open_close.dissect(buffer, index, packet, parent)

  -- Client Account: Alpha
  index, client_account = jpx_osederivatives_geniuminet_ouch_v5_0.client_account.dissect(buffer, index, packet, parent)

  -- Customer Info Alpha 50: Alpha
  index, customer_info_alpha_50 = jpx_osederivatives_geniuminet_ouch_v5_0.customer_info_alpha_50.dissect(buffer, index, packet, parent)

  -- Exchange Info Alpha 50: Alpha
  index, exchange_info_alpha_50 = jpx_osederivatives_geniuminet_ouch_v5_0.exchange_info_alpha_50.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Enter Order Message
jpx_osederivatives_geniuminet_ouch_v5_0.enter_order_message.dissect = function(buffer, offset, packet, parent)
  if show.enter_order_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_jpx_osederivatives_geniuminet_ouch_v5_0.fields.enter_order_message, buffer(offset, 0))
    local index = jpx_osederivatives_geniuminet_ouch_v5_0.enter_order_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = jpx_osederivatives_geniuminet_ouch_v5_0.enter_order_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return jpx_osederivatives_geniuminet_ouch_v5_0.enter_order_message.fields(buffer, offset, packet, parent)
  end
end

-- Unsequenced Message
jpx_osederivatives_geniuminet_ouch_v5_0.unsequenced_message = {}

-- Size: Unsequenced Message
jpx_osederivatives_geniuminet_ouch_v5_0.unsequenced_message.size = function(buffer, offset, unsequenced_message_type)
  -- Size of Enter Order Message
  if unsequenced_message_type == "O" then
    return jpx_osederivatives_geniuminet_ouch_v5_0.enter_order_message.size
  end
  -- Size of Enter Market Maker Order Message
  if unsequenced_message_type == "P" then
    return jpx_osederivatives_geniuminet_ouch_v5_0.enter_market_maker_order_message.size
  end
  -- Size of Replace Order Message
  if unsequenced_message_type == "U" then
    return jpx_osederivatives_geniuminet_ouch_v5_0.replace_order_message.size
  end
  -- Size of Cancel Order Message
  if unsequenced_message_type == "X" then
    return jpx_osederivatives_geniuminet_ouch_v5_0.cancel_order_message.size
  end
  -- Size of Cancel By Order Id Message
  if unsequenced_message_type == "Y" then
    return jpx_osederivatives_geniuminet_ouch_v5_0.cancel_by_order_id_message.size
  end
  -- Size of Mass Cancel Message
  if unsequenced_message_type == "M" then
    return jpx_osederivatives_geniuminet_ouch_v5_0.mass_cancel_message.size
  end

  return 0
end

-- Display: Unsequenced Message
jpx_osederivatives_geniuminet_ouch_v5_0.unsequenced_message.display = function(buffer, offset, packet, parent)
  return ""
end

-- Dissect Branches: Unsequenced Message
jpx_osederivatives_geniuminet_ouch_v5_0.unsequenced_message.branches = function(buffer, offset, packet, parent, unsequenced_message_type)
  -- Dissect Enter Order Message
  if unsequenced_message_type == "O" then
    return jpx_osederivatives_geniuminet_ouch_v5_0.enter_order_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Enter Market Maker Order Message
  if unsequenced_message_type == "P" then
    return jpx_osederivatives_geniuminet_ouch_v5_0.enter_market_maker_order_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Replace Order Message
  if unsequenced_message_type == "U" then
    return jpx_osederivatives_geniuminet_ouch_v5_0.replace_order_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Cancel Order Message
  if unsequenced_message_type == "X" then
    return jpx_osederivatives_geniuminet_ouch_v5_0.cancel_order_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Cancel By Order Id Message
  if unsequenced_message_type == "Y" then
    return jpx_osederivatives_geniuminet_ouch_v5_0.cancel_by_order_id_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Mass Cancel Message
  if unsequenced_message_type == "M" then
    return jpx_osederivatives_geniuminet_ouch_v5_0.mass_cancel_message.dissect(buffer, offset, packet, parent)
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
    return "Unsequenced Message Type: Enter Order Message (O)"
  end
  if value == "P" then
    return "Unsequenced Message Type: Enter Market Maker Order Message (P)"
  end
  if value == "U" then
    return "Unsequenced Message Type: Replace Order Message (U)"
  end
  if value == "X" then
    return "Unsequenced Message Type: Cancel Order Message (X)"
  end
  if value == "Y" then
    return "Unsequenced Message Type: Cancel By Order Id Message (Y)"
  end
  if value == "M" then
    return "Unsequenced Message Type: Mass Cancel Message (M)"
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

-- Dissect: Trade Price
jpx_osederivatives_geniuminet_ouch_v5_0.trade_price.dissect = function(buffer, offset, packet, parent)
  local length = jpx_osederivatives_geniuminet_ouch_v5_0.trade_price.size
  local range = buffer(offset, length)
  local value = range:int()
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

-- Timestamp
jpx_osederivatives_geniuminet_ouch_v5_0.timestamp = {}

-- Size: Timestamp
jpx_osederivatives_geniuminet_ouch_v5_0.timestamp.size = 8

-- Display: Timestamp
jpx_osederivatives_geniuminet_ouch_v5_0.timestamp.display = function(value)
  -- Parse unix timestamp
  local seconds = math.floor(value:tonumber()/1000000000)
  local nanoseconds = value:tonumber()%1000000000

  return "Timestamp: "..os.date("%x %H:%M:%S.", seconds)..string.format("%09d", nanoseconds)
end

-- Dissect: Timestamp
jpx_osederivatives_geniuminet_ouch_v5_0.timestamp.dissect = function(buffer, offset, packet, parent)
  local length = jpx_osederivatives_geniuminet_ouch_v5_0.timestamp.size
  local range = buffer(offset, length)
  local value = range:uint64()
  local display = jpx_osederivatives_geniuminet_ouch_v5_0.timestamp.display(value, buffer, offset, packet, parent)

  parent:add(omi_jpx_osederivatives_geniuminet_ouch_v5_0.fields.timestamp, range, value, display)

  return offset + length, value
end

-- Order Executed Message
jpx_osederivatives_geniuminet_ouch_v5_0.order_executed_message = {}

-- Size: Order Executed Message
jpx_osederivatives_geniuminet_ouch_v5_0.order_executed_message.size =
  jpx_osederivatives_geniuminet_ouch_v5_0.timestamp.size + 
  jpx_osederivatives_geniuminet_ouch_v5_0.order_token.size + 
  jpx_osederivatives_geniuminet_ouch_v5_0.order_book_id.size + 
  jpx_osederivatives_geniuminet_ouch_v5_0.traded_quantity.size + 
  jpx_osederivatives_geniuminet_ouch_v5_0.trade_price.size + 
  jpx_osederivatives_geniuminet_ouch_v5_0.match_id.size + 
  jpx_osederivatives_geniuminet_ouch_v5_0.combo_group_id.size + 
  jpx_osederivatives_geniuminet_ouch_v5_0.deal_source.size

-- Display: Order Executed Message
jpx_osederivatives_geniuminet_ouch_v5_0.order_executed_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Order Executed Message
jpx_osederivatives_geniuminet_ouch_v5_0.order_executed_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Timestamp: Numeric unsigned
  index, timestamp = jpx_osederivatives_geniuminet_ouch_v5_0.timestamp.dissect(buffer, index, packet, parent)

  -- Order Token: Alpha
  index, order_token = jpx_osederivatives_geniuminet_ouch_v5_0.order_token.dissect(buffer, index, packet, parent)

  -- Order Book Id: Numeric signed
  index, order_book_id = jpx_osederivatives_geniuminet_ouch_v5_0.order_book_id.dissect(buffer, index, packet, parent)

  -- Traded Quantity: Numeric unsigned
  index, traded_quantity = jpx_osederivatives_geniuminet_ouch_v5_0.traded_quantity.dissect(buffer, index, packet, parent)

  -- Trade Price: Numeric signed
  index, trade_price = jpx_osederivatives_geniuminet_ouch_v5_0.trade_price.dissect(buffer, index, packet, parent)

  -- Match Id: Numeric unsigned
  index, match_id = jpx_osederivatives_geniuminet_ouch_v5_0.match_id.dissect(buffer, index, packet, parent)

  -- Combo Group Id: Numeric unsigned
  index, combo_group_id = jpx_osederivatives_geniuminet_ouch_v5_0.combo_group_id.dissect(buffer, index, packet, parent)

  -- Deal Source: Numeric unsigned
  index, deal_source = jpx_osederivatives_geniuminet_ouch_v5_0.deal_source.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Order Executed Message
jpx_osederivatives_geniuminet_ouch_v5_0.order_executed_message.dissect = function(buffer, offset, packet, parent)
  if show.order_executed_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_jpx_osederivatives_geniuminet_ouch_v5_0.fields.order_executed_message, buffer(offset, 0))
    local index = jpx_osederivatives_geniuminet_ouch_v5_0.order_executed_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = jpx_osederivatives_geniuminet_ouch_v5_0.order_executed_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return jpx_osederivatives_geniuminet_ouch_v5_0.order_executed_message.fields(buffer, offset, packet, parent)
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

-- Order Canceled Message
jpx_osederivatives_geniuminet_ouch_v5_0.order_canceled_message = {}

-- Size: Order Canceled Message
jpx_osederivatives_geniuminet_ouch_v5_0.order_canceled_message.size =
  jpx_osederivatives_geniuminet_ouch_v5_0.timestamp.size + 
  jpx_osederivatives_geniuminet_ouch_v5_0.order_token.size + 
  jpx_osederivatives_geniuminet_ouch_v5_0.order_book_id.size + 
  jpx_osederivatives_geniuminet_ouch_v5_0.side.size + 
  jpx_osederivatives_geniuminet_ouch_v5_0.order_id.size + 
  jpx_osederivatives_geniuminet_ouch_v5_0.cancel_reason.size

-- Display: Order Canceled Message
jpx_osederivatives_geniuminet_ouch_v5_0.order_canceled_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Order Canceled Message
jpx_osederivatives_geniuminet_ouch_v5_0.order_canceled_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Timestamp: Numeric unsigned
  index, timestamp = jpx_osederivatives_geniuminet_ouch_v5_0.timestamp.dissect(buffer, index, packet, parent)

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

-- Dissect: Order Canceled Message
jpx_osederivatives_geniuminet_ouch_v5_0.order_canceled_message.dissect = function(buffer, offset, packet, parent)
  if show.order_canceled_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_jpx_osederivatives_geniuminet_ouch_v5_0.fields.order_canceled_message, buffer(offset, 0))
    local index = jpx_osederivatives_geniuminet_ouch_v5_0.order_canceled_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = jpx_osederivatives_geniuminet_ouch_v5_0.order_canceled_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return jpx_osederivatives_geniuminet_ouch_v5_0.order_canceled_message.fields(buffer, offset, packet, parent)
  end
end

-- Customer Info Alpha 58
jpx_osederivatives_geniuminet_ouch_v5_0.customer_info_alpha_58 = {}

-- Size: Customer Info Alpha 58
jpx_osederivatives_geniuminet_ouch_v5_0.customer_info_alpha_58.size = 58

-- Display: Customer Info Alpha 58
jpx_osederivatives_geniuminet_ouch_v5_0.customer_info_alpha_58.display = function(value)
  return "Customer Info Alpha 58: "..value
end

-- Dissect: Customer Info Alpha 58
jpx_osederivatives_geniuminet_ouch_v5_0.customer_info_alpha_58.dissect = function(buffer, offset, packet, parent)
  local length = jpx_osederivatives_geniuminet_ouch_v5_0.customer_info_alpha_58.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = jpx_osederivatives_geniuminet_ouch_v5_0.customer_info_alpha_58.display(value, buffer, offset, packet, parent)

  parent:add(omi_jpx_osederivatives_geniuminet_ouch_v5_0.fields.customer_info_alpha_58, range, value, display)

  return offset + length, value
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

-- Order Replaced Message
jpx_osederivatives_geniuminet_ouch_v5_0.order_replaced_message = {}

-- Size: Order Replaced Message
jpx_osederivatives_geniuminet_ouch_v5_0.order_replaced_message.size =
  jpx_osederivatives_geniuminet_ouch_v5_0.timestamp.size + 
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
  jpx_osederivatives_geniuminet_ouch_v5_0.customer_info_alpha_58.size + 
  jpx_osederivatives_geniuminet_ouch_v5_0.exchange_info_alpha_32.size

-- Display: Order Replaced Message
jpx_osederivatives_geniuminet_ouch_v5_0.order_replaced_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Order Replaced Message
jpx_osederivatives_geniuminet_ouch_v5_0.order_replaced_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Timestamp: Numeric unsigned
  index, timestamp = jpx_osederivatives_geniuminet_ouch_v5_0.timestamp.dissect(buffer, index, packet, parent)

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

  -- Price: Numeric signed
  index, price = jpx_osederivatives_geniuminet_ouch_v5_0.price.dissect(buffer, index, packet, parent)

  -- Time In Force: Numeric unsigned
  index, time_in_force = jpx_osederivatives_geniuminet_ouch_v5_0.time_in_force.dissect(buffer, index, packet, parent)

  -- Open Close: Numeric unsigned
  index, open_close = jpx_osederivatives_geniuminet_ouch_v5_0.open_close.dissect(buffer, index, packet, parent)

  -- Client Account: Alpha
  index, client_account = jpx_osederivatives_geniuminet_ouch_v5_0.client_account.dissect(buffer, index, packet, parent)

  -- Order State: Numeric unsigned
  index, order_state = jpx_osederivatives_geniuminet_ouch_v5_0.order_state.dissect(buffer, index, packet, parent)

  -- Customer Info Alpha 58: Alpha
  index, customer_info_alpha_58 = jpx_osederivatives_geniuminet_ouch_v5_0.customer_info_alpha_58.dissect(buffer, index, packet, parent)

  -- Exchange Info Alpha 32: Alpha
  index, exchange_info_alpha_32 = jpx_osederivatives_geniuminet_ouch_v5_0.exchange_info_alpha_32.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Order Replaced Message
jpx_osederivatives_geniuminet_ouch_v5_0.order_replaced_message.dissect = function(buffer, offset, packet, parent)
  if show.order_replaced_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_jpx_osederivatives_geniuminet_ouch_v5_0.fields.order_replaced_message, buffer(offset, 0))
    local index = jpx_osederivatives_geniuminet_ouch_v5_0.order_replaced_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = jpx_osederivatives_geniuminet_ouch_v5_0.order_replaced_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return jpx_osederivatives_geniuminet_ouch_v5_0.order_replaced_message.fields(buffer, offset, packet, parent)
  end
end

-- Reject Code
jpx_osederivatives_geniuminet_ouch_v5_0.reject_code = {}

-- Size: Reject Code
jpx_osederivatives_geniuminet_ouch_v5_0.reject_code.size = 4

-- Display: Reject Code
jpx_osederivatives_geniuminet_ouch_v5_0.reject_code.display = function(value)
  return "Reject Code: "..value
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

-- Order Rejected Message
jpx_osederivatives_geniuminet_ouch_v5_0.order_rejected_message = {}

-- Size: Order Rejected Message
jpx_osederivatives_geniuminet_ouch_v5_0.order_rejected_message.size =
  jpx_osederivatives_geniuminet_ouch_v5_0.timestamp.size + 
  jpx_osederivatives_geniuminet_ouch_v5_0.order_token.size + 
  jpx_osederivatives_geniuminet_ouch_v5_0.reject_code.size

-- Display: Order Rejected Message
jpx_osederivatives_geniuminet_ouch_v5_0.order_rejected_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Order Rejected Message
jpx_osederivatives_geniuminet_ouch_v5_0.order_rejected_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Timestamp: Numeric unsigned
  index, timestamp = jpx_osederivatives_geniuminet_ouch_v5_0.timestamp.dissect(buffer, index, packet, parent)

  -- Order Token: Alpha
  index, order_token = jpx_osederivatives_geniuminet_ouch_v5_0.order_token.dissect(buffer, index, packet, parent)

  -- Reject Code: Numeric signed
  index, reject_code = jpx_osederivatives_geniuminet_ouch_v5_0.reject_code.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Order Rejected Message
jpx_osederivatives_geniuminet_ouch_v5_0.order_rejected_message.dissect = function(buffer, offset, packet, parent)
  if show.order_rejected_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_jpx_osederivatives_geniuminet_ouch_v5_0.fields.order_rejected_message, buffer(offset, 0))
    local index = jpx_osederivatives_geniuminet_ouch_v5_0.order_rejected_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = jpx_osederivatives_geniuminet_ouch_v5_0.order_rejected_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return jpx_osederivatives_geniuminet_ouch_v5_0.order_rejected_message.fields(buffer, offset, packet, parent)
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

-- Mass Cancel Accepted Message
jpx_osederivatives_geniuminet_ouch_v5_0.mass_cancel_accepted_message = {}

-- Size: Mass Cancel Accepted Message
jpx_osederivatives_geniuminet_ouch_v5_0.mass_cancel_accepted_message.size =
  jpx_osederivatives_geniuminet_ouch_v5_0.timestamp.size + 
  jpx_osederivatives_geniuminet_ouch_v5_0.order_token.size + 
  jpx_osederivatives_geniuminet_ouch_v5_0.status.size

-- Display: Mass Cancel Accepted Message
jpx_osederivatives_geniuminet_ouch_v5_0.mass_cancel_accepted_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Mass Cancel Accepted Message
jpx_osederivatives_geniuminet_ouch_v5_0.mass_cancel_accepted_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Timestamp: Numeric unsigned
  index, timestamp = jpx_osederivatives_geniuminet_ouch_v5_0.timestamp.dissect(buffer, index, packet, parent)

  -- Order Token: Alpha
  index, order_token = jpx_osederivatives_geniuminet_ouch_v5_0.order_token.dissect(buffer, index, packet, parent)

  -- Status: Numeric unsigned
  index, status = jpx_osederivatives_geniuminet_ouch_v5_0.status.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Mass Cancel Accepted Message
jpx_osederivatives_geniuminet_ouch_v5_0.mass_cancel_accepted_message.dissect = function(buffer, offset, packet, parent)
  if show.mass_cancel_accepted_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_jpx_osederivatives_geniuminet_ouch_v5_0.fields.mass_cancel_accepted_message, buffer(offset, 0))
    local index = jpx_osederivatives_geniuminet_ouch_v5_0.mass_cancel_accepted_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = jpx_osederivatives_geniuminet_ouch_v5_0.mass_cancel_accepted_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return jpx_osederivatives_geniuminet_ouch_v5_0.mass_cancel_accepted_message.fields(buffer, offset, packet, parent)
  end
end

-- Customer Info Alpha 56
jpx_osederivatives_geniuminet_ouch_v5_0.customer_info_alpha_56 = {}

-- Size: Customer Info Alpha 56
jpx_osederivatives_geniuminet_ouch_v5_0.customer_info_alpha_56.size = 56

-- Display: Customer Info Alpha 56
jpx_osederivatives_geniuminet_ouch_v5_0.customer_info_alpha_56.display = function(value)
  return "Customer Info Alpha 56: "..value
end

-- Dissect: Customer Info Alpha 56
jpx_osederivatives_geniuminet_ouch_v5_0.customer_info_alpha_56.dissect = function(buffer, offset, packet, parent)
  local length = jpx_osederivatives_geniuminet_ouch_v5_0.customer_info_alpha_56.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = jpx_osederivatives_geniuminet_ouch_v5_0.customer_info_alpha_56.display(value, buffer, offset, packet, parent)

  parent:add(omi_jpx_osederivatives_geniuminet_ouch_v5_0.fields.customer_info_alpha_56, range, value, display)

  return offset + length, value
end

-- Order Accepted Message
jpx_osederivatives_geniuminet_ouch_v5_0.order_accepted_message = {}

-- Size: Order Accepted Message
jpx_osederivatives_geniuminet_ouch_v5_0.order_accepted_message.size =
  jpx_osederivatives_geniuminet_ouch_v5_0.timestamp.size + 
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
  jpx_osederivatives_geniuminet_ouch_v5_0.customer_info_alpha_56.size + 
  jpx_osederivatives_geniuminet_ouch_v5_0.exchange_info_alpha_32.size

-- Display: Order Accepted Message
jpx_osederivatives_geniuminet_ouch_v5_0.order_accepted_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Order Accepted Message
jpx_osederivatives_geniuminet_ouch_v5_0.order_accepted_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Timestamp: Numeric unsigned
  index, timestamp = jpx_osederivatives_geniuminet_ouch_v5_0.timestamp.dissect(buffer, index, packet, parent)

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

  -- Price: Numeric signed
  index, price = jpx_osederivatives_geniuminet_ouch_v5_0.price.dissect(buffer, index, packet, parent)

  -- Time In Force: Numeric unsigned
  index, time_in_force = jpx_osederivatives_geniuminet_ouch_v5_0.time_in_force.dissect(buffer, index, packet, parent)

  -- Open Close: Numeric unsigned
  index, open_close = jpx_osederivatives_geniuminet_ouch_v5_0.open_close.dissect(buffer, index, packet, parent)

  -- Client Account: Alpha
  index, client_account = jpx_osederivatives_geniuminet_ouch_v5_0.client_account.dissect(buffer, index, packet, parent)

  -- Order State: Numeric unsigned
  index, order_state = jpx_osederivatives_geniuminet_ouch_v5_0.order_state.dissect(buffer, index, packet, parent)

  -- Customer Info Alpha 56: Alpha
  index, customer_info_alpha_56 = jpx_osederivatives_geniuminet_ouch_v5_0.customer_info_alpha_56.dissect(buffer, index, packet, parent)

  -- Exchange Info Alpha 32: Alpha
  index, exchange_info_alpha_32 = jpx_osederivatives_geniuminet_ouch_v5_0.exchange_info_alpha_32.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Order Accepted Message
jpx_osederivatives_geniuminet_ouch_v5_0.order_accepted_message.dissect = function(buffer, offset, packet, parent)
  if show.order_accepted_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_jpx_osederivatives_geniuminet_ouch_v5_0.fields.order_accepted_message, buffer(offset, 0))
    local index = jpx_osederivatives_geniuminet_ouch_v5_0.order_accepted_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = jpx_osederivatives_geniuminet_ouch_v5_0.order_accepted_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return jpx_osederivatives_geniuminet_ouch_v5_0.order_accepted_message.fields(buffer, offset, packet, parent)
  end
end

-- Sequenced Message
jpx_osederivatives_geniuminet_ouch_v5_0.sequenced_message = {}

-- Size: Sequenced Message
jpx_osederivatives_geniuminet_ouch_v5_0.sequenced_message.size = function(buffer, offset, sequenced_message_type)
  -- Size of Order Accepted Message
  if sequenced_message_type == "A" then
    return jpx_osederivatives_geniuminet_ouch_v5_0.order_accepted_message.size
  end
  -- Size of Mass Cancel Accepted Message
  if sequenced_message_type == "M" then
    return jpx_osederivatives_geniuminet_ouch_v5_0.mass_cancel_accepted_message.size
  end
  -- Size of Order Rejected Message
  if sequenced_message_type == "J" then
    return jpx_osederivatives_geniuminet_ouch_v5_0.order_rejected_message.size
  end
  -- Size of Order Replaced Message
  if sequenced_message_type == "U" then
    return jpx_osederivatives_geniuminet_ouch_v5_0.order_replaced_message.size
  end
  -- Size of Order Canceled Message
  if sequenced_message_type == "C" then
    return jpx_osederivatives_geniuminet_ouch_v5_0.order_canceled_message.size
  end
  -- Size of Order Executed Message
  if sequenced_message_type == "E" then
    return jpx_osederivatives_geniuminet_ouch_v5_0.order_executed_message.size
  end

  return 0
end

-- Display: Sequenced Message
jpx_osederivatives_geniuminet_ouch_v5_0.sequenced_message.display = function(buffer, offset, packet, parent)
  return ""
end

-- Dissect Branches: Sequenced Message
jpx_osederivatives_geniuminet_ouch_v5_0.sequenced_message.branches = function(buffer, offset, packet, parent, sequenced_message_type)
  -- Dissect Order Accepted Message
  if sequenced_message_type == "A" then
    return jpx_osederivatives_geniuminet_ouch_v5_0.order_accepted_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Mass Cancel Accepted Message
  if sequenced_message_type == "M" then
    return jpx_osederivatives_geniuminet_ouch_v5_0.mass_cancel_accepted_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Order Rejected Message
  if sequenced_message_type == "J" then
    return jpx_osederivatives_geniuminet_ouch_v5_0.order_rejected_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Order Replaced Message
  if sequenced_message_type == "U" then
    return jpx_osederivatives_geniuminet_ouch_v5_0.order_replaced_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Order Canceled Message
  if sequenced_message_type == "C" then
    return jpx_osederivatives_geniuminet_ouch_v5_0.order_canceled_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Order Executed Message
  if sequenced_message_type == "E" then
    return jpx_osederivatives_geniuminet_ouch_v5_0.order_executed_message.dissect(buffer, offset, packet, parent)
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
    return "Sequenced Message Type: Order Accepted Message (A)"
  end
  if value == "M" then
    return "Sequenced Message Type: Mass Cancel Accepted Message (M)"
  end
  if value == "J" then
    return "Sequenced Message Type: Order Rejected Message (J)"
  end
  if value == "U" then
    return "Sequenced Message Type: Order Replaced Message (U)"
  end
  if value == "C" then
    return "Sequenced Message Type: Order Canceled Message (C)"
  end
  if value == "E" then
    return "Sequenced Message Type: Order Executed Message (E)"
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
