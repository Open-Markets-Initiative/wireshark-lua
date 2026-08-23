-----------------------------------------------------------------------
-- Lua Script Wireshark Dissector
--
-- Please see end of file for rules and regulations
-----------------------------------------------------------------------

-- Odx OdxEquities Pts Ouch 2.0 Protocol
local omi_odx_odxequities_pts_ouch_v2_0 = Proto("Omi.Odx.OdxEquities.Pts.Ouch.v2.0", "Odx OdxEquities Pts Ouch 2.0")

-- Protocol table
local odx_odxequities_pts_ouch_v2_0 = {}

-----------------------------------------------------------------------
-- Declare Protocol Fields
-----------------------------------------------------------------------

-- Odx OdxEquities Pts Ouch 2.0 Headers
omi_odx_odxequities_pts_ouch_v2_0.fields.client_packet = ProtoField.new("Packet", "odx.odxequities.pts.ouch.v2.0.clientpacket", ftypes.STRING)
omi_odx_odxequities_pts_ouch_v2_0.fields.client_packet_header = ProtoField.new("Packet Header", "odx.odxequities.pts.ouch.v2.0.clientpacketheader", ftypes.STRING)
omi_odx_odxequities_pts_ouch_v2_0.fields.client_soup_bin_tcp_packet = ProtoField.new("Soup Bin Tcp Packet", "odx.odxequities.pts.ouch.v2.0.clientsoupbintcppacket", ftypes.STRING)
omi_odx_odxequities_pts_ouch_v2_0.fields.server_packet = ProtoField.new("Packet", "odx.odxequities.pts.ouch.v2.0.serverpacket", ftypes.STRING)
omi_odx_odxequities_pts_ouch_v2_0.fields.server_packet_header = ProtoField.new("Packet Header", "odx.odxequities.pts.ouch.v2.0.serverpacketheader", ftypes.STRING)
omi_odx_odxequities_pts_ouch_v2_0.fields.server_soup_bin_tcp_packet = ProtoField.new("Soup Bin Tcp Packet", "odx.odxequities.pts.ouch.v2.0.serversoupbintcppacket", ftypes.STRING)

-- Odx OdxEquities Pts Ouch 2.0 Fields
omi_odx_odxequities_pts_ouch_v2_0.fields.buy_sell_indicator = ProtoField.new("Buy Sell Indicator", "odx.odxequities.pts.ouch.v2.0.buysellindicator", ftypes.STRING)
omi_odx_odxequities_pts_ouch_v2_0.fields.capacity = ProtoField.new("Capacity", "odx.odxequities.pts.ouch.v2.0.capacity", ftypes.STRING)
omi_odx_odxequities_pts_ouch_v2_0.fields.cash_margin_type = ProtoField.new("Cash Margin Type", "odx.odxequities.pts.ouch.v2.0.cashmargintype", ftypes.STRING)
omi_odx_odxequities_pts_ouch_v2_0.fields.client_packet_type = ProtoField.new("Packet Type", "odx.odxequities.pts.ouch.v2.0.clientpackettype", ftypes.STRING)
omi_odx_odxequities_pts_ouch_v2_0.fields.client_reference = ProtoField.new("Client Reference", "odx.odxequities.pts.ouch.v2.0.clientreference", ftypes.STRING)
omi_odx_odxequities_pts_ouch_v2_0.fields.decrement_quantity = ProtoField.new("Decrement Quantity", "odx.odxequities.pts.ouch.v2.0.decrementquantity", ftypes.UINT32)
omi_odx_odxequities_pts_ouch_v2_0.fields.display = ProtoField.new("Display", "odx.odxequities.pts.ouch.v2.0.display", ftypes.STRING)
omi_odx_odxequities_pts_ouch_v2_0.fields.executed_quantity = ProtoField.new("Executed Quantity", "odx.odxequities.pts.ouch.v2.0.executedquantity", ftypes.UINT32)
omi_odx_odxequities_pts_ouch_v2_0.fields.execution_price = ProtoField.new("Execution Price", "odx.odxequities.pts.ouch.v2.0.executionprice", ftypes.DOUBLE)
omi_odx_odxequities_pts_ouch_v2_0.fields.existing_order_token = ProtoField.new("Existing Order Token", "odx.odxequities.pts.ouch.v2.0.existingordertoken", ftypes.UINT32)
omi_odx_odxequities_pts_ouch_v2_0.fields.firm_id = ProtoField.new("Firm Id", "odx.odxequities.pts.ouch.v2.0.firmid", ftypes.UINT32)
omi_odx_odxequities_pts_ouch_v2_0.fields.group = ProtoField.new("Group", "odx.odxequities.pts.ouch.v2.0.group", ftypes.STRING)
omi_odx_odxequities_pts_ouch_v2_0.fields.liquidity_indicator = ProtoField.new("Liquidity Indicator", "odx.odxequities.pts.ouch.v2.0.liquidityindicator", ftypes.STRING)
omi_odx_odxequities_pts_ouch_v2_0.fields.match_number = ProtoField.new("Match Number", "odx.odxequities.pts.ouch.v2.0.matchnumber", ftypes.UINT64)
omi_odx_odxequities_pts_ouch_v2_0.fields.minimum_quantity = ProtoField.new("Minimum Quantity", "odx.odxequities.pts.ouch.v2.0.minimumquantity", ftypes.UINT32)
omi_odx_odxequities_pts_ouch_v2_0.fields.order_canceled_reason = ProtoField.new("Order Canceled Reason", "odx.odxequities.pts.ouch.v2.0.ordercanceledreason", ftypes.STRING)
omi_odx_odxequities_pts_ouch_v2_0.fields.order_classification = ProtoField.new("Order Classification", "odx.odxequities.pts.ouch.v2.0.orderclassification", ftypes.STRING)
omi_odx_odxequities_pts_ouch_v2_0.fields.order_number = ProtoField.new("Order Number", "odx.odxequities.pts.ouch.v2.0.ordernumber", ftypes.UINT64)
omi_odx_odxequities_pts_ouch_v2_0.fields.order_rejected_reason = ProtoField.new("Order Rejected Reason", "odx.odxequities.pts.ouch.v2.0.orderrejectedreason", ftypes.STRING)
omi_odx_odxequities_pts_ouch_v2_0.fields.order_state = ProtoField.new("Order State", "odx.odxequities.pts.ouch.v2.0.orderstate", ftypes.STRING)
omi_odx_odxequities_pts_ouch_v2_0.fields.order_token = ProtoField.new("Order Token", "odx.odxequities.pts.ouch.v2.0.ordertoken", ftypes.UINT32)
omi_odx_odxequities_pts_ouch_v2_0.fields.orderbook_id = ProtoField.new("Orderbook Id", "odx.odxequities.pts.ouch.v2.0.orderbookid", ftypes.STRING)
omi_odx_odxequities_pts_ouch_v2_0.fields.packet_length = ProtoField.new("Packet Length", "odx.odxequities.pts.ouch.v2.0.packetlength", ftypes.UINT16)
omi_odx_odxequities_pts_ouch_v2_0.fields.password = ProtoField.new("Password", "odx.odxequities.pts.ouch.v2.0.password", ftypes.STRING)
omi_odx_odxequities_pts_ouch_v2_0.fields.previous_order_token = ProtoField.new("Previous Order Token", "odx.odxequities.pts.ouch.v2.0.previousordertoken", ftypes.UINT32)
omi_odx_odxequities_pts_ouch_v2_0.fields.price = ProtoField.new("Price", "odx.odxequities.pts.ouch.v2.0.price", ftypes.DOUBLE)
omi_odx_odxequities_pts_ouch_v2_0.fields.quantity = ProtoField.new("Quantity", "odx.odxequities.pts.ouch.v2.0.quantity", ftypes.UINT32)
omi_odx_odxequities_pts_ouch_v2_0.fields.quantity_prevented_from_trading = ProtoField.new("Quantity Prevented From Trading", "odx.odxequities.pts.ouch.v2.0.quantitypreventedfromtrading", ftypes.UINT32)
omi_odx_odxequities_pts_ouch_v2_0.fields.reject_reason_code = ProtoField.new("Reject Reason Code", "odx.odxequities.pts.ouch.v2.0.rejectreasoncode", ftypes.STRING)
omi_odx_odxequities_pts_ouch_v2_0.fields.replacement_order_token = ProtoField.new("Replacement Order Token", "odx.odxequities.pts.ouch.v2.0.replacementordertoken", ftypes.UINT32)
omi_odx_odxequities_pts_ouch_v2_0.fields.requested_sequence_number = ProtoField.new("Requested Sequence Number", "odx.odxequities.pts.ouch.v2.0.requestedsequencenumber", ftypes.STRING)
omi_odx_odxequities_pts_ouch_v2_0.fields.requested_session = ProtoField.new("Requested Session", "odx.odxequities.pts.ouch.v2.0.requestedsession", ftypes.STRING)
omi_odx_odxequities_pts_ouch_v2_0.fields.sequence_number = ProtoField.new("Sequence Number", "odx.odxequities.pts.ouch.v2.0.sequencenumber", ftypes.STRING)
omi_odx_odxequities_pts_ouch_v2_0.fields.sequenced_message_type = ProtoField.new("Sequenced Message Type", "odx.odxequities.pts.ouch.v2.0.sequencedmessagetype", ftypes.STRING)
omi_odx_odxequities_pts_ouch_v2_0.fields.server_packet_type = ProtoField.new("Packet Type", "odx.odxequities.pts.ouch.v2.0.serverpackettype", ftypes.STRING)
omi_odx_odxequities_pts_ouch_v2_0.fields.session = ProtoField.new("Session", "odx.odxequities.pts.ouch.v2.0.session", ftypes.STRING)
omi_odx_odxequities_pts_ouch_v2_0.fields.system_event = ProtoField.new("System Event", "odx.odxequities.pts.ouch.v2.0.systemevent", ftypes.STRING)
omi_odx_odxequities_pts_ouch_v2_0.fields.text = ProtoField.new("Text", "odx.odxequities.pts.ouch.v2.0.text", ftypes.STRING)
omi_odx_odxequities_pts_ouch_v2_0.fields.time_in_force = ProtoField.new("Time In Force", "odx.odxequities.pts.ouch.v2.0.timeinforce", ftypes.UINT32)
omi_odx_odxequities_pts_ouch_v2_0.fields.timestamp = ProtoField.new("Timestamp", "odx.odxequities.pts.ouch.v2.0.timestamp", ftypes.UINT64)
omi_odx_odxequities_pts_ouch_v2_0.fields.unsequenced_message_type = ProtoField.new("Unsequenced Message Type", "odx.odxequities.pts.ouch.v2.0.unsequencedmessagetype", ftypes.STRING)
omi_odx_odxequities_pts_ouch_v2_0.fields.username = ProtoField.new("Username", "odx.odxequities.pts.ouch.v2.0.username", ftypes.STRING)

-- Odx OdxEquities Pts 2.0 Application Messages
omi_odx_odxequities_pts_ouch_v2_0.fields.cancel_order_message = ProtoField.new("Cancel Order Message", "odx.odxequities.pts.ouch.v2.0.cancelordermessage", ftypes.STRING)
omi_odx_odxequities_pts_ouch_v2_0.fields.enter_order_message = ProtoField.new("Enter Order Message", "odx.odxequities.pts.ouch.v2.0.enterordermessage", ftypes.STRING)
omi_odx_odxequities_pts_ouch_v2_0.fields.order_accepted_message = ProtoField.new("Order Accepted Message", "odx.odxequities.pts.ouch.v2.0.orderacceptedmessage", ftypes.STRING)
omi_odx_odxequities_pts_ouch_v2_0.fields.order_aiq_canceled_message = ProtoField.new("Order Aiq Canceled Message", "odx.odxequities.pts.ouch.v2.0.orderaiqcanceledmessage", ftypes.STRING)
omi_odx_odxequities_pts_ouch_v2_0.fields.order_canceled_message = ProtoField.new("Order Canceled Message", "odx.odxequities.pts.ouch.v2.0.ordercanceledmessage", ftypes.STRING)
omi_odx_odxequities_pts_ouch_v2_0.fields.order_executed_message = ProtoField.new("Order Executed Message", "odx.odxequities.pts.ouch.v2.0.orderexecutedmessage", ftypes.STRING)
omi_odx_odxequities_pts_ouch_v2_0.fields.order_rejected_message = ProtoField.new("Order Rejected Message", "odx.odxequities.pts.ouch.v2.0.orderrejectedmessage", ftypes.STRING)
omi_odx_odxequities_pts_ouch_v2_0.fields.order_replaced_message = ProtoField.new("Order Replaced Message", "odx.odxequities.pts.ouch.v2.0.orderreplacedmessage", ftypes.STRING)
omi_odx_odxequities_pts_ouch_v2_0.fields.replace_order_message = ProtoField.new("Replace Order Message", "odx.odxequities.pts.ouch.v2.0.replaceordermessage", ftypes.STRING)
omi_odx_odxequities_pts_ouch_v2_0.fields.system_event_message = ProtoField.new("System Event Message", "odx.odxequities.pts.ouch.v2.0.systemeventmessage", ftypes.STRING)

-- Odx OdxEquities Pts 2.0 Session Messages
omi_odx_odxequities_pts_ouch_v2_0.fields.debug_packet = ProtoField.new("Debug Packet", "odx.odxequities.pts.ouch.v2.0.debugpacket", ftypes.STRING)
omi_odx_odxequities_pts_ouch_v2_0.fields.login_accepted_packet = ProtoField.new("Login Accepted Packet", "odx.odxequities.pts.ouch.v2.0.loginacceptedpacket", ftypes.STRING)
omi_odx_odxequities_pts_ouch_v2_0.fields.login_rejected_packet = ProtoField.new("Login Rejected Packet", "odx.odxequities.pts.ouch.v2.0.loginrejectedpacket", ftypes.STRING)
omi_odx_odxequities_pts_ouch_v2_0.fields.login_request_packet = ProtoField.new("Login Request Packet", "odx.odxequities.pts.ouch.v2.0.loginrequestpacket", ftypes.STRING)
omi_odx_odxequities_pts_ouch_v2_0.fields.sequenced_data_packet = ProtoField.new("Sequenced Data Packet", "odx.odxequities.pts.ouch.v2.0.sequenceddatapacket", ftypes.STRING)
omi_odx_odxequities_pts_ouch_v2_0.fields.unsequenced_data_packet = ProtoField.new("Unsequenced Data Packet", "odx.odxequities.pts.ouch.v2.0.unsequenceddatapacket", ftypes.STRING)

-----------------------------------------------------------------------
-- Odx OdxEquities Pts Ouch 2.0 Formatting
-----------------------------------------------------------------------

-- timestamp format
local timestamp_format_enum = {
  { 1, "Raw", 0 },
  { 2, "Time of Day", 1 },
  { 3, "Full DateTime", 2 }
}

-- 0=Raw, 1=TimeOfDay, 2=FullDateTime
odx_odxequities_pts_ouch_v2_0.timestamp_format = 2

-- Hours behind UTC (EST) for midnight calculation
odx_odxequities_pts_ouch_v2_0.utc_offset_hours = 5


-----------------------------------------------------------------------
-- Declare Dissection Options
-----------------------------------------------------------------------

local show = {}

-- Odx OdxEquities Pts Ouch 2.0 Element Dissection Options
show.application_messages = true
show.structs = true
show.session_messages = true

-- Register Odx OdxEquities Pts Ouch 2.0 Show Options
local role_enum = {
  { 1, "Resolve from the conversation", 0 },
  { 2, "Initiator", 1 },
  { 3, "Acceptor", 2 }
}
omi_odx_odxequities_pts_ouch_v2_0.prefs.acceptor_port = Pref.uint("Acceptor Port", 0, "Port the acceptor listens on; 0 resolves each frame's role from its conversation")
omi_odx_odxequities_pts_ouch_v2_0.prefs.assume_role = Pref.enum("Assume Role", 0, "Connection role assumed for every frame, for captures that start mid conversation", role_enum, false)
omi_odx_odxequities_pts_ouch_v2_0.prefs.swap_sides = Pref.bool("Swap Sides", false, "The first frame seen of each conversation was the acceptor's, not the initiator's; for captures that start mid conversation")
omi_odx_odxequities_pts_ouch_v2_0.prefs.show_application_messages = Pref.bool("Show Application Messages", show.application_messages, "Parse and add Application Messages to protocol tree")
omi_odx_odxequities_pts_ouch_v2_0.prefs.show_structs = Pref.bool("Show Structs", show.structs, "Parse and add Structs to protocol tree")
omi_odx_odxequities_pts_ouch_v2_0.prefs.show_session_messages = Pref.bool("Show Session Messages", show.session_messages, "Parse and add Session Messages to protocol tree")

omi_odx_odxequities_pts_ouch_v2_0.prefs.timestamp_format = Pref.enum("Timestamp Format", 2, "Timestamp display format", timestamp_format_enum, false)
omi_odx_odxequities_pts_ouch_v2_0.prefs.utc_offset_hours = Pref.uint("UTC Offset (hours)", 5, "Hours behind UTC (EST) for midnight calculation")

-- Handle changed preferences
function omi_odx_odxequities_pts_ouch_v2_0.prefs_changed()

  -- Check if preferences have changed
  if show.application_messages ~= omi_odx_odxequities_pts_ouch_v2_0.prefs.show_application_messages then
    show.application_messages = omi_odx_odxequities_pts_ouch_v2_0.prefs.show_application_messages
  end
  if show.session_messages ~= omi_odx_odxequities_pts_ouch_v2_0.prefs.show_session_messages then
    show.session_messages = omi_odx_odxequities_pts_ouch_v2_0.prefs.show_session_messages
  end
  if show.structs ~= omi_odx_odxequities_pts_ouch_v2_0.prefs.show_structs then
    show.structs = omi_odx_odxequities_pts_ouch_v2_0.prefs.show_structs
  end
  if odx_odxequities_pts_ouch_v2_0.timestamp_format ~= omi_odx_odxequities_pts_ouch_v2_0.prefs.timestamp_format then
    odx_odxequities_pts_ouch_v2_0.timestamp_format = omi_odx_odxequities_pts_ouch_v2_0.prefs.timestamp_format
  end
  if odx_odxequities_pts_ouch_v2_0.utc_offset_hours ~= omi_odx_odxequities_pts_ouch_v2_0.prefs.utc_offset_hours then
    odx_odxequities_pts_ouch_v2_0.utc_offset_hours = omi_odx_odxequities_pts_ouch_v2_0.prefs.utc_offset_hours
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
-- Odx OdxEquities Pts Ouch 2.0 Fields
-----------------------------------------------------------------------

-- Buy Sell Indicator
odx_odxequities_pts_ouch_v2_0.buy_sell_indicator = {}

-- Size: Buy Sell Indicator
odx_odxequities_pts_ouch_v2_0.buy_sell_indicator.size = 1

-- Display: Buy Sell Indicator
odx_odxequities_pts_ouch_v2_0.buy_sell_indicator.display = function(value)
  if value == "B" then
    return "Buy Sell Indicator: Buy (B)"
  end
  if value == "S" then
    return "Buy Sell Indicator: Sell (S)"
  end
  if value == "T" then
    return "Buy Sell Indicator: Short Sell (T)"
  end
  if value == "E" then
    return "Buy Sell Indicator: Short Sell Exempt (E)"
  end

  return "Buy Sell Indicator: Unknown("..value..")"
end

-- Dissect: Buy Sell Indicator
odx_odxequities_pts_ouch_v2_0.buy_sell_indicator.dissect = function(buffer, offset, packet, parent)
  local length = odx_odxequities_pts_ouch_v2_0.buy_sell_indicator.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = odx_odxequities_pts_ouch_v2_0.buy_sell_indicator.display(value, buffer, offset, packet, parent)

  parent:add(omi_odx_odxequities_pts_ouch_v2_0.fields.buy_sell_indicator, range, value, display)

  return offset + length, value
end

-- Capacity
odx_odxequities_pts_ouch_v2_0.capacity = {}

-- Size: Capacity
odx_odxequities_pts_ouch_v2_0.capacity.size = 1

-- Display: Capacity
odx_odxequities_pts_ouch_v2_0.capacity.display = function(value)
  if value == "A" then
    return "Capacity: Agency (A)"
  end
  if value == "P" then
    return "Capacity: Principal (P)"
  end

  return "Capacity: Unknown("..value..")"
end

-- Dissect: Capacity
odx_odxequities_pts_ouch_v2_0.capacity.dissect = function(buffer, offset, packet, parent)
  local length = odx_odxequities_pts_ouch_v2_0.capacity.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = odx_odxequities_pts_ouch_v2_0.capacity.display(value, buffer, offset, packet, parent)

  parent:add(omi_odx_odxequities_pts_ouch_v2_0.fields.capacity, range, value, display)

  return offset + length, value
end

-- Cash Margin Type
odx_odxequities_pts_ouch_v2_0.cash_margin_type = {}

-- Size: Cash Margin Type
odx_odxequities_pts_ouch_v2_0.cash_margin_type.size = 1

-- Display: Cash Margin Type
odx_odxequities_pts_ouch_v2_0.cash_margin_type.display = function(value)
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
odx_odxequities_pts_ouch_v2_0.cash_margin_type.dissect = function(buffer, offset, packet, parent)
  local length = odx_odxequities_pts_ouch_v2_0.cash_margin_type.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = odx_odxequities_pts_ouch_v2_0.cash_margin_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_odx_odxequities_pts_ouch_v2_0.fields.cash_margin_type, range, value, display)

  return offset + length, value
end

-- Client Packet Type
odx_odxequities_pts_ouch_v2_0.client_packet_type = {}

-- Size: Client Packet Type
odx_odxequities_pts_ouch_v2_0.client_packet_type.size = 1

-- Display: Client Packet Type
odx_odxequities_pts_ouch_v2_0.client_packet_type.display = function(value)
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
odx_odxequities_pts_ouch_v2_0.client_packet_type.dissect = function(buffer, offset, packet, parent)
  local length = odx_odxequities_pts_ouch_v2_0.client_packet_type.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = odx_odxequities_pts_ouch_v2_0.client_packet_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_odx_odxequities_pts_ouch_v2_0.fields.client_packet_type, range, value, display)

  return offset + length, value
end

-- Client Reference
odx_odxequities_pts_ouch_v2_0.client_reference = {}

-- Size: Client Reference
odx_odxequities_pts_ouch_v2_0.client_reference.size = 10

-- Display: Client Reference
odx_odxequities_pts_ouch_v2_0.client_reference.display = function(value)
  return "Client Reference: "..value
end

-- Dissect: Client Reference
odx_odxequities_pts_ouch_v2_0.client_reference.dissect = function(buffer, offset, packet, parent)
  local length = odx_odxequities_pts_ouch_v2_0.client_reference.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = odx_odxequities_pts_ouch_v2_0.client_reference.display(value, buffer, offset, packet, parent)

  parent:add(omi_odx_odxequities_pts_ouch_v2_0.fields.client_reference, range, value, display)

  return offset + length, value
end

-- Decrement Quantity
odx_odxequities_pts_ouch_v2_0.decrement_quantity = {}

-- Size: Decrement Quantity
odx_odxequities_pts_ouch_v2_0.decrement_quantity.size = 4

-- Display: Decrement Quantity
odx_odxequities_pts_ouch_v2_0.decrement_quantity.display = function(value)
  return "Decrement Quantity: "..value
end

-- Dissect: Decrement Quantity
odx_odxequities_pts_ouch_v2_0.decrement_quantity.dissect = function(buffer, offset, packet, parent)
  local length = odx_odxequities_pts_ouch_v2_0.decrement_quantity.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = odx_odxequities_pts_ouch_v2_0.decrement_quantity.display(value, buffer, offset, packet, parent)

  parent:add(omi_odx_odxequities_pts_ouch_v2_0.fields.decrement_quantity, range, value, display)

  return offset + length, value
end

-- Display
odx_odxequities_pts_ouch_v2_0.display = {}

-- Size: Display
odx_odxequities_pts_ouch_v2_0.display.size = 1

-- Display: Display
odx_odxequities_pts_ouch_v2_0.display.display = function(value)
  if value == "P" then
    return "Display: Postonly (P)"
  end

  return "Display: Unknown("..value..")"
end

-- Dissect: Display
odx_odxequities_pts_ouch_v2_0.display.dissect = function(buffer, offset, packet, parent)
  local length = odx_odxequities_pts_ouch_v2_0.display.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = odx_odxequities_pts_ouch_v2_0.display.display(value, buffer, offset, packet, parent)

  parent:add(omi_odx_odxequities_pts_ouch_v2_0.fields.display, range, value, display)

  return offset + length, value
end

-- Executed Quantity
odx_odxequities_pts_ouch_v2_0.executed_quantity = {}

-- Size: Executed Quantity
odx_odxequities_pts_ouch_v2_0.executed_quantity.size = 4

-- Display: Executed Quantity
odx_odxequities_pts_ouch_v2_0.executed_quantity.display = function(value)
  return "Executed Quantity: "..value
end

-- Dissect: Executed Quantity
odx_odxequities_pts_ouch_v2_0.executed_quantity.dissect = function(buffer, offset, packet, parent)
  local length = odx_odxequities_pts_ouch_v2_0.executed_quantity.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = odx_odxequities_pts_ouch_v2_0.executed_quantity.display(value, buffer, offset, packet, parent)

  parent:add(omi_odx_odxequities_pts_ouch_v2_0.fields.executed_quantity, range, value, display)

  return offset + length, value
end

-- Execution Price
odx_odxequities_pts_ouch_v2_0.execution_price = {}

-- Size: Execution Price
odx_odxequities_pts_ouch_v2_0.execution_price.size = 4

-- Display: Execution Price
odx_odxequities_pts_ouch_v2_0.execution_price.display = function(value)
  return "Execution Price: "..value
end

-- Translate: Execution Price
odx_odxequities_pts_ouch_v2_0.execution_price.translate = function(raw)
  return raw/10
end

-- Dissect: Execution Price
odx_odxequities_pts_ouch_v2_0.execution_price.dissect = function(buffer, offset, packet, parent)
  local length = odx_odxequities_pts_ouch_v2_0.execution_price.size
  local range = buffer(offset, length)
  local raw = range:uint()
  local value = odx_odxequities_pts_ouch_v2_0.execution_price.translate(raw)
  local display = odx_odxequities_pts_ouch_v2_0.execution_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_odx_odxequities_pts_ouch_v2_0.fields.execution_price, range, value, display)

  return offset + length, value
end

-- Existing Order Token
odx_odxequities_pts_ouch_v2_0.existing_order_token = {}

-- Size: Existing Order Token
odx_odxequities_pts_ouch_v2_0.existing_order_token.size = 4

-- Display: Existing Order Token
odx_odxequities_pts_ouch_v2_0.existing_order_token.display = function(value)
  return "Existing Order Token: "..value
end

-- Dissect: Existing Order Token
odx_odxequities_pts_ouch_v2_0.existing_order_token.dissect = function(buffer, offset, packet, parent)
  local length = odx_odxequities_pts_ouch_v2_0.existing_order_token.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = odx_odxequities_pts_ouch_v2_0.existing_order_token.display(value, buffer, offset, packet, parent)

  parent:add(omi_odx_odxequities_pts_ouch_v2_0.fields.existing_order_token, range, value, display)

  return offset + length, value
end

-- Firm Id
odx_odxequities_pts_ouch_v2_0.firm_id = {}

-- Size: Firm Id
odx_odxequities_pts_ouch_v2_0.firm_id.size = 4

-- Display: Firm Id
odx_odxequities_pts_ouch_v2_0.firm_id.display = function(value)
  return "Firm Id: "..value
end

-- Dissect: Firm Id
odx_odxequities_pts_ouch_v2_0.firm_id.dissect = function(buffer, offset, packet, parent)
  local length = odx_odxequities_pts_ouch_v2_0.firm_id.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = odx_odxequities_pts_ouch_v2_0.firm_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_odx_odxequities_pts_ouch_v2_0.fields.firm_id, range, value, display)

  return offset + length, value
end

-- Group
odx_odxequities_pts_ouch_v2_0.group = {}

-- Size: Group
odx_odxequities_pts_ouch_v2_0.group.size = 4

-- Display: Group
odx_odxequities_pts_ouch_v2_0.group.display = function(value)
  return "Group: "..value
end

-- Dissect: Group
odx_odxequities_pts_ouch_v2_0.group.dissect = function(buffer, offset, packet, parent)
  local length = odx_odxequities_pts_ouch_v2_0.group.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = odx_odxequities_pts_ouch_v2_0.group.display(value, buffer, offset, packet, parent)

  parent:add(omi_odx_odxequities_pts_ouch_v2_0.fields.group, range, value, display)

  return offset + length, value
end

-- Liquidity Indicator
odx_odxequities_pts_ouch_v2_0.liquidity_indicator = {}

-- Size: Liquidity Indicator
odx_odxequities_pts_ouch_v2_0.liquidity_indicator.size = 1

-- Display: Liquidity Indicator
odx_odxequities_pts_ouch_v2_0.liquidity_indicator.display = function(value)
  if value == "A" then
    return "Liquidity Indicator: Added (A)"
  end
  if value == "R" then
    return "Liquidity Indicator: Removed (R)"
  end

  return "Liquidity Indicator: Unknown("..value..")"
end

-- Dissect: Liquidity Indicator
odx_odxequities_pts_ouch_v2_0.liquidity_indicator.dissect = function(buffer, offset, packet, parent)
  local length = odx_odxequities_pts_ouch_v2_0.liquidity_indicator.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = odx_odxequities_pts_ouch_v2_0.liquidity_indicator.display(value, buffer, offset, packet, parent)

  parent:add(omi_odx_odxequities_pts_ouch_v2_0.fields.liquidity_indicator, range, value, display)

  return offset + length, value
end

-- Match Number
odx_odxequities_pts_ouch_v2_0.match_number = {}

-- Size: Match Number
odx_odxequities_pts_ouch_v2_0.match_number.size = 8

-- Display: Match Number
odx_odxequities_pts_ouch_v2_0.match_number.display = function(value)
  return "Match Number: "..value
end

-- Dissect: Match Number
odx_odxequities_pts_ouch_v2_0.match_number.dissect = function(buffer, offset, packet, parent)
  local length = odx_odxequities_pts_ouch_v2_0.match_number.size
  local range = buffer(offset, length)
  local value = range:uint64()
  local display = odx_odxequities_pts_ouch_v2_0.match_number.display(value, buffer, offset, packet, parent)

  parent:add(omi_odx_odxequities_pts_ouch_v2_0.fields.match_number, range, value, display)

  return offset + length, value
end

-- Minimum Quantity
odx_odxequities_pts_ouch_v2_0.minimum_quantity = {}

-- Size: Minimum Quantity
odx_odxequities_pts_ouch_v2_0.minimum_quantity.size = 4

-- Display: Minimum Quantity
odx_odxequities_pts_ouch_v2_0.minimum_quantity.display = function(value)
  return "Minimum Quantity: "..value
end

-- Dissect: Minimum Quantity
odx_odxequities_pts_ouch_v2_0.minimum_quantity.dissect = function(buffer, offset, packet, parent)
  local length = odx_odxequities_pts_ouch_v2_0.minimum_quantity.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = odx_odxequities_pts_ouch_v2_0.minimum_quantity.display(value, buffer, offset, packet, parent)

  parent:add(omi_odx_odxequities_pts_ouch_v2_0.fields.minimum_quantity, range, value, display)

  return offset + length, value
end

-- Order Canceled Reason
odx_odxequities_pts_ouch_v2_0.order_canceled_reason = {}

-- Size: Order Canceled Reason
odx_odxequities_pts_ouch_v2_0.order_canceled_reason.size = 1

-- Display: Order Canceled Reason
odx_odxequities_pts_ouch_v2_0.order_canceled_reason.display = function(value)
  if value == "U" then
    return "Order Canceled Reason: User Requested Cancel (U)"
  end
  if value == "L" then
    return "Order Canceled Reason: User Logged Off (L)"
  end
  if value == "S" then
    return "Order Canceled Reason: Canceled By Supervisory Terminal (S)"
  end
  if value == "I" then
    return "Order Canceled Reason: Immediate Order Remaining Quantity Canceled (I)"
  end
  if value == "M" then
    return "Order Canceled Reason: Order Expired During Match (M)"
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
    return "Order Canceled Reason: Short Sell Order Restriction (i)"
  end
  if value == "R" then
    return "Order Canceled Reason: Order Not Allowed At This Time (R)"
  end
  if value == "F" then
    return "Order Canceled Reason: Flow Control Throttled (F)"
  end
  if value == "G" then
    return "Order Canceled Reason: Margin Order Canceled Due To Margin Restriction (G)"
  end
  if value == "O" then
    return "Order Canceled Reason: Other (O)"
  end

  return "Order Canceled Reason: Unknown("..value..")"
end

-- Dissect: Order Canceled Reason
odx_odxequities_pts_ouch_v2_0.order_canceled_reason.dissect = function(buffer, offset, packet, parent)
  local length = odx_odxequities_pts_ouch_v2_0.order_canceled_reason.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = odx_odxequities_pts_ouch_v2_0.order_canceled_reason.display(value, buffer, offset, packet, parent)

  parent:add(omi_odx_odxequities_pts_ouch_v2_0.fields.order_canceled_reason, range, value, display)

  return offset + length, value
end

-- Order Classification
odx_odxequities_pts_ouch_v2_0.order_classification = {}

-- Size: Order Classification
odx_odxequities_pts_ouch_v2_0.order_classification.size = 1

-- Display: Order Classification
odx_odxequities_pts_ouch_v2_0.order_classification.display = function(value)
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
odx_odxequities_pts_ouch_v2_0.order_classification.dissect = function(buffer, offset, packet, parent)
  local length = odx_odxequities_pts_ouch_v2_0.order_classification.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = odx_odxequities_pts_ouch_v2_0.order_classification.display(value, buffer, offset, packet, parent)

  parent:add(omi_odx_odxequities_pts_ouch_v2_0.fields.order_classification, range, value, display)

  return offset + length, value
end

-- Order Number
odx_odxequities_pts_ouch_v2_0.order_number = {}

-- Size: Order Number
odx_odxequities_pts_ouch_v2_0.order_number.size = 8

-- Display: Order Number
odx_odxequities_pts_ouch_v2_0.order_number.display = function(value)
  return "Order Number: "..value
end

-- Dissect: Order Number
odx_odxequities_pts_ouch_v2_0.order_number.dissect = function(buffer, offset, packet, parent)
  local length = odx_odxequities_pts_ouch_v2_0.order_number.size
  local range = buffer(offset, length)
  local value = range:uint64()
  local display = odx_odxequities_pts_ouch_v2_0.order_number.display(value, buffer, offset, packet, parent)

  parent:add(omi_odx_odxequities_pts_ouch_v2_0.fields.order_number, range, value, display)

  return offset + length, value
end

-- Order Rejected Reason
odx_odxequities_pts_ouch_v2_0.order_rejected_reason = {}

-- Size: Order Rejected Reason
odx_odxequities_pts_ouch_v2_0.order_rejected_reason.size = 1

-- Display: Order Rejected Reason
odx_odxequities_pts_ouch_v2_0.order_rejected_reason.display = function(value)
  if value == "H" then
    return "Order Rejected Reason: Trading Halt (H)"
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
    return "Order Rejected Reason: Order Not Allowed At This Time (R)"
  end
  if value == "F" then
    return "Order Rejected Reason: Flow Control Throttled (F)"
  end
  if value == "G" then
    return "Order Rejected Reason: Invalid Margin Specification (G)"
  end
  if value == "L" then
    return "Order Rejected Reason: Mpid Not Allowed For This Port (L)"
  end
  if value == "c" then
    return "Order Rejected Reason: No Permission To Enter Order On Given Board (c)"
  end
  if value == "O" then
    return "Order Rejected Reason: Other (O)"
  end

  return "Order Rejected Reason: Unknown("..value..")"
end

-- Dissect: Order Rejected Reason
odx_odxequities_pts_ouch_v2_0.order_rejected_reason.dissect = function(buffer, offset, packet, parent)
  local length = odx_odxequities_pts_ouch_v2_0.order_rejected_reason.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = odx_odxequities_pts_ouch_v2_0.order_rejected_reason.display(value, buffer, offset, packet, parent)

  parent:add(omi_odx_odxequities_pts_ouch_v2_0.fields.order_rejected_reason, range, value, display)

  return offset + length, value
end

-- Order State
odx_odxequities_pts_ouch_v2_0.order_state = {}

-- Size: Order State
odx_odxequities_pts_ouch_v2_0.order_state.size = 1

-- Display: Order State
odx_odxequities_pts_ouch_v2_0.order_state.display = function(value)
  if value == "L" then
    return "Order State: Live (L)"
  end
  if value == "D" then
    return "Order State: Dead (D)"
  end

  return "Order State: Unknown("..value..")"
end

-- Dissect: Order State
odx_odxequities_pts_ouch_v2_0.order_state.dissect = function(buffer, offset, packet, parent)
  local length = odx_odxequities_pts_ouch_v2_0.order_state.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = odx_odxequities_pts_ouch_v2_0.order_state.display(value, buffer, offset, packet, parent)

  parent:add(omi_odx_odxequities_pts_ouch_v2_0.fields.order_state, range, value, display)

  return offset + length, value
end

-- Order Token
odx_odxequities_pts_ouch_v2_0.order_token = {}

-- Size: Order Token
odx_odxequities_pts_ouch_v2_0.order_token.size = 4

-- Display: Order Token
odx_odxequities_pts_ouch_v2_0.order_token.display = function(value)
  return "Order Token: "..value
end

-- Dissect: Order Token
odx_odxequities_pts_ouch_v2_0.order_token.dissect = function(buffer, offset, packet, parent)
  local length = odx_odxequities_pts_ouch_v2_0.order_token.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = odx_odxequities_pts_ouch_v2_0.order_token.display(value, buffer, offset, packet, parent)

  parent:add(omi_odx_odxequities_pts_ouch_v2_0.fields.order_token, range, value, display)

  return offset + length, value
end

-- Orderbook Id
odx_odxequities_pts_ouch_v2_0.orderbook_id = {}

-- Size: Orderbook Id
odx_odxequities_pts_ouch_v2_0.orderbook_id.size = 4

-- Display: Orderbook Id
odx_odxequities_pts_ouch_v2_0.orderbook_id.display = function(value)
  return "Orderbook Id: "..value
end

-- Dissect: Orderbook Id
odx_odxequities_pts_ouch_v2_0.orderbook_id.dissect = function(buffer, offset, packet, parent)
  local length = odx_odxequities_pts_ouch_v2_0.orderbook_id.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = odx_odxequities_pts_ouch_v2_0.orderbook_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_odx_odxequities_pts_ouch_v2_0.fields.orderbook_id, range, value, display)

  return offset + length, value
end

-- Packet Length
odx_odxequities_pts_ouch_v2_0.packet_length = {}

-- Size: Packet Length
odx_odxequities_pts_ouch_v2_0.packet_length.size = 2

-- Display: Packet Length
odx_odxequities_pts_ouch_v2_0.packet_length.display = function(value)
  return "Packet Length: "..value
end

-- Dissect: Packet Length
odx_odxequities_pts_ouch_v2_0.packet_length.dissect = function(buffer, offset, packet, parent)
  local length = odx_odxequities_pts_ouch_v2_0.packet_length.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = odx_odxequities_pts_ouch_v2_0.packet_length.display(value, buffer, offset, packet, parent)

  parent:add(omi_odx_odxequities_pts_ouch_v2_0.fields.packet_length, range, value, display)

  return offset + length, value
end

-- Password
odx_odxequities_pts_ouch_v2_0.password = {}

-- Size: Password
odx_odxequities_pts_ouch_v2_0.password.size = 10

-- Display: Password
odx_odxequities_pts_ouch_v2_0.password.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Password: No Value"
  end

  return "Password: "..value
end

-- Dissect: Password
odx_odxequities_pts_ouch_v2_0.password.dissect = function(buffer, offset, packet, parent)
  local length = odx_odxequities_pts_ouch_v2_0.password.size
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

  local display = odx_odxequities_pts_ouch_v2_0.password.display(value, buffer, offset, packet, parent)

  parent:add(omi_odx_odxequities_pts_ouch_v2_0.fields.password, range, value, display)

  return offset + length, value
end

-- Previous Order Token
odx_odxequities_pts_ouch_v2_0.previous_order_token = {}

-- Size: Previous Order Token
odx_odxequities_pts_ouch_v2_0.previous_order_token.size = 4

-- Display: Previous Order Token
odx_odxequities_pts_ouch_v2_0.previous_order_token.display = function(value)
  return "Previous Order Token: "..value
end

-- Dissect: Previous Order Token
odx_odxequities_pts_ouch_v2_0.previous_order_token.dissect = function(buffer, offset, packet, parent)
  local length = odx_odxequities_pts_ouch_v2_0.previous_order_token.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = odx_odxequities_pts_ouch_v2_0.previous_order_token.display(value, buffer, offset, packet, parent)

  parent:add(omi_odx_odxequities_pts_ouch_v2_0.fields.previous_order_token, range, value, display)

  return offset + length, value
end

-- Price
odx_odxequities_pts_ouch_v2_0.price = {}

-- Size: Price
odx_odxequities_pts_ouch_v2_0.price.size = 4

-- Display: Price
odx_odxequities_pts_ouch_v2_0.price.display = function(value)
  return "Price: "..value
end

-- Translate: Price
odx_odxequities_pts_ouch_v2_0.price.translate = function(raw)
  return raw/10
end

-- Dissect: Price
odx_odxequities_pts_ouch_v2_0.price.dissect = function(buffer, offset, packet, parent)
  local length = odx_odxequities_pts_ouch_v2_0.price.size
  local range = buffer(offset, length)
  local raw = range:uint()
  local value = odx_odxequities_pts_ouch_v2_0.price.translate(raw)
  local display = odx_odxequities_pts_ouch_v2_0.price.display(value, buffer, offset, packet, parent)

  parent:add(omi_odx_odxequities_pts_ouch_v2_0.fields.price, range, value, display)

  return offset + length, value
end

-- Quantity
odx_odxequities_pts_ouch_v2_0.quantity = {}

-- Size: Quantity
odx_odxequities_pts_ouch_v2_0.quantity.size = 4

-- Display: Quantity
odx_odxequities_pts_ouch_v2_0.quantity.display = function(value)
  return "Quantity: "..value
end

-- Dissect: Quantity
odx_odxequities_pts_ouch_v2_0.quantity.dissect = function(buffer, offset, packet, parent)
  local length = odx_odxequities_pts_ouch_v2_0.quantity.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = odx_odxequities_pts_ouch_v2_0.quantity.display(value, buffer, offset, packet, parent)

  parent:add(omi_odx_odxequities_pts_ouch_v2_0.fields.quantity, range, value, display)

  return offset + length, value
end

-- Quantity Prevented From Trading
odx_odxequities_pts_ouch_v2_0.quantity_prevented_from_trading = {}

-- Size: Quantity Prevented From Trading
odx_odxequities_pts_ouch_v2_0.quantity_prevented_from_trading.size = 4

-- Display: Quantity Prevented From Trading
odx_odxequities_pts_ouch_v2_0.quantity_prevented_from_trading.display = function(value)
  return "Quantity Prevented From Trading: "..value
end

-- Dissect: Quantity Prevented From Trading
odx_odxequities_pts_ouch_v2_0.quantity_prevented_from_trading.dissect = function(buffer, offset, packet, parent)
  local length = odx_odxequities_pts_ouch_v2_0.quantity_prevented_from_trading.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = odx_odxequities_pts_ouch_v2_0.quantity_prevented_from_trading.display(value, buffer, offset, packet, parent)

  parent:add(omi_odx_odxequities_pts_ouch_v2_0.fields.quantity_prevented_from_trading, range, value, display)

  return offset + length, value
end

-- Reject Reason Code
odx_odxequities_pts_ouch_v2_0.reject_reason_code = {}

-- Size: Reject Reason Code
odx_odxequities_pts_ouch_v2_0.reject_reason_code.size = 1

-- Display: Reject Reason Code
odx_odxequities_pts_ouch_v2_0.reject_reason_code.display = function(value)
  return "Reject Reason Code: "..value
end

-- Dissect: Reject Reason Code
odx_odxequities_pts_ouch_v2_0.reject_reason_code.dissect = function(buffer, offset, packet, parent)
  local length = odx_odxequities_pts_ouch_v2_0.reject_reason_code.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = odx_odxequities_pts_ouch_v2_0.reject_reason_code.display(value, buffer, offset, packet, parent)

  parent:add(omi_odx_odxequities_pts_ouch_v2_0.fields.reject_reason_code, range, value, display)

  return offset + length, value
end

-- Replacement Order Token
odx_odxequities_pts_ouch_v2_0.replacement_order_token = {}

-- Size: Replacement Order Token
odx_odxequities_pts_ouch_v2_0.replacement_order_token.size = 4

-- Display: Replacement Order Token
odx_odxequities_pts_ouch_v2_0.replacement_order_token.display = function(value)
  return "Replacement Order Token: "..value
end

-- Dissect: Replacement Order Token
odx_odxequities_pts_ouch_v2_0.replacement_order_token.dissect = function(buffer, offset, packet, parent)
  local length = odx_odxequities_pts_ouch_v2_0.replacement_order_token.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = odx_odxequities_pts_ouch_v2_0.replacement_order_token.display(value, buffer, offset, packet, parent)

  parent:add(omi_odx_odxequities_pts_ouch_v2_0.fields.replacement_order_token, range, value, display)

  return offset + length, value
end

-- Requested Sequence Number
odx_odxequities_pts_ouch_v2_0.requested_sequence_number = {}

-- Size: Requested Sequence Number
odx_odxequities_pts_ouch_v2_0.requested_sequence_number.size = 20

-- Display: Requested Sequence Number
odx_odxequities_pts_ouch_v2_0.requested_sequence_number.display = function(value)
  return "Requested Sequence Number: "..value
end

-- Dissect: Requested Sequence Number
odx_odxequities_pts_ouch_v2_0.requested_sequence_number.dissect = function(buffer, offset, packet, parent)
  local length = odx_odxequities_pts_ouch_v2_0.requested_sequence_number.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value =  "Not Applicable"
  end

  local display = odx_odxequities_pts_ouch_v2_0.requested_sequence_number.display(value, buffer, offset, packet, parent)

  parent:add(omi_odx_odxequities_pts_ouch_v2_0.fields.requested_sequence_number, range, value, display)

  return offset + length, value
end

-- Requested Session
odx_odxequities_pts_ouch_v2_0.requested_session = {}

-- Size: Requested Session
odx_odxequities_pts_ouch_v2_0.requested_session.size = 10

-- Display: Requested Session
odx_odxequities_pts_ouch_v2_0.requested_session.display = function(value)
  return "Requested Session: "..value
end

-- Dissect: Requested Session
odx_odxequities_pts_ouch_v2_0.requested_session.dissect = function(buffer, offset, packet, parent)
  local length = odx_odxequities_pts_ouch_v2_0.requested_session.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = odx_odxequities_pts_ouch_v2_0.requested_session.display(value, buffer, offset, packet, parent)

  parent:add(omi_odx_odxequities_pts_ouch_v2_0.fields.requested_session, range, value, display)

  return offset + length, value
end

-- Sequence Number
odx_odxequities_pts_ouch_v2_0.sequence_number = {}

-- Size: Sequence Number
odx_odxequities_pts_ouch_v2_0.sequence_number.size = 20

-- Display: Sequence Number
odx_odxequities_pts_ouch_v2_0.sequence_number.display = function(value)
  return "Sequence Number: "..value
end

-- Dissect: Sequence Number
odx_odxequities_pts_ouch_v2_0.sequence_number.dissect = function(buffer, offset, packet, parent)
  local length = odx_odxequities_pts_ouch_v2_0.sequence_number.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value =  "Not Applicable"
  end

  local display = odx_odxequities_pts_ouch_v2_0.sequence_number.display(value, buffer, offset, packet, parent)

  parent:add(omi_odx_odxequities_pts_ouch_v2_0.fields.sequence_number, range, value, display)

  return offset + length, value
end

-- Sequenced Message Type
odx_odxequities_pts_ouch_v2_0.sequenced_message_type = {}

-- Size: Sequenced Message Type
odx_odxequities_pts_ouch_v2_0.sequenced_message_type.size = 1

-- Display: Sequenced Message Type
odx_odxequities_pts_ouch_v2_0.sequenced_message_type.display = function(value)
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
odx_odxequities_pts_ouch_v2_0.sequenced_message_type.dissect = function(buffer, offset, packet, parent)
  local length = odx_odxequities_pts_ouch_v2_0.sequenced_message_type.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = odx_odxequities_pts_ouch_v2_0.sequenced_message_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_odx_odxequities_pts_ouch_v2_0.fields.sequenced_message_type, range, value, display)

  return offset + length, value
end

-- Server Packet Type
odx_odxequities_pts_ouch_v2_0.server_packet_type = {}

-- Size: Server Packet Type
odx_odxequities_pts_ouch_v2_0.server_packet_type.size = 1

-- Display: Server Packet Type
odx_odxequities_pts_ouch_v2_0.server_packet_type.display = function(value)
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
odx_odxequities_pts_ouch_v2_0.server_packet_type.dissect = function(buffer, offset, packet, parent)
  local length = odx_odxequities_pts_ouch_v2_0.server_packet_type.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = odx_odxequities_pts_ouch_v2_0.server_packet_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_odx_odxequities_pts_ouch_v2_0.fields.server_packet_type, range, value, display)

  return offset + length, value
end

-- Session
odx_odxequities_pts_ouch_v2_0.session = {}

-- Size: Session
odx_odxequities_pts_ouch_v2_0.session.size = 10

-- Display: Session
odx_odxequities_pts_ouch_v2_0.session.display = function(value)
  return "Session: "..value
end

-- Dissect: Session
odx_odxequities_pts_ouch_v2_0.session.dissect = function(buffer, offset, packet, parent)
  local length = odx_odxequities_pts_ouch_v2_0.session.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = odx_odxequities_pts_ouch_v2_0.session.display(value, buffer, offset, packet, parent)

  parent:add(omi_odx_odxequities_pts_ouch_v2_0.fields.session, range, value, display)

  return offset + length, value
end

-- System Event
odx_odxequities_pts_ouch_v2_0.system_event = {}

-- Size: System Event
odx_odxequities_pts_ouch_v2_0.system_event.size = 1

-- Display: System Event
odx_odxequities_pts_ouch_v2_0.system_event.display = function(value)
  if value == "S" then
    return "System Event: Start Of Day (S)"
  end
  if value == "E" then
    return "System Event: End Of Day (E)"
  end

  return "System Event: Unknown("..value..")"
end

-- Dissect: System Event
odx_odxequities_pts_ouch_v2_0.system_event.dissect = function(buffer, offset, packet, parent)
  local length = odx_odxequities_pts_ouch_v2_0.system_event.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = odx_odxequities_pts_ouch_v2_0.system_event.display(value, buffer, offset, packet, parent)

  parent:add(omi_odx_odxequities_pts_ouch_v2_0.fields.system_event, range, value, display)

  return offset + length, value
end

-- Text
odx_odxequities_pts_ouch_v2_0.text = {}

-- Size: Text
odx_odxequities_pts_ouch_v2_0.text.size = 1

-- Display: Text
odx_odxequities_pts_ouch_v2_0.text.display = function(value)
  return "Text: "..value
end

-- Dissect: Text
odx_odxequities_pts_ouch_v2_0.text.dissect = function(buffer, offset, packet, parent)
  local length = odx_odxequities_pts_ouch_v2_0.text.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = odx_odxequities_pts_ouch_v2_0.text.display(value, buffer, offset, packet, parent)

  parent:add(omi_odx_odxequities_pts_ouch_v2_0.fields.text, range, value, display)

  return offset + length, value
end

-- Time In Force
odx_odxequities_pts_ouch_v2_0.time_in_force = {}

-- Size: Time In Force
odx_odxequities_pts_ouch_v2_0.time_in_force.size = 4

-- Display: Time In Force
odx_odxequities_pts_ouch_v2_0.time_in_force.display = function(value)
  if value == 0 then
    return "Time In Force: Immediate (0)"
  end
  if value == 99999 then
    return "Time In Force: Day (99999)"
  end

  return "Time In Force: Unknown("..value..")"
end

-- Dissect: Time In Force
odx_odxequities_pts_ouch_v2_0.time_in_force.dissect = function(buffer, offset, packet, parent)
  local length = odx_odxequities_pts_ouch_v2_0.time_in_force.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = odx_odxequities_pts_ouch_v2_0.time_in_force.display(value, buffer, offset, packet, parent)

  parent:add(omi_odx_odxequities_pts_ouch_v2_0.fields.time_in_force, range, value, display)

  return offset + length, value
end

-- Timestamp
odx_odxequities_pts_ouch_v2_0.timestamp = {}

-- Size: Timestamp
odx_odxequities_pts_ouch_v2_0.timestamp.size = 8

-- Display: Timestamp
odx_odxequities_pts_ouch_v2_0.timestamp.display = function(value, buffer, offset, packet, parent)
  -- Raw display mode
  if odx_odxequities_pts_ouch_v2_0.timestamp_format == 0 then
    return "Timestamp: "..value
  end

  -- Parse nanoseconds since midnight
  local seconds = (value / UInt64(1000000000)):tonumber()
  local nanoseconds = (value % UInt64(1000000000)):tonumber()

  -- Full datetime mode (calculate from capture date + UTC offset)
  if odx_odxequities_pts_ouch_v2_0.timestamp_format == 2 and packet then
    local capture_time = type(packet.abs_ts) == "number" and packet.abs_ts or packet.abs_ts:tonumber()
    local utc_offset_seconds = odx_odxequities_pts_ouch_v2_0.utc_offset_hours * 3600
    local local_midnight = math.floor((capture_time - utc_offset_seconds) / 86400) * 86400 + utc_offset_seconds
    local full_seconds = local_midnight + seconds

    return "Timestamp: "..os.date("%Y-%m-%d %H:%M:%S.", full_seconds)..string.format("%09d", nanoseconds)
  end

  -- Time of day mode
  return "Timestamp: "..os.date("%H:%M:%S.", seconds)..string.format("%09d", nanoseconds)
end

-- Dissect: Timestamp
odx_odxequities_pts_ouch_v2_0.timestamp.dissect = function(buffer, offset, packet, parent)
  local length = odx_odxequities_pts_ouch_v2_0.timestamp.size
  local range = buffer(offset, length)
  local value = range:uint64()
  local display = odx_odxequities_pts_ouch_v2_0.timestamp.display(value, buffer, offset, packet, parent)

  parent:add(omi_odx_odxequities_pts_ouch_v2_0.fields.timestamp, range, value, display)

  return offset + length, value
end

-- Unsequenced Message Type
odx_odxequities_pts_ouch_v2_0.unsequenced_message_type = {}

-- Size: Unsequenced Message Type
odx_odxequities_pts_ouch_v2_0.unsequenced_message_type.size = 1

-- Display: Unsequenced Message Type
odx_odxequities_pts_ouch_v2_0.unsequenced_message_type.display = function(value)
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
odx_odxequities_pts_ouch_v2_0.unsequenced_message_type.dissect = function(buffer, offset, packet, parent)
  local length = odx_odxequities_pts_ouch_v2_0.unsequenced_message_type.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = odx_odxequities_pts_ouch_v2_0.unsequenced_message_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_odx_odxequities_pts_ouch_v2_0.fields.unsequenced_message_type, range, value, display)

  return offset + length, value
end

-- Username
odx_odxequities_pts_ouch_v2_0.username = {}

-- Size: Username
odx_odxequities_pts_ouch_v2_0.username.size = 6

-- Display: Username
odx_odxequities_pts_ouch_v2_0.username.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Username: No Value"
  end

  return "Username: "..value
end

-- Dissect: Username
odx_odxequities_pts_ouch_v2_0.username.dissect = function(buffer, offset, packet, parent)
  local length = odx_odxequities_pts_ouch_v2_0.username.size
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

  local display = odx_odxequities_pts_ouch_v2_0.username.display(value, buffer, offset, packet, parent)

  parent:add(omi_odx_odxequities_pts_ouch_v2_0.fields.username, range, value, display)

  return offset + length, value
end


-----------------------------------------------------------------------
-- Dissect Odx OdxEquities Pts Ouch 2.0
-----------------------------------------------------------------------

-- End Of Session
odx_odxequities_pts_ouch_v2_0.end_of_session = {}

-- Display: End Of Session
odx_odxequities_pts_ouch_v2_0.end_of_session.display = function(packet, parent, length)
  return "End Of Session"
end


-- Dissect: End Of Session
odx_odxequities_pts_ouch_v2_0.end_of_session.dissect = function(buffer, offset, packet, parent)
  local display = odx_odxequities_pts_ouch_v2_0.end_of_session.display(packet, parent, 0)
  packet.cols.info = display

  return offset
end

-- Server Heartbeat
odx_odxequities_pts_ouch_v2_0.server_heartbeat = {}

-- Display: Server Heartbeat
odx_odxequities_pts_ouch_v2_0.server_heartbeat.display = function(packet, parent, length)
  return "Server Heartbeat"
end


-- Dissect: Server Heartbeat
odx_odxequities_pts_ouch_v2_0.server_heartbeat.dissect = function(buffer, offset, packet, parent)
  local display = odx_odxequities_pts_ouch_v2_0.server_heartbeat.display(packet, parent, 0)
  packet.cols.info = display

  return offset
end

-- Order Rejected Message
odx_odxequities_pts_ouch_v2_0.order_rejected_message = {}

-- Size: Order Rejected Message
odx_odxequities_pts_ouch_v2_0.order_rejected_message.size =
  odx_odxequities_pts_ouch_v2_0.timestamp.size + 
  odx_odxequities_pts_ouch_v2_0.order_token.size + 
  odx_odxequities_pts_ouch_v2_0.order_rejected_reason.size

-- Display: Order Rejected Message
odx_odxequities_pts_ouch_v2_0.order_rejected_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Order Rejected Message
odx_odxequities_pts_ouch_v2_0.order_rejected_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Timestamp: Integer
  index, timestamp = odx_odxequities_pts_ouch_v2_0.timestamp.dissect(buffer, index, packet, parent)

  -- Order Token: Token
  index, order_token = odx_odxequities_pts_ouch_v2_0.order_token.dissect(buffer, index, packet, parent)

  -- Order Rejected Reason: Alpha
  index, order_rejected_reason = odx_odxequities_pts_ouch_v2_0.order_rejected_reason.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Order Rejected Message
odx_odxequities_pts_ouch_v2_0.order_rejected_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_odx_odxequities_pts_ouch_v2_0.fields.order_rejected_message, buffer(offset, 0))
    local index = odx_odxequities_pts_ouch_v2_0.order_rejected_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = odx_odxequities_pts_ouch_v2_0.order_rejected_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return odx_odxequities_pts_ouch_v2_0.order_rejected_message.fields(buffer, offset, packet, parent)
  end
end

-- Order Executed Message
odx_odxequities_pts_ouch_v2_0.order_executed_message = {}

-- Size: Order Executed Message
odx_odxequities_pts_ouch_v2_0.order_executed_message.size =
  odx_odxequities_pts_ouch_v2_0.timestamp.size + 
  odx_odxequities_pts_ouch_v2_0.order_token.size + 
  odx_odxequities_pts_ouch_v2_0.executed_quantity.size + 
  odx_odxequities_pts_ouch_v2_0.execution_price.size + 
  odx_odxequities_pts_ouch_v2_0.liquidity_indicator.size + 
  odx_odxequities_pts_ouch_v2_0.match_number.size

-- Display: Order Executed Message
odx_odxequities_pts_ouch_v2_0.order_executed_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Order Executed Message
odx_odxequities_pts_ouch_v2_0.order_executed_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Timestamp: Integer
  index, timestamp = odx_odxequities_pts_ouch_v2_0.timestamp.dissect(buffer, index, packet, parent)

  -- Order Token: Token
  index, order_token = odx_odxequities_pts_ouch_v2_0.order_token.dissect(buffer, index, packet, parent)

  -- Executed Quantity: Integer
  index, executed_quantity = odx_odxequities_pts_ouch_v2_0.executed_quantity.dissect(buffer, index, packet, parent)

  -- Execution Price: Integer
  index, execution_price = odx_odxequities_pts_ouch_v2_0.execution_price.dissect(buffer, index, packet, parent)

  -- Liquidity Indicator: Alpha
  index, liquidity_indicator = odx_odxequities_pts_ouch_v2_0.liquidity_indicator.dissect(buffer, index, packet, parent)

  -- Match Number: Integer
  index, match_number = odx_odxequities_pts_ouch_v2_0.match_number.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Order Executed Message
odx_odxequities_pts_ouch_v2_0.order_executed_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_odx_odxequities_pts_ouch_v2_0.fields.order_executed_message, buffer(offset, 0))
    local index = odx_odxequities_pts_ouch_v2_0.order_executed_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = odx_odxequities_pts_ouch_v2_0.order_executed_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return odx_odxequities_pts_ouch_v2_0.order_executed_message.fields(buffer, offset, packet, parent)
  end
end

-- Order Aiq Canceled Message
odx_odxequities_pts_ouch_v2_0.order_aiq_canceled_message = {}

-- Size: Order Aiq Canceled Message
odx_odxequities_pts_ouch_v2_0.order_aiq_canceled_message.size =
  odx_odxequities_pts_ouch_v2_0.timestamp.size + 
  odx_odxequities_pts_ouch_v2_0.order_token.size + 
  odx_odxequities_pts_ouch_v2_0.decrement_quantity.size + 
  odx_odxequities_pts_ouch_v2_0.order_canceled_reason.size + 
  odx_odxequities_pts_ouch_v2_0.quantity_prevented_from_trading.size + 
  odx_odxequities_pts_ouch_v2_0.execution_price.size + 
  odx_odxequities_pts_ouch_v2_0.liquidity_indicator.size

-- Display: Order Aiq Canceled Message
odx_odxequities_pts_ouch_v2_0.order_aiq_canceled_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Order Aiq Canceled Message
odx_odxequities_pts_ouch_v2_0.order_aiq_canceled_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Timestamp: Integer
  index, timestamp = odx_odxequities_pts_ouch_v2_0.timestamp.dissect(buffer, index, packet, parent)

  -- Order Token: Token
  index, order_token = odx_odxequities_pts_ouch_v2_0.order_token.dissect(buffer, index, packet, parent)

  -- Decrement Quantity: Integer
  index, decrement_quantity = odx_odxequities_pts_ouch_v2_0.decrement_quantity.dissect(buffer, index, packet, parent)

  -- Order Canceled Reason: Alpha
  index, order_canceled_reason = odx_odxequities_pts_ouch_v2_0.order_canceled_reason.dissect(buffer, index, packet, parent)

  -- Quantity Prevented From Trading: Integer
  index, quantity_prevented_from_trading = odx_odxequities_pts_ouch_v2_0.quantity_prevented_from_trading.dissect(buffer, index, packet, parent)

  -- Execution Price: Integer
  index, execution_price = odx_odxequities_pts_ouch_v2_0.execution_price.dissect(buffer, index, packet, parent)

  -- Liquidity Indicator: Alpha
  index, liquidity_indicator = odx_odxequities_pts_ouch_v2_0.liquidity_indicator.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Order Aiq Canceled Message
odx_odxequities_pts_ouch_v2_0.order_aiq_canceled_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_odx_odxequities_pts_ouch_v2_0.fields.order_aiq_canceled_message, buffer(offset, 0))
    local index = odx_odxequities_pts_ouch_v2_0.order_aiq_canceled_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = odx_odxequities_pts_ouch_v2_0.order_aiq_canceled_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return odx_odxequities_pts_ouch_v2_0.order_aiq_canceled_message.fields(buffer, offset, packet, parent)
  end
end

-- Order Canceled Message
odx_odxequities_pts_ouch_v2_0.order_canceled_message = {}

-- Size: Order Canceled Message
odx_odxequities_pts_ouch_v2_0.order_canceled_message.size =
  odx_odxequities_pts_ouch_v2_0.timestamp.size + 
  odx_odxequities_pts_ouch_v2_0.order_token.size + 
  odx_odxequities_pts_ouch_v2_0.decrement_quantity.size + 
  odx_odxequities_pts_ouch_v2_0.order_canceled_reason.size

-- Display: Order Canceled Message
odx_odxequities_pts_ouch_v2_0.order_canceled_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Order Canceled Message
odx_odxequities_pts_ouch_v2_0.order_canceled_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Timestamp: Integer
  index, timestamp = odx_odxequities_pts_ouch_v2_0.timestamp.dissect(buffer, index, packet, parent)

  -- Order Token: Token
  index, order_token = odx_odxequities_pts_ouch_v2_0.order_token.dissect(buffer, index, packet, parent)

  -- Decrement Quantity: Integer
  index, decrement_quantity = odx_odxequities_pts_ouch_v2_0.decrement_quantity.dissect(buffer, index, packet, parent)

  -- Order Canceled Reason: Alpha
  index, order_canceled_reason = odx_odxequities_pts_ouch_v2_0.order_canceled_reason.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Order Canceled Message
odx_odxequities_pts_ouch_v2_0.order_canceled_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_odx_odxequities_pts_ouch_v2_0.fields.order_canceled_message, buffer(offset, 0))
    local index = odx_odxequities_pts_ouch_v2_0.order_canceled_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = odx_odxequities_pts_ouch_v2_0.order_canceled_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return odx_odxequities_pts_ouch_v2_0.order_canceled_message.fields(buffer, offset, packet, parent)
  end
end

-- Order Replaced Message
odx_odxequities_pts_ouch_v2_0.order_replaced_message = {}

-- Size: Order Replaced Message
odx_odxequities_pts_ouch_v2_0.order_replaced_message.size =
  odx_odxequities_pts_ouch_v2_0.timestamp.size + 
  odx_odxequities_pts_ouch_v2_0.replacement_order_token.size + 
  odx_odxequities_pts_ouch_v2_0.buy_sell_indicator.size + 
  odx_odxequities_pts_ouch_v2_0.quantity.size + 
  odx_odxequities_pts_ouch_v2_0.orderbook_id.size + 
  odx_odxequities_pts_ouch_v2_0.group.size + 
  odx_odxequities_pts_ouch_v2_0.price.size + 
  odx_odxequities_pts_ouch_v2_0.time_in_force.size + 
  odx_odxequities_pts_ouch_v2_0.display.size + 
  odx_odxequities_pts_ouch_v2_0.order_number.size + 
  odx_odxequities_pts_ouch_v2_0.minimum_quantity.size + 
  odx_odxequities_pts_ouch_v2_0.order_state.size + 
  odx_odxequities_pts_ouch_v2_0.previous_order_token.size

-- Display: Order Replaced Message
odx_odxequities_pts_ouch_v2_0.order_replaced_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Order Replaced Message
odx_odxequities_pts_ouch_v2_0.order_replaced_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Timestamp: Integer
  index, timestamp = odx_odxequities_pts_ouch_v2_0.timestamp.dissect(buffer, index, packet, parent)

  -- Replacement Order Token: Token
  index, replacement_order_token = odx_odxequities_pts_ouch_v2_0.replacement_order_token.dissect(buffer, index, packet, parent)

  -- Buy Sell Indicator: Alpha
  index, buy_sell_indicator = odx_odxequities_pts_ouch_v2_0.buy_sell_indicator.dissect(buffer, index, packet, parent)

  -- Quantity: Integer
  index, quantity = odx_odxequities_pts_ouch_v2_0.quantity.dissect(buffer, index, packet, parent)

  -- Orderbook Id: Alpha
  index, orderbook_id = odx_odxequities_pts_ouch_v2_0.orderbook_id.dissect(buffer, index, packet, parent)

  -- Group: Alpha
  index, group = odx_odxequities_pts_ouch_v2_0.group.dissect(buffer, index, packet, parent)

  -- Price: Integer
  index, price = odx_odxequities_pts_ouch_v2_0.price.dissect(buffer, index, packet, parent)

  -- Time In Force: Integer
  index, time_in_force = odx_odxequities_pts_ouch_v2_0.time_in_force.dissect(buffer, index, packet, parent)

  -- Display: Alpha
  index, display = odx_odxequities_pts_ouch_v2_0.display.dissect(buffer, index, packet, parent)

  -- Order Number: Integer
  index, order_number = odx_odxequities_pts_ouch_v2_0.order_number.dissect(buffer, index, packet, parent)

  -- Minimum Quantity: Integer
  index, minimum_quantity = odx_odxequities_pts_ouch_v2_0.minimum_quantity.dissect(buffer, index, packet, parent)

  -- Order State: Alpha
  index, order_state = odx_odxequities_pts_ouch_v2_0.order_state.dissect(buffer, index, packet, parent)

  -- Previous Order Token: Token
  index, previous_order_token = odx_odxequities_pts_ouch_v2_0.previous_order_token.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Order Replaced Message
odx_odxequities_pts_ouch_v2_0.order_replaced_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_odx_odxequities_pts_ouch_v2_0.fields.order_replaced_message, buffer(offset, 0))
    local index = odx_odxequities_pts_ouch_v2_0.order_replaced_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = odx_odxequities_pts_ouch_v2_0.order_replaced_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return odx_odxequities_pts_ouch_v2_0.order_replaced_message.fields(buffer, offset, packet, parent)
  end
end

-- Order Accepted Message
odx_odxequities_pts_ouch_v2_0.order_accepted_message = {}

-- Size: Order Accepted Message
odx_odxequities_pts_ouch_v2_0.order_accepted_message.size =
  odx_odxequities_pts_ouch_v2_0.timestamp.size + 
  odx_odxequities_pts_ouch_v2_0.order_token.size + 
  odx_odxequities_pts_ouch_v2_0.client_reference.size + 
  odx_odxequities_pts_ouch_v2_0.buy_sell_indicator.size + 
  odx_odxequities_pts_ouch_v2_0.quantity.size + 
  odx_odxequities_pts_ouch_v2_0.orderbook_id.size + 
  odx_odxequities_pts_ouch_v2_0.group.size + 
  odx_odxequities_pts_ouch_v2_0.price.size + 
  odx_odxequities_pts_ouch_v2_0.time_in_force.size + 
  odx_odxequities_pts_ouch_v2_0.firm_id.size + 
  odx_odxequities_pts_ouch_v2_0.display.size + 
  odx_odxequities_pts_ouch_v2_0.capacity.size + 
  odx_odxequities_pts_ouch_v2_0.order_number.size + 
  odx_odxequities_pts_ouch_v2_0.minimum_quantity.size + 
  odx_odxequities_pts_ouch_v2_0.order_state.size + 
  odx_odxequities_pts_ouch_v2_0.order_classification.size + 
  odx_odxequities_pts_ouch_v2_0.cash_margin_type.size

-- Display: Order Accepted Message
odx_odxequities_pts_ouch_v2_0.order_accepted_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Order Accepted Message
odx_odxequities_pts_ouch_v2_0.order_accepted_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Timestamp: Integer
  index, timestamp = odx_odxequities_pts_ouch_v2_0.timestamp.dissect(buffer, index, packet, parent)

  -- Order Token: Token
  index, order_token = odx_odxequities_pts_ouch_v2_0.order_token.dissect(buffer, index, packet, parent)

  -- Client Reference: Alpha
  index, client_reference = odx_odxequities_pts_ouch_v2_0.client_reference.dissect(buffer, index, packet, parent)

  -- Buy Sell Indicator: Alpha
  index, buy_sell_indicator = odx_odxequities_pts_ouch_v2_0.buy_sell_indicator.dissect(buffer, index, packet, parent)

  -- Quantity: Integer
  index, quantity = odx_odxequities_pts_ouch_v2_0.quantity.dissect(buffer, index, packet, parent)

  -- Orderbook Id: Alpha
  index, orderbook_id = odx_odxequities_pts_ouch_v2_0.orderbook_id.dissect(buffer, index, packet, parent)

  -- Group: Alpha
  index, group = odx_odxequities_pts_ouch_v2_0.group.dissect(buffer, index, packet, parent)

  -- Price: Integer
  index, price = odx_odxequities_pts_ouch_v2_0.price.dissect(buffer, index, packet, parent)

  -- Time In Force: Integer
  index, time_in_force = odx_odxequities_pts_ouch_v2_0.time_in_force.dissect(buffer, index, packet, parent)

  -- Firm Id: Integer
  index, firm_id = odx_odxequities_pts_ouch_v2_0.firm_id.dissect(buffer, index, packet, parent)

  -- Display: Alpha
  index, display = odx_odxequities_pts_ouch_v2_0.display.dissect(buffer, index, packet, parent)

  -- Capacity: Alpha
  index, capacity = odx_odxequities_pts_ouch_v2_0.capacity.dissect(buffer, index, packet, parent)

  -- Order Number: Integer
  index, order_number = odx_odxequities_pts_ouch_v2_0.order_number.dissect(buffer, index, packet, parent)

  -- Minimum Quantity: Integer
  index, minimum_quantity = odx_odxequities_pts_ouch_v2_0.minimum_quantity.dissect(buffer, index, packet, parent)

  -- Order State: Alpha
  index, order_state = odx_odxequities_pts_ouch_v2_0.order_state.dissect(buffer, index, packet, parent)

  -- Order Classification: Alpha
  index, order_classification = odx_odxequities_pts_ouch_v2_0.order_classification.dissect(buffer, index, packet, parent)

  -- Cash Margin Type: Alpha
  index, cash_margin_type = odx_odxequities_pts_ouch_v2_0.cash_margin_type.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Order Accepted Message
odx_odxequities_pts_ouch_v2_0.order_accepted_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_odx_odxequities_pts_ouch_v2_0.fields.order_accepted_message, buffer(offset, 0))
    local index = odx_odxequities_pts_ouch_v2_0.order_accepted_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = odx_odxequities_pts_ouch_v2_0.order_accepted_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return odx_odxequities_pts_ouch_v2_0.order_accepted_message.fields(buffer, offset, packet, parent)
  end
end

-- System Event Message
odx_odxequities_pts_ouch_v2_0.system_event_message = {}

-- Size: System Event Message
odx_odxequities_pts_ouch_v2_0.system_event_message.size =
  odx_odxequities_pts_ouch_v2_0.timestamp.size + 
  odx_odxequities_pts_ouch_v2_0.system_event.size

-- Display: System Event Message
odx_odxequities_pts_ouch_v2_0.system_event_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: System Event Message
odx_odxequities_pts_ouch_v2_0.system_event_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Timestamp: Integer
  index, timestamp = odx_odxequities_pts_ouch_v2_0.timestamp.dissect(buffer, index, packet, parent)

  -- System Event: Alpha
  index, system_event = odx_odxequities_pts_ouch_v2_0.system_event.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: System Event Message
odx_odxequities_pts_ouch_v2_0.system_event_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_odx_odxequities_pts_ouch_v2_0.fields.system_event_message, buffer(offset, 0))
    local index = odx_odxequities_pts_ouch_v2_0.system_event_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = odx_odxequities_pts_ouch_v2_0.system_event_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return odx_odxequities_pts_ouch_v2_0.system_event_message.fields(buffer, offset, packet, parent)
  end
end

-- Sequenced Message
odx_odxequities_pts_ouch_v2_0.sequenced_message = {}

-- Dissect: Sequenced Message
odx_odxequities_pts_ouch_v2_0.sequenced_message.dissect = function(buffer, offset, packet, parent, sequenced_message_type)
  -- Dissect System Event Message
  if sequenced_message_type == "S" then
    return odx_odxequities_pts_ouch_v2_0.system_event_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Order Accepted Message
  if sequenced_message_type == "A" then
    return odx_odxequities_pts_ouch_v2_0.order_accepted_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Order Replaced Message
  if sequenced_message_type == "U" then
    return odx_odxequities_pts_ouch_v2_0.order_replaced_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Order Canceled Message
  if sequenced_message_type == "C" then
    return odx_odxequities_pts_ouch_v2_0.order_canceled_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Order Aiq Canceled Message
  if sequenced_message_type == "D" then
    return odx_odxequities_pts_ouch_v2_0.order_aiq_canceled_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Order Executed Message
  if sequenced_message_type == "E" then
    return odx_odxequities_pts_ouch_v2_0.order_executed_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Order Rejected Message
  if sequenced_message_type == "J" then
    return odx_odxequities_pts_ouch_v2_0.order_rejected_message.dissect(buffer, offset, packet, parent)
  end

  return offset
end

-- Sequenced Data Packet
odx_odxequities_pts_ouch_v2_0.sequenced_data_packet = {}

-- Read runtime size of: Sequenced Data Packet
odx_odxequities_pts_ouch_v2_0.sequenced_data_packet.size = function(buffer, offset)
  local index = offset

  -- Dependency element: Packet Length
  local packet_length = buffer(offset - 3, 2):uint()

  return packet_length - 1
end

-- Display: Sequenced Data Packet
odx_odxequities_pts_ouch_v2_0.sequenced_data_packet.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Sequenced Data Packet
odx_odxequities_pts_ouch_v2_0.sequenced_data_packet.fields = function(buffer, offset, packet, parent, size_of_sequenced_data_packet)
  local index = offset

  -- Sequenced Message Type: 1 Byte Ascii String Enum with 7 values
  index, sequenced_message_type = odx_odxequities_pts_ouch_v2_0.sequenced_message_type.dissect(buffer, index, packet, parent)

  -- Sequenced Message: Runtime Type with 7 branches
  index = odx_odxequities_pts_ouch_v2_0.sequenced_message.dissect(buffer, index, packet, parent, sequenced_message_type)

  return index
end

-- Dissect: Sequenced Data Packet
odx_odxequities_pts_ouch_v2_0.sequenced_data_packet.dissect = function(buffer, offset, packet, parent, size_of_sequenced_data_packet)
  local size_of_sequenced_data_packet = odx_odxequities_pts_ouch_v2_0.sequenced_data_packet.size(buffer, offset)
  local index = offset + size_of_sequenced_data_packet

  -- Optionally add group/struct element to protocol tree
  if show.session_messages then
    parent = parent:add(omi_odx_odxequities_pts_ouch_v2_0.fields.sequenced_data_packet, buffer(offset, 0))
    local current = odx_odxequities_pts_ouch_v2_0.sequenced_data_packet.fields(buffer, offset, packet, parent, size_of_sequenced_data_packet)
    parent:set_len(size_of_sequenced_data_packet)
    local display = odx_odxequities_pts_ouch_v2_0.sequenced_data_packet.display(buffer, packet, parent)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    odx_odxequities_pts_ouch_v2_0.sequenced_data_packet.fields(buffer, offset, packet, parent, size_of_sequenced_data_packet)

    return index
  end
end

-- Login Rejected Packet
odx_odxequities_pts_ouch_v2_0.login_rejected_packet = {}

-- Size: Login Rejected Packet
odx_odxequities_pts_ouch_v2_0.login_rejected_packet.size =
  odx_odxequities_pts_ouch_v2_0.reject_reason_code.size

-- Display: Login Rejected Packet
odx_odxequities_pts_ouch_v2_0.login_rejected_packet.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Login Rejected Packet
odx_odxequities_pts_ouch_v2_0.login_rejected_packet.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Reject Reason Code: 1 Byte Ascii String
  index, reject_reason_code = odx_odxequities_pts_ouch_v2_0.reject_reason_code.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Login Rejected Packet
odx_odxequities_pts_ouch_v2_0.login_rejected_packet.dissect = function(buffer, offset, packet, parent)
  if show.session_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_odx_odxequities_pts_ouch_v2_0.fields.login_rejected_packet, buffer(offset, 0))
    local index = odx_odxequities_pts_ouch_v2_0.login_rejected_packet.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = odx_odxequities_pts_ouch_v2_0.login_rejected_packet.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return odx_odxequities_pts_ouch_v2_0.login_rejected_packet.fields(buffer, offset, packet, parent)
  end
end

-- Login Accepted Packet
odx_odxequities_pts_ouch_v2_0.login_accepted_packet = {}

-- Size: Login Accepted Packet
odx_odxequities_pts_ouch_v2_0.login_accepted_packet.size =
  odx_odxequities_pts_ouch_v2_0.session.size + 
  odx_odxequities_pts_ouch_v2_0.sequence_number.size

-- Display: Login Accepted Packet
odx_odxequities_pts_ouch_v2_0.login_accepted_packet.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Login Accepted Packet
odx_odxequities_pts_ouch_v2_0.login_accepted_packet.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Session: 10 Byte Ascii String
  index, session = odx_odxequities_pts_ouch_v2_0.session.dissect(buffer, index, packet, parent)

  -- Sequence Number: 20 Byte Ascii String
  index, sequence_number = odx_odxequities_pts_ouch_v2_0.sequence_number.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Login Accepted Packet
odx_odxequities_pts_ouch_v2_0.login_accepted_packet.dissect = function(buffer, offset, packet, parent)
  if show.session_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_odx_odxequities_pts_ouch_v2_0.fields.login_accepted_packet, buffer(offset, 0))
    local index = odx_odxequities_pts_ouch_v2_0.login_accepted_packet.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = odx_odxequities_pts_ouch_v2_0.login_accepted_packet.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return odx_odxequities_pts_ouch_v2_0.login_accepted_packet.fields(buffer, offset, packet, parent)
  end
end

-- Debug Packet
odx_odxequities_pts_ouch_v2_0.debug_packet = {}

-- Size: Debug Packet
odx_odxequities_pts_ouch_v2_0.debug_packet.size =
  odx_odxequities_pts_ouch_v2_0.text.size

-- Display: Debug Packet
odx_odxequities_pts_ouch_v2_0.debug_packet.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Debug Packet
odx_odxequities_pts_ouch_v2_0.debug_packet.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Text: 1 Byte Ascii String
  index, text = odx_odxequities_pts_ouch_v2_0.text.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Debug Packet
odx_odxequities_pts_ouch_v2_0.debug_packet.dissect = function(buffer, offset, packet, parent)
  if show.session_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_odx_odxequities_pts_ouch_v2_0.fields.debug_packet, buffer(offset, 0))
    local index = odx_odxequities_pts_ouch_v2_0.debug_packet.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = odx_odxequities_pts_ouch_v2_0.debug_packet.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return odx_odxequities_pts_ouch_v2_0.debug_packet.fields(buffer, offset, packet, parent)
  end
end

-- Server Payload
odx_odxequities_pts_ouch_v2_0.server_payload = {}

-- Dissect: Server Payload
odx_odxequities_pts_ouch_v2_0.server_payload.dissect = function(buffer, offset, packet, parent, server_packet_type)
  -- Dissect Debug Packet
  if server_packet_type == "+" then
    return odx_odxequities_pts_ouch_v2_0.debug_packet.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Login Accepted Packet
  if server_packet_type == "A" then
    return odx_odxequities_pts_ouch_v2_0.login_accepted_packet.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Login Rejected Packet
  if server_packet_type == "J" then
    return odx_odxequities_pts_ouch_v2_0.login_rejected_packet.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Sequenced Data Packet
  if server_packet_type == "S" then
    return odx_odxequities_pts_ouch_v2_0.sequenced_data_packet.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Server Heartbeat
  if server_packet_type == "H" then
    return odx_odxequities_pts_ouch_v2_0.server_heartbeat.dissect(buffer, offset, packet, parent)
  end
  -- Dissect End Of Session
  if server_packet_type == "Z" then
    return odx_odxequities_pts_ouch_v2_0.end_of_session.dissect(buffer, offset, packet, parent)
  end

  return offset
end

-- Server Packet Header
odx_odxequities_pts_ouch_v2_0.server_packet_header = {}

-- Size: Server Packet Header
odx_odxequities_pts_ouch_v2_0.server_packet_header.size =
  odx_odxequities_pts_ouch_v2_0.packet_length.size + 
  odx_odxequities_pts_ouch_v2_0.server_packet_type.size

-- Display: Server Packet Header
odx_odxequities_pts_ouch_v2_0.server_packet_header.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Server Packet Header
odx_odxequities_pts_ouch_v2_0.server_packet_header.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Packet Length: 2 Byte Unsigned Fixed Width Integer
  index, packet_length = odx_odxequities_pts_ouch_v2_0.packet_length.dissect(buffer, index, packet, parent)

  -- Server Packet Type: 1 Byte Ascii String Enum with 6 values
  index, server_packet_type = odx_odxequities_pts_ouch_v2_0.server_packet_type.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Server Packet Header
odx_odxequities_pts_ouch_v2_0.server_packet_header.dissect = function(buffer, offset, packet, parent)
  if show.structs then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_odx_odxequities_pts_ouch_v2_0.fields.server_packet_header, buffer(offset, 0))
    local index = odx_odxequities_pts_ouch_v2_0.server_packet_header.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = odx_odxequities_pts_ouch_v2_0.server_packet_header.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return odx_odxequities_pts_ouch_v2_0.server_packet_header.fields(buffer, offset, packet, parent)
  end
end

-- Server Soup Bin Tcp Packet
odx_odxequities_pts_ouch_v2_0.server_soup_bin_tcp_packet = {}

-- Display: Server Soup Bin Tcp Packet
odx_odxequities_pts_ouch_v2_0.server_soup_bin_tcp_packet.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Server Soup Bin Tcp Packet
odx_odxequities_pts_ouch_v2_0.server_soup_bin_tcp_packet.fields = function(buffer, offset, packet, parent, size_of_server_soup_bin_tcp_packet)
  local index = offset

  -- Server Packet Header: Struct of 2 fields
  index, server_packet_header = odx_odxequities_pts_ouch_v2_0.server_packet_header.dissect(buffer, index, packet, parent)

  -- Dependency element: Server Packet Type
  local server_packet_type = buffer(index - 1, 1):string()

  -- Server Payload: Runtime Type with 6 branches
  index = odx_odxequities_pts_ouch_v2_0.server_payload.dissect(buffer, index, packet, parent, server_packet_type)

  return index
end

-- Dissect: Server Soup Bin Tcp Packet
odx_odxequities_pts_ouch_v2_0.server_soup_bin_tcp_packet.dissect = function(buffer, offset, packet, parent, size_of_server_soup_bin_tcp_packet)
  local index = offset + size_of_server_soup_bin_tcp_packet

  -- Optionally add group/struct element to protocol tree
  if show.structs then
    parent = parent:add(omi_odx_odxequities_pts_ouch_v2_0.fields.server_soup_bin_tcp_packet, buffer(offset, 0))
    local current = odx_odxequities_pts_ouch_v2_0.server_soup_bin_tcp_packet.fields(buffer, offset, packet, parent, size_of_server_soup_bin_tcp_packet)
    parent:set_len(size_of_server_soup_bin_tcp_packet)
    local display = odx_odxequities_pts_ouch_v2_0.server_soup_bin_tcp_packet.display(buffer, packet, parent)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    odx_odxequities_pts_ouch_v2_0.server_soup_bin_tcp_packet.fields(buffer, offset, packet, parent, size_of_server_soup_bin_tcp_packet)

    return index
  end
end

-- Remaining Bytes For: Server Soup Bin Tcp Packet
local server_soup_bin_tcp_packet_bytes_remaining = function(buffer, index, available)
  -- Calculate the number of bytes remaining
  local remaining = available - index

  -- Check if packet size can be read
  if remaining < odx_odxequities_pts_ouch_v2_0.server_packet_header.size then
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
odx_odxequities_pts_ouch_v2_0.server_packet = {}

-- Verify required size of Tcp packet
odx_odxequities_pts_ouch_v2_0.server_packet.requiredsize = function(buffer)
  return buffer:len() >= odx_odxequities_pts_ouch_v2_0.server_packet_header.size
end

-- Dissect Server Packet
odx_odxequities_pts_ouch_v2_0.server_packet.dissect = function(buffer, packet, parent)
  local index = 0

  -- Dependency for Server Soup Bin Tcp Packet
  local end_of_payload = buffer:len()

  -- Server Soup Bin Tcp Packet: Struct of 2 fields
  while index < end_of_payload do

    -- Are minimum number of bytes are available?
    local available, size_of_server_soup_bin_tcp_packet = server_soup_bin_tcp_packet_bytes_remaining(buffer, index, end_of_payload)

    if available > 0 then
      index = odx_odxequities_pts_ouch_v2_0.server_soup_bin_tcp_packet.dissect(buffer, index, packet, parent, size_of_server_soup_bin_tcp_packet)
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
odx_odxequities_pts_ouch_v2_0.logout_request = {}

-- Display: Logout Request
odx_odxequities_pts_ouch_v2_0.logout_request.display = function(packet, parent, length)
  return "Logout Request"
end


-- Dissect: Logout Request
odx_odxequities_pts_ouch_v2_0.logout_request.dissect = function(buffer, offset, packet, parent)
  local display = odx_odxequities_pts_ouch_v2_0.logout_request.display(packet, parent, 0)
  packet.cols.info = display

  return offset
end

-- Client Heartbeat
odx_odxequities_pts_ouch_v2_0.client_heartbeat = {}

-- Display: Client Heartbeat
odx_odxequities_pts_ouch_v2_0.client_heartbeat.display = function(packet, parent, length)
  return "Client Heartbeat"
end


-- Dissect: Client Heartbeat
odx_odxequities_pts_ouch_v2_0.client_heartbeat.dissect = function(buffer, offset, packet, parent)
  local display = odx_odxequities_pts_ouch_v2_0.client_heartbeat.display(packet, parent, 0)
  packet.cols.info = display

  return offset
end

-- Cancel Order Message
odx_odxequities_pts_ouch_v2_0.cancel_order_message = {}

-- Size: Cancel Order Message
odx_odxequities_pts_ouch_v2_0.cancel_order_message.size =
  odx_odxequities_pts_ouch_v2_0.order_token.size + 
  odx_odxequities_pts_ouch_v2_0.quantity.size

-- Display: Cancel Order Message
odx_odxequities_pts_ouch_v2_0.cancel_order_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Cancel Order Message
odx_odxequities_pts_ouch_v2_0.cancel_order_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Order Token: Token
  index, order_token = odx_odxequities_pts_ouch_v2_0.order_token.dissect(buffer, index, packet, parent)

  -- Quantity: Integer
  index, quantity = odx_odxequities_pts_ouch_v2_0.quantity.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Cancel Order Message
odx_odxequities_pts_ouch_v2_0.cancel_order_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_odx_odxequities_pts_ouch_v2_0.fields.cancel_order_message, buffer(offset, 0))
    local index = odx_odxequities_pts_ouch_v2_0.cancel_order_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = odx_odxequities_pts_ouch_v2_0.cancel_order_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return odx_odxequities_pts_ouch_v2_0.cancel_order_message.fields(buffer, offset, packet, parent)
  end
end

-- Replace Order Message
odx_odxequities_pts_ouch_v2_0.replace_order_message = {}

-- Size: Replace Order Message
odx_odxequities_pts_ouch_v2_0.replace_order_message.size =
  odx_odxequities_pts_ouch_v2_0.existing_order_token.size + 
  odx_odxequities_pts_ouch_v2_0.replacement_order_token.size + 
  odx_odxequities_pts_ouch_v2_0.quantity.size + 
  odx_odxequities_pts_ouch_v2_0.price.size + 
  odx_odxequities_pts_ouch_v2_0.time_in_force.size + 
  odx_odxequities_pts_ouch_v2_0.display.size + 
  odx_odxequities_pts_ouch_v2_0.minimum_quantity.size

-- Display: Replace Order Message
odx_odxequities_pts_ouch_v2_0.replace_order_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Replace Order Message
odx_odxequities_pts_ouch_v2_0.replace_order_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Existing Order Token: Token
  index, existing_order_token = odx_odxequities_pts_ouch_v2_0.existing_order_token.dissect(buffer, index, packet, parent)

  -- Replacement Order Token: Token
  index, replacement_order_token = odx_odxequities_pts_ouch_v2_0.replacement_order_token.dissect(buffer, index, packet, parent)

  -- Quantity: Integer
  index, quantity = odx_odxequities_pts_ouch_v2_0.quantity.dissect(buffer, index, packet, parent)

  -- Price: Integer
  index, price = odx_odxequities_pts_ouch_v2_0.price.dissect(buffer, index, packet, parent)

  -- Time In Force: Integer
  index, time_in_force = odx_odxequities_pts_ouch_v2_0.time_in_force.dissect(buffer, index, packet, parent)

  -- Display: Alpha
  index, display = odx_odxequities_pts_ouch_v2_0.display.dissect(buffer, index, packet, parent)

  -- Minimum Quantity: Integer
  index, minimum_quantity = odx_odxequities_pts_ouch_v2_0.minimum_quantity.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Replace Order Message
odx_odxequities_pts_ouch_v2_0.replace_order_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_odx_odxequities_pts_ouch_v2_0.fields.replace_order_message, buffer(offset, 0))
    local index = odx_odxequities_pts_ouch_v2_0.replace_order_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = odx_odxequities_pts_ouch_v2_0.replace_order_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return odx_odxequities_pts_ouch_v2_0.replace_order_message.fields(buffer, offset, packet, parent)
  end
end

-- Enter Order Message
odx_odxequities_pts_ouch_v2_0.enter_order_message = {}

-- Size: Enter Order Message
odx_odxequities_pts_ouch_v2_0.enter_order_message.size =
  odx_odxequities_pts_ouch_v2_0.order_token.size + 
  odx_odxequities_pts_ouch_v2_0.client_reference.size + 
  odx_odxequities_pts_ouch_v2_0.buy_sell_indicator.size + 
  odx_odxequities_pts_ouch_v2_0.quantity.size + 
  odx_odxequities_pts_ouch_v2_0.orderbook_id.size + 
  odx_odxequities_pts_ouch_v2_0.group.size + 
  odx_odxequities_pts_ouch_v2_0.price.size + 
  odx_odxequities_pts_ouch_v2_0.time_in_force.size + 
  odx_odxequities_pts_ouch_v2_0.firm_id.size + 
  odx_odxequities_pts_ouch_v2_0.display.size + 
  odx_odxequities_pts_ouch_v2_0.capacity.size + 
  odx_odxequities_pts_ouch_v2_0.minimum_quantity.size + 
  odx_odxequities_pts_ouch_v2_0.order_classification.size + 
  odx_odxequities_pts_ouch_v2_0.cash_margin_type.size

-- Display: Enter Order Message
odx_odxequities_pts_ouch_v2_0.enter_order_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Enter Order Message
odx_odxequities_pts_ouch_v2_0.enter_order_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Order Token: Token
  index, order_token = odx_odxequities_pts_ouch_v2_0.order_token.dissect(buffer, index, packet, parent)

  -- Client Reference: Alpha
  index, client_reference = odx_odxequities_pts_ouch_v2_0.client_reference.dissect(buffer, index, packet, parent)

  -- Buy Sell Indicator: Alpha
  index, buy_sell_indicator = odx_odxequities_pts_ouch_v2_0.buy_sell_indicator.dissect(buffer, index, packet, parent)

  -- Quantity: Integer
  index, quantity = odx_odxequities_pts_ouch_v2_0.quantity.dissect(buffer, index, packet, parent)

  -- Orderbook Id: Alpha
  index, orderbook_id = odx_odxequities_pts_ouch_v2_0.orderbook_id.dissect(buffer, index, packet, parent)

  -- Group: Alpha
  index, group = odx_odxequities_pts_ouch_v2_0.group.dissect(buffer, index, packet, parent)

  -- Price: Integer
  index, price = odx_odxequities_pts_ouch_v2_0.price.dissect(buffer, index, packet, parent)

  -- Time In Force: Integer
  index, time_in_force = odx_odxequities_pts_ouch_v2_0.time_in_force.dissect(buffer, index, packet, parent)

  -- Firm Id: Integer
  index, firm_id = odx_odxequities_pts_ouch_v2_0.firm_id.dissect(buffer, index, packet, parent)

  -- Display: Alpha
  index, display = odx_odxequities_pts_ouch_v2_0.display.dissect(buffer, index, packet, parent)

  -- Capacity: Alpha
  index, capacity = odx_odxequities_pts_ouch_v2_0.capacity.dissect(buffer, index, packet, parent)

  -- Minimum Quantity: Integer
  index, minimum_quantity = odx_odxequities_pts_ouch_v2_0.minimum_quantity.dissect(buffer, index, packet, parent)

  -- Order Classification: Alpha
  index, order_classification = odx_odxequities_pts_ouch_v2_0.order_classification.dissect(buffer, index, packet, parent)

  -- Cash Margin Type: Alpha
  index, cash_margin_type = odx_odxequities_pts_ouch_v2_0.cash_margin_type.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Enter Order Message
odx_odxequities_pts_ouch_v2_0.enter_order_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_odx_odxequities_pts_ouch_v2_0.fields.enter_order_message, buffer(offset, 0))
    local index = odx_odxequities_pts_ouch_v2_0.enter_order_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = odx_odxequities_pts_ouch_v2_0.enter_order_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return odx_odxequities_pts_ouch_v2_0.enter_order_message.fields(buffer, offset, packet, parent)
  end
end

-- Unsequenced Message
odx_odxequities_pts_ouch_v2_0.unsequenced_message = {}

-- Dissect: Unsequenced Message
odx_odxequities_pts_ouch_v2_0.unsequenced_message.dissect = function(buffer, offset, packet, parent, unsequenced_message_type)
  -- Dissect Enter Order Message
  if unsequenced_message_type == "O" then
    return odx_odxequities_pts_ouch_v2_0.enter_order_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Replace Order Message
  if unsequenced_message_type == "U" then
    return odx_odxequities_pts_ouch_v2_0.replace_order_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Cancel Order Message
  if unsequenced_message_type == "X" then
    return odx_odxequities_pts_ouch_v2_0.cancel_order_message.dissect(buffer, offset, packet, parent)
  end

  return offset
end

-- Unsequenced Data Packet
odx_odxequities_pts_ouch_v2_0.unsequenced_data_packet = {}

-- Read runtime size of: Unsequenced Data Packet
odx_odxequities_pts_ouch_v2_0.unsequenced_data_packet.size = function(buffer, offset)
  local index = offset

  -- Dependency element: Packet Length
  local packet_length = buffer(offset - 3, 2):uint()

  return packet_length - 1
end

-- Display: Unsequenced Data Packet
odx_odxequities_pts_ouch_v2_0.unsequenced_data_packet.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Unsequenced Data Packet
odx_odxequities_pts_ouch_v2_0.unsequenced_data_packet.fields = function(buffer, offset, packet, parent, size_of_unsequenced_data_packet)
  local index = offset

  -- Unsequenced Message Type: 1 Byte Ascii String Enum with 3 values
  index, unsequenced_message_type = odx_odxequities_pts_ouch_v2_0.unsequenced_message_type.dissect(buffer, index, packet, parent)

  -- Unsequenced Message: Runtime Type with 3 branches
  index = odx_odxequities_pts_ouch_v2_0.unsequenced_message.dissect(buffer, index, packet, parent, unsequenced_message_type)

  return index
end

-- Dissect: Unsequenced Data Packet
odx_odxequities_pts_ouch_v2_0.unsequenced_data_packet.dissect = function(buffer, offset, packet, parent, size_of_unsequenced_data_packet)
  local size_of_unsequenced_data_packet = odx_odxequities_pts_ouch_v2_0.unsequenced_data_packet.size(buffer, offset)
  local index = offset + size_of_unsequenced_data_packet

  -- Optionally add group/struct element to protocol tree
  if show.session_messages then
    parent = parent:add(omi_odx_odxequities_pts_ouch_v2_0.fields.unsequenced_data_packet, buffer(offset, 0))
    local current = odx_odxequities_pts_ouch_v2_0.unsequenced_data_packet.fields(buffer, offset, packet, parent, size_of_unsequenced_data_packet)
    parent:set_len(size_of_unsequenced_data_packet)
    local display = odx_odxequities_pts_ouch_v2_0.unsequenced_data_packet.display(buffer, packet, parent)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    odx_odxequities_pts_ouch_v2_0.unsequenced_data_packet.fields(buffer, offset, packet, parent, size_of_unsequenced_data_packet)

    return index
  end
end

-- Login Request Packet
odx_odxequities_pts_ouch_v2_0.login_request_packet = {}

-- Size: Login Request Packet
odx_odxequities_pts_ouch_v2_0.login_request_packet.size =
  odx_odxequities_pts_ouch_v2_0.username.size + 
  odx_odxequities_pts_ouch_v2_0.password.size + 
  odx_odxequities_pts_ouch_v2_0.requested_session.size + 
  odx_odxequities_pts_ouch_v2_0.requested_sequence_number.size

-- Display: Login Request Packet
odx_odxequities_pts_ouch_v2_0.login_request_packet.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Login Request Packet
odx_odxequities_pts_ouch_v2_0.login_request_packet.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Username: 6 Byte Ascii String
  index, username = odx_odxequities_pts_ouch_v2_0.username.dissect(buffer, index, packet, parent)

  -- Password: 10 Byte Ascii String
  index, password = odx_odxequities_pts_ouch_v2_0.password.dissect(buffer, index, packet, parent)

  -- Requested Session: 10 Byte Ascii String
  index, requested_session = odx_odxequities_pts_ouch_v2_0.requested_session.dissect(buffer, index, packet, parent)

  -- Requested Sequence Number: 20 Byte Ascii String
  index, requested_sequence_number = odx_odxequities_pts_ouch_v2_0.requested_sequence_number.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Login Request Packet
odx_odxequities_pts_ouch_v2_0.login_request_packet.dissect = function(buffer, offset, packet, parent)
  if show.session_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_odx_odxequities_pts_ouch_v2_0.fields.login_request_packet, buffer(offset, 0))
    local index = odx_odxequities_pts_ouch_v2_0.login_request_packet.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = odx_odxequities_pts_ouch_v2_0.login_request_packet.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return odx_odxequities_pts_ouch_v2_0.login_request_packet.fields(buffer, offset, packet, parent)
  end
end

-- Client Payload
odx_odxequities_pts_ouch_v2_0.client_payload = {}

-- Dissect: Client Payload
odx_odxequities_pts_ouch_v2_0.client_payload.dissect = function(buffer, offset, packet, parent, client_packet_type)
  -- Dissect Debug Packet
  if client_packet_type == "+" then
    return odx_odxequities_pts_ouch_v2_0.debug_packet.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Login Request Packet
  if client_packet_type == "L" then
    return odx_odxequities_pts_ouch_v2_0.login_request_packet.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Unsequenced Data Packet
  if client_packet_type == "U" then
    return odx_odxequities_pts_ouch_v2_0.unsequenced_data_packet.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Client Heartbeat
  if client_packet_type == "R" then
    return odx_odxequities_pts_ouch_v2_0.client_heartbeat.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Logout Request
  if client_packet_type == "O" then
    return odx_odxequities_pts_ouch_v2_0.logout_request.dissect(buffer, offset, packet, parent)
  end

  return offset
end

-- Client Packet Header
odx_odxequities_pts_ouch_v2_0.client_packet_header = {}

-- Size: Client Packet Header
odx_odxequities_pts_ouch_v2_0.client_packet_header.size =
  odx_odxequities_pts_ouch_v2_0.packet_length.size + 
  odx_odxequities_pts_ouch_v2_0.client_packet_type.size

-- Display: Client Packet Header
odx_odxequities_pts_ouch_v2_0.client_packet_header.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Client Packet Header
odx_odxequities_pts_ouch_v2_0.client_packet_header.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Packet Length: 2 Byte Unsigned Fixed Width Integer
  index, packet_length = odx_odxequities_pts_ouch_v2_0.packet_length.dissect(buffer, index, packet, parent)

  -- Client Packet Type: 1 Byte Ascii String Enum with 5 values
  index, client_packet_type = odx_odxequities_pts_ouch_v2_0.client_packet_type.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Client Packet Header
odx_odxequities_pts_ouch_v2_0.client_packet_header.dissect = function(buffer, offset, packet, parent)
  if show.structs then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_odx_odxequities_pts_ouch_v2_0.fields.client_packet_header, buffer(offset, 0))
    local index = odx_odxequities_pts_ouch_v2_0.client_packet_header.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = odx_odxequities_pts_ouch_v2_0.client_packet_header.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return odx_odxequities_pts_ouch_v2_0.client_packet_header.fields(buffer, offset, packet, parent)
  end
end

-- Client Soup Bin Tcp Packet
odx_odxequities_pts_ouch_v2_0.client_soup_bin_tcp_packet = {}

-- Display: Client Soup Bin Tcp Packet
odx_odxequities_pts_ouch_v2_0.client_soup_bin_tcp_packet.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Client Soup Bin Tcp Packet
odx_odxequities_pts_ouch_v2_0.client_soup_bin_tcp_packet.fields = function(buffer, offset, packet, parent, size_of_client_soup_bin_tcp_packet)
  local index = offset

  -- Client Packet Header: Struct of 2 fields
  index, client_packet_header = odx_odxequities_pts_ouch_v2_0.client_packet_header.dissect(buffer, index, packet, parent)

  -- Dependency element: Client Packet Type
  local client_packet_type = buffer(index - 1, 1):string()

  -- Client Payload: Runtime Type with 5 branches
  index = odx_odxequities_pts_ouch_v2_0.client_payload.dissect(buffer, index, packet, parent, client_packet_type)

  return index
end

-- Dissect: Client Soup Bin Tcp Packet
odx_odxequities_pts_ouch_v2_0.client_soup_bin_tcp_packet.dissect = function(buffer, offset, packet, parent, size_of_client_soup_bin_tcp_packet)
  local index = offset + size_of_client_soup_bin_tcp_packet

  -- Optionally add group/struct element to protocol tree
  if show.structs then
    parent = parent:add(omi_odx_odxequities_pts_ouch_v2_0.fields.client_soup_bin_tcp_packet, buffer(offset, 0))
    local current = odx_odxequities_pts_ouch_v2_0.client_soup_bin_tcp_packet.fields(buffer, offset, packet, parent, size_of_client_soup_bin_tcp_packet)
    parent:set_len(size_of_client_soup_bin_tcp_packet)
    local display = odx_odxequities_pts_ouch_v2_0.client_soup_bin_tcp_packet.display(buffer, packet, parent)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    odx_odxequities_pts_ouch_v2_0.client_soup_bin_tcp_packet.fields(buffer, offset, packet, parent, size_of_client_soup_bin_tcp_packet)

    return index
  end
end

-- Remaining Bytes For: Client Soup Bin Tcp Packet
local client_soup_bin_tcp_packet_bytes_remaining = function(buffer, index, available)
  -- Calculate the number of bytes remaining
  local remaining = available - index

  -- Check if packet size can be read
  if remaining < odx_odxequities_pts_ouch_v2_0.client_packet_header.size then
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
odx_odxequities_pts_ouch_v2_0.client_packet = {}

-- Verify required size of Tcp packet
odx_odxequities_pts_ouch_v2_0.client_packet.requiredsize = function(buffer)
  return buffer:len() >= odx_odxequities_pts_ouch_v2_0.client_packet_header.size
end

-- Dissect Client Packet
odx_odxequities_pts_ouch_v2_0.client_packet.dissect = function(buffer, packet, parent)
  local index = 0

  -- Dependency for Client Soup Bin Tcp Packet
  local end_of_payload = buffer:len()

  -- Client Soup Bin Tcp Packet: Struct of 2 fields
  while index < end_of_payload do

    -- Are minimum number of bytes are available?
    local available, size_of_client_soup_bin_tcp_packet = client_soup_bin_tcp_packet_bytes_remaining(buffer, index, end_of_payload)

    if available > 0 then
      index = odx_odxequities_pts_ouch_v2_0.client_soup_bin_tcp_packet.dissect(buffer, index, packet, parent, size_of_client_soup_bin_tcp_packet)
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
function omi_odx_odxequities_pts_ouch_v2_0.init()
end

-- Connection roles for Odx OdxEquities Pts Ouch 2.0: Client is the initiator, Server is the acceptor
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
odx_odxequities_pts_ouch_v2_0.role = function(packet)
  if omi_odx_odxequities_pts_ouch_v2_0.prefs.assume_role == 1 then
    return "initiator"
  end
  if omi_odx_odxequities_pts_ouch_v2_0.prefs.assume_role == 2 then
    return "acceptor"
  end
  local port = omi_odx_odxequities_pts_ouch_v2_0.prefs.acceptor_port
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
  if omi_odx_odxequities_pts_ouch_v2_0.prefs.swap_sides then
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
odx_odxequities_pts_ouch_v2_0.swap = function(packet)
  local key = conversation(packet)
  swapped[key] = not swapped[key]
end


-- Dissector for Odx OdxEquities Pts Ouch 2.0
function omi_odx_odxequities_pts_ouch_v2_0.dissector(buffer, packet, parent)

  -- Set protocol name
  packet.cols.protocol = omi_odx_odxequities_pts_ouch_v2_0.name

  -- Dissect protocol
  local protocol = parent:add(omi_odx_odxequities_pts_ouch_v2_0, buffer(), omi_odx_odxequities_pts_ouch_v2_0.description, "("..buffer:len().." Bytes)")
  local role = odx_odxequities_pts_ouch_v2_0.role(packet)
  if role == "initiator" then
    return odx_odxequities_pts_ouch_v2_0.client_packet.dissect(buffer, packet, protocol)
  end
  return odx_odxequities_pts_ouch_v2_0.server_packet.dissect(buffer, packet, protocol)
end


-----------------------------------------------------------------------
-- Protocol Fingerprints
-----------------------------------------------------------------------

-- Fingerprint of Client Packet: would its message dispatch accept this frame?
odx_odxequities_pts_ouch_v2_0.client_packet.fingerprint = function(buffer)
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
odx_odxequities_pts_ouch_v2_0.server_packet.fingerprint = function(buffer)
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

-- Dissector Heuristic for Odx OdxEquities Pts Ouch 2.0 (Tcp)
local function omi_odx_odxequities_pts_ouch_v2_0_tcp_initiator_heuristic(buffer, packet, parent)
  -- Verify packet length
  if not odx_odxequities_pts_ouch_v2_0.client_packet.requiredsize(buffer) then return false end

  -- Verify the frame matches this side's fingerprint
  if not odx_odxequities_pts_ouch_v2_0.client_packet.fingerprint(buffer) then return false end

  -- Protocol is valid, set conversation and dissect this packet
  packet.conversation = omi_odx_odxequities_pts_ouch_v2_0
  omi_odx_odxequities_pts_ouch_v2_0.dissector(buffer, packet, parent)

  return true
end

-- Dissector Heuristic for Odx OdxEquities Pts Ouch 2.0 (Tcp)
local function omi_odx_odxequities_pts_ouch_v2_0_tcp_acceptor_heuristic(buffer, packet, parent)
  -- Verify packet length
  if not odx_odxequities_pts_ouch_v2_0.server_packet.requiredsize(buffer) then return false end

  -- Verify the frame matches this side's fingerprint
  if not odx_odxequities_pts_ouch_v2_0.server_packet.fingerprint(buffer) then return false end

  -- Protocol is valid, set conversation and dissect this packet
  packet.conversation = omi_odx_odxequities_pts_ouch_v2_0
  omi_odx_odxequities_pts_ouch_v2_0.dissector(buffer, packet, parent)

  return true
end

-- Dissector Heuristic for Odx OdxEquities Pts Ouch 2.0 (Tcp): apply the heuristic of the sender's connection role
local function omi_odx_odxequities_pts_ouch_v2_0_tcp_heuristic(buffer, packet, parent)
  local role = odx_odxequities_pts_ouch_v2_0.role(packet)
  local first, second = omi_odx_odxequities_pts_ouch_v2_0_tcp_initiator_heuristic, omi_odx_odxequities_pts_ouch_v2_0_tcp_acceptor_heuristic
  if role == "acceptor" then
    first, second = second, first
  end
  if first(buffer, packet, parent) then
    return true
  end

  -- The other side may have sent this conversation's first frame: swap, and swap back if it cannot claim either
  odx_odxequities_pts_ouch_v2_0.swap(packet)
  if second(buffer, packet, parent) then
    return true
  end
  odx_odxequities_pts_ouch_v2_0.swap(packet)

  return false
end

-- Register Heuristics for Odx OdxEquities Pts Ouch 2.0
omi_odx_odxequities_pts_ouch_v2_0:register_heuristic("tcp", omi_odx_odxequities_pts_ouch_v2_0_tcp_heuristic)

-----------------------------------------------------------------------
-- Lua dissectors are an easily edited and modified cross-platform dissection solution.
-- Feel free to modify. Enjoy.
-----------------------------------------------------------------------
--
-- Protocol:
--   Organization: Osaka Digital Exchange
--   Version: 2.0
--   Date: Friday, March 31, 2023
--   Specification: ODX_PTS_OUCH_Equities_v2.0.pdf
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
