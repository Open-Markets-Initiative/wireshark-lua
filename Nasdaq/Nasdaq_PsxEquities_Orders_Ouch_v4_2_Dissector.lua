-----------------------------------------------------------------------
-- Lua Script Wireshark Dissector
--
-- Please see end of file for rules and regulations
-----------------------------------------------------------------------

-- Nasdaq PsxEquities Orders Ouch 4.2 Protocol
local omi_nasdaq_psxequities_orders_ouch_v4_2 = Proto("Omi.Nasdaq.PsxEquities.Orders.Ouch.v4.2", "Nasdaq PsxEquities Orders Ouch 4.2")

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
omi_nasdaq_psxequities_orders_ouch_v4_2.fields.client_packet_type = ProtoField.new("Packet Type", "nasdaq.psxequities.orders.ouch.v4.2.clientpackettype", ftypes.STRING)
omi_nasdaq_psxequities_orders_ouch_v4_2.fields.cross_type = ProtoField.new("Cross Type", "nasdaq.psxequities.orders.ouch.v4.2.crosstype", ftypes.STRING)
omi_nasdaq_psxequities_orders_ouch_v4_2.fields.decrement_shares = ProtoField.new("Decrement Shares", "nasdaq.psxequities.orders.ouch.v4.2.decrementshares", ftypes.UINT32)
omi_nasdaq_psxequities_orders_ouch_v4_2.fields.display = ProtoField.new("Display", "nasdaq.psxequities.orders.ouch.v4.2.display", ftypes.STRING)
omi_nasdaq_psxequities_orders_ouch_v4_2.fields.event_code = ProtoField.new("Event Code", "nasdaq.psxequities.orders.ouch.v4.2.eventcode", ftypes.STRING)
omi_nasdaq_psxequities_orders_ouch_v4_2.fields.executed_shares = ProtoField.new("Executed Shares", "nasdaq.psxequities.orders.ouch.v4.2.executedshares", ftypes.UINT32)
omi_nasdaq_psxequities_orders_ouch_v4_2.fields.execution_price = ProtoField.new("Execution Price", "nasdaq.psxequities.orders.ouch.v4.2.executionprice", ftypes.UINT32)
omi_nasdaq_psxequities_orders_ouch_v4_2.fields.existing_order_token = ProtoField.new("Existing Order Token", "nasdaq.psxequities.orders.ouch.v4.2.existingordertoken", ftypes.STRING)
omi_nasdaq_psxequities_orders_ouch_v4_2.fields.firm = ProtoField.new("Firm", "nasdaq.psxequities.orders.ouch.v4.2.firm", ftypes.STRING)
omi_nasdaq_psxequities_orders_ouch_v4_2.fields.intermarket_sweep_eligibility = ProtoField.new("Intermarket Sweep Eligibility", "nasdaq.psxequities.orders.ouch.v4.2.intermarketsweepeligibility", ftypes.STRING)
omi_nasdaq_psxequities_orders_ouch_v4_2.fields.liquidity_flag = ProtoField.new("Liquidity Flag", "nasdaq.psxequities.orders.ouch.v4.2.liquidityflag", ftypes.STRING)
omi_nasdaq_psxequities_orders_ouch_v4_2.fields.match_number = ProtoField.new("Match Number", "nasdaq.psxequities.orders.ouch.v4.2.matchnumber", ftypes.UINT64)
omi_nasdaq_psxequities_orders_ouch_v4_2.fields.minimum_quantity = ProtoField.new("Minimum Quantity", "nasdaq.psxequities.orders.ouch.v4.2.minimumquantity", ftypes.UINT32)
omi_nasdaq_psxequities_orders_ouch_v4_2.fields.order_reference_number = ProtoField.new("Order Reference Number", "nasdaq.psxequities.orders.ouch.v4.2.orderreferencenumber", ftypes.UINT64)
omi_nasdaq_psxequities_orders_ouch_v4_2.fields.order_state = ProtoField.new("Order State", "nasdaq.psxequities.orders.ouch.v4.2.orderstate", ftypes.STRING)
omi_nasdaq_psxequities_orders_ouch_v4_2.fields.order_token = ProtoField.new("Order Token", "nasdaq.psxequities.orders.ouch.v4.2.ordertoken", ftypes.STRING)
omi_nasdaq_psxequities_orders_ouch_v4_2.fields.packet_length = ProtoField.new("Packet Length", "nasdaq.psxequities.orders.ouch.v4.2.packetlength", ftypes.UINT16)
omi_nasdaq_psxequities_orders_ouch_v4_2.fields.password = ProtoField.new("Password", "nasdaq.psxequities.orders.ouch.v4.2.password", ftypes.STRING)
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
omi_nasdaq_psxequities_orders_ouch_v4_2.fields.sequenced_message_type = ProtoField.new("Sequenced Message Type", "nasdaq.psxequities.orders.ouch.v4.2.sequencedmessagetype", ftypes.STRING)
omi_nasdaq_psxequities_orders_ouch_v4_2.fields.server_packet_type = ProtoField.new("Packet Type", "nasdaq.psxequities.orders.ouch.v4.2.serverpackettype", ftypes.STRING)
omi_nasdaq_psxequities_orders_ouch_v4_2.fields.session = ProtoField.new("Session", "nasdaq.psxequities.orders.ouch.v4.2.session", ftypes.STRING)
omi_nasdaq_psxequities_orders_ouch_v4_2.fields.shares = ProtoField.new("Shares", "nasdaq.psxequities.orders.ouch.v4.2.shares", ftypes.UINT32)
omi_nasdaq_psxequities_orders_ouch_v4_2.fields.stock = ProtoField.new("Stock", "nasdaq.psxequities.orders.ouch.v4.2.stock", ftypes.STRING)
omi_nasdaq_psxequities_orders_ouch_v4_2.fields.text = ProtoField.new("Text", "nasdaq.psxequities.orders.ouch.v4.2.text", ftypes.STRING)
omi_nasdaq_psxequities_orders_ouch_v4_2.fields.time_in_force = ProtoField.new("Time In Force", "nasdaq.psxequities.orders.ouch.v4.2.timeinforce", ftypes.UINT32)
omi_nasdaq_psxequities_orders_ouch_v4_2.fields.timestamp = ProtoField.new("Timestamp", "nasdaq.psxequities.orders.ouch.v4.2.timestamp", ftypes.UINT64)
omi_nasdaq_psxequities_orders_ouch_v4_2.fields.unsequenced_message_type = ProtoField.new("Unsequenced Message Type", "nasdaq.psxequities.orders.ouch.v4.2.unsequencedmessagetype", ftypes.STRING)
omi_nasdaq_psxequities_orders_ouch_v4_2.fields.username = ProtoField.new("Username", "nasdaq.psxequities.orders.ouch.v4.2.username", ftypes.STRING)

-- Nasdaq PsxEquities Orders Ouch 4.2 Headers
omi_nasdaq_psxequities_orders_ouch_v4_2.fields.client_packet = ProtoField.new("Packet", "nasdaq.psxequities.orders.ouch.v4.2.clientpacket", ftypes.STRING)
omi_nasdaq_psxequities_orders_ouch_v4_2.fields.client_packet_header = ProtoField.new("Packet Header", "nasdaq.psxequities.orders.ouch.v4.2.clientpacketheader", ftypes.STRING)
omi_nasdaq_psxequities_orders_ouch_v4_2.fields.client_soup_bin_tcp_packet = ProtoField.new("Soup Bin Tcp Packet", "nasdaq.psxequities.orders.ouch.v4.2.clientsoupbintcppacket", ftypes.STRING)
omi_nasdaq_psxequities_orders_ouch_v4_2.fields.server_packet = ProtoField.new("Packet", "nasdaq.psxequities.orders.ouch.v4.2.serverpacket", ftypes.STRING)
omi_nasdaq_psxequities_orders_ouch_v4_2.fields.server_packet_header = ProtoField.new("Packet Header", "nasdaq.psxequities.orders.ouch.v4.2.serverpacketheader", ftypes.STRING)
omi_nasdaq_psxequities_orders_ouch_v4_2.fields.server_soup_bin_tcp_packet = ProtoField.new("Soup Bin Tcp Packet", "nasdaq.psxequities.orders.ouch.v4.2.serversoupbintcppacket", ftypes.STRING)

-- Nasdaq PsxEquities Orders 4.2 Application Messages
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

-- Nasdaq PsxEquities Orders 4.2 Session Messages
omi_nasdaq_psxequities_orders_ouch_v4_2.fields.debug_packet = ProtoField.new("Debug Packet", "nasdaq.psxequities.orders.ouch.v4.2.debugpacket", ftypes.STRING)
omi_nasdaq_psxequities_orders_ouch_v4_2.fields.login_accepted_packet = ProtoField.new("Login Accepted Packet", "nasdaq.psxequities.orders.ouch.v4.2.loginacceptedpacket", ftypes.STRING)
omi_nasdaq_psxequities_orders_ouch_v4_2.fields.login_rejected_packet = ProtoField.new("Login Rejected Packet", "nasdaq.psxequities.orders.ouch.v4.2.loginrejectedpacket", ftypes.STRING)
omi_nasdaq_psxequities_orders_ouch_v4_2.fields.login_request_packet = ProtoField.new("Login Request Packet", "nasdaq.psxequities.orders.ouch.v4.2.loginrequestpacket", ftypes.STRING)
omi_nasdaq_psxequities_orders_ouch_v4_2.fields.sequenced_data_packet = ProtoField.new("Sequenced Data Packet", "nasdaq.psxequities.orders.ouch.v4.2.sequenceddatapacket", ftypes.STRING)
omi_nasdaq_psxequities_orders_ouch_v4_2.fields.unsequenced_data_packet = ProtoField.new("Unsequenced Data Packet", "nasdaq.psxequities.orders.ouch.v4.2.unsequenceddatapacket", ftypes.STRING)

-- Nasdaq PsxEquities Orders Ouch 4.2 generated fields
omi_nasdaq_psxequities_orders_ouch_v4_2.fields.sequenced_data_packet_sequence_number = ProtoField.new("Sequenced Data Packet Sequence Number", "nasdaq.psxequities.orders.ouch.v4.2.sequenceddatapacketsequencenumber", ftypes.UINT64)

-----------------------------------------------------------------------
-- Declare Dissection Options
-----------------------------------------------------------------------

local show = {}

-- Nasdaq PsxEquities Orders Ouch 4.2 Element Dissection Options
show.application_messages = true
show.structs = true
show.session_messages = true
show.sequences = true

-- Register Nasdaq PsxEquities Orders Ouch 4.2 Show Options
local role_enum = {
  { 1, "Resolve from the conversation", 0 },
  { 2, "Initiator", 1 },
  { 3, "Acceptor", 2 }
}
omi_nasdaq_psxequities_orders_ouch_v4_2.prefs.acceptor_port = Pref.uint("Acceptor Port", 0, "Port the acceptor listens on; 0 resolves each frame's role from its conversation")
omi_nasdaq_psxequities_orders_ouch_v4_2.prefs.assume_role = Pref.enum("Assume Role", 0, "Connection role assumed for every frame, for captures that start mid conversation", role_enum, false)
omi_nasdaq_psxequities_orders_ouch_v4_2.prefs.swap_sides = Pref.bool("Swap Sides", false, "The first frame seen of each conversation was the acceptor's, not the initiator's; for captures that start mid conversation")
omi_nasdaq_psxequities_orders_ouch_v4_2.prefs.show_application_messages = Pref.bool("Show Application Messages", show.application_messages, "Parse and add Application Messages to protocol tree")
omi_nasdaq_psxequities_orders_ouch_v4_2.prefs.show_structs = Pref.bool("Show Structs", show.structs, "Parse and add Structs to protocol tree")
omi_nasdaq_psxequities_orders_ouch_v4_2.prefs.show_session_messages = Pref.bool("Show Session Messages", show.session_messages, "Parse and add Session Messages to protocol tree")
omi_nasdaq_psxequities_orders_ouch_v4_2.prefs.show_sequences = Pref.bool("Show Sequence Numbers", show.sequences, "Show each message's own feed sequence number in the protocol tree")

-- Handle changed preferences
function omi_nasdaq_psxequities_orders_ouch_v4_2.prefs_changed()

  -- Check if preferences have changed
  if show.application_messages ~= omi_nasdaq_psxequities_orders_ouch_v4_2.prefs.show_application_messages then
    show.application_messages = omi_nasdaq_psxequities_orders_ouch_v4_2.prefs.show_application_messages
  end
  if show.session_messages ~= omi_nasdaq_psxequities_orders_ouch_v4_2.prefs.show_session_messages then
    show.session_messages = omi_nasdaq_psxequities_orders_ouch_v4_2.prefs.show_session_messages
  end
  if show.structs ~= omi_nasdaq_psxequities_orders_ouch_v4_2.prefs.show_structs then
    show.structs = omi_nasdaq_psxequities_orders_ouch_v4_2.prefs.show_structs
  end
  if show.sequences ~= omi_nasdaq_psxequities_orders_ouch_v4_2.prefs.show_sequences then
    show.sequences = omi_nasdaq_psxequities_orders_ouch_v4_2.prefs.show_sequences
  end
end


-----------------------------------------------------------------------
-- Protocol Conversation State
-----------------------------------------------------------------------

-- State, keyed by src/dst tuple
nasdaq_psxequities_orders_ouch_v4_2.conversation = {}
nasdaq_psxequities_orders_ouch_v4_2.conversation.flows = {}

-- Revisit replay cursor for stream sequences: which frame is being
-- re-dissected and which memoized occurrence within it is next
nasdaq_psxequities_orders_ouch_v4_2.stream_frame = nil
nasdaq_psxequities_orders_ouch_v4_2.stream_occurrence = 0

-- Conversation key for the current packet (src/dst tuple)
nasdaq_psxequities_orders_ouch_v4_2.conversation.key = function(packet)
  return string.format("%s|%s|%s|%s", tostring(packet.src), packet.src_port, tostring(packet.dst), packet.dst_port)
end


-- Get/create our protocol's data record for the current packet's flow
nasdaq_psxequities_orders_ouch_v4_2.conversation.data = function(packet)
  local key = nasdaq_psxequities_orders_ouch_v4_2.conversation.key(packet)
  local data = nasdaq_psxequities_orders_ouch_v4_2.conversation.flows[key]
  if data == nil then
    data = { sequence = { next = nil, frames = {} } }
    nasdaq_psxequities_orders_ouch_v4_2.conversation.flows[key] = data
  end
  return data
end


-- Handle to the current packet's conversation data
nasdaq_psxequities_orders_ouch_v4_2.conversation.current = nil


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
-- Nasdaq PsxEquities Orders Ouch 4.2 Fields
-----------------------------------------------------------------------

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

-- Bbo Weight Indicator
nasdaq_psxequities_orders_ouch_v4_2.bbo_weight_indicator = {}

-- Size: Bbo Weight Indicator
nasdaq_psxequities_orders_ouch_v4_2.bbo_weight_indicator.size = 1

-- Display: Bbo Weight Indicator
nasdaq_psxequities_orders_ouch_v4_2.bbo_weight_indicator.display = function(value)
  if value == "0" then
    return "Bbo Weight Indicator: Less Than Point Two Percent (0)"
  end
  if value == "1" then
    return "Bbo Weight Indicator: Less Than One Percent (1)"
  end
  if value == "2" then
    return "Bbo Weight Indicator: Less Than Two Percent (2)"
  end
  if value == "3" then
    return "Bbo Weight Indicator: Greater Than Two Percent (3)"
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

-- Client Packet Type
nasdaq_psxequities_orders_ouch_v4_2.client_packet_type = {}

-- Size: Client Packet Type
nasdaq_psxequities_orders_ouch_v4_2.client_packet_type.size = 1

-- Display: Client Packet Type
nasdaq_psxequities_orders_ouch_v4_2.client_packet_type.display = function(value)
  if value == "+" then
    return "Packet Type: Debug Packet (+)"
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

-- Dissect: Client Packet Type
nasdaq_psxequities_orders_ouch_v4_2.client_packet_type.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_psxequities_orders_ouch_v4_2.client_packet_type.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_psxequities_orders_ouch_v4_2.client_packet_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_psxequities_orders_ouch_v4_2.fields.client_packet_type, range, value, display)

  return offset + length, value
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

-- Password
nasdaq_psxequities_orders_ouch_v4_2.password = {}

-- Size: Password
nasdaq_psxequities_orders_ouch_v4_2.password.size = 10

-- Display: Password
nasdaq_psxequities_orders_ouch_v4_2.password.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Password: No Value"
  end

  return "Password: "..value
end

-- Dissect: Password
nasdaq_psxequities_orders_ouch_v4_2.password.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_psxequities_orders_ouch_v4_2.password.size
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

  local display = nasdaq_psxequities_orders_ouch_v4_2.password.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_psxequities_orders_ouch_v4_2.fields.password, range, value, display)

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
  local value = tonumber(range:string())

  if value == nil then
    value =  "Not Applicable"
  end

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
  local value = tonumber(range:string())

  if value == nil then
    value =  "Not Applicable"
  end

  local display = nasdaq_psxequities_orders_ouch_v4_2.sequence_number.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_psxequities_orders_ouch_v4_2.fields.sequence_number, range, value, display)

  return offset + length, value
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

-- Server Packet Type
nasdaq_psxequities_orders_ouch_v4_2.server_packet_type = {}

-- Size: Server Packet Type
nasdaq_psxequities_orders_ouch_v4_2.server_packet_type.size = 1

-- Display: Server Packet Type
nasdaq_psxequities_orders_ouch_v4_2.server_packet_type.display = function(value)
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

  return "Packet Type: Unknown("..value..")"
end

-- Dissect: Server Packet Type
nasdaq_psxequities_orders_ouch_v4_2.server_packet_type.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_psxequities_orders_ouch_v4_2.server_packet_type.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_psxequities_orders_ouch_v4_2.server_packet_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_psxequities_orders_ouch_v4_2.fields.server_packet_type, range, value, display)

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
  if value == "X" then
    return "Unsequenced Message Type: Cancel Order Message (X)"
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

-- Username
nasdaq_psxequities_orders_ouch_v4_2.username = {}

-- Size: Username
nasdaq_psxequities_orders_ouch_v4_2.username.size = 6

-- Display: Username
nasdaq_psxequities_orders_ouch_v4_2.username.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Username: No Value"
  end

  return "Username: "..value
end

-- Dissect: Username
nasdaq_psxequities_orders_ouch_v4_2.username.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_psxequities_orders_ouch_v4_2.username.size
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

  local display = nasdaq_psxequities_orders_ouch_v4_2.username.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_psxequities_orders_ouch_v4_2.fields.username, range, value, display)

  return offset + length, value
end


-----------------------------------------------------------------------
-- Dissect Nasdaq PsxEquities Orders Ouch 4.2
-----------------------------------------------------------------------

-- End Of Session
nasdaq_psxequities_orders_ouch_v4_2.end_of_session = {}

-- Display: End Of Session
nasdaq_psxequities_orders_ouch_v4_2.end_of_session.display = function(packet, parent, length)
  return "End Of Session"
end


-- Dissect: End Of Session
nasdaq_psxequities_orders_ouch_v4_2.end_of_session.dissect = function(buffer, offset, packet, parent)
  local display = nasdaq_psxequities_orders_ouch_v4_2.end_of_session.display(packet, parent, 0)
  packet.cols.info = display

  return offset
end

-- Server Heartbeat
nasdaq_psxequities_orders_ouch_v4_2.server_heartbeat = {}

-- Display: Server Heartbeat
nasdaq_psxequities_orders_ouch_v4_2.server_heartbeat.display = function(packet, parent, length)
  return "Server Heartbeat"
end


-- Dissect: Server Heartbeat
nasdaq_psxequities_orders_ouch_v4_2.server_heartbeat.dissect = function(buffer, offset, packet, parent)
  local display = nasdaq_psxequities_orders_ouch_v4_2.server_heartbeat.display(packet, parent, 0)
  packet.cols.info = display

  return offset
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
  if show.application_messages then
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
  if show.application_messages then
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
  if show.application_messages then
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
  if show.application_messages then
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
  if show.application_messages then
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
  if show.application_messages then
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
  if show.application_messages then
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
  if show.application_messages then
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
  if show.application_messages then
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
  if show.application_messages then
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
  if show.application_messages then
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
  if show.application_messages then
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

-- Dissect: Sequenced Message
nasdaq_psxequities_orders_ouch_v4_2.sequenced_message.dissect = function(buffer, offset, packet, parent, sequenced_message_type)
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

  -- Implicit Sequenced Data Packet Sequence Number
  local flow = nasdaq_psxequities_orders_ouch_v4_2.conversation.current
  if flow ~= nil then
    local memo = flow.sequence.frames[packet.number]
    if not packet.visited then
      local value = flow.sequence.next
      if value ~= nil then
        if memo == nil then
          memo = {}
          flow.sequence.frames[packet.number] = memo
        end
        memo[#memo + 1] = value
        flow.sequence.next = value + 1
        if show.sequences then
          local sequence = parent:add(omi_nasdaq_psxequities_orders_ouch_v4_2.fields.sequenced_data_packet_sequence_number, UInt64.new(value))
          sequence:set_generated()
        end
      end
    else
      if memo ~= nil and #memo > 0 then
        if nasdaq_psxequities_orders_ouch_v4_2.stream_frame ~= packet.number or nasdaq_psxequities_orders_ouch_v4_2.stream_occurrence >= #memo then
          nasdaq_psxequities_orders_ouch_v4_2.stream_frame = packet.number
          nasdaq_psxequities_orders_ouch_v4_2.stream_occurrence = 0
        end
        nasdaq_psxequities_orders_ouch_v4_2.stream_occurrence = nasdaq_psxequities_orders_ouch_v4_2.stream_occurrence + 1
        local value = memo[nasdaq_psxequities_orders_ouch_v4_2.stream_occurrence]
        if show.sequences and value ~= nil then
          local sequence = parent:add(omi_nasdaq_psxequities_orders_ouch_v4_2.fields.sequenced_data_packet_sequence_number, UInt64.new(value))
          sequence:set_generated()
        end
      end
    end
  end

  -- Sequenced Message Type: 1 Byte Ascii String Enum with 12 values
  index, sequenced_message_type = nasdaq_psxequities_orders_ouch_v4_2.sequenced_message_type.dissect(buffer, index, packet, parent)

  -- Sequenced Message: Runtime Type with 12 branches
  index = nasdaq_psxequities_orders_ouch_v4_2.sequenced_message.dissect(buffer, index, packet, parent, sequenced_message_type)

  return index
end

-- Dissect: Sequenced Data Packet
nasdaq_psxequities_orders_ouch_v4_2.sequenced_data_packet.dissect = function(buffer, offset, packet, parent, size_of_sequenced_data_packet)
  local size_of_sequenced_data_packet = nasdaq_psxequities_orders_ouch_v4_2.sequenced_data_packet.size(buffer, offset)
  local index = offset + size_of_sequenced_data_packet

  -- Optionally add group/struct element to protocol tree
  if show.session_messages then
    parent = parent:add(omi_nasdaq_psxequities_orders_ouch_v4_2.fields.sequenced_data_packet, buffer(offset, 0))
    local current = nasdaq_psxequities_orders_ouch_v4_2.sequenced_data_packet.fields(buffer, offset, packet, parent, size_of_sequenced_data_packet)
    parent:set_len(size_of_sequenced_data_packet)
    local display = nasdaq_psxequities_orders_ouch_v4_2.sequenced_data_packet.display(buffer, packet, parent)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    nasdaq_psxequities_orders_ouch_v4_2.sequenced_data_packet.fields(buffer, offset, packet, parent, size_of_sequenced_data_packet)

    return index
  end
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
  if show.session_messages then
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

  -- Stream sequence anchor: the next sequenced message's number
  if not packet.visited then
    local flow = nasdaq_psxequities_orders_ouch_v4_2.conversation.current
    local anchor = tonumber(sequence_number)
    if flow ~= nil and anchor ~= nil then
      flow.sequence.next = anchor
    end
  end

  return index
end

-- Dissect: Login Accepted Packet
nasdaq_psxequities_orders_ouch_v4_2.login_accepted_packet.dissect = function(buffer, offset, packet, parent)
  if show.session_messages then
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
  if show.session_messages then
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

-- Server Payload
nasdaq_psxequities_orders_ouch_v4_2.server_payload = {}

-- Dissect: Server Payload
nasdaq_psxequities_orders_ouch_v4_2.server_payload.dissect = function(buffer, offset, packet, parent, server_packet_type)
  -- Dissect Debug Packet
  if server_packet_type == "+" then
    return nasdaq_psxequities_orders_ouch_v4_2.debug_packet.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Login Accepted Packet
  if server_packet_type == "A" then
    return nasdaq_psxequities_orders_ouch_v4_2.login_accepted_packet.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Login Rejected Packet
  if server_packet_type == "J" then
    return nasdaq_psxequities_orders_ouch_v4_2.login_rejected_packet.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Sequenced Data Packet
  if server_packet_type == "S" then
    return nasdaq_psxequities_orders_ouch_v4_2.sequenced_data_packet.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Server Heartbeat
  if server_packet_type == "H" then
    return nasdaq_psxequities_orders_ouch_v4_2.server_heartbeat.dissect(buffer, offset, packet, parent)
  end
  -- Dissect End Of Session
  if server_packet_type == "Z" then
    return nasdaq_psxequities_orders_ouch_v4_2.end_of_session.dissect(buffer, offset, packet, parent)
  end

  return offset
end

-- Server Packet Header
nasdaq_psxequities_orders_ouch_v4_2.server_packet_header = {}

-- Size: Server Packet Header
nasdaq_psxequities_orders_ouch_v4_2.server_packet_header.size =
  nasdaq_psxequities_orders_ouch_v4_2.packet_length.size + 
  nasdaq_psxequities_orders_ouch_v4_2.server_packet_type.size

-- Display: Server Packet Header
nasdaq_psxequities_orders_ouch_v4_2.server_packet_header.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Server Packet Header
nasdaq_psxequities_orders_ouch_v4_2.server_packet_header.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Packet Length: 2 Byte Unsigned Fixed Width Integer
  index, packet_length = nasdaq_psxequities_orders_ouch_v4_2.packet_length.dissect(buffer, index, packet, parent)

  -- Server Packet Type: 1 Byte Ascii String Enum with 6 values
  index, server_packet_type = nasdaq_psxequities_orders_ouch_v4_2.server_packet_type.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Server Packet Header
nasdaq_psxequities_orders_ouch_v4_2.server_packet_header.dissect = function(buffer, offset, packet, parent)
  if show.structs then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_psxequities_orders_ouch_v4_2.fields.server_packet_header, buffer(offset, 0))
    local index = nasdaq_psxequities_orders_ouch_v4_2.server_packet_header.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_psxequities_orders_ouch_v4_2.server_packet_header.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_psxequities_orders_ouch_v4_2.server_packet_header.fields(buffer, offset, packet, parent)
  end
end

-- Server Soup Bin Tcp Packet
nasdaq_psxequities_orders_ouch_v4_2.server_soup_bin_tcp_packet = {}

-- Display: Server Soup Bin Tcp Packet
nasdaq_psxequities_orders_ouch_v4_2.server_soup_bin_tcp_packet.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Server Soup Bin Tcp Packet
nasdaq_psxequities_orders_ouch_v4_2.server_soup_bin_tcp_packet.fields = function(buffer, offset, packet, parent, size_of_server_soup_bin_tcp_packet)
  local index = offset

  -- Server Packet Header: Struct of 2 fields
  index, server_packet_header = nasdaq_psxequities_orders_ouch_v4_2.server_packet_header.dissect(buffer, index, packet, parent)

  -- Dependency element: Server Packet Type
  local server_packet_type = buffer(index - 1, 1):string()

  -- Server Payload: Runtime Type with 6 branches
  index = nasdaq_psxequities_orders_ouch_v4_2.server_payload.dissect(buffer, index, packet, parent, server_packet_type)

  return index
end

-- Dissect: Server Soup Bin Tcp Packet
nasdaq_psxequities_orders_ouch_v4_2.server_soup_bin_tcp_packet.dissect = function(buffer, offset, packet, parent, size_of_server_soup_bin_tcp_packet)
  local index = offset + size_of_server_soup_bin_tcp_packet

  -- Optionally add group/struct element to protocol tree
  if show.structs then
    parent = parent:add(omi_nasdaq_psxequities_orders_ouch_v4_2.fields.server_soup_bin_tcp_packet, buffer(offset, 0))
    local current = nasdaq_psxequities_orders_ouch_v4_2.server_soup_bin_tcp_packet.fields(buffer, offset, packet, parent, size_of_server_soup_bin_tcp_packet)
    parent:set_len(size_of_server_soup_bin_tcp_packet)
    local display = nasdaq_psxequities_orders_ouch_v4_2.server_soup_bin_tcp_packet.display(buffer, packet, parent)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    nasdaq_psxequities_orders_ouch_v4_2.server_soup_bin_tcp_packet.fields(buffer, offset, packet, parent, size_of_server_soup_bin_tcp_packet)

    return index
  end
end

-- Remaining Bytes For: Server Soup Bin Tcp Packet
local server_soup_bin_tcp_packet_bytes_remaining = function(buffer, index, available)
  -- Calculate the number of bytes remaining
  local remaining = available - index

  -- Check if packet size can be read
  if remaining < nasdaq_psxequities_orders_ouch_v4_2.server_packet_header.size then
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

-- Server Packet
nasdaq_psxequities_orders_ouch_v4_2.server_packet = {}

-- Verify required size of Tcp packet
nasdaq_psxequities_orders_ouch_v4_2.server_packet.requiredsize = function(buffer)
  return buffer:len() >= nasdaq_psxequities_orders_ouch_v4_2.server_packet_header.size
end

-- Dissect Server Packet
nasdaq_psxequities_orders_ouch_v4_2.server_packet.dissect = function(buffer, packet, parent)
  local index = 0

  -- Dependency for Server Soup Bin Tcp Packet
  local end_of_payload = buffer:len()

  -- Server Soup Bin Tcp Packet: Struct of 2 fields
  while index < end_of_payload do

    -- Are minimum number of bytes are available?
    local available, size_of_server_soup_bin_tcp_packet = server_soup_bin_tcp_packet_bytes_remaining(buffer, index, end_of_payload)

    if available > 0 then
      index = nasdaq_psxequities_orders_ouch_v4_2.server_soup_bin_tcp_packet.dissect(buffer, index, packet, parent, size_of_server_soup_bin_tcp_packet)
    else
      -- More bytes needed, so set packet information
      packet.desegment_offset = index
      packet.desegment_len = -(available)

      break
    end
  end

  return index
end

-- Logout Request
nasdaq_psxequities_orders_ouch_v4_2.logout_request = {}

-- Display: Logout Request
nasdaq_psxequities_orders_ouch_v4_2.logout_request.display = function(packet, parent, length)
  return "Logout Request"
end


-- Dissect: Logout Request
nasdaq_psxequities_orders_ouch_v4_2.logout_request.dissect = function(buffer, offset, packet, parent)
  local display = nasdaq_psxequities_orders_ouch_v4_2.logout_request.display(packet, parent, 0)
  packet.cols.info = display

  return offset
end

-- Client Heartbeat
nasdaq_psxequities_orders_ouch_v4_2.client_heartbeat = {}

-- Display: Client Heartbeat
nasdaq_psxequities_orders_ouch_v4_2.client_heartbeat.display = function(packet, parent, length)
  return "Client Heartbeat"
end


-- Dissect: Client Heartbeat
nasdaq_psxequities_orders_ouch_v4_2.client_heartbeat.dissect = function(buffer, offset, packet, parent)
  local display = nasdaq_psxequities_orders_ouch_v4_2.client_heartbeat.display(packet, parent, 0)
  packet.cols.info = display

  return offset
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
  if show.application_messages then
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
  if show.application_messages then
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
  if show.application_messages then
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
  if show.application_messages then
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

-- Dissect: Unsequenced Message
nasdaq_psxequities_orders_ouch_v4_2.unsequenced_message.dissect = function(buffer, offset, packet, parent, unsequenced_message_type)
  -- Dissect Enter Order Message
  if unsequenced_message_type == "O" then
    return nasdaq_psxequities_orders_ouch_v4_2.enter_order_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Replace Order Message
  if unsequenced_message_type == "U" then
    return nasdaq_psxequities_orders_ouch_v4_2.replace_order_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Cancel Order Message
  if unsequenced_message_type == "X" then
    return nasdaq_psxequities_orders_ouch_v4_2.cancel_order_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Modify Order Message
  if unsequenced_message_type == "M" then
    return nasdaq_psxequities_orders_ouch_v4_2.modify_order_message.dissect(buffer, offset, packet, parent)
  end

  return offset
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
nasdaq_psxequities_orders_ouch_v4_2.unsequenced_data_packet.dissect = function(buffer, offset, packet, parent, size_of_unsequenced_data_packet)
  local size_of_unsequenced_data_packet = nasdaq_psxequities_orders_ouch_v4_2.unsequenced_data_packet.size(buffer, offset)
  local index = offset + size_of_unsequenced_data_packet

  -- Optionally add group/struct element to protocol tree
  if show.session_messages then
    parent = parent:add(omi_nasdaq_psxequities_orders_ouch_v4_2.fields.unsequenced_data_packet, buffer(offset, 0))
    local current = nasdaq_psxequities_orders_ouch_v4_2.unsequenced_data_packet.fields(buffer, offset, packet, parent, size_of_unsequenced_data_packet)
    parent:set_len(size_of_unsequenced_data_packet)
    local display = nasdaq_psxequities_orders_ouch_v4_2.unsequenced_data_packet.display(buffer, packet, parent)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    nasdaq_psxequities_orders_ouch_v4_2.unsequenced_data_packet.fields(buffer, offset, packet, parent, size_of_unsequenced_data_packet)

    return index
  end
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
  if show.session_messages then
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

-- Client Payload
nasdaq_psxequities_orders_ouch_v4_2.client_payload = {}

-- Dissect: Client Payload
nasdaq_psxequities_orders_ouch_v4_2.client_payload.dissect = function(buffer, offset, packet, parent, client_packet_type)
  -- Dissect Debug Packet
  if client_packet_type == "+" then
    return nasdaq_psxequities_orders_ouch_v4_2.debug_packet.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Login Request Packet
  if client_packet_type == "L" then
    return nasdaq_psxequities_orders_ouch_v4_2.login_request_packet.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Unsequenced Data Packet
  if client_packet_type == "U" then
    return nasdaq_psxequities_orders_ouch_v4_2.unsequenced_data_packet.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Client Heartbeat
  if client_packet_type == "R" then
    return nasdaq_psxequities_orders_ouch_v4_2.client_heartbeat.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Logout Request
  if client_packet_type == "O" then
    return nasdaq_psxequities_orders_ouch_v4_2.logout_request.dissect(buffer, offset, packet, parent)
  end

  return offset
end

-- Client Packet Header
nasdaq_psxequities_orders_ouch_v4_2.client_packet_header = {}

-- Size: Client Packet Header
nasdaq_psxequities_orders_ouch_v4_2.client_packet_header.size =
  nasdaq_psxequities_orders_ouch_v4_2.packet_length.size + 
  nasdaq_psxequities_orders_ouch_v4_2.client_packet_type.size

-- Display: Client Packet Header
nasdaq_psxequities_orders_ouch_v4_2.client_packet_header.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Client Packet Header
nasdaq_psxequities_orders_ouch_v4_2.client_packet_header.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Packet Length: 2 Byte Unsigned Fixed Width Integer
  index, packet_length = nasdaq_psxequities_orders_ouch_v4_2.packet_length.dissect(buffer, index, packet, parent)

  -- Client Packet Type: 1 Byte Ascii String Enum with 5 values
  index, client_packet_type = nasdaq_psxequities_orders_ouch_v4_2.client_packet_type.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Client Packet Header
nasdaq_psxequities_orders_ouch_v4_2.client_packet_header.dissect = function(buffer, offset, packet, parent)
  if show.structs then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_psxequities_orders_ouch_v4_2.fields.client_packet_header, buffer(offset, 0))
    local index = nasdaq_psxequities_orders_ouch_v4_2.client_packet_header.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_psxequities_orders_ouch_v4_2.client_packet_header.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_psxequities_orders_ouch_v4_2.client_packet_header.fields(buffer, offset, packet, parent)
  end
end

-- Client Soup Bin Tcp Packet
nasdaq_psxequities_orders_ouch_v4_2.client_soup_bin_tcp_packet = {}

-- Display: Client Soup Bin Tcp Packet
nasdaq_psxequities_orders_ouch_v4_2.client_soup_bin_tcp_packet.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Client Soup Bin Tcp Packet
nasdaq_psxequities_orders_ouch_v4_2.client_soup_bin_tcp_packet.fields = function(buffer, offset, packet, parent, size_of_client_soup_bin_tcp_packet)
  local index = offset

  -- Client Packet Header: Struct of 2 fields
  index, client_packet_header = nasdaq_psxequities_orders_ouch_v4_2.client_packet_header.dissect(buffer, index, packet, parent)

  -- Dependency element: Client Packet Type
  local client_packet_type = buffer(index - 1, 1):string()

  -- Client Payload: Runtime Type with 5 branches
  index = nasdaq_psxequities_orders_ouch_v4_2.client_payload.dissect(buffer, index, packet, parent, client_packet_type)

  return index
end

-- Dissect: Client Soup Bin Tcp Packet
nasdaq_psxequities_orders_ouch_v4_2.client_soup_bin_tcp_packet.dissect = function(buffer, offset, packet, parent, size_of_client_soup_bin_tcp_packet)
  local index = offset + size_of_client_soup_bin_tcp_packet

  -- Optionally add group/struct element to protocol tree
  if show.structs then
    parent = parent:add(omi_nasdaq_psxequities_orders_ouch_v4_2.fields.client_soup_bin_tcp_packet, buffer(offset, 0))
    local current = nasdaq_psxequities_orders_ouch_v4_2.client_soup_bin_tcp_packet.fields(buffer, offset, packet, parent, size_of_client_soup_bin_tcp_packet)
    parent:set_len(size_of_client_soup_bin_tcp_packet)
    local display = nasdaq_psxequities_orders_ouch_v4_2.client_soup_bin_tcp_packet.display(buffer, packet, parent)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    nasdaq_psxequities_orders_ouch_v4_2.client_soup_bin_tcp_packet.fields(buffer, offset, packet, parent, size_of_client_soup_bin_tcp_packet)

    return index
  end
end

-- Remaining Bytes For: Client Soup Bin Tcp Packet
local client_soup_bin_tcp_packet_bytes_remaining = function(buffer, index, available)
  -- Calculate the number of bytes remaining
  local remaining = available - index

  -- Check if packet size can be read
  if remaining < nasdaq_psxequities_orders_ouch_v4_2.client_packet_header.size then
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

-- Client Packet
nasdaq_psxequities_orders_ouch_v4_2.client_packet = {}

-- Verify required size of Tcp packet
nasdaq_psxequities_orders_ouch_v4_2.client_packet.requiredsize = function(buffer)
  return buffer:len() >= nasdaq_psxequities_orders_ouch_v4_2.client_packet_header.size
end

-- Dissect Client Packet
nasdaq_psxequities_orders_ouch_v4_2.client_packet.dissect = function(buffer, packet, parent)
  local index = 0

  -- Dependency for Client Soup Bin Tcp Packet
  local end_of_payload = buffer:len()

  -- Client Soup Bin Tcp Packet: Struct of 2 fields
  while index < end_of_payload do

    -- Are minimum number of bytes are available?
    local available, size_of_client_soup_bin_tcp_packet = client_soup_bin_tcp_packet_bytes_remaining(buffer, index, end_of_payload)

    if available > 0 then
      index = nasdaq_psxequities_orders_ouch_v4_2.client_soup_bin_tcp_packet.dissect(buffer, index, packet, parent, size_of_client_soup_bin_tcp_packet)
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

-- Connection roles for Nasdaq PsxEquities Orders Ouch 4.2: Client is the initiator, Server is the acceptor
-- Initiator endpoint of each conversation, recorded from its first frame
local initiators = {}

-- Conversations whose first frame proved to be the acceptor's: the heuristic swaps the sides
local swapped = {}

-- Endpoint key of an address and port
local function endpoint(address, port)
  return tostring(address)..":"..tostring(port)
end


-- Conversation key, the same in both directions
local function conversation(packet)
  local a = endpoint(packet.src, packet.src_port)
  local b = endpoint(packet.dst, packet.dst_port)
  if a < b then
    return a.." "..b
  end
  return b.." "..a
end


-- Connection role of the frame's sender
nasdaq_psxequities_orders_ouch_v4_2.role = function(packet)
  if omi_nasdaq_psxequities_orders_ouch_v4_2.prefs.assume_role == 1 then
    return "initiator"
  end
  if omi_nasdaq_psxequities_orders_ouch_v4_2.prefs.assume_role == 2 then
    return "acceptor"
  end
  local port = omi_nasdaq_psxequities_orders_ouch_v4_2.prefs.acceptor_port
  if port ~= 0 and packet.dst_port == port then
    return "initiator"
  end
  if port ~= 0 and packet.src_port == port then
    return "acceptor"
  end
  local key = conversation(packet)
  local sender = endpoint(packet.src, packet.src_port)
  if initiators[key] == nil then
    initiators[key] = sender
  end
  local first = initiators[key] == sender
  if omi_nasdaq_psxequities_orders_ouch_v4_2.prefs.swap_sides then
    first = not first
  end
  if swapped[key] then
    first = not first
  end
  if first then
    return "initiator"
  end
  return "acceptor"
end


-- Swap the resolved sides of the frame's conversation
nasdaq_psxequities_orders_ouch_v4_2.swap = function(packet)
  local key = conversation(packet)
  swapped[key] = not swapped[key]
end


-- Dissector for Nasdaq PsxEquities Orders Ouch 4.2
function omi_nasdaq_psxequities_orders_ouch_v4_2.dissector(buffer, packet, parent)

  -- Set protocol name
  packet.cols.protocol = omi_nasdaq_psxequities_orders_ouch_v4_2.name

  -- Dissect protocol
  local protocol = parent:add(omi_nasdaq_psxequities_orders_ouch_v4_2, buffer(), omi_nasdaq_psxequities_orders_ouch_v4_2.description, "("..buffer:len().." Bytes)")
  local role = nasdaq_psxequities_orders_ouch_v4_2.role(packet)
  if role == "initiator" then
    return nasdaq_psxequities_orders_ouch_v4_2.client_packet.dissect(buffer, packet, protocol)
  end
  return nasdaq_psxequities_orders_ouch_v4_2.server_packet.dissect(buffer, packet, protocol)
end


-----------------------------------------------------------------------
-- Protocol Fingerprints
-----------------------------------------------------------------------

-- Fingerprint of Client Packet: would its message dispatch accept this frame?
nasdaq_psxequities_orders_ouch_v4_2.client_packet.fingerprint = function(buffer)
  if buffer:len() < 3 then
    return false
  end
  local client_packet_type = buffer(2, 1):string()

  -- Debug Packet
  if client_packet_type == "+" then
    return true
  end

  -- Login Request Packet
  if client_packet_type == "L" then
    return true
  end

  -- Unsequenced Data Packet
  if client_packet_type == "U" then
    return true
  end

  -- Client Heartbeat
  if client_packet_type == "R" then
    return true
  end

  -- Logout Request
  if client_packet_type == "O" then
    return true
  end

  return false
end


-- Fingerprint of Server Packet: would its message dispatch accept this frame?
nasdaq_psxequities_orders_ouch_v4_2.server_packet.fingerprint = function(buffer)
  if buffer:len() < 3 then
    return false
  end
  local server_packet_type = buffer(2, 1):string()

  -- Debug Packet
  if server_packet_type == "+" then
    return true
  end

  -- Login Accepted Packet
  if server_packet_type == "A" then
    return true
  end

  -- Login Rejected Packet
  if server_packet_type == "J" then
    return true
  end

  -- Sequenced Data Packet
  if server_packet_type == "S" then
    return true
  end

  -- Server Heartbeat
  if server_packet_type == "H" then
    return true
  end

  -- End Of Session
  if server_packet_type == "Z" then
    return true
  end

  return false
end



-----------------------------------------------------------------------
-- Protocol Heuristics
-----------------------------------------------------------------------

-- Dissector Heuristic for Nasdaq PsxEquities Orders Ouch 4.2 (Tcp)
local function omi_nasdaq_psxequities_orders_ouch_v4_2_tcp_initiator_heuristic(buffer, packet, parent)
  -- Verify packet length
  if not nasdaq_psxequities_orders_ouch_v4_2.client_packet.requiredsize(buffer) then return false end

  -- Verify the frame matches this side's fingerprint
  if not nasdaq_psxequities_orders_ouch_v4_2.client_packet.fingerprint(buffer) then return false end

  -- Protocol is valid, set conversation and dissect this packet
  packet.conversation = omi_nasdaq_psxequities_orders_ouch_v4_2
  omi_nasdaq_psxequities_orders_ouch_v4_2.dissector(buffer, packet, parent)

  return true
end

-- Dissector Heuristic for Nasdaq PsxEquities Orders Ouch 4.2 (Tcp)
local function omi_nasdaq_psxequities_orders_ouch_v4_2_tcp_acceptor_heuristic(buffer, packet, parent)
  -- Verify packet length
  if not nasdaq_psxequities_orders_ouch_v4_2.server_packet.requiredsize(buffer) then return false end

  -- Verify the frame matches this side's fingerprint
  if not nasdaq_psxequities_orders_ouch_v4_2.server_packet.fingerprint(buffer) then return false end

  -- Protocol is valid, set conversation and dissect this packet
  packet.conversation = omi_nasdaq_psxequities_orders_ouch_v4_2
  omi_nasdaq_psxequities_orders_ouch_v4_2.dissector(buffer, packet, parent)

  return true
end

-- Dissector Heuristic for Nasdaq PsxEquities Orders Ouch 4.2 (Tcp): apply the heuristic of the sender's connection role
local function omi_nasdaq_psxequities_orders_ouch_v4_2_tcp_heuristic(buffer, packet, parent)
  local role = nasdaq_psxequities_orders_ouch_v4_2.role(packet)
  local first, second = omi_nasdaq_psxequities_orders_ouch_v4_2_tcp_initiator_heuristic, omi_nasdaq_psxequities_orders_ouch_v4_2_tcp_acceptor_heuristic
  if role == "acceptor" then
    first, second = second, first
  end
  if first(buffer, packet, parent) then
    return true
  end

  -- The other side may have sent this conversation's first frame: swap, and swap back if it cannot claim either
  nasdaq_psxequities_orders_ouch_v4_2.swap(packet)
  if second(buffer, packet, parent) then
    return true
  end
  nasdaq_psxequities_orders_ouch_v4_2.swap(packet)

  return false
end

-- Register Heuristics for Nasdaq PsxEquities Orders Ouch 4.2
omi_nasdaq_psxequities_orders_ouch_v4_2:register_heuristic("tcp", omi_nasdaq_psxequities_orders_ouch_v4_2_tcp_heuristic)

-----------------------------------------------------------------------
-- Lua dissectors are an easily edited and modified cross-platform dissection solution.
-- Feel free to modify. Enjoy.
-----------------------------------------------------------------------
--
-- Protocol:
--   Organization: National Association of Securities Dealers Automated Quotations (Nasdaq)
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
-- Copyright (c) 2026 Scaled Sources LLC.  https://www.scaledsources.com
--
-- This dissector code is contributed to The Open Markets Initiative under
-- the license noted above.
--
-- The Binary Data Compiler technologies used to produce this file
-- are the subject of patents owned by Scaled Sources LLC.  Those patent
-- rights are retained and are not transferred by this contribution:
--   https://patents.google.com/patent/US20240129382A1/en
--   https://patents.google.com/patent/US20240419416A1/en
--
-- For full Omi information:
--   https://github.com/Open-Markets-Initiative/Directory
-----------------------------------------------------------------------
