-----------------------------------------------------------------------
-- Lua Script Wireshark Dissector
-- 
-- Please see end of file for rules and regulations
-----------------------------------------------------------------------

-- Jnx JnxEquities Pts Itch 1.7 Protocol
local omi_jnx_jnxequities_pts_itch_v1_7 = Proto("Jnx.JnxEquities.Pts.Itch.v1.7.Lua", "Jnx JnxEquities Pts Itch 1.7")

-- Protocol table
local jnx_jnxequities_pts_itch_v1_7 = {}

-----------------------------------------------------------------------
-- Declare Protocol Fields
-----------------------------------------------------------------------

-- Jnx JnxEquities Pts Itch 1.7 Fields
omi_jnx_jnxequities_pts_itch_v1_7.fields.accepted_sequence_number = ProtoField.new("Accepted Sequence Number", "jnx.jnxequities.pts.itch.v1.7.acceptedsequencenumber", ftypes.STRING)
omi_jnx_jnxequities_pts_itch_v1_7.fields.accepted_session = ProtoField.new("Accepted Session", "jnx.jnxequities.pts.itch.v1.7.acceptedsession", ftypes.STRING)
omi_jnx_jnxequities_pts_itch_v1_7.fields.attribution = ProtoField.new("Attribution", "jnx.jnxequities.pts.itch.v1.7.attribution", ftypes.STRING)
omi_jnx_jnxequities_pts_itch_v1_7.fields.buy_sell_indicator = ProtoField.new("Buy Sell Indicator", "jnx.jnxequities.pts.itch.v1.7.buysellindicator", ftypes.STRING)
omi_jnx_jnxequities_pts_itch_v1_7.fields.executed_quantity = ProtoField.new("Executed Quantity", "jnx.jnxequities.pts.itch.v1.7.executedquantity", ftypes.UINT32)
omi_jnx_jnxequities_pts_itch_v1_7.fields.group = ProtoField.new("Group", "jnx.jnxequities.pts.itch.v1.7.group", ftypes.STRING)
omi_jnx_jnxequities_pts_itch_v1_7.fields.lower_price_limit = ProtoField.new("Lower Price Limit", "jnx.jnxequities.pts.itch.v1.7.lowerpricelimit", ftypes.DOUBLE)
omi_jnx_jnxequities_pts_itch_v1_7.fields.match_number = ProtoField.new("Match Number", "jnx.jnxequities.pts.itch.v1.7.matchnumber", ftypes.UINT64)
omi_jnx_jnxequities_pts_itch_v1_7.fields.message = ProtoField.new("Message", "jnx.jnxequities.pts.itch.v1.7.message", ftypes.STRING)
omi_jnx_jnxequities_pts_itch_v1_7.fields.message_count = ProtoField.new("Message Count", "jnx.jnxequities.pts.itch.v1.7.messagecount", ftypes.UINT16)
omi_jnx_jnxequities_pts_itch_v1_7.fields.message_header = ProtoField.new("Message Header", "jnx.jnxequities.pts.itch.v1.7.messageheader", ftypes.STRING)
omi_jnx_jnxequities_pts_itch_v1_7.fields.message_length = ProtoField.new("Message Length", "jnx.jnxequities.pts.itch.v1.7.messagelength", ftypes.UINT16)
omi_jnx_jnxequities_pts_itch_v1_7.fields.message_type = ProtoField.new("Message Type", "jnx.jnxequities.pts.itch.v1.7.messagetype", ftypes.STRING)
omi_jnx_jnxequities_pts_itch_v1_7.fields.mold_udp_64_packet = ProtoField.new("Mold Udp 64 Packet", "jnx.jnxequities.pts.itch.v1.7.moldudp64packet", ftypes.STRING)
omi_jnx_jnxequities_pts_itch_v1_7.fields.new_order_number = ProtoField.new("New Order Number", "jnx.jnxequities.pts.itch.v1.7.newordernumber", ftypes.UINT64)
omi_jnx_jnxequities_pts_itch_v1_7.fields.order_number = ProtoField.new("Order Number", "jnx.jnxequities.pts.itch.v1.7.ordernumber", ftypes.UINT64)
omi_jnx_jnxequities_pts_itch_v1_7.fields.order_type = ProtoField.new("Order Type", "jnx.jnxequities.pts.itch.v1.7.ordertype", ftypes.STRING)
omi_jnx_jnxequities_pts_itch_v1_7.fields.orderbook_code = ProtoField.new("Orderbook Code", "jnx.jnxequities.pts.itch.v1.7.orderbookcode", ftypes.STRING)
omi_jnx_jnxequities_pts_itch_v1_7.fields.orderbook_id = ProtoField.new("Orderbook Id", "jnx.jnxequities.pts.itch.v1.7.orderbookid", ftypes.STRING)
omi_jnx_jnxequities_pts_itch_v1_7.fields.original_order_number = ProtoField.new("Original Order Number", "jnx.jnxequities.pts.itch.v1.7.originalordernumber", ftypes.UINT64)
omi_jnx_jnxequities_pts_itch_v1_7.fields.packet_length = ProtoField.new("Packet Length", "jnx.jnxequities.pts.itch.v1.7.packetlength", ftypes.UINT16)
omi_jnx_jnxequities_pts_itch_v1_7.fields.packet_type = ProtoField.new("Packet Type", "jnx.jnxequities.pts.itch.v1.7.packettype", ftypes.STRING)
omi_jnx_jnxequities_pts_itch_v1_7.fields.password = ProtoField.new("Password", "jnx.jnxequities.pts.itch.v1.7.password", ftypes.STRING)
omi_jnx_jnxequities_pts_itch_v1_7.fields.price = ProtoField.new("Price", "jnx.jnxequities.pts.itch.v1.7.price", ftypes.DOUBLE)
omi_jnx_jnxequities_pts_itch_v1_7.fields.price_decimals = ProtoField.new("Price Decimals", "jnx.jnxequities.pts.itch.v1.7.pricedecimals", ftypes.DOUBLE)
omi_jnx_jnxequities_pts_itch_v1_7.fields.price_start = ProtoField.new("Price Start", "jnx.jnxequities.pts.itch.v1.7.pricestart", ftypes.DOUBLE)
omi_jnx_jnxequities_pts_itch_v1_7.fields.price_tick_size = ProtoField.new("Price Tick Size", "jnx.jnxequities.pts.itch.v1.7.priceticksize", ftypes.DOUBLE)
omi_jnx_jnxequities_pts_itch_v1_7.fields.price_tick_size_table_id = ProtoField.new("Price Tick Size Table Id", "jnx.jnxequities.pts.itch.v1.7.priceticksizetableid", ftypes.DOUBLE)
omi_jnx_jnxequities_pts_itch_v1_7.fields.quantity = ProtoField.new("Quantity", "jnx.jnxequities.pts.itch.v1.7.quantity", ftypes.UINT32)
omi_jnx_jnxequities_pts_itch_v1_7.fields.reject_reason_code = ProtoField.new("Reject Reason Code", "jnx.jnxequities.pts.itch.v1.7.rejectreasoncode", ftypes.STRING)
omi_jnx_jnxequities_pts_itch_v1_7.fields.requested_sequence_number = ProtoField.new("Requested Sequence Number", "jnx.jnxequities.pts.itch.v1.7.requestedsequencenumber", ftypes.STRING)
omi_jnx_jnxequities_pts_itch_v1_7.fields.requested_session = ProtoField.new("Requested Session", "jnx.jnxequities.pts.itch.v1.7.requestedsession", ftypes.STRING)
omi_jnx_jnxequities_pts_itch_v1_7.fields.round_lot_size = ProtoField.new("Round Lot Size", "jnx.jnxequities.pts.itch.v1.7.roundlotsize", ftypes.UINT32)
omi_jnx_jnxequities_pts_itch_v1_7.fields.sequenced_message_type = ProtoField.new("Sequenced Message Type", "jnx.jnxequities.pts.itch.v1.7.sequencedmessagetype", ftypes.STRING)
omi_jnx_jnxequities_pts_itch_v1_7.fields.short_selling_state = ProtoField.new("Short Selling State", "jnx.jnxequities.pts.itch.v1.7.shortsellingstate", ftypes.STRING)
omi_jnx_jnxequities_pts_itch_v1_7.fields.soup_bin_tcp_packet = ProtoField.new("Soup Bin Tcp Packet", "jnx.jnxequities.pts.itch.v1.7.soupbintcppacket", ftypes.STRING)
omi_jnx_jnxequities_pts_itch_v1_7.fields.system_event = ProtoField.new("System Event", "jnx.jnxequities.pts.itch.v1.7.systemevent", ftypes.STRING)
omi_jnx_jnxequities_pts_itch_v1_7.fields.tcp_packet = ProtoField.new("Tcp Packet", "jnx.jnxequities.pts.itch.v1.7.tcppacket", ftypes.STRING)
omi_jnx_jnxequities_pts_itch_v1_7.fields.tcp_packet_header = ProtoField.new("Tcp Packet Header", "jnx.jnxequities.pts.itch.v1.7.tcppacketheader", ftypes.STRING)
omi_jnx_jnxequities_pts_itch_v1_7.fields.text = ProtoField.new("Text", "jnx.jnxequities.pts.itch.v1.7.text", ftypes.STRING)
omi_jnx_jnxequities_pts_itch_v1_7.fields.timestamp_nanoseconds = ProtoField.new("Timestamp Nanoseconds", "jnx.jnxequities.pts.itch.v1.7.timestampnanoseconds", ftypes.UINT32)
omi_jnx_jnxequities_pts_itch_v1_7.fields.timestamp_seconds = ProtoField.new("Timestamp Seconds", "jnx.jnxequities.pts.itch.v1.7.timestampseconds", ftypes.UINT32)
omi_jnx_jnxequities_pts_itch_v1_7.fields.trading_state = ProtoField.new("Trading State", "jnx.jnxequities.pts.itch.v1.7.tradingstate", ftypes.STRING)
omi_jnx_jnxequities_pts_itch_v1_7.fields.udp_packet_header = ProtoField.new("Udp Packet Header", "jnx.jnxequities.pts.itch.v1.7.udppacketheader", ftypes.STRING)
omi_jnx_jnxequities_pts_itch_v1_7.fields.udp_sequence_number = ProtoField.new("Udp Sequence Number", "jnx.jnxequities.pts.itch.v1.7.udpsequencenumber", ftypes.UINT64)
omi_jnx_jnxequities_pts_itch_v1_7.fields.udp_session = ProtoField.new("Udp Session", "jnx.jnxequities.pts.itch.v1.7.udpsession", ftypes.STRING)
omi_jnx_jnxequities_pts_itch_v1_7.fields.unsequenced_message_type = ProtoField.new("Unsequenced Message Type", "jnx.jnxequities.pts.itch.v1.7.unsequencedmessagetype", ftypes.STRING)
omi_jnx_jnxequities_pts_itch_v1_7.fields.upper_price_limit = ProtoField.new("Upper Price Limit", "jnx.jnxequities.pts.itch.v1.7.upperpricelimit", ftypes.DOUBLE)
omi_jnx_jnxequities_pts_itch_v1_7.fields.username = ProtoField.new("Username", "jnx.jnxequities.pts.itch.v1.7.username", ftypes.STRING)

-- Jnx JnxEquities Itch Pts 1.7 Session Messages
omi_jnx_jnxequities_pts_itch_v1_7.fields.debug_packet = ProtoField.new("Debug Packet", "jnx.jnxequities.pts.itch.v1.7.debugpacket", ftypes.STRING)
omi_jnx_jnxequities_pts_itch_v1_7.fields.login_accepted_packet = ProtoField.new("Login Accepted Packet", "jnx.jnxequities.pts.itch.v1.7.loginacceptedpacket", ftypes.STRING)
omi_jnx_jnxequities_pts_itch_v1_7.fields.login_rejected_packet = ProtoField.new("Login Rejected Packet", "jnx.jnxequities.pts.itch.v1.7.loginrejectedpacket", ftypes.STRING)
omi_jnx_jnxequities_pts_itch_v1_7.fields.login_request_packet = ProtoField.new("Login Request Packet", "jnx.jnxequities.pts.itch.v1.7.loginrequestpacket", ftypes.STRING)
omi_jnx_jnxequities_pts_itch_v1_7.fields.sequenced_data_packet = ProtoField.new("Sequenced Data Packet", "jnx.jnxequities.pts.itch.v1.7.sequenceddatapacket", ftypes.STRING)
omi_jnx_jnxequities_pts_itch_v1_7.fields.unsequenced_data_packet = ProtoField.new("Unsequenced Data Packet", "jnx.jnxequities.pts.itch.v1.7.unsequenceddatapacket", ftypes.STRING)

-- Jnx JnxEquities Itch Pts 1.7 Application Messages
omi_jnx_jnxequities_pts_itch_v1_7.fields.order_added_with_attributes_message = ProtoField.new("Order Added With Attributes Message", "jnx.jnxequities.pts.itch.v1.7.orderaddedwithattributesmessage", ftypes.STRING)
omi_jnx_jnxequities_pts_itch_v1_7.fields.order_added_without_attributes_message = ProtoField.new("Order Added Without Attributes Message", "jnx.jnxequities.pts.itch.v1.7.orderaddedwithoutattributesmessage", ftypes.STRING)
omi_jnx_jnxequities_pts_itch_v1_7.fields.order_deleted_message = ProtoField.new("Order Deleted Message", "jnx.jnxequities.pts.itch.v1.7.orderdeletedmessage", ftypes.STRING)
omi_jnx_jnxequities_pts_itch_v1_7.fields.order_executed_message = ProtoField.new("Order Executed Message", "jnx.jnxequities.pts.itch.v1.7.orderexecutedmessage", ftypes.STRING)
omi_jnx_jnxequities_pts_itch_v1_7.fields.order_replaced_message = ProtoField.new("Order Replaced Message", "jnx.jnxequities.pts.itch.v1.7.orderreplacedmessage", ftypes.STRING)
omi_jnx_jnxequities_pts_itch_v1_7.fields.orderbook_directory_message = ProtoField.new("Orderbook Directory Message", "jnx.jnxequities.pts.itch.v1.7.orderbookdirectorymessage", ftypes.STRING)
omi_jnx_jnxequities_pts_itch_v1_7.fields.price_tick_size_message = ProtoField.new("Price Tick Size Message", "jnx.jnxequities.pts.itch.v1.7.priceticksizemessage", ftypes.STRING)
omi_jnx_jnxequities_pts_itch_v1_7.fields.short_selling_price_restriction_state_message = ProtoField.new("Short Selling Price Restriction State Message", "jnx.jnxequities.pts.itch.v1.7.shortsellingpricerestrictionstatemessage", ftypes.STRING)
omi_jnx_jnxequities_pts_itch_v1_7.fields.system_event_message = ProtoField.new("System Event Message", "jnx.jnxequities.pts.itch.v1.7.systemeventmessage", ftypes.STRING)
omi_jnx_jnxequities_pts_itch_v1_7.fields.timestamp_seconds_message = ProtoField.new("Timestamp Seconds Message", "jnx.jnxequities.pts.itch.v1.7.timestampsecondsmessage", ftypes.STRING)
omi_jnx_jnxequities_pts_itch_v1_7.fields.trading_state_message = ProtoField.new("Trading State Message", "jnx.jnxequities.pts.itch.v1.7.tradingstatemessage", ftypes.STRING)

-- Jnx JnxEquities Pts Itch 1.7 generated fields
omi_jnx_jnxequities_pts_itch_v1_7.fields.message_index = ProtoField.new("Message Index", "jnx.jnxequities.pts.itch.v1.7.messageindex", ftypes.UINT16)
omi_jnx_jnxequities_pts_itch_v1_7.fields.timestamp = ProtoField.new("Timestamp", "jnx.jnxequities.pts.itch.v1.7.timestamp", ftypes.UINT64)

-----------------------------------------------------------------------
-- Declare Dissection Options
-----------------------------------------------------------------------

local show = {}

-- Jnx JnxEquities Pts Itch 1.7 Element Dissection Options
show.session_messages = true
show.message = true
show.message_header = true
show.mold_udp_64_packet = true
show.application_messages = true
show.soup_bin_tcp_packet = true
show.tcp_packet = true
show.tcp_packet_header = true
show.udp_packet_header = true
show.message_index = true

-- Register Jnx JnxEquities Pts Itch 1.7 Show Options
omi_jnx_jnxequities_pts_itch_v1_7.prefs.show_session_messages = Pref.bool("Show Session Messages", show.session_messages, "Parse and add Session Messages to protocol tree")
omi_jnx_jnxequities_pts_itch_v1_7.prefs.show_message = Pref.bool("Show Message", show.message, "Parse and add Message to protocol tree")
omi_jnx_jnxequities_pts_itch_v1_7.prefs.show_message_header = Pref.bool("Show Message Header", show.message_header, "Parse and add Message Header to protocol tree")
omi_jnx_jnxequities_pts_itch_v1_7.prefs.show_mold_udp_64_packet = Pref.bool("Show Mold Udp 64 Packet", show.mold_udp_64_packet, "Parse and add Mold Udp 64 Packet to protocol tree")
omi_jnx_jnxequities_pts_itch_v1_7.prefs.show_application_messages = Pref.bool("Show Application Messages", show.application_messages, "Parse and add Application Messages to protocol tree")
omi_jnx_jnxequities_pts_itch_v1_7.prefs.show_soup_bin_tcp_packet = Pref.bool("Show Soup Bin Tcp Packet", show.soup_bin_tcp_packet, "Parse and add Soup Bin Tcp Packet to protocol tree")
omi_jnx_jnxequities_pts_itch_v1_7.prefs.show_tcp_packet = Pref.bool("Show Tcp Packet", show.tcp_packet, "Parse and add Tcp Packet to protocol tree")
omi_jnx_jnxequities_pts_itch_v1_7.prefs.show_tcp_packet_header = Pref.bool("Show Tcp Packet Header", show.tcp_packet_header, "Parse and add Tcp Packet Header to protocol tree")
omi_jnx_jnxequities_pts_itch_v1_7.prefs.show_udp_packet_header = Pref.bool("Show Udp Packet Header", show.udp_packet_header, "Parse and add Udp Packet Header to protocol tree")
omi_jnx_jnxequities_pts_itch_v1_7.prefs.show_message_index = Pref.bool("Show Message Index", show.message_index, "Show generated message index in protocol tree")

-- Timestamp Nanoseconds Display Preferences
jnx_jnxequities_pts_itch_v1_7.timestamp_nanoseconds_format = 2  -- 0=Raw, 1=TimeOfDay, 2=FullDateTime
jnx_jnxequities_pts_itch_v1_7.utc_offset_hours = 5 -- Hours behind UTC (EST = 5, EDT = 4, UTC = 0)

local timestamp_nanoseconds_format_enum = {
  { 1, "Raw", 0 },
  { 2, "Time of Day", 1 },
  { 3, "Full DateTime", 2 }
}

omi_jnx_jnxequities_pts_itch_v1_7.prefs.timestamp_nanoseconds_format = Pref.enum("Timestamp Nanoseconds Format", 2, "Timestamp Nanoseconds display format", timestamp_nanoseconds_format_enum, false)
omi_jnx_jnxequities_pts_itch_v1_7.prefs.utc_offset_hours = Pref.uint("UTC Offset (hours)", 5, "Hours behind UTC for midnight calculation (EST=5, EDT=4, UTC=0)")

-- Handle changed preferences
function omi_jnx_jnxequities_pts_itch_v1_7.prefs_changed()

  -- Check if show options have changed
  if show.application_messages ~= omi_jnx_jnxequities_pts_itch_v1_7.prefs.show_application_messages then
    show.application_messages = omi_jnx_jnxequities_pts_itch_v1_7.prefs.show_application_messages
  end
  if show.message ~= omi_jnx_jnxequities_pts_itch_v1_7.prefs.show_message then
    show.message = omi_jnx_jnxequities_pts_itch_v1_7.prefs.show_message
  end
  if show.message_header ~= omi_jnx_jnxequities_pts_itch_v1_7.prefs.show_message_header then
    show.message_header = omi_jnx_jnxequities_pts_itch_v1_7.prefs.show_message_header
  end
  if show.mold_udp_64_packet ~= omi_jnx_jnxequities_pts_itch_v1_7.prefs.show_mold_udp_64_packet then
    show.mold_udp_64_packet = omi_jnx_jnxequities_pts_itch_v1_7.prefs.show_mold_udp_64_packet
  end
  if show.session_messages ~= omi_jnx_jnxequities_pts_itch_v1_7.prefs.show_session_messages then
    show.session_messages = omi_jnx_jnxequities_pts_itch_v1_7.prefs.show_session_messages
  end
  if show.soup_bin_tcp_packet ~= omi_jnx_jnxequities_pts_itch_v1_7.prefs.show_soup_bin_tcp_packet then
    show.soup_bin_tcp_packet = omi_jnx_jnxequities_pts_itch_v1_7.prefs.show_soup_bin_tcp_packet
  end
  if show.tcp_packet ~= omi_jnx_jnxequities_pts_itch_v1_7.prefs.show_tcp_packet then
    show.tcp_packet = omi_jnx_jnxequities_pts_itch_v1_7.prefs.show_tcp_packet
  end
  if show.tcp_packet_header ~= omi_jnx_jnxequities_pts_itch_v1_7.prefs.show_tcp_packet_header then
    show.tcp_packet_header = omi_jnx_jnxequities_pts_itch_v1_7.prefs.show_tcp_packet_header
  end
  if show.udp_packet_header ~= omi_jnx_jnxequities_pts_itch_v1_7.prefs.show_udp_packet_header then
    show.udp_packet_header = omi_jnx_jnxequities_pts_itch_v1_7.prefs.show_udp_packet_header
  end
  if show.message_index ~= omi_jnx_jnxequities_pts_itch_v1_7.prefs.show_message_index then
    show.message_index = omi_jnx_jnxequities_pts_itch_v1_7.prefs.show_message_index
  end

  -- Check Timestamp Nanoseconds preferences
  if jnx_jnxequities_pts_itch_v1_7.timestamp_nanoseconds_format ~= omi_jnx_jnxequities_pts_itch_v1_7.prefs.timestamp_nanoseconds_format then
    jnx_jnxequities_pts_itch_v1_7.timestamp_nanoseconds_format = omi_jnx_jnxequities_pts_itch_v1_7.prefs.timestamp_nanoseconds_format
  end
  if jnx_jnxequities_pts_itch_v1_7.utc_offset_hours ~= omi_jnx_jnxequities_pts_itch_v1_7.prefs.utc_offset_hours then
    jnx_jnxequities_pts_itch_v1_7.utc_offset_hours = omi_jnx_jnxequities_pts_itch_v1_7.prefs.utc_offset_hours
  end
end


-----------------------------------------------------------------------
-- Protocol Conversation State
-----------------------------------------------------------------------

-- State attached to packet.conversation
jnx_jnxequities_pts_itch_v1_7.conversation = {}

-- Get/create our protocol's data record on the current packet's conversation
jnx_jnxequities_pts_itch_v1_7.conversation.data = function(packet)
  local conversation = packet.conversation
  local data = conversation[omi_jnx_jnxequities_pts_itch_v1_7]
  if data == nil then
    data = { timestamp_seconds = { last = nil, frames = {} } }
    conversation[omi_jnx_jnxequities_pts_itch_v1_7] = data
  end
  return data
end


-- Handle to the current packet's conversation data
jnx_jnxequities_pts_itch_v1_7.conversation.current = nil


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
-- Jnx JnxEquities Pts Itch 1.7 Fields
-----------------------------------------------------------------------

-- Accepted Sequence Number
jnx_jnxequities_pts_itch_v1_7.accepted_sequence_number = {}

-- Size: Accepted Sequence Number
jnx_jnxequities_pts_itch_v1_7.accepted_sequence_number.size = 20

-- Display: Accepted Sequence Number
jnx_jnxequities_pts_itch_v1_7.accepted_sequence_number.display = function(value)
  return "Accepted Sequence Number: "..value
end

-- Dissect: Accepted Sequence Number
jnx_jnxequities_pts_itch_v1_7.accepted_sequence_number.dissect = function(buffer, offset, packet, parent)
  local length = jnx_jnxequities_pts_itch_v1_7.accepted_sequence_number.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = jnx_jnxequities_pts_itch_v1_7.accepted_sequence_number.display(value, buffer, offset, packet, parent)

  parent:add(omi_jnx_jnxequities_pts_itch_v1_7.fields.accepted_sequence_number, range, value, display)

  return offset + length, value
end

-- Accepted Session
jnx_jnxequities_pts_itch_v1_7.accepted_session = {}

-- Size: Accepted Session
jnx_jnxequities_pts_itch_v1_7.accepted_session.size = 10

-- Display: Accepted Session
jnx_jnxequities_pts_itch_v1_7.accepted_session.display = function(value)
  return "Accepted Session: "..value
end

-- Dissect: Accepted Session
jnx_jnxequities_pts_itch_v1_7.accepted_session.dissect = function(buffer, offset, packet, parent)
  local length = jnx_jnxequities_pts_itch_v1_7.accepted_session.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = jnx_jnxequities_pts_itch_v1_7.accepted_session.display(value, buffer, offset, packet, parent)

  parent:add(omi_jnx_jnxequities_pts_itch_v1_7.fields.accepted_session, range, value, display)

  return offset + length, value
end

-- Attribution
jnx_jnxequities_pts_itch_v1_7.attribution = {}

-- Size: Attribution
jnx_jnxequities_pts_itch_v1_7.attribution.size = 4

-- Display: Attribution
jnx_jnxequities_pts_itch_v1_7.attribution.display = function(value)
  return "Attribution: "..value
end

-- Dissect: Attribution
jnx_jnxequities_pts_itch_v1_7.attribution.dissect = function(buffer, offset, packet, parent)
  local length = jnx_jnxequities_pts_itch_v1_7.attribution.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = jnx_jnxequities_pts_itch_v1_7.attribution.display(value, buffer, offset, packet, parent)

  parent:add(omi_jnx_jnxequities_pts_itch_v1_7.fields.attribution, range, value, display)

  return offset + length, value
end

-- Buy Sell Indicator
jnx_jnxequities_pts_itch_v1_7.buy_sell_indicator = {}

-- Size: Buy Sell Indicator
jnx_jnxequities_pts_itch_v1_7.buy_sell_indicator.size = 1

-- Display: Buy Sell Indicator
jnx_jnxequities_pts_itch_v1_7.buy_sell_indicator.display = function(value)
  if value == "B" then
    return "Buy Sell Indicator: Buy (B)"
  end
  if value == "S" then
    return "Buy Sell Indicator: Sell (S)"
  end

  return "Buy Sell Indicator: Unknown("..value..")"
end

-- Dissect: Buy Sell Indicator
jnx_jnxequities_pts_itch_v1_7.buy_sell_indicator.dissect = function(buffer, offset, packet, parent)
  local length = jnx_jnxequities_pts_itch_v1_7.buy_sell_indicator.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = jnx_jnxequities_pts_itch_v1_7.buy_sell_indicator.display(value, buffer, offset, packet, parent)

  parent:add(omi_jnx_jnxequities_pts_itch_v1_7.fields.buy_sell_indicator, range, value, display)

  return offset + length, value
end

-- Executed Quantity
jnx_jnxequities_pts_itch_v1_7.executed_quantity = {}

-- Size: Executed Quantity
jnx_jnxequities_pts_itch_v1_7.executed_quantity.size = 4

-- Display: Executed Quantity
jnx_jnxequities_pts_itch_v1_7.executed_quantity.display = function(value)
  return "Executed Quantity: "..value
end

-- Dissect: Executed Quantity
jnx_jnxequities_pts_itch_v1_7.executed_quantity.dissect = function(buffer, offset, packet, parent)
  local length = jnx_jnxequities_pts_itch_v1_7.executed_quantity.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = jnx_jnxequities_pts_itch_v1_7.executed_quantity.display(value, buffer, offset, packet, parent)

  parent:add(omi_jnx_jnxequities_pts_itch_v1_7.fields.executed_quantity, range, value, display)

  return offset + length, value
end

-- Group
jnx_jnxequities_pts_itch_v1_7.group = {}

-- Size: Group
jnx_jnxequities_pts_itch_v1_7.group.size = 4

-- Display: Group
jnx_jnxequities_pts_itch_v1_7.group.display = function(value)
  if value == "DAY" then
    return "Group: Daytime Market (DAY)"
  end
  if value == "NGHT" then
    return "Group: Nighttime Market (NGHT)"
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
jnx_jnxequities_pts_itch_v1_7.group.dissect = function(buffer, offset, packet, parent)
  local length = jnx_jnxequities_pts_itch_v1_7.group.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = jnx_jnxequities_pts_itch_v1_7.group.display(value, buffer, offset, packet, parent)

  parent:add(omi_jnx_jnxequities_pts_itch_v1_7.fields.group, range, value, display)

  return offset + length, value
end

-- Lower Price Limit
jnx_jnxequities_pts_itch_v1_7.lower_price_limit = {}

-- Size: Lower Price Limit
jnx_jnxequities_pts_itch_v1_7.lower_price_limit.size = 4

-- Display: Lower Price Limit
jnx_jnxequities_pts_itch_v1_7.lower_price_limit.display = function(value)
  return "Lower Price Limit: "..value
end

-- Translate: Lower Price Limit
jnx_jnxequities_pts_itch_v1_7.lower_price_limit.translate = function(raw)
  return raw/10
end

-- Dissect: Lower Price Limit
jnx_jnxequities_pts_itch_v1_7.lower_price_limit.dissect = function(buffer, offset, packet, parent)
  local length = jnx_jnxequities_pts_itch_v1_7.lower_price_limit.size
  local range = buffer(offset, length)
  local raw = range:uint()
  local value = jnx_jnxequities_pts_itch_v1_7.lower_price_limit.translate(raw)
  local display = jnx_jnxequities_pts_itch_v1_7.lower_price_limit.display(value, buffer, offset, packet, parent)

  parent:add(omi_jnx_jnxequities_pts_itch_v1_7.fields.lower_price_limit, range, value, display)

  return offset + length, value
end

-- Match Number
jnx_jnxequities_pts_itch_v1_7.match_number = {}

-- Size: Match Number
jnx_jnxequities_pts_itch_v1_7.match_number.size = 8

-- Display: Match Number
jnx_jnxequities_pts_itch_v1_7.match_number.display = function(value)
  return "Match Number: "..value
end

-- Dissect: Match Number
jnx_jnxequities_pts_itch_v1_7.match_number.dissect = function(buffer, offset, packet, parent)
  local length = jnx_jnxequities_pts_itch_v1_7.match_number.size
  local range = buffer(offset, length)
  local value = range:uint64()
  local display = jnx_jnxequities_pts_itch_v1_7.match_number.display(value, buffer, offset, packet, parent)

  parent:add(omi_jnx_jnxequities_pts_itch_v1_7.fields.match_number, range, value, display)

  return offset + length, value
end

-- Message Count
jnx_jnxequities_pts_itch_v1_7.message_count = {}

-- Size: Message Count
jnx_jnxequities_pts_itch_v1_7.message_count.size = 2

-- Display: Message Count
jnx_jnxequities_pts_itch_v1_7.message_count.display = function(value)
  return "Message Count: "..value
end

-- Dissect: Message Count
jnx_jnxequities_pts_itch_v1_7.message_count.dissect = function(buffer, offset, packet, parent)
  local length = jnx_jnxequities_pts_itch_v1_7.message_count.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = jnx_jnxequities_pts_itch_v1_7.message_count.display(value, buffer, offset, packet, parent)

  parent:add(omi_jnx_jnxequities_pts_itch_v1_7.fields.message_count, range, value, display)

  return offset + length, value
end

-- Message Length
jnx_jnxequities_pts_itch_v1_7.message_length = {}

-- Size: Message Length
jnx_jnxequities_pts_itch_v1_7.message_length.size = 2

-- Display: Message Length
jnx_jnxequities_pts_itch_v1_7.message_length.display = function(value)
  return "Message Length: "..value
end

-- Dissect: Message Length
jnx_jnxequities_pts_itch_v1_7.message_length.dissect = function(buffer, offset, packet, parent)
  local length = jnx_jnxequities_pts_itch_v1_7.message_length.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = jnx_jnxequities_pts_itch_v1_7.message_length.display(value, buffer, offset, packet, parent)

  parent:add(omi_jnx_jnxequities_pts_itch_v1_7.fields.message_length, range, value, display)

  return offset + length, value
end

-- Message Type
jnx_jnxequities_pts_itch_v1_7.message_type = {}

-- Size: Message Type
jnx_jnxequities_pts_itch_v1_7.message_type.size = 1

-- Display: Message Type
jnx_jnxequities_pts_itch_v1_7.message_type.display = function(value)
  if value == "T" then
    return "Message Type: Timestamp Seconds Message (T)"
  end
  if value == "S" then
    return "Message Type: System Event Message (S)"
  end
  if value == "L" then
    return "Message Type: Price Tick Size Message (L)"
  end
  if value == "R" then
    return "Message Type: Orderbook Directory Message (R)"
  end
  if value == "H" then
    return "Message Type: Trading State Message (H)"
  end
  if value == "Y" then
    return "Message Type: Short Selling Price Restriction State Message (Y)"
  end
  if value == "A" then
    return "Message Type: Order Added Without Attributes Message (A)"
  end
  if value == "F" then
    return "Message Type: Order Added With Attributes Message (F)"
  end
  if value == "E" then
    return "Message Type: Order Executed Message (E)"
  end
  if value == "D" then
    return "Message Type: Order Deleted Message (D)"
  end
  if value == "U" then
    return "Message Type: Order Replaced Message (U)"
  end

  return "Message Type: Unknown("..value..")"
end

-- Dissect: Message Type
jnx_jnxequities_pts_itch_v1_7.message_type.dissect = function(buffer, offset, packet, parent)
  local length = jnx_jnxequities_pts_itch_v1_7.message_type.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = jnx_jnxequities_pts_itch_v1_7.message_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_jnx_jnxequities_pts_itch_v1_7.fields.message_type, range, value, display)

  return offset + length, value
end

-- New Order Number
jnx_jnxequities_pts_itch_v1_7.new_order_number = {}

-- Size: New Order Number
jnx_jnxequities_pts_itch_v1_7.new_order_number.size = 8

-- Display: New Order Number
jnx_jnxequities_pts_itch_v1_7.new_order_number.display = function(value)
  return "New Order Number: "..value
end

-- Dissect: New Order Number
jnx_jnxequities_pts_itch_v1_7.new_order_number.dissect = function(buffer, offset, packet, parent)
  local length = jnx_jnxequities_pts_itch_v1_7.new_order_number.size
  local range = buffer(offset, length)
  local value = range:uint64()
  local display = jnx_jnxequities_pts_itch_v1_7.new_order_number.display(value, buffer, offset, packet, parent)

  parent:add(omi_jnx_jnxequities_pts_itch_v1_7.fields.new_order_number, range, value, display)

  return offset + length, value
end

-- Order Number
jnx_jnxequities_pts_itch_v1_7.order_number = {}

-- Size: Order Number
jnx_jnxequities_pts_itch_v1_7.order_number.size = 8

-- Display: Order Number
jnx_jnxequities_pts_itch_v1_7.order_number.display = function(value)
  return "Order Number: "..value
end

-- Dissect: Order Number
jnx_jnxequities_pts_itch_v1_7.order_number.dissect = function(buffer, offset, packet, parent)
  local length = jnx_jnxequities_pts_itch_v1_7.order_number.size
  local range = buffer(offset, length)
  local value = range:uint64()
  local display = jnx_jnxequities_pts_itch_v1_7.order_number.display(value, buffer, offset, packet, parent)

  parent:add(omi_jnx_jnxequities_pts_itch_v1_7.fields.order_number, range, value, display)

  return offset + length, value
end

-- Order Type
jnx_jnxequities_pts_itch_v1_7.order_type = {}

-- Size: Order Type
jnx_jnxequities_pts_itch_v1_7.order_type.size = 1

-- Display: Order Type
jnx_jnxequities_pts_itch_v1_7.order_type.display = function(value)
  if value == "Q" then
    return "Order Type: Dlp Order (Q)"
  end

  return "Order Type: Unknown("..value..")"
end

-- Dissect: Order Type
jnx_jnxequities_pts_itch_v1_7.order_type.dissect = function(buffer, offset, packet, parent)
  local length = jnx_jnxequities_pts_itch_v1_7.order_type.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = jnx_jnxequities_pts_itch_v1_7.order_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_jnx_jnxequities_pts_itch_v1_7.fields.order_type, range, value, display)

  return offset + length, value
end

-- Orderbook Code
jnx_jnxequities_pts_itch_v1_7.orderbook_code = {}

-- Size: Orderbook Code
jnx_jnxequities_pts_itch_v1_7.orderbook_code.size = 12

-- Display: Orderbook Code
jnx_jnxequities_pts_itch_v1_7.orderbook_code.display = function(value)
  return "Orderbook Code: "..value
end

-- Dissect: Orderbook Code
jnx_jnxequities_pts_itch_v1_7.orderbook_code.dissect = function(buffer, offset, packet, parent)
  local length = jnx_jnxequities_pts_itch_v1_7.orderbook_code.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = jnx_jnxequities_pts_itch_v1_7.orderbook_code.display(value, buffer, offset, packet, parent)

  parent:add(omi_jnx_jnxequities_pts_itch_v1_7.fields.orderbook_code, range, value, display)

  return offset + length, value
end

-- Orderbook Id
jnx_jnxequities_pts_itch_v1_7.orderbook_id = {}

-- Size: Orderbook Id
jnx_jnxequities_pts_itch_v1_7.orderbook_id.size = 4

-- Display: Orderbook Id
jnx_jnxequities_pts_itch_v1_7.orderbook_id.display = function(value)
  return "Orderbook Id: "..value
end

-- Dissect: Orderbook Id
jnx_jnxequities_pts_itch_v1_7.orderbook_id.dissect = function(buffer, offset, packet, parent)
  local length = jnx_jnxequities_pts_itch_v1_7.orderbook_id.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = jnx_jnxequities_pts_itch_v1_7.orderbook_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_jnx_jnxequities_pts_itch_v1_7.fields.orderbook_id, range, value, display)

  return offset + length, value
end

-- Original Order Number
jnx_jnxequities_pts_itch_v1_7.original_order_number = {}

-- Size: Original Order Number
jnx_jnxequities_pts_itch_v1_7.original_order_number.size = 8

-- Display: Original Order Number
jnx_jnxequities_pts_itch_v1_7.original_order_number.display = function(value)
  return "Original Order Number: "..value
end

-- Dissect: Original Order Number
jnx_jnxequities_pts_itch_v1_7.original_order_number.dissect = function(buffer, offset, packet, parent)
  local length = jnx_jnxequities_pts_itch_v1_7.original_order_number.size
  local range = buffer(offset, length)
  local value = range:uint64()
  local display = jnx_jnxequities_pts_itch_v1_7.original_order_number.display(value, buffer, offset, packet, parent)

  parent:add(omi_jnx_jnxequities_pts_itch_v1_7.fields.original_order_number, range, value, display)

  return offset + length, value
end

-- Packet Length
jnx_jnxequities_pts_itch_v1_7.packet_length = {}

-- Size: Packet Length
jnx_jnxequities_pts_itch_v1_7.packet_length.size = 2

-- Display: Packet Length
jnx_jnxequities_pts_itch_v1_7.packet_length.display = function(value)
  return "Packet Length: "..value
end

-- Dissect: Packet Length
jnx_jnxequities_pts_itch_v1_7.packet_length.dissect = function(buffer, offset, packet, parent)
  local length = jnx_jnxequities_pts_itch_v1_7.packet_length.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = jnx_jnxequities_pts_itch_v1_7.packet_length.display(value, buffer, offset, packet, parent)

  parent:add(omi_jnx_jnxequities_pts_itch_v1_7.fields.packet_length, range, value, display)

  return offset + length, value
end

-- Packet Type
jnx_jnxequities_pts_itch_v1_7.packet_type = {}

-- Size: Packet Type
jnx_jnxequities_pts_itch_v1_7.packet_type.size = 1

-- Display: Packet Type
jnx_jnxequities_pts_itch_v1_7.packet_type.display = function(value)
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
jnx_jnxequities_pts_itch_v1_7.packet_type.dissect = function(buffer, offset, packet, parent)
  local length = jnx_jnxequities_pts_itch_v1_7.packet_type.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = jnx_jnxequities_pts_itch_v1_7.packet_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_jnx_jnxequities_pts_itch_v1_7.fields.packet_type, range, value, display)

  return offset + length, value
end

-- Password
jnx_jnxequities_pts_itch_v1_7.password = {}

-- Size: Password
jnx_jnxequities_pts_itch_v1_7.password.size = 10

-- Display: Password
jnx_jnxequities_pts_itch_v1_7.password.display = function(value)
  return "Password: "..value
end

-- Dissect: Password
jnx_jnxequities_pts_itch_v1_7.password.dissect = function(buffer, offset, packet, parent)
  local length = jnx_jnxequities_pts_itch_v1_7.password.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = jnx_jnxequities_pts_itch_v1_7.password.display(value, buffer, offset, packet, parent)

  parent:add(omi_jnx_jnxequities_pts_itch_v1_7.fields.password, range, value, display)

  return offset + length, value
end

-- Price
jnx_jnxequities_pts_itch_v1_7.price = {}

-- Size: Price
jnx_jnxequities_pts_itch_v1_7.price.size = 4

-- Display: Price
jnx_jnxequities_pts_itch_v1_7.price.display = function(value)
  return "Price: "..value
end

-- Translate: Price
jnx_jnxequities_pts_itch_v1_7.price.translate = function(raw)
  return raw/10
end

-- Dissect: Price
jnx_jnxequities_pts_itch_v1_7.price.dissect = function(buffer, offset, packet, parent)
  local length = jnx_jnxequities_pts_itch_v1_7.price.size
  local range = buffer(offset, length)
  local raw = range:uint()
  local value = jnx_jnxequities_pts_itch_v1_7.price.translate(raw)
  local display = jnx_jnxequities_pts_itch_v1_7.price.display(value, buffer, offset, packet, parent)

  parent:add(omi_jnx_jnxequities_pts_itch_v1_7.fields.price, range, value, display)

  return offset + length, value
end

-- Price Decimals
jnx_jnxequities_pts_itch_v1_7.price_decimals = {}

-- Size: Price Decimals
jnx_jnxequities_pts_itch_v1_7.price_decimals.size = 4

-- Display: Price Decimals
jnx_jnxequities_pts_itch_v1_7.price_decimals.display = function(value)
  return "Price Decimals: "..value
end

-- Translate: Price Decimals
jnx_jnxequities_pts_itch_v1_7.price_decimals.translate = function(raw)
  return raw/10
end

-- Dissect: Price Decimals
jnx_jnxequities_pts_itch_v1_7.price_decimals.dissect = function(buffer, offset, packet, parent)
  local length = jnx_jnxequities_pts_itch_v1_7.price_decimals.size
  local range = buffer(offset, length)
  local raw = range:uint()
  local value = jnx_jnxequities_pts_itch_v1_7.price_decimals.translate(raw)
  local display = jnx_jnxequities_pts_itch_v1_7.price_decimals.display(value, buffer, offset, packet, parent)

  parent:add(omi_jnx_jnxequities_pts_itch_v1_7.fields.price_decimals, range, value, display)

  return offset + length, value
end

-- Price Start
jnx_jnxequities_pts_itch_v1_7.price_start = {}

-- Size: Price Start
jnx_jnxequities_pts_itch_v1_7.price_start.size = 4

-- Display: Price Start
jnx_jnxequities_pts_itch_v1_7.price_start.display = function(value)
  return "Price Start: "..value
end

-- Translate: Price Start
jnx_jnxequities_pts_itch_v1_7.price_start.translate = function(raw)
  return raw/10
end

-- Dissect: Price Start
jnx_jnxequities_pts_itch_v1_7.price_start.dissect = function(buffer, offset, packet, parent)
  local length = jnx_jnxequities_pts_itch_v1_7.price_start.size
  local range = buffer(offset, length)
  local raw = range:uint()
  local value = jnx_jnxequities_pts_itch_v1_7.price_start.translate(raw)
  local display = jnx_jnxequities_pts_itch_v1_7.price_start.display(value, buffer, offset, packet, parent)

  parent:add(omi_jnx_jnxequities_pts_itch_v1_7.fields.price_start, range, value, display)

  return offset + length, value
end

-- Price Tick Size
jnx_jnxequities_pts_itch_v1_7.price_tick_size = {}

-- Size: Price Tick Size
jnx_jnxequities_pts_itch_v1_7.price_tick_size.size = 4

-- Display: Price Tick Size
jnx_jnxequities_pts_itch_v1_7.price_tick_size.display = function(value)
  return "Price Tick Size: "..value
end

-- Translate: Price Tick Size
jnx_jnxequities_pts_itch_v1_7.price_tick_size.translate = function(raw)
  return raw/10
end

-- Dissect: Price Tick Size
jnx_jnxequities_pts_itch_v1_7.price_tick_size.dissect = function(buffer, offset, packet, parent)
  local length = jnx_jnxequities_pts_itch_v1_7.price_tick_size.size
  local range = buffer(offset, length)
  local raw = range:uint()
  local value = jnx_jnxequities_pts_itch_v1_7.price_tick_size.translate(raw)
  local display = jnx_jnxequities_pts_itch_v1_7.price_tick_size.display(value, buffer, offset, packet, parent)

  parent:add(omi_jnx_jnxequities_pts_itch_v1_7.fields.price_tick_size, range, value, display)

  return offset + length, value
end

-- Price Tick Size Table Id
jnx_jnxequities_pts_itch_v1_7.price_tick_size_table_id = {}

-- Size: Price Tick Size Table Id
jnx_jnxequities_pts_itch_v1_7.price_tick_size_table_id.size = 4

-- Display: Price Tick Size Table Id
jnx_jnxequities_pts_itch_v1_7.price_tick_size_table_id.display = function(value)
  return "Price Tick Size Table Id: "..value
end

-- Translate: Price Tick Size Table Id
jnx_jnxequities_pts_itch_v1_7.price_tick_size_table_id.translate = function(raw)
  return raw/10
end

-- Dissect: Price Tick Size Table Id
jnx_jnxequities_pts_itch_v1_7.price_tick_size_table_id.dissect = function(buffer, offset, packet, parent)
  local length = jnx_jnxequities_pts_itch_v1_7.price_tick_size_table_id.size
  local range = buffer(offset, length)
  local raw = range:uint()
  local value = jnx_jnxequities_pts_itch_v1_7.price_tick_size_table_id.translate(raw)
  local display = jnx_jnxequities_pts_itch_v1_7.price_tick_size_table_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_jnx_jnxequities_pts_itch_v1_7.fields.price_tick_size_table_id, range, value, display)

  return offset + length, value
end

-- Quantity
jnx_jnxequities_pts_itch_v1_7.quantity = {}

-- Size: Quantity
jnx_jnxequities_pts_itch_v1_7.quantity.size = 4

-- Display: Quantity
jnx_jnxequities_pts_itch_v1_7.quantity.display = function(value)
  return "Quantity: "..value
end

-- Dissect: Quantity
jnx_jnxequities_pts_itch_v1_7.quantity.dissect = function(buffer, offset, packet, parent)
  local length = jnx_jnxequities_pts_itch_v1_7.quantity.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = jnx_jnxequities_pts_itch_v1_7.quantity.display(value, buffer, offset, packet, parent)

  parent:add(omi_jnx_jnxequities_pts_itch_v1_7.fields.quantity, range, value, display)

  return offset + length, value
end

-- Reject Reason Code
jnx_jnxequities_pts_itch_v1_7.reject_reason_code = {}

-- Size: Reject Reason Code
jnx_jnxequities_pts_itch_v1_7.reject_reason_code.size = 1

-- Display: Reject Reason Code
jnx_jnxequities_pts_itch_v1_7.reject_reason_code.display = function(value)
  return "Reject Reason Code: "..value
end

-- Dissect: Reject Reason Code
jnx_jnxequities_pts_itch_v1_7.reject_reason_code.dissect = function(buffer, offset, packet, parent)
  local length = jnx_jnxequities_pts_itch_v1_7.reject_reason_code.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = jnx_jnxequities_pts_itch_v1_7.reject_reason_code.display(value, buffer, offset, packet, parent)

  parent:add(omi_jnx_jnxequities_pts_itch_v1_7.fields.reject_reason_code, range, value, display)

  return offset + length, value
end

-- Requested Sequence Number
jnx_jnxequities_pts_itch_v1_7.requested_sequence_number = {}

-- Size: Requested Sequence Number
jnx_jnxequities_pts_itch_v1_7.requested_sequence_number.size = 20

-- Display: Requested Sequence Number
jnx_jnxequities_pts_itch_v1_7.requested_sequence_number.display = function(value)
  return "Requested Sequence Number: "..value
end

-- Dissect: Requested Sequence Number
jnx_jnxequities_pts_itch_v1_7.requested_sequence_number.dissect = function(buffer, offset, packet, parent)
  local length = jnx_jnxequities_pts_itch_v1_7.requested_sequence_number.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = jnx_jnxequities_pts_itch_v1_7.requested_sequence_number.display(value, buffer, offset, packet, parent)

  parent:add(omi_jnx_jnxequities_pts_itch_v1_7.fields.requested_sequence_number, range, value, display)

  return offset + length, value
end

-- Requested Session
jnx_jnxequities_pts_itch_v1_7.requested_session = {}

-- Size: Requested Session
jnx_jnxequities_pts_itch_v1_7.requested_session.size = 10

-- Display: Requested Session
jnx_jnxequities_pts_itch_v1_7.requested_session.display = function(value)
  return "Requested Session: "..value
end

-- Dissect: Requested Session
jnx_jnxequities_pts_itch_v1_7.requested_session.dissect = function(buffer, offset, packet, parent)
  local length = jnx_jnxequities_pts_itch_v1_7.requested_session.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = jnx_jnxequities_pts_itch_v1_7.requested_session.display(value, buffer, offset, packet, parent)

  parent:add(omi_jnx_jnxequities_pts_itch_v1_7.fields.requested_session, range, value, display)

  return offset + length, value
end

-- Round Lot Size
jnx_jnxequities_pts_itch_v1_7.round_lot_size = {}

-- Size: Round Lot Size
jnx_jnxequities_pts_itch_v1_7.round_lot_size.size = 4

-- Display: Round Lot Size
jnx_jnxequities_pts_itch_v1_7.round_lot_size.display = function(value)
  return "Round Lot Size: "..value
end

-- Dissect: Round Lot Size
jnx_jnxequities_pts_itch_v1_7.round_lot_size.dissect = function(buffer, offset, packet, parent)
  local length = jnx_jnxequities_pts_itch_v1_7.round_lot_size.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = jnx_jnxequities_pts_itch_v1_7.round_lot_size.display(value, buffer, offset, packet, parent)

  parent:add(omi_jnx_jnxequities_pts_itch_v1_7.fields.round_lot_size, range, value, display)

  return offset + length, value
end

-- Sequenced Message Type
jnx_jnxequities_pts_itch_v1_7.sequenced_message_type = {}

-- Size: Sequenced Message Type
jnx_jnxequities_pts_itch_v1_7.sequenced_message_type.size = 1

-- Display: Sequenced Message Type
jnx_jnxequities_pts_itch_v1_7.sequenced_message_type.display = function(value)
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
    return "Sequenced Message Type: Order Added Without Attributes Message (A)"
  end
  if value == "F" then
    return "Sequenced Message Type: Order Added With Attributes Message (F)"
  end
  if value == "E" then
    return "Sequenced Message Type: Order Executed Message (E)"
  end
  if value == "D" then
    return "Sequenced Message Type: Order Deleted Message (D)"
  end
  if value == "U" then
    return "Sequenced Message Type: Order Replaced Message (U)"
  end

  return "Sequenced Message Type: Unknown("..value..")"
end

-- Dissect: Sequenced Message Type
jnx_jnxequities_pts_itch_v1_7.sequenced_message_type.dissect = function(buffer, offset, packet, parent)
  local length = jnx_jnxequities_pts_itch_v1_7.sequenced_message_type.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = jnx_jnxequities_pts_itch_v1_7.sequenced_message_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_jnx_jnxequities_pts_itch_v1_7.fields.sequenced_message_type, range, value, display)

  return offset + length, value
end

-- Short Selling State
jnx_jnxequities_pts_itch_v1_7.short_selling_state = {}

-- Size: Short Selling State
jnx_jnxequities_pts_itch_v1_7.short_selling_state.size = 1

-- Display: Short Selling State
jnx_jnxequities_pts_itch_v1_7.short_selling_state.display = function(value)
  if value == "0" then
    return "Short Selling State: No Price Restriction (0)"
  end
  if value == "1" then
    return "Short Selling State: Price Restriction In Effect (1)"
  end

  return "Short Selling State: Unknown("..value..")"
end

-- Dissect: Short Selling State
jnx_jnxequities_pts_itch_v1_7.short_selling_state.dissect = function(buffer, offset, packet, parent)
  local length = jnx_jnxequities_pts_itch_v1_7.short_selling_state.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = jnx_jnxequities_pts_itch_v1_7.short_selling_state.display(value, buffer, offset, packet, parent)

  parent:add(omi_jnx_jnxequities_pts_itch_v1_7.fields.short_selling_state, range, value, display)

  return offset + length, value
end

-- System Event
jnx_jnxequities_pts_itch_v1_7.system_event = {}

-- Size: System Event
jnx_jnxequities_pts_itch_v1_7.system_event.size = 1

-- Display: System Event
jnx_jnxequities_pts_itch_v1_7.system_event.display = function(value)
  return "System Event: "..value
end

-- Dissect: System Event
jnx_jnxequities_pts_itch_v1_7.system_event.dissect = function(buffer, offset, packet, parent)
  local length = jnx_jnxequities_pts_itch_v1_7.system_event.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = jnx_jnxequities_pts_itch_v1_7.system_event.display(value, buffer, offset, packet, parent)

  parent:add(omi_jnx_jnxequities_pts_itch_v1_7.fields.system_event, range, value, display)

  return offset + length, value
end

-- Text
jnx_jnxequities_pts_itch_v1_7.text = {}

-- Size: Text
jnx_jnxequities_pts_itch_v1_7.text.size = 1

-- Display: Text
jnx_jnxequities_pts_itch_v1_7.text.display = function(value)
  return "Text: "..value
end

-- Dissect: Text
jnx_jnxequities_pts_itch_v1_7.text.dissect = function(buffer, offset, packet, parent)
  local length = jnx_jnxequities_pts_itch_v1_7.text.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = jnx_jnxequities_pts_itch_v1_7.text.display(value, buffer, offset, packet, parent)

  parent:add(omi_jnx_jnxequities_pts_itch_v1_7.fields.text, range, value, display)

  return offset + length, value
end

-- Timestamp Nanoseconds
jnx_jnxequities_pts_itch_v1_7.timestamp_nanoseconds = {}

-- Size: Timestamp Nanoseconds
jnx_jnxequities_pts_itch_v1_7.timestamp_nanoseconds.size = 4

-- Display: Timestamp Nanoseconds
jnx_jnxequities_pts_itch_v1_7.timestamp_nanoseconds.display = function(value)
  return "Timestamp Nanoseconds: "..value
end

-- Dissect: Timestamp Nanoseconds
jnx_jnxequities_pts_itch_v1_7.timestamp_nanoseconds.dissect = function(buffer, offset, packet, parent)
  local length = jnx_jnxequities_pts_itch_v1_7.timestamp_nanoseconds.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = jnx_jnxequities_pts_itch_v1_7.timestamp_nanoseconds.display(value, buffer, offset, packet, parent)

  parent:add(omi_jnx_jnxequities_pts_itch_v1_7.fields.timestamp_nanoseconds, range, value, display)

  return offset + length, value
end

-- Timestamp Seconds
jnx_jnxequities_pts_itch_v1_7.timestamp_seconds = {}

-- Size: Timestamp Seconds
jnx_jnxequities_pts_itch_v1_7.timestamp_seconds.size = 4

-- Store: Timestamp Seconds
jnx_jnxequities_pts_itch_v1_7.timestamp_seconds.current = nil

-- Generated: Timestamp Seconds
jnx_jnxequities_pts_itch_v1_7.timestamp_seconds.generated = function(value, range, packet, parent)
  local display = jnx_jnxequities_pts_itch_v1_7.timestamp_seconds.display(value)
  local timestamp_seconds = parent:add(omi_jnx_jnxequities_pts_itch_v1_7.fields.timestamp_seconds, range, value, display)
  timestamp_seconds:set_generated()
end

-- Display: Timestamp Seconds
jnx_jnxequities_pts_itch_v1_7.timestamp_seconds.display = function(value)
  return "Timestamp Seconds: "..value
end

-- Dissect: Timestamp Seconds
jnx_jnxequities_pts_itch_v1_7.timestamp_seconds.dissect = function(buffer, offset, packet, parent)
  local length = jnx_jnxequities_pts_itch_v1_7.timestamp_seconds.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = jnx_jnxequities_pts_itch_v1_7.timestamp_seconds.display(value, buffer, offset, packet, parent)

  parent:add(omi_jnx_jnxequities_pts_itch_v1_7.fields.timestamp_seconds, range, value, display)

  return offset + length, value
end

-- Trading State
jnx_jnxequities_pts_itch_v1_7.trading_state = {}

-- Size: Trading State
jnx_jnxequities_pts_itch_v1_7.trading_state.size = 1

-- Display: Trading State
jnx_jnxequities_pts_itch_v1_7.trading_state.display = function(value)
  if value == "T" then
    return "Trading State: Trading (T)"
  end
  if value == "V" then
    return "Trading State: Suspended (V)"
  end

  return "Trading State: Unknown("..value..")"
end

-- Dissect: Trading State
jnx_jnxequities_pts_itch_v1_7.trading_state.dissect = function(buffer, offset, packet, parent)
  local length = jnx_jnxequities_pts_itch_v1_7.trading_state.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = jnx_jnxequities_pts_itch_v1_7.trading_state.display(value, buffer, offset, packet, parent)

  parent:add(omi_jnx_jnxequities_pts_itch_v1_7.fields.trading_state, range, value, display)

  return offset + length, value
end

-- Udp Sequence Number
jnx_jnxequities_pts_itch_v1_7.udp_sequence_number = {}

-- Size: Udp Sequence Number
jnx_jnxequities_pts_itch_v1_7.udp_sequence_number.size = 8

-- Display: Udp Sequence Number
jnx_jnxequities_pts_itch_v1_7.udp_sequence_number.display = function(value)
  return "Udp Sequence Number: "..value
end

-- Dissect: Udp Sequence Number
jnx_jnxequities_pts_itch_v1_7.udp_sequence_number.dissect = function(buffer, offset, packet, parent)
  local length = jnx_jnxequities_pts_itch_v1_7.udp_sequence_number.size
  local range = buffer(offset, length)
  local value = range:uint64()
  local display = jnx_jnxequities_pts_itch_v1_7.udp_sequence_number.display(value, buffer, offset, packet, parent)

  parent:add(omi_jnx_jnxequities_pts_itch_v1_7.fields.udp_sequence_number, range, value, display)

  return offset + length, value
end

-- Udp Session
jnx_jnxequities_pts_itch_v1_7.udp_session = {}

-- Size: Udp Session
jnx_jnxequities_pts_itch_v1_7.udp_session.size = 10

-- Display: Udp Session
jnx_jnxequities_pts_itch_v1_7.udp_session.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Udp Session: No Value"
  end

  return "Udp Session: "..value
end

-- Dissect: Udp Session
jnx_jnxequities_pts_itch_v1_7.udp_session.dissect = function(buffer, offset, packet, parent)
  local length = jnx_jnxequities_pts_itch_v1_7.udp_session.size
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

  local display = jnx_jnxequities_pts_itch_v1_7.udp_session.display(value, buffer, offset, packet, parent)

  parent:add(omi_jnx_jnxequities_pts_itch_v1_7.fields.udp_session, range, value, display)

  return offset + length, value
end

-- Unsequenced Message Type
jnx_jnxequities_pts_itch_v1_7.unsequenced_message_type = {}

-- Size: Unsequenced Message Type
jnx_jnxequities_pts_itch_v1_7.unsequenced_message_type.size = 1

-- Display: Unsequenced Message Type
jnx_jnxequities_pts_itch_v1_7.unsequenced_message_type.display = function(value)
  return "Unsequenced Message Type: "..value
end

-- Dissect: Unsequenced Message Type
jnx_jnxequities_pts_itch_v1_7.unsequenced_message_type.dissect = function(buffer, offset, packet, parent)
  local length = jnx_jnxequities_pts_itch_v1_7.unsequenced_message_type.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = jnx_jnxequities_pts_itch_v1_7.unsequenced_message_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_jnx_jnxequities_pts_itch_v1_7.fields.unsequenced_message_type, range, value, display)

  return offset + length, value
end

-- Upper Price Limit
jnx_jnxequities_pts_itch_v1_7.upper_price_limit = {}

-- Size: Upper Price Limit
jnx_jnxequities_pts_itch_v1_7.upper_price_limit.size = 4

-- Display: Upper Price Limit
jnx_jnxequities_pts_itch_v1_7.upper_price_limit.display = function(value)
  return "Upper Price Limit: "..value
end

-- Translate: Upper Price Limit
jnx_jnxequities_pts_itch_v1_7.upper_price_limit.translate = function(raw)
  return raw/10
end

-- Dissect: Upper Price Limit
jnx_jnxequities_pts_itch_v1_7.upper_price_limit.dissect = function(buffer, offset, packet, parent)
  local length = jnx_jnxequities_pts_itch_v1_7.upper_price_limit.size
  local range = buffer(offset, length)
  local raw = range:uint()
  local value = jnx_jnxequities_pts_itch_v1_7.upper_price_limit.translate(raw)
  local display = jnx_jnxequities_pts_itch_v1_7.upper_price_limit.display(value, buffer, offset, packet, parent)

  parent:add(omi_jnx_jnxequities_pts_itch_v1_7.fields.upper_price_limit, range, value, display)

  return offset + length, value
end

-- Username
jnx_jnxequities_pts_itch_v1_7.username = {}

-- Size: Username
jnx_jnxequities_pts_itch_v1_7.username.size = 6

-- Display: Username
jnx_jnxequities_pts_itch_v1_7.username.display = function(value)
  return "Username: "..value
end

-- Dissect: Username
jnx_jnxequities_pts_itch_v1_7.username.dissect = function(buffer, offset, packet, parent)
  local length = jnx_jnxequities_pts_itch_v1_7.username.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = jnx_jnxequities_pts_itch_v1_7.username.display(value, buffer, offset, packet, parent)

  parent:add(omi_jnx_jnxequities_pts_itch_v1_7.fields.username, range, value, display)

  return offset + length, value
end

-- Timestamp
jnx_jnxequities_pts_itch_v1_7.timestamp = {}

-- Translate: Timestamp
jnx_jnxequities_pts_itch_v1_7.timestamp.translate = function(timestamp_nanoseconds, stored_timestamp_seconds)
  return UInt64.new(stored_timestamp_seconds * 1000000000 + timestamp_nanoseconds)
end

-- Display: Timestamp
jnx_jnxequities_pts_itch_v1_7.timestamp.display = function(timestamp_nanoseconds, stored_timestamp_seconds, packet)
  -- Raw display mode
  if jnx_jnxequities_pts_itch_v1_7.timestamp_nanoseconds_format == 0 then
    return "Timestamp: "..(stored_timestamp_seconds * 1000000000 + timestamp_nanoseconds)
  end

  -- Full datetime mode (calculate from capture date + UTC offset)
  if jnx_jnxequities_pts_itch_v1_7.timestamp_nanoseconds_format == 2 and packet then
    local capture_time = type(packet.abs_ts) == "number" and packet.abs_ts or packet.abs_ts:tonumber()
    local utc_offset_seconds = jnx_jnxequities_pts_itch_v1_7.utc_offset_hours * 3600
    local local_midnight = math.floor((capture_time - utc_offset_seconds) / 86400) * 86400 + utc_offset_seconds
    local full_seconds = local_midnight + stored_timestamp_seconds

    return "Timestamp: "..os.date("%Y-%m-%d %H:%M:%S.", full_seconds)..string.format("%09d", timestamp_nanoseconds)
  end

  -- Time of day mode
  return "Timestamp: "..os.date("%H:%M:%S.", stored_timestamp_seconds)..string.format("%09d", timestamp_nanoseconds)
end

-- Composite: Timestamp
jnx_jnxequities_pts_itch_v1_7.timestamp.composite = function(buffer, offset, stored_timestamp_seconds, packet, parent)
  local length = jnx_jnxequities_pts_itch_v1_7.timestamp_nanoseconds.size
  local range = buffer(offset, length)
  local timestamp_nanoseconds = range:uint()
  local value = jnx_jnxequities_pts_itch_v1_7.timestamp.translate(timestamp_nanoseconds, stored_timestamp_seconds)
  local display = jnx_jnxequities_pts_itch_v1_7.timestamp.display(timestamp_nanoseconds, stored_timestamp_seconds)
  parent = parent:add(omi_jnx_jnxequities_pts_itch_v1_7.fields.timestamp, range, value, display)

  jnx_jnxequities_pts_itch_v1_7.timestamp_seconds.generated(stored_timestamp_seconds, range, packet, parent)

  display = jnx_jnxequities_pts_itch_v1_7.timestamp_nanoseconds.display(timestamp_nanoseconds)
  parent:add(omi_jnx_jnxequities_pts_itch_v1_7.fields.timestamp_nanoseconds, range, timestamp_nanoseconds, display)

  return offset + length, value
end

-- Dissect: Timestamp
jnx_jnxequities_pts_itch_v1_7.timestamp.dissect = function(buffer, offset, packet, parent)
  local stored_timestamp_seconds = jnx_jnxequities_pts_itch_v1_7.timestamp_seconds.current

  if stored_timestamp_seconds ~= nil then
    return jnx_jnxequities_pts_itch_v1_7.timestamp.composite(buffer, offset, stored_timestamp_seconds, packet, parent)
  end

  return jnx_jnxequities_pts_itch_v1_7.timestamp_nanoseconds.dissect(buffer, offset, packet, parent)
end


-----------------------------------------------------------------------
-- Dissect Jnx JnxEquities Pts Itch 1.7
-----------------------------------------------------------------------

-- Order Replaced Message
jnx_jnxequities_pts_itch_v1_7.order_replaced_message = {}

-- Size: Order Replaced Message
jnx_jnxequities_pts_itch_v1_7.order_replaced_message.size =
  jnx_jnxequities_pts_itch_v1_7.timestamp_nanoseconds.size + 
  jnx_jnxequities_pts_itch_v1_7.original_order_number.size + 
  jnx_jnxequities_pts_itch_v1_7.new_order_number.size + 
  jnx_jnxequities_pts_itch_v1_7.quantity.size + 
  jnx_jnxequities_pts_itch_v1_7.price.size

-- Display: Order Replaced Message
jnx_jnxequities_pts_itch_v1_7.order_replaced_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Order Replaced Message
jnx_jnxequities_pts_itch_v1_7.order_replaced_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Timestamp Nanoseconds: Integer
  index, timestamp_nanoseconds = jnx_jnxequities_pts_itch_v1_7.timestamp.dissect(buffer, index, packet, parent)

  -- Original Order Number: Integer
  index, original_order_number = jnx_jnxequities_pts_itch_v1_7.original_order_number.dissect(buffer, index, packet, parent)

  -- New Order Number: Integer
  index, new_order_number = jnx_jnxequities_pts_itch_v1_7.new_order_number.dissect(buffer, index, packet, parent)

  -- Quantity: Integer
  index, quantity = jnx_jnxequities_pts_itch_v1_7.quantity.dissect(buffer, index, packet, parent)

  -- Price: Integer
  index, price = jnx_jnxequities_pts_itch_v1_7.price.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Order Replaced Message
jnx_jnxequities_pts_itch_v1_7.order_replaced_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_jnx_jnxequities_pts_itch_v1_7.fields.order_replaced_message, buffer(offset, 0))
    local index = jnx_jnxequities_pts_itch_v1_7.order_replaced_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = jnx_jnxequities_pts_itch_v1_7.order_replaced_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return jnx_jnxequities_pts_itch_v1_7.order_replaced_message.fields(buffer, offset, packet, parent)
  end
end

-- Order Deleted Message
jnx_jnxequities_pts_itch_v1_7.order_deleted_message = {}

-- Size: Order Deleted Message
jnx_jnxequities_pts_itch_v1_7.order_deleted_message.size =
  jnx_jnxequities_pts_itch_v1_7.timestamp_nanoseconds.size + 
  jnx_jnxequities_pts_itch_v1_7.order_number.size

-- Display: Order Deleted Message
jnx_jnxequities_pts_itch_v1_7.order_deleted_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Order Deleted Message
jnx_jnxequities_pts_itch_v1_7.order_deleted_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Timestamp Nanoseconds: Integer
  index, timestamp_nanoseconds = jnx_jnxequities_pts_itch_v1_7.timestamp.dissect(buffer, index, packet, parent)

  -- Order Number: Integer
  index, order_number = jnx_jnxequities_pts_itch_v1_7.order_number.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Order Deleted Message
jnx_jnxequities_pts_itch_v1_7.order_deleted_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_jnx_jnxequities_pts_itch_v1_7.fields.order_deleted_message, buffer(offset, 0))
    local index = jnx_jnxequities_pts_itch_v1_7.order_deleted_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = jnx_jnxequities_pts_itch_v1_7.order_deleted_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return jnx_jnxequities_pts_itch_v1_7.order_deleted_message.fields(buffer, offset, packet, parent)
  end
end

-- Order Executed Message
jnx_jnxequities_pts_itch_v1_7.order_executed_message = {}

-- Size: Order Executed Message
jnx_jnxequities_pts_itch_v1_7.order_executed_message.size =
  jnx_jnxequities_pts_itch_v1_7.timestamp_nanoseconds.size + 
  jnx_jnxequities_pts_itch_v1_7.order_number.size + 
  jnx_jnxequities_pts_itch_v1_7.executed_quantity.size + 
  jnx_jnxequities_pts_itch_v1_7.match_number.size

-- Display: Order Executed Message
jnx_jnxequities_pts_itch_v1_7.order_executed_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Order Executed Message
jnx_jnxequities_pts_itch_v1_7.order_executed_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Timestamp Nanoseconds: Integer
  index, timestamp_nanoseconds = jnx_jnxequities_pts_itch_v1_7.timestamp.dissect(buffer, index, packet, parent)

  -- Order Number: Integer
  index, order_number = jnx_jnxequities_pts_itch_v1_7.order_number.dissect(buffer, index, packet, parent)

  -- Executed Quantity: Integer
  index, executed_quantity = jnx_jnxequities_pts_itch_v1_7.executed_quantity.dissect(buffer, index, packet, parent)

  -- Match Number: Integer
  index, match_number = jnx_jnxequities_pts_itch_v1_7.match_number.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Order Executed Message
jnx_jnxequities_pts_itch_v1_7.order_executed_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_jnx_jnxequities_pts_itch_v1_7.fields.order_executed_message, buffer(offset, 0))
    local index = jnx_jnxequities_pts_itch_v1_7.order_executed_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = jnx_jnxequities_pts_itch_v1_7.order_executed_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return jnx_jnxequities_pts_itch_v1_7.order_executed_message.fields(buffer, offset, packet, parent)
  end
end

-- Order Added With Attributes Message
jnx_jnxequities_pts_itch_v1_7.order_added_with_attributes_message = {}

-- Size: Order Added With Attributes Message
jnx_jnxequities_pts_itch_v1_7.order_added_with_attributes_message.size =
  jnx_jnxequities_pts_itch_v1_7.timestamp_nanoseconds.size + 
  jnx_jnxequities_pts_itch_v1_7.order_number.size + 
  jnx_jnxequities_pts_itch_v1_7.buy_sell_indicator.size + 
  jnx_jnxequities_pts_itch_v1_7.quantity.size + 
  jnx_jnxequities_pts_itch_v1_7.orderbook_id.size + 
  jnx_jnxequities_pts_itch_v1_7.group.size + 
  jnx_jnxequities_pts_itch_v1_7.price.size + 
  jnx_jnxequities_pts_itch_v1_7.attribution.size + 
  jnx_jnxequities_pts_itch_v1_7.order_type.size

-- Display: Order Added With Attributes Message
jnx_jnxequities_pts_itch_v1_7.order_added_with_attributes_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Order Added With Attributes Message
jnx_jnxequities_pts_itch_v1_7.order_added_with_attributes_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Timestamp Nanoseconds: Integer
  index, timestamp_nanoseconds = jnx_jnxequities_pts_itch_v1_7.timestamp.dissect(buffer, index, packet, parent)

  -- Order Number: Integer
  index, order_number = jnx_jnxequities_pts_itch_v1_7.order_number.dissect(buffer, index, packet, parent)

  -- Buy Sell Indicator: Alpha
  index, buy_sell_indicator = jnx_jnxequities_pts_itch_v1_7.buy_sell_indicator.dissect(buffer, index, packet, parent)

  -- Quantity: Integer
  index, quantity = jnx_jnxequities_pts_itch_v1_7.quantity.dissect(buffer, index, packet, parent)

  -- Orderbook Id: Alpha
  index, orderbook_id = jnx_jnxequities_pts_itch_v1_7.orderbook_id.dissect(buffer, index, packet, parent)

  -- Group: Alpha
  index, group = jnx_jnxequities_pts_itch_v1_7.group.dissect(buffer, index, packet, parent)

  -- Price: Integer
  index, price = jnx_jnxequities_pts_itch_v1_7.price.dissect(buffer, index, packet, parent)

  -- Attribution: Alpha
  index, attribution = jnx_jnxequities_pts_itch_v1_7.attribution.dissect(buffer, index, packet, parent)

  -- Order Type: Alpha
  index, order_type = jnx_jnxequities_pts_itch_v1_7.order_type.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Order Added With Attributes Message
jnx_jnxequities_pts_itch_v1_7.order_added_with_attributes_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_jnx_jnxequities_pts_itch_v1_7.fields.order_added_with_attributes_message, buffer(offset, 0))
    local index = jnx_jnxequities_pts_itch_v1_7.order_added_with_attributes_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = jnx_jnxequities_pts_itch_v1_7.order_added_with_attributes_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return jnx_jnxequities_pts_itch_v1_7.order_added_with_attributes_message.fields(buffer, offset, packet, parent)
  end
end

-- Order Added Without Attributes Message
jnx_jnxequities_pts_itch_v1_7.order_added_without_attributes_message = {}

-- Size: Order Added Without Attributes Message
jnx_jnxequities_pts_itch_v1_7.order_added_without_attributes_message.size =
  jnx_jnxequities_pts_itch_v1_7.timestamp_nanoseconds.size + 
  jnx_jnxequities_pts_itch_v1_7.order_number.size + 
  jnx_jnxequities_pts_itch_v1_7.buy_sell_indicator.size + 
  jnx_jnxequities_pts_itch_v1_7.quantity.size + 
  jnx_jnxequities_pts_itch_v1_7.orderbook_id.size + 
  jnx_jnxequities_pts_itch_v1_7.group.size + 
  jnx_jnxequities_pts_itch_v1_7.price.size

-- Display: Order Added Without Attributes Message
jnx_jnxequities_pts_itch_v1_7.order_added_without_attributes_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Order Added Without Attributes Message
jnx_jnxequities_pts_itch_v1_7.order_added_without_attributes_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Timestamp Nanoseconds: Integer
  index, timestamp_nanoseconds = jnx_jnxequities_pts_itch_v1_7.timestamp.dissect(buffer, index, packet, parent)

  -- Order Number: Integer
  index, order_number = jnx_jnxequities_pts_itch_v1_7.order_number.dissect(buffer, index, packet, parent)

  -- Buy Sell Indicator: Alpha
  index, buy_sell_indicator = jnx_jnxequities_pts_itch_v1_7.buy_sell_indicator.dissect(buffer, index, packet, parent)

  -- Quantity: Integer
  index, quantity = jnx_jnxequities_pts_itch_v1_7.quantity.dissect(buffer, index, packet, parent)

  -- Orderbook Id: Alpha
  index, orderbook_id = jnx_jnxequities_pts_itch_v1_7.orderbook_id.dissect(buffer, index, packet, parent)

  -- Group: Alpha
  index, group = jnx_jnxequities_pts_itch_v1_7.group.dissect(buffer, index, packet, parent)

  -- Price: Integer
  index, price = jnx_jnxequities_pts_itch_v1_7.price.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Order Added Without Attributes Message
jnx_jnxequities_pts_itch_v1_7.order_added_without_attributes_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_jnx_jnxequities_pts_itch_v1_7.fields.order_added_without_attributes_message, buffer(offset, 0))
    local index = jnx_jnxequities_pts_itch_v1_7.order_added_without_attributes_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = jnx_jnxequities_pts_itch_v1_7.order_added_without_attributes_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return jnx_jnxequities_pts_itch_v1_7.order_added_without_attributes_message.fields(buffer, offset, packet, parent)
  end
end

-- Short Selling Price Restriction State Message
jnx_jnxequities_pts_itch_v1_7.short_selling_price_restriction_state_message = {}

-- Size: Short Selling Price Restriction State Message
jnx_jnxequities_pts_itch_v1_7.short_selling_price_restriction_state_message.size =
  jnx_jnxequities_pts_itch_v1_7.timestamp_nanoseconds.size + 
  jnx_jnxequities_pts_itch_v1_7.orderbook_id.size + 
  jnx_jnxequities_pts_itch_v1_7.group.size + 
  jnx_jnxequities_pts_itch_v1_7.short_selling_state.size

-- Display: Short Selling Price Restriction State Message
jnx_jnxequities_pts_itch_v1_7.short_selling_price_restriction_state_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Short Selling Price Restriction State Message
jnx_jnxequities_pts_itch_v1_7.short_selling_price_restriction_state_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Timestamp Nanoseconds: Integer
  index, timestamp_nanoseconds = jnx_jnxequities_pts_itch_v1_7.timestamp.dissect(buffer, index, packet, parent)

  -- Orderbook Id: Alpha
  index, orderbook_id = jnx_jnxequities_pts_itch_v1_7.orderbook_id.dissect(buffer, index, packet, parent)

  -- Group: Alpha
  index, group = jnx_jnxequities_pts_itch_v1_7.group.dissect(buffer, index, packet, parent)

  -- Short Selling State: Alpha
  index, short_selling_state = jnx_jnxequities_pts_itch_v1_7.short_selling_state.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Short Selling Price Restriction State Message
jnx_jnxequities_pts_itch_v1_7.short_selling_price_restriction_state_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_jnx_jnxequities_pts_itch_v1_7.fields.short_selling_price_restriction_state_message, buffer(offset, 0))
    local index = jnx_jnxequities_pts_itch_v1_7.short_selling_price_restriction_state_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = jnx_jnxequities_pts_itch_v1_7.short_selling_price_restriction_state_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return jnx_jnxequities_pts_itch_v1_7.short_selling_price_restriction_state_message.fields(buffer, offset, packet, parent)
  end
end

-- Trading State Message
jnx_jnxequities_pts_itch_v1_7.trading_state_message = {}

-- Size: Trading State Message
jnx_jnxequities_pts_itch_v1_7.trading_state_message.size =
  jnx_jnxequities_pts_itch_v1_7.timestamp_nanoseconds.size + 
  jnx_jnxequities_pts_itch_v1_7.orderbook_id.size + 
  jnx_jnxequities_pts_itch_v1_7.group.size + 
  jnx_jnxequities_pts_itch_v1_7.trading_state.size

-- Display: Trading State Message
jnx_jnxequities_pts_itch_v1_7.trading_state_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Trading State Message
jnx_jnxequities_pts_itch_v1_7.trading_state_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Timestamp Nanoseconds: Integer
  index, timestamp_nanoseconds = jnx_jnxequities_pts_itch_v1_7.timestamp.dissect(buffer, index, packet, parent)

  -- Orderbook Id: Alpha
  index, orderbook_id = jnx_jnxequities_pts_itch_v1_7.orderbook_id.dissect(buffer, index, packet, parent)

  -- Group: Alpha
  index, group = jnx_jnxequities_pts_itch_v1_7.group.dissect(buffer, index, packet, parent)

  -- Trading State: Alpha
  index, trading_state = jnx_jnxequities_pts_itch_v1_7.trading_state.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Trading State Message
jnx_jnxequities_pts_itch_v1_7.trading_state_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_jnx_jnxequities_pts_itch_v1_7.fields.trading_state_message, buffer(offset, 0))
    local index = jnx_jnxequities_pts_itch_v1_7.trading_state_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = jnx_jnxequities_pts_itch_v1_7.trading_state_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return jnx_jnxequities_pts_itch_v1_7.trading_state_message.fields(buffer, offset, packet, parent)
  end
end

-- Orderbook Directory Message
jnx_jnxequities_pts_itch_v1_7.orderbook_directory_message = {}

-- Size: Orderbook Directory Message
jnx_jnxequities_pts_itch_v1_7.orderbook_directory_message.size =
  jnx_jnxequities_pts_itch_v1_7.timestamp_nanoseconds.size + 
  jnx_jnxequities_pts_itch_v1_7.orderbook_id.size + 
  jnx_jnxequities_pts_itch_v1_7.orderbook_code.size + 
  jnx_jnxequities_pts_itch_v1_7.group.size + 
  jnx_jnxequities_pts_itch_v1_7.round_lot_size.size + 
  jnx_jnxequities_pts_itch_v1_7.price_tick_size_table_id.size + 
  jnx_jnxequities_pts_itch_v1_7.price_decimals.size + 
  jnx_jnxequities_pts_itch_v1_7.upper_price_limit.size + 
  jnx_jnxequities_pts_itch_v1_7.lower_price_limit.size

-- Display: Orderbook Directory Message
jnx_jnxequities_pts_itch_v1_7.orderbook_directory_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Orderbook Directory Message
jnx_jnxequities_pts_itch_v1_7.orderbook_directory_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Timestamp Nanoseconds: Integer
  index, timestamp_nanoseconds = jnx_jnxequities_pts_itch_v1_7.timestamp.dissect(buffer, index, packet, parent)

  -- Orderbook Id: Alpha
  index, orderbook_id = jnx_jnxequities_pts_itch_v1_7.orderbook_id.dissect(buffer, index, packet, parent)

  -- Orderbook Code: Alpha
  index, orderbook_code = jnx_jnxequities_pts_itch_v1_7.orderbook_code.dissect(buffer, index, packet, parent)

  -- Group: Alpha
  index, group = jnx_jnxequities_pts_itch_v1_7.group.dissect(buffer, index, packet, parent)

  -- Round Lot Size: Integer
  index, round_lot_size = jnx_jnxequities_pts_itch_v1_7.round_lot_size.dissect(buffer, index, packet, parent)

  -- Price Tick Size Table Id: Integer
  index, price_tick_size_table_id = jnx_jnxequities_pts_itch_v1_7.price_tick_size_table_id.dissect(buffer, index, packet, parent)

  -- Price Decimals: Integer
  index, price_decimals = jnx_jnxequities_pts_itch_v1_7.price_decimals.dissect(buffer, index, packet, parent)

  -- Upper Price Limit: Integer
  index, upper_price_limit = jnx_jnxequities_pts_itch_v1_7.upper_price_limit.dissect(buffer, index, packet, parent)

  -- Lower Price Limit: Integer
  index, lower_price_limit = jnx_jnxequities_pts_itch_v1_7.lower_price_limit.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Orderbook Directory Message
jnx_jnxequities_pts_itch_v1_7.orderbook_directory_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_jnx_jnxequities_pts_itch_v1_7.fields.orderbook_directory_message, buffer(offset, 0))
    local index = jnx_jnxequities_pts_itch_v1_7.orderbook_directory_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = jnx_jnxequities_pts_itch_v1_7.orderbook_directory_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return jnx_jnxequities_pts_itch_v1_7.orderbook_directory_message.fields(buffer, offset, packet, parent)
  end
end

-- Price Tick Size Message
jnx_jnxequities_pts_itch_v1_7.price_tick_size_message = {}

-- Size: Price Tick Size Message
jnx_jnxequities_pts_itch_v1_7.price_tick_size_message.size =
  jnx_jnxequities_pts_itch_v1_7.timestamp_nanoseconds.size + 
  jnx_jnxequities_pts_itch_v1_7.price_tick_size_table_id.size + 
  jnx_jnxequities_pts_itch_v1_7.price_tick_size.size + 
  jnx_jnxequities_pts_itch_v1_7.price_start.size

-- Display: Price Tick Size Message
jnx_jnxequities_pts_itch_v1_7.price_tick_size_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Price Tick Size Message
jnx_jnxequities_pts_itch_v1_7.price_tick_size_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Timestamp Nanoseconds: Integer
  index, timestamp_nanoseconds = jnx_jnxequities_pts_itch_v1_7.timestamp.dissect(buffer, index, packet, parent)

  -- Price Tick Size Table Id: Integer
  index, price_tick_size_table_id = jnx_jnxequities_pts_itch_v1_7.price_tick_size_table_id.dissect(buffer, index, packet, parent)

  -- Price Tick Size: Integer
  index, price_tick_size = jnx_jnxequities_pts_itch_v1_7.price_tick_size.dissect(buffer, index, packet, parent)

  -- Price Start: Integer
  index, price_start = jnx_jnxequities_pts_itch_v1_7.price_start.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Price Tick Size Message
jnx_jnxequities_pts_itch_v1_7.price_tick_size_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_jnx_jnxequities_pts_itch_v1_7.fields.price_tick_size_message, buffer(offset, 0))
    local index = jnx_jnxequities_pts_itch_v1_7.price_tick_size_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = jnx_jnxequities_pts_itch_v1_7.price_tick_size_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return jnx_jnxequities_pts_itch_v1_7.price_tick_size_message.fields(buffer, offset, packet, parent)
  end
end

-- System Event Message
jnx_jnxequities_pts_itch_v1_7.system_event_message = {}

-- Size: System Event Message
jnx_jnxequities_pts_itch_v1_7.system_event_message.size =
  jnx_jnxequities_pts_itch_v1_7.timestamp_nanoseconds.size + 
  jnx_jnxequities_pts_itch_v1_7.group.size + 
  jnx_jnxequities_pts_itch_v1_7.system_event.size

-- Display: System Event Message
jnx_jnxequities_pts_itch_v1_7.system_event_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: System Event Message
jnx_jnxequities_pts_itch_v1_7.system_event_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Timestamp Nanoseconds: Integer
  index, timestamp_nanoseconds = jnx_jnxequities_pts_itch_v1_7.timestamp.dissect(buffer, index, packet, parent)

  -- Group: Alpha
  index, group = jnx_jnxequities_pts_itch_v1_7.group.dissect(buffer, index, packet, parent)

  -- System Event: Alpha
  index, system_event = jnx_jnxequities_pts_itch_v1_7.system_event.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: System Event Message
jnx_jnxequities_pts_itch_v1_7.system_event_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_jnx_jnxequities_pts_itch_v1_7.fields.system_event_message, buffer(offset, 0))
    local index = jnx_jnxequities_pts_itch_v1_7.system_event_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = jnx_jnxequities_pts_itch_v1_7.system_event_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return jnx_jnxequities_pts_itch_v1_7.system_event_message.fields(buffer, offset, packet, parent)
  end
end

-- Timestamp Seconds Message
jnx_jnxequities_pts_itch_v1_7.timestamp_seconds_message = {}

-- Size: Timestamp Seconds Message
jnx_jnxequities_pts_itch_v1_7.timestamp_seconds_message.size =
  jnx_jnxequities_pts_itch_v1_7.timestamp_seconds.size

-- Display: Timestamp Seconds Message
jnx_jnxequities_pts_itch_v1_7.timestamp_seconds_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Timestamp Seconds Message
jnx_jnxequities_pts_itch_v1_7.timestamp_seconds_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Timestamp Seconds: Integer
  index, timestamp_seconds = jnx_jnxequities_pts_itch_v1_7.timestamp_seconds.dissect(buffer, index, packet, parent)

  -- Store Timestamp Seconds Value
  jnx_jnxequities_pts_itch_v1_7.timestamp_seconds.current = timestamp_seconds

  if not packet.visited then
    jnx_jnxequities_pts_itch_v1_7.conversation.current.timestamp_seconds.last = timestamp_seconds
  end

  return index
end

-- Dissect: Timestamp Seconds Message
jnx_jnxequities_pts_itch_v1_7.timestamp_seconds_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_jnx_jnxequities_pts_itch_v1_7.fields.timestamp_seconds_message, buffer(offset, 0))
    local index = jnx_jnxequities_pts_itch_v1_7.timestamp_seconds_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = jnx_jnxequities_pts_itch_v1_7.timestamp_seconds_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return jnx_jnxequities_pts_itch_v1_7.timestamp_seconds_message.fields(buffer, offset, packet, parent)
  end
end

-- Udp Payload
jnx_jnxequities_pts_itch_v1_7.udp_payload = {}

-- Dissect: Udp Payload
jnx_jnxequities_pts_itch_v1_7.udp_payload.dissect = function(buffer, offset, packet, parent, message_type)
  -- Dissect Timestamp Seconds Message
  if message_type == "T" then
    return jnx_jnxequities_pts_itch_v1_7.timestamp_seconds_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect System Event Message
  if message_type == "S" then
    return jnx_jnxequities_pts_itch_v1_7.system_event_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Price Tick Size Message
  if message_type == "L" then
    return jnx_jnxequities_pts_itch_v1_7.price_tick_size_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Orderbook Directory Message
  if message_type == "R" then
    return jnx_jnxequities_pts_itch_v1_7.orderbook_directory_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Trading State Message
  if message_type == "H" then
    return jnx_jnxequities_pts_itch_v1_7.trading_state_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Short Selling Price Restriction State Message
  if message_type == "Y" then
    return jnx_jnxequities_pts_itch_v1_7.short_selling_price_restriction_state_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Order Added Without Attributes Message
  if message_type == "A" then
    return jnx_jnxequities_pts_itch_v1_7.order_added_without_attributes_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Order Added With Attributes Message
  if message_type == "F" then
    return jnx_jnxequities_pts_itch_v1_7.order_added_with_attributes_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Order Executed Message
  if message_type == "E" then
    return jnx_jnxequities_pts_itch_v1_7.order_executed_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Order Deleted Message
  if message_type == "D" then
    return jnx_jnxequities_pts_itch_v1_7.order_deleted_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Order Replaced Message
  if message_type == "U" then
    return jnx_jnxequities_pts_itch_v1_7.order_replaced_message.dissect(buffer, offset, packet, parent)
  end

  return offset
end

-- Message Header
jnx_jnxequities_pts_itch_v1_7.message_header = {}

-- Size: Message Header
jnx_jnxequities_pts_itch_v1_7.message_header.size =
  jnx_jnxequities_pts_itch_v1_7.message_length.size + 
  jnx_jnxequities_pts_itch_v1_7.message_type.size

-- Display: Message Header
jnx_jnxequities_pts_itch_v1_7.message_header.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Message Header
jnx_jnxequities_pts_itch_v1_7.message_header.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Message Length: 2 Byte Unsigned Fixed Width Integer
  index, message_length = jnx_jnxequities_pts_itch_v1_7.message_length.dissect(buffer, index, packet, parent)

  -- Message Type: 1 Byte Ascii String Enum with 11 values
  index, message_type = jnx_jnxequities_pts_itch_v1_7.message_type.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Message Header
jnx_jnxequities_pts_itch_v1_7.message_header.dissect = function(buffer, offset, packet, parent)
  if show.message_header then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_jnx_jnxequities_pts_itch_v1_7.fields.message_header, buffer(offset, 0))
    local index = jnx_jnxequities_pts_itch_v1_7.message_header.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = jnx_jnxequities_pts_itch_v1_7.message_header.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return jnx_jnxequities_pts_itch_v1_7.message_header.fields(buffer, offset, packet, parent)
  end
end

-- Message
jnx_jnxequities_pts_itch_v1_7.message = {}

-- Read runtime size of: Message
jnx_jnxequities_pts_itch_v1_7.message.size = function(buffer, offset)
  local index = offset

  -- Dependency element: Message Length
  local message_length = buffer(offset, 2):uint()

  return message_length + 2
end

-- Display: Message
jnx_jnxequities_pts_itch_v1_7.message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Message
jnx_jnxequities_pts_itch_v1_7.message.fields = function(buffer, offset, packet, parent, size_of_message, message_index)
  local index = offset

  -- Implicit Message Index
  if message_index ~= nil and show.message_index then
    local iteration = parent:add(omi_jnx_jnxequities_pts_itch_v1_7.fields.message_index, message_index)
    iteration:set_generated()
  end

  -- Message Header: Struct of 2 fields
  index, message_header = jnx_jnxequities_pts_itch_v1_7.message_header.dissect(buffer, index, packet, parent)

  -- Dependency element: Message Type
  local message_type = buffer(index - 1, 1):string()

  -- Udp Payload: Runtime Type with 11 branches
  index = jnx_jnxequities_pts_itch_v1_7.udp_payload.dissect(buffer, index, packet, parent, message_type)

  return index
end

-- Dissect: Message
jnx_jnxequities_pts_itch_v1_7.message.dissect = function(buffer, offset, packet, parent, size_of_message, message_index)
  local size_of_message = jnx_jnxequities_pts_itch_v1_7.message.size(buffer, offset)
  local index = offset + size_of_message

  -- Optionally add group/struct element to protocol tree
  if show.message then
    parent = parent:add(omi_jnx_jnxequities_pts_itch_v1_7.fields.message, buffer(offset, 0))
    local current = jnx_jnxequities_pts_itch_v1_7.message.fields(buffer, offset, packet, parent, size_of_message, message_index)
    parent:set_len(size_of_message)
    local display = jnx_jnxequities_pts_itch_v1_7.message.display(buffer, packet, parent)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    jnx_jnxequities_pts_itch_v1_7.message.fields(buffer, offset, packet, parent, size_of_message, message_index)

    return index
  end
end

-- Messages
jnx_jnxequities_pts_itch_v1_7.messages = {}

-- Dissect: Messages
jnx_jnxequities_pts_itch_v1_7.messages.dissect = function(buffer, offset, packet, parent, message_count)
  -- Dissect Heartbeat
  if message_count == 0 then
    return offset
  end
  -- Dissect End Of Session
  if message_count == 65535 then
    return offset
  end
  -- Repeating: Message
  for message_index = 1, message_count do

    -- Dependency element: Message Length
    local message_length = buffer(offset, 2):uint()

    -- Runtime Size Of: Message
    local size_of_message = message_length + 2

    -- Message: Struct of 2 fields
    offset = jnx_jnxequities_pts_itch_v1_7.message.dissect(buffer, offset, packet, parent, size_of_message, message_index)
  end

  return offset
end

-- Udp Packet Header
jnx_jnxequities_pts_itch_v1_7.udp_packet_header = {}

-- Size: Udp Packet Header
jnx_jnxequities_pts_itch_v1_7.udp_packet_header.size =
  jnx_jnxequities_pts_itch_v1_7.udp_session.size + 
  jnx_jnxequities_pts_itch_v1_7.udp_sequence_number.size + 
  jnx_jnxequities_pts_itch_v1_7.message_count.size

-- Display: Udp Packet Header
jnx_jnxequities_pts_itch_v1_7.udp_packet_header.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Udp Packet Header
jnx_jnxequities_pts_itch_v1_7.udp_packet_header.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Udp Session: 10 Byte Ascii String
  index, udp_session = jnx_jnxequities_pts_itch_v1_7.udp_session.dissect(buffer, index, packet, parent)

  -- Udp Sequence Number: 8 Byte Unsigned Fixed Width Integer
  index, udp_sequence_number = jnx_jnxequities_pts_itch_v1_7.udp_sequence_number.dissect(buffer, index, packet, parent)

  -- Message Count: 2 Byte Unsigned Fixed Width Integer
  index, message_count = jnx_jnxequities_pts_itch_v1_7.message_count.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Udp Packet Header
jnx_jnxequities_pts_itch_v1_7.udp_packet_header.dissect = function(buffer, offset, packet, parent)
  if show.udp_packet_header then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_jnx_jnxequities_pts_itch_v1_7.fields.udp_packet_header, buffer(offset, 0))
    local index = jnx_jnxequities_pts_itch_v1_7.udp_packet_header.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = jnx_jnxequities_pts_itch_v1_7.udp_packet_header.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return jnx_jnxequities_pts_itch_v1_7.udp_packet_header.fields(buffer, offset, packet, parent)
  end
end

-- Mold Udp 64 Packet
jnx_jnxequities_pts_itch_v1_7.mold_udp_64_packet = {}

-- Verify required size of Udp packet
jnx_jnxequities_pts_itch_v1_7.mold_udp_64_packet.requiredsize = function(buffer)
  return buffer:len() >= jnx_jnxequities_pts_itch_v1_7.udp_packet_header.size
end

-- Dissect Mold Udp 64 Packet
jnx_jnxequities_pts_itch_v1_7.mold_udp_64_packet.dissect = function(buffer, packet, parent)
  -- establish frame context from the conversation's stored values
  local data = jnx_jnxequities_pts_itch_v1_7.conversation.data(packet)
  if not packet.visited then
    data.timestamp_seconds.frames[packet.number] = data.timestamp_seconds.last
  end
  jnx_jnxequities_pts_itch_v1_7.timestamp_seconds.current = data.timestamp_seconds.frames[packet.number]
  jnx_jnxequities_pts_itch_v1_7.conversation.current = data

  local index = 0

  -- Udp Packet Header: Struct of 3 fields
  index, udp_packet_header = jnx_jnxequities_pts_itch_v1_7.udp_packet_header.dissect(buffer, index, packet, parent)

  -- Dependency element: Message Count
  local message_count = buffer(index - 2, 2):uint()

  -- Messages: Runtime Type with 3 branches
  index = jnx_jnxequities_pts_itch_v1_7.messages.dissect(buffer, index, packet, parent, message_count)

  return index
end

-- Unsequenced Data Packet
jnx_jnxequities_pts_itch_v1_7.unsequenced_data_packet = {}

-- Read runtime size of: Unsequenced Data Packet
jnx_jnxequities_pts_itch_v1_7.unsequenced_data_packet.size = function(buffer, offset)
  local index = offset

  -- Dependency element: Packet Length
  local packet_length = buffer(offset - 3, 2):uint()

  return packet_length - 1
end

-- Display: Unsequenced Data Packet
jnx_jnxequities_pts_itch_v1_7.unsequenced_data_packet.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Unsequenced Data Packet
jnx_jnxequities_pts_itch_v1_7.unsequenced_data_packet.fields = function(buffer, offset, packet, parent, size_of_unsequenced_data_packet)
  local index = offset

  -- Unsequenced Message Type: 1 Byte Ascii String
  index, unsequenced_message_type = jnx_jnxequities_pts_itch_v1_7.unsequenced_message_type.dissect(buffer, index, packet, parent)

  -- Dependency element: Packet Length
  local packet_length = buffer(offset - 3, 2):uint()

  -- Runtime Size Of: Unsequenced Message
  local size_of_unsequenced_message = packet_length - 2

  -- Unsequenced Message
  index, unsequenced_message = jnx_jnxequities_pts_itch_v1_7.unsequenced_message.dissect(buffer, index, packet, parent, size_of_unsequenced_message)

  return index
end

-- Dissect: Unsequenced Data Packet
jnx_jnxequities_pts_itch_v1_7.unsequenced_data_packet.dissect = function(buffer, offset, packet, parent, size_of_unsequenced_data_packet)
  local size_of_unsequenced_data_packet = jnx_jnxequities_pts_itch_v1_7.unsequenced_data_packet.size(buffer, offset)
  local index = offset + size_of_unsequenced_data_packet

  -- Optionally add group/struct element to protocol tree
  if show.session_messages then
    parent = parent:add(omi_jnx_jnxequities_pts_itch_v1_7.fields.unsequenced_data_packet, buffer(offset, 0))
    local current = jnx_jnxequities_pts_itch_v1_7.unsequenced_data_packet.fields(buffer, offset, packet, parent, size_of_unsequenced_data_packet)
    parent:set_len(size_of_unsequenced_data_packet)
    local display = jnx_jnxequities_pts_itch_v1_7.unsequenced_data_packet.display(buffer, packet, parent)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    jnx_jnxequities_pts_itch_v1_7.unsequenced_data_packet.fields(buffer, offset, packet, parent, size_of_unsequenced_data_packet)

    return index
  end
end

-- Login Request Packet
jnx_jnxequities_pts_itch_v1_7.login_request_packet = {}

-- Size: Login Request Packet
jnx_jnxequities_pts_itch_v1_7.login_request_packet.size =
  jnx_jnxequities_pts_itch_v1_7.username.size + 
  jnx_jnxequities_pts_itch_v1_7.password.size + 
  jnx_jnxequities_pts_itch_v1_7.requested_session.size + 
  jnx_jnxequities_pts_itch_v1_7.requested_sequence_number.size

-- Display: Login Request Packet
jnx_jnxequities_pts_itch_v1_7.login_request_packet.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Login Request Packet
jnx_jnxequities_pts_itch_v1_7.login_request_packet.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Username: 6 Byte Ascii String
  index, username = jnx_jnxequities_pts_itch_v1_7.username.dissect(buffer, index, packet, parent)

  -- Password: 10 Byte Ascii String
  index, password = jnx_jnxequities_pts_itch_v1_7.password.dissect(buffer, index, packet, parent)

  -- Requested Session: 10 Byte Ascii String
  index, requested_session = jnx_jnxequities_pts_itch_v1_7.requested_session.dissect(buffer, index, packet, parent)

  -- Requested Sequence Number: 20 Byte Ascii String
  index, requested_sequence_number = jnx_jnxequities_pts_itch_v1_7.requested_sequence_number.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Login Request Packet
jnx_jnxequities_pts_itch_v1_7.login_request_packet.dissect = function(buffer, offset, packet, parent)
  if show.session_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_jnx_jnxequities_pts_itch_v1_7.fields.login_request_packet, buffer(offset, 0))
    local index = jnx_jnxequities_pts_itch_v1_7.login_request_packet.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = jnx_jnxequities_pts_itch_v1_7.login_request_packet.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return jnx_jnxequities_pts_itch_v1_7.login_request_packet.fields(buffer, offset, packet, parent)
  end
end

-- Sequenced Message
jnx_jnxequities_pts_itch_v1_7.sequenced_message = {}

-- Dissect: Sequenced Message
jnx_jnxequities_pts_itch_v1_7.sequenced_message.dissect = function(buffer, offset, packet, parent, sequenced_message_type)
  -- Dissect Timestamp Seconds Message
  if sequenced_message_type == "T" then
    return jnx_jnxequities_pts_itch_v1_7.timestamp_seconds_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect System Event Message
  if sequenced_message_type == "S" then
    return jnx_jnxequities_pts_itch_v1_7.system_event_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Price Tick Size Message
  if sequenced_message_type == "L" then
    return jnx_jnxequities_pts_itch_v1_7.price_tick_size_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Orderbook Directory Message
  if sequenced_message_type == "R" then
    return jnx_jnxequities_pts_itch_v1_7.orderbook_directory_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Trading State Message
  if sequenced_message_type == "H" then
    return jnx_jnxequities_pts_itch_v1_7.trading_state_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Short Selling Price Restriction State Message
  if sequenced_message_type == "Y" then
    return jnx_jnxequities_pts_itch_v1_7.short_selling_price_restriction_state_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Order Added Without Attributes Message
  if sequenced_message_type == "A" then
    return jnx_jnxequities_pts_itch_v1_7.order_added_without_attributes_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Order Added With Attributes Message
  if sequenced_message_type == "F" then
    return jnx_jnxequities_pts_itch_v1_7.order_added_with_attributes_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Order Executed Message
  if sequenced_message_type == "E" then
    return jnx_jnxequities_pts_itch_v1_7.order_executed_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Order Deleted Message
  if sequenced_message_type == "D" then
    return jnx_jnxequities_pts_itch_v1_7.order_deleted_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Order Replaced Message
  if sequenced_message_type == "U" then
    return jnx_jnxequities_pts_itch_v1_7.order_replaced_message.dissect(buffer, offset, packet, parent)
  end

  return offset
end

-- Sequenced Data Packet
jnx_jnxequities_pts_itch_v1_7.sequenced_data_packet = {}

-- Read runtime size of: Sequenced Data Packet
jnx_jnxequities_pts_itch_v1_7.sequenced_data_packet.size = function(buffer, offset)
  local index = offset

  -- Dependency element: Packet Length
  local packet_length = buffer(offset - 3, 2):uint()

  return packet_length - 1
end

-- Display: Sequenced Data Packet
jnx_jnxequities_pts_itch_v1_7.sequenced_data_packet.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Sequenced Data Packet
jnx_jnxequities_pts_itch_v1_7.sequenced_data_packet.fields = function(buffer, offset, packet, parent, size_of_sequenced_data_packet)
  local index = offset

  -- Sequenced Message Type: 1 Byte Ascii String Enum with 11 values
  index, sequenced_message_type = jnx_jnxequities_pts_itch_v1_7.sequenced_message_type.dissect(buffer, index, packet, parent)

  -- Sequenced Message: Runtime Type with 11 branches
  index = jnx_jnxequities_pts_itch_v1_7.sequenced_message.dissect(buffer, index, packet, parent, sequenced_message_type)

  return index
end

-- Dissect: Sequenced Data Packet
jnx_jnxequities_pts_itch_v1_7.sequenced_data_packet.dissect = function(buffer, offset, packet, parent, size_of_sequenced_data_packet)
  local size_of_sequenced_data_packet = jnx_jnxequities_pts_itch_v1_7.sequenced_data_packet.size(buffer, offset)
  local index = offset + size_of_sequenced_data_packet

  -- Optionally add group/struct element to protocol tree
  if show.session_messages then
    parent = parent:add(omi_jnx_jnxequities_pts_itch_v1_7.fields.sequenced_data_packet, buffer(offset, 0))
    local current = jnx_jnxequities_pts_itch_v1_7.sequenced_data_packet.fields(buffer, offset, packet, parent, size_of_sequenced_data_packet)
    parent:set_len(size_of_sequenced_data_packet)
    local display = jnx_jnxequities_pts_itch_v1_7.sequenced_data_packet.display(buffer, packet, parent)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    jnx_jnxequities_pts_itch_v1_7.sequenced_data_packet.fields(buffer, offset, packet, parent, size_of_sequenced_data_packet)

    return index
  end
end

-- Login Rejected Packet
jnx_jnxequities_pts_itch_v1_7.login_rejected_packet = {}

-- Size: Login Rejected Packet
jnx_jnxequities_pts_itch_v1_7.login_rejected_packet.size =
  jnx_jnxequities_pts_itch_v1_7.reject_reason_code.size

-- Display: Login Rejected Packet
jnx_jnxequities_pts_itch_v1_7.login_rejected_packet.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Login Rejected Packet
jnx_jnxequities_pts_itch_v1_7.login_rejected_packet.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Reject Reason Code: 1 Byte Ascii String
  index, reject_reason_code = jnx_jnxequities_pts_itch_v1_7.reject_reason_code.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Login Rejected Packet
jnx_jnxequities_pts_itch_v1_7.login_rejected_packet.dissect = function(buffer, offset, packet, parent)
  if show.session_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_jnx_jnxequities_pts_itch_v1_7.fields.login_rejected_packet, buffer(offset, 0))
    local index = jnx_jnxequities_pts_itch_v1_7.login_rejected_packet.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = jnx_jnxequities_pts_itch_v1_7.login_rejected_packet.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return jnx_jnxequities_pts_itch_v1_7.login_rejected_packet.fields(buffer, offset, packet, parent)
  end
end

-- Login Accepted Packet
jnx_jnxequities_pts_itch_v1_7.login_accepted_packet = {}

-- Size: Login Accepted Packet
jnx_jnxequities_pts_itch_v1_7.login_accepted_packet.size =
  jnx_jnxequities_pts_itch_v1_7.accepted_session.size + 
  jnx_jnxequities_pts_itch_v1_7.accepted_sequence_number.size

-- Display: Login Accepted Packet
jnx_jnxequities_pts_itch_v1_7.login_accepted_packet.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Login Accepted Packet
jnx_jnxequities_pts_itch_v1_7.login_accepted_packet.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Accepted Session: 10 Byte Ascii String
  index, accepted_session = jnx_jnxequities_pts_itch_v1_7.accepted_session.dissect(buffer, index, packet, parent)

  -- Accepted Sequence Number: 20 Byte Ascii String
  index, accepted_sequence_number = jnx_jnxequities_pts_itch_v1_7.accepted_sequence_number.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Login Accepted Packet
jnx_jnxequities_pts_itch_v1_7.login_accepted_packet.dissect = function(buffer, offset, packet, parent)
  if show.session_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_jnx_jnxequities_pts_itch_v1_7.fields.login_accepted_packet, buffer(offset, 0))
    local index = jnx_jnxequities_pts_itch_v1_7.login_accepted_packet.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = jnx_jnxequities_pts_itch_v1_7.login_accepted_packet.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return jnx_jnxequities_pts_itch_v1_7.login_accepted_packet.fields(buffer, offset, packet, parent)
  end
end

-- Debug Packet
jnx_jnxequities_pts_itch_v1_7.debug_packet = {}

-- Size: Debug Packet
jnx_jnxequities_pts_itch_v1_7.debug_packet.size =
  jnx_jnxequities_pts_itch_v1_7.text.size

-- Display: Debug Packet
jnx_jnxequities_pts_itch_v1_7.debug_packet.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Debug Packet
jnx_jnxequities_pts_itch_v1_7.debug_packet.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Text: 1 Byte Ascii String
  index, text = jnx_jnxequities_pts_itch_v1_7.text.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Debug Packet
jnx_jnxequities_pts_itch_v1_7.debug_packet.dissect = function(buffer, offset, packet, parent)
  if show.session_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_jnx_jnxequities_pts_itch_v1_7.fields.debug_packet, buffer(offset, 0))
    local index = jnx_jnxequities_pts_itch_v1_7.debug_packet.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = jnx_jnxequities_pts_itch_v1_7.debug_packet.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return jnx_jnxequities_pts_itch_v1_7.debug_packet.fields(buffer, offset, packet, parent)
  end
end

-- Tcp Payload
jnx_jnxequities_pts_itch_v1_7.tcp_payload = {}

-- Dissect: Tcp Payload
jnx_jnxequities_pts_itch_v1_7.tcp_payload.dissect = function(buffer, offset, packet, parent, packet_type)
  -- Dissect Debug Packet
  if packet_type == "+" then
    return jnx_jnxequities_pts_itch_v1_7.debug_packet.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Login Accepted Packet
  if packet_type == "A" then
    return jnx_jnxequities_pts_itch_v1_7.login_accepted_packet.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Login Rejected Packet
  if packet_type == "J" then
    return jnx_jnxequities_pts_itch_v1_7.login_rejected_packet.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Sequenced Data Packet
  if packet_type == "S" then
    return jnx_jnxequities_pts_itch_v1_7.sequenced_data_packet.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Login Request Packet
  if packet_type == "L" then
    return jnx_jnxequities_pts_itch_v1_7.login_request_packet.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Unsequenced Data Packet
  if packet_type == "U" then
    return jnx_jnxequities_pts_itch_v1_7.unsequenced_data_packet.dissect(buffer, offset, packet, parent)
  end

  return offset
end

-- Tcp Packet Header
jnx_jnxequities_pts_itch_v1_7.tcp_packet_header = {}

-- Size: Tcp Packet Header
jnx_jnxequities_pts_itch_v1_7.tcp_packet_header.size =
  jnx_jnxequities_pts_itch_v1_7.packet_length.size + 
  jnx_jnxequities_pts_itch_v1_7.packet_type.size

-- Display: Tcp Packet Header
jnx_jnxequities_pts_itch_v1_7.tcp_packet_header.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Tcp Packet Header
jnx_jnxequities_pts_itch_v1_7.tcp_packet_header.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Packet Length: 2 Byte Unsigned Fixed Width Integer
  index, packet_length = jnx_jnxequities_pts_itch_v1_7.packet_length.dissect(buffer, index, packet, parent)

  -- Packet Type: 1 Byte Ascii String Enum with 10 values
  index, packet_type = jnx_jnxequities_pts_itch_v1_7.packet_type.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Tcp Packet Header
jnx_jnxequities_pts_itch_v1_7.tcp_packet_header.dissect = function(buffer, offset, packet, parent)
  if show.tcp_packet_header then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_jnx_jnxequities_pts_itch_v1_7.fields.tcp_packet_header, buffer(offset, 0))
    local index = jnx_jnxequities_pts_itch_v1_7.tcp_packet_header.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = jnx_jnxequities_pts_itch_v1_7.tcp_packet_header.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return jnx_jnxequities_pts_itch_v1_7.tcp_packet_header.fields(buffer, offset, packet, parent)
  end
end

-- Soup Bin Tcp Packet
jnx_jnxequities_pts_itch_v1_7.soup_bin_tcp_packet = {}

-- Display: Soup Bin Tcp Packet
jnx_jnxequities_pts_itch_v1_7.soup_bin_tcp_packet.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Soup Bin Tcp Packet
jnx_jnxequities_pts_itch_v1_7.soup_bin_tcp_packet.fields = function(buffer, offset, packet, parent, size_of_soup_bin_tcp_packet)
  local index = offset

  -- Tcp Packet Header: Struct of 2 fields
  index, tcp_packet_header = jnx_jnxequities_pts_itch_v1_7.tcp_packet_header.dissect(buffer, index, packet, parent)

  -- Dependency element: Packet Type
  local packet_type = buffer(index - 1, 1):string()

  -- Tcp Payload: Runtime Type with 6 branches
  index = jnx_jnxequities_pts_itch_v1_7.tcp_payload.dissect(buffer, index, packet, parent, packet_type)

  return index
end

-- Dissect: Soup Bin Tcp Packet
jnx_jnxequities_pts_itch_v1_7.soup_bin_tcp_packet.dissect = function(buffer, offset, packet, parent, size_of_soup_bin_tcp_packet)
  local index = offset + size_of_soup_bin_tcp_packet

  -- Optionally add group/struct element to protocol tree
  if show.soup_bin_tcp_packet then
    parent = parent:add(omi_jnx_jnxequities_pts_itch_v1_7.fields.soup_bin_tcp_packet, buffer(offset, 0))
    local current = jnx_jnxequities_pts_itch_v1_7.soup_bin_tcp_packet.fields(buffer, offset, packet, parent, size_of_soup_bin_tcp_packet)
    parent:set_len(size_of_soup_bin_tcp_packet)
    local display = jnx_jnxequities_pts_itch_v1_7.soup_bin_tcp_packet.display(buffer, packet, parent)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    jnx_jnxequities_pts_itch_v1_7.soup_bin_tcp_packet.fields(buffer, offset, packet, parent, size_of_soup_bin_tcp_packet)

    return index
  end
end

-- Remaining Bytes For: Soup Bin Tcp Packet
local soup_bin_tcp_packet_bytes_remaining = function(buffer, index, available)
  -- Calculate the number of bytes remaining
  local remaining = available - index

  -- Check if packet size can be read
  if remaining < jnx_jnxequities_pts_itch_v1_7.tcp_packet_header.size then
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

-- Tcp Packet
jnx_jnxequities_pts_itch_v1_7.tcp_packet = {}

-- Verify required size of Tcp packet
jnx_jnxequities_pts_itch_v1_7.tcp_packet.requiredsize = function(buffer)
  return buffer:len() >= jnx_jnxequities_pts_itch_v1_7.tcp_packet_header.size
end

-- Dissect Tcp Packet
jnx_jnxequities_pts_itch_v1_7.tcp_packet.dissect = function(buffer, packet, parent)
  -- establish frame context from the conversation's stored values
  local data = jnx_jnxequities_pts_itch_v1_7.conversation.data(packet)
  if not packet.visited then
    data.timestamp_seconds.frames[packet.number] = data.timestamp_seconds.last
  end
  jnx_jnxequities_pts_itch_v1_7.timestamp_seconds.current = data.timestamp_seconds.frames[packet.number]
  jnx_jnxequities_pts_itch_v1_7.conversation.current = data

  local index = 0

  -- Dependency for Soup Bin Tcp Packet
  local end_of_payload = buffer:len()

  -- Soup Bin Tcp Packet: Struct of 2 fields
  while index < end_of_payload do

    -- Are minimum number of bytes are available?
    local available, size_of_soup_bin_tcp_packet = soup_bin_tcp_packet_bytes_remaining(buffer, index, end_of_payload)

    if available > 0 then
      index = jnx_jnxequities_pts_itch_v1_7.soup_bin_tcp_packet.dissect(buffer, index, packet, parent, size_of_soup_bin_tcp_packet)
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
function omi_jnx_jnxequities_pts_itch_v1_7.init()
  jnx_jnxequities_pts_itch_v1_7.timestamp_seconds.current = nil
  jnx_jnxequities_pts_itch_v1_7.conversation.current = nil
end

-- Dissector for Jnx JnxEquities Pts Itch 1.7
function omi_jnx_jnxequities_pts_itch_v1_7.dissector(buffer, packet, parent)

  -- Set protocol name
  packet.cols.protocol = omi_jnx_jnxequities_pts_itch_v1_7.name

  -- Dissect protocol
  local protocol = parent:add(omi_jnx_jnxequities_pts_itch_v1_7, buffer(), omi_jnx_jnxequities_pts_itch_v1_7.description, "("..buffer:len().." Bytes)")
  if packet.port_type == 2 then
    return jnx_jnxequities_pts_itch_v1_7.tcp_packet.dissect(buffer, packet, protocol)
  end
  if packet.port_type == 3 then
    return jnx_jnxequities_pts_itch_v1_7.mold_udp_64_packet.dissect(buffer, packet, protocol)
  end
end


-----------------------------------------------------------------------
-- Protocol Heuristics
-----------------------------------------------------------------------

-- Dissector Heuristic for Jnx JnxEquities Pts Itch 1.7 (Tcp)
local function omi_jnx_jnxequities_pts_itch_v1_7_tcp_heuristic(buffer, packet, parent)
  -- Verify packet length
  if not jnx_jnxequities_pts_itch_v1_7.tcp_packet.requiredsize(buffer) then return false end

  -- Protocol is valid, set conversation and dissect this packet
  packet.conversation = omi_jnx_jnxequities_pts_itch_v1_7
  omi_jnx_jnxequities_pts_itch_v1_7.dissector(buffer, packet, parent)

  return true
end

-- Dissector Heuristic for Jnx JnxEquities Pts Itch 1.7 (Udp)
local function omi_jnx_jnxequities_pts_itch_v1_7_udp_heuristic(buffer, packet, parent)
  -- Verify packet length
  if not jnx_jnxequities_pts_itch_v1_7.mold_udp_64_packet.requiredsize(buffer) then return false end

  -- Protocol is valid, set conversation and dissect this packet
  packet.conversation = omi_jnx_jnxequities_pts_itch_v1_7
  omi_jnx_jnxequities_pts_itch_v1_7.dissector(buffer, packet, parent)

  return true
end

-- Register Heuristics for Jnx JnxEquities Pts Itch 1.7
omi_jnx_jnxequities_pts_itch_v1_7:register_heuristic("tcp", omi_jnx_jnxequities_pts_itch_v1_7_tcp_heuristic)
omi_jnx_jnxequities_pts_itch_v1_7:register_heuristic("udp", omi_jnx_jnxequities_pts_itch_v1_7_udp_heuristic)

-----------------------------------------------------------------------
-- Lua dissectors are an easily edited and modified cross-platform dissection solution.
-- Feel free to modify. Enjoy.
-----------------------------------------------------------------------
-- 
-- Protocol:
--   Organization: Japannext Securities
--   Version: 1.7
--   Date: Wednesday, November 1, 2023
--   Specification: Japannext_PTS_ITCH_Equities_v1.7.pdf
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
