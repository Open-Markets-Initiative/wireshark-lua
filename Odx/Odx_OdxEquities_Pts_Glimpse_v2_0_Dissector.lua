-----------------------------------------------------------------------
-- Lua Script Wireshark Dissector
--
-- Please see end of file for rules and regulations
-----------------------------------------------------------------------

-- Odx OdxEquities Pts Glimpse 2.0 Protocol
local omi_odx_odxequities_pts_glimpse_v2_0 = Proto("Omi.Odx.OdxEquities.Pts.Glimpse.v2.0", "Odx OdxEquities Pts Glimpse 2.0")

-- Protocol table
local odx_odxequities_pts_glimpse_v2_0 = {}

-----------------------------------------------------------------------
-- Declare Protocol Fields
-----------------------------------------------------------------------

-- Odx OdxEquities Pts Glimpse 2.0 Fields
omi_odx_odxequities_pts_glimpse_v2_0.fields.attribution = ProtoField.new("Attribution", "odx.odxequities.pts.glimpse.v2.0.attribution", ftypes.STRING)
omi_odx_odxequities_pts_glimpse_v2_0.fields.buy_sell_indicator = ProtoField.new("Buy Sell Indicator", "odx.odxequities.pts.glimpse.v2.0.buysellindicator", ftypes.STRING)
omi_odx_odxequities_pts_glimpse_v2_0.fields.client_packet_type = ProtoField.new("Packet Type", "odx.odxequities.pts.glimpse.v2.0.clientpackettype", ftypes.STRING)
omi_odx_odxequities_pts_glimpse_v2_0.fields.group = ProtoField.new("Group", "odx.odxequities.pts.glimpse.v2.0.group", ftypes.STRING)
omi_odx_odxequities_pts_glimpse_v2_0.fields.lower_price_limit = ProtoField.new("Lower Price Limit", "odx.odxequities.pts.glimpse.v2.0.lowerpricelimit", ftypes.DOUBLE)
omi_odx_odxequities_pts_glimpse_v2_0.fields.nanoseconds = ProtoField.new("Nanoseconds", "odx.odxequities.pts.glimpse.v2.0.nanoseconds", ftypes.UINT32)
omi_odx_odxequities_pts_glimpse_v2_0.fields.order_number = ProtoField.new("Order Number", "odx.odxequities.pts.glimpse.v2.0.ordernumber", ftypes.UINT64)
omi_odx_odxequities_pts_glimpse_v2_0.fields.order_type = ProtoField.new("Order Type", "odx.odxequities.pts.glimpse.v2.0.ordertype", ftypes.STRING)
omi_odx_odxequities_pts_glimpse_v2_0.fields.orderbook_code = ProtoField.new("Orderbook Code", "odx.odxequities.pts.glimpse.v2.0.orderbookcode", ftypes.STRING)
omi_odx_odxequities_pts_glimpse_v2_0.fields.orderbook_id = ProtoField.new("Orderbook Id", "odx.odxequities.pts.glimpse.v2.0.orderbookid", ftypes.STRING)
omi_odx_odxequities_pts_glimpse_v2_0.fields.packet_length = ProtoField.new("Packet Length", "odx.odxequities.pts.glimpse.v2.0.packetlength", ftypes.UINT16)
omi_odx_odxequities_pts_glimpse_v2_0.fields.password = ProtoField.new("Password", "odx.odxequities.pts.glimpse.v2.0.password", ftypes.STRING)
omi_odx_odxequities_pts_glimpse_v2_0.fields.price = ProtoField.new("Price", "odx.odxequities.pts.glimpse.v2.0.price", ftypes.DOUBLE)
omi_odx_odxequities_pts_glimpse_v2_0.fields.price_decimals = ProtoField.new("Price Decimals", "odx.odxequities.pts.glimpse.v2.0.pricedecimals", ftypes.UINT32)
omi_odx_odxequities_pts_glimpse_v2_0.fields.price_start = ProtoField.new("Price Start", "odx.odxequities.pts.glimpse.v2.0.pricestart", ftypes.DOUBLE)
omi_odx_odxequities_pts_glimpse_v2_0.fields.price_tick_size = ProtoField.new("Price Tick Size", "odx.odxequities.pts.glimpse.v2.0.priceticksize", ftypes.DOUBLE)
omi_odx_odxequities_pts_glimpse_v2_0.fields.price_tick_size_table_id = ProtoField.new("Price Tick Size Table Id", "odx.odxequities.pts.glimpse.v2.0.priceticksizetableid", ftypes.UINT32)
omi_odx_odxequities_pts_glimpse_v2_0.fields.quantity = ProtoField.new("Quantity", "odx.odxequities.pts.glimpse.v2.0.quantity", ftypes.UINT32)
omi_odx_odxequities_pts_glimpse_v2_0.fields.reject_reason_code = ProtoField.new("Reject Reason Code", "odx.odxequities.pts.glimpse.v2.0.rejectreasoncode", ftypes.STRING)
omi_odx_odxequities_pts_glimpse_v2_0.fields.requested_sequence_number = ProtoField.new("Requested Sequence Number", "odx.odxequities.pts.glimpse.v2.0.requestedsequencenumber", ftypes.STRING)
omi_odx_odxequities_pts_glimpse_v2_0.fields.requested_session = ProtoField.new("Requested Session", "odx.odxequities.pts.glimpse.v2.0.requestedsession", ftypes.STRING)
omi_odx_odxequities_pts_glimpse_v2_0.fields.round_lot_size = ProtoField.new("Round Lot Size", "odx.odxequities.pts.glimpse.v2.0.roundlotsize", ftypes.UINT32)
omi_odx_odxequities_pts_glimpse_v2_0.fields.seconds = ProtoField.new("Seconds", "odx.odxequities.pts.glimpse.v2.0.seconds", ftypes.UINT32)
omi_odx_odxequities_pts_glimpse_v2_0.fields.sequence_number = ProtoField.new("Sequence Number", "odx.odxequities.pts.glimpse.v2.0.sequencenumber", ftypes.UINT64)
omi_odx_odxequities_pts_glimpse_v2_0.fields.sequenced_message_type = ProtoField.new("Sequenced Message Type", "odx.odxequities.pts.glimpse.v2.0.sequencedmessagetype", ftypes.STRING)
omi_odx_odxequities_pts_glimpse_v2_0.fields.server_packet_type = ProtoField.new("Packet Type", "odx.odxequities.pts.glimpse.v2.0.serverpackettype", ftypes.STRING)
omi_odx_odxequities_pts_glimpse_v2_0.fields.session = ProtoField.new("Session", "odx.odxequities.pts.glimpse.v2.0.session", ftypes.STRING)
omi_odx_odxequities_pts_glimpse_v2_0.fields.short_selling_state = ProtoField.new("Short Selling State", "odx.odxequities.pts.glimpse.v2.0.shortsellingstate", ftypes.STRING)
omi_odx_odxequities_pts_glimpse_v2_0.fields.system_event = ProtoField.new("System Event", "odx.odxequities.pts.glimpse.v2.0.systemevent", ftypes.STRING)
omi_odx_odxequities_pts_glimpse_v2_0.fields.text = ProtoField.new("Text", "odx.odxequities.pts.glimpse.v2.0.text", ftypes.STRING)
omi_odx_odxequities_pts_glimpse_v2_0.fields.trading_state = ProtoField.new("Trading State", "odx.odxequities.pts.glimpse.v2.0.tradingstate", ftypes.STRING)
omi_odx_odxequities_pts_glimpse_v2_0.fields.unsequenced_message = ProtoField.new("Unsequenced Message", "odx.odxequities.pts.glimpse.v2.0.unsequencedmessage", ftypes.BYTES)
omi_odx_odxequities_pts_glimpse_v2_0.fields.unsequenced_message_type = ProtoField.new("Unsequenced Message Type", "odx.odxequities.pts.glimpse.v2.0.unsequencedmessagetype", ftypes.STRING)
omi_odx_odxequities_pts_glimpse_v2_0.fields.upper_price_limit = ProtoField.new("Upper Price Limit", "odx.odxequities.pts.glimpse.v2.0.upperpricelimit", ftypes.DOUBLE)
omi_odx_odxequities_pts_glimpse_v2_0.fields.username = ProtoField.new("Username", "odx.odxequities.pts.glimpse.v2.0.username", ftypes.STRING)

-- Odx OdxEquities Pts Glimpse 2.0 Headers
omi_odx_odxequities_pts_glimpse_v2_0.fields.client_packet = ProtoField.new("Packet", "odx.odxequities.pts.glimpse.v2.0.clientpacket", ftypes.STRING)
omi_odx_odxequities_pts_glimpse_v2_0.fields.client_packet_header = ProtoField.new("Packet Header", "odx.odxequities.pts.glimpse.v2.0.clientpacketheader", ftypes.STRING)
omi_odx_odxequities_pts_glimpse_v2_0.fields.client_soup_bin_tcp_packet = ProtoField.new("Soup Bin Tcp Packet", "odx.odxequities.pts.glimpse.v2.0.clientsoupbintcppacket", ftypes.STRING)
omi_odx_odxequities_pts_glimpse_v2_0.fields.server_packet = ProtoField.new("Packet", "odx.odxequities.pts.glimpse.v2.0.serverpacket", ftypes.STRING)
omi_odx_odxequities_pts_glimpse_v2_0.fields.server_packet_header = ProtoField.new("Packet Header", "odx.odxequities.pts.glimpse.v2.0.serverpacketheader", ftypes.STRING)
omi_odx_odxequities_pts_glimpse_v2_0.fields.server_soup_bin_tcp_packet = ProtoField.new("Soup Bin Tcp Packet", "odx.odxequities.pts.glimpse.v2.0.serversoupbintcppacket", ftypes.STRING)

-- Odx OdxEquities Pts 2.0 Session Messages
omi_odx_odxequities_pts_glimpse_v2_0.fields.debug_packet = ProtoField.new("Debug Packet", "odx.odxequities.pts.glimpse.v2.0.debugpacket", ftypes.STRING)
omi_odx_odxequities_pts_glimpse_v2_0.fields.login_accepted_packet = ProtoField.new("Login Accepted Packet", "odx.odxequities.pts.glimpse.v2.0.loginacceptedpacket", ftypes.STRING)
omi_odx_odxequities_pts_glimpse_v2_0.fields.login_rejected_packet = ProtoField.new("Login Rejected Packet", "odx.odxequities.pts.glimpse.v2.0.loginrejectedpacket", ftypes.STRING)
omi_odx_odxequities_pts_glimpse_v2_0.fields.login_request_packet = ProtoField.new("Login Request Packet", "odx.odxequities.pts.glimpse.v2.0.loginrequestpacket", ftypes.STRING)
omi_odx_odxequities_pts_glimpse_v2_0.fields.sequenced_data_packet = ProtoField.new("Sequenced Data Packet", "odx.odxequities.pts.glimpse.v2.0.sequenceddatapacket", ftypes.STRING)
omi_odx_odxequities_pts_glimpse_v2_0.fields.unsequenced_data_packet = ProtoField.new("Unsequenced Data Packet", "odx.odxequities.pts.glimpse.v2.0.unsequenceddatapacket", ftypes.STRING)

-- Odx OdxEquities Pts 2.0 Application Messages
omi_odx_odxequities_pts_glimpse_v2_0.fields.end_of_snapshot_message = ProtoField.new("End Of Snapshot Message", "odx.odxequities.pts.glimpse.v2.0.endofsnapshotmessage", ftypes.STRING)
omi_odx_odxequities_pts_glimpse_v2_0.fields.order_added_message = ProtoField.new("Order Added Message", "odx.odxequities.pts.glimpse.v2.0.orderaddedmessage", ftypes.STRING)
omi_odx_odxequities_pts_glimpse_v2_0.fields.order_added_with_attributes_message = ProtoField.new("Order Added With Attributes Message", "odx.odxequities.pts.glimpse.v2.0.orderaddedwithattributesmessage", ftypes.STRING)
omi_odx_odxequities_pts_glimpse_v2_0.fields.orderbook_directory_message = ProtoField.new("Orderbook Directory Message", "odx.odxequities.pts.glimpse.v2.0.orderbookdirectorymessage", ftypes.STRING)
omi_odx_odxequities_pts_glimpse_v2_0.fields.price_tick_size_message = ProtoField.new("Price Tick Size Message", "odx.odxequities.pts.glimpse.v2.0.priceticksizemessage", ftypes.STRING)
omi_odx_odxequities_pts_glimpse_v2_0.fields.seconds_message = ProtoField.new("Seconds Message", "odx.odxequities.pts.glimpse.v2.0.secondsmessage", ftypes.STRING)
omi_odx_odxequities_pts_glimpse_v2_0.fields.short_selling_price_restriction_state_message = ProtoField.new("Short Selling Price Restriction State Message", "odx.odxequities.pts.glimpse.v2.0.shortsellingpricerestrictionstatemessage", ftypes.STRING)
omi_odx_odxequities_pts_glimpse_v2_0.fields.system_event_message = ProtoField.new("System Event Message", "odx.odxequities.pts.glimpse.v2.0.systemeventmessage", ftypes.STRING)
omi_odx_odxequities_pts_glimpse_v2_0.fields.trading_state_message = ProtoField.new("Trading State Message", "odx.odxequities.pts.glimpse.v2.0.tradingstatemessage", ftypes.STRING)

-- Odx OdxEquities Pts Glimpse 2.0 generated fields
omi_odx_odxequities_pts_glimpse_v2_0.fields.timestamp = ProtoField.new("Timestamp", "odx.odxequities.pts.glimpse.v2.0.timestamp", ftypes.UINT64)

-----------------------------------------------------------------------
-- Odx OdxEquities Pts Glimpse 2.0 Formatting
-----------------------------------------------------------------------

-- timestamp format
local timestamp_format_enum = {
  { 1, "Raw", 0 },
  { 2, "Time of Day", 1 },
  { 3, "Full DateTime", 2 }
}

-- 0=Raw, 1=TimeOfDay, 2=FullDateTime
odx_odxequities_pts_glimpse_v2_0.timestamp_format = 2

-- Hours ahead of UTC (JST) for midnight calculation
odx_odxequities_pts_glimpse_v2_0.utc_offset_hours = 9


-----------------------------------------------------------------------
-- Declare Dissection Options
-----------------------------------------------------------------------

local show = {}

-- Odx OdxEquities Pts Glimpse 2.0 Element Dissection Options
show.structs = true
show.session_messages = true
show.application_messages = true

-- Register Odx OdxEquities Pts Glimpse 2.0 Show Options
local role_enum = {
  { 1, "Resolve from the conversation", 0 },
  { 2, "Initiator", 1 },
  { 3, "Acceptor", 2 }
}
omi_odx_odxequities_pts_glimpse_v2_0.prefs.acceptor_port = Pref.uint("Acceptor Port", 0, "Port the acceptor listens on; 0 resolves each frame's role from its conversation")
omi_odx_odxequities_pts_glimpse_v2_0.prefs.assume_role = Pref.enum("Assume Role", 0, "Connection role assumed for every frame, for captures that start mid conversation", role_enum, false)
omi_odx_odxequities_pts_glimpse_v2_0.prefs.swap_sides = Pref.bool("Swap Sides", false, "The first frame seen of each conversation was the acceptor's, not the initiator's; for captures that start mid conversation")
omi_odx_odxequities_pts_glimpse_v2_0.prefs.show_structs = Pref.bool("Show Structs", show.structs, "Parse and add Structs to protocol tree")
omi_odx_odxequities_pts_glimpse_v2_0.prefs.show_session_messages = Pref.bool("Show Session Messages", show.session_messages, "Parse and add Session Messages to protocol tree")
omi_odx_odxequities_pts_glimpse_v2_0.prefs.show_application_messages = Pref.bool("Show Application Messages", show.application_messages, "Parse and add Application Messages to protocol tree")

omi_odx_odxequities_pts_glimpse_v2_0.prefs.timestamp_format = Pref.enum("Nanoseconds Format", 2, "Nanoseconds display format", timestamp_format_enum, false)
omi_odx_odxequities_pts_glimpse_v2_0.prefs.utc_offset_hours = Pref.uint("UTC Offset (hours)", 9, "Hours ahead of UTC (JST) for midnight calculation")

-- Handle changed preferences
function omi_odx_odxequities_pts_glimpse_v2_0.prefs_changed()

  -- Check if preferences have changed
  if show.application_messages ~= omi_odx_odxequities_pts_glimpse_v2_0.prefs.show_application_messages then
    show.application_messages = omi_odx_odxequities_pts_glimpse_v2_0.prefs.show_application_messages
  end
  if show.session_messages ~= omi_odx_odxequities_pts_glimpse_v2_0.prefs.show_session_messages then
    show.session_messages = omi_odx_odxequities_pts_glimpse_v2_0.prefs.show_session_messages
  end
  if show.structs ~= omi_odx_odxequities_pts_glimpse_v2_0.prefs.show_structs then
    show.structs = omi_odx_odxequities_pts_glimpse_v2_0.prefs.show_structs
  end
  if odx_odxequities_pts_glimpse_v2_0.timestamp_format ~= omi_odx_odxequities_pts_glimpse_v2_0.prefs.timestamp_format then
    odx_odxequities_pts_glimpse_v2_0.timestamp_format = omi_odx_odxequities_pts_glimpse_v2_0.prefs.timestamp_format
  end
  if odx_odxequities_pts_glimpse_v2_0.utc_offset_hours ~= omi_odx_odxequities_pts_glimpse_v2_0.prefs.utc_offset_hours then
    odx_odxequities_pts_glimpse_v2_0.utc_offset_hours = omi_odx_odxequities_pts_glimpse_v2_0.prefs.utc_offset_hours
  end
end


-----------------------------------------------------------------------
-- Protocol Conversation State
-----------------------------------------------------------------------

-- State, keyed by src/dst tuple
odx_odxequities_pts_glimpse_v2_0.conversation = {}
odx_odxequities_pts_glimpse_v2_0.conversation.flows = {}

-- Conversation key for the current packet (src/dst tuple)
odx_odxequities_pts_glimpse_v2_0.conversation.key = function(packet)
  return string.format("%s|%s|%s|%s", tostring(packet.src), packet.src_port, tostring(packet.dst), packet.dst_port)
end


-- Get/create our protocol's data record for the current packet's flow
odx_odxequities_pts_glimpse_v2_0.conversation.data = function(packet)
  local key = odx_odxequities_pts_glimpse_v2_0.conversation.key(packet)
  local data = odx_odxequities_pts_glimpse_v2_0.conversation.flows[key]
  if data == nil then
    data = { seconds = { last = nil, frames = {} } }
    odx_odxequities_pts_glimpse_v2_0.conversation.flows[key] = data
  end
  return data
end


-- Handle to the current packet's conversation data
odx_odxequities_pts_glimpse_v2_0.conversation.current = nil


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
-- Odx OdxEquities Pts Glimpse 2.0 Fields
-----------------------------------------------------------------------

-- Attribution
odx_odxequities_pts_glimpse_v2_0.attribution = {}

-- Size: Attribution
odx_odxequities_pts_glimpse_v2_0.attribution.size = 4

-- Display: Attribution
odx_odxequities_pts_glimpse_v2_0.attribution.display = function(value)
  return "Attribution: "..value
end

-- Dissect: Attribution
odx_odxequities_pts_glimpse_v2_0.attribution.dissect = function(buffer, offset, packet, parent)
  local length = odx_odxequities_pts_glimpse_v2_0.attribution.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = odx_odxequities_pts_glimpse_v2_0.attribution.display(value, buffer, offset, packet, parent)

  parent:add(omi_odx_odxequities_pts_glimpse_v2_0.fields.attribution, range, value, display)

  return offset + length, value
end

-- Buy Sell Indicator
odx_odxequities_pts_glimpse_v2_0.buy_sell_indicator = {}

-- Size: Buy Sell Indicator
odx_odxequities_pts_glimpse_v2_0.buy_sell_indicator.size = 1

-- Display: Buy Sell Indicator
odx_odxequities_pts_glimpse_v2_0.buy_sell_indicator.display = function(value)
  if value == "B" then
    return "Buy Sell Indicator: Buy (B)"
  end
  if value == "S" then
    return "Buy Sell Indicator: Sell (S)"
  end

  return "Buy Sell Indicator: Unknown("..value..")"
end

-- Dissect: Buy Sell Indicator
odx_odxequities_pts_glimpse_v2_0.buy_sell_indicator.dissect = function(buffer, offset, packet, parent)
  local length = odx_odxequities_pts_glimpse_v2_0.buy_sell_indicator.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = odx_odxequities_pts_glimpse_v2_0.buy_sell_indicator.display(value, buffer, offset, packet, parent)

  parent:add(omi_odx_odxequities_pts_glimpse_v2_0.fields.buy_sell_indicator, range, value, display)

  return offset + length, value
end

-- Client Packet Type
odx_odxequities_pts_glimpse_v2_0.client_packet_type = {}

-- Size: Client Packet Type
odx_odxequities_pts_glimpse_v2_0.client_packet_type.size = 1

-- Display: Client Packet Type
odx_odxequities_pts_glimpse_v2_0.client_packet_type.display = function(value)
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
odx_odxequities_pts_glimpse_v2_0.client_packet_type.dissect = function(buffer, offset, packet, parent)
  local length = odx_odxequities_pts_glimpse_v2_0.client_packet_type.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = odx_odxequities_pts_glimpse_v2_0.client_packet_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_odx_odxequities_pts_glimpse_v2_0.fields.client_packet_type, range, value, display)

  return offset + length, value
end

-- Group
odx_odxequities_pts_glimpse_v2_0.group = {}

-- Size: Group
odx_odxequities_pts_glimpse_v2_0.group.size = 4

-- Display: Group
odx_odxequities_pts_glimpse_v2_0.group.display = function(value)
  return "Group: "..value
end

-- Dissect: Group
odx_odxequities_pts_glimpse_v2_0.group.dissect = function(buffer, offset, packet, parent)
  local length = odx_odxequities_pts_glimpse_v2_0.group.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = odx_odxequities_pts_glimpse_v2_0.group.display(value, buffer, offset, packet, parent)

  parent:add(omi_odx_odxequities_pts_glimpse_v2_0.fields.group, range, value, display)

  return offset + length, value
end

-- Lower Price Limit
odx_odxequities_pts_glimpse_v2_0.lower_price_limit = {}

-- Size: Lower Price Limit
odx_odxequities_pts_glimpse_v2_0.lower_price_limit.size = 4

-- Display: Lower Price Limit
odx_odxequities_pts_glimpse_v2_0.lower_price_limit.display = function(value)
  return "Lower Price Limit: "..value
end

-- Translate: Lower Price Limit
odx_odxequities_pts_glimpse_v2_0.lower_price_limit.translate = function(raw)
  return raw/10
end

-- Dissect: Lower Price Limit
odx_odxequities_pts_glimpse_v2_0.lower_price_limit.dissect = function(buffer, offset, packet, parent)
  local length = odx_odxequities_pts_glimpse_v2_0.lower_price_limit.size
  local range = buffer(offset, length)
  local raw = range:uint()
  local value = odx_odxequities_pts_glimpse_v2_0.lower_price_limit.translate(raw)
  local display = odx_odxequities_pts_glimpse_v2_0.lower_price_limit.display(value, buffer, offset, packet, parent)

  parent:add(omi_odx_odxequities_pts_glimpse_v2_0.fields.lower_price_limit, range, value, display)

  return offset + length, value
end

-- Nanoseconds
odx_odxequities_pts_glimpse_v2_0.nanoseconds = {}

-- Size: Nanoseconds
odx_odxequities_pts_glimpse_v2_0.nanoseconds.size = 4

-- Display: Nanoseconds
odx_odxequities_pts_glimpse_v2_0.nanoseconds.display = function(value)
  return "Nanoseconds: "..value
end

-- Dissect: Nanoseconds
odx_odxequities_pts_glimpse_v2_0.nanoseconds.dissect = function(buffer, offset, packet, parent)
  local length = odx_odxequities_pts_glimpse_v2_0.nanoseconds.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = odx_odxequities_pts_glimpse_v2_0.nanoseconds.display(value, buffer, offset, packet, parent)

  parent:add(omi_odx_odxequities_pts_glimpse_v2_0.fields.nanoseconds, range, value, display)

  return offset + length, value
end

-- Order Number
odx_odxequities_pts_glimpse_v2_0.order_number = {}

-- Size: Order Number
odx_odxequities_pts_glimpse_v2_0.order_number.size = 8

-- Display: Order Number
odx_odxequities_pts_glimpse_v2_0.order_number.display = function(value)
  return "Order Number: "..value
end

-- Dissect: Order Number
odx_odxequities_pts_glimpse_v2_0.order_number.dissect = function(buffer, offset, packet, parent)
  local length = odx_odxequities_pts_glimpse_v2_0.order_number.size
  local range = buffer(offset, length)
  local value = range:uint64()
  local display = odx_odxequities_pts_glimpse_v2_0.order_number.display(value, buffer, offset, packet, parent)

  parent:add(omi_odx_odxequities_pts_glimpse_v2_0.fields.order_number, range, value, display)

  return offset + length, value
end

-- Order Type
odx_odxequities_pts_glimpse_v2_0.order_type = {}

-- Size: Order Type
odx_odxequities_pts_glimpse_v2_0.order_type.size = 1

-- Display: Order Type
odx_odxequities_pts_glimpse_v2_0.order_type.display = function(value)
  if value == "Q" then
    return "Order Type: Dlp Order (Q)"
  end

  return "Order Type: Unknown("..value..")"
end

-- Dissect: Order Type
odx_odxequities_pts_glimpse_v2_0.order_type.dissect = function(buffer, offset, packet, parent)
  local length = odx_odxequities_pts_glimpse_v2_0.order_type.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = odx_odxequities_pts_glimpse_v2_0.order_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_odx_odxequities_pts_glimpse_v2_0.fields.order_type, range, value, display)

  return offset + length, value
end

-- Orderbook Code
odx_odxequities_pts_glimpse_v2_0.orderbook_code = {}

-- Size: Orderbook Code
odx_odxequities_pts_glimpse_v2_0.orderbook_code.size = 12

-- Display: Orderbook Code
odx_odxequities_pts_glimpse_v2_0.orderbook_code.display = function(value)
  return "Orderbook Code: "..value
end

-- Dissect: Orderbook Code
odx_odxequities_pts_glimpse_v2_0.orderbook_code.dissect = function(buffer, offset, packet, parent)
  local length = odx_odxequities_pts_glimpse_v2_0.orderbook_code.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = odx_odxequities_pts_glimpse_v2_0.orderbook_code.display(value, buffer, offset, packet, parent)

  parent:add(omi_odx_odxequities_pts_glimpse_v2_0.fields.orderbook_code, range, value, display)

  return offset + length, value
end

-- Orderbook Id
odx_odxequities_pts_glimpse_v2_0.orderbook_id = {}

-- Size: Orderbook Id
odx_odxequities_pts_glimpse_v2_0.orderbook_id.size = 4

-- Display: Orderbook Id
odx_odxequities_pts_glimpse_v2_0.orderbook_id.display = function(value)
  return "Orderbook Id: "..value
end

-- Dissect: Orderbook Id
odx_odxequities_pts_glimpse_v2_0.orderbook_id.dissect = function(buffer, offset, packet, parent)
  local length = odx_odxequities_pts_glimpse_v2_0.orderbook_id.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = odx_odxequities_pts_glimpse_v2_0.orderbook_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_odx_odxequities_pts_glimpse_v2_0.fields.orderbook_id, range, value, display)

  return offset + length, value
end

-- Packet Length
odx_odxequities_pts_glimpse_v2_0.packet_length = {}

-- Size: Packet Length
odx_odxequities_pts_glimpse_v2_0.packet_length.size = 2

-- Display: Packet Length
odx_odxequities_pts_glimpse_v2_0.packet_length.display = function(value)
  return "Packet Length: "..value
end

-- Dissect: Packet Length
odx_odxequities_pts_glimpse_v2_0.packet_length.dissect = function(buffer, offset, packet, parent)
  local length = odx_odxequities_pts_glimpse_v2_0.packet_length.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = odx_odxequities_pts_glimpse_v2_0.packet_length.display(value, buffer, offset, packet, parent)

  parent:add(omi_odx_odxequities_pts_glimpse_v2_0.fields.packet_length, range, value, display)

  return offset + length, value
end

-- Password
odx_odxequities_pts_glimpse_v2_0.password = {}

-- Size: Password
odx_odxequities_pts_glimpse_v2_0.password.size = 10

-- Display: Password
odx_odxequities_pts_glimpse_v2_0.password.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Password: No Value"
  end

  return "Password: "..value
end

-- Dissect: Password
odx_odxequities_pts_glimpse_v2_0.password.dissect = function(buffer, offset, packet, parent)
  local length = odx_odxequities_pts_glimpse_v2_0.password.size
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

  local display = odx_odxequities_pts_glimpse_v2_0.password.display(value, buffer, offset, packet, parent)

  parent:add(omi_odx_odxequities_pts_glimpse_v2_0.fields.password, range, value, display)

  return offset + length, value
end

-- Price
odx_odxequities_pts_glimpse_v2_0.price = {}

-- Size: Price
odx_odxequities_pts_glimpse_v2_0.price.size = 4

-- Display: Price
odx_odxequities_pts_glimpse_v2_0.price.display = function(value)
  return "Price: "..value
end

-- Translate: Price
odx_odxequities_pts_glimpse_v2_0.price.translate = function(raw)
  return raw/10
end

-- Dissect: Price
odx_odxequities_pts_glimpse_v2_0.price.dissect = function(buffer, offset, packet, parent)
  local length = odx_odxequities_pts_glimpse_v2_0.price.size
  local range = buffer(offset, length)
  local raw = range:uint()
  local value = odx_odxequities_pts_glimpse_v2_0.price.translate(raw)
  local display = odx_odxequities_pts_glimpse_v2_0.price.display(value, buffer, offset, packet, parent)

  parent:add(omi_odx_odxequities_pts_glimpse_v2_0.fields.price, range, value, display)

  return offset + length, value
end

-- Price Decimals
odx_odxequities_pts_glimpse_v2_0.price_decimals = {}

-- Size: Price Decimals
odx_odxequities_pts_glimpse_v2_0.price_decimals.size = 4

-- Display: Price Decimals
odx_odxequities_pts_glimpse_v2_0.price_decimals.display = function(value)
  return "Price Decimals: "..value
end

-- Dissect: Price Decimals
odx_odxequities_pts_glimpse_v2_0.price_decimals.dissect = function(buffer, offset, packet, parent)
  local length = odx_odxequities_pts_glimpse_v2_0.price_decimals.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = odx_odxequities_pts_glimpse_v2_0.price_decimals.display(value, buffer, offset, packet, parent)

  parent:add(omi_odx_odxequities_pts_glimpse_v2_0.fields.price_decimals, range, value, display)

  return offset + length, value
end

-- Price Start
odx_odxequities_pts_glimpse_v2_0.price_start = {}

-- Size: Price Start
odx_odxequities_pts_glimpse_v2_0.price_start.size = 4

-- Display: Price Start
odx_odxequities_pts_glimpse_v2_0.price_start.display = function(value)
  return "Price Start: "..value
end

-- Translate: Price Start
odx_odxequities_pts_glimpse_v2_0.price_start.translate = function(raw)
  return raw/10
end

-- Dissect: Price Start
odx_odxequities_pts_glimpse_v2_0.price_start.dissect = function(buffer, offset, packet, parent)
  local length = odx_odxequities_pts_glimpse_v2_0.price_start.size
  local range = buffer(offset, length)
  local raw = range:uint()
  local value = odx_odxequities_pts_glimpse_v2_0.price_start.translate(raw)
  local display = odx_odxequities_pts_glimpse_v2_0.price_start.display(value, buffer, offset, packet, parent)

  parent:add(omi_odx_odxequities_pts_glimpse_v2_0.fields.price_start, range, value, display)

  return offset + length, value
end

-- Price Tick Size
odx_odxequities_pts_glimpse_v2_0.price_tick_size = {}

-- Size: Price Tick Size
odx_odxequities_pts_glimpse_v2_0.price_tick_size.size = 4

-- Display: Price Tick Size
odx_odxequities_pts_glimpse_v2_0.price_tick_size.display = function(value)
  return "Price Tick Size: "..value
end

-- Translate: Price Tick Size
odx_odxequities_pts_glimpse_v2_0.price_tick_size.translate = function(raw)
  return raw/10
end

-- Dissect: Price Tick Size
odx_odxequities_pts_glimpse_v2_0.price_tick_size.dissect = function(buffer, offset, packet, parent)
  local length = odx_odxequities_pts_glimpse_v2_0.price_tick_size.size
  local range = buffer(offset, length)
  local raw = range:uint()
  local value = odx_odxequities_pts_glimpse_v2_0.price_tick_size.translate(raw)
  local display = odx_odxequities_pts_glimpse_v2_0.price_tick_size.display(value, buffer, offset, packet, parent)

  parent:add(omi_odx_odxequities_pts_glimpse_v2_0.fields.price_tick_size, range, value, display)

  return offset + length, value
end

-- Price Tick Size Table Id
odx_odxequities_pts_glimpse_v2_0.price_tick_size_table_id = {}

-- Size: Price Tick Size Table Id
odx_odxequities_pts_glimpse_v2_0.price_tick_size_table_id.size = 4

-- Display: Price Tick Size Table Id
odx_odxequities_pts_glimpse_v2_0.price_tick_size_table_id.display = function(value)
  return "Price Tick Size Table Id: "..value
end

-- Dissect: Price Tick Size Table Id
odx_odxequities_pts_glimpse_v2_0.price_tick_size_table_id.dissect = function(buffer, offset, packet, parent)
  local length = odx_odxequities_pts_glimpse_v2_0.price_tick_size_table_id.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = odx_odxequities_pts_glimpse_v2_0.price_tick_size_table_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_odx_odxequities_pts_glimpse_v2_0.fields.price_tick_size_table_id, range, value, display)

  return offset + length, value
end

-- Quantity
odx_odxequities_pts_glimpse_v2_0.quantity = {}

-- Size: Quantity
odx_odxequities_pts_glimpse_v2_0.quantity.size = 4

-- Display: Quantity
odx_odxequities_pts_glimpse_v2_0.quantity.display = function(value)
  return "Quantity: "..value
end

-- Dissect: Quantity
odx_odxequities_pts_glimpse_v2_0.quantity.dissect = function(buffer, offset, packet, parent)
  local length = odx_odxequities_pts_glimpse_v2_0.quantity.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = odx_odxequities_pts_glimpse_v2_0.quantity.display(value, buffer, offset, packet, parent)

  parent:add(omi_odx_odxequities_pts_glimpse_v2_0.fields.quantity, range, value, display)

  return offset + length, value
end

-- Reject Reason Code
odx_odxequities_pts_glimpse_v2_0.reject_reason_code = {}

-- Size: Reject Reason Code
odx_odxequities_pts_glimpse_v2_0.reject_reason_code.size = 1

-- Display: Reject Reason Code
odx_odxequities_pts_glimpse_v2_0.reject_reason_code.display = function(value)
  return "Reject Reason Code: "..value
end

-- Dissect: Reject Reason Code
odx_odxequities_pts_glimpse_v2_0.reject_reason_code.dissect = function(buffer, offset, packet, parent)
  local length = odx_odxequities_pts_glimpse_v2_0.reject_reason_code.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = odx_odxequities_pts_glimpse_v2_0.reject_reason_code.display(value, buffer, offset, packet, parent)

  parent:add(omi_odx_odxequities_pts_glimpse_v2_0.fields.reject_reason_code, range, value, display)

  return offset + length, value
end

-- Requested Sequence Number
odx_odxequities_pts_glimpse_v2_0.requested_sequence_number = {}

-- Size: Requested Sequence Number
odx_odxequities_pts_glimpse_v2_0.requested_sequence_number.size = 20

-- Display: Requested Sequence Number
odx_odxequities_pts_glimpse_v2_0.requested_sequence_number.display = function(value)
  return "Requested Sequence Number: "..value
end

-- Dissect: Requested Sequence Number
odx_odxequities_pts_glimpse_v2_0.requested_sequence_number.dissect = function(buffer, offset, packet, parent)
  local length = odx_odxequities_pts_glimpse_v2_0.requested_sequence_number.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value =  "Not Applicable"
  end

  local display = odx_odxequities_pts_glimpse_v2_0.requested_sequence_number.display(value, buffer, offset, packet, parent)

  parent:add(omi_odx_odxequities_pts_glimpse_v2_0.fields.requested_sequence_number, range, value, display)

  return offset + length, value
end

-- Requested Session
odx_odxequities_pts_glimpse_v2_0.requested_session = {}

-- Size: Requested Session
odx_odxequities_pts_glimpse_v2_0.requested_session.size = 10

-- Display: Requested Session
odx_odxequities_pts_glimpse_v2_0.requested_session.display = function(value)
  return "Requested Session: "..value
end

-- Dissect: Requested Session
odx_odxequities_pts_glimpse_v2_0.requested_session.dissect = function(buffer, offset, packet, parent)
  local length = odx_odxequities_pts_glimpse_v2_0.requested_session.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = odx_odxequities_pts_glimpse_v2_0.requested_session.display(value, buffer, offset, packet, parent)

  parent:add(omi_odx_odxequities_pts_glimpse_v2_0.fields.requested_session, range, value, display)

  return offset + length, value
end

-- Round Lot Size
odx_odxequities_pts_glimpse_v2_0.round_lot_size = {}

-- Size: Round Lot Size
odx_odxequities_pts_glimpse_v2_0.round_lot_size.size = 4

-- Display: Round Lot Size
odx_odxequities_pts_glimpse_v2_0.round_lot_size.display = function(value)
  return "Round Lot Size: "..value
end

-- Dissect: Round Lot Size
odx_odxequities_pts_glimpse_v2_0.round_lot_size.dissect = function(buffer, offset, packet, parent)
  local length = odx_odxequities_pts_glimpse_v2_0.round_lot_size.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = odx_odxequities_pts_glimpse_v2_0.round_lot_size.display(value, buffer, offset, packet, parent)

  parent:add(omi_odx_odxequities_pts_glimpse_v2_0.fields.round_lot_size, range, value, display)

  return offset + length, value
end

-- Seconds
odx_odxequities_pts_glimpse_v2_0.seconds = {}

-- Size: Seconds
odx_odxequities_pts_glimpse_v2_0.seconds.size = 4

-- Store: Seconds
odx_odxequities_pts_glimpse_v2_0.seconds.current = nil

-- Generated: Seconds
odx_odxequities_pts_glimpse_v2_0.seconds.generated = function(value, range, packet, parent)
  local display = odx_odxequities_pts_glimpse_v2_0.seconds.display(value)
  local seconds = parent:add(omi_odx_odxequities_pts_glimpse_v2_0.fields.seconds, range, value, display)
  seconds:set_generated()
end

-- Display: Seconds
odx_odxequities_pts_glimpse_v2_0.seconds.display = function(value)
  return "Seconds: "..value
end

-- Dissect: Seconds
odx_odxequities_pts_glimpse_v2_0.seconds.dissect = function(buffer, offset, packet, parent)
  local length = odx_odxequities_pts_glimpse_v2_0.seconds.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = odx_odxequities_pts_glimpse_v2_0.seconds.display(value, buffer, offset, packet, parent)

  parent:add(omi_odx_odxequities_pts_glimpse_v2_0.fields.seconds, range, value, display)

  return offset + length, value
end

-- Sequence Number
odx_odxequities_pts_glimpse_v2_0.sequence_number = {}

-- Size: Sequence Number
odx_odxequities_pts_glimpse_v2_0.sequence_number.size = 8

-- Display: Sequence Number
odx_odxequities_pts_glimpse_v2_0.sequence_number.display = function(value)
  return "Sequence Number: "..value
end

-- Dissect: Sequence Number
odx_odxequities_pts_glimpse_v2_0.sequence_number.dissect = function(buffer, offset, packet, parent)
  local length = odx_odxequities_pts_glimpse_v2_0.sequence_number.size
  local range = buffer(offset, length)
  local value = range:uint64()
  local display = odx_odxequities_pts_glimpse_v2_0.sequence_number.display(value, buffer, offset, packet, parent)

  parent:add(omi_odx_odxequities_pts_glimpse_v2_0.fields.sequence_number, range, value, display)

  return offset + length, value
end

-- Sequenced Message Type
odx_odxequities_pts_glimpse_v2_0.sequenced_message_type = {}

-- Size: Sequenced Message Type
odx_odxequities_pts_glimpse_v2_0.sequenced_message_type.size = 1

-- Display: Sequenced Message Type
odx_odxequities_pts_glimpse_v2_0.sequenced_message_type.display = function(value)
  if value == "T" then
    return "Sequenced Message Type: Timestamp Seconds Message (T)"
  end
  if value == "S" then
    return "Sequenced Message Type: System Event Message (S)"
  end
  if value == "L" then
    return "Sequenced Message Type: Price Tick Size Message (L)"
  end
  if value == "R" then
    return "Sequenced Message Type: Orderbook Directory Message (R)"
  end
  if value == "H" then
    return "Sequenced Message Type: Trading State Message (H)"
  end
  if value == "Y" then
    return "Sequenced Message Type: Short Selling Price Restriction State Message (Y)"
  end
  if value == "A" then
    return "Sequenced Message Type: Order Added Message (A)"
  end
  if value == "F" then
    return "Sequenced Message Type: Order Added With Attributes Message (F)"
  end
  if value == "G" then
    return "Sequenced Message Type: End Of Snapshot Message (G)"
  end

  return "Sequenced Message Type: Unknown("..value..")"
end

-- Dissect: Sequenced Message Type
odx_odxequities_pts_glimpse_v2_0.sequenced_message_type.dissect = function(buffer, offset, packet, parent)
  local length = odx_odxequities_pts_glimpse_v2_0.sequenced_message_type.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = odx_odxequities_pts_glimpse_v2_0.sequenced_message_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_odx_odxequities_pts_glimpse_v2_0.fields.sequenced_message_type, range, value, display)

  return offset + length, value
end

-- Server Packet Type
odx_odxequities_pts_glimpse_v2_0.server_packet_type = {}

-- Size: Server Packet Type
odx_odxequities_pts_glimpse_v2_0.server_packet_type.size = 1

-- Display: Server Packet Type
odx_odxequities_pts_glimpse_v2_0.server_packet_type.display = function(value)
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
odx_odxequities_pts_glimpse_v2_0.server_packet_type.dissect = function(buffer, offset, packet, parent)
  local length = odx_odxequities_pts_glimpse_v2_0.server_packet_type.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = odx_odxequities_pts_glimpse_v2_0.server_packet_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_odx_odxequities_pts_glimpse_v2_0.fields.server_packet_type, range, value, display)

  return offset + length, value
end

-- Session
odx_odxequities_pts_glimpse_v2_0.session = {}

-- Size: Session
odx_odxequities_pts_glimpse_v2_0.session.size = 10

-- Display: Session
odx_odxequities_pts_glimpse_v2_0.session.display = function(value)
  return "Session: "..value
end

-- Dissect: Session
odx_odxequities_pts_glimpse_v2_0.session.dissect = function(buffer, offset, packet, parent)
  local length = odx_odxequities_pts_glimpse_v2_0.session.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = odx_odxequities_pts_glimpse_v2_0.session.display(value, buffer, offset, packet, parent)

  parent:add(omi_odx_odxequities_pts_glimpse_v2_0.fields.session, range, value, display)

  return offset + length, value
end

-- Short Selling State
odx_odxequities_pts_glimpse_v2_0.short_selling_state = {}

-- Size: Short Selling State
odx_odxequities_pts_glimpse_v2_0.short_selling_state.size = 1

-- Display: Short Selling State
odx_odxequities_pts_glimpse_v2_0.short_selling_state.display = function(value)
  if value == "0" then
    return "Short Selling State: No Price Restriction (0)"
  end
  if value == "1" then
    return "Short Selling State: Price Restriction In Effect (1)"
  end

  return "Short Selling State: Unknown("..value..")"
end

-- Dissect: Short Selling State
odx_odxequities_pts_glimpse_v2_0.short_selling_state.dissect = function(buffer, offset, packet, parent)
  local length = odx_odxequities_pts_glimpse_v2_0.short_selling_state.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = odx_odxequities_pts_glimpse_v2_0.short_selling_state.display(value, buffer, offset, packet, parent)

  parent:add(omi_odx_odxequities_pts_glimpse_v2_0.fields.short_selling_state, range, value, display)

  return offset + length, value
end

-- System Event
odx_odxequities_pts_glimpse_v2_0.system_event = {}

-- Size: System Event
odx_odxequities_pts_glimpse_v2_0.system_event.size = 1

-- Display: System Event
odx_odxequities_pts_glimpse_v2_0.system_event.display = function(value)
  if value == "O" then
    return "System Event: Start Of Messages (O)"
  end
  if value == "C" then
    return "System Event: End Of Messages (C)"
  end

  return "System Event: Unknown("..value..")"
end

-- Dissect: System Event
odx_odxequities_pts_glimpse_v2_0.system_event.dissect = function(buffer, offset, packet, parent)
  local length = odx_odxequities_pts_glimpse_v2_0.system_event.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = odx_odxequities_pts_glimpse_v2_0.system_event.display(value, buffer, offset, packet, parent)

  parent:add(omi_odx_odxequities_pts_glimpse_v2_0.fields.system_event, range, value, display)

  return offset + length, value
end

-- Text
odx_odxequities_pts_glimpse_v2_0.text = {}

-- Size: Text
odx_odxequities_pts_glimpse_v2_0.text.size = 1

-- Display: Text
odx_odxequities_pts_glimpse_v2_0.text.display = function(value)
  return "Text: "..value
end

-- Dissect: Text
odx_odxequities_pts_glimpse_v2_0.text.dissect = function(buffer, offset, packet, parent)
  local length = odx_odxequities_pts_glimpse_v2_0.text.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = odx_odxequities_pts_glimpse_v2_0.text.display(value, buffer, offset, packet, parent)

  parent:add(omi_odx_odxequities_pts_glimpse_v2_0.fields.text, range, value, display)

  return offset + length, value
end

-- Trading State
odx_odxequities_pts_glimpse_v2_0.trading_state = {}

-- Size: Trading State
odx_odxequities_pts_glimpse_v2_0.trading_state.size = 1

-- Display: Trading State
odx_odxequities_pts_glimpse_v2_0.trading_state.display = function(value)
  if value == "T" then
    return "Trading State: Trading (T)"
  end
  if value == "V" then
    return "Trading State: Suspended (V)"
  end

  return "Trading State: Unknown("..value..")"
end

-- Dissect: Trading State
odx_odxequities_pts_glimpse_v2_0.trading_state.dissect = function(buffer, offset, packet, parent)
  local length = odx_odxequities_pts_glimpse_v2_0.trading_state.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = odx_odxequities_pts_glimpse_v2_0.trading_state.display(value, buffer, offset, packet, parent)

  parent:add(omi_odx_odxequities_pts_glimpse_v2_0.fields.trading_state, range, value, display)

  return offset + length, value
end

-- Unsequenced Message
odx_odxequities_pts_glimpse_v2_0.unsequenced_message = {}

-- Display: Unsequenced Message
odx_odxequities_pts_glimpse_v2_0.unsequenced_message.display = function(value)
  return "Unsequenced Message: "..value
end

-- Dissect runtime sized field: Unsequenced Message
odx_odxequities_pts_glimpse_v2_0.unsequenced_message.dissect = function(buffer, offset, packet, parent, size)
  local range = buffer(offset, size)
  local value = range:bytes():tohex(false, " ")
  local display = odx_odxequities_pts_glimpse_v2_0.unsequenced_message.display(value, packet, parent, size)

  parent:add(omi_odx_odxequities_pts_glimpse_v2_0.fields.unsequenced_message, range, value, display)

  return offset + size, value
end

-- Unsequenced Message Type
odx_odxequities_pts_glimpse_v2_0.unsequenced_message_type = {}

-- Size: Unsequenced Message Type
odx_odxequities_pts_glimpse_v2_0.unsequenced_message_type.size = 1

-- Display: Unsequenced Message Type
odx_odxequities_pts_glimpse_v2_0.unsequenced_message_type.display = function(value)
  return "Unsequenced Message Type: "..value
end

-- Dissect: Unsequenced Message Type
odx_odxequities_pts_glimpse_v2_0.unsequenced_message_type.dissect = function(buffer, offset, packet, parent)
  local length = odx_odxequities_pts_glimpse_v2_0.unsequenced_message_type.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = odx_odxequities_pts_glimpse_v2_0.unsequenced_message_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_odx_odxequities_pts_glimpse_v2_0.fields.unsequenced_message_type, range, value, display)

  return offset + length, value
end

-- Upper Price Limit
odx_odxequities_pts_glimpse_v2_0.upper_price_limit = {}

-- Size: Upper Price Limit
odx_odxequities_pts_glimpse_v2_0.upper_price_limit.size = 4

-- Display: Upper Price Limit
odx_odxequities_pts_glimpse_v2_0.upper_price_limit.display = function(value)
  return "Upper Price Limit: "..value
end

-- Translate: Upper Price Limit
odx_odxequities_pts_glimpse_v2_0.upper_price_limit.translate = function(raw)
  return raw/10
end

-- Dissect: Upper Price Limit
odx_odxequities_pts_glimpse_v2_0.upper_price_limit.dissect = function(buffer, offset, packet, parent)
  local length = odx_odxequities_pts_glimpse_v2_0.upper_price_limit.size
  local range = buffer(offset, length)
  local raw = range:uint()
  local value = odx_odxequities_pts_glimpse_v2_0.upper_price_limit.translate(raw)
  local display = odx_odxequities_pts_glimpse_v2_0.upper_price_limit.display(value, buffer, offset, packet, parent)

  parent:add(omi_odx_odxequities_pts_glimpse_v2_0.fields.upper_price_limit, range, value, display)

  return offset + length, value
end

-- Username
odx_odxequities_pts_glimpse_v2_0.username = {}

-- Size: Username
odx_odxequities_pts_glimpse_v2_0.username.size = 6

-- Display: Username
odx_odxequities_pts_glimpse_v2_0.username.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Username: No Value"
  end

  return "Username: "..value
end

-- Dissect: Username
odx_odxequities_pts_glimpse_v2_0.username.dissect = function(buffer, offset, packet, parent)
  local length = odx_odxequities_pts_glimpse_v2_0.username.size
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

  local display = odx_odxequities_pts_glimpse_v2_0.username.display(value, buffer, offset, packet, parent)

  parent:add(omi_odx_odxequities_pts_glimpse_v2_0.fields.username, range, value, display)

  return offset + length, value
end

-- Timestamp
odx_odxequities_pts_glimpse_v2_0.timestamp = {}

-- Translate: Timestamp
odx_odxequities_pts_glimpse_v2_0.timestamp.translate = function(nanoseconds, stored_seconds)
  return UInt64.new(stored_seconds * 1000000000 + nanoseconds)
end

-- Display: Timestamp
odx_odxequities_pts_glimpse_v2_0.timestamp.display = function(nanoseconds, stored_seconds, packet)
  -- Raw display mode
  if odx_odxequities_pts_glimpse_v2_0.timestamp_format == 0 then
    return "Timestamp: "..(stored_seconds * 1000000000 + nanoseconds)
  end

  -- Full datetime mode (calculate from capture date + UTC offset)
  if odx_odxequities_pts_glimpse_v2_0.timestamp_format == 2 and packet then
    local capture_time = type(packet.abs_ts) == "number" and packet.abs_ts or packet.abs_ts:tonumber()
    local utc_offset_seconds = odx_odxequities_pts_glimpse_v2_0.utc_offset_hours * 3600
    local local_midnight = math.floor((capture_time + utc_offset_seconds) / 86400) * 86400
    local full_seconds = local_midnight + stored_seconds

    return "Timestamp: "..os.date("!%Y-%m-%d %H:%M:%S.", full_seconds)..string.format("%09d", nanoseconds)
  end

  -- Time of day mode
  return "Timestamp: "..os.date("!%H:%M:%S.", stored_seconds)..string.format("%09d", nanoseconds)
end

-- Composite: Timestamp
odx_odxequities_pts_glimpse_v2_0.timestamp.composite = function(buffer, offset, stored_seconds, packet, parent)
  local length = odx_odxequities_pts_glimpse_v2_0.nanoseconds.size
  local range = buffer(offset, length)
  local nanoseconds = range:uint()
  local value = odx_odxequities_pts_glimpse_v2_0.timestamp.translate(nanoseconds, stored_seconds)
  local display = odx_odxequities_pts_glimpse_v2_0.timestamp.display(nanoseconds, stored_seconds, packet)
  parent = parent:add(omi_odx_odxequities_pts_glimpse_v2_0.fields.timestamp, range, value, display)

  odx_odxequities_pts_glimpse_v2_0.seconds.generated(stored_seconds, range, packet, parent)

  display = odx_odxequities_pts_glimpse_v2_0.nanoseconds.display(nanoseconds)
  parent:add(omi_odx_odxequities_pts_glimpse_v2_0.fields.nanoseconds, range, nanoseconds, display)

  return offset + length, value
end

-- Dissect: Timestamp
odx_odxequities_pts_glimpse_v2_0.timestamp.dissect = function(buffer, offset, packet, parent)
  local stored_seconds = odx_odxequities_pts_glimpse_v2_0.seconds.current

  if stored_seconds ~= nil then
    return odx_odxequities_pts_glimpse_v2_0.timestamp.composite(buffer, offset, stored_seconds, packet, parent)
  end

  return odx_odxequities_pts_glimpse_v2_0.nanoseconds.dissect(buffer, offset, packet, parent)
end


-----------------------------------------------------------------------
-- Dissect Odx OdxEquities Pts Glimpse 2.0
-----------------------------------------------------------------------

-- End Of Session
odx_odxequities_pts_glimpse_v2_0.end_of_session = {}

-- Display: End Of Session
odx_odxequities_pts_glimpse_v2_0.end_of_session.display = function(packet, parent, length)
  return "End Of Session"
end


-- Dissect: End Of Session
odx_odxequities_pts_glimpse_v2_0.end_of_session.dissect = function(buffer, offset, packet, parent)
  local display = odx_odxequities_pts_glimpse_v2_0.end_of_session.display(packet, parent, 0)
  packet.cols.info = display

  return offset
end

-- Server Heartbeat
odx_odxequities_pts_glimpse_v2_0.server_heartbeat = {}

-- Display: Server Heartbeat
odx_odxequities_pts_glimpse_v2_0.server_heartbeat.display = function(packet, parent, length)
  return "Server Heartbeat"
end


-- Dissect: Server Heartbeat
odx_odxequities_pts_glimpse_v2_0.server_heartbeat.dissect = function(buffer, offset, packet, parent)
  local display = odx_odxequities_pts_glimpse_v2_0.server_heartbeat.display(packet, parent, 0)
  packet.cols.info = display

  return offset
end

-- End Of Snapshot Message
odx_odxequities_pts_glimpse_v2_0.end_of_snapshot_message = {}

-- Size: End Of Snapshot Message
odx_odxequities_pts_glimpse_v2_0.end_of_snapshot_message.size =
  odx_odxequities_pts_glimpse_v2_0.sequence_number.size

-- Display: End Of Snapshot Message
odx_odxequities_pts_glimpse_v2_0.end_of_snapshot_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: End Of Snapshot Message
odx_odxequities_pts_glimpse_v2_0.end_of_snapshot_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Sequence Number: Integer
  index, sequence_number = odx_odxequities_pts_glimpse_v2_0.sequence_number.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: End Of Snapshot Message
odx_odxequities_pts_glimpse_v2_0.end_of_snapshot_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_odx_odxequities_pts_glimpse_v2_0.fields.end_of_snapshot_message, buffer(offset, 0))
    local index = odx_odxequities_pts_glimpse_v2_0.end_of_snapshot_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = odx_odxequities_pts_glimpse_v2_0.end_of_snapshot_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return odx_odxequities_pts_glimpse_v2_0.end_of_snapshot_message.fields(buffer, offset, packet, parent)
  end
end

-- Order Added With Attributes Message
odx_odxequities_pts_glimpse_v2_0.order_added_with_attributes_message = {}

-- Size: Order Added With Attributes Message
odx_odxequities_pts_glimpse_v2_0.order_added_with_attributes_message.size =
  odx_odxequities_pts_glimpse_v2_0.nanoseconds.size + 
  odx_odxequities_pts_glimpse_v2_0.order_number.size + 
  odx_odxequities_pts_glimpse_v2_0.buy_sell_indicator.size + 
  odx_odxequities_pts_glimpse_v2_0.quantity.size + 
  odx_odxequities_pts_glimpse_v2_0.orderbook_id.size + 
  odx_odxequities_pts_glimpse_v2_0.group.size + 
  odx_odxequities_pts_glimpse_v2_0.price.size + 
  odx_odxequities_pts_glimpse_v2_0.attribution.size + 
  odx_odxequities_pts_glimpse_v2_0.order_type.size

-- Display: Order Added With Attributes Message
odx_odxequities_pts_glimpse_v2_0.order_added_with_attributes_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Order Added With Attributes Message
odx_odxequities_pts_glimpse_v2_0.order_added_with_attributes_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Nanoseconds: Integer
  index, nanoseconds = odx_odxequities_pts_glimpse_v2_0.timestamp.dissect(buffer, index, packet, parent)

  -- Order Number: Integer
  index, order_number = odx_odxequities_pts_glimpse_v2_0.order_number.dissect(buffer, index, packet, parent)

  -- Buy Sell Indicator: Alpha
  index, buy_sell_indicator = odx_odxequities_pts_glimpse_v2_0.buy_sell_indicator.dissect(buffer, index, packet, parent)

  -- Quantity: Integer
  index, quantity = odx_odxequities_pts_glimpse_v2_0.quantity.dissect(buffer, index, packet, parent)

  -- Orderbook Id: Alpha
  index, orderbook_id = odx_odxequities_pts_glimpse_v2_0.orderbook_id.dissect(buffer, index, packet, parent)

  -- Group: Alpha
  index, group = odx_odxequities_pts_glimpse_v2_0.group.dissect(buffer, index, packet, parent)

  -- Price: Integer
  index, price = odx_odxequities_pts_glimpse_v2_0.price.dissect(buffer, index, packet, parent)

  -- Attribution: Alpha
  index, attribution = odx_odxequities_pts_glimpse_v2_0.attribution.dissect(buffer, index, packet, parent)

  -- Order Type: Alpha
  index, order_type = odx_odxequities_pts_glimpse_v2_0.order_type.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Order Added With Attributes Message
odx_odxequities_pts_glimpse_v2_0.order_added_with_attributes_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_odx_odxequities_pts_glimpse_v2_0.fields.order_added_with_attributes_message, buffer(offset, 0))
    local index = odx_odxequities_pts_glimpse_v2_0.order_added_with_attributes_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = odx_odxequities_pts_glimpse_v2_0.order_added_with_attributes_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return odx_odxequities_pts_glimpse_v2_0.order_added_with_attributes_message.fields(buffer, offset, packet, parent)
  end
end

-- Order Added Message
odx_odxequities_pts_glimpse_v2_0.order_added_message = {}

-- Size: Order Added Message
odx_odxequities_pts_glimpse_v2_0.order_added_message.size =
  odx_odxequities_pts_glimpse_v2_0.nanoseconds.size + 
  odx_odxequities_pts_glimpse_v2_0.order_number.size + 
  odx_odxequities_pts_glimpse_v2_0.buy_sell_indicator.size + 
  odx_odxequities_pts_glimpse_v2_0.quantity.size + 
  odx_odxequities_pts_glimpse_v2_0.orderbook_id.size + 
  odx_odxequities_pts_glimpse_v2_0.group.size + 
  odx_odxequities_pts_glimpse_v2_0.price.size

-- Display: Order Added Message
odx_odxequities_pts_glimpse_v2_0.order_added_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Order Added Message
odx_odxequities_pts_glimpse_v2_0.order_added_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Nanoseconds: Integer
  index, nanoseconds = odx_odxequities_pts_glimpse_v2_0.timestamp.dissect(buffer, index, packet, parent)

  -- Order Number: Integer
  index, order_number = odx_odxequities_pts_glimpse_v2_0.order_number.dissect(buffer, index, packet, parent)

  -- Buy Sell Indicator: Alpha
  index, buy_sell_indicator = odx_odxequities_pts_glimpse_v2_0.buy_sell_indicator.dissect(buffer, index, packet, parent)

  -- Quantity: Integer
  index, quantity = odx_odxequities_pts_glimpse_v2_0.quantity.dissect(buffer, index, packet, parent)

  -- Orderbook Id: Alpha
  index, orderbook_id = odx_odxequities_pts_glimpse_v2_0.orderbook_id.dissect(buffer, index, packet, parent)

  -- Group: Alpha
  index, group = odx_odxequities_pts_glimpse_v2_0.group.dissect(buffer, index, packet, parent)

  -- Price: Integer
  index, price = odx_odxequities_pts_glimpse_v2_0.price.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Order Added Message
odx_odxequities_pts_glimpse_v2_0.order_added_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_odx_odxequities_pts_glimpse_v2_0.fields.order_added_message, buffer(offset, 0))
    local index = odx_odxequities_pts_glimpse_v2_0.order_added_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = odx_odxequities_pts_glimpse_v2_0.order_added_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return odx_odxequities_pts_glimpse_v2_0.order_added_message.fields(buffer, offset, packet, parent)
  end
end

-- Short Selling Price Restriction State Message
odx_odxequities_pts_glimpse_v2_0.short_selling_price_restriction_state_message = {}

-- Size: Short Selling Price Restriction State Message
odx_odxequities_pts_glimpse_v2_0.short_selling_price_restriction_state_message.size =
  odx_odxequities_pts_glimpse_v2_0.nanoseconds.size + 
  odx_odxequities_pts_glimpse_v2_0.orderbook_id.size + 
  odx_odxequities_pts_glimpse_v2_0.group.size + 
  odx_odxequities_pts_glimpse_v2_0.short_selling_state.size

-- Display: Short Selling Price Restriction State Message
odx_odxequities_pts_glimpse_v2_0.short_selling_price_restriction_state_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Short Selling Price Restriction State Message
odx_odxequities_pts_glimpse_v2_0.short_selling_price_restriction_state_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Nanoseconds: Integer
  index, nanoseconds = odx_odxequities_pts_glimpse_v2_0.timestamp.dissect(buffer, index, packet, parent)

  -- Orderbook Id: Alpha
  index, orderbook_id = odx_odxequities_pts_glimpse_v2_0.orderbook_id.dissect(buffer, index, packet, parent)

  -- Group: Alpha
  index, group = odx_odxequities_pts_glimpse_v2_0.group.dissect(buffer, index, packet, parent)

  -- Short Selling State: Alpha
  index, short_selling_state = odx_odxequities_pts_glimpse_v2_0.short_selling_state.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Short Selling Price Restriction State Message
odx_odxequities_pts_glimpse_v2_0.short_selling_price_restriction_state_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_odx_odxequities_pts_glimpse_v2_0.fields.short_selling_price_restriction_state_message, buffer(offset, 0))
    local index = odx_odxequities_pts_glimpse_v2_0.short_selling_price_restriction_state_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = odx_odxequities_pts_glimpse_v2_0.short_selling_price_restriction_state_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return odx_odxequities_pts_glimpse_v2_0.short_selling_price_restriction_state_message.fields(buffer, offset, packet, parent)
  end
end

-- Trading State Message
odx_odxequities_pts_glimpse_v2_0.trading_state_message = {}

-- Size: Trading State Message
odx_odxequities_pts_glimpse_v2_0.trading_state_message.size =
  odx_odxequities_pts_glimpse_v2_0.nanoseconds.size + 
  odx_odxequities_pts_glimpse_v2_0.orderbook_id.size + 
  odx_odxequities_pts_glimpse_v2_0.group.size + 
  odx_odxequities_pts_glimpse_v2_0.trading_state.size

-- Display: Trading State Message
odx_odxequities_pts_glimpse_v2_0.trading_state_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Trading State Message
odx_odxequities_pts_glimpse_v2_0.trading_state_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Nanoseconds: Integer
  index, nanoseconds = odx_odxequities_pts_glimpse_v2_0.timestamp.dissect(buffer, index, packet, parent)

  -- Orderbook Id: Alpha
  index, orderbook_id = odx_odxequities_pts_glimpse_v2_0.orderbook_id.dissect(buffer, index, packet, parent)

  -- Group: Alpha
  index, group = odx_odxequities_pts_glimpse_v2_0.group.dissect(buffer, index, packet, parent)

  -- Trading State: Alpha
  index, trading_state = odx_odxequities_pts_glimpse_v2_0.trading_state.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Trading State Message
odx_odxequities_pts_glimpse_v2_0.trading_state_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_odx_odxequities_pts_glimpse_v2_0.fields.trading_state_message, buffer(offset, 0))
    local index = odx_odxequities_pts_glimpse_v2_0.trading_state_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = odx_odxequities_pts_glimpse_v2_0.trading_state_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return odx_odxequities_pts_glimpse_v2_0.trading_state_message.fields(buffer, offset, packet, parent)
  end
end

-- Orderbook Directory Message
odx_odxequities_pts_glimpse_v2_0.orderbook_directory_message = {}

-- Size: Orderbook Directory Message
odx_odxequities_pts_glimpse_v2_0.orderbook_directory_message.size =
  odx_odxequities_pts_glimpse_v2_0.nanoseconds.size + 
  odx_odxequities_pts_glimpse_v2_0.orderbook_id.size + 
  odx_odxequities_pts_glimpse_v2_0.orderbook_code.size + 
  odx_odxequities_pts_glimpse_v2_0.group.size + 
  odx_odxequities_pts_glimpse_v2_0.round_lot_size.size + 
  odx_odxequities_pts_glimpse_v2_0.price_tick_size_table_id.size + 
  odx_odxequities_pts_glimpse_v2_0.price_decimals.size + 
  odx_odxequities_pts_glimpse_v2_0.upper_price_limit.size + 
  odx_odxequities_pts_glimpse_v2_0.lower_price_limit.size

-- Display: Orderbook Directory Message
odx_odxequities_pts_glimpse_v2_0.orderbook_directory_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Orderbook Directory Message
odx_odxequities_pts_glimpse_v2_0.orderbook_directory_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Nanoseconds: Integer
  index, nanoseconds = odx_odxequities_pts_glimpse_v2_0.timestamp.dissect(buffer, index, packet, parent)

  -- Orderbook Id: Alpha
  index, orderbook_id = odx_odxequities_pts_glimpse_v2_0.orderbook_id.dissect(buffer, index, packet, parent)

  -- Orderbook Code: Alpha
  index, orderbook_code = odx_odxequities_pts_glimpse_v2_0.orderbook_code.dissect(buffer, index, packet, parent)

  -- Group: Alpha
  index, group = odx_odxequities_pts_glimpse_v2_0.group.dissect(buffer, index, packet, parent)

  -- Round Lot Size: Integer
  index, round_lot_size = odx_odxequities_pts_glimpse_v2_0.round_lot_size.dissect(buffer, index, packet, parent)

  -- Price Tick Size Table Id: Integer
  index, price_tick_size_table_id = odx_odxequities_pts_glimpse_v2_0.price_tick_size_table_id.dissect(buffer, index, packet, parent)

  -- Price Decimals: Integer
  index, price_decimals = odx_odxequities_pts_glimpse_v2_0.price_decimals.dissect(buffer, index, packet, parent)

  -- Upper Price Limit: Integer
  index, upper_price_limit = odx_odxequities_pts_glimpse_v2_0.upper_price_limit.dissect(buffer, index, packet, parent)

  -- Lower Price Limit: Integer
  index, lower_price_limit = odx_odxequities_pts_glimpse_v2_0.lower_price_limit.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Orderbook Directory Message
odx_odxequities_pts_glimpse_v2_0.orderbook_directory_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_odx_odxequities_pts_glimpse_v2_0.fields.orderbook_directory_message, buffer(offset, 0))
    local index = odx_odxequities_pts_glimpse_v2_0.orderbook_directory_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = odx_odxequities_pts_glimpse_v2_0.orderbook_directory_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return odx_odxequities_pts_glimpse_v2_0.orderbook_directory_message.fields(buffer, offset, packet, parent)
  end
end

-- Price Tick Size Message
odx_odxequities_pts_glimpse_v2_0.price_tick_size_message = {}

-- Size: Price Tick Size Message
odx_odxequities_pts_glimpse_v2_0.price_tick_size_message.size =
  odx_odxequities_pts_glimpse_v2_0.nanoseconds.size + 
  odx_odxequities_pts_glimpse_v2_0.price_tick_size_table_id.size + 
  odx_odxequities_pts_glimpse_v2_0.price_tick_size.size + 
  odx_odxequities_pts_glimpse_v2_0.price_start.size

-- Display: Price Tick Size Message
odx_odxequities_pts_glimpse_v2_0.price_tick_size_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Price Tick Size Message
odx_odxequities_pts_glimpse_v2_0.price_tick_size_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Nanoseconds: Integer
  index, nanoseconds = odx_odxequities_pts_glimpse_v2_0.timestamp.dissect(buffer, index, packet, parent)

  -- Price Tick Size Table Id: Integer
  index, price_tick_size_table_id = odx_odxequities_pts_glimpse_v2_0.price_tick_size_table_id.dissect(buffer, index, packet, parent)

  -- Price Tick Size: Integer
  index, price_tick_size = odx_odxequities_pts_glimpse_v2_0.price_tick_size.dissect(buffer, index, packet, parent)

  -- Price Start: Integer
  index, price_start = odx_odxequities_pts_glimpse_v2_0.price_start.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Price Tick Size Message
odx_odxequities_pts_glimpse_v2_0.price_tick_size_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_odx_odxequities_pts_glimpse_v2_0.fields.price_tick_size_message, buffer(offset, 0))
    local index = odx_odxequities_pts_glimpse_v2_0.price_tick_size_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = odx_odxequities_pts_glimpse_v2_0.price_tick_size_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return odx_odxequities_pts_glimpse_v2_0.price_tick_size_message.fields(buffer, offset, packet, parent)
  end
end

-- System Event Message
odx_odxequities_pts_glimpse_v2_0.system_event_message = {}

-- Size: System Event Message
odx_odxequities_pts_glimpse_v2_0.system_event_message.size =
  odx_odxequities_pts_glimpse_v2_0.nanoseconds.size + 
  odx_odxequities_pts_glimpse_v2_0.group.size + 
  odx_odxequities_pts_glimpse_v2_0.system_event.size

-- Display: System Event Message
odx_odxequities_pts_glimpse_v2_0.system_event_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: System Event Message
odx_odxequities_pts_glimpse_v2_0.system_event_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Nanoseconds: Integer
  index, nanoseconds = odx_odxequities_pts_glimpse_v2_0.timestamp.dissect(buffer, index, packet, parent)

  -- Group: Alpha
  index, group = odx_odxequities_pts_glimpse_v2_0.group.dissect(buffer, index, packet, parent)

  -- System Event: Alpha
  index, system_event = odx_odxequities_pts_glimpse_v2_0.system_event.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: System Event Message
odx_odxequities_pts_glimpse_v2_0.system_event_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_odx_odxequities_pts_glimpse_v2_0.fields.system_event_message, buffer(offset, 0))
    local index = odx_odxequities_pts_glimpse_v2_0.system_event_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = odx_odxequities_pts_glimpse_v2_0.system_event_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return odx_odxequities_pts_glimpse_v2_0.system_event_message.fields(buffer, offset, packet, parent)
  end
end

-- Seconds Message
odx_odxequities_pts_glimpse_v2_0.seconds_message = {}

-- Size: Seconds Message
odx_odxequities_pts_glimpse_v2_0.seconds_message.size =
  odx_odxequities_pts_glimpse_v2_0.seconds.size

-- Display: Seconds Message
odx_odxequities_pts_glimpse_v2_0.seconds_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Seconds Message
odx_odxequities_pts_glimpse_v2_0.seconds_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Seconds: Integer
  index, seconds = odx_odxequities_pts_glimpse_v2_0.seconds.dissect(buffer, index, packet, parent)

  -- Store Seconds Value
  odx_odxequities_pts_glimpse_v2_0.seconds.current = seconds

  if not packet.visited then
    odx_odxequities_pts_glimpse_v2_0.conversation.current.seconds.last = seconds
  end

  return index
end

-- Dissect: Seconds Message
odx_odxequities_pts_glimpse_v2_0.seconds_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_odx_odxequities_pts_glimpse_v2_0.fields.seconds_message, buffer(offset, 0))
    local index = odx_odxequities_pts_glimpse_v2_0.seconds_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = odx_odxequities_pts_glimpse_v2_0.seconds_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return odx_odxequities_pts_glimpse_v2_0.seconds_message.fields(buffer, offset, packet, parent)
  end
end

-- Sequenced Message
odx_odxequities_pts_glimpse_v2_0.sequenced_message = {}

-- Dissect: Sequenced Message
odx_odxequities_pts_glimpse_v2_0.sequenced_message.dissect = function(buffer, offset, packet, parent, sequenced_message_type)
  -- Dissect Seconds Message
  if sequenced_message_type == "T" then
    return odx_odxequities_pts_glimpse_v2_0.seconds_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect System Event Message
  if sequenced_message_type == "S" then
    return odx_odxequities_pts_glimpse_v2_0.system_event_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Price Tick Size Message
  if sequenced_message_type == "L" then
    return odx_odxequities_pts_glimpse_v2_0.price_tick_size_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Orderbook Directory Message
  if sequenced_message_type == "R" then
    return odx_odxequities_pts_glimpse_v2_0.orderbook_directory_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Trading State Message
  if sequenced_message_type == "H" then
    return odx_odxequities_pts_glimpse_v2_0.trading_state_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Short Selling Price Restriction State Message
  if sequenced_message_type == "Y" then
    return odx_odxequities_pts_glimpse_v2_0.short_selling_price_restriction_state_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Order Added Message
  if sequenced_message_type == "A" then
    return odx_odxequities_pts_glimpse_v2_0.order_added_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Order Added With Attributes Message
  if sequenced_message_type == "F" then
    return odx_odxequities_pts_glimpse_v2_0.order_added_with_attributes_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect End Of Snapshot Message
  if sequenced_message_type == "G" then
    return odx_odxequities_pts_glimpse_v2_0.end_of_snapshot_message.dissect(buffer, offset, packet, parent)
  end

  return offset
end

-- Sequenced Data Packet
odx_odxequities_pts_glimpse_v2_0.sequenced_data_packet = {}

-- Read runtime size of: Sequenced Data Packet
odx_odxequities_pts_glimpse_v2_0.sequenced_data_packet.size = function(buffer, offset)
  local index = offset

  -- Dependency element: Packet Length
  local packet_length = buffer(offset - 3, 2):uint()

  return packet_length - 1
end

-- Display: Sequenced Data Packet
odx_odxequities_pts_glimpse_v2_0.sequenced_data_packet.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Sequenced Data Packet
odx_odxequities_pts_glimpse_v2_0.sequenced_data_packet.fields = function(buffer, offset, packet, parent, size_of_sequenced_data_packet)
  local index = offset

  -- Sequenced Message Type: 1 Byte Ascii String Enum with 9 values
  index, sequenced_message_type = odx_odxequities_pts_glimpse_v2_0.sequenced_message_type.dissect(buffer, index, packet, parent)

  -- Sequenced Message: Runtime Type with 9 branches
  index = odx_odxequities_pts_glimpse_v2_0.sequenced_message.dissect(buffer, index, packet, parent, sequenced_message_type)

  return index
end

-- Dissect: Sequenced Data Packet
odx_odxequities_pts_glimpse_v2_0.sequenced_data_packet.dissect = function(buffer, offset, packet, parent, size_of_sequenced_data_packet)
  local size_of_sequenced_data_packet = odx_odxequities_pts_glimpse_v2_0.sequenced_data_packet.size(buffer, offset)
  local index = offset + size_of_sequenced_data_packet

  -- Optionally add group/struct element to protocol tree
  if show.session_messages then
    parent = parent:add(omi_odx_odxequities_pts_glimpse_v2_0.fields.sequenced_data_packet, buffer(offset, 0))
    local current = odx_odxequities_pts_glimpse_v2_0.sequenced_data_packet.fields(buffer, offset, packet, parent, size_of_sequenced_data_packet)
    parent:set_len(size_of_sequenced_data_packet)
    local display = odx_odxequities_pts_glimpse_v2_0.sequenced_data_packet.display(buffer, packet, parent)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    odx_odxequities_pts_glimpse_v2_0.sequenced_data_packet.fields(buffer, offset, packet, parent, size_of_sequenced_data_packet)

    return index
  end
end

-- Login Rejected Packet
odx_odxequities_pts_glimpse_v2_0.login_rejected_packet = {}

-- Size: Login Rejected Packet
odx_odxequities_pts_glimpse_v2_0.login_rejected_packet.size =
  odx_odxequities_pts_glimpse_v2_0.reject_reason_code.size

-- Display: Login Rejected Packet
odx_odxequities_pts_glimpse_v2_0.login_rejected_packet.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Login Rejected Packet
odx_odxequities_pts_glimpse_v2_0.login_rejected_packet.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Reject Reason Code: 1 Byte Ascii String
  index, reject_reason_code = odx_odxequities_pts_glimpse_v2_0.reject_reason_code.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Login Rejected Packet
odx_odxequities_pts_glimpse_v2_0.login_rejected_packet.dissect = function(buffer, offset, packet, parent)
  if show.session_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_odx_odxequities_pts_glimpse_v2_0.fields.login_rejected_packet, buffer(offset, 0))
    local index = odx_odxequities_pts_glimpse_v2_0.login_rejected_packet.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = odx_odxequities_pts_glimpse_v2_0.login_rejected_packet.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return odx_odxequities_pts_glimpse_v2_0.login_rejected_packet.fields(buffer, offset, packet, parent)
  end
end

-- Login Accepted Packet
odx_odxequities_pts_glimpse_v2_0.login_accepted_packet = {}

-- Size: Login Accepted Packet
odx_odxequities_pts_glimpse_v2_0.login_accepted_packet.size =
  odx_odxequities_pts_glimpse_v2_0.session.size + 
  odx_odxequities_pts_glimpse_v2_0.sequence_number.size

-- Display: Login Accepted Packet
odx_odxequities_pts_glimpse_v2_0.login_accepted_packet.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Login Accepted Packet
odx_odxequities_pts_glimpse_v2_0.login_accepted_packet.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Session: 10 Byte Ascii String
  index, session = odx_odxequities_pts_glimpse_v2_0.session.dissect(buffer, index, packet, parent)

  -- Sequence Number: Integer
  index, sequence_number = odx_odxequities_pts_glimpse_v2_0.sequence_number.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Login Accepted Packet
odx_odxequities_pts_glimpse_v2_0.login_accepted_packet.dissect = function(buffer, offset, packet, parent)
  if show.session_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_odx_odxequities_pts_glimpse_v2_0.fields.login_accepted_packet, buffer(offset, 0))
    local index = odx_odxequities_pts_glimpse_v2_0.login_accepted_packet.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = odx_odxequities_pts_glimpse_v2_0.login_accepted_packet.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return odx_odxequities_pts_glimpse_v2_0.login_accepted_packet.fields(buffer, offset, packet, parent)
  end
end

-- Debug Packet
odx_odxequities_pts_glimpse_v2_0.debug_packet = {}

-- Size: Debug Packet
odx_odxequities_pts_glimpse_v2_0.debug_packet.size =
  odx_odxequities_pts_glimpse_v2_0.text.size

-- Display: Debug Packet
odx_odxequities_pts_glimpse_v2_0.debug_packet.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Debug Packet
odx_odxequities_pts_glimpse_v2_0.debug_packet.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Text: 1 Byte Ascii String
  index, text = odx_odxequities_pts_glimpse_v2_0.text.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Debug Packet
odx_odxequities_pts_glimpse_v2_0.debug_packet.dissect = function(buffer, offset, packet, parent)
  if show.session_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_odx_odxequities_pts_glimpse_v2_0.fields.debug_packet, buffer(offset, 0))
    local index = odx_odxequities_pts_glimpse_v2_0.debug_packet.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = odx_odxequities_pts_glimpse_v2_0.debug_packet.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return odx_odxequities_pts_glimpse_v2_0.debug_packet.fields(buffer, offset, packet, parent)
  end
end

-- Server Payload
odx_odxequities_pts_glimpse_v2_0.server_payload = {}

-- Dissect: Server Payload
odx_odxequities_pts_glimpse_v2_0.server_payload.dissect = function(buffer, offset, packet, parent, server_packet_type)
  -- Dissect Debug Packet
  if server_packet_type == "+" then
    return odx_odxequities_pts_glimpse_v2_0.debug_packet.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Login Accepted Packet
  if server_packet_type == "A" then
    return odx_odxequities_pts_glimpse_v2_0.login_accepted_packet.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Login Rejected Packet
  if server_packet_type == "J" then
    return odx_odxequities_pts_glimpse_v2_0.login_rejected_packet.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Sequenced Data Packet
  if server_packet_type == "S" then
    return odx_odxequities_pts_glimpse_v2_0.sequenced_data_packet.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Server Heartbeat
  if server_packet_type == "H" then
    return odx_odxequities_pts_glimpse_v2_0.server_heartbeat.dissect(buffer, offset, packet, parent)
  end
  -- Dissect End Of Session
  if server_packet_type == "Z" then
    return odx_odxequities_pts_glimpse_v2_0.end_of_session.dissect(buffer, offset, packet, parent)
  end

  return offset
end

-- Server Packet Header
odx_odxequities_pts_glimpse_v2_0.server_packet_header = {}

-- Size: Server Packet Header
odx_odxequities_pts_glimpse_v2_0.server_packet_header.size =
  odx_odxequities_pts_glimpse_v2_0.packet_length.size + 
  odx_odxequities_pts_glimpse_v2_0.server_packet_type.size

-- Display: Server Packet Header
odx_odxequities_pts_glimpse_v2_0.server_packet_header.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Server Packet Header
odx_odxequities_pts_glimpse_v2_0.server_packet_header.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Packet Length: 2 Byte Unsigned Fixed Width Integer
  index, packet_length = odx_odxequities_pts_glimpse_v2_0.packet_length.dissect(buffer, index, packet, parent)

  -- Server Packet Type: 1 Byte Ascii String Enum with 6 values
  index, server_packet_type = odx_odxequities_pts_glimpse_v2_0.server_packet_type.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Server Packet Header
odx_odxequities_pts_glimpse_v2_0.server_packet_header.dissect = function(buffer, offset, packet, parent)
  if show.structs then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_odx_odxequities_pts_glimpse_v2_0.fields.server_packet_header, buffer(offset, 0))
    local index = odx_odxequities_pts_glimpse_v2_0.server_packet_header.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = odx_odxequities_pts_glimpse_v2_0.server_packet_header.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return odx_odxequities_pts_glimpse_v2_0.server_packet_header.fields(buffer, offset, packet, parent)
  end
end

-- Server Soup Bin Tcp Packet
odx_odxequities_pts_glimpse_v2_0.server_soup_bin_tcp_packet = {}

-- Display: Server Soup Bin Tcp Packet
odx_odxequities_pts_glimpse_v2_0.server_soup_bin_tcp_packet.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Server Soup Bin Tcp Packet
odx_odxequities_pts_glimpse_v2_0.server_soup_bin_tcp_packet.fields = function(buffer, offset, packet, parent, size_of_server_soup_bin_tcp_packet)
  local index = offset

  -- Server Packet Header: Struct of 2 fields
  index, server_packet_header = odx_odxequities_pts_glimpse_v2_0.server_packet_header.dissect(buffer, index, packet, parent)

  -- Dependency element: Server Packet Type
  local server_packet_type = buffer(index - 1, 1):string()

  -- Server Payload: Runtime Type with 6 branches
  index = odx_odxequities_pts_glimpse_v2_0.server_payload.dissect(buffer, index, packet, parent, server_packet_type)

  return index
end

-- Dissect: Server Soup Bin Tcp Packet
odx_odxequities_pts_glimpse_v2_0.server_soup_bin_tcp_packet.dissect = function(buffer, offset, packet, parent, size_of_server_soup_bin_tcp_packet)
  local index = offset + size_of_server_soup_bin_tcp_packet

  -- Optionally add group/struct element to protocol tree
  if show.structs then
    parent = parent:add(omi_odx_odxequities_pts_glimpse_v2_0.fields.server_soup_bin_tcp_packet, buffer(offset, 0))
    local current = odx_odxequities_pts_glimpse_v2_0.server_soup_bin_tcp_packet.fields(buffer, offset, packet, parent, size_of_server_soup_bin_tcp_packet)
    parent:set_len(size_of_server_soup_bin_tcp_packet)
    local display = odx_odxequities_pts_glimpse_v2_0.server_soup_bin_tcp_packet.display(buffer, packet, parent)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    odx_odxequities_pts_glimpse_v2_0.server_soup_bin_tcp_packet.fields(buffer, offset, packet, parent, size_of_server_soup_bin_tcp_packet)

    return index
  end
end

-- Remaining Bytes For: Server Soup Bin Tcp Packet
local server_soup_bin_tcp_packet_bytes_remaining = function(buffer, index, available)
  -- Calculate the number of bytes remaining
  local remaining = available - index

  -- Check if packet size can be read
  if remaining < odx_odxequities_pts_glimpse_v2_0.server_packet_header.size then
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
odx_odxequities_pts_glimpse_v2_0.server_packet = {}

-- Verify required size of Tcp packet
odx_odxequities_pts_glimpse_v2_0.server_packet.requiredsize = function(buffer)
  return buffer:len() >= odx_odxequities_pts_glimpse_v2_0.server_packet_header.size
end

-- Dissect Server Packet
odx_odxequities_pts_glimpse_v2_0.server_packet.dissect = function(buffer, packet, parent)
  -- establish frame context from the conversation's stored values
  local data = odx_odxequities_pts_glimpse_v2_0.conversation.data(packet)
  if not packet.visited then
    data.seconds.frames[packet.number] = data.seconds.last
  end
  odx_odxequities_pts_glimpse_v2_0.seconds.current = data.seconds.frames[packet.number]
  odx_odxequities_pts_glimpse_v2_0.conversation.current = data

  local index = 0

  -- Dependency for Server Soup Bin Tcp Packet
  local end_of_payload = buffer:len()

  -- Server Soup Bin Tcp Packet: Struct of 2 fields
  while index < end_of_payload do

    -- Are minimum number of bytes are available?
    local available, size_of_server_soup_bin_tcp_packet = server_soup_bin_tcp_packet_bytes_remaining(buffer, index, end_of_payload)

    if available > 0 then
      index = odx_odxequities_pts_glimpse_v2_0.server_soup_bin_tcp_packet.dissect(buffer, index, packet, parent, size_of_server_soup_bin_tcp_packet)
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
odx_odxequities_pts_glimpse_v2_0.logout_request = {}

-- Display: Logout Request
odx_odxequities_pts_glimpse_v2_0.logout_request.display = function(packet, parent, length)
  return "Logout Request"
end


-- Dissect: Logout Request
odx_odxequities_pts_glimpse_v2_0.logout_request.dissect = function(buffer, offset, packet, parent)
  local display = odx_odxequities_pts_glimpse_v2_0.logout_request.display(packet, parent, 0)
  packet.cols.info = display

  return offset
end

-- Client Heartbeat
odx_odxequities_pts_glimpse_v2_0.client_heartbeat = {}

-- Display: Client Heartbeat
odx_odxequities_pts_glimpse_v2_0.client_heartbeat.display = function(packet, parent, length)
  return "Client Heartbeat"
end


-- Dissect: Client Heartbeat
odx_odxequities_pts_glimpse_v2_0.client_heartbeat.dissect = function(buffer, offset, packet, parent)
  local display = odx_odxequities_pts_glimpse_v2_0.client_heartbeat.display(packet, parent, 0)
  packet.cols.info = display

  return offset
end

-- Unsequenced Data Packet
odx_odxequities_pts_glimpse_v2_0.unsequenced_data_packet = {}

-- Read runtime size of: Unsequenced Data Packet
odx_odxequities_pts_glimpse_v2_0.unsequenced_data_packet.size = function(buffer, offset)
  local index = offset

  -- Dependency element: Packet Length
  local packet_length = buffer(offset - 3, 2):uint()

  return packet_length - 1
end

-- Display: Unsequenced Data Packet
odx_odxequities_pts_glimpse_v2_0.unsequenced_data_packet.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Unsequenced Data Packet
odx_odxequities_pts_glimpse_v2_0.unsequenced_data_packet.fields = function(buffer, offset, packet, parent, size_of_unsequenced_data_packet)
  local index = offset

  -- Unsequenced Message Type: 1 Byte Ascii String
  index, unsequenced_message_type = odx_odxequities_pts_glimpse_v2_0.unsequenced_message_type.dissect(buffer, index, packet, parent)

  -- Dependency element: Packet Length
  local packet_length = buffer(offset - 3, 2):uint()

  -- Runtime Size Of: Unsequenced Message
  local size_of_unsequenced_message = packet_length - 2

  -- Unsequenced Message: 0 Byte
  index, unsequenced_message = odx_odxequities_pts_glimpse_v2_0.unsequenced_message.dissect(buffer, index, packet, parent, size_of_unsequenced_message)

  return index
end

-- Dissect: Unsequenced Data Packet
odx_odxequities_pts_glimpse_v2_0.unsequenced_data_packet.dissect = function(buffer, offset, packet, parent, size_of_unsequenced_data_packet)
  local size_of_unsequenced_data_packet = odx_odxequities_pts_glimpse_v2_0.unsequenced_data_packet.size(buffer, offset)
  local index = offset + size_of_unsequenced_data_packet

  -- Optionally add group/struct element to protocol tree
  if show.session_messages then
    parent = parent:add(omi_odx_odxequities_pts_glimpse_v2_0.fields.unsequenced_data_packet, buffer(offset, 0))
    local current = odx_odxequities_pts_glimpse_v2_0.unsequenced_data_packet.fields(buffer, offset, packet, parent, size_of_unsequenced_data_packet)
    parent:set_len(size_of_unsequenced_data_packet)
    local display = odx_odxequities_pts_glimpse_v2_0.unsequenced_data_packet.display(buffer, packet, parent)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    odx_odxequities_pts_glimpse_v2_0.unsequenced_data_packet.fields(buffer, offset, packet, parent, size_of_unsequenced_data_packet)

    return index
  end
end

-- Login Request Packet
odx_odxequities_pts_glimpse_v2_0.login_request_packet = {}

-- Size: Login Request Packet
odx_odxequities_pts_glimpse_v2_0.login_request_packet.size =
  odx_odxequities_pts_glimpse_v2_0.username.size + 
  odx_odxequities_pts_glimpse_v2_0.password.size + 
  odx_odxequities_pts_glimpse_v2_0.requested_session.size + 
  odx_odxequities_pts_glimpse_v2_0.requested_sequence_number.size

-- Display: Login Request Packet
odx_odxequities_pts_glimpse_v2_0.login_request_packet.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Login Request Packet
odx_odxequities_pts_glimpse_v2_0.login_request_packet.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Username: 6 Byte Ascii String
  index, username = odx_odxequities_pts_glimpse_v2_0.username.dissect(buffer, index, packet, parent)

  -- Password: 10 Byte Ascii String
  index, password = odx_odxequities_pts_glimpse_v2_0.password.dissect(buffer, index, packet, parent)

  -- Requested Session: 10 Byte Ascii String
  index, requested_session = odx_odxequities_pts_glimpse_v2_0.requested_session.dissect(buffer, index, packet, parent)

  -- Requested Sequence Number: 20 Byte Ascii String
  index, requested_sequence_number = odx_odxequities_pts_glimpse_v2_0.requested_sequence_number.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Login Request Packet
odx_odxequities_pts_glimpse_v2_0.login_request_packet.dissect = function(buffer, offset, packet, parent)
  if show.session_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_odx_odxequities_pts_glimpse_v2_0.fields.login_request_packet, buffer(offset, 0))
    local index = odx_odxequities_pts_glimpse_v2_0.login_request_packet.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = odx_odxequities_pts_glimpse_v2_0.login_request_packet.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return odx_odxequities_pts_glimpse_v2_0.login_request_packet.fields(buffer, offset, packet, parent)
  end
end

-- Client Payload
odx_odxequities_pts_glimpse_v2_0.client_payload = {}

-- Dissect: Client Payload
odx_odxequities_pts_glimpse_v2_0.client_payload.dissect = function(buffer, offset, packet, parent, client_packet_type)
  -- Dissect Debug Packet
  if client_packet_type == "+" then
    return odx_odxequities_pts_glimpse_v2_0.debug_packet.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Login Request Packet
  if client_packet_type == "L" then
    return odx_odxequities_pts_glimpse_v2_0.login_request_packet.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Unsequenced Data Packet
  if client_packet_type == "U" then
    return odx_odxequities_pts_glimpse_v2_0.unsequenced_data_packet.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Client Heartbeat
  if client_packet_type == "R" then
    return odx_odxequities_pts_glimpse_v2_0.client_heartbeat.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Logout Request
  if client_packet_type == "O" then
    return odx_odxequities_pts_glimpse_v2_0.logout_request.dissect(buffer, offset, packet, parent)
  end

  return offset
end

-- Client Packet Header
odx_odxequities_pts_glimpse_v2_0.client_packet_header = {}

-- Size: Client Packet Header
odx_odxequities_pts_glimpse_v2_0.client_packet_header.size =
  odx_odxequities_pts_glimpse_v2_0.packet_length.size + 
  odx_odxequities_pts_glimpse_v2_0.client_packet_type.size

-- Display: Client Packet Header
odx_odxequities_pts_glimpse_v2_0.client_packet_header.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Client Packet Header
odx_odxequities_pts_glimpse_v2_0.client_packet_header.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Packet Length: 2 Byte Unsigned Fixed Width Integer
  index, packet_length = odx_odxequities_pts_glimpse_v2_0.packet_length.dissect(buffer, index, packet, parent)

  -- Client Packet Type: 1 Byte Ascii String Enum with 5 values
  index, client_packet_type = odx_odxequities_pts_glimpse_v2_0.client_packet_type.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Client Packet Header
odx_odxequities_pts_glimpse_v2_0.client_packet_header.dissect = function(buffer, offset, packet, parent)
  if show.structs then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_odx_odxequities_pts_glimpse_v2_0.fields.client_packet_header, buffer(offset, 0))
    local index = odx_odxequities_pts_glimpse_v2_0.client_packet_header.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = odx_odxequities_pts_glimpse_v2_0.client_packet_header.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return odx_odxequities_pts_glimpse_v2_0.client_packet_header.fields(buffer, offset, packet, parent)
  end
end

-- Client Soup Bin Tcp Packet
odx_odxequities_pts_glimpse_v2_0.client_soup_bin_tcp_packet = {}

-- Display: Client Soup Bin Tcp Packet
odx_odxequities_pts_glimpse_v2_0.client_soup_bin_tcp_packet.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Client Soup Bin Tcp Packet
odx_odxequities_pts_glimpse_v2_0.client_soup_bin_tcp_packet.fields = function(buffer, offset, packet, parent, size_of_client_soup_bin_tcp_packet)
  local index = offset

  -- Client Packet Header: Struct of 2 fields
  index, client_packet_header = odx_odxequities_pts_glimpse_v2_0.client_packet_header.dissect(buffer, index, packet, parent)

  -- Dependency element: Client Packet Type
  local client_packet_type = buffer(index - 1, 1):string()

  -- Client Payload: Runtime Type with 5 branches
  index = odx_odxequities_pts_glimpse_v2_0.client_payload.dissect(buffer, index, packet, parent, client_packet_type)

  return index
end

-- Dissect: Client Soup Bin Tcp Packet
odx_odxequities_pts_glimpse_v2_0.client_soup_bin_tcp_packet.dissect = function(buffer, offset, packet, parent, size_of_client_soup_bin_tcp_packet)
  local index = offset + size_of_client_soup_bin_tcp_packet

  -- Optionally add group/struct element to protocol tree
  if show.structs then
    parent = parent:add(omi_odx_odxequities_pts_glimpse_v2_0.fields.client_soup_bin_tcp_packet, buffer(offset, 0))
    local current = odx_odxequities_pts_glimpse_v2_0.client_soup_bin_tcp_packet.fields(buffer, offset, packet, parent, size_of_client_soup_bin_tcp_packet)
    parent:set_len(size_of_client_soup_bin_tcp_packet)
    local display = odx_odxequities_pts_glimpse_v2_0.client_soup_bin_tcp_packet.display(buffer, packet, parent)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    odx_odxequities_pts_glimpse_v2_0.client_soup_bin_tcp_packet.fields(buffer, offset, packet, parent, size_of_client_soup_bin_tcp_packet)

    return index
  end
end

-- Remaining Bytes For: Client Soup Bin Tcp Packet
local client_soup_bin_tcp_packet_bytes_remaining = function(buffer, index, available)
  -- Calculate the number of bytes remaining
  local remaining = available - index

  -- Check if packet size can be read
  if remaining < odx_odxequities_pts_glimpse_v2_0.client_packet_header.size then
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
odx_odxequities_pts_glimpse_v2_0.client_packet = {}

-- Verify required size of Tcp packet
odx_odxequities_pts_glimpse_v2_0.client_packet.requiredsize = function(buffer)
  return buffer:len() >= odx_odxequities_pts_glimpse_v2_0.client_packet_header.size
end

-- Dissect Client Packet
odx_odxequities_pts_glimpse_v2_0.client_packet.dissect = function(buffer, packet, parent)
  local index = 0

  -- Dependency for Client Soup Bin Tcp Packet
  local end_of_payload = buffer:len()

  -- Client Soup Bin Tcp Packet: Struct of 2 fields
  while index < end_of_payload do

    -- Are minimum number of bytes are available?
    local available, size_of_client_soup_bin_tcp_packet = client_soup_bin_tcp_packet_bytes_remaining(buffer, index, end_of_payload)

    if available > 0 then
      index = odx_odxequities_pts_glimpse_v2_0.client_soup_bin_tcp_packet.dissect(buffer, index, packet, parent, size_of_client_soup_bin_tcp_packet)
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
function omi_odx_odxequities_pts_glimpse_v2_0.init()
  odx_odxequities_pts_glimpse_v2_0.seconds.current = nil
  odx_odxequities_pts_glimpse_v2_0.conversation.current = nil
  odx_odxequities_pts_glimpse_v2_0.conversation.flows = {}
end

-- Connection roles for Odx OdxEquities Pts Glimpse 2.0: Client is the initiator, Server is the acceptor
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
odx_odxequities_pts_glimpse_v2_0.role = function(packet)
  if omi_odx_odxequities_pts_glimpse_v2_0.prefs.assume_role == 1 then
    return "initiator"
  end
  if omi_odx_odxequities_pts_glimpse_v2_0.prefs.assume_role == 2 then
    return "acceptor"
  end
  local port = omi_odx_odxequities_pts_glimpse_v2_0.prefs.acceptor_port
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
  if omi_odx_odxequities_pts_glimpse_v2_0.prefs.swap_sides then
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
odx_odxequities_pts_glimpse_v2_0.swap = function(packet)
  local key = conversation(packet)
  swapped[key] = not swapped[key]
end


-- Dissector for Odx OdxEquities Pts Glimpse 2.0
function omi_odx_odxequities_pts_glimpse_v2_0.dissector(buffer, packet, parent)

  -- Set protocol name
  packet.cols.protocol = omi_odx_odxequities_pts_glimpse_v2_0.name

  -- Dissect protocol
  local protocol = parent:add(omi_odx_odxequities_pts_glimpse_v2_0, buffer(), omi_odx_odxequities_pts_glimpse_v2_0.description, "("..buffer:len().." Bytes)")
  local role = odx_odxequities_pts_glimpse_v2_0.role(packet)
  if role == "initiator" then
    return odx_odxequities_pts_glimpse_v2_0.client_packet.dissect(buffer, packet, protocol)
  end
  return odx_odxequities_pts_glimpse_v2_0.server_packet.dissect(buffer, packet, protocol)
end


-----------------------------------------------------------------------
-- Protocol Fingerprints
-----------------------------------------------------------------------

-- Fingerprint of Client Packet: would its message dispatch accept this frame?
odx_odxequities_pts_glimpse_v2_0.client_packet.fingerprint = function(buffer)
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
odx_odxequities_pts_glimpse_v2_0.server_packet.fingerprint = function(buffer)
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

-- Dissector Heuristic for Odx OdxEquities Pts Glimpse 2.0 (Tcp)
local function omi_odx_odxequities_pts_glimpse_v2_0_tcp_initiator_heuristic(buffer, packet, parent)
  -- Verify packet length
  if not odx_odxequities_pts_glimpse_v2_0.client_packet.requiredsize(buffer) then return false end

  -- Verify the frame matches this side's fingerprint
  if not odx_odxequities_pts_glimpse_v2_0.client_packet.fingerprint(buffer) then return false end

  -- Protocol is valid, set conversation and dissect this packet
  packet.conversation = omi_odx_odxequities_pts_glimpse_v2_0
  omi_odx_odxequities_pts_glimpse_v2_0.dissector(buffer, packet, parent)

  return true
end

-- Dissector Heuristic for Odx OdxEquities Pts Glimpse 2.0 (Tcp)
local function omi_odx_odxequities_pts_glimpse_v2_0_tcp_acceptor_heuristic(buffer, packet, parent)
  -- Verify packet length
  if not odx_odxequities_pts_glimpse_v2_0.server_packet.requiredsize(buffer) then return false end

  -- Verify the frame matches this side's fingerprint
  if not odx_odxequities_pts_glimpse_v2_0.server_packet.fingerprint(buffer) then return false end

  -- Protocol is valid, set conversation and dissect this packet
  packet.conversation = omi_odx_odxequities_pts_glimpse_v2_0
  omi_odx_odxequities_pts_glimpse_v2_0.dissector(buffer, packet, parent)

  return true
end

-- Dissector Heuristic for Odx OdxEquities Pts Glimpse 2.0 (Tcp): apply the heuristic of the sender's connection role
local function omi_odx_odxequities_pts_glimpse_v2_0_tcp_heuristic(buffer, packet, parent)
  local role = odx_odxequities_pts_glimpse_v2_0.role(packet)
  local first, second = omi_odx_odxequities_pts_glimpse_v2_0_tcp_initiator_heuristic, omi_odx_odxequities_pts_glimpse_v2_0_tcp_acceptor_heuristic
  if role == "acceptor" then
    first, second = second, first
  end
  if first(buffer, packet, parent) then
    return true
  end

  -- The other side may have sent this conversation's first frame: swap, and swap back if it cannot claim either
  odx_odxequities_pts_glimpse_v2_0.swap(packet)
  if second(buffer, packet, parent) then
    return true
  end
  odx_odxequities_pts_glimpse_v2_0.swap(packet)

  return false
end

-- Register Heuristics for Odx OdxEquities Pts Glimpse 2.0
omi_odx_odxequities_pts_glimpse_v2_0:register_heuristic("tcp", omi_odx_odxequities_pts_glimpse_v2_0_tcp_heuristic)

-----------------------------------------------------------------------
-- Lua dissectors are an easily edited and modified cross-platform dissection solution.
-- Feel free to modify. Enjoy.
-----------------------------------------------------------------------
--
-- Protocol:
--   Organization: Osaka Digital Exchange
--   Version: 2.0
--   Date: Friday, March 31, 2023
--   Specification: ODX_PTS_GLIMPSE_Equities_v2.0.pdf
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
