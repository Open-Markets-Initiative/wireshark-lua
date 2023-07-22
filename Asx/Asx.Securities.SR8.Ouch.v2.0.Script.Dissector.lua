-----------------------------------------------------------------------
-- Lua Script Wireshark Dissector
-- 
-- Please see end of file for rules and regulations
-----------------------------------------------------------------------

-- Asx Securities SR8 Ouch 2.0 Protocol
local asx_securities_sr8_ouch_v2_0 = Proto("Asx.Securities.SR8.Ouch.v2.0.Lua", "Asx Securities SR8 Ouch 2.0")

-- Component Tables
local show = {}
local format = {}
local asx_securities_sr8_ouch_v2_0_display = {}
local asx_securities_sr8_ouch_v2_0_dissect = {}
local asx_securities_sr8_ouch_v2_0_size_of = {}
local verify = {}
local translate = {}

-----------------------------------------------------------------------
-- Declare Protocol Fields
-----------------------------------------------------------------------

-- Asx Securities SR8 Ouch 2.0 Fields
asx_securities_sr8_ouch_v2_0.fields.cancel_by_order_id_message = ProtoField.new("Cancel By Order Id Message", "asx.securities.sr8.ouch.v2.0.cancelbyorderidmessage", ftypes.STRING)
asx_securities_sr8_ouch_v2_0.fields.cancel_order_message = ProtoField.new("Cancel Order Message", "asx.securities.sr8.ouch.v2.0.cancelordermessage", ftypes.STRING)
asx_securities_sr8_ouch_v2_0.fields.capacity_of_participant = ProtoField.new("Capacity Of Participant", "asx.securities.sr8.ouch.v2.0.capacityofparticipant", ftypes.STRING)
asx_securities_sr8_ouch_v2_0.fields.clearing_participant = ProtoField.new("Clearing Participant", "asx.securities.sr8.ouch.v2.0.clearingparticipant", ftypes.STRING)
asx_securities_sr8_ouch_v2_0.fields.client_account = ProtoField.new("Client Account", "asx.securities.sr8.ouch.v2.0.clientaccount", ftypes.STRING)
asx_securities_sr8_ouch_v2_0.fields.crossing_key = ProtoField.new("Crossing Key", "asx.securities.sr8.ouch.v2.0.crossingkey", ftypes.UINT32)
asx_securities_sr8_ouch_v2_0.fields.customer_info = ProtoField.new("Customer Info", "asx.securities.sr8.ouch.v2.0.customerinfo", ftypes.STRING)
asx_securities_sr8_ouch_v2_0.fields.deal_source = ProtoField.new("Deal Source", "asx.securities.sr8.ouch.v2.0.dealsource", ftypes.UINT16)
asx_securities_sr8_ouch_v2_0.fields.debug_packet = ProtoField.new("Debug Packet", "asx.securities.sr8.ouch.v2.0.debugpacket", ftypes.STRING)
asx_securities_sr8_ouch_v2_0.fields.directed_wholesale = ProtoField.new("Directed Wholesale", "asx.securities.sr8.ouch.v2.0.directedwholesale", ftypes.STRING)
asx_securities_sr8_ouch_v2_0.fields.enter_order_message = ProtoField.new("Enter Order Message", "asx.securities.sr8.ouch.v2.0.enterordermessage", ftypes.STRING)
asx_securities_sr8_ouch_v2_0.fields.exchange_info = ProtoField.new("Exchange Info", "asx.securities.sr8.ouch.v2.0.exchangeinfo", ftypes.STRING)
asx_securities_sr8_ouch_v2_0.fields.execution_venue = ProtoField.new("Execution Venue", "asx.securities.sr8.ouch.v2.0.executionvenue", ftypes.STRING)
asx_securities_sr8_ouch_v2_0.fields.existing_order_token = ProtoField.new("Existing Order Token", "asx.securities.sr8.ouch.v2.0.existingordertoken", ftypes.STRING)
asx_securities_sr8_ouch_v2_0.fields.filler = ProtoField.new("Filler", "asx.securities.sr8.ouch.v2.0.filler", ftypes.STRING)
asx_securities_sr8_ouch_v2_0.fields.intermediary_id = ProtoField.new("Intermediary Id", "asx.securities.sr8.ouch.v2.0.intermediaryid", ftypes.STRING)
asx_securities_sr8_ouch_v2_0.fields.login_accepted_packet = ProtoField.new("Login Accepted Packet", "asx.securities.sr8.ouch.v2.0.loginacceptedpacket", ftypes.STRING)
asx_securities_sr8_ouch_v2_0.fields.login_rejected_packet = ProtoField.new("Login Rejected Packet", "asx.securities.sr8.ouch.v2.0.loginrejectedpacket", ftypes.STRING)
asx_securities_sr8_ouch_v2_0.fields.login_request_packet = ProtoField.new("Login Request Packet", "asx.securities.sr8.ouch.v2.0.loginrequestpacket", ftypes.STRING)
asx_securities_sr8_ouch_v2_0.fields.match_attributes = ProtoField.new("Match Attributes", "asx.securities.sr8.ouch.v2.0.matchattributes", ftypes.UINT8)
asx_securities_sr8_ouch_v2_0.fields.match_id = ProtoField.new("Match Id", "asx.securities.sr8.ouch.v2.0.matchid", ftypes.BYTES)
asx_securities_sr8_ouch_v2_0.fields.minimum_acceptable_quantity = ProtoField.new("Minimum Acceptable Quantity", "asx.securities.sr8.ouch.v2.0.minimumacceptablequantity", ftypes.UINT64)
asx_securities_sr8_ouch_v2_0.fields.open_close = ProtoField.new("Open Close", "asx.securities.sr8.ouch.v2.0.openclose", ftypes.UINT8)
asx_securities_sr8_ouch_v2_0.fields.order_accepted_message = ProtoField.new("Order Accepted Message", "asx.securities.sr8.ouch.v2.0.orderacceptedmessage", ftypes.STRING)
asx_securities_sr8_ouch_v2_0.fields.order_book_id = ProtoField.new("Order Book Id", "asx.securities.sr8.ouch.v2.0.orderbookid", ftypes.UINT32)
asx_securities_sr8_ouch_v2_0.fields.order_cancelled_message = ProtoField.new("Order Cancelled Message", "asx.securities.sr8.ouch.v2.0.ordercancelledmessage", ftypes.STRING)
asx_securities_sr8_ouch_v2_0.fields.order_executed_message = ProtoField.new("Order Executed Message", "asx.securities.sr8.ouch.v2.0.orderexecutedmessage", ftypes.STRING)
asx_securities_sr8_ouch_v2_0.fields.order_id = ProtoField.new("Order Id", "asx.securities.sr8.ouch.v2.0.orderid", ftypes.UINT64)
asx_securities_sr8_ouch_v2_0.fields.order_origin = ProtoField.new("Order Origin", "asx.securities.sr8.ouch.v2.0.orderorigin", ftypes.STRING)
asx_securities_sr8_ouch_v2_0.fields.order_rejected_message = ProtoField.new("Order Rejected Message", "asx.securities.sr8.ouch.v2.0.orderrejectedmessage", ftypes.STRING)
asx_securities_sr8_ouch_v2_0.fields.order_replaced_message = ProtoField.new("Order Replaced Message", "asx.securities.sr8.ouch.v2.0.orderreplacedmessage", ftypes.STRING)
asx_securities_sr8_ouch_v2_0.fields.order_state = ProtoField.new("Order State", "asx.securities.sr8.ouch.v2.0.orderstate", ftypes.UINT8)
asx_securities_sr8_ouch_v2_0.fields.order_token = ProtoField.new("Order Token", "asx.securities.sr8.ouch.v2.0.ordertoken", ftypes.STRING)
asx_securities_sr8_ouch_v2_0.fields.ouch_order_type = ProtoField.new("Ouch Order Type", "asx.securities.sr8.ouch.v2.0.ouchordertype", ftypes.STRING)
asx_securities_sr8_ouch_v2_0.fields.packet = ProtoField.new("Packet", "asx.securities.sr8.ouch.v2.0.packet", ftypes.STRING)
asx_securities_sr8_ouch_v2_0.fields.packet_header = ProtoField.new("Packet Header", "asx.securities.sr8.ouch.v2.0.packetheader", ftypes.STRING)
asx_securities_sr8_ouch_v2_0.fields.packet_length = ProtoField.new("Packet Length", "asx.securities.sr8.ouch.v2.0.packetlength", ftypes.UINT16)
asx_securities_sr8_ouch_v2_0.fields.packet_type = ProtoField.new("Packet Type", "asx.securities.sr8.ouch.v2.0.packettype", ftypes.STRING)
asx_securities_sr8_ouch_v2_0.fields.password = ProtoField.new("Password", "asx.securities.sr8.ouch.v2.0.password", ftypes.STRING)
asx_securities_sr8_ouch_v2_0.fields.payload = ProtoField.new("Payload", "asx.securities.sr8.ouch.v2.0.payload", ftypes.STRING)
asx_securities_sr8_ouch_v2_0.fields.previous_order_token = ProtoField.new("Previous Order Token", "asx.securities.sr8.ouch.v2.0.previousordertoken", ftypes.STRING)
asx_securities_sr8_ouch_v2_0.fields.price = ProtoField.new("Price", "asx.securities.sr8.ouch.v2.0.price", ftypes.DOUBLE)
asx_securities_sr8_ouch_v2_0.fields.quantity = ProtoField.new("Quantity", "asx.securities.sr8.ouch.v2.0.quantity", ftypes.UINT64)
asx_securities_sr8_ouch_v2_0.fields.reason = ProtoField.new("Reason", "asx.securities.sr8.ouch.v2.0.reason", ftypes.UINT8)
asx_securities_sr8_ouch_v2_0.fields.reject_code = ProtoField.new("Reject Code", "asx.securities.sr8.ouch.v2.0.rejectcode", ftypes.UINT32)
asx_securities_sr8_ouch_v2_0.fields.reject_reason_code = ProtoField.new("Reject Reason Code", "asx.securities.sr8.ouch.v2.0.rejectreasoncode", ftypes.STRING)
asx_securities_sr8_ouch_v2_0.fields.replace_order_message = ProtoField.new("Replace Order Message", "asx.securities.sr8.ouch.v2.0.replaceordermessage", ftypes.STRING)
asx_securities_sr8_ouch_v2_0.fields.replacement_order_token = ProtoField.new("Replacement Order Token", "asx.securities.sr8.ouch.v2.0.replacementordertoken", ftypes.STRING)
asx_securities_sr8_ouch_v2_0.fields.requested_sequence_number = ProtoField.new("Requested Sequence Number", "asx.securities.sr8.ouch.v2.0.requestedsequencenumber", ftypes.STRING)
asx_securities_sr8_ouch_v2_0.fields.requested_session = ProtoField.new("Requested Session", "asx.securities.sr8.ouch.v2.0.requestedsession", ftypes.STRING)
asx_securities_sr8_ouch_v2_0.fields.sequence_number = ProtoField.new("Sequence Number", "asx.securities.sr8.ouch.v2.0.sequencenumber", ftypes.STRING)
asx_securities_sr8_ouch_v2_0.fields.sequenced_data_packet = ProtoField.new("Sequenced Data Packet", "asx.securities.sr8.ouch.v2.0.sequenceddatapacket", ftypes.STRING)
asx_securities_sr8_ouch_v2_0.fields.sequenced_message = ProtoField.new("Sequenced Message", "asx.securities.sr8.ouch.v2.0.sequencedmessage", ftypes.STRING)
asx_securities_sr8_ouch_v2_0.fields.sequenced_message_type = ProtoField.new("Sequenced Message Type", "asx.securities.sr8.ouch.v2.0.sequencedmessagetype", ftypes.STRING)
asx_securities_sr8_ouch_v2_0.fields.session = ProtoField.new("Session", "asx.securities.sr8.ouch.v2.0.session", ftypes.STRING)
asx_securities_sr8_ouch_v2_0.fields.short_sell_quantity = ProtoField.new("Short Sell Quantity", "asx.securities.sr8.ouch.v2.0.shortsellquantity", ftypes.UINT64)
asx_securities_sr8_ouch_v2_0.fields.side = ProtoField.new("Side", "asx.securities.sr8.ouch.v2.0.side", ftypes.STRING)
asx_securities_sr8_ouch_v2_0.fields.soup_bin_tcp_packet = ProtoField.new("Soup Bin Tcp Packet", "asx.securities.sr8.ouch.v2.0.soupbintcppacket", ftypes.STRING)
asx_securities_sr8_ouch_v2_0.fields.text = ProtoField.new("Text", "asx.securities.sr8.ouch.v2.0.text", ftypes.STRING)
asx_securities_sr8_ouch_v2_0.fields.time_in_force = ProtoField.new("Time In Force", "asx.securities.sr8.ouch.v2.0.timeinforce", ftypes.UINT8)
asx_securities_sr8_ouch_v2_0.fields.timestamp_nanoseconds = ProtoField.new("Timestamp Nanoseconds", "asx.securities.sr8.ouch.v2.0.timestampnanoseconds", ftypes.UINT64)
asx_securities_sr8_ouch_v2_0.fields.trade_price = ProtoField.new("Trade Price", "asx.securities.sr8.ouch.v2.0.tradeprice", ftypes.DOUBLE)
asx_securities_sr8_ouch_v2_0.fields.traded_quantity = ProtoField.new("Traded Quantity", "asx.securities.sr8.ouch.v2.0.tradedquantity", ftypes.UINT64)
asx_securities_sr8_ouch_v2_0.fields.unsequenced_data_packet = ProtoField.new("Unsequenced Data Packet", "asx.securities.sr8.ouch.v2.0.unsequenceddatapacket", ftypes.STRING)
asx_securities_sr8_ouch_v2_0.fields.unsequenced_message = ProtoField.new("Unsequenced Message", "asx.securities.sr8.ouch.v2.0.unsequencedmessage", ftypes.STRING)
asx_securities_sr8_ouch_v2_0.fields.unsequenced_message_type = ProtoField.new("Unsequenced Message Type", "asx.securities.sr8.ouch.v2.0.unsequencedmessagetype", ftypes.STRING)
asx_securities_sr8_ouch_v2_0.fields.username = ProtoField.new("Username", "asx.securities.sr8.ouch.v2.0.username", ftypes.STRING)

-----------------------------------------------------------------------
-- Declare Dissection Options
-----------------------------------------------------------------------

-- Asx Securities SR8 Ouch 2.0 Element Dissection Options
show.cancel_by_order_id_message = true
show.cancel_order_message = true
show.debug_packet = true
show.enter_order_message = true
show.login_accepted_packet = true
show.login_rejected_packet = true
show.login_request_packet = true
show.order_accepted_message = true
show.order_cancelled_message = true
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

-- Register Asx Securities SR8 Ouch 2.0 Show Options
asx_securities_sr8_ouch_v2_0.prefs.show_cancel_by_order_id_message = Pref.bool("Show Cancel By Order Id Message", show.cancel_by_order_id_message, "Parse and add Cancel By Order Id Message to protocol tree")
asx_securities_sr8_ouch_v2_0.prefs.show_cancel_order_message = Pref.bool("Show Cancel Order Message", show.cancel_order_message, "Parse and add Cancel Order Message to protocol tree")
asx_securities_sr8_ouch_v2_0.prefs.show_debug_packet = Pref.bool("Show Debug Packet", show.debug_packet, "Parse and add Debug Packet to protocol tree")
asx_securities_sr8_ouch_v2_0.prefs.show_enter_order_message = Pref.bool("Show Enter Order Message", show.enter_order_message, "Parse and add Enter Order Message to protocol tree")
asx_securities_sr8_ouch_v2_0.prefs.show_login_accepted_packet = Pref.bool("Show Login Accepted Packet", show.login_accepted_packet, "Parse and add Login Accepted Packet to protocol tree")
asx_securities_sr8_ouch_v2_0.prefs.show_login_rejected_packet = Pref.bool("Show Login Rejected Packet", show.login_rejected_packet, "Parse and add Login Rejected Packet to protocol tree")
asx_securities_sr8_ouch_v2_0.prefs.show_login_request_packet = Pref.bool("Show Login Request Packet", show.login_request_packet, "Parse and add Login Request Packet to protocol tree")
asx_securities_sr8_ouch_v2_0.prefs.show_order_accepted_message = Pref.bool("Show Order Accepted Message", show.order_accepted_message, "Parse and add Order Accepted Message to protocol tree")
asx_securities_sr8_ouch_v2_0.prefs.show_order_cancelled_message = Pref.bool("Show Order Cancelled Message", show.order_cancelled_message, "Parse and add Order Cancelled Message to protocol tree")
asx_securities_sr8_ouch_v2_0.prefs.show_order_executed_message = Pref.bool("Show Order Executed Message", show.order_executed_message, "Parse and add Order Executed Message to protocol tree")
asx_securities_sr8_ouch_v2_0.prefs.show_order_rejected_message = Pref.bool("Show Order Rejected Message", show.order_rejected_message, "Parse and add Order Rejected Message to protocol tree")
asx_securities_sr8_ouch_v2_0.prefs.show_order_replaced_message = Pref.bool("Show Order Replaced Message", show.order_replaced_message, "Parse and add Order Replaced Message to protocol tree")
asx_securities_sr8_ouch_v2_0.prefs.show_packet = Pref.bool("Show Packet", show.packet, "Parse and add Packet to protocol tree")
asx_securities_sr8_ouch_v2_0.prefs.show_packet_header = Pref.bool("Show Packet Header", show.packet_header, "Parse and add Packet Header to protocol tree")
asx_securities_sr8_ouch_v2_0.prefs.show_replace_order_message = Pref.bool("Show Replace Order Message", show.replace_order_message, "Parse and add Replace Order Message to protocol tree")
asx_securities_sr8_ouch_v2_0.prefs.show_sequenced_data_packet = Pref.bool("Show Sequenced Data Packet", show.sequenced_data_packet, "Parse and add Sequenced Data Packet to protocol tree")
asx_securities_sr8_ouch_v2_0.prefs.show_soup_bin_tcp_packet = Pref.bool("Show Soup Bin Tcp Packet", show.soup_bin_tcp_packet, "Parse and add Soup Bin Tcp Packet to protocol tree")
asx_securities_sr8_ouch_v2_0.prefs.show_unsequenced_data_packet = Pref.bool("Show Unsequenced Data Packet", show.unsequenced_data_packet, "Parse and add Unsequenced Data Packet to protocol tree")
asx_securities_sr8_ouch_v2_0.prefs.show_payload = Pref.bool("Show Payload", show.payload, "Parse and add Payload to protocol tree")
asx_securities_sr8_ouch_v2_0.prefs.show_sequenced_message = Pref.bool("Show Sequenced Message", show.sequenced_message, "Parse and add Sequenced Message to protocol tree")
asx_securities_sr8_ouch_v2_0.prefs.show_unsequenced_message = Pref.bool("Show Unsequenced Message", show.unsequenced_message, "Parse and add Unsequenced Message to protocol tree")

-- Handle changed preferences
function asx_securities_sr8_ouch_v2_0.prefs_changed()
  local changed = false

  -- Check if show options have changed
  if show.cancel_by_order_id_message ~= asx_securities_sr8_ouch_v2_0.prefs.show_cancel_by_order_id_message then
    show.cancel_by_order_id_message = asx_securities_sr8_ouch_v2_0.prefs.show_cancel_by_order_id_message
    changed = true
  end
  if show.cancel_order_message ~= asx_securities_sr8_ouch_v2_0.prefs.show_cancel_order_message then
    show.cancel_order_message = asx_securities_sr8_ouch_v2_0.prefs.show_cancel_order_message
    changed = true
  end
  if show.debug_packet ~= asx_securities_sr8_ouch_v2_0.prefs.show_debug_packet then
    show.debug_packet = asx_securities_sr8_ouch_v2_0.prefs.show_debug_packet
    changed = true
  end
  if show.enter_order_message ~= asx_securities_sr8_ouch_v2_0.prefs.show_enter_order_message then
    show.enter_order_message = asx_securities_sr8_ouch_v2_0.prefs.show_enter_order_message
    changed = true
  end
  if show.login_accepted_packet ~= asx_securities_sr8_ouch_v2_0.prefs.show_login_accepted_packet then
    show.login_accepted_packet = asx_securities_sr8_ouch_v2_0.prefs.show_login_accepted_packet
    changed = true
  end
  if show.login_rejected_packet ~= asx_securities_sr8_ouch_v2_0.prefs.show_login_rejected_packet then
    show.login_rejected_packet = asx_securities_sr8_ouch_v2_0.prefs.show_login_rejected_packet
    changed = true
  end
  if show.login_request_packet ~= asx_securities_sr8_ouch_v2_0.prefs.show_login_request_packet then
    show.login_request_packet = asx_securities_sr8_ouch_v2_0.prefs.show_login_request_packet
    changed = true
  end
  if show.order_accepted_message ~= asx_securities_sr8_ouch_v2_0.prefs.show_order_accepted_message then
    show.order_accepted_message = asx_securities_sr8_ouch_v2_0.prefs.show_order_accepted_message
    changed = true
  end
  if show.order_cancelled_message ~= asx_securities_sr8_ouch_v2_0.prefs.show_order_cancelled_message then
    show.order_cancelled_message = asx_securities_sr8_ouch_v2_0.prefs.show_order_cancelled_message
    changed = true
  end
  if show.order_executed_message ~= asx_securities_sr8_ouch_v2_0.prefs.show_order_executed_message then
    show.order_executed_message = asx_securities_sr8_ouch_v2_0.prefs.show_order_executed_message
    changed = true
  end
  if show.order_rejected_message ~= asx_securities_sr8_ouch_v2_0.prefs.show_order_rejected_message then
    show.order_rejected_message = asx_securities_sr8_ouch_v2_0.prefs.show_order_rejected_message
    changed = true
  end
  if show.order_replaced_message ~= asx_securities_sr8_ouch_v2_0.prefs.show_order_replaced_message then
    show.order_replaced_message = asx_securities_sr8_ouch_v2_0.prefs.show_order_replaced_message
    changed = true
  end
  if show.packet ~= asx_securities_sr8_ouch_v2_0.prefs.show_packet then
    show.packet = asx_securities_sr8_ouch_v2_0.prefs.show_packet
    changed = true
  end
  if show.packet_header ~= asx_securities_sr8_ouch_v2_0.prefs.show_packet_header then
    show.packet_header = asx_securities_sr8_ouch_v2_0.prefs.show_packet_header
    changed = true
  end
  if show.replace_order_message ~= asx_securities_sr8_ouch_v2_0.prefs.show_replace_order_message then
    show.replace_order_message = asx_securities_sr8_ouch_v2_0.prefs.show_replace_order_message
    changed = true
  end
  if show.sequenced_data_packet ~= asx_securities_sr8_ouch_v2_0.prefs.show_sequenced_data_packet then
    show.sequenced_data_packet = asx_securities_sr8_ouch_v2_0.prefs.show_sequenced_data_packet
    changed = true
  end
  if show.soup_bin_tcp_packet ~= asx_securities_sr8_ouch_v2_0.prefs.show_soup_bin_tcp_packet then
    show.soup_bin_tcp_packet = asx_securities_sr8_ouch_v2_0.prefs.show_soup_bin_tcp_packet
    changed = true
  end
  if show.unsequenced_data_packet ~= asx_securities_sr8_ouch_v2_0.prefs.show_unsequenced_data_packet then
    show.unsequenced_data_packet = asx_securities_sr8_ouch_v2_0.prefs.show_unsequenced_data_packet
    changed = true
  end
  if show.payload ~= asx_securities_sr8_ouch_v2_0.prefs.show_payload then
    show.payload = asx_securities_sr8_ouch_v2_0.prefs.show_payload
    changed = true
  end
  if show.sequenced_message ~= asx_securities_sr8_ouch_v2_0.prefs.show_sequenced_message then
    show.sequenced_message = asx_securities_sr8_ouch_v2_0.prefs.show_sequenced_message
    changed = true
  end
  if show.unsequenced_message ~= asx_securities_sr8_ouch_v2_0.prefs.show_unsequenced_message then
    show.unsequenced_message = asx_securities_sr8_ouch_v2_0.prefs.show_unsequenced_message
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
-- Dissect Asx Securities SR8 Ouch 2.0
-----------------------------------------------------------------------

-- Size: Order Id
asx_securities_sr8_ouch_v2_0_size_of.order_id = 8

-- Display: Order Id
asx_securities_sr8_ouch_v2_0_display.order_id = function(value)
  return "Order Id: "..value
end

-- Dissect: Order Id
asx_securities_sr8_ouch_v2_0_dissect.order_id = function(buffer, offset, packet, parent)
  local length = asx_securities_sr8_ouch_v2_0_size_of.order_id
  local range = buffer(offset, length)
  local value = range:uint64()
  local display = asx_securities_sr8_ouch_v2_0_display.order_id(value, buffer, offset, packet, parent)

  parent:add(asx_securities_sr8_ouch_v2_0.fields.order_id, range, value, display)

  return offset + length, value
end

-- Size: Side
asx_securities_sr8_ouch_v2_0_size_of.side = 1

-- Display: Side
asx_securities_sr8_ouch_v2_0_display.side = function(value)
  if value == "B" then
    return "Side: Buy Order (B)"
  end
  if value == "S" then
    return "Side: Sell Order (S)"
  end
  if value == "T" then
    return "Side: Short Sell Order (T)"
  end
  if value == "C" then
    return "Side: Buy Order In A Combination (C)"
  end

  return "Side: Unknown("..value..")"
end

-- Dissect: Side
asx_securities_sr8_ouch_v2_0_dissect.side = function(buffer, offset, packet, parent)
  local length = asx_securities_sr8_ouch_v2_0_size_of.side
  local range = buffer(offset, length)
  local value = range:string()
  local display = asx_securities_sr8_ouch_v2_0_display.side(value, buffer, offset, packet, parent)

  parent:add(asx_securities_sr8_ouch_v2_0.fields.side, range, value, display)

  return offset + length, value
end

-- Size: Order Book Id
asx_securities_sr8_ouch_v2_0_size_of.order_book_id = 4

-- Display: Order Book Id
asx_securities_sr8_ouch_v2_0_display.order_book_id = function(value)
  return "Order Book Id: "..value
end

-- Dissect: Order Book Id
asx_securities_sr8_ouch_v2_0_dissect.order_book_id = function(buffer, offset, packet, parent)
  local length = asx_securities_sr8_ouch_v2_0_size_of.order_book_id
  local range = buffer(offset, length)
  local value = range:uint()
  local display = asx_securities_sr8_ouch_v2_0_display.order_book_id(value, buffer, offset, packet, parent)

  parent:add(asx_securities_sr8_ouch_v2_0.fields.order_book_id, range, value, display)

  return offset + length, value
end

-- Calculate size of: Cancel By Order Id Message
asx_securities_sr8_ouch_v2_0_size_of.cancel_by_order_id_message = function(buffer, offset)
  local index = 0

  index = index + asx_securities_sr8_ouch_v2_0_size_of.order_book_id

  index = index + asx_securities_sr8_ouch_v2_0_size_of.side

  index = index + asx_securities_sr8_ouch_v2_0_size_of.order_id

  return index
end

-- Display: Cancel By Order Id Message
asx_securities_sr8_ouch_v2_0_display.cancel_by_order_id_message = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Cancel By Order Id Message
asx_securities_sr8_ouch_v2_0_dissect.cancel_by_order_id_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Order Book Id: 4 Byte Unsigned Fixed Width Integer
  index, order_book_id = asx_securities_sr8_ouch_v2_0_dissect.order_book_id(buffer, index, packet, parent)

  -- Side: 1 Byte Ascii String Enum with 4 values
  index, side = asx_securities_sr8_ouch_v2_0_dissect.side(buffer, index, packet, parent)

  -- Order Id: 8 Byte Unsigned Fixed Width Integer
  index, order_id = asx_securities_sr8_ouch_v2_0_dissect.order_id(buffer, index, packet, parent)

  return index
end

-- Dissect: Cancel By Order Id Message
asx_securities_sr8_ouch_v2_0_dissect.cancel_by_order_id_message = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.cancel_by_order_id_message then
    local length = asx_securities_sr8_ouch_v2_0_size_of.cancel_by_order_id_message(buffer, offset)
    local range = buffer(offset, length)
    local display = asx_securities_sr8_ouch_v2_0_display.cancel_by_order_id_message(buffer, packet, parent)
    parent = parent:add(asx_securities_sr8_ouch_v2_0.fields.cancel_by_order_id_message, range, display)
  end

  return asx_securities_sr8_ouch_v2_0_dissect.cancel_by_order_id_message_fields(buffer, offset, packet, parent)
end

-- Size: Order Token
asx_securities_sr8_ouch_v2_0_size_of.order_token = 14

-- Display: Order Token
asx_securities_sr8_ouch_v2_0_display.order_token = function(value)
  return "Order Token: "..value
end

-- Dissect: Order Token
asx_securities_sr8_ouch_v2_0_dissect.order_token = function(buffer, offset, packet, parent)
  local length = asx_securities_sr8_ouch_v2_0_size_of.order_token
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = asx_securities_sr8_ouch_v2_0_display.order_token(value, buffer, offset, packet, parent)

  parent:add(asx_securities_sr8_ouch_v2_0.fields.order_token, range, value, display)

  return offset + length, value
end

-- Calculate size of: Cancel Order Message
asx_securities_sr8_ouch_v2_0_size_of.cancel_order_message = function(buffer, offset)
  local index = 0

  index = index + asx_securities_sr8_ouch_v2_0_size_of.order_token

  return index
end

-- Display: Cancel Order Message
asx_securities_sr8_ouch_v2_0_display.cancel_order_message = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Cancel Order Message
asx_securities_sr8_ouch_v2_0_dissect.cancel_order_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Order Token: 14 Byte Ascii String
  index, order_token = asx_securities_sr8_ouch_v2_0_dissect.order_token(buffer, index, packet, parent)

  return index
end

-- Dissect: Cancel Order Message
asx_securities_sr8_ouch_v2_0_dissect.cancel_order_message = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.cancel_order_message then
    local length = asx_securities_sr8_ouch_v2_0_size_of.cancel_order_message(buffer, offset)
    local range = buffer(offset, length)
    local display = asx_securities_sr8_ouch_v2_0_display.cancel_order_message(buffer, packet, parent)
    parent = parent:add(asx_securities_sr8_ouch_v2_0.fields.cancel_order_message, range, display)
  end

  return asx_securities_sr8_ouch_v2_0_dissect.cancel_order_message_fields(buffer, offset, packet, parent)
end

-- Size: Minimum Acceptable Quantity
asx_securities_sr8_ouch_v2_0_size_of.minimum_acceptable_quantity = 8

-- Display: Minimum Acceptable Quantity
asx_securities_sr8_ouch_v2_0_display.minimum_acceptable_quantity = function(value)
  return "Minimum Acceptable Quantity: "..value
end

-- Dissect: Minimum Acceptable Quantity
asx_securities_sr8_ouch_v2_0_dissect.minimum_acceptable_quantity = function(buffer, offset, packet, parent)
  local length = asx_securities_sr8_ouch_v2_0_size_of.minimum_acceptable_quantity
  local range = buffer(offset, length)
  local value = range:uint64()
  local display = asx_securities_sr8_ouch_v2_0_display.minimum_acceptable_quantity(value, buffer, offset, packet, parent)

  parent:add(asx_securities_sr8_ouch_v2_0.fields.minimum_acceptable_quantity, range, value, display)

  return offset + length, value
end

-- Size: Short Sell Quantity
asx_securities_sr8_ouch_v2_0_size_of.short_sell_quantity = 8

-- Display: Short Sell Quantity
asx_securities_sr8_ouch_v2_0_display.short_sell_quantity = function(value)
  return "Short Sell Quantity: "..value
end

-- Dissect: Short Sell Quantity
asx_securities_sr8_ouch_v2_0_dissect.short_sell_quantity = function(buffer, offset, packet, parent)
  local length = asx_securities_sr8_ouch_v2_0_size_of.short_sell_quantity
  local range = buffer(offset, length)
  local value = range:uint64()
  local display = asx_securities_sr8_ouch_v2_0_display.short_sell_quantity(value, buffer, offset, packet, parent)

  parent:add(asx_securities_sr8_ouch_v2_0.fields.short_sell_quantity, range, value, display)

  return offset + length, value
end

-- Size: Filler
asx_securities_sr8_ouch_v2_0_size_of.filler = 8

-- Display: Filler
asx_securities_sr8_ouch_v2_0_display.filler = function(value)
  return "Filler: "..value
end

-- Dissect: Filler
asx_securities_sr8_ouch_v2_0_dissect.filler = function(buffer, offset, packet, parent)
  local length = asx_securities_sr8_ouch_v2_0_size_of.filler
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = asx_securities_sr8_ouch_v2_0_display.filler(value, buffer, offset, packet, parent)

  parent:add(asx_securities_sr8_ouch_v2_0.fields.filler, range, value, display)

  return offset + length, value
end

-- Size: Order Origin
asx_securities_sr8_ouch_v2_0_size_of.order_origin = 20

-- Display: Order Origin
asx_securities_sr8_ouch_v2_0_display.order_origin = function(value)
  return "Order Origin: "..value
end

-- Dissect: Order Origin
asx_securities_sr8_ouch_v2_0_dissect.order_origin = function(buffer, offset, packet, parent)
  local length = asx_securities_sr8_ouch_v2_0_size_of.order_origin
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = asx_securities_sr8_ouch_v2_0_display.order_origin(value, buffer, offset, packet, parent)

  parent:add(asx_securities_sr8_ouch_v2_0.fields.order_origin, range, value, display)

  return offset + length, value
end

-- Size: Intermediary Id
asx_securities_sr8_ouch_v2_0_size_of.intermediary_id = 10

-- Display: Intermediary Id
asx_securities_sr8_ouch_v2_0_display.intermediary_id = function(value)
  return "Intermediary Id: "..value
end

-- Dissect: Intermediary Id
asx_securities_sr8_ouch_v2_0_dissect.intermediary_id = function(buffer, offset, packet, parent)
  local length = asx_securities_sr8_ouch_v2_0_size_of.intermediary_id
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = asx_securities_sr8_ouch_v2_0_display.intermediary_id(value, buffer, offset, packet, parent)

  parent:add(asx_securities_sr8_ouch_v2_0.fields.intermediary_id, range, value, display)

  return offset + length, value
end

-- Size: Execution Venue
asx_securities_sr8_ouch_v2_0_size_of.execution_venue = 4

-- Display: Execution Venue
asx_securities_sr8_ouch_v2_0_display.execution_venue = function(value)
  return "Execution Venue: "..value
end

-- Dissect: Execution Venue
asx_securities_sr8_ouch_v2_0_dissect.execution_venue = function(buffer, offset, packet, parent)
  local length = asx_securities_sr8_ouch_v2_0_size_of.execution_venue
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = asx_securities_sr8_ouch_v2_0_display.execution_venue(value, buffer, offset, packet, parent)

  parent:add(asx_securities_sr8_ouch_v2_0.fields.execution_venue, range, value, display)

  return offset + length, value
end

-- Size: Directed Wholesale
asx_securities_sr8_ouch_v2_0_size_of.directed_wholesale = 1

-- Display: Directed Wholesale
asx_securities_sr8_ouch_v2_0_display.directed_wholesale = function(value)
  if value == "Y" then
    return "Directed Wholesale: True (Y)"
  end
  if value == "N" then
    return "Directed Wholesale: False Default (N)"
  end

  return "Directed Wholesale: Unknown("..value..")"
end

-- Dissect: Directed Wholesale
asx_securities_sr8_ouch_v2_0_dissect.directed_wholesale = function(buffer, offset, packet, parent)
  local length = asx_securities_sr8_ouch_v2_0_size_of.directed_wholesale
  local range = buffer(offset, length)
  local value = range:string()
  local display = asx_securities_sr8_ouch_v2_0_display.directed_wholesale(value, buffer, offset, packet, parent)

  parent:add(asx_securities_sr8_ouch_v2_0.fields.directed_wholesale, range, value, display)

  return offset + length, value
end

-- Size: Capacity Of Participant
asx_securities_sr8_ouch_v2_0_size_of.capacity_of_participant = 1

-- Display: Capacity Of Participant
asx_securities_sr8_ouch_v2_0_display.capacity_of_participant = function(value)
  if value == "A" then
    return "Capacity Of Participant: Agency (A)"
  end
  if value == "P" then
    return "Capacity Of Participant: Principal (P)"
  end
  if value == "M" then
    return "Capacity Of Participant: Mixed Agency And Principal (M)"
  end

  return "Capacity Of Participant: Unknown("..value..")"
end

-- Dissect: Capacity Of Participant
asx_securities_sr8_ouch_v2_0_dissect.capacity_of_participant = function(buffer, offset, packet, parent)
  local length = asx_securities_sr8_ouch_v2_0_size_of.capacity_of_participant
  local range = buffer(offset, length)
  local value = range:string()
  local display = asx_securities_sr8_ouch_v2_0_display.capacity_of_participant(value, buffer, offset, packet, parent)

  parent:add(asx_securities_sr8_ouch_v2_0.fields.capacity_of_participant, range, value, display)

  return offset + length, value
end

-- Size: Exchange Info
asx_securities_sr8_ouch_v2_0_size_of.exchange_info = 32

-- Display: Exchange Info
asx_securities_sr8_ouch_v2_0_display.exchange_info = function(value)
  return "Exchange Info: "..value
end

-- Dissect: Exchange Info
asx_securities_sr8_ouch_v2_0_dissect.exchange_info = function(buffer, offset, packet, parent)
  local length = asx_securities_sr8_ouch_v2_0_size_of.exchange_info
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = asx_securities_sr8_ouch_v2_0_display.exchange_info(value, buffer, offset, packet, parent)

  parent:add(asx_securities_sr8_ouch_v2_0.fields.exchange_info, range, value, display)

  return offset + length, value
end

-- Size: Customer Info
asx_securities_sr8_ouch_v2_0_size_of.customer_info = 15

-- Display: Customer Info
asx_securities_sr8_ouch_v2_0_display.customer_info = function(value)
  return "Customer Info: "..value
end

-- Dissect: Customer Info
asx_securities_sr8_ouch_v2_0_dissect.customer_info = function(buffer, offset, packet, parent)
  local length = asx_securities_sr8_ouch_v2_0_size_of.customer_info
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = asx_securities_sr8_ouch_v2_0_display.customer_info(value, buffer, offset, packet, parent)

  parent:add(asx_securities_sr8_ouch_v2_0.fields.customer_info, range, value, display)

  return offset + length, value
end

-- Size: Client Account
asx_securities_sr8_ouch_v2_0_size_of.client_account = 10

-- Display: Client Account
asx_securities_sr8_ouch_v2_0_display.client_account = function(value)
  return "Client Account: "..value
end

-- Dissect: Client Account
asx_securities_sr8_ouch_v2_0_dissect.client_account = function(buffer, offset, packet, parent)
  local length = asx_securities_sr8_ouch_v2_0_size_of.client_account
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = asx_securities_sr8_ouch_v2_0_display.client_account(value, buffer, offset, packet, parent)

  parent:add(asx_securities_sr8_ouch_v2_0.fields.client_account, range, value, display)

  return offset + length, value
end

-- Size: Open Close
asx_securities_sr8_ouch_v2_0_size_of.open_close = 1

-- Display: Open Close
asx_securities_sr8_ouch_v2_0_display.open_close = function(value)
  return "Open Close: "..value
end

-- Dissect: Open Close
asx_securities_sr8_ouch_v2_0_dissect.open_close = function(buffer, offset, packet, parent)
  local length = asx_securities_sr8_ouch_v2_0_size_of.open_close
  local range = buffer(offset, length)
  local value = range:uint()
  local display = asx_securities_sr8_ouch_v2_0_display.open_close(value, buffer, offset, packet, parent)

  parent:add(asx_securities_sr8_ouch_v2_0.fields.open_close, range, value, display)

  return offset + length, value
end

-- Size: Price
asx_securities_sr8_ouch_v2_0_size_of.price = 4

-- Display: Price
asx_securities_sr8_ouch_v2_0_display.price = function(value)
  return "Price: "..value
end

-- Translate: Price
translate.price = function(raw)
  return raw/100
end

-- Dissect: Price
asx_securities_sr8_ouch_v2_0_dissect.price = function(buffer, offset, packet, parent)
  local length = asx_securities_sr8_ouch_v2_0_size_of.price
  local range = buffer(offset, length)
  local raw = range:int()
  local value = translate.price(raw)
  local display = asx_securities_sr8_ouch_v2_0_display.price(value, buffer, offset, packet, parent)

  parent:add(asx_securities_sr8_ouch_v2_0.fields.price, range, value, display)

  return offset + length, value
end

-- Size: Quantity
asx_securities_sr8_ouch_v2_0_size_of.quantity = 8

-- Display: Quantity
asx_securities_sr8_ouch_v2_0_display.quantity = function(value)
  return "Quantity: "..value
end

-- Dissect: Quantity
asx_securities_sr8_ouch_v2_0_dissect.quantity = function(buffer, offset, packet, parent)
  local length = asx_securities_sr8_ouch_v2_0_size_of.quantity
  local range = buffer(offset, length)
  local value = range:uint64()
  local display = asx_securities_sr8_ouch_v2_0_display.quantity(value, buffer, offset, packet, parent)

  parent:add(asx_securities_sr8_ouch_v2_0.fields.quantity, range, value, display)

  return offset + length, value
end

-- Size: Replacement Order Token
asx_securities_sr8_ouch_v2_0_size_of.replacement_order_token = 14

-- Display: Replacement Order Token
asx_securities_sr8_ouch_v2_0_display.replacement_order_token = function(value)
  return "Replacement Order Token: "..value
end

-- Dissect: Replacement Order Token
asx_securities_sr8_ouch_v2_0_dissect.replacement_order_token = function(buffer, offset, packet, parent)
  local length = asx_securities_sr8_ouch_v2_0_size_of.replacement_order_token
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = asx_securities_sr8_ouch_v2_0_display.replacement_order_token(value, buffer, offset, packet, parent)

  parent:add(asx_securities_sr8_ouch_v2_0.fields.replacement_order_token, range, value, display)

  return offset + length, value
end

-- Size: Existing Order Token
asx_securities_sr8_ouch_v2_0_size_of.existing_order_token = 14

-- Display: Existing Order Token
asx_securities_sr8_ouch_v2_0_display.existing_order_token = function(value)
  return "Existing Order Token: "..value
end

-- Dissect: Existing Order Token
asx_securities_sr8_ouch_v2_0_dissect.existing_order_token = function(buffer, offset, packet, parent)
  local length = asx_securities_sr8_ouch_v2_0_size_of.existing_order_token
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = asx_securities_sr8_ouch_v2_0_display.existing_order_token(value, buffer, offset, packet, parent)

  parent:add(asx_securities_sr8_ouch_v2_0.fields.existing_order_token, range, value, display)

  return offset + length, value
end

-- Calculate size of: Replace Order Message
asx_securities_sr8_ouch_v2_0_size_of.replace_order_message = function(buffer, offset)
  local index = 0

  index = index + asx_securities_sr8_ouch_v2_0_size_of.existing_order_token

  index = index + asx_securities_sr8_ouch_v2_0_size_of.replacement_order_token

  index = index + asx_securities_sr8_ouch_v2_0_size_of.quantity

  index = index + asx_securities_sr8_ouch_v2_0_size_of.price

  index = index + asx_securities_sr8_ouch_v2_0_size_of.open_close

  index = index + asx_securities_sr8_ouch_v2_0_size_of.client_account

  index = index + asx_securities_sr8_ouch_v2_0_size_of.customer_info

  index = index + asx_securities_sr8_ouch_v2_0_size_of.exchange_info

  index = index + asx_securities_sr8_ouch_v2_0_size_of.capacity_of_participant

  index = index + asx_securities_sr8_ouch_v2_0_size_of.directed_wholesale

  index = index + asx_securities_sr8_ouch_v2_0_size_of.execution_venue

  index = index + asx_securities_sr8_ouch_v2_0_size_of.intermediary_id

  index = index + asx_securities_sr8_ouch_v2_0_size_of.order_origin

  index = index + asx_securities_sr8_ouch_v2_0_size_of.filler

  index = index + asx_securities_sr8_ouch_v2_0_size_of.short_sell_quantity

  index = index + asx_securities_sr8_ouch_v2_0_size_of.minimum_acceptable_quantity

  return index
end

-- Display: Replace Order Message
asx_securities_sr8_ouch_v2_0_display.replace_order_message = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Replace Order Message
asx_securities_sr8_ouch_v2_0_dissect.replace_order_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Existing Order Token: 14 Byte Ascii String
  index, existing_order_token = asx_securities_sr8_ouch_v2_0_dissect.existing_order_token(buffer, index, packet, parent)

  -- Replacement Order Token: 14 Byte Ascii String
  index, replacement_order_token = asx_securities_sr8_ouch_v2_0_dissect.replacement_order_token(buffer, index, packet, parent)

  -- Quantity: 8 Byte Unsigned Fixed Width Integer
  index, quantity = asx_securities_sr8_ouch_v2_0_dissect.quantity(buffer, index, packet, parent)

  -- Price: 4 Byte Signed Fixed Width Integer
  index, price = asx_securities_sr8_ouch_v2_0_dissect.price(buffer, index, packet, parent)

  -- Open Close: 1 Byte Unsigned Fixed Width Integer
  index, open_close = asx_securities_sr8_ouch_v2_0_dissect.open_close(buffer, index, packet, parent)

  -- Client Account: 10 Byte Ascii String
  index, client_account = asx_securities_sr8_ouch_v2_0_dissect.client_account(buffer, index, packet, parent)

  -- Customer Info: 15 Byte Ascii String
  index, customer_info = asx_securities_sr8_ouch_v2_0_dissect.customer_info(buffer, index, packet, parent)

  -- Exchange Info: 32 Byte Ascii String
  index, exchange_info = asx_securities_sr8_ouch_v2_0_dissect.exchange_info(buffer, index, packet, parent)

  -- Capacity Of Participant: 1 Byte Ascii String Enum with 3 values
  index, capacity_of_participant = asx_securities_sr8_ouch_v2_0_dissect.capacity_of_participant(buffer, index, packet, parent)

  -- Directed Wholesale: 1 Byte Ascii String Enum with 2 values
  index, directed_wholesale = asx_securities_sr8_ouch_v2_0_dissect.directed_wholesale(buffer, index, packet, parent)

  -- Execution Venue: 4 Byte Ascii String
  index, execution_venue = asx_securities_sr8_ouch_v2_0_dissect.execution_venue(buffer, index, packet, parent)

  -- Intermediary Id: 10 Byte Ascii String
  index, intermediary_id = asx_securities_sr8_ouch_v2_0_dissect.intermediary_id(buffer, index, packet, parent)

  -- Order Origin: 20 Byte Ascii String
  index, order_origin = asx_securities_sr8_ouch_v2_0_dissect.order_origin(buffer, index, packet, parent)

  -- Filler: 8 Byte Ascii String
  index, filler = asx_securities_sr8_ouch_v2_0_dissect.filler(buffer, index, packet, parent)

  -- Short Sell Quantity: 8 Byte Unsigned Fixed Width Integer
  index, short_sell_quantity = asx_securities_sr8_ouch_v2_0_dissect.short_sell_quantity(buffer, index, packet, parent)

  -- Minimum Acceptable Quantity: 8 Byte Unsigned Fixed Width Integer
  index, minimum_acceptable_quantity = asx_securities_sr8_ouch_v2_0_dissect.minimum_acceptable_quantity(buffer, index, packet, parent)

  return index
end

-- Dissect: Replace Order Message
asx_securities_sr8_ouch_v2_0_dissect.replace_order_message = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.replace_order_message then
    local length = asx_securities_sr8_ouch_v2_0_size_of.replace_order_message(buffer, offset)
    local range = buffer(offset, length)
    local display = asx_securities_sr8_ouch_v2_0_display.replace_order_message(buffer, packet, parent)
    parent = parent:add(asx_securities_sr8_ouch_v2_0.fields.replace_order_message, range, display)
  end

  return asx_securities_sr8_ouch_v2_0_dissect.replace_order_message_fields(buffer, offset, packet, parent)
end

-- Size: Ouch Order Type
asx_securities_sr8_ouch_v2_0_size_of.ouch_order_type = 1

-- Display: Ouch Order Type
asx_securities_sr8_ouch_v2_0_display.ouch_order_type = function(value)
  if value == "Y" then
    return "Ouch Order Type: Limit Order (Y)"
  end
  if value == "N" then
    return "Ouch Order Type: Centre Point Order (N)"
  end
  if value == "D" then
    return "Ouch Order Type: Centre Point Order (D)"
  end
  if value == "S" then
    return "Ouch Order Type: Sweep Order (S)"
  end
  if value == "P" then
    return "Ouch Order Type: Dualposted Sweep Order (P)"
  end
  if value == "B" then
    return "Ouch Order Type: Centre Point Block Order With Single Fill Maq (B)"
  end
  if value == "F" then
    return "Ouch Order Type: Centre Point Order With Single Fill Maq (F)"
  end
  if value == "T = Limit Sweep order (can be dual-posted if entered price is at half-tick) with single fill MAQ" then
    return "Ouch Order Type: Limit Sweep Order With Single Fill Maq (T = Limit Sweep order (can be dual-posted if entered price is at half-tick) with single fill MAQ)"
  end
  if value == "C" then
    return "Ouch Order Type: Any Price Block Order (C)"
  end
  if value == "E" then
    return "Ouch Order Type: Any Price Block Order With Single Fill Maq (E)"
  end

  return "Ouch Order Type: Unknown("..value..")"
end

-- Dissect: Ouch Order Type
asx_securities_sr8_ouch_v2_0_dissect.ouch_order_type = function(buffer, offset, packet, parent)
  local length = asx_securities_sr8_ouch_v2_0_size_of.ouch_order_type
  local range = buffer(offset, length)
  local value = range:string()
  local display = asx_securities_sr8_ouch_v2_0_display.ouch_order_type(value, buffer, offset, packet, parent)

  parent:add(asx_securities_sr8_ouch_v2_0.fields.ouch_order_type, range, value, display)

  return offset + length, value
end

-- Size: Crossing Key
asx_securities_sr8_ouch_v2_0_size_of.crossing_key = 4

-- Display: Crossing Key
asx_securities_sr8_ouch_v2_0_display.crossing_key = function(value)
  return "Crossing Key: "..value
end

-- Dissect: Crossing Key
asx_securities_sr8_ouch_v2_0_dissect.crossing_key = function(buffer, offset, packet, parent)
  local length = asx_securities_sr8_ouch_v2_0_size_of.crossing_key
  local range = buffer(offset, length)
  local value = range:uint()
  local display = asx_securities_sr8_ouch_v2_0_display.crossing_key(value, buffer, offset, packet, parent)

  parent:add(asx_securities_sr8_ouch_v2_0.fields.crossing_key, range, value, display)

  return offset + length, value
end

-- Size: Clearing Participant
asx_securities_sr8_ouch_v2_0_size_of.clearing_participant = 1

-- Display: Clearing Participant
asx_securities_sr8_ouch_v2_0_display.clearing_participant = function(value)
  return "Clearing Participant: "..value
end

-- Dissect: Clearing Participant
asx_securities_sr8_ouch_v2_0_dissect.clearing_participant = function(buffer, offset, packet, parent)
  local length = asx_securities_sr8_ouch_v2_0_size_of.clearing_participant
  local range = buffer(offset, length)
  local value = range:string()
  local display = asx_securities_sr8_ouch_v2_0_display.clearing_participant(value, buffer, offset, packet, parent)

  parent:add(asx_securities_sr8_ouch_v2_0.fields.clearing_participant, range, value, display)

  return offset + length, value
end

-- Size: Time In Force
asx_securities_sr8_ouch_v2_0_size_of.time_in_force = 1

-- Display: Time In Force
asx_securities_sr8_ouch_v2_0_display.time_in_force = function(value)
  if value == 0 then
    return "Time In Force: Day (0)"
  end
  if value == 3 then
    return "Time In Force: Fill And Kill (3)"
  end
  if value == 4 then
    return "Time In Force: Fill Or Kill (4)"
  end

  return "Time In Force: Unknown("..value..")"
end

-- Dissect: Time In Force
asx_securities_sr8_ouch_v2_0_dissect.time_in_force = function(buffer, offset, packet, parent)
  local length = asx_securities_sr8_ouch_v2_0_size_of.time_in_force
  local range = buffer(offset, length)
  local value = range:uint()
  local display = asx_securities_sr8_ouch_v2_0_display.time_in_force(value, buffer, offset, packet, parent)

  parent:add(asx_securities_sr8_ouch_v2_0.fields.time_in_force, range, value, display)

  return offset + length, value
end

-- Calculate size of: Enter Order Message
asx_securities_sr8_ouch_v2_0_size_of.enter_order_message = function(buffer, offset)
  local index = 0

  index = index + asx_securities_sr8_ouch_v2_0_size_of.order_token

  index = index + asx_securities_sr8_ouch_v2_0_size_of.order_book_id

  index = index + asx_securities_sr8_ouch_v2_0_size_of.side

  index = index + asx_securities_sr8_ouch_v2_0_size_of.quantity

  index = index + asx_securities_sr8_ouch_v2_0_size_of.price

  index = index + asx_securities_sr8_ouch_v2_0_size_of.time_in_force

  index = index + asx_securities_sr8_ouch_v2_0_size_of.open_close

  index = index + asx_securities_sr8_ouch_v2_0_size_of.client_account

  index = index + asx_securities_sr8_ouch_v2_0_size_of.customer_info

  index = index + asx_securities_sr8_ouch_v2_0_size_of.exchange_info

  index = index + asx_securities_sr8_ouch_v2_0_size_of.clearing_participant

  index = index + asx_securities_sr8_ouch_v2_0_size_of.crossing_key

  index = index + asx_securities_sr8_ouch_v2_0_size_of.capacity_of_participant

  index = index + asx_securities_sr8_ouch_v2_0_size_of.directed_wholesale

  index = index + asx_securities_sr8_ouch_v2_0_size_of.execution_venue

  index = index + asx_securities_sr8_ouch_v2_0_size_of.intermediary_id

  index = index + asx_securities_sr8_ouch_v2_0_size_of.order_origin

  index = index + asx_securities_sr8_ouch_v2_0_size_of.filler

  index = index + asx_securities_sr8_ouch_v2_0_size_of.ouch_order_type

  index = index + asx_securities_sr8_ouch_v2_0_size_of.short_sell_quantity

  index = index + asx_securities_sr8_ouch_v2_0_size_of.minimum_acceptable_quantity

  return index
end

-- Display: Enter Order Message
asx_securities_sr8_ouch_v2_0_display.enter_order_message = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Enter Order Message
asx_securities_sr8_ouch_v2_0_dissect.enter_order_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Order Token: 14 Byte Ascii String
  index, order_token = asx_securities_sr8_ouch_v2_0_dissect.order_token(buffer, index, packet, parent)

  -- Order Book Id: 4 Byte Unsigned Fixed Width Integer
  index, order_book_id = asx_securities_sr8_ouch_v2_0_dissect.order_book_id(buffer, index, packet, parent)

  -- Side: 1 Byte Ascii String Enum with 4 values
  index, side = asx_securities_sr8_ouch_v2_0_dissect.side(buffer, index, packet, parent)

  -- Quantity: 8 Byte Unsigned Fixed Width Integer
  index, quantity = asx_securities_sr8_ouch_v2_0_dissect.quantity(buffer, index, packet, parent)

  -- Price: 4 Byte Signed Fixed Width Integer
  index, price = asx_securities_sr8_ouch_v2_0_dissect.price(buffer, index, packet, parent)

  -- Time In Force: 1 Byte Unsigned Fixed Width Integer Enum with 3 values
  index, time_in_force = asx_securities_sr8_ouch_v2_0_dissect.time_in_force(buffer, index, packet, parent)

  -- Open Close: 1 Byte Unsigned Fixed Width Integer
  index, open_close = asx_securities_sr8_ouch_v2_0_dissect.open_close(buffer, index, packet, parent)

  -- Client Account: 10 Byte Ascii String
  index, client_account = asx_securities_sr8_ouch_v2_0_dissect.client_account(buffer, index, packet, parent)

  -- Customer Info: 15 Byte Ascii String
  index, customer_info = asx_securities_sr8_ouch_v2_0_dissect.customer_info(buffer, index, packet, parent)

  -- Exchange Info: 32 Byte Ascii String
  index, exchange_info = asx_securities_sr8_ouch_v2_0_dissect.exchange_info(buffer, index, packet, parent)

  -- Clearing Participant: 1 Byte Ascii String
  index, clearing_participant = asx_securities_sr8_ouch_v2_0_dissect.clearing_participant(buffer, index, packet, parent)

  -- Crossing Key: 4 Byte Unsigned Fixed Width Integer
  index, crossing_key = asx_securities_sr8_ouch_v2_0_dissect.crossing_key(buffer, index, packet, parent)

  -- Capacity Of Participant: 1 Byte Ascii String Enum with 3 values
  index, capacity_of_participant = asx_securities_sr8_ouch_v2_0_dissect.capacity_of_participant(buffer, index, packet, parent)

  -- Directed Wholesale: 1 Byte Ascii String Enum with 2 values
  index, directed_wholesale = asx_securities_sr8_ouch_v2_0_dissect.directed_wholesale(buffer, index, packet, parent)

  -- Execution Venue: 4 Byte Ascii String
  index, execution_venue = asx_securities_sr8_ouch_v2_0_dissect.execution_venue(buffer, index, packet, parent)

  -- Intermediary Id: 10 Byte Ascii String
  index, intermediary_id = asx_securities_sr8_ouch_v2_0_dissect.intermediary_id(buffer, index, packet, parent)

  -- Order Origin: 20 Byte Ascii String
  index, order_origin = asx_securities_sr8_ouch_v2_0_dissect.order_origin(buffer, index, packet, parent)

  -- Filler: 8 Byte Ascii String
  index, filler = asx_securities_sr8_ouch_v2_0_dissect.filler(buffer, index, packet, parent)

  -- Ouch Order Type: 1 Byte Ascii String Enum with 10 values
  index, ouch_order_type = asx_securities_sr8_ouch_v2_0_dissect.ouch_order_type(buffer, index, packet, parent)

  -- Short Sell Quantity: 8 Byte Unsigned Fixed Width Integer
  index, short_sell_quantity = asx_securities_sr8_ouch_v2_0_dissect.short_sell_quantity(buffer, index, packet, parent)

  -- Minimum Acceptable Quantity: 8 Byte Unsigned Fixed Width Integer
  index, minimum_acceptable_quantity = asx_securities_sr8_ouch_v2_0_dissect.minimum_acceptable_quantity(buffer, index, packet, parent)

  return index
end

-- Dissect: Enter Order Message
asx_securities_sr8_ouch_v2_0_dissect.enter_order_message = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.enter_order_message then
    local length = asx_securities_sr8_ouch_v2_0_size_of.enter_order_message(buffer, offset)
    local range = buffer(offset, length)
    local display = asx_securities_sr8_ouch_v2_0_display.enter_order_message(buffer, packet, parent)
    parent = parent:add(asx_securities_sr8_ouch_v2_0.fields.enter_order_message, range, display)
  end

  return asx_securities_sr8_ouch_v2_0_dissect.enter_order_message_fields(buffer, offset, packet, parent)
end

-- Calculate runtime size of: Unsequenced Message
asx_securities_sr8_ouch_v2_0_size_of.unsequenced_message = function(buffer, offset, unsequenced_message_type)
  -- Size of Enter Order Message
  if unsequenced_message_type == "O" then
    return asx_securities_sr8_ouch_v2_0_size_of.enter_order_message(buffer, offset)
  end
  -- Size of Replace Order Message
  if unsequenced_message_type == "U" then
    return asx_securities_sr8_ouch_v2_0_size_of.replace_order_message(buffer, offset)
  end
  -- Size of Cancel Order Message
  if unsequenced_message_type == "X" then
    return asx_securities_sr8_ouch_v2_0_size_of.cancel_order_message(buffer, offset)
  end
  -- Size of Cancel By Order Id Message
  if unsequenced_message_type == "Y" then
    return asx_securities_sr8_ouch_v2_0_size_of.cancel_by_order_id_message(buffer, offset)
  end

  return 0
end

-- Display: Unsequenced Message
asx_securities_sr8_ouch_v2_0_display.unsequenced_message = function(buffer, offset, packet, parent)
  return ""
end

-- Dissect Branches: Unsequenced Message
asx_securities_sr8_ouch_v2_0_dissect.unsequenced_message_branches = function(buffer, offset, packet, parent, unsequenced_message_type)
  -- Dissect Enter Order Message
  if unsequenced_message_type == "O" then
    return asx_securities_sr8_ouch_v2_0_dissect.enter_order_message(buffer, offset, packet, parent)
  end
  -- Dissect Replace Order Message
  if unsequenced_message_type == "U" then
    return asx_securities_sr8_ouch_v2_0_dissect.replace_order_message(buffer, offset, packet, parent)
  end
  -- Dissect Cancel Order Message
  if unsequenced_message_type == "X" then
    return asx_securities_sr8_ouch_v2_0_dissect.cancel_order_message(buffer, offset, packet, parent)
  end
  -- Dissect Cancel By Order Id Message
  if unsequenced_message_type == "Y" then
    return asx_securities_sr8_ouch_v2_0_dissect.cancel_by_order_id_message(buffer, offset, packet, parent)
  end

  return offset
end

-- Dissect: Unsequenced Message
asx_securities_sr8_ouch_v2_0_dissect.unsequenced_message = function(buffer, offset, packet, parent, unsequenced_message_type)
  if not show.unsequenced_message then
    return asx_securities_sr8_ouch_v2_0_dissect.unsequenced_message_branches(buffer, offset, packet, parent, unsequenced_message_type)
  end

  -- Calculate size and check that branch is not empty
  local size = asx_securities_sr8_ouch_v2_0_size_of.unsequenced_message(buffer, offset, unsequenced_message_type)
  if size == 0 then
    return offset
  end

  -- Dissect Element
  local range = buffer(offset, size)
  local display = asx_securities_sr8_ouch_v2_0_display.unsequenced_message(buffer, packet, parent)
  local element = parent:add(asx_securities_sr8_ouch_v2_0.fields.unsequenced_message, range, display)

  return asx_securities_sr8_ouch_v2_0_dissect.unsequenced_message_branches(buffer, offset, packet, parent, unsequenced_message_type)
end

-- Size: Unsequenced Message Type
asx_securities_sr8_ouch_v2_0_size_of.unsequenced_message_type = 1

-- Display: Unsequenced Message Type
asx_securities_sr8_ouch_v2_0_display.unsequenced_message_type = function(value)
  if value == "O" then
    return "Unsequenced Message Type: Enter Order Message (O)"
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

  return "Unsequenced Message Type: Unknown("..value..")"
end

-- Dissect: Unsequenced Message Type
asx_securities_sr8_ouch_v2_0_dissect.unsequenced_message_type = function(buffer, offset, packet, parent)
  local length = asx_securities_sr8_ouch_v2_0_size_of.unsequenced_message_type
  local range = buffer(offset, length)
  local value = range:string()
  local display = asx_securities_sr8_ouch_v2_0_display.unsequenced_message_type(value, buffer, offset, packet, parent)

  parent:add(asx_securities_sr8_ouch_v2_0.fields.unsequenced_message_type, range, value, display)

  return offset + length, value
end

-- Display: Unsequenced Data Packet
asx_securities_sr8_ouch_v2_0_display.unsequenced_data_packet = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Unsequenced Data Packet
asx_securities_sr8_ouch_v2_0_dissect.unsequenced_data_packet_fields = function(buffer, offset, packet, parent, size_of_unsequenced_data_packet)
  local index = offset

  -- Unsequenced Message Type: 1 Byte Ascii String Enum with 4 values
  index, unsequenced_message_type = asx_securities_sr8_ouch_v2_0_dissect.unsequenced_message_type(buffer, index, packet, parent)

  -- Unsequenced Message: Runtime Type with 4 branches
  index = asx_securities_sr8_ouch_v2_0_dissect.unsequenced_message(buffer, index, packet, parent, unsequenced_message_type)

  return index
end

-- Dissect: Unsequenced Data Packet
asx_securities_sr8_ouch_v2_0_dissect.unsequenced_data_packet = function(buffer, offset, packet, parent)
  local index = offset

  -- Dependency element: Packet Length
  local packet_length = buffer(offset - 3, 2):uint()

  -- Parse runtime struct size
  local size_of_unsequenced_data_packet = packet_length - 1

  -- Optionally add struct element to protocol tree
  if show.unsequenced_data_packet then
    local range = buffer(offset, size_of_unsequenced_data_packet)
    local display = asx_securities_sr8_ouch_v2_0_display.unsequenced_data_packet(buffer, packet, parent)
    parent = parent:add(asx_securities_sr8_ouch_v2_0.fields.unsequenced_data_packet, range, display)
  end

  asx_securities_sr8_ouch_v2_0_dissect.unsequenced_data_packet_fields(buffer, offset, packet, parent, size_of_unsequenced_data_packet)

  return offset + size_of_unsequenced_data_packet
end

-- Size: Requested Sequence Number
asx_securities_sr8_ouch_v2_0_size_of.requested_sequence_number = 20

-- Display: Requested Sequence Number
asx_securities_sr8_ouch_v2_0_display.requested_sequence_number = function(value)
  return "Requested Sequence Number: "..value
end

-- Dissect: Requested Sequence Number
asx_securities_sr8_ouch_v2_0_dissect.requested_sequence_number = function(buffer, offset, packet, parent)
  local length = asx_securities_sr8_ouch_v2_0_size_of.requested_sequence_number
  local range = buffer(offset, length)
  local value = range:string()
  local display = asx_securities_sr8_ouch_v2_0_display.requested_sequence_number(value, buffer, offset, packet, parent)

  parent:add(asx_securities_sr8_ouch_v2_0.fields.requested_sequence_number, range, value, display)

  return offset + length, value
end

-- Size: Requested Session
asx_securities_sr8_ouch_v2_0_size_of.requested_session = 10

-- Display: Requested Session
asx_securities_sr8_ouch_v2_0_display.requested_session = function(value)
  return "Requested Session: "..value
end

-- Dissect: Requested Session
asx_securities_sr8_ouch_v2_0_dissect.requested_session = function(buffer, offset, packet, parent)
  local length = asx_securities_sr8_ouch_v2_0_size_of.requested_session
  local range = buffer(offset, length)
  local value = range:string()
  local display = asx_securities_sr8_ouch_v2_0_display.requested_session(value, buffer, offset, packet, parent)

  parent:add(asx_securities_sr8_ouch_v2_0.fields.requested_session, range, value, display)

  return offset + length, value
end

-- Size: Password
asx_securities_sr8_ouch_v2_0_size_of.password = 10

-- Display: Password
asx_securities_sr8_ouch_v2_0_display.password = function(value)
  return "Password: "..value
end

-- Dissect: Password
asx_securities_sr8_ouch_v2_0_dissect.password = function(buffer, offset, packet, parent)
  local length = asx_securities_sr8_ouch_v2_0_size_of.password
  local range = buffer(offset, length)
  local value = range:string()
  local display = asx_securities_sr8_ouch_v2_0_display.password(value, buffer, offset, packet, parent)

  parent:add(asx_securities_sr8_ouch_v2_0.fields.password, range, value, display)

  return offset + length, value
end

-- Size: Username
asx_securities_sr8_ouch_v2_0_size_of.username = 6

-- Display: Username
asx_securities_sr8_ouch_v2_0_display.username = function(value)
  return "Username: "..value
end

-- Dissect: Username
asx_securities_sr8_ouch_v2_0_dissect.username = function(buffer, offset, packet, parent)
  local length = asx_securities_sr8_ouch_v2_0_size_of.username
  local range = buffer(offset, length)
  local value = range:string()
  local display = asx_securities_sr8_ouch_v2_0_display.username(value, buffer, offset, packet, parent)

  parent:add(asx_securities_sr8_ouch_v2_0.fields.username, range, value, display)

  return offset + length, value
end

-- Calculate size of: Login Request Packet
asx_securities_sr8_ouch_v2_0_size_of.login_request_packet = function(buffer, offset)
  local index = 0

  index = index + asx_securities_sr8_ouch_v2_0_size_of.username

  index = index + asx_securities_sr8_ouch_v2_0_size_of.password

  index = index + asx_securities_sr8_ouch_v2_0_size_of.requested_session

  index = index + asx_securities_sr8_ouch_v2_0_size_of.requested_sequence_number

  return index
end

-- Display: Login Request Packet
asx_securities_sr8_ouch_v2_0_display.login_request_packet = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Login Request Packet
asx_securities_sr8_ouch_v2_0_dissect.login_request_packet_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Username: 6 Byte Ascii String
  index, username = asx_securities_sr8_ouch_v2_0_dissect.username(buffer, index, packet, parent)

  -- Password: 10 Byte Ascii String
  index, password = asx_securities_sr8_ouch_v2_0_dissect.password(buffer, index, packet, parent)

  -- Requested Session: 10 Byte Ascii String
  index, requested_session = asx_securities_sr8_ouch_v2_0_dissect.requested_session(buffer, index, packet, parent)

  -- Requested Sequence Number: 20 Byte Ascii String
  index, requested_sequence_number = asx_securities_sr8_ouch_v2_0_dissect.requested_sequence_number(buffer, index, packet, parent)

  return index
end

-- Dissect: Login Request Packet
asx_securities_sr8_ouch_v2_0_dissect.login_request_packet = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.login_request_packet then
    local length = asx_securities_sr8_ouch_v2_0_size_of.login_request_packet(buffer, offset)
    local range = buffer(offset, length)
    local display = asx_securities_sr8_ouch_v2_0_display.login_request_packet(buffer, packet, parent)
    parent = parent:add(asx_securities_sr8_ouch_v2_0.fields.login_request_packet, range, display)
  end

  return asx_securities_sr8_ouch_v2_0_dissect.login_request_packet_fields(buffer, offset, packet, parent)
end

-- Size: Match Attributes
asx_securities_sr8_ouch_v2_0_size_of.match_attributes = 1

-- Display: Match Attributes
asx_securities_sr8_ouch_v2_0_display.match_attributes = function(value)
  return "Match Attributes: "..value
end

-- Dissect: Match Attributes
asx_securities_sr8_ouch_v2_0_dissect.match_attributes = function(buffer, offset, packet, parent)
  local length = asx_securities_sr8_ouch_v2_0_size_of.match_attributes
  local range = buffer(offset, length)
  local value = range:uint()
  local display = asx_securities_sr8_ouch_v2_0_display.match_attributes(value, buffer, offset, packet, parent)

  parent:add(asx_securities_sr8_ouch_v2_0.fields.match_attributes, range, value, display)

  return offset + length, value
end

-- Size: Deal Source
asx_securities_sr8_ouch_v2_0_size_of.deal_source = 2

-- Display: Deal Source
asx_securities_sr8_ouch_v2_0_display.deal_source = function(value)
  return "Deal Source: "..value
end

-- Dissect: Deal Source
asx_securities_sr8_ouch_v2_0_dissect.deal_source = function(buffer, offset, packet, parent)
  local length = asx_securities_sr8_ouch_v2_0_size_of.deal_source
  local range = buffer(offset, length)
  local value = range:uint()
  local display = asx_securities_sr8_ouch_v2_0_display.deal_source(value, buffer, offset, packet, parent)

  parent:add(asx_securities_sr8_ouch_v2_0.fields.deal_source, range, value, display)

  return offset + length, value
end

-- Size: Match Id
asx_securities_sr8_ouch_v2_0_size_of.match_id = 12

-- Display: Match Id
asx_securities_sr8_ouch_v2_0_display.match_id = function(value)
  return "Match Id: "..value
end

-- Dissect: Match Id
asx_securities_sr8_ouch_v2_0_dissect.match_id = function(buffer, offset, packet, parent)
  local length = asx_securities_sr8_ouch_v2_0_size_of.match_id
  local range = buffer(offset, length)
  local value = range:bytes():tohex(false, " ")
  local display = asx_securities_sr8_ouch_v2_0_display.match_id(value, buffer, offset, packet, parent)

  parent:add(asx_securities_sr8_ouch_v2_0.fields.match_id, range, value, display)

  return offset + length, value
end

-- Size: Trade Price
asx_securities_sr8_ouch_v2_0_size_of.trade_price = 4

-- Display: Trade Price
asx_securities_sr8_ouch_v2_0_display.trade_price = function(value)
  return "Trade Price: "..value
end

-- Translate: Trade Price
translate.trade_price = function(raw)
  return raw/100
end

-- Dissect: Trade Price
asx_securities_sr8_ouch_v2_0_dissect.trade_price = function(buffer, offset, packet, parent)
  local length = asx_securities_sr8_ouch_v2_0_size_of.trade_price
  local range = buffer(offset, length)
  local raw = range:int()
  local value = translate.trade_price(raw)
  local display = asx_securities_sr8_ouch_v2_0_display.trade_price(value, buffer, offset, packet, parent)

  parent:add(asx_securities_sr8_ouch_v2_0.fields.trade_price, range, value, display)

  return offset + length, value
end

-- Size: Traded Quantity
asx_securities_sr8_ouch_v2_0_size_of.traded_quantity = 8

-- Display: Traded Quantity
asx_securities_sr8_ouch_v2_0_display.traded_quantity = function(value)
  return "Traded Quantity: "..value
end

-- Dissect: Traded Quantity
asx_securities_sr8_ouch_v2_0_dissect.traded_quantity = function(buffer, offset, packet, parent)
  local length = asx_securities_sr8_ouch_v2_0_size_of.traded_quantity
  local range = buffer(offset, length)
  local value = range:uint64()
  local display = asx_securities_sr8_ouch_v2_0_display.traded_quantity(value, buffer, offset, packet, parent)

  parent:add(asx_securities_sr8_ouch_v2_0.fields.traded_quantity, range, value, display)

  return offset + length, value
end

-- Size: Timestamp Nanoseconds
asx_securities_sr8_ouch_v2_0_size_of.timestamp_nanoseconds = 8

-- Display: Timestamp Nanoseconds
asx_securities_sr8_ouch_v2_0_display.timestamp_nanoseconds = function(value)
  return "Timestamp Nanoseconds: "..value
end

-- Dissect: Timestamp Nanoseconds
asx_securities_sr8_ouch_v2_0_dissect.timestamp_nanoseconds = function(buffer, offset, packet, parent)
  local length = asx_securities_sr8_ouch_v2_0_size_of.timestamp_nanoseconds
  local range = buffer(offset, length)
  local value = range:uint64()
  local display = asx_securities_sr8_ouch_v2_0_display.timestamp_nanoseconds(value, buffer, offset, packet, parent)

  parent:add(asx_securities_sr8_ouch_v2_0.fields.timestamp_nanoseconds, range, value, display)

  return offset + length, value
end

-- Calculate size of: Order Executed Message
asx_securities_sr8_ouch_v2_0_size_of.order_executed_message = function(buffer, offset)
  local index = 0

  index = index + asx_securities_sr8_ouch_v2_0_size_of.timestamp_nanoseconds

  index = index + asx_securities_sr8_ouch_v2_0_size_of.order_token

  index = index + asx_securities_sr8_ouch_v2_0_size_of.order_book_id

  index = index + asx_securities_sr8_ouch_v2_0_size_of.traded_quantity

  index = index + asx_securities_sr8_ouch_v2_0_size_of.trade_price

  index = index + asx_securities_sr8_ouch_v2_0_size_of.match_id

  index = index + asx_securities_sr8_ouch_v2_0_size_of.deal_source

  index = index + asx_securities_sr8_ouch_v2_0_size_of.match_attributes

  return index
end

-- Display: Order Executed Message
asx_securities_sr8_ouch_v2_0_display.order_executed_message = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Order Executed Message
asx_securities_sr8_ouch_v2_0_dissect.order_executed_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Timestamp Nanoseconds: 8 Byte Unsigned Fixed Width Integer
  index, timestamp_nanoseconds = asx_securities_sr8_ouch_v2_0_dissect.timestamp_nanoseconds(buffer, index, packet, parent)

  -- Order Token: 14 Byte Ascii String
  index, order_token = asx_securities_sr8_ouch_v2_0_dissect.order_token(buffer, index, packet, parent)

  -- Order Book Id: 4 Byte Unsigned Fixed Width Integer
  index, order_book_id = asx_securities_sr8_ouch_v2_0_dissect.order_book_id(buffer, index, packet, parent)

  -- Traded Quantity: 8 Byte Unsigned Fixed Width Integer
  index, traded_quantity = asx_securities_sr8_ouch_v2_0_dissect.traded_quantity(buffer, index, packet, parent)

  -- Trade Price: 4 Byte Signed Fixed Width Integer
  index, trade_price = asx_securities_sr8_ouch_v2_0_dissect.trade_price(buffer, index, packet, parent)

  -- Match Id: 12 Byte Unsigned Fixed Width Integer
  index, match_id = asx_securities_sr8_ouch_v2_0_dissect.match_id(buffer, index, packet, parent)

  -- Deal Source: 2 Byte Unsigned Fixed Width Integer
  index, deal_source = asx_securities_sr8_ouch_v2_0_dissect.deal_source(buffer, index, packet, parent)

  -- Match Attributes: 1 Byte Unsigned Fixed Width Integer
  index, match_attributes = asx_securities_sr8_ouch_v2_0_dissect.match_attributes(buffer, index, packet, parent)

  return index
end

-- Dissect: Order Executed Message
asx_securities_sr8_ouch_v2_0_dissect.order_executed_message = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.order_executed_message then
    local length = asx_securities_sr8_ouch_v2_0_size_of.order_executed_message(buffer, offset)
    local range = buffer(offset, length)
    local display = asx_securities_sr8_ouch_v2_0_display.order_executed_message(buffer, packet, parent)
    parent = parent:add(asx_securities_sr8_ouch_v2_0.fields.order_executed_message, range, display)
  end

  return asx_securities_sr8_ouch_v2_0_dissect.order_executed_message_fields(buffer, offset, packet, parent)
end

-- Size: Reason
asx_securities_sr8_ouch_v2_0_size_of.reason = 1

-- Display: Reason
asx_securities_sr8_ouch_v2_0_display.reason = function(value)
  if value == 1 then
    return "Reason: Cancelled By User (1)"
  end
  if value == 4 then
    return "Reason: Order Inactivated Due To Connection Loss (4)"
  end
  if value == 9 then
    return "Reason: Fill And Kill Order That Was Deleted In An Auction (9)"
  end
  if value == 10 then
    return "Reason: Order Deleted By Asx On Behalf Of The Customer (10)"
  end
  if value == 20 then
    return "Reason: Deleted By System Due To Instrument Session Change (20)"
  end
  if value == 21 then
    return "Reason: Inactivated By System Due To Instrument Session Change (21)"
  end
  if value == 24 then
    return "Reason: Inactivated Day Order (24)"
  end

  return "Reason: Unknown("..value..")"
end

-- Dissect: Reason
asx_securities_sr8_ouch_v2_0_dissect.reason = function(buffer, offset, packet, parent)
  local length = asx_securities_sr8_ouch_v2_0_size_of.reason
  local range = buffer(offset, length)
  local value = range:uint()
  local display = asx_securities_sr8_ouch_v2_0_display.reason(value, buffer, offset, packet, parent)

  parent:add(asx_securities_sr8_ouch_v2_0.fields.reason, range, value, display)

  return offset + length, value
end

-- Calculate size of: Order Cancelled Message
asx_securities_sr8_ouch_v2_0_size_of.order_cancelled_message = function(buffer, offset)
  local index = 0

  index = index + asx_securities_sr8_ouch_v2_0_size_of.timestamp_nanoseconds

  index = index + asx_securities_sr8_ouch_v2_0_size_of.order_token

  index = index + asx_securities_sr8_ouch_v2_0_size_of.order_book_id

  index = index + asx_securities_sr8_ouch_v2_0_size_of.side

  index = index + asx_securities_sr8_ouch_v2_0_size_of.order_id

  index = index + asx_securities_sr8_ouch_v2_0_size_of.reason

  return index
end

-- Display: Order Cancelled Message
asx_securities_sr8_ouch_v2_0_display.order_cancelled_message = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Order Cancelled Message
asx_securities_sr8_ouch_v2_0_dissect.order_cancelled_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Timestamp Nanoseconds: 8 Byte Unsigned Fixed Width Integer
  index, timestamp_nanoseconds = asx_securities_sr8_ouch_v2_0_dissect.timestamp_nanoseconds(buffer, index, packet, parent)

  -- Order Token: 14 Byte Ascii String
  index, order_token = asx_securities_sr8_ouch_v2_0_dissect.order_token(buffer, index, packet, parent)

  -- Order Book Id: 4 Byte Unsigned Fixed Width Integer
  index, order_book_id = asx_securities_sr8_ouch_v2_0_dissect.order_book_id(buffer, index, packet, parent)

  -- Side: 1 Byte Ascii String Enum with 4 values
  index, side = asx_securities_sr8_ouch_v2_0_dissect.side(buffer, index, packet, parent)

  -- Order Id: 8 Byte Unsigned Fixed Width Integer
  index, order_id = asx_securities_sr8_ouch_v2_0_dissect.order_id(buffer, index, packet, parent)

  -- Reason: 1 Byte Unsigned Fixed Width Integer Enum with 7 values
  index, reason = asx_securities_sr8_ouch_v2_0_dissect.reason(buffer, index, packet, parent)

  return index
end

-- Dissect: Order Cancelled Message
asx_securities_sr8_ouch_v2_0_dissect.order_cancelled_message = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.order_cancelled_message then
    local length = asx_securities_sr8_ouch_v2_0_size_of.order_cancelled_message(buffer, offset)
    local range = buffer(offset, length)
    local display = asx_securities_sr8_ouch_v2_0_display.order_cancelled_message(buffer, packet, parent)
    parent = parent:add(asx_securities_sr8_ouch_v2_0.fields.order_cancelled_message, range, display)
  end

  return asx_securities_sr8_ouch_v2_0_dissect.order_cancelled_message_fields(buffer, offset, packet, parent)
end

-- Size: Order State
asx_securities_sr8_ouch_v2_0_size_of.order_state = 1

-- Display: Order State
asx_securities_sr8_ouch_v2_0_display.order_state = function(value)
  if value == 1 then
    return "Order State: On Book (1)"
  end
  if value == 2 then
    return "Order State: Not On Book (2)"
  end
  if value == 99 then
    return "Order State: Ouch Ownership Lost (99)"
  end

  return "Order State: Unknown("..value..")"
end

-- Dissect: Order State
asx_securities_sr8_ouch_v2_0_dissect.order_state = function(buffer, offset, packet, parent)
  local length = asx_securities_sr8_ouch_v2_0_size_of.order_state
  local range = buffer(offset, length)
  local value = range:uint()
  local display = asx_securities_sr8_ouch_v2_0_display.order_state(value, buffer, offset, packet, parent)

  parent:add(asx_securities_sr8_ouch_v2_0.fields.order_state, range, value, display)

  return offset + length, value
end

-- Size: Previous Order Token
asx_securities_sr8_ouch_v2_0_size_of.previous_order_token = 14

-- Display: Previous Order Token
asx_securities_sr8_ouch_v2_0_display.previous_order_token = function(value)
  return "Previous Order Token: "..value
end

-- Dissect: Previous Order Token
asx_securities_sr8_ouch_v2_0_dissect.previous_order_token = function(buffer, offset, packet, parent)
  local length = asx_securities_sr8_ouch_v2_0_size_of.previous_order_token
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = asx_securities_sr8_ouch_v2_0_display.previous_order_token(value, buffer, offset, packet, parent)

  parent:add(asx_securities_sr8_ouch_v2_0.fields.previous_order_token, range, value, display)

  return offset + length, value
end

-- Calculate size of: Order Replaced Message
asx_securities_sr8_ouch_v2_0_size_of.order_replaced_message = function(buffer, offset)
  local index = 0

  index = index + asx_securities_sr8_ouch_v2_0_size_of.timestamp_nanoseconds

  index = index + asx_securities_sr8_ouch_v2_0_size_of.replacement_order_token

  index = index + asx_securities_sr8_ouch_v2_0_size_of.previous_order_token

  index = index + asx_securities_sr8_ouch_v2_0_size_of.order_book_id

  index = index + asx_securities_sr8_ouch_v2_0_size_of.side

  index = index + asx_securities_sr8_ouch_v2_0_size_of.order_id

  index = index + asx_securities_sr8_ouch_v2_0_size_of.quantity

  index = index + asx_securities_sr8_ouch_v2_0_size_of.price

  index = index + asx_securities_sr8_ouch_v2_0_size_of.time_in_force

  index = index + asx_securities_sr8_ouch_v2_0_size_of.open_close

  index = index + asx_securities_sr8_ouch_v2_0_size_of.client_account

  index = index + asx_securities_sr8_ouch_v2_0_size_of.order_state

  index = index + asx_securities_sr8_ouch_v2_0_size_of.customer_info

  index = index + asx_securities_sr8_ouch_v2_0_size_of.exchange_info

  index = index + asx_securities_sr8_ouch_v2_0_size_of.clearing_participant

  index = index + asx_securities_sr8_ouch_v2_0_size_of.crossing_key

  index = index + asx_securities_sr8_ouch_v2_0_size_of.capacity_of_participant

  index = index + asx_securities_sr8_ouch_v2_0_size_of.directed_wholesale

  index = index + asx_securities_sr8_ouch_v2_0_size_of.execution_venue

  index = index + asx_securities_sr8_ouch_v2_0_size_of.intermediary_id

  index = index + asx_securities_sr8_ouch_v2_0_size_of.order_origin

  index = index + asx_securities_sr8_ouch_v2_0_size_of.filler

  index = index + asx_securities_sr8_ouch_v2_0_size_of.ouch_order_type

  index = index + asx_securities_sr8_ouch_v2_0_size_of.short_sell_quantity

  index = index + asx_securities_sr8_ouch_v2_0_size_of.minimum_acceptable_quantity

  return index
end

-- Display: Order Replaced Message
asx_securities_sr8_ouch_v2_0_display.order_replaced_message = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Order Replaced Message
asx_securities_sr8_ouch_v2_0_dissect.order_replaced_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Timestamp Nanoseconds: 8 Byte Unsigned Fixed Width Integer
  index, timestamp_nanoseconds = asx_securities_sr8_ouch_v2_0_dissect.timestamp_nanoseconds(buffer, index, packet, parent)

  -- Replacement Order Token: 14 Byte Ascii String
  index, replacement_order_token = asx_securities_sr8_ouch_v2_0_dissect.replacement_order_token(buffer, index, packet, parent)

  -- Previous Order Token: 14 Byte Ascii String
  index, previous_order_token = asx_securities_sr8_ouch_v2_0_dissect.previous_order_token(buffer, index, packet, parent)

  -- Order Book Id: 4 Byte Unsigned Fixed Width Integer
  index, order_book_id = asx_securities_sr8_ouch_v2_0_dissect.order_book_id(buffer, index, packet, parent)

  -- Side: 1 Byte Ascii String Enum with 4 values
  index, side = asx_securities_sr8_ouch_v2_0_dissect.side(buffer, index, packet, parent)

  -- Order Id: 8 Byte Unsigned Fixed Width Integer
  index, order_id = asx_securities_sr8_ouch_v2_0_dissect.order_id(buffer, index, packet, parent)

  -- Quantity: 8 Byte Unsigned Fixed Width Integer
  index, quantity = asx_securities_sr8_ouch_v2_0_dissect.quantity(buffer, index, packet, parent)

  -- Price: 4 Byte Signed Fixed Width Integer
  index, price = asx_securities_sr8_ouch_v2_0_dissect.price(buffer, index, packet, parent)

  -- Time In Force: 1 Byte Unsigned Fixed Width Integer Enum with 3 values
  index, time_in_force = asx_securities_sr8_ouch_v2_0_dissect.time_in_force(buffer, index, packet, parent)

  -- Open Close: 1 Byte Unsigned Fixed Width Integer
  index, open_close = asx_securities_sr8_ouch_v2_0_dissect.open_close(buffer, index, packet, parent)

  -- Client Account: 10 Byte Ascii String
  index, client_account = asx_securities_sr8_ouch_v2_0_dissect.client_account(buffer, index, packet, parent)

  -- Order State: 1 Byte Unsigned Fixed Width Integer Enum with 3 values
  index, order_state = asx_securities_sr8_ouch_v2_0_dissect.order_state(buffer, index, packet, parent)

  -- Customer Info: 15 Byte Ascii String
  index, customer_info = asx_securities_sr8_ouch_v2_0_dissect.customer_info(buffer, index, packet, parent)

  -- Exchange Info: 32 Byte Ascii String
  index, exchange_info = asx_securities_sr8_ouch_v2_0_dissect.exchange_info(buffer, index, packet, parent)

  -- Clearing Participant: 1 Byte Ascii String
  index, clearing_participant = asx_securities_sr8_ouch_v2_0_dissect.clearing_participant(buffer, index, packet, parent)

  -- Crossing Key: 4 Byte Unsigned Fixed Width Integer
  index, crossing_key = asx_securities_sr8_ouch_v2_0_dissect.crossing_key(buffer, index, packet, parent)

  -- Capacity Of Participant: 1 Byte Ascii String Enum with 3 values
  index, capacity_of_participant = asx_securities_sr8_ouch_v2_0_dissect.capacity_of_participant(buffer, index, packet, parent)

  -- Directed Wholesale: 1 Byte Ascii String Enum with 2 values
  index, directed_wholesale = asx_securities_sr8_ouch_v2_0_dissect.directed_wholesale(buffer, index, packet, parent)

  -- Execution Venue: 4 Byte Ascii String
  index, execution_venue = asx_securities_sr8_ouch_v2_0_dissect.execution_venue(buffer, index, packet, parent)

  -- Intermediary Id: 10 Byte Ascii String
  index, intermediary_id = asx_securities_sr8_ouch_v2_0_dissect.intermediary_id(buffer, index, packet, parent)

  -- Order Origin: 20 Byte Ascii String
  index, order_origin = asx_securities_sr8_ouch_v2_0_dissect.order_origin(buffer, index, packet, parent)

  -- Filler: 8 Byte Ascii String
  index, filler = asx_securities_sr8_ouch_v2_0_dissect.filler(buffer, index, packet, parent)

  -- Ouch Order Type: 1 Byte Ascii String Enum with 10 values
  index, ouch_order_type = asx_securities_sr8_ouch_v2_0_dissect.ouch_order_type(buffer, index, packet, parent)

  -- Short Sell Quantity: 8 Byte Unsigned Fixed Width Integer
  index, short_sell_quantity = asx_securities_sr8_ouch_v2_0_dissect.short_sell_quantity(buffer, index, packet, parent)

  -- Minimum Acceptable Quantity: 8 Byte Unsigned Fixed Width Integer
  index, minimum_acceptable_quantity = asx_securities_sr8_ouch_v2_0_dissect.minimum_acceptable_quantity(buffer, index, packet, parent)

  return index
end

-- Dissect: Order Replaced Message
asx_securities_sr8_ouch_v2_0_dissect.order_replaced_message = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.order_replaced_message then
    local length = asx_securities_sr8_ouch_v2_0_size_of.order_replaced_message(buffer, offset)
    local range = buffer(offset, length)
    local display = asx_securities_sr8_ouch_v2_0_display.order_replaced_message(buffer, packet, parent)
    parent = parent:add(asx_securities_sr8_ouch_v2_0.fields.order_replaced_message, range, display)
  end

  return asx_securities_sr8_ouch_v2_0_dissect.order_replaced_message_fields(buffer, offset, packet, parent)
end

-- Size: Reject Code
asx_securities_sr8_ouch_v2_0_size_of.reject_code = 4

-- Display: Reject Code
asx_securities_sr8_ouch_v2_0_display.reject_code = function(value)
  return "Reject Code: "..value
end

-- Dissect: Reject Code
asx_securities_sr8_ouch_v2_0_dissect.reject_code = function(buffer, offset, packet, parent)
  local length = asx_securities_sr8_ouch_v2_0_size_of.reject_code
  local range = buffer(offset, length)
  local value = range:uint()
  local display = asx_securities_sr8_ouch_v2_0_display.reject_code(value, buffer, offset, packet, parent)

  parent:add(asx_securities_sr8_ouch_v2_0.fields.reject_code, range, value, display)

  return offset + length, value
end

-- Calculate size of: Order Rejected Message
asx_securities_sr8_ouch_v2_0_size_of.order_rejected_message = function(buffer, offset)
  local index = 0

  index = index + asx_securities_sr8_ouch_v2_0_size_of.timestamp_nanoseconds

  index = index + asx_securities_sr8_ouch_v2_0_size_of.order_token

  index = index + asx_securities_sr8_ouch_v2_0_size_of.reject_code

  return index
end

-- Display: Order Rejected Message
asx_securities_sr8_ouch_v2_0_display.order_rejected_message = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Order Rejected Message
asx_securities_sr8_ouch_v2_0_dissect.order_rejected_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Timestamp Nanoseconds: 8 Byte Unsigned Fixed Width Integer
  index, timestamp_nanoseconds = asx_securities_sr8_ouch_v2_0_dissect.timestamp_nanoseconds(buffer, index, packet, parent)

  -- Order Token: 14 Byte Ascii String
  index, order_token = asx_securities_sr8_ouch_v2_0_dissect.order_token(buffer, index, packet, parent)

  -- Reject Code: 4 Byte Unsigned Fixed Width Integer
  index, reject_code = asx_securities_sr8_ouch_v2_0_dissect.reject_code(buffer, index, packet, parent)

  return index
end

-- Dissect: Order Rejected Message
asx_securities_sr8_ouch_v2_0_dissect.order_rejected_message = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.order_rejected_message then
    local length = asx_securities_sr8_ouch_v2_0_size_of.order_rejected_message(buffer, offset)
    local range = buffer(offset, length)
    local display = asx_securities_sr8_ouch_v2_0_display.order_rejected_message(buffer, packet, parent)
    parent = parent:add(asx_securities_sr8_ouch_v2_0.fields.order_rejected_message, range, display)
  end

  return asx_securities_sr8_ouch_v2_0_dissect.order_rejected_message_fields(buffer, offset, packet, parent)
end

-- Calculate size of: Order Accepted Message
asx_securities_sr8_ouch_v2_0_size_of.order_accepted_message = function(buffer, offset)
  local index = 0

  index = index + asx_securities_sr8_ouch_v2_0_size_of.timestamp_nanoseconds

  index = index + asx_securities_sr8_ouch_v2_0_size_of.order_token

  index = index + asx_securities_sr8_ouch_v2_0_size_of.order_book_id

  index = index + asx_securities_sr8_ouch_v2_0_size_of.side

  index = index + asx_securities_sr8_ouch_v2_0_size_of.order_id

  index = index + asx_securities_sr8_ouch_v2_0_size_of.quantity

  index = index + asx_securities_sr8_ouch_v2_0_size_of.price

  index = index + asx_securities_sr8_ouch_v2_0_size_of.time_in_force

  index = index + asx_securities_sr8_ouch_v2_0_size_of.open_close

  index = index + asx_securities_sr8_ouch_v2_0_size_of.client_account

  index = index + asx_securities_sr8_ouch_v2_0_size_of.order_state

  index = index + asx_securities_sr8_ouch_v2_0_size_of.customer_info

  index = index + asx_securities_sr8_ouch_v2_0_size_of.exchange_info

  index = index + asx_securities_sr8_ouch_v2_0_size_of.clearing_participant

  index = index + asx_securities_sr8_ouch_v2_0_size_of.crossing_key

  index = index + asx_securities_sr8_ouch_v2_0_size_of.capacity_of_participant

  index = index + asx_securities_sr8_ouch_v2_0_size_of.directed_wholesale

  index = index + asx_securities_sr8_ouch_v2_0_size_of.execution_venue

  index = index + asx_securities_sr8_ouch_v2_0_size_of.intermediary_id

  index = index + asx_securities_sr8_ouch_v2_0_size_of.order_origin

  index = index + asx_securities_sr8_ouch_v2_0_size_of.filler

  index = index + asx_securities_sr8_ouch_v2_0_size_of.ouch_order_type

  index = index + asx_securities_sr8_ouch_v2_0_size_of.short_sell_quantity

  index = index + asx_securities_sr8_ouch_v2_0_size_of.minimum_acceptable_quantity

  return index
end

-- Display: Order Accepted Message
asx_securities_sr8_ouch_v2_0_display.order_accepted_message = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Order Accepted Message
asx_securities_sr8_ouch_v2_0_dissect.order_accepted_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Timestamp Nanoseconds: 8 Byte Unsigned Fixed Width Integer
  index, timestamp_nanoseconds = asx_securities_sr8_ouch_v2_0_dissect.timestamp_nanoseconds(buffer, index, packet, parent)

  -- Order Token: 14 Byte Ascii String
  index, order_token = asx_securities_sr8_ouch_v2_0_dissect.order_token(buffer, index, packet, parent)

  -- Order Book Id: 4 Byte Unsigned Fixed Width Integer
  index, order_book_id = asx_securities_sr8_ouch_v2_0_dissect.order_book_id(buffer, index, packet, parent)

  -- Side: 1 Byte Ascii String Enum with 4 values
  index, side = asx_securities_sr8_ouch_v2_0_dissect.side(buffer, index, packet, parent)

  -- Order Id: 8 Byte Unsigned Fixed Width Integer
  index, order_id = asx_securities_sr8_ouch_v2_0_dissect.order_id(buffer, index, packet, parent)

  -- Quantity: 8 Byte Unsigned Fixed Width Integer
  index, quantity = asx_securities_sr8_ouch_v2_0_dissect.quantity(buffer, index, packet, parent)

  -- Price: 4 Byte Signed Fixed Width Integer
  index, price = asx_securities_sr8_ouch_v2_0_dissect.price(buffer, index, packet, parent)

  -- Time In Force: 1 Byte Unsigned Fixed Width Integer Enum with 3 values
  index, time_in_force = asx_securities_sr8_ouch_v2_0_dissect.time_in_force(buffer, index, packet, parent)

  -- Open Close: 1 Byte Unsigned Fixed Width Integer
  index, open_close = asx_securities_sr8_ouch_v2_0_dissect.open_close(buffer, index, packet, parent)

  -- Client Account: 10 Byte Ascii String
  index, client_account = asx_securities_sr8_ouch_v2_0_dissect.client_account(buffer, index, packet, parent)

  -- Order State: 1 Byte Unsigned Fixed Width Integer Enum with 3 values
  index, order_state = asx_securities_sr8_ouch_v2_0_dissect.order_state(buffer, index, packet, parent)

  -- Customer Info: 15 Byte Ascii String
  index, customer_info = asx_securities_sr8_ouch_v2_0_dissect.customer_info(buffer, index, packet, parent)

  -- Exchange Info: 32 Byte Ascii String
  index, exchange_info = asx_securities_sr8_ouch_v2_0_dissect.exchange_info(buffer, index, packet, parent)

  -- Clearing Participant: 1 Byte Ascii String
  index, clearing_participant = asx_securities_sr8_ouch_v2_0_dissect.clearing_participant(buffer, index, packet, parent)

  -- Crossing Key: 4 Byte Unsigned Fixed Width Integer
  index, crossing_key = asx_securities_sr8_ouch_v2_0_dissect.crossing_key(buffer, index, packet, parent)

  -- Capacity Of Participant: 1 Byte Ascii String Enum with 3 values
  index, capacity_of_participant = asx_securities_sr8_ouch_v2_0_dissect.capacity_of_participant(buffer, index, packet, parent)

  -- Directed Wholesale: 1 Byte Ascii String Enum with 2 values
  index, directed_wholesale = asx_securities_sr8_ouch_v2_0_dissect.directed_wholesale(buffer, index, packet, parent)

  -- Execution Venue: 4 Byte Ascii String
  index, execution_venue = asx_securities_sr8_ouch_v2_0_dissect.execution_venue(buffer, index, packet, parent)

  -- Intermediary Id: 10 Byte Ascii String
  index, intermediary_id = asx_securities_sr8_ouch_v2_0_dissect.intermediary_id(buffer, index, packet, parent)

  -- Order Origin: 20 Byte Ascii String
  index, order_origin = asx_securities_sr8_ouch_v2_0_dissect.order_origin(buffer, index, packet, parent)

  -- Filler: 8 Byte Ascii String
  index, filler = asx_securities_sr8_ouch_v2_0_dissect.filler(buffer, index, packet, parent)

  -- Ouch Order Type: 1 Byte Ascii String Enum with 10 values
  index, ouch_order_type = asx_securities_sr8_ouch_v2_0_dissect.ouch_order_type(buffer, index, packet, parent)

  -- Short Sell Quantity: 8 Byte Unsigned Fixed Width Integer
  index, short_sell_quantity = asx_securities_sr8_ouch_v2_0_dissect.short_sell_quantity(buffer, index, packet, parent)

  -- Minimum Acceptable Quantity: 8 Byte Unsigned Fixed Width Integer
  index, minimum_acceptable_quantity = asx_securities_sr8_ouch_v2_0_dissect.minimum_acceptable_quantity(buffer, index, packet, parent)

  return index
end

-- Dissect: Order Accepted Message
asx_securities_sr8_ouch_v2_0_dissect.order_accepted_message = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.order_accepted_message then
    local length = asx_securities_sr8_ouch_v2_0_size_of.order_accepted_message(buffer, offset)
    local range = buffer(offset, length)
    local display = asx_securities_sr8_ouch_v2_0_display.order_accepted_message(buffer, packet, parent)
    parent = parent:add(asx_securities_sr8_ouch_v2_0.fields.order_accepted_message, range, display)
  end

  return asx_securities_sr8_ouch_v2_0_dissect.order_accepted_message_fields(buffer, offset, packet, parent)
end

-- Calculate runtime size of: Sequenced Message
asx_securities_sr8_ouch_v2_0_size_of.sequenced_message = function(buffer, offset, sequenced_message_type)
  -- Size of Order Accepted Message
  if sequenced_message_type == "A" then
    return asx_securities_sr8_ouch_v2_0_size_of.order_accepted_message(buffer, offset)
  end
  -- Size of Order Rejected Message
  if sequenced_message_type == "J" then
    return asx_securities_sr8_ouch_v2_0_size_of.order_rejected_message(buffer, offset)
  end
  -- Size of Order Replaced Message
  if sequenced_message_type == "U" then
    return asx_securities_sr8_ouch_v2_0_size_of.order_replaced_message(buffer, offset)
  end
  -- Size of Order Cancelled Message
  if sequenced_message_type == "C" then
    return asx_securities_sr8_ouch_v2_0_size_of.order_cancelled_message(buffer, offset)
  end
  -- Size of Order Executed Message
  if sequenced_message_type == "E" then
    return asx_securities_sr8_ouch_v2_0_size_of.order_executed_message(buffer, offset)
  end

  return 0
end

-- Display: Sequenced Message
asx_securities_sr8_ouch_v2_0_display.sequenced_message = function(buffer, offset, packet, parent)
  return ""
end

-- Dissect Branches: Sequenced Message
asx_securities_sr8_ouch_v2_0_dissect.sequenced_message_branches = function(buffer, offset, packet, parent, sequenced_message_type)
  -- Dissect Order Accepted Message
  if sequenced_message_type == "A" then
    return asx_securities_sr8_ouch_v2_0_dissect.order_accepted_message(buffer, offset, packet, parent)
  end
  -- Dissect Order Rejected Message
  if sequenced_message_type == "J" then
    return asx_securities_sr8_ouch_v2_0_dissect.order_rejected_message(buffer, offset, packet, parent)
  end
  -- Dissect Order Replaced Message
  if sequenced_message_type == "U" then
    return asx_securities_sr8_ouch_v2_0_dissect.order_replaced_message(buffer, offset, packet, parent)
  end
  -- Dissect Order Cancelled Message
  if sequenced_message_type == "C" then
    return asx_securities_sr8_ouch_v2_0_dissect.order_cancelled_message(buffer, offset, packet, parent)
  end
  -- Dissect Order Executed Message
  if sequenced_message_type == "E" then
    return asx_securities_sr8_ouch_v2_0_dissect.order_executed_message(buffer, offset, packet, parent)
  end

  return offset
end

-- Dissect: Sequenced Message
asx_securities_sr8_ouch_v2_0_dissect.sequenced_message = function(buffer, offset, packet, parent, sequenced_message_type)
  if not show.sequenced_message then
    return asx_securities_sr8_ouch_v2_0_dissect.sequenced_message_branches(buffer, offset, packet, parent, sequenced_message_type)
  end

  -- Calculate size and check that branch is not empty
  local size = asx_securities_sr8_ouch_v2_0_size_of.sequenced_message(buffer, offset, sequenced_message_type)
  if size == 0 then
    return offset
  end

  -- Dissect Element
  local range = buffer(offset, size)
  local display = asx_securities_sr8_ouch_v2_0_display.sequenced_message(buffer, packet, parent)
  local element = parent:add(asx_securities_sr8_ouch_v2_0.fields.sequenced_message, range, display)

  return asx_securities_sr8_ouch_v2_0_dissect.sequenced_message_branches(buffer, offset, packet, parent, sequenced_message_type)
end

-- Size: Sequenced Message Type
asx_securities_sr8_ouch_v2_0_size_of.sequenced_message_type = 1

-- Display: Sequenced Message Type
asx_securities_sr8_ouch_v2_0_display.sequenced_message_type = function(value)
  if value == "A" then
    return "Sequenced Message Type: Order Accepted Message (A)"
  end
  if value == "J" then
    return "Sequenced Message Type: Order Rejected Message (J)"
  end
  if value == "U" then
    return "Sequenced Message Type: Order Replaced Message (U)"
  end
  if value == "C" then
    return "Sequenced Message Type: Order Cancelled Message (C)"
  end
  if value == "E" then
    return "Sequenced Message Type: Order Executed Message (E)"
  end

  return "Sequenced Message Type: Unknown("..value..")"
end

-- Dissect: Sequenced Message Type
asx_securities_sr8_ouch_v2_0_dissect.sequenced_message_type = function(buffer, offset, packet, parent)
  local length = asx_securities_sr8_ouch_v2_0_size_of.sequenced_message_type
  local range = buffer(offset, length)
  local value = range:string()
  local display = asx_securities_sr8_ouch_v2_0_display.sequenced_message_type(value, buffer, offset, packet, parent)

  parent:add(asx_securities_sr8_ouch_v2_0.fields.sequenced_message_type, range, value, display)

  return offset + length, value
end

-- Display: Sequenced Data Packet
asx_securities_sr8_ouch_v2_0_display.sequenced_data_packet = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Sequenced Data Packet
asx_securities_sr8_ouch_v2_0_dissect.sequenced_data_packet_fields = function(buffer, offset, packet, parent, size_of_sequenced_data_packet)
  local index = offset

  -- Sequenced Message Type: 1 Byte Ascii String Enum with 5 values
  index, sequenced_message_type = asx_securities_sr8_ouch_v2_0_dissect.sequenced_message_type(buffer, index, packet, parent)

  -- Sequenced Message: Runtime Type with 5 branches
  index = asx_securities_sr8_ouch_v2_0_dissect.sequenced_message(buffer, index, packet, parent, sequenced_message_type)

  return index
end

-- Dissect: Sequenced Data Packet
asx_securities_sr8_ouch_v2_0_dissect.sequenced_data_packet = function(buffer, offset, packet, parent)
  local index = offset

  -- Dependency element: Packet Length
  local packet_length = buffer(offset - 3, 2):uint()

  -- Parse runtime struct size
  local size_of_sequenced_data_packet = packet_length - 1

  -- Optionally add struct element to protocol tree
  if show.sequenced_data_packet then
    local range = buffer(offset, size_of_sequenced_data_packet)
    local display = asx_securities_sr8_ouch_v2_0_display.sequenced_data_packet(buffer, packet, parent)
    parent = parent:add(asx_securities_sr8_ouch_v2_0.fields.sequenced_data_packet, range, display)
  end

  asx_securities_sr8_ouch_v2_0_dissect.sequenced_data_packet_fields(buffer, offset, packet, parent, size_of_sequenced_data_packet)

  return offset + size_of_sequenced_data_packet
end

-- Size: Reject Reason Code
asx_securities_sr8_ouch_v2_0_size_of.reject_reason_code = 1

-- Display: Reject Reason Code
asx_securities_sr8_ouch_v2_0_display.reject_reason_code = function(value)
  return "Reject Reason Code: "..value
end

-- Dissect: Reject Reason Code
asx_securities_sr8_ouch_v2_0_dissect.reject_reason_code = function(buffer, offset, packet, parent)
  local length = asx_securities_sr8_ouch_v2_0_size_of.reject_reason_code
  local range = buffer(offset, length)
  local value = range:string()
  local display = asx_securities_sr8_ouch_v2_0_display.reject_reason_code(value, buffer, offset, packet, parent)

  parent:add(asx_securities_sr8_ouch_v2_0.fields.reject_reason_code, range, value, display)

  return offset + length, value
end

-- Calculate size of: Login Rejected Packet
asx_securities_sr8_ouch_v2_0_size_of.login_rejected_packet = function(buffer, offset)
  local index = 0

  index = index + asx_securities_sr8_ouch_v2_0_size_of.reject_reason_code

  return index
end

-- Display: Login Rejected Packet
asx_securities_sr8_ouch_v2_0_display.login_rejected_packet = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Login Rejected Packet
asx_securities_sr8_ouch_v2_0_dissect.login_rejected_packet_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Reject Reason Code: 1 Byte Ascii String
  index, reject_reason_code = asx_securities_sr8_ouch_v2_0_dissect.reject_reason_code(buffer, index, packet, parent)

  return index
end

-- Dissect: Login Rejected Packet
asx_securities_sr8_ouch_v2_0_dissect.login_rejected_packet = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.login_rejected_packet then
    local length = asx_securities_sr8_ouch_v2_0_size_of.login_rejected_packet(buffer, offset)
    local range = buffer(offset, length)
    local display = asx_securities_sr8_ouch_v2_0_display.login_rejected_packet(buffer, packet, parent)
    parent = parent:add(asx_securities_sr8_ouch_v2_0.fields.login_rejected_packet, range, display)
  end

  return asx_securities_sr8_ouch_v2_0_dissect.login_rejected_packet_fields(buffer, offset, packet, parent)
end

-- Size: Sequence Number
asx_securities_sr8_ouch_v2_0_size_of.sequence_number = 20

-- Display: Sequence Number
asx_securities_sr8_ouch_v2_0_display.sequence_number = function(value)
  return "Sequence Number: "..value
end

-- Dissect: Sequence Number
asx_securities_sr8_ouch_v2_0_dissect.sequence_number = function(buffer, offset, packet, parent)
  local length = asx_securities_sr8_ouch_v2_0_size_of.sequence_number
  local range = buffer(offset, length)
  local value = range:string()
  local display = asx_securities_sr8_ouch_v2_0_display.sequence_number(value, buffer, offset, packet, parent)

  parent:add(asx_securities_sr8_ouch_v2_0.fields.sequence_number, range, value, display)

  return offset + length, value
end

-- Size: Session
asx_securities_sr8_ouch_v2_0_size_of.session = 10

-- Display: Session
asx_securities_sr8_ouch_v2_0_display.session = function(value)
  return "Session: "..value
end

-- Dissect: Session
asx_securities_sr8_ouch_v2_0_dissect.session = function(buffer, offset, packet, parent)
  local length = asx_securities_sr8_ouch_v2_0_size_of.session
  local range = buffer(offset, length)
  local value = range:string()
  local display = asx_securities_sr8_ouch_v2_0_display.session(value, buffer, offset, packet, parent)

  parent:add(asx_securities_sr8_ouch_v2_0.fields.session, range, value, display)

  return offset + length, value
end

-- Calculate size of: Login Accepted Packet
asx_securities_sr8_ouch_v2_0_size_of.login_accepted_packet = function(buffer, offset)
  local index = 0

  index = index + asx_securities_sr8_ouch_v2_0_size_of.session

  index = index + asx_securities_sr8_ouch_v2_0_size_of.sequence_number

  return index
end

-- Display: Login Accepted Packet
asx_securities_sr8_ouch_v2_0_display.login_accepted_packet = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Login Accepted Packet
asx_securities_sr8_ouch_v2_0_dissect.login_accepted_packet_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Session: 10 Byte Ascii String
  index, session = asx_securities_sr8_ouch_v2_0_dissect.session(buffer, index, packet, parent)

  -- Sequence Number: 20 Byte Ascii String
  index, sequence_number = asx_securities_sr8_ouch_v2_0_dissect.sequence_number(buffer, index, packet, parent)

  return index
end

-- Dissect: Login Accepted Packet
asx_securities_sr8_ouch_v2_0_dissect.login_accepted_packet = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.login_accepted_packet then
    local length = asx_securities_sr8_ouch_v2_0_size_of.login_accepted_packet(buffer, offset)
    local range = buffer(offset, length)
    local display = asx_securities_sr8_ouch_v2_0_display.login_accepted_packet(buffer, packet, parent)
    parent = parent:add(asx_securities_sr8_ouch_v2_0.fields.login_accepted_packet, range, display)
  end

  return asx_securities_sr8_ouch_v2_0_dissect.login_accepted_packet_fields(buffer, offset, packet, parent)
end

-- Size: Text
asx_securities_sr8_ouch_v2_0_size_of.text = 1

-- Display: Text
asx_securities_sr8_ouch_v2_0_display.text = function(value)
  return "Text: "..value
end

-- Dissect: Text
asx_securities_sr8_ouch_v2_0_dissect.text = function(buffer, offset, packet, parent)
  local length = asx_securities_sr8_ouch_v2_0_size_of.text
  local range = buffer(offset, length)
  local value = range:string()
  local display = asx_securities_sr8_ouch_v2_0_display.text(value, buffer, offset, packet, parent)

  parent:add(asx_securities_sr8_ouch_v2_0.fields.text, range, value, display)

  return offset + length, value
end

-- Calculate size of: Debug Packet
asx_securities_sr8_ouch_v2_0_size_of.debug_packet = function(buffer, offset)
  local index = 0

  index = index + asx_securities_sr8_ouch_v2_0_size_of.text

  return index
end

-- Display: Debug Packet
asx_securities_sr8_ouch_v2_0_display.debug_packet = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Debug Packet
asx_securities_sr8_ouch_v2_0_dissect.debug_packet_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Text: 1 Byte Ascii String
  index, text = asx_securities_sr8_ouch_v2_0_dissect.text(buffer, index, packet, parent)

  return index
end

-- Dissect: Debug Packet
asx_securities_sr8_ouch_v2_0_dissect.debug_packet = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.debug_packet then
    local length = asx_securities_sr8_ouch_v2_0_size_of.debug_packet(buffer, offset)
    local range = buffer(offset, length)
    local display = asx_securities_sr8_ouch_v2_0_display.debug_packet(buffer, packet, parent)
    parent = parent:add(asx_securities_sr8_ouch_v2_0.fields.debug_packet, range, display)
  end

  return asx_securities_sr8_ouch_v2_0_dissect.debug_packet_fields(buffer, offset, packet, parent)
end

-- Calculate runtime size of: Payload
asx_securities_sr8_ouch_v2_0_size_of.payload = function(buffer, offset, packet_type)
  -- Size of Debug Packet
  if packet_type == "+" then
    return asx_securities_sr8_ouch_v2_0_size_of.debug_packet(buffer, offset)
  end
  -- Size of Login Accepted Packet
  if packet_type == "A" then
    return asx_securities_sr8_ouch_v2_0_size_of.login_accepted_packet(buffer, offset)
  end
  -- Size of Login Rejected Packet
  if packet_type == "J" then
    return asx_securities_sr8_ouch_v2_0_size_of.login_rejected_packet(buffer, offset)
  end
  -- Size of Sequenced Data Packet
  if packet_type == "S" then
    return asx_securities_sr8_ouch_v2_0_size_of.sequenced_data_packet(buffer, offset)
  end
  -- Size of Login Request Packet
  if packet_type == "L" then
    return asx_securities_sr8_ouch_v2_0_size_of.login_request_packet(buffer, offset)
  end
  -- Size of Unsequenced Data Packet
  if packet_type == "U" then
    return asx_securities_sr8_ouch_v2_0_size_of.unsequenced_data_packet(buffer, offset)
  end

  return 0
end

-- Display: Payload
asx_securities_sr8_ouch_v2_0_display.payload = function(buffer, offset, packet, parent)
  return ""
end

-- Dissect Branches: Payload
asx_securities_sr8_ouch_v2_0_dissect.payload_branches = function(buffer, offset, packet, parent, packet_type)
  -- Dissect Debug Packet
  if packet_type == "+" then
    return asx_securities_sr8_ouch_v2_0_dissect.debug_packet(buffer, offset, packet, parent)
  end
  -- Dissect Login Accepted Packet
  if packet_type == "A" then
    return asx_securities_sr8_ouch_v2_0_dissect.login_accepted_packet(buffer, offset, packet, parent)
  end
  -- Dissect Login Rejected Packet
  if packet_type == "J" then
    return asx_securities_sr8_ouch_v2_0_dissect.login_rejected_packet(buffer, offset, packet, parent)
  end
  -- Dissect Sequenced Data Packet
  if packet_type == "S" then
    return asx_securities_sr8_ouch_v2_0_dissect.sequenced_data_packet(buffer, offset, packet, parent)
  end
  -- Dissect Login Request Packet
  if packet_type == "L" then
    return asx_securities_sr8_ouch_v2_0_dissect.login_request_packet(buffer, offset, packet, parent)
  end
  -- Dissect Unsequenced Data Packet
  if packet_type == "U" then
    return asx_securities_sr8_ouch_v2_0_dissect.unsequenced_data_packet(buffer, offset, packet, parent)
  end

  return offset
end

-- Dissect: Payload
asx_securities_sr8_ouch_v2_0_dissect.payload = function(buffer, offset, packet, parent, packet_type)
  if not show.payload then
    return asx_securities_sr8_ouch_v2_0_dissect.payload_branches(buffer, offset, packet, parent, packet_type)
  end

  -- Calculate size and check that branch is not empty
  local size = asx_securities_sr8_ouch_v2_0_size_of.payload(buffer, offset, packet_type)
  if size == 0 then
    return offset
  end

  -- Dissect Element
  local range = buffer(offset, size)
  local display = asx_securities_sr8_ouch_v2_0_display.payload(buffer, packet, parent)
  local element = parent:add(asx_securities_sr8_ouch_v2_0.fields.payload, range, display)

  return asx_securities_sr8_ouch_v2_0_dissect.payload_branches(buffer, offset, packet, parent, packet_type)
end

-- Size: Packet Type
asx_securities_sr8_ouch_v2_0_size_of.packet_type = 1

-- Display: Packet Type
asx_securities_sr8_ouch_v2_0_display.packet_type = function(value)
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
asx_securities_sr8_ouch_v2_0_dissect.packet_type = function(buffer, offset, packet, parent)
  local length = asx_securities_sr8_ouch_v2_0_size_of.packet_type
  local range = buffer(offset, length)
  local value = range:string()
  local display = asx_securities_sr8_ouch_v2_0_display.packet_type(value, buffer, offset, packet, parent)

  parent:add(asx_securities_sr8_ouch_v2_0.fields.packet_type, range, value, display)

  return offset + length, value
end

-- Size: Packet Length
asx_securities_sr8_ouch_v2_0_size_of.packet_length = 2

-- Display: Packet Length
asx_securities_sr8_ouch_v2_0_display.packet_length = function(value)
  return "Packet Length: "..value
end

-- Dissect: Packet Length
asx_securities_sr8_ouch_v2_0_dissect.packet_length = function(buffer, offset, packet, parent)
  local length = asx_securities_sr8_ouch_v2_0_size_of.packet_length
  local range = buffer(offset, length)
  local value = range:uint()
  local display = asx_securities_sr8_ouch_v2_0_display.packet_length(value, buffer, offset, packet, parent)

  parent:add(asx_securities_sr8_ouch_v2_0.fields.packet_length, range, value, display)

  return offset + length, value
end

-- Calculate size of: Packet Header
asx_securities_sr8_ouch_v2_0_size_of.packet_header = function(buffer, offset)
  local index = 0

  index = index + asx_securities_sr8_ouch_v2_0_size_of.packet_length

  index = index + asx_securities_sr8_ouch_v2_0_size_of.packet_type

  return index
end

-- Display: Packet Header
asx_securities_sr8_ouch_v2_0_display.packet_header = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Packet Header
asx_securities_sr8_ouch_v2_0_dissect.packet_header_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Packet Length: 2 Byte Unsigned Fixed Width Integer
  index, packet_length = asx_securities_sr8_ouch_v2_0_dissect.packet_length(buffer, index, packet, parent)

  -- Packet Type: 1 Byte Ascii String Enum with 10 values
  index, packet_type = asx_securities_sr8_ouch_v2_0_dissect.packet_type(buffer, index, packet, parent)

  return index
end

-- Dissect: Packet Header
asx_securities_sr8_ouch_v2_0_dissect.packet_header = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.packet_header then
    local length = asx_securities_sr8_ouch_v2_0_size_of.packet_header(buffer, offset)
    local range = buffer(offset, length)
    local display = asx_securities_sr8_ouch_v2_0_display.packet_header(buffer, packet, parent)
    parent = parent:add(asx_securities_sr8_ouch_v2_0.fields.packet_header, range, display)
  end

  return asx_securities_sr8_ouch_v2_0_dissect.packet_header_fields(buffer, offset, packet, parent)
end

-- Display: Soup Bin Tcp Packet
asx_securities_sr8_ouch_v2_0_display.soup_bin_tcp_packet = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Soup Bin Tcp Packet
asx_securities_sr8_ouch_v2_0_dissect.soup_bin_tcp_packet_fields = function(buffer, offset, packet, parent, size_of_soup_bin_tcp_packet)
  local index = offset

  -- Packet Header: Struct of 2 fields
  index, packet_header = asx_securities_sr8_ouch_v2_0_dissect.packet_header(buffer, index, packet, parent)

  -- Dependency element: Packet Type
  local packet_type = buffer(index - 1, 1):string()

  -- Payload: Runtime Type with 6 branches
  index = asx_securities_sr8_ouch_v2_0_dissect.payload(buffer, index, packet, parent, packet_type)

  return index
end

-- Dissect: Soup Bin Tcp Packet
asx_securities_sr8_ouch_v2_0_dissect.soup_bin_tcp_packet = function(buffer, offset, packet, parent, size_of_soup_bin_tcp_packet)
  -- Optionally add struct element to protocol tree
  if show.soup_bin_tcp_packet then
    local range = buffer(offset, size_of_soup_bin_tcp_packet)
    local display = asx_securities_sr8_ouch_v2_0_display.soup_bin_tcp_packet(buffer, packet, parent)
    parent = parent:add(asx_securities_sr8_ouch_v2_0.fields.soup_bin_tcp_packet, range, display)
  end

  asx_securities_sr8_ouch_v2_0_dissect.soup_bin_tcp_packet_fields(buffer, offset, packet, parent, size_of_soup_bin_tcp_packet)

  return offset + size_of_soup_bin_tcp_packet
end

-- Remaining Bytes For: Soup Bin Tcp Packet
local soup_bin_tcp_packet_bytes_remaining = function(buffer, index, available)
  -- Calculate the number of bytes remaining
  local remaining = available - index

  -- Check if packet size can be read
  if remaining < asx_securities_sr8_ouch_v2_0_size_of.packet_header(buffer, index) then
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
asx_securities_sr8_ouch_v2_0_dissect.packet = function(buffer, packet, parent)
  local index = 0

  -- Dependency for Soup Bin Tcp Packet
  local end_of_payload = buffer:len()

  -- Soup Bin Tcp Packet: Struct of 2 fields
  while index < end_of_payload do

    -- Are minimum number of bytes are available?
    local available, size_of_soup_bin_tcp_packet = soup_bin_tcp_packet_bytes_remaining(buffer, index, end_of_payload)

    if available > 0 then
      index = asx_securities_sr8_ouch_v2_0_dissect.soup_bin_tcp_packet(buffer, index, packet, parent, size_of_soup_bin_tcp_packet)
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
function asx_securities_sr8_ouch_v2_0.init()
end

-- Dissector for Asx Securities SR8 Ouch 2.0
function asx_securities_sr8_ouch_v2_0.dissector(buffer, packet, parent)

  -- Set protocol name
  packet.cols.protocol = asx_securities_sr8_ouch_v2_0.name

  -- Dissect protocol
  local protocol = parent:add(asx_securities_sr8_ouch_v2_0, buffer(), asx_securities_sr8_ouch_v2_0.description, "("..buffer:len().." Bytes)")
  return asx_securities_sr8_ouch_v2_0_dissect.packet(buffer, packet, protocol)
end

-- Register With Tcp Table
local tcp_table = DissectorTable.get("tcp.port")
tcp_table:add(65333, asx_securities_sr8_ouch_v2_0)


-----------------------------------------------------------------------
-- Protocol Heuristics
-----------------------------------------------------------------------

-- Verify size of packet
verify.asx_securities_sr8_ouch_v2_0_packet_size = function(buffer)

  return true
end

-- Dissector Heuristic for Asx Securities SR8 Ouch 2.0
local function asx_securities_sr8_ouch_v2_0_heuristic(buffer, packet, parent)
  -- Verify packet length
  if not verify.asx_securities_sr8_ouch_v2_0_packet_size(buffer) then return false end

  -- Protocol is valid, set conversation and dissect this packet
  packet.conversation = asx_securities_sr8_ouch_v2_0
  asx_securities_sr8_ouch_v2_0.dissector(buffer, packet, parent)

  return true
end

-- Register Heuristic for Asx Securities SR8 Ouch 2.0
asx_securities_sr8_ouch_v2_0:register_heuristic("tcp", asx_securities_sr8_ouch_v2_0_heuristic)

-----------------------------------------------------------------------
-- Lua dissectors are an easily edited and modified cross platform dissection solution.
-- Feel free to modify. Enjoy.
-----------------------------------------------------------------------
-- 
-- Protocol:
--   Organization: Australian Securities Exchange
--   Version: 2.0
--   Date: Wednesday, April 1, 2015
--   Specification: asx_036435.pdf
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
