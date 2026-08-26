-----------------------------------------------------------------------
-- Lua Script Wireshark Dissector
--
-- Please see end of file for rules and regulations
-----------------------------------------------------------------------

-- Odx OdxSecurityToken Pts Itch 1.2 Protocol
local omi_odx_odxsecuritytoken_pts_itch_v1_2 = Proto("Omi.Odx.OdxSecurityToken.Pts.Itch.v1.2", "Odx OdxSecurityToken Pts Itch 1.2")

-- Protocol table
local odx_odxsecuritytoken_pts_itch_v1_2 = {}

-----------------------------------------------------------------------
-- Declare Protocol Fields
-----------------------------------------------------------------------

-- Odx OdxSecurityToken Pts Itch 1.2 Fields
omi_odx_odxsecuritytoken_pts_itch_v1_2.fields.attention_flag = ProtoField.new("Attention Flag", "odx.odxsecuritytoken.pts.itch.v1.2.attentionflag", ftypes.STRING)
omi_odx_odxsecuritytoken_pts_itch_v1_2.fields.buy_sell_indicator = ProtoField.new("Buy Sell Indicator", "odx.odxsecuritytoken.pts.itch.v1.2.buysellindicator", ftypes.STRING)
omi_odx_odxsecuritytoken_pts_itch_v1_2.fields.client_packet_type = ProtoField.new("Packet Type", "odx.odxsecuritytoken.pts.itch.v1.2.clientpackettype", ftypes.STRING)
omi_odx_odxsecuritytoken_pts_itch_v1_2.fields.equilibrium_price = ProtoField.new("Equilibrium Price", "odx.odxsecuritytoken.pts.itch.v1.2.equilibriumprice", ftypes.DOUBLE)
omi_odx_odxsecuritytoken_pts_itch_v1_2.fields.exchange_symbol = ProtoField.new("Exchange Symbol", "odx.odxsecuritytoken.pts.itch.v1.2.exchangesymbol", ftypes.STRING)
omi_odx_odxsecuritytoken_pts_itch_v1_2.fields.executed_quantity = ProtoField.new("Executed Quantity", "odx.odxsecuritytoken.pts.itch.v1.2.executedquantity", ftypes.UINT32)
omi_odx_odxsecuritytoken_pts_itch_v1_2.fields.group = ProtoField.new("Group", "odx.odxsecuritytoken.pts.itch.v1.2.group", ftypes.STRING)
omi_odx_odxsecuritytoken_pts_itch_v1_2.fields.lower_price_limit = ProtoField.new("Lower Price Limit", "odx.odxsecuritytoken.pts.itch.v1.2.lowerpricelimit", ftypes.DOUBLE)
omi_odx_odxsecuritytoken_pts_itch_v1_2.fields.match_number = ProtoField.new("Match Number", "odx.odxsecuritytoken.pts.itch.v1.2.matchnumber", ftypes.UINT64)
omi_odx_odxsecuritytoken_pts_itch_v1_2.fields.nanoseconds = ProtoField.new("Nanoseconds", "odx.odxsecuritytoken.pts.itch.v1.2.nanoseconds", ftypes.UINT32)
omi_odx_odxsecuritytoken_pts_itch_v1_2.fields.new_order_number = ProtoField.new("New Order Number", "odx.odxsecuritytoken.pts.itch.v1.2.newordernumber", ftypes.UINT64)
omi_odx_odxsecuritytoken_pts_itch_v1_2.fields.occurred_as_cross = ProtoField.new("Occurred As Cross", "odx.odxsecuritytoken.pts.itch.v1.2.occurredascross", ftypes.STRING)
omi_odx_odxsecuritytoken_pts_itch_v1_2.fields.order_number = ProtoField.new("Order Number", "odx.odxsecuritytoken.pts.itch.v1.2.ordernumber", ftypes.UINT64)
omi_odx_odxsecuritytoken_pts_itch_v1_2.fields.orderbook_code = ProtoField.new("Orderbook Code", "odx.odxsecuritytoken.pts.itch.v1.2.orderbookcode", ftypes.STRING)
omi_odx_odxsecuritytoken_pts_itch_v1_2.fields.orderbook_id = ProtoField.new("Orderbook Id", "odx.odxsecuritytoken.pts.itch.v1.2.orderbookid", ftypes.STRING)
omi_odx_odxsecuritytoken_pts_itch_v1_2.fields.original_order_number = ProtoField.new("Original Order Number", "odx.odxsecuritytoken.pts.itch.v1.2.originalordernumber", ftypes.UINT64)
omi_odx_odxsecuritytoken_pts_itch_v1_2.fields.packet_length = ProtoField.new("Packet Length", "odx.odxsecuritytoken.pts.itch.v1.2.packetlength", ftypes.UINT16)
omi_odx_odxsecuritytoken_pts_itch_v1_2.fields.password = ProtoField.new("Password", "odx.odxsecuritytoken.pts.itch.v1.2.password", ftypes.STRING)
omi_odx_odxsecuritytoken_pts_itch_v1_2.fields.price = ProtoField.new("Price", "odx.odxsecuritytoken.pts.itch.v1.2.price", ftypes.DOUBLE)
omi_odx_odxsecuritytoken_pts_itch_v1_2.fields.price_decimals = ProtoField.new("Price Decimals", "odx.odxsecuritytoken.pts.itch.v1.2.pricedecimals", ftypes.UINT32)
omi_odx_odxsecuritytoken_pts_itch_v1_2.fields.price_start = ProtoField.new("Price Start", "odx.odxsecuritytoken.pts.itch.v1.2.pricestart", ftypes.DOUBLE)
omi_odx_odxsecuritytoken_pts_itch_v1_2.fields.price_tick_size = ProtoField.new("Price Tick Size", "odx.odxsecuritytoken.pts.itch.v1.2.priceticksize", ftypes.DOUBLE)
omi_odx_odxsecuritytoken_pts_itch_v1_2.fields.price_tick_size_table_id = ProtoField.new("Price Tick Size Table Id", "odx.odxsecuritytoken.pts.itch.v1.2.priceticksizetableid", ftypes.UINT32)
omi_odx_odxsecuritytoken_pts_itch_v1_2.fields.quantity = ProtoField.new("Quantity", "odx.odxsecuritytoken.pts.itch.v1.2.quantity", ftypes.UINT32)
omi_odx_odxsecuritytoken_pts_itch_v1_2.fields.reject_reason_code = ProtoField.new("Reject Reason Code", "odx.odxsecuritytoken.pts.itch.v1.2.rejectreasoncode", ftypes.STRING)
omi_odx_odxsecuritytoken_pts_itch_v1_2.fields.requested_sequence_number = ProtoField.new("Requested Sequence Number", "odx.odxsecuritytoken.pts.itch.v1.2.requestedsequencenumber", ftypes.STRING)
omi_odx_odxsecuritytoken_pts_itch_v1_2.fields.requested_session = ProtoField.new("Requested Session", "odx.odxsecuritytoken.pts.itch.v1.2.requestedsession", ftypes.STRING)
omi_odx_odxsecuritytoken_pts_itch_v1_2.fields.restriction_of_market_order = ProtoField.new("Restriction Of Market Order", "odx.odxsecuritytoken.pts.itch.v1.2.restrictionofmarketorder", ftypes.STRING)
omi_odx_odxsecuritytoken_pts_itch_v1_2.fields.round_lot_size = ProtoField.new("Round Lot Size", "odx.odxsecuritytoken.pts.itch.v1.2.roundlotsize", ftypes.UINT32)
omi_odx_odxsecuritytoken_pts_itch_v1_2.fields.seconds = ProtoField.new("Seconds", "odx.odxsecuritytoken.pts.itch.v1.2.seconds", ftypes.UINT32)
omi_odx_odxsecuritytoken_pts_itch_v1_2.fields.sequence_number = ProtoField.new("Sequence Number", "odx.odxsecuritytoken.pts.itch.v1.2.sequencenumber", ftypes.STRING)
omi_odx_odxsecuritytoken_pts_itch_v1_2.fields.sequenced_message_type = ProtoField.new("Sequenced Message Type", "odx.odxsecuritytoken.pts.itch.v1.2.sequencedmessagetype", ftypes.STRING)
omi_odx_odxsecuritytoken_pts_itch_v1_2.fields.server_packet_type = ProtoField.new("Packet Type", "odx.odxsecuritytoken.pts.itch.v1.2.serverpackettype", ftypes.STRING)
omi_odx_odxsecuritytoken_pts_itch_v1_2.fields.session = ProtoField.new("Session", "odx.odxsecuritytoken.pts.itch.v1.2.session", ftypes.STRING)
omi_odx_odxsecuritytoken_pts_itch_v1_2.fields.state_name = ProtoField.new("State Name", "odx.odxsecuritytoken.pts.itch.v1.2.statename", ftypes.STRING)
omi_odx_odxsecuritytoken_pts_itch_v1_2.fields.system_event = ProtoField.new("System Event", "odx.odxsecuritytoken.pts.itch.v1.2.systemevent", ftypes.STRING)
omi_odx_odxsecuritytoken_pts_itch_v1_2.fields.termination_flag = ProtoField.new("Termination Flag", "odx.odxsecuritytoken.pts.itch.v1.2.terminationflag", ftypes.STRING)
omi_odx_odxsecuritytoken_pts_itch_v1_2.fields.text = ProtoField.new("Text", "odx.odxsecuritytoken.pts.itch.v1.2.text", ftypes.STRING)
omi_odx_odxsecuritytoken_pts_itch_v1_2.fields.trade_price = ProtoField.new("Trade Price", "odx.odxsecuritytoken.pts.itch.v1.2.tradeprice", ftypes.DOUBLE)
omi_odx_odxsecuritytoken_pts_itch_v1_2.fields.trading_state = ProtoField.new("Trading State", "odx.odxsecuritytoken.pts.itch.v1.2.tradingstate", ftypes.STRING)
omi_odx_odxsecuritytoken_pts_itch_v1_2.fields.unsequenced_message = ProtoField.new("Unsequenced Message", "odx.odxsecuritytoken.pts.itch.v1.2.unsequencedmessage", ftypes.BYTES)
omi_odx_odxsecuritytoken_pts_itch_v1_2.fields.unsequenced_message_type = ProtoField.new("Unsequenced Message Type", "odx.odxsecuritytoken.pts.itch.v1.2.unsequencedmessagetype", ftypes.STRING)
omi_odx_odxsecuritytoken_pts_itch_v1_2.fields.upper_price_limit = ProtoField.new("Upper Price Limit", "odx.odxsecuritytoken.pts.itch.v1.2.upperpricelimit", ftypes.DOUBLE)
omi_odx_odxsecuritytoken_pts_itch_v1_2.fields.username = ProtoField.new("Username", "odx.odxsecuritytoken.pts.itch.v1.2.username", ftypes.STRING)

-- Odx OdxSecurityToken Pts Itch 1.2 Headers
omi_odx_odxsecuritytoken_pts_itch_v1_2.fields.client_packet = ProtoField.new("Packet", "odx.odxsecuritytoken.pts.itch.v1.2.clientpacket", ftypes.STRING)
omi_odx_odxsecuritytoken_pts_itch_v1_2.fields.client_packet_header = ProtoField.new("Packet Header", "odx.odxsecuritytoken.pts.itch.v1.2.clientpacketheader", ftypes.STRING)
omi_odx_odxsecuritytoken_pts_itch_v1_2.fields.client_soup_bin_tcp_packet = ProtoField.new("Soup Bin Tcp Packet", "odx.odxsecuritytoken.pts.itch.v1.2.clientsoupbintcppacket", ftypes.STRING)
omi_odx_odxsecuritytoken_pts_itch_v1_2.fields.server_packet = ProtoField.new("Packet", "odx.odxsecuritytoken.pts.itch.v1.2.serverpacket", ftypes.STRING)
omi_odx_odxsecuritytoken_pts_itch_v1_2.fields.server_packet_header = ProtoField.new("Packet Header", "odx.odxsecuritytoken.pts.itch.v1.2.serverpacketheader", ftypes.STRING)
omi_odx_odxsecuritytoken_pts_itch_v1_2.fields.server_soup_bin_tcp_packet = ProtoField.new("Soup Bin Tcp Packet", "odx.odxsecuritytoken.pts.itch.v1.2.serversoupbintcppacket", ftypes.STRING)

-- Odx OdxSecurityToken Pts 1.2 Session Messages
omi_odx_odxsecuritytoken_pts_itch_v1_2.fields.debug_packet = ProtoField.new("Debug Packet", "odx.odxsecuritytoken.pts.itch.v1.2.debugpacket", ftypes.STRING)
omi_odx_odxsecuritytoken_pts_itch_v1_2.fields.login_accepted_packet = ProtoField.new("Login Accepted Packet", "odx.odxsecuritytoken.pts.itch.v1.2.loginacceptedpacket", ftypes.STRING)
omi_odx_odxsecuritytoken_pts_itch_v1_2.fields.login_rejected_packet = ProtoField.new("Login Rejected Packet", "odx.odxsecuritytoken.pts.itch.v1.2.loginrejectedpacket", ftypes.STRING)
omi_odx_odxsecuritytoken_pts_itch_v1_2.fields.login_request_packet = ProtoField.new("Login Request Packet", "odx.odxsecuritytoken.pts.itch.v1.2.loginrequestpacket", ftypes.STRING)
omi_odx_odxsecuritytoken_pts_itch_v1_2.fields.sequenced_data_packet = ProtoField.new("Sequenced Data Packet", "odx.odxsecuritytoken.pts.itch.v1.2.sequenceddatapacket", ftypes.STRING)
omi_odx_odxsecuritytoken_pts_itch_v1_2.fields.unsequenced_data_packet = ProtoField.new("Unsequenced Data Packet", "odx.odxsecuritytoken.pts.itch.v1.2.unsequenceddatapacket", ftypes.STRING)

-- Odx OdxSecurityToken Pts 1.2 Application Messages
omi_odx_odxsecuritytoken_pts_itch_v1_2.fields.equilibrium_price_update_message = ProtoField.new("Equilibrium Price Update Message", "odx.odxsecuritytoken.pts.itch.v1.2.equilibriumpriceupdatemessage", ftypes.STRING)
omi_odx_odxsecuritytoken_pts_itch_v1_2.fields.order_added_message = ProtoField.new("Order Added Message", "odx.odxsecuritytoken.pts.itch.v1.2.orderaddedmessage", ftypes.STRING)
omi_odx_odxsecuritytoken_pts_itch_v1_2.fields.order_book_state_message = ProtoField.new("Order Book State Message", "odx.odxsecuritytoken.pts.itch.v1.2.orderbookstatemessage", ftypes.STRING)
omi_odx_odxsecuritytoken_pts_itch_v1_2.fields.order_deleted_message = ProtoField.new("Order Deleted Message", "odx.odxsecuritytoken.pts.itch.v1.2.orderdeletedmessage", ftypes.STRING)
omi_odx_odxsecuritytoken_pts_itch_v1_2.fields.order_executed_with_price_message = ProtoField.new("Order Executed With Price Message", "odx.odxsecuritytoken.pts.itch.v1.2.orderexecutedwithpricemessage", ftypes.STRING)
omi_odx_odxsecuritytoken_pts_itch_v1_2.fields.order_replaced_message = ProtoField.new("Order Replaced Message", "odx.odxsecuritytoken.pts.itch.v1.2.orderreplacedmessage", ftypes.STRING)
omi_odx_odxsecuritytoken_pts_itch_v1_2.fields.orderbook_directory_message = ProtoField.new("Orderbook Directory Message", "odx.odxsecuritytoken.pts.itch.v1.2.orderbookdirectorymessage", ftypes.STRING)
omi_odx_odxsecuritytoken_pts_itch_v1_2.fields.price_tick_size_message = ProtoField.new("Price Tick Size Message", "odx.odxsecuritytoken.pts.itch.v1.2.priceticksizemessage", ftypes.STRING)
omi_odx_odxsecuritytoken_pts_itch_v1_2.fields.seconds_message = ProtoField.new("Seconds Message", "odx.odxsecuritytoken.pts.itch.v1.2.secondsmessage", ftypes.STRING)
omi_odx_odxsecuritytoken_pts_itch_v1_2.fields.system_event_message = ProtoField.new("System Event Message", "odx.odxsecuritytoken.pts.itch.v1.2.systemeventmessage", ftypes.STRING)
omi_odx_odxsecuritytoken_pts_itch_v1_2.fields.trading_state_message = ProtoField.new("Trading State Message", "odx.odxsecuritytoken.pts.itch.v1.2.tradingstatemessage", ftypes.STRING)

-- Odx OdxSecurityToken Pts Itch 1.2 generated fields
omi_odx_odxsecuritytoken_pts_itch_v1_2.fields.sequenced_data_packet_sequence_number = ProtoField.new("Sequenced Data Packet Sequence Number", "odx.odxsecuritytoken.pts.itch.v1.2.sequenceddatapacketsequencenumber", ftypes.UINT64)
omi_odx_odxsecuritytoken_pts_itch_v1_2.fields.timestamp = ProtoField.new("Timestamp", "odx.odxsecuritytoken.pts.itch.v1.2.timestamp", ftypes.UINT64)

-----------------------------------------------------------------------
-- Odx OdxSecurityToken Pts Itch 1.2 Formatting
-----------------------------------------------------------------------

-- timestamp format
local timestamp_format_enum = {
  { 1, "Raw", 0 },
  { 2, "Time of Day", 1 },
  { 3, "Full DateTime", 2 }
}

-- 0=Raw, 1=TimeOfDay, 2=FullDateTime
odx_odxsecuritytoken_pts_itch_v1_2.timestamp_format = 2

-- Hours ahead of UTC (JST) for midnight calculation
odx_odxsecuritytoken_pts_itch_v1_2.utc_offset_hours = 9

-- Timestamp format (true = decimal-scaled, false = raw mantissa)
odx_odxsecuritytoken_pts_itch_v1_2.format_timestamp = true


-----------------------------------------------------------------------
-- Declare Dissection Options
-----------------------------------------------------------------------

local show = {}

-- Odx OdxSecurityToken Pts Itch 1.2 Element Dissection Options
show.structs = true
show.session_messages = true
show.application_messages = true
show.sequences = true

-- Register Odx OdxSecurityToken Pts Itch 1.2 Show Options
local role_enum = {
  { 1, "Resolve from the conversation", 0 },
  { 2, "Initiator", 1 },
  { 3, "Acceptor", 2 }
}
omi_odx_odxsecuritytoken_pts_itch_v1_2.prefs.acceptor_port = Pref.uint("Acceptor Port", 0, "Port the acceptor listens on; 0 resolves each frame's role from its conversation")
omi_odx_odxsecuritytoken_pts_itch_v1_2.prefs.assume_role = Pref.enum("Assume Role", 0, "Connection role assumed for every frame, for captures that start mid conversation", role_enum, false)
omi_odx_odxsecuritytoken_pts_itch_v1_2.prefs.swap_sides = Pref.bool("Swap Sides", false, "The first frame seen of each conversation was the acceptor's, not the initiator's; for captures that start mid conversation")
omi_odx_odxsecuritytoken_pts_itch_v1_2.prefs.show_structs = Pref.bool("Show Structs", show.structs, "Parse and add Structs to protocol tree")
omi_odx_odxsecuritytoken_pts_itch_v1_2.prefs.show_session_messages = Pref.bool("Show Session Messages", show.session_messages, "Parse and add Session Messages to protocol tree")
omi_odx_odxsecuritytoken_pts_itch_v1_2.prefs.show_application_messages = Pref.bool("Show Application Messages", show.application_messages, "Parse and add Application Messages to protocol tree")
omi_odx_odxsecuritytoken_pts_itch_v1_2.prefs.show_sequences = Pref.bool("Show Sequence Numbers", show.sequences, "Show each message's own feed sequence number in the protocol tree")
omi_odx_odxsecuritytoken_pts_itch_v1_2.prefs.format_timestamp = Pref.bool("Format Timestamp", true, "Compose Timestamp with the stored seconds anchor (off = raw nanoseconds)")

omi_odx_odxsecuritytoken_pts_itch_v1_2.prefs.timestamp_format = Pref.enum("Nanoseconds Format", 2, "Nanoseconds display format", timestamp_format_enum, false)
omi_odx_odxsecuritytoken_pts_itch_v1_2.prefs.utc_offset_hours = Pref.uint("UTC Offset (hours)", 9, "Hours ahead of UTC (JST) for midnight calculation")

-- Handle changed preferences
function omi_odx_odxsecuritytoken_pts_itch_v1_2.prefs_changed()

  -- Check if preferences have changed
  if show.application_messages ~= omi_odx_odxsecuritytoken_pts_itch_v1_2.prefs.show_application_messages then
    show.application_messages = omi_odx_odxsecuritytoken_pts_itch_v1_2.prefs.show_application_messages
  end
  if show.session_messages ~= omi_odx_odxsecuritytoken_pts_itch_v1_2.prefs.show_session_messages then
    show.session_messages = omi_odx_odxsecuritytoken_pts_itch_v1_2.prefs.show_session_messages
  end
  if show.structs ~= omi_odx_odxsecuritytoken_pts_itch_v1_2.prefs.show_structs then
    show.structs = omi_odx_odxsecuritytoken_pts_itch_v1_2.prefs.show_structs
  end
  if show.sequences ~= omi_odx_odxsecuritytoken_pts_itch_v1_2.prefs.show_sequences then
    show.sequences = omi_odx_odxsecuritytoken_pts_itch_v1_2.prefs.show_sequences
  end
  if odx_odxsecuritytoken_pts_itch_v1_2.format_timestamp ~= omi_odx_odxsecuritytoken_pts_itch_v1_2.prefs.format_timestamp then
    odx_odxsecuritytoken_pts_itch_v1_2.format_timestamp = omi_odx_odxsecuritytoken_pts_itch_v1_2.prefs.format_timestamp
  end
  if odx_odxsecuritytoken_pts_itch_v1_2.timestamp_format ~= omi_odx_odxsecuritytoken_pts_itch_v1_2.prefs.timestamp_format then
    odx_odxsecuritytoken_pts_itch_v1_2.timestamp_format = omi_odx_odxsecuritytoken_pts_itch_v1_2.prefs.timestamp_format
  end
  if odx_odxsecuritytoken_pts_itch_v1_2.utc_offset_hours ~= omi_odx_odxsecuritytoken_pts_itch_v1_2.prefs.utc_offset_hours then
    odx_odxsecuritytoken_pts_itch_v1_2.utc_offset_hours = omi_odx_odxsecuritytoken_pts_itch_v1_2.prefs.utc_offset_hours
  end
end


-----------------------------------------------------------------------
-- Protocol Conversation State
-----------------------------------------------------------------------

-- State, keyed by src/dst tuple
odx_odxsecuritytoken_pts_itch_v1_2.conversation = {}
odx_odxsecuritytoken_pts_itch_v1_2.conversation.flows = {}

-- Revisit replay cursor for stream sequences: which frame is being
-- re-dissected and which memoized occurrence within it is next
odx_odxsecuritytoken_pts_itch_v1_2.stream_frame = nil
odx_odxsecuritytoken_pts_itch_v1_2.stream_occurrence = 0

-- Conversation key for the current packet (src/dst tuple)
odx_odxsecuritytoken_pts_itch_v1_2.conversation.key = function(packet)
  return string.format("%s|%s|%s|%s", tostring(packet.src), packet.src_port, tostring(packet.dst), packet.dst_port)
end


-- Get/create our protocol's data record for the current packet's flow
odx_odxsecuritytoken_pts_itch_v1_2.conversation.data = function(packet)
  local key = odx_odxsecuritytoken_pts_itch_v1_2.conversation.key(packet)
  local data = odx_odxsecuritytoken_pts_itch_v1_2.conversation.flows[key]
  if data == nil then
    data = { seconds = { last = nil, frames = {} }, sequence = { next = nil, frames = {} } }
    odx_odxsecuritytoken_pts_itch_v1_2.conversation.flows[key] = data
  end
  return data
end


-- Handle to the current packet's conversation data
odx_odxsecuritytoken_pts_itch_v1_2.conversation.current = nil


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
-- Odx OdxSecurityToken Pts Itch 1.2 Fields
-----------------------------------------------------------------------

-- Attention Flag
odx_odxsecuritytoken_pts_itch_v1_2.attention_flag = {}

-- Size: Attention Flag
odx_odxsecuritytoken_pts_itch_v1_2.attention_flag.size = 1

-- Display: Attention Flag
odx_odxsecuritytoken_pts_itch_v1_2.attention_flag.display = function(value)
  if value == "Y" then
    return "Attention Flag: True (Y)"
  end
  if value == "N" then
    return "Attention Flag: False (N)"
  end

  return "Attention Flag: Unknown("..value..")"
end

-- Dissect: Attention Flag
odx_odxsecuritytoken_pts_itch_v1_2.attention_flag.dissect = function(buffer, offset, packet, parent)
  local length = odx_odxsecuritytoken_pts_itch_v1_2.attention_flag.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = odx_odxsecuritytoken_pts_itch_v1_2.attention_flag.display(value, buffer, offset, packet, parent)

  parent:add(omi_odx_odxsecuritytoken_pts_itch_v1_2.fields.attention_flag, range, value, display)

  return offset + length, value
end

-- Buy Sell Indicator
odx_odxsecuritytoken_pts_itch_v1_2.buy_sell_indicator = {}

-- Size: Buy Sell Indicator
odx_odxsecuritytoken_pts_itch_v1_2.buy_sell_indicator.size = 1

-- Display: Buy Sell Indicator
odx_odxsecuritytoken_pts_itch_v1_2.buy_sell_indicator.display = function(value)
  if value == "B" then
    return "Buy Sell Indicator: Buy (B)"
  end
  if value == "S" then
    return "Buy Sell Indicator: Sell (S)"
  end

  return "Buy Sell Indicator: Unknown("..value..")"
end

-- Dissect: Buy Sell Indicator
odx_odxsecuritytoken_pts_itch_v1_2.buy_sell_indicator.dissect = function(buffer, offset, packet, parent)
  local length = odx_odxsecuritytoken_pts_itch_v1_2.buy_sell_indicator.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = odx_odxsecuritytoken_pts_itch_v1_2.buy_sell_indicator.display(value, buffer, offset, packet, parent)

  parent:add(omi_odx_odxsecuritytoken_pts_itch_v1_2.fields.buy_sell_indicator, range, value, display)

  return offset + length, value
end

-- Client Packet Type
odx_odxsecuritytoken_pts_itch_v1_2.client_packet_type = {}

-- Size: Client Packet Type
odx_odxsecuritytoken_pts_itch_v1_2.client_packet_type.size = 1

-- Display: Client Packet Type
odx_odxsecuritytoken_pts_itch_v1_2.client_packet_type.display = function(value)
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
odx_odxsecuritytoken_pts_itch_v1_2.client_packet_type.dissect = function(buffer, offset, packet, parent)
  local length = odx_odxsecuritytoken_pts_itch_v1_2.client_packet_type.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = odx_odxsecuritytoken_pts_itch_v1_2.client_packet_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_odx_odxsecuritytoken_pts_itch_v1_2.fields.client_packet_type, range, value, display)

  return offset + length, value
end

-- Equilibrium Price
odx_odxsecuritytoken_pts_itch_v1_2.equilibrium_price = {}

-- Size: Equilibrium Price
odx_odxsecuritytoken_pts_itch_v1_2.equilibrium_price.size = 4

-- Display: Equilibrium Price
odx_odxsecuritytoken_pts_itch_v1_2.equilibrium_price.display = function(value)
  return "Equilibrium Price: "..value
end

-- Translate: Equilibrium Price
odx_odxsecuritytoken_pts_itch_v1_2.equilibrium_price.translate = function(raw)
  return raw/100
end

-- Dissect: Equilibrium Price
odx_odxsecuritytoken_pts_itch_v1_2.equilibrium_price.dissect = function(buffer, offset, packet, parent)
  local length = odx_odxsecuritytoken_pts_itch_v1_2.equilibrium_price.size
  local range = buffer(offset, length)
  local raw = range:uint()
  local value = odx_odxsecuritytoken_pts_itch_v1_2.equilibrium_price.translate(raw)
  local display = odx_odxsecuritytoken_pts_itch_v1_2.equilibrium_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_odx_odxsecuritytoken_pts_itch_v1_2.fields.equilibrium_price, range, value, display)

  return offset + length, value
end

-- Exchange Symbol
odx_odxsecuritytoken_pts_itch_v1_2.exchange_symbol = {}

-- Size: Exchange Symbol
odx_odxsecuritytoken_pts_itch_v1_2.exchange_symbol.size = 12

-- Display: Exchange Symbol
odx_odxsecuritytoken_pts_itch_v1_2.exchange_symbol.display = function(value)
  return "Exchange Symbol: "..value
end

-- Dissect: Exchange Symbol
odx_odxsecuritytoken_pts_itch_v1_2.exchange_symbol.dissect = function(buffer, offset, packet, parent)
  local length = odx_odxsecuritytoken_pts_itch_v1_2.exchange_symbol.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = odx_odxsecuritytoken_pts_itch_v1_2.exchange_symbol.display(value, buffer, offset, packet, parent)

  parent:add(omi_odx_odxsecuritytoken_pts_itch_v1_2.fields.exchange_symbol, range, value, display)

  return offset + length, value
end

-- Executed Quantity
odx_odxsecuritytoken_pts_itch_v1_2.executed_quantity = {}

-- Size: Executed Quantity
odx_odxsecuritytoken_pts_itch_v1_2.executed_quantity.size = 4

-- Display: Executed Quantity
odx_odxsecuritytoken_pts_itch_v1_2.executed_quantity.display = function(value)
  return "Executed Quantity: "..value
end

-- Dissect: Executed Quantity
odx_odxsecuritytoken_pts_itch_v1_2.executed_quantity.dissect = function(buffer, offset, packet, parent)
  local length = odx_odxsecuritytoken_pts_itch_v1_2.executed_quantity.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = odx_odxsecuritytoken_pts_itch_v1_2.executed_quantity.display(value, buffer, offset, packet, parent)

  parent:add(omi_odx_odxsecuritytoken_pts_itch_v1_2.fields.executed_quantity, range, value, display)

  return offset + length, value
end

-- Group
odx_odxsecuritytoken_pts_itch_v1_2.group = {}

-- Size: Group
odx_odxsecuritytoken_pts_itch_v1_2.group.size = 4

-- Display: Group
odx_odxsecuritytoken_pts_itch_v1_2.group.display = function(value)
  return "Group: "..value
end

-- Dissect: Group
odx_odxsecuritytoken_pts_itch_v1_2.group.dissect = function(buffer, offset, packet, parent)
  local length = odx_odxsecuritytoken_pts_itch_v1_2.group.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = odx_odxsecuritytoken_pts_itch_v1_2.group.display(value, buffer, offset, packet, parent)

  parent:add(omi_odx_odxsecuritytoken_pts_itch_v1_2.fields.group, range, value, display)

  return offset + length, value
end

-- Lower Price Limit
odx_odxsecuritytoken_pts_itch_v1_2.lower_price_limit = {}

-- Size: Lower Price Limit
odx_odxsecuritytoken_pts_itch_v1_2.lower_price_limit.size = 4

-- Display: Lower Price Limit
odx_odxsecuritytoken_pts_itch_v1_2.lower_price_limit.display = function(value)
  return "Lower Price Limit: "..value
end

-- Translate: Lower Price Limit
odx_odxsecuritytoken_pts_itch_v1_2.lower_price_limit.translate = function(raw)
  return raw/100
end

-- Dissect: Lower Price Limit
odx_odxsecuritytoken_pts_itch_v1_2.lower_price_limit.dissect = function(buffer, offset, packet, parent)
  local length = odx_odxsecuritytoken_pts_itch_v1_2.lower_price_limit.size
  local range = buffer(offset, length)
  local raw = range:uint()
  local value = odx_odxsecuritytoken_pts_itch_v1_2.lower_price_limit.translate(raw)
  local display = odx_odxsecuritytoken_pts_itch_v1_2.lower_price_limit.display(value, buffer, offset, packet, parent)

  parent:add(omi_odx_odxsecuritytoken_pts_itch_v1_2.fields.lower_price_limit, range, value, display)

  return offset + length, value
end

-- Match Number
odx_odxsecuritytoken_pts_itch_v1_2.match_number = {}

-- Size: Match Number
odx_odxsecuritytoken_pts_itch_v1_2.match_number.size = 8

-- Display: Match Number
odx_odxsecuritytoken_pts_itch_v1_2.match_number.display = function(value)
  return "Match Number: "..value
end

-- Dissect: Match Number
odx_odxsecuritytoken_pts_itch_v1_2.match_number.dissect = function(buffer, offset, packet, parent)
  local length = odx_odxsecuritytoken_pts_itch_v1_2.match_number.size
  local range = buffer(offset, length)
  local value = range:uint64()
  local display = odx_odxsecuritytoken_pts_itch_v1_2.match_number.display(value, buffer, offset, packet, parent)

  parent:add(omi_odx_odxsecuritytoken_pts_itch_v1_2.fields.match_number, range, value, display)

  return offset + length, value
end

-- Nanoseconds
odx_odxsecuritytoken_pts_itch_v1_2.nanoseconds = {}

-- Size: Nanoseconds
odx_odxsecuritytoken_pts_itch_v1_2.nanoseconds.size = 4

-- Display: Nanoseconds
odx_odxsecuritytoken_pts_itch_v1_2.nanoseconds.display = function(value)
  return "Nanoseconds: "..value
end

-- Dissect: Nanoseconds
odx_odxsecuritytoken_pts_itch_v1_2.nanoseconds.dissect = function(buffer, offset, packet, parent)
  local length = odx_odxsecuritytoken_pts_itch_v1_2.nanoseconds.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = odx_odxsecuritytoken_pts_itch_v1_2.nanoseconds.display(value, buffer, offset, packet, parent)

  parent:add(omi_odx_odxsecuritytoken_pts_itch_v1_2.fields.nanoseconds, range, value, display)

  return offset + length, value
end

-- New Order Number
odx_odxsecuritytoken_pts_itch_v1_2.new_order_number = {}

-- Size: New Order Number
odx_odxsecuritytoken_pts_itch_v1_2.new_order_number.size = 8

-- Display: New Order Number
odx_odxsecuritytoken_pts_itch_v1_2.new_order_number.display = function(value)
  return "New Order Number: "..value
end

-- Dissect: New Order Number
odx_odxsecuritytoken_pts_itch_v1_2.new_order_number.dissect = function(buffer, offset, packet, parent)
  local length = odx_odxsecuritytoken_pts_itch_v1_2.new_order_number.size
  local range = buffer(offset, length)
  local value = range:uint64()
  local display = odx_odxsecuritytoken_pts_itch_v1_2.new_order_number.display(value, buffer, offset, packet, parent)

  parent:add(omi_odx_odxsecuritytoken_pts_itch_v1_2.fields.new_order_number, range, value, display)

  return offset + length, value
end

-- Occurred As Cross
odx_odxsecuritytoken_pts_itch_v1_2.occurred_as_cross = {}

-- Size: Occurred As Cross
odx_odxsecuritytoken_pts_itch_v1_2.occurred_as_cross.size = 1

-- Display: Occurred As Cross
odx_odxsecuritytoken_pts_itch_v1_2.occurred_as_cross.display = function(value)
  if value == "Y" then
    return "Occurred As Cross: Trade Occurred At The Cross (Y)"
  end

  return "Occurred As Cross: Unknown("..value..")"
end

-- Dissect: Occurred As Cross
odx_odxsecuritytoken_pts_itch_v1_2.occurred_as_cross.dissect = function(buffer, offset, packet, parent)
  local length = odx_odxsecuritytoken_pts_itch_v1_2.occurred_as_cross.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = odx_odxsecuritytoken_pts_itch_v1_2.occurred_as_cross.display(value, buffer, offset, packet, parent)

  parent:add(omi_odx_odxsecuritytoken_pts_itch_v1_2.fields.occurred_as_cross, range, value, display)

  return offset + length, value
end

-- Order Number
odx_odxsecuritytoken_pts_itch_v1_2.order_number = {}

-- Size: Order Number
odx_odxsecuritytoken_pts_itch_v1_2.order_number.size = 8

-- Display: Order Number
odx_odxsecuritytoken_pts_itch_v1_2.order_number.display = function(value)
  return "Order Number: "..value
end

-- Dissect: Order Number
odx_odxsecuritytoken_pts_itch_v1_2.order_number.dissect = function(buffer, offset, packet, parent)
  local length = odx_odxsecuritytoken_pts_itch_v1_2.order_number.size
  local range = buffer(offset, length)
  local value = range:uint64()
  local display = odx_odxsecuritytoken_pts_itch_v1_2.order_number.display(value, buffer, offset, packet, parent)

  parent:add(omi_odx_odxsecuritytoken_pts_itch_v1_2.fields.order_number, range, value, display)

  return offset + length, value
end

-- Orderbook Code
odx_odxsecuritytoken_pts_itch_v1_2.orderbook_code = {}

-- Size: Orderbook Code
odx_odxsecuritytoken_pts_itch_v1_2.orderbook_code.size = 12

-- Display: Orderbook Code
odx_odxsecuritytoken_pts_itch_v1_2.orderbook_code.display = function(value)
  return "Orderbook Code: "..value
end

-- Dissect: Orderbook Code
odx_odxsecuritytoken_pts_itch_v1_2.orderbook_code.dissect = function(buffer, offset, packet, parent)
  local length = odx_odxsecuritytoken_pts_itch_v1_2.orderbook_code.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = odx_odxsecuritytoken_pts_itch_v1_2.orderbook_code.display(value, buffer, offset, packet, parent)

  parent:add(omi_odx_odxsecuritytoken_pts_itch_v1_2.fields.orderbook_code, range, value, display)

  return offset + length, value
end

-- Orderbook Id
odx_odxsecuritytoken_pts_itch_v1_2.orderbook_id = {}

-- Size: Orderbook Id
odx_odxsecuritytoken_pts_itch_v1_2.orderbook_id.size = 4

-- Display: Orderbook Id
odx_odxsecuritytoken_pts_itch_v1_2.orderbook_id.display = function(value)
  return "Orderbook Id: "..value
end

-- Dissect: Orderbook Id
odx_odxsecuritytoken_pts_itch_v1_2.orderbook_id.dissect = function(buffer, offset, packet, parent)
  local length = odx_odxsecuritytoken_pts_itch_v1_2.orderbook_id.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = odx_odxsecuritytoken_pts_itch_v1_2.orderbook_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_odx_odxsecuritytoken_pts_itch_v1_2.fields.orderbook_id, range, value, display)

  return offset + length, value
end

-- Original Order Number
odx_odxsecuritytoken_pts_itch_v1_2.original_order_number = {}

-- Size: Original Order Number
odx_odxsecuritytoken_pts_itch_v1_2.original_order_number.size = 8

-- Display: Original Order Number
odx_odxsecuritytoken_pts_itch_v1_2.original_order_number.display = function(value)
  return "Original Order Number: "..value
end

-- Dissect: Original Order Number
odx_odxsecuritytoken_pts_itch_v1_2.original_order_number.dissect = function(buffer, offset, packet, parent)
  local length = odx_odxsecuritytoken_pts_itch_v1_2.original_order_number.size
  local range = buffer(offset, length)
  local value = range:uint64()
  local display = odx_odxsecuritytoken_pts_itch_v1_2.original_order_number.display(value, buffer, offset, packet, parent)

  parent:add(omi_odx_odxsecuritytoken_pts_itch_v1_2.fields.original_order_number, range, value, display)

  return offset + length, value
end

-- Packet Length
odx_odxsecuritytoken_pts_itch_v1_2.packet_length = {}

-- Size: Packet Length
odx_odxsecuritytoken_pts_itch_v1_2.packet_length.size = 2

-- Display: Packet Length
odx_odxsecuritytoken_pts_itch_v1_2.packet_length.display = function(value)
  return "Packet Length: "..value
end

-- Dissect: Packet Length
odx_odxsecuritytoken_pts_itch_v1_2.packet_length.dissect = function(buffer, offset, packet, parent)
  local length = odx_odxsecuritytoken_pts_itch_v1_2.packet_length.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = odx_odxsecuritytoken_pts_itch_v1_2.packet_length.display(value, buffer, offset, packet, parent)

  parent:add(omi_odx_odxsecuritytoken_pts_itch_v1_2.fields.packet_length, range, value, display)

  return offset + length, value
end

-- Password
odx_odxsecuritytoken_pts_itch_v1_2.password = {}

-- Size: Password
odx_odxsecuritytoken_pts_itch_v1_2.password.size = 10

-- Display: Password
odx_odxsecuritytoken_pts_itch_v1_2.password.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Password: No Value"
  end

  return "Password: "..value
end

-- Dissect: Password
odx_odxsecuritytoken_pts_itch_v1_2.password.dissect = function(buffer, offset, packet, parent)
  local length = odx_odxsecuritytoken_pts_itch_v1_2.password.size
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

  local display = odx_odxsecuritytoken_pts_itch_v1_2.password.display(value, buffer, offset, packet, parent)

  parent:add(omi_odx_odxsecuritytoken_pts_itch_v1_2.fields.password, range, value, display)

  return offset + length, value
end

-- Price
odx_odxsecuritytoken_pts_itch_v1_2.price = {}

-- Size: Price
odx_odxsecuritytoken_pts_itch_v1_2.price.size = 4

-- Display: Price
odx_odxsecuritytoken_pts_itch_v1_2.price.display = function(value)
  return "Price: "..value
end

-- Translate: Price
odx_odxsecuritytoken_pts_itch_v1_2.price.translate = function(raw)
  return raw/100
end

-- Dissect: Price
odx_odxsecuritytoken_pts_itch_v1_2.price.dissect = function(buffer, offset, packet, parent)
  local length = odx_odxsecuritytoken_pts_itch_v1_2.price.size
  local range = buffer(offset, length)
  local raw = range:uint()
  local value = odx_odxsecuritytoken_pts_itch_v1_2.price.translate(raw)
  local display = odx_odxsecuritytoken_pts_itch_v1_2.price.display(value, buffer, offset, packet, parent)

  parent:add(omi_odx_odxsecuritytoken_pts_itch_v1_2.fields.price, range, value, display)

  return offset + length, value
end

-- Price Decimals
odx_odxsecuritytoken_pts_itch_v1_2.price_decimals = {}

-- Size: Price Decimals
odx_odxsecuritytoken_pts_itch_v1_2.price_decimals.size = 4

-- Display: Price Decimals
odx_odxsecuritytoken_pts_itch_v1_2.price_decimals.display = function(value)
  return "Price Decimals: "..value
end

-- Dissect: Price Decimals
odx_odxsecuritytoken_pts_itch_v1_2.price_decimals.dissect = function(buffer, offset, packet, parent)
  local length = odx_odxsecuritytoken_pts_itch_v1_2.price_decimals.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = odx_odxsecuritytoken_pts_itch_v1_2.price_decimals.display(value, buffer, offset, packet, parent)

  parent:add(omi_odx_odxsecuritytoken_pts_itch_v1_2.fields.price_decimals, range, value, display)

  return offset + length, value
end

-- Price Start
odx_odxsecuritytoken_pts_itch_v1_2.price_start = {}

-- Size: Price Start
odx_odxsecuritytoken_pts_itch_v1_2.price_start.size = 4

-- Display: Price Start
odx_odxsecuritytoken_pts_itch_v1_2.price_start.display = function(value)
  return "Price Start: "..value
end

-- Translate: Price Start
odx_odxsecuritytoken_pts_itch_v1_2.price_start.translate = function(raw)
  return raw/100
end

-- Dissect: Price Start
odx_odxsecuritytoken_pts_itch_v1_2.price_start.dissect = function(buffer, offset, packet, parent)
  local length = odx_odxsecuritytoken_pts_itch_v1_2.price_start.size
  local range = buffer(offset, length)
  local raw = range:uint()
  local value = odx_odxsecuritytoken_pts_itch_v1_2.price_start.translate(raw)
  local display = odx_odxsecuritytoken_pts_itch_v1_2.price_start.display(value, buffer, offset, packet, parent)

  parent:add(omi_odx_odxsecuritytoken_pts_itch_v1_2.fields.price_start, range, value, display)

  return offset + length, value
end

-- Price Tick Size
odx_odxsecuritytoken_pts_itch_v1_2.price_tick_size = {}

-- Size: Price Tick Size
odx_odxsecuritytoken_pts_itch_v1_2.price_tick_size.size = 4

-- Display: Price Tick Size
odx_odxsecuritytoken_pts_itch_v1_2.price_tick_size.display = function(value)
  return "Price Tick Size: "..value
end

-- Translate: Price Tick Size
odx_odxsecuritytoken_pts_itch_v1_2.price_tick_size.translate = function(raw)
  return raw/100
end

-- Dissect: Price Tick Size
odx_odxsecuritytoken_pts_itch_v1_2.price_tick_size.dissect = function(buffer, offset, packet, parent)
  local length = odx_odxsecuritytoken_pts_itch_v1_2.price_tick_size.size
  local range = buffer(offset, length)
  local raw = range:uint()
  local value = odx_odxsecuritytoken_pts_itch_v1_2.price_tick_size.translate(raw)
  local display = odx_odxsecuritytoken_pts_itch_v1_2.price_tick_size.display(value, buffer, offset, packet, parent)

  parent:add(omi_odx_odxsecuritytoken_pts_itch_v1_2.fields.price_tick_size, range, value, display)

  return offset + length, value
end

-- Price Tick Size Table Id
odx_odxsecuritytoken_pts_itch_v1_2.price_tick_size_table_id = {}

-- Size: Price Tick Size Table Id
odx_odxsecuritytoken_pts_itch_v1_2.price_tick_size_table_id.size = 4

-- Display: Price Tick Size Table Id
odx_odxsecuritytoken_pts_itch_v1_2.price_tick_size_table_id.display = function(value)
  return "Price Tick Size Table Id: "..value
end

-- Dissect: Price Tick Size Table Id
odx_odxsecuritytoken_pts_itch_v1_2.price_tick_size_table_id.dissect = function(buffer, offset, packet, parent)
  local length = odx_odxsecuritytoken_pts_itch_v1_2.price_tick_size_table_id.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = odx_odxsecuritytoken_pts_itch_v1_2.price_tick_size_table_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_odx_odxsecuritytoken_pts_itch_v1_2.fields.price_tick_size_table_id, range, value, display)

  return offset + length, value
end

-- Quantity
odx_odxsecuritytoken_pts_itch_v1_2.quantity = {}

-- Size: Quantity
odx_odxsecuritytoken_pts_itch_v1_2.quantity.size = 4

-- Display: Quantity
odx_odxsecuritytoken_pts_itch_v1_2.quantity.display = function(value)
  return "Quantity: "..value
end

-- Dissect: Quantity
odx_odxsecuritytoken_pts_itch_v1_2.quantity.dissect = function(buffer, offset, packet, parent)
  local length = odx_odxsecuritytoken_pts_itch_v1_2.quantity.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = odx_odxsecuritytoken_pts_itch_v1_2.quantity.display(value, buffer, offset, packet, parent)

  parent:add(omi_odx_odxsecuritytoken_pts_itch_v1_2.fields.quantity, range, value, display)

  return offset + length, value
end

-- Reject Reason Code
odx_odxsecuritytoken_pts_itch_v1_2.reject_reason_code = {}

-- Size: Reject Reason Code
odx_odxsecuritytoken_pts_itch_v1_2.reject_reason_code.size = 1

-- Display: Reject Reason Code
odx_odxsecuritytoken_pts_itch_v1_2.reject_reason_code.display = function(value)
  return "Reject Reason Code: "..value
end

-- Dissect: Reject Reason Code
odx_odxsecuritytoken_pts_itch_v1_2.reject_reason_code.dissect = function(buffer, offset, packet, parent)
  local length = odx_odxsecuritytoken_pts_itch_v1_2.reject_reason_code.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = odx_odxsecuritytoken_pts_itch_v1_2.reject_reason_code.display(value, buffer, offset, packet, parent)

  parent:add(omi_odx_odxsecuritytoken_pts_itch_v1_2.fields.reject_reason_code, range, value, display)

  return offset + length, value
end

-- Requested Sequence Number
odx_odxsecuritytoken_pts_itch_v1_2.requested_sequence_number = {}

-- Size: Requested Sequence Number
odx_odxsecuritytoken_pts_itch_v1_2.requested_sequence_number.size = 20

-- Display: Requested Sequence Number
odx_odxsecuritytoken_pts_itch_v1_2.requested_sequence_number.display = function(value)
  return "Requested Sequence Number: "..value
end

-- Dissect: Requested Sequence Number
odx_odxsecuritytoken_pts_itch_v1_2.requested_sequence_number.dissect = function(buffer, offset, packet, parent)
  local length = odx_odxsecuritytoken_pts_itch_v1_2.requested_sequence_number.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value =  "Not Applicable"
  end

  local display = odx_odxsecuritytoken_pts_itch_v1_2.requested_sequence_number.display(value, buffer, offset, packet, parent)

  parent:add(omi_odx_odxsecuritytoken_pts_itch_v1_2.fields.requested_sequence_number, range, value, display)

  return offset + length, value
end

-- Requested Session
odx_odxsecuritytoken_pts_itch_v1_2.requested_session = {}

-- Size: Requested Session
odx_odxsecuritytoken_pts_itch_v1_2.requested_session.size = 10

-- Display: Requested Session
odx_odxsecuritytoken_pts_itch_v1_2.requested_session.display = function(value)
  return "Requested Session: "..value
end

-- Dissect: Requested Session
odx_odxsecuritytoken_pts_itch_v1_2.requested_session.dissect = function(buffer, offset, packet, parent)
  local length = odx_odxsecuritytoken_pts_itch_v1_2.requested_session.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = odx_odxsecuritytoken_pts_itch_v1_2.requested_session.display(value, buffer, offset, packet, parent)

  parent:add(omi_odx_odxsecuritytoken_pts_itch_v1_2.fields.requested_session, range, value, display)

  return offset + length, value
end

-- Restriction Of Market Order
odx_odxsecuritytoken_pts_itch_v1_2.restriction_of_market_order = {}

-- Size: Restriction Of Market Order
odx_odxsecuritytoken_pts_itch_v1_2.restriction_of_market_order.size = 1

-- Display: Restriction Of Market Order
odx_odxsecuritytoken_pts_itch_v1_2.restriction_of_market_order.display = function(value)
  if value == "Y" then
    return "Restriction Of Market Order: True (Y)"
  end
  if value == "N" then
    return "Restriction Of Market Order: False (N)"
  end

  return "Restriction Of Market Order: Unknown("..value..")"
end

-- Dissect: Restriction Of Market Order
odx_odxsecuritytoken_pts_itch_v1_2.restriction_of_market_order.dissect = function(buffer, offset, packet, parent)
  local length = odx_odxsecuritytoken_pts_itch_v1_2.restriction_of_market_order.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = odx_odxsecuritytoken_pts_itch_v1_2.restriction_of_market_order.display(value, buffer, offset, packet, parent)

  parent:add(omi_odx_odxsecuritytoken_pts_itch_v1_2.fields.restriction_of_market_order, range, value, display)

  return offset + length, value
end

-- Round Lot Size
odx_odxsecuritytoken_pts_itch_v1_2.round_lot_size = {}

-- Size: Round Lot Size
odx_odxsecuritytoken_pts_itch_v1_2.round_lot_size.size = 4

-- Display: Round Lot Size
odx_odxsecuritytoken_pts_itch_v1_2.round_lot_size.display = function(value)
  return "Round Lot Size: "..value
end

-- Dissect: Round Lot Size
odx_odxsecuritytoken_pts_itch_v1_2.round_lot_size.dissect = function(buffer, offset, packet, parent)
  local length = odx_odxsecuritytoken_pts_itch_v1_2.round_lot_size.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = odx_odxsecuritytoken_pts_itch_v1_2.round_lot_size.display(value, buffer, offset, packet, parent)

  parent:add(omi_odx_odxsecuritytoken_pts_itch_v1_2.fields.round_lot_size, range, value, display)

  return offset + length, value
end

-- Seconds
odx_odxsecuritytoken_pts_itch_v1_2.seconds = {}

-- Size: Seconds
odx_odxsecuritytoken_pts_itch_v1_2.seconds.size = 4

-- Store: Seconds
odx_odxsecuritytoken_pts_itch_v1_2.seconds.current = nil

-- Generated: Seconds
odx_odxsecuritytoken_pts_itch_v1_2.seconds.generated = function(value, range, packet, parent)
  local display = odx_odxsecuritytoken_pts_itch_v1_2.seconds.display(value)
  local seconds = parent:add(omi_odx_odxsecuritytoken_pts_itch_v1_2.fields.seconds, range, value, display)
  seconds:set_generated()
end

-- Display: Seconds
odx_odxsecuritytoken_pts_itch_v1_2.seconds.display = function(value)
  return "Seconds: "..value
end

-- Dissect: Seconds
odx_odxsecuritytoken_pts_itch_v1_2.seconds.dissect = function(buffer, offset, packet, parent)
  local length = odx_odxsecuritytoken_pts_itch_v1_2.seconds.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = odx_odxsecuritytoken_pts_itch_v1_2.seconds.display(value, buffer, offset, packet, parent)

  parent:add(omi_odx_odxsecuritytoken_pts_itch_v1_2.fields.seconds, range, value, display)

  return offset + length, value
end

-- Sequence Number
odx_odxsecuritytoken_pts_itch_v1_2.sequence_number = {}

-- Size: Sequence Number
odx_odxsecuritytoken_pts_itch_v1_2.sequence_number.size = 20

-- Display: Sequence Number
odx_odxsecuritytoken_pts_itch_v1_2.sequence_number.display = function(value)
  return "Sequence Number: "..value
end

-- Dissect: Sequence Number
odx_odxsecuritytoken_pts_itch_v1_2.sequence_number.dissect = function(buffer, offset, packet, parent)
  local length = odx_odxsecuritytoken_pts_itch_v1_2.sequence_number.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value =  "Not Applicable"
  end

  local display = odx_odxsecuritytoken_pts_itch_v1_2.sequence_number.display(value, buffer, offset, packet, parent)

  parent:add(omi_odx_odxsecuritytoken_pts_itch_v1_2.fields.sequence_number, range, value, display)

  return offset + length, value
end

-- Sequenced Message Type
odx_odxsecuritytoken_pts_itch_v1_2.sequenced_message_type = {}

-- Size: Sequenced Message Type
odx_odxsecuritytoken_pts_itch_v1_2.sequenced_message_type.size = 1

-- Display: Sequenced Message Type
odx_odxsecuritytoken_pts_itch_v1_2.sequenced_message_type.display = function(value)
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
  if value == "A" then
    return "Sequenced Message Type: Order Added Message (A)"
  end
  if value == "C" then
    return "Sequenced Message Type: Order Executed With Price Message (C)"
  end
  if value == "D" then
    return "Sequenced Message Type: Order Deleted Message (D)"
  end
  if value == "U" then
    return "Sequenced Message Type: Order Replaced Message (U)"
  end
  if value == "O" then
    return "Sequenced Message Type: Order Book State Message (O)"
  end
  if value == "Z" then
    return "Sequenced Message Type: Equilibrium Price Update Message (Z)"
  end

  return "Sequenced Message Type: Unknown("..value..")"
end

-- Dissect: Sequenced Message Type
odx_odxsecuritytoken_pts_itch_v1_2.sequenced_message_type.dissect = function(buffer, offset, packet, parent)
  local length = odx_odxsecuritytoken_pts_itch_v1_2.sequenced_message_type.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = odx_odxsecuritytoken_pts_itch_v1_2.sequenced_message_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_odx_odxsecuritytoken_pts_itch_v1_2.fields.sequenced_message_type, range, value, display)

  return offset + length, value
end

-- Server Packet Type
odx_odxsecuritytoken_pts_itch_v1_2.server_packet_type = {}

-- Size: Server Packet Type
odx_odxsecuritytoken_pts_itch_v1_2.server_packet_type.size = 1

-- Display: Server Packet Type
odx_odxsecuritytoken_pts_itch_v1_2.server_packet_type.display = function(value)
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
odx_odxsecuritytoken_pts_itch_v1_2.server_packet_type.dissect = function(buffer, offset, packet, parent)
  local length = odx_odxsecuritytoken_pts_itch_v1_2.server_packet_type.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = odx_odxsecuritytoken_pts_itch_v1_2.server_packet_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_odx_odxsecuritytoken_pts_itch_v1_2.fields.server_packet_type, range, value, display)

  return offset + length, value
end

-- Session
odx_odxsecuritytoken_pts_itch_v1_2.session = {}

-- Size: Session
odx_odxsecuritytoken_pts_itch_v1_2.session.size = 10

-- Display: Session
odx_odxsecuritytoken_pts_itch_v1_2.session.display = function(value)
  return "Session: "..value
end

-- Dissect: Session
odx_odxsecuritytoken_pts_itch_v1_2.session.dissect = function(buffer, offset, packet, parent)
  local length = odx_odxsecuritytoken_pts_itch_v1_2.session.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = odx_odxsecuritytoken_pts_itch_v1_2.session.display(value, buffer, offset, packet, parent)

  parent:add(omi_odx_odxsecuritytoken_pts_itch_v1_2.fields.session, range, value, display)

  return offset + length, value
end

-- State Name
odx_odxsecuritytoken_pts_itch_v1_2.state_name = {}

-- Size: State Name
odx_odxsecuritytoken_pts_itch_v1_2.state_name.size = 20

-- Display: State Name
odx_odxsecuritytoken_pts_itch_v1_2.state_name.display = function(value)
  if value == "PreOpen" then
    return "State Name: Start Pre Open Period (PreOpen)"
  end
  if value == "PreOpenNCP" then
    return "State Name: Start Non Cancel Period For Pre Open (PreOpenNCP)"
  end
  if value == "OpeningAuction" then
    return "State Name: Start Opening Auction (OpeningAuction)"
  end
  if value == "Break" then
    return "State Name: Start Session Break (Break)"
  end
  if value == "PreClose" then
    return "State Name: Start Pre Close Period (PreClose)"
  end
  if value == "PreCloseNCP" then
    return "State Name: Start Non Cancel Period For Pre Close (PreCloseNCP)"
  end
  if value == "ClosingAuction" then
    return "State Name: Start Closing Auction (ClosingAuction)"
  end
  if value == "Closed" then
    return "State Name: Trading Session Is Closed (Closed)"
  end

  return "State Name: Unknown("..value..")"
end

-- Dissect: State Name
odx_odxsecuritytoken_pts_itch_v1_2.state_name.dissect = function(buffer, offset, packet, parent)
  local length = odx_odxsecuritytoken_pts_itch_v1_2.state_name.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = odx_odxsecuritytoken_pts_itch_v1_2.state_name.display(value, buffer, offset, packet, parent)

  parent:add(omi_odx_odxsecuritytoken_pts_itch_v1_2.fields.state_name, range, value, display)

  return offset + length, value
end

-- System Event
odx_odxsecuritytoken_pts_itch_v1_2.system_event = {}

-- Size: System Event
odx_odxsecuritytoken_pts_itch_v1_2.system_event.size = 1

-- Display: System Event
odx_odxsecuritytoken_pts_itch_v1_2.system_event.display = function(value)
  if value == "O" then
    return "System Event: Start Of Messages (O)"
  end
  if value == "C" then
    return "System Event: End Of Messages (C)"
  end

  return "System Event: Unknown("..value..")"
end

-- Dissect: System Event
odx_odxsecuritytoken_pts_itch_v1_2.system_event.dissect = function(buffer, offset, packet, parent)
  local length = odx_odxsecuritytoken_pts_itch_v1_2.system_event.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = odx_odxsecuritytoken_pts_itch_v1_2.system_event.display(value, buffer, offset, packet, parent)

  parent:add(omi_odx_odxsecuritytoken_pts_itch_v1_2.fields.system_event, range, value, display)

  return offset + length, value
end

-- Termination Flag
odx_odxsecuritytoken_pts_itch_v1_2.termination_flag = {}

-- Size: Termination Flag
odx_odxsecuritytoken_pts_itch_v1_2.termination_flag.size = 1

-- Display: Termination Flag
odx_odxsecuritytoken_pts_itch_v1_2.termination_flag.display = function(value)
  if value == "Y" then
    return "Termination Flag: True (Y)"
  end
  if value == "N" then
    return "Termination Flag: False (N)"
  end

  return "Termination Flag: Unknown("..value..")"
end

-- Dissect: Termination Flag
odx_odxsecuritytoken_pts_itch_v1_2.termination_flag.dissect = function(buffer, offset, packet, parent)
  local length = odx_odxsecuritytoken_pts_itch_v1_2.termination_flag.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = odx_odxsecuritytoken_pts_itch_v1_2.termination_flag.display(value, buffer, offset, packet, parent)

  parent:add(omi_odx_odxsecuritytoken_pts_itch_v1_2.fields.termination_flag, range, value, display)

  return offset + length, value
end

-- Text
odx_odxsecuritytoken_pts_itch_v1_2.text = {}

-- Size: Text
odx_odxsecuritytoken_pts_itch_v1_2.text.size = 1

-- Display: Text
odx_odxsecuritytoken_pts_itch_v1_2.text.display = function(value)
  return "Text: "..value
end

-- Dissect: Text
odx_odxsecuritytoken_pts_itch_v1_2.text.dissect = function(buffer, offset, packet, parent)
  local length = odx_odxsecuritytoken_pts_itch_v1_2.text.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = odx_odxsecuritytoken_pts_itch_v1_2.text.display(value, buffer, offset, packet, parent)

  parent:add(omi_odx_odxsecuritytoken_pts_itch_v1_2.fields.text, range, value, display)

  return offset + length, value
end

-- Trade Price
odx_odxsecuritytoken_pts_itch_v1_2.trade_price = {}

-- Size: Trade Price
odx_odxsecuritytoken_pts_itch_v1_2.trade_price.size = 4

-- Display: Trade Price
odx_odxsecuritytoken_pts_itch_v1_2.trade_price.display = function(value)
  return "Trade Price: "..value
end

-- Translate: Trade Price
odx_odxsecuritytoken_pts_itch_v1_2.trade_price.translate = function(raw)
  return raw/100
end

-- Dissect: Trade Price
odx_odxsecuritytoken_pts_itch_v1_2.trade_price.dissect = function(buffer, offset, packet, parent)
  local length = odx_odxsecuritytoken_pts_itch_v1_2.trade_price.size
  local range = buffer(offset, length)
  local raw = range:uint()
  local value = odx_odxsecuritytoken_pts_itch_v1_2.trade_price.translate(raw)
  local display = odx_odxsecuritytoken_pts_itch_v1_2.trade_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_odx_odxsecuritytoken_pts_itch_v1_2.fields.trade_price, range, value, display)

  return offset + length, value
end

-- Trading State
odx_odxsecuritytoken_pts_itch_v1_2.trading_state = {}

-- Size: Trading State
odx_odxsecuritytoken_pts_itch_v1_2.trading_state.size = 1

-- Display: Trading State
odx_odxsecuritytoken_pts_itch_v1_2.trading_state.display = function(value)
  if value == "T" then
    return "Trading State: Trading (T)"
  end
  if value == "V" then
    return "Trading State: Suspended (V)"
  end

  return "Trading State: Unknown("..value..")"
end

-- Dissect: Trading State
odx_odxsecuritytoken_pts_itch_v1_2.trading_state.dissect = function(buffer, offset, packet, parent)
  local length = odx_odxsecuritytoken_pts_itch_v1_2.trading_state.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = odx_odxsecuritytoken_pts_itch_v1_2.trading_state.display(value, buffer, offset, packet, parent)

  parent:add(omi_odx_odxsecuritytoken_pts_itch_v1_2.fields.trading_state, range, value, display)

  return offset + length, value
end

-- Unsequenced Message
odx_odxsecuritytoken_pts_itch_v1_2.unsequenced_message = {}

-- Display: Unsequenced Message
odx_odxsecuritytoken_pts_itch_v1_2.unsequenced_message.display = function(value)
  return "Unsequenced Message: "..value
end

-- Dissect runtime sized field: Unsequenced Message
odx_odxsecuritytoken_pts_itch_v1_2.unsequenced_message.dissect = function(buffer, offset, packet, parent, size)
  local range = buffer(offset, size)
  local value = range:bytes():tohex(false, " ")
  local display = odx_odxsecuritytoken_pts_itch_v1_2.unsequenced_message.display(value, packet, parent, size)

  parent:add(omi_odx_odxsecuritytoken_pts_itch_v1_2.fields.unsequenced_message, range, value, display)

  return offset + size, value
end

-- Unsequenced Message Type
odx_odxsecuritytoken_pts_itch_v1_2.unsequenced_message_type = {}

-- Size: Unsequenced Message Type
odx_odxsecuritytoken_pts_itch_v1_2.unsequenced_message_type.size = 1

-- Display: Unsequenced Message Type
odx_odxsecuritytoken_pts_itch_v1_2.unsequenced_message_type.display = function(value)
  return "Unsequenced Message Type: "..value
end

-- Dissect: Unsequenced Message Type
odx_odxsecuritytoken_pts_itch_v1_2.unsequenced_message_type.dissect = function(buffer, offset, packet, parent)
  local length = odx_odxsecuritytoken_pts_itch_v1_2.unsequenced_message_type.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = odx_odxsecuritytoken_pts_itch_v1_2.unsequenced_message_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_odx_odxsecuritytoken_pts_itch_v1_2.fields.unsequenced_message_type, range, value, display)

  return offset + length, value
end

-- Upper Price Limit
odx_odxsecuritytoken_pts_itch_v1_2.upper_price_limit = {}

-- Size: Upper Price Limit
odx_odxsecuritytoken_pts_itch_v1_2.upper_price_limit.size = 4

-- Display: Upper Price Limit
odx_odxsecuritytoken_pts_itch_v1_2.upper_price_limit.display = function(value)
  return "Upper Price Limit: "..value
end

-- Translate: Upper Price Limit
odx_odxsecuritytoken_pts_itch_v1_2.upper_price_limit.translate = function(raw)
  return raw/100
end

-- Dissect: Upper Price Limit
odx_odxsecuritytoken_pts_itch_v1_2.upper_price_limit.dissect = function(buffer, offset, packet, parent)
  local length = odx_odxsecuritytoken_pts_itch_v1_2.upper_price_limit.size
  local range = buffer(offset, length)
  local raw = range:uint()
  local value = odx_odxsecuritytoken_pts_itch_v1_2.upper_price_limit.translate(raw)
  local display = odx_odxsecuritytoken_pts_itch_v1_2.upper_price_limit.display(value, buffer, offset, packet, parent)

  parent:add(omi_odx_odxsecuritytoken_pts_itch_v1_2.fields.upper_price_limit, range, value, display)

  return offset + length, value
end

-- Username
odx_odxsecuritytoken_pts_itch_v1_2.username = {}

-- Size: Username
odx_odxsecuritytoken_pts_itch_v1_2.username.size = 6

-- Display: Username
odx_odxsecuritytoken_pts_itch_v1_2.username.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Username: No Value"
  end

  return "Username: "..value
end

-- Dissect: Username
odx_odxsecuritytoken_pts_itch_v1_2.username.dissect = function(buffer, offset, packet, parent)
  local length = odx_odxsecuritytoken_pts_itch_v1_2.username.size
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

  local display = odx_odxsecuritytoken_pts_itch_v1_2.username.display(value, buffer, offset, packet, parent)

  parent:add(omi_odx_odxsecuritytoken_pts_itch_v1_2.fields.username, range, value, display)

  return offset + length, value
end

-- Timestamp
odx_odxsecuritytoken_pts_itch_v1_2.timestamp = {}

-- Translate: Timestamp
odx_odxsecuritytoken_pts_itch_v1_2.timestamp.translate = function(nanoseconds, stored_seconds)
  return UInt64.new(stored_seconds * 1000000000 + nanoseconds)
end

-- Display: Timestamp
odx_odxsecuritytoken_pts_itch_v1_2.timestamp.display = function(nanoseconds, stored_seconds, packet)
  -- Raw display mode
  if odx_odxsecuritytoken_pts_itch_v1_2.timestamp_format == 0 then
    return "Timestamp: "..(stored_seconds * 1000000000 + nanoseconds)
  end

  -- Full datetime mode (calculate from capture date + UTC offset)
  if odx_odxsecuritytoken_pts_itch_v1_2.timestamp_format == 2 and packet then
    local capture_time = type(packet.abs_ts) == "number" and packet.abs_ts or packet.abs_ts:tonumber()
    local utc_offset_seconds = odx_odxsecuritytoken_pts_itch_v1_2.utc_offset_hours * 3600
    local local_midnight = math.floor((capture_time + utc_offset_seconds) / 86400) * 86400
    local full_seconds = local_midnight + stored_seconds

    return "Timestamp: "..os.date("!%Y-%m-%d %H:%M:%S.", full_seconds)..string.format("%09d", nanoseconds)
  end

  -- Time of day mode
  return "Timestamp: "..os.date("!%H:%M:%S.", stored_seconds)..string.format("%09d", nanoseconds)
end

-- Composite: Timestamp
odx_odxsecuritytoken_pts_itch_v1_2.timestamp.composite = function(buffer, offset, stored_seconds, packet, parent)
  local length = odx_odxsecuritytoken_pts_itch_v1_2.nanoseconds.size
  local range = buffer(offset, length)
  local nanoseconds = range:uint()
  local value = odx_odxsecuritytoken_pts_itch_v1_2.timestamp.translate(nanoseconds, stored_seconds)
  local display = odx_odxsecuritytoken_pts_itch_v1_2.timestamp.display(nanoseconds, stored_seconds, packet)
  parent = parent:add(omi_odx_odxsecuritytoken_pts_itch_v1_2.fields.timestamp, range, value, display)

  odx_odxsecuritytoken_pts_itch_v1_2.seconds.generated(stored_seconds, range, packet, parent)

  display = odx_odxsecuritytoken_pts_itch_v1_2.nanoseconds.display(nanoseconds)
  parent:add(omi_odx_odxsecuritytoken_pts_itch_v1_2.fields.nanoseconds, range, nanoseconds, display)

  return offset + length, value
end

-- Dissect: Timestamp
odx_odxsecuritytoken_pts_itch_v1_2.timestamp.dissect = function(buffer, offset, packet, parent)
  if odx_odxsecuritytoken_pts_itch_v1_2.format_timestamp then
    local stored_seconds = odx_odxsecuritytoken_pts_itch_v1_2.seconds.current

    if stored_seconds ~= nil then
      return odx_odxsecuritytoken_pts_itch_v1_2.timestamp.composite(buffer, offset, stored_seconds, packet, parent)
    end
  end

  return odx_odxsecuritytoken_pts_itch_v1_2.nanoseconds.dissect(buffer, offset, packet, parent)
end


-----------------------------------------------------------------------
-- Dissect Odx OdxSecurityToken Pts Itch 1.2
-----------------------------------------------------------------------

-- End Of Session
odx_odxsecuritytoken_pts_itch_v1_2.end_of_session = {}

-- Display: End Of Session
odx_odxsecuritytoken_pts_itch_v1_2.end_of_session.display = function(packet, parent, length)
  return "End Of Session"
end


-- Dissect: End Of Session
odx_odxsecuritytoken_pts_itch_v1_2.end_of_session.dissect = function(buffer, offset, packet, parent)
  local display = odx_odxsecuritytoken_pts_itch_v1_2.end_of_session.display(packet, parent, 0)
  packet.cols.info = display

  return offset
end

-- Server Heartbeat
odx_odxsecuritytoken_pts_itch_v1_2.server_heartbeat = {}

-- Display: Server Heartbeat
odx_odxsecuritytoken_pts_itch_v1_2.server_heartbeat.display = function(packet, parent, length)
  return "Server Heartbeat"
end


-- Dissect: Server Heartbeat
odx_odxsecuritytoken_pts_itch_v1_2.server_heartbeat.dissect = function(buffer, offset, packet, parent)
  local display = odx_odxsecuritytoken_pts_itch_v1_2.server_heartbeat.display(packet, parent, 0)
  packet.cols.info = display

  return offset
end

-- Equilibrium Price Update Message
odx_odxsecuritytoken_pts_itch_v1_2.equilibrium_price_update_message = {}

-- Size: Equilibrium Price Update Message
odx_odxsecuritytoken_pts_itch_v1_2.equilibrium_price_update_message.size =
  odx_odxsecuritytoken_pts_itch_v1_2.nanoseconds.size + 
  odx_odxsecuritytoken_pts_itch_v1_2.orderbook_id.size + 
  odx_odxsecuritytoken_pts_itch_v1_2.equilibrium_price.size

-- Display: Equilibrium Price Update Message
odx_odxsecuritytoken_pts_itch_v1_2.equilibrium_price_update_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Equilibrium Price Update Message
odx_odxsecuritytoken_pts_itch_v1_2.equilibrium_price_update_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Nanoseconds: Integer
  index, nanoseconds = odx_odxsecuritytoken_pts_itch_v1_2.timestamp.dissect(buffer, index, packet, parent)

  -- Orderbook Id: Alpha
  index, orderbook_id = odx_odxsecuritytoken_pts_itch_v1_2.orderbook_id.dissect(buffer, index, packet, parent)

  -- Equilibrium Price: Price
  index, equilibrium_price = odx_odxsecuritytoken_pts_itch_v1_2.equilibrium_price.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Equilibrium Price Update Message
odx_odxsecuritytoken_pts_itch_v1_2.equilibrium_price_update_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_odx_odxsecuritytoken_pts_itch_v1_2.fields.equilibrium_price_update_message, buffer(offset, 0))
    local index = odx_odxsecuritytoken_pts_itch_v1_2.equilibrium_price_update_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = odx_odxsecuritytoken_pts_itch_v1_2.equilibrium_price_update_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return odx_odxsecuritytoken_pts_itch_v1_2.equilibrium_price_update_message.fields(buffer, offset, packet, parent)
  end
end

-- Order Book State Message
odx_odxsecuritytoken_pts_itch_v1_2.order_book_state_message = {}

-- Size: Order Book State Message
odx_odxsecuritytoken_pts_itch_v1_2.order_book_state_message.size =
  odx_odxsecuritytoken_pts_itch_v1_2.nanoseconds.size + 
  odx_odxsecuritytoken_pts_itch_v1_2.orderbook_id.size + 
  odx_odxsecuritytoken_pts_itch_v1_2.state_name.size

-- Display: Order Book State Message
odx_odxsecuritytoken_pts_itch_v1_2.order_book_state_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Order Book State Message
odx_odxsecuritytoken_pts_itch_v1_2.order_book_state_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Nanoseconds: Integer
  index, nanoseconds = odx_odxsecuritytoken_pts_itch_v1_2.timestamp.dissect(buffer, index, packet, parent)

  -- Orderbook Id: Alpha
  index, orderbook_id = odx_odxsecuritytoken_pts_itch_v1_2.orderbook_id.dissect(buffer, index, packet, parent)

  -- State Name: Alpha
  index, state_name = odx_odxsecuritytoken_pts_itch_v1_2.state_name.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Order Book State Message
odx_odxsecuritytoken_pts_itch_v1_2.order_book_state_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_odx_odxsecuritytoken_pts_itch_v1_2.fields.order_book_state_message, buffer(offset, 0))
    local index = odx_odxsecuritytoken_pts_itch_v1_2.order_book_state_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = odx_odxsecuritytoken_pts_itch_v1_2.order_book_state_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return odx_odxsecuritytoken_pts_itch_v1_2.order_book_state_message.fields(buffer, offset, packet, parent)
  end
end

-- Order Replaced Message
odx_odxsecuritytoken_pts_itch_v1_2.order_replaced_message = {}

-- Size: Order Replaced Message
odx_odxsecuritytoken_pts_itch_v1_2.order_replaced_message.size =
  odx_odxsecuritytoken_pts_itch_v1_2.nanoseconds.size + 
  odx_odxsecuritytoken_pts_itch_v1_2.original_order_number.size + 
  odx_odxsecuritytoken_pts_itch_v1_2.new_order_number.size + 
  odx_odxsecuritytoken_pts_itch_v1_2.quantity.size + 
  odx_odxsecuritytoken_pts_itch_v1_2.price.size

-- Display: Order Replaced Message
odx_odxsecuritytoken_pts_itch_v1_2.order_replaced_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Order Replaced Message
odx_odxsecuritytoken_pts_itch_v1_2.order_replaced_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Nanoseconds: Integer
  index, nanoseconds = odx_odxsecuritytoken_pts_itch_v1_2.timestamp.dissect(buffer, index, packet, parent)

  -- Original Order Number: Integer
  index, original_order_number = odx_odxsecuritytoken_pts_itch_v1_2.original_order_number.dissect(buffer, index, packet, parent)

  -- New Order Number: Integer
  index, new_order_number = odx_odxsecuritytoken_pts_itch_v1_2.new_order_number.dissect(buffer, index, packet, parent)

  -- Quantity: Quantity
  index, quantity = odx_odxsecuritytoken_pts_itch_v1_2.quantity.dissect(buffer, index, packet, parent)

  -- Price: Price
  index, price = odx_odxsecuritytoken_pts_itch_v1_2.price.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Order Replaced Message
odx_odxsecuritytoken_pts_itch_v1_2.order_replaced_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_odx_odxsecuritytoken_pts_itch_v1_2.fields.order_replaced_message, buffer(offset, 0))
    local index = odx_odxsecuritytoken_pts_itch_v1_2.order_replaced_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = odx_odxsecuritytoken_pts_itch_v1_2.order_replaced_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return odx_odxsecuritytoken_pts_itch_v1_2.order_replaced_message.fields(buffer, offset, packet, parent)
  end
end

-- Order Deleted Message
odx_odxsecuritytoken_pts_itch_v1_2.order_deleted_message = {}

-- Size: Order Deleted Message
odx_odxsecuritytoken_pts_itch_v1_2.order_deleted_message.size =
  odx_odxsecuritytoken_pts_itch_v1_2.nanoseconds.size + 
  odx_odxsecuritytoken_pts_itch_v1_2.order_number.size

-- Display: Order Deleted Message
odx_odxsecuritytoken_pts_itch_v1_2.order_deleted_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Order Deleted Message
odx_odxsecuritytoken_pts_itch_v1_2.order_deleted_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Nanoseconds: Integer
  index, nanoseconds = odx_odxsecuritytoken_pts_itch_v1_2.timestamp.dissect(buffer, index, packet, parent)

  -- Order Number: Integer
  index, order_number = odx_odxsecuritytoken_pts_itch_v1_2.order_number.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Order Deleted Message
odx_odxsecuritytoken_pts_itch_v1_2.order_deleted_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_odx_odxsecuritytoken_pts_itch_v1_2.fields.order_deleted_message, buffer(offset, 0))
    local index = odx_odxsecuritytoken_pts_itch_v1_2.order_deleted_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = odx_odxsecuritytoken_pts_itch_v1_2.order_deleted_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return odx_odxsecuritytoken_pts_itch_v1_2.order_deleted_message.fields(buffer, offset, packet, parent)
  end
end

-- Order Executed With Price Message
odx_odxsecuritytoken_pts_itch_v1_2.order_executed_with_price_message = {}

-- Size: Order Executed With Price Message
odx_odxsecuritytoken_pts_itch_v1_2.order_executed_with_price_message.size =
  odx_odxsecuritytoken_pts_itch_v1_2.nanoseconds.size + 
  odx_odxsecuritytoken_pts_itch_v1_2.order_number.size + 
  odx_odxsecuritytoken_pts_itch_v1_2.executed_quantity.size + 
  odx_odxsecuritytoken_pts_itch_v1_2.match_number.size + 
  odx_odxsecuritytoken_pts_itch_v1_2.trade_price.size + 
  odx_odxsecuritytoken_pts_itch_v1_2.occurred_as_cross.size

-- Display: Order Executed With Price Message
odx_odxsecuritytoken_pts_itch_v1_2.order_executed_with_price_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Order Executed With Price Message
odx_odxsecuritytoken_pts_itch_v1_2.order_executed_with_price_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Nanoseconds: Integer
  index, nanoseconds = odx_odxsecuritytoken_pts_itch_v1_2.timestamp.dissect(buffer, index, packet, parent)

  -- Order Number: Integer
  index, order_number = odx_odxsecuritytoken_pts_itch_v1_2.order_number.dissect(buffer, index, packet, parent)

  -- Executed Quantity: Quantity
  index, executed_quantity = odx_odxsecuritytoken_pts_itch_v1_2.executed_quantity.dissect(buffer, index, packet, parent)

  -- Match Number: Integer
  index, match_number = odx_odxsecuritytoken_pts_itch_v1_2.match_number.dissect(buffer, index, packet, parent)

  -- Trade Price: Price
  index, trade_price = odx_odxsecuritytoken_pts_itch_v1_2.trade_price.dissect(buffer, index, packet, parent)

  -- Occurred As Cross: Alpha
  index, occurred_as_cross = odx_odxsecuritytoken_pts_itch_v1_2.occurred_as_cross.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Order Executed With Price Message
odx_odxsecuritytoken_pts_itch_v1_2.order_executed_with_price_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_odx_odxsecuritytoken_pts_itch_v1_2.fields.order_executed_with_price_message, buffer(offset, 0))
    local index = odx_odxsecuritytoken_pts_itch_v1_2.order_executed_with_price_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = odx_odxsecuritytoken_pts_itch_v1_2.order_executed_with_price_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return odx_odxsecuritytoken_pts_itch_v1_2.order_executed_with_price_message.fields(buffer, offset, packet, parent)
  end
end

-- Order Added Message
odx_odxsecuritytoken_pts_itch_v1_2.order_added_message = {}

-- Size: Order Added Message
odx_odxsecuritytoken_pts_itch_v1_2.order_added_message.size =
  odx_odxsecuritytoken_pts_itch_v1_2.nanoseconds.size + 
  odx_odxsecuritytoken_pts_itch_v1_2.order_number.size + 
  odx_odxsecuritytoken_pts_itch_v1_2.buy_sell_indicator.size + 
  odx_odxsecuritytoken_pts_itch_v1_2.quantity.size + 
  odx_odxsecuritytoken_pts_itch_v1_2.orderbook_id.size + 
  odx_odxsecuritytoken_pts_itch_v1_2.group.size + 
  odx_odxsecuritytoken_pts_itch_v1_2.price.size

-- Display: Order Added Message
odx_odxsecuritytoken_pts_itch_v1_2.order_added_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Order Added Message
odx_odxsecuritytoken_pts_itch_v1_2.order_added_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Nanoseconds: Integer
  index, nanoseconds = odx_odxsecuritytoken_pts_itch_v1_2.timestamp.dissect(buffer, index, packet, parent)

  -- Order Number: Integer
  index, order_number = odx_odxsecuritytoken_pts_itch_v1_2.order_number.dissect(buffer, index, packet, parent)

  -- Buy Sell Indicator: Alpha
  index, buy_sell_indicator = odx_odxsecuritytoken_pts_itch_v1_2.buy_sell_indicator.dissect(buffer, index, packet, parent)

  -- Quantity: Quantity
  index, quantity = odx_odxsecuritytoken_pts_itch_v1_2.quantity.dissect(buffer, index, packet, parent)

  -- Orderbook Id: Alpha
  index, orderbook_id = odx_odxsecuritytoken_pts_itch_v1_2.orderbook_id.dissect(buffer, index, packet, parent)

  -- Group: Alpha
  index, group = odx_odxsecuritytoken_pts_itch_v1_2.group.dissect(buffer, index, packet, parent)

  -- Price: Price
  index, price = odx_odxsecuritytoken_pts_itch_v1_2.price.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Order Added Message
odx_odxsecuritytoken_pts_itch_v1_2.order_added_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_odx_odxsecuritytoken_pts_itch_v1_2.fields.order_added_message, buffer(offset, 0))
    local index = odx_odxsecuritytoken_pts_itch_v1_2.order_added_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = odx_odxsecuritytoken_pts_itch_v1_2.order_added_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return odx_odxsecuritytoken_pts_itch_v1_2.order_added_message.fields(buffer, offset, packet, parent)
  end
end

-- Trading State Message
odx_odxsecuritytoken_pts_itch_v1_2.trading_state_message = {}

-- Size: Trading State Message
odx_odxsecuritytoken_pts_itch_v1_2.trading_state_message.size =
  odx_odxsecuritytoken_pts_itch_v1_2.nanoseconds.size + 
  odx_odxsecuritytoken_pts_itch_v1_2.orderbook_id.size + 
  odx_odxsecuritytoken_pts_itch_v1_2.group.size + 
  odx_odxsecuritytoken_pts_itch_v1_2.trading_state.size

-- Display: Trading State Message
odx_odxsecuritytoken_pts_itch_v1_2.trading_state_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Trading State Message
odx_odxsecuritytoken_pts_itch_v1_2.trading_state_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Nanoseconds: Integer
  index, nanoseconds = odx_odxsecuritytoken_pts_itch_v1_2.timestamp.dissect(buffer, index, packet, parent)

  -- Orderbook Id: Alpha
  index, orderbook_id = odx_odxsecuritytoken_pts_itch_v1_2.orderbook_id.dissect(buffer, index, packet, parent)

  -- Group: Alpha
  index, group = odx_odxsecuritytoken_pts_itch_v1_2.group.dissect(buffer, index, packet, parent)

  -- Trading State: Alpha
  index, trading_state = odx_odxsecuritytoken_pts_itch_v1_2.trading_state.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Trading State Message
odx_odxsecuritytoken_pts_itch_v1_2.trading_state_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_odx_odxsecuritytoken_pts_itch_v1_2.fields.trading_state_message, buffer(offset, 0))
    local index = odx_odxsecuritytoken_pts_itch_v1_2.trading_state_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = odx_odxsecuritytoken_pts_itch_v1_2.trading_state_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return odx_odxsecuritytoken_pts_itch_v1_2.trading_state_message.fields(buffer, offset, packet, parent)
  end
end

-- Orderbook Directory Message
odx_odxsecuritytoken_pts_itch_v1_2.orderbook_directory_message = {}

-- Size: Orderbook Directory Message
odx_odxsecuritytoken_pts_itch_v1_2.orderbook_directory_message.size =
  odx_odxsecuritytoken_pts_itch_v1_2.nanoseconds.size + 
  odx_odxsecuritytoken_pts_itch_v1_2.orderbook_id.size + 
  odx_odxsecuritytoken_pts_itch_v1_2.orderbook_code.size + 
  odx_odxsecuritytoken_pts_itch_v1_2.exchange_symbol.size + 
  odx_odxsecuritytoken_pts_itch_v1_2.group.size + 
  odx_odxsecuritytoken_pts_itch_v1_2.round_lot_size.size + 
  odx_odxsecuritytoken_pts_itch_v1_2.price_tick_size_table_id.size + 
  odx_odxsecuritytoken_pts_itch_v1_2.price_decimals.size + 
  odx_odxsecuritytoken_pts_itch_v1_2.upper_price_limit.size + 
  odx_odxsecuritytoken_pts_itch_v1_2.lower_price_limit.size + 
  odx_odxsecuritytoken_pts_itch_v1_2.restriction_of_market_order.size + 
  odx_odxsecuritytoken_pts_itch_v1_2.attention_flag.size + 
  odx_odxsecuritytoken_pts_itch_v1_2.termination_flag.size

-- Display: Orderbook Directory Message
odx_odxsecuritytoken_pts_itch_v1_2.orderbook_directory_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Orderbook Directory Message
odx_odxsecuritytoken_pts_itch_v1_2.orderbook_directory_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Nanoseconds: Integer
  index, nanoseconds = odx_odxsecuritytoken_pts_itch_v1_2.timestamp.dissect(buffer, index, packet, parent)

  -- Orderbook Id: Alpha
  index, orderbook_id = odx_odxsecuritytoken_pts_itch_v1_2.orderbook_id.dissect(buffer, index, packet, parent)

  -- Orderbook Code: Alpha
  index, orderbook_code = odx_odxsecuritytoken_pts_itch_v1_2.orderbook_code.dissect(buffer, index, packet, parent)

  -- Exchange Symbol: Alpha
  index, exchange_symbol = odx_odxsecuritytoken_pts_itch_v1_2.exchange_symbol.dissect(buffer, index, packet, parent)

  -- Group: Alpha
  index, group = odx_odxsecuritytoken_pts_itch_v1_2.group.dissect(buffer, index, packet, parent)

  -- Round Lot Size: Quantity
  index, round_lot_size = odx_odxsecuritytoken_pts_itch_v1_2.round_lot_size.dissect(buffer, index, packet, parent)

  -- Price Tick Size Table Id: Integer
  index, price_tick_size_table_id = odx_odxsecuritytoken_pts_itch_v1_2.price_tick_size_table_id.dissect(buffer, index, packet, parent)

  -- Price Decimals: Integer
  index, price_decimals = odx_odxsecuritytoken_pts_itch_v1_2.price_decimals.dissect(buffer, index, packet, parent)

  -- Upper Price Limit: Price
  index, upper_price_limit = odx_odxsecuritytoken_pts_itch_v1_2.upper_price_limit.dissect(buffer, index, packet, parent)

  -- Lower Price Limit: Price
  index, lower_price_limit = odx_odxsecuritytoken_pts_itch_v1_2.lower_price_limit.dissect(buffer, index, packet, parent)

  -- Restriction Of Market Order: Alpha
  index, restriction_of_market_order = odx_odxsecuritytoken_pts_itch_v1_2.restriction_of_market_order.dissect(buffer, index, packet, parent)

  -- Attention Flag: Alpha
  index, attention_flag = odx_odxsecuritytoken_pts_itch_v1_2.attention_flag.dissect(buffer, index, packet, parent)

  -- Termination Flag: Alpha
  index, termination_flag = odx_odxsecuritytoken_pts_itch_v1_2.termination_flag.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Orderbook Directory Message
odx_odxsecuritytoken_pts_itch_v1_2.orderbook_directory_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_odx_odxsecuritytoken_pts_itch_v1_2.fields.orderbook_directory_message, buffer(offset, 0))
    local index = odx_odxsecuritytoken_pts_itch_v1_2.orderbook_directory_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = odx_odxsecuritytoken_pts_itch_v1_2.orderbook_directory_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return odx_odxsecuritytoken_pts_itch_v1_2.orderbook_directory_message.fields(buffer, offset, packet, parent)
  end
end

-- Price Tick Size Message
odx_odxsecuritytoken_pts_itch_v1_2.price_tick_size_message = {}

-- Size: Price Tick Size Message
odx_odxsecuritytoken_pts_itch_v1_2.price_tick_size_message.size =
  odx_odxsecuritytoken_pts_itch_v1_2.nanoseconds.size + 
  odx_odxsecuritytoken_pts_itch_v1_2.price_tick_size_table_id.size + 
  odx_odxsecuritytoken_pts_itch_v1_2.price_tick_size.size + 
  odx_odxsecuritytoken_pts_itch_v1_2.price_start.size

-- Display: Price Tick Size Message
odx_odxsecuritytoken_pts_itch_v1_2.price_tick_size_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Price Tick Size Message
odx_odxsecuritytoken_pts_itch_v1_2.price_tick_size_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Nanoseconds: Integer
  index, nanoseconds = odx_odxsecuritytoken_pts_itch_v1_2.timestamp.dissect(buffer, index, packet, parent)

  -- Price Tick Size Table Id: Integer
  index, price_tick_size_table_id = odx_odxsecuritytoken_pts_itch_v1_2.price_tick_size_table_id.dissect(buffer, index, packet, parent)

  -- Price Tick Size: Price
  index, price_tick_size = odx_odxsecuritytoken_pts_itch_v1_2.price_tick_size.dissect(buffer, index, packet, parent)

  -- Price Start: Price
  index, price_start = odx_odxsecuritytoken_pts_itch_v1_2.price_start.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Price Tick Size Message
odx_odxsecuritytoken_pts_itch_v1_2.price_tick_size_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_odx_odxsecuritytoken_pts_itch_v1_2.fields.price_tick_size_message, buffer(offset, 0))
    local index = odx_odxsecuritytoken_pts_itch_v1_2.price_tick_size_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = odx_odxsecuritytoken_pts_itch_v1_2.price_tick_size_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return odx_odxsecuritytoken_pts_itch_v1_2.price_tick_size_message.fields(buffer, offset, packet, parent)
  end
end

-- System Event Message
odx_odxsecuritytoken_pts_itch_v1_2.system_event_message = {}

-- Size: System Event Message
odx_odxsecuritytoken_pts_itch_v1_2.system_event_message.size =
  odx_odxsecuritytoken_pts_itch_v1_2.nanoseconds.size + 
  odx_odxsecuritytoken_pts_itch_v1_2.group.size + 
  odx_odxsecuritytoken_pts_itch_v1_2.system_event.size

-- Display: System Event Message
odx_odxsecuritytoken_pts_itch_v1_2.system_event_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: System Event Message
odx_odxsecuritytoken_pts_itch_v1_2.system_event_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Nanoseconds: Integer
  index, nanoseconds = odx_odxsecuritytoken_pts_itch_v1_2.timestamp.dissect(buffer, index, packet, parent)

  -- Group: Alpha
  index, group = odx_odxsecuritytoken_pts_itch_v1_2.group.dissect(buffer, index, packet, parent)

  -- System Event: Alpha
  index, system_event = odx_odxsecuritytoken_pts_itch_v1_2.system_event.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: System Event Message
odx_odxsecuritytoken_pts_itch_v1_2.system_event_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_odx_odxsecuritytoken_pts_itch_v1_2.fields.system_event_message, buffer(offset, 0))
    local index = odx_odxsecuritytoken_pts_itch_v1_2.system_event_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = odx_odxsecuritytoken_pts_itch_v1_2.system_event_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return odx_odxsecuritytoken_pts_itch_v1_2.system_event_message.fields(buffer, offset, packet, parent)
  end
end

-- Seconds Message
odx_odxsecuritytoken_pts_itch_v1_2.seconds_message = {}

-- Size: Seconds Message
odx_odxsecuritytoken_pts_itch_v1_2.seconds_message.size =
  odx_odxsecuritytoken_pts_itch_v1_2.seconds.size

-- Display: Seconds Message
odx_odxsecuritytoken_pts_itch_v1_2.seconds_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Seconds Message
odx_odxsecuritytoken_pts_itch_v1_2.seconds_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Seconds: Integer
  index, seconds = odx_odxsecuritytoken_pts_itch_v1_2.seconds.dissect(buffer, index, packet, parent)

  -- Store Seconds Value
  odx_odxsecuritytoken_pts_itch_v1_2.seconds.current = seconds

  if not packet.visited then
    odx_odxsecuritytoken_pts_itch_v1_2.conversation.current.seconds.last = seconds
  end

  return index
end

-- Dissect: Seconds Message
odx_odxsecuritytoken_pts_itch_v1_2.seconds_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_odx_odxsecuritytoken_pts_itch_v1_2.fields.seconds_message, buffer(offset, 0))
    local index = odx_odxsecuritytoken_pts_itch_v1_2.seconds_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = odx_odxsecuritytoken_pts_itch_v1_2.seconds_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return odx_odxsecuritytoken_pts_itch_v1_2.seconds_message.fields(buffer, offset, packet, parent)
  end
end

-- Sequenced Message
odx_odxsecuritytoken_pts_itch_v1_2.sequenced_message = {}

-- Dissect: Sequenced Message
odx_odxsecuritytoken_pts_itch_v1_2.sequenced_message.dissect = function(buffer, offset, packet, parent, sequenced_message_type)
  -- Dissect Seconds Message
  if sequenced_message_type == "T" then
    return odx_odxsecuritytoken_pts_itch_v1_2.seconds_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect System Event Message
  if sequenced_message_type == "S" then
    return odx_odxsecuritytoken_pts_itch_v1_2.system_event_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Price Tick Size Message
  if sequenced_message_type == "L" then
    return odx_odxsecuritytoken_pts_itch_v1_2.price_tick_size_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Orderbook Directory Message
  if sequenced_message_type == "R" then
    return odx_odxsecuritytoken_pts_itch_v1_2.orderbook_directory_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Trading State Message
  if sequenced_message_type == "H" then
    return odx_odxsecuritytoken_pts_itch_v1_2.trading_state_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Order Added Message
  if sequenced_message_type == "A" then
    return odx_odxsecuritytoken_pts_itch_v1_2.order_added_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Order Executed With Price Message
  if sequenced_message_type == "C" then
    return odx_odxsecuritytoken_pts_itch_v1_2.order_executed_with_price_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Order Deleted Message
  if sequenced_message_type == "D" then
    return odx_odxsecuritytoken_pts_itch_v1_2.order_deleted_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Order Replaced Message
  if sequenced_message_type == "U" then
    return odx_odxsecuritytoken_pts_itch_v1_2.order_replaced_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Order Book State Message
  if sequenced_message_type == "O" then
    return odx_odxsecuritytoken_pts_itch_v1_2.order_book_state_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Equilibrium Price Update Message
  if sequenced_message_type == "Z" then
    return odx_odxsecuritytoken_pts_itch_v1_2.equilibrium_price_update_message.dissect(buffer, offset, packet, parent)
  end

  return offset
end

-- Sequenced Data Packet
odx_odxsecuritytoken_pts_itch_v1_2.sequenced_data_packet = {}

-- Read runtime size of: Sequenced Data Packet
odx_odxsecuritytoken_pts_itch_v1_2.sequenced_data_packet.size = function(buffer, offset)
  local index = offset

  -- Dependency element: Packet Length
  local packet_length = buffer(offset - 3, 2):uint()

  return packet_length - 1
end

-- Display: Sequenced Data Packet
odx_odxsecuritytoken_pts_itch_v1_2.sequenced_data_packet.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Sequenced Data Packet
odx_odxsecuritytoken_pts_itch_v1_2.sequenced_data_packet.fields = function(buffer, offset, packet, parent, size_of_sequenced_data_packet)
  local index = offset

  -- Implicit Sequenced Data Packet Sequence Number
  local flow = odx_odxsecuritytoken_pts_itch_v1_2.conversation.current
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
          local sequence = parent:add(omi_odx_odxsecuritytoken_pts_itch_v1_2.fields.sequenced_data_packet_sequence_number, UInt64.new(value))
          sequence:set_generated()
        end
      end
    else
      if memo ~= nil and #memo > 0 then
        if odx_odxsecuritytoken_pts_itch_v1_2.stream_frame ~= packet.number or odx_odxsecuritytoken_pts_itch_v1_2.stream_occurrence >= #memo then
          odx_odxsecuritytoken_pts_itch_v1_2.stream_frame = packet.number
          odx_odxsecuritytoken_pts_itch_v1_2.stream_occurrence = 0
        end
        odx_odxsecuritytoken_pts_itch_v1_2.stream_occurrence = odx_odxsecuritytoken_pts_itch_v1_2.stream_occurrence + 1
        local value = memo[odx_odxsecuritytoken_pts_itch_v1_2.stream_occurrence]
        if show.sequences and value ~= nil then
          local sequence = parent:add(omi_odx_odxsecuritytoken_pts_itch_v1_2.fields.sequenced_data_packet_sequence_number, UInt64.new(value))
          sequence:set_generated()
        end
      end
    end
  end

  -- Sequenced Message Type: 1 Byte Ascii String Enum with 11 values
  index, sequenced_message_type = odx_odxsecuritytoken_pts_itch_v1_2.sequenced_message_type.dissect(buffer, index, packet, parent)

  -- Sequenced Message: Runtime Type with 11 branches
  index = odx_odxsecuritytoken_pts_itch_v1_2.sequenced_message.dissect(buffer, index, packet, parent, sequenced_message_type)

  return index
end

-- Dissect: Sequenced Data Packet
odx_odxsecuritytoken_pts_itch_v1_2.sequenced_data_packet.dissect = function(buffer, offset, packet, parent, size_of_sequenced_data_packet)
  local size_of_sequenced_data_packet = odx_odxsecuritytoken_pts_itch_v1_2.sequenced_data_packet.size(buffer, offset)
  local index = offset + size_of_sequenced_data_packet

  -- Optionally add group/struct element to protocol tree
  if show.session_messages then
    parent = parent:add(omi_odx_odxsecuritytoken_pts_itch_v1_2.fields.sequenced_data_packet, buffer(offset, 0))
    local current = odx_odxsecuritytoken_pts_itch_v1_2.sequenced_data_packet.fields(buffer, offset, packet, parent, size_of_sequenced_data_packet)
    parent:set_len(size_of_sequenced_data_packet)
    local display = odx_odxsecuritytoken_pts_itch_v1_2.sequenced_data_packet.display(buffer, packet, parent)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    odx_odxsecuritytoken_pts_itch_v1_2.sequenced_data_packet.fields(buffer, offset, packet, parent, size_of_sequenced_data_packet)

    return index
  end
end

-- Login Rejected Packet
odx_odxsecuritytoken_pts_itch_v1_2.login_rejected_packet = {}

-- Size: Login Rejected Packet
odx_odxsecuritytoken_pts_itch_v1_2.login_rejected_packet.size =
  odx_odxsecuritytoken_pts_itch_v1_2.reject_reason_code.size

-- Display: Login Rejected Packet
odx_odxsecuritytoken_pts_itch_v1_2.login_rejected_packet.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Login Rejected Packet
odx_odxsecuritytoken_pts_itch_v1_2.login_rejected_packet.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Reject Reason Code: 1 Byte Ascii String
  index, reject_reason_code = odx_odxsecuritytoken_pts_itch_v1_2.reject_reason_code.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Login Rejected Packet
odx_odxsecuritytoken_pts_itch_v1_2.login_rejected_packet.dissect = function(buffer, offset, packet, parent)
  if show.session_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_odx_odxsecuritytoken_pts_itch_v1_2.fields.login_rejected_packet, buffer(offset, 0))
    local index = odx_odxsecuritytoken_pts_itch_v1_2.login_rejected_packet.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = odx_odxsecuritytoken_pts_itch_v1_2.login_rejected_packet.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return odx_odxsecuritytoken_pts_itch_v1_2.login_rejected_packet.fields(buffer, offset, packet, parent)
  end
end

-- Login Accepted Packet
odx_odxsecuritytoken_pts_itch_v1_2.login_accepted_packet = {}

-- Size: Login Accepted Packet
odx_odxsecuritytoken_pts_itch_v1_2.login_accepted_packet.size =
  odx_odxsecuritytoken_pts_itch_v1_2.session.size + 
  odx_odxsecuritytoken_pts_itch_v1_2.sequence_number.size

-- Display: Login Accepted Packet
odx_odxsecuritytoken_pts_itch_v1_2.login_accepted_packet.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Login Accepted Packet
odx_odxsecuritytoken_pts_itch_v1_2.login_accepted_packet.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Session: 10 Byte Ascii String
  index, session = odx_odxsecuritytoken_pts_itch_v1_2.session.dissect(buffer, index, packet, parent)

  -- Sequence Number: 20 Byte Ascii String
  index, sequence_number = odx_odxsecuritytoken_pts_itch_v1_2.sequence_number.dissect(buffer, index, packet, parent)

  -- Stream sequence anchor: the next sequenced message's number
  if not packet.visited then
    local flow = odx_odxsecuritytoken_pts_itch_v1_2.conversation.current
    local anchor = tonumber(sequence_number)
    if flow ~= nil and anchor ~= nil then
      flow.sequence.next = anchor
    end
  end

  return index
end

-- Dissect: Login Accepted Packet
odx_odxsecuritytoken_pts_itch_v1_2.login_accepted_packet.dissect = function(buffer, offset, packet, parent)
  if show.session_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_odx_odxsecuritytoken_pts_itch_v1_2.fields.login_accepted_packet, buffer(offset, 0))
    local index = odx_odxsecuritytoken_pts_itch_v1_2.login_accepted_packet.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = odx_odxsecuritytoken_pts_itch_v1_2.login_accepted_packet.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return odx_odxsecuritytoken_pts_itch_v1_2.login_accepted_packet.fields(buffer, offset, packet, parent)
  end
end

-- Debug Packet
odx_odxsecuritytoken_pts_itch_v1_2.debug_packet = {}

-- Size: Debug Packet
odx_odxsecuritytoken_pts_itch_v1_2.debug_packet.size =
  odx_odxsecuritytoken_pts_itch_v1_2.text.size

-- Display: Debug Packet
odx_odxsecuritytoken_pts_itch_v1_2.debug_packet.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Debug Packet
odx_odxsecuritytoken_pts_itch_v1_2.debug_packet.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Text: 1 Byte Ascii String
  index, text = odx_odxsecuritytoken_pts_itch_v1_2.text.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Debug Packet
odx_odxsecuritytoken_pts_itch_v1_2.debug_packet.dissect = function(buffer, offset, packet, parent)
  if show.session_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_odx_odxsecuritytoken_pts_itch_v1_2.fields.debug_packet, buffer(offset, 0))
    local index = odx_odxsecuritytoken_pts_itch_v1_2.debug_packet.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = odx_odxsecuritytoken_pts_itch_v1_2.debug_packet.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return odx_odxsecuritytoken_pts_itch_v1_2.debug_packet.fields(buffer, offset, packet, parent)
  end
end

-- Server Payload
odx_odxsecuritytoken_pts_itch_v1_2.server_payload = {}

-- Dissect: Server Payload
odx_odxsecuritytoken_pts_itch_v1_2.server_payload.dissect = function(buffer, offset, packet, parent, server_packet_type)
  -- Dissect Debug Packet
  if server_packet_type == "+" then
    return odx_odxsecuritytoken_pts_itch_v1_2.debug_packet.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Login Accepted Packet
  if server_packet_type == "A" then
    return odx_odxsecuritytoken_pts_itch_v1_2.login_accepted_packet.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Login Rejected Packet
  if server_packet_type == "J" then
    return odx_odxsecuritytoken_pts_itch_v1_2.login_rejected_packet.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Sequenced Data Packet
  if server_packet_type == "S" then
    return odx_odxsecuritytoken_pts_itch_v1_2.sequenced_data_packet.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Server Heartbeat
  if server_packet_type == "H" then
    return odx_odxsecuritytoken_pts_itch_v1_2.server_heartbeat.dissect(buffer, offset, packet, parent)
  end
  -- Dissect End Of Session
  if server_packet_type == "Z" then
    return odx_odxsecuritytoken_pts_itch_v1_2.end_of_session.dissect(buffer, offset, packet, parent)
  end

  return offset
end

-- Server Packet Header
odx_odxsecuritytoken_pts_itch_v1_2.server_packet_header = {}

-- Size: Server Packet Header
odx_odxsecuritytoken_pts_itch_v1_2.server_packet_header.size =
  odx_odxsecuritytoken_pts_itch_v1_2.packet_length.size + 
  odx_odxsecuritytoken_pts_itch_v1_2.server_packet_type.size

-- Display: Server Packet Header
odx_odxsecuritytoken_pts_itch_v1_2.server_packet_header.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Server Packet Header
odx_odxsecuritytoken_pts_itch_v1_2.server_packet_header.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Packet Length: 2 Byte Unsigned Fixed Width Integer
  index, packet_length = odx_odxsecuritytoken_pts_itch_v1_2.packet_length.dissect(buffer, index, packet, parent)

  -- Server Packet Type: 1 Byte Ascii String Enum with 6 values
  index, server_packet_type = odx_odxsecuritytoken_pts_itch_v1_2.server_packet_type.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Server Packet Header
odx_odxsecuritytoken_pts_itch_v1_2.server_packet_header.dissect = function(buffer, offset, packet, parent)
  if show.structs then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_odx_odxsecuritytoken_pts_itch_v1_2.fields.server_packet_header, buffer(offset, 0))
    local index = odx_odxsecuritytoken_pts_itch_v1_2.server_packet_header.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = odx_odxsecuritytoken_pts_itch_v1_2.server_packet_header.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return odx_odxsecuritytoken_pts_itch_v1_2.server_packet_header.fields(buffer, offset, packet, parent)
  end
end

-- Server Soup Bin Tcp Packet
odx_odxsecuritytoken_pts_itch_v1_2.server_soup_bin_tcp_packet = {}

-- Display: Server Soup Bin Tcp Packet
odx_odxsecuritytoken_pts_itch_v1_2.server_soup_bin_tcp_packet.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Server Soup Bin Tcp Packet
odx_odxsecuritytoken_pts_itch_v1_2.server_soup_bin_tcp_packet.fields = function(buffer, offset, packet, parent, size_of_server_soup_bin_tcp_packet)
  local index = offset

  -- Server Packet Header: Struct of 2 fields
  index, server_packet_header = odx_odxsecuritytoken_pts_itch_v1_2.server_packet_header.dissect(buffer, index, packet, parent)

  -- Dependency element: Server Packet Type
  local server_packet_type = buffer(index - 1, 1):string()

  -- Server Payload: Runtime Type with 6 branches
  index = odx_odxsecuritytoken_pts_itch_v1_2.server_payload.dissect(buffer, index, packet, parent, server_packet_type)

  return index
end

-- Dissect: Server Soup Bin Tcp Packet
odx_odxsecuritytoken_pts_itch_v1_2.server_soup_bin_tcp_packet.dissect = function(buffer, offset, packet, parent, size_of_server_soup_bin_tcp_packet)
  local index = offset + size_of_server_soup_bin_tcp_packet

  -- Optionally add group/struct element to protocol tree
  if show.structs then
    parent = parent:add(omi_odx_odxsecuritytoken_pts_itch_v1_2.fields.server_soup_bin_tcp_packet, buffer(offset, 0))
    local current = odx_odxsecuritytoken_pts_itch_v1_2.server_soup_bin_tcp_packet.fields(buffer, offset, packet, parent, size_of_server_soup_bin_tcp_packet)
    parent:set_len(size_of_server_soup_bin_tcp_packet)
    local display = odx_odxsecuritytoken_pts_itch_v1_2.server_soup_bin_tcp_packet.display(buffer, packet, parent)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    odx_odxsecuritytoken_pts_itch_v1_2.server_soup_bin_tcp_packet.fields(buffer, offset, packet, parent, size_of_server_soup_bin_tcp_packet)

    return index
  end
end

-- Remaining Bytes For: Server Soup Bin Tcp Packet
local server_soup_bin_tcp_packet_bytes_remaining = function(buffer, index, available)
  -- Calculate the number of bytes remaining
  local remaining = available - index

  -- Check if packet size can be read
  if remaining < odx_odxsecuritytoken_pts_itch_v1_2.server_packet_header.size then
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
odx_odxsecuritytoken_pts_itch_v1_2.server_packet = {}

-- Verify required size of Tcp packet
odx_odxsecuritytoken_pts_itch_v1_2.server_packet.requiredsize = function(buffer)
  return buffer:len() >= odx_odxsecuritytoken_pts_itch_v1_2.server_packet_header.size
end

-- Dissect Server Packet
odx_odxsecuritytoken_pts_itch_v1_2.server_packet.dissect = function(buffer, packet, parent)
  -- establish frame context from the conversation's stored values
  local data = odx_odxsecuritytoken_pts_itch_v1_2.conversation.data(packet)
  if not packet.visited then
    data.seconds.frames[packet.number] = data.seconds.last
  end
  odx_odxsecuritytoken_pts_itch_v1_2.seconds.current = data.seconds.frames[packet.number]
  odx_odxsecuritytoken_pts_itch_v1_2.conversation.current = data

  local index = 0

  -- Dependency for Server Soup Bin Tcp Packet
  local end_of_payload = buffer:len()

  -- Server Soup Bin Tcp Packet: Struct of 2 fields
  while index < end_of_payload do

    -- Are minimum number of bytes are available?
    local available, size_of_server_soup_bin_tcp_packet = server_soup_bin_tcp_packet_bytes_remaining(buffer, index, end_of_payload)

    if available > 0 then
      index = odx_odxsecuritytoken_pts_itch_v1_2.server_soup_bin_tcp_packet.dissect(buffer, index, packet, parent, size_of_server_soup_bin_tcp_packet)
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
odx_odxsecuritytoken_pts_itch_v1_2.logout_request = {}

-- Display: Logout Request
odx_odxsecuritytoken_pts_itch_v1_2.logout_request.display = function(packet, parent, length)
  return "Logout Request"
end


-- Dissect: Logout Request
odx_odxsecuritytoken_pts_itch_v1_2.logout_request.dissect = function(buffer, offset, packet, parent)
  local display = odx_odxsecuritytoken_pts_itch_v1_2.logout_request.display(packet, parent, 0)
  packet.cols.info = display

  return offset
end

-- Client Heartbeat
odx_odxsecuritytoken_pts_itch_v1_2.client_heartbeat = {}

-- Display: Client Heartbeat
odx_odxsecuritytoken_pts_itch_v1_2.client_heartbeat.display = function(packet, parent, length)
  return "Client Heartbeat"
end


-- Dissect: Client Heartbeat
odx_odxsecuritytoken_pts_itch_v1_2.client_heartbeat.dissect = function(buffer, offset, packet, parent)
  local display = odx_odxsecuritytoken_pts_itch_v1_2.client_heartbeat.display(packet, parent, 0)
  packet.cols.info = display

  return offset
end

-- Unsequenced Data Packet
odx_odxsecuritytoken_pts_itch_v1_2.unsequenced_data_packet = {}

-- Read runtime size of: Unsequenced Data Packet
odx_odxsecuritytoken_pts_itch_v1_2.unsequenced_data_packet.size = function(buffer, offset)
  local index = offset

  -- Dependency element: Packet Length
  local packet_length = buffer(offset - 3, 2):uint()

  return packet_length - 1
end

-- Display: Unsequenced Data Packet
odx_odxsecuritytoken_pts_itch_v1_2.unsequenced_data_packet.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Unsequenced Data Packet
odx_odxsecuritytoken_pts_itch_v1_2.unsequenced_data_packet.fields = function(buffer, offset, packet, parent, size_of_unsequenced_data_packet)
  local index = offset

  -- Unsequenced Message Type: 1 Byte Ascii String
  index, unsequenced_message_type = odx_odxsecuritytoken_pts_itch_v1_2.unsequenced_message_type.dissect(buffer, index, packet, parent)

  -- Dependency element: Packet Length
  local packet_length = buffer(offset - 3, 2):uint()

  -- Runtime Size Of: Unsequenced Message
  local size_of_unsequenced_message = packet_length - 2

  -- Unsequenced Message: 0 Byte
  index, unsequenced_message = odx_odxsecuritytoken_pts_itch_v1_2.unsequenced_message.dissect(buffer, index, packet, parent, size_of_unsequenced_message)

  return index
end

-- Dissect: Unsequenced Data Packet
odx_odxsecuritytoken_pts_itch_v1_2.unsequenced_data_packet.dissect = function(buffer, offset, packet, parent, size_of_unsequenced_data_packet)
  local size_of_unsequenced_data_packet = odx_odxsecuritytoken_pts_itch_v1_2.unsequenced_data_packet.size(buffer, offset)
  local index = offset + size_of_unsequenced_data_packet

  -- Optionally add group/struct element to protocol tree
  if show.session_messages then
    parent = parent:add(omi_odx_odxsecuritytoken_pts_itch_v1_2.fields.unsequenced_data_packet, buffer(offset, 0))
    local current = odx_odxsecuritytoken_pts_itch_v1_2.unsequenced_data_packet.fields(buffer, offset, packet, parent, size_of_unsequenced_data_packet)
    parent:set_len(size_of_unsequenced_data_packet)
    local display = odx_odxsecuritytoken_pts_itch_v1_2.unsequenced_data_packet.display(buffer, packet, parent)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    odx_odxsecuritytoken_pts_itch_v1_2.unsequenced_data_packet.fields(buffer, offset, packet, parent, size_of_unsequenced_data_packet)

    return index
  end
end

-- Login Request Packet
odx_odxsecuritytoken_pts_itch_v1_2.login_request_packet = {}

-- Size: Login Request Packet
odx_odxsecuritytoken_pts_itch_v1_2.login_request_packet.size =
  odx_odxsecuritytoken_pts_itch_v1_2.username.size + 
  odx_odxsecuritytoken_pts_itch_v1_2.password.size + 
  odx_odxsecuritytoken_pts_itch_v1_2.requested_session.size + 
  odx_odxsecuritytoken_pts_itch_v1_2.requested_sequence_number.size

-- Display: Login Request Packet
odx_odxsecuritytoken_pts_itch_v1_2.login_request_packet.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Login Request Packet
odx_odxsecuritytoken_pts_itch_v1_2.login_request_packet.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Username: 6 Byte Ascii String
  index, username = odx_odxsecuritytoken_pts_itch_v1_2.username.dissect(buffer, index, packet, parent)

  -- Password: 10 Byte Ascii String
  index, password = odx_odxsecuritytoken_pts_itch_v1_2.password.dissect(buffer, index, packet, parent)

  -- Requested Session: 10 Byte Ascii String
  index, requested_session = odx_odxsecuritytoken_pts_itch_v1_2.requested_session.dissect(buffer, index, packet, parent)

  -- Requested Sequence Number: 20 Byte Ascii String
  index, requested_sequence_number = odx_odxsecuritytoken_pts_itch_v1_2.requested_sequence_number.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Login Request Packet
odx_odxsecuritytoken_pts_itch_v1_2.login_request_packet.dissect = function(buffer, offset, packet, parent)
  if show.session_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_odx_odxsecuritytoken_pts_itch_v1_2.fields.login_request_packet, buffer(offset, 0))
    local index = odx_odxsecuritytoken_pts_itch_v1_2.login_request_packet.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = odx_odxsecuritytoken_pts_itch_v1_2.login_request_packet.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return odx_odxsecuritytoken_pts_itch_v1_2.login_request_packet.fields(buffer, offset, packet, parent)
  end
end

-- Client Payload
odx_odxsecuritytoken_pts_itch_v1_2.client_payload = {}

-- Dissect: Client Payload
odx_odxsecuritytoken_pts_itch_v1_2.client_payload.dissect = function(buffer, offset, packet, parent, client_packet_type)
  -- Dissect Debug Packet
  if client_packet_type == "+" then
    return odx_odxsecuritytoken_pts_itch_v1_2.debug_packet.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Login Request Packet
  if client_packet_type == "L" then
    return odx_odxsecuritytoken_pts_itch_v1_2.login_request_packet.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Unsequenced Data Packet
  if client_packet_type == "U" then
    return odx_odxsecuritytoken_pts_itch_v1_2.unsequenced_data_packet.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Client Heartbeat
  if client_packet_type == "R" then
    return odx_odxsecuritytoken_pts_itch_v1_2.client_heartbeat.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Logout Request
  if client_packet_type == "O" then
    return odx_odxsecuritytoken_pts_itch_v1_2.logout_request.dissect(buffer, offset, packet, parent)
  end

  return offset
end

-- Client Packet Header
odx_odxsecuritytoken_pts_itch_v1_2.client_packet_header = {}

-- Size: Client Packet Header
odx_odxsecuritytoken_pts_itch_v1_2.client_packet_header.size =
  odx_odxsecuritytoken_pts_itch_v1_2.packet_length.size + 
  odx_odxsecuritytoken_pts_itch_v1_2.client_packet_type.size

-- Display: Client Packet Header
odx_odxsecuritytoken_pts_itch_v1_2.client_packet_header.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Client Packet Header
odx_odxsecuritytoken_pts_itch_v1_2.client_packet_header.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Packet Length: 2 Byte Unsigned Fixed Width Integer
  index, packet_length = odx_odxsecuritytoken_pts_itch_v1_2.packet_length.dissect(buffer, index, packet, parent)

  -- Client Packet Type: 1 Byte Ascii String Enum with 5 values
  index, client_packet_type = odx_odxsecuritytoken_pts_itch_v1_2.client_packet_type.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Client Packet Header
odx_odxsecuritytoken_pts_itch_v1_2.client_packet_header.dissect = function(buffer, offset, packet, parent)
  if show.structs then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_odx_odxsecuritytoken_pts_itch_v1_2.fields.client_packet_header, buffer(offset, 0))
    local index = odx_odxsecuritytoken_pts_itch_v1_2.client_packet_header.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = odx_odxsecuritytoken_pts_itch_v1_2.client_packet_header.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return odx_odxsecuritytoken_pts_itch_v1_2.client_packet_header.fields(buffer, offset, packet, parent)
  end
end

-- Client Soup Bin Tcp Packet
odx_odxsecuritytoken_pts_itch_v1_2.client_soup_bin_tcp_packet = {}

-- Display: Client Soup Bin Tcp Packet
odx_odxsecuritytoken_pts_itch_v1_2.client_soup_bin_tcp_packet.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Client Soup Bin Tcp Packet
odx_odxsecuritytoken_pts_itch_v1_2.client_soup_bin_tcp_packet.fields = function(buffer, offset, packet, parent, size_of_client_soup_bin_tcp_packet)
  local index = offset

  -- Client Packet Header: Struct of 2 fields
  index, client_packet_header = odx_odxsecuritytoken_pts_itch_v1_2.client_packet_header.dissect(buffer, index, packet, parent)

  -- Dependency element: Client Packet Type
  local client_packet_type = buffer(index - 1, 1):string()

  -- Client Payload: Runtime Type with 5 branches
  index = odx_odxsecuritytoken_pts_itch_v1_2.client_payload.dissect(buffer, index, packet, parent, client_packet_type)

  return index
end

-- Dissect: Client Soup Bin Tcp Packet
odx_odxsecuritytoken_pts_itch_v1_2.client_soup_bin_tcp_packet.dissect = function(buffer, offset, packet, parent, size_of_client_soup_bin_tcp_packet)
  local index = offset + size_of_client_soup_bin_tcp_packet

  -- Optionally add group/struct element to protocol tree
  if show.structs then
    parent = parent:add(omi_odx_odxsecuritytoken_pts_itch_v1_2.fields.client_soup_bin_tcp_packet, buffer(offset, 0))
    local current = odx_odxsecuritytoken_pts_itch_v1_2.client_soup_bin_tcp_packet.fields(buffer, offset, packet, parent, size_of_client_soup_bin_tcp_packet)
    parent:set_len(size_of_client_soup_bin_tcp_packet)
    local display = odx_odxsecuritytoken_pts_itch_v1_2.client_soup_bin_tcp_packet.display(buffer, packet, parent)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    odx_odxsecuritytoken_pts_itch_v1_2.client_soup_bin_tcp_packet.fields(buffer, offset, packet, parent, size_of_client_soup_bin_tcp_packet)

    return index
  end
end

-- Remaining Bytes For: Client Soup Bin Tcp Packet
local client_soup_bin_tcp_packet_bytes_remaining = function(buffer, index, available)
  -- Calculate the number of bytes remaining
  local remaining = available - index

  -- Check if packet size can be read
  if remaining < odx_odxsecuritytoken_pts_itch_v1_2.client_packet_header.size then
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
odx_odxsecuritytoken_pts_itch_v1_2.client_packet = {}

-- Verify required size of Tcp packet
odx_odxsecuritytoken_pts_itch_v1_2.client_packet.requiredsize = function(buffer)
  return buffer:len() >= odx_odxsecuritytoken_pts_itch_v1_2.client_packet_header.size
end

-- Dissect Client Packet
odx_odxsecuritytoken_pts_itch_v1_2.client_packet.dissect = function(buffer, packet, parent)
  local index = 0

  -- Dependency for Client Soup Bin Tcp Packet
  local end_of_payload = buffer:len()

  -- Client Soup Bin Tcp Packet: Struct of 2 fields
  while index < end_of_payload do

    -- Are minimum number of bytes are available?
    local available, size_of_client_soup_bin_tcp_packet = client_soup_bin_tcp_packet_bytes_remaining(buffer, index, end_of_payload)

    if available > 0 then
      index = odx_odxsecuritytoken_pts_itch_v1_2.client_soup_bin_tcp_packet.dissect(buffer, index, packet, parent, size_of_client_soup_bin_tcp_packet)
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
function omi_odx_odxsecuritytoken_pts_itch_v1_2.init()
  odx_odxsecuritytoken_pts_itch_v1_2.seconds.current = nil
  odx_odxsecuritytoken_pts_itch_v1_2.conversation.current = nil
  odx_odxsecuritytoken_pts_itch_v1_2.conversation.flows = {}
end

-- Connection roles for Odx OdxSecurityToken Pts Itch 1.2: Client is the initiator, Server is the acceptor
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
odx_odxsecuritytoken_pts_itch_v1_2.role = function(packet)
  if omi_odx_odxsecuritytoken_pts_itch_v1_2.prefs.assume_role == 1 then
    return "initiator"
  end
  if omi_odx_odxsecuritytoken_pts_itch_v1_2.prefs.assume_role == 2 then
    return "acceptor"
  end
  local port = omi_odx_odxsecuritytoken_pts_itch_v1_2.prefs.acceptor_port
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
  if omi_odx_odxsecuritytoken_pts_itch_v1_2.prefs.swap_sides then
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
odx_odxsecuritytoken_pts_itch_v1_2.swap = function(packet)
  local key = conversation(packet)
  swapped[key] = not swapped[key]
end


-- Dissector for Odx OdxSecurityToken Pts Itch 1.2
function omi_odx_odxsecuritytoken_pts_itch_v1_2.dissector(buffer, packet, parent)

  -- Set protocol name
  packet.cols.protocol = omi_odx_odxsecuritytoken_pts_itch_v1_2.name

  -- Dissect protocol
  local protocol = parent:add(omi_odx_odxsecuritytoken_pts_itch_v1_2, buffer(), omi_odx_odxsecuritytoken_pts_itch_v1_2.description, "("..buffer:len().." Bytes)")
  local role = odx_odxsecuritytoken_pts_itch_v1_2.role(packet)
  if role == "initiator" then
    return odx_odxsecuritytoken_pts_itch_v1_2.client_packet.dissect(buffer, packet, protocol)
  end
  return odx_odxsecuritytoken_pts_itch_v1_2.server_packet.dissect(buffer, packet, protocol)
end


-----------------------------------------------------------------------
-- Protocol Fingerprints
-----------------------------------------------------------------------

-- Fingerprint of Client Packet: would its message dispatch accept this frame?
odx_odxsecuritytoken_pts_itch_v1_2.client_packet.fingerprint = function(buffer)
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
odx_odxsecuritytoken_pts_itch_v1_2.server_packet.fingerprint = function(buffer)
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

-- Dissector Heuristic for Odx OdxSecurityToken Pts Itch 1.2 (Tcp)
local function omi_odx_odxsecuritytoken_pts_itch_v1_2_tcp_initiator_heuristic(buffer, packet, parent)
  -- Verify packet length
  if not odx_odxsecuritytoken_pts_itch_v1_2.client_packet.requiredsize(buffer) then return false end

  -- Verify the frame matches this side's fingerprint
  if not odx_odxsecuritytoken_pts_itch_v1_2.client_packet.fingerprint(buffer) then return false end

  -- Protocol is valid, set conversation and dissect this packet
  packet.conversation = omi_odx_odxsecuritytoken_pts_itch_v1_2
  omi_odx_odxsecuritytoken_pts_itch_v1_2.dissector(buffer, packet, parent)

  return true
end

-- Dissector Heuristic for Odx OdxSecurityToken Pts Itch 1.2 (Tcp)
local function omi_odx_odxsecuritytoken_pts_itch_v1_2_tcp_acceptor_heuristic(buffer, packet, parent)
  -- Verify packet length
  if not odx_odxsecuritytoken_pts_itch_v1_2.server_packet.requiredsize(buffer) then return false end

  -- Verify the frame matches this side's fingerprint
  if not odx_odxsecuritytoken_pts_itch_v1_2.server_packet.fingerprint(buffer) then return false end

  -- Protocol is valid, set conversation and dissect this packet
  packet.conversation = omi_odx_odxsecuritytoken_pts_itch_v1_2
  omi_odx_odxsecuritytoken_pts_itch_v1_2.dissector(buffer, packet, parent)

  return true
end

-- Dissector Heuristic for Odx OdxSecurityToken Pts Itch 1.2 (Tcp): apply the heuristic of the sender's connection role
local function omi_odx_odxsecuritytoken_pts_itch_v1_2_tcp_heuristic(buffer, packet, parent)
  local role = odx_odxsecuritytoken_pts_itch_v1_2.role(packet)
  local first, second = omi_odx_odxsecuritytoken_pts_itch_v1_2_tcp_initiator_heuristic, omi_odx_odxsecuritytoken_pts_itch_v1_2_tcp_acceptor_heuristic
  if role == "acceptor" then
    first, second = second, first
  end
  if first(buffer, packet, parent) then
    return true
  end

  -- The other side may have sent this conversation's first frame: swap, and swap back if it cannot claim either
  odx_odxsecuritytoken_pts_itch_v1_2.swap(packet)
  if second(buffer, packet, parent) then
    return true
  end
  odx_odxsecuritytoken_pts_itch_v1_2.swap(packet)

  return false
end

-- Register Heuristics for Odx OdxSecurityToken Pts Itch 1.2
omi_odx_odxsecuritytoken_pts_itch_v1_2:register_heuristic("tcp", omi_odx_odxsecuritytoken_pts_itch_v1_2_tcp_heuristic)

-----------------------------------------------------------------------
-- Lua dissectors are an easily edited and modified cross-platform dissection solution.
-- Feel free to modify. Enjoy.
-----------------------------------------------------------------------
--
-- Protocol:
--   Organization: Osaka Digital Exchange
--   Version: 1.2
--   Date: Monday, April 6, 2026
--   Specification: ODX_PTS_ITCH (Security Token)_v1.2.pdf
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
