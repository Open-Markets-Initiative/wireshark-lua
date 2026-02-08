-----------------------------------------------------------------------
-- Lua Script Wireshark Dissector
-- 
-- Please see end of file for rules and regulations
-----------------------------------------------------------------------

-- Asx Securities Trade Ouch 2.0 Protocol
local omi_asx_securities_trade_ouch_v2_0 = Proto("Asx.Securities.Trade.Ouch.v2.0.Lua", "Asx Securities Trade Ouch 2.0")

-- Protocol table
local asx_securities_trade_ouch_v2_0 = {}

-----------------------------------------------------------------------
-- Declare Protocol Fields
-----------------------------------------------------------------------

-- Asx Securities Trade Ouch 2.0 Fields
omi_asx_securities_trade_ouch_v2_0.fields.capacity_of_participant = ProtoField.new("Capacity Of Participant", "asx.securities.trade.ouch.v2.0.capacityofparticipant", ftypes.STRING)
omi_asx_securities_trade_ouch_v2_0.fields.clearing_participant = ProtoField.new("Clearing Participant", "asx.securities.trade.ouch.v2.0.clearingparticipant", ftypes.STRING)
omi_asx_securities_trade_ouch_v2_0.fields.client_account = ProtoField.new("Client Account", "asx.securities.trade.ouch.v2.0.clientaccount", ftypes.STRING)
omi_asx_securities_trade_ouch_v2_0.fields.crossing_key = ProtoField.new("Crossing Key", "asx.securities.trade.ouch.v2.0.crossingkey", ftypes.UINT32)
omi_asx_securities_trade_ouch_v2_0.fields.customer_info = ProtoField.new("Customer Info", "asx.securities.trade.ouch.v2.0.customerinfo", ftypes.STRING)
omi_asx_securities_trade_ouch_v2_0.fields.deal_source = ProtoField.new("Deal Source", "asx.securities.trade.ouch.v2.0.dealsource", ftypes.UINT16)
omi_asx_securities_trade_ouch_v2_0.fields.directed_wholesale = ProtoField.new("Directed Wholesale", "asx.securities.trade.ouch.v2.0.directedwholesale", ftypes.STRING)
omi_asx_securities_trade_ouch_v2_0.fields.exchange_info = ProtoField.new("Exchange Info", "asx.securities.trade.ouch.v2.0.exchangeinfo", ftypes.STRING)
omi_asx_securities_trade_ouch_v2_0.fields.execution_venue = ProtoField.new("Execution Venue", "asx.securities.trade.ouch.v2.0.executionvenue", ftypes.STRING)
omi_asx_securities_trade_ouch_v2_0.fields.existing_order_token = ProtoField.new("Existing Order Token", "asx.securities.trade.ouch.v2.0.existingordertoken", ftypes.STRING)
omi_asx_securities_trade_ouch_v2_0.fields.filler = ProtoField.new("Filler", "asx.securities.trade.ouch.v2.0.filler", ftypes.STRING)
omi_asx_securities_trade_ouch_v2_0.fields.intermediary_id = ProtoField.new("Intermediary Id", "asx.securities.trade.ouch.v2.0.intermediaryid", ftypes.STRING)
omi_asx_securities_trade_ouch_v2_0.fields.match_attributes = ProtoField.new("Match Attributes", "asx.securities.trade.ouch.v2.0.matchattributes", ftypes.UINT8)
omi_asx_securities_trade_ouch_v2_0.fields.match_id = ProtoField.new("Match Id", "asx.securities.trade.ouch.v2.0.matchid", ftypes.BYTES)
omi_asx_securities_trade_ouch_v2_0.fields.minimum_acceptable_quantity = ProtoField.new("Minimum Acceptable Quantity", "asx.securities.trade.ouch.v2.0.minimumacceptablequantity", ftypes.UINT64)
omi_asx_securities_trade_ouch_v2_0.fields.open_close = ProtoField.new("Open Close", "asx.securities.trade.ouch.v2.0.openclose", ftypes.UINT8)
omi_asx_securities_trade_ouch_v2_0.fields.order_book_id = ProtoField.new("Order Book Id", "asx.securities.trade.ouch.v2.0.orderbookid", ftypes.UINT32)
omi_asx_securities_trade_ouch_v2_0.fields.order_id = ProtoField.new("Order Id", "asx.securities.trade.ouch.v2.0.orderid", ftypes.UINT64)
omi_asx_securities_trade_ouch_v2_0.fields.order_origin = ProtoField.new("Order Origin", "asx.securities.trade.ouch.v2.0.orderorigin", ftypes.STRING)
omi_asx_securities_trade_ouch_v2_0.fields.order_state = ProtoField.new("Order State", "asx.securities.trade.ouch.v2.0.orderstate", ftypes.UINT8)
omi_asx_securities_trade_ouch_v2_0.fields.order_token = ProtoField.new("Order Token", "asx.securities.trade.ouch.v2.0.ordertoken", ftypes.STRING)
omi_asx_securities_trade_ouch_v2_0.fields.ouch_order_type = ProtoField.new("Ouch Order Type", "asx.securities.trade.ouch.v2.0.ouchordertype", ftypes.STRING)
omi_asx_securities_trade_ouch_v2_0.fields.packet = ProtoField.new("Packet", "asx.securities.trade.ouch.v2.0.packet", ftypes.STRING)
omi_asx_securities_trade_ouch_v2_0.fields.packet_header = ProtoField.new("Packet Header", "asx.securities.trade.ouch.v2.0.packetheader", ftypes.STRING)
omi_asx_securities_trade_ouch_v2_0.fields.packet_length = ProtoField.new("Packet Length", "asx.securities.trade.ouch.v2.0.packetlength", ftypes.UINT16)
omi_asx_securities_trade_ouch_v2_0.fields.packet_type = ProtoField.new("Packet Type", "asx.securities.trade.ouch.v2.0.packettype", ftypes.STRING)
omi_asx_securities_trade_ouch_v2_0.fields.password = ProtoField.new("Password", "asx.securities.trade.ouch.v2.0.password", ftypes.STRING)
omi_asx_securities_trade_ouch_v2_0.fields.payload = ProtoField.new("Payload", "asx.securities.trade.ouch.v2.0.payload", ftypes.STRING)
omi_asx_securities_trade_ouch_v2_0.fields.previous_order_token = ProtoField.new("Previous Order Token", "asx.securities.trade.ouch.v2.0.previousordertoken", ftypes.STRING)
omi_asx_securities_trade_ouch_v2_0.fields.price = ProtoField.new("Price", "asx.securities.trade.ouch.v2.0.price", ftypes.DOUBLE)
omi_asx_securities_trade_ouch_v2_0.fields.quantity = ProtoField.new("Quantity", "asx.securities.trade.ouch.v2.0.quantity", ftypes.UINT64)
omi_asx_securities_trade_ouch_v2_0.fields.reason = ProtoField.new("Reason", "asx.securities.trade.ouch.v2.0.reason", ftypes.UINT8)
omi_asx_securities_trade_ouch_v2_0.fields.reject_code = ProtoField.new("Reject Code", "asx.securities.trade.ouch.v2.0.rejectcode", ftypes.UINT32)
omi_asx_securities_trade_ouch_v2_0.fields.reject_reason_code = ProtoField.new("Reject Reason Code", "asx.securities.trade.ouch.v2.0.rejectreasoncode", ftypes.STRING)
omi_asx_securities_trade_ouch_v2_0.fields.replacement_order_token = ProtoField.new("Replacement Order Token", "asx.securities.trade.ouch.v2.0.replacementordertoken", ftypes.STRING)
omi_asx_securities_trade_ouch_v2_0.fields.requested_sequence_number = ProtoField.new("Requested Sequence Number", "asx.securities.trade.ouch.v2.0.requestedsequencenumber", ftypes.STRING)
omi_asx_securities_trade_ouch_v2_0.fields.requested_session = ProtoField.new("Requested Session", "asx.securities.trade.ouch.v2.0.requestedsession", ftypes.STRING)
omi_asx_securities_trade_ouch_v2_0.fields.sequence_number = ProtoField.new("Sequence Number", "asx.securities.trade.ouch.v2.0.sequencenumber", ftypes.STRING)
omi_asx_securities_trade_ouch_v2_0.fields.sequenced_message = ProtoField.new("Sequenced Message", "asx.securities.trade.ouch.v2.0.sequencedmessage", ftypes.STRING)
omi_asx_securities_trade_ouch_v2_0.fields.sequenced_message_type = ProtoField.new("Sequenced Message Type", "asx.securities.trade.ouch.v2.0.sequencedmessagetype", ftypes.STRING)
omi_asx_securities_trade_ouch_v2_0.fields.session = ProtoField.new("Session", "asx.securities.trade.ouch.v2.0.session", ftypes.STRING)
omi_asx_securities_trade_ouch_v2_0.fields.short_sell_quantity = ProtoField.new("Short Sell Quantity", "asx.securities.trade.ouch.v2.0.shortsellquantity", ftypes.UINT64)
omi_asx_securities_trade_ouch_v2_0.fields.side = ProtoField.new("Side", "asx.securities.trade.ouch.v2.0.side", ftypes.STRING)
omi_asx_securities_trade_ouch_v2_0.fields.soup_bin_tcp_packet = ProtoField.new("Soup Bin Tcp Packet", "asx.securities.trade.ouch.v2.0.soupbintcppacket", ftypes.STRING)
omi_asx_securities_trade_ouch_v2_0.fields.text = ProtoField.new("Text", "asx.securities.trade.ouch.v2.0.text", ftypes.STRING)
omi_asx_securities_trade_ouch_v2_0.fields.time_in_force = ProtoField.new("Time In Force", "asx.securities.trade.ouch.v2.0.timeinforce", ftypes.UINT8)
omi_asx_securities_trade_ouch_v2_0.fields.timestamp_nanoseconds = ProtoField.new("Timestamp Nanoseconds", "asx.securities.trade.ouch.v2.0.timestampnanoseconds", ftypes.UINT64)
omi_asx_securities_trade_ouch_v2_0.fields.trade_price = ProtoField.new("Trade Price", "asx.securities.trade.ouch.v2.0.tradeprice", ftypes.DOUBLE)
omi_asx_securities_trade_ouch_v2_0.fields.traded_quantity = ProtoField.new("Traded Quantity", "asx.securities.trade.ouch.v2.0.tradedquantity", ftypes.UINT64)
omi_asx_securities_trade_ouch_v2_0.fields.unsequenced_message = ProtoField.new("Unsequenced Message", "asx.securities.trade.ouch.v2.0.unsequencedmessage", ftypes.STRING)
omi_asx_securities_trade_ouch_v2_0.fields.unsequenced_message_type = ProtoField.new("Unsequenced Message Type", "asx.securities.trade.ouch.v2.0.unsequencedmessagetype", ftypes.STRING)
omi_asx_securities_trade_ouch_v2_0.fields.username = ProtoField.new("Username", "asx.securities.trade.ouch.v2.0.username", ftypes.STRING)

-- Asx Securities Ouch Trade 2.0 Application Messages
omi_asx_securities_trade_ouch_v2_0.fields.cancel_by_order_id_message = ProtoField.new("Cancel By Order Id Message", "asx.securities.trade.ouch.v2.0.cancelbyorderidmessage", ftypes.STRING)
omi_asx_securities_trade_ouch_v2_0.fields.cancel_order_message = ProtoField.new("Cancel Order Message", "asx.securities.trade.ouch.v2.0.cancelordermessage", ftypes.STRING)
omi_asx_securities_trade_ouch_v2_0.fields.enter_order_message = ProtoField.new("Enter Order Message", "asx.securities.trade.ouch.v2.0.enterordermessage", ftypes.STRING)
omi_asx_securities_trade_ouch_v2_0.fields.order_accepted_message = ProtoField.new("Order Accepted Message", "asx.securities.trade.ouch.v2.0.orderacceptedmessage", ftypes.STRING)
omi_asx_securities_trade_ouch_v2_0.fields.order_cancelled_message = ProtoField.new("Order Cancelled Message", "asx.securities.trade.ouch.v2.0.ordercancelledmessage", ftypes.STRING)
omi_asx_securities_trade_ouch_v2_0.fields.order_executed_message = ProtoField.new("Order Executed Message", "asx.securities.trade.ouch.v2.0.orderexecutedmessage", ftypes.STRING)
omi_asx_securities_trade_ouch_v2_0.fields.order_rejected_message = ProtoField.new("Order Rejected Message", "asx.securities.trade.ouch.v2.0.orderrejectedmessage", ftypes.STRING)
omi_asx_securities_trade_ouch_v2_0.fields.order_replaced_message = ProtoField.new("Order Replaced Message", "asx.securities.trade.ouch.v2.0.orderreplacedmessage", ftypes.STRING)
omi_asx_securities_trade_ouch_v2_0.fields.replace_order_message = ProtoField.new("Replace Order Message", "asx.securities.trade.ouch.v2.0.replaceordermessage", ftypes.STRING)

-- Asx Securities Ouch Trade 2.0 Session Messages
omi_asx_securities_trade_ouch_v2_0.fields.debug_packet = ProtoField.new("Debug Packet", "asx.securities.trade.ouch.v2.0.debugpacket", ftypes.STRING)
omi_asx_securities_trade_ouch_v2_0.fields.login_accepted_packet = ProtoField.new("Login Accepted Packet", "asx.securities.trade.ouch.v2.0.loginacceptedpacket", ftypes.STRING)
omi_asx_securities_trade_ouch_v2_0.fields.login_rejected_packet = ProtoField.new("Login Rejected Packet", "asx.securities.trade.ouch.v2.0.loginrejectedpacket", ftypes.STRING)
omi_asx_securities_trade_ouch_v2_0.fields.login_request_packet = ProtoField.new("Login Request Packet", "asx.securities.trade.ouch.v2.0.loginrequestpacket", ftypes.STRING)
omi_asx_securities_trade_ouch_v2_0.fields.sequenced_data_packet = ProtoField.new("Sequenced Data Packet", "asx.securities.trade.ouch.v2.0.sequenceddatapacket", ftypes.STRING)
omi_asx_securities_trade_ouch_v2_0.fields.unsequenced_data_packet = ProtoField.new("Unsequenced Data Packet", "asx.securities.trade.ouch.v2.0.unsequenceddatapacket", ftypes.STRING)

-----------------------------------------------------------------------
-- Declare Dissection Options
-----------------------------------------------------------------------

local show = {}

-- Asx Securities Trade Ouch 2.0 Element Dissection Options
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

-- Register Asx Securities Trade Ouch 2.0 Show Options
omi_asx_securities_trade_ouch_v2_0.prefs.show_cancel_by_order_id_message = Pref.bool("Show Cancel By Order Id Message", show.cancel_by_order_id_message, "Parse and add Cancel By Order Id Message to protocol tree")
omi_asx_securities_trade_ouch_v2_0.prefs.show_cancel_order_message = Pref.bool("Show Cancel Order Message", show.cancel_order_message, "Parse and add Cancel Order Message to protocol tree")
omi_asx_securities_trade_ouch_v2_0.prefs.show_debug_packet = Pref.bool("Show Debug Packet", show.debug_packet, "Parse and add Debug Packet to protocol tree")
omi_asx_securities_trade_ouch_v2_0.prefs.show_enter_order_message = Pref.bool("Show Enter Order Message", show.enter_order_message, "Parse and add Enter Order Message to protocol tree")
omi_asx_securities_trade_ouch_v2_0.prefs.show_login_accepted_packet = Pref.bool("Show Login Accepted Packet", show.login_accepted_packet, "Parse and add Login Accepted Packet to protocol tree")
omi_asx_securities_trade_ouch_v2_0.prefs.show_login_rejected_packet = Pref.bool("Show Login Rejected Packet", show.login_rejected_packet, "Parse and add Login Rejected Packet to protocol tree")
omi_asx_securities_trade_ouch_v2_0.prefs.show_login_request_packet = Pref.bool("Show Login Request Packet", show.login_request_packet, "Parse and add Login Request Packet to protocol tree")
omi_asx_securities_trade_ouch_v2_0.prefs.show_order_accepted_message = Pref.bool("Show Order Accepted Message", show.order_accepted_message, "Parse and add Order Accepted Message to protocol tree")
omi_asx_securities_trade_ouch_v2_0.prefs.show_order_cancelled_message = Pref.bool("Show Order Cancelled Message", show.order_cancelled_message, "Parse and add Order Cancelled Message to protocol tree")
omi_asx_securities_trade_ouch_v2_0.prefs.show_order_executed_message = Pref.bool("Show Order Executed Message", show.order_executed_message, "Parse and add Order Executed Message to protocol tree")
omi_asx_securities_trade_ouch_v2_0.prefs.show_order_rejected_message = Pref.bool("Show Order Rejected Message", show.order_rejected_message, "Parse and add Order Rejected Message to protocol tree")
omi_asx_securities_trade_ouch_v2_0.prefs.show_order_replaced_message = Pref.bool("Show Order Replaced Message", show.order_replaced_message, "Parse and add Order Replaced Message to protocol tree")
omi_asx_securities_trade_ouch_v2_0.prefs.show_packet = Pref.bool("Show Packet", show.packet, "Parse and add Packet to protocol tree")
omi_asx_securities_trade_ouch_v2_0.prefs.show_packet_header = Pref.bool("Show Packet Header", show.packet_header, "Parse and add Packet Header to protocol tree")
omi_asx_securities_trade_ouch_v2_0.prefs.show_replace_order_message = Pref.bool("Show Replace Order Message", show.replace_order_message, "Parse and add Replace Order Message to protocol tree")
omi_asx_securities_trade_ouch_v2_0.prefs.show_sequenced_data_packet = Pref.bool("Show Sequenced Data Packet", show.sequenced_data_packet, "Parse and add Sequenced Data Packet to protocol tree")
omi_asx_securities_trade_ouch_v2_0.prefs.show_soup_bin_tcp_packet = Pref.bool("Show Soup Bin Tcp Packet", show.soup_bin_tcp_packet, "Parse and add Soup Bin Tcp Packet to protocol tree")
omi_asx_securities_trade_ouch_v2_0.prefs.show_unsequenced_data_packet = Pref.bool("Show Unsequenced Data Packet", show.unsequenced_data_packet, "Parse and add Unsequenced Data Packet to protocol tree")
omi_asx_securities_trade_ouch_v2_0.prefs.show_payload = Pref.bool("Show Payload", show.payload, "Parse and add Payload to protocol tree")
omi_asx_securities_trade_ouch_v2_0.prefs.show_sequenced_message = Pref.bool("Show Sequenced Message", show.sequenced_message, "Parse and add Sequenced Message to protocol tree")
omi_asx_securities_trade_ouch_v2_0.prefs.show_unsequenced_message = Pref.bool("Show Unsequenced Message", show.unsequenced_message, "Parse and add Unsequenced Message to protocol tree")

-- Handle changed preferences
function omi_asx_securities_trade_ouch_v2_0.prefs_changed()
  local changed = false

  -- Check if show options have changed
  if show.cancel_by_order_id_message ~= omi_asx_securities_trade_ouch_v2_0.prefs.show_cancel_by_order_id_message then
    show.cancel_by_order_id_message = omi_asx_securities_trade_ouch_v2_0.prefs.show_cancel_by_order_id_message
    changed = true
  end
  if show.cancel_order_message ~= omi_asx_securities_trade_ouch_v2_0.prefs.show_cancel_order_message then
    show.cancel_order_message = omi_asx_securities_trade_ouch_v2_0.prefs.show_cancel_order_message
    changed = true
  end
  if show.debug_packet ~= omi_asx_securities_trade_ouch_v2_0.prefs.show_debug_packet then
    show.debug_packet = omi_asx_securities_trade_ouch_v2_0.prefs.show_debug_packet
    changed = true
  end
  if show.enter_order_message ~= omi_asx_securities_trade_ouch_v2_0.prefs.show_enter_order_message then
    show.enter_order_message = omi_asx_securities_trade_ouch_v2_0.prefs.show_enter_order_message
    changed = true
  end
  if show.login_accepted_packet ~= omi_asx_securities_trade_ouch_v2_0.prefs.show_login_accepted_packet then
    show.login_accepted_packet = omi_asx_securities_trade_ouch_v2_0.prefs.show_login_accepted_packet
    changed = true
  end
  if show.login_rejected_packet ~= omi_asx_securities_trade_ouch_v2_0.prefs.show_login_rejected_packet then
    show.login_rejected_packet = omi_asx_securities_trade_ouch_v2_0.prefs.show_login_rejected_packet
    changed = true
  end
  if show.login_request_packet ~= omi_asx_securities_trade_ouch_v2_0.prefs.show_login_request_packet then
    show.login_request_packet = omi_asx_securities_trade_ouch_v2_0.prefs.show_login_request_packet
    changed = true
  end
  if show.order_accepted_message ~= omi_asx_securities_trade_ouch_v2_0.prefs.show_order_accepted_message then
    show.order_accepted_message = omi_asx_securities_trade_ouch_v2_0.prefs.show_order_accepted_message
    changed = true
  end
  if show.order_cancelled_message ~= omi_asx_securities_trade_ouch_v2_0.prefs.show_order_cancelled_message then
    show.order_cancelled_message = omi_asx_securities_trade_ouch_v2_0.prefs.show_order_cancelled_message
    changed = true
  end
  if show.order_executed_message ~= omi_asx_securities_trade_ouch_v2_0.prefs.show_order_executed_message then
    show.order_executed_message = omi_asx_securities_trade_ouch_v2_0.prefs.show_order_executed_message
    changed = true
  end
  if show.order_rejected_message ~= omi_asx_securities_trade_ouch_v2_0.prefs.show_order_rejected_message then
    show.order_rejected_message = omi_asx_securities_trade_ouch_v2_0.prefs.show_order_rejected_message
    changed = true
  end
  if show.order_replaced_message ~= omi_asx_securities_trade_ouch_v2_0.prefs.show_order_replaced_message then
    show.order_replaced_message = omi_asx_securities_trade_ouch_v2_0.prefs.show_order_replaced_message
    changed = true
  end
  if show.packet ~= omi_asx_securities_trade_ouch_v2_0.prefs.show_packet then
    show.packet = omi_asx_securities_trade_ouch_v2_0.prefs.show_packet
    changed = true
  end
  if show.packet_header ~= omi_asx_securities_trade_ouch_v2_0.prefs.show_packet_header then
    show.packet_header = omi_asx_securities_trade_ouch_v2_0.prefs.show_packet_header
    changed = true
  end
  if show.replace_order_message ~= omi_asx_securities_trade_ouch_v2_0.prefs.show_replace_order_message then
    show.replace_order_message = omi_asx_securities_trade_ouch_v2_0.prefs.show_replace_order_message
    changed = true
  end
  if show.sequenced_data_packet ~= omi_asx_securities_trade_ouch_v2_0.prefs.show_sequenced_data_packet then
    show.sequenced_data_packet = omi_asx_securities_trade_ouch_v2_0.prefs.show_sequenced_data_packet
    changed = true
  end
  if show.soup_bin_tcp_packet ~= omi_asx_securities_trade_ouch_v2_0.prefs.show_soup_bin_tcp_packet then
    show.soup_bin_tcp_packet = omi_asx_securities_trade_ouch_v2_0.prefs.show_soup_bin_tcp_packet
    changed = true
  end
  if show.unsequenced_data_packet ~= omi_asx_securities_trade_ouch_v2_0.prefs.show_unsequenced_data_packet then
    show.unsequenced_data_packet = omi_asx_securities_trade_ouch_v2_0.prefs.show_unsequenced_data_packet
    changed = true
  end
  if show.payload ~= omi_asx_securities_trade_ouch_v2_0.prefs.show_payload then
    show.payload = omi_asx_securities_trade_ouch_v2_0.prefs.show_payload
    changed = true
  end
  if show.sequenced_message ~= omi_asx_securities_trade_ouch_v2_0.prefs.show_sequenced_message then
    show.sequenced_message = omi_asx_securities_trade_ouch_v2_0.prefs.show_sequenced_message
    changed = true
  end
  if show.unsequenced_message ~= omi_asx_securities_trade_ouch_v2_0.prefs.show_unsequenced_message then
    show.unsequenced_message = omi_asx_securities_trade_ouch_v2_0.prefs.show_unsequenced_message
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
-- Dissect Asx Securities Trade Ouch 2.0
-----------------------------------------------------------------------

-- Order Id
asx_securities_trade_ouch_v2_0.order_id = {}

-- Size: Order Id
asx_securities_trade_ouch_v2_0.order_id.size = 8

-- Display: Order Id
asx_securities_trade_ouch_v2_0.order_id.display = function(value)
  return "Order Id: "..value
end

-- Dissect: Order Id
asx_securities_trade_ouch_v2_0.order_id.dissect = function(buffer, offset, packet, parent)
  local length = asx_securities_trade_ouch_v2_0.order_id.size
  local range = buffer(offset, length)
  local value = range:uint64()
  local display = asx_securities_trade_ouch_v2_0.order_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_asx_securities_trade_ouch_v2_0.fields.order_id, range, value, display)

  return offset + length, value
end

-- Side
asx_securities_trade_ouch_v2_0.side = {}

-- Size: Side
asx_securities_trade_ouch_v2_0.side.size = 1

-- Display: Side
asx_securities_trade_ouch_v2_0.side.display = function(value)
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
asx_securities_trade_ouch_v2_0.side.dissect = function(buffer, offset, packet, parent)
  local length = asx_securities_trade_ouch_v2_0.side.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = asx_securities_trade_ouch_v2_0.side.display(value, buffer, offset, packet, parent)

  parent:add(omi_asx_securities_trade_ouch_v2_0.fields.side, range, value, display)

  return offset + length, value
end

-- Order Book Id
asx_securities_trade_ouch_v2_0.order_book_id = {}

-- Size: Order Book Id
asx_securities_trade_ouch_v2_0.order_book_id.size = 4

-- Display: Order Book Id
asx_securities_trade_ouch_v2_0.order_book_id.display = function(value)
  return "Order Book Id: "..value
end

-- Dissect: Order Book Id
asx_securities_trade_ouch_v2_0.order_book_id.dissect = function(buffer, offset, packet, parent)
  local length = asx_securities_trade_ouch_v2_0.order_book_id.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = asx_securities_trade_ouch_v2_0.order_book_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_asx_securities_trade_ouch_v2_0.fields.order_book_id, range, value, display)

  return offset + length, value
end

-- Cancel By Order Id Message
asx_securities_trade_ouch_v2_0.cancel_by_order_id_message = {}

-- Size: Cancel By Order Id Message
asx_securities_trade_ouch_v2_0.cancel_by_order_id_message.size =
  asx_securities_trade_ouch_v2_0.order_book_id.size + 
  asx_securities_trade_ouch_v2_0.side.size + 
  asx_securities_trade_ouch_v2_0.order_id.size

-- Display: Cancel By Order Id Message
asx_securities_trade_ouch_v2_0.cancel_by_order_id_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Cancel By Order Id Message
asx_securities_trade_ouch_v2_0.cancel_by_order_id_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Order Book Id: 4 Byte Unsigned Fixed Width Integer
  index, order_book_id = asx_securities_trade_ouch_v2_0.order_book_id.dissect(buffer, index, packet, parent)

  -- Side: 1 Byte Ascii String Enum with 4 values
  index, side = asx_securities_trade_ouch_v2_0.side.dissect(buffer, index, packet, parent)

  -- Order Id: 8 Byte Unsigned Fixed Width Integer
  index, order_id = asx_securities_trade_ouch_v2_0.order_id.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Cancel By Order Id Message
asx_securities_trade_ouch_v2_0.cancel_by_order_id_message.dissect = function(buffer, offset, packet, parent)
  if show.cancel_by_order_id_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_asx_securities_trade_ouch_v2_0.fields.cancel_by_order_id_message, buffer(offset, 0))
    local index = asx_securities_trade_ouch_v2_0.cancel_by_order_id_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = asx_securities_trade_ouch_v2_0.cancel_by_order_id_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return asx_securities_trade_ouch_v2_0.cancel_by_order_id_message.fields(buffer, offset, packet, parent)
  end
end

-- Order Token
asx_securities_trade_ouch_v2_0.order_token = {}

-- Size: Order Token
asx_securities_trade_ouch_v2_0.order_token.size = 14

-- Display: Order Token
asx_securities_trade_ouch_v2_0.order_token.display = function(value)
  return "Order Token: "..value
end

-- Dissect: Order Token
asx_securities_trade_ouch_v2_0.order_token.dissect = function(buffer, offset, packet, parent)
  local length = asx_securities_trade_ouch_v2_0.order_token.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = asx_securities_trade_ouch_v2_0.order_token.display(value, buffer, offset, packet, parent)

  parent:add(omi_asx_securities_trade_ouch_v2_0.fields.order_token, range, value, display)

  return offset + length, value
end

-- Cancel Order Message
asx_securities_trade_ouch_v2_0.cancel_order_message = {}

-- Size: Cancel Order Message
asx_securities_trade_ouch_v2_0.cancel_order_message.size =
  asx_securities_trade_ouch_v2_0.order_token.size

-- Display: Cancel Order Message
asx_securities_trade_ouch_v2_0.cancel_order_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Cancel Order Message
asx_securities_trade_ouch_v2_0.cancel_order_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Order Token: 14 Byte Ascii String
  index, order_token = asx_securities_trade_ouch_v2_0.order_token.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Cancel Order Message
asx_securities_trade_ouch_v2_0.cancel_order_message.dissect = function(buffer, offset, packet, parent)
  if show.cancel_order_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_asx_securities_trade_ouch_v2_0.fields.cancel_order_message, buffer(offset, 0))
    local index = asx_securities_trade_ouch_v2_0.cancel_order_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = asx_securities_trade_ouch_v2_0.cancel_order_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return asx_securities_trade_ouch_v2_0.cancel_order_message.fields(buffer, offset, packet, parent)
  end
end

-- Minimum Acceptable Quantity
asx_securities_trade_ouch_v2_0.minimum_acceptable_quantity = {}

-- Size: Minimum Acceptable Quantity
asx_securities_trade_ouch_v2_0.minimum_acceptable_quantity.size = 8

-- Display: Minimum Acceptable Quantity
asx_securities_trade_ouch_v2_0.minimum_acceptable_quantity.display = function(value)
  return "Minimum Acceptable Quantity: "..value
end

-- Dissect: Minimum Acceptable Quantity
asx_securities_trade_ouch_v2_0.minimum_acceptable_quantity.dissect = function(buffer, offset, packet, parent)
  local length = asx_securities_trade_ouch_v2_0.minimum_acceptable_quantity.size
  local range = buffer(offset, length)
  local value = range:uint64()
  local display = asx_securities_trade_ouch_v2_0.minimum_acceptable_quantity.display(value, buffer, offset, packet, parent)

  parent:add(omi_asx_securities_trade_ouch_v2_0.fields.minimum_acceptable_quantity, range, value, display)

  return offset + length, value
end

-- Short Sell Quantity
asx_securities_trade_ouch_v2_0.short_sell_quantity = {}

-- Size: Short Sell Quantity
asx_securities_trade_ouch_v2_0.short_sell_quantity.size = 8

-- Display: Short Sell Quantity
asx_securities_trade_ouch_v2_0.short_sell_quantity.display = function(value)
  return "Short Sell Quantity: "..value
end

-- Dissect: Short Sell Quantity
asx_securities_trade_ouch_v2_0.short_sell_quantity.dissect = function(buffer, offset, packet, parent)
  local length = asx_securities_trade_ouch_v2_0.short_sell_quantity.size
  local range = buffer(offset, length)
  local value = range:uint64()
  local display = asx_securities_trade_ouch_v2_0.short_sell_quantity.display(value, buffer, offset, packet, parent)

  parent:add(omi_asx_securities_trade_ouch_v2_0.fields.short_sell_quantity, range, value, display)

  return offset + length, value
end

-- Filler
asx_securities_trade_ouch_v2_0.filler = {}

-- Size: Filler
asx_securities_trade_ouch_v2_0.filler.size = 8

-- Display: Filler
asx_securities_trade_ouch_v2_0.filler.display = function(value)
  return "Filler: "..value
end

-- Dissect: Filler
asx_securities_trade_ouch_v2_0.filler.dissect = function(buffer, offset, packet, parent)
  local length = asx_securities_trade_ouch_v2_0.filler.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = asx_securities_trade_ouch_v2_0.filler.display(value, buffer, offset, packet, parent)

  parent:add(omi_asx_securities_trade_ouch_v2_0.fields.filler, range, value, display)

  return offset + length, value
end

-- Order Origin
asx_securities_trade_ouch_v2_0.order_origin = {}

-- Size: Order Origin
asx_securities_trade_ouch_v2_0.order_origin.size = 20

-- Display: Order Origin
asx_securities_trade_ouch_v2_0.order_origin.display = function(value)
  return "Order Origin: "..value
end

-- Dissect: Order Origin
asx_securities_trade_ouch_v2_0.order_origin.dissect = function(buffer, offset, packet, parent)
  local length = asx_securities_trade_ouch_v2_0.order_origin.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = asx_securities_trade_ouch_v2_0.order_origin.display(value, buffer, offset, packet, parent)

  parent:add(omi_asx_securities_trade_ouch_v2_0.fields.order_origin, range, value, display)

  return offset + length, value
end

-- Intermediary Id
asx_securities_trade_ouch_v2_0.intermediary_id = {}

-- Size: Intermediary Id
asx_securities_trade_ouch_v2_0.intermediary_id.size = 10

-- Display: Intermediary Id
asx_securities_trade_ouch_v2_0.intermediary_id.display = function(value)
  return "Intermediary Id: "..value
end

-- Dissect: Intermediary Id
asx_securities_trade_ouch_v2_0.intermediary_id.dissect = function(buffer, offset, packet, parent)
  local length = asx_securities_trade_ouch_v2_0.intermediary_id.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = asx_securities_trade_ouch_v2_0.intermediary_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_asx_securities_trade_ouch_v2_0.fields.intermediary_id, range, value, display)

  return offset + length, value
end

-- Execution Venue
asx_securities_trade_ouch_v2_0.execution_venue = {}

-- Size: Execution Venue
asx_securities_trade_ouch_v2_0.execution_venue.size = 4

-- Display: Execution Venue
asx_securities_trade_ouch_v2_0.execution_venue.display = function(value)
  return "Execution Venue: "..value
end

-- Dissect: Execution Venue
asx_securities_trade_ouch_v2_0.execution_venue.dissect = function(buffer, offset, packet, parent)
  local length = asx_securities_trade_ouch_v2_0.execution_venue.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = asx_securities_trade_ouch_v2_0.execution_venue.display(value, buffer, offset, packet, parent)

  parent:add(omi_asx_securities_trade_ouch_v2_0.fields.execution_venue, range, value, display)

  return offset + length, value
end

-- Directed Wholesale
asx_securities_trade_ouch_v2_0.directed_wholesale = {}

-- Size: Directed Wholesale
asx_securities_trade_ouch_v2_0.directed_wholesale.size = 1

-- Display: Directed Wholesale
asx_securities_trade_ouch_v2_0.directed_wholesale.display = function(value)
  if value == "Y" then
    return "Directed Wholesale: True (Y)"
  end
  if value == "N" then
    return "Directed Wholesale: False Default (N)"
  end

  return "Directed Wholesale: Unknown("..value..")"
end

-- Dissect: Directed Wholesale
asx_securities_trade_ouch_v2_0.directed_wholesale.dissect = function(buffer, offset, packet, parent)
  local length = asx_securities_trade_ouch_v2_0.directed_wholesale.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = asx_securities_trade_ouch_v2_0.directed_wholesale.display(value, buffer, offset, packet, parent)

  parent:add(omi_asx_securities_trade_ouch_v2_0.fields.directed_wholesale, range, value, display)

  return offset + length, value
end

-- Capacity Of Participant
asx_securities_trade_ouch_v2_0.capacity_of_participant = {}

-- Size: Capacity Of Participant
asx_securities_trade_ouch_v2_0.capacity_of_participant.size = 1

-- Display: Capacity Of Participant
asx_securities_trade_ouch_v2_0.capacity_of_participant.display = function(value)
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
asx_securities_trade_ouch_v2_0.capacity_of_participant.dissect = function(buffer, offset, packet, parent)
  local length = asx_securities_trade_ouch_v2_0.capacity_of_participant.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = asx_securities_trade_ouch_v2_0.capacity_of_participant.display(value, buffer, offset, packet, parent)

  parent:add(omi_asx_securities_trade_ouch_v2_0.fields.capacity_of_participant, range, value, display)

  return offset + length, value
end

-- Exchange Info
asx_securities_trade_ouch_v2_0.exchange_info = {}

-- Size: Exchange Info
asx_securities_trade_ouch_v2_0.exchange_info.size = 32

-- Display: Exchange Info
asx_securities_trade_ouch_v2_0.exchange_info.display = function(value)
  return "Exchange Info: "..value
end

-- Dissect: Exchange Info
asx_securities_trade_ouch_v2_0.exchange_info.dissect = function(buffer, offset, packet, parent)
  local length = asx_securities_trade_ouch_v2_0.exchange_info.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = asx_securities_trade_ouch_v2_0.exchange_info.display(value, buffer, offset, packet, parent)

  parent:add(omi_asx_securities_trade_ouch_v2_0.fields.exchange_info, range, value, display)

  return offset + length, value
end

-- Customer Info
asx_securities_trade_ouch_v2_0.customer_info = {}

-- Size: Customer Info
asx_securities_trade_ouch_v2_0.customer_info.size = 15

-- Display: Customer Info
asx_securities_trade_ouch_v2_0.customer_info.display = function(value)
  return "Customer Info: "..value
end

-- Dissect: Customer Info
asx_securities_trade_ouch_v2_0.customer_info.dissect = function(buffer, offset, packet, parent)
  local length = asx_securities_trade_ouch_v2_0.customer_info.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = asx_securities_trade_ouch_v2_0.customer_info.display(value, buffer, offset, packet, parent)

  parent:add(omi_asx_securities_trade_ouch_v2_0.fields.customer_info, range, value, display)

  return offset + length, value
end

-- Client Account
asx_securities_trade_ouch_v2_0.client_account = {}

-- Size: Client Account
asx_securities_trade_ouch_v2_0.client_account.size = 10

-- Display: Client Account
asx_securities_trade_ouch_v2_0.client_account.display = function(value)
  return "Client Account: "..value
end

-- Dissect: Client Account
asx_securities_trade_ouch_v2_0.client_account.dissect = function(buffer, offset, packet, parent)
  local length = asx_securities_trade_ouch_v2_0.client_account.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = asx_securities_trade_ouch_v2_0.client_account.display(value, buffer, offset, packet, parent)

  parent:add(omi_asx_securities_trade_ouch_v2_0.fields.client_account, range, value, display)

  return offset + length, value
end

-- Open Close
asx_securities_trade_ouch_v2_0.open_close = {}

-- Size: Open Close
asx_securities_trade_ouch_v2_0.open_close.size = 1

-- Display: Open Close
asx_securities_trade_ouch_v2_0.open_close.display = function(value)
  return "Open Close: "..value
end

-- Dissect: Open Close
asx_securities_trade_ouch_v2_0.open_close.dissect = function(buffer, offset, packet, parent)
  local length = asx_securities_trade_ouch_v2_0.open_close.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = asx_securities_trade_ouch_v2_0.open_close.display(value, buffer, offset, packet, parent)

  parent:add(omi_asx_securities_trade_ouch_v2_0.fields.open_close, range, value, display)

  return offset + length, value
end

-- Price
asx_securities_trade_ouch_v2_0.price = {}

-- Size: Price
asx_securities_trade_ouch_v2_0.price.size = 4

-- Display: Price
asx_securities_trade_ouch_v2_0.price.display = function(value)
  return "Price: "..value
end

-- Translate: Price
asx_securities_trade_ouch_v2_0.price.translate = function(raw)
  return raw/100
end

-- Dissect: Price
asx_securities_trade_ouch_v2_0.price.dissect = function(buffer, offset, packet, parent)
  local length = asx_securities_trade_ouch_v2_0.price.size
  local range = buffer(offset, length)
  local raw = range:int()
  local value = asx_securities_trade_ouch_v2_0.price.translate(raw)
  local display = asx_securities_trade_ouch_v2_0.price.display(value, buffer, offset, packet, parent)

  parent:add(omi_asx_securities_trade_ouch_v2_0.fields.price, range, value, display)

  return offset + length, value
end

-- Quantity
asx_securities_trade_ouch_v2_0.quantity = {}

-- Size: Quantity
asx_securities_trade_ouch_v2_0.quantity.size = 8

-- Display: Quantity
asx_securities_trade_ouch_v2_0.quantity.display = function(value)
  return "Quantity: "..value
end

-- Dissect: Quantity
asx_securities_trade_ouch_v2_0.quantity.dissect = function(buffer, offset, packet, parent)
  local length = asx_securities_trade_ouch_v2_0.quantity.size
  local range = buffer(offset, length)
  local value = range:uint64()
  local display = asx_securities_trade_ouch_v2_0.quantity.display(value, buffer, offset, packet, parent)

  parent:add(omi_asx_securities_trade_ouch_v2_0.fields.quantity, range, value, display)

  return offset + length, value
end

-- Replacement Order Token
asx_securities_trade_ouch_v2_0.replacement_order_token = {}

-- Size: Replacement Order Token
asx_securities_trade_ouch_v2_0.replacement_order_token.size = 14

-- Display: Replacement Order Token
asx_securities_trade_ouch_v2_0.replacement_order_token.display = function(value)
  return "Replacement Order Token: "..value
end

-- Dissect: Replacement Order Token
asx_securities_trade_ouch_v2_0.replacement_order_token.dissect = function(buffer, offset, packet, parent)
  local length = asx_securities_trade_ouch_v2_0.replacement_order_token.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = asx_securities_trade_ouch_v2_0.replacement_order_token.display(value, buffer, offset, packet, parent)

  parent:add(omi_asx_securities_trade_ouch_v2_0.fields.replacement_order_token, range, value, display)

  return offset + length, value
end

-- Existing Order Token
asx_securities_trade_ouch_v2_0.existing_order_token = {}

-- Size: Existing Order Token
asx_securities_trade_ouch_v2_0.existing_order_token.size = 14

-- Display: Existing Order Token
asx_securities_trade_ouch_v2_0.existing_order_token.display = function(value)
  return "Existing Order Token: "..value
end

-- Dissect: Existing Order Token
asx_securities_trade_ouch_v2_0.existing_order_token.dissect = function(buffer, offset, packet, parent)
  local length = asx_securities_trade_ouch_v2_0.existing_order_token.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = asx_securities_trade_ouch_v2_0.existing_order_token.display(value, buffer, offset, packet, parent)

  parent:add(omi_asx_securities_trade_ouch_v2_0.fields.existing_order_token, range, value, display)

  return offset + length, value
end

-- Replace Order Message
asx_securities_trade_ouch_v2_0.replace_order_message = {}

-- Size: Replace Order Message
asx_securities_trade_ouch_v2_0.replace_order_message.size =
  asx_securities_trade_ouch_v2_0.existing_order_token.size + 
  asx_securities_trade_ouch_v2_0.replacement_order_token.size + 
  asx_securities_trade_ouch_v2_0.quantity.size + 
  asx_securities_trade_ouch_v2_0.price.size + 
  asx_securities_trade_ouch_v2_0.open_close.size + 
  asx_securities_trade_ouch_v2_0.client_account.size + 
  asx_securities_trade_ouch_v2_0.customer_info.size + 
  asx_securities_trade_ouch_v2_0.exchange_info.size + 
  asx_securities_trade_ouch_v2_0.capacity_of_participant.size + 
  asx_securities_trade_ouch_v2_0.directed_wholesale.size + 
  asx_securities_trade_ouch_v2_0.execution_venue.size + 
  asx_securities_trade_ouch_v2_0.intermediary_id.size + 
  asx_securities_trade_ouch_v2_0.order_origin.size + 
  asx_securities_trade_ouch_v2_0.filler.size + 
  asx_securities_trade_ouch_v2_0.short_sell_quantity.size + 
  asx_securities_trade_ouch_v2_0.minimum_acceptable_quantity.size

-- Display: Replace Order Message
asx_securities_trade_ouch_v2_0.replace_order_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Replace Order Message
asx_securities_trade_ouch_v2_0.replace_order_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Existing Order Token: 14 Byte Ascii String
  index, existing_order_token = asx_securities_trade_ouch_v2_0.existing_order_token.dissect(buffer, index, packet, parent)

  -- Replacement Order Token: 14 Byte Ascii String
  index, replacement_order_token = asx_securities_trade_ouch_v2_0.replacement_order_token.dissect(buffer, index, packet, parent)

  -- Quantity: 8 Byte Unsigned Fixed Width Integer
  index, quantity = asx_securities_trade_ouch_v2_0.quantity.dissect(buffer, index, packet, parent)

  -- Price: 4 Byte Signed Fixed Width Integer
  index, price = asx_securities_trade_ouch_v2_0.price.dissect(buffer, index, packet, parent)

  -- Open Close: 1 Byte Unsigned Fixed Width Integer
  index, open_close = asx_securities_trade_ouch_v2_0.open_close.dissect(buffer, index, packet, parent)

  -- Client Account: 10 Byte Ascii String
  index, client_account = asx_securities_trade_ouch_v2_0.client_account.dissect(buffer, index, packet, parent)

  -- Customer Info: 15 Byte Ascii String
  index, customer_info = asx_securities_trade_ouch_v2_0.customer_info.dissect(buffer, index, packet, parent)

  -- Exchange Info: 32 Byte Ascii String
  index, exchange_info = asx_securities_trade_ouch_v2_0.exchange_info.dissect(buffer, index, packet, parent)

  -- Capacity Of Participant: 1 Byte Ascii String Enum with 3 values
  index, capacity_of_participant = asx_securities_trade_ouch_v2_0.capacity_of_participant.dissect(buffer, index, packet, parent)

  -- Directed Wholesale: 1 Byte Ascii String Enum with 2 values
  index, directed_wholesale = asx_securities_trade_ouch_v2_0.directed_wholesale.dissect(buffer, index, packet, parent)

  -- Execution Venue: 4 Byte Ascii String
  index, execution_venue = asx_securities_trade_ouch_v2_0.execution_venue.dissect(buffer, index, packet, parent)

  -- Intermediary Id: 10 Byte Ascii String
  index, intermediary_id = asx_securities_trade_ouch_v2_0.intermediary_id.dissect(buffer, index, packet, parent)

  -- Order Origin: 20 Byte Ascii String
  index, order_origin = asx_securities_trade_ouch_v2_0.order_origin.dissect(buffer, index, packet, parent)

  -- Filler: 8 Byte Ascii String
  index, filler = asx_securities_trade_ouch_v2_0.filler.dissect(buffer, index, packet, parent)

  -- Short Sell Quantity: 8 Byte Unsigned Fixed Width Integer
  index, short_sell_quantity = asx_securities_trade_ouch_v2_0.short_sell_quantity.dissect(buffer, index, packet, parent)

  -- Minimum Acceptable Quantity: 8 Byte Unsigned Fixed Width Integer
  index, minimum_acceptable_quantity = asx_securities_trade_ouch_v2_0.minimum_acceptable_quantity.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Replace Order Message
asx_securities_trade_ouch_v2_0.replace_order_message.dissect = function(buffer, offset, packet, parent)
  if show.replace_order_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_asx_securities_trade_ouch_v2_0.fields.replace_order_message, buffer(offset, 0))
    local index = asx_securities_trade_ouch_v2_0.replace_order_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = asx_securities_trade_ouch_v2_0.replace_order_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return asx_securities_trade_ouch_v2_0.replace_order_message.fields(buffer, offset, packet, parent)
  end
end

-- Ouch Order Type
asx_securities_trade_ouch_v2_0.ouch_order_type = {}

-- Size: Ouch Order Type
asx_securities_trade_ouch_v2_0.ouch_order_type.size = 1

-- Display: Ouch Order Type
asx_securities_trade_ouch_v2_0.ouch_order_type.display = function(value)
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
asx_securities_trade_ouch_v2_0.ouch_order_type.dissect = function(buffer, offset, packet, parent)
  local length = asx_securities_trade_ouch_v2_0.ouch_order_type.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = asx_securities_trade_ouch_v2_0.ouch_order_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_asx_securities_trade_ouch_v2_0.fields.ouch_order_type, range, value, display)

  return offset + length, value
end

-- Crossing Key
asx_securities_trade_ouch_v2_0.crossing_key = {}

-- Size: Crossing Key
asx_securities_trade_ouch_v2_0.crossing_key.size = 4

-- Display: Crossing Key
asx_securities_trade_ouch_v2_0.crossing_key.display = function(value)
  return "Crossing Key: "..value
end

-- Dissect: Crossing Key
asx_securities_trade_ouch_v2_0.crossing_key.dissect = function(buffer, offset, packet, parent)
  local length = asx_securities_trade_ouch_v2_0.crossing_key.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = asx_securities_trade_ouch_v2_0.crossing_key.display(value, buffer, offset, packet, parent)

  parent:add(omi_asx_securities_trade_ouch_v2_0.fields.crossing_key, range, value, display)

  return offset + length, value
end

-- Clearing Participant
asx_securities_trade_ouch_v2_0.clearing_participant = {}

-- Size: Clearing Participant
asx_securities_trade_ouch_v2_0.clearing_participant.size = 1

-- Display: Clearing Participant
asx_securities_trade_ouch_v2_0.clearing_participant.display = function(value)
  return "Clearing Participant: "..value
end

-- Dissect: Clearing Participant
asx_securities_trade_ouch_v2_0.clearing_participant.dissect = function(buffer, offset, packet, parent)
  local length = asx_securities_trade_ouch_v2_0.clearing_participant.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = asx_securities_trade_ouch_v2_0.clearing_participant.display(value, buffer, offset, packet, parent)

  parent:add(omi_asx_securities_trade_ouch_v2_0.fields.clearing_participant, range, value, display)

  return offset + length, value
end

-- Time In Force
asx_securities_trade_ouch_v2_0.time_in_force = {}

-- Size: Time In Force
asx_securities_trade_ouch_v2_0.time_in_force.size = 1

-- Display: Time In Force
asx_securities_trade_ouch_v2_0.time_in_force.display = function(value)
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
asx_securities_trade_ouch_v2_0.time_in_force.dissect = function(buffer, offset, packet, parent)
  local length = asx_securities_trade_ouch_v2_0.time_in_force.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = asx_securities_trade_ouch_v2_0.time_in_force.display(value, buffer, offset, packet, parent)

  parent:add(omi_asx_securities_trade_ouch_v2_0.fields.time_in_force, range, value, display)

  return offset + length, value
end

-- Enter Order Message
asx_securities_trade_ouch_v2_0.enter_order_message = {}

-- Size: Enter Order Message
asx_securities_trade_ouch_v2_0.enter_order_message.size =
  asx_securities_trade_ouch_v2_0.order_token.size + 
  asx_securities_trade_ouch_v2_0.order_book_id.size + 
  asx_securities_trade_ouch_v2_0.side.size + 
  asx_securities_trade_ouch_v2_0.quantity.size + 
  asx_securities_trade_ouch_v2_0.price.size + 
  asx_securities_trade_ouch_v2_0.time_in_force.size + 
  asx_securities_trade_ouch_v2_0.open_close.size + 
  asx_securities_trade_ouch_v2_0.client_account.size + 
  asx_securities_trade_ouch_v2_0.customer_info.size + 
  asx_securities_trade_ouch_v2_0.exchange_info.size + 
  asx_securities_trade_ouch_v2_0.clearing_participant.size + 
  asx_securities_trade_ouch_v2_0.crossing_key.size + 
  asx_securities_trade_ouch_v2_0.capacity_of_participant.size + 
  asx_securities_trade_ouch_v2_0.directed_wholesale.size + 
  asx_securities_trade_ouch_v2_0.execution_venue.size + 
  asx_securities_trade_ouch_v2_0.intermediary_id.size + 
  asx_securities_trade_ouch_v2_0.order_origin.size + 
  asx_securities_trade_ouch_v2_0.filler.size + 
  asx_securities_trade_ouch_v2_0.ouch_order_type.size + 
  asx_securities_trade_ouch_v2_0.short_sell_quantity.size + 
  asx_securities_trade_ouch_v2_0.minimum_acceptable_quantity.size

-- Display: Enter Order Message
asx_securities_trade_ouch_v2_0.enter_order_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Enter Order Message
asx_securities_trade_ouch_v2_0.enter_order_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Order Token: 14 Byte Ascii String
  index, order_token = asx_securities_trade_ouch_v2_0.order_token.dissect(buffer, index, packet, parent)

  -- Order Book Id: 4 Byte Unsigned Fixed Width Integer
  index, order_book_id = asx_securities_trade_ouch_v2_0.order_book_id.dissect(buffer, index, packet, parent)

  -- Side: 1 Byte Ascii String Enum with 4 values
  index, side = asx_securities_trade_ouch_v2_0.side.dissect(buffer, index, packet, parent)

  -- Quantity: 8 Byte Unsigned Fixed Width Integer
  index, quantity = asx_securities_trade_ouch_v2_0.quantity.dissect(buffer, index, packet, parent)

  -- Price: 4 Byte Signed Fixed Width Integer
  index, price = asx_securities_trade_ouch_v2_0.price.dissect(buffer, index, packet, parent)

  -- Time In Force: 1 Byte Unsigned Fixed Width Integer Enum with 3 values
  index, time_in_force = asx_securities_trade_ouch_v2_0.time_in_force.dissect(buffer, index, packet, parent)

  -- Open Close: 1 Byte Unsigned Fixed Width Integer
  index, open_close = asx_securities_trade_ouch_v2_0.open_close.dissect(buffer, index, packet, parent)

  -- Client Account: 10 Byte Ascii String
  index, client_account = asx_securities_trade_ouch_v2_0.client_account.dissect(buffer, index, packet, parent)

  -- Customer Info: 15 Byte Ascii String
  index, customer_info = asx_securities_trade_ouch_v2_0.customer_info.dissect(buffer, index, packet, parent)

  -- Exchange Info: 32 Byte Ascii String
  index, exchange_info = asx_securities_trade_ouch_v2_0.exchange_info.dissect(buffer, index, packet, parent)

  -- Clearing Participant: 1 Byte Ascii String
  index, clearing_participant = asx_securities_trade_ouch_v2_0.clearing_participant.dissect(buffer, index, packet, parent)

  -- Crossing Key: 4 Byte Unsigned Fixed Width Integer
  index, crossing_key = asx_securities_trade_ouch_v2_0.crossing_key.dissect(buffer, index, packet, parent)

  -- Capacity Of Participant: 1 Byte Ascii String Enum with 3 values
  index, capacity_of_participant = asx_securities_trade_ouch_v2_0.capacity_of_participant.dissect(buffer, index, packet, parent)

  -- Directed Wholesale: 1 Byte Ascii String Enum with 2 values
  index, directed_wholesale = asx_securities_trade_ouch_v2_0.directed_wholesale.dissect(buffer, index, packet, parent)

  -- Execution Venue: 4 Byte Ascii String
  index, execution_venue = asx_securities_trade_ouch_v2_0.execution_venue.dissect(buffer, index, packet, parent)

  -- Intermediary Id: 10 Byte Ascii String
  index, intermediary_id = asx_securities_trade_ouch_v2_0.intermediary_id.dissect(buffer, index, packet, parent)

  -- Order Origin: 20 Byte Ascii String
  index, order_origin = asx_securities_trade_ouch_v2_0.order_origin.dissect(buffer, index, packet, parent)

  -- Filler: 8 Byte Ascii String
  index, filler = asx_securities_trade_ouch_v2_0.filler.dissect(buffer, index, packet, parent)

  -- Ouch Order Type: 1 Byte Ascii String Enum with 10 values
  index, ouch_order_type = asx_securities_trade_ouch_v2_0.ouch_order_type.dissect(buffer, index, packet, parent)

  -- Short Sell Quantity: 8 Byte Unsigned Fixed Width Integer
  index, short_sell_quantity = asx_securities_trade_ouch_v2_0.short_sell_quantity.dissect(buffer, index, packet, parent)

  -- Minimum Acceptable Quantity: 8 Byte Unsigned Fixed Width Integer
  index, minimum_acceptable_quantity = asx_securities_trade_ouch_v2_0.minimum_acceptable_quantity.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Enter Order Message
asx_securities_trade_ouch_v2_0.enter_order_message.dissect = function(buffer, offset, packet, parent)
  if show.enter_order_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_asx_securities_trade_ouch_v2_0.fields.enter_order_message, buffer(offset, 0))
    local index = asx_securities_trade_ouch_v2_0.enter_order_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = asx_securities_trade_ouch_v2_0.enter_order_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return asx_securities_trade_ouch_v2_0.enter_order_message.fields(buffer, offset, packet, parent)
  end
end

-- Unsequenced Message
asx_securities_trade_ouch_v2_0.unsequenced_message = {}

-- Size: Unsequenced Message
asx_securities_trade_ouch_v2_0.unsequenced_message.size = function(buffer, offset, unsequenced_message_type)
  -- Size of Enter Order Message
  if unsequenced_message_type == "O" then
    return asx_securities_trade_ouch_v2_0.enter_order_message.size
  end
  -- Size of Replace Order Message
  if unsequenced_message_type == "U" then
    return asx_securities_trade_ouch_v2_0.replace_order_message.size
  end
  -- Size of Cancel Order Message
  if unsequenced_message_type == "X" then
    return asx_securities_trade_ouch_v2_0.cancel_order_message.size
  end
  -- Size of Cancel By Order Id Message
  if unsequenced_message_type == "Y" then
    return asx_securities_trade_ouch_v2_0.cancel_by_order_id_message.size
  end

  return 0
end

-- Display: Unsequenced Message
asx_securities_trade_ouch_v2_0.unsequenced_message.display = function(buffer, offset, packet, parent)
  return ""
end

-- Dissect Branches: Unsequenced Message
asx_securities_trade_ouch_v2_0.unsequenced_message.branches = function(buffer, offset, packet, parent, unsequenced_message_type)
  -- Dissect Enter Order Message
  if unsequenced_message_type == "O" then
    return asx_securities_trade_ouch_v2_0.enter_order_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Replace Order Message
  if unsequenced_message_type == "U" then
    return asx_securities_trade_ouch_v2_0.replace_order_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Cancel Order Message
  if unsequenced_message_type == "X" then
    return asx_securities_trade_ouch_v2_0.cancel_order_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Cancel By Order Id Message
  if unsequenced_message_type == "Y" then
    return asx_securities_trade_ouch_v2_0.cancel_by_order_id_message.dissect(buffer, offset, packet, parent)
  end

  return offset
end

-- Dissect: Unsequenced Message
asx_securities_trade_ouch_v2_0.unsequenced_message.dissect = function(buffer, offset, packet, parent, unsequenced_message_type)
  if not show.unsequenced_message then
    return asx_securities_trade_ouch_v2_0.unsequenced_message.branches(buffer, offset, packet, parent, unsequenced_message_type)
  end

  -- Calculate size and check that branch is not empty
  local size = asx_securities_trade_ouch_v2_0.unsequenced_message.size(buffer, offset, unsequenced_message_type)
  if size == 0 then
    return offset
  end

  -- Dissect Element
  local range = buffer(offset, size)
  local display = asx_securities_trade_ouch_v2_0.unsequenced_message.display(buffer, packet, parent)
  local element = parent:add(omi_asx_securities_trade_ouch_v2_0.fields.unsequenced_message, range, display)

  return asx_securities_trade_ouch_v2_0.unsequenced_message.branches(buffer, offset, packet, parent, unsequenced_message_type)
end

-- Unsequenced Message Type
asx_securities_trade_ouch_v2_0.unsequenced_message_type = {}

-- Size: Unsequenced Message Type
asx_securities_trade_ouch_v2_0.unsequenced_message_type.size = 1

-- Display: Unsequenced Message Type
asx_securities_trade_ouch_v2_0.unsequenced_message_type.display = function(value)
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
asx_securities_trade_ouch_v2_0.unsequenced_message_type.dissect = function(buffer, offset, packet, parent)
  local length = asx_securities_trade_ouch_v2_0.unsequenced_message_type.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = asx_securities_trade_ouch_v2_0.unsequenced_message_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_asx_securities_trade_ouch_v2_0.fields.unsequenced_message_type, range, value, display)

  return offset + length, value
end

-- Unsequenced Data Packet
asx_securities_trade_ouch_v2_0.unsequenced_data_packet = {}

-- Read runtime size of: Unsequenced Data Packet
asx_securities_trade_ouch_v2_0.unsequenced_data_packet.size = function(buffer, offset)
  local index = offset

  -- Dependency element: Packet Length
  local packet_length = buffer(offset - 3, 2):uint()

  return packet_length - 1
end

-- Display: Unsequenced Data Packet
asx_securities_trade_ouch_v2_0.unsequenced_data_packet.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Unsequenced Data Packet
asx_securities_trade_ouch_v2_0.unsequenced_data_packet.fields = function(buffer, offset, packet, parent, size_of_unsequenced_data_packet)
  local index = offset

  -- Unsequenced Message Type: 1 Byte Ascii String Enum with 4 values
  index, unsequenced_message_type = asx_securities_trade_ouch_v2_0.unsequenced_message_type.dissect(buffer, index, packet, parent)

  -- Unsequenced Message: Runtime Type with 4 branches
  index = asx_securities_trade_ouch_v2_0.unsequenced_message.dissect(buffer, index, packet, parent, unsequenced_message_type)

  return index
end

-- Dissect: Unsequenced Data Packet
asx_securities_trade_ouch_v2_0.unsequenced_data_packet.dissect = function(buffer, offset, packet, parent)
  -- Parse runtime size
  local size_of_unsequenced_data_packet = asx_securities_trade_ouch_v2_0.unsequenced_data_packet.size(buffer, offset)

  -- Optionally add struct element to protocol tree
  if show.unsequenced_data_packet then
    local range = buffer(offset, size_of_unsequenced_data_packet)
    local display = asx_securities_trade_ouch_v2_0.unsequenced_data_packet.display(buffer, packet, parent)
    parent = parent:add(omi_asx_securities_trade_ouch_v2_0.fields.unsequenced_data_packet, range, display)
  end

  asx_securities_trade_ouch_v2_0.unsequenced_data_packet.fields(buffer, offset, packet, parent, size_of_unsequenced_data_packet)

  return offset + size_of_unsequenced_data_packet
end

-- Requested Sequence Number
asx_securities_trade_ouch_v2_0.requested_sequence_number = {}

-- Size: Requested Sequence Number
asx_securities_trade_ouch_v2_0.requested_sequence_number.size = 20

-- Display: Requested Sequence Number
asx_securities_trade_ouch_v2_0.requested_sequence_number.display = function(value)
  return "Requested Sequence Number: "..value
end

-- Dissect: Requested Sequence Number
asx_securities_trade_ouch_v2_0.requested_sequence_number.dissect = function(buffer, offset, packet, parent)
  local length = asx_securities_trade_ouch_v2_0.requested_sequence_number.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = asx_securities_trade_ouch_v2_0.requested_sequence_number.display(value, buffer, offset, packet, parent)

  parent:add(omi_asx_securities_trade_ouch_v2_0.fields.requested_sequence_number, range, value, display)

  return offset + length, value
end

-- Requested Session
asx_securities_trade_ouch_v2_0.requested_session = {}

-- Size: Requested Session
asx_securities_trade_ouch_v2_0.requested_session.size = 10

-- Display: Requested Session
asx_securities_trade_ouch_v2_0.requested_session.display = function(value)
  return "Requested Session: "..value
end

-- Dissect: Requested Session
asx_securities_trade_ouch_v2_0.requested_session.dissect = function(buffer, offset, packet, parent)
  local length = asx_securities_trade_ouch_v2_0.requested_session.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = asx_securities_trade_ouch_v2_0.requested_session.display(value, buffer, offset, packet, parent)

  parent:add(omi_asx_securities_trade_ouch_v2_0.fields.requested_session, range, value, display)

  return offset + length, value
end

-- Password
asx_securities_trade_ouch_v2_0.password = {}

-- Size: Password
asx_securities_trade_ouch_v2_0.password.size = 10

-- Display: Password
asx_securities_trade_ouch_v2_0.password.display = function(value)
  return "Password: "..value
end

-- Dissect: Password
asx_securities_trade_ouch_v2_0.password.dissect = function(buffer, offset, packet, parent)
  local length = asx_securities_trade_ouch_v2_0.password.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = asx_securities_trade_ouch_v2_0.password.display(value, buffer, offset, packet, parent)

  parent:add(omi_asx_securities_trade_ouch_v2_0.fields.password, range, value, display)

  return offset + length, value
end

-- Username
asx_securities_trade_ouch_v2_0.username = {}

-- Size: Username
asx_securities_trade_ouch_v2_0.username.size = 6

-- Display: Username
asx_securities_trade_ouch_v2_0.username.display = function(value)
  return "Username: "..value
end

-- Dissect: Username
asx_securities_trade_ouch_v2_0.username.dissect = function(buffer, offset, packet, parent)
  local length = asx_securities_trade_ouch_v2_0.username.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = asx_securities_trade_ouch_v2_0.username.display(value, buffer, offset, packet, parent)

  parent:add(omi_asx_securities_trade_ouch_v2_0.fields.username, range, value, display)

  return offset + length, value
end

-- Login Request Packet
asx_securities_trade_ouch_v2_0.login_request_packet = {}

-- Size: Login Request Packet
asx_securities_trade_ouch_v2_0.login_request_packet.size =
  asx_securities_trade_ouch_v2_0.username.size + 
  asx_securities_trade_ouch_v2_0.password.size + 
  asx_securities_trade_ouch_v2_0.requested_session.size + 
  asx_securities_trade_ouch_v2_0.requested_sequence_number.size

-- Display: Login Request Packet
asx_securities_trade_ouch_v2_0.login_request_packet.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Login Request Packet
asx_securities_trade_ouch_v2_0.login_request_packet.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Username: 6 Byte Ascii String
  index, username = asx_securities_trade_ouch_v2_0.username.dissect(buffer, index, packet, parent)

  -- Password: 10 Byte Ascii String
  index, password = asx_securities_trade_ouch_v2_0.password.dissect(buffer, index, packet, parent)

  -- Requested Session: 10 Byte Ascii String
  index, requested_session = asx_securities_trade_ouch_v2_0.requested_session.dissect(buffer, index, packet, parent)

  -- Requested Sequence Number: 20 Byte Ascii String
  index, requested_sequence_number = asx_securities_trade_ouch_v2_0.requested_sequence_number.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Login Request Packet
asx_securities_trade_ouch_v2_0.login_request_packet.dissect = function(buffer, offset, packet, parent)
  if show.login_request_packet then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_asx_securities_trade_ouch_v2_0.fields.login_request_packet, buffer(offset, 0))
    local index = asx_securities_trade_ouch_v2_0.login_request_packet.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = asx_securities_trade_ouch_v2_0.login_request_packet.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return asx_securities_trade_ouch_v2_0.login_request_packet.fields(buffer, offset, packet, parent)
  end
end

-- Match Attributes
asx_securities_trade_ouch_v2_0.match_attributes = {}

-- Size: Match Attributes
asx_securities_trade_ouch_v2_0.match_attributes.size = 1

-- Display: Match Attributes
asx_securities_trade_ouch_v2_0.match_attributes.display = function(value)
  return "Match Attributes: "..value
end

-- Dissect: Match Attributes
asx_securities_trade_ouch_v2_0.match_attributes.dissect = function(buffer, offset, packet, parent)
  local length = asx_securities_trade_ouch_v2_0.match_attributes.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = asx_securities_trade_ouch_v2_0.match_attributes.display(value, buffer, offset, packet, parent)

  parent:add(omi_asx_securities_trade_ouch_v2_0.fields.match_attributes, range, value, display)

  return offset + length, value
end

-- Deal Source
asx_securities_trade_ouch_v2_0.deal_source = {}

-- Size: Deal Source
asx_securities_trade_ouch_v2_0.deal_source.size = 2

-- Display: Deal Source
asx_securities_trade_ouch_v2_0.deal_source.display = function(value)
  return "Deal Source: "..value
end

-- Dissect: Deal Source
asx_securities_trade_ouch_v2_0.deal_source.dissect = function(buffer, offset, packet, parent)
  local length = asx_securities_trade_ouch_v2_0.deal_source.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = asx_securities_trade_ouch_v2_0.deal_source.display(value, buffer, offset, packet, parent)

  parent:add(omi_asx_securities_trade_ouch_v2_0.fields.deal_source, range, value, display)

  return offset + length, value
end

-- Match Id
asx_securities_trade_ouch_v2_0.match_id = {}

-- Size: Match Id
asx_securities_trade_ouch_v2_0.match_id.size = 12

-- Display: Match Id
asx_securities_trade_ouch_v2_0.match_id.display = function(value)
  return "Match Id: "..value
end

-- Dissect: Match Id
asx_securities_trade_ouch_v2_0.match_id.dissect = function(buffer, offset, packet, parent)
  local length = asx_securities_trade_ouch_v2_0.match_id.size
  local range = buffer(offset, length)
  local value = range:bytes():tohex(false, " ")
  local display = asx_securities_trade_ouch_v2_0.match_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_asx_securities_trade_ouch_v2_0.fields.match_id, range, value, display)

  return offset + length, value
end

-- Trade Price
asx_securities_trade_ouch_v2_0.trade_price = {}

-- Size: Trade Price
asx_securities_trade_ouch_v2_0.trade_price.size = 4

-- Display: Trade Price
asx_securities_trade_ouch_v2_0.trade_price.display = function(value)
  return "Trade Price: "..value
end

-- Translate: Trade Price
asx_securities_trade_ouch_v2_0.trade_price.translate = function(raw)
  return raw/100
end

-- Dissect: Trade Price
asx_securities_trade_ouch_v2_0.trade_price.dissect = function(buffer, offset, packet, parent)
  local length = asx_securities_trade_ouch_v2_0.trade_price.size
  local range = buffer(offset, length)
  local raw = range:int()
  local value = asx_securities_trade_ouch_v2_0.trade_price.translate(raw)
  local display = asx_securities_trade_ouch_v2_0.trade_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_asx_securities_trade_ouch_v2_0.fields.trade_price, range, value, display)

  return offset + length, value
end

-- Traded Quantity
asx_securities_trade_ouch_v2_0.traded_quantity = {}

-- Size: Traded Quantity
asx_securities_trade_ouch_v2_0.traded_quantity.size = 8

-- Display: Traded Quantity
asx_securities_trade_ouch_v2_0.traded_quantity.display = function(value)
  return "Traded Quantity: "..value
end

-- Dissect: Traded Quantity
asx_securities_trade_ouch_v2_0.traded_quantity.dissect = function(buffer, offset, packet, parent)
  local length = asx_securities_trade_ouch_v2_0.traded_quantity.size
  local range = buffer(offset, length)
  local value = range:uint64()
  local display = asx_securities_trade_ouch_v2_0.traded_quantity.display(value, buffer, offset, packet, parent)

  parent:add(omi_asx_securities_trade_ouch_v2_0.fields.traded_quantity, range, value, display)

  return offset + length, value
end

-- Timestamp Nanoseconds
asx_securities_trade_ouch_v2_0.timestamp_nanoseconds = {}

-- Size: Timestamp Nanoseconds
asx_securities_trade_ouch_v2_0.timestamp_nanoseconds.size = 8

-- Display: Timestamp Nanoseconds
asx_securities_trade_ouch_v2_0.timestamp_nanoseconds.display = function(value)
  return "Timestamp Nanoseconds: "..value
end

-- Dissect: Timestamp Nanoseconds
asx_securities_trade_ouch_v2_0.timestamp_nanoseconds.dissect = function(buffer, offset, packet, parent)
  local length = asx_securities_trade_ouch_v2_0.timestamp_nanoseconds.size
  local range = buffer(offset, length)
  local value = range:uint64()
  local display = asx_securities_trade_ouch_v2_0.timestamp_nanoseconds.display(value, buffer, offset, packet, parent)

  parent:add(omi_asx_securities_trade_ouch_v2_0.fields.timestamp_nanoseconds, range, value, display)

  return offset + length, value
end

-- Order Executed Message
asx_securities_trade_ouch_v2_0.order_executed_message = {}

-- Size: Order Executed Message
asx_securities_trade_ouch_v2_0.order_executed_message.size =
  asx_securities_trade_ouch_v2_0.timestamp_nanoseconds.size + 
  asx_securities_trade_ouch_v2_0.order_token.size + 
  asx_securities_trade_ouch_v2_0.order_book_id.size + 
  asx_securities_trade_ouch_v2_0.traded_quantity.size + 
  asx_securities_trade_ouch_v2_0.trade_price.size + 
  asx_securities_trade_ouch_v2_0.match_id.size + 
  asx_securities_trade_ouch_v2_0.deal_source.size + 
  asx_securities_trade_ouch_v2_0.match_attributes.size

-- Display: Order Executed Message
asx_securities_trade_ouch_v2_0.order_executed_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Order Executed Message
asx_securities_trade_ouch_v2_0.order_executed_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Timestamp Nanoseconds: 8 Byte Unsigned Fixed Width Integer
  index, timestamp_nanoseconds = asx_securities_trade_ouch_v2_0.timestamp_nanoseconds.dissect(buffer, index, packet, parent)

  -- Order Token: 14 Byte Ascii String
  index, order_token = asx_securities_trade_ouch_v2_0.order_token.dissect(buffer, index, packet, parent)

  -- Order Book Id: 4 Byte Unsigned Fixed Width Integer
  index, order_book_id = asx_securities_trade_ouch_v2_0.order_book_id.dissect(buffer, index, packet, parent)

  -- Traded Quantity: 8 Byte Unsigned Fixed Width Integer
  index, traded_quantity = asx_securities_trade_ouch_v2_0.traded_quantity.dissect(buffer, index, packet, parent)

  -- Trade Price: 4 Byte Signed Fixed Width Integer
  index, trade_price = asx_securities_trade_ouch_v2_0.trade_price.dissect(buffer, index, packet, parent)

  -- Match Id: 12 Byte Unsigned Fixed Width Integer
  index, match_id = asx_securities_trade_ouch_v2_0.match_id.dissect(buffer, index, packet, parent)

  -- Deal Source: 2 Byte Unsigned Fixed Width Integer
  index, deal_source = asx_securities_trade_ouch_v2_0.deal_source.dissect(buffer, index, packet, parent)

  -- Match Attributes: 1 Byte Unsigned Fixed Width Integer
  index, match_attributes = asx_securities_trade_ouch_v2_0.match_attributes.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Order Executed Message
asx_securities_trade_ouch_v2_0.order_executed_message.dissect = function(buffer, offset, packet, parent)
  if show.order_executed_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_asx_securities_trade_ouch_v2_0.fields.order_executed_message, buffer(offset, 0))
    local index = asx_securities_trade_ouch_v2_0.order_executed_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = asx_securities_trade_ouch_v2_0.order_executed_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return asx_securities_trade_ouch_v2_0.order_executed_message.fields(buffer, offset, packet, parent)
  end
end

-- Reason
asx_securities_trade_ouch_v2_0.reason = {}

-- Size: Reason
asx_securities_trade_ouch_v2_0.reason.size = 1

-- Display: Reason
asx_securities_trade_ouch_v2_0.reason.display = function(value)
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
asx_securities_trade_ouch_v2_0.reason.dissect = function(buffer, offset, packet, parent)
  local length = asx_securities_trade_ouch_v2_0.reason.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = asx_securities_trade_ouch_v2_0.reason.display(value, buffer, offset, packet, parent)

  parent:add(omi_asx_securities_trade_ouch_v2_0.fields.reason, range, value, display)

  return offset + length, value
end

-- Order Cancelled Message
asx_securities_trade_ouch_v2_0.order_cancelled_message = {}

-- Size: Order Cancelled Message
asx_securities_trade_ouch_v2_0.order_cancelled_message.size =
  asx_securities_trade_ouch_v2_0.timestamp_nanoseconds.size + 
  asx_securities_trade_ouch_v2_0.order_token.size + 
  asx_securities_trade_ouch_v2_0.order_book_id.size + 
  asx_securities_trade_ouch_v2_0.side.size + 
  asx_securities_trade_ouch_v2_0.order_id.size + 
  asx_securities_trade_ouch_v2_0.reason.size

-- Display: Order Cancelled Message
asx_securities_trade_ouch_v2_0.order_cancelled_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Order Cancelled Message
asx_securities_trade_ouch_v2_0.order_cancelled_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Timestamp Nanoseconds: 8 Byte Unsigned Fixed Width Integer
  index, timestamp_nanoseconds = asx_securities_trade_ouch_v2_0.timestamp_nanoseconds.dissect(buffer, index, packet, parent)

  -- Order Token: 14 Byte Ascii String
  index, order_token = asx_securities_trade_ouch_v2_0.order_token.dissect(buffer, index, packet, parent)

  -- Order Book Id: 4 Byte Unsigned Fixed Width Integer
  index, order_book_id = asx_securities_trade_ouch_v2_0.order_book_id.dissect(buffer, index, packet, parent)

  -- Side: 1 Byte Ascii String Enum with 4 values
  index, side = asx_securities_trade_ouch_v2_0.side.dissect(buffer, index, packet, parent)

  -- Order Id: 8 Byte Unsigned Fixed Width Integer
  index, order_id = asx_securities_trade_ouch_v2_0.order_id.dissect(buffer, index, packet, parent)

  -- Reason: 1 Byte Unsigned Fixed Width Integer Enum with 7 values
  index, reason = asx_securities_trade_ouch_v2_0.reason.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Order Cancelled Message
asx_securities_trade_ouch_v2_0.order_cancelled_message.dissect = function(buffer, offset, packet, parent)
  if show.order_cancelled_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_asx_securities_trade_ouch_v2_0.fields.order_cancelled_message, buffer(offset, 0))
    local index = asx_securities_trade_ouch_v2_0.order_cancelled_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = asx_securities_trade_ouch_v2_0.order_cancelled_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return asx_securities_trade_ouch_v2_0.order_cancelled_message.fields(buffer, offset, packet, parent)
  end
end

-- Order State
asx_securities_trade_ouch_v2_0.order_state = {}

-- Size: Order State
asx_securities_trade_ouch_v2_0.order_state.size = 1

-- Display: Order State
asx_securities_trade_ouch_v2_0.order_state.display = function(value)
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
asx_securities_trade_ouch_v2_0.order_state.dissect = function(buffer, offset, packet, parent)
  local length = asx_securities_trade_ouch_v2_0.order_state.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = asx_securities_trade_ouch_v2_0.order_state.display(value, buffer, offset, packet, parent)

  parent:add(omi_asx_securities_trade_ouch_v2_0.fields.order_state, range, value, display)

  return offset + length, value
end

-- Previous Order Token
asx_securities_trade_ouch_v2_0.previous_order_token = {}

-- Size: Previous Order Token
asx_securities_trade_ouch_v2_0.previous_order_token.size = 14

-- Display: Previous Order Token
asx_securities_trade_ouch_v2_0.previous_order_token.display = function(value)
  return "Previous Order Token: "..value
end

-- Dissect: Previous Order Token
asx_securities_trade_ouch_v2_0.previous_order_token.dissect = function(buffer, offset, packet, parent)
  local length = asx_securities_trade_ouch_v2_0.previous_order_token.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = asx_securities_trade_ouch_v2_0.previous_order_token.display(value, buffer, offset, packet, parent)

  parent:add(omi_asx_securities_trade_ouch_v2_0.fields.previous_order_token, range, value, display)

  return offset + length, value
end

-- Order Replaced Message
asx_securities_trade_ouch_v2_0.order_replaced_message = {}

-- Size: Order Replaced Message
asx_securities_trade_ouch_v2_0.order_replaced_message.size =
  asx_securities_trade_ouch_v2_0.timestamp_nanoseconds.size + 
  asx_securities_trade_ouch_v2_0.replacement_order_token.size + 
  asx_securities_trade_ouch_v2_0.previous_order_token.size + 
  asx_securities_trade_ouch_v2_0.order_book_id.size + 
  asx_securities_trade_ouch_v2_0.side.size + 
  asx_securities_trade_ouch_v2_0.order_id.size + 
  asx_securities_trade_ouch_v2_0.quantity.size + 
  asx_securities_trade_ouch_v2_0.price.size + 
  asx_securities_trade_ouch_v2_0.time_in_force.size + 
  asx_securities_trade_ouch_v2_0.open_close.size + 
  asx_securities_trade_ouch_v2_0.client_account.size + 
  asx_securities_trade_ouch_v2_0.order_state.size + 
  asx_securities_trade_ouch_v2_0.customer_info.size + 
  asx_securities_trade_ouch_v2_0.exchange_info.size + 
  asx_securities_trade_ouch_v2_0.clearing_participant.size + 
  asx_securities_trade_ouch_v2_0.crossing_key.size + 
  asx_securities_trade_ouch_v2_0.capacity_of_participant.size + 
  asx_securities_trade_ouch_v2_0.directed_wholesale.size + 
  asx_securities_trade_ouch_v2_0.execution_venue.size + 
  asx_securities_trade_ouch_v2_0.intermediary_id.size + 
  asx_securities_trade_ouch_v2_0.order_origin.size + 
  asx_securities_trade_ouch_v2_0.filler.size + 
  asx_securities_trade_ouch_v2_0.ouch_order_type.size + 
  asx_securities_trade_ouch_v2_0.short_sell_quantity.size + 
  asx_securities_trade_ouch_v2_0.minimum_acceptable_quantity.size

-- Display: Order Replaced Message
asx_securities_trade_ouch_v2_0.order_replaced_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Order Replaced Message
asx_securities_trade_ouch_v2_0.order_replaced_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Timestamp Nanoseconds: 8 Byte Unsigned Fixed Width Integer
  index, timestamp_nanoseconds = asx_securities_trade_ouch_v2_0.timestamp_nanoseconds.dissect(buffer, index, packet, parent)

  -- Replacement Order Token: 14 Byte Ascii String
  index, replacement_order_token = asx_securities_trade_ouch_v2_0.replacement_order_token.dissect(buffer, index, packet, parent)

  -- Previous Order Token: 14 Byte Ascii String
  index, previous_order_token = asx_securities_trade_ouch_v2_0.previous_order_token.dissect(buffer, index, packet, parent)

  -- Order Book Id: 4 Byte Unsigned Fixed Width Integer
  index, order_book_id = asx_securities_trade_ouch_v2_0.order_book_id.dissect(buffer, index, packet, parent)

  -- Side: 1 Byte Ascii String Enum with 4 values
  index, side = asx_securities_trade_ouch_v2_0.side.dissect(buffer, index, packet, parent)

  -- Order Id: 8 Byte Unsigned Fixed Width Integer
  index, order_id = asx_securities_trade_ouch_v2_0.order_id.dissect(buffer, index, packet, parent)

  -- Quantity: 8 Byte Unsigned Fixed Width Integer
  index, quantity = asx_securities_trade_ouch_v2_0.quantity.dissect(buffer, index, packet, parent)

  -- Price: 4 Byte Signed Fixed Width Integer
  index, price = asx_securities_trade_ouch_v2_0.price.dissect(buffer, index, packet, parent)

  -- Time In Force: 1 Byte Unsigned Fixed Width Integer Enum with 3 values
  index, time_in_force = asx_securities_trade_ouch_v2_0.time_in_force.dissect(buffer, index, packet, parent)

  -- Open Close: 1 Byte Unsigned Fixed Width Integer
  index, open_close = asx_securities_trade_ouch_v2_0.open_close.dissect(buffer, index, packet, parent)

  -- Client Account: 10 Byte Ascii String
  index, client_account = asx_securities_trade_ouch_v2_0.client_account.dissect(buffer, index, packet, parent)

  -- Order State: 1 Byte Unsigned Fixed Width Integer Enum with 3 values
  index, order_state = asx_securities_trade_ouch_v2_0.order_state.dissect(buffer, index, packet, parent)

  -- Customer Info: 15 Byte Ascii String
  index, customer_info = asx_securities_trade_ouch_v2_0.customer_info.dissect(buffer, index, packet, parent)

  -- Exchange Info: 32 Byte Ascii String
  index, exchange_info = asx_securities_trade_ouch_v2_0.exchange_info.dissect(buffer, index, packet, parent)

  -- Clearing Participant: 1 Byte Ascii String
  index, clearing_participant = asx_securities_trade_ouch_v2_0.clearing_participant.dissect(buffer, index, packet, parent)

  -- Crossing Key: 4 Byte Unsigned Fixed Width Integer
  index, crossing_key = asx_securities_trade_ouch_v2_0.crossing_key.dissect(buffer, index, packet, parent)

  -- Capacity Of Participant: 1 Byte Ascii String Enum with 3 values
  index, capacity_of_participant = asx_securities_trade_ouch_v2_0.capacity_of_participant.dissect(buffer, index, packet, parent)

  -- Directed Wholesale: 1 Byte Ascii String Enum with 2 values
  index, directed_wholesale = asx_securities_trade_ouch_v2_0.directed_wholesale.dissect(buffer, index, packet, parent)

  -- Execution Venue: 4 Byte Ascii String
  index, execution_venue = asx_securities_trade_ouch_v2_0.execution_venue.dissect(buffer, index, packet, parent)

  -- Intermediary Id: 10 Byte Ascii String
  index, intermediary_id = asx_securities_trade_ouch_v2_0.intermediary_id.dissect(buffer, index, packet, parent)

  -- Order Origin: 20 Byte Ascii String
  index, order_origin = asx_securities_trade_ouch_v2_0.order_origin.dissect(buffer, index, packet, parent)

  -- Filler: 8 Byte Ascii String
  index, filler = asx_securities_trade_ouch_v2_0.filler.dissect(buffer, index, packet, parent)

  -- Ouch Order Type: 1 Byte Ascii String Enum with 10 values
  index, ouch_order_type = asx_securities_trade_ouch_v2_0.ouch_order_type.dissect(buffer, index, packet, parent)

  -- Short Sell Quantity: 8 Byte Unsigned Fixed Width Integer
  index, short_sell_quantity = asx_securities_trade_ouch_v2_0.short_sell_quantity.dissect(buffer, index, packet, parent)

  -- Minimum Acceptable Quantity: 8 Byte Unsigned Fixed Width Integer
  index, minimum_acceptable_quantity = asx_securities_trade_ouch_v2_0.minimum_acceptable_quantity.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Order Replaced Message
asx_securities_trade_ouch_v2_0.order_replaced_message.dissect = function(buffer, offset, packet, parent)
  if show.order_replaced_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_asx_securities_trade_ouch_v2_0.fields.order_replaced_message, buffer(offset, 0))
    local index = asx_securities_trade_ouch_v2_0.order_replaced_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = asx_securities_trade_ouch_v2_0.order_replaced_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return asx_securities_trade_ouch_v2_0.order_replaced_message.fields(buffer, offset, packet, parent)
  end
end

-- Reject Code
asx_securities_trade_ouch_v2_0.reject_code = {}

-- Size: Reject Code
asx_securities_trade_ouch_v2_0.reject_code.size = 4

-- Display: Reject Code
asx_securities_trade_ouch_v2_0.reject_code.display = function(value)
  return "Reject Code: "..value
end

-- Dissect: Reject Code
asx_securities_trade_ouch_v2_0.reject_code.dissect = function(buffer, offset, packet, parent)
  local length = asx_securities_trade_ouch_v2_0.reject_code.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = asx_securities_trade_ouch_v2_0.reject_code.display(value, buffer, offset, packet, parent)

  parent:add(omi_asx_securities_trade_ouch_v2_0.fields.reject_code, range, value, display)

  return offset + length, value
end

-- Order Rejected Message
asx_securities_trade_ouch_v2_0.order_rejected_message = {}

-- Size: Order Rejected Message
asx_securities_trade_ouch_v2_0.order_rejected_message.size =
  asx_securities_trade_ouch_v2_0.timestamp_nanoseconds.size + 
  asx_securities_trade_ouch_v2_0.order_token.size + 
  asx_securities_trade_ouch_v2_0.reject_code.size

-- Display: Order Rejected Message
asx_securities_trade_ouch_v2_0.order_rejected_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Order Rejected Message
asx_securities_trade_ouch_v2_0.order_rejected_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Timestamp Nanoseconds: 8 Byte Unsigned Fixed Width Integer
  index, timestamp_nanoseconds = asx_securities_trade_ouch_v2_0.timestamp_nanoseconds.dissect(buffer, index, packet, parent)

  -- Order Token: 14 Byte Ascii String
  index, order_token = asx_securities_trade_ouch_v2_0.order_token.dissect(buffer, index, packet, parent)

  -- Reject Code: 4 Byte Unsigned Fixed Width Integer
  index, reject_code = asx_securities_trade_ouch_v2_0.reject_code.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Order Rejected Message
asx_securities_trade_ouch_v2_0.order_rejected_message.dissect = function(buffer, offset, packet, parent)
  if show.order_rejected_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_asx_securities_trade_ouch_v2_0.fields.order_rejected_message, buffer(offset, 0))
    local index = asx_securities_trade_ouch_v2_0.order_rejected_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = asx_securities_trade_ouch_v2_0.order_rejected_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return asx_securities_trade_ouch_v2_0.order_rejected_message.fields(buffer, offset, packet, parent)
  end
end

-- Order Accepted Message
asx_securities_trade_ouch_v2_0.order_accepted_message = {}

-- Size: Order Accepted Message
asx_securities_trade_ouch_v2_0.order_accepted_message.size =
  asx_securities_trade_ouch_v2_0.timestamp_nanoseconds.size + 
  asx_securities_trade_ouch_v2_0.order_token.size + 
  asx_securities_trade_ouch_v2_0.order_book_id.size + 
  asx_securities_trade_ouch_v2_0.side.size + 
  asx_securities_trade_ouch_v2_0.order_id.size + 
  asx_securities_trade_ouch_v2_0.quantity.size + 
  asx_securities_trade_ouch_v2_0.price.size + 
  asx_securities_trade_ouch_v2_0.time_in_force.size + 
  asx_securities_trade_ouch_v2_0.open_close.size + 
  asx_securities_trade_ouch_v2_0.client_account.size + 
  asx_securities_trade_ouch_v2_0.order_state.size + 
  asx_securities_trade_ouch_v2_0.customer_info.size + 
  asx_securities_trade_ouch_v2_0.exchange_info.size + 
  asx_securities_trade_ouch_v2_0.clearing_participant.size + 
  asx_securities_trade_ouch_v2_0.crossing_key.size + 
  asx_securities_trade_ouch_v2_0.capacity_of_participant.size + 
  asx_securities_trade_ouch_v2_0.directed_wholesale.size + 
  asx_securities_trade_ouch_v2_0.execution_venue.size + 
  asx_securities_trade_ouch_v2_0.intermediary_id.size + 
  asx_securities_trade_ouch_v2_0.order_origin.size + 
  asx_securities_trade_ouch_v2_0.filler.size + 
  asx_securities_trade_ouch_v2_0.ouch_order_type.size + 
  asx_securities_trade_ouch_v2_0.short_sell_quantity.size + 
  asx_securities_trade_ouch_v2_0.minimum_acceptable_quantity.size

-- Display: Order Accepted Message
asx_securities_trade_ouch_v2_0.order_accepted_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Order Accepted Message
asx_securities_trade_ouch_v2_0.order_accepted_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Timestamp Nanoseconds: 8 Byte Unsigned Fixed Width Integer
  index, timestamp_nanoseconds = asx_securities_trade_ouch_v2_0.timestamp_nanoseconds.dissect(buffer, index, packet, parent)

  -- Order Token: 14 Byte Ascii String
  index, order_token = asx_securities_trade_ouch_v2_0.order_token.dissect(buffer, index, packet, parent)

  -- Order Book Id: 4 Byte Unsigned Fixed Width Integer
  index, order_book_id = asx_securities_trade_ouch_v2_0.order_book_id.dissect(buffer, index, packet, parent)

  -- Side: 1 Byte Ascii String Enum with 4 values
  index, side = asx_securities_trade_ouch_v2_0.side.dissect(buffer, index, packet, parent)

  -- Order Id: 8 Byte Unsigned Fixed Width Integer
  index, order_id = asx_securities_trade_ouch_v2_0.order_id.dissect(buffer, index, packet, parent)

  -- Quantity: 8 Byte Unsigned Fixed Width Integer
  index, quantity = asx_securities_trade_ouch_v2_0.quantity.dissect(buffer, index, packet, parent)

  -- Price: 4 Byte Signed Fixed Width Integer
  index, price = asx_securities_trade_ouch_v2_0.price.dissect(buffer, index, packet, parent)

  -- Time In Force: 1 Byte Unsigned Fixed Width Integer Enum with 3 values
  index, time_in_force = asx_securities_trade_ouch_v2_0.time_in_force.dissect(buffer, index, packet, parent)

  -- Open Close: 1 Byte Unsigned Fixed Width Integer
  index, open_close = asx_securities_trade_ouch_v2_0.open_close.dissect(buffer, index, packet, parent)

  -- Client Account: 10 Byte Ascii String
  index, client_account = asx_securities_trade_ouch_v2_0.client_account.dissect(buffer, index, packet, parent)

  -- Order State: 1 Byte Unsigned Fixed Width Integer Enum with 3 values
  index, order_state = asx_securities_trade_ouch_v2_0.order_state.dissect(buffer, index, packet, parent)

  -- Customer Info: 15 Byte Ascii String
  index, customer_info = asx_securities_trade_ouch_v2_0.customer_info.dissect(buffer, index, packet, parent)

  -- Exchange Info: 32 Byte Ascii String
  index, exchange_info = asx_securities_trade_ouch_v2_0.exchange_info.dissect(buffer, index, packet, parent)

  -- Clearing Participant: 1 Byte Ascii String
  index, clearing_participant = asx_securities_trade_ouch_v2_0.clearing_participant.dissect(buffer, index, packet, parent)

  -- Crossing Key: 4 Byte Unsigned Fixed Width Integer
  index, crossing_key = asx_securities_trade_ouch_v2_0.crossing_key.dissect(buffer, index, packet, parent)

  -- Capacity Of Participant: 1 Byte Ascii String Enum with 3 values
  index, capacity_of_participant = asx_securities_trade_ouch_v2_0.capacity_of_participant.dissect(buffer, index, packet, parent)

  -- Directed Wholesale: 1 Byte Ascii String Enum with 2 values
  index, directed_wholesale = asx_securities_trade_ouch_v2_0.directed_wholesale.dissect(buffer, index, packet, parent)

  -- Execution Venue: 4 Byte Ascii String
  index, execution_venue = asx_securities_trade_ouch_v2_0.execution_venue.dissect(buffer, index, packet, parent)

  -- Intermediary Id: 10 Byte Ascii String
  index, intermediary_id = asx_securities_trade_ouch_v2_0.intermediary_id.dissect(buffer, index, packet, parent)

  -- Order Origin: 20 Byte Ascii String
  index, order_origin = asx_securities_trade_ouch_v2_0.order_origin.dissect(buffer, index, packet, parent)

  -- Filler: 8 Byte Ascii String
  index, filler = asx_securities_trade_ouch_v2_0.filler.dissect(buffer, index, packet, parent)

  -- Ouch Order Type: 1 Byte Ascii String Enum with 10 values
  index, ouch_order_type = asx_securities_trade_ouch_v2_0.ouch_order_type.dissect(buffer, index, packet, parent)

  -- Short Sell Quantity: 8 Byte Unsigned Fixed Width Integer
  index, short_sell_quantity = asx_securities_trade_ouch_v2_0.short_sell_quantity.dissect(buffer, index, packet, parent)

  -- Minimum Acceptable Quantity: 8 Byte Unsigned Fixed Width Integer
  index, minimum_acceptable_quantity = asx_securities_trade_ouch_v2_0.minimum_acceptable_quantity.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Order Accepted Message
asx_securities_trade_ouch_v2_0.order_accepted_message.dissect = function(buffer, offset, packet, parent)
  if show.order_accepted_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_asx_securities_trade_ouch_v2_0.fields.order_accepted_message, buffer(offset, 0))
    local index = asx_securities_trade_ouch_v2_0.order_accepted_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = asx_securities_trade_ouch_v2_0.order_accepted_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return asx_securities_trade_ouch_v2_0.order_accepted_message.fields(buffer, offset, packet, parent)
  end
end

-- Sequenced Message
asx_securities_trade_ouch_v2_0.sequenced_message = {}

-- Size: Sequenced Message
asx_securities_trade_ouch_v2_0.sequenced_message.size = function(buffer, offset, sequenced_message_type)
  -- Size of Order Accepted Message
  if sequenced_message_type == "A" then
    return asx_securities_trade_ouch_v2_0.order_accepted_message.size
  end
  -- Size of Order Rejected Message
  if sequenced_message_type == "J" then
    return asx_securities_trade_ouch_v2_0.order_rejected_message.size
  end
  -- Size of Order Replaced Message
  if sequenced_message_type == "U" then
    return asx_securities_trade_ouch_v2_0.order_replaced_message.size
  end
  -- Size of Order Cancelled Message
  if sequenced_message_type == "C" then
    return asx_securities_trade_ouch_v2_0.order_cancelled_message.size
  end
  -- Size of Order Executed Message
  if sequenced_message_type == "E" then
    return asx_securities_trade_ouch_v2_0.order_executed_message.size
  end

  return 0
end

-- Display: Sequenced Message
asx_securities_trade_ouch_v2_0.sequenced_message.display = function(buffer, offset, packet, parent)
  return ""
end

-- Dissect Branches: Sequenced Message
asx_securities_trade_ouch_v2_0.sequenced_message.branches = function(buffer, offset, packet, parent, sequenced_message_type)
  -- Dissect Order Accepted Message
  if sequenced_message_type == "A" then
    return asx_securities_trade_ouch_v2_0.order_accepted_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Order Rejected Message
  if sequenced_message_type == "J" then
    return asx_securities_trade_ouch_v2_0.order_rejected_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Order Replaced Message
  if sequenced_message_type == "U" then
    return asx_securities_trade_ouch_v2_0.order_replaced_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Order Cancelled Message
  if sequenced_message_type == "C" then
    return asx_securities_trade_ouch_v2_0.order_cancelled_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Order Executed Message
  if sequenced_message_type == "E" then
    return asx_securities_trade_ouch_v2_0.order_executed_message.dissect(buffer, offset, packet, parent)
  end

  return offset
end

-- Dissect: Sequenced Message
asx_securities_trade_ouch_v2_0.sequenced_message.dissect = function(buffer, offset, packet, parent, sequenced_message_type)
  if not show.sequenced_message then
    return asx_securities_trade_ouch_v2_0.sequenced_message.branches(buffer, offset, packet, parent, sequenced_message_type)
  end

  -- Calculate size and check that branch is not empty
  local size = asx_securities_trade_ouch_v2_0.sequenced_message.size(buffer, offset, sequenced_message_type)
  if size == 0 then
    return offset
  end

  -- Dissect Element
  local range = buffer(offset, size)
  local display = asx_securities_trade_ouch_v2_0.sequenced_message.display(buffer, packet, parent)
  local element = parent:add(omi_asx_securities_trade_ouch_v2_0.fields.sequenced_message, range, display)

  return asx_securities_trade_ouch_v2_0.sequenced_message.branches(buffer, offset, packet, parent, sequenced_message_type)
end

-- Sequenced Message Type
asx_securities_trade_ouch_v2_0.sequenced_message_type = {}

-- Size: Sequenced Message Type
asx_securities_trade_ouch_v2_0.sequenced_message_type.size = 1

-- Display: Sequenced Message Type
asx_securities_trade_ouch_v2_0.sequenced_message_type.display = function(value)
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
asx_securities_trade_ouch_v2_0.sequenced_message_type.dissect = function(buffer, offset, packet, parent)
  local length = asx_securities_trade_ouch_v2_0.sequenced_message_type.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = asx_securities_trade_ouch_v2_0.sequenced_message_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_asx_securities_trade_ouch_v2_0.fields.sequenced_message_type, range, value, display)

  return offset + length, value
end

-- Sequenced Data Packet
asx_securities_trade_ouch_v2_0.sequenced_data_packet = {}

-- Read runtime size of: Sequenced Data Packet
asx_securities_trade_ouch_v2_0.sequenced_data_packet.size = function(buffer, offset)
  local index = offset

  -- Dependency element: Packet Length
  local packet_length = buffer(offset - 3, 2):uint()

  return packet_length - 1
end

-- Display: Sequenced Data Packet
asx_securities_trade_ouch_v2_0.sequenced_data_packet.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Sequenced Data Packet
asx_securities_trade_ouch_v2_0.sequenced_data_packet.fields = function(buffer, offset, packet, parent, size_of_sequenced_data_packet)
  local index = offset

  -- Sequenced Message Type: 1 Byte Ascii String Enum with 5 values
  index, sequenced_message_type = asx_securities_trade_ouch_v2_0.sequenced_message_type.dissect(buffer, index, packet, parent)

  -- Sequenced Message: Runtime Type with 5 branches
  index = asx_securities_trade_ouch_v2_0.sequenced_message.dissect(buffer, index, packet, parent, sequenced_message_type)

  return index
end

-- Dissect: Sequenced Data Packet
asx_securities_trade_ouch_v2_0.sequenced_data_packet.dissect = function(buffer, offset, packet, parent)
  -- Parse runtime size
  local size_of_sequenced_data_packet = asx_securities_trade_ouch_v2_0.sequenced_data_packet.size(buffer, offset)

  -- Optionally add struct element to protocol tree
  if show.sequenced_data_packet then
    local range = buffer(offset, size_of_sequenced_data_packet)
    local display = asx_securities_trade_ouch_v2_0.sequenced_data_packet.display(buffer, packet, parent)
    parent = parent:add(omi_asx_securities_trade_ouch_v2_0.fields.sequenced_data_packet, range, display)
  end

  asx_securities_trade_ouch_v2_0.sequenced_data_packet.fields(buffer, offset, packet, parent, size_of_sequenced_data_packet)

  return offset + size_of_sequenced_data_packet
end

-- Reject Reason Code
asx_securities_trade_ouch_v2_0.reject_reason_code = {}

-- Size: Reject Reason Code
asx_securities_trade_ouch_v2_0.reject_reason_code.size = 1

-- Display: Reject Reason Code
asx_securities_trade_ouch_v2_0.reject_reason_code.display = function(value)
  return "Reject Reason Code: "..value
end

-- Dissect: Reject Reason Code
asx_securities_trade_ouch_v2_0.reject_reason_code.dissect = function(buffer, offset, packet, parent)
  local length = asx_securities_trade_ouch_v2_0.reject_reason_code.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = asx_securities_trade_ouch_v2_0.reject_reason_code.display(value, buffer, offset, packet, parent)

  parent:add(omi_asx_securities_trade_ouch_v2_0.fields.reject_reason_code, range, value, display)

  return offset + length, value
end

-- Login Rejected Packet
asx_securities_trade_ouch_v2_0.login_rejected_packet = {}

-- Size: Login Rejected Packet
asx_securities_trade_ouch_v2_0.login_rejected_packet.size =
  asx_securities_trade_ouch_v2_0.reject_reason_code.size

-- Display: Login Rejected Packet
asx_securities_trade_ouch_v2_0.login_rejected_packet.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Login Rejected Packet
asx_securities_trade_ouch_v2_0.login_rejected_packet.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Reject Reason Code: 1 Byte Ascii String
  index, reject_reason_code = asx_securities_trade_ouch_v2_0.reject_reason_code.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Login Rejected Packet
asx_securities_trade_ouch_v2_0.login_rejected_packet.dissect = function(buffer, offset, packet, parent)
  if show.login_rejected_packet then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_asx_securities_trade_ouch_v2_0.fields.login_rejected_packet, buffer(offset, 0))
    local index = asx_securities_trade_ouch_v2_0.login_rejected_packet.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = asx_securities_trade_ouch_v2_0.login_rejected_packet.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return asx_securities_trade_ouch_v2_0.login_rejected_packet.fields(buffer, offset, packet, parent)
  end
end

-- Sequence Number
asx_securities_trade_ouch_v2_0.sequence_number = {}

-- Size: Sequence Number
asx_securities_trade_ouch_v2_0.sequence_number.size = 20

-- Display: Sequence Number
asx_securities_trade_ouch_v2_0.sequence_number.display = function(value)
  return "Sequence Number: "..value
end

-- Dissect: Sequence Number
asx_securities_trade_ouch_v2_0.sequence_number.dissect = function(buffer, offset, packet, parent)
  local length = asx_securities_trade_ouch_v2_0.sequence_number.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = asx_securities_trade_ouch_v2_0.sequence_number.display(value, buffer, offset, packet, parent)

  parent:add(omi_asx_securities_trade_ouch_v2_0.fields.sequence_number, range, value, display)

  return offset + length, value
end

-- Session
asx_securities_trade_ouch_v2_0.session = {}

-- Size: Session
asx_securities_trade_ouch_v2_0.session.size = 10

-- Display: Session
asx_securities_trade_ouch_v2_0.session.display = function(value)
  return "Session: "..value
end

-- Dissect: Session
asx_securities_trade_ouch_v2_0.session.dissect = function(buffer, offset, packet, parent)
  local length = asx_securities_trade_ouch_v2_0.session.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = asx_securities_trade_ouch_v2_0.session.display(value, buffer, offset, packet, parent)

  parent:add(omi_asx_securities_trade_ouch_v2_0.fields.session, range, value, display)

  return offset + length, value
end

-- Login Accepted Packet
asx_securities_trade_ouch_v2_0.login_accepted_packet = {}

-- Size: Login Accepted Packet
asx_securities_trade_ouch_v2_0.login_accepted_packet.size =
  asx_securities_trade_ouch_v2_0.session.size + 
  asx_securities_trade_ouch_v2_0.sequence_number.size

-- Display: Login Accepted Packet
asx_securities_trade_ouch_v2_0.login_accepted_packet.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Login Accepted Packet
asx_securities_trade_ouch_v2_0.login_accepted_packet.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Session: 10 Byte Ascii String
  index, session = asx_securities_trade_ouch_v2_0.session.dissect(buffer, index, packet, parent)

  -- Sequence Number: 20 Byte Ascii String
  index, sequence_number = asx_securities_trade_ouch_v2_0.sequence_number.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Login Accepted Packet
asx_securities_trade_ouch_v2_0.login_accepted_packet.dissect = function(buffer, offset, packet, parent)
  if show.login_accepted_packet then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_asx_securities_trade_ouch_v2_0.fields.login_accepted_packet, buffer(offset, 0))
    local index = asx_securities_trade_ouch_v2_0.login_accepted_packet.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = asx_securities_trade_ouch_v2_0.login_accepted_packet.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return asx_securities_trade_ouch_v2_0.login_accepted_packet.fields(buffer, offset, packet, parent)
  end
end

-- Text
asx_securities_trade_ouch_v2_0.text = {}

-- Size: Text
asx_securities_trade_ouch_v2_0.text.size = 1

-- Display: Text
asx_securities_trade_ouch_v2_0.text.display = function(value)
  return "Text: "..value
end

-- Dissect: Text
asx_securities_trade_ouch_v2_0.text.dissect = function(buffer, offset, packet, parent)
  local length = asx_securities_trade_ouch_v2_0.text.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = asx_securities_trade_ouch_v2_0.text.display(value, buffer, offset, packet, parent)

  parent:add(omi_asx_securities_trade_ouch_v2_0.fields.text, range, value, display)

  return offset + length, value
end

-- Debug Packet
asx_securities_trade_ouch_v2_0.debug_packet = {}

-- Size: Debug Packet
asx_securities_trade_ouch_v2_0.debug_packet.size =
  asx_securities_trade_ouch_v2_0.text.size

-- Display: Debug Packet
asx_securities_trade_ouch_v2_0.debug_packet.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Debug Packet
asx_securities_trade_ouch_v2_0.debug_packet.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Text: 1 Byte Ascii String
  index, text = asx_securities_trade_ouch_v2_0.text.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Debug Packet
asx_securities_trade_ouch_v2_0.debug_packet.dissect = function(buffer, offset, packet, parent)
  if show.debug_packet then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_asx_securities_trade_ouch_v2_0.fields.debug_packet, buffer(offset, 0))
    local index = asx_securities_trade_ouch_v2_0.debug_packet.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = asx_securities_trade_ouch_v2_0.debug_packet.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return asx_securities_trade_ouch_v2_0.debug_packet.fields(buffer, offset, packet, parent)
  end
end

-- Payload
asx_securities_trade_ouch_v2_0.payload = {}

-- Size: Payload
asx_securities_trade_ouch_v2_0.payload.size = function(buffer, offset, packet_type)
  -- Size of Debug Packet
  if packet_type == "+" then
    return asx_securities_trade_ouch_v2_0.debug_packet.size
  end
  -- Size of Login Accepted Packet
  if packet_type == "A" then
    return asx_securities_trade_ouch_v2_0.login_accepted_packet.size
  end
  -- Size of Login Rejected Packet
  if packet_type == "J" then
    return asx_securities_trade_ouch_v2_0.login_rejected_packet.size
  end
  -- Size of Sequenced Data Packet
  if packet_type == "S" then
    return asx_securities_trade_ouch_v2_0.sequenced_data_packet.size(buffer, offset)
  end
  -- Size of Login Request Packet
  if packet_type == "L" then
    return asx_securities_trade_ouch_v2_0.login_request_packet.size
  end
  -- Size of Unsequenced Data Packet
  if packet_type == "U" then
    return asx_securities_trade_ouch_v2_0.unsequenced_data_packet.size(buffer, offset)
  end

  return 0
end

-- Display: Payload
asx_securities_trade_ouch_v2_0.payload.display = function(buffer, offset, packet, parent)
  return ""
end

-- Dissect Branches: Payload
asx_securities_trade_ouch_v2_0.payload.branches = function(buffer, offset, packet, parent, packet_type)
  -- Dissect Debug Packet
  if packet_type == "+" then
    return asx_securities_trade_ouch_v2_0.debug_packet.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Login Accepted Packet
  if packet_type == "A" then
    return asx_securities_trade_ouch_v2_0.login_accepted_packet.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Login Rejected Packet
  if packet_type == "J" then
    return asx_securities_trade_ouch_v2_0.login_rejected_packet.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Sequenced Data Packet
  if packet_type == "S" then
    return asx_securities_trade_ouch_v2_0.sequenced_data_packet.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Login Request Packet
  if packet_type == "L" then
    return asx_securities_trade_ouch_v2_0.login_request_packet.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Unsequenced Data Packet
  if packet_type == "U" then
    return asx_securities_trade_ouch_v2_0.unsequenced_data_packet.dissect(buffer, offset, packet, parent)
  end

  return offset
end

-- Dissect: Payload
asx_securities_trade_ouch_v2_0.payload.dissect = function(buffer, offset, packet, parent, packet_type)
  if not show.payload then
    return asx_securities_trade_ouch_v2_0.payload.branches(buffer, offset, packet, parent, packet_type)
  end

  -- Calculate size and check that branch is not empty
  local size = asx_securities_trade_ouch_v2_0.payload.size(buffer, offset, packet_type)
  if size == 0 then
    return offset
  end

  -- Dissect Element
  local range = buffer(offset, size)
  local display = asx_securities_trade_ouch_v2_0.payload.display(buffer, packet, parent)
  local element = parent:add(omi_asx_securities_trade_ouch_v2_0.fields.payload, range, display)

  return asx_securities_trade_ouch_v2_0.payload.branches(buffer, offset, packet, parent, packet_type)
end

-- Packet Type
asx_securities_trade_ouch_v2_0.packet_type = {}

-- Size: Packet Type
asx_securities_trade_ouch_v2_0.packet_type.size = 1

-- Display: Packet Type
asx_securities_trade_ouch_v2_0.packet_type.display = function(value)
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
asx_securities_trade_ouch_v2_0.packet_type.dissect = function(buffer, offset, packet, parent)
  local length = asx_securities_trade_ouch_v2_0.packet_type.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = asx_securities_trade_ouch_v2_0.packet_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_asx_securities_trade_ouch_v2_0.fields.packet_type, range, value, display)

  return offset + length, value
end

-- Packet Length
asx_securities_trade_ouch_v2_0.packet_length = {}

-- Size: Packet Length
asx_securities_trade_ouch_v2_0.packet_length.size = 2

-- Display: Packet Length
asx_securities_trade_ouch_v2_0.packet_length.display = function(value)
  return "Packet Length: "..value
end

-- Dissect: Packet Length
asx_securities_trade_ouch_v2_0.packet_length.dissect = function(buffer, offset, packet, parent)
  local length = asx_securities_trade_ouch_v2_0.packet_length.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = asx_securities_trade_ouch_v2_0.packet_length.display(value, buffer, offset, packet, parent)

  parent:add(omi_asx_securities_trade_ouch_v2_0.fields.packet_length, range, value, display)

  return offset + length, value
end

-- Packet Header
asx_securities_trade_ouch_v2_0.packet_header = {}

-- Size: Packet Header
asx_securities_trade_ouch_v2_0.packet_header.size =
  asx_securities_trade_ouch_v2_0.packet_length.size + 
  asx_securities_trade_ouch_v2_0.packet_type.size

-- Display: Packet Header
asx_securities_trade_ouch_v2_0.packet_header.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Packet Header
asx_securities_trade_ouch_v2_0.packet_header.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Packet Length: 2 Byte Unsigned Fixed Width Integer
  index, packet_length = asx_securities_trade_ouch_v2_0.packet_length.dissect(buffer, index, packet, parent)

  -- Packet Type: 1 Byte Ascii String Enum with 10 values
  index, packet_type = asx_securities_trade_ouch_v2_0.packet_type.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Packet Header
asx_securities_trade_ouch_v2_0.packet_header.dissect = function(buffer, offset, packet, parent)
  if show.packet_header then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_asx_securities_trade_ouch_v2_0.fields.packet_header, buffer(offset, 0))
    local index = asx_securities_trade_ouch_v2_0.packet_header.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = asx_securities_trade_ouch_v2_0.packet_header.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return asx_securities_trade_ouch_v2_0.packet_header.fields(buffer, offset, packet, parent)
  end
end

-- Soup Bin Tcp Packet
asx_securities_trade_ouch_v2_0.soup_bin_tcp_packet = {}

-- Display: Soup Bin Tcp Packet
asx_securities_trade_ouch_v2_0.soup_bin_tcp_packet.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Soup Bin Tcp Packet
asx_securities_trade_ouch_v2_0.soup_bin_tcp_packet.fields = function(buffer, offset, packet, parent, size_of_soup_bin_tcp_packet)
  local index = offset

  -- Packet Header: Struct of 2 fields
  index, packet_header = asx_securities_trade_ouch_v2_0.packet_header.dissect(buffer, index, packet, parent)

  -- Dependency element: Packet Type
  local packet_type = buffer(index - 1, 1):string()

  -- Payload: Runtime Type with 6 branches
  index = asx_securities_trade_ouch_v2_0.payload.dissect(buffer, index, packet, parent, packet_type)

  return index
end

-- Dissect: Soup Bin Tcp Packet
asx_securities_trade_ouch_v2_0.soup_bin_tcp_packet.dissect = function(buffer, offset, packet, parent, size_of_soup_bin_tcp_packet)
  local index = offset + size_of_soup_bin_tcp_packet

  -- Optionally add group/struct element to protocol tree
  if show.soup_bin_tcp_packet then
    parent = parent:add(omi_asx_securities_trade_ouch_v2_0.fields.soup_bin_tcp_packet, buffer(offset, 0))
    local current = asx_securities_trade_ouch_v2_0.soup_bin_tcp_packet.fields(buffer, offset, packet, parent, size_of_soup_bin_tcp_packet)
    parent:set_len(size_of_soup_bin_tcp_packet)
    local display = asx_securities_trade_ouch_v2_0.soup_bin_tcp_packet.display(buffer, packet, parent)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    asx_securities_trade_ouch_v2_0.soup_bin_tcp_packet.fields(buffer, offset, packet, parent, size_of_soup_bin_tcp_packet)

    return index
  end
end

-- Remaining Bytes For: Soup Bin Tcp Packet
local soup_bin_tcp_packet_bytes_remaining = function(buffer, index, available)
  -- Calculate the number of bytes remaining
  local remaining = available - index

  -- Check if packet size can be read
  if remaining < asx_securities_trade_ouch_v2_0.packet_header.size then
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
asx_securities_trade_ouch_v2_0.packet = {}

-- Dissect Packet
asx_securities_trade_ouch_v2_0.packet.dissect = function(buffer, packet, parent)
  local index = 0

  -- Dependency for Soup Bin Tcp Packet
  local end_of_payload = buffer:len()

  -- Soup Bin Tcp Packet: Struct of 2 fields
  while index < end_of_payload do

    -- Are minimum number of bytes are available?
    local available, size_of_soup_bin_tcp_packet = soup_bin_tcp_packet_bytes_remaining(buffer, index, end_of_payload)

    if available > 0 then
      index = asx_securities_trade_ouch_v2_0.soup_bin_tcp_packet.dissect(buffer, index, packet, parent, size_of_soup_bin_tcp_packet)
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
function omi_asx_securities_trade_ouch_v2_0.init()
end

-- Dissector for Asx Securities Trade Ouch 2.0
function omi_asx_securities_trade_ouch_v2_0.dissector(buffer, packet, parent)

  -- Set protocol name
  packet.cols.protocol = omi_asx_securities_trade_ouch_v2_0.name

  -- Dissect protocol
  local protocol = parent:add(omi_asx_securities_trade_ouch_v2_0, buffer(), omi_asx_securities_trade_ouch_v2_0.description, "("..buffer:len().." Bytes)")
  return asx_securities_trade_ouch_v2_0.packet.dissect(buffer, packet, protocol)
end

-- Register With Tcp Table
local tcp_table = DissectorTable.get("tcp.port")
tcp_table:add(65333, omi_asx_securities_trade_ouch_v2_0)


-----------------------------------------------------------------------
-- Protocol Heuristics
-----------------------------------------------------------------------

-- Verify size of packet
asx_securities_trade_ouch_v2_0.packet.requiredsize = function(buffer)

  return true
end

-- Dissector Heuristic for Asx Securities Trade Ouch 2.0
local function omi_asx_securities_trade_ouch_v2_0_heuristic(buffer, packet, parent)
  -- Verify packet length
  if not asx_securities_trade_ouch_v2_0.packet.requiredsize(buffer) then return false end

  -- Protocol is valid, set conversation and dissect this packet
  packet.conversation = omi_asx_securities_trade_ouch_v2_0
  omi_asx_securities_trade_ouch_v2_0.dissector(buffer, packet, parent)

  return true
end

-- Register Heuristic for Asx Securities Trade Ouch 2.0
omi_asx_securities_trade_ouch_v2_0:register_heuristic("tcp", omi_asx_securities_trade_ouch_v2_0_heuristic)

-----------------------------------------------------------------------
-- Lua dissectors are an easily edited and modified cross-platform dissection solution.
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
-- This dissector script was generated by The Open Markets Initiative (Omi).
-- 
-- For full Omi information:
-- https://github.com/Open-Markets-Initiative/Directory
-----------------------------------------------------------------------
